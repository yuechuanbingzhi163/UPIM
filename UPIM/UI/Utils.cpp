#include "StdAfx.h"
#include "Utils.h"

CHAR * UnicodeToUtf8(const WCHAR * lpszStr)
{
	CHAR * lpUtf8;
	int nLen;

	if (NULL == lpszStr)
		return NULL;

	nLen = ::WideCharToMultiByte(CP_UTF8, 0, lpszStr, -1, NULL, 0, NULL, NULL);
	if (0 == nLen)
		return NULL;

	lpUtf8 = new CHAR[nLen + 1];
	if (NULL == lpUtf8)
		return NULL;

	memset(lpUtf8, 0, nLen + 1);
	nLen = ::WideCharToMultiByte(CP_UTF8, 0, lpszStr, -1, lpUtf8, nLen, NULL, NULL);
	if (0 == nLen)
	{
		delete []lpUtf8;
		return NULL;
	}

	return lpUtf8;
}

WCHAR * AnsiToUnicode(const CHAR * lpszStr)
{
	WCHAR * lpUnicode;
	int nLen;

	if (NULL == lpszStr)
		return NULL;

	nLen = ::MultiByteToWideChar(CP_ACP, 0, lpszStr, -1, NULL, 0);
	if (0 == nLen)
		return NULL;

	lpUnicode = new WCHAR[nLen + 1];
	if (NULL == lpUnicode)
		return NULL;

	memset(lpUnicode, 0, sizeof(WCHAR) * (nLen + 1));
	nLen = ::MultiByteToWideChar(CP_ACP, 0, lpszStr, -1, lpUnicode, nLen);
	if (0 == nLen)
	{
		delete []lpUnicode;
		return NULL;
	}

	return lpUnicode;
}

WCHAR * Utf8ToUnicode(const CHAR * lpszStr)
{
	WCHAR * lpUnicode;
	int nLen;

	if (NULL == lpszStr)
		return NULL;

	nLen = ::MultiByteToWideChar(CP_UTF8, 0, lpszStr, -1, NULL, 0);
	if (0 == nLen)
		return NULL;

	lpUnicode = new WCHAR[nLen + 1];
	if (NULL == lpUnicode)
		return NULL;

	memset(lpUnicode, 0, sizeof(WCHAR) * (nLen + 1));
	nLen = ::MultiByteToWideChar(CP_UTF8, 0, lpszStr, -1, lpUnicode, nLen);
	if (0 == nLen)
	{
		delete []lpUnicode;
		return NULL;
	}

	return lpUnicode;
}

CHAR * UnicodeToAnsi(const WCHAR * lpszStr)
{
	CHAR * lpAnsi;
	int nLen;

	if (NULL == lpszStr)
		return NULL;

	nLen = ::WideCharToMultiByte(CP_ACP, 0, lpszStr, -1, NULL, 0, NULL, NULL);
	if (0 == nLen)
		return NULL;

	lpAnsi = new CHAR[nLen + 1];
	if (NULL == lpAnsi)
		return NULL;

	memset(lpAnsi, 0, nLen + 1);
	nLen = ::WideCharToMultiByte(CP_ACP, 0, lpszStr, -1, lpAnsi, nLen, NULL, NULL);
	if (0 == nLen)
	{
		delete []lpAnsi;
		return NULL;
	}

	return lpAnsi;
}

HGLOBAL GlobalAllocByString(const CHAR * lpszText, long nLen/* = -1*/)
{
	if (NULL == lpszText)
		return NULL;

	if (-1 == nLen)
		nLen = strlen(lpszText);

	HGLOBAL hGlobal = ::GlobalAlloc(GHND, nLen+4);
	if (hGlobal != NULL) 
	{
		CHAR * lpData = (CHAR *)::GlobalLock(hGlobal);
		if (lpData != NULL)
		{
			memset(lpData, 0, nLen+4);
			memcpy(lpData, lpszText, nLen);
			::GlobalUnlock(hGlobal);
		}
	}
	return hGlobal;
}

HGLOBAL GlobalAllocByString(const WCHAR * lpszText, long nLen/* = -1*/)
{
	if (NULL == lpszText)
		return NULL;

	if (-1 == nLen)
		nLen = wcslen(lpszText);

	return GlobalAllocByString((const CHAR *)lpszText, nLen * sizeof(TCHAR));
}

// 枚举系统字体回调函数
int CALLBACK EnumSysFontProc(const LOGFONT *lpelf, const TEXTMETRIC *lpntm, DWORD dwFontType, LPARAM lParam)
{
	if (dwFontType & TRUETYPE_FONTTYPE)
	{
		std::vector<tstring> * arrSysFont = (std::vector<tstring> *)lParam;
		if (arrSysFont != NULL)
		{
			for (int i = 0; i < (int)arrSysFont->size(); i++)
			{
				if ((*arrSysFont)[i] == lpelf->lfFaceName)
					return TRUE;
			}
			arrSysFont->push_back(lpelf->lfFaceName);
		}
	}

	return TRUE;
}

// 枚举系统字体
BOOL EnumSysFont(std::vector<tstring> * arrSysFont)
{
	if (NULL == arrSysFont)
		return FALSE;

	HDC hDC = ::GetDC(NULL);
	::EnumFontFamiliesEx(hDC, NULL, EnumSysFontProc, (LPARAM)arrSysFont, 0);
	::ReleaseDC(NULL, hDC);

	return TRUE;
}

// 闪烁窗口标题栏
BOOL FlashWindowEx(HWND hWnd, int nCount)
{
	FLASHWINFO stFlashInfo = {0};
	stFlashInfo.cbSize = sizeof(FLASHWINFO);
	stFlashInfo.hwnd = hWnd;
	stFlashInfo.dwFlags = FLASHW_TRAY | FLASHW_TIMERNOFG;
	stFlashInfo.uCount = nCount;
	stFlashInfo.dwTimeout = 0;
	return ::FlashWindowEx(&stFlashInfo);
}

// 获取系统任务栏区域
BOOL GetTrayWndRect(RECT * lpRect)
{
	if (NULL == lpRect)
		return FALSE;

	HWND hWnd = ::FindWindow(_T("Shell_TrayWnd"), NULL);
	if (hWnd != NULL)
		return ::GetWindowRect(hWnd, lpRect);
	else
		return FALSE;
}

// _T("%Y-%m-%d %H:%M:%S")
const TCHAR * FormatTime(time_t lTime, LPCTSTR lpFmt)
{
	struct tm * lpTimeInfo;
	static TCHAR cTime[32];

	memset(cTime, 0, sizeof(cTime));

	lpTimeInfo = localtime(&lTime);
	if (lpTimeInfo != NULL)
		_tcsftime(cTime, sizeof(cTime) / sizeof(TCHAR), lpFmt, lpTimeInfo);
	return cTime;
}



BOOL IsDigit(const CHAR * lpStr)
{
	for (const CHAR * p = lpStr; *p != _T('\0'); p++)
	{
		if (!isdigit(*p))
			return FALSE;
	}
	return TRUE;
}
/*
void Replace(std::wstring& strText, const WCHAR * lpOldStr, const WCHAR * lpNewStr)
{
	if (NULL == lpOldStr || NULL == lpNewStr)
		return;

	int nOldStrLen = wcslen(lpOldStr);
	int nNewStrLen = wcslen(lpNewStr);

	std::wstring::size_type nPos = 0;
	while ((nPos = strText.find(lpOldStr, nPos)) != std::wstring::npos)
	{
		strText.replace(nPos, nOldStrLen, lpNewStr);
		nPos += nNewStrLen;
	}
}*/

void Replace(std::string& strText, const CHAR * lpOldStr, const CHAR * lpNewStr)
{
	if (NULL == lpOldStr || NULL == lpNewStr)
		return;

	int nOldStrLen = strlen(lpOldStr);
	int nNewStrLen = strlen(lpNewStr);

	std::string::size_type nPos = 0;
	while ((nPos = strText.find(lpOldStr, nPos)) != std::string::npos)
	{
		strText.replace(nPos, nOldStrLen, lpNewStr);
		nPos += nNewStrLen;
	}
}

inline WCHAR ToLower(WCHAR c)
{
	return (c >= 'A' && c <= 'Z') ? (c + ('a' - 'A')) : c;
}

void ToLower(WCHAR * lpText)
{
	for (WCHAR * p = lpText; *p != _T('\0'); p++)
		*p = ToLower(*p);
}

void ToLower(std::wstring& strText)
{
	for (std::wstring::iterator i = strText.begin(); i != strText.end(); ++i)
		*i = ToLower(*i);
}

inline WCHAR ToUpper(WCHAR c)
{
	return (c >= 'a' && c <= 'z') ? (c + ('A' - 'a')) : c;
}

void ToUpper(WCHAR * lpText)
{
	for (WCHAR * p = lpText; *p != _T('\0'); p++)
		*p = ToUpper(*p);
}

void ToUpper(std::wstring& strText)
{
	for (std::wstring::iterator i = strText.begin(); i != strText.end(); ++i)
		*i = ToUpper(*i);
}


tstring GetBetweenString(const CHAR * pStr, CHAR * cStart, CHAR * cEnd)
{
	tstring strText;

	if (NULL == pStr)
		return _T("");

	const CHAR * p1 = strstr(pStr, cStart);
	if (NULL == p1)
		return _T("");

	const CHAR * p2 = strstr(p1+1, cEnd);
	if (NULL == p2)
		return _T("");

	int nLen = p2-(p1+2);
	if (nLen <= 0)
		return _T("");
	
	CHAR * lpText = new CHAR[nLen+1];
	if (NULL == lpText)
		return _T("");

	memset(lpText, 0, (nLen+1)*sizeof(CHAR));
	_tcsncpy(lpText, p1+2, nLen);
	strText = lpText;
	delete []lpText;

	return strText;
}

int GetBetweenInt(const CHAR * pStr, CHAR * cStart, CHAR * cEnd, int nDefValue/* = 0*/)
{
	tstring strText = GetBetweenString(pStr, cStart, cEnd);
	if (!strText.empty() && IsDigit(strText.c_str()))
		return _tcstol(strText.c_str(), NULL, 10);
	else
		return nDefValue;
}

BOOL DllRegisterServer(LPCTSTR lpszFileName, BOOL bUnregister)
{
	typedef HRESULT (WINAPI * FREG)();

	BOOL bRet = FALSE;

	HMODULE hDLL = ::LoadLibrary(lpszFileName);
	if (NULL == hDLL)
	{
		USER_LOG("DllRegisterServer - LoadLibrary 失败 [%s]", lpszFileName);
		return FALSE;
	}

	CHAR * lpszFuncName;
	if (!bUnregister)
		lpszFuncName = "DllRegisterServer";
	else
		lpszFuncName = "DllUnregisterServer";
	
	FREG lpfunc = (FREG)::GetProcAddress(hDLL, lpszFuncName);
	if (lpfunc != NULL)
	{
		lpfunc();
		bRet = TRUE;
	}

	::FreeLibrary(hDLL);

	return bRet;
}

BOOL DllRegisterServer(LPCTSTR lpszFileName)
{
	return DllRegisterServer(lpszFileName, FALSE);
}

BOOL DllUnregisterServer(LPCTSTR lpszFileName)
{
	return DllRegisterServer(lpszFileName, TRUE);
}

GUID GetFileTypeGuidByExtension(const CHAR * lpExtension)
{
	//////////////////////////////////////////////////////////////////////////
	size_t len = strlen(lpExtension) + 1;
	size_t converted = 0;
	wchar_t *wlpExtension;
	wlpExtension = (wchar_t*)malloc(len*sizeof(wchar_t));
	mbstowcs_s(&converted, wlpExtension, len, lpExtension, _TRUNCATE);

	GUID guid = GUID_NULL;
	
	if (NULL == wlpExtension)
		return guid;
	
	UINT numEncoders = 0, size = 0;
	Gdiplus::Status status = Gdiplus::GetImageEncodersSize(&numEncoders, &size);  
	if (status != Gdiplus::Ok)
		return guid;

	Gdiplus::ImageCodecInfo* lpEncoders = (Gdiplus::ImageCodecInfo*)(malloc(size));
	if (NULL == lpEncoders)
		return guid;

	status = Gdiplus::GetImageEncoders(numEncoders, size, lpEncoders);
	if (Gdiplus::Ok == status)
	{
		for (UINT i = 0; i < numEncoders; i++)
		{
			BOOL bFind = FALSE;
			const WCHAR * pStart = lpEncoders[i].FilenameExtension;
			const WCHAR * pEnd = wcschr(pStart, L';');
			do 
			{
				if (NULL == pEnd)
				{
					LPCWSTR lpExt = ::wcsrchr(pStart, L'.');
					if ((lpExt != NULL) && (_wcsicmp(lpExt, wlpExtension) == 0))
					{
						guid = lpEncoders[i].FormatID;
						bFind = TRUE;
					}
					break;
				}

				int nLen = pEnd-pStart;
				if (nLen < MAX_PATH)
				{
					WCHAR cBuf[MAX_PATH] = {0};
					wcsncpy(cBuf, pStart, nLen);
					LPCWSTR lpExt = ::wcsrchr(cBuf, L'.');
					if ((lpExt != NULL) && (_wcsicmp(lpExt, wlpExtension) == 0))
					{
						guid = lpEncoders[i].FormatID;
						bFind = TRUE;
						break;
					}
				}
				pStart = pEnd+1;
				if (L'\0' == *pStart)
					break;
				pEnd = wcschr(pStart, L';');
			} while (1);
			if (bFind)
				break;
		}
	}

	free(lpEncoders);
	free(wlpExtension);
	return guid;
}

GUID GetFileTypeGuidByExtension(const WCHAR * lpExtension)
{
	GUID guid = GUID_NULL;

	if (NULL == lpExtension)
		return guid;

	UINT numEncoders = 0, size = 0;
	Gdiplus::Status status = Gdiplus::GetImageEncodersSize(&numEncoders, &size);  
	if (status != Gdiplus::Ok)
		return guid;

	Gdiplus::ImageCodecInfo* lpEncoders = (Gdiplus::ImageCodecInfo*)(malloc(size));
	if (NULL == lpEncoders)
		return guid;

	status = Gdiplus::GetImageEncoders(numEncoders, size, lpEncoders);
	if (Gdiplus::Ok == status)
	{
		for (UINT i = 0; i < numEncoders; i++)
		{
			BOOL bFind = FALSE;
			const WCHAR * pStart = lpEncoders[i].FilenameExtension;
			const WCHAR * pEnd = wcschr(pStart, L';');
			do 
			{
				if (NULL == pEnd)
				{
					LPCWSTR lpExt = ::wcsrchr(pStart, L'.');
					if ((lpExt != NULL) && (_wcsicmp(lpExt, lpExtension) == 0))
					{
						guid = lpEncoders[i].FormatID;
						bFind = TRUE;
					}
					break;
				}

				int nLen = pEnd-pStart;
				if (nLen < MAX_PATH)
				{
					WCHAR cBuf[MAX_PATH] = {0};
					wcsncpy(cBuf, pStart, nLen);
					LPCWSTR lpExt = ::wcsrchr(cBuf, L'.');
					if ((lpExt != NULL) && (_wcsicmp(lpExt, lpExtension) == 0))
					{
						guid = lpEncoders[i].FormatID;
						bFind = TRUE;
						break;
					}
				}
				pStart = pEnd+1;
				if (L'\0' == *pStart)
					break;
				pEnd = wcschr(pStart, L';');
			} while (1);
			if (bFind)
				break;
		}
	}

	free(lpEncoders);

	return guid;
}

CLSID GetEncoderClsidByExtension(const WCHAR * lpExtension)
{
	CLSID clsid = CLSID_NULL;

	if (NULL == lpExtension)
		return clsid;

	UINT numEncoders = 0, size = 0;
	Gdiplus::Status status = Gdiplus::GetImageEncodersSize(&numEncoders, &size);  
	if (status != Gdiplus::Ok)
		return clsid;

	Gdiplus::ImageCodecInfo* lpEncoders = (Gdiplus::ImageCodecInfo*)(malloc(size));
	if (NULL == lpEncoders)
		return clsid;

	status = Gdiplus::GetImageEncoders(numEncoders, size, lpEncoders);
	if (Gdiplus::Ok == status)
	{
		for (UINT i = 0; i < numEncoders; i++)
		{
			BOOL bFind = FALSE;
			const WCHAR * pStart = lpEncoders[i].FilenameExtension;
			const WCHAR * pEnd = wcschr(pStart, L';');
			do 
			{
				if (NULL == pEnd)
				{
					LPCWSTR lpExt = ::wcsrchr(pStart, L'.');
					if ((lpExt != NULL) && (_wcsicmp(lpExt, lpExtension) == 0))
					{
						clsid = lpEncoders[i].Clsid;
						bFind = TRUE;
					}
					break;
				}

				int nLen = pEnd-pStart;
				if (nLen < MAX_PATH)
				{
					WCHAR cBuf[MAX_PATH] = {0};
					wcsncpy(cBuf, pStart, nLen);
					LPCWSTR lpExt = ::wcsrchr(cBuf, L'.');
					if ((lpExt != NULL) && (_wcsicmp(lpExt, lpExtension) == 0))
					{
						clsid = lpEncoders[i].Clsid;
						bFind = TRUE;
						break;
					}
				}
				pStart = pEnd+1;
				if (L'\0' == *pStart)
					break;
				pEnd = wcschr(pStart, L';');
			} while (1);
			if (bFind)
				break;
		}
	}

	free(lpEncoders);

	return clsid;
}

// ImageFormatBMP, ImageFormatJPEG, ImageFormatPNG, ImageFormatGIF, ImageFormatTIFF
CLSID GetEncoderClsidByFileType(REFGUID guidFileType)
{
	CLSID clsid = CLSID_NULL;

	UINT numEncoders = 0, size = 0;
	Gdiplus::Status status = Gdiplus::GetImageEncodersSize(&numEncoders, &size);  
	if (status != Gdiplus::Ok)
		return clsid;

	Gdiplus::ImageCodecInfo* lpEncoders = (Gdiplus::ImageCodecInfo*)(malloc(size));
	if (NULL == lpEncoders)
		return clsid;

	status = Gdiplus::GetImageEncoders(numEncoders, size, lpEncoders);
	if (Gdiplus::Ok == status)
	{
		for (UINT i = 0; i < numEncoders; i++)
		{
			if (lpEncoders[i].FormatID == guidFileType)
				clsid = lpEncoders[i].Clsid;
		}
	}

	free(lpEncoders);

	return clsid;
}

// image/bmp, image/jpeg, image/gif, image/tiff, image/png
CLSID GetEncoderClsidByMimeType(const WCHAR * lpMineType)
{
	CLSID clsid = CLSID_NULL;

	if (NULL == lpMineType)
		return clsid;

	UINT numEncoders = 0, size = 0;
	Gdiplus::Status status = Gdiplus::GetImageEncodersSize(&numEncoders, &size);  
	if (status != Gdiplus::Ok)
		return clsid;

	Gdiplus::ImageCodecInfo* lpEncoders = (Gdiplus::ImageCodecInfo*)(malloc(size));
	if (NULL == lpEncoders)
		return clsid;

	status = Gdiplus::GetImageEncoders(numEncoders, size, lpEncoders);
	if (Gdiplus::Ok == status)
	{
		for (UINT i = 0; i < numEncoders; i++)
		{
			if (_wcsicmp(lpEncoders[i].MimeType, lpMineType) == 0)
				clsid = lpEncoders[i].Clsid;
		}
	}

	free(lpEncoders);

	return clsid;
}