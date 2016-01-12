#include "StdAfx.h"
#include "Complex.h"

CComplex::CComplex(void)
{
	this->realPart = 0.0;
	this->imagePart = 0.0;
}

CComplex::CComplex(double r,double i)
{
	this->realPart = r;
	this->imagePart = i;
}
CComplex::~CComplex(void)
{}

CComplex^ CComplex::operator +(CComplex a, CComplex b)
{
	return gcnew CComplex(a.realPart + b.realPart ,a.imagePart + b.imagePart);
}

CComplex^ CComplex::operator -(CComplex a, CComplex b)
{
    return gcnew CComplex(a.realPart - b.realPart, a.imagePart - b.imagePart);
}
CComplex^ CComplex::operator *(CComplex a, CComplex b)
{
    return gcnew CComplex(a.realPart - b.realPart, a.imagePart - b.imagePart);
}

