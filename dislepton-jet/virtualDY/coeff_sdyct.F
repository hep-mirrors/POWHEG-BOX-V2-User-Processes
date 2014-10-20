c     qqZg renormalized amplitude: tensor coefficients
c     generated on  Thu Sep 25 20:01:26 2014 by avm

c     UV counter terms for SUSY corrections
c     in decoupling scheme (CT = Born * dZq)

c     subroutine convention:
c     input: mi
c     output: gcoeffarr
c     returns M_B * M_V,
c     where M_B is the Born amplitude and
c     M_V is the finite part of the virtual amplitude
c     A factor (4 Pi)^eps/Gamma[1-eps] with eps=(4-d)/2 is implied.
c
      subroutine computegcoeffsdyct(mi,gcoeffarr)

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

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + s125 * ( 8.D0/3.D0*r25**(-1) )

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + s125 * (  - 4.D0/3.D0*r25**(-1) - 8.D0/3.D0/(rsq1l - rgl)*
     &    r25**(-1)*rgl )
      e = e  + 8.D0/3.D0/(rsq1l - rgl)*mi(18)*r25**(-1) + 8.D0/3.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(17)*r25**(-1)*rgl - 8.D0/3.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*rgl

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + s125 * ( 8.D0/3.D0*r25**(-1) )

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 4.D0/3.D0*r25**(-1) - 8.D0/3.D0/(rsq1r - rgl)*
     &    r25**(-1)*rgl )
      e = e  + 8.D0/3.D0/(rsq1r - rgl)*mi(19)*r25**(-1) + 8.D0/3.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(17)*r25**(-1)*rgl - 8.D0/3.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*rgl

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

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa15,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa25,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

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

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  - 8.D0/3.D0*r15**(-1)*r25**(-1)

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + s125**(-1) * (  - 8.D0/3.D0/(rsq1l - rgl)*mi(18)*r15**(-1)
     &    *r25**(-1) - 8.D0/3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(17)*
     &    r15**(-1)*r25**(-1)*rgl + 8.D0/3.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-1)*r25**(-1)*rgl )
      e = e  + 4.D0/3.D0*r15**(-1)*r25**(-1) + 8.D0/3.D0/(rsq1l - rgl)*
     &    r15**(-1)*r25**(-1)*rgl

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  - 8.D0/3.D0*r15**(-1)*r25**(-1)

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125**(-1) * (  - 8.D0/3.D0/(rsq1r - rgl)*mi(19)*r15**(-1)
     &    *r25**(-1) - 8.D0/3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(17)*
     &    r15**(-1)*r25**(-1)*rgl + 8.D0/3.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-1)*r25**(-1)*rgl )
      e = e  + 4.D0/3.D0*r15**(-1)*r25**(-1) + 8.D0/3.D0/(rsq1r - rgl)*
     &    r15**(-1)*r25**(-1)*rgl

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

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm2,hZsr) = pre * e

      e =  + s125 * (  - 4.D0/3.D0*r15**(-1) - 4.D0/3.D0*r25**(-1) )

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + s125 * ( 2.D0/3.D0*r15**(-1) + 2.D0/3.D0*r25**(-1) + 4.D0/
     &    3.D0/(rsq1l - rgl)*r15**(-1)*rgl + 4.D0/3.D0/(rsq1l - rgl)*
     &    r25**(-1)*rgl )
      e = e  - 4.D0/3.D0/(rsq1l - rgl)*mi(18)*r15**(-1) - 4.D0/3.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-1) - 4.D0/3.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(17)*r15**(-1)*rgl - 4.D0/3.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(17)*r25**(-1)*rgl + 4.D0/3.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-1)*rgl + 4.D0/3.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*rgl

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm2,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm2,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm2,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm2,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZfl) = pre * e

      e =  + s125 * (  - 4.D0/3.D0*r15**(-1) - 4.D0/3.D0*r25**(-1) )

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * ( 2.D0/3.D0*r15**(-1) + 2.D0/3.D0*r25**(-1) + 4.D0/
     &    3.D0/(rsq1r - rgl)*r15**(-1)*rgl + 4.D0/3.D0/(rsq1r - rgl)*
     &    r25**(-1)*rgl )
      e = e  - 4.D0/3.D0/(rsq1r - rgl)*mi(19)*r15**(-1) - 4.D0/3.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-1) - 4.D0/3.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(17)*r15**(-1)*rgl - 4.D0/3.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(17)*r25**(-1)*rgl + 4.D0/3.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-1)*rgl + 4.D0/3.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*rgl

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
