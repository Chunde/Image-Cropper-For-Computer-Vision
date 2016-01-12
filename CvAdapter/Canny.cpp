#include "stdafx.h"


#include "math.h" 
#include "canny.h" 

// һά��˹�ֲ�����������ƽ�����������ɵĸ�˹�˲�ϵ�� 
void CreatGauss(double sigma, double **pdKernel, int *pnWidowSize) 
{ 

	LONG i; 

	//�������ĵ� 
	int nCenter; 

	//������һ�㵽���ĵ���� 
	double dDis; 

	//�м���� 
	double dValue; 
	double dSum; 
	dSum = 0; 

	// [-3*sigma,3*sigma] �������ݣ��Ḳ�Ǿ��󲿷��˲�ϵ�� 
	*pnWidowSize = 1+ 2*((int)ceil(3*sigma)); 

	nCenter = (*pnWidowSize)/2; 

	*pdKernel = new double[*pnWidowSize]; 

	//���ɸ�˹���� 
	for(i=0;i<(*pnWidowSize);i++) 
	{ 
		dDis = double(i - nCenter); 
		dValue = exp(-(1 / 2) * dDis * dDis / (sigma*sigma)) / (sqrt(2*3.1415926)*sigma); 
		(*pdKernel)[i] = dValue; 
		dSum += dValue; 

	} 
	//��һ�� 
	for(i=0;i<(*pnWidowSize);i++) 
	{ 
		(*pdKernel)[i] /= dSum; 
	} 

} 

//�ø�˹�˲���ƽ��ԭͼ�� 
void GaussianSmooth(SIZE sz, LPBYTE pGray, LPBYTE pResult, double sigma) 
{ 
	LONG x, y; 
	LONG i; 

	//��˹�˲������� 
	int nWindowSize; 

	//���ڳ��� 
	int nLen; 

	//һά��˹�˲��� 
	double *pdKernel; 

	//��˹ϵ����ͼ�����ݵĵ�� 
	double dDotMul; 

	//�˲�ϵ���ܺ� 
	double dWeightSum; 

	double *pdTemp; 
	pdTemp = new double[sz.cx*sz.cy]; 

	//����һά��˹���� 
	CreatGauss(sigma, &pdKernel, &nWindowSize); 

	nLen = nWindowSize/2; 

	//x�����˲� 
	for(y=0;y<sz.cy;y++) 
	{ 
		for(x=0;x<sz.cx;x++) 
		{ 
			dDotMul = 0; 
			dWeightSum = 0; 
			for(i=(-nLen);i<=nLen;i++) 
			{ 
				//�ж��Ƿ���ͼ���ڲ� 
				if((i+x)>=0 && (i+x)<sz.cx) 
				{ 
					dDotMul+=(double)pGray[y*sz.cx+(i+x)] * pdKernel[nLen+i]; 
					dWeightSum += pdKernel[nLen+i]; 
				} 
			} 
			pdTemp[y*sz.cx+x] = dDotMul/dWeightSum; 
		} 
	} 

	//y�����˲� 
	for(x=0; x<sz.cx;x++) 
	{ 
		for(y=0; y<sz.cy; y++) 
		{ 
			dDotMul = 0; 
			dWeightSum = 0; 
			for(i=(-nLen);i<=nLen;i++) 
			{ 
				if((i+y)>=0 && (i+y)< sz.cy) 
				{ 
					dDotMul += (double)pdTemp[(y+i)*sz.cx+x]*pdKernel[nLen+i]; 
					dWeightSum += pdKernel[nLen+i]; 
				} 
			} 
			pResult[y*sz.cx+x] = (unsigned char)(dDotMul/dWeightSum); 
		} 
	} 

	delete []pdKernel; 
	pdKernel = NULL; 

	delete []pdTemp; 
	pdTemp = NULL; 

} 

// ������,���ݶ� 
void Grad(SIZE sz, LPBYTE pGray,int *pGradX, int *pGradY, int *pMag) 
{ 
	LONG y,x; 

	//x����ķ����� 
	for(y=1;y<sz.cy-1;y++) 
	{ 
		for(x=1;x<sz.cx-1;x++) 
		{ 
			pGradX[y*sz.cx +x] = (int)( pGray[y*sz.cx+x+1]-pGray[y*sz.cx+ x-1] ); 
		} 
	} 

		//y�������� 
		for(x=1;x<sz.cx-1;x++) 
		{ 
			for(y=1;y<sz.cy-1;y++) 
			{ 
				pGradY[y*sz.cx +x] = (int)(pGray[(y+1)*sz.cx +x] - pGray[(y-1)*sz.cx +x]); 
			} 
		}
 

	//���ݶ� 

	//�м���� 
	double dSqt1; 
	double dSqt2; 

	for(y=0; y<sz.cy; y++) 
	{ 
		for(x=0; x<sz.cx; x++) 
		{ 
			//���׷������ݶ� 
			dSqt1 = pGradX[y*sz.cx + x]*pGradX[y*sz.cx + x]; 
			dSqt2 = pGradY[y*sz.cx + x]*pGradY[y*sz.cx + x]; 
			pMag[y*sz.cx+x] = (int)(sqrt(dSqt1+dSqt2)+0.5); 
		} 
	} 
} 

//��������� 
void NonmaxSuppress(int *pMag, int *pGradX, int *pGradY, SIZE sz, LPBYTE pNSRst) 
{ 
	LONG y,x; 
	int nPos; 

	//�ݶȷ��� 
	int gx; 
	int gy; 

	//�м���� 
	int g1,g2,g3,g4; 
	double weight; 
	double dTmp,dTmp1,dTmp2; 

	//����ͼ���ԵΪ�����ܵķֽ�� 
	for(x=0;x<sz.cx;x++) 
	{ 
		pNSRst[x] = 0; 
		pNSRst[(sz.cy-1)*sz.cx+x] = 0; 
	} 
	for(y=0;y<sz.cy;y++) 
	{ 
		pNSRst[y*sz.cx] = 0; 
		pNSRst[y*sz.cx + sz.cx-1] = 0; 
	} 

	for(y=1;y<sz.cy-1;y++) 
	{ 
	for(x=1;x<sz.cx-1;x++) 
	{ 
	//��ǰ�� 
	nPos = y*sz.cx + x; 

	//�����ǰ�����ݶȷ���Ϊ0�����Ǳ߽�� 
	if(pMag[nPos] == 0) 
	{ 
		pNSRst[nPos] = 0; 
	} 
	else 
	{ 
	//��ǰ����ݶȷ��� 
	dTmp = pMag[nPos]; 

	//x,y������ 
	gx = pGradX[nPos]; 
	gy = pGradY[nPos]; 

	//���������y������x������˵����������������y���� 
	if(abs(gy) > abs(gx)) 
	{ 
	//�����ֵ���� 
	weight = fabs((double)(gx)/(double)(gy)); 

		g2 = pMag[nPos-sz.cx]; 
		g4 = pMag[nPos+sz.cx]; 

		//���x,y�����������ķ�����ͬ 
		//C Ϊ��ǰ���أ���g1-g4 ��λ�ù�ϵΪ�� 
		//g1 g2 
		// C 
		// g4 g3 
		if(gx*gy>0) 
		{ 
			g1 = pMag[nPos-sz.cx-1]; 
			g3 = pMag[nPos+sz.cx+1]; 
		} 

		//���x,y��������ķ����������෴ 
		//C�ǵ�ǰ���أ���g1-g4�Ĺ�ϵΪ�� 
		// g2 g1 
		// C 
		// g3 g4 
		else 
		{ 
			g1 = pMag[nPos-sz.cx+1]; 
			g3 = pMag[nPos+sz.cx-1]; 
		} 
	} 

	//���������x������y������˵�������ķ���������x���� 
	else 
	{ 
		//��ֵ���� 
		weight = fabs((double)(gy)/(double)(gx)); 

		g2 = pMag[nPos+1]; 
		g4 = pMag[nPos-1]; 

		//���x,y��������ķ�����������ͬ 
		//��ǰ����C�� g1-g4�Ĺ�ϵΪ 
		// g3 
		// g4 C g2 
		// g1 
		if(gx * gy > 0) 
		{ 
			g1 = pMag[nPos+sz.cx+1]; 
			g3 = pMag[nPos-sz.cx-1]; 
		} 

		//���x,y�����������ķ����෴ 
		// C��g1-g4�Ĺ�ϵΪ 
		// g1 
		// g4 C g2 
		// g3 
		else 
		{ 
			g1 = pMag[nPos-sz.cx+1]; 
			g3 = pMag[nPos+sz.cx-1]; 
		} 
	} 

	//���� g1-g4 ���ݶȽ��в�ֵ 
	{ 
		dTmp1 = weight*g1 + (1-weight)*g2; 
		dTmp2 = weight*g3 + (1-weight)*g4; 

		//��ǰ���ص��ݶ��Ǿֲ������ֵ 
		//�õ�����Ǳ߽�� 
		if(dTmp>=dTmp1 && dTmp>=dTmp2) 
		{ 
			pNSRst[nPos] = 128; 
		} 
		else 
		{ 
			//�������Ǳ߽�� 
			pNSRst[nPos] = 0; 
		} 
	} 
	} 
	} 
	} 
} 

// ͳ��pMag��ֱ��ͼ���ж���ֵ 
void EstimateThreshold(int *pMag, SIZE sz, int *pThrHigh, int *pThrLow, LPBYTE pGray,double dRatHigh, double dRatLow) 
{ 
	LONG y,x,k; 

	//������Ĵ�С���ݶ�ֵ�ķ�Χ�йأ�������ñ�������㷨 
	//��ô�ݶȵķ�Χ���ᳬ��pow(2,10) 
	int nHist[256]; 

	//���ܱ߽��� 
	int nEdgeNum; 

	//����ݶ��� 
	int nMaxMag; 

	int nHighCount; 

	nMaxMag = 0; 

	//��ʼ�� 
	for(k=0;k<256;k++) 
	{ 
		nHist[k] = 0; 
	} 
	//ͳ��ֱ��ͼ,����ֱ��ͼ������ֵ 
	for(y=0;y<sz.cy;y++) 
	{ 
		for(x=0;x<sz.cx;x++) 
		{ 
			if(pGray[y*sz.cx+x]==128) 
			{ 
				nHist[pMag[y*sz.cx+x]]++; 
			} 
		} 
	} 

	nEdgeNum = nHist[0]; 
	nMaxMag = 0; 

	//ͳ�ƾ����������ֵ���ơ����ж������� 
	for(k=1;k<256;k++) 
	{ 
		if(nHist[k] != 0) 
		{ 
			nMaxMag = k; 
		} 

		//�ݶ�Ϊ0�ĵ��ǲ�����Ϊ�߽��� 
		//����non-maximum suppression���ж������� 
		nEdgeNum += nHist[k]; 

	} 

	//�ݶȱȸ���ֵ*pThrHigh С�����ص�����Ŀ 
	nHighCount = (int)(dRatHigh * nEdgeNum + 0.5); 

	k=1; 
	nEdgeNum = nHist[1]; 

	//�������ֵ 
	while((k<(nMaxMag-1)) && (nEdgeNum < nHighCount)) 
	{ 
		k++; 
		nEdgeNum += nHist[k]; 
	} 

	*pThrHigh = k; 

	//����ֵ 
	*pThrLow = (int)((*pThrHigh) * dRatLow + 0.5); 

} 

//���ú���Ѱ�ұ߽���� 
void Hysteresis(int *pMag, SIZE sz, double dRatLow, double dRatHigh, LPBYTE pResult) 
{ 
	LONG y,x; 

	int nThrHigh,nThrLow; 

	int nPos; 
	//����TraceEdge ������Ҫ�ĵ���ֵ���Լ�Hysteresis����ʹ�õĸ���ֵ 
	EstimateThreshold(pMag, sz,&nThrHigh,&nThrLow,pResult,dRatHigh,dRatLow); 

	//Ѱ�Ҵ���dThrHigh�ĵ㣬��Щ�����������߽�㣬 
	//Ȼ����TraceEdge�������ٸõ��Ӧ�ı߽� 
	for(y=0;y<sz.cy;y++) 
	{ 
		for(x=0;x<sz.cx;x++) 
		{ 
			nPos = y*sz.cx + x; 

			//����������ǿ��ܵı߽�㣬�����ݶȴ��ڸ���ֵ�� 
			//��������Ϊһ���߽����� 
			if((pResult[nPos]==128) && (pMag[nPos] >= nThrHigh)) 
			{ 
				//���øõ�Ϊ�߽�� 
				pResult[nPos] = 255; 
				TraceEdge(y,x,nThrLow,pResult,pMag,sz); 
			} 

		} 
	} 

	//�������Ѿ�������Ϊ�߽�� 
	for(y=0;y<sz.cy;y++) 
	{ 
		for(x=0;x<sz.cx;x++) 
		{ 
			nPos = y*sz.cx + x; 

			if(pResult[nPos] != 255) 
			{ 
				pResult[nPos] = 0; 
			} 
		} 
	} 
} 

//����Hysteresis ִ�еĽ������һ�����ص㿪ʼ�����������Ը����ص�Ϊ�߽�����һ���߽�� 
//һ���߽�����б߽�㣬���������˵ݹ��㷨 
// �ӣ�x,y)������������б߽��ĸ��٣�����ֻ����pResult��û�д����ҿ����Ǳ߽� 
// ������أ�=128��������ֵΪ0�����õ㲻�����Ǳ߽�㣬����ֵΪ255�����õ��Ѿ��Ǳ߽�� 

void TraceEdge(int y, int x, int nThrLow, LPBYTE pResult, int *pMag, SIZE sz) 
{ 
	//��8�������ؽ��в�ѯ 
	int xNum[8] = {1,1,0,-1,-1,-1,0,1}; 
	int yNum[8] = {0,1,1,1,0,-1,-1,-1}; 

	LONG yy,xx,k; 

	for(k=0;k<8;k++) 
	{ 
		yy = y+yNum[k]; 
		xx = x+xNum[k]; 

		if(pResult[yy*sz.cx+xx]==128 && pMag[yy*sz.cx+xx]>=nThrLow ) 
		{ 
			//�õ���Ϊ�߽�� 
			pResult[yy*sz.cx+xx] = 255; 

			//�Ըõ�Ϊ�����ٽ��и��� 
			TraceEdge(yy,xx,nThrLow,pResult,pMag,sz); 
		} 
	} 
} 


// Canny���� 
void Canny(LPBYTE pGray, SIZE sz, double sigma, double dRatLow,double dRatHigh, LPBYTE pResult) 
{ 
	//������˹�˲����ͼ�� 
	LPBYTE pGaussSmooth; 

	pGaussSmooth = new unsigned char[sz.cx*sz.cy]; 

	//x��������ָ�� 
	int *pGradX; 
	pGradX = new int[sz.cx*sz.cy]; 

	//y���� 
	int *pGradY; 
	pGradY = new int[sz.cx*sz.cy]; 

	//�ݶȵķ��� 
	int *pGradMag; 
	pGradMag = new int[sz.cx*sz.cy]; 

	//��ԭͼ��˹�˲� 
	GaussianSmooth(sz,pGray,pGaussSmooth,sigma); 

	//���㷽�������ݶȵķ��� 
	Grad(sz,pGaussSmooth,pGradX,pGradY,pGradMag); 

	//Ӧ�÷�������� 
	NonmaxSuppress(pGradMag,pGradX,pGradY,sz,pResult); 

	//Ӧ��Hysteresis���ҵ����б߽� 
	Hysteresis(pGradMag,sz,dRatLow,dRatHigh,pResult); 

	delete[] pGradX; 
	pGradX = NULL; 
	delete[] pGradY; 
	pGradY = NULL; 
	delete[] pGradMag; 
	pGradMag = NULL; 
	delete[] pGaussSmooth; 
	pGaussSmooth = NULL; 



} 

/* 
void CChildWnd::OnCanny() 
{ 
if (! m_fOpenFile) 
{ 
return; 
} 
m_fDone = TRUE; 
RGBToGray(szImg, aRGB, aGray, BPP); 
Canny(aGray,szImg,0.1,0.9,0.76,aBinImg); 

ShowGrayImage("l",szImg,aBinImg); 
} 
//*/