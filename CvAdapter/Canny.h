//cannyËã×Ó´úÂë 
void CreatGauss(double sigma, double **pdKernel, int *pnWidowSize); 

void GaussianSmooth(SIZE sz, LPBYTE pGray, LPBYTE pResult, double sigma); 

void Grad(SIZE sz, LPBYTE pGray, int *pGradX, int *pGradY, int *pMag); 

void NonmaxSuppress(int *pMag, int *pGradX, int *pGradY, SIZE sz, LPBYTE pNSRst); 

void EstimateThreshold(int *pMag, SIZE sz, int *pThrHigh, int *pThrLow, LPBYTE pGray, 
double dRatHigh, double dRatLow); 

void Hysteresis(int *pMag, SIZE sz, double dRatLow, double dRatHigh, LPBYTE pResult); 

void TraceEdge(int y, int x, int nThrLow, LPBYTE pResult, int *pMag, SIZE sz); 

void Canny(LPBYTE pGray, SIZE sz, double sigma, double dRatLow, 
double dRatHigh, LPBYTE pResult); 