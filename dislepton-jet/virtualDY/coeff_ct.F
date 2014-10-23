c     qqZg amplitude: tensor coefficients
c     generated on  Wed Sep 10 2014 by avm
c
c     counter terms for SM corrections
c     alphas in MS-bar, wave functions in ONS
c     Nf light flavors, no heavy flavors
c     beta0 = 11/3 CA - 4/3 Tf Nf = 11 - 2/3 Nf

c     subroutine convention:
c     input: mi
c     output: gcoeffarr
c     returns M_B * M_V,
c     where M_B is the Born amplitude and
c     M_V is the finite part of the virtual amplitude
c     A factor (4 Pi)^eps/Gamma[1-eps] with eps=(4-d)/2 is implied.
c
      subroutine computegcoeffct(mi,gcoeffarr)

      implicit none
#include "vars.h"
#include "gcoeff.h"
#include "mi.h"
      complex*16 pre, e
      complex*16 w(1000)
      complex*16 beta0

      beta0 = 11.d0 - 2/3.d0 * 5

      pre = 2.D0*1.D0/16.D0*gs**3*gem*pi**(-2)*imagunit*s125**(-2)

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

      e =  + s125*beta0 * ( 1.D0/2.D0*r25**(-1) )

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

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

      e =  + s125*beta0 * ( 1.D0/2.D0*r25**(-1) )

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

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

      e =  + beta0 * (  - 1.D0/2.D0*r15**(-1)*r25**(-1) )

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

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

      e =  + beta0 * (  - 1.D0/2.D0*r15**(-1)*r25**(-1) )

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

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

      e =  + s125*beta0 * (  - 1.D0/4.D0*r15**(-1) - 1.D0/4.D0*
     &    r25**(-1) )

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  0

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

      e =  + s125*beta0 * (  - 1.D0/4.D0*r15**(-1) - 1.D0/4.D0*
     &    r25**(-1) )

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  0

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
