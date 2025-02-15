/*----------------------------------------------------------------------------*
 * DbSQLite.h
 *----------------------------------------------------------------------------*/
#include "stdafx.h"
#include "DbSQLite.h"
//
// Default ctor.
//
CSqlStatement::CSqlStatement()
{
   m_stmt = NULL;
}

CSqlStatement::CSqlStatement(LPCTSTR statement, sqlite3* db)
{
   m_stmt = NULL;

   int rc = _sqlite3_prepare(db, statement, -1, &m_stmt, 0 );

   if (rc != SQLITE_OK)
   {
      m_stmt = NULL;
   }
}
//
// Do we really want to finalize or do we want to leave that up to
// the user?
//
CSqlStatement::~CSqlStatement()
{
   if (m_stmt)
   {
      sqlite3_finalize(m_stmt);
   }
}


bool CSqlStatement::Bind(int pos_zero_indexed, LPCTSTR value)
{
   bool fResult = TRUE;
   CString v = CString(value);

   int rc = _sqlite3_bind_text(m_stmt, pos_zero_indexed+1,
                             v, v.GetLength(), SQLITE_TRANSIENT);

   if (rc != SQLITE_OK )
   {
      fResult = false;
   }

   return fResult;
}

bool CSqlStatement::Bind(int pos_zero_indexed, double value)
{
   bool fResult = TRUE;
   int rc = _sqlite3_bind_double( m_stmt, pos_zero_indexed+1,value );

   if (rc != SQLITE_OK )
   {
      fResult = false;
   }

   return fResult;
}

bool CSqlStatement::Bind(int pos_zero_indexed, int value)
{
   bool fResult = TRUE;
   int rc = _sqlite3_bind_int( m_stmt, pos_zero_indexed+1, value );

   if (rc != SQLITE_OK )
   {
      fResult = false;
   }

   return fResult;
}

bool CSqlStatement::BindNull(int pos_zero_indexed)
{
   bool fResult = TRUE;
   int rc = _sqlite3_bind_null( m_stmt, pos_zero_indexed+1);

   if (rc != SQLITE_OK )
   {
      fResult = false;
   }

   return fResult;
}

bool CSqlStatement::Execute()
{
   CString szMessage;
   CString szCaption = _T("CSqlStatement::Execute");

   int rc = _sqlite3_step(m_stmt);

   if ( rc == SQLITE_BUSY )
   {
      szMessage = _T("SQLITE_BUSY");
      ::MessageBox(0, szMessage, szCaption, MB_OK);
      return false;
   }

   if ( rc == SQLITE_ERROR )
   {
      szMessage = _T("SQLITE_ERROR");
      ::MessageBox(0, szMessage, szCaption, MB_OK);
      return false;
   }

   if ( rc == SQLITE_MISUSE )
   {
      szMessage = _T("SQLITE_MISUSE");
      ::MessageBox(0, szMessage, szCaption, MB_OK);
      return false;
   }

   if ( rc != SQLITE_DONE )
   {
      //_sqlite3_reset(m_stmt);
      return false;
   }

   _sqlite3_reset(m_stmt);
   return true;
}

int CSqlStatement::Fields()
{
   return _sqlite3_column_count(m_stmt);
}

LPCTSTR CSqlStatement::FieldName(int pos_zero_indexed)
{
   m_szText = LPCTSTR(_sqlite3_column_name(m_stmt, pos_zero_indexed));
   return m_szText;
}

CSqlStatement::EDataType CSqlStatement::DataType(int pos_zero_indexed)
{
   return EDataType(_sqlite3_column_type(m_stmt, pos_zero_indexed));
}

LPCTSTR CSqlStatement::FieldType(int pos_zero_indexed)
{
   int dt = _sqlite3_column_type(m_stmt, pos_zero_indexed);

   switch (dt)
   {
      case SQLITE_INTEGER :
           m_szText = _T("INTEGER");
           break;
      case SQLITE_FLOAT:
           m_szText = _T("FLOAT");
           break;
      case SQLITE_TEXT :
           m_szText = _T("TEXT");
           break;
      case SQLITE_BLOB :
           m_szText = _T("BLOBL");
           break;
      case SQLITE_NULL :
           m_szText = _T("NULL");
           break;
   }

   return m_szText;
}

int CSqlStatement::ValueInt(int pos_zero_indexed)
{
   return _sqlite3_column_int(m_stmt, pos_zero_indexed);
}

LPCTSTR CSqlStatement::ValueString(int pos_zero_indexed)
{
   m_szText.Format(_T("%s"), _sqlite3_column_text(m_stmt, pos_zero_indexed));
   return m_szText;
}

bool CSqlStatement::RestartSelect()
{
   _sqlite3_reset(m_stmt);
   return true;
}

bool CSqlStatement::Reset()
{
   int rc = _sqlite3_step(m_stmt);

   _sqlite3_reset(m_stmt);

   if ( rc == SQLITE_ROW ) return true;
   return false;
}

bool CSqlStatement::NextRow()
{
   CString szError;
   int rc = _sqlite3_step(m_stmt);

   if ( rc == SQLITE_ROW )
   {
      return true;
   }

   if ( rc == SQLITE_DONE )
   {
      _sqlite3_reset(m_stmt);
      return false;
   }
   else if ( rc == SQLITE_MISUSE )
   {
      szError = _T("CSqlStatement::NextRow SQLITE_MISUSE");
   }
   else if ( rc == SQLITE_BUSY )
   {
      szError = _T("CSqlStatement::NextRow SQLITE_BUSY");
   }
   else if ( rc == SQLITE_ERROR )
   {
      szError = _T("CSqlStatement::NextRow SQLITE_ERROR");
   }

   ::MessageBox(0, szError, 0, 0);
   return false;
}
//
// ctor
//
CDbSQLite::CDbSQLite()
{
   m_db = NULL;
}

CDbSQLite::~CDbSQLite()
{
   if (m_db)
   {
      sqlite3_close(m_db);
   }
}

bool CDbSQLite::Open(LPCTSTR db_file)
{
   bool fResult = TRUE;
   m_szName = db_file;

   int rc = _sqlite3_open(db_file, &m_db);

   if ( rc != SQLITE_OK )
   {
      fResult = false;
   }

   return fResult;
} 
//
// Corrected memory leak.
//
bool CDbSQLite::DirectStatement(LPCTSTR stmt)
{
   CSqlStatement* pStatement = this->Statement(stmt);
   bool fResult = pStatement->Execute();
   delete pStatement;
   return fResult;
}

bool CDbSQLite::SelectStatement(LPCTSTR stmt, ResultTable& res)
{
   LPSTR lpsz = NULL;
   int len = 0;
   int rc = 0;
   char* errmsg = NULL;
   bool fResult = TRUE;

   res.reset();

   len = _tcslen(stmt);
   lpsz = (LPSTR) LocalAlloc(LMEM_ZEROINIT, len+2);

   // A UTF-16 version of sqlite_exec does not exist at this time,
   // so we will convert the string if necessary.

#if defined(_UNICODE) || defined(UNICODE)
   ::WideCharToMultiByte(CP_ACP, 0, stmt, -1, lpsz, len, 0, 0);
#else
   memcpy(lpsz, stmt, len);
#endif

   rc = sqlite3_exec(m_db,lpsz,SelectCallback,static_cast<void*>(&res),&errmsg);

   if ( rc != SQLITE_OK )
   {
      fResult = false;
   }

   LocalFree(lpsz);
   return fResult;
}

// TODO parameter p_col_names
int CDbSQLite::SelectCallback(void *p_data, int num_fields, char **p_fields, char**  /*p_col_names*/)
{
   ResultTable* res = reinterpret_cast<ResultTable*>(p_data);

   ResultRecord record;

   for ( int i=0; i < num_fields; i++ )
   {
      CString szField = CString(p_fields[i]);
      record.m_fields.push_back(szField);
   }

   res->m_records.push_back(record);

   return 0;
}

CSqlStatement* CDbSQLite::Statement(LPCTSTR statement)
{
   CSqlStatement* stmt = NULL;
   stmt = new CSqlStatement(statement, m_db);
   return stmt;
}

LPCTSTR CDbSQLite::LastError()
{
   m_szText = (LPCTSTR)_sqlite3_errmsg(m_db);
   return m_szText;
}

bool CDbSQLite::Begin()
{
   m_szText = _T("begin");
   return DirectStatement(m_szText);
}

bool CDbSQLite::Commit()
{
   m_szText = _T("commit");
   return DirectStatement(m_szText);
}

bool CDbSQLite::Rollback()
{
   m_szText = _T("rollback");
   return DirectStatement(m_szText);
}
