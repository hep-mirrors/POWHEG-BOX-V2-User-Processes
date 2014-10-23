c     qqZg amplitude: tensor coefficients
c
c     heavy Nf contributions (top mass)
c
c     generated on  Mon May 19 11:40:52 2014 by avm
c     (result generated with git revision
c      1444288e8b24048b308eecfa29fe4068f5519021 from 13.12.2013,
c      fermion loop: Larin, external fermions: naive, eps2sign = -1,
c      exported with most recent git version)

c     subroutine convention:
c     input: mi
c     output: gcoeffarr
c     returns M_B * M_V,
c     where M_B is the Born amplitude and
c     M_V is the finite part of the virtual amplitude
c     A factor (4 Pi)^eps/Gamma[1-eps] with eps=(4-d)/2 is implied.
c
      subroutine computegcoeffnfh(mi,gcoeffarr)

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

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + s125 * (  - 2.D0*r25**(-1) + 2.D0*ir15r25 - 2.D0*i1r15r25
     &     - 2.D0*mi(14)*r15**(-1)*r25**(-1) + 2.D0*mi(14)*r15**(-1)*
     &    ir15r25 + 2.D0*mi(14)*r25**(-1) - 2.D0*mi(14)*ir15r25 + 2.D0*
     &    mi(14)*ir15r25**2 + 2.D0*mi(15)*r15**(-1)*r25**(-1) - 2.D0*
     &    mi(15)*r15**(-1)*ir15r25 - 2.D0*mi(15)*r25**(-1) + 2.D0*mi(15
     &    )*ir15r25 - 2.D0*mi(15)*ir15r25**2 )
      e = e  + s125**2 * (  - 4.D0*mi(16)*r25**(-1)*rt + 4.D0*mi(16)*
     &    ir15r25*rt - 4.D0*mi(16)*i1r15r25*rt )

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  + s125 * ( 2.D0*r25**(-1) - 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.
     &    D0*mi(14)*r15**(-1)*r25**(-1) - 2.D0*mi(14)*r15**(-1)*ir15r25
     &     - 2.D0*mi(14)*r25**(-1) + 2.D0*mi(14)*ir15r25 - 2.D0*mi(14)*
     &    ir15r25**2 - 2.D0*mi(15)*r15**(-1)*r25**(-1) + 2.D0*mi(15)*
     &    r15**(-1)*ir15r25 + 2.D0*mi(15)*r25**(-1) - 2.D0*mi(15)*
     &    ir15r25 + 2.D0*mi(15)*ir15r25**2 )
      e = e  + s125**2 * ( 4.D0*mi(16)*r25**(-1)*rt - 4.D0*mi(16)*
     &    ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt )

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

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  + s125 * ( 2.D0*r25**(-1) - 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.
     &    D0*mi(14)*r15**(-1)*r25**(-1) - 2.D0*mi(14)*r15**(-1)*ir15r25
     &     - 2.D0*mi(14)*r25**(-1) + 2.D0*mi(14)*ir15r25 - 2.D0*mi(14)*
     &    ir15r25**2 - 2.D0*mi(15)*r15**(-1)*r25**(-1) + 2.D0*mi(15)*
     &    r15**(-1)*ir15r25 + 2.D0*mi(15)*r25**(-1) - 2.D0*mi(15)*
     &    ir15r25 + 2.D0*mi(15)*ir15r25**2 )
      e = e  + s125**2 * ( 4.D0*mi(16)*r25**(-1)*rt - 4.D0*mi(16)*
     &    ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt )

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 2.D0*r25**(-1) + 2.D0*ir15r25 - 2.D0*i1r15r25
     &     - 2.D0*mi(14)*r15**(-1)*r25**(-1) + 2.D0*mi(14)*r15**(-1)*
     &    ir15r25 + 2.D0*mi(14)*r25**(-1) - 2.D0*mi(14)*ir15r25 + 2.D0*
     &    mi(14)*ir15r25**2 + 2.D0*mi(15)*r15**(-1)*r25**(-1) - 2.D0*
     &    mi(15)*r15**(-1)*ir15r25 - 2.D0*mi(15)*r25**(-1) + 2.D0*mi(15
     &    )*ir15r25 - 2.D0*mi(15)*ir15r25**2 )
      e = e  + s125**2 * (  - 4.D0*mi(16)*r25**(-1)*rt + 4.D0*mi(16)*
     &    ir15r25*rt - 4.D0*mi(16)*i1r15r25*rt )

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

      e =  + s125 * (  - 4.D0*mi(16)*ir15r25*rt - 4.D0*mi(16)*i1r15r25*
     &    rt )
      e = e  - 2.D0*ir15r25 - 2.D0*i1r15r25 - 2.D0*mi(14)*ir15r25**2 + 2.
     &    D0*mi(15)*ir15r25**2

      gcoeffarr(aa11,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  + s125 * ( 4.D0*mi(16)*ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt
     &     )
      e = e  + 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.D0*mi(14)*ir15r25**2 - 2.
     &    D0*mi(15)*ir15r25**2

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

      e =  + s125 * ( 4.D0*mi(16)*ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt
     &     )
      e = e  + 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.D0*mi(14)*ir15r25**2 - 2.
     &    D0*mi(15)*ir15r25**2

      gcoeffarr(aa11,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 4.D0*mi(16)*ir15r25*rt - 4.D0*mi(16)*i1r15r25*
     &    rt )
      e = e  - 2.D0*ir15r25 - 2.D0*i1r15r25 - 2.D0*mi(14)*ir15r25**2 + 2.
     &    D0*mi(15)*ir15r25**2

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

      e =  + s125 * (  - 8.D0*mi(16)*r25**(-1)*i1r15*rt + 12.D0*mi(16)*
     &    ir15r25*rt + 12.D0*mi(16)*i1r15r25*rt - 8.D0*mi(16)*
     &    i1r15r25**2*rt - 8.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  - 4.D0*r25**(-1)*i1r15 + 6.D0*ir15r25 + 6.D0*i1r15r25 - 4.D0
     &    *i1r15r25**2 - 4.D0*i1r15*i1r15r25 - 4.D0*mi(14)*r15**(-1)*
     &    r25**(-1) + 4.D0*mi(14)*r15**(-1)*ir15r25 + 4.D0*mi(14)*
     &    ir15r25 + 6.D0*mi(14)*ir15r25**2 + 4.D0*mi(14)*i1r15r25 + 4.D0
     &    *mi(15)*r15**(-1)*r25**(-1) - 4.D0*mi(15)*r15**(-1)*ir15r25
     &     - 4.D0*mi(15)*ir15r25 - 6.D0*mi(15)*ir15r25**2 - 4.D0*mi(15)
     &    *i1r15r25

      gcoeffarr(aa12,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  + s125 * ( 8.D0*mi(16)*r25**(-1)*i1r15*rt - 12.D0*mi(16)*
     &    ir15r25*rt - 12.D0*mi(16)*i1r15r25*rt + 8.D0*mi(16)*
     &    i1r15r25**2*rt + 8.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  + 4.D0*r25**(-1)*i1r15 - 6.D0*ir15r25 - 6.D0*i1r15r25 + 4.D0
     &    *i1r15r25**2 + 4.D0*i1r15*i1r15r25 + 4.D0*mi(14)*r15**(-1)*
     &    r25**(-1) - 4.D0*mi(14)*r15**(-1)*ir15r25 - 4.D0*mi(14)*
     &    ir15r25 - 6.D0*mi(14)*ir15r25**2 - 4.D0*mi(14)*i1r15r25 - 4.D0
     &    *mi(15)*r15**(-1)*r25**(-1) + 4.D0*mi(15)*r15**(-1)*ir15r25
     &     + 4.D0*mi(15)*ir15r25 + 6.D0*mi(15)*ir15r25**2 + 4.D0*mi(15)
     &    *i1r15r25

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

      e =  + s125 * ( 8.D0*mi(16)*r25**(-1)*i1r15*rt - 12.D0*mi(16)*
     &    ir15r25*rt - 12.D0*mi(16)*i1r15r25*rt + 8.D0*mi(16)*
     &    i1r15r25**2*rt + 8.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  + 4.D0*r25**(-1)*i1r15 - 6.D0*ir15r25 - 6.D0*i1r15r25 + 4.D0
     &    *i1r15r25**2 + 4.D0*i1r15*i1r15r25 + 4.D0*mi(14)*r15**(-1)*
     &    r25**(-1) - 4.D0*mi(14)*r15**(-1)*ir15r25 - 4.D0*mi(14)*
     &    ir15r25 - 6.D0*mi(14)*ir15r25**2 - 4.D0*mi(14)*i1r15r25 - 4.D0
     &    *mi(15)*r15**(-1)*r25**(-1) + 4.D0*mi(15)*r15**(-1)*ir15r25
     &     + 4.D0*mi(15)*ir15r25 + 6.D0*mi(15)*ir15r25**2 + 4.D0*mi(15)
     &    *i1r15r25

      gcoeffarr(aa12,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 8.D0*mi(16)*r25**(-1)*i1r15*rt + 12.D0*mi(16)*
     &    ir15r25*rt + 12.D0*mi(16)*i1r15r25*rt - 8.D0*mi(16)*
     &    i1r15r25**2*rt - 8.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  - 4.D0*r25**(-1)*i1r15 + 6.D0*ir15r25 + 6.D0*i1r15r25 - 4.D0
     &    *i1r15r25**2 - 4.D0*i1r15*i1r15r25 - 4.D0*mi(14)*r15**(-1)*
     &    r25**(-1) + 4.D0*mi(14)*r15**(-1)*ir15r25 + 4.D0*mi(14)*
     &    ir15r25 + 6.D0*mi(14)*ir15r25**2 + 4.D0*mi(14)*i1r15r25 + 4.D0
     &    *mi(15)*r15**(-1)*r25**(-1) - 4.D0*mi(15)*r15**(-1)*ir15r25
     &     - 4.D0*mi(15)*ir15r25 - 6.D0*mi(15)*ir15r25**2 - 4.D0*mi(15)
     &    *i1r15r25

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

      e =  + s125 * ( 4.D0*mi(16)*ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt
     &     )
      e = e  + 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.D0*mi(14)*ir15r25**2 - 2.
     &    D0*mi(15)*ir15r25**2

      gcoeffarr(aa22,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 4.D0*mi(16)*ir15r25*rt - 4.D0*mi(16)*i1r15r25*
     &    rt )
      e = e  - 2.D0*ir15r25 - 2.D0*i1r15r25 - 2.D0*mi(14)*ir15r25**2 + 2.
     &    D0*mi(15)*ir15r25**2

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

      e =  + s125 * (  - 4.D0*mi(16)*ir15r25*rt - 4.D0*mi(16)*i1r15r25*
     &    rt )
      e = e  - 2.D0*ir15r25 - 2.D0*i1r15r25 - 2.D0*mi(14)*ir15r25**2 + 2.
     &    D0*mi(15)*ir15r25**2

      gcoeffarr(aa22,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * ( 4.D0*mi(16)*ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt
     &     )
      e = e  + 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.D0*mi(14)*ir15r25**2 - 2.
     &    D0*mi(15)*ir15r25**2

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

      e =  + s125 * ( 8.D0*mi(16)*r25**(-1)*i1r15*rt - 12.D0*mi(16)*
     &    ir15r25*rt - 12.D0*mi(16)*i1r15r25*rt + 8.D0*mi(16)*
     &    i1r15r25**2*rt + 8.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  + 4.D0*r25**(-1)*i1r15 - 6.D0*ir15r25 - 6.D0*i1r15r25 + 4.D0
     &    *i1r15r25**2 + 4.D0*i1r15*i1r15r25 + 4.D0*mi(14)*r15**(-1)*
     &    r25**(-1) - 4.D0*mi(14)*r15**(-1)*ir15r25 - 4.D0*mi(14)*
     &    ir15r25 - 6.D0*mi(14)*ir15r25**2 - 4.D0*mi(14)*i1r15r25 - 4.D0
     &    *mi(15)*r15**(-1)*r25**(-1) + 4.D0*mi(15)*r15**(-1)*ir15r25
     &     + 4.D0*mi(15)*ir15r25 + 6.D0*mi(15)*ir15r25**2 + 4.D0*mi(15)
     &    *i1r15r25

      gcoeffarr(aa21,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 8.D0*mi(16)*r25**(-1)*i1r15*rt + 12.D0*mi(16)*
     &    ir15r25*rt + 12.D0*mi(16)*i1r15r25*rt - 8.D0*mi(16)*
     &    i1r15r25**2*rt - 8.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  - 4.D0*r25**(-1)*i1r15 + 6.D0*ir15r25 + 6.D0*i1r15r25 - 4.D0
     &    *i1r15r25**2 - 4.D0*i1r15*i1r15r25 - 4.D0*mi(14)*r15**(-1)*
     &    r25**(-1) + 4.D0*mi(14)*r15**(-1)*ir15r25 + 4.D0*mi(14)*
     &    ir15r25 + 6.D0*mi(14)*ir15r25**2 + 4.D0*mi(14)*i1r15r25 + 4.D0
     &    *mi(15)*r15**(-1)*r25**(-1) - 4.D0*mi(15)*r15**(-1)*ir15r25
     &     - 4.D0*mi(15)*ir15r25 - 6.D0*mi(15)*ir15r25**2 - 4.D0*mi(15)
     &    *i1r15r25

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

      e =  + s125 * (  - 8.D0*mi(16)*r25**(-1)*i1r15*rt + 12.D0*mi(16)*
     &    ir15r25*rt + 12.D0*mi(16)*i1r15r25*rt - 8.D0*mi(16)*
     &    i1r15r25**2*rt - 8.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  - 4.D0*r25**(-1)*i1r15 + 6.D0*ir15r25 + 6.D0*i1r15r25 - 4.D0
     &    *i1r15r25**2 - 4.D0*i1r15*i1r15r25 - 4.D0*mi(14)*r15**(-1)*
     &    r25**(-1) + 4.D0*mi(14)*r15**(-1)*ir15r25 + 4.D0*mi(14)*
     &    ir15r25 + 6.D0*mi(14)*ir15r25**2 + 4.D0*mi(14)*i1r15r25 + 4.D0
     &    *mi(15)*r15**(-1)*r25**(-1) - 4.D0*mi(15)*r15**(-1)*ir15r25
     &     - 4.D0*mi(15)*ir15r25 - 6.D0*mi(15)*ir15r25**2 - 4.D0*mi(15)
     &    *i1r15r25

      gcoeffarr(aa21,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * ( 8.D0*mi(16)*r25**(-1)*i1r15*rt - 12.D0*mi(16)*
     &    ir15r25*rt - 12.D0*mi(16)*i1r15r25*rt + 8.D0*mi(16)*
     &    i1r15r25**2*rt + 8.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  + 4.D0*r25**(-1)*i1r15 - 6.D0*ir15r25 - 6.D0*i1r15r25 + 4.D0
     &    *i1r15r25**2 + 4.D0*i1r15*i1r15r25 + 4.D0*mi(14)*r15**(-1)*
     &    r25**(-1) - 4.D0*mi(14)*r15**(-1)*ir15r25 - 4.D0*mi(14)*
     &    ir15r25 - 6.D0*mi(14)*ir15r25**2 - 4.D0*mi(14)*i1r15r25 - 4.D0
     &    *mi(15)*r15**(-1)*r25**(-1) + 4.D0*mi(15)*r15**(-1)*ir15r25
     &     + 4.D0*mi(15)*ir15r25 + 6.D0*mi(15)*ir15r25**2 + 4.D0*mi(15)
     &    *i1r15r25

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

      e =  + s125 * ( 4.D0*mi(16)*ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt
     &     )
      e = e  + 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.D0*mi(14)*ir15r25**2 - 2.
     &    D0*mi(15)*ir15r25**2

      gcoeffarr(aa15,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 4.D0*mi(16)*ir15r25*rt - 4.D0*mi(16)*i1r15r25*
     &    rt )
      e = e  - 2.D0*ir15r25 - 2.D0*i1r15r25 - 2.D0*mi(14)*ir15r25**2 + 2.
     &    D0*mi(15)*ir15r25**2

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

      e =  + s125 * (  - 4.D0*mi(16)*ir15r25*rt - 4.D0*mi(16)*i1r15r25*
     &    rt )
      e = e  - 2.D0*ir15r25 - 2.D0*i1r15r25 - 2.D0*mi(14)*ir15r25**2 + 2.
     &    D0*mi(15)*ir15r25**2

      gcoeffarr(aa15,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * ( 4.D0*mi(16)*ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt
     &     )
      e = e  + 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.D0*mi(14)*ir15r25**2 - 2.
     &    D0*mi(15)*ir15r25**2

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

      e =  + s125 * (  - 4.D0*mi(16)*ir15r25*rt - 4.D0*mi(16)*i1r15r25*
     &    rt )
      e = e  - 2.D0*ir15r25 - 2.D0*i1r15r25 - 2.D0*mi(14)*ir15r25**2 + 2.
     &    D0*mi(15)*ir15r25**2

      gcoeffarr(aa25,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  + s125 * ( 4.D0*mi(16)*ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt
     &     )
      e = e  + 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.D0*mi(14)*ir15r25**2 - 2.
     &    D0*mi(15)*ir15r25**2

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

      e =  + s125 * ( 4.D0*mi(16)*ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt
     &     )
      e = e  + 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.D0*mi(14)*ir15r25**2 - 2.
     &    D0*mi(15)*ir15r25**2

      gcoeffarr(aa25,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 4.D0*mi(16)*ir15r25*rt - 4.D0*mi(16)*i1r15r25*
     &    rt )
      e = e  - 2.D0*ir15r25 - 2.D0*i1r15r25 - 2.D0*mi(14)*ir15r25**2 + 2.
     &    D0*mi(15)*ir15r25**2

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

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + s125 * (  - 4.D0*mi(16)*r25**(-1)*i1r15*rt + 8.D0*mi(16)*
     &    ir15r25*rt + 8.D0*mi(16)*i1r15r25*rt - 4.D0*mi(16)*
     &    i1r15r25**2*rt - 4.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  - 2.D0*r25**(-1)*i1r15 + 4.D0*ir15r25 + 4.D0*i1r15r25 - 2.D0
     &    *i1r15r25**2 - 2.D0*i1r15*i1r15r25 - 2.D0*mi(14)*r15**(-1)*
     &    r25**(-1) + 2.D0*mi(14)*r15**(-1)*ir15r25 + 2.D0*mi(14)*
     &    ir15r25 + 4.D0*mi(14)*ir15r25**2 + 2.D0*mi(14)*i1r15r25 + 2.D0
     &    *mi(15)*r15**(-1)*r25**(-1) - 2.D0*mi(15)*r15**(-1)*ir15r25
     &     - 2.D0*mi(15)*ir15r25 - 4.D0*mi(15)*ir15r25**2 - 2.D0*mi(15)
     &    *i1r15r25

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  + s125 * ( 4.D0*mi(16)*r25**(-1)*i1r15*rt - 8.D0*mi(16)*
     &    ir15r25*rt - 8.D0*mi(16)*i1r15r25*rt + 4.D0*mi(16)*
     &    i1r15r25**2*rt + 4.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  + 2.D0*r25**(-1)*i1r15 - 4.D0*ir15r25 - 4.D0*i1r15r25 + 2.D0
     &    *i1r15r25**2 + 2.D0*i1r15*i1r15r25 + 2.D0*mi(14)*r15**(-1)*
     &    r25**(-1) - 2.D0*mi(14)*r15**(-1)*ir15r25 - 2.D0*mi(14)*
     &    ir15r25 - 4.D0*mi(14)*ir15r25**2 - 2.D0*mi(14)*i1r15r25 - 2.D0
     &    *mi(15)*r15**(-1)*r25**(-1) + 2.D0*mi(15)*r15**(-1)*ir15r25
     &     + 2.D0*mi(15)*ir15r25 + 4.D0*mi(15)*ir15r25**2 + 2.D0*mi(15)
     &    *i1r15r25

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

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  + s125 * ( 4.D0*mi(16)*r25**(-1)*i1r15*rt - 8.D0*mi(16)*
     &    ir15r25*rt - 8.D0*mi(16)*i1r15r25*rt + 4.D0*mi(16)*
     &    i1r15r25**2*rt + 4.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  + 2.D0*r25**(-1)*i1r15 - 4.D0*ir15r25 - 4.D0*i1r15r25 + 2.D0
     &    *i1r15r25**2 + 2.D0*i1r15*i1r15r25 + 2.D0*mi(14)*r15**(-1)*
     &    r25**(-1) - 2.D0*mi(14)*r15**(-1)*ir15r25 - 2.D0*mi(14)*
     &    ir15r25 - 4.D0*mi(14)*ir15r25**2 - 2.D0*mi(14)*i1r15r25 - 2.D0
     &    *mi(15)*r15**(-1)*r25**(-1) + 2.D0*mi(15)*r15**(-1)*ir15r25
     &     + 2.D0*mi(15)*ir15r25 + 4.D0*mi(15)*ir15r25**2 + 2.D0*mi(15)
     &    *i1r15r25

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 4.D0*mi(16)*r25**(-1)*i1r15*rt + 8.D0*mi(16)*
     &    ir15r25*rt + 8.D0*mi(16)*i1r15r25*rt - 4.D0*mi(16)*
     &    i1r15r25**2*rt - 4.D0*mi(16)*i1r15*i1r15r25*rt )
      e = e  - 2.D0*r25**(-1)*i1r15 + 4.D0*ir15r25 + 4.D0*i1r15r25 - 2.D0
     &    *i1r15r25**2 - 2.D0*i1r15*i1r15r25 - 2.D0*mi(14)*r15**(-1)*
     &    r25**(-1) + 2.D0*mi(14)*r15**(-1)*ir15r25 + 2.D0*mi(14)*
     &    ir15r25 + 4.D0*mi(14)*ir15r25**2 + 2.D0*mi(14)*i1r15r25 + 2.D0
     &    *mi(15)*r15**(-1)*r25**(-1) - 2.D0*mi(15)*r15**(-1)*ir15r25
     &     - 2.D0*mi(15)*ir15r25 - 4.D0*mi(15)*ir15r25**2 - 2.D0*mi(15)
     &    *i1r15r25

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

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + s125 * ( 2.D0*r25**(-1) - 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.
     &    D0*mi(14)*r15**(-1)*r25**(-1) - 2.D0*mi(14)*r15**(-1)*ir15r25
     &     - 2.D0*mi(14)*r25**(-1) + 2.D0*mi(14)*ir15r25 - 2.D0*mi(14)*
     &    ir15r25**2 - 2.D0*mi(15)*r15**(-1)*r25**(-1) + 2.D0*mi(15)*
     &    r15**(-1)*ir15r25 + 2.D0*mi(15)*r25**(-1) - 2.D0*mi(15)*
     &    ir15r25 + 2.D0*mi(15)*ir15r25**2 )
      e = e  + s125**2 * ( 4.D0*mi(16)*r25**(-1)*rt - 4.D0*mi(16)*
     &    ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt )

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  + s125 * (  - 2.D0*r25**(-1) + 2.D0*ir15r25 - 2.D0*i1r15r25
     &     - 2.D0*mi(14)*r15**(-1)*r25**(-1) + 2.D0*mi(14)*r15**(-1)*
     &    ir15r25 + 2.D0*mi(14)*r25**(-1) - 2.D0*mi(14)*ir15r25 + 2.D0*
     &    mi(14)*ir15r25**2 + 2.D0*mi(15)*r15**(-1)*r25**(-1) - 2.D0*
     &    mi(15)*r15**(-1)*ir15r25 - 2.D0*mi(15)*r25**(-1) + 2.D0*mi(15
     &    )*ir15r25 - 2.D0*mi(15)*ir15r25**2 )
      e = e  + s125**2 * (  - 4.D0*mi(16)*r25**(-1)*rt + 4.D0*mi(16)*
     &    ir15r25*rt - 4.D0*mi(16)*i1r15r25*rt )

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

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  + s125 * (  - 2.D0*r25**(-1) + 2.D0*ir15r25 - 2.D0*i1r15r25
     &     - 2.D0*mi(14)*r15**(-1)*r25**(-1) + 2.D0*mi(14)*r15**(-1)*
     &    ir15r25 + 2.D0*mi(14)*r25**(-1) - 2.D0*mi(14)*ir15r25 + 2.D0*
     &    mi(14)*ir15r25**2 + 2.D0*mi(15)*r15**(-1)*r25**(-1) - 2.D0*
     &    mi(15)*r15**(-1)*ir15r25 - 2.D0*mi(15)*r25**(-1) + 2.D0*mi(15
     &    )*ir15r25 - 2.D0*mi(15)*ir15r25**2 )
      e = e  + s125**2 * (  - 4.D0*mi(16)*r25**(-1)*rt + 4.D0*mi(16)*
     &    ir15r25*rt - 4.D0*mi(16)*i1r15r25*rt )

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + s125 * ( 2.D0*r25**(-1) - 2.D0*ir15r25 + 2.D0*i1r15r25 + 2.
     &    D0*mi(14)*r15**(-1)*r25**(-1) - 2.D0*mi(14)*r15**(-1)*ir15r25
     &     - 2.D0*mi(14)*r25**(-1) + 2.D0*mi(14)*ir15r25 - 2.D0*mi(14)*
     &    ir15r25**2 - 2.D0*mi(15)*r15**(-1)*r25**(-1) + 2.D0*mi(15)*
     &    r15**(-1)*ir15r25 + 2.D0*mi(15)*r25**(-1) - 2.D0*mi(15)*
     &    ir15r25 + 2.D0*mi(15)*ir15r25**2 )
      e = e  + s125**2 * ( 4.D0*mi(16)*r25**(-1)*rt - 4.D0*mi(16)*
     &    ir15r25*rt + 4.D0*mi(16)*i1r15r25*rt )

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
