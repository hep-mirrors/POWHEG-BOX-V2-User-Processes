#ifndef NINJA_QUADRUPLE_HH
#define NINJA_QUADRUPLE_HH

#include <iostream>

extern "C" {
#include <quadmath.h>
}

namespace ninja_qp {

  typedef __float128 Quadruple;

  class ComplexQuadruple {
  public:
    ComplexQuadruple()
      : m_(0) {}
    ComplexQuadruple(const __complex128 & oth)
      : m_(oth) {}
    ComplexQuadruple(const ComplexQuadruple & oth)
      : m_(oth.m_) {}
    ComplexQuadruple(const Quadruple & r, const Quadruple & i = 0)
      : m_(r+(__extension__ 1.0iQ)*i) {}
    operator __complex128() const
    {
      return m_;
    }
    ComplexQuadruple & operator + ()
    {
      return *this;
    }
    ComplexQuadruple operator - ()
    {
      return -m_;
    }
    ComplexQuadruple & operator += (const ComplexQuadruple & z)
    {
      m_ += z.m_;
      return *this;
    }
    ComplexQuadruple & operator -= (const ComplexQuadruple & z)
    {
      m_ -= z.m_;
      return *this;
    }
    ComplexQuadruple & operator *= (const ComplexQuadruple & z)
    {
      m_ *= z.m_;
      return *this;
    }
    ComplexQuadruple & operator /= (const ComplexQuadruple & z)
    {
      m_ /= z.m_;
      return *this;
    }

  private :
    __complex128 m_;
  };

} // namespace ninja_qp


namespace std {

  // Real functions

  inline ninja_qp::Quadruple acos (const ninja_qp::Quadruple & x)
  {
    return acosq (x);
  }

  inline ninja_qp::Quadruple acosh (const ninja_qp::Quadruple & x)
  {
    return acoshq(x);
  }

  inline ninja_qp::Quadruple asin (const ninja_qp::Quadruple & x)
  {
    return asinq(x);
  }

  inline ninja_qp::Quadruple asinh (const ninja_qp::Quadruple & x)
  {
    return asinhq(x);
  }

  inline ninja_qp::Quadruple atan (const ninja_qp::Quadruple & x)
  {
    return atanq(x);
  }

  inline ninja_qp::Quadruple atanh (const ninja_qp::Quadruple & x)
  {
    return atanhq(x);
  }

  inline ninja_qp::Quadruple atan2 (const ninja_qp::Quadruple & x,
                                 const ninja_qp::Quadruple & y)
  {
    return atan2q(x,y);
  }

  inline ninja_qp::Quadruple cbrt (const ninja_qp::Quadruple & x)
  {
    return cbrtq(x);
  }

  inline ninja_qp::Quadruple ceil (const ninja_qp::Quadruple & x)
  {
    return ceilq(x);
  }

  inline ninja_qp::Quadruple copysign (const ninja_qp::Quadruple & x,
                                    const ninja_qp::Quadruple & y)
  {
    return copysignq(x,y);
  }

  inline ninja_qp::Quadruple cosh (const ninja_qp::Quadruple & x)
  {
    return coshq(x);
  }

  inline ninja_qp::Quadruple cos (const ninja_qp::Quadruple & x)
  {
    return cosq(x);
  }

  inline ninja_qp::Quadruple erf (const ninja_qp::Quadruple & x)
  {
    return erfq(x);
  }

  inline ninja_qp::Quadruple erfc (const ninja_qp::Quadruple & x)
  {
    return erfcq(x);
  }

  inline ninja_qp::Quadruple exp (const ninja_qp::Quadruple & x)
  {
    return expq(x);
  }

  inline ninja_qp::Quadruple expm1 (const ninja_qp::Quadruple & x)
  {
    return expm1q(x);
  }

  inline ninja_qp::Quadruple abs(const ninja_qp::Quadruple & r)
  {
    return fabsq (r);
  }

  inline ninja_qp::Quadruple fabs (const ninja_qp::Quadruple & x)
  {
    return fabsq(x);
  }

  inline ninja_qp::Quadruple floor (const ninja_qp::Quadruple & x)
  {
    return floorq(x);
  }


  inline ninja_qp::Quadruple hypot (const ninja_qp::Quadruple & x,
                                 const ninja_qp::Quadruple & y)
  {
    return hypotq(x,y);
  }

  inline ninja_qp::Quadruple ldexp (const ninja_qp::Quadruple & x, int n)
  {
    return ldexpq(x,n);
  }

  inline ninja_qp::Quadruple lgamma (const ninja_qp::Quadruple & x)
  {
    return lgammaq(x);
  }

  inline ninja_qp::Quadruple log (const ninja_qp::Quadruple & x)
  {
    return logq(x);
  }

  inline ninja_qp::Quadruple log10 (const ninja_qp::Quadruple & x)
  {
    return log10q(x);
  }

  inline ninja_qp::Quadruple log2 (const ninja_qp::Quadruple & x)
  {
    return log2q(x);
  }

  inline ninja_qp::Quadruple log1p (const ninja_qp::Quadruple & x)
  {
    return log1pq(x);
  }

  inline ninja_qp::Quadruple nearbyint (const ninja_qp::Quadruple & x)
  {
    return nearbyintq(x);
  }

  inline ninja_qp::Quadruple nextafter (const ninja_qp::Quadruple & x,
                                     const ninja_qp::Quadruple & y)
  {
    return nextafterq(x,y);
  }

  inline ninja_qp::Quadruple pow (const ninja_qp::Quadruple & x,
                               const ninja_qp::Quadruple & y)
  {
    return powq(x,y);
  }

  inline ninja_qp::Quadruple remainder (const ninja_qp::Quadruple & x,
                                     const ninja_qp::Quadruple & y)
  {
    return remainderq(x,y);
  }

  inline ninja_qp::Quadruple rint (const ninja_qp::Quadruple & x)
  {
    return rintq(x);
  }

  inline ninja_qp::Quadruple round (const ninja_qp::Quadruple & x)
  {
    return roundq(x);
  }

  inline ninja_qp::Quadruple sinh (const ninja_qp::Quadruple & x)
  {
    return sinhq(x);
  }

  inline ninja_qp::Quadruple sin (const ninja_qp::Quadruple & x)
  {
    return sinq(x);
  }

  inline ninja_qp::Quadruple sqrt (const ninja_qp::Quadruple & x)
  {
    return sqrtq(x);
  }

  inline ninja_qp::Quadruple tan (const ninja_qp::Quadruple & x)
  {
    return tanq(x);
  }

  inline ninja_qp::Quadruple tanh (const ninja_qp::Quadruple & x)
  {
    return tanhq(x);
  }

  inline ninja_qp::Quadruple tgamma (const ninja_qp::Quadruple & x)
  {
    return tgammaq(x);
  }

  inline ninja_qp::Quadruple trunc (const ninja_qp::Quadruple & x)
  {
    return truncq(x);
  }


  // ComplexFunctions

  inline ninja_qp::Quadruple abs(const ninja_qp::ComplexQuadruple & z)
  {
    return cabsq(z);
  }

  inline ninja_qp::Quadruple real(const ninja_qp::ComplexQuadruple & z)
  {
    return crealq(z);
  }

  inline ninja_qp::Quadruple imag(const ninja_qp::ComplexQuadruple & z)
  {
    return cimagq(z);
  }

  inline ninja_qp::Quadruple arg(const ninja_qp::ComplexQuadruple & z)
  {
    return cargq(z);
  }

  inline ninja_qp::ComplexQuadruple conj(const ninja_qp::ComplexQuadruple & z)
  {
    return conjq(z);
  }

  inline ninja_qp::ComplexQuadruple acos(const ninja_qp::ComplexQuadruple & z)
  {
    return cacosq(z);
  }

  inline ninja_qp::ComplexQuadruple acosh(const ninja_qp::ComplexQuadruple & z)
  {
    return cacoshq(z);
  }

  inline ninja_qp::ComplexQuadruple asin(const ninja_qp::ComplexQuadruple & z)
  {
    return casinq(z);
  }

  inline ninja_qp::ComplexQuadruple asinh(const ninja_qp::ComplexQuadruple & z)
  {
    return casinhq(z);
  }

  inline ninja_qp::ComplexQuadruple atan(const ninja_qp::ComplexQuadruple & z)
  {
    return catanq(z);
  }

  inline ninja_qp::ComplexQuadruple atanh(const ninja_qp::ComplexQuadruple & z)
  {
    return catanhq(z);
  }

  inline ninja_qp::ComplexQuadruple cos(const ninja_qp::ComplexQuadruple & z)
  {
    return ccosq(z);
  }

  inline ninja_qp::ComplexQuadruple cosh(const ninja_qp::ComplexQuadruple & z)
  {
    return ccoshq(z);
  }

  inline ninja_qp::ComplexQuadruple exp(const ninja_qp::ComplexQuadruple & z)
  {
    return cexpq(z);
  }

  inline ninja_qp::ComplexQuadruple log(const ninja_qp::ComplexQuadruple & z)
  {
    return clogq(z);
  }

  inline ninja_qp::ComplexQuadruple log10(const ninja_qp::ComplexQuadruple & z)
  {
    return clog10q(z);
  }

  inline ninja_qp::ComplexQuadruple pow(const ninja_qp::ComplexQuadruple & base,
                                     const ninja_qp::ComplexQuadruple & exponent)
  {
    return cpowq(base,exponent);
  }

  inline ninja_qp::ComplexQuadruple sin(const ninja_qp::ComplexQuadruple & z)
  {
    return csinq(z);
  }

  inline ninja_qp::ComplexQuadruple sinh(const ninja_qp::ComplexQuadruple & z)
  {
    return csinhq(z);
  }

  inline ninja_qp::ComplexQuadruple sqrt(const ninja_qp::ComplexQuadruple & z)
  {
    return csqrtq(z);
  }

  inline ninja_qp::ComplexQuadruple tan(const ninja_qp::ComplexQuadruple & z)
  {
    return ctanq(z);
  }

  inline ninja_qp::ComplexQuadruple tanh(const ninja_qp::ComplexQuadruple & z)
  {
    return ctanhq(z);
  }



  // stream operators
  inline ostream & operator << (std::ostream & os, const ninja_qp::Quadruple & a)
  {
    int width = 30;
    char buf[128];
    quadmath_snprintf (buf, sizeof buf, "%-#*.30Qe", width, a);
    return os << buf;
  }

  // stream operators
  inline ostream & operator << (std::ostream & os,
                                const __complex128 & a)
  {
    return os << "(" << std::real(a) << "," << std::imag(a) << ")";
  }

} // namespace std

#endif // NINJA_QUADRUPLE_HH
