// CatchScreen.cpp : Defines the class behaviors for the application.
// Download by http://www.NewXing.com

#include "stdafx.h"
#include "CatchScreen.h"
#include "CatchScreenDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCatchScreenApp

BEGIN_MESSAGE_MAP(CCatchScreenApp, CWinApp)
	//{{AFX_MSG_MAP(CCatchScreenApp)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG
	ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCatchScreenApp construction

CCatchScreenApp::CCatchScreenApp()
{
	// TODO: add construction code here,
	// Place all significant initialization in InitInstance
	//m_hwndDlg=NULL;
}

/////////////////////////////////////////////////////////////////////////////
// The one and only CCatchScreenApp object

CCatchScreenApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CCatchScreenApp initialization

BOOL CCatchScreenApp::InitInstance()
{
	// Standard initialization
	// If you are not using these features and wish to reduce the size
	//  of your final executable, you should remove from the following
	//  the specific initialization routines you do not need.
	CWinApp::InitInstance();
// #ifdef _AFXDLL
// 	Enable3dControls();			// Call this when using MFC in a shared DLL
// #else
// 	Enable3dControlsStatic();	// Call this when linking to MFC statically
// #endif

// 	CCatchScreenDlg dlg;
	//WriteDebugMessage("dlg_log","%s","InitInstance");
// 	m_pMainWnd = &dlg;
// 	int nResponse = dlg.DoModal();
// 	if (nResponse == IDOK)
// 	{
// 		// TODO: Place code here to handle when the dialog is
// 		//  dismissed with OK
// 	}
// 	else if (nResponse == IDCANCEL)
// 	{
// 		// TODO: Place code here to handle when the dialog is
// 		//  dismissed with Cancel
// 	}
	GdiplusStartupInput gdi;  
	GdiplusStartup(&m_gdiToken,&gdi,NULL);   

	// Since the dialog has been closed, return FALSE so that we exit the
	//  application, rather than start the application's message pump.
	return TRUE;
}
//********************************************************************************
#define SHIFTED 0x8000 
//********************************************************************************
/*
BOOL CCatchScreenApp::ProcessMessageFilter(int code, LPMSG lpMsg) 
{
	//WriteDebugMessage("dlg_log","%s","ProcessMessageFilter");
	// TODO: Add your specialized code here and/or call the base class
	if(m_hwndDlg!=NULL)
	{   //判断消息，如果消息是从对话框发出的或者其子控件发出的，就进行处理
		if((lpMsg->hwnd==m_hwndDlg) || ::IsChild(m_hwndDlg,lpMsg->hwnd))
		{
			//如果消息是WM_KEYDOWN
			//用方向键调整位置
			if(lpMsg->message==WM_KEYDOWN)
			{
				CRect rect(0,0,0,0);
				CCatchScreenDlg * pDlg=(CCatchScreenDlg *)AfxGetMainWnd();
				
				rect=pDlg->m_rectTracker.m_rect;

				if(pDlg->m_bFirstDraw)
				{
					
					//如果Shift键按下则方向键调整大小
					BOOL isShifeDowm=FALSE;
					int nVirtKey;
					nVirtKey = GetKeyState(VK_SHIFT); 
					if (nVirtKey & SHIFTED) 
						isShifeDowm=TRUE;

					switch(lpMsg->wParam)
					{
					case VK_UP:
						//如果按下Shift,则只调整一边
						if(!isShifeDowm)
							rect.top-=1;
						rect.bottom-=1;
						pDlg->m_rectTracker.m_rect=rect;
						pDlg->PaintWindow();
						break;
					case VK_DOWN:
						if(!isShifeDowm)
							rect.top+=1;
						rect.bottom+=1;
						pDlg->m_rectTracker.m_rect=rect;
						pDlg->PaintWindow();
						break;
					case VK_LEFT:
						if(!isShifeDowm)
							rect.left-=1;
						rect.right-=1;
						pDlg->m_rectTracker.m_rect=rect;
						pDlg->PaintWindow();
						break;
					case VK_RIGHT:
						if(!isShifeDowm)
							rect.left+=1;
						rect.right+=1;
						pDlg->m_rectTracker.m_rect=rect;
						pDlg->PaintWindow();
						break;
					}
				}
			}
			
		}
	} 
	return CWinApp::ProcessMessageFilter(code, lpMsg);
}
*/
//********************************************************************************
