c     qqZg amplitude: tensor coefficients
c     generated on  Wed Apr  9 15:22:24 2014 by avm
c
c     bare SM corrections without Nf contributions

c     subroutine convention:
c     input: mi
c     output: gcoeffarr
c     returns M_B * M_V,
c     where M_B is the Born amplitude and
c     M_V is the finite part of the virtual amplitude
c     A factor (4 Pi)^eps/Gamma[1-eps] with eps=(4-d)/2 is implied.
c
      subroutine computegcoeffnonf(mi,gcoeffarr)

      implicit none
#include "vars.h"
#include "gcoeff.h"
#include "mi.h"
      complex*16 pre, e
      complex*16 w(1000)

      pre = 1.D0/16.D0*gs**3*gem*pi**(-2)*imagunit*s125**(-2)

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  + Nc**(-1)*s125 * (  - 2.D0*r25**(-1) )
      e = e  + Nc*s125 * ( 4.D0*r25**(-1) )

      gcoeffarr(aa0,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + Nc**(-1)*s125 * ( 2.D0*r15**(-2) - 2.D0*r15**(-2)*r25 - 2.D
     &    0*r15**(-1) - 2.D0*r25**(-2) - r25**(-1) + 2.D0*r15*r25**(-2)
     &     - mi(1)*r15**(-2) + mi(1)*r15**(-2)*r25 + mi(1)*r15**(-1) + 
     &    mi(1)*r25**(-2) - mi(1)*r25**(-1) - mi(1)*r15*r25**(-2) + mi(
     &    2)*r15**(-2) - mi(2)*r15**(-2)*r25 - mi(2)*r15**(-1) - mi(2)*
     &    r25**(-2) - mi(2)*r25**(-1) + mi(2)*r15*r25**(-2) + mi(3)*
     &    r25**(-2) - mi(3)*r25**(-1) - mi(3)*r15*r25**(-2) - mi(4)*
     &    r15**(-2) + mi(4)*r15**(-2)*r25 + mi(4)*r15**(-1) + 2.D0*mi(4
     &    )*r25**(-1) )
      e = e  + Nc**(-1)*s125**3 * (  - 1.D0/2.D0*mi(6)*r15*r25**(-2) + 
     &    mi(6)*r15*r25**(-1) - 1.D0/2.D0*mi(6)*r15 + mi(6)*r15**2*
     &    r25**(-2) - mi(6)*r15**2*r25**(-1) - 1.D0/2.D0*mi(6)*r15**3*
     &    r25**(-2) - mi(8) + 1.D0/2.D0*mi(8)*r15**(-2)*r25 - mi(8)*
     &    r15**(-2)*r25**2 + 1.D0/2.D0*mi(8)*r15**(-2)*r25**3 - mi(8)*
     &    r15**(-1)*r25 + mi(8)*r15**(-1)*r25**2 + 3.D0/2.D0*mi(8)*r25
     &     + mi(8)*r15 )
      e = e  + Nc*s125 * (  - r25**(-1) + 6.D0*i1r15r25 + 2.D0*mi(2)*
     &    r25**(-1) + 3.D0*mi(2)*i1r15r25 - 3.D0*mi(3)*i1r15r25 - 3.D0*
     &    mi(4)*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(12)*r15 + 3.D0/2.D0*mi(12)
     &    *r15*i1r15r25 - 3.D0/2.D0*mi(12)*r15**2*i1r15r25 )

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1)*s125 * ( 8.D0*r15**(-1) + 9.D0*r25**(-1) + mi(1)*
     &    r15**(-2) - mi(1)*r15**(-2)*r25 + mi(1)*r15**(-1)*r25**(-1)
     &     - 4.D0*mi(1)*r15**(-1) - 2.D0*mi(1)*r15**(-1)*ir15r25 - mi(1
     &    )*r25**(-2) - 6.D0*mi(1)*r25**(-1) + mi(1)*r15*r25**(-2) - 1.D
     &    0/2.D0*mi(1)**2*r15**(-2) + 1.D0/2.D0*mi(1)**2*r15**(-2)*r25
     &     + 1.D0/2.D0*mi(1)**2*r15**(-1) + 1.D0/2.D0*mi(1)**2*
     &    r25**(-2) - 1.D0/2.D0*mi(1)**2*r25**(-1) - 1.D0/2.D0*mi(1)**2
     &    *r15*r25**(-2) - mi(2)*r15**(-2) + mi(2)*r15**(-2)*r25 - mi(2
     &    )*r15**(-1)*r25**(-1) + 5.D0*mi(2)*r15**(-1) + 2.D0*mi(2)*
     &    r15**(-1)*ir15r25 + mi(2)*r25**(-2) + 6.D0*mi(2)*r25**(-1) - 
     &    3.D0*mi(2)*i1r25 - mi(2)*r15*r25**(-2) + 1.D0/2.D0*mi(2)**2*
     &    r15**(-2) - 1.D0/2.D0*mi(2)**2*r15**(-2)*r25 - 1.D0/2.D0*mi(2
     &    )**2*r15**(-1) - 1.D0/2.D0*mi(2)**2*r25**(-2) - 1.D0/2.D0*mi(
     &    2)**2*r25**(-1) + 1.D0/2.D0*mi(2)**2*r15*r25**(-2) - mi(3)*
     &    r25**(-2) - 4.D0*mi(3)*r25**(-1) + mi(3)*r15*r25**(-2) + 1.D0/
     &    2.D0*mi(3)**2*r25**(-2) )
      e = e  + Nc**(-1)*s125 * (  - 1.D0/2.D0*mi(3)**2*r25**(-1) - 1.D0/
     &    2.D0*mi(3)**2*r15*r25**(-2) + mi(4)*r15**(-2) - mi(4)*
     &    r15**(-2)*r25 - 6.D0*mi(4)*r15**(-1) - 4.D0*mi(4)*r25**(-1)
     &     + 3.D0*mi(4)*i1r25 - 1.D0/2.D0*mi(4)**2*r15**(-2) + 1.D0/2.D0
     &    *mi(4)**2*r15**(-2)*r25 + 1.D0/2.D0*mi(4)**2*r15**(-1) + mi(4
     &    )**2*r25**(-1) )
      e = e  + Nc**(-1)*s125**3 * (  - 1.D0/2.D0*mi(5)*r15*r25**(-2) + 
     &    mi(5)*r15*r25**(-1) - 1.D0/2.D0*mi(5)*r15 + mi(5)*r15**2*
     &    r25**(-2) - mi(5)*r15**2*r25**(-1) - 1.D0/2.D0*mi(5)*r15**3*
     &    r25**(-2) - 1.D0/2.D0*mi(6)*r15*r25**(-2) + 4.D0*mi(6)*r15*
     &    r25**(-1) - 7.D0/2.D0*mi(6)*r15 + mi(6)*r15**2*r25**(-2) - 4.D
     &    0*mi(6)*r15**2*r25**(-1) - 1.D0/2.D0*mi(6)*r15**3*r25**(-2)
     &     - mi(7) + 1.D0/2.D0*mi(7)*r15**(-2)*r25 - mi(7)*r15**(-2)*
     &    r25**2 + 1.D0/2.D0*mi(7)*r15**(-2)*r25**3 - mi(7)*r15**(-1)*
     &    r25 + mi(7)*r15**(-1)*r25**2 + 3.D0/2.D0*mi(7)*r25 + mi(7)*
     &    r15 + 1.D0/2.D0*mi(8)*r15**(-2)*r25 - mi(8)*r15**(-2)*r25**2
     &     + 1.D0/2.D0*mi(8)*r15**(-2)*r25**3 + mi(8)*r15**(-1)*r25 - 
     &    mi(8)*r15**(-1)*r25**2 - 3.D0/2.D0*mi(8)*r25 )
      e = e  + Nc*s125 * ( 5.D0*r25**(-1) + 8.D0*i1r15r25 - mi(2)*
     &    r25**(-1) + mi(2)*i1r15r25 + 3.D0*mi(2)*i1r25 + mi(2)**2*
     &    r25**(-1) + 3.D0/2.D0*mi(2)**2*i1r15r25 - mi(3)*i1r15r25 - 3.D
     &    0/2.D0*mi(3)**2*i1r15r25 - mi(4)*i1r15r25 - 3.D0*mi(4)*i1r25
     &     - 3.D0/2.D0*mi(4)**2*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(11)*r15 + 3.D0/2.D0*mi(11)
     &    *r15*i1r15r25 - 3.D0/2.D0*mi(11)*r15**2*i1r15r25 - 7.D0/2.D0*
     &    mi(12)*r15 + 7.D0/2.D0*mi(12)*r15*i1r15r25 - 7.D0/2.D0*mi(12)
     &    *r15**2*i1r15r25 )

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  + Nc**(-1)*s125 * (  - 2.D0*r25**(-1) )
      e = e  + Nc*s125 * ( 4.D0*r25**(-1) )

      gcoeffarr(aa0,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + Nc**(-1)*s125 * ( 2.D0*r15**(-2) - 2.D0*r15**(-2)*r25 - 2.D
     &    0*r15**(-1) - 2.D0*r25**(-2) - r25**(-1) + 2.D0*r15*r25**(-2)
     &     - mi(1)*r15**(-2) + mi(1)*r15**(-2)*r25 + mi(1)*r15**(-1) + 
     &    mi(1)*r25**(-2) - mi(1)*r25**(-1) - mi(1)*r15*r25**(-2) + mi(
     &    2)*r15**(-2) - mi(2)*r15**(-2)*r25 - mi(2)*r15**(-1) - mi(2)*
     &    r25**(-2) - mi(2)*r25**(-1) + mi(2)*r15*r25**(-2) + mi(3)*
     &    r25**(-2) - mi(3)*r25**(-1) - mi(3)*r15*r25**(-2) - mi(4)*
     &    r15**(-2) + mi(4)*r15**(-2)*r25 + mi(4)*r15**(-1) + 2.D0*mi(4
     &    )*r25**(-1) )
      e = e  + Nc**(-1)*s125**3 * (  - 1.D0/2.D0*mi(6)*r15*r25**(-2) + 
     &    mi(6)*r15*r25**(-1) - 1.D0/2.D0*mi(6)*r15 + mi(6)*r15**2*
     &    r25**(-2) - mi(6)*r15**2*r25**(-1) - 1.D0/2.D0*mi(6)*r15**3*
     &    r25**(-2) - mi(8) + 1.D0/2.D0*mi(8)*r15**(-2)*r25 - mi(8)*
     &    r15**(-2)*r25**2 + 1.D0/2.D0*mi(8)*r15**(-2)*r25**3 - mi(8)*
     &    r15**(-1)*r25 + mi(8)*r15**(-1)*r25**2 + 3.D0/2.D0*mi(8)*r25
     &     + mi(8)*r15 )
      e = e  + Nc*s125 * (  - r25**(-1) + 6.D0*i1r15r25 + 2.D0*mi(2)*
     &    r25**(-1) + 3.D0*mi(2)*i1r15r25 - 3.D0*mi(3)*i1r15r25 - 3.D0*
     &    mi(4)*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(12)*r15 + 3.D0/2.D0*mi(12)
     &    *r15*i1r15r25 - 3.D0/2.D0*mi(12)*r15**2*i1r15r25 )

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1)*s125 * ( 8.D0*r15**(-1) + 9.D0*r25**(-1) + mi(1)*
     &    r15**(-2) - mi(1)*r15**(-2)*r25 + mi(1)*r15**(-1)*r25**(-1)
     &     - 4.D0*mi(1)*r15**(-1) - 2.D0*mi(1)*r15**(-1)*ir15r25 - mi(1
     &    )*r25**(-2) - 6.D0*mi(1)*r25**(-1) + mi(1)*r15*r25**(-2) - 1.D
     &    0/2.D0*mi(1)**2*r15**(-2) + 1.D0/2.D0*mi(1)**2*r15**(-2)*r25
     &     + 1.D0/2.D0*mi(1)**2*r15**(-1) + 1.D0/2.D0*mi(1)**2*
     &    r25**(-2) - 1.D0/2.D0*mi(1)**2*r25**(-1) - 1.D0/2.D0*mi(1)**2
     &    *r15*r25**(-2) - mi(2)*r15**(-2) + mi(2)*r15**(-2)*r25 - mi(2
     &    )*r15**(-1)*r25**(-1) + 5.D0*mi(2)*r15**(-1) + 2.D0*mi(2)*
     &    r15**(-1)*ir15r25 + mi(2)*r25**(-2) + 6.D0*mi(2)*r25**(-1) - 
     &    3.D0*mi(2)*i1r25 - mi(2)*r15*r25**(-2) + 1.D0/2.D0*mi(2)**2*
     &    r15**(-2) - 1.D0/2.D0*mi(2)**2*r15**(-2)*r25 - 1.D0/2.D0*mi(2
     &    )**2*r15**(-1) - 1.D0/2.D0*mi(2)**2*r25**(-2) - 1.D0/2.D0*mi(
     &    2)**2*r25**(-1) + 1.D0/2.D0*mi(2)**2*r15*r25**(-2) - mi(3)*
     &    r25**(-2) - 4.D0*mi(3)*r25**(-1) + mi(3)*r15*r25**(-2) + 1.D0/
     &    2.D0*mi(3)**2*r25**(-2) )
      e = e  + Nc**(-1)*s125 * (  - 1.D0/2.D0*mi(3)**2*r25**(-1) - 1.D0/
     &    2.D0*mi(3)**2*r15*r25**(-2) + mi(4)*r15**(-2) - mi(4)*
     &    r15**(-2)*r25 - 6.D0*mi(4)*r15**(-1) - 4.D0*mi(4)*r25**(-1)
     &     + 3.D0*mi(4)*i1r25 - 1.D0/2.D0*mi(4)**2*r15**(-2) + 1.D0/2.D0
     &    *mi(4)**2*r15**(-2)*r25 + 1.D0/2.D0*mi(4)**2*r15**(-1) + mi(4
     &    )**2*r25**(-1) )
      e = e  + Nc**(-1)*s125**3 * (  - 1.D0/2.D0*mi(5)*r15*r25**(-2) + 
     &    mi(5)*r15*r25**(-1) - 1.D0/2.D0*mi(5)*r15 + mi(5)*r15**2*
     &    r25**(-2) - mi(5)*r15**2*r25**(-1) - 1.D0/2.D0*mi(5)*r15**3*
     &    r25**(-2) - 1.D0/2.D0*mi(6)*r15*r25**(-2) + 4.D0*mi(6)*r15*
     &    r25**(-1) - 7.D0/2.D0*mi(6)*r15 + mi(6)*r15**2*r25**(-2) - 4.D
     &    0*mi(6)*r15**2*r25**(-1) - 1.D0/2.D0*mi(6)*r15**3*r25**(-2)
     &     - mi(7) + 1.D0/2.D0*mi(7)*r15**(-2)*r25 - mi(7)*r15**(-2)*
     &    r25**2 + 1.D0/2.D0*mi(7)*r15**(-2)*r25**3 - mi(7)*r15**(-1)*
     &    r25 + mi(7)*r15**(-1)*r25**2 + 3.D0/2.D0*mi(7)*r25 + mi(7)*
     &    r15 + 1.D0/2.D0*mi(8)*r15**(-2)*r25 - mi(8)*r15**(-2)*r25**2
     &     + 1.D0/2.D0*mi(8)*r15**(-2)*r25**3 + mi(8)*r15**(-1)*r25 - 
     &    mi(8)*r15**(-1)*r25**2 - 3.D0/2.D0*mi(8)*r25 )
      e = e  + Nc*s125 * ( 5.D0*r25**(-1) + 8.D0*i1r15r25 - mi(2)*
     &    r25**(-1) + mi(2)*i1r15r25 + 3.D0*mi(2)*i1r25 + mi(2)**2*
     &    r25**(-1) + 3.D0/2.D0*mi(2)**2*i1r15r25 - mi(3)*i1r15r25 - 3.D
     &    0/2.D0*mi(3)**2*i1r15r25 - mi(4)*i1r15r25 - 3.D0*mi(4)*i1r25
     &     - 3.D0/2.D0*mi(4)**2*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(11)*r15 + 3.D0/2.D0*mi(11)
     &    *r15*i1r15r25 - 3.D0/2.D0*mi(11)*r15**2*i1r15r25 - 7.D0/2.D0*
     &    mi(12)*r15 + 7.D0/2.D0*mi(12)*r15*i1r15r25 - 7.D0/2.D0*mi(12)
     &    *r15**2*i1r15r25 )

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + Nc**(-1) * ( 8.D0*r15**(-3)*r25 + 8.D0*r15**(-2) - 4.D0*
     &    mi(1)*r15**(-3)*r25 - 4.D0*mi(1)*r15**(-2) + 4.D0*mi(2)*
     &    r15**(-3)*r25 + 4.D0*mi(2)*r15**(-2) - 4.D0*mi(4)*r15**(-3)*
     &    r25 - 4.D0*mi(4)*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(8)*r15**(-3)*r25**2 - 2.D0*
     &    mi(8)*r15**(-3)*r25**3 + 2.D0*mi(8)*r15**(-2)*r25 - 4.D0*mi(8
     &    )*r15**(-2)*r25**2 - 2.D0*mi(8)*r15**(-1)*r25 )

      gcoeffarr(aa11,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-3)*r25 + 4.D0*r15**(-1)*
     &    r25**(-1) + 2.D0*r15**(-1)*i1r25 + 6.D0*mi(1)*r15**(-3)*r25
     &     - 2.D0*mi(1)*r15**(-1)*r25**(-1) - 2.D0*mi(1)**2*r15**(-3)*
     &    r25 - 2.D0*mi(1)**2*r15**(-2) - 6.D0*mi(2)*r15**(-3)*r25 - 4.D
     &    0*mi(2)*r15**(-2) + 4.D0*mi(2)*r15**(-2)*i1r25 + 2.D0*mi(2)*
     &    r15**(-1)*r25**(-1) + 2.D0*mi(2)*r15**(-1)*i1r25 + 2.D0*mi(2)
     &    *r15**(-1)*i1r25**2 + 2.D0*mi(2)**2*r15**(-3)*r25 + 2.D0*mi(2
     &    )**2*r15**(-2) - 2.D0*mi(3)*r15**(-1)*r25**(-1) + 6.D0*mi(4)*
     &    r15**(-3)*r25 + 8.D0*mi(4)*r15**(-2) - 4.D0*mi(4)*r15**(-2)*
     &    i1r25 - 2.D0*mi(4)*r15**(-1)*i1r25 - 2.D0*mi(4)*r15**(-1)*
     &    i1r25**2 - 2.D0*mi(4)**2*r15**(-3)*r25 - 2.D0*mi(4)**2*
     &    r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * (  - mi(6) + mi(6)*r25**(-1) - mi(6)*
     &    r15*r25**(-1) + 2.D0*mi(7)*r15**(-3)*r25**2 - 2.D0*mi(7)*
     &    r15**(-3)*r25**3 + 2.D0*mi(7)*r15**(-2)*r25 - 4.D0*mi(7)*
     &    r15**(-2)*r25**2 - 2.D0*mi(7)*r15**(-1)*r25 + mi(8)*r15**(-3)
     &    *r25**2 - mi(8)*r15**(-3)*r25**3 + 2.D0*mi(8)*r15**(-2)*r25
     &     - 3.D0*mi(8)*r15**(-2)*r25**2 - 2.D0*mi(8)*r15**(-1)*r25 )
      e = e  + Nc * ( 4.D0*r15**(-1)*i1r15r25 + 4.D0*r15**(-1)*
     &    i1r15r25**2 - 2.D0*r15**(-1)*i1r25 - 4.D0*i1r15r25**2 + 2.D0*
     &    mi(2)*r15**(-1)*i1r15r25 + 2.D0*mi(2)*r15**(-1)*i1r15r25**2
     &     - 2.D0*mi(2)*r15**(-1)*i1r25 - 2.D0*mi(2)*r15**(-1)*i1r25**2
     &     - 2.D0*mi(2)*i1r15r25**2 - 2.D0*mi(3)*r15**(-1)*i1r15r25 - 2.
     &    D0*mi(3)*r15**(-1)*i1r15r25**2 + 2.D0*mi(3)*i1r15r25**2 - 2.D0
     &    *mi(4)*r15**(-1)*i1r15r25 - 2.D0*mi(4)*r15**(-1)*i1r15r25**2
     &     + 2.D0*mi(4)*r15**(-1)*i1r25 + 2.D0*mi(4)*r15**(-1)*i1r25**2
     &     + 2.D0*mi(4)*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - mi(12) + mi(12)*i1r15r25**2 - 2.D0*mi(
     &    12)*r15*i1r15r25**2 + mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(aa11,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + Nc**(-1) * ( 8.D0*r15**(-3)*r25 + 8.D0*r15**(-2) - 4.D0*
     &    mi(1)*r15**(-3)*r25 - 4.D0*mi(1)*r15**(-2) + 4.D0*mi(2)*
     &    r15**(-3)*r25 + 4.D0*mi(2)*r15**(-2) - 4.D0*mi(4)*r15**(-3)*
     &    r25 - 4.D0*mi(4)*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(8)*r15**(-3)*r25**2 - 2.D0*
     &    mi(8)*r15**(-3)*r25**3 + 2.D0*mi(8)*r15**(-2)*r25 - 4.D0*mi(8
     &    )*r15**(-2)*r25**2 - 2.D0*mi(8)*r15**(-1)*r25 )

      gcoeffarr(aa11,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-3)*r25 + 4.D0*r15**(-1)*
     &    r25**(-1) + 2.D0*r15**(-1)*i1r25 + 6.D0*mi(1)*r15**(-3)*r25
     &     - 2.D0*mi(1)*r15**(-1)*r25**(-1) - 2.D0*mi(1)**2*r15**(-3)*
     &    r25 - 2.D0*mi(1)**2*r15**(-2) - 6.D0*mi(2)*r15**(-3)*r25 - 4.D
     &    0*mi(2)*r15**(-2) + 4.D0*mi(2)*r15**(-2)*i1r25 + 2.D0*mi(2)*
     &    r15**(-1)*r25**(-1) + 2.D0*mi(2)*r15**(-1)*i1r25 + 2.D0*mi(2)
     &    *r15**(-1)*i1r25**2 + 2.D0*mi(2)**2*r15**(-3)*r25 + 2.D0*mi(2
     &    )**2*r15**(-2) - 2.D0*mi(3)*r15**(-1)*r25**(-1) + 6.D0*mi(4)*
     &    r15**(-3)*r25 + 8.D0*mi(4)*r15**(-2) - 4.D0*mi(4)*r15**(-2)*
     &    i1r25 - 2.D0*mi(4)*r15**(-1)*i1r25 - 2.D0*mi(4)*r15**(-1)*
     &    i1r25**2 - 2.D0*mi(4)**2*r15**(-3)*r25 - 2.D0*mi(4)**2*
     &    r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * (  - mi(6) + mi(6)*r25**(-1) - mi(6)*
     &    r15*r25**(-1) + 2.D0*mi(7)*r15**(-3)*r25**2 - 2.D0*mi(7)*
     &    r15**(-3)*r25**3 + 2.D0*mi(7)*r15**(-2)*r25 - 4.D0*mi(7)*
     &    r15**(-2)*r25**2 - 2.D0*mi(7)*r15**(-1)*r25 + mi(8)*r15**(-3)
     &    *r25**2 - mi(8)*r15**(-3)*r25**3 + 2.D0*mi(8)*r15**(-2)*r25
     &     - 3.D0*mi(8)*r15**(-2)*r25**2 - 2.D0*mi(8)*r15**(-1)*r25 )
      e = e  + Nc * ( 4.D0*r15**(-1)*i1r15r25 + 4.D0*r15**(-1)*
     &    i1r15r25**2 - 2.D0*r15**(-1)*i1r25 - 4.D0*i1r15r25**2 + 2.D0*
     &    mi(2)*r15**(-1)*i1r15r25 + 2.D0*mi(2)*r15**(-1)*i1r15r25**2
     &     - 2.D0*mi(2)*r15**(-1)*i1r25 - 2.D0*mi(2)*r15**(-1)*i1r25**2
     &     - 2.D0*mi(2)*i1r15r25**2 - 2.D0*mi(3)*r15**(-1)*i1r15r25 - 2.
     &    D0*mi(3)*r15**(-1)*i1r15r25**2 + 2.D0*mi(3)*i1r15r25**2 - 2.D0
     &    *mi(4)*r15**(-1)*i1r15r25 - 2.D0*mi(4)*r15**(-1)*i1r15r25**2
     &     + 2.D0*mi(4)*r15**(-1)*i1r25 + 2.D0*mi(4)*r15**(-1)*i1r25**2
     &     + 2.D0*mi(4)*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - mi(12) + mi(12)*i1r15r25**2 - 2.D0*mi(
     &    12)*r15*i1r15r25**2 + mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(aa11,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-2) + 4.D0*r25**(-2) + 2.D0*mi(
     &    1)*r15**(-2) - 2.D0*mi(1)*r25**(-2) - 2.D0*mi(2)*r15**(-2) + 
     &    2.D0*mi(2)*r25**(-2) - 2.D0*mi(3)*r25**(-2) + 2.D0*mi(4)*
     &    r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(6)*r15*r25**(-2) - mi(6)*r15*
     &    r25**(-1) - mi(6)*r15**2*r25**(-2) - mi(8)*r15**(-2)*r25 + 
     &    mi(8)*r15**(-2)*r25**2 + mi(8)*r15**(-1)*r25 )
      e = e  + Nc * ( 12.D0*i1r15r25**2 + 6.D0*mi(2)*i1r15r25**2 - 6.D0*
     &    mi(3)*i1r15r25**2 - 6.D0*mi(4)*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - 3.D0*mi(12)*r15*i1r15r25 + 3.D0*mi(12)*
     &    r15*i1r15r25**2 - 3.D0*mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(aa12,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-2) - 8.D0*r15**(-1)*r25**(-1)
     &     + 8.D0*r15**(-1)*i1r15r25 - 4.D0*r25**(-2) + 8.D0*r25**(-1)*
     &    i1r15 + 8.D0*i1r15*i1r15r25 + 2.D0*mi(1)*r15**(-1)*r25**(-1)
     &     - 4.D0*mi(1)*r15**(-1)*i1r15r25 + 4.D0*mi(1)*r25**(-2) - 4.D0
     &    *mi(1)*r25**(-1)*i1r15 - 4.D0*mi(1)*i1r15*i1r15r25 + mi(1)**2
     &    *r15**(-2) - mi(1)**2*r25**(-2) - 2.D0*mi(2)*r15**(-1)*
     &    r25**(-1) + 2.D0*mi(2)*r15**(-1)*i1r25 - 4.D0*mi(2)*r25**(-2)
     &     + 6.D0*mi(2)*r25**(-1)*i1r15 - mi(2)**2*r15**(-2) + mi(2)**2
     &    *r25**(-2) + 4.D0*mi(3)*r15**(-1)*r25**(-1) + 4.D0*mi(3)*
     &    r25**(-2) - 6.D0*mi(3)*r25**(-1)*i1r15 - mi(3)**2*r25**(-2)
     &     - 2.D0*mi(4)*r15**(-1)*i1r25 + mi(4)**2*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(5)*r15*r25**(-2) - mi(5)*r15*
     &    r25**(-1) - mi(5)*r15**2*r25**(-2) + 2.D0*mi(6) - 2.D0*mi(6)*
     &    r25**(-1) + 4.D0*mi(6)*r15*r25**(-1) - mi(7)*r15**(-2)*r25 + 
     &    mi(7)*r15**(-2)*r25**2 + mi(7)*r15**(-1)*r25 - 2.D0*mi(8)*
     &    r15**(-2)*r25 + 2.D0*mi(8)*r15**(-2)*r25**2 + 4.D0*mi(8)*
     &    r15**(-1)*r25 )
      e = e  + Nc * (  - 8.D0*r15**(-1)*i1r15r25 + 4.D0*i1r15r25**2 + 2.D
     &    0*mi(2)*r15**(-1)*i1r15r25 - 2.D0*mi(2)*r15**(-1)*i1r25 - 4.D0
     &    *mi(2)*i1r15r25**2 + 6.D0*mi(2)*i1r15*i1r15r25 + 3.D0*mi(2)**
     &    2*i1r15r25**2 + 4.D0*mi(3)*r15**(-1)*i1r15r25 + 4.D0*mi(3)*
     &    i1r15r25**2 - 6.D0*mi(3)*i1r15*i1r15r25 - 3.D0*mi(3)**2*
     &    i1r15r25**2 - 2.D0*mi(4)*r15**(-1)*i1r15r25 + 2.D0*mi(4)*
     &    r15**(-1)*i1r25 + 4.D0*mi(4)*i1r15r25**2 - 3.D0*mi(4)**2*
     &    i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - 3.D0*mi(11)*r15*i1r15r25 + 3.D0*mi(11)*
     &    r15*i1r15r25**2 - 3.D0*mi(11)*r15**2*i1r15r25**2 + 2.D0*mi(12
     &    ) - 2.D0*mi(12)*i1r15r25 - 2.D0*mi(12)*r15*i1r15r25 + 4.D0*
     &    mi(12)*r15*i1r15r25**2 - 4.D0*mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(aa12,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-2) + 4.D0*r25**(-2) + 2.D0*mi(
     &    1)*r15**(-2) - 2.D0*mi(1)*r25**(-2) - 2.D0*mi(2)*r15**(-2) + 
     &    2.D0*mi(2)*r25**(-2) - 2.D0*mi(3)*r25**(-2) + 2.D0*mi(4)*
     &    r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(6)*r15*r25**(-2) - mi(6)*r15*
     &    r25**(-1) - mi(6)*r15**2*r25**(-2) - mi(8)*r15**(-2)*r25 + 
     &    mi(8)*r15**(-2)*r25**2 + mi(8)*r15**(-1)*r25 )
      e = e  + Nc * ( 12.D0*i1r15r25**2 + 6.D0*mi(2)*i1r15r25**2 - 6.D0*
     &    mi(3)*i1r15r25**2 - 6.D0*mi(4)*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - 3.D0*mi(12)*r15*i1r15r25 + 3.D0*mi(12)*
     &    r15*i1r15r25**2 - 3.D0*mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(aa12,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-2) - 8.D0*r15**(-1)*r25**(-1)
     &     + 8.D0*r15**(-1)*i1r15r25 - 4.D0*r25**(-2) + 8.D0*r25**(-1)*
     &    i1r15 + 8.D0*i1r15*i1r15r25 + 2.D0*mi(1)*r15**(-1)*r25**(-1)
     &     - 4.D0*mi(1)*r15**(-1)*i1r15r25 + 4.D0*mi(1)*r25**(-2) - 4.D0
     &    *mi(1)*r25**(-1)*i1r15 - 4.D0*mi(1)*i1r15*i1r15r25 + mi(1)**2
     &    *r15**(-2) - mi(1)**2*r25**(-2) - 2.D0*mi(2)*r15**(-1)*
     &    r25**(-1) + 2.D0*mi(2)*r15**(-1)*i1r25 - 4.D0*mi(2)*r25**(-2)
     &     + 6.D0*mi(2)*r25**(-1)*i1r15 - mi(2)**2*r15**(-2) + mi(2)**2
     &    *r25**(-2) + 4.D0*mi(3)*r15**(-1)*r25**(-1) + 4.D0*mi(3)*
     &    r25**(-2) - 6.D0*mi(3)*r25**(-1)*i1r15 - mi(3)**2*r25**(-2)
     &     - 2.D0*mi(4)*r15**(-1)*i1r25 + mi(4)**2*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(5)*r15*r25**(-2) - mi(5)*r15*
     &    r25**(-1) - mi(5)*r15**2*r25**(-2) + 2.D0*mi(6) - 2.D0*mi(6)*
     &    r25**(-1) + 4.D0*mi(6)*r15*r25**(-1) - mi(7)*r15**(-2)*r25 + 
     &    mi(7)*r15**(-2)*r25**2 + mi(7)*r15**(-1)*r25 - 2.D0*mi(8)*
     &    r15**(-2)*r25 + 2.D0*mi(8)*r15**(-2)*r25**2 + 4.D0*mi(8)*
     &    r15**(-1)*r25 )
      e = e  + Nc * (  - 8.D0*r15**(-1)*i1r15r25 + 4.D0*i1r15r25**2 + 2.D
     &    0*mi(2)*r15**(-1)*i1r15r25 - 2.D0*mi(2)*r15**(-1)*i1r25 - 4.D0
     &    *mi(2)*i1r15r25**2 + 6.D0*mi(2)*i1r15*i1r15r25 + 3.D0*mi(2)**
     &    2*i1r15r25**2 + 4.D0*mi(3)*r15**(-1)*i1r15r25 + 4.D0*mi(3)*
     &    i1r15r25**2 - 6.D0*mi(3)*i1r15*i1r15r25 - 3.D0*mi(3)**2*
     &    i1r15r25**2 - 2.D0*mi(4)*r15**(-1)*i1r15r25 + 2.D0*mi(4)*
     &    r15**(-1)*i1r25 + 4.D0*mi(4)*i1r15r25**2 - 3.D0*mi(4)**2*
     &    i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - 3.D0*mi(11)*r15*i1r15r25 + 3.D0*mi(11)*
     &    r15*i1r15r25**2 - 3.D0*mi(11)*r15**2*i1r15r25**2 + 2.D0*mi(12
     &    ) - 2.D0*mi(12)*i1r15r25 - 2.D0*mi(12)*r15*i1r15r25 + 4.D0*
     &    mi(12)*r15*i1r15r25**2 - 4.D0*mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(aa12,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + Nc**(-1) * (  - 8.D0*r25**(-2) - 8.D0*r15*r25**(-3) + 4.D0
     &    *mi(1)*r25**(-2) + 4.D0*mi(1)*r15*r25**(-3) - 4.D0*mi(2)*
     &    r25**(-2) - 4.D0*mi(2)*r15*r25**(-3) + 4.D0*mi(3)*r25**(-2)
     &     + 4.D0*mi(3)*r15*r25**(-3) )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(6)*r15*r25**(-2) + 2.D0*
     &    mi(6)*r15*r25**(-1) - 2.D0*mi(6)*r15**2*r25**(-3) + 4.D0*mi(6
     &    )*r15**2*r25**(-2) + 2.D0*mi(6)*r15**3*r25**(-3) )

      gcoeffarr(aa22,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-1)*r25**(-1) - 2.D0*r25**(-1)*
     &    i1r15 + 4.D0*r15*r25**(-3) + 2.D0*mi(1)*r15**(-1)*r25**(-1)
     &     - 6.D0*mi(1)*r15*r25**(-3) + 2.D0*mi(1)**2*r25**(-2) + 2.D0*
     &    mi(1)**2*r15*r25**(-3) - 2.D0*mi(2)*r15**(-1)*r25**(-1) + 4.D0
     &    *mi(2)*r25**(-2) - 4.D0*mi(2)*r25**(-2)*i1r15 - 2.D0*mi(2)*
     &    r25**(-1)*i1r15 - 2.D0*mi(2)*r25**(-1)*i1r15**2 + 6.D0*mi(2)*
     &    r15*r25**(-3) - 2.D0*mi(2)**2*r25**(-2) - 2.D0*mi(2)**2*r15*
     &    r25**(-3) - 8.D0*mi(3)*r25**(-2) + 4.D0*mi(3)*r25**(-2)*i1r15
     &     + 2.D0*mi(3)*r25**(-1)*i1r15 + 2.D0*mi(3)*r25**(-1)*i1r15**2
     &     - 6.D0*mi(3)*r15*r25**(-3) + 2.D0*mi(3)**2*r25**(-2) + 2.D0*
     &    mi(3)**2*r15*r25**(-3) + 2.D0*mi(4)*r15**(-1)*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(5)*r15*r25**(-2) + 2.D0*
     &    mi(5)*r15*r25**(-1) - 2.D0*mi(5)*r15**2*r25**(-3) + 4.D0*mi(5
     &    )*r15**2*r25**(-2) + 2.D0*mi(5)*r15**3*r25**(-3) - 2.D0*mi(6)
     &    *r15*r25**(-2) + 2.D0*mi(6)*r15*r25**(-1) - mi(6)*r15**2*
     &    r25**(-3) + 3.D0*mi(6)*r15**2*r25**(-2) + mi(6)*r15**3*
     &    r25**(-3) + mi(8) - mi(8)*r15**(-1) + mi(8)*r15**(-1)*r25 )
      e = e  + Nc * (  - 2.D0*r25**(-1)*i1r15 - 4.D0*r25**(-1)*i1r15**2
     &     + 4.D0*i1r15r25**2 - 4.D0*i1r15*i1r15r25 - 4.D0*i1r15*
     &    i1r15r25**2 - 4.D0*i1r15**2*i1r15r25 + 2.D0*mi(2)*i1r15r25**2
     &     - 2.D0*mi(2)*i1r15*i1r15r25 - 2.D0*mi(2)*i1r15*i1r15r25**2
     &     - 2.D0*mi(2)*i1r15**2*i1r15r25 - 2.D0*mi(3)*i1r15r25**2 + 2.D
     &    0*mi(3)*i1r15*i1r15r25 + 2.D0*mi(3)*i1r15*i1r15r25**2 + 2.D0*
     &    mi(3)*i1r15**2*i1r15r25 + 2.D0*mi(4)*r25**(-1)*i1r15 + 2.D0*
     &    mi(4)*r25**(-1)*i1r15**2 - 2.D0*mi(4)*i1r15r25**2 + 2.D0*mi(4
     &    )*i1r15*i1r15r25 + 2.D0*mi(4)*i1r15*i1r15r25**2 + 2.D0*mi(4)*
     &    i1r15**2*i1r15r25 )
      e = e  + Nc*s125**2 * (  - 2.D0*mi(12)*r15*i1r15r25 - mi(12)*
     &    r15**2*i1r15r25**2 )

      gcoeffarr(aa22,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + Nc**(-1) * (  - 8.D0*r25**(-2) - 8.D0*r15*r25**(-3) + 4.D0
     &    *mi(1)*r25**(-2) + 4.D0*mi(1)*r15*r25**(-3) - 4.D0*mi(2)*
     &    r25**(-2) - 4.D0*mi(2)*r15*r25**(-3) + 4.D0*mi(3)*r25**(-2)
     &     + 4.D0*mi(3)*r15*r25**(-3) )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(6)*r15*r25**(-2) + 2.D0*
     &    mi(6)*r15*r25**(-1) - 2.D0*mi(6)*r15**2*r25**(-3) + 4.D0*mi(6
     &    )*r15**2*r25**(-2) + 2.D0*mi(6)*r15**3*r25**(-3) )

      gcoeffarr(aa22,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-1)*r25**(-1) - 2.D0*r25**(-1)*
     &    i1r15 + 4.D0*r15*r25**(-3) + 2.D0*mi(1)*r15**(-1)*r25**(-1)
     &     - 6.D0*mi(1)*r15*r25**(-3) + 2.D0*mi(1)**2*r25**(-2) + 2.D0*
     &    mi(1)**2*r15*r25**(-3) - 2.D0*mi(2)*r15**(-1)*r25**(-1) + 4.D0
     &    *mi(2)*r25**(-2) - 4.D0*mi(2)*r25**(-2)*i1r15 - 2.D0*mi(2)*
     &    r25**(-1)*i1r15 - 2.D0*mi(2)*r25**(-1)*i1r15**2 + 6.D0*mi(2)*
     &    r15*r25**(-3) - 2.D0*mi(2)**2*r25**(-2) - 2.D0*mi(2)**2*r15*
     &    r25**(-3) - 8.D0*mi(3)*r25**(-2) + 4.D0*mi(3)*r25**(-2)*i1r15
     &     + 2.D0*mi(3)*r25**(-1)*i1r15 + 2.D0*mi(3)*r25**(-1)*i1r15**2
     &     - 6.D0*mi(3)*r15*r25**(-3) + 2.D0*mi(3)**2*r25**(-2) + 2.D0*
     &    mi(3)**2*r15*r25**(-3) + 2.D0*mi(4)*r15**(-1)*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(5)*r15*r25**(-2) + 2.D0*
     &    mi(5)*r15*r25**(-1) - 2.D0*mi(5)*r15**2*r25**(-3) + 4.D0*mi(5
     &    )*r15**2*r25**(-2) + 2.D0*mi(5)*r15**3*r25**(-3) - 2.D0*mi(6)
     &    *r15*r25**(-2) + 2.D0*mi(6)*r15*r25**(-1) - mi(6)*r15**2*
     &    r25**(-3) + 3.D0*mi(6)*r15**2*r25**(-2) + mi(6)*r15**3*
     &    r25**(-3) + mi(8) - mi(8)*r15**(-1) + mi(8)*r15**(-1)*r25 )
      e = e  + Nc * (  - 2.D0*r25**(-1)*i1r15 - 4.D0*r25**(-1)*i1r15**2
     &     + 4.D0*i1r15r25**2 - 4.D0*i1r15*i1r15r25 - 4.D0*i1r15*
     &    i1r15r25**2 - 4.D0*i1r15**2*i1r15r25 + 2.D0*mi(2)*i1r15r25**2
     &     - 2.D0*mi(2)*i1r15*i1r15r25 - 2.D0*mi(2)*i1r15*i1r15r25**2
     &     - 2.D0*mi(2)*i1r15**2*i1r15r25 - 2.D0*mi(3)*i1r15r25**2 + 2.D
     &    0*mi(3)*i1r15*i1r15r25 + 2.D0*mi(3)*i1r15*i1r15r25**2 + 2.D0*
     &    mi(3)*i1r15**2*i1r15r25 + 2.D0*mi(4)*r25**(-1)*i1r15 + 2.D0*
     &    mi(4)*r25**(-1)*i1r15**2 - 2.D0*mi(4)*i1r15r25**2 + 2.D0*mi(4
     &    )*i1r15*i1r15r25 + 2.D0*mi(4)*i1r15*i1r15r25**2 + 2.D0*mi(4)*
     &    i1r15**2*i1r15r25 )
      e = e  + Nc*s125**2 * (  - 2.D0*mi(12)*r15*i1r15r25 - mi(12)*
     &    r15**2*i1r15r25**2 )

      gcoeffarr(aa22,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-2) + 4.D0*r25**(-2) + 2.D0*mi(
     &    1)*r15**(-2) - 2.D0*mi(1)*r25**(-2) - 2.D0*mi(2)*r15**(-2) + 
     &    2.D0*mi(2)*r25**(-2) - 2.D0*mi(3)*r25**(-2) + 2.D0*mi(4)*
     &    r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(6)*r15*r25**(-2) - mi(6)*r15*
     &    r25**(-1) - mi(6)*r15**2*r25**(-2) - mi(8)*r15**(-2)*r25 + 
     &    mi(8)*r15**(-2)*r25**2 + mi(8)*r15**(-1)*r25 )
      e = e  + Nc * (  - 12.D0*i1r15r25**2 - 6.D0*mi(2)*i1r15r25**2 + 6.D
     &    0*mi(3)*i1r15r25**2 + 6.D0*mi(4)*i1r15r25**2 )
      e = e  + Nc*s125**2 * ( 3.D0*mi(12)*r15*i1r15r25 - 3.D0*mi(12)*r15
     &    *i1r15r25**2 + 3.D0*mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(aa21,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1) * ( 4.D0*r15**(-2) + 8.D0*r15**(-1)*r25**(-1) - 8.
     &    D0*r15**(-1)*i1r15r25 + 4.D0*r25**(-2) - 8.D0*r25**(-1)*i1r15
     &     - 8.D0*i1r15*i1r15r25 - 4.D0*mi(1)*r15**(-2) - 2.D0*mi(1)*
     &    r15**(-1)*r25**(-1) + 4.D0*mi(1)*r15**(-1)*i1r15r25 + 4.D0*
     &    mi(1)*r25**(-1)*i1r15 + 4.D0*mi(1)*i1r15*i1r15r25 + mi(1)**2*
     &    r15**(-2) - mi(1)**2*r25**(-2) + 4.D0*mi(2)*r15**(-2) + 2.D0*
     &    mi(2)*r15**(-1)*r25**(-1) - 6.D0*mi(2)*r15**(-1)*i1r25 - 2.D0
     &    *mi(2)*r25**(-1)*i1r15 - mi(2)**2*r15**(-2) + mi(2)**2*
     &    r25**(-2) + 2.D0*mi(3)*r25**(-1)*i1r15 - mi(3)**2*r25**(-2)
     &     - 4.D0*mi(4)*r15**(-2) - 4.D0*mi(4)*r15**(-1)*r25**(-1) + 6.D
     &    0*mi(4)*r15**(-1)*i1r25 + mi(4)**2*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(5)*r15*r25**(-2) - mi(5)*r15*
     &    r25**(-1) - mi(5)*r15**2*r25**(-2) + 2.D0*mi(6)*r15*r25**(-2)
     &     - 4.D0*mi(6)*r15*r25**(-1) - 2.D0*mi(6)*r15**2*r25**(-2) - 
     &    mi(7)*r15**(-2)*r25 + mi(7)*r15**(-2)*r25**2 + mi(7)*
     &    r15**(-1)*r25 - 2.D0*mi(8) + 2.D0*mi(8)*r15**(-1) - 4.D0*mi(8
     &    )*r15**(-1)*r25 )
      e = e  + Nc * ( 8.D0*r25**(-1)*i1r15 - 4.D0*i1r15r25**2 + 8.D0*
     &    i1r15*i1r15r25 - 6.D0*mi(2)*r15**(-1)*i1r15r25 + 6.D0*mi(2)*
     &    r15**(-1)*i1r25 + 4.D0*mi(2)*i1r15r25**2 - 2.D0*mi(2)*i1r15*
     &    i1r15r25 - 3.D0*mi(2)**2*i1r15r25**2 - 4.D0*mi(3)*i1r15r25**2
     &     + 2.D0*mi(3)*i1r15*i1r15r25 + 3.D0*mi(3)**2*i1r15r25**2 + 6.D
     &    0*mi(4)*r15**(-1)*i1r15r25 - 6.D0*mi(4)*r15**(-1)*i1r25 - 4.D0
     &    *mi(4)*r25**(-1)*i1r15 - 4.D0*mi(4)*i1r15r25**2 - 4.D0*mi(4)*
     &    i1r15*i1r15r25 + 3.D0*mi(4)**2*i1r15r25**2 )
      e = e  + Nc*s125**2 * ( 3.D0*mi(11)*r15*i1r15r25 - 3.D0*mi(11)*r15
     &    *i1r15r25**2 + 3.D0*mi(11)*r15**2*i1r15r25**2 + 6.D0*mi(12)*
     &    r15*i1r15r25 - 4.D0*mi(12)*r15*i1r15r25**2 + 4.D0*mi(12)*
     &    r15**2*i1r15r25**2 )

      gcoeffarr(aa21,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-2) + 4.D0*r25**(-2) + 2.D0*mi(
     &    1)*r15**(-2) - 2.D0*mi(1)*r25**(-2) - 2.D0*mi(2)*r15**(-2) + 
     &    2.D0*mi(2)*r25**(-2) - 2.D0*mi(3)*r25**(-2) + 2.D0*mi(4)*
     &    r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(6)*r15*r25**(-2) - mi(6)*r15*
     &    r25**(-1) - mi(6)*r15**2*r25**(-2) - mi(8)*r15**(-2)*r25 + 
     &    mi(8)*r15**(-2)*r25**2 + mi(8)*r15**(-1)*r25 )
      e = e  + Nc * (  - 12.D0*i1r15r25**2 - 6.D0*mi(2)*i1r15r25**2 + 6.D
     &    0*mi(3)*i1r15r25**2 + 6.D0*mi(4)*i1r15r25**2 )
      e = e  + Nc*s125**2 * ( 3.D0*mi(12)*r15*i1r15r25 - 3.D0*mi(12)*r15
     &    *i1r15r25**2 + 3.D0*mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(aa21,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1) * ( 4.D0*r15**(-2) + 8.D0*r15**(-1)*r25**(-1) - 8.
     &    D0*r15**(-1)*i1r15r25 + 4.D0*r25**(-2) - 8.D0*r25**(-1)*i1r15
     &     - 8.D0*i1r15*i1r15r25 - 4.D0*mi(1)*r15**(-2) - 2.D0*mi(1)*
     &    r15**(-1)*r25**(-1) + 4.D0*mi(1)*r15**(-1)*i1r15r25 + 4.D0*
     &    mi(1)*r25**(-1)*i1r15 + 4.D0*mi(1)*i1r15*i1r15r25 + mi(1)**2*
     &    r15**(-2) - mi(1)**2*r25**(-2) + 4.D0*mi(2)*r15**(-2) + 2.D0*
     &    mi(2)*r15**(-1)*r25**(-1) - 6.D0*mi(2)*r15**(-1)*i1r25 - 2.D0
     &    *mi(2)*r25**(-1)*i1r15 - mi(2)**2*r15**(-2) + mi(2)**2*
     &    r25**(-2) + 2.D0*mi(3)*r25**(-1)*i1r15 - mi(3)**2*r25**(-2)
     &     - 4.D0*mi(4)*r15**(-2) - 4.D0*mi(4)*r15**(-1)*r25**(-1) + 6.D
     &    0*mi(4)*r15**(-1)*i1r25 + mi(4)**2*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(5)*r15*r25**(-2) - mi(5)*r15*
     &    r25**(-1) - mi(5)*r15**2*r25**(-2) + 2.D0*mi(6)*r15*r25**(-2)
     &     - 4.D0*mi(6)*r15*r25**(-1) - 2.D0*mi(6)*r15**2*r25**(-2) - 
     &    mi(7)*r15**(-2)*r25 + mi(7)*r15**(-2)*r25**2 + mi(7)*
     &    r15**(-1)*r25 - 2.D0*mi(8) + 2.D0*mi(8)*r15**(-1) - 4.D0*mi(8
     &    )*r15**(-1)*r25 )
      e = e  + Nc * ( 8.D0*r25**(-1)*i1r15 - 4.D0*i1r15r25**2 + 8.D0*
     &    i1r15*i1r15r25 - 6.D0*mi(2)*r15**(-1)*i1r15r25 + 6.D0*mi(2)*
     &    r15**(-1)*i1r25 + 4.D0*mi(2)*i1r15r25**2 - 2.D0*mi(2)*i1r15*
     &    i1r15r25 - 3.D0*mi(2)**2*i1r15r25**2 - 4.D0*mi(3)*i1r15r25**2
     &     + 2.D0*mi(3)*i1r15*i1r15r25 + 3.D0*mi(3)**2*i1r15r25**2 + 6.D
     &    0*mi(4)*r15**(-1)*i1r15r25 - 6.D0*mi(4)*r15**(-1)*i1r25 - 4.D0
     &    *mi(4)*r25**(-1)*i1r15 - 4.D0*mi(4)*i1r15r25**2 - 4.D0*mi(4)*
     &    i1r15*i1r15r25 + 3.D0*mi(4)**2*i1r15r25**2 )
      e = e  + Nc*s125**2 * ( 3.D0*mi(11)*r15*i1r15r25 - 3.D0*mi(11)*r15
     &    *i1r15r25**2 + 3.D0*mi(11)*r15**2*i1r15r25**2 + 6.D0*mi(12)*
     &    r15*i1r15r25 - 4.D0*mi(12)*r15*i1r15r25**2 + 4.D0*mi(12)*
     &    r15**2*i1r15r25**2 )

      gcoeffarr(aa21,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + Nc**(-1) * ( 8.D0*r15**(-3) - 8.D0*r15**(-3)*r25 - 8.D0*
     &    r15**(-2) - 4.D0*mi(1)*r15**(-3) + 4.D0*mi(1)*r15**(-3)*r25
     &     + 4.D0*mi(1)*r15**(-2) + 4.D0*mi(2)*r15**(-3) - 4.D0*mi(2)*
     &    r15**(-3)*r25 - 4.D0*mi(2)*r15**(-2) - 4.D0*mi(4)*r15**(-3)
     &     + 4.D0*mi(4)*r15**(-3)*r25 + 4.D0*mi(4)*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(8)*r15**(-3)*r25 - 4.D0*mi(8
     &    )*r15**(-3)*r25**2 + 2.D0*mi(8)*r15**(-3)*r25**3 - 4.D0*mi(8)
     &    *r15**(-2)*r25 + 4.D0*mi(8)*r15**(-2)*r25**2 + 2.D0*mi(8)*
     &    r15**(-1)*r25 )

      gcoeffarr(aa15,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-3) + 4.D0*r15**(-3)*r25 - 4.D0
     &    *r15**(-2) - 4.D0*r15**(-1)*r25**(-2) - 4.D0*r15**(-1)*
     &    r25**(-1) + 4.D0*r15**(-1)*ir15r25 + 4.D0*r25**(-2) + 6.D0*
     &    mi(1)*r15**(-3) - 6.D0*mi(1)*r15**(-3)*r25 + 2.D0*mi(1)*
     &    r15**(-2) - 4.D0*mi(1)*r15**(-2)*ir15r25 + 2.D0*mi(1)*
     &    r15**(-1)*r25**(-2) + 2.D0*mi(1)*r15**(-1)*r25**(-1) - 4.D0*
     &    mi(1)*r15**(-1)*ir15r25**2 - 2.D0*mi(1)*r25**(-2) - 2.D0*mi(1
     &    )**2*r15**(-3) + 2.D0*mi(1)**2*r15**(-3)*r25 + 2.D0*mi(1)**2*
     &    r15**(-2) - 6.D0*mi(2)*r15**(-3) + 6.D0*mi(2)*r15**(-3)*r25
     &     + 2.D0*mi(2)*r15**(-2) + 4.D0*mi(2)*r15**(-2)*ir15r25 - 2.D0
     &    *mi(2)*r15**(-1)*r25**(-2) - 2.D0*mi(2)*r15**(-1)*r25**(-1)
     &     + 4.D0*mi(2)*r15**(-1)*ir15r25**2 - 2.D0*mi(2)*r15**(-1)*
     &    i1r25 + 2.D0*mi(2)*r25**(-2) + 2.D0*mi(2)**2*r15**(-3) - 2.D0
     &    *mi(2)**2*r15**(-3)*r25 - 2.D0*mi(2)**2*r15**(-2) + 2.D0*mi(3
     &    )*r15**(-1)*r25**(-2) + 2.D0*mi(3)*r15**(-1)*r25**(-1) - 2.D0
     &    *mi(3)*r25**(-2) )
      e = e  + Nc**(-1) * ( 6.D0*mi(4)*r15**(-3) - 6.D0*mi(4)*r15**(-3)*
     &    r25 - 6.D0*mi(4)*r15**(-2) + 2.D0*mi(4)*r15**(-1)*i1r25 - 2.D0
     &    *mi(4)**2*r15**(-3) + 2.D0*mi(4)**2*r15**(-3)*r25 + 2.D0*mi(4
     &    )**2*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(6) - mi(6)*r25**(-2) + 2.D0*mi(6)
     &    *r15*r25**(-2) - mi(6)*r15**2*r25**(-2) + 2.D0*mi(7)*
     &    r15**(-3)*r25 - 4.D0*mi(7)*r15**(-3)*r25**2 + 2.D0*mi(7)*
     &    r15**(-3)*r25**3 - 4.D0*mi(7)*r15**(-2)*r25 + 4.D0*mi(7)*
     &    r15**(-2)*r25**2 + 2.D0*mi(7)*r15**(-1)*r25 + mi(8)*r15**(-3)
     &    *r25 - 2.D0*mi(8)*r15**(-3)*r25**2 + mi(8)*r15**(-3)*r25**3
     &     - 4.D0*mi(8)*r15**(-2)*r25 + 4.D0*mi(8)*r15**(-2)*r25**2 + 3.
     &    D0*mi(8)*r15**(-1)*r25 )
      e = e  + Nc * (  - 4.D0*r15**(-1)*i1r15r25 - 2.D0*mi(2)*r15**(-1)*
     &    i1r15r25 + 2.D0*mi(2)*r15**(-1)*i1r25 + 2.D0*mi(3)*r15**(-1)*
     &    i1r15r25 + 2.D0*mi(4)*r15**(-1)*i1r15r25 - 2.D0*mi(4)*
     &    r15**(-1)*i1r25 )
      e = e  + Nc*s125**2 * ( mi(12) - mi(12)*i1r15r25 + mi(12)*r15*
     &    i1r15r25 )

      gcoeffarr(aa15,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + Nc**(-1) * ( 8.D0*r15**(-3) - 8.D0*r15**(-3)*r25 - 8.D0*
     &    r15**(-2) - 4.D0*mi(1)*r15**(-3) + 4.D0*mi(1)*r15**(-3)*r25
     &     + 4.D0*mi(1)*r15**(-2) + 4.D0*mi(2)*r15**(-3) - 4.D0*mi(2)*
     &    r15**(-3)*r25 - 4.D0*mi(2)*r15**(-2) - 4.D0*mi(4)*r15**(-3)
     &     + 4.D0*mi(4)*r15**(-3)*r25 + 4.D0*mi(4)*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(8)*r15**(-3)*r25 - 4.D0*mi(8
     &    )*r15**(-3)*r25**2 + 2.D0*mi(8)*r15**(-3)*r25**3 - 4.D0*mi(8)
     &    *r15**(-2)*r25 + 4.D0*mi(8)*r15**(-2)*r25**2 + 2.D0*mi(8)*
     &    r15**(-1)*r25 )

      gcoeffarr(aa15,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1) * (  - 4.D0*r15**(-3) + 4.D0*r15**(-3)*r25 - 4.D0
     &    *r15**(-2) - 4.D0*r15**(-1)*r25**(-2) - 4.D0*r15**(-1)*
     &    r25**(-1) + 4.D0*r15**(-1)*ir15r25 + 4.D0*r25**(-2) + 6.D0*
     &    mi(1)*r15**(-3) - 6.D0*mi(1)*r15**(-3)*r25 + 2.D0*mi(1)*
     &    r15**(-2) - 4.D0*mi(1)*r15**(-2)*ir15r25 + 2.D0*mi(1)*
     &    r15**(-1)*r25**(-2) + 2.D0*mi(1)*r15**(-1)*r25**(-1) - 4.D0*
     &    mi(1)*r15**(-1)*ir15r25**2 - 2.D0*mi(1)*r25**(-2) - 2.D0*mi(1
     &    )**2*r15**(-3) + 2.D0*mi(1)**2*r15**(-3)*r25 + 2.D0*mi(1)**2*
     &    r15**(-2) - 6.D0*mi(2)*r15**(-3) + 6.D0*mi(2)*r15**(-3)*r25
     &     + 2.D0*mi(2)*r15**(-2) + 4.D0*mi(2)*r15**(-2)*ir15r25 - 2.D0
     &    *mi(2)*r15**(-1)*r25**(-2) - 2.D0*mi(2)*r15**(-1)*r25**(-1)
     &     + 4.D0*mi(2)*r15**(-1)*ir15r25**2 - 2.D0*mi(2)*r15**(-1)*
     &    i1r25 + 2.D0*mi(2)*r25**(-2) + 2.D0*mi(2)**2*r15**(-3) - 2.D0
     &    *mi(2)**2*r15**(-3)*r25 - 2.D0*mi(2)**2*r15**(-2) + 2.D0*mi(3
     &    )*r15**(-1)*r25**(-2) + 2.D0*mi(3)*r15**(-1)*r25**(-1) - 2.D0
     &    *mi(3)*r25**(-2) )
      e = e  + Nc**(-1) * ( 6.D0*mi(4)*r15**(-3) - 6.D0*mi(4)*r15**(-3)*
     &    r25 - 6.D0*mi(4)*r15**(-2) + 2.D0*mi(4)*r15**(-1)*i1r25 - 2.D0
     &    *mi(4)**2*r15**(-3) + 2.D0*mi(4)**2*r15**(-3)*r25 + 2.D0*mi(4
     &    )**2*r15**(-2) )
      e = e  + Nc**(-1)*s125**2 * ( mi(6) - mi(6)*r25**(-2) + 2.D0*mi(6)
     &    *r15*r25**(-2) - mi(6)*r15**2*r25**(-2) + 2.D0*mi(7)*
     &    r15**(-3)*r25 - 4.D0*mi(7)*r15**(-3)*r25**2 + 2.D0*mi(7)*
     &    r15**(-3)*r25**3 - 4.D0*mi(7)*r15**(-2)*r25 + 4.D0*mi(7)*
     &    r15**(-2)*r25**2 + 2.D0*mi(7)*r15**(-1)*r25 + mi(8)*r15**(-3)
     &    *r25 - 2.D0*mi(8)*r15**(-3)*r25**2 + mi(8)*r15**(-3)*r25**3
     &     - 4.D0*mi(8)*r15**(-2)*r25 + 4.D0*mi(8)*r15**(-2)*r25**2 + 3.
     &    D0*mi(8)*r15**(-1)*r25 )
      e = e  + Nc * (  - 4.D0*r15**(-1)*i1r15r25 - 2.D0*mi(2)*r15**(-1)*
     &    i1r15r25 + 2.D0*mi(2)*r15**(-1)*i1r25 + 2.D0*mi(3)*r15**(-1)*
     &    i1r15r25 + 2.D0*mi(4)*r15**(-1)*i1r15r25 - 2.D0*mi(4)*
     &    r15**(-1)*i1r25 )
      e = e  + Nc*s125**2 * ( mi(12) - mi(12)*i1r15r25 + mi(12)*r15*
     &    i1r15r25 )

      gcoeffarr(aa15,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + Nc**(-1) * (  - 8.D0*r25**(-3) + 8.D0*r25**(-2) + 8.D0*r15
     &    *r25**(-3) + 4.D0*mi(1)*r25**(-3) - 4.D0*mi(1)*r25**(-2) - 4.D
     &    0*mi(1)*r15*r25**(-3) - 4.D0*mi(2)*r25**(-3) + 4.D0*mi(2)*
     &    r25**(-2) + 4.D0*mi(2)*r15*r25**(-3) + 4.D0*mi(3)*r25**(-3)
     &     - 4.D0*mi(3)*r25**(-2) - 4.D0*mi(3)*r15*r25**(-3) )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(6)*r15*r25**(-3) + 4.D0*
     &    mi(6)*r15*r25**(-2) - 2.D0*mi(6)*r15*r25**(-1) + 4.D0*mi(6)*
     &    r15**2*r25**(-3) - 4.D0*mi(6)*r15**2*r25**(-2) - 2.D0*mi(6)*
     &    r15**3*r25**(-3) )

      gcoeffarr(aa25,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1) * ( 4.D0*r15**(-2)*r25**(-1) - 4.D0*r15**(-2) + 4.
     &    D0*r15**(-1)*ir15r25 + 4.D0*r25**(-3) + 4.D0*r25**(-2) - 4.D0
     &    *r15*r25**(-3) - 2.D0*mi(1)*r15**(-2)*r25**(-1) + 2.D0*mi(1)*
     &    r15**(-2) + 4.D0*mi(1)*r15**(-1)*r25**(-2) - 2.D0*mi(1)*
     &    r15**(-1)*r25**(-1) - 4.D0*mi(1)*r15**(-1)*ir15r25**2 - 6.D0*
     &    mi(1)*r25**(-3) - 2.D0*mi(1)*r25**(-2) + 6.D0*mi(1)*r15*
     &    r25**(-3) + 2.D0*mi(1)**2*r25**(-3) - 2.D0*mi(1)**2*r25**(-2)
     &     - 2.D0*mi(1)**2*r15*r25**(-3) + 2.D0*mi(2)*r15**(-2)*
     &    r25**(-1) - 2.D0*mi(2)*r15**(-2) - 4.D0*mi(2)*r15**(-1)*
     &    r25**(-2) + 2.D0*mi(2)*r15**(-1)*r25**(-1) + 4.D0*mi(2)*
     &    r15**(-1)*ir15r25**2 + 6.D0*mi(2)*r25**(-3) - 2.D0*mi(2)*
     &    r25**(-2) + 2.D0*mi(2)*r25**(-1)*i1r15 - 6.D0*mi(2)*r15*
     &    r25**(-3) - 2.D0*mi(2)**2*r25**(-3) + 2.D0*mi(2)**2*r25**(-2)
     &     + 2.D0*mi(2)**2*r15*r25**(-3) - 6.D0*mi(3)*r25**(-3) + 6.D0*
     &    mi(3)*r25**(-2) - 2.D0*mi(3)*r25**(-1)*i1r15 + 6.D0*mi(3)*r15
     &    *r25**(-3) )
      e = e  + Nc**(-1) * ( 2.D0*mi(3)**2*r25**(-3) - 2.D0*mi(3)**2*
     &    r25**(-2) - 2.D0*mi(3)**2*r15*r25**(-3) - 2.D0*mi(4)*
     &    r15**(-2)*r25**(-1) + 2.D0*mi(4)*r15**(-2) - 2.D0*mi(4)*
     &    r15**(-1)*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(5)*r15*r25**(-3) + 4.D0*
     &    mi(5)*r15*r25**(-2) - 2.D0*mi(5)*r15*r25**(-1) + 4.D0*mi(5)*
     &    r15**2*r25**(-3) - 4.D0*mi(5)*r15**2*r25**(-2) - 2.D0*mi(5)*
     &    r15**3*r25**(-3) - mi(6)*r15*r25**(-3) + 4.D0*mi(6)*r15*
     &    r25**(-2) - 3.D0*mi(6)*r15*r25**(-1) + 2.D0*mi(6)*r15**2*
     &    r25**(-3) - 4.D0*mi(6)*r15**2*r25**(-2) - mi(6)*r15**3*
     &    r25**(-3) - mi(8) + mi(8)*r15**(-2) - 2.D0*mi(8)*r15**(-2)*
     &    r25 + mi(8)*r15**(-2)*r25**2 )
      e = e  + Nc * ( 4.D0*r25**(-1)*i1r15 + 4.D0*i1r15*i1r15r25 + 2.D0*
     &    mi(2)*i1r15*i1r15r25 - 2.D0*mi(3)*i1r15*i1r15r25 - 2.D0*mi(4)
     &    *r25**(-1)*i1r15 - 2.D0*mi(4)*i1r15*i1r15r25 )
      e = e  + Nc*s125**2 * ( mi(12)*r15*i1r15r25 )

      gcoeffarr(aa25,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + Nc**(-1) * (  - 8.D0*r25**(-3) + 8.D0*r25**(-2) + 8.D0*r15
     &    *r25**(-3) + 4.D0*mi(1)*r25**(-3) - 4.D0*mi(1)*r25**(-2) - 4.D
     &    0*mi(1)*r15*r25**(-3) - 4.D0*mi(2)*r25**(-3) + 4.D0*mi(2)*
     &    r25**(-2) + 4.D0*mi(2)*r15*r25**(-3) + 4.D0*mi(3)*r25**(-3)
     &     - 4.D0*mi(3)*r25**(-2) - 4.D0*mi(3)*r15*r25**(-3) )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(6)*r15*r25**(-3) + 4.D0*
     &    mi(6)*r15*r25**(-2) - 2.D0*mi(6)*r15*r25**(-1) + 4.D0*mi(6)*
     &    r15**2*r25**(-3) - 4.D0*mi(6)*r15**2*r25**(-2) - 2.D0*mi(6)*
     &    r15**3*r25**(-3) )

      gcoeffarr(aa25,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1) * ( 4.D0*r15**(-2)*r25**(-1) - 4.D0*r15**(-2) + 4.
     &    D0*r15**(-1)*ir15r25 + 4.D0*r25**(-3) + 4.D0*r25**(-2) - 4.D0
     &    *r15*r25**(-3) - 2.D0*mi(1)*r15**(-2)*r25**(-1) + 2.D0*mi(1)*
     &    r15**(-2) + 4.D0*mi(1)*r15**(-1)*r25**(-2) - 2.D0*mi(1)*
     &    r15**(-1)*r25**(-1) - 4.D0*mi(1)*r15**(-1)*ir15r25**2 - 6.D0*
     &    mi(1)*r25**(-3) - 2.D0*mi(1)*r25**(-2) + 6.D0*mi(1)*r15*
     &    r25**(-3) + 2.D0*mi(1)**2*r25**(-3) - 2.D0*mi(1)**2*r25**(-2)
     &     - 2.D0*mi(1)**2*r15*r25**(-3) + 2.D0*mi(2)*r15**(-2)*
     &    r25**(-1) - 2.D0*mi(2)*r15**(-2) - 4.D0*mi(2)*r15**(-1)*
     &    r25**(-2) + 2.D0*mi(2)*r15**(-1)*r25**(-1) + 4.D0*mi(2)*
     &    r15**(-1)*ir15r25**2 + 6.D0*mi(2)*r25**(-3) - 2.D0*mi(2)*
     &    r25**(-2) + 2.D0*mi(2)*r25**(-1)*i1r15 - 6.D0*mi(2)*r15*
     &    r25**(-3) - 2.D0*mi(2)**2*r25**(-3) + 2.D0*mi(2)**2*r25**(-2)
     &     + 2.D0*mi(2)**2*r15*r25**(-3) - 6.D0*mi(3)*r25**(-3) + 6.D0*
     &    mi(3)*r25**(-2) - 2.D0*mi(3)*r25**(-1)*i1r15 + 6.D0*mi(3)*r15
     &    *r25**(-3) )
      e = e  + Nc**(-1) * ( 2.D0*mi(3)**2*r25**(-3) - 2.D0*mi(3)**2*
     &    r25**(-2) - 2.D0*mi(3)**2*r15*r25**(-3) - 2.D0*mi(4)*
     &    r15**(-2)*r25**(-1) + 2.D0*mi(4)*r15**(-2) - 2.D0*mi(4)*
     &    r15**(-1)*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(5)*r15*r25**(-3) + 4.D0*
     &    mi(5)*r15*r25**(-2) - 2.D0*mi(5)*r15*r25**(-1) + 4.D0*mi(5)*
     &    r15**2*r25**(-3) - 4.D0*mi(5)*r15**2*r25**(-2) - 2.D0*mi(5)*
     &    r15**3*r25**(-3) - mi(6)*r15*r25**(-3) + 4.D0*mi(6)*r15*
     &    r25**(-2) - 3.D0*mi(6)*r15*r25**(-1) + 2.D0*mi(6)*r15**2*
     &    r25**(-3) - 4.D0*mi(6)*r15**2*r25**(-2) - mi(6)*r15**3*
     &    r25**(-3) - mi(8) + mi(8)*r15**(-2) - 2.D0*mi(8)*r15**(-2)*
     &    r25 + mi(8)*r15**(-2)*r25**2 )
      e = e  + Nc * ( 4.D0*r25**(-1)*i1r15 + 4.D0*i1r15*i1r15r25 + 2.D0*
     &    mi(2)*i1r15*i1r15r25 - 2.D0*mi(3)*i1r15*i1r15r25 - 2.D0*mi(4)
     &    *r25**(-1)*i1r15 - 2.D0*mi(4)*i1r15*i1r15r25 )
      e = e  + Nc*s125**2 * ( mi(12)*r15*i1r15r25 )

      gcoeffarr(aa25,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  + Nc**(-1) * ( 2.D0*r15**(-1)*r25**(-1) )
      e = e  + Nc * (  - 4.D0*r15**(-1)*r25**(-1) )

      gcoeffarr(bb0,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + Nc**(-1) * ( 2.D0*r15**(-2) + 7.D0*r15**(-1)*r25**(-1) + 2.
     &    D0*r25**(-2) - mi(1)*r15**(-2) - 2.D0*mi(1)*r15**(-1)*
     &    r25**(-1) - mi(1)*r25**(-2) + mi(2)*r15**(-2) + 4.D0*mi(2)*
     &    r15**(-1)*r25**(-1) + mi(2)*r25**(-2) - 2.D0*mi(3)*r15**(-1)*
     &    r25**(-1) - mi(3)*r25**(-2) - mi(4)*r15**(-2) - 2.D0*mi(4)*
     &    r15**(-1)*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * (  - mi(6) + mi(6)*r25**(-1) + 1.D0/2.D
     &    0*mi(6)*r15*r25**(-2) - 3.D0/2.D0*mi(6)*r15*r25**(-1) - 1.D0/
     &    2.D0*mi(6)*r15**2*r25**(-2) - mi(8) + 1.D0/2.D0*mi(8)*
     &    r15**(-2)*r25 - 1.D0/2.D0*mi(8)*r15**(-2)*r25**2 + mi(8)*
     &    r15**(-1) - 3.D0/2.D0*mi(8)*r15**(-1)*r25 )
      e = e  + Nc * ( r15**(-1)*r25**(-1) + 6.D0*i1r15r25**2 - 2.D0*mi(2
     &    )*r15**(-1)*r25**(-1) + 3.D0*mi(2)*i1r15r25**2 - 3.D0*mi(3)*
     &    i1r15r25**2 - 3.D0*mi(4)*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - mi(12) - 3.D0/2.D0*mi(12)*r15*i1r15r25
     &     + 3.D0/2.D0*mi(12)*r15*i1r15r25**2 - 3.D0/2.D0*mi(12)*r15**2
     &    *i1r15r25**2 )

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1) * (  - 2.D0*r15**(-1)*r25**(-1) + 4.D0*r15**(-1)*
     &    i1r15r25 + 4.D0*r25**(-1)*i1r15 + 4.D0*i1r15*i1r15r25 + mi(1)
     &    *r15**(-2) + 3.D0*mi(1)*r15**(-1)*r25**(-1) - 2.D0*mi(1)*
     &    r15**(-1)*i1r15r25 + mi(1)*r25**(-2) - 2.D0*mi(1)*r25**(-1)*
     &    i1r15 - 2.D0*mi(1)*i1r15*i1r15r25 - 1.D0/2.D0*mi(1)**2*
     &    r15**(-2) - mi(1)**2*r15**(-1)*r25**(-1) - 1.D0/2.D0*mi(1)**2
     &    *r25**(-2) - mi(2)*r15**(-2) - 4.D0*mi(2)*r15**(-1)*r25**(-1)
     &     + 3.D0*mi(2)*r15**(-1)*i1r25 - mi(2)*r25**(-2) + 3.D0*mi(2)*
     &    r25**(-1)*i1r15 + 1.D0/2.D0*mi(2)**2*r15**(-2) + 2.D0*mi(2)**
     &    2*r15**(-1)*r25**(-1) + 1.D0/2.D0*mi(2)**2*r25**(-2) + 4.D0*
     &    mi(3)*r15**(-1)*r25**(-1) + mi(3)*r25**(-2) - 3.D0*mi(3)*
     &    r25**(-1)*i1r15 - mi(3)**2*r15**(-1)*r25**(-1) - 1.D0/2.D0*
     &    mi(3)**2*r25**(-2) + mi(4)*r15**(-2) + 4.D0*mi(4)*r15**(-1)*
     &    r25**(-1) - 3.D0*mi(4)*r15**(-1)*i1r25 - 1.D0/2.D0*mi(4)**2*
     &    r15**(-2) - mi(4)**2*r15**(-1)*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * (  - mi(5) + mi(5)*r25**(-1) + 1.D0/2.D
     &    0*mi(5)*r15*r25**(-2) - 3.D0/2.D0*mi(5)*r15*r25**(-1) - 1.D0/
     &    2.D0*mi(5)*r15**2*r25**(-2) + 1.D0/2.D0*mi(6)*r15*r25**(-2)
     &     + 1.D0/2.D0*mi(6)*r15*r25**(-1) - 1.D0/2.D0*mi(6)*r15**2*
     &    r25**(-2) - mi(7) + 1.D0/2.D0*mi(7)*r15**(-2)*r25 - 1.D0/2.D0
     &    *mi(7)*r15**(-2)*r25**2 + mi(7)*r15**(-1) - 3.D0/2.D0*mi(7)*
     &    r15**(-1)*r25 + 1.D0/2.D0*mi(8)*r15**(-2)*r25 - 1.D0/2.D0*mi(
     &    8)*r15**(-2)*r25**2 + 1.D0/2.D0*mi(8)*r15**(-1)*r25 )
      e = e  + Nc * (  - 6.D0*r15**(-1)*r25**(-1) + 4.D0*i1r15r25**2 + 
     &    mi(2)*r15**(-1)*r25**(-1) + 3.D0*mi(2)*r15**(-1)*i1r15r25 - 3.
     &    D0*mi(2)*r15**(-1)*i1r25 - mi(2)*i1r15r25**2 + 3.D0*mi(2)*
     &    i1r15*i1r15r25 - mi(2)**2*r15**(-1)*r25**(-1) + 3.D0/2.D0*mi(
     &    2)**2*i1r15r25**2 + mi(3)*i1r15r25**2 - 3.D0*mi(3)*i1r15*
     &    i1r15r25 - 3.D0/2.D0*mi(3)**2*i1r15r25**2 - 3.D0*mi(4)*
     &    r15**(-1)*i1r15r25 + 3.D0*mi(4)*r15**(-1)*i1r25 + mi(4)*
     &    i1r15r25**2 - 3.D0/2.D0*mi(4)**2*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - mi(11) - 3.D0/2.D0*mi(11)*r15*i1r15r25
     &     + 3.D0/2.D0*mi(11)*r15*i1r15r25**2 - 3.D0/2.D0*mi(11)*r15**2
     &    *i1r15r25**2 - 5.D0/2.D0*mi(12)*r15*i1r15r25 + 5.D0/2.D0*mi(
     &    12)*r15*i1r15r25**2 - 5.D0/2.D0*mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  + Nc**(-1) * ( 2.D0*r15**(-1)*r25**(-1) )
      e = e  + Nc * (  - 4.D0*r15**(-1)*r25**(-1) )

      gcoeffarr(bb0,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + Nc**(-1) * ( 2.D0*r15**(-2) + 7.D0*r15**(-1)*r25**(-1) + 2.
     &    D0*r25**(-2) - mi(1)*r15**(-2) - 2.D0*mi(1)*r15**(-1)*
     &    r25**(-1) - mi(1)*r25**(-2) + mi(2)*r15**(-2) + 4.D0*mi(2)*
     &    r15**(-1)*r25**(-1) + mi(2)*r25**(-2) - 2.D0*mi(3)*r15**(-1)*
     &    r25**(-1) - mi(3)*r25**(-2) - mi(4)*r15**(-2) - 2.D0*mi(4)*
     &    r15**(-1)*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * (  - mi(6) + mi(6)*r25**(-1) + 1.D0/2.D
     &    0*mi(6)*r15*r25**(-2) - 3.D0/2.D0*mi(6)*r15*r25**(-1) - 1.D0/
     &    2.D0*mi(6)*r15**2*r25**(-2) - mi(8) + 1.D0/2.D0*mi(8)*
     &    r15**(-2)*r25 - 1.D0/2.D0*mi(8)*r15**(-2)*r25**2 + mi(8)*
     &    r15**(-1) - 3.D0/2.D0*mi(8)*r15**(-1)*r25 )
      e = e  + Nc * ( r15**(-1)*r25**(-1) + 6.D0*i1r15r25**2 - 2.D0*mi(2
     &    )*r15**(-1)*r25**(-1) + 3.D0*mi(2)*i1r15r25**2 - 3.D0*mi(3)*
     &    i1r15r25**2 - 3.D0*mi(4)*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - mi(12) - 3.D0/2.D0*mi(12)*r15*i1r15r25
     &     + 3.D0/2.D0*mi(12)*r15*i1r15r25**2 - 3.D0/2.D0*mi(12)*r15**2
     &    *i1r15r25**2 )

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1) * (  - 2.D0*r15**(-1)*r25**(-1) + 4.D0*r15**(-1)*
     &    i1r15r25 + 4.D0*r25**(-1)*i1r15 + 4.D0*i1r15*i1r15r25 + mi(1)
     &    *r15**(-2) + 3.D0*mi(1)*r15**(-1)*r25**(-1) - 2.D0*mi(1)*
     &    r15**(-1)*i1r15r25 + mi(1)*r25**(-2) - 2.D0*mi(1)*r25**(-1)*
     &    i1r15 - 2.D0*mi(1)*i1r15*i1r15r25 - 1.D0/2.D0*mi(1)**2*
     &    r15**(-2) - mi(1)**2*r15**(-1)*r25**(-1) - 1.D0/2.D0*mi(1)**2
     &    *r25**(-2) - mi(2)*r15**(-2) - 4.D0*mi(2)*r15**(-1)*r25**(-1)
     &     + 3.D0*mi(2)*r15**(-1)*i1r25 - mi(2)*r25**(-2) + 3.D0*mi(2)*
     &    r25**(-1)*i1r15 + 1.D0/2.D0*mi(2)**2*r15**(-2) + 2.D0*mi(2)**
     &    2*r15**(-1)*r25**(-1) + 1.D0/2.D0*mi(2)**2*r25**(-2) + 4.D0*
     &    mi(3)*r15**(-1)*r25**(-1) + mi(3)*r25**(-2) - 3.D0*mi(3)*
     &    r25**(-1)*i1r15 - mi(3)**2*r15**(-1)*r25**(-1) - 1.D0/2.D0*
     &    mi(3)**2*r25**(-2) + mi(4)*r15**(-2) + 4.D0*mi(4)*r15**(-1)*
     &    r25**(-1) - 3.D0*mi(4)*r15**(-1)*i1r25 - 1.D0/2.D0*mi(4)**2*
     &    r15**(-2) - mi(4)**2*r15**(-1)*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * (  - mi(5) + mi(5)*r25**(-1) + 1.D0/2.D
     &    0*mi(5)*r15*r25**(-2) - 3.D0/2.D0*mi(5)*r15*r25**(-1) - 1.D0/
     &    2.D0*mi(5)*r15**2*r25**(-2) + 1.D0/2.D0*mi(6)*r15*r25**(-2)
     &     + 1.D0/2.D0*mi(6)*r15*r25**(-1) - 1.D0/2.D0*mi(6)*r15**2*
     &    r25**(-2) - mi(7) + 1.D0/2.D0*mi(7)*r15**(-2)*r25 - 1.D0/2.D0
     &    *mi(7)*r15**(-2)*r25**2 + mi(7)*r15**(-1) - 3.D0/2.D0*mi(7)*
     &    r15**(-1)*r25 + 1.D0/2.D0*mi(8)*r15**(-2)*r25 - 1.D0/2.D0*mi(
     &    8)*r15**(-2)*r25**2 + 1.D0/2.D0*mi(8)*r15**(-1)*r25 )
      e = e  + Nc * (  - 6.D0*r15**(-1)*r25**(-1) + 4.D0*i1r15r25**2 + 
     &    mi(2)*r15**(-1)*r25**(-1) + 3.D0*mi(2)*r15**(-1)*i1r15r25 - 3.
     &    D0*mi(2)*r15**(-1)*i1r25 - mi(2)*i1r15r25**2 + 3.D0*mi(2)*
     &    i1r15*i1r15r25 - mi(2)**2*r15**(-1)*r25**(-1) + 3.D0/2.D0*mi(
     &    2)**2*i1r15r25**2 + mi(3)*i1r15r25**2 - 3.D0*mi(3)*i1r15*
     &    i1r15r25 - 3.D0/2.D0*mi(3)**2*i1r15r25**2 - 3.D0*mi(4)*
     &    r15**(-1)*i1r15r25 + 3.D0*mi(4)*r15**(-1)*i1r25 + mi(4)*
     &    i1r15r25**2 - 3.D0/2.D0*mi(4)**2*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - mi(11) - 3.D0/2.D0*mi(11)*r15*i1r15r25
     &     + 3.D0/2.D0*mi(11)*r15*i1r15r25**2 - 3.D0/2.D0*mi(11)*r15**2
     &    *i1r15r25**2 - 5.D0/2.D0*mi(12)*r15*i1r15r25 + 5.D0/2.D0*mi(
     &    12)*r15*i1r15r25**2 - 5.D0/2.D0*mi(12)*r15**2*i1r15r25**2 )

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  + Nc**(-1)*s125 * ( r15**(-1) + r25**(-1) )
      e = e  + Nc*s125 * (  - 2.D0*r15**(-1) - 2.D0*r25**(-1) )

      gcoeffarr(dd0,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + Nc**(-1)*s125 * ( 3.D0/2.D0*r15**(-1) + 3.D0/2.D0*
     &    r25**(-1) + mi(2)*r15**(-1) + mi(2)*r25**(-1) - mi(3)*
     &    r15**(-1) - mi(4)*r25**(-1) )
      e = e  + Nc**(-1)*s125**3 * ( 1.D0/2.D0*mi(6) - 1.D0/2.D0*mi(6)*
     &    r25 - 1.D0/2.D0*mi(6)*r15 + 1.D0/2.D0*mi(8) - 1.D0/2.D0*mi(8)
     &    *r25 - 1.D0/2.D0*mi(8)*r15 )
      e = e  + Nc*s125 * ( 1.D0/2.D0*r15**(-1) + 1.D0/2.D0*r25**(-1) - 6.
     &    D0*i1r15r25 - mi(2)*r15**(-1) - mi(2)*r25**(-1) - 3.D0*mi(2)*
     &    i1r15r25 + 3.D0*mi(3)*i1r15r25 + 3.D0*mi(4)*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(12)*r25 + mi(12)*r15 - 3.D0
     &    /2.D0*mi(12)*r15*i1r15r25 + 3.D0/2.D0*mi(12)*r15**2*i1r15r25
     &     )

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1)*s125 * (  - 17.D0/2.D0*r15**(-1) - 17.D0/2.D0*
     &    r25**(-1) + 5.D0*mi(1)*r15**(-1) + 5.D0*mi(1)*r25**(-1) - 11.D
     &    0/2.D0*mi(2)*r15**(-1) - 11.D0/2.D0*mi(2)*r25**(-1) + 3.D0/2.D
     &    0*mi(2)*i1r25 + 3.D0/2.D0*mi(2)*i1r15 + 1.D0/2.D0*mi(2)**2*
     &    r15**(-1) + 1.D0/2.D0*mi(2)**2*r25**(-1) + 2.D0*mi(3)*
     &    r15**(-1) + 5.D0*mi(3)*r25**(-1) - 3.D0/2.D0*mi(3)*i1r15 - 1.D
     &    0/2.D0*mi(3)**2*r15**(-1) + 5.D0*mi(4)*r15**(-1) + 2.D0*mi(4)
     &    *r25**(-1) - 3.D0/2.D0*mi(4)*i1r25 - 1.D0/2.D0*mi(4)**2*
     &    r25**(-1) )
      e = e  + Nc**(-1)*s125**3 * ( 1.D0/2.D0*mi(5) - 1.D0/2.D0*mi(5)*
     &    r25 - 1.D0/2.D0*mi(5)*r15 - 5.D0/2.D0*mi(6)*r15*r25**(-1) + 5.
     &    D0/2.D0*mi(6)*r15 + 5.D0/2.D0*mi(6)*r15**2*r25**(-1) + 1.D0/2.
     &    D0*mi(7) - 1.D0/2.D0*mi(7)*r25 - 1.D0/2.D0*mi(7)*r15 - 5.D0/2.
     &    D0*mi(8)*r15**(-1)*r25 + 5.D0/2.D0*mi(8)*r15**(-1)*r25**2 + 5.
     &    D0/2.D0*mi(8)*r25 )
      e = e  + Nc*s125 * (  - 5.D0/2.D0*r15**(-1) - 5.D0/2.D0*r25**(-1)
     &     - 8.D0*i1r15r25 + 1.D0/2.D0*mi(2)*r15**(-1) + 1.D0/2.D0*mi(2
     &    )*r25**(-1) - mi(2)*i1r15r25 - 3.D0/2.D0*mi(2)*i1r25 - 3.D0/2.
     &    D0*mi(2)*i1r15 - 1.D0/2.D0*mi(2)**2*r15**(-1) - 1.D0/2.D0*mi(
     &    2)**2*r25**(-1) - 3.D0/2.D0*mi(2)**2*i1r15r25 + mi(3)*
     &    i1r15r25 + 3.D0/2.D0*mi(3)*i1r15 + 3.D0/2.D0*mi(3)**2*
     &    i1r15r25 + mi(4)*i1r15r25 + 3.D0/2.D0*mi(4)*i1r25 + 3.D0/2.D0
     &    *mi(4)**2*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(11)*r25 + mi(11)*r15 - 3.D0
     &    /2.D0*mi(11)*r15*i1r15r25 + 3.D0/2.D0*mi(11)*r15**2*i1r15r25
     &     + 7.D0/2.D0*mi(12)*r15 - 7.D0/2.D0*mi(12)*r15*i1r15r25 + 7.D0
     &    /2.D0*mi(12)*r15**2*i1r15r25 )

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  + Nc**(-1)*s125 * ( r15**(-1) + r25**(-1) )
      e = e  + Nc*s125 * (  - 2.D0*r15**(-1) - 2.D0*r25**(-1) )

      gcoeffarr(dd0,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + Nc**(-1)*s125 * ( 3.D0/2.D0*r15**(-1) + 3.D0/2.D0*
     &    r25**(-1) + mi(2)*r15**(-1) + mi(2)*r25**(-1) - mi(3)*
     &    r15**(-1) - mi(4)*r25**(-1) )
      e = e  + Nc**(-1)*s125**3 * ( 1.D0/2.D0*mi(6) - 1.D0/2.D0*mi(6)*
     &    r25 - 1.D0/2.D0*mi(6)*r15 + 1.D0/2.D0*mi(8) - 1.D0/2.D0*mi(8)
     &    *r25 - 1.D0/2.D0*mi(8)*r15 )
      e = e  + Nc*s125 * ( 1.D0/2.D0*r15**(-1) + 1.D0/2.D0*r25**(-1) - 6.
     &    D0*i1r15r25 - mi(2)*r15**(-1) - mi(2)*r25**(-1) - 3.D0*mi(2)*
     &    i1r15r25 + 3.D0*mi(3)*i1r15r25 + 3.D0*mi(4)*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(12)*r25 + mi(12)*r15 - 3.D0
     &    /2.D0*mi(12)*r15*i1r15r25 + 3.D0/2.D0*mi(12)*r15**2*i1r15r25
     &     )

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1)*s125 * (  - 17.D0/2.D0*r15**(-1) - 17.D0/2.D0*
     &    r25**(-1) + 5.D0*mi(1)*r15**(-1) + 5.D0*mi(1)*r25**(-1) - 11.D
     &    0/2.D0*mi(2)*r15**(-1) - 11.D0/2.D0*mi(2)*r25**(-1) + 3.D0/2.D
     &    0*mi(2)*i1r25 + 3.D0/2.D0*mi(2)*i1r15 + 1.D0/2.D0*mi(2)**2*
     &    r15**(-1) + 1.D0/2.D0*mi(2)**2*r25**(-1) + 2.D0*mi(3)*
     &    r15**(-1) + 5.D0*mi(3)*r25**(-1) - 3.D0/2.D0*mi(3)*i1r15 - 1.D
     &    0/2.D0*mi(3)**2*r15**(-1) + 5.D0*mi(4)*r15**(-1) + 2.D0*mi(4)
     &    *r25**(-1) - 3.D0/2.D0*mi(4)*i1r25 - 1.D0/2.D0*mi(4)**2*
     &    r25**(-1) )
      e = e  + Nc**(-1)*s125**3 * ( 1.D0/2.D0*mi(5) - 1.D0/2.D0*mi(5)*
     &    r25 - 1.D0/2.D0*mi(5)*r15 - 5.D0/2.D0*mi(6)*r15*r25**(-1) + 5.
     &    D0/2.D0*mi(6)*r15 + 5.D0/2.D0*mi(6)*r15**2*r25**(-1) + 1.D0/2.
     &    D0*mi(7) - 1.D0/2.D0*mi(7)*r25 - 1.D0/2.D0*mi(7)*r15 - 5.D0/2.
     &    D0*mi(8)*r15**(-1)*r25 + 5.D0/2.D0*mi(8)*r15**(-1)*r25**2 + 5.
     &    D0/2.D0*mi(8)*r25 )
      e = e  + Nc*s125 * (  - 5.D0/2.D0*r15**(-1) - 5.D0/2.D0*r25**(-1)
     &     - 8.D0*i1r15r25 + 1.D0/2.D0*mi(2)*r15**(-1) + 1.D0/2.D0*mi(2
     &    )*r25**(-1) - mi(2)*i1r15r25 - 3.D0/2.D0*mi(2)*i1r25 - 3.D0/2.
     &    D0*mi(2)*i1r15 - 1.D0/2.D0*mi(2)**2*r15**(-1) - 1.D0/2.D0*mi(
     &    2)**2*r25**(-1) - 3.D0/2.D0*mi(2)**2*i1r15r25 + mi(3)*
     &    i1r15r25 + 3.D0/2.D0*mi(3)*i1r15 + 3.D0/2.D0*mi(3)**2*
     &    i1r15r25 + mi(4)*i1r15r25 + 3.D0/2.D0*mi(4)*i1r25 + 3.D0/2.D0
     &    *mi(4)**2*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(11)*r25 + mi(11)*r15 - 3.D0
     &    /2.D0*mi(11)*r15*i1r15r25 + 3.D0/2.D0*mi(11)*r15**2*i1r15r25
     &     + 7.D0/2.D0*mi(12)*r15 - 7.D0/2.D0*mi(12)*r15*i1r15r25 + 7.D0
     &    /2.D0*mi(12)*r15**2*i1r15r25 )

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee11,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee22,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee15,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ee25,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(ff0,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(gg1,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh1,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh2,hPr1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPl2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(hh5,hPr1,hPr2,hep0,hZsr) = pre * e


      end
