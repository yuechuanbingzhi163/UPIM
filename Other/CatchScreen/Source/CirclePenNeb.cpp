/**
*   CirclePenneb.cpp		
*   Version 1.0
*   CPH	绘画乐园
*   Copyright 2002 . All Rights Reserved.
*   实现圆形笔尖工具
*======================================================
*   版本
*   Revision 1.0	2002/11/14    	 实现 CCirclePenNeb 类
*/
#include "stdafx.h"
#include "..\Include\CirclePenNeb.h"

#include <math.h>

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CCirclePenNeb::CCirclePenNeb(HDC hDC, int nSize, COLORREF crColor, BOOL bAlpha) 
		: CPenNeb(hDC, crColor, bAlpha)
{
	m_PenNebSize.cx = nSize;
	m_PenNebSize.cy = nSize;
}

CCirclePenNeb::~CCirclePenNeb()
{

}


/*
*--------------------------------------------------------------------------------
*  函数名	: SetSize
*  功能		: 设置笔尖的大小
*  参数		: int nSize	-	笔尖大小
*  算法		: 圆形笔尖的宽度和高度相等
*--------------------------------------------------------------------------------
*/
void CCirclePenNeb::SetSize(int nSize)
{
	m_PenNebSize.cx = nSize;
	m_PenNebSize.cy = nSize;

	if (m_bAlpha)
		CreateAlphaPen();
}


/*
*--------------------------------------------------------------------------------
*  函数名: SetAlpha
*  功能	 : 设置笔尖图像上每个像素点的Alpha值
*  参数  : BYTE* pPixel - 笔尖DIB图像的数据指针
*  算法  : 圆形笔尖，不透明度中间为最高150，向四周过渡到完全透明
*  说明  : 采用 Alpha 混合每个像素点必须为 32 位
*--------------------------------------------------------------------------------
*/
void CCirclePenNeb::SetAlpha(BYTE* pPixel)
{
	int nWidth = m_PenNebSize.cx ;
	int nHeight = m_PenNebSize.cy ;

	// 扫描设置每一个像素点
	for (int y = 0; y < nHeight; y++)
		for (int x = 0; x < nWidth; x++, pPixel += 4)
		{
			BYTE alpha = 255;

			// 计算像素点距中心点的距离
			int dis;			
			dis = (int) ( sqrt( (float)(x-nWidth/2) * (x-nWidth/2)
				+ (y-nHeight/2) * (y-nHeight/2)) 
				* 150 / (max(nWidth, nHeight)/2) );
			
			alpha = (BYTE) max(min(150 - dis, 150), 0);

			pPixel[0] = pPixel[0] * alpha / 255;
			pPixel[1] = pPixel[1] * alpha / 255;
			pPixel[2] = pPixel[2] * alpha / 255;
			pPixel[3] = alpha;
		}
}
