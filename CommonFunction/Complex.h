#pragma once

ref class CComplex
{
public:
	double realPart;
	double imagePart;
public:
	CComplex(void);
	CComplex(double r,double i);
	~CComplex(void);
	static CComplex^ operator +(CComplex a,CComplex b);
	static CComplex^ operator *(CComplex a,CComplex b);
	static CComplex^ operator -(CComplex a,CComplex b);
};
