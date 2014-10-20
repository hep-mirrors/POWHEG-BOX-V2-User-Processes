c     qqZg renormalized amplitude: tensor coefficients
c     generated on  Wed Sep 24 23:17:04 2014 by avm

c     bare SUSY corrections without closed squark loop

c     subroutine convention:
c     input: mi
c     output: gcoeffarr
c     returns M_B * M_V,
c     where M_B is the Born amplitude and
c     M_V is the finite part of the virtual amplitude
c     A factor (4 Pi)^eps/Gamma[1-eps] with eps=(4-d)/2 is implied.
c
      subroutine computegcoeffsdyb(mi,gcoeffarr)

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

      e =  + Nc**(-1)*s125 * ( r25**(-1) )
      e = e  + Nc*s125 * (  - r25**(-1) )

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1) * ( 2.D0*mi(17)*r25**(-2) + 1.D0/2.D0*mi(18)*
     &    r15**(-1)*rsq1l**(-1) - 1.D0/2.D0*mi(18)*r15**(-1)*i1r15r25*
     &    rsq1l**(-1) + mi(18)*r15**(-1)*i1r15r25*rgl*rsq1l**(-1) - 2.D0
     &    *mi(18)*r25**(-2) - mi(18)*r25**(-2)*rgl*rsq1l**(-1) + mi(18)
     &    *r25**(-2)*i1r15*rgl*rsq1l**(-1) + 1.D0/2.D0*mi(18)*r25**(-1)
     &    *rsq1l**(-1) - 1.D0/2.D0*mi(18)*r25**(-1)*i1r15*rsq1l**(-1)
     &     + mi(18)*r25**(-1)*i1r15*rgl*rsq1l**(-1) + mi(18)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l**(-1) - 1.D0/2.D0*mi(18)*i1r15*i1r15r25*
     &    rsq1l**(-1) + mi(18)*i1r15*i1r15r25*rgl*rsq1l**(-1) + mi(18)*
     &    i1r15**2*i1r15r25*rgl*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)*
     &    mi(18)*r15**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*rgl*
     &    rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25 - 1/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl + 2.D
     &    0/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl**2*rsq1l**(-1)
     &     + 1/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl - 2.D0/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1) * (  - 1/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*
     &    rgl + 2.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**2*
     &    rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)*mi(18)*r25**(-1) + 2.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-1)*rgl*rsq1l**(-1) + 1.D0/2.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15 - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15*rgl + 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**2*rgl + 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25 - 1/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl + 2.D0/(
     &    rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl**2*rsq1l**(-1) - 1/(
     &    rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl + 2.D0/(rsq1l - rgl
     &    )*mi(18)*i1r15**2*i1r15r25*rgl**2*rsq1l**(-1) - 3.D0/2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*rgl + 3.D0/2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1) * (  - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r15**(-1)*i1r15r25*rgl + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl**2*rsq1l**(-1) - 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl**2
     &     + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25*
     &    rgl**3*rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*rgl**3*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15*rgl**2 + 1/(rsq1l - rgl)/(rsq1l - rgl)
     &    *mi(18)*r25**(-2)*i1r15*rgl**3*rsq1l**(-1) - 3.D0/2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*rgl + 3.D0/2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*rgl**2*rsq1l**(-1) - 1.
     &    D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*
     &    rgl + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-1)*i1r15*rgl**2 )
      e = e  + Nc**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15*rgl**3*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2 + 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**3*rsq1l**(-1) - 1.
     &    D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl
     &     + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15*i1r15r25*rgl**2 + 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15*i1r15r25*rgl**3*rsq1l**(-1) - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2 + 1/(rsq1l - rgl
     &    )/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125 * ( r25**(-1) + 2.D0*mi(26)*r25**(-2)*rsq1l
     &     - 2.D0*mi(26)*r25**(-2)*rgl )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(36)*r25**(-1)*rsq1l )
      e = e  + Nc * (  - 2.D0*mi(17)*r25**(-2) + 2.D0*mi(18)*r25**(-2) )
      e = e  + Nc*s125 * ( r25**(-1) - 2.D0*mi(26)*r25**(-2)*rsq1l + 2.D0
     &    *mi(26)*r25**(-2)*rgl )
      e = e  + Nc*s125**2 * ( 2.D0*mi(34)*r25**(-1)*rgl )

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  + Nc**(-1) * (  - mi(17)*r25**(-1) - mi(17)*i1r25 + 1.D0/4.D0
     &    *mi(18)*r15**(-2)*rsq1l**(-1) - mi(18)*r15**(-2)*rgl*
     &    rsq1l**(-1) - 1.D0/4.D0*mi(18)*r15**(-2)*i1r15r25*rsq1l**(-1)
     &     + mi(18)*r15**(-2)*i1r15r25*rgl*rsq1l**(-1) + 3.D0/4.D0*mi(
     &    18)*r15**(-2)*r25*rsq1l**(-1) + 3.D0/4.D0*mi(18)*r15**(-1)*
     &    rsq1l**(-1) - 1.D0/4.D0*mi(18)*r25**(-2)*rsq1l**(-1) + mi(18)
     &    *r25**(-2)*rgl*rsq1l**(-1) + 1.D0/4.D0*mi(18)*r25**(-2)*i1r15
     &    *rsq1l**(-1) - mi(18)*r25**(-2)*i1r15*rgl*rsq1l**(-1) - 3.D0/
     &    4.D0*mi(18)*r25**(-1)*rsq1l**(-1) + mi(18)*r25**(-1) + 1.D0/4.
     &    D0*mi(18)*r25**(-1)*i1r15**2*rsq1l**(-1) - mi(18)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l**(-1) + mi(18)*i1r25 + 1.D0/4.D0*mi(18)*
     &    i1r15**2*i1r15r25*rsq1l**(-1) - mi(18)*i1r15**2*i1r15r25*rgl*
     &    rsq1l**(-1) - 3.D0/4.D0*mi(18)*r15*r25**(-2)*rsq1l**(-1) - 1.D
     &    0/4.D0/(rsq1l - rgl)*mi(18)*r15**(-2) + 1/(rsq1l - rgl)*mi(18
     &    )*r15**(-2)*rgl - 3.D0/2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1) * ( 1.D0/4.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25 - 1/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl + 3.D
     &    0/2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2*
     &    rsq1l**(-1) - 3.D0/4.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*r25 + 
     &    3.D0/2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*r25*rgl*rsq1l**(-1)
     &     - 3.D0/4.D0/(rsq1l - rgl)*mi(18)*r15**(-1) + 3.D0/2.D0/(
     &    rsq1l - rgl)*mi(18)*r15**(-1)*rgl*rsq1l**(-1) + 1.D0/4.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-2) - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*rgl + 3.D0/2.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    rgl**2*rsq1l**(-1) - 1.D0/4.D0/(rsq1l - rgl)*mi(18)*r25**(-2)
     &    *i1r15 + 1/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl - 3.D0/2.D
     &    0/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**2*rsq1l**(-1) + 3.
     &    D0/4.D0/(rsq1l - rgl)*mi(18)*r25**(-1) - 3.D0/2.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*rgl*rsq1l**(-1) - 1.D0/4.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**2 + 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1) * (  - 3.D0/2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**2*rgl**2*rsq1l**(-1) - 1.D0/4.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25 + 1/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*
     &    rgl - 3.D0/2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2
     &    *rsq1l**(-1) + 3.D0/4.D0/(rsq1l - rgl)*mi(18)*r15*r25**(-2)
     &     - 3.D0/2.D0/(rsq1l - rgl)*mi(18)*r15*r25**(-2)*rgl*
     &    rsq1l**(-1) + 1.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*rgl - 1.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*rgl**2 - 1.D0/2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-2)*rgl**3*rsq1l**(-1) - 1.D0/4.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl + 
     &    1.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25*rgl**2*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2 + 1.D0/2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**3*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1) * (  - 3.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r15**(-2)*r25*rgl + 3.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)
     &    *mi(18)*r15**(-2)*r25*rgl**2*rsq1l**(-1) - 3.D0/4.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*rgl + 3.D0/4.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*rgl**2*rsq1l**(-1) - 1.
     &    D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl + 1.D
     &    0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl**2*
     &    rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*rgl**2 + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*rgl**3*rsq1l**(-1) + 1.D0/4.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl - 1.D0/4.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**2*rsq1l**(-1)
     &     + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15*rgl**2 - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl**3*rsq1l**(-1) + 3.D0/4.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*r25**(-1)*rgl )
      e = e  + Nc**(-1) * (  - 3.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-1)*rgl**2*rsq1l**(-1) + 1.D0/4.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl - 1.D0/4.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2*
     &    rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl**2 - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**3*rsq1l**(-1) + 1.D0/4.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl - 1.
     &    D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*
     &    rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**2*i1r15r25*rgl**2 - 1.D0/2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**3*rsq1l**(-1) + 3.D
     &    0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15*r25**(-2)*rgl
     &     - 3.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15*r25**(-2)
     &    *rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125 * ( r25**(-1) + mi(20)*r15**(-1)*r25**(-1)
     &     - 2.D0*mi(20)*r15**(-1)*ir15r25 + mi(20)*r15**(-1)*i1r25*
     &    rsq1l - mi(20)*r15**(-1)*i1r25*rgl + mi(20)*r25**(-1) - 2.D0*
     &    mi(20)*r25**(-1)*rsq1l + 2.D0*mi(20)*r25**(-1)*rgl - mi(20)*
     &    r25**(-1)*i1r15*rsq1l + mi(20)*r25**(-1)*i1r15*rgl + mi(20)*
     &    i1r25 - 2.D0*mi(20)*i1r25*rsq1l + 2.D0*mi(20)*i1r25*rgl - 2.D0
     &    *mi(20)*i1r25**2*rsq1l + 2.D0*mi(20)*i1r25**2*rgl - mi(22)*
     &    r15**(-1)*r25**(-1) - mi(22)*r15**(-1) + 2.D0*mi(22)*
     &    r15**(-1)*ir15r25 + mi(22)*r25**(-1) - mi(24)*r25**(-1) + mi(
     &    24)*r25**(-1)*i1r15*rsq1l - mi(24)*r25**(-1)*i1r15*rgl + mi(
     &    26)*r15**(-1) - mi(26)*r15**(-1)*i1r25*rsq1l + mi(26)*
     &    r15**(-1)*i1r25*rgl + mi(26)*r25**(-1)*rsq1l - mi(26)*
     &    r25**(-1)*rgl - mi(26)*i1r25 + mi(26)*i1r25*rsq1l - mi(26)*
     &    i1r25*rgl + 2.D0*mi(26)*i1r25**2*rsq1l - 2.D0*mi(26)*i1r25**2
     &    *rgl )
      e = e  + Nc**(-1)*s125**2 * ( 1.D0/2.D0*mi(28)*r15**(-2) - mi(28)*
     &    r15**(-2)*rsq1l + mi(28)*r15**(-2)*rgl - mi(28)*r15**(-2)*r25
     &     + mi(28)*r15**(-2)*r25*rsq1l - mi(28)*r15**(-2)*r25*rgl + 1.D
     &    0/2.D0*mi(28)*r15**(-2)*r25**2 - mi(28)*r15**(-1) + mi(28)*
     &    r15**(-1)*rsq1l - mi(28)*r15**(-1)*rgl + mi(28)*r15**(-1)*r25
     &     - 1.D0/2.D0*mi(28)*r25**(-2) + mi(28)*r25**(-2)*rsq1l - mi(
     &    28)*r25**(-2)*rgl + mi(28)*r25**(-1) - mi(28)*r25**(-1)*rsq1l
     &     + mi(28)*r25**(-1)*rgl + mi(28)*r15*r25**(-2) - mi(28)*r15*
     &    r25**(-2)*rsq1l + mi(28)*r15*r25**(-2)*rgl - mi(28)*r15*
     &    r25**(-1) - 1.D0/2.D0*mi(28)*r15**2*r25**(-2) + 1.D0/2.D0*mi(
     &    32)*r15**(-1)*i1r15r25*rsq1l**2 - mi(32)*r15**(-1)*i1r15r25*
     &    rgl*rsq1l + 1.D0/2.D0*mi(32)*r15**(-1)*i1r15r25*rgl**2 + 1.D0/
     &    2.D0*mi(32)*r25**(-2)*rsq1l**2 - mi(32)*r25**(-2)*rgl*rsq1l
     &     + 1.D0/2.D0*mi(32)*r25**(-2)*rgl**2 - 1.D0/2.D0*mi(32)*
     &    r25**(-2)*i1r15*rsq1l**2 + mi(32)*r25**(-2)*i1r15*rgl*rsq1l
     &     - 1.D0/2.D0*mi(32)*r25**(-2)*i1r15*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - mi(32)*r25**(-1)*rsq1l + 1.D0/2.D0
     &    *mi(32)*r25**(-1)*i1r15*rsq1l**2 - mi(32)*r25**(-1)*i1r15*rgl
     &    *rsq1l + 1.D0/2.D0*mi(32)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*
     &    mi(32)*r25**(-1)*i1r15**2*rsq1l**2 + mi(32)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l - 1.D0/2.D0*mi(32)*r25**(-1)*i1r15**2*
     &    rgl**2 + 1.D0/2.D0*mi(32)*i1r15*i1r15r25*rsq1l**2 - mi(32)*
     &    i1r15*i1r15r25*rgl*rsq1l + 1.D0/2.D0*mi(32)*i1r15*i1r15r25*
     &    rgl**2 - 1.D0/2.D0*mi(32)*i1r15**2*i1r15r25*rsq1l**2 + mi(32)
     &    *i1r15**2*i1r15r25*rgl*rsq1l - 1.D0/2.D0*mi(32)*i1r15**2*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(32)*r15*r25**(-2) + mi(32)*r15
     &    *r25**(-2)*rsq1l - mi(32)*r15*r25**(-2)*rgl + 1.D0/2.D0*mi(32
     &    )*r15*r25**(-1) + 1.D0/2.D0*mi(32)*r15**2*r25**(-2) - 1.D0/2.D
     &    0*mi(36)*r15**(-2)*rsq1l**2 + mi(36)*r15**(-2)*rgl*rsq1l - 1.D
     &    0/2.D0*mi(36)*r15**(-2)*rgl**2 + 1.D0/2.D0*mi(36)*r15**(-2)*
     &    i1r15r25*rsq1l**2 - mi(36)*r15**(-2)*i1r15r25*rgl*rsq1l + 1.D0
     &    /2.D0*mi(36)*r15**(-2)*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( 1.D0/2.D0*mi(36)*r15**(-2)*r25 - mi(
     &    36)*r15**(-2)*r25*rsq1l + mi(36)*r15**(-2)*r25*rgl - 1.D0/2.D0
     &    *mi(36)*r15**(-2)*r25**2 + mi(36)*r15**(-1)*rsq1l - 1.D0/2.D0
     &    *mi(36)*r15**(-1)*i1r15r25*rsq1l**2 + mi(36)*r15**(-1)*
     &    i1r15r25*rgl*rsq1l - 1.D0/2.D0*mi(36)*r15**(-1)*i1r15r25*
     &    rgl**2 - 1.D0/2.D0*mi(36)*r15**(-1)*r25 - 1.D0/2.D0*mi(36)*
     &    r25**(-1)*i1r15*rsq1l**2 + mi(36)*r25**(-1)*i1r15*rgl*rsq1l
     &     - 1.D0/2.D0*mi(36)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*mi(36)
     &    *i1r15*i1r15r25*rsq1l**2 + mi(36)*i1r15*i1r15r25*rgl*rsq1l - 
     &    1.D0/2.D0*mi(36)*i1r15*i1r15r25*rgl**2 + mi(38)*r15**(-2)*
     &    rsq1l**2 - 2.D0*mi(38)*r15**(-2)*rgl*rsq1l + mi(38)*r15**(-2)
     &    *rgl**2 - mi(38)*r15**(-2)*i1r15r25*rsq1l**2 + 2.D0*mi(38)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l - mi(38)*r15**(-2)*i1r15r25*
     &    rgl**2 - 1.D0/2.D0*mi(38)*r15**(-2)*r25 + mi(38)*r15**(-2)*
     &    r25*rsq1l - mi(38)*r15**(-2)*r25*rgl + 1.D0/2.D0*mi(38)*
     &    r15**(-2)*r25**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 1.D0/2.D0*mi(38)*r15**(-1) - mi(
     &    38)*r15**(-1)*rsq1l - mi(38)*r15**(-1)*rgl + mi(38)*r15**(-1)
     &    *r25 - mi(38)*r25**(-2)*rsq1l**2 + 2.D0*mi(38)*r25**(-2)*rgl*
     &    rsq1l - mi(38)*r25**(-2)*rgl**2 + mi(38)*r25**(-2)*i1r15*
     &    rsq1l**2 - 2.D0*mi(38)*r25**(-2)*i1r15*rgl*rsq1l + mi(38)*
     &    r25**(-2)*i1r15*rgl**2 + 1.D0/2.D0*mi(38)*r25**(-1) + mi(38)*
     &    r25**(-1)*rsq1l + mi(38)*r25**(-1)*rgl + mi(38)*r25**(-1)*
     &    i1r15**2*rsq1l**2 - 2.D0*mi(38)*r25**(-1)*i1r15**2*rgl*rsq1l
     &     + mi(38)*r25**(-1)*i1r15**2*rgl**2 + mi(38)*i1r15**2*
     &    i1r15r25*rsq1l**2 - 2.D0*mi(38)*i1r15**2*i1r15r25*rgl*rsq1l
     &     + mi(38)*i1r15**2*i1r15r25*rgl**2 + 1.D0/2.D0*mi(38)*r15*
     &    r25**(-2) - mi(38)*r15*r25**(-2)*rsq1l + mi(38)*r15*r25**(-2)
     &    *rgl - mi(38)*r15*r25**(-1) - 1.D0/2.D0*mi(38)*r15**2*
     &    r25**(-2) + 1.D0/2.D0*mi(40)*r15**(-2)*i1r15r25*rsq1l**2 - 
     &    mi(40)*r15**(-2)*i1r15r25*rgl*rsq1l + 1.D0/2.D0*mi(40)*
     &    r15**(-2)*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( mi(40)*r15**(-1)*r25**(-1)*rsq1l - 1.
     &    D0/2.D0*mi(40)*r15**(-1)*i1r15r25*rsq1l**2 + mi(40)*r15**(-1)
     &    *i1r15r25*rgl*rsq1l - 1.D0/2.D0*mi(40)*r15**(-1)*i1r15r25*
     &    rgl**2 + 1.D0/2.D0*mi(40)*r25**(-2) - mi(40)*r25**(-2)*rsq1l
     &     + 1.D0/2.D0*mi(40)*r25**(-2)*rsq1l**2 + mi(40)*r25**(-2)*rgl
     &     - mi(40)*r25**(-2)*rgl*rsq1l + 1.D0/2.D0*mi(40)*r25**(-2)*
     &    rgl**2 - 1.D0/2.D0*mi(40)*r25**(-1) - mi(40)*r25**(-1)*rsq1l
     &     + 1.D0/2.D0*mi(40)*r25**(-1)*i1r15*rsq1l**2 - mi(40)*
     &    r25**(-1)*i1r15*rgl*rsq1l + 1.D0/2.D0*mi(40)*r25**(-1)*i1r15*
     &    rgl**2 - 1.D0/2.D0*mi(40)*i1r15*i1r15r25*rsq1l**2 + mi(40)*
     &    i1r15*i1r15r25*rgl*rsq1l - 1.D0/2.D0*mi(40)*i1r15*i1r15r25*
     &    rgl**2 - mi(40)*r15*r25**(-2) + mi(40)*r15*r25**(-2)*rsq1l - 
     &    mi(40)*r15*r25**(-2)*rgl + 1.D0/2.D0*mi(40)*r15*r25**(-1) + 1.
     &    D0/2.D0*mi(40)*r15**2*r25**(-2) - 1.D0/2.D0*mi(42)*r15**(-2)
     &     + mi(42)*r15**(-2)*rsq1l - 1.D0/2.D0*mi(42)*r15**(-2)*
     &    rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * (  - mi(42)*r15**(-2)*rgl + mi(42)*
     &    r15**(-2)*rgl*rsq1l - 1.D0/2.D0*mi(42)*r15**(-2)*rgl**2 + mi(
     &    42)*r15**(-2)*r25 - mi(42)*r15**(-2)*r25*rsq1l + mi(42)*
     &    r15**(-2)*r25*rgl - 1.D0/2.D0*mi(42)*r15**(-2)*r25**2 - mi(42
     &    )*r15**(-1)*r25**(-1)*rsq1l + 1.D0/2.D0*mi(42)*r15**(-1) + 
     &    mi(42)*r15**(-1)*rsq1l + 1.D0/2.D0*mi(42)*r15**(-1)*i1r15r25*
     &    rsq1l**2 - mi(42)*r15**(-1)*i1r15r25*rgl*rsq1l + 1.D0/2.D0*
     &    mi(42)*r15**(-1)*i1r15r25*rgl**2 - mi(42)*r15**(-1)*i1r25*
     &    rsq1l**2 + 2.D0*mi(42)*r15**(-1)*i1r25*rgl*rsq1l - mi(42)*
     &    r15**(-1)*i1r25*rgl**2 - 1.D0/2.D0*mi(42)*r15**(-1)*r25 - 1.D0
     &    /2.D0*mi(42)*r25**(-2)*i1r15*rsq1l**2 + mi(42)*r25**(-2)*
     &    i1r15*rgl*rsq1l - 1.D0/2.D0*mi(42)*r25**(-2)*i1r15*rgl**2 + 2.
     &    D0*mi(42)*r25**(-1)*rsq1l**2 + 2.D0*mi(42)*r25**(-1)*rgl - 4.D
     &    0*mi(42)*r25**(-1)*rgl*rsq1l + 2.D0*mi(42)*r25**(-1)*rgl**2
     &     + 1.D0/2.D0*mi(42)*r25**(-1)*i1r15*rsq1l**2 - mi(42)*
     &    r25**(-1)*i1r15*rgl*rsq1l )
      e = e  + Nc**(-1)*s125**2 * ( 1.D0/2.D0*mi(42)*r25**(-1)*i1r15*
     &    rgl**2 - 1.D0/2.D0*mi(42)*r25**(-1)*i1r15**2*rsq1l**2 + mi(42
     &    )*r25**(-1)*i1r15**2*rgl*rsq1l - 1.D0/2.D0*mi(42)*r25**(-1)*
     &    i1r15**2*rgl**2 - 2.D0*mi(42)*i1r25*rsq1l + 2.D0*mi(42)*i1r25
     &    *rsq1l**2 + 2.D0*mi(42)*i1r25*rgl - 4.D0*mi(42)*i1r25*rgl*
     &    rsq1l + 2.D0*mi(42)*i1r25*rgl**2 + 2.D0*mi(42)*i1r25**2*
     &    rsq1l**2 - 4.D0*mi(42)*i1r25**2*rgl*rsq1l + 2.D0*mi(42)*
     &    i1r25**2*rgl**2 + 1.D0/2.D0*mi(42)*i1r15*i1r15r25*rsq1l**2 - 
     &    mi(42)*i1r15*i1r15r25*rgl*rsq1l + 1.D0/2.D0*mi(42)*i1r15*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(42)*i1r15**2*i1r15r25*rsq1l**2
     &     + mi(42)*i1r15**2*i1r15r25*rgl*rsq1l - 1.D0/2.D0*mi(42)*
     &    i1r15**2*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**3 * (  - 1.D0/2.D0*mi(44)*r15**(-2)*
     &    rsq1l**3 + 3.D0/2.D0*mi(44)*r15**(-2)*rgl*rsq1l**2 - 3.D0/2.D0
     &    *mi(44)*r15**(-2)*rgl**2*rsq1l + 1.D0/2.D0*mi(44)*r15**(-2)*
     &    rgl**3 + 1.D0/2.D0*mi(44)*r15**(-2)*i1r15r25*rsq1l**3 - 3.D0/
     &    2.D0*mi(44)*r15**(-2)*i1r15r25*rgl*rsq1l**2 + 3.D0/2.D0*mi(44
     &    )*r15**(-2)*i1r15r25*rgl**2*rsq1l - 1.D0/2.D0*mi(44)*
     &    r15**(-2)*i1r15r25*rgl**3 + 3.D0/2.D0*mi(44)*r15**(-1)*
     &    rsq1l**2 - mi(44)*r15**(-1)*rgl*rsq1l - 1.D0/2.D0*mi(44)*
     &    r15**(-1)*rgl**2 + 1.D0/2.D0*mi(44)*r25**(-2)*rsq1l**3 - 3.D0/
     &    2.D0*mi(44)*r25**(-2)*rgl*rsq1l**2 + 3.D0/2.D0*mi(44)*
     &    r25**(-2)*rgl**2*rsq1l - 1.D0/2.D0*mi(44)*r25**(-2)*rgl**3 - 
     &    1.D0/2.D0*mi(44)*r25**(-2)*i1r15*rsq1l**3 + 3.D0/2.D0*mi(44)*
     &    r25**(-2)*i1r15*rgl*rsq1l**2 - 3.D0/2.D0*mi(44)*r25**(-2)*
     &    i1r15*rgl**2*rsq1l + 1.D0/2.D0*mi(44)*r25**(-2)*i1r15*rgl**3
     &     + 3.D0/2.D0*mi(44)*r25**(-1)*rsq1l - mi(44)*r25**(-1)*
     &    rsq1l**2 )
      e = e  + Nc**(-1)*s125**3 * ( 1.D0/2.D0*mi(44)*r25**(-1)*rgl + mi(
     &    44)*r25**(-1)*rgl**2 - 1.D0/2.D0*mi(44)*r25**(-1)*i1r15**2*
     &    rsq1l**3 + 3.D0/2.D0*mi(44)*r25**(-1)*i1r15**2*rgl*rsq1l**2
     &     - 3.D0/2.D0*mi(44)*r25**(-1)*i1r15**2*rgl**2*rsq1l + 1.D0/2.D
     &    0*mi(44)*r25**(-1)*i1r15**2*rgl**3 - 3.D0/2.D0*mi(44)*rsq1l
     &     - 1.D0/2.D0*mi(44)*rgl - 1.D0/2.D0*mi(44)*i1r15**2*i1r15r25*
     &    rsq1l**3 + 3.D0/2.D0*mi(44)*i1r15**2*i1r15r25*rgl*rsq1l**2 - 
     &    3.D0/2.D0*mi(44)*i1r15**2*i1r15r25*rgl**2*rsq1l + 1.D0/2.D0*
     &    mi(44)*i1r15**2*i1r15r25*rgl**3 + 1.D0/2.D0*mi(44)*r15*
     &    r25**(-2) - 3.D0/2.D0*mi(44)*r15*r25**(-2)*rsq1l + 3.D0/2.D0*
     &    mi(44)*r15*r25**(-2)*rsq1l**2 + 3.D0/2.D0*mi(44)*r15*
     &    r25**(-2)*rgl - 3.D0*mi(44)*r15*r25**(-2)*rgl*rsq1l + 3.D0/2.D
     &    0*mi(44)*r15*r25**(-2)*rgl**2 - mi(44)*r15*r25**(-1) - 2.D0*
     &    mi(44)*r15*r25**(-1)*rgl + 1.D0/2.D0*mi(44)*r15 - mi(44)*
     &    r15**2*r25**(-2) + 3.D0/2.D0*mi(44)*r15**2*r25**(-2)*rsq1l - 
     &    3.D0/2.D0*mi(44)*r15**2*r25**(-2)*rgl )
      e = e  + Nc**(-1)*s125**3 * ( mi(44)*r15**2*r25**(-1) + 1.D0/2.D0*
     &    mi(44)*r15**3*r25**(-2) - 1.D0/2.D0*mi(46)*r15**(-2)*rsq1l**3
     &     + 3.D0/2.D0*mi(46)*r15**(-2)*rgl*rsq1l**2 - 3.D0/2.D0*mi(46)
     &    *r15**(-2)*rgl**2*rsq1l + 1.D0/2.D0*mi(46)*r15**(-2)*rgl**3
     &     + 1.D0/2.D0*mi(46)*r15**(-2)*i1r15r25*rsq1l**3 - 3.D0/2.D0*
     &    mi(46)*r15**(-2)*i1r15r25*rgl*rsq1l**2 + 3.D0/2.D0*mi(46)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1l - 1.D0/2.D0*mi(46)*r15**(-2)*
     &    i1r15r25*rgl**3 - 1.D0/2.D0*mi(46)*r15**(-2)*r25 + 3.D0/2.D0*
     &    mi(46)*r15**(-2)*r25*rsq1l - 3.D0/2.D0*mi(46)*r15**(-2)*r25*
     &    rsq1l**2 - 3.D0/2.D0*mi(46)*r15**(-2)*r25*rgl + 3.D0*mi(46)*
     &    r15**(-2)*r25*rgl*rsq1l - 3.D0/2.D0*mi(46)*r15**(-2)*r25*
     &    rgl**2 + mi(46)*r15**(-2)*r25**2 - 3.D0/2.D0*mi(46)*r15**(-2)
     &    *r25**2*rsq1l + 3.D0/2.D0*mi(46)*r15**(-2)*r25**2*rgl - 1.D0/
     &    2.D0*mi(46)*r15**(-2)*r25**3 - 3.D0/2.D0*mi(46)*r15**(-1)*
     &    rsq1l + mi(46)*r15**(-1)*rsq1l**2 - 1.D0/2.D0*mi(46)*
     &    r15**(-1)*rgl )
      e = e  + Nc**(-1)*s125**3 * (  - mi(46)*r15**(-1)*rgl**2 + mi(46)*
     &    r15**(-1)*r25 + 2.D0*mi(46)*r15**(-1)*r25*rgl - mi(46)*
     &    r15**(-1)*r25**2 + 1.D0/2.D0*mi(46)*r25**(-2)*rsq1l**3 - 3.D0/
     &    2.D0*mi(46)*r25**(-2)*rgl*rsq1l**2 + 3.D0/2.D0*mi(46)*
     &    r25**(-2)*rgl**2*rsq1l - 1.D0/2.D0*mi(46)*r25**(-2)*rgl**3 - 
     &    1.D0/2.D0*mi(46)*r25**(-2)*i1r15*rsq1l**3 + 3.D0/2.D0*mi(46)*
     &    r25**(-2)*i1r15*rgl*rsq1l**2 - 3.D0/2.D0*mi(46)*r25**(-2)*
     &    i1r15*rgl**2*rsq1l + 1.D0/2.D0*mi(46)*r25**(-2)*i1r15*rgl**3
     &     - 3.D0/2.D0*mi(46)*r25**(-1)*rsq1l**2 + mi(46)*r25**(-1)*rgl
     &    *rsq1l + 1.D0/2.D0*mi(46)*r25**(-1)*rgl**2 - 1.D0/2.D0*mi(46)
     &    *r25**(-1)*i1r15**2*rsq1l**3 + 3.D0/2.D0*mi(46)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l**2 - 3.D0/2.D0*mi(46)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1l + 1.D0/2.D0*mi(46)*r25**(-1)*i1r15**2*rgl**3 + 3.
     &    D0/2.D0*mi(46)*rsq1l + 1.D0/2.D0*mi(46)*rgl - 1.D0/2.D0*mi(46
     &    )*i1r15**2*i1r15r25*rsq1l**3 + 3.D0/2.D0*mi(46)*i1r15**2*
     &    i1r15r25*rgl*rsq1l**2 )
      e = e  + Nc**(-1)*s125**3 * (  - 3.D0/2.D0*mi(46)*i1r15**2*
     &    i1r15r25*rgl**2*rsq1l + 1.D0/2.D0*mi(46)*i1r15**2*i1r15r25*
     &    rgl**3 - 1.D0/2.D0*mi(46)*r25 )
      e = e  + Nc * ( mi(17)*r25**(-1) + mi(17)*i1r25 - mi(18)*r25**(-1)
     &     - mi(18)*i1r25 )
      e = e  + Nc*s125 * (  - r25**(-1) - mi(20)*r15**(-1)*i1r25*rsq1l
     &     + mi(20)*r15**(-1)*i1r25*rgl - mi(20)*r25**(-1) + 2.D0*mi(20
     &    )*r25**(-1)*rsq1l - 2.D0*mi(20)*r25**(-1)*rgl + mi(20)*
     &    r25**(-1)*i1r15*rsq1l - mi(20)*r25**(-1)*i1r15*rgl - mi(20)*
     &    i1r25 + 2.D0*mi(20)*i1r25*rsq1l - 2.D0*mi(20)*i1r25*rgl + 2.D0
     &    *mi(20)*i1r25**2*rsq1l - 2.D0*mi(20)*i1r25**2*rgl - mi(24)*
     &    r25**(-1)*i1r15*rsq1l + mi(24)*r25**(-1)*i1r15*rgl + mi(26)*
     &    r15**(-1)*i1r25*rsq1l - mi(26)*r15**(-1)*i1r25*rgl - mi(26)*
     &    r25**(-1)*rsq1l + mi(26)*r25**(-1)*rgl + mi(26)*i1r25 - mi(26
     &    )*i1r25*rsq1l + mi(26)*i1r25*rgl - 2.D0*mi(26)*i1r25**2*rsq1l
     &     + 2.D0*mi(26)*i1r25**2*rgl )
      e = e  + Nc*s125**2 * ( 1.D0/2.D0*mi(30)*r15**(-1)*i1r15r25*
     &    rsq1l**2 - mi(30)*r15**(-1)*i1r15r25*rgl*rsq1l + 1.D0/2.D0*
     &    mi(30)*r15**(-1)*i1r15r25*rgl**2 + 1.D0/2.D0*mi(30)*r25**(-2)
     &    *rsq1l**2 - mi(30)*r25**(-2)*rgl*rsq1l + 1.D0/2.D0*mi(30)*
     &    r25**(-2)*rgl**2 - 1.D0/2.D0*mi(30)*r25**(-2)*i1r15*rsq1l**2
     &     + mi(30)*r25**(-2)*i1r15*rgl*rsq1l - 1.D0/2.D0*mi(30)*
     &    r25**(-2)*i1r15*rgl**2 - mi(30)*r25**(-1)*rgl + 1.D0/2.D0*mi(
     &    30)*r25**(-1)*i1r15*rsq1l**2 - mi(30)*r25**(-1)*i1r15*rgl*
     &    rsq1l + 1.D0/2.D0*mi(30)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*
     &    mi(30)*r25**(-1)*i1r15**2*rsq1l**2 + mi(30)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l - 1.D0/2.D0*mi(30)*r25**(-1)*i1r15**2*
     &    rgl**2 - mi(30)*i1r15r25*rsq1l + mi(30)*i1r15r25*rgl + 1.D0/2.
     &    D0*mi(30)*i1r15*i1r15r25*rsq1l**2 - mi(30)*i1r15*i1r15r25*rgl
     &    *rsq1l + 1.D0/2.D0*mi(30)*i1r15*i1r15r25*rgl**2 - 1.D0/2.D0*
     &    mi(30)*i1r15**2*i1r15r25*rsq1l**2 + mi(30)*i1r15**2*i1r15r25*
     &    rgl*rsq1l )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(30)*i1r15**2*i1r15r25*
     &    rgl**2 + 1.D0/2.D0*mi(30)*r15*i1r15r25 - 1.D0/2.D0*mi(34) - 1.
     &    D0/2.D0*mi(34)*r15**(-2)*rsq1l**2 + mi(34)*r15**(-2)*rgl*
     &    rsq1l - 1.D0/2.D0*mi(34)*r15**(-2)*rgl**2 + 1.D0/2.D0*mi(34)*
     &    r15**(-2)*i1r15r25*rsq1l**2 - mi(34)*r15**(-2)*i1r15r25*rgl*
     &    rsq1l + 1.D0/2.D0*mi(34)*r15**(-2)*i1r15r25*rgl**2 + mi(34)*
     &    r15**(-1)*rsq1l - mi(34)*r15**(-1)*i1r15r25*rsq1l - 1.D0/2.D0
     &    *mi(34)*r15**(-1)*i1r15r25*rsq1l**2 + mi(34)*r15**(-1)*
     &    i1r15r25*rgl + mi(34)*r15**(-1)*i1r15r25*rgl*rsq1l - 1.D0/2.D0
     &    *mi(34)*r15**(-1)*i1r15r25*rgl**2 - 1.D0/2.D0*mi(34)*
     &    r25**(-1)*i1r15*rsq1l**2 + mi(34)*r25**(-1)*i1r15*rgl*rsq1l
     &     - 1.D0/2.D0*mi(34)*r25**(-1)*i1r15*rgl**2 + 1.D0/2.D0*mi(34)
     &    *i1r15r25 + mi(34)*i1r15r25*rsq1l - mi(34)*i1r15r25*rgl - 1.D0
     &    /2.D0*mi(34)*i1r15*i1r15r25*rsq1l**2 + mi(34)*i1r15*i1r15r25*
     &    rgl*rsq1l - 1.D0/2.D0*mi(34)*i1r15*i1r15r25*rgl**2 - 1.D0/2.D0
     &    *mi(34)*r15*i1r15r25 )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(40)*r15**(-2)*i1r15r25*
     &    rsq1l**2 + mi(40)*r15**(-2)*i1r15r25*rgl*rsq1l - 1.D0/2.D0*
     &    mi(40)*r15**(-2)*i1r15r25*rgl**2 - mi(40)*r15**(-1)*r25**(-1)
     &    *rgl + mi(40)*r15**(-1)*i1r15r25*rsq1l + 1.D0/2.D0*mi(40)*
     &    r15**(-1)*i1r15r25*rsq1l**2 - mi(40)*r15**(-1)*i1r15r25*rgl
     &     - mi(40)*r15**(-1)*i1r15r25*rgl*rsq1l + 1.D0/2.D0*mi(40)*
     &    r15**(-1)*i1r15r25*rgl**2 - 1.D0/2.D0*mi(40)*r25**(-2)*
     &    rsq1l**2 + mi(40)*r25**(-2)*rgl*rsq1l - 1.D0/2.D0*mi(40)*
     &    r25**(-2)*rgl**2 + mi(40)*r25**(-1)*rgl - 1.D0/2.D0*mi(40)*
     &    r25**(-1)*i1r15*rsq1l**2 + mi(40)*r25**(-1)*i1r15*rgl*rsq1l
     &     - 1.D0/2.D0*mi(40)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*mi(40)
     &    *i1r15r25 - mi(40)*i1r15r25*rsq1l + mi(40)*i1r15r25*rgl + 1.D0
     &    /2.D0*mi(40)*i1r15*i1r15r25*rsq1l**2 - mi(40)*i1r15*i1r15r25*
     &    rgl*rsq1l + 1.D0/2.D0*mi(40)*i1r15*i1r15r25*rgl**2 + 1.D0/2.D0
     &    *mi(40)*r15*i1r15r25 - 1.D0/2.D0*mi(42) + 1.D0/2.D0*mi(42)*
     &    r15**(-2)*rsq1l**2 )
      e = e  + Nc*s125**2 * (  - mi(42)*r15**(-2)*rgl*rsq1l + 1.D0/2.D0*
     &    mi(42)*r15**(-2)*rgl**2 + mi(42)*r15**(-1)*r25**(-1)*rgl - 
     &    mi(42)*r15**(-1)*rsq1l - 1.D0/2.D0*mi(42)*r15**(-1)*i1r15r25*
     &    rsq1l**2 + mi(42)*r15**(-1)*i1r15r25*rgl*rsq1l - 1.D0/2.D0*
     &    mi(42)*r15**(-1)*i1r15r25*rgl**2 + mi(42)*r15**(-1)*i1r25*
     &    rsq1l**2 - 2.D0*mi(42)*r15**(-1)*i1r25*rgl*rsq1l + mi(42)*
     &    r15**(-1)*i1r25*rgl**2 + 1.D0/2.D0*mi(42)*r25**(-2)*i1r15*
     &    rsq1l**2 - mi(42)*r25**(-2)*i1r15*rgl*rsq1l + 1.D0/2.D0*mi(42
     &    )*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(42)*r25**(-1)*rsq1l**2 - 2.
     &    D0*mi(42)*r25**(-1)*rgl + 4.D0*mi(42)*r25**(-1)*rgl*rsq1l - 2.
     &    D0*mi(42)*r25**(-1)*rgl**2 - 1.D0/2.D0*mi(42)*r25**(-1)*i1r15
     &    *rsq1l**2 + mi(42)*r25**(-1)*i1r15*rgl*rsq1l - 1.D0/2.D0*mi(
     &    42)*r25**(-1)*i1r15*rgl**2 + 1.D0/2.D0*mi(42)*r25**(-1)*
     &    i1r15**2*rsq1l**2 - mi(42)*r25**(-1)*i1r15**2*rgl*rsq1l + 1.D0
     &    /2.D0*mi(42)*r25**(-1)*i1r15**2*rgl**2 + mi(42)*i1r15r25*
     &    rsq1l )
      e = e  + Nc*s125**2 * (  - mi(42)*i1r15r25*rgl + 2.D0*mi(42)*i1r25
     &    *rsq1l - 2.D0*mi(42)*i1r25*rsq1l**2 - 2.D0*mi(42)*i1r25*rgl
     &     + 4.D0*mi(42)*i1r25*rgl*rsq1l - 2.D0*mi(42)*i1r25*rgl**2 - 2.
     &    D0*mi(42)*i1r25**2*rsq1l**2 + 4.D0*mi(42)*i1r25**2*rgl*rsq1l
     &     - 2.D0*mi(42)*i1r25**2*rgl**2 - 1.D0/2.D0*mi(42)*i1r15*
     &    i1r15r25*rsq1l**2 + mi(42)*i1r15*i1r15r25*rgl*rsq1l - 1.D0/2.D
     &    0*mi(42)*i1r15*i1r15r25*rgl**2 + 1.D0/2.D0*mi(42)*i1r15**2*
     &    i1r15r25*rsq1l**2 - mi(42)*i1r15**2*i1r15r25*rgl*rsq1l + 1.D0/
     &    2.D0*mi(42)*i1r15**2*i1r15r25*rgl**2 - 1.D0/2.D0*mi(42)*r15*
     &    i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(48)*r15**(-2)*rsq1l**3 + 3.
     &    D0/2.D0*mi(48)*r15**(-2)*rgl*rsq1l**2 - 3.D0/2.D0*mi(48)*
     &    r15**(-2)*rgl**2*rsq1l + 1.D0/2.D0*mi(48)*r15**(-2)*rgl**3 + 
     &    1.D0/2.D0*mi(48)*r15**(-2)*i1r15r25*rsq1l**3 - 3.D0/2.D0*mi(
     &    48)*r15**(-2)*i1r15r25*rgl*rsq1l**2 + 3.D0/2.D0*mi(48)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1l - 1.D0/2.D0*mi(48)*r15**(-2)*
     &    i1r15r25*rgl**3 + 3.D0/2.D0*mi(48)*r15**(-1)*rsq1l**2 - mi(48
     &    )*r15**(-1)*rgl*rsq1l - 1.D0/2.D0*mi(48)*r15**(-1)*rgl**2 - 3.
     &    D0/2.D0*mi(48)*r15**(-1)*i1r15r25*rsq1l**2 + 3.D0*mi(48)*
     &    r15**(-1)*i1r15r25*rgl*rsq1l - 3.D0/2.D0*mi(48)*r15**(-1)*
     &    i1r15r25*rgl**2 + 1.D0/2.D0*mi(48)*r25**(-2)*rsq1l**3 - 3.D0/
     &    2.D0*mi(48)*r25**(-2)*rgl*rsq1l**2 + 3.D0/2.D0*mi(48)*
     &    r25**(-2)*rgl**2*rsq1l - 1.D0/2.D0*mi(48)*r25**(-2)*rgl**3 - 
     &    1.D0/2.D0*mi(48)*r25**(-2)*i1r15*rsq1l**3 + 3.D0/2.D0*mi(48)*
     &    r25**(-2)*i1r15*rgl*rsq1l**2 - 3.D0/2.D0*mi(48)*r25**(-2)*
     &    i1r15*rgl**2*rsq1l )
      e = e  + Nc*s125**3 * ( 1.D0/2.D0*mi(48)*r25**(-2)*i1r15*rgl**3 - 
     &    1.D0/2.D0*mi(48)*r25**(-1)*rsq1l**2 - mi(48)*r25**(-1)*rgl*
     &    rsq1l + 3.D0/2.D0*mi(48)*r25**(-1)*rgl**2 + 1.D0/2.D0*mi(48)*
     &    r25**(-1)*i1r15*rsq1l**2 - mi(48)*r25**(-1)*i1r15*rgl*rsq1l
     &     + 1.D0/2.D0*mi(48)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*mi(48)
     &    *r25**(-1)*i1r15**2*rsq1l**3 + 3.D0/2.D0*mi(48)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l**2 - 3.D0/2.D0*mi(48)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1l + 1.D0/2.D0*mi(48)*r25**(-1)*i1r15**2*rgl**3 - 3.
     &    D0/2.D0*mi(48)*rsq1l - 1.D0/2.D0*mi(48)*rgl + 3.D0/2.D0*mi(48
     &    )*i1r15r25*rsq1l - 3.D0/2.D0*mi(48)*i1r15r25*rgl + 1.D0/2.D0*
     &    mi(48)*i1r15*i1r15r25*rsq1l**2 - mi(48)*i1r15*i1r15r25*rgl*
     &    rsq1l + 1.D0/2.D0*mi(48)*i1r15*i1r15r25*rgl**2 - 1.D0/2.D0*
     &    mi(48)*i1r15**2*i1r15r25*rsq1l**3 + 3.D0/2.D0*mi(48)*i1r15**2
     &    *i1r15r25*rgl*rsq1l**2 - 3.D0/2.D0*mi(48)*i1r15**2*i1r15r25*
     &    rgl**2*rsq1l + 1.D0/2.D0*mi(48)*i1r15**2*i1r15r25*rgl**3 + 1.D
     &    0/2.D0*mi(48)*r15 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(48)*r15*i1r15r25 - mi(48)*
     &    r15*i1r15r25*rsq1l + mi(48)*r15*i1r15r25*rgl + 1.D0/2.D0*mi(
     &    48)*r15**2*i1r15r25 )

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

      e =  + Nc**(-1)*s125 * ( r25**(-1) )
      e = e  + Nc*s125 * (  - r25**(-1) )

      gcoeffarr(aa0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1) * ( 2.D0*mi(17)*r25**(-2) + 1.D0/2.D0*mi(19)*
     &    r15**(-1)*rsq1r**(-1) - 1.D0/2.D0*mi(19)*r15**(-1)*i1r15r25*
     &    rsq1r**(-1) + mi(19)*r15**(-1)*i1r15r25*rgl*rsq1r**(-1) - 2.D0
     &    *mi(19)*r25**(-2) - mi(19)*r25**(-2)*rgl*rsq1r**(-1) + mi(19)
     &    *r25**(-2)*i1r15*rgl*rsq1r**(-1) + 1.D0/2.D0*mi(19)*r25**(-1)
     &    *rsq1r**(-1) - 1.D0/2.D0*mi(19)*r25**(-1)*i1r15*rsq1r**(-1)
     &     + mi(19)*r25**(-1)*i1r15*rgl*rsq1r**(-1) + mi(19)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r**(-1) - 1.D0/2.D0*mi(19)*i1r15*i1r15r25*
     &    rsq1r**(-1) + mi(19)*i1r15*i1r15r25*rgl*rsq1r**(-1) + mi(19)*
     &    i1r15**2*i1r15r25*rgl*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)*
     &    mi(19)*r15**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*rgl*
     &    rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25 - 1/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl + 2.D
     &    0/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl**2*rsq1r**(-1)
     &     + 1/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl - 2.D0/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1) * (  - 1/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*
     &    rgl + 2.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**2*
     &    rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)*mi(19)*r25**(-1) + 2.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-1)*rgl*rsq1r**(-1) + 1.D0/2.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15 - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15*rgl + 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**2*rgl + 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25 - 1/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl + 2.D0/(
     &    rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl**2*rsq1r**(-1) - 1/(
     &    rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl + 2.D0/(rsq1r - rgl
     &    )*mi(19)*i1r15**2*i1r15r25*rgl**2*rsq1r**(-1) - 3.D0/2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*rgl + 3.D0/2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1) * (  - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r15**(-1)*i1r15r25*rgl + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl**2*rsq1r**(-1) - 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl**2
     &     + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25*
     &    rgl**3*rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*rgl**3*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15*rgl**2 + 1/(rsq1r - rgl)/(rsq1r - rgl)
     &    *mi(19)*r25**(-2)*i1r15*rgl**3*rsq1r**(-1) - 3.D0/2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*rgl + 3.D0/2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*rgl**2*rsq1r**(-1) - 1.
     &    D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*
     &    rgl + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-1)*i1r15*rgl**2 )
      e = e  + Nc**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15*rgl**3*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2 + 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**3*rsq1r**(-1) - 1.
     &    D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl
     &     + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15*i1r15r25*rgl**2 + 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15*i1r15r25*rgl**3*rsq1r**(-1) - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2 + 1/(rsq1r - rgl
     &    )/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125 * ( r25**(-1) + 2.D0*mi(27)*r25**(-2)*rsq1r
     &     - 2.D0*mi(27)*r25**(-2)*rgl )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(37)*r25**(-1)*rsq1r )
      e = e  + Nc * (  - 2.D0*mi(17)*r25**(-2) + 2.D0*mi(19)*r25**(-2) )
      e = e  + Nc*s125 * ( r25**(-1) - 2.D0*mi(27)*r25**(-2)*rsq1r + 2.D0
     &    *mi(27)*r25**(-2)*rgl )
      e = e  + Nc*s125**2 * ( 2.D0*mi(35)*r25**(-1)*rgl )

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa0,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  + Nc**(-1) * (  - mi(17)*r25**(-1) - mi(17)*i1r25 + 1.D0/4.D0
     &    *mi(19)*r15**(-2)*rsq1r**(-1) - mi(19)*r15**(-2)*rgl*
     &    rsq1r**(-1) - 1.D0/4.D0*mi(19)*r15**(-2)*i1r15r25*rsq1r**(-1)
     &     + mi(19)*r15**(-2)*i1r15r25*rgl*rsq1r**(-1) + 3.D0/4.D0*mi(
     &    19)*r15**(-2)*r25*rsq1r**(-1) + 3.D0/4.D0*mi(19)*r15**(-1)*
     &    rsq1r**(-1) - 1.D0/4.D0*mi(19)*r25**(-2)*rsq1r**(-1) + mi(19)
     &    *r25**(-2)*rgl*rsq1r**(-1) + 1.D0/4.D0*mi(19)*r25**(-2)*i1r15
     &    *rsq1r**(-1) - mi(19)*r25**(-2)*i1r15*rgl*rsq1r**(-1) - 3.D0/
     &    4.D0*mi(19)*r25**(-1)*rsq1r**(-1) + mi(19)*r25**(-1) + 1.D0/4.
     &    D0*mi(19)*r25**(-1)*i1r15**2*rsq1r**(-1) - mi(19)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r**(-1) + mi(19)*i1r25 + 1.D0/4.D0*mi(19)*
     &    i1r15**2*i1r15r25*rsq1r**(-1) - mi(19)*i1r15**2*i1r15r25*rgl*
     &    rsq1r**(-1) - 3.D0/4.D0*mi(19)*r15*r25**(-2)*rsq1r**(-1) - 1.D
     &    0/4.D0/(rsq1r - rgl)*mi(19)*r15**(-2) + 1/(rsq1r - rgl)*mi(19
     &    )*r15**(-2)*rgl - 3.D0/2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1) * ( 1.D0/4.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25 - 1/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl + 3.D
     &    0/2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2*
     &    rsq1r**(-1) - 3.D0/4.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*r25 + 
     &    3.D0/2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*r25*rgl*rsq1r**(-1)
     &     - 3.D0/4.D0/(rsq1r - rgl)*mi(19)*r15**(-1) + 3.D0/2.D0/(
     &    rsq1r - rgl)*mi(19)*r15**(-1)*rgl*rsq1r**(-1) + 1.D0/4.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-2) - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*rgl + 3.D0/2.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    rgl**2*rsq1r**(-1) - 1.D0/4.D0/(rsq1r - rgl)*mi(19)*r25**(-2)
     &    *i1r15 + 1/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl - 3.D0/2.D
     &    0/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**2*rsq1r**(-1) + 3.
     &    D0/4.D0/(rsq1r - rgl)*mi(19)*r25**(-1) - 3.D0/2.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*rgl*rsq1r**(-1) - 1.D0/4.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**2 + 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1) * (  - 3.D0/2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**2*rgl**2*rsq1r**(-1) - 1.D0/4.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25 + 1/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*
     &    rgl - 3.D0/2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2
     &    *rsq1r**(-1) + 3.D0/4.D0/(rsq1r - rgl)*mi(19)*r15*r25**(-2)
     &     - 3.D0/2.D0/(rsq1r - rgl)*mi(19)*r15*r25**(-2)*rgl*
     &    rsq1r**(-1) + 1.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*rgl - 1.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*rgl**2 - 1.D0/2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-2)*rgl**3*rsq1r**(-1) - 1.D0/4.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl + 
     &    1.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25*rgl**2*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2 + 1.D0/2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**3*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1) * (  - 3.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r15**(-2)*r25*rgl + 3.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)
     &    *mi(19)*r15**(-2)*r25*rgl**2*rsq1r**(-1) - 3.D0/4.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*rgl + 3.D0/4.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*rgl**2*rsq1r**(-1) - 1.
     &    D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl + 1.D
     &    0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl**2*
     &    rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*rgl**2 + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*rgl**3*rsq1r**(-1) + 1.D0/4.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl - 1.D0/4.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**2*rsq1r**(-1)
     &     + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15*rgl**2 - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl**3*rsq1r**(-1) + 3.D0/4.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*r25**(-1)*rgl )
      e = e  + Nc**(-1) * (  - 3.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-1)*rgl**2*rsq1r**(-1) + 1.D0/4.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl - 1.D0/4.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2*
     &    rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl**2 - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**3*rsq1r**(-1) + 1.D0/4.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl - 1.
     &    D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*
     &    rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**2*i1r15r25*rgl**2 - 1.D0/2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**3*rsq1r**(-1) + 3.D
     &    0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15*r25**(-2)*rgl
     &     - 3.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15*r25**(-2)
     &    *rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125 * ( r25**(-1) + mi(21)*r15**(-1)*r25**(-1)
     &     - 2.D0*mi(21)*r15**(-1)*ir15r25 + mi(21)*r15**(-1)*i1r25*
     &    rsq1r - mi(21)*r15**(-1)*i1r25*rgl + mi(21)*r25**(-1) - 2.D0*
     &    mi(21)*r25**(-1)*rsq1r + 2.D0*mi(21)*r25**(-1)*rgl - mi(21)*
     &    r25**(-1)*i1r15*rsq1r + mi(21)*r25**(-1)*i1r15*rgl + mi(21)*
     &    i1r25 - 2.D0*mi(21)*i1r25*rsq1r + 2.D0*mi(21)*i1r25*rgl - 2.D0
     &    *mi(21)*i1r25**2*rsq1r + 2.D0*mi(21)*i1r25**2*rgl - mi(23)*
     &    r15**(-1)*r25**(-1) - mi(23)*r15**(-1) + 2.D0*mi(23)*
     &    r15**(-1)*ir15r25 + mi(23)*r25**(-1) - mi(25)*r25**(-1) + mi(
     &    25)*r25**(-1)*i1r15*rsq1r - mi(25)*r25**(-1)*i1r15*rgl + mi(
     &    27)*r15**(-1) - mi(27)*r15**(-1)*i1r25*rsq1r + mi(27)*
     &    r15**(-1)*i1r25*rgl + mi(27)*r25**(-1)*rsq1r - mi(27)*
     &    r25**(-1)*rgl - mi(27)*i1r25 + mi(27)*i1r25*rsq1r - mi(27)*
     &    i1r25*rgl + 2.D0*mi(27)*i1r25**2*rsq1r - 2.D0*mi(27)*i1r25**2
     &    *rgl )
      e = e  + Nc**(-1)*s125**2 * ( 1.D0/2.D0*mi(29)*r15**(-2) - mi(29)*
     &    r15**(-2)*rsq1r + mi(29)*r15**(-2)*rgl - mi(29)*r15**(-2)*r25
     &     + mi(29)*r15**(-2)*r25*rsq1r - mi(29)*r15**(-2)*r25*rgl + 1.D
     &    0/2.D0*mi(29)*r15**(-2)*r25**2 - mi(29)*r15**(-1) + mi(29)*
     &    r15**(-1)*rsq1r - mi(29)*r15**(-1)*rgl + mi(29)*r15**(-1)*r25
     &     - 1.D0/2.D0*mi(29)*r25**(-2) + mi(29)*r25**(-2)*rsq1r - mi(
     &    29)*r25**(-2)*rgl + mi(29)*r25**(-1) - mi(29)*r25**(-1)*rsq1r
     &     + mi(29)*r25**(-1)*rgl + mi(29)*r15*r25**(-2) - mi(29)*r15*
     &    r25**(-2)*rsq1r + mi(29)*r15*r25**(-2)*rgl - mi(29)*r15*
     &    r25**(-1) - 1.D0/2.D0*mi(29)*r15**2*r25**(-2) + 1.D0/2.D0*mi(
     &    33)*r15**(-1)*i1r15r25*rsq1r**2 - mi(33)*r15**(-1)*i1r15r25*
     &    rgl*rsq1r + 1.D0/2.D0*mi(33)*r15**(-1)*i1r15r25*rgl**2 + 1.D0/
     &    2.D0*mi(33)*r25**(-2)*rsq1r**2 - mi(33)*r25**(-2)*rgl*rsq1r
     &     + 1.D0/2.D0*mi(33)*r25**(-2)*rgl**2 - 1.D0/2.D0*mi(33)*
     &    r25**(-2)*i1r15*rsq1r**2 + mi(33)*r25**(-2)*i1r15*rgl*rsq1r
     &     - 1.D0/2.D0*mi(33)*r25**(-2)*i1r15*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - mi(33)*r25**(-1)*rsq1r + 1.D0/2.D0
     &    *mi(33)*r25**(-1)*i1r15*rsq1r**2 - mi(33)*r25**(-1)*i1r15*rgl
     &    *rsq1r + 1.D0/2.D0*mi(33)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*
     &    mi(33)*r25**(-1)*i1r15**2*rsq1r**2 + mi(33)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r - 1.D0/2.D0*mi(33)*r25**(-1)*i1r15**2*
     &    rgl**2 + 1.D0/2.D0*mi(33)*i1r15*i1r15r25*rsq1r**2 - mi(33)*
     &    i1r15*i1r15r25*rgl*rsq1r + 1.D0/2.D0*mi(33)*i1r15*i1r15r25*
     &    rgl**2 - 1.D0/2.D0*mi(33)*i1r15**2*i1r15r25*rsq1r**2 + mi(33)
     &    *i1r15**2*i1r15r25*rgl*rsq1r - 1.D0/2.D0*mi(33)*i1r15**2*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(33)*r15*r25**(-2) + mi(33)*r15
     &    *r25**(-2)*rsq1r - mi(33)*r15*r25**(-2)*rgl + 1.D0/2.D0*mi(33
     &    )*r15*r25**(-1) + 1.D0/2.D0*mi(33)*r15**2*r25**(-2) - 1.D0/2.D
     &    0*mi(37)*r15**(-2)*rsq1r**2 + mi(37)*r15**(-2)*rgl*rsq1r - 1.D
     &    0/2.D0*mi(37)*r15**(-2)*rgl**2 + 1.D0/2.D0*mi(37)*r15**(-2)*
     &    i1r15r25*rsq1r**2 - mi(37)*r15**(-2)*i1r15r25*rgl*rsq1r + 1.D0
     &    /2.D0*mi(37)*r15**(-2)*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( 1.D0/2.D0*mi(37)*r15**(-2)*r25 - mi(
     &    37)*r15**(-2)*r25*rsq1r + mi(37)*r15**(-2)*r25*rgl - 1.D0/2.D0
     &    *mi(37)*r15**(-2)*r25**2 + mi(37)*r15**(-1)*rsq1r - 1.D0/2.D0
     &    *mi(37)*r15**(-1)*i1r15r25*rsq1r**2 + mi(37)*r15**(-1)*
     &    i1r15r25*rgl*rsq1r - 1.D0/2.D0*mi(37)*r15**(-1)*i1r15r25*
     &    rgl**2 - 1.D0/2.D0*mi(37)*r15**(-1)*r25 - 1.D0/2.D0*mi(37)*
     &    r25**(-1)*i1r15*rsq1r**2 + mi(37)*r25**(-1)*i1r15*rgl*rsq1r
     &     - 1.D0/2.D0*mi(37)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*mi(37)
     &    *i1r15*i1r15r25*rsq1r**2 + mi(37)*i1r15*i1r15r25*rgl*rsq1r - 
     &    1.D0/2.D0*mi(37)*i1r15*i1r15r25*rgl**2 + mi(39)*r15**(-2)*
     &    rsq1r**2 - 2.D0*mi(39)*r15**(-2)*rgl*rsq1r + mi(39)*r15**(-2)
     &    *rgl**2 - mi(39)*r15**(-2)*i1r15r25*rsq1r**2 + 2.D0*mi(39)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r - mi(39)*r15**(-2)*i1r15r25*
     &    rgl**2 - 1.D0/2.D0*mi(39)*r15**(-2)*r25 + mi(39)*r15**(-2)*
     &    r25*rsq1r - mi(39)*r15**(-2)*r25*rgl + 1.D0/2.D0*mi(39)*
     &    r15**(-2)*r25**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 1.D0/2.D0*mi(39)*r15**(-1) - mi(
     &    39)*r15**(-1)*rsq1r - mi(39)*r15**(-1)*rgl + mi(39)*r15**(-1)
     &    *r25 - mi(39)*r25**(-2)*rsq1r**2 + 2.D0*mi(39)*r25**(-2)*rgl*
     &    rsq1r - mi(39)*r25**(-2)*rgl**2 + mi(39)*r25**(-2)*i1r15*
     &    rsq1r**2 - 2.D0*mi(39)*r25**(-2)*i1r15*rgl*rsq1r + mi(39)*
     &    r25**(-2)*i1r15*rgl**2 + 1.D0/2.D0*mi(39)*r25**(-1) + mi(39)*
     &    r25**(-1)*rsq1r + mi(39)*r25**(-1)*rgl + mi(39)*r25**(-1)*
     &    i1r15**2*rsq1r**2 - 2.D0*mi(39)*r25**(-1)*i1r15**2*rgl*rsq1r
     &     + mi(39)*r25**(-1)*i1r15**2*rgl**2 + mi(39)*i1r15**2*
     &    i1r15r25*rsq1r**2 - 2.D0*mi(39)*i1r15**2*i1r15r25*rgl*rsq1r
     &     + mi(39)*i1r15**2*i1r15r25*rgl**2 + 1.D0/2.D0*mi(39)*r15*
     &    r25**(-2) - mi(39)*r15*r25**(-2)*rsq1r + mi(39)*r15*r25**(-2)
     &    *rgl - mi(39)*r15*r25**(-1) - 1.D0/2.D0*mi(39)*r15**2*
     &    r25**(-2) + 1.D0/2.D0*mi(41)*r15**(-2)*i1r15r25*rsq1r**2 - 
     &    mi(41)*r15**(-2)*i1r15r25*rgl*rsq1r + 1.D0/2.D0*mi(41)*
     &    r15**(-2)*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( mi(41)*r15**(-1)*r25**(-1)*rsq1r - 1.
     &    D0/2.D0*mi(41)*r15**(-1)*i1r15r25*rsq1r**2 + mi(41)*r15**(-1)
     &    *i1r15r25*rgl*rsq1r - 1.D0/2.D0*mi(41)*r15**(-1)*i1r15r25*
     &    rgl**2 + 1.D0/2.D0*mi(41)*r25**(-2) - mi(41)*r25**(-2)*rsq1r
     &     + 1.D0/2.D0*mi(41)*r25**(-2)*rsq1r**2 + mi(41)*r25**(-2)*rgl
     &     - mi(41)*r25**(-2)*rgl*rsq1r + 1.D0/2.D0*mi(41)*r25**(-2)*
     &    rgl**2 - 1.D0/2.D0*mi(41)*r25**(-1) - mi(41)*r25**(-1)*rsq1r
     &     + 1.D0/2.D0*mi(41)*r25**(-1)*i1r15*rsq1r**2 - mi(41)*
     &    r25**(-1)*i1r15*rgl*rsq1r + 1.D0/2.D0*mi(41)*r25**(-1)*i1r15*
     &    rgl**2 - 1.D0/2.D0*mi(41)*i1r15*i1r15r25*rsq1r**2 + mi(41)*
     &    i1r15*i1r15r25*rgl*rsq1r - 1.D0/2.D0*mi(41)*i1r15*i1r15r25*
     &    rgl**2 - mi(41)*r15*r25**(-2) + mi(41)*r15*r25**(-2)*rsq1r - 
     &    mi(41)*r15*r25**(-2)*rgl + 1.D0/2.D0*mi(41)*r15*r25**(-1) + 1.
     &    D0/2.D0*mi(41)*r15**2*r25**(-2) - 1.D0/2.D0*mi(43)*r15**(-2)
     &     + mi(43)*r15**(-2)*rsq1r - 1.D0/2.D0*mi(43)*r15**(-2)*
     &    rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * (  - mi(43)*r15**(-2)*rgl + mi(43)*
     &    r15**(-2)*rgl*rsq1r - 1.D0/2.D0*mi(43)*r15**(-2)*rgl**2 + mi(
     &    43)*r15**(-2)*r25 - mi(43)*r15**(-2)*r25*rsq1r + mi(43)*
     &    r15**(-2)*r25*rgl - 1.D0/2.D0*mi(43)*r15**(-2)*r25**2 - mi(43
     &    )*r15**(-1)*r25**(-1)*rsq1r + 1.D0/2.D0*mi(43)*r15**(-1) + 
     &    mi(43)*r15**(-1)*rsq1r + 1.D0/2.D0*mi(43)*r15**(-1)*i1r15r25*
     &    rsq1r**2 - mi(43)*r15**(-1)*i1r15r25*rgl*rsq1r + 1.D0/2.D0*
     &    mi(43)*r15**(-1)*i1r15r25*rgl**2 - mi(43)*r15**(-1)*i1r25*
     &    rsq1r**2 + 2.D0*mi(43)*r15**(-1)*i1r25*rgl*rsq1r - mi(43)*
     &    r15**(-1)*i1r25*rgl**2 - 1.D0/2.D0*mi(43)*r15**(-1)*r25 - 1.D0
     &    /2.D0*mi(43)*r25**(-2)*i1r15*rsq1r**2 + mi(43)*r25**(-2)*
     &    i1r15*rgl*rsq1r - 1.D0/2.D0*mi(43)*r25**(-2)*i1r15*rgl**2 + 2.
     &    D0*mi(43)*r25**(-1)*rsq1r**2 + 2.D0*mi(43)*r25**(-1)*rgl - 4.D
     &    0*mi(43)*r25**(-1)*rgl*rsq1r + 2.D0*mi(43)*r25**(-1)*rgl**2
     &     + 1.D0/2.D0*mi(43)*r25**(-1)*i1r15*rsq1r**2 - mi(43)*
     &    r25**(-1)*i1r15*rgl*rsq1r )
      e = e  + Nc**(-1)*s125**2 * ( 1.D0/2.D0*mi(43)*r25**(-1)*i1r15*
     &    rgl**2 - 1.D0/2.D0*mi(43)*r25**(-1)*i1r15**2*rsq1r**2 + mi(43
     &    )*r25**(-1)*i1r15**2*rgl*rsq1r - 1.D0/2.D0*mi(43)*r25**(-1)*
     &    i1r15**2*rgl**2 - 2.D0*mi(43)*i1r25*rsq1r + 2.D0*mi(43)*i1r25
     &    *rsq1r**2 + 2.D0*mi(43)*i1r25*rgl - 4.D0*mi(43)*i1r25*rgl*
     &    rsq1r + 2.D0*mi(43)*i1r25*rgl**2 + 2.D0*mi(43)*i1r25**2*
     &    rsq1r**2 - 4.D0*mi(43)*i1r25**2*rgl*rsq1r + 2.D0*mi(43)*
     &    i1r25**2*rgl**2 + 1.D0/2.D0*mi(43)*i1r15*i1r15r25*rsq1r**2 - 
     &    mi(43)*i1r15*i1r15r25*rgl*rsq1r + 1.D0/2.D0*mi(43)*i1r15*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(43)*i1r15**2*i1r15r25*rsq1r**2
     &     + mi(43)*i1r15**2*i1r15r25*rgl*rsq1r - 1.D0/2.D0*mi(43)*
     &    i1r15**2*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**3 * (  - 1.D0/2.D0*mi(45)*r15**(-2)*
     &    rsq1r**3 + 3.D0/2.D0*mi(45)*r15**(-2)*rgl*rsq1r**2 - 3.D0/2.D0
     &    *mi(45)*r15**(-2)*rgl**2*rsq1r + 1.D0/2.D0*mi(45)*r15**(-2)*
     &    rgl**3 + 1.D0/2.D0*mi(45)*r15**(-2)*i1r15r25*rsq1r**3 - 3.D0/
     &    2.D0*mi(45)*r15**(-2)*i1r15r25*rgl*rsq1r**2 + 3.D0/2.D0*mi(45
     &    )*r15**(-2)*i1r15r25*rgl**2*rsq1r - 1.D0/2.D0*mi(45)*
     &    r15**(-2)*i1r15r25*rgl**3 + 3.D0/2.D0*mi(45)*r15**(-1)*
     &    rsq1r**2 - mi(45)*r15**(-1)*rgl*rsq1r - 1.D0/2.D0*mi(45)*
     &    r15**(-1)*rgl**2 + 1.D0/2.D0*mi(45)*r25**(-2)*rsq1r**3 - 3.D0/
     &    2.D0*mi(45)*r25**(-2)*rgl*rsq1r**2 + 3.D0/2.D0*mi(45)*
     &    r25**(-2)*rgl**2*rsq1r - 1.D0/2.D0*mi(45)*r25**(-2)*rgl**3 - 
     &    1.D0/2.D0*mi(45)*r25**(-2)*i1r15*rsq1r**3 + 3.D0/2.D0*mi(45)*
     &    r25**(-2)*i1r15*rgl*rsq1r**2 - 3.D0/2.D0*mi(45)*r25**(-2)*
     &    i1r15*rgl**2*rsq1r + 1.D0/2.D0*mi(45)*r25**(-2)*i1r15*rgl**3
     &     + 3.D0/2.D0*mi(45)*r25**(-1)*rsq1r - mi(45)*r25**(-1)*
     &    rsq1r**2 )
      e = e  + Nc**(-1)*s125**3 * ( 1.D0/2.D0*mi(45)*r25**(-1)*rgl + mi(
     &    45)*r25**(-1)*rgl**2 - 1.D0/2.D0*mi(45)*r25**(-1)*i1r15**2*
     &    rsq1r**3 + 3.D0/2.D0*mi(45)*r25**(-1)*i1r15**2*rgl*rsq1r**2
     &     - 3.D0/2.D0*mi(45)*r25**(-1)*i1r15**2*rgl**2*rsq1r + 1.D0/2.D
     &    0*mi(45)*r25**(-1)*i1r15**2*rgl**3 - 3.D0/2.D0*mi(45)*rsq1r
     &     - 1.D0/2.D0*mi(45)*rgl - 1.D0/2.D0*mi(45)*i1r15**2*i1r15r25*
     &    rsq1r**3 + 3.D0/2.D0*mi(45)*i1r15**2*i1r15r25*rgl*rsq1r**2 - 
     &    3.D0/2.D0*mi(45)*i1r15**2*i1r15r25*rgl**2*rsq1r + 1.D0/2.D0*
     &    mi(45)*i1r15**2*i1r15r25*rgl**3 + 1.D0/2.D0*mi(45)*r15*
     &    r25**(-2) - 3.D0/2.D0*mi(45)*r15*r25**(-2)*rsq1r + 3.D0/2.D0*
     &    mi(45)*r15*r25**(-2)*rsq1r**2 + 3.D0/2.D0*mi(45)*r15*
     &    r25**(-2)*rgl - 3.D0*mi(45)*r15*r25**(-2)*rgl*rsq1r + 3.D0/2.D
     &    0*mi(45)*r15*r25**(-2)*rgl**2 - mi(45)*r15*r25**(-1) - 2.D0*
     &    mi(45)*r15*r25**(-1)*rgl + 1.D0/2.D0*mi(45)*r15 - mi(45)*
     &    r15**2*r25**(-2) + 3.D0/2.D0*mi(45)*r15**2*r25**(-2)*rsq1r - 
     &    3.D0/2.D0*mi(45)*r15**2*r25**(-2)*rgl )
      e = e  + Nc**(-1)*s125**3 * ( mi(45)*r15**2*r25**(-1) + 1.D0/2.D0*
     &    mi(45)*r15**3*r25**(-2) - 1.D0/2.D0*mi(47)*r15**(-2)*rsq1r**3
     &     + 3.D0/2.D0*mi(47)*r15**(-2)*rgl*rsq1r**2 - 3.D0/2.D0*mi(47)
     &    *r15**(-2)*rgl**2*rsq1r + 1.D0/2.D0*mi(47)*r15**(-2)*rgl**3
     &     + 1.D0/2.D0*mi(47)*r15**(-2)*i1r15r25*rsq1r**3 - 3.D0/2.D0*
     &    mi(47)*r15**(-2)*i1r15r25*rgl*rsq1r**2 + 3.D0/2.D0*mi(47)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1r - 1.D0/2.D0*mi(47)*r15**(-2)*
     &    i1r15r25*rgl**3 - 1.D0/2.D0*mi(47)*r15**(-2)*r25 + 3.D0/2.D0*
     &    mi(47)*r15**(-2)*r25*rsq1r - 3.D0/2.D0*mi(47)*r15**(-2)*r25*
     &    rsq1r**2 - 3.D0/2.D0*mi(47)*r15**(-2)*r25*rgl + 3.D0*mi(47)*
     &    r15**(-2)*r25*rgl*rsq1r - 3.D0/2.D0*mi(47)*r15**(-2)*r25*
     &    rgl**2 + mi(47)*r15**(-2)*r25**2 - 3.D0/2.D0*mi(47)*r15**(-2)
     &    *r25**2*rsq1r + 3.D0/2.D0*mi(47)*r15**(-2)*r25**2*rgl - 1.D0/
     &    2.D0*mi(47)*r15**(-2)*r25**3 - 3.D0/2.D0*mi(47)*r15**(-1)*
     &    rsq1r + mi(47)*r15**(-1)*rsq1r**2 - 1.D0/2.D0*mi(47)*
     &    r15**(-1)*rgl )
      e = e  + Nc**(-1)*s125**3 * (  - mi(47)*r15**(-1)*rgl**2 + mi(47)*
     &    r15**(-1)*r25 + 2.D0*mi(47)*r15**(-1)*r25*rgl - mi(47)*
     &    r15**(-1)*r25**2 + 1.D0/2.D0*mi(47)*r25**(-2)*rsq1r**3 - 3.D0/
     &    2.D0*mi(47)*r25**(-2)*rgl*rsq1r**2 + 3.D0/2.D0*mi(47)*
     &    r25**(-2)*rgl**2*rsq1r - 1.D0/2.D0*mi(47)*r25**(-2)*rgl**3 - 
     &    1.D0/2.D0*mi(47)*r25**(-2)*i1r15*rsq1r**3 + 3.D0/2.D0*mi(47)*
     &    r25**(-2)*i1r15*rgl*rsq1r**2 - 3.D0/2.D0*mi(47)*r25**(-2)*
     &    i1r15*rgl**2*rsq1r + 1.D0/2.D0*mi(47)*r25**(-2)*i1r15*rgl**3
     &     - 3.D0/2.D0*mi(47)*r25**(-1)*rsq1r**2 + mi(47)*r25**(-1)*rgl
     &    *rsq1r + 1.D0/2.D0*mi(47)*r25**(-1)*rgl**2 - 1.D0/2.D0*mi(47)
     &    *r25**(-1)*i1r15**2*rsq1r**3 + 3.D0/2.D0*mi(47)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r**2 - 3.D0/2.D0*mi(47)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1r + 1.D0/2.D0*mi(47)*r25**(-1)*i1r15**2*rgl**3 + 3.
     &    D0/2.D0*mi(47)*rsq1r + 1.D0/2.D0*mi(47)*rgl - 1.D0/2.D0*mi(47
     &    )*i1r15**2*i1r15r25*rsq1r**3 + 3.D0/2.D0*mi(47)*i1r15**2*
     &    i1r15r25*rgl*rsq1r**2 )
      e = e  + Nc**(-1)*s125**3 * (  - 3.D0/2.D0*mi(47)*i1r15**2*
     &    i1r15r25*rgl**2*rsq1r + 1.D0/2.D0*mi(47)*i1r15**2*i1r15r25*
     &    rgl**3 - 1.D0/2.D0*mi(47)*r25 )
      e = e  + Nc * ( mi(17)*r25**(-1) + mi(17)*i1r25 - mi(19)*r25**(-1)
     &     - mi(19)*i1r25 )
      e = e  + Nc*s125 * (  - r25**(-1) - mi(21)*r15**(-1)*i1r25*rsq1r
     &     + mi(21)*r15**(-1)*i1r25*rgl - mi(21)*r25**(-1) + 2.D0*mi(21
     &    )*r25**(-1)*rsq1r - 2.D0*mi(21)*r25**(-1)*rgl + mi(21)*
     &    r25**(-1)*i1r15*rsq1r - mi(21)*r25**(-1)*i1r15*rgl - mi(21)*
     &    i1r25 + 2.D0*mi(21)*i1r25*rsq1r - 2.D0*mi(21)*i1r25*rgl + 2.D0
     &    *mi(21)*i1r25**2*rsq1r - 2.D0*mi(21)*i1r25**2*rgl - mi(25)*
     &    r25**(-1)*i1r15*rsq1r + mi(25)*r25**(-1)*i1r15*rgl + mi(27)*
     &    r15**(-1)*i1r25*rsq1r - mi(27)*r15**(-1)*i1r25*rgl - mi(27)*
     &    r25**(-1)*rsq1r + mi(27)*r25**(-1)*rgl + mi(27)*i1r25 - mi(27
     &    )*i1r25*rsq1r + mi(27)*i1r25*rgl - 2.D0*mi(27)*i1r25**2*rsq1r
     &     + 2.D0*mi(27)*i1r25**2*rgl )
      e = e  + Nc*s125**2 * ( 1.D0/2.D0*mi(31)*r15**(-1)*i1r15r25*
     &    rsq1r**2 - mi(31)*r15**(-1)*i1r15r25*rgl*rsq1r + 1.D0/2.D0*
     &    mi(31)*r15**(-1)*i1r15r25*rgl**2 + 1.D0/2.D0*mi(31)*r25**(-2)
     &    *rsq1r**2 - mi(31)*r25**(-2)*rgl*rsq1r + 1.D0/2.D0*mi(31)*
     &    r25**(-2)*rgl**2 - 1.D0/2.D0*mi(31)*r25**(-2)*i1r15*rsq1r**2
     &     + mi(31)*r25**(-2)*i1r15*rgl*rsq1r - 1.D0/2.D0*mi(31)*
     &    r25**(-2)*i1r15*rgl**2 - mi(31)*r25**(-1)*rgl + 1.D0/2.D0*mi(
     &    31)*r25**(-1)*i1r15*rsq1r**2 - mi(31)*r25**(-1)*i1r15*rgl*
     &    rsq1r + 1.D0/2.D0*mi(31)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*
     &    mi(31)*r25**(-1)*i1r15**2*rsq1r**2 + mi(31)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r - 1.D0/2.D0*mi(31)*r25**(-1)*i1r15**2*
     &    rgl**2 - mi(31)*i1r15r25*rsq1r + mi(31)*i1r15r25*rgl + 1.D0/2.
     &    D0*mi(31)*i1r15*i1r15r25*rsq1r**2 - mi(31)*i1r15*i1r15r25*rgl
     &    *rsq1r + 1.D0/2.D0*mi(31)*i1r15*i1r15r25*rgl**2 - 1.D0/2.D0*
     &    mi(31)*i1r15**2*i1r15r25*rsq1r**2 + mi(31)*i1r15**2*i1r15r25*
     &    rgl*rsq1r )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(31)*i1r15**2*i1r15r25*
     &    rgl**2 + 1.D0/2.D0*mi(31)*r15*i1r15r25 - 1.D0/2.D0*mi(35) - 1.
     &    D0/2.D0*mi(35)*r15**(-2)*rsq1r**2 + mi(35)*r15**(-2)*rgl*
     &    rsq1r - 1.D0/2.D0*mi(35)*r15**(-2)*rgl**2 + 1.D0/2.D0*mi(35)*
     &    r15**(-2)*i1r15r25*rsq1r**2 - mi(35)*r15**(-2)*i1r15r25*rgl*
     &    rsq1r + 1.D0/2.D0*mi(35)*r15**(-2)*i1r15r25*rgl**2 + mi(35)*
     &    r15**(-1)*rsq1r - mi(35)*r15**(-1)*i1r15r25*rsq1r - 1.D0/2.D0
     &    *mi(35)*r15**(-1)*i1r15r25*rsq1r**2 + mi(35)*r15**(-1)*
     &    i1r15r25*rgl + mi(35)*r15**(-1)*i1r15r25*rgl*rsq1r - 1.D0/2.D0
     &    *mi(35)*r15**(-1)*i1r15r25*rgl**2 - 1.D0/2.D0*mi(35)*
     &    r25**(-1)*i1r15*rsq1r**2 + mi(35)*r25**(-1)*i1r15*rgl*rsq1r
     &     - 1.D0/2.D0*mi(35)*r25**(-1)*i1r15*rgl**2 + 1.D0/2.D0*mi(35)
     &    *i1r15r25 + mi(35)*i1r15r25*rsq1r - mi(35)*i1r15r25*rgl - 1.D0
     &    /2.D0*mi(35)*i1r15*i1r15r25*rsq1r**2 + mi(35)*i1r15*i1r15r25*
     &    rgl*rsq1r - 1.D0/2.D0*mi(35)*i1r15*i1r15r25*rgl**2 - 1.D0/2.D0
     &    *mi(35)*r15*i1r15r25 )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(41)*r15**(-2)*i1r15r25*
     &    rsq1r**2 + mi(41)*r15**(-2)*i1r15r25*rgl*rsq1r - 1.D0/2.D0*
     &    mi(41)*r15**(-2)*i1r15r25*rgl**2 - mi(41)*r15**(-1)*r25**(-1)
     &    *rgl + mi(41)*r15**(-1)*i1r15r25*rsq1r + 1.D0/2.D0*mi(41)*
     &    r15**(-1)*i1r15r25*rsq1r**2 - mi(41)*r15**(-1)*i1r15r25*rgl
     &     - mi(41)*r15**(-1)*i1r15r25*rgl*rsq1r + 1.D0/2.D0*mi(41)*
     &    r15**(-1)*i1r15r25*rgl**2 - 1.D0/2.D0*mi(41)*r25**(-2)*
     &    rsq1r**2 + mi(41)*r25**(-2)*rgl*rsq1r - 1.D0/2.D0*mi(41)*
     &    r25**(-2)*rgl**2 + mi(41)*r25**(-1)*rgl - 1.D0/2.D0*mi(41)*
     &    r25**(-1)*i1r15*rsq1r**2 + mi(41)*r25**(-1)*i1r15*rgl*rsq1r
     &     - 1.D0/2.D0*mi(41)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*mi(41)
     &    *i1r15r25 - mi(41)*i1r15r25*rsq1r + mi(41)*i1r15r25*rgl + 1.D0
     &    /2.D0*mi(41)*i1r15*i1r15r25*rsq1r**2 - mi(41)*i1r15*i1r15r25*
     &    rgl*rsq1r + 1.D0/2.D0*mi(41)*i1r15*i1r15r25*rgl**2 + 1.D0/2.D0
     &    *mi(41)*r15*i1r15r25 - 1.D0/2.D0*mi(43) + 1.D0/2.D0*mi(43)*
     &    r15**(-2)*rsq1r**2 )
      e = e  + Nc*s125**2 * (  - mi(43)*r15**(-2)*rgl*rsq1r + 1.D0/2.D0*
     &    mi(43)*r15**(-2)*rgl**2 + mi(43)*r15**(-1)*r25**(-1)*rgl - 
     &    mi(43)*r15**(-1)*rsq1r - 1.D0/2.D0*mi(43)*r15**(-1)*i1r15r25*
     &    rsq1r**2 + mi(43)*r15**(-1)*i1r15r25*rgl*rsq1r - 1.D0/2.D0*
     &    mi(43)*r15**(-1)*i1r15r25*rgl**2 + mi(43)*r15**(-1)*i1r25*
     &    rsq1r**2 - 2.D0*mi(43)*r15**(-1)*i1r25*rgl*rsq1r + mi(43)*
     &    r15**(-1)*i1r25*rgl**2 + 1.D0/2.D0*mi(43)*r25**(-2)*i1r15*
     &    rsq1r**2 - mi(43)*r25**(-2)*i1r15*rgl*rsq1r + 1.D0/2.D0*mi(43
     &    )*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(43)*r25**(-1)*rsq1r**2 - 2.
     &    D0*mi(43)*r25**(-1)*rgl + 4.D0*mi(43)*r25**(-1)*rgl*rsq1r - 2.
     &    D0*mi(43)*r25**(-1)*rgl**2 - 1.D0/2.D0*mi(43)*r25**(-1)*i1r15
     &    *rsq1r**2 + mi(43)*r25**(-1)*i1r15*rgl*rsq1r - 1.D0/2.D0*mi(
     &    43)*r25**(-1)*i1r15*rgl**2 + 1.D0/2.D0*mi(43)*r25**(-1)*
     &    i1r15**2*rsq1r**2 - mi(43)*r25**(-1)*i1r15**2*rgl*rsq1r + 1.D0
     &    /2.D0*mi(43)*r25**(-1)*i1r15**2*rgl**2 + mi(43)*i1r15r25*
     &    rsq1r )
      e = e  + Nc*s125**2 * (  - mi(43)*i1r15r25*rgl + 2.D0*mi(43)*i1r25
     &    *rsq1r - 2.D0*mi(43)*i1r25*rsq1r**2 - 2.D0*mi(43)*i1r25*rgl
     &     + 4.D0*mi(43)*i1r25*rgl*rsq1r - 2.D0*mi(43)*i1r25*rgl**2 - 2.
     &    D0*mi(43)*i1r25**2*rsq1r**2 + 4.D0*mi(43)*i1r25**2*rgl*rsq1r
     &     - 2.D0*mi(43)*i1r25**2*rgl**2 - 1.D0/2.D0*mi(43)*i1r15*
     &    i1r15r25*rsq1r**2 + mi(43)*i1r15*i1r15r25*rgl*rsq1r - 1.D0/2.D
     &    0*mi(43)*i1r15*i1r15r25*rgl**2 + 1.D0/2.D0*mi(43)*i1r15**2*
     &    i1r15r25*rsq1r**2 - mi(43)*i1r15**2*i1r15r25*rgl*rsq1r + 1.D0/
     &    2.D0*mi(43)*i1r15**2*i1r15r25*rgl**2 - 1.D0/2.D0*mi(43)*r15*
     &    i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(49)*r15**(-2)*rsq1r**3 + 3.
     &    D0/2.D0*mi(49)*r15**(-2)*rgl*rsq1r**2 - 3.D0/2.D0*mi(49)*
     &    r15**(-2)*rgl**2*rsq1r + 1.D0/2.D0*mi(49)*r15**(-2)*rgl**3 + 
     &    1.D0/2.D0*mi(49)*r15**(-2)*i1r15r25*rsq1r**3 - 3.D0/2.D0*mi(
     &    49)*r15**(-2)*i1r15r25*rgl*rsq1r**2 + 3.D0/2.D0*mi(49)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1r - 1.D0/2.D0*mi(49)*r15**(-2)*
     &    i1r15r25*rgl**3 + 3.D0/2.D0*mi(49)*r15**(-1)*rsq1r**2 - mi(49
     &    )*r15**(-1)*rgl*rsq1r - 1.D0/2.D0*mi(49)*r15**(-1)*rgl**2 - 3.
     &    D0/2.D0*mi(49)*r15**(-1)*i1r15r25*rsq1r**2 + 3.D0*mi(49)*
     &    r15**(-1)*i1r15r25*rgl*rsq1r - 3.D0/2.D0*mi(49)*r15**(-1)*
     &    i1r15r25*rgl**2 + 1.D0/2.D0*mi(49)*r25**(-2)*rsq1r**3 - 3.D0/
     &    2.D0*mi(49)*r25**(-2)*rgl*rsq1r**2 + 3.D0/2.D0*mi(49)*
     &    r25**(-2)*rgl**2*rsq1r - 1.D0/2.D0*mi(49)*r25**(-2)*rgl**3 - 
     &    1.D0/2.D0*mi(49)*r25**(-2)*i1r15*rsq1r**3 + 3.D0/2.D0*mi(49)*
     &    r25**(-2)*i1r15*rgl*rsq1r**2 - 3.D0/2.D0*mi(49)*r25**(-2)*
     &    i1r15*rgl**2*rsq1r )
      e = e  + Nc*s125**3 * ( 1.D0/2.D0*mi(49)*r25**(-2)*i1r15*rgl**3 - 
     &    1.D0/2.D0*mi(49)*r25**(-1)*rsq1r**2 - mi(49)*r25**(-1)*rgl*
     &    rsq1r + 3.D0/2.D0*mi(49)*r25**(-1)*rgl**2 + 1.D0/2.D0*mi(49)*
     &    r25**(-1)*i1r15*rsq1r**2 - mi(49)*r25**(-1)*i1r15*rgl*rsq1r
     &     + 1.D0/2.D0*mi(49)*r25**(-1)*i1r15*rgl**2 - 1.D0/2.D0*mi(49)
     &    *r25**(-1)*i1r15**2*rsq1r**3 + 3.D0/2.D0*mi(49)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r**2 - 3.D0/2.D0*mi(49)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1r + 1.D0/2.D0*mi(49)*r25**(-1)*i1r15**2*rgl**3 - 3.
     &    D0/2.D0*mi(49)*rsq1r - 1.D0/2.D0*mi(49)*rgl + 3.D0/2.D0*mi(49
     &    )*i1r15r25*rsq1r - 3.D0/2.D0*mi(49)*i1r15r25*rgl + 1.D0/2.D0*
     &    mi(49)*i1r15*i1r15r25*rsq1r**2 - mi(49)*i1r15*i1r15r25*rgl*
     &    rsq1r + 1.D0/2.D0*mi(49)*i1r15*i1r15r25*rgl**2 - 1.D0/2.D0*
     &    mi(49)*i1r15**2*i1r15r25*rsq1r**3 + 3.D0/2.D0*mi(49)*i1r15**2
     &    *i1r15r25*rgl*rsq1r**2 - 3.D0/2.D0*mi(49)*i1r15**2*i1r15r25*
     &    rgl**2*rsq1r + 1.D0/2.D0*mi(49)*i1r15**2*i1r15r25*rgl**3 + 1.D
     &    0/2.D0*mi(49)*r15 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(49)*r15*i1r15r25 - mi(49)*
     &    r15*i1r15r25*rsq1r + mi(49)*r15*i1r15r25*rgl + 1.D0/2.D0*mi(
     &    49)*r15**2*i1r15r25 )

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

      e =  + Nc**(-1)*s125**(-1) * (  - mi(18)*r15**(-2)*rsq1l**(-1) + 
     &    2.D0*mi(18)*r15**(-2)*i1r15r25*rsq1l**(-1) - 2.D0*mi(18)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l**(-1) - mi(18)*r15**(-2)*
     &    i1r15r25**2*rsq1l**(-1) + 2.D0*mi(18)*r15**(-2)*i1r15r25**2*
     &    rgl*rsq1l**(-1) + 2.D0*mi(18)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1l**(-1) + 2.D0*mi(18)*r25**(-1)*i1r15**2*rgl*rsq1l**(-1)
     &     + 2.D0*mi(18)*i1r15*i1r15r25**2*rgl*rsq1l**(-1) + 2.D0*mi(18
     &    )*i1r15**2*i1r15r25*rgl*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*
     &    r15**(-2) - 4.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*rgl*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25 + 
     &    4.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl*rsq1l**(-1)
     &     + 2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl - 4.D0/(
     &    rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2*rsq1l**(-1) + 
     &    1/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2 - 2.D0/(rsq1l - 
     &    rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl + 4.D0/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*i1r15r25**2*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25**2*rgl + 4.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)
     &    *mi(18)*r25**(-1)*i1r15**2*rgl + 4.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*
     &    mi(18)*i1r15*i1r15r25**2*rgl + 4.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15*i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(
     &    18)*i1r15**2*i1r15r25*rgl + 4.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25*rgl**2*rsq1l**(-1) + 3.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-2)*rgl - 3.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2*
     &    rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*i1r15r25*rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*i1r15r25**2*rgl + 1/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25**2*rgl**3*rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl**3*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-1)*i1r15**2*rgl**3*rsq1l**(-1) - 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl**2 + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl**3*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25*rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**2*i1r15r25*rgl**3*rsq1l**(-1) )

      gcoeffarr(aa11,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa11,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  + Nc**(-1)*s125**(-1) * ( 4.D0*mi(17)*r15**(-2)*i1r25 + 6.D0
     &    *mi(17)*r15**(-1)*i1r25**2 - 4.D0*mi(18)*r15**(-3)*
     &    rsq1l**(-1) + 4.D0*mi(18)*r15**(-3)*rgl*rsq1l**(-1) + 5.D0*
     &    mi(18)*r15**(-3)*i1r15r25*rsq1l**(-1) - 8.D0*mi(18)*r15**(-3)
     &    *i1r15r25*rgl*rsq1l**(-1) - mi(18)*r15**(-3)*i1r15r25**2*
     &    rsq1l**(-1) + 4.D0*mi(18)*r15**(-3)*i1r15r25**2*rgl*
     &    rsq1l**(-1) - 3.D0*mi(18)*r15**(-3)*r25*rsq1l**(-1) - mi(18)*
     &    r15**(-2)*rsq1l**(-1) - 3.D0*mi(18)*r15**(-2)*i1r15r25*
     &    rsq1l**(-1) + mi(18)*r15**(-2)*i1r15r25**2*rsq1l**(-1) - 4.D0
     &    *mi(18)*r15**(-2)*i1r25 - 6.D0*mi(18)*r15**(-1)*i1r25**2 + 4.D
     &    0/(rsq1l - rgl)*mi(18)*r15**(-3) - 6.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-3)*rgl*rsq1l**(-1) - 4.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-3)*rgl + 6.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*rgl**2*
     &    rsq1l**(-1) - 5.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*i1r15r25 + 
     &    6.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*i1r15r25*rgl*rsq1l**(-1)
     &     + 8.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 12.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-3)*i1r15r25*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18
     &    )*r15**(-3)*i1r15r25**2 - 4.D0/(rsq1l - rgl)*mi(18)*r15**(-3)
     &    *i1r15r25**2*rgl + 6.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) + 3.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-3)*r25 - 6.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*r25*rgl*
     &    rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*r15**(-2) - 1/(rsq1l - 
     &    rgl)*mi(18)*r15**(-2)*rgl*rsq1l**(-1) + 3.D0/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*i1r15r25 - 5.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r15**(-3)*rgl - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-3)*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-3)*rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-3)*rgl**3*rsq1l**(-1) - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-3)*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r15**(-3)*i1r15r25*rgl**2*rsq1l**(-1) + 4.D0/(rsq1l - rgl
     &    )/(rsq1l - rgl)*mi(18)*r15**(-3)*i1r15r25*rgl**2 - 4.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*i1r15r25*rgl**3*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*
     &    i1r15r25**2*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-3)*i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*r15**(-3)*i1r15r25**2*rgl**2 + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*i1r15r25**2*
     &    rgl**3*rsq1l**(-1) + 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-3)*r25*rgl - 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-3)*r25*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl - 2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2*rsq1l**(-1) + 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2*
     &    rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*i1r15r25**2*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1) * (  - 2.D0*r15**(-1)*i1r25 - 4.D0*mi(20)*
     &    r15**(-3)*i1r15r25*rsq1l + 4.D0*mi(20)*r15**(-3)*i1r15r25*rgl
     &     + 4.D0*mi(20)*r15**(-3)*i1r25*rsq1l - 4.D0*mi(20)*r15**(-3)*
     &    i1r25*rgl - 4.D0*mi(20)*r15**(-2)*i1r25 - 4.D0*mi(20)*
     &    r15**(-2)*i1r25*rsq1l + 4.D0*mi(20)*r15**(-2)*i1r25*rgl + 8.D0
     &    *mi(20)*r15**(-2)*i1r25**2*rsq1l - 8.D0*mi(20)*r15**(-2)*
     &    i1r25**2*rgl - 2.D0*mi(20)*r15**(-1)*i1r25**2 - 4.D0*mi(20)*
     &    r15**(-1)*i1r25**2*rsq1l + 4.D0*mi(20)*r15**(-1)*i1r25**2*rgl
     &     + 12.D0*mi(20)*r15**(-1)*i1r25**3*rsq1l - 12.D0*mi(20)*
     &    r15**(-1)*i1r25**3*rgl + 4.D0*mi(22)*r15**(-2) + 4.D0*mi(24)*
     &    r15**(-2)*i1r15r25*rsq1l - 4.D0*mi(24)*r15**(-2)*i1r15r25*rgl
     &     + 4.D0*mi(26)*r15**(-3)*i1r15r25*rsq1l - 4.D0*mi(26)*
     &    r15**(-3)*i1r15r25*rgl - 4.D0*mi(26)*r15**(-3)*i1r25*rsq1l + 
     &    4.D0*mi(26)*r15**(-3)*i1r25*rgl - 4.D0*mi(26)*r15**(-2) - 4.D0
     &    *mi(26)*r15**(-2)*i1r15r25*rsq1l + 4.D0*mi(26)*r15**(-2)*
     &    i1r15r25*rgl )
      e = e  + Nc**(-1) * ( 4.D0*mi(26)*r15**(-2)*i1r25 + 8.D0*mi(26)*
     &    r15**(-2)*i1r25*rsq1l - 8.D0*mi(26)*r15**(-2)*i1r25*rgl - 8.D0
     &    *mi(26)*r15**(-2)*i1r25**2*rsq1l + 8.D0*mi(26)*r15**(-2)*
     &    i1r25**2*rgl + 2.D0*mi(26)*r15**(-1)*i1r25**2 + 10.D0*mi(26)*
     &    r15**(-1)*i1r25**2*rsq1l - 10.D0*mi(26)*r15**(-1)*i1r25**2*
     &    rgl - 12.D0*mi(26)*r15**(-1)*i1r25**3*rsq1l + 12.D0*mi(26)*
     &    r15**(-1)*i1r25**3*rgl )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(28)*r15**(-3)*r25 - 4.D0*mi(28)
     &    *r15**(-3)*r25*rsq1l + 4.D0*mi(28)*r15**(-3)*r25*rgl - 2.D0*
     &    mi(28)*r15**(-3)*r25**2 + mi(28)*r15**(-2) - 2.D0*mi(28)*
     &    r15**(-2)*rsq1l + 2.D0*mi(28)*r15**(-2)*rgl - 3.D0*mi(28)*
     &    r15**(-2)*r25 - mi(28)*r15**(-1) - 2.D0*mi(32)*r15**(-2)*
     &    i1r15r25*rsq1l**2 + 4.D0*mi(32)*r15**(-2)*i1r15r25*rgl*rsq1l
     &     - 2.D0*mi(32)*r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(32)*
     &    r15**(-2)*i1r15r25**2*rsq1l**2 - 4.D0*mi(32)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l + 2.D0*mi(32)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + mi(32)*r15**(-1)*i1r15r25*rsq1l + mi(32)*r15**(-1)*
     &    i1r15r25*rgl + 4.D0*mi(36)*r15**(-3)*rsq1l + 2.D0*mi(36)*
     &    r15**(-3)*rsq1l**2 - 4.D0*mi(36)*r15**(-3)*rgl - 4.D0*mi(36)*
     &    r15**(-3)*rgl*rsq1l + 2.D0*mi(36)*r15**(-3)*rgl**2 - 4.D0*mi(
     &    36)*r15**(-3)*i1r15r25*rsq1l - 4.D0*mi(36)*r15**(-3)*i1r15r25
     &    *rsq1l**2 + 4.D0*mi(36)*r15**(-3)*i1r15r25*rgl + 8.D0*mi(36)*
     &    r15**(-3)*i1r15r25*rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(36)*r15**(-3)*i1r15r25*
     &    rgl**2 + 2.D0*mi(36)*r15**(-3)*i1r15r25**2*rsq1l**2 - 4.D0*
     &    mi(36)*r15**(-3)*i1r15r25**2*rgl*rsq1l + 2.D0*mi(36)*
     &    r15**(-3)*i1r15r25**2*rgl**2 + 4.D0*mi(36)*r15**(-3)*r25*
     &    rsq1l - 4.D0*mi(36)*r15**(-3)*r25*rgl + 2.D0*mi(36)*r15**(-3)
     &    *r25**2 - 3.D0*mi(36)*r15**(-2)*rsq1l + mi(36)*r15**(-2)*rgl
     &     + 7.D0*mi(36)*r15**(-2)*i1r15r25*rsq1l + 2.D0*mi(36)*
     &    r15**(-2)*i1r15r25*rsq1l**2 - 5.D0*mi(36)*r15**(-2)*i1r15r25*
     &    rgl - 4.D0*mi(36)*r15**(-2)*i1r15r25*rgl*rsq1l + 2.D0*mi(36)*
     &    r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(36)*r15**(-2)*i1r15r25**2
     &    *rsq1l**2 + 4.D0*mi(36)*r15**(-2)*i1r15r25**2*rgl*rsq1l - 2.D0
     &    *mi(36)*r15**(-2)*i1r15r25**2*rgl**2 + mi(36)*r15**(-2)*r25
     &     - 3.D0*mi(36)*r15**(-1)*i1r15r25*rsq1l + mi(36)*r15**(-1)*
     &    i1r15r25*rgl - 4.D0*mi(38)*r15**(-3)*rsq1l - 4.D0*mi(38)*
     &    r15**(-3)*rsq1l**2 + 4.D0*mi(38)*r15**(-3)*rgl + 8.D0*mi(38)*
     &    r15**(-3)*rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(38)*r15**(-3)*rgl**2 + 4.D0*
     &    mi(38)*r15**(-3)*i1r15r25*rsq1l + 8.D0*mi(38)*r15**(-3)*
     &    i1r15r25*rsq1l**2 - 4.D0*mi(38)*r15**(-3)*i1r15r25*rgl - 16.D0
     &    *mi(38)*r15**(-3)*i1r15r25*rgl*rsq1l + 8.D0*mi(38)*r15**(-3)*
     &    i1r15r25*rgl**2 - 4.D0*mi(38)*r15**(-3)*i1r15r25**2*rsq1l**2
     &     + 8.D0*mi(38)*r15**(-3)*i1r15r25**2*rgl*rsq1l - 4.D0*mi(38)*
     &    r15**(-3)*i1r15r25**2*rgl**2 - 4.D0*mi(38)*r15**(-3)*r25*
     &    rsq1l + 4.D0*mi(38)*r15**(-3)*r25*rgl - 2.D0*mi(38)*r15**(-3)
     &    *r25**2 + 4.D0*mi(38)*r15**(-2)*rgl - 4.D0*mi(38)*r15**(-2)*
     &    i1r15r25*rsq1l - 3.D0*mi(38)*r15**(-2)*r25 - mi(38)*r15**(-1)
     &     - 2.D0*mi(40)*r15**(-3)*i1r15r25*rsq1l**2 + 4.D0*mi(40)*
     &    r15**(-3)*i1r15r25*rgl*rsq1l - 2.D0*mi(40)*r15**(-3)*i1r15r25
     &    *rgl**2 + 2.D0*mi(40)*r15**(-3)*i1r15r25**2*rsq1l**2 - 4.D0*
     &    mi(40)*r15**(-3)*i1r15r25**2*rgl*rsq1l + 2.D0*mi(40)*
     &    r15**(-3)*i1r15r25**2*rgl**2 + mi(40)*r15**(-2)*i1r15r25*
     &    rsq1l )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(40)*r15**(-2)*i1r15r25*rsq1l**2
     &     + mi(40)*r15**(-2)*i1r15r25*rgl - 4.D0*mi(40)*r15**(-2)*
     &    i1r15r25*rgl*rsq1l + 2.D0*mi(40)*r15**(-2)*i1r15r25*rgl**2 - 
     &    2.D0*mi(40)*r15**(-2)*i1r15r25**2*rsq1l**2 + 4.D0*mi(40)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1l - 2.D0*mi(40)*r15**(-2)*
     &    i1r15r25**2*rgl**2 - mi(40)*r15**(-1)*i1r15r25*rsq1l - mi(40)
     &    *r15**(-1)*i1r15r25*rgl + 2.D0*mi(42)*r15**(-3)*rsq1l**2 - 4.D
     &    0*mi(42)*r15**(-3)*rgl*rsq1l + 2.D0*mi(42)*r15**(-3)*rgl**2
     &     + 2.D0*mi(42)*r15**(-3)*i1r15r25*rsq1l**2 - 4.D0*mi(42)*
     &    r15**(-3)*i1r15r25*rgl*rsq1l + 2.D0*mi(42)*r15**(-3)*i1r15r25
     &    *rgl**2 - 4.D0*mi(42)*r15**(-3)*i1r25*rsq1l**2 + 8.D0*mi(42)*
     &    r15**(-3)*i1r25*rgl*rsq1l - 4.D0*mi(42)*r15**(-3)*i1r25*
     &    rgl**2 - 2.D0*mi(42)*r15**(-3)*r25 + 4.D0*mi(42)*r15**(-3)*
     &    r25*rsq1l - 4.D0*mi(42)*r15**(-3)*r25*rgl + 2.D0*mi(42)*
     &    r15**(-3)*r25**2 - mi(42)*r15**(-2) - 3.D0*mi(42)*r15**(-2)*
     &    rsq1l )
      e = e  + Nc**(-1)*s125 * ( mi(42)*r15**(-2)*rgl - 4.D0*mi(42)*
     &    r15**(-2)*i1r15r25*rsq1l - 2.D0*mi(42)*r15**(-2)*i1r15r25*
     &    rsq1l**2 + 4.D0*mi(42)*r15**(-2)*i1r15r25*rgl + 4.D0*mi(42)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l - 2.D0*mi(42)*r15**(-2)*i1r15r25
     &    *rgl**2 + 2.D0*mi(42)*r15**(-2)*i1r15r25**2*rsq1l**2 - 4.D0*
     &    mi(42)*r15**(-2)*i1r15r25**2*rgl*rsq1l + 2.D0*mi(42)*
     &    r15**(-2)*i1r15r25**2*rgl**2 + 8.D0*mi(42)*r15**(-2)*i1r25*
     &    rsq1l + 4.D0*mi(42)*r15**(-2)*i1r25*rsq1l**2 - 8.D0*mi(42)*
     &    r15**(-2)*i1r25*rgl - 8.D0*mi(42)*r15**(-2)*i1r25*rgl*rsq1l
     &     + 4.D0*mi(42)*r15**(-2)*i1r25*rgl**2 - 8.D0*mi(42)*r15**(-2)
     &    *i1r25**2*rsq1l**2 + 16.D0*mi(42)*r15**(-2)*i1r25**2*rgl*
     &    rsq1l - 8.D0*mi(42)*r15**(-2)*i1r25**2*rgl**2 + mi(42)*
     &    r15**(-2)*r25 + 3.D0*mi(42)*r15**(-1)*i1r15r25*rsq1l - mi(42)
     &    *r15**(-1)*i1r15r25*rgl - 6.D0*mi(42)*r15**(-1)*i1r25*rsq1l
     &     + 2.D0*mi(42)*r15**(-1)*i1r25*rgl + 8.D0*mi(42)*r15**(-1)*
     &    i1r25**2*rsq1l )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(42)*r15**(-1)*i1r25**2*rsq1l**2
     &     - 8.D0*mi(42)*r15**(-1)*i1r25**2*rgl - 8.D0*mi(42)*r15**(-1)
     &    *i1r25**2*rgl*rsq1l + 4.D0*mi(42)*r15**(-1)*i1r25**2*rgl**2
     &     - 12.D0*mi(42)*r15**(-1)*i1r25**3*rsq1l**2 + 24.D0*mi(42)*
     &    r15**(-1)*i1r25**3*rgl*rsq1l - 12.D0*mi(42)*r15**(-1)*
     &    i1r25**3*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(44)*r15**(-3)*rsq1l**3 - 6.D0
     &    *mi(44)*r15**(-3)*rgl*rsq1l**2 + 6.D0*mi(44)*r15**(-3)*rgl**2
     &    *rsq1l - 2.D0*mi(44)*r15**(-3)*rgl**3 - 4.D0*mi(44)*r15**(-3)
     &    *i1r15r25*rsq1l**3 + 12.D0*mi(44)*r15**(-3)*i1r15r25*rgl*
     &    rsq1l**2 - 12.D0*mi(44)*r15**(-3)*i1r15r25*rgl**2*rsq1l + 4.D0
     &    *mi(44)*r15**(-3)*i1r15r25*rgl**3 + 2.D0*mi(44)*r15**(-3)*
     &    i1r15r25**2*rsq1l**3 - 6.D0*mi(44)*r15**(-3)*i1r15r25**2*rgl*
     &    rsq1l**2 + 6.D0*mi(44)*r15**(-3)*i1r15r25**2*rgl**2*rsq1l - 2.
     &    D0*mi(44)*r15**(-3)*i1r15r25**2*rgl**3 - 3.D0*mi(44)*
     &    r15**(-2)*rsq1l**2 + 3.D0*mi(44)*r15**(-2)*rgl**2 + 3.D0*mi(
     &    44)*r15**(-2)*i1r15r25*rsq1l**2 - 3.D0*mi(44)*r15**(-2)*
     &    i1r15r25*rgl**2 + mi(44)*r15**(-1)*rsq1l - mi(44)*r15**(-1)*
     &    rgl - 4.D0*mi(44)*r15**(-1)*i1r15r25*rsq1l**2 + 4.D0*mi(44)*
     &    r15**(-1)*i1r15r25*rgl*rsq1l + 6.D0*mi(46)*r15**(-3)*rsq1l**2
     &     + 2.D0*mi(46)*r15**(-3)*rsq1l**3 - 12.D0*mi(46)*r15**(-3)*
     &    rgl*rsq1l )
      e = e  + Nc**(-1)*s125**2 * (  - 6.D0*mi(46)*r15**(-3)*rgl*
     &    rsq1l**2 + 6.D0*mi(46)*r15**(-3)*rgl**2 + 6.D0*mi(46)*
     &    r15**(-3)*rgl**2*rsq1l - 2.D0*mi(46)*r15**(-3)*rgl**3 - 6.D0*
     &    mi(46)*r15**(-3)*i1r15r25*rsq1l**2 - 4.D0*mi(46)*r15**(-3)*
     &    i1r15r25*rsq1l**3 + 12.D0*mi(46)*r15**(-3)*i1r15r25*rgl*rsq1l
     &     + 12.D0*mi(46)*r15**(-3)*i1r15r25*rgl*rsq1l**2 - 6.D0*mi(46)
     &    *r15**(-3)*i1r15r25*rgl**2 - 12.D0*mi(46)*r15**(-3)*i1r15r25*
     &    rgl**2*rsq1l + 4.D0*mi(46)*r15**(-3)*i1r15r25*rgl**3 + 2.D0*
     &    mi(46)*r15**(-3)*i1r15r25**2*rsq1l**3 - 6.D0*mi(46)*r15**(-3)
     &    *i1r15r25**2*rgl*rsq1l**2 + 6.D0*mi(46)*r15**(-3)*i1r15r25**2
     &    *rgl**2*rsq1l - 2.D0*mi(46)*r15**(-3)*i1r15r25**2*rgl**3 + 6.D
     &    0*mi(46)*r15**(-3)*r25*rsq1l**2 - 12.D0*mi(46)*r15**(-3)*r25*
     &    rgl*rsq1l + 6.D0*mi(46)*r15**(-3)*r25*rgl**2 - 2.D0*mi(46)*
     &    r15**(-3)*r25**2 + 6.D0*mi(46)*r15**(-3)*r25**2*rsq1l - 6.D0*
     &    mi(46)*r15**(-3)*r25**2*rgl + 2.D0*mi(46)*r15**(-3)*r25**3 - 
     &    3.D0*mi(46)*r15**(-2)*rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(46)*r15**(-2)*rgl**2 + 9.D0*
     &    mi(46)*r15**(-2)*i1r15r25*rsq1l**2 - 12.D0*mi(46)*r15**(-2)*
     &    i1r15r25*rgl*rsq1l + 3.D0*mi(46)*r15**(-2)*i1r15r25*rgl**2 - 
     &    mi(46)*r15**(-2)*r25 - 6.D0*mi(46)*r15**(-2)*r25*rgl + 3.D0*
     &    mi(46)*r15**(-2)*r25**2 - mi(46)*r15**(-1)*rsq1l - mi(46)*
     &    r15**(-1)*rgl - 4.D0*mi(46)*r15**(-1)*i1r15r25*rsq1l**2 + 4.D0
     &    *mi(46)*r15**(-1)*i1r15r25*rgl*rsq1l + mi(46)*r15**(-1)*r25 )
      e = e  + Nc*s125**(-1) * (  - 4.D0*mi(17)*r15**(-2)*i1r25 - 6.D0*
     &    mi(17)*r15**(-1)*i1r25**2 + 4.D0*mi(18)*r15**(-2)*i1r25 + 6.D0
     &    *mi(18)*r15**(-1)*i1r25**2 )
      e = e  + Nc * ( 2.D0*r15**(-1)*i1r25 + 4.D0*mi(20)*r15**(-3)*
     &    i1r15r25*rsq1l - 4.D0*mi(20)*r15**(-3)*i1r15r25*rgl - 4.D0*
     &    mi(20)*r15**(-3)*i1r25*rsq1l + 4.D0*mi(20)*r15**(-3)*i1r25*
     &    rgl + 4.D0*mi(20)*r15**(-2)*i1r25*rsq1l - 4.D0*mi(20)*
     &    r15**(-2)*i1r25*rgl - 8.D0*mi(20)*r15**(-2)*i1r25**2*rsq1l + 
     &    8.D0*mi(20)*r15**(-2)*i1r25**2*rgl + 2.D0*mi(20)*r15**(-1)*
     &    i1r25**2 + 4.D0*mi(20)*r15**(-1)*i1r25**2*rsq1l - 4.D0*mi(20)
     &    *r15**(-1)*i1r25**2*rgl - 12.D0*mi(20)*r15**(-1)*i1r25**3*
     &    rsq1l + 12.D0*mi(20)*r15**(-1)*i1r25**3*rgl - 4.D0*mi(24)*
     &    r15**(-2)*i1r15r25*rsq1l + 4.D0*mi(24)*r15**(-2)*i1r15r25*rgl
     &     - 4.D0*mi(26)*r15**(-3)*i1r15r25*rsq1l + 4.D0*mi(26)*
     &    r15**(-3)*i1r15r25*rgl + 4.D0*mi(26)*r15**(-3)*i1r25*rsq1l - 
     &    4.D0*mi(26)*r15**(-3)*i1r25*rgl + 4.D0*mi(26)*r15**(-2)*
     &    i1r15r25*rsq1l - 4.D0*mi(26)*r15**(-2)*i1r15r25*rgl - 8.D0*
     &    mi(26)*r15**(-2)*i1r25*rsq1l + 8.D0*mi(26)*r15**(-2)*i1r25*
     &    rgl )
      e = e  + Nc * ( 8.D0*mi(26)*r15**(-2)*i1r25**2*rsq1l - 8.D0*mi(26)
     &    *r15**(-2)*i1r25**2*rgl - 2.D0*mi(26)*r15**(-1)*i1r25**2 - 10.
     &    D0*mi(26)*r15**(-1)*i1r25**2*rsq1l + 10.D0*mi(26)*r15**(-1)*
     &    i1r25**2*rgl + 12.D0*mi(26)*r15**(-1)*i1r25**3*rsq1l - 12.D0*
     &    mi(26)*r15**(-1)*i1r25**3*rgl )
      e = e  + Nc*s125 * (  - 2.D0*mi(30)*r15**(-2)*i1r15r25*rsq1l**2 + 
     &    4.D0*mi(30)*r15**(-2)*i1r15r25*rgl*rsq1l - 2.D0*mi(30)*
     &    r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(30)*r15**(-2)*i1r15r25**2
     &    *rsq1l**2 - 4.D0*mi(30)*r15**(-2)*i1r15r25**2*rgl*rsq1l + 2.D0
     &    *mi(30)*r15**(-2)*i1r15r25**2*rgl**2 + mi(30)*r15**(-1)*
     &    i1r15r25*rsq1l + mi(30)*r15**(-1)*i1r15r25*rgl - 2.D0*mi(30)*
     &    r15**(-1)*i1r15r25**2*rsq1l + 2.D0*mi(30)*r15**(-1)*
     &    i1r15r25**2*rgl + 2.D0*mi(30)*i1r15r25**2*rsq1l - 2.D0*mi(30)
     &    *i1r15r25**2*rgl + 2.D0*mi(34)*r15**(-3)*rsq1l**2 - 4.D0*mi(
     &    34)*r15**(-3)*rgl*rsq1l + 2.D0*mi(34)*r15**(-3)*rgl**2 - 4.D0
     &    *mi(34)*r15**(-3)*i1r15r25*rsq1l**2 + 8.D0*mi(34)*r15**(-3)*
     &    i1r15r25*rgl*rsq1l - 4.D0*mi(34)*r15**(-3)*i1r15r25*rgl**2 + 
     &    2.D0*mi(34)*r15**(-3)*i1r15r25**2*rsq1l**2 - 4.D0*mi(34)*
     &    r15**(-3)*i1r15r25**2*rgl*rsq1l + 2.D0*mi(34)*r15**(-3)*
     &    i1r15r25**2*rgl**2 - mi(34)*r15**(-2)*rsq1l - mi(34)*
     &    r15**(-2)*rgl )
      e = e  + Nc*s125 * ( 3.D0*mi(34)*r15**(-2)*i1r15r25*rsq1l + 2.D0*
     &    mi(34)*r15**(-2)*i1r15r25*rsq1l**2 - mi(34)*r15**(-2)*
     &    i1r15r25*rgl - 4.D0*mi(34)*r15**(-2)*i1r15r25*rgl*rsq1l + 2.D0
     &    *mi(34)*r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(34)*r15**(-2)*
     &    i1r15r25**2*rsq1l - 2.D0*mi(34)*r15**(-2)*i1r15r25**2*
     &    rsq1l**2 + 2.D0*mi(34)*r15**(-2)*i1r15r25**2*rgl + 4.D0*mi(34
     &    )*r15**(-2)*i1r15r25**2*rgl*rsq1l - 2.D0*mi(34)*r15**(-2)*
     &    i1r15r25**2*rgl**2 - 3.D0*mi(34)*r15**(-1)*i1r15r25*rsq1l + 
     &    mi(34)*r15**(-1)*i1r15r25*rgl + 4.D0*mi(34)*r15**(-1)*
     &    i1r15r25**2*rsq1l - 4.D0*mi(34)*r15**(-1)*i1r15r25**2*rgl - 2.
     &    D0*mi(34)*i1r15r25**2*rsq1l + 2.D0*mi(34)*i1r15r25**2*rgl + 2.
     &    D0*mi(40)*r15**(-3)*i1r15r25*rsq1l**2 - 4.D0*mi(40)*r15**(-3)
     &    *i1r15r25*rgl*rsq1l + 2.D0*mi(40)*r15**(-3)*i1r15r25*rgl**2
     &     - 2.D0*mi(40)*r15**(-3)*i1r15r25**2*rsq1l**2 + 4.D0*mi(40)*
     &    r15**(-3)*i1r15r25**2*rgl*rsq1l - 2.D0*mi(40)*r15**(-3)*
     &    i1r15r25**2*rgl**2 )
      e = e  + Nc*s125 * (  - mi(40)*r15**(-2)*i1r15r25*rsq1l - 2.D0*mi(
     &    40)*r15**(-2)*i1r15r25*rsq1l**2 - mi(40)*r15**(-2)*i1r15r25*
     &    rgl + 4.D0*mi(40)*r15**(-2)*i1r15r25*rgl*rsq1l - 2.D0*mi(40)*
     &    r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(40)*r15**(-2)*i1r15r25**2
     &    *rsq1l + 2.D0*mi(40)*r15**(-2)*i1r15r25**2*rsq1l**2 - 2.D0*
     &    mi(40)*r15**(-2)*i1r15r25**2*rgl - 4.D0*mi(40)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l + 2.D0*mi(40)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + mi(40)*r15**(-1)*i1r15r25*rsq1l + mi(40)*r15**(-1)*
     &    i1r15r25*rgl - 4.D0*mi(40)*r15**(-1)*i1r15r25**2*rsq1l + 4.D0
     &    *mi(40)*r15**(-1)*i1r15r25**2*rgl + 2.D0*mi(40)*i1r15r25**2*
     &    rsq1l - 2.D0*mi(40)*i1r15r25**2*rgl - 2.D0*mi(42)*r15**(-3)*
     &    rsq1l**2 + 4.D0*mi(42)*r15**(-3)*rgl*rsq1l - 2.D0*mi(42)*
     &    r15**(-3)*rgl**2 - 2.D0*mi(42)*r15**(-3)*i1r15r25*rsq1l**2 + 
     &    4.D0*mi(42)*r15**(-3)*i1r15r25*rgl*rsq1l - 2.D0*mi(42)*
     &    r15**(-3)*i1r15r25*rgl**2 + 4.D0*mi(42)*r15**(-3)*i1r25*
     &    rsq1l**2 )
      e = e  + Nc*s125 * (  - 8.D0*mi(42)*r15**(-3)*i1r25*rgl*rsq1l + 4.D
     &    0*mi(42)*r15**(-3)*i1r25*rgl**2 + mi(42)*r15**(-2)*rsq1l + 
     &    mi(42)*r15**(-2)*rgl + 2.D0*mi(42)*r15**(-2)*i1r15r25*rsq1l
     &     + 2.D0*mi(42)*r15**(-2)*i1r15r25*rsq1l**2 - 2.D0*mi(42)*
     &    r15**(-2)*i1r15r25*rgl - 4.D0*mi(42)*r15**(-2)*i1r15r25*rgl*
     &    rsq1l + 2.D0*mi(42)*r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(42)*
     &    r15**(-2)*i1r15r25**2*rsq1l**2 + 4.D0*mi(42)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l - 2.D0*mi(42)*r15**(-2)*i1r15r25**2*
     &    rgl**2 - 4.D0*mi(42)*r15**(-2)*i1r25*rsq1l - 4.D0*mi(42)*
     &    r15**(-2)*i1r25*rsq1l**2 + 4.D0*mi(42)*r15**(-2)*i1r25*rgl + 
     &    8.D0*mi(42)*r15**(-2)*i1r25*rgl*rsq1l - 4.D0*mi(42)*r15**(-2)
     &    *i1r25*rgl**2 + 8.D0*mi(42)*r15**(-2)*i1r25**2*rsq1l**2 - 16.D
     &    0*mi(42)*r15**(-2)*i1r25**2*rgl*rsq1l + 8.D0*mi(42)*r15**(-2)
     &    *i1r25**2*rgl**2 - 3.D0*mi(42)*r15**(-1)*i1r15r25*rsq1l + mi(
     &    42)*r15**(-1)*i1r15r25*rgl + 2.D0*mi(42)*r15**(-1)*
     &    i1r15r25**2*rsq1l )
      e = e  + Nc*s125 * (  - 2.D0*mi(42)*r15**(-1)*i1r15r25**2*rgl + 6.D
     &    0*mi(42)*r15**(-1)*i1r25*rsq1l - 2.D0*mi(42)*r15**(-1)*i1r25*
     &    rgl - 8.D0*mi(42)*r15**(-1)*i1r25**2*rsq1l - 4.D0*mi(42)*
     &    r15**(-1)*i1r25**2*rsq1l**2 + 8.D0*mi(42)*r15**(-1)*i1r25**2*
     &    rgl + 8.D0*mi(42)*r15**(-1)*i1r25**2*rgl*rsq1l - 4.D0*mi(42)*
     &    r15**(-1)*i1r25**2*rgl**2 + 12.D0*mi(42)*r15**(-1)*i1r25**3*
     &    rsq1l**2 - 24.D0*mi(42)*r15**(-1)*i1r25**3*rgl*rsq1l + 12.D0*
     &    mi(42)*r15**(-1)*i1r25**3*rgl**2 - 2.D0*mi(42)*i1r15r25**2*
     &    rsq1l + 2.D0*mi(42)*i1r15r25**2*rgl )
      e = e  + Nc*s125**2 * ( 2.D0*mi(48)*r15**(-3)*rsq1l**3 - 6.D0*mi(
     &    48)*r15**(-3)*rgl*rsq1l**2 + 6.D0*mi(48)*r15**(-3)*rgl**2*
     &    rsq1l - 2.D0*mi(48)*r15**(-3)*rgl**3 - 4.D0*mi(48)*r15**(-3)*
     &    i1r15r25*rsq1l**3 + 12.D0*mi(48)*r15**(-3)*i1r15r25*rgl*
     &    rsq1l**2 - 12.D0*mi(48)*r15**(-3)*i1r15r25*rgl**2*rsq1l + 4.D0
     &    *mi(48)*r15**(-3)*i1r15r25*rgl**3 + 2.D0*mi(48)*r15**(-3)*
     &    i1r15r25**2*rsq1l**3 - 6.D0*mi(48)*r15**(-3)*i1r15r25**2*rgl*
     &    rsq1l**2 + 6.D0*mi(48)*r15**(-3)*i1r15r25**2*rgl**2*rsq1l - 2.
     &    D0*mi(48)*r15**(-3)*i1r15r25**2*rgl**3 - 3.D0*mi(48)*
     &    r15**(-2)*rsq1l**2 + 3.D0*mi(48)*r15**(-2)*rgl**2 + 7.D0*mi(
     &    48)*r15**(-2)*i1r15r25*rsq1l**2 - 8.D0*mi(48)*r15**(-2)*
     &    i1r15r25*rgl*rsq1l + mi(48)*r15**(-2)*i1r15r25*rgl**2 - 4.D0*
     &    mi(48)*r15**(-2)*i1r15r25**2*rsq1l**2 + 8.D0*mi(48)*r15**(-2)
     &    *i1r15r25**2*rgl*rsq1l - 4.D0*mi(48)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + mi(48)*r15**(-1)*rsq1l - mi(48)*r15**(-1)*rgl - 3.D0
     &    *mi(48)*r15**(-1)*i1r15r25*rsq1l )
      e = e  + Nc*s125**2 * (  - 4.D0*mi(48)*r15**(-1)*i1r15r25*rsq1l**2
     &     + mi(48)*r15**(-1)*i1r15r25*rgl + 4.D0*mi(48)*r15**(-1)*
     &    i1r15r25*rgl*rsq1l + 2.D0*mi(48)*r15**(-1)*i1r15r25**2*rsq1l
     &     + 4.D0*mi(48)*r15**(-1)*i1r15r25**2*rsq1l**2 - 2.D0*mi(48)*
     &    r15**(-1)*i1r15r25**2*rgl - 8.D0*mi(48)*r15**(-1)*i1r15r25**2
     &    *rgl*rsq1l + 4.D0*mi(48)*r15**(-1)*i1r15r25**2*rgl**2 + 3.D0*
     &    mi(48)*i1r15r25*rsq1l - mi(48)*i1r15r25*rgl - 4.D0*mi(48)*
     &    i1r15r25**2*rsq1l + 4.D0*mi(48)*i1r15r25**2*rgl + 2.D0*mi(48)
     &    *r15*i1r15r25**2*rsq1l - 2.D0*mi(48)*r15*i1r15r25**2*rgl )

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

      e =  + Nc**(-1)*s125**(-1) * (  - mi(19)*r15**(-2)*rsq1r**(-1) + 
     &    2.D0*mi(19)*r15**(-2)*i1r15r25*rsq1r**(-1) - 2.D0*mi(19)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r**(-1) - mi(19)*r15**(-2)*
     &    i1r15r25**2*rsq1r**(-1) + 2.D0*mi(19)*r15**(-2)*i1r15r25**2*
     &    rgl*rsq1r**(-1) + 2.D0*mi(19)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1r**(-1) + 2.D0*mi(19)*r25**(-1)*i1r15**2*rgl*rsq1r**(-1)
     &     + 2.D0*mi(19)*i1r15*i1r15r25**2*rgl*rsq1r**(-1) + 2.D0*mi(19
     &    )*i1r15**2*i1r15r25*rgl*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*
     &    r15**(-2) - 4.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*rgl*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25 + 
     &    4.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl*rsq1r**(-1)
     &     + 2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl - 4.D0/(
     &    rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2*rsq1r**(-1) + 
     &    1/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2 - 2.D0/(rsq1r - 
     &    rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl + 4.D0/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*i1r15r25**2*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25**2*rgl + 4.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)
     &    *mi(19)*r25**(-1)*i1r15**2*rgl + 4.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*
     &    mi(19)*i1r15*i1r15r25**2*rgl + 4.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15*i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(
     &    19)*i1r15**2*i1r15r25*rgl + 4.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25*rgl**2*rsq1r**(-1) + 3.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-2)*rgl - 3.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2*
     &    rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*i1r15r25*rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*i1r15r25**2*rgl + 1/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25**2*rgl**3*rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl**3*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-1)*i1r15**2*rgl**3*rsq1r**(-1) - 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl**2 + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl**3*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25*rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**2*i1r15r25*rgl**3*rsq1r**(-1) )

      gcoeffarr(aa11,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa11,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  + Nc**(-1)*s125**(-1) * ( 4.D0*mi(17)*r15**(-2)*i1r25 + 6.D0
     &    *mi(17)*r15**(-1)*i1r25**2 - 4.D0*mi(19)*r15**(-3)*
     &    rsq1r**(-1) + 4.D0*mi(19)*r15**(-3)*rgl*rsq1r**(-1) + 5.D0*
     &    mi(19)*r15**(-3)*i1r15r25*rsq1r**(-1) - 8.D0*mi(19)*r15**(-3)
     &    *i1r15r25*rgl*rsq1r**(-1) - mi(19)*r15**(-3)*i1r15r25**2*
     &    rsq1r**(-1) + 4.D0*mi(19)*r15**(-3)*i1r15r25**2*rgl*
     &    rsq1r**(-1) - 3.D0*mi(19)*r15**(-3)*r25*rsq1r**(-1) - mi(19)*
     &    r15**(-2)*rsq1r**(-1) - 3.D0*mi(19)*r15**(-2)*i1r15r25*
     &    rsq1r**(-1) + mi(19)*r15**(-2)*i1r15r25**2*rsq1r**(-1) - 4.D0
     &    *mi(19)*r15**(-2)*i1r25 - 6.D0*mi(19)*r15**(-1)*i1r25**2 + 4.D
     &    0/(rsq1r - rgl)*mi(19)*r15**(-3) - 6.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-3)*rgl*rsq1r**(-1) - 4.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-3)*rgl + 6.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*rgl**2*
     &    rsq1r**(-1) - 5.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*i1r15r25 + 
     &    6.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*i1r15r25*rgl*rsq1r**(-1)
     &     + 8.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 12.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-3)*i1r15r25*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19
     &    )*r15**(-3)*i1r15r25**2 - 4.D0/(rsq1r - rgl)*mi(19)*r15**(-3)
     &    *i1r15r25**2*rgl + 6.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) + 3.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-3)*r25 - 6.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*r25*rgl*
     &    rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*r15**(-2) - 1/(rsq1r - 
     &    rgl)*mi(19)*r15**(-2)*rgl*rsq1r**(-1) + 3.D0/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*i1r15r25 - 5.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r15**(-3)*rgl - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-3)*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-3)*rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-3)*rgl**3*rsq1r**(-1) - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-3)*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r15**(-3)*i1r15r25*rgl**2*rsq1r**(-1) + 4.D0/(rsq1r - rgl
     &    )/(rsq1r - rgl)*mi(19)*r15**(-3)*i1r15r25*rgl**2 - 4.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*i1r15r25*rgl**3*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*
     &    i1r15r25**2*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-3)*i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*r15**(-3)*i1r15r25**2*rgl**2 + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*i1r15r25**2*
     &    rgl**3*rsq1r**(-1) + 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-3)*r25*rgl - 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-3)*r25*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl - 2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2*rsq1r**(-1) + 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2*
     &    rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*i1r15r25**2*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1) * (  - 2.D0*r15**(-1)*i1r25 - 4.D0*mi(21)*
     &    r15**(-3)*i1r15r25*rsq1r + 4.D0*mi(21)*r15**(-3)*i1r15r25*rgl
     &     + 4.D0*mi(21)*r15**(-3)*i1r25*rsq1r - 4.D0*mi(21)*r15**(-3)*
     &    i1r25*rgl - 4.D0*mi(21)*r15**(-2)*i1r25 - 4.D0*mi(21)*
     &    r15**(-2)*i1r25*rsq1r + 4.D0*mi(21)*r15**(-2)*i1r25*rgl + 8.D0
     &    *mi(21)*r15**(-2)*i1r25**2*rsq1r - 8.D0*mi(21)*r15**(-2)*
     &    i1r25**2*rgl - 2.D0*mi(21)*r15**(-1)*i1r25**2 - 4.D0*mi(21)*
     &    r15**(-1)*i1r25**2*rsq1r + 4.D0*mi(21)*r15**(-1)*i1r25**2*rgl
     &     + 12.D0*mi(21)*r15**(-1)*i1r25**3*rsq1r - 12.D0*mi(21)*
     &    r15**(-1)*i1r25**3*rgl + 4.D0*mi(23)*r15**(-2) + 4.D0*mi(25)*
     &    r15**(-2)*i1r15r25*rsq1r - 4.D0*mi(25)*r15**(-2)*i1r15r25*rgl
     &     + 4.D0*mi(27)*r15**(-3)*i1r15r25*rsq1r - 4.D0*mi(27)*
     &    r15**(-3)*i1r15r25*rgl - 4.D0*mi(27)*r15**(-3)*i1r25*rsq1r + 
     &    4.D0*mi(27)*r15**(-3)*i1r25*rgl - 4.D0*mi(27)*r15**(-2) - 4.D0
     &    *mi(27)*r15**(-2)*i1r15r25*rsq1r + 4.D0*mi(27)*r15**(-2)*
     &    i1r15r25*rgl )
      e = e  + Nc**(-1) * ( 4.D0*mi(27)*r15**(-2)*i1r25 + 8.D0*mi(27)*
     &    r15**(-2)*i1r25*rsq1r - 8.D0*mi(27)*r15**(-2)*i1r25*rgl - 8.D0
     &    *mi(27)*r15**(-2)*i1r25**2*rsq1r + 8.D0*mi(27)*r15**(-2)*
     &    i1r25**2*rgl + 2.D0*mi(27)*r15**(-1)*i1r25**2 + 10.D0*mi(27)*
     &    r15**(-1)*i1r25**2*rsq1r - 10.D0*mi(27)*r15**(-1)*i1r25**2*
     &    rgl - 12.D0*mi(27)*r15**(-1)*i1r25**3*rsq1r + 12.D0*mi(27)*
     &    r15**(-1)*i1r25**3*rgl )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(29)*r15**(-3)*r25 - 4.D0*mi(29)
     &    *r15**(-3)*r25*rsq1r + 4.D0*mi(29)*r15**(-3)*r25*rgl - 2.D0*
     &    mi(29)*r15**(-3)*r25**2 + mi(29)*r15**(-2) - 2.D0*mi(29)*
     &    r15**(-2)*rsq1r + 2.D0*mi(29)*r15**(-2)*rgl - 3.D0*mi(29)*
     &    r15**(-2)*r25 - mi(29)*r15**(-1) - 2.D0*mi(33)*r15**(-2)*
     &    i1r15r25*rsq1r**2 + 4.D0*mi(33)*r15**(-2)*i1r15r25*rgl*rsq1r
     &     - 2.D0*mi(33)*r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(33)*
     &    r15**(-2)*i1r15r25**2*rsq1r**2 - 4.D0*mi(33)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r + 2.D0*mi(33)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + mi(33)*r15**(-1)*i1r15r25*rsq1r + mi(33)*r15**(-1)*
     &    i1r15r25*rgl + 4.D0*mi(37)*r15**(-3)*rsq1r + 2.D0*mi(37)*
     &    r15**(-3)*rsq1r**2 - 4.D0*mi(37)*r15**(-3)*rgl - 4.D0*mi(37)*
     &    r15**(-3)*rgl*rsq1r + 2.D0*mi(37)*r15**(-3)*rgl**2 - 4.D0*mi(
     &    37)*r15**(-3)*i1r15r25*rsq1r - 4.D0*mi(37)*r15**(-3)*i1r15r25
     &    *rsq1r**2 + 4.D0*mi(37)*r15**(-3)*i1r15r25*rgl + 8.D0*mi(37)*
     &    r15**(-3)*i1r15r25*rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(37)*r15**(-3)*i1r15r25*
     &    rgl**2 + 2.D0*mi(37)*r15**(-3)*i1r15r25**2*rsq1r**2 - 4.D0*
     &    mi(37)*r15**(-3)*i1r15r25**2*rgl*rsq1r + 2.D0*mi(37)*
     &    r15**(-3)*i1r15r25**2*rgl**2 + 4.D0*mi(37)*r15**(-3)*r25*
     &    rsq1r - 4.D0*mi(37)*r15**(-3)*r25*rgl + 2.D0*mi(37)*r15**(-3)
     &    *r25**2 - 3.D0*mi(37)*r15**(-2)*rsq1r + mi(37)*r15**(-2)*rgl
     &     + 7.D0*mi(37)*r15**(-2)*i1r15r25*rsq1r + 2.D0*mi(37)*
     &    r15**(-2)*i1r15r25*rsq1r**2 - 5.D0*mi(37)*r15**(-2)*i1r15r25*
     &    rgl - 4.D0*mi(37)*r15**(-2)*i1r15r25*rgl*rsq1r + 2.D0*mi(37)*
     &    r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(37)*r15**(-2)*i1r15r25**2
     &    *rsq1r**2 + 4.D0*mi(37)*r15**(-2)*i1r15r25**2*rgl*rsq1r - 2.D0
     &    *mi(37)*r15**(-2)*i1r15r25**2*rgl**2 + mi(37)*r15**(-2)*r25
     &     - 3.D0*mi(37)*r15**(-1)*i1r15r25*rsq1r + mi(37)*r15**(-1)*
     &    i1r15r25*rgl - 4.D0*mi(39)*r15**(-3)*rsq1r - 4.D0*mi(39)*
     &    r15**(-3)*rsq1r**2 + 4.D0*mi(39)*r15**(-3)*rgl + 8.D0*mi(39)*
     &    r15**(-3)*rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(39)*r15**(-3)*rgl**2 + 4.D0*
     &    mi(39)*r15**(-3)*i1r15r25*rsq1r + 8.D0*mi(39)*r15**(-3)*
     &    i1r15r25*rsq1r**2 - 4.D0*mi(39)*r15**(-3)*i1r15r25*rgl - 16.D0
     &    *mi(39)*r15**(-3)*i1r15r25*rgl*rsq1r + 8.D0*mi(39)*r15**(-3)*
     &    i1r15r25*rgl**2 - 4.D0*mi(39)*r15**(-3)*i1r15r25**2*rsq1r**2
     &     + 8.D0*mi(39)*r15**(-3)*i1r15r25**2*rgl*rsq1r - 4.D0*mi(39)*
     &    r15**(-3)*i1r15r25**2*rgl**2 - 4.D0*mi(39)*r15**(-3)*r25*
     &    rsq1r + 4.D0*mi(39)*r15**(-3)*r25*rgl - 2.D0*mi(39)*r15**(-3)
     &    *r25**2 + 4.D0*mi(39)*r15**(-2)*rgl - 4.D0*mi(39)*r15**(-2)*
     &    i1r15r25*rsq1r - 3.D0*mi(39)*r15**(-2)*r25 - mi(39)*r15**(-1)
     &     - 2.D0*mi(41)*r15**(-3)*i1r15r25*rsq1r**2 + 4.D0*mi(41)*
     &    r15**(-3)*i1r15r25*rgl*rsq1r - 2.D0*mi(41)*r15**(-3)*i1r15r25
     &    *rgl**2 + 2.D0*mi(41)*r15**(-3)*i1r15r25**2*rsq1r**2 - 4.D0*
     &    mi(41)*r15**(-3)*i1r15r25**2*rgl*rsq1r + 2.D0*mi(41)*
     &    r15**(-3)*i1r15r25**2*rgl**2 + mi(41)*r15**(-2)*i1r15r25*
     &    rsq1r )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(41)*r15**(-2)*i1r15r25*rsq1r**2
     &     + mi(41)*r15**(-2)*i1r15r25*rgl - 4.D0*mi(41)*r15**(-2)*
     &    i1r15r25*rgl*rsq1r + 2.D0*mi(41)*r15**(-2)*i1r15r25*rgl**2 - 
     &    2.D0*mi(41)*r15**(-2)*i1r15r25**2*rsq1r**2 + 4.D0*mi(41)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1r - 2.D0*mi(41)*r15**(-2)*
     &    i1r15r25**2*rgl**2 - mi(41)*r15**(-1)*i1r15r25*rsq1r - mi(41)
     &    *r15**(-1)*i1r15r25*rgl + 2.D0*mi(43)*r15**(-3)*rsq1r**2 - 4.D
     &    0*mi(43)*r15**(-3)*rgl*rsq1r + 2.D0*mi(43)*r15**(-3)*rgl**2
     &     + 2.D0*mi(43)*r15**(-3)*i1r15r25*rsq1r**2 - 4.D0*mi(43)*
     &    r15**(-3)*i1r15r25*rgl*rsq1r + 2.D0*mi(43)*r15**(-3)*i1r15r25
     &    *rgl**2 - 4.D0*mi(43)*r15**(-3)*i1r25*rsq1r**2 + 8.D0*mi(43)*
     &    r15**(-3)*i1r25*rgl*rsq1r - 4.D0*mi(43)*r15**(-3)*i1r25*
     &    rgl**2 - 2.D0*mi(43)*r15**(-3)*r25 + 4.D0*mi(43)*r15**(-3)*
     &    r25*rsq1r - 4.D0*mi(43)*r15**(-3)*r25*rgl + 2.D0*mi(43)*
     &    r15**(-3)*r25**2 - mi(43)*r15**(-2) - 3.D0*mi(43)*r15**(-2)*
     &    rsq1r )
      e = e  + Nc**(-1)*s125 * ( mi(43)*r15**(-2)*rgl - 4.D0*mi(43)*
     &    r15**(-2)*i1r15r25*rsq1r - 2.D0*mi(43)*r15**(-2)*i1r15r25*
     &    rsq1r**2 + 4.D0*mi(43)*r15**(-2)*i1r15r25*rgl + 4.D0*mi(43)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r - 2.D0*mi(43)*r15**(-2)*i1r15r25
     &    *rgl**2 + 2.D0*mi(43)*r15**(-2)*i1r15r25**2*rsq1r**2 - 4.D0*
     &    mi(43)*r15**(-2)*i1r15r25**2*rgl*rsq1r + 2.D0*mi(43)*
     &    r15**(-2)*i1r15r25**2*rgl**2 + 8.D0*mi(43)*r15**(-2)*i1r25*
     &    rsq1r + 4.D0*mi(43)*r15**(-2)*i1r25*rsq1r**2 - 8.D0*mi(43)*
     &    r15**(-2)*i1r25*rgl - 8.D0*mi(43)*r15**(-2)*i1r25*rgl*rsq1r
     &     + 4.D0*mi(43)*r15**(-2)*i1r25*rgl**2 - 8.D0*mi(43)*r15**(-2)
     &    *i1r25**2*rsq1r**2 + 16.D0*mi(43)*r15**(-2)*i1r25**2*rgl*
     &    rsq1r - 8.D0*mi(43)*r15**(-2)*i1r25**2*rgl**2 + mi(43)*
     &    r15**(-2)*r25 + 3.D0*mi(43)*r15**(-1)*i1r15r25*rsq1r - mi(43)
     &    *r15**(-1)*i1r15r25*rgl - 6.D0*mi(43)*r15**(-1)*i1r25*rsq1r
     &     + 2.D0*mi(43)*r15**(-1)*i1r25*rgl + 8.D0*mi(43)*r15**(-1)*
     &    i1r25**2*rsq1r )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(43)*r15**(-1)*i1r25**2*rsq1r**2
     &     - 8.D0*mi(43)*r15**(-1)*i1r25**2*rgl - 8.D0*mi(43)*r15**(-1)
     &    *i1r25**2*rgl*rsq1r + 4.D0*mi(43)*r15**(-1)*i1r25**2*rgl**2
     &     - 12.D0*mi(43)*r15**(-1)*i1r25**3*rsq1r**2 + 24.D0*mi(43)*
     &    r15**(-1)*i1r25**3*rgl*rsq1r - 12.D0*mi(43)*r15**(-1)*
     &    i1r25**3*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(45)*r15**(-3)*rsq1r**3 - 6.D0
     &    *mi(45)*r15**(-3)*rgl*rsq1r**2 + 6.D0*mi(45)*r15**(-3)*rgl**2
     &    *rsq1r - 2.D0*mi(45)*r15**(-3)*rgl**3 - 4.D0*mi(45)*r15**(-3)
     &    *i1r15r25*rsq1r**3 + 12.D0*mi(45)*r15**(-3)*i1r15r25*rgl*
     &    rsq1r**2 - 12.D0*mi(45)*r15**(-3)*i1r15r25*rgl**2*rsq1r + 4.D0
     &    *mi(45)*r15**(-3)*i1r15r25*rgl**3 + 2.D0*mi(45)*r15**(-3)*
     &    i1r15r25**2*rsq1r**3 - 6.D0*mi(45)*r15**(-3)*i1r15r25**2*rgl*
     &    rsq1r**2 + 6.D0*mi(45)*r15**(-3)*i1r15r25**2*rgl**2*rsq1r - 2.
     &    D0*mi(45)*r15**(-3)*i1r15r25**2*rgl**3 - 3.D0*mi(45)*
     &    r15**(-2)*rsq1r**2 + 3.D0*mi(45)*r15**(-2)*rgl**2 + 3.D0*mi(
     &    45)*r15**(-2)*i1r15r25*rsq1r**2 - 3.D0*mi(45)*r15**(-2)*
     &    i1r15r25*rgl**2 + mi(45)*r15**(-1)*rsq1r - mi(45)*r15**(-1)*
     &    rgl - 4.D0*mi(45)*r15**(-1)*i1r15r25*rsq1r**2 + 4.D0*mi(45)*
     &    r15**(-1)*i1r15r25*rgl*rsq1r + 6.D0*mi(47)*r15**(-3)*rsq1r**2
     &     + 2.D0*mi(47)*r15**(-3)*rsq1r**3 - 12.D0*mi(47)*r15**(-3)*
     &    rgl*rsq1r )
      e = e  + Nc**(-1)*s125**2 * (  - 6.D0*mi(47)*r15**(-3)*rgl*
     &    rsq1r**2 + 6.D0*mi(47)*r15**(-3)*rgl**2 + 6.D0*mi(47)*
     &    r15**(-3)*rgl**2*rsq1r - 2.D0*mi(47)*r15**(-3)*rgl**3 - 6.D0*
     &    mi(47)*r15**(-3)*i1r15r25*rsq1r**2 - 4.D0*mi(47)*r15**(-3)*
     &    i1r15r25*rsq1r**3 + 12.D0*mi(47)*r15**(-3)*i1r15r25*rgl*rsq1r
     &     + 12.D0*mi(47)*r15**(-3)*i1r15r25*rgl*rsq1r**2 - 6.D0*mi(47)
     &    *r15**(-3)*i1r15r25*rgl**2 - 12.D0*mi(47)*r15**(-3)*i1r15r25*
     &    rgl**2*rsq1r + 4.D0*mi(47)*r15**(-3)*i1r15r25*rgl**3 + 2.D0*
     &    mi(47)*r15**(-3)*i1r15r25**2*rsq1r**3 - 6.D0*mi(47)*r15**(-3)
     &    *i1r15r25**2*rgl*rsq1r**2 + 6.D0*mi(47)*r15**(-3)*i1r15r25**2
     &    *rgl**2*rsq1r - 2.D0*mi(47)*r15**(-3)*i1r15r25**2*rgl**3 + 6.D
     &    0*mi(47)*r15**(-3)*r25*rsq1r**2 - 12.D0*mi(47)*r15**(-3)*r25*
     &    rgl*rsq1r + 6.D0*mi(47)*r15**(-3)*r25*rgl**2 - 2.D0*mi(47)*
     &    r15**(-3)*r25**2 + 6.D0*mi(47)*r15**(-3)*r25**2*rsq1r - 6.D0*
     &    mi(47)*r15**(-3)*r25**2*rgl + 2.D0*mi(47)*r15**(-3)*r25**3 - 
     &    3.D0*mi(47)*r15**(-2)*rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(47)*r15**(-2)*rgl**2 + 9.D0*
     &    mi(47)*r15**(-2)*i1r15r25*rsq1r**2 - 12.D0*mi(47)*r15**(-2)*
     &    i1r15r25*rgl*rsq1r + 3.D0*mi(47)*r15**(-2)*i1r15r25*rgl**2 - 
     &    mi(47)*r15**(-2)*r25 - 6.D0*mi(47)*r15**(-2)*r25*rgl + 3.D0*
     &    mi(47)*r15**(-2)*r25**2 - mi(47)*r15**(-1)*rsq1r - mi(47)*
     &    r15**(-1)*rgl - 4.D0*mi(47)*r15**(-1)*i1r15r25*rsq1r**2 + 4.D0
     &    *mi(47)*r15**(-1)*i1r15r25*rgl*rsq1r + mi(47)*r15**(-1)*r25 )
      e = e  + Nc*s125**(-1) * (  - 4.D0*mi(17)*r15**(-2)*i1r25 - 6.D0*
     &    mi(17)*r15**(-1)*i1r25**2 + 4.D0*mi(19)*r15**(-2)*i1r25 + 6.D0
     &    *mi(19)*r15**(-1)*i1r25**2 )
      e = e  + Nc * ( 2.D0*r15**(-1)*i1r25 + 4.D0*mi(21)*r15**(-3)*
     &    i1r15r25*rsq1r - 4.D0*mi(21)*r15**(-3)*i1r15r25*rgl - 4.D0*
     &    mi(21)*r15**(-3)*i1r25*rsq1r + 4.D0*mi(21)*r15**(-3)*i1r25*
     &    rgl + 4.D0*mi(21)*r15**(-2)*i1r25*rsq1r - 4.D0*mi(21)*
     &    r15**(-2)*i1r25*rgl - 8.D0*mi(21)*r15**(-2)*i1r25**2*rsq1r + 
     &    8.D0*mi(21)*r15**(-2)*i1r25**2*rgl + 2.D0*mi(21)*r15**(-1)*
     &    i1r25**2 + 4.D0*mi(21)*r15**(-1)*i1r25**2*rsq1r - 4.D0*mi(21)
     &    *r15**(-1)*i1r25**2*rgl - 12.D0*mi(21)*r15**(-1)*i1r25**3*
     &    rsq1r + 12.D0*mi(21)*r15**(-1)*i1r25**3*rgl - 4.D0*mi(25)*
     &    r15**(-2)*i1r15r25*rsq1r + 4.D0*mi(25)*r15**(-2)*i1r15r25*rgl
     &     - 4.D0*mi(27)*r15**(-3)*i1r15r25*rsq1r + 4.D0*mi(27)*
     &    r15**(-3)*i1r15r25*rgl + 4.D0*mi(27)*r15**(-3)*i1r25*rsq1r - 
     &    4.D0*mi(27)*r15**(-3)*i1r25*rgl + 4.D0*mi(27)*r15**(-2)*
     &    i1r15r25*rsq1r - 4.D0*mi(27)*r15**(-2)*i1r15r25*rgl - 8.D0*
     &    mi(27)*r15**(-2)*i1r25*rsq1r + 8.D0*mi(27)*r15**(-2)*i1r25*
     &    rgl )
      e = e  + Nc * ( 8.D0*mi(27)*r15**(-2)*i1r25**2*rsq1r - 8.D0*mi(27)
     &    *r15**(-2)*i1r25**2*rgl - 2.D0*mi(27)*r15**(-1)*i1r25**2 - 10.
     &    D0*mi(27)*r15**(-1)*i1r25**2*rsq1r + 10.D0*mi(27)*r15**(-1)*
     &    i1r25**2*rgl + 12.D0*mi(27)*r15**(-1)*i1r25**3*rsq1r - 12.D0*
     &    mi(27)*r15**(-1)*i1r25**3*rgl )
      e = e  + Nc*s125 * (  - 2.D0*mi(31)*r15**(-2)*i1r15r25*rsq1r**2 + 
     &    4.D0*mi(31)*r15**(-2)*i1r15r25*rgl*rsq1r - 2.D0*mi(31)*
     &    r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(31)*r15**(-2)*i1r15r25**2
     &    *rsq1r**2 - 4.D0*mi(31)*r15**(-2)*i1r15r25**2*rgl*rsq1r + 2.D0
     &    *mi(31)*r15**(-2)*i1r15r25**2*rgl**2 + mi(31)*r15**(-1)*
     &    i1r15r25*rsq1r + mi(31)*r15**(-1)*i1r15r25*rgl - 2.D0*mi(31)*
     &    r15**(-1)*i1r15r25**2*rsq1r + 2.D0*mi(31)*r15**(-1)*
     &    i1r15r25**2*rgl + 2.D0*mi(31)*i1r15r25**2*rsq1r - 2.D0*mi(31)
     &    *i1r15r25**2*rgl + 2.D0*mi(35)*r15**(-3)*rsq1r**2 - 4.D0*mi(
     &    35)*r15**(-3)*rgl*rsq1r + 2.D0*mi(35)*r15**(-3)*rgl**2 - 4.D0
     &    *mi(35)*r15**(-3)*i1r15r25*rsq1r**2 + 8.D0*mi(35)*r15**(-3)*
     &    i1r15r25*rgl*rsq1r - 4.D0*mi(35)*r15**(-3)*i1r15r25*rgl**2 + 
     &    2.D0*mi(35)*r15**(-3)*i1r15r25**2*rsq1r**2 - 4.D0*mi(35)*
     &    r15**(-3)*i1r15r25**2*rgl*rsq1r + 2.D0*mi(35)*r15**(-3)*
     &    i1r15r25**2*rgl**2 - mi(35)*r15**(-2)*rsq1r - mi(35)*
     &    r15**(-2)*rgl )
      e = e  + Nc*s125 * ( 3.D0*mi(35)*r15**(-2)*i1r15r25*rsq1r + 2.D0*
     &    mi(35)*r15**(-2)*i1r15r25*rsq1r**2 - mi(35)*r15**(-2)*
     &    i1r15r25*rgl - 4.D0*mi(35)*r15**(-2)*i1r15r25*rgl*rsq1r + 2.D0
     &    *mi(35)*r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(35)*r15**(-2)*
     &    i1r15r25**2*rsq1r - 2.D0*mi(35)*r15**(-2)*i1r15r25**2*
     &    rsq1r**2 + 2.D0*mi(35)*r15**(-2)*i1r15r25**2*rgl + 4.D0*mi(35
     &    )*r15**(-2)*i1r15r25**2*rgl*rsq1r - 2.D0*mi(35)*r15**(-2)*
     &    i1r15r25**2*rgl**2 - 3.D0*mi(35)*r15**(-1)*i1r15r25*rsq1r + 
     &    mi(35)*r15**(-1)*i1r15r25*rgl + 4.D0*mi(35)*r15**(-1)*
     &    i1r15r25**2*rsq1r - 4.D0*mi(35)*r15**(-1)*i1r15r25**2*rgl - 2.
     &    D0*mi(35)*i1r15r25**2*rsq1r + 2.D0*mi(35)*i1r15r25**2*rgl + 2.
     &    D0*mi(41)*r15**(-3)*i1r15r25*rsq1r**2 - 4.D0*mi(41)*r15**(-3)
     &    *i1r15r25*rgl*rsq1r + 2.D0*mi(41)*r15**(-3)*i1r15r25*rgl**2
     &     - 2.D0*mi(41)*r15**(-3)*i1r15r25**2*rsq1r**2 + 4.D0*mi(41)*
     &    r15**(-3)*i1r15r25**2*rgl*rsq1r - 2.D0*mi(41)*r15**(-3)*
     &    i1r15r25**2*rgl**2 )
      e = e  + Nc*s125 * (  - mi(41)*r15**(-2)*i1r15r25*rsq1r - 2.D0*mi(
     &    41)*r15**(-2)*i1r15r25*rsq1r**2 - mi(41)*r15**(-2)*i1r15r25*
     &    rgl + 4.D0*mi(41)*r15**(-2)*i1r15r25*rgl*rsq1r - 2.D0*mi(41)*
     &    r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(41)*r15**(-2)*i1r15r25**2
     &    *rsq1r + 2.D0*mi(41)*r15**(-2)*i1r15r25**2*rsq1r**2 - 2.D0*
     &    mi(41)*r15**(-2)*i1r15r25**2*rgl - 4.D0*mi(41)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r + 2.D0*mi(41)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + mi(41)*r15**(-1)*i1r15r25*rsq1r + mi(41)*r15**(-1)*
     &    i1r15r25*rgl - 4.D0*mi(41)*r15**(-1)*i1r15r25**2*rsq1r + 4.D0
     &    *mi(41)*r15**(-1)*i1r15r25**2*rgl + 2.D0*mi(41)*i1r15r25**2*
     &    rsq1r - 2.D0*mi(41)*i1r15r25**2*rgl - 2.D0*mi(43)*r15**(-3)*
     &    rsq1r**2 + 4.D0*mi(43)*r15**(-3)*rgl*rsq1r - 2.D0*mi(43)*
     &    r15**(-3)*rgl**2 - 2.D0*mi(43)*r15**(-3)*i1r15r25*rsq1r**2 + 
     &    4.D0*mi(43)*r15**(-3)*i1r15r25*rgl*rsq1r - 2.D0*mi(43)*
     &    r15**(-3)*i1r15r25*rgl**2 + 4.D0*mi(43)*r15**(-3)*i1r25*
     &    rsq1r**2 )
      e = e  + Nc*s125 * (  - 8.D0*mi(43)*r15**(-3)*i1r25*rgl*rsq1r + 4.D
     &    0*mi(43)*r15**(-3)*i1r25*rgl**2 + mi(43)*r15**(-2)*rsq1r + 
     &    mi(43)*r15**(-2)*rgl + 2.D0*mi(43)*r15**(-2)*i1r15r25*rsq1r
     &     + 2.D0*mi(43)*r15**(-2)*i1r15r25*rsq1r**2 - 2.D0*mi(43)*
     &    r15**(-2)*i1r15r25*rgl - 4.D0*mi(43)*r15**(-2)*i1r15r25*rgl*
     &    rsq1r + 2.D0*mi(43)*r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(43)*
     &    r15**(-2)*i1r15r25**2*rsq1r**2 + 4.D0*mi(43)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r - 2.D0*mi(43)*r15**(-2)*i1r15r25**2*
     &    rgl**2 - 4.D0*mi(43)*r15**(-2)*i1r25*rsq1r - 4.D0*mi(43)*
     &    r15**(-2)*i1r25*rsq1r**2 + 4.D0*mi(43)*r15**(-2)*i1r25*rgl + 
     &    8.D0*mi(43)*r15**(-2)*i1r25*rgl*rsq1r - 4.D0*mi(43)*r15**(-2)
     &    *i1r25*rgl**2 + 8.D0*mi(43)*r15**(-2)*i1r25**2*rsq1r**2 - 16.D
     &    0*mi(43)*r15**(-2)*i1r25**2*rgl*rsq1r + 8.D0*mi(43)*r15**(-2)
     &    *i1r25**2*rgl**2 - 3.D0*mi(43)*r15**(-1)*i1r15r25*rsq1r + mi(
     &    43)*r15**(-1)*i1r15r25*rgl + 2.D0*mi(43)*r15**(-1)*
     &    i1r15r25**2*rsq1r )
      e = e  + Nc*s125 * (  - 2.D0*mi(43)*r15**(-1)*i1r15r25**2*rgl + 6.D
     &    0*mi(43)*r15**(-1)*i1r25*rsq1r - 2.D0*mi(43)*r15**(-1)*i1r25*
     &    rgl - 8.D0*mi(43)*r15**(-1)*i1r25**2*rsq1r - 4.D0*mi(43)*
     &    r15**(-1)*i1r25**2*rsq1r**2 + 8.D0*mi(43)*r15**(-1)*i1r25**2*
     &    rgl + 8.D0*mi(43)*r15**(-1)*i1r25**2*rgl*rsq1r - 4.D0*mi(43)*
     &    r15**(-1)*i1r25**2*rgl**2 + 12.D0*mi(43)*r15**(-1)*i1r25**3*
     &    rsq1r**2 - 24.D0*mi(43)*r15**(-1)*i1r25**3*rgl*rsq1r + 12.D0*
     &    mi(43)*r15**(-1)*i1r25**3*rgl**2 - 2.D0*mi(43)*i1r15r25**2*
     &    rsq1r + 2.D0*mi(43)*i1r15r25**2*rgl )
      e = e  + Nc*s125**2 * ( 2.D0*mi(49)*r15**(-3)*rsq1r**3 - 6.D0*mi(
     &    49)*r15**(-3)*rgl*rsq1r**2 + 6.D0*mi(49)*r15**(-3)*rgl**2*
     &    rsq1r - 2.D0*mi(49)*r15**(-3)*rgl**3 - 4.D0*mi(49)*r15**(-3)*
     &    i1r15r25*rsq1r**3 + 12.D0*mi(49)*r15**(-3)*i1r15r25*rgl*
     &    rsq1r**2 - 12.D0*mi(49)*r15**(-3)*i1r15r25*rgl**2*rsq1r + 4.D0
     &    *mi(49)*r15**(-3)*i1r15r25*rgl**3 + 2.D0*mi(49)*r15**(-3)*
     &    i1r15r25**2*rsq1r**3 - 6.D0*mi(49)*r15**(-3)*i1r15r25**2*rgl*
     &    rsq1r**2 + 6.D0*mi(49)*r15**(-3)*i1r15r25**2*rgl**2*rsq1r - 2.
     &    D0*mi(49)*r15**(-3)*i1r15r25**2*rgl**3 - 3.D0*mi(49)*
     &    r15**(-2)*rsq1r**2 + 3.D0*mi(49)*r15**(-2)*rgl**2 + 7.D0*mi(
     &    49)*r15**(-2)*i1r15r25*rsq1r**2 - 8.D0*mi(49)*r15**(-2)*
     &    i1r15r25*rgl*rsq1r + mi(49)*r15**(-2)*i1r15r25*rgl**2 - 4.D0*
     &    mi(49)*r15**(-2)*i1r15r25**2*rsq1r**2 + 8.D0*mi(49)*r15**(-2)
     &    *i1r15r25**2*rgl*rsq1r - 4.D0*mi(49)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + mi(49)*r15**(-1)*rsq1r - mi(49)*r15**(-1)*rgl - 3.D0
     &    *mi(49)*r15**(-1)*i1r15r25*rsq1r )
      e = e  + Nc*s125**2 * (  - 4.D0*mi(49)*r15**(-1)*i1r15r25*rsq1r**2
     &     + mi(49)*r15**(-1)*i1r15r25*rgl + 4.D0*mi(49)*r15**(-1)*
     &    i1r15r25*rgl*rsq1r + 2.D0*mi(49)*r15**(-1)*i1r15r25**2*rsq1r
     &     + 4.D0*mi(49)*r15**(-1)*i1r15r25**2*rsq1r**2 - 2.D0*mi(49)*
     &    r15**(-1)*i1r15r25**2*rgl - 8.D0*mi(49)*r15**(-1)*i1r15r25**2
     &    *rgl*rsq1r + 4.D0*mi(49)*r15**(-1)*i1r15r25**2*rgl**2 + 3.D0*
     &    mi(49)*i1r15r25*rsq1r - mi(49)*i1r15r25*rgl - 4.D0*mi(49)*
     &    i1r15r25**2*rsq1r + 4.D0*mi(49)*i1r15r25**2*rgl + 2.D0*mi(49)
     &    *r15*i1r15r25**2*rsq1r - 2.D0*mi(49)*r15*i1r15r25**2*rgl )

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

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(18)*r15**(-2)*i1r15r25*
     &    rgl*rsq1l**(-1) + 2.D0*mi(18)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1l**(-1) + mi(18)*r15**(-1)*i1r15r25*rsq1l**(-1) - mi(18)*
     &    r15**(-1)*i1r15r25**2*rsq1l**(-1) + 2.D0*mi(18)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1l**(-1) + mi(18)*r25**(-1)*i1r15*
     &    rsq1l**(-1) - mi(18)*r25**(-1)*i1r15**2*rsq1l**(-1) + 2.D0*
     &    mi(18)*r25**(-1)*i1r15**2*rgl*rsq1l**(-1) + mi(18)*i1r15*
     &    i1r15r25*rsq1l**(-1) - mi(18)*i1r15*i1r15r25**2*rsq1l**(-1)
     &     + 2.D0*mi(18)*i1r15*i1r15r25**2*rgl*rsq1l**(-1) - mi(18)*
     &    i1r15**2*i1r15r25*rsq1l**(-1) + 2.D0*mi(18)*i1r15**2*i1r15r25
     &    *rgl*rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25*rgl - 4.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*
     &    rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25**2*rgl + 4.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25 )
      e = e  + Nc**(-1)*s125**(-1) * ( 4.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25*rgl*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25**2 - 2.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25**2*rgl + 4.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15 + 4.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*
     &    rgl*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2
     &     - 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl + 4.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) - 
     &    1/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25 + 4.D0/(rsq1l - rgl)*
     &    mi(18)*i1r15*i1r15r25*rgl*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18
     &    )*i1r15*i1r15r25**2 - 2.D0/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25**2*rgl + 4.D0/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2
     &    *rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25 - 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl + 
     &    4.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*i1r15r25*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**3*rsq1l**(-1) - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25**2*rgl**3*rsq1l**(-1) - 3.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-1)*i1r15r25*rgl + 3.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl**2*rsq1l**(-1) - 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*
     &    rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl**3*
     &    rsq1l**(-1) - 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15*rgl + 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)
     &    *r25**(-1)*i1r15*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-1)*i1r15**2*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)
     &    *mi(18)*r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2 + 2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**3
     &    *rsq1l**(-1) - 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25*rgl + 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15*i1r15r25**2*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15*i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl**2 + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl**3*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl
     &    )*mi(18)*i1r15**2*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**2*i1r15r25*rgl**3*rsq1l**(-1) )

      gcoeffarr(aa12,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa12,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*i1r25 + 2.
     &    D0*mi(17)*r25**(-1)*i1r15 + 1.D0/2.D0*mi(18)*r15**(-2)*
     &    rsq1l**(-1) - mi(18)*r15**(-2)*i1r15r25*rsq1l**(-1) + 2.D0*
     &    mi(18)*r15**(-2)*i1r15r25*rgl*rsq1l**(-1) + 1.D0/2.D0*mi(18)*
     &    r15**(-2)*i1r15r25**2*rsq1l**(-1) - 2.D0*mi(18)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l**(-1) + 2.D0*mi(18)*r15**(-1)*i1r25 - 3.
     &    D0/2.D0*mi(18)*r25**(-2)*rsq1l**(-1) + 2.D0*mi(18)*r25**(-2)*
     &    i1r15*rsq1l**(-1) - 2.D0*mi(18)*r25**(-2)*i1r15*rgl*
     &    rsq1l**(-1) - 1.D0/2.D0*mi(18)*r25**(-2)*i1r15**2*rsq1l**(-1)
     &     + 2.D0*mi(18)*r25**(-2)*i1r15**2*rgl*rsq1l**(-1) - 2.D0*mi(
     &    18)*r25**(-1)*i1r15 + 2.D0*mi(18)*r25**(-1)*i1r15**2*
     &    rsq1l**(-1) - 2.D0*mi(18)*r25**(-1)*i1r15**2*rgl*rsq1l**(-1)
     &     - mi(18)*r25**(-1)*i1r15**3*rsq1l**(-1) + 4.D0*mi(18)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l**(-1) + 2.D0*mi(18)*i1r15**2*
     &    i1r15r25*rsq1l**(-1) - 2.D0*mi(18)*i1r15**2*i1r15r25*rgl*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1.D0/2.D0*mi(18)*i1r15**2*
     &    i1r15r25**2*rsq1l**(-1) + 2.D0*mi(18)*i1r15**2*i1r15r25**2*
     &    rgl*rsq1l**(-1) - mi(18)*i1r15**3*i1r15r25*rsq1l**(-1) + 4.D0
     &    *mi(18)*i1r15**3*i1r15r25*rgl*rsq1l**(-1) - 1.D0/2.D0/(rsq1l
     &     - rgl)*mi(18)*r15**(-2) + 2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*rgl*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25 - 2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*
     &    rgl + 3.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2*
     &    rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25**2 + 2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2
     &    *rgl - 3.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**2
     &    *rsq1l**(-1) + 3.D0/2.D0/(rsq1l - rgl)*mi(18)*r25**(-2) - 3.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-2)*rgl*rsq1l**(-1) - 2.D0/(rsq1l
     &     - rgl)*mi(18)*r25**(-2)*i1r15 + 3.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl - 3.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15*rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2 - 2.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15**2*rgl + 3.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**2 + 3.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl*
     &    rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*
     &    rgl - 3.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2*
     &    rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3 - 4.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl + 6.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2*rsq1l**(-1) - 2.D0/(
     &    rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25 + 3.D0/(rsq1l - rgl)*
     &    mi(18)*i1r15**2*i1r15r25*rgl*rsq1l**(-1) + 2.D0/(rsq1l - rgl)
     &    *mi(18)*i1r15**2*i1r15r25*rgl - 3.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25**2 - 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl + 3.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*
     &    i1r15**3*i1r15r25 - 4.D0/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25*rgl + 6.D0/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1l**(-1) - 3.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*rgl + 3.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2*rsq1l**(-1) - 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*
     &    rgl**2 + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25*rgl**3*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl - 1.D0/2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r15**(-2)*i1r15r25**2*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**3*rsq1l**(-1) + 3.D0/2.
     &    D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl - 3.D0/2.D
     &    0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl**2*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*i1r15*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15*rgl**3*rsq1l**(-1) - 1.D0/2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl + 1.D0/2.D
     &    0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2*rgl**2 + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*i1r15**2*rgl**3*rsq1l**(-1) - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2 - 1/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**3*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**3*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)
     &    *i1r15**3*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2 + 2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**3*rsq1l**(-1) - 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl + 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2
     &    *rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25*rgl**3*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl
     &    )/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl + 1.D0/2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**2
     &    *rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**2*i1r15r25**2*rgl**2 + 1/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**3*rsq1l**(-1) - 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl + 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**3*i1r15r25*rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**3*i1r15r25*rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1) * ( 2.D0*mi(20)*r15**(-2)*i1r15r25*rsq1l - 2.D0*
     &    mi(20)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(20)*r15**(-2)*i1r25*
     &    rsq1l + 2.D0*mi(20)*r15**(-2)*i1r25*rgl - 2.D0*mi(20)*
     &    r15**(-1)*r25**(-1) - 4.D0*mi(20)*r15**(-1)*i1r25**2*rsq1l + 
     &    4.D0*mi(20)*r15**(-1)*i1r25**2*rgl - 2.D0*mi(20)*r25**(-1)*
     &    i1r15 + 2.D0*mi(20)*r25**(-1)*i1r15**2*rsq1l - 2.D0*mi(20)*
     &    r25**(-1)*i1r15**2*rgl - 2.D0*mi(20)*i1r15**2*i1r15r25*rsq1l
     &     + 2.D0*mi(20)*i1r15**2*i1r15r25*rgl + 2.D0*mi(22)*r15**(-1)*
     &    r25**(-1) - 2.D0*mi(24)*r15**(-1)*i1r15r25*rsq1l + 2.D0*mi(24
     &    )*r15**(-1)*i1r15r25*rgl + 2.D0*mi(24)*r25**(-1)*i1r15 - 2.D0
     &    *mi(24)*r25**(-1)*i1r15**2*rsq1l + 2.D0*mi(24)*r25**(-1)*
     &    i1r15**2*rgl - 2.D0*mi(24)*i1r15*i1r15r25*rsq1l + 2.D0*mi(24)
     &    *i1r15*i1r15r25*rgl + 2.D0*mi(24)*i1r15**2*i1r15r25*rsq1l - 2.
     &    D0*mi(24)*i1r15**2*i1r15r25*rgl - 2.D0*mi(26)*r15**(-2)*
     &    i1r15r25*rsq1l + 2.D0*mi(26)*r15**(-2)*i1r15r25*rgl + 2.D0*
     &    mi(26)*r15**(-2)*i1r25*rsq1l )
      e = e  + Nc**(-1) * (  - 2.D0*mi(26)*r15**(-2)*i1r25*rgl + 2.D0*
     &    mi(26)*r15**(-1)*i1r15r25*rsq1l - 2.D0*mi(26)*r15**(-1)*
     &    i1r15r25*rgl - 2.D0*mi(26)*r15**(-1)*i1r25*rsq1l + 2.D0*mi(26
     &    )*r15**(-1)*i1r25*rgl + 4.D0*mi(26)*r15**(-1)*i1r25**2*rsq1l
     &     - 4.D0*mi(26)*r15**(-1)*i1r25**2*rgl + 2.D0*mi(26)*r25**(-1)
     &    *i1r15*rsq1l - 2.D0*mi(26)*r25**(-1)*i1r15*rgl + 2.D0*mi(26)*
     &    i1r15*i1r15r25*rsq1l - 2.D0*mi(26)*i1r15*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125 * ( mi(28)*r25**(-2) - 2.D0*mi(28)*
     &    r25**(-2)*rsq1l + 2.D0*mi(28)*r25**(-2)*rgl - mi(28)*
     &    r25**(-1) - mi(28)*r15*r25**(-2) + mi(32)*r15**(-1)*i1r15r25*
     &    rsq1l - mi(32)*r15**(-1)*i1r15r25*rgl - mi(32)*r15**(-1)*
     &    i1r15r25**2*rsq1l**2 + 2.D0*mi(32)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1l - mi(32)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0*mi(32)*
     &    r25**(-2)*rsq1l - 2.D0*mi(32)*r25**(-2)*rgl - 2.D0*mi(32)*
     &    r25**(-2)*i1r15*rsq1l - mi(32)*r25**(-2)*i1r15*rsq1l**2 + 2.D0
     &    *mi(32)*r25**(-2)*i1r15*rgl + 2.D0*mi(32)*r25**(-2)*i1r15*rgl
     &    *rsq1l - mi(32)*r25**(-2)*i1r15*rgl**2 + mi(32)*r25**(-2)*
     &    i1r15**2*rsq1l**2 - 2.D0*mi(32)*r25**(-2)*i1r15**2*rgl*rsq1l
     &     + mi(32)*r25**(-2)*i1r15**2*rgl**2 + 2.D0*mi(32)*r25**(-1)*
     &    i1r15*rsq1l - 2.D0*mi(32)*r25**(-1)*i1r15*rgl - 2.D0*mi(32)*
     &    r25**(-1)*i1r15**2*rsq1l - 2.D0*mi(32)*r25**(-1)*i1r15**2*
     &    rsq1l**2 + 2.D0*mi(32)*r25**(-1)*i1r15**2*rgl + 4.D0*mi(32)*
     &    r25**(-1)*i1r15**2*rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(32)*r25**(-1)*i1r15**2*
     &    rgl**2 + 2.D0*mi(32)*r25**(-1)*i1r15**3*rsq1l**2 - 4.D0*mi(32
     &    )*r25**(-1)*i1r15**3*rgl*rsq1l + 2.D0*mi(32)*r25**(-1)*
     &    i1r15**3*rgl**2 + 2.D0*mi(32)*i1r15*i1r15r25*rsq1l - 2.D0*mi(
     &    32)*i1r15*i1r15r25*rgl - mi(32)*i1r15*i1r15r25**2*rsq1l**2 + 
     &    2.D0*mi(32)*i1r15*i1r15r25**2*rgl*rsq1l - mi(32)*i1r15*
     &    i1r15r25**2*rgl**2 - 2.D0*mi(32)*i1r15**2*i1r15r25*rsq1l - 2.D
     &    0*mi(32)*i1r15**2*i1r15r25*rsq1l**2 + 2.D0*mi(32)*i1r15**2*
     &    i1r15r25*rgl + 4.D0*mi(32)*i1r15**2*i1r15r25*rgl*rsq1l - 2.D0
     &    *mi(32)*i1r15**2*i1r15r25*rgl**2 + mi(32)*i1r15**2*
     &    i1r15r25**2*rsq1l**2 - 2.D0*mi(32)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1l + mi(32)*i1r15**2*i1r15r25**2*rgl**2 + 2.D0*mi(32)*
     &    i1r15**3*i1r15r25*rsq1l**2 - 4.D0*mi(32)*i1r15**3*i1r15r25*
     &    rgl*rsq1l + 2.D0*mi(32)*i1r15**3*i1r15r25*rgl**2 + mi(32)*r15
     &    *r25**(-2) - mi(36)*r15**(-2)*rsq1l + mi(36)*r15**(-2)*rgl + 
     &    mi(36)*r15**(-2)*i1r15r25*rsq1l )
      e = e  + Nc**(-1)*s125 * ( mi(36)*r15**(-2)*i1r15r25*rsq1l**2 - 
     &    mi(36)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(36)*r15**(-2)*
     &    i1r15r25*rgl*rsq1l + mi(36)*r15**(-2)*i1r15r25*rgl**2 - mi(36
     &    )*r15**(-2)*i1r15r25**2*rsq1l**2 + 2.D0*mi(36)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l - mi(36)*r15**(-2)*i1r15r25**2*rgl**2
     &     - mi(36)*r15**(-1)*i1r15r25*rsq1l + mi(36)*r15**(-1)*
     &    i1r15r25*rgl + mi(36)*r15**(-1)*i1r15r25**2*rsq1l**2 - 2.D0*
     &    mi(36)*r15**(-1)*i1r15r25**2*rgl*rsq1l + mi(36)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + mi(36)*r25**(-1)*i1r15**2*rsq1l**2 - 2.D0
     &    *mi(36)*r25**(-1)*i1r15**2*rgl*rsq1l + mi(36)*r25**(-1)*
     &    i1r15**2*rgl**2 + mi(36)*i1r15*i1r15r25**2*rsq1l**2 - 2.D0*
     &    mi(36)*i1r15*i1r15r25**2*rgl*rsq1l + mi(36)*i1r15*i1r15r25**2
     &    *rgl**2 + mi(36)*i1r15**2*i1r15r25*rsq1l**2 - 2.D0*mi(36)*
     &    i1r15**2*i1r15r25*rgl*rsq1l + mi(36)*i1r15**2*i1r15r25*rgl**2
     &     + 2.D0*mi(38)*r15**(-2)*rsq1l - 2.D0*mi(38)*r15**(-2)*rgl - 
     &    2.D0*mi(38)*r15**(-2)*i1r15r25*rsq1l )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(38)*r15**(-2)*i1r15r25*
     &    rsq1l**2 + 2.D0*mi(38)*r15**(-2)*i1r15r25*rgl + 4.D0*mi(38)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l - 2.D0*mi(38)*r15**(-2)*i1r15r25
     &    *rgl**2 + 2.D0*mi(38)*r15**(-2)*i1r15r25**2*rsq1l**2 - 4.D0*
     &    mi(38)*r15**(-2)*i1r15r25**2*rgl*rsq1l + 2.D0*mi(38)*
     &    r15**(-2)*i1r15r25**2*rgl**2 - 2.D0*mi(38)*r25**(-2)*rsq1l + 
     &    2.D0*mi(38)*r25**(-2)*rgl + 2.D0*mi(38)*r25**(-2)*i1r15*rsq1l
     &     + 2.D0*mi(38)*r25**(-2)*i1r15*rsq1l**2 - 2.D0*mi(38)*
     &    r25**(-2)*i1r15*rgl - 4.D0*mi(38)*r25**(-2)*i1r15*rgl*rsq1l
     &     + 2.D0*mi(38)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(38)*r25**(-2)
     &    *i1r15**2*rsq1l**2 + 4.D0*mi(38)*r25**(-2)*i1r15**2*rgl*rsq1l
     &     - 2.D0*mi(38)*r25**(-2)*i1r15**2*rgl**2 - mi(38)*r25**(-1)
     &     + 2.D0*mi(38)*r25**(-1)*i1r15**2*rsq1l + 2.D0*mi(38)*
     &    r25**(-1)*i1r15**2*rsq1l**2 - 2.D0*mi(38)*r25**(-1)*i1r15**2*
     &    rgl - 4.D0*mi(38)*r25**(-1)*i1r15**2*rgl*rsq1l + 2.D0*mi(38)*
     &    r25**(-1)*i1r15**2*rgl**2 )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(38)*r25**(-1)*i1r15**3*
     &    rsq1l**2 + 8.D0*mi(38)*r25**(-1)*i1r15**3*rgl*rsq1l - 4.D0*
     &    mi(38)*r25**(-1)*i1r15**3*rgl**2 + 2.D0*mi(38)*i1r15**2*
     &    i1r15r25*rsq1l + 2.D0*mi(38)*i1r15**2*i1r15r25*rsq1l**2 - 2.D0
     &    *mi(38)*i1r15**2*i1r15r25*rgl - 4.D0*mi(38)*i1r15**2*i1r15r25
     &    *rgl*rsq1l + 2.D0*mi(38)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(
     &    38)*i1r15**2*i1r15r25**2*rsq1l**2 + 4.D0*mi(38)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l - 2.D0*mi(38)*i1r15**2*i1r15r25**2*
     &    rgl**2 - 4.D0*mi(38)*i1r15**3*i1r15r25*rsq1l**2 + 8.D0*mi(38)
     &    *i1r15**3*i1r15r25*rgl*rsq1l - 4.D0*mi(38)*i1r15**3*i1r15r25*
     &    rgl**2 - mi(38)*r15*r25**(-2) + mi(40)*r15**(-2)*i1r15r25*
     &    rsq1l - mi(40)*r15**(-2)*i1r15r25*rgl - mi(40)*r15**(-2)*
     &    i1r15r25**2*rsq1l**2 + 2.D0*mi(40)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1l - mi(40)*r15**(-2)*i1r15r25**2*rgl**2 - mi(40)*
     &    r15**(-1)*i1r15r25*rsq1l + mi(40)*r15**(-1)*i1r15r25*rgl + 
     &    mi(40)*r15**(-1)*i1r15r25**2*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(40)*r15**(-1)*i1r15r25**2*
     &    rgl*rsq1l + mi(40)*r15**(-1)*i1r15r25**2*rgl**2 - mi(40)*
     &    r25**(-2) + 2.D0*mi(40)*r25**(-2)*rsq1l - 2.D0*mi(40)*
     &    r25**(-2)*rgl - mi(40)*r25**(-2)*i1r15*rsq1l**2 + 2.D0*mi(40)
     &    *r25**(-2)*i1r15*rgl*rsq1l - mi(40)*r25**(-2)*i1r15*rgl**2 + 
     &    2.D0*mi(40)*r25**(-1)*i1r15*rsq1l - 2.D0*mi(40)*r25**(-1)*
     &    i1r15*rgl - 2.D0*mi(40)*r25**(-1)*i1r15**2*rsq1l**2 + 4.D0*
     &    mi(40)*r25**(-1)*i1r15**2*rgl*rsq1l - 2.D0*mi(40)*r25**(-1)*
     &    i1r15**2*rgl**2 - 2.D0*mi(40)*i1r15*i1r15r25*rsq1l + 2.D0*mi(
     &    40)*i1r15*i1r15r25*rgl + mi(40)*i1r15*i1r15r25**2*rsq1l**2 - 
     &    2.D0*mi(40)*i1r15*i1r15r25**2*rgl*rsq1l + mi(40)*i1r15*
     &    i1r15r25**2*rgl**2 + 2.D0*mi(40)*i1r15**2*i1r15r25*rsq1l**2
     &     - 4.D0*mi(40)*i1r15**2*i1r15r25*rgl*rsq1l + 2.D0*mi(40)*
     &    i1r15**2*i1r15r25*rgl**2 + mi(40)*r15*r25**(-2) - mi(42)*
     &    r15**(-2)*rsq1l + mi(42)*r15**(-2)*rgl - mi(42)*r15**(-2)*
     &    i1r15r25*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(42)*r15**(-2)*i1r15r25*rgl*
     &    rsq1l - mi(42)*r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(42)*
     &    r15**(-2)*i1r25*rsq1l**2 - 4.D0*mi(42)*r15**(-2)*i1r25*rgl*
     &    rsq1l + 2.D0*mi(42)*r15**(-2)*i1r25*rgl**2 + mi(42)*r15**(-1)
     &    *i1r15r25*rsq1l - mi(42)*r15**(-1)*i1r15r25*rgl - mi(42)*
     &    r15**(-1)*i1r15r25**2*rsq1l**2 + 2.D0*mi(42)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1l - mi(42)*r15**(-1)*i1r15r25**2*rgl**2
     &     - 2.D0*mi(42)*r15**(-1)*i1r25*rsq1l + 2.D0*mi(42)*r15**(-1)*
     &    i1r25*rgl + 4.D0*mi(42)*r15**(-1)*i1r25**2*rsq1l**2 - 8.D0*
     &    mi(42)*r15**(-1)*i1r25**2*rgl*rsq1l + 4.D0*mi(42)*r15**(-1)*
     &    i1r25**2*rgl**2 + mi(42)*r25**(-2)*i1r15**2*rsq1l**2 - 2.D0*
     &    mi(42)*r25**(-2)*i1r15**2*rgl*rsq1l + mi(42)*r25**(-2)*
     &    i1r15**2*rgl**2 - mi(42)*r25**(-1)*i1r15**2*rsq1l**2 + 2.D0*
     &    mi(42)*r25**(-1)*i1r15**2*rgl*rsq1l - mi(42)*r25**(-1)*
     &    i1r15**2*rgl**2 + 2.D0*mi(42)*r25**(-1)*i1r15**3*rsq1l**2 - 4.
     &    D0*mi(42)*r25**(-1)*i1r15**3*rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(42)*r25**(-1)*i1r15**3*rgl**2
     &     - mi(42)*i1r15*i1r15r25**2*rsq1l**2 + 2.D0*mi(42)*i1r15*
     &    i1r15r25**2*rgl*rsq1l - mi(42)*i1r15*i1r15r25**2*rgl**2 - mi(
     &    42)*i1r15**2*i1r15r25*rsq1l**2 + 2.D0*mi(42)*i1r15**2*
     &    i1r15r25*rgl*rsq1l - mi(42)*i1r15**2*i1r15r25*rgl**2 + mi(42)
     &    *i1r15**2*i1r15r25**2*rsq1l**2 - 2.D0*mi(42)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l + mi(42)*i1r15**2*i1r15r25**2*rgl**2 + 
     &    2.D0*mi(42)*i1r15**3*i1r15r25*rsq1l**2 - 4.D0*mi(42)*i1r15**3
     &    *i1r15r25*rgl*rsq1l + 2.D0*mi(42)*i1r15**3*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - mi(44)*r15**(-2)*rsq1l**2 + 2.D0*
     &    mi(44)*r15**(-2)*rgl*rsq1l - mi(44)*r15**(-2)*rgl**2 + mi(44)
     &    *r15**(-2)*i1r15r25*rsq1l**2 + mi(44)*r15**(-2)*i1r15r25*
     &    rsq1l**3 - 2.D0*mi(44)*r15**(-2)*i1r15r25*rgl*rsq1l - 3.D0*
     &    mi(44)*r15**(-2)*i1r15r25*rgl*rsq1l**2 + mi(44)*r15**(-2)*
     &    i1r15r25*rgl**2 + 3.D0*mi(44)*r15**(-2)*i1r15r25*rgl**2*rsq1l
     &     - mi(44)*r15**(-2)*i1r15r25*rgl**3 - mi(44)*r15**(-2)*
     &    i1r15r25**2*rsq1l**3 + 3.D0*mi(44)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1l**2 - 3.D0*mi(44)*r15**(-2)*i1r15r25**2*rgl**2*rsq1l + 
     &    mi(44)*r15**(-2)*i1r15r25**2*rgl**3 + mi(44)*r15**(-1)*rsq1l
     &     + mi(44)*r15**(-1)*rgl - mi(44)*r15**(-1)*i1r15r25*rsq1l**2
     &     + mi(44)*r15**(-1)*i1r15r25*rgl**2 + 3.D0*mi(44)*r25**(-2)*
     &    rsq1l**2 - 6.D0*mi(44)*r25**(-2)*rgl*rsq1l + 3.D0*mi(44)*
     &    r25**(-2)*rgl**2 - 3.D0*mi(44)*r25**(-2)*i1r15*rsq1l**2 - mi(
     &    44)*r25**(-2)*i1r15*rsq1l**3 + 6.D0*mi(44)*r25**(-2)*i1r15*
     &    rgl*rsq1l )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(44)*r25**(-2)*i1r15*rgl*
     &    rsq1l**2 - 3.D0*mi(44)*r25**(-2)*i1r15*rgl**2 - 3.D0*mi(44)*
     &    r25**(-2)*i1r15*rgl**2*rsq1l + mi(44)*r25**(-2)*i1r15*rgl**3
     &     + mi(44)*r25**(-2)*i1r15**2*rsq1l**3 - 3.D0*mi(44)*r25**(-2)
     &    *i1r15**2*rgl*rsq1l**2 + 3.D0*mi(44)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1l - mi(44)*r25**(-2)*i1r15**2*rgl**3 - mi(44)*
     &    r25**(-1)*rsq1l - mi(44)*r25**(-1)*rgl + 3.D0*mi(44)*
     &    r25**(-1)*i1r15*rsq1l**2 - 4.D0*mi(44)*r25**(-1)*i1r15*rgl*
     &    rsq1l + mi(44)*r25**(-1)*i1r15*rgl**2 - 3.D0*mi(44)*r25**(-1)
     &    *i1r15**2*rsq1l**2 - mi(44)*r25**(-1)*i1r15**2*rsq1l**3 + 6.D0
     &    *mi(44)*r25**(-1)*i1r15**2*rgl*rsq1l + 3.D0*mi(44)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l**2 - 3.D0*mi(44)*r25**(-1)*i1r15**2*rgl**2
     &     - 3.D0*mi(44)*r25**(-1)*i1r15**2*rgl**2*rsq1l + mi(44)*
     &    r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(44)*r25**(-1)*i1r15**3*
     &    rsq1l**3 - 6.D0*mi(44)*r25**(-1)*i1r15**3*rgl*rsq1l**2 + 6.D0
     &    *mi(44)*r25**(-1)*i1r15**3*rgl**2*rsq1l )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(44)*r25**(-1)*i1r15**3*
     &    rgl**3 + 3.D0*mi(44)*i1r15*i1r15r25*rsq1l**2 - 4.D0*mi(44)*
     &    i1r15*i1r15r25*rgl*rsq1l + mi(44)*i1r15*i1r15r25*rgl**2 - 3.D0
     &    *mi(44)*i1r15**2*i1r15r25*rsq1l**2 - mi(44)*i1r15**2*i1r15r25
     &    *rsq1l**3 + 6.D0*mi(44)*i1r15**2*i1r15r25*rgl*rsq1l + 3.D0*
     &    mi(44)*i1r15**2*i1r15r25*rgl*rsq1l**2 - 3.D0*mi(44)*i1r15**2*
     &    i1r15r25*rgl**2 - 3.D0*mi(44)*i1r15**2*i1r15r25*rgl**2*rsq1l
     &     + mi(44)*i1r15**2*i1r15r25*rgl**3 + mi(44)*i1r15**2*
     &    i1r15r25**2*rsq1l**3 - 3.D0*mi(44)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1l**2 + 3.D0*mi(44)*i1r15**2*i1r15r25**2*rgl**2*rsq1l - 
     &    mi(44)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(44)*i1r15**3*
     &    i1r15r25*rsq1l**3 - 6.D0*mi(44)*i1r15**3*i1r15r25*rgl*
     &    rsq1l**2 + 6.D0*mi(44)*i1r15**3*i1r15r25*rgl**2*rsq1l - 2.D0*
     &    mi(44)*i1r15**3*i1r15r25*rgl**3 - mi(44)*r15*r25**(-2) + 3.D0
     &    *mi(44)*r15*r25**(-2)*rsq1l - 3.D0*mi(44)*r15*r25**(-2)*rgl
     &     + mi(44)*r15*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * ( mi(44)*r15**2*r25**(-2) - 2.D0*mi(46
     &    )*r15**(-2)*rsq1l**2 + 4.D0*mi(46)*r15**(-2)*rgl*rsq1l - 2.D0
     &    *mi(46)*r15**(-2)*rgl**2 + 2.D0*mi(46)*r15**(-2)*i1r15r25*
     &    rsq1l**2 + mi(46)*r15**(-2)*i1r15r25*rsq1l**3 - 4.D0*mi(46)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l - 3.D0*mi(46)*r15**(-2)*i1r15r25
     &    *rgl*rsq1l**2 + 2.D0*mi(46)*r15**(-2)*i1r15r25*rgl**2 + 3.D0*
     &    mi(46)*r15**(-2)*i1r15r25*rgl**2*rsq1l - mi(46)*r15**(-2)*
     &    i1r15r25*rgl**3 - mi(46)*r15**(-2)*i1r15r25**2*rsq1l**3 + 3.D0
     &    *mi(46)*r15**(-2)*i1r15r25**2*rgl*rsq1l**2 - 3.D0*mi(46)*
     &    r15**(-2)*i1r15r25**2*rgl**2*rsq1l + mi(46)*r15**(-2)*
     &    i1r15r25**2*rgl**3 - mi(46)*r15**(-2)*r25*rsq1l + mi(46)*
     &    r15**(-2)*r25*rgl - 3.D0*mi(46)*r15**(-1)*i1r15r25*rsq1l**2
     &     + 4.D0*mi(46)*r15**(-1)*i1r15r25*rgl*rsq1l - mi(46)*
     &    r15**(-1)*i1r15r25*rgl**2 - mi(46)*r25**(-2)*i1r15*rsq1l**3
     &     + 3.D0*mi(46)*r25**(-2)*i1r15*rgl*rsq1l**2 - 3.D0*mi(46)*
     &    r25**(-2)*i1r15*rgl**2*rsq1l )
      e = e  + Nc**(-1)*s125**2 * ( mi(46)*r25**(-2)*i1r15*rgl**3 + mi(
     &    46)*r25**(-2)*i1r15**2*rsq1l**3 - 3.D0*mi(46)*r25**(-2)*
     &    i1r15**2*rgl*rsq1l**2 + 3.D0*mi(46)*r25**(-2)*i1r15**2*rgl**2
     &    *rsq1l - mi(46)*r25**(-2)*i1r15**2*rgl**3 + mi(46)*r25**(-1)*
     &    i1r15*rsq1l**2 - mi(46)*r25**(-1)*i1r15*rgl**2 - mi(46)*
     &    r25**(-1)*i1r15**2*rsq1l**3 + 3.D0*mi(46)*r25**(-1)*i1r15**2*
     &    rgl*rsq1l**2 - 3.D0*mi(46)*r25**(-1)*i1r15**2*rgl**2*rsq1l + 
     &    mi(46)*r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(46)*r25**(-1)*
     &    i1r15**3*rsq1l**3 - 6.D0*mi(46)*r25**(-1)*i1r15**3*rgl*
     &    rsq1l**2 + 6.D0*mi(46)*r25**(-1)*i1r15**3*rgl**2*rsq1l - 2.D0
     &    *mi(46)*r25**(-1)*i1r15**3*rgl**3 + mi(46)*i1r15*i1r15r25*
     &    rsq1l**2 - mi(46)*i1r15*i1r15r25*rgl**2 - mi(46)*i1r15**2*
     &    i1r15r25*rsq1l**3 + 3.D0*mi(46)*i1r15**2*i1r15r25*rgl*
     &    rsq1l**2 - 3.D0*mi(46)*i1r15**2*i1r15r25*rgl**2*rsq1l + mi(46
     &    )*i1r15**2*i1r15r25*rgl**3 + mi(46)*i1r15**2*i1r15r25**2*
     &    rsq1l**3 )
      e = e  + Nc**(-1)*s125**2 * (  - 3.D0*mi(46)*i1r15**2*i1r15r25**2*
     &    rgl*rsq1l**2 + 3.D0*mi(46)*i1r15**2*i1r15r25**2*rgl**2*rsq1l
     &     - mi(46)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(46)*i1r15**3*
     &    i1r15r25*rsq1l**3 - 6.D0*mi(46)*i1r15**3*i1r15r25*rgl*
     &    rsq1l**2 + 6.D0*mi(46)*i1r15**3*i1r15r25*rgl**2*rsq1l - 2.D0*
     &    mi(46)*i1r15**3*i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*i1r25 - 2.D0*mi(
     &    17)*r25**(-1)*i1r15 - 2.D0*mi(18)*r15**(-1)*i1r25 + 2.D0*mi(
     &    18)*r25**(-1)*i1r15 )
      e = e  + Nc * (  - 2.D0*mi(20)*r15**(-2)*i1r15r25*rsq1l + 2.D0*mi(
     &    20)*r15**(-2)*i1r15r25*rgl + 2.D0*mi(20)*r15**(-2)*i1r25*
     &    rsq1l - 2.D0*mi(20)*r15**(-2)*i1r25*rgl - 2.D0*mi(20)*
     &    r15**(-1)*i1r15r25 + 4.D0*mi(20)*r15**(-1)*i1r25**2*rsq1l - 4.
     &    D0*mi(20)*r15**(-1)*i1r25**2*rgl - 2.D0*mi(20)*r25**(-1)*
     &    i1r15**2*rsq1l + 2.D0*mi(20)*r25**(-1)*i1r15**2*rgl - 2.D0*
     &    mi(20)*i1r15*i1r15r25 + 2.D0*mi(20)*i1r15**2*i1r15r25*rsq1l
     &     - 2.D0*mi(20)*i1r15**2*i1r15r25*rgl + 2.D0*mi(24)*r15**(-1)*
     &    i1r15r25*rsq1l - 2.D0*mi(24)*r15**(-1)*i1r15r25*rgl + 2.D0*
     &    mi(24)*r25**(-1)*i1r15**2*rsq1l - 2.D0*mi(24)*r25**(-1)*
     &    i1r15**2*rgl + 2.D0*mi(24)*i1r15*i1r15r25 + 2.D0*mi(24)*i1r15
     &    *i1r15r25*rsq1l - 2.D0*mi(24)*i1r15*i1r15r25*rgl - 2.D0*mi(24
     &    )*i1r15**2*i1r15r25*rsq1l + 2.D0*mi(24)*i1r15**2*i1r15r25*rgl
     &     + 2.D0*mi(26)*r15**(-2)*i1r15r25*rsq1l - 2.D0*mi(26)*
     &    r15**(-2)*i1r15r25*rgl - 2.D0*mi(26)*r15**(-2)*i1r25*rsq1l + 
     &    2.D0*mi(26)*r15**(-2)*i1r25*rgl )
      e = e  + Nc * ( 2.D0*mi(26)*r15**(-1)*i1r15r25 - 2.D0*mi(26)*
     &    r15**(-1)*i1r15r25*rsq1l + 2.D0*mi(26)*r15**(-1)*i1r15r25*rgl
     &     + 2.D0*mi(26)*r15**(-1)*i1r25*rsq1l - 2.D0*mi(26)*r15**(-1)*
     &    i1r25*rgl - 4.D0*mi(26)*r15**(-1)*i1r25**2*rsq1l + 4.D0*mi(26
     &    )*r15**(-1)*i1r25**2*rgl - 2.D0*mi(26)*r25**(-1)*i1r15*rsq1l
     &     + 2.D0*mi(26)*r25**(-1)*i1r15*rgl - 2.D0*mi(26)*i1r15*
     &    i1r15r25*rsq1l + 2.D0*mi(26)*i1r15*i1r15r25*rgl )
      e = e  + Nc*s125 * ( mi(30)*r15**(-1)*i1r15r25*rsq1l - mi(30)*
     &    r15**(-1)*i1r15r25*rgl - mi(30)*r15**(-1)*i1r15r25**2*
     &    rsq1l**2 + 2.D0*mi(30)*r15**(-1)*i1r15r25**2*rgl*rsq1l - mi(
     &    30)*r15**(-1)*i1r15r25**2*rgl**2 - mi(30)*r25**(-2)*i1r15*
     &    rsq1l**2 + 2.D0*mi(30)*r25**(-2)*i1r15*rgl*rsq1l - mi(30)*
     &    r25**(-2)*i1r15*rgl**2 + mi(30)*r25**(-2)*i1r15**2*rsq1l**2
     &     - 2.D0*mi(30)*r25**(-2)*i1r15**2*rgl*rsq1l + mi(30)*
     &    r25**(-2)*i1r15**2*rgl**2 + 2.D0*mi(30)*r25**(-1)*i1r15*rsq1l
     &     - 2.D0*mi(30)*r25**(-1)*i1r15*rgl - 2.D0*mi(30)*r25**(-1)*
     &    i1r15**2*rsq1l - 2.D0*mi(30)*r25**(-1)*i1r15**2*rsq1l**2 + 2.D
     &    0*mi(30)*r25**(-1)*i1r15**2*rgl + 4.D0*mi(30)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l - 2.D0*mi(30)*r25**(-1)*i1r15**2*rgl**2 + 
     &    2.D0*mi(30)*r25**(-1)*i1r15**3*rsq1l**2 - 4.D0*mi(30)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l + 2.D0*mi(30)*r25**(-1)*i1r15**3
     &    *rgl**2 + 2.D0*mi(30)*i1r15r25**2*rsq1l - 2.D0*mi(30)*
     &    i1r15r25**2*rgl )
      e = e  + Nc*s125 * ( 2.D0*mi(30)*i1r15*i1r15r25*rsq1l - 2.D0*mi(30
     &    )*i1r15*i1r15r25*rgl - 2.D0*mi(30)*i1r15*i1r15r25**2*rsq1l - 
     &    mi(30)*i1r15*i1r15r25**2*rsq1l**2 + 2.D0*mi(30)*i1r15*
     &    i1r15r25**2*rgl + 2.D0*mi(30)*i1r15*i1r15r25**2*rgl*rsq1l - 
     &    mi(30)*i1r15*i1r15r25**2*rgl**2 - 2.D0*mi(30)*i1r15**2*
     &    i1r15r25*rsq1l - 2.D0*mi(30)*i1r15**2*i1r15r25*rsq1l**2 + 2.D0
     &    *mi(30)*i1r15**2*i1r15r25*rgl + 4.D0*mi(30)*i1r15**2*i1r15r25
     &    *rgl*rsq1l - 2.D0*mi(30)*i1r15**2*i1r15r25*rgl**2 + mi(30)*
     &    i1r15**2*i1r15r25**2*rsq1l**2 - 2.D0*mi(30)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l + mi(30)*i1r15**2*i1r15r25**2*rgl**2 + 
     &    2.D0*mi(30)*i1r15**3*i1r15r25*rsq1l**2 - 4.D0*mi(30)*i1r15**3
     &    *i1r15r25*rgl*rsq1l + 2.D0*mi(30)*i1r15**3*i1r15r25*rgl**2 + 
     &    mi(30)*r15*i1r15r25**2 - mi(34)*r15**(-2)*rsq1l + mi(34)*
     &    r15**(-2)*rgl + mi(34)*r15**(-2)*i1r15r25*rsq1l + mi(34)*
     &    r15**(-2)*i1r15r25*rsq1l**2 - mi(34)*r15**(-2)*i1r15r25*rgl
     &     - 2.D0*mi(34)*r15**(-2)*i1r15r25*rgl*rsq1l )
      e = e  + Nc*s125 * ( mi(34)*r15**(-2)*i1r15r25*rgl**2 - mi(34)*
     &    r15**(-2)*i1r15r25**2*rsq1l**2 + 2.D0*mi(34)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l - mi(34)*r15**(-2)*i1r15r25**2*rgl**2
     &     - mi(34)*r15**(-1)*i1r15r25*rsq1l + mi(34)*r15**(-1)*
     &    i1r15r25*rgl + mi(34)*r15**(-1)*i1r15r25**2*rsq1l**2 - 2.D0*
     &    mi(34)*r15**(-1)*i1r15r25**2*rgl*rsq1l + mi(34)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + mi(34)*r25**(-1)*i1r15**2*rsq1l**2 - 2.D0
     &    *mi(34)*r25**(-1)*i1r15**2*rgl*rsq1l + mi(34)*r25**(-1)*
     &    i1r15**2*rgl**2 - mi(34)*i1r15r25 + mi(34)*i1r15r25**2 - 2.D0
     &    *mi(34)*i1r15r25**2*rsq1l + 2.D0*mi(34)*i1r15r25**2*rgl + mi(
     &    34)*i1r15*i1r15r25**2*rsq1l**2 - 2.D0*mi(34)*i1r15*
     &    i1r15r25**2*rgl*rsq1l + mi(34)*i1r15*i1r15r25**2*rgl**2 + mi(
     &    34)*i1r15**2*i1r15r25*rsq1l**2 - 2.D0*mi(34)*i1r15**2*
     &    i1r15r25*rgl*rsq1l + mi(34)*i1r15**2*i1r15r25*rgl**2 - mi(34)
     &    *r15*i1r15r25**2 - mi(40)*r15**(-2)*i1r15r25*rsq1l + mi(40)*
     &    r15**(-2)*i1r15r25*rgl )
      e = e  + Nc*s125 * ( mi(40)*r15**(-2)*i1r15r25**2*rsq1l**2 - 2.D0*
     &    mi(40)*r15**(-2)*i1r15r25**2*rgl*rsq1l + mi(40)*r15**(-2)*
     &    i1r15r25**2*rgl**2 + mi(40)*r15**(-1)*i1r15r25*rsq1l - mi(40)
     &    *r15**(-1)*i1r15r25*rgl - mi(40)*r15**(-1)*i1r15r25**2*
     &    rsq1l**2 + 2.D0*mi(40)*r15**(-1)*i1r15r25**2*rgl*rsq1l - mi(
     &    40)*r15**(-1)*i1r15r25**2*rgl**2 + mi(40)*r25**(-2)*i1r15*
     &    rsq1l**2 - 2.D0*mi(40)*r25**(-2)*i1r15*rgl*rsq1l + mi(40)*
     &    r25**(-2)*i1r15*rgl**2 - 2.D0*mi(40)*r25**(-1)*i1r15*rsq1l + 
     &    2.D0*mi(40)*r25**(-1)*i1r15*rgl + 2.D0*mi(40)*r25**(-1)*
     &    i1r15**2*rsq1l**2 - 4.D0*mi(40)*r25**(-1)*i1r15**2*rgl*rsq1l
     &     + 2.D0*mi(40)*r25**(-1)*i1r15**2*rgl**2 - mi(40)*i1r15r25**2
     &     + 2.D0*mi(40)*i1r15r25**2*rsq1l - 2.D0*mi(40)*i1r15r25**2*
     &    rgl + 2.D0*mi(40)*i1r15*i1r15r25*rsq1l - 2.D0*mi(40)*i1r15*
     &    i1r15r25*rgl - mi(40)*i1r15*i1r15r25**2*rsq1l**2 + 2.D0*mi(40
     &    )*i1r15*i1r15r25**2*rgl*rsq1l - mi(40)*i1r15*i1r15r25**2*
     &    rgl**2 )
      e = e  + Nc*s125 * (  - 2.D0*mi(40)*i1r15**2*i1r15r25*rsq1l**2 + 4.
     &    D0*mi(40)*i1r15**2*i1r15r25*rgl*rsq1l - 2.D0*mi(40)*i1r15**2*
     &    i1r15r25*rgl**2 + mi(40)*r15*i1r15r25**2 + mi(42)*r15**(-2)*
     &    rsq1l - mi(42)*r15**(-2)*rgl + mi(42)*r15**(-2)*i1r15r25*
     &    rsq1l**2 - 2.D0*mi(42)*r15**(-2)*i1r15r25*rgl*rsq1l + mi(42)*
     &    r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(42)*r15**(-2)*i1r25*
     &    rsq1l**2 + 4.D0*mi(42)*r15**(-2)*i1r25*rgl*rsq1l - 2.D0*mi(42
     &    )*r15**(-2)*i1r25*rgl**2 - mi(42)*r15**(-1)*i1r15r25*rsq1l + 
     &    mi(42)*r15**(-1)*i1r15r25*rgl + mi(42)*r15**(-1)*i1r15r25**2*
     &    rsq1l**2 - 2.D0*mi(42)*r15**(-1)*i1r15r25**2*rgl*rsq1l + mi(
     &    42)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0*mi(42)*r15**(-1)*
     &    i1r25*rsq1l - 2.D0*mi(42)*r15**(-1)*i1r25*rgl - 4.D0*mi(42)*
     &    r15**(-1)*i1r25**2*rsq1l**2 + 8.D0*mi(42)*r15**(-1)*i1r25**2*
     &    rgl*rsq1l - 4.D0*mi(42)*r15**(-1)*i1r25**2*rgl**2 - mi(42)*
     &    r25**(-2)*i1r15**2*rsq1l**2 + 2.D0*mi(42)*r25**(-2)*i1r15**2*
     &    rgl*rsq1l )
      e = e  + Nc*s125 * (  - mi(42)*r25**(-2)*i1r15**2*rgl**2 + 2.D0*
     &    mi(42)*r25**(-1)*i1r15**2*rsq1l + mi(42)*r25**(-1)*i1r15**2*
     &    rsq1l**2 - 2.D0*mi(42)*r25**(-1)*i1r15**2*rgl - 2.D0*mi(42)*
     &    r25**(-1)*i1r15**2*rgl*rsq1l + mi(42)*r25**(-1)*i1r15**2*
     &    rgl**2 - 2.D0*mi(42)*r25**(-1)*i1r15**3*rsq1l**2 + 4.D0*mi(42
     &    )*r25**(-1)*i1r15**3*rgl*rsq1l - 2.D0*mi(42)*r25**(-1)*
     &    i1r15**3*rgl**2 - mi(42)*i1r15r25 - 2.D0*mi(42)*i1r15r25**2*
     &    rsq1l + 2.D0*mi(42)*i1r15r25**2*rgl + 2.D0*mi(42)*i1r15*
     &    i1r15r25**2*rsq1l + mi(42)*i1r15*i1r15r25**2*rsq1l**2 - 2.D0*
     &    mi(42)*i1r15*i1r15r25**2*rgl - 2.D0*mi(42)*i1r15*i1r15r25**2*
     &    rgl*rsq1l + mi(42)*i1r15*i1r15r25**2*rgl**2 + 2.D0*mi(42)*
     &    i1r15**2*i1r15r25*rsq1l + mi(42)*i1r15**2*i1r15r25*rsq1l**2
     &     - 2.D0*mi(42)*i1r15**2*i1r15r25*rgl - 2.D0*mi(42)*i1r15**2*
     &    i1r15r25*rgl*rsq1l + mi(42)*i1r15**2*i1r15r25*rgl**2 - mi(42)
     &    *i1r15**2*i1r15r25**2*rsq1l**2 + 2.D0*mi(42)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l )
      e = e  + Nc*s125 * (  - mi(42)*i1r15**2*i1r15r25**2*rgl**2 - 2.D0*
     &    mi(42)*i1r15**3*i1r15r25*rsq1l**2 + 4.D0*mi(42)*i1r15**3*
     &    i1r15r25*rgl*rsq1l - 2.D0*mi(42)*i1r15**3*i1r15r25*rgl**2 - 
     &    mi(42)*r15*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - mi(48)*r15**(-2)*rsq1l**2 + 2.D0*mi(48)
     &    *r15**(-2)*rgl*rsq1l - mi(48)*r15**(-2)*rgl**2 + mi(48)*
     &    r15**(-2)*i1r15r25*rsq1l**2 + mi(48)*r15**(-2)*i1r15r25*
     &    rsq1l**3 - 2.D0*mi(48)*r15**(-2)*i1r15r25*rgl*rsq1l - 3.D0*
     &    mi(48)*r15**(-2)*i1r15r25*rgl*rsq1l**2 + mi(48)*r15**(-2)*
     &    i1r15r25*rgl**2 + 3.D0*mi(48)*r15**(-2)*i1r15r25*rgl**2*rsq1l
     &     - mi(48)*r15**(-2)*i1r15r25*rgl**3 - mi(48)*r15**(-2)*
     &    i1r15r25**2*rsq1l**3 + 3.D0*mi(48)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1l**2 - 3.D0*mi(48)*r15**(-2)*i1r15r25**2*rgl**2*rsq1l + 
     &    mi(48)*r15**(-2)*i1r15r25**2*rgl**3 + mi(48)*r15**(-1)*rsq1l
     &     + mi(48)*r15**(-1)*rgl - mi(48)*r15**(-1)*i1r15r25*rsq1l - 
     &    mi(48)*r15**(-1)*i1r15r25*rsq1l**2 + mi(48)*r15**(-1)*
     &    i1r15r25*rgl + mi(48)*r15**(-1)*i1r15r25*rgl**2 + mi(48)*
     &    r15**(-1)*i1r15r25**2*rsq1l**2 - 2.D0*mi(48)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1l + mi(48)*r15**(-1)*i1r15r25**2*rgl**2
     &     - mi(48)*r25**(-2)*i1r15*rsq1l**3 )
      e = e  + Nc*s125**2 * ( 3.D0*mi(48)*r25**(-2)*i1r15*rgl*rsq1l**2
     &     - 3.D0*mi(48)*r25**(-2)*i1r15*rgl**2*rsq1l + mi(48)*
     &    r25**(-2)*i1r15*rgl**3 + mi(48)*r25**(-2)*i1r15**2*rsq1l**3
     &     - 3.D0*mi(48)*r25**(-2)*i1r15**2*rgl*rsq1l**2 + 3.D0*mi(48)*
     &    r25**(-2)*i1r15**2*rgl**2*rsq1l - mi(48)*r25**(-2)*i1r15**2*
     &    rgl**3 + 3.D0*mi(48)*r25**(-1)*i1r15*rsq1l**2 - 4.D0*mi(48)*
     &    r25**(-1)*i1r15*rgl*rsq1l + mi(48)*r25**(-1)*i1r15*rgl**2 - 3.
     &    D0*mi(48)*r25**(-1)*i1r15**2*rsq1l**2 - mi(48)*r25**(-1)*
     &    i1r15**2*rsq1l**3 + 6.D0*mi(48)*r25**(-1)*i1r15**2*rgl*rsq1l
     &     + 3.D0*mi(48)*r25**(-1)*i1r15**2*rgl*rsq1l**2 - 3.D0*mi(48)*
     &    r25**(-1)*i1r15**2*rgl**2 - 3.D0*mi(48)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1l + mi(48)*r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(48)
     &    *r25**(-1)*i1r15**3*rsq1l**3 - 6.D0*mi(48)*r25**(-1)*i1r15**3
     &    *rgl*rsq1l**2 + 6.D0*mi(48)*r25**(-1)*i1r15**3*rgl**2*rsq1l
     &     - 2.D0*mi(48)*r25**(-1)*i1r15**3*rgl**3 - 2.D0*mi(48)*
     &    i1r15r25*rgl )
      e = e  + Nc*s125**2 * ( mi(48)*i1r15r25**2*rsq1l - mi(48)*
     &    i1r15r25**2*rgl + 3.D0*mi(48)*i1r15*i1r15r25*rsq1l**2 - 4.D0*
     &    mi(48)*i1r15*i1r15r25*rgl*rsq1l + mi(48)*i1r15*i1r15r25*
     &    rgl**2 - 3.D0*mi(48)*i1r15*i1r15r25**2*rsq1l**2 + 6.D0*mi(48)
     &    *i1r15*i1r15r25**2*rgl*rsq1l - 3.D0*mi(48)*i1r15*i1r15r25**2*
     &    rgl**2 - 3.D0*mi(48)*i1r15**2*i1r15r25*rsq1l**2 - mi(48)*
     &    i1r15**2*i1r15r25*rsq1l**3 + 6.D0*mi(48)*i1r15**2*i1r15r25*
     &    rgl*rsq1l + 3.D0*mi(48)*i1r15**2*i1r15r25*rgl*rsq1l**2 - 3.D0
     &    *mi(48)*i1r15**2*i1r15r25*rgl**2 - 3.D0*mi(48)*i1r15**2*
     &    i1r15r25*rgl**2*rsq1l + mi(48)*i1r15**2*i1r15r25*rgl**3 + mi(
     &    48)*i1r15**2*i1r15r25**2*rsq1l**3 - 3.D0*mi(48)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l**2 + 3.D0*mi(48)*i1r15**2*i1r15r25**2*
     &    rgl**2*rsq1l - mi(48)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(
     &    48)*i1r15**3*i1r15r25*rsq1l**3 - 6.D0*mi(48)*i1r15**3*
     &    i1r15r25*rgl*rsq1l**2 + 6.D0*mi(48)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1l )
      e = e  + Nc*s125**2 * (  - 2.D0*mi(48)*i1r15**3*i1r15r25*rgl**3 + 
     &    mi(48)*r15*i1r15r25 - mi(48)*r15*i1r15r25**2 + 2.D0*mi(48)*
     &    r15*i1r15r25**2*rsq1l - 2.D0*mi(48)*r15*i1r15r25**2*rgl + mi(
     &    48)*r15**2*i1r15r25**2 )

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

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(19)*r15**(-2)*i1r15r25*
     &    rgl*rsq1r**(-1) + 2.D0*mi(19)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1r**(-1) + mi(19)*r15**(-1)*i1r15r25*rsq1r**(-1) - mi(19)*
     &    r15**(-1)*i1r15r25**2*rsq1r**(-1) + 2.D0*mi(19)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1r**(-1) + mi(19)*r25**(-1)*i1r15*
     &    rsq1r**(-1) - mi(19)*r25**(-1)*i1r15**2*rsq1r**(-1) + 2.D0*
     &    mi(19)*r25**(-1)*i1r15**2*rgl*rsq1r**(-1) + mi(19)*i1r15*
     &    i1r15r25*rsq1r**(-1) - mi(19)*i1r15*i1r15r25**2*rsq1r**(-1)
     &     + 2.D0*mi(19)*i1r15*i1r15r25**2*rgl*rsq1r**(-1) - mi(19)*
     &    i1r15**2*i1r15r25*rsq1r**(-1) + 2.D0*mi(19)*i1r15**2*i1r15r25
     &    *rgl*rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25*rgl - 4.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*
     &    rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25**2*rgl + 4.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25 )
      e = e  + Nc**(-1)*s125**(-1) * ( 4.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25*rgl*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25**2 - 2.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25**2*rgl + 4.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15 + 4.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*
     &    rgl*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2
     &     - 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl + 4.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) - 
     &    1/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25 + 4.D0/(rsq1r - rgl)*
     &    mi(19)*i1r15*i1r15r25*rgl*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19
     &    )*i1r15*i1r15r25**2 - 2.D0/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25**2*rgl + 4.D0/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2
     &    *rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25 - 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl + 
     &    4.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*i1r15r25*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**3*rsq1r**(-1) - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2*
     &    rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25**2*rgl**3*rsq1r**(-1) - 3.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-1)*i1r15r25*rgl + 3.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl**2*rsq1r**(-1) - 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*
     &    rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl**3*
     &    rsq1r**(-1) - 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15*rgl + 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)
     &    *r25**(-1)*i1r15*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-1)*i1r15**2*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)
     &    *mi(19)*r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2 + 2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**3
     &    *rsq1r**(-1) - 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25*rgl + 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15*i1r15r25**2*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15*i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl**2 + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl**3*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl
     &    )*mi(19)*i1r15**2*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**2*i1r15r25*rgl**3*rsq1r**(-1) )

      gcoeffarr(aa12,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa12,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*i1r25 + 2.
     &    D0*mi(17)*r25**(-1)*i1r15 + 1.D0/2.D0*mi(19)*r15**(-2)*
     &    rsq1r**(-1) - mi(19)*r15**(-2)*i1r15r25*rsq1r**(-1) + 2.D0*
     &    mi(19)*r15**(-2)*i1r15r25*rgl*rsq1r**(-1) + 1.D0/2.D0*mi(19)*
     &    r15**(-2)*i1r15r25**2*rsq1r**(-1) - 2.D0*mi(19)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r**(-1) + 2.D0*mi(19)*r15**(-1)*i1r25 - 3.
     &    D0/2.D0*mi(19)*r25**(-2)*rsq1r**(-1) + 2.D0*mi(19)*r25**(-2)*
     &    i1r15*rsq1r**(-1) - 2.D0*mi(19)*r25**(-2)*i1r15*rgl*
     &    rsq1r**(-1) - 1.D0/2.D0*mi(19)*r25**(-2)*i1r15**2*rsq1r**(-1)
     &     + 2.D0*mi(19)*r25**(-2)*i1r15**2*rgl*rsq1r**(-1) - 2.D0*mi(
     &    19)*r25**(-1)*i1r15 + 2.D0*mi(19)*r25**(-1)*i1r15**2*
     &    rsq1r**(-1) - 2.D0*mi(19)*r25**(-1)*i1r15**2*rgl*rsq1r**(-1)
     &     - mi(19)*r25**(-1)*i1r15**3*rsq1r**(-1) + 4.D0*mi(19)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r**(-1) + 2.D0*mi(19)*i1r15**2*
     &    i1r15r25*rsq1r**(-1) - 2.D0*mi(19)*i1r15**2*i1r15r25*rgl*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1.D0/2.D0*mi(19)*i1r15**2*
     &    i1r15r25**2*rsq1r**(-1) + 2.D0*mi(19)*i1r15**2*i1r15r25**2*
     &    rgl*rsq1r**(-1) - mi(19)*i1r15**3*i1r15r25*rsq1r**(-1) + 4.D0
     &    *mi(19)*i1r15**3*i1r15r25*rgl*rsq1r**(-1) - 1.D0/2.D0/(rsq1r
     &     - rgl)*mi(19)*r15**(-2) + 2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*rgl*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25 - 2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*
     &    rgl + 3.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2*
     &    rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25**2 + 2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2
     &    *rgl - 3.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**2
     &    *rsq1r**(-1) + 3.D0/2.D0/(rsq1r - rgl)*mi(19)*r25**(-2) - 3.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-2)*rgl*rsq1r**(-1) - 2.D0/(rsq1r
     &     - rgl)*mi(19)*r25**(-2)*i1r15 + 3.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl - 3.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15*rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2 - 2.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15**2*rgl + 3.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**2 + 3.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl*
     &    rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*
     &    rgl - 3.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2*
     &    rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3 - 4.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl + 6.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2*rsq1r**(-1) - 2.D0/(
     &    rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25 + 3.D0/(rsq1r - rgl)*
     &    mi(19)*i1r15**2*i1r15r25*rgl*rsq1r**(-1) + 2.D0/(rsq1r - rgl)
     &    *mi(19)*i1r15**2*i1r15r25*rgl - 3.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25**2 - 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl + 3.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*
     &    i1r15**3*i1r15r25 - 4.D0/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25*rgl + 6.D0/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1r**(-1) - 3.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*rgl + 3.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2*rsq1r**(-1) - 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*
     &    rgl**2 + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25*rgl**3*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl - 1.D0/2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r15**(-2)*i1r15r25**2*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**3*rsq1r**(-1) + 3.D0/2.
     &    D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl - 3.D0/2.D
     &    0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl**2*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*i1r15*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15*rgl**3*rsq1r**(-1) - 1.D0/2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl + 1.D0/2.D
     &    0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2*rgl**2 + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*i1r15**2*rgl**3*rsq1r**(-1) - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2 - 1/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**3*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**3*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)
     &    *i1r15**3*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2 + 2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**3*rsq1r**(-1) - 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl + 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2
     &    *rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25*rgl**3*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl
     &    )/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl + 1.D0/2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**2
     &    *rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**2*i1r15r25**2*rgl**2 + 1/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**3*rsq1r**(-1) - 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl + 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**3*i1r15r25*rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**3*i1r15r25*rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1) * ( 2.D0*mi(21)*r15**(-2)*i1r15r25*rsq1r - 2.D0*
     &    mi(21)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(21)*r15**(-2)*i1r25*
     &    rsq1r + 2.D0*mi(21)*r15**(-2)*i1r25*rgl - 2.D0*mi(21)*
     &    r15**(-1)*r25**(-1) - 4.D0*mi(21)*r15**(-1)*i1r25**2*rsq1r + 
     &    4.D0*mi(21)*r15**(-1)*i1r25**2*rgl - 2.D0*mi(21)*r25**(-1)*
     &    i1r15 + 2.D0*mi(21)*r25**(-1)*i1r15**2*rsq1r - 2.D0*mi(21)*
     &    r25**(-1)*i1r15**2*rgl - 2.D0*mi(21)*i1r15**2*i1r15r25*rsq1r
     &     + 2.D0*mi(21)*i1r15**2*i1r15r25*rgl + 2.D0*mi(23)*r15**(-1)*
     &    r25**(-1) - 2.D0*mi(25)*r15**(-1)*i1r15r25*rsq1r + 2.D0*mi(25
     &    )*r15**(-1)*i1r15r25*rgl + 2.D0*mi(25)*r25**(-1)*i1r15 - 2.D0
     &    *mi(25)*r25**(-1)*i1r15**2*rsq1r + 2.D0*mi(25)*r25**(-1)*
     &    i1r15**2*rgl - 2.D0*mi(25)*i1r15*i1r15r25*rsq1r + 2.D0*mi(25)
     &    *i1r15*i1r15r25*rgl + 2.D0*mi(25)*i1r15**2*i1r15r25*rsq1r - 2.
     &    D0*mi(25)*i1r15**2*i1r15r25*rgl - 2.D0*mi(27)*r15**(-2)*
     &    i1r15r25*rsq1r + 2.D0*mi(27)*r15**(-2)*i1r15r25*rgl + 2.D0*
     &    mi(27)*r15**(-2)*i1r25*rsq1r )
      e = e  + Nc**(-1) * (  - 2.D0*mi(27)*r15**(-2)*i1r25*rgl + 2.D0*
     &    mi(27)*r15**(-1)*i1r15r25*rsq1r - 2.D0*mi(27)*r15**(-1)*
     &    i1r15r25*rgl - 2.D0*mi(27)*r15**(-1)*i1r25*rsq1r + 2.D0*mi(27
     &    )*r15**(-1)*i1r25*rgl + 4.D0*mi(27)*r15**(-1)*i1r25**2*rsq1r
     &     - 4.D0*mi(27)*r15**(-1)*i1r25**2*rgl + 2.D0*mi(27)*r25**(-1)
     &    *i1r15*rsq1r - 2.D0*mi(27)*r25**(-1)*i1r15*rgl + 2.D0*mi(27)*
     &    i1r15*i1r15r25*rsq1r - 2.D0*mi(27)*i1r15*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125 * ( mi(29)*r25**(-2) - 2.D0*mi(29)*
     &    r25**(-2)*rsq1r + 2.D0*mi(29)*r25**(-2)*rgl - mi(29)*
     &    r25**(-1) - mi(29)*r15*r25**(-2) + mi(33)*r15**(-1)*i1r15r25*
     &    rsq1r - mi(33)*r15**(-1)*i1r15r25*rgl - mi(33)*r15**(-1)*
     &    i1r15r25**2*rsq1r**2 + 2.D0*mi(33)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1r - mi(33)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0*mi(33)*
     &    r25**(-2)*rsq1r - 2.D0*mi(33)*r25**(-2)*rgl - 2.D0*mi(33)*
     &    r25**(-2)*i1r15*rsq1r - mi(33)*r25**(-2)*i1r15*rsq1r**2 + 2.D0
     &    *mi(33)*r25**(-2)*i1r15*rgl + 2.D0*mi(33)*r25**(-2)*i1r15*rgl
     &    *rsq1r - mi(33)*r25**(-2)*i1r15*rgl**2 + mi(33)*r25**(-2)*
     &    i1r15**2*rsq1r**2 - 2.D0*mi(33)*r25**(-2)*i1r15**2*rgl*rsq1r
     &     + mi(33)*r25**(-2)*i1r15**2*rgl**2 + 2.D0*mi(33)*r25**(-1)*
     &    i1r15*rsq1r - 2.D0*mi(33)*r25**(-1)*i1r15*rgl - 2.D0*mi(33)*
     &    r25**(-1)*i1r15**2*rsq1r - 2.D0*mi(33)*r25**(-1)*i1r15**2*
     &    rsq1r**2 + 2.D0*mi(33)*r25**(-1)*i1r15**2*rgl + 4.D0*mi(33)*
     &    r25**(-1)*i1r15**2*rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(33)*r25**(-1)*i1r15**2*
     &    rgl**2 + 2.D0*mi(33)*r25**(-1)*i1r15**3*rsq1r**2 - 4.D0*mi(33
     &    )*r25**(-1)*i1r15**3*rgl*rsq1r + 2.D0*mi(33)*r25**(-1)*
     &    i1r15**3*rgl**2 + 2.D0*mi(33)*i1r15*i1r15r25*rsq1r - 2.D0*mi(
     &    33)*i1r15*i1r15r25*rgl - mi(33)*i1r15*i1r15r25**2*rsq1r**2 + 
     &    2.D0*mi(33)*i1r15*i1r15r25**2*rgl*rsq1r - mi(33)*i1r15*
     &    i1r15r25**2*rgl**2 - 2.D0*mi(33)*i1r15**2*i1r15r25*rsq1r - 2.D
     &    0*mi(33)*i1r15**2*i1r15r25*rsq1r**2 + 2.D0*mi(33)*i1r15**2*
     &    i1r15r25*rgl + 4.D0*mi(33)*i1r15**2*i1r15r25*rgl*rsq1r - 2.D0
     &    *mi(33)*i1r15**2*i1r15r25*rgl**2 + mi(33)*i1r15**2*
     &    i1r15r25**2*rsq1r**2 - 2.D0*mi(33)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1r + mi(33)*i1r15**2*i1r15r25**2*rgl**2 + 2.D0*mi(33)*
     &    i1r15**3*i1r15r25*rsq1r**2 - 4.D0*mi(33)*i1r15**3*i1r15r25*
     &    rgl*rsq1r + 2.D0*mi(33)*i1r15**3*i1r15r25*rgl**2 + mi(33)*r15
     &    *r25**(-2) - mi(37)*r15**(-2)*rsq1r + mi(37)*r15**(-2)*rgl + 
     &    mi(37)*r15**(-2)*i1r15r25*rsq1r )
      e = e  + Nc**(-1)*s125 * ( mi(37)*r15**(-2)*i1r15r25*rsq1r**2 - 
     &    mi(37)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(37)*r15**(-2)*
     &    i1r15r25*rgl*rsq1r + mi(37)*r15**(-2)*i1r15r25*rgl**2 - mi(37
     &    )*r15**(-2)*i1r15r25**2*rsq1r**2 + 2.D0*mi(37)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r - mi(37)*r15**(-2)*i1r15r25**2*rgl**2
     &     - mi(37)*r15**(-1)*i1r15r25*rsq1r + mi(37)*r15**(-1)*
     &    i1r15r25*rgl + mi(37)*r15**(-1)*i1r15r25**2*rsq1r**2 - 2.D0*
     &    mi(37)*r15**(-1)*i1r15r25**2*rgl*rsq1r + mi(37)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + mi(37)*r25**(-1)*i1r15**2*rsq1r**2 - 2.D0
     &    *mi(37)*r25**(-1)*i1r15**2*rgl*rsq1r + mi(37)*r25**(-1)*
     &    i1r15**2*rgl**2 + mi(37)*i1r15*i1r15r25**2*rsq1r**2 - 2.D0*
     &    mi(37)*i1r15*i1r15r25**2*rgl*rsq1r + mi(37)*i1r15*i1r15r25**2
     &    *rgl**2 + mi(37)*i1r15**2*i1r15r25*rsq1r**2 - 2.D0*mi(37)*
     &    i1r15**2*i1r15r25*rgl*rsq1r + mi(37)*i1r15**2*i1r15r25*rgl**2
     &     + 2.D0*mi(39)*r15**(-2)*rsq1r - 2.D0*mi(39)*r15**(-2)*rgl - 
     &    2.D0*mi(39)*r15**(-2)*i1r15r25*rsq1r )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(39)*r15**(-2)*i1r15r25*
     &    rsq1r**2 + 2.D0*mi(39)*r15**(-2)*i1r15r25*rgl + 4.D0*mi(39)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r - 2.D0*mi(39)*r15**(-2)*i1r15r25
     &    *rgl**2 + 2.D0*mi(39)*r15**(-2)*i1r15r25**2*rsq1r**2 - 4.D0*
     &    mi(39)*r15**(-2)*i1r15r25**2*rgl*rsq1r + 2.D0*mi(39)*
     &    r15**(-2)*i1r15r25**2*rgl**2 - 2.D0*mi(39)*r25**(-2)*rsq1r + 
     &    2.D0*mi(39)*r25**(-2)*rgl + 2.D0*mi(39)*r25**(-2)*i1r15*rsq1r
     &     + 2.D0*mi(39)*r25**(-2)*i1r15*rsq1r**2 - 2.D0*mi(39)*
     &    r25**(-2)*i1r15*rgl - 4.D0*mi(39)*r25**(-2)*i1r15*rgl*rsq1r
     &     + 2.D0*mi(39)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(39)*r25**(-2)
     &    *i1r15**2*rsq1r**2 + 4.D0*mi(39)*r25**(-2)*i1r15**2*rgl*rsq1r
     &     - 2.D0*mi(39)*r25**(-2)*i1r15**2*rgl**2 - mi(39)*r25**(-1)
     &     + 2.D0*mi(39)*r25**(-1)*i1r15**2*rsq1r + 2.D0*mi(39)*
     &    r25**(-1)*i1r15**2*rsq1r**2 - 2.D0*mi(39)*r25**(-1)*i1r15**2*
     &    rgl - 4.D0*mi(39)*r25**(-1)*i1r15**2*rgl*rsq1r + 2.D0*mi(39)*
     &    r25**(-1)*i1r15**2*rgl**2 )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(39)*r25**(-1)*i1r15**3*
     &    rsq1r**2 + 8.D0*mi(39)*r25**(-1)*i1r15**3*rgl*rsq1r - 4.D0*
     &    mi(39)*r25**(-1)*i1r15**3*rgl**2 + 2.D0*mi(39)*i1r15**2*
     &    i1r15r25*rsq1r + 2.D0*mi(39)*i1r15**2*i1r15r25*rsq1r**2 - 2.D0
     &    *mi(39)*i1r15**2*i1r15r25*rgl - 4.D0*mi(39)*i1r15**2*i1r15r25
     &    *rgl*rsq1r + 2.D0*mi(39)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(
     &    39)*i1r15**2*i1r15r25**2*rsq1r**2 + 4.D0*mi(39)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r - 2.D0*mi(39)*i1r15**2*i1r15r25**2*
     &    rgl**2 - 4.D0*mi(39)*i1r15**3*i1r15r25*rsq1r**2 + 8.D0*mi(39)
     &    *i1r15**3*i1r15r25*rgl*rsq1r - 4.D0*mi(39)*i1r15**3*i1r15r25*
     &    rgl**2 - mi(39)*r15*r25**(-2) + mi(41)*r15**(-2)*i1r15r25*
     &    rsq1r - mi(41)*r15**(-2)*i1r15r25*rgl - mi(41)*r15**(-2)*
     &    i1r15r25**2*rsq1r**2 + 2.D0*mi(41)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1r - mi(41)*r15**(-2)*i1r15r25**2*rgl**2 - mi(41)*
     &    r15**(-1)*i1r15r25*rsq1r + mi(41)*r15**(-1)*i1r15r25*rgl + 
     &    mi(41)*r15**(-1)*i1r15r25**2*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(41)*r15**(-1)*i1r15r25**2*
     &    rgl*rsq1r + mi(41)*r15**(-1)*i1r15r25**2*rgl**2 - mi(41)*
     &    r25**(-2) + 2.D0*mi(41)*r25**(-2)*rsq1r - 2.D0*mi(41)*
     &    r25**(-2)*rgl - mi(41)*r25**(-2)*i1r15*rsq1r**2 + 2.D0*mi(41)
     &    *r25**(-2)*i1r15*rgl*rsq1r - mi(41)*r25**(-2)*i1r15*rgl**2 + 
     &    2.D0*mi(41)*r25**(-1)*i1r15*rsq1r - 2.D0*mi(41)*r25**(-1)*
     &    i1r15*rgl - 2.D0*mi(41)*r25**(-1)*i1r15**2*rsq1r**2 + 4.D0*
     &    mi(41)*r25**(-1)*i1r15**2*rgl*rsq1r - 2.D0*mi(41)*r25**(-1)*
     &    i1r15**2*rgl**2 - 2.D0*mi(41)*i1r15*i1r15r25*rsq1r + 2.D0*mi(
     &    41)*i1r15*i1r15r25*rgl + mi(41)*i1r15*i1r15r25**2*rsq1r**2 - 
     &    2.D0*mi(41)*i1r15*i1r15r25**2*rgl*rsq1r + mi(41)*i1r15*
     &    i1r15r25**2*rgl**2 + 2.D0*mi(41)*i1r15**2*i1r15r25*rsq1r**2
     &     - 4.D0*mi(41)*i1r15**2*i1r15r25*rgl*rsq1r + 2.D0*mi(41)*
     &    i1r15**2*i1r15r25*rgl**2 + mi(41)*r15*r25**(-2) - mi(43)*
     &    r15**(-2)*rsq1r + mi(43)*r15**(-2)*rgl - mi(43)*r15**(-2)*
     &    i1r15r25*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(43)*r15**(-2)*i1r15r25*rgl*
     &    rsq1r - mi(43)*r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(43)*
     &    r15**(-2)*i1r25*rsq1r**2 - 4.D0*mi(43)*r15**(-2)*i1r25*rgl*
     &    rsq1r + 2.D0*mi(43)*r15**(-2)*i1r25*rgl**2 + mi(43)*r15**(-1)
     &    *i1r15r25*rsq1r - mi(43)*r15**(-1)*i1r15r25*rgl - mi(43)*
     &    r15**(-1)*i1r15r25**2*rsq1r**2 + 2.D0*mi(43)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1r - mi(43)*r15**(-1)*i1r15r25**2*rgl**2
     &     - 2.D0*mi(43)*r15**(-1)*i1r25*rsq1r + 2.D0*mi(43)*r15**(-1)*
     &    i1r25*rgl + 4.D0*mi(43)*r15**(-1)*i1r25**2*rsq1r**2 - 8.D0*
     &    mi(43)*r15**(-1)*i1r25**2*rgl*rsq1r + 4.D0*mi(43)*r15**(-1)*
     &    i1r25**2*rgl**2 + mi(43)*r25**(-2)*i1r15**2*rsq1r**2 - 2.D0*
     &    mi(43)*r25**(-2)*i1r15**2*rgl*rsq1r + mi(43)*r25**(-2)*
     &    i1r15**2*rgl**2 - mi(43)*r25**(-1)*i1r15**2*rsq1r**2 + 2.D0*
     &    mi(43)*r25**(-1)*i1r15**2*rgl*rsq1r - mi(43)*r25**(-1)*
     &    i1r15**2*rgl**2 + 2.D0*mi(43)*r25**(-1)*i1r15**3*rsq1r**2 - 4.
     &    D0*mi(43)*r25**(-1)*i1r15**3*rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(43)*r25**(-1)*i1r15**3*rgl**2
     &     - mi(43)*i1r15*i1r15r25**2*rsq1r**2 + 2.D0*mi(43)*i1r15*
     &    i1r15r25**2*rgl*rsq1r - mi(43)*i1r15*i1r15r25**2*rgl**2 - mi(
     &    43)*i1r15**2*i1r15r25*rsq1r**2 + 2.D0*mi(43)*i1r15**2*
     &    i1r15r25*rgl*rsq1r - mi(43)*i1r15**2*i1r15r25*rgl**2 + mi(43)
     &    *i1r15**2*i1r15r25**2*rsq1r**2 - 2.D0*mi(43)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r + mi(43)*i1r15**2*i1r15r25**2*rgl**2 + 
     &    2.D0*mi(43)*i1r15**3*i1r15r25*rsq1r**2 - 4.D0*mi(43)*i1r15**3
     &    *i1r15r25*rgl*rsq1r + 2.D0*mi(43)*i1r15**3*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - mi(45)*r15**(-2)*rsq1r**2 + 2.D0*
     &    mi(45)*r15**(-2)*rgl*rsq1r - mi(45)*r15**(-2)*rgl**2 + mi(45)
     &    *r15**(-2)*i1r15r25*rsq1r**2 + mi(45)*r15**(-2)*i1r15r25*
     &    rsq1r**3 - 2.D0*mi(45)*r15**(-2)*i1r15r25*rgl*rsq1r - 3.D0*
     &    mi(45)*r15**(-2)*i1r15r25*rgl*rsq1r**2 + mi(45)*r15**(-2)*
     &    i1r15r25*rgl**2 + 3.D0*mi(45)*r15**(-2)*i1r15r25*rgl**2*rsq1r
     &     - mi(45)*r15**(-2)*i1r15r25*rgl**3 - mi(45)*r15**(-2)*
     &    i1r15r25**2*rsq1r**3 + 3.D0*mi(45)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1r**2 - 3.D0*mi(45)*r15**(-2)*i1r15r25**2*rgl**2*rsq1r + 
     &    mi(45)*r15**(-2)*i1r15r25**2*rgl**3 + mi(45)*r15**(-1)*rsq1r
     &     + mi(45)*r15**(-1)*rgl - mi(45)*r15**(-1)*i1r15r25*rsq1r**2
     &     + mi(45)*r15**(-1)*i1r15r25*rgl**2 + 3.D0*mi(45)*r25**(-2)*
     &    rsq1r**2 - 6.D0*mi(45)*r25**(-2)*rgl*rsq1r + 3.D0*mi(45)*
     &    r25**(-2)*rgl**2 - 3.D0*mi(45)*r25**(-2)*i1r15*rsq1r**2 - mi(
     &    45)*r25**(-2)*i1r15*rsq1r**3 + 6.D0*mi(45)*r25**(-2)*i1r15*
     &    rgl*rsq1r )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(45)*r25**(-2)*i1r15*rgl*
     &    rsq1r**2 - 3.D0*mi(45)*r25**(-2)*i1r15*rgl**2 - 3.D0*mi(45)*
     &    r25**(-2)*i1r15*rgl**2*rsq1r + mi(45)*r25**(-2)*i1r15*rgl**3
     &     + mi(45)*r25**(-2)*i1r15**2*rsq1r**3 - 3.D0*mi(45)*r25**(-2)
     &    *i1r15**2*rgl*rsq1r**2 + 3.D0*mi(45)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1r - mi(45)*r25**(-2)*i1r15**2*rgl**3 - mi(45)*
     &    r25**(-1)*rsq1r - mi(45)*r25**(-1)*rgl + 3.D0*mi(45)*
     &    r25**(-1)*i1r15*rsq1r**2 - 4.D0*mi(45)*r25**(-1)*i1r15*rgl*
     &    rsq1r + mi(45)*r25**(-1)*i1r15*rgl**2 - 3.D0*mi(45)*r25**(-1)
     &    *i1r15**2*rsq1r**2 - mi(45)*r25**(-1)*i1r15**2*rsq1r**3 + 6.D0
     &    *mi(45)*r25**(-1)*i1r15**2*rgl*rsq1r + 3.D0*mi(45)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r**2 - 3.D0*mi(45)*r25**(-1)*i1r15**2*rgl**2
     &     - 3.D0*mi(45)*r25**(-1)*i1r15**2*rgl**2*rsq1r + mi(45)*
     &    r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(45)*r25**(-1)*i1r15**3*
     &    rsq1r**3 - 6.D0*mi(45)*r25**(-1)*i1r15**3*rgl*rsq1r**2 + 6.D0
     &    *mi(45)*r25**(-1)*i1r15**3*rgl**2*rsq1r )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(45)*r25**(-1)*i1r15**3*
     &    rgl**3 + 3.D0*mi(45)*i1r15*i1r15r25*rsq1r**2 - 4.D0*mi(45)*
     &    i1r15*i1r15r25*rgl*rsq1r + mi(45)*i1r15*i1r15r25*rgl**2 - 3.D0
     &    *mi(45)*i1r15**2*i1r15r25*rsq1r**2 - mi(45)*i1r15**2*i1r15r25
     &    *rsq1r**3 + 6.D0*mi(45)*i1r15**2*i1r15r25*rgl*rsq1r + 3.D0*
     &    mi(45)*i1r15**2*i1r15r25*rgl*rsq1r**2 - 3.D0*mi(45)*i1r15**2*
     &    i1r15r25*rgl**2 - 3.D0*mi(45)*i1r15**2*i1r15r25*rgl**2*rsq1r
     &     + mi(45)*i1r15**2*i1r15r25*rgl**3 + mi(45)*i1r15**2*
     &    i1r15r25**2*rsq1r**3 - 3.D0*mi(45)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1r**2 + 3.D0*mi(45)*i1r15**2*i1r15r25**2*rgl**2*rsq1r - 
     &    mi(45)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(45)*i1r15**3*
     &    i1r15r25*rsq1r**3 - 6.D0*mi(45)*i1r15**3*i1r15r25*rgl*
     &    rsq1r**2 + 6.D0*mi(45)*i1r15**3*i1r15r25*rgl**2*rsq1r - 2.D0*
     &    mi(45)*i1r15**3*i1r15r25*rgl**3 - mi(45)*r15*r25**(-2) + 3.D0
     &    *mi(45)*r15*r25**(-2)*rsq1r - 3.D0*mi(45)*r15*r25**(-2)*rgl
     &     + mi(45)*r15*r25**(-1) )
      e = e  + Nc**(-1)*s125**2 * ( mi(45)*r15**2*r25**(-2) - 2.D0*mi(47
     &    )*r15**(-2)*rsq1r**2 + 4.D0*mi(47)*r15**(-2)*rgl*rsq1r - 2.D0
     &    *mi(47)*r15**(-2)*rgl**2 + 2.D0*mi(47)*r15**(-2)*i1r15r25*
     &    rsq1r**2 + mi(47)*r15**(-2)*i1r15r25*rsq1r**3 - 4.D0*mi(47)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r - 3.D0*mi(47)*r15**(-2)*i1r15r25
     &    *rgl*rsq1r**2 + 2.D0*mi(47)*r15**(-2)*i1r15r25*rgl**2 + 3.D0*
     &    mi(47)*r15**(-2)*i1r15r25*rgl**2*rsq1r - mi(47)*r15**(-2)*
     &    i1r15r25*rgl**3 - mi(47)*r15**(-2)*i1r15r25**2*rsq1r**3 + 3.D0
     &    *mi(47)*r15**(-2)*i1r15r25**2*rgl*rsq1r**2 - 3.D0*mi(47)*
     &    r15**(-2)*i1r15r25**2*rgl**2*rsq1r + mi(47)*r15**(-2)*
     &    i1r15r25**2*rgl**3 - mi(47)*r15**(-2)*r25*rsq1r + mi(47)*
     &    r15**(-2)*r25*rgl - 3.D0*mi(47)*r15**(-1)*i1r15r25*rsq1r**2
     &     + 4.D0*mi(47)*r15**(-1)*i1r15r25*rgl*rsq1r - mi(47)*
     &    r15**(-1)*i1r15r25*rgl**2 - mi(47)*r25**(-2)*i1r15*rsq1r**3
     &     + 3.D0*mi(47)*r25**(-2)*i1r15*rgl*rsq1r**2 - 3.D0*mi(47)*
     &    r25**(-2)*i1r15*rgl**2*rsq1r )
      e = e  + Nc**(-1)*s125**2 * ( mi(47)*r25**(-2)*i1r15*rgl**3 + mi(
     &    47)*r25**(-2)*i1r15**2*rsq1r**3 - 3.D0*mi(47)*r25**(-2)*
     &    i1r15**2*rgl*rsq1r**2 + 3.D0*mi(47)*r25**(-2)*i1r15**2*rgl**2
     &    *rsq1r - mi(47)*r25**(-2)*i1r15**2*rgl**3 + mi(47)*r25**(-1)*
     &    i1r15*rsq1r**2 - mi(47)*r25**(-1)*i1r15*rgl**2 - mi(47)*
     &    r25**(-1)*i1r15**2*rsq1r**3 + 3.D0*mi(47)*r25**(-1)*i1r15**2*
     &    rgl*rsq1r**2 - 3.D0*mi(47)*r25**(-1)*i1r15**2*rgl**2*rsq1r + 
     &    mi(47)*r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(47)*r25**(-1)*
     &    i1r15**3*rsq1r**3 - 6.D0*mi(47)*r25**(-1)*i1r15**3*rgl*
     &    rsq1r**2 + 6.D0*mi(47)*r25**(-1)*i1r15**3*rgl**2*rsq1r - 2.D0
     &    *mi(47)*r25**(-1)*i1r15**3*rgl**3 + mi(47)*i1r15*i1r15r25*
     &    rsq1r**2 - mi(47)*i1r15*i1r15r25*rgl**2 - mi(47)*i1r15**2*
     &    i1r15r25*rsq1r**3 + 3.D0*mi(47)*i1r15**2*i1r15r25*rgl*
     &    rsq1r**2 - 3.D0*mi(47)*i1r15**2*i1r15r25*rgl**2*rsq1r + mi(47
     &    )*i1r15**2*i1r15r25*rgl**3 + mi(47)*i1r15**2*i1r15r25**2*
     &    rsq1r**3 )
      e = e  + Nc**(-1)*s125**2 * (  - 3.D0*mi(47)*i1r15**2*i1r15r25**2*
     &    rgl*rsq1r**2 + 3.D0*mi(47)*i1r15**2*i1r15r25**2*rgl**2*rsq1r
     &     - mi(47)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(47)*i1r15**3*
     &    i1r15r25*rsq1r**3 - 6.D0*mi(47)*i1r15**3*i1r15r25*rgl*
     &    rsq1r**2 + 6.D0*mi(47)*i1r15**3*i1r15r25*rgl**2*rsq1r - 2.D0*
     &    mi(47)*i1r15**3*i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*i1r25 - 2.D0*mi(
     &    17)*r25**(-1)*i1r15 - 2.D0*mi(19)*r15**(-1)*i1r25 + 2.D0*mi(
     &    19)*r25**(-1)*i1r15 )
      e = e  + Nc * (  - 2.D0*mi(21)*r15**(-2)*i1r15r25*rsq1r + 2.D0*mi(
     &    21)*r15**(-2)*i1r15r25*rgl + 2.D0*mi(21)*r15**(-2)*i1r25*
     &    rsq1r - 2.D0*mi(21)*r15**(-2)*i1r25*rgl - 2.D0*mi(21)*
     &    r15**(-1)*i1r15r25 + 4.D0*mi(21)*r15**(-1)*i1r25**2*rsq1r - 4.
     &    D0*mi(21)*r15**(-1)*i1r25**2*rgl - 2.D0*mi(21)*r25**(-1)*
     &    i1r15**2*rsq1r + 2.D0*mi(21)*r25**(-1)*i1r15**2*rgl - 2.D0*
     &    mi(21)*i1r15*i1r15r25 + 2.D0*mi(21)*i1r15**2*i1r15r25*rsq1r
     &     - 2.D0*mi(21)*i1r15**2*i1r15r25*rgl + 2.D0*mi(25)*r15**(-1)*
     &    i1r15r25*rsq1r - 2.D0*mi(25)*r15**(-1)*i1r15r25*rgl + 2.D0*
     &    mi(25)*r25**(-1)*i1r15**2*rsq1r - 2.D0*mi(25)*r25**(-1)*
     &    i1r15**2*rgl + 2.D0*mi(25)*i1r15*i1r15r25 + 2.D0*mi(25)*i1r15
     &    *i1r15r25*rsq1r - 2.D0*mi(25)*i1r15*i1r15r25*rgl - 2.D0*mi(25
     &    )*i1r15**2*i1r15r25*rsq1r + 2.D0*mi(25)*i1r15**2*i1r15r25*rgl
     &     + 2.D0*mi(27)*r15**(-2)*i1r15r25*rsq1r - 2.D0*mi(27)*
     &    r15**(-2)*i1r15r25*rgl - 2.D0*mi(27)*r15**(-2)*i1r25*rsq1r + 
     &    2.D0*mi(27)*r15**(-2)*i1r25*rgl )
      e = e  + Nc * ( 2.D0*mi(27)*r15**(-1)*i1r15r25 - 2.D0*mi(27)*
     &    r15**(-1)*i1r15r25*rsq1r + 2.D0*mi(27)*r15**(-1)*i1r15r25*rgl
     &     + 2.D0*mi(27)*r15**(-1)*i1r25*rsq1r - 2.D0*mi(27)*r15**(-1)*
     &    i1r25*rgl - 4.D0*mi(27)*r15**(-1)*i1r25**2*rsq1r + 4.D0*mi(27
     &    )*r15**(-1)*i1r25**2*rgl - 2.D0*mi(27)*r25**(-1)*i1r15*rsq1r
     &     + 2.D0*mi(27)*r25**(-1)*i1r15*rgl - 2.D0*mi(27)*i1r15*
     &    i1r15r25*rsq1r + 2.D0*mi(27)*i1r15*i1r15r25*rgl )
      e = e  + Nc*s125 * ( mi(31)*r15**(-1)*i1r15r25*rsq1r - mi(31)*
     &    r15**(-1)*i1r15r25*rgl - mi(31)*r15**(-1)*i1r15r25**2*
     &    rsq1r**2 + 2.D0*mi(31)*r15**(-1)*i1r15r25**2*rgl*rsq1r - mi(
     &    31)*r15**(-1)*i1r15r25**2*rgl**2 - mi(31)*r25**(-2)*i1r15*
     &    rsq1r**2 + 2.D0*mi(31)*r25**(-2)*i1r15*rgl*rsq1r - mi(31)*
     &    r25**(-2)*i1r15*rgl**2 + mi(31)*r25**(-2)*i1r15**2*rsq1r**2
     &     - 2.D0*mi(31)*r25**(-2)*i1r15**2*rgl*rsq1r + mi(31)*
     &    r25**(-2)*i1r15**2*rgl**2 + 2.D0*mi(31)*r25**(-1)*i1r15*rsq1r
     &     - 2.D0*mi(31)*r25**(-1)*i1r15*rgl - 2.D0*mi(31)*r25**(-1)*
     &    i1r15**2*rsq1r - 2.D0*mi(31)*r25**(-1)*i1r15**2*rsq1r**2 + 2.D
     &    0*mi(31)*r25**(-1)*i1r15**2*rgl + 4.D0*mi(31)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r - 2.D0*mi(31)*r25**(-1)*i1r15**2*rgl**2 + 
     &    2.D0*mi(31)*r25**(-1)*i1r15**3*rsq1r**2 - 4.D0*mi(31)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r + 2.D0*mi(31)*r25**(-1)*i1r15**3
     &    *rgl**2 + 2.D0*mi(31)*i1r15r25**2*rsq1r - 2.D0*mi(31)*
     &    i1r15r25**2*rgl )
      e = e  + Nc*s125 * ( 2.D0*mi(31)*i1r15*i1r15r25*rsq1r - 2.D0*mi(31
     &    )*i1r15*i1r15r25*rgl - 2.D0*mi(31)*i1r15*i1r15r25**2*rsq1r - 
     &    mi(31)*i1r15*i1r15r25**2*rsq1r**2 + 2.D0*mi(31)*i1r15*
     &    i1r15r25**2*rgl + 2.D0*mi(31)*i1r15*i1r15r25**2*rgl*rsq1r - 
     &    mi(31)*i1r15*i1r15r25**2*rgl**2 - 2.D0*mi(31)*i1r15**2*
     &    i1r15r25*rsq1r - 2.D0*mi(31)*i1r15**2*i1r15r25*rsq1r**2 + 2.D0
     &    *mi(31)*i1r15**2*i1r15r25*rgl + 4.D0*mi(31)*i1r15**2*i1r15r25
     &    *rgl*rsq1r - 2.D0*mi(31)*i1r15**2*i1r15r25*rgl**2 + mi(31)*
     &    i1r15**2*i1r15r25**2*rsq1r**2 - 2.D0*mi(31)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r + mi(31)*i1r15**2*i1r15r25**2*rgl**2 + 
     &    2.D0*mi(31)*i1r15**3*i1r15r25*rsq1r**2 - 4.D0*mi(31)*i1r15**3
     &    *i1r15r25*rgl*rsq1r + 2.D0*mi(31)*i1r15**3*i1r15r25*rgl**2 + 
     &    mi(31)*r15*i1r15r25**2 - mi(35)*r15**(-2)*rsq1r + mi(35)*
     &    r15**(-2)*rgl + mi(35)*r15**(-2)*i1r15r25*rsq1r + mi(35)*
     &    r15**(-2)*i1r15r25*rsq1r**2 - mi(35)*r15**(-2)*i1r15r25*rgl
     &     - 2.D0*mi(35)*r15**(-2)*i1r15r25*rgl*rsq1r )
      e = e  + Nc*s125 * ( mi(35)*r15**(-2)*i1r15r25*rgl**2 - mi(35)*
     &    r15**(-2)*i1r15r25**2*rsq1r**2 + 2.D0*mi(35)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r - mi(35)*r15**(-2)*i1r15r25**2*rgl**2
     &     - mi(35)*r15**(-1)*i1r15r25*rsq1r + mi(35)*r15**(-1)*
     &    i1r15r25*rgl + mi(35)*r15**(-1)*i1r15r25**2*rsq1r**2 - 2.D0*
     &    mi(35)*r15**(-1)*i1r15r25**2*rgl*rsq1r + mi(35)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + mi(35)*r25**(-1)*i1r15**2*rsq1r**2 - 2.D0
     &    *mi(35)*r25**(-1)*i1r15**2*rgl*rsq1r + mi(35)*r25**(-1)*
     &    i1r15**2*rgl**2 - mi(35)*i1r15r25 + mi(35)*i1r15r25**2 - 2.D0
     &    *mi(35)*i1r15r25**2*rsq1r + 2.D0*mi(35)*i1r15r25**2*rgl + mi(
     &    35)*i1r15*i1r15r25**2*rsq1r**2 - 2.D0*mi(35)*i1r15*
     &    i1r15r25**2*rgl*rsq1r + mi(35)*i1r15*i1r15r25**2*rgl**2 + mi(
     &    35)*i1r15**2*i1r15r25*rsq1r**2 - 2.D0*mi(35)*i1r15**2*
     &    i1r15r25*rgl*rsq1r + mi(35)*i1r15**2*i1r15r25*rgl**2 - mi(35)
     &    *r15*i1r15r25**2 - mi(41)*r15**(-2)*i1r15r25*rsq1r + mi(41)*
     &    r15**(-2)*i1r15r25*rgl )
      e = e  + Nc*s125 * ( mi(41)*r15**(-2)*i1r15r25**2*rsq1r**2 - 2.D0*
     &    mi(41)*r15**(-2)*i1r15r25**2*rgl*rsq1r + mi(41)*r15**(-2)*
     &    i1r15r25**2*rgl**2 + mi(41)*r15**(-1)*i1r15r25*rsq1r - mi(41)
     &    *r15**(-1)*i1r15r25*rgl - mi(41)*r15**(-1)*i1r15r25**2*
     &    rsq1r**2 + 2.D0*mi(41)*r15**(-1)*i1r15r25**2*rgl*rsq1r - mi(
     &    41)*r15**(-1)*i1r15r25**2*rgl**2 + mi(41)*r25**(-2)*i1r15*
     &    rsq1r**2 - 2.D0*mi(41)*r25**(-2)*i1r15*rgl*rsq1r + mi(41)*
     &    r25**(-2)*i1r15*rgl**2 - 2.D0*mi(41)*r25**(-1)*i1r15*rsq1r + 
     &    2.D0*mi(41)*r25**(-1)*i1r15*rgl + 2.D0*mi(41)*r25**(-1)*
     &    i1r15**2*rsq1r**2 - 4.D0*mi(41)*r25**(-1)*i1r15**2*rgl*rsq1r
     &     + 2.D0*mi(41)*r25**(-1)*i1r15**2*rgl**2 - mi(41)*i1r15r25**2
     &     + 2.D0*mi(41)*i1r15r25**2*rsq1r - 2.D0*mi(41)*i1r15r25**2*
     &    rgl + 2.D0*mi(41)*i1r15*i1r15r25*rsq1r - 2.D0*mi(41)*i1r15*
     &    i1r15r25*rgl - mi(41)*i1r15*i1r15r25**2*rsq1r**2 + 2.D0*mi(41
     &    )*i1r15*i1r15r25**2*rgl*rsq1r - mi(41)*i1r15*i1r15r25**2*
     &    rgl**2 )
      e = e  + Nc*s125 * (  - 2.D0*mi(41)*i1r15**2*i1r15r25*rsq1r**2 + 4.
     &    D0*mi(41)*i1r15**2*i1r15r25*rgl*rsq1r - 2.D0*mi(41)*i1r15**2*
     &    i1r15r25*rgl**2 + mi(41)*r15*i1r15r25**2 + mi(43)*r15**(-2)*
     &    rsq1r - mi(43)*r15**(-2)*rgl + mi(43)*r15**(-2)*i1r15r25*
     &    rsq1r**2 - 2.D0*mi(43)*r15**(-2)*i1r15r25*rgl*rsq1r + mi(43)*
     &    r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(43)*r15**(-2)*i1r25*
     &    rsq1r**2 + 4.D0*mi(43)*r15**(-2)*i1r25*rgl*rsq1r - 2.D0*mi(43
     &    )*r15**(-2)*i1r25*rgl**2 - mi(43)*r15**(-1)*i1r15r25*rsq1r + 
     &    mi(43)*r15**(-1)*i1r15r25*rgl + mi(43)*r15**(-1)*i1r15r25**2*
     &    rsq1r**2 - 2.D0*mi(43)*r15**(-1)*i1r15r25**2*rgl*rsq1r + mi(
     &    43)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0*mi(43)*r15**(-1)*
     &    i1r25*rsq1r - 2.D0*mi(43)*r15**(-1)*i1r25*rgl - 4.D0*mi(43)*
     &    r15**(-1)*i1r25**2*rsq1r**2 + 8.D0*mi(43)*r15**(-1)*i1r25**2*
     &    rgl*rsq1r - 4.D0*mi(43)*r15**(-1)*i1r25**2*rgl**2 - mi(43)*
     &    r25**(-2)*i1r15**2*rsq1r**2 + 2.D0*mi(43)*r25**(-2)*i1r15**2*
     &    rgl*rsq1r )
      e = e  + Nc*s125 * (  - mi(43)*r25**(-2)*i1r15**2*rgl**2 + 2.D0*
     &    mi(43)*r25**(-1)*i1r15**2*rsq1r + mi(43)*r25**(-1)*i1r15**2*
     &    rsq1r**2 - 2.D0*mi(43)*r25**(-1)*i1r15**2*rgl - 2.D0*mi(43)*
     &    r25**(-1)*i1r15**2*rgl*rsq1r + mi(43)*r25**(-1)*i1r15**2*
     &    rgl**2 - 2.D0*mi(43)*r25**(-1)*i1r15**3*rsq1r**2 + 4.D0*mi(43
     &    )*r25**(-1)*i1r15**3*rgl*rsq1r - 2.D0*mi(43)*r25**(-1)*
     &    i1r15**3*rgl**2 - mi(43)*i1r15r25 - 2.D0*mi(43)*i1r15r25**2*
     &    rsq1r + 2.D0*mi(43)*i1r15r25**2*rgl + 2.D0*mi(43)*i1r15*
     &    i1r15r25**2*rsq1r + mi(43)*i1r15*i1r15r25**2*rsq1r**2 - 2.D0*
     &    mi(43)*i1r15*i1r15r25**2*rgl - 2.D0*mi(43)*i1r15*i1r15r25**2*
     &    rgl*rsq1r + mi(43)*i1r15*i1r15r25**2*rgl**2 + 2.D0*mi(43)*
     &    i1r15**2*i1r15r25*rsq1r + mi(43)*i1r15**2*i1r15r25*rsq1r**2
     &     - 2.D0*mi(43)*i1r15**2*i1r15r25*rgl - 2.D0*mi(43)*i1r15**2*
     &    i1r15r25*rgl*rsq1r + mi(43)*i1r15**2*i1r15r25*rgl**2 - mi(43)
     &    *i1r15**2*i1r15r25**2*rsq1r**2 + 2.D0*mi(43)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r )
      e = e  + Nc*s125 * (  - mi(43)*i1r15**2*i1r15r25**2*rgl**2 - 2.D0*
     &    mi(43)*i1r15**3*i1r15r25*rsq1r**2 + 4.D0*mi(43)*i1r15**3*
     &    i1r15r25*rgl*rsq1r - 2.D0*mi(43)*i1r15**3*i1r15r25*rgl**2 - 
     &    mi(43)*r15*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - mi(49)*r15**(-2)*rsq1r**2 + 2.D0*mi(49)
     &    *r15**(-2)*rgl*rsq1r - mi(49)*r15**(-2)*rgl**2 + mi(49)*
     &    r15**(-2)*i1r15r25*rsq1r**2 + mi(49)*r15**(-2)*i1r15r25*
     &    rsq1r**3 - 2.D0*mi(49)*r15**(-2)*i1r15r25*rgl*rsq1r - 3.D0*
     &    mi(49)*r15**(-2)*i1r15r25*rgl*rsq1r**2 + mi(49)*r15**(-2)*
     &    i1r15r25*rgl**2 + 3.D0*mi(49)*r15**(-2)*i1r15r25*rgl**2*rsq1r
     &     - mi(49)*r15**(-2)*i1r15r25*rgl**3 - mi(49)*r15**(-2)*
     &    i1r15r25**2*rsq1r**3 + 3.D0*mi(49)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1r**2 - 3.D0*mi(49)*r15**(-2)*i1r15r25**2*rgl**2*rsq1r + 
     &    mi(49)*r15**(-2)*i1r15r25**2*rgl**3 + mi(49)*r15**(-1)*rsq1r
     &     + mi(49)*r15**(-1)*rgl - mi(49)*r15**(-1)*i1r15r25*rsq1r - 
     &    mi(49)*r15**(-1)*i1r15r25*rsq1r**2 + mi(49)*r15**(-1)*
     &    i1r15r25*rgl + mi(49)*r15**(-1)*i1r15r25*rgl**2 + mi(49)*
     &    r15**(-1)*i1r15r25**2*rsq1r**2 - 2.D0*mi(49)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1r + mi(49)*r15**(-1)*i1r15r25**2*rgl**2
     &     - mi(49)*r25**(-2)*i1r15*rsq1r**3 )
      e = e  + Nc*s125**2 * ( 3.D0*mi(49)*r25**(-2)*i1r15*rgl*rsq1r**2
     &     - 3.D0*mi(49)*r25**(-2)*i1r15*rgl**2*rsq1r + mi(49)*
     &    r25**(-2)*i1r15*rgl**3 + mi(49)*r25**(-2)*i1r15**2*rsq1r**3
     &     - 3.D0*mi(49)*r25**(-2)*i1r15**2*rgl*rsq1r**2 + 3.D0*mi(49)*
     &    r25**(-2)*i1r15**2*rgl**2*rsq1r - mi(49)*r25**(-2)*i1r15**2*
     &    rgl**3 + 3.D0*mi(49)*r25**(-1)*i1r15*rsq1r**2 - 4.D0*mi(49)*
     &    r25**(-1)*i1r15*rgl*rsq1r + mi(49)*r25**(-1)*i1r15*rgl**2 - 3.
     &    D0*mi(49)*r25**(-1)*i1r15**2*rsq1r**2 - mi(49)*r25**(-1)*
     &    i1r15**2*rsq1r**3 + 6.D0*mi(49)*r25**(-1)*i1r15**2*rgl*rsq1r
     &     + 3.D0*mi(49)*r25**(-1)*i1r15**2*rgl*rsq1r**2 - 3.D0*mi(49)*
     &    r25**(-1)*i1r15**2*rgl**2 - 3.D0*mi(49)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1r + mi(49)*r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(49)
     &    *r25**(-1)*i1r15**3*rsq1r**3 - 6.D0*mi(49)*r25**(-1)*i1r15**3
     &    *rgl*rsq1r**2 + 6.D0*mi(49)*r25**(-1)*i1r15**3*rgl**2*rsq1r
     &     - 2.D0*mi(49)*r25**(-1)*i1r15**3*rgl**3 - 2.D0*mi(49)*
     &    i1r15r25*rgl )
      e = e  + Nc*s125**2 * ( mi(49)*i1r15r25**2*rsq1r - mi(49)*
     &    i1r15r25**2*rgl + 3.D0*mi(49)*i1r15*i1r15r25*rsq1r**2 - 4.D0*
     &    mi(49)*i1r15*i1r15r25*rgl*rsq1r + mi(49)*i1r15*i1r15r25*
     &    rgl**2 - 3.D0*mi(49)*i1r15*i1r15r25**2*rsq1r**2 + 6.D0*mi(49)
     &    *i1r15*i1r15r25**2*rgl*rsq1r - 3.D0*mi(49)*i1r15*i1r15r25**2*
     &    rgl**2 - 3.D0*mi(49)*i1r15**2*i1r15r25*rsq1r**2 - mi(49)*
     &    i1r15**2*i1r15r25*rsq1r**3 + 6.D0*mi(49)*i1r15**2*i1r15r25*
     &    rgl*rsq1r + 3.D0*mi(49)*i1r15**2*i1r15r25*rgl*rsq1r**2 - 3.D0
     &    *mi(49)*i1r15**2*i1r15r25*rgl**2 - 3.D0*mi(49)*i1r15**2*
     &    i1r15r25*rgl**2*rsq1r + mi(49)*i1r15**2*i1r15r25*rgl**3 + mi(
     &    49)*i1r15**2*i1r15r25**2*rsq1r**3 - 3.D0*mi(49)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r**2 + 3.D0*mi(49)*i1r15**2*i1r15r25**2*
     &    rgl**2*rsq1r - mi(49)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(
     &    49)*i1r15**3*i1r15r25*rsq1r**3 - 6.D0*mi(49)*i1r15**3*
     &    i1r15r25*rgl*rsq1r**2 + 6.D0*mi(49)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1r )
      e = e  + Nc*s125**2 * (  - 2.D0*mi(49)*i1r15**3*i1r15r25*rgl**3 + 
     &    mi(49)*r15*i1r15r25 - mi(49)*r15*i1r15r25**2 + 2.D0*mi(49)*
     &    r15*i1r15r25**2*rsq1r - 2.D0*mi(49)*r15*i1r15r25**2*rgl + mi(
     &    49)*r15**2*i1r15r25**2 )

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

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(18)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1l**(-1) + mi(18)*r25**(-2)*rsq1l**(-1) - 
     &    2.D0*mi(18)*r25**(-2)*i1r15*rsq1l**(-1) + 2.D0*mi(18)*
     &    r25**(-2)*i1r15*rgl*rsq1l**(-1) + mi(18)*r25**(-2)*i1r15**2*
     &    rsq1l**(-1) - 2.D0*mi(18)*r25**(-2)*i1r15**2*rgl*rsq1l**(-1)
     &     - 2.D0*mi(18)*r25**(-1)*i1r15**2*rsq1l**(-1) + 2.D0*mi(18)*
     &    r25**(-1)*i1r15**3*rsq1l**(-1) - 4.D0*mi(18)*r25**(-1)*
     &    i1r15**3*rgl*rsq1l**(-1) - 2.D0*mi(18)*i1r15*i1r15r25**2*rgl*
     &    rsq1l**(-1) - 2.D0*mi(18)*i1r15**2*i1r15r25*rsq1l**(-1) + mi(
     &    18)*i1r15**2*i1r15r25**2*rsq1l**(-1) - 2.D0*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l**(-1) + 2.D0*mi(18)*i1r15**3*i1r15r25*
     &    rsq1l**(-1) - 4.D0*mi(18)*i1r15**3*i1r15r25*rgl*rsq1l**(-1)
     &     + 2.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl - 4.D0
     &    /(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl**2*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*r25**(-2) + 4.D0/(rsq1l
     &     - rgl)*mi(18)*r25**(-2)*rgl*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15 - 4.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*
     &    rgl*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*
     &    rgl + 4.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**2*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2 + 2.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl - 4.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-2)*i1r15**2*rgl**2*rsq1l**(-1) + 2.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2 - 4.D0/(rsq1l - rgl)*
     &    mi(18)*r25**(-1)*i1r15**2*rgl*rsq1l**(-1) - 2.D0/(rsq1l - rgl
     &    )*mi(18)*r25**(-1)*i1r15**3 + 4.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**3*rgl - 8.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**3*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*i1r15
     &    *i1r15r25**2*rgl - 4.D0/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25 - 4.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25*rgl*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25**2 + 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl - 4.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**3*i1r15r25 + 4.D0/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25*rgl - 8.D0/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25**2*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl**3*rsq1l**(-1) - 3.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl + 3.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl**2*rsq1l**(-1) + 2.
     &    D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl - 2.
     &    D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**2*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*i1r15*rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*i1r15**2*rgl - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15**2*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl**2 - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl**3*
     &    rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl
     &    )/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl - 2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2*
     &    rsq1l**(-1) + 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**3*rgl**2 - 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-1)*i1r15**3*rgl**3*rsq1l**(-1) + 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl**2 - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl**3*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**2*i1r15r25*rgl - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2*rsq1l**(-1) + 1/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl - 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**2
     &    *rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25**2*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l - rgl
     &    )*mi(18)*i1r15**2*i1r15r25**2*rgl**3*rsq1l**(-1) + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl - 2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1l**(-1) + 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**3*i1r15r25*rgl**2 - 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**3*i1r15r25*rgl**3*rsq1l**(-1) )

      gcoeffarr(aa22,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa22,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  + Nc**(-1)*s125**(-1) * (  - 4.D0*mi(17)*r25**(-2)*i1r15 - 6.
     &    D0*mi(17)*r25**(-1)*i1r15**2 + 4.D0*mi(18)*r25**(-3)*
     &    rsq1l**(-1) - 4.D0*mi(18)*r25**(-3)*rgl*rsq1l**(-1) - 5.D0*
     &    mi(18)*r25**(-3)*i1r15*rsq1l**(-1) + 8.D0*mi(18)*r25**(-3)*
     &    i1r15*rgl*rsq1l**(-1) + mi(18)*r25**(-3)*i1r15**2*rsq1l**(-1)
     &     - 4.D0*mi(18)*r25**(-3)*i1r15**2*rgl*rsq1l**(-1) + mi(18)*
     &    r25**(-2)*rsq1l**(-1) + 3.D0*mi(18)*r25**(-2)*i1r15*
     &    rsq1l**(-1) + 4.D0*mi(18)*r25**(-2)*i1r15 - 6.D0*mi(18)*
     &    r25**(-2)*i1r15**2*rsq1l**(-1) + 8.D0*mi(18)*r25**(-2)*
     &    i1r15**2*rgl*rsq1l**(-1) + 2.D0*mi(18)*r25**(-2)*i1r15**3*
     &    rsq1l**(-1) - 8.D0*mi(18)*r25**(-2)*i1r15**3*rgl*rsq1l**(-1)
     &     + 3.D0*mi(18)*r25**(-1)*i1r15**2*rsq1l**(-1) + 6.D0*mi(18)*
     &    r25**(-1)*i1r15**2 - 7.D0*mi(18)*r25**(-1)*i1r15**3*
     &    rsq1l**(-1) + 8.D0*mi(18)*r25**(-1)*i1r15**3*rgl*rsq1l**(-1)
     &     + 3.D0*mi(18)*r25**(-1)*i1r15**4*rsq1l**(-1) - 12.D0*mi(18)*
     &    r25**(-1)*i1r15**4*rgl*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 3.D0*mi(18)*i1r15**2*i1r15r25*
     &    rsq1l**(-1) - mi(18)*i1r15**2*i1r15r25**2*rsq1l**(-1) - 7.D0*
     &    mi(18)*i1r15**3*i1r15r25*rsq1l**(-1) + 8.D0*mi(18)*i1r15**3*
     &    i1r15r25*rgl*rsq1l**(-1) + mi(18)*i1r15**3*i1r15r25**2*
     &    rsq1l**(-1) - 4.D0*mi(18)*i1r15**3*i1r15r25**2*rgl*
     &    rsq1l**(-1) + 3.D0*mi(18)*i1r15**4*i1r15r25*rsq1l**(-1) - 12.D
     &    0*mi(18)*i1r15**4*i1r15r25*rgl*rsq1l**(-1) + 3.D0*mi(18)*r15*
     &    r25**(-3)*rsq1l**(-1) - 4.D0/(rsq1l - rgl)*mi(18)*r25**(-3)
     &     + 6.D0/(rsq1l - rgl)*mi(18)*r25**(-3)*rgl*rsq1l**(-1) + 4.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-3)*rgl - 6.D0/(rsq1l - rgl)*mi(
     &    18)*r25**(-3)*rgl**2*rsq1l**(-1) + 5.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-3)*i1r15 - 6.D0/(rsq1l - rgl)*mi(18)*r25**(-3)*i1r15*
     &    rgl*rsq1l**(-1) - 8.D0/(rsq1l - rgl)*mi(18)*r25**(-3)*i1r15*
     &    rgl + 12.D0/(rsq1l - rgl)*mi(18)*r25**(-3)*i1r15*rgl**2*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*r25**(-3)*i1r15**2 + 4.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-3)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 6.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-3)*i1r15**2*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18
     &    )*r25**(-2) + 1/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl*
     &    rsq1l**(-1) - 3.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15 + 5.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl*rsq1l**(-1) + 6.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2 - 6.D0/(rsq1l - rgl)
     &    *mi(18)*r25**(-2)*i1r15**2*rgl*rsq1l**(-1) - 8.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-2)*i1r15**2*rgl + 12.D0/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*i1r15**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl
     &    )*mi(18)*r25**(-2)*i1r15**3 + 8.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**3*rgl - 12.D0/(rsq1l - rgl)*mi(18)*r25**(-2)
     &    *i1r15**3*rgl**2*rsq1l**(-1) - 3.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2 + 5.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l**(-1) + 7.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**3 - 6.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**3*rgl*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 8.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**3*rgl + 12.D0/(rsq1l - rgl)*mi(18)*r25**(-1)
     &    *i1r15**3*rgl**2*rsq1l**(-1) - 3.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**4 + 12.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**4*rgl - 18.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**4*
     &    rgl**2*rsq1l**(-1) - 3.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25 + 5.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl*
     &    rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2 + 7.
     &    D0/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25 - 6.D0/(rsq1l - rgl
     &    )*mi(18)*i1r15**3*i1r15r25*rgl*rsq1l**(-1) - 8.D0/(rsq1l - 
     &    rgl)*mi(18)*i1r15**3*i1r15r25*rgl + 12.D0/(rsq1l - rgl)*mi(18
     &    )*i1r15**3*i1r15r25*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(
     &    18)*i1r15**3*i1r15r25**2 + 4.D0/(rsq1l - rgl)*mi(18)*i1r15**3
     &    *i1r15r25**2*rgl - 6.D0/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) - 3.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**4*i1r15r25 )
      e = e  + Nc**(-1)*s125**(-1) * ( 12.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**4*i1r15r25*rgl - 18.D0/(rsq1l - rgl)*mi(18)*i1r15**4*
     &    i1r15r25*rgl**2*rsq1l**(-1) - 3.D0/(rsq1l - rgl)*mi(18)*r15*
     &    r25**(-3) + 6.D0/(rsq1l - rgl)*mi(18)*r15*r25**(-3)*rgl*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-3)*rgl + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-3)*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-3)*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-3)*rgl**3*rsq1l**(-1) + 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-3)*i1r15*rgl - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-3)*i1r15*rgl**2*rsq1l**(-1) - 4.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-3)*i1r15*rgl**2 + 
     &    4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-3)*i1r15*
     &    rgl**3*rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-3)*i1r15**2*rgl - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)
     &    *r25**(-3)*i1r15**2*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-3)*i1r15**2*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r25**(-3)*i1r15**2*rgl**3*rsq1l**(-1) - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl + 2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**2*
     &    rsq1l**(-1) - 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2*rgl**2 + 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15**2*rgl**3*rsq1l**(-1) + 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**3*rgl - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**3*rgl**2*
     &    rsq1l**(-1) + 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**3*rgl**2 - 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15**3*rgl**3*rsq1l**(-1) - 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-1)*i1r15**3*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)
     &    *mi(18)*r25**(-1)*i1r15**3*rgl**2*rsq1l**(-1) - 4.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2 + 4.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**3
     &    *rsq1l**(-1) + 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**4*rgl - 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-1)*i1r15**4*rgl**2*rsq1l**(-1) + 6.D0/(rsq1l - rgl
     &    )/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**4*rgl**2 - 6.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**4*rgl**3*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25*rgl + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*i1r15**2*i1r15r25*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl + 1/(rsq1l - rgl
     &    )/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**3*i1r15r25*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**3*i1r15r25*rgl**2*rsq1l**(-1) - 4.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**2 + 4.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**3*
     &    rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25**2*rgl - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**3*i1r15r25**2*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25**2*rgl**2 - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25**2*rgl**3
     &    *rsq1l**(-1) + 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**4*i1r15r25*rgl - 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*i1r15**4*i1r15r25*rgl**2*rsq1l**(-1) + 6.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*i1r15**4*i1r15r25*rgl**2 - 6.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*i1r15**4*i1r15r25*rgl**3*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 3.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15*r25**(-3)*rgl + 3.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15*r25**(-3)*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1) * ( 2.D0*r25**(-1)*i1r15 + 4.D0*mi(20)*r25**(-2)
     &    *i1r15 + 4.D0*mi(20)*r25**(-2)*i1r15*rsq1l - 4.D0*mi(20)*
     &    r25**(-2)*i1r15*rgl - 4.D0*mi(20)*r25**(-2)*i1r15**2*rsq1l + 
     &    4.D0*mi(20)*r25**(-2)*i1r15**2*rgl + 2.D0*mi(20)*r25**(-1)*
     &    i1r15**2 + 4.D0*mi(20)*r25**(-1)*i1r15**2*rsq1l - 4.D0*mi(20)
     &    *r25**(-1)*i1r15**2*rgl - 8.D0*mi(20)*r25**(-1)*i1r15**3*
     &    rsq1l + 8.D0*mi(20)*r25**(-1)*i1r15**3*rgl + 4.D0*mi(20)*
     &    i1r15**3*i1r15r25*rsq1l - 4.D0*mi(20)*i1r15**3*i1r15r25*rgl
     &     - 4.D0*mi(22)*r25**(-2) + 4.D0*mi(24)*r25**(-2) - 4.D0*mi(24
     &    )*r25**(-2)*i1r15 - 4.D0*mi(24)*r25**(-2)*i1r15*rsq1l + 4.D0*
     &    mi(24)*r25**(-2)*i1r15*rgl + 4.D0*mi(24)*r25**(-2)*i1r15**2*
     &    rsq1l - 4.D0*mi(24)*r25**(-2)*i1r15**2*rgl - 2.D0*mi(24)*
     &    r25**(-1)*i1r15**2 - 6.D0*mi(24)*r25**(-1)*i1r15**2*rsq1l + 6.
     &    D0*mi(24)*r25**(-1)*i1r15**2*rgl + 8.D0*mi(24)*r25**(-1)*
     &    i1r15**3*rsq1l - 8.D0*mi(24)*r25**(-1)*i1r15**3*rgl + 4.D0*
     &    mi(24)*i1r15**2*i1r15r25*rsq1l )
      e = e  + Nc**(-1) * (  - 4.D0*mi(24)*i1r15**2*i1r15r25*rgl - 4.D0*
     &    mi(24)*i1r15**3*i1r15r25*rsq1l + 4.D0*mi(24)*i1r15**3*
     &    i1r15r25*rgl - 4.D0*mi(26)*r25**(-2)*i1r15*rsq1l + 4.D0*mi(26
     &    )*r25**(-2)*i1r15*rgl - 4.D0*mi(26)*r25**(-1)*i1r15**2*rsq1l
     &     + 4.D0*mi(26)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(26)*i1r15**2*
     &    i1r15r25*rsq1l + 4.D0*mi(26)*i1r15**2*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125 * (  - mi(28)*r25**(-2) + 2.D0*mi(28)*
     &    r25**(-2)*rsq1l - 2.D0*mi(28)*r25**(-2)*rgl + mi(28)*
     &    r25**(-1) - 2.D0*mi(28)*r15*r25**(-3) + 4.D0*mi(28)*r15*
     &    r25**(-3)*rsq1l - 4.D0*mi(28)*r15*r25**(-3)*rgl + 3.D0*mi(28)
     &    *r15*r25**(-2) + 2.D0*mi(28)*r15**2*r25**(-3) - 4.D0*mi(32)*
     &    r25**(-3)*rsq1l - 2.D0*mi(32)*r25**(-3)*rsq1l**2 + 4.D0*mi(32
     &    )*r25**(-3)*rgl + 4.D0*mi(32)*r25**(-3)*rgl*rsq1l - 2.D0*mi(
     &    32)*r25**(-3)*rgl**2 + 4.D0*mi(32)*r25**(-3)*i1r15*rsq1l + 4.D
     &    0*mi(32)*r25**(-3)*i1r15*rsq1l**2 - 4.D0*mi(32)*r25**(-3)*
     &    i1r15*rgl - 8.D0*mi(32)*r25**(-3)*i1r15*rgl*rsq1l + 4.D0*mi(
     &    32)*r25**(-3)*i1r15*rgl**2 - 2.D0*mi(32)*r25**(-3)*i1r15**2*
     &    rsq1l**2 + 4.D0*mi(32)*r25**(-3)*i1r15**2*rgl*rsq1l - 2.D0*
     &    mi(32)*r25**(-3)*i1r15**2*rgl**2 + 3.D0*mi(32)*r25**(-2)*
     &    rsq1l - mi(32)*r25**(-2)*rgl - 7.D0*mi(32)*r25**(-2)*i1r15*
     &    rsq1l - 2.D0*mi(32)*r25**(-2)*i1r15*rsq1l**2 + 5.D0*mi(32)*
     &    r25**(-2)*i1r15*rgl )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(32)*r25**(-2)*i1r15*rgl*rsq1l
     &     - 2.D0*mi(32)*r25**(-2)*i1r15*rgl**2 + 4.D0*mi(32)*r25**(-2)
     &    *i1r15**2*rsq1l + 6.D0*mi(32)*r25**(-2)*i1r15**2*rsq1l**2 - 4.
     &    D0*mi(32)*r25**(-2)*i1r15**2*rgl - 12.D0*mi(32)*r25**(-2)*
     &    i1r15**2*rgl*rsq1l + 6.D0*mi(32)*r25**(-2)*i1r15**2*rgl**2 - 
     &    4.D0*mi(32)*r25**(-2)*i1r15**3*rsq1l**2 + 8.D0*mi(32)*
     &    r25**(-2)*i1r15**3*rgl*rsq1l - 4.D0*mi(32)*r25**(-2)*i1r15**3
     &    *rgl**2 + 3.D0*mi(32)*r25**(-1)*i1r15*rsq1l - mi(32)*
     &    r25**(-1)*i1r15*rgl - 7.D0*mi(32)*r25**(-1)*i1r15**2*rsq1l - 
     &    2.D0*mi(32)*r25**(-1)*i1r15**2*rsq1l**2 + 5.D0*mi(32)*
     &    r25**(-1)*i1r15**2*rgl + 4.D0*mi(32)*r25**(-1)*i1r15**2*rgl*
     &    rsq1l - 2.D0*mi(32)*r25**(-1)*i1r15**2*rgl**2 + 4.D0*mi(32)*
     &    r25**(-1)*i1r15**3*rsq1l + 8.D0*mi(32)*r25**(-1)*i1r15**3*
     &    rsq1l**2 - 4.D0*mi(32)*r25**(-1)*i1r15**3*rgl - 16.D0*mi(32)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l + 8.D0*mi(32)*r25**(-1)*i1r15**3
     &    *rgl**2 )
      e = e  + Nc**(-1)*s125 * (  - 6.D0*mi(32)*r25**(-1)*i1r15**4*
     &    rsq1l**2 + 12.D0*mi(32)*r25**(-1)*i1r15**4*rgl*rsq1l - 6.D0*
     &    mi(32)*r25**(-1)*i1r15**4*rgl**2 + 3.D0*mi(32)*i1r15*i1r15r25
     &    *rsq1l - mi(32)*i1r15*i1r15r25*rgl - 7.D0*mi(32)*i1r15**2*
     &    i1r15r25*rsq1l - 2.D0*mi(32)*i1r15**2*i1r15r25*rsq1l**2 + 5.D0
     &    *mi(32)*i1r15**2*i1r15r25*rgl + 4.D0*mi(32)*i1r15**2*i1r15r25
     &    *rgl*rsq1l - 2.D0*mi(32)*i1r15**2*i1r15r25*rgl**2 + 2.D0*mi(
     &    32)*i1r15**2*i1r15r25**2*rsq1l**2 - 4.D0*mi(32)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l + 2.D0*mi(32)*i1r15**2*i1r15r25**2*
     &    rgl**2 + 4.D0*mi(32)*i1r15**3*i1r15r25*rsq1l + 8.D0*mi(32)*
     &    i1r15**3*i1r15r25*rsq1l**2 - 4.D0*mi(32)*i1r15**3*i1r15r25*
     &    rgl - 16.D0*mi(32)*i1r15**3*i1r15r25*rgl*rsq1l + 8.D0*mi(32)*
     &    i1r15**3*i1r15r25*rgl**2 - 2.D0*mi(32)*i1r15**3*i1r15r25**2*
     &    rsq1l**2 + 4.D0*mi(32)*i1r15**3*i1r15r25**2*rgl*rsq1l - 2.D0*
     &    mi(32)*i1r15**3*i1r15r25**2*rgl**2 - 6.D0*mi(32)*i1r15**4*
     &    i1r15r25*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * ( 12.D0*mi(32)*i1r15**4*i1r15r25*rgl*
     &    rsq1l - 6.D0*mi(32)*i1r15**4*i1r15r25*rgl**2 - 4.D0*mi(32)*
     &    r15*r25**(-3)*rsq1l + 4.D0*mi(32)*r15*r25**(-3)*rgl - mi(32)*
     &    r15*r25**(-2) - 2.D0*mi(32)*r15**2*r25**(-3) + 2.D0*mi(36)*
     &    r25**(-2)*i1r15*rsq1l**2 - 4.D0*mi(36)*r25**(-2)*i1r15*rgl*
     &    rsq1l + 2.D0*mi(36)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(36)*
     &    r25**(-2)*i1r15**2*rsq1l**2 + 4.D0*mi(36)*r25**(-2)*i1r15**2*
     &    rgl*rsq1l - 2.D0*mi(36)*r25**(-2)*i1r15**2*rgl**2 - mi(36)*
     &    r25**(-1)*i1r15*rsq1l - mi(36)*r25**(-1)*i1r15*rgl + 2.D0*mi(
     &    36)*r25**(-1)*i1r15**2*rsq1l**2 - 4.D0*mi(36)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l + 2.D0*mi(36)*r25**(-1)*i1r15**2*rgl**2 - 
     &    4.D0*mi(36)*r25**(-1)*i1r15**3*rsq1l**2 + 8.D0*mi(36)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l - 4.D0*mi(36)*r25**(-1)*i1r15**3
     &    *rgl**2 - mi(36)*i1r15*i1r15r25*rsq1l - mi(36)*i1r15*i1r15r25
     &    *rgl + 2.D0*mi(36)*i1r15**2*i1r15r25*rsq1l**2 - 4.D0*mi(36)*
     &    i1r15**2*i1r15r25*rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(36)*i1r15**2*i1r15r25*rgl**2 - 
     &    2.D0*mi(36)*i1r15**2*i1r15r25**2*rsq1l**2 + 4.D0*mi(36)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1l - 2.D0*mi(36)*i1r15**2*
     &    i1r15r25**2*rgl**2 - 4.D0*mi(36)*i1r15**3*i1r15r25*rsq1l**2
     &     + 8.D0*mi(36)*i1r15**3*i1r15r25*rgl*rsq1l - 4.D0*mi(36)*
     &    i1r15**3*i1r15r25*rgl**2 + 4.D0*mi(38)*r25**(-3)*rsq1l + 4.D0
     &    *mi(38)*r25**(-3)*rsq1l**2 - 4.D0*mi(38)*r25**(-3)*rgl - 8.D0
     &    *mi(38)*r25**(-3)*rgl*rsq1l + 4.D0*mi(38)*r25**(-3)*rgl**2 - 
     &    4.D0*mi(38)*r25**(-3)*i1r15*rsq1l - 8.D0*mi(38)*r25**(-3)*
     &    i1r15*rsq1l**2 + 4.D0*mi(38)*r25**(-3)*i1r15*rgl + 16.D0*mi(
     &    38)*r25**(-3)*i1r15*rgl*rsq1l - 8.D0*mi(38)*r25**(-3)*i1r15*
     &    rgl**2 + 4.D0*mi(38)*r25**(-3)*i1r15**2*rsq1l**2 - 8.D0*mi(38
     &    )*r25**(-3)*i1r15**2*rgl*rsq1l + 4.D0*mi(38)*r25**(-3)*
     &    i1r15**2*rgl**2 - 4.D0*mi(38)*r25**(-2)*rgl + 4.D0*mi(38)*
     &    r25**(-2)*i1r15*rsq1l - 4.D0*mi(38)*r25**(-2)*i1r15**2*rsq1l
     &     - 8.D0*mi(38)*r25**(-2)*i1r15**2*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(38)*r25**(-2)*i1r15**2*rgl + 16.
     &    D0*mi(38)*r25**(-2)*i1r15**2*rgl*rsq1l - 8.D0*mi(38)*
     &    r25**(-2)*i1r15**2*rgl**2 + 8.D0*mi(38)*r25**(-2)*i1r15**3*
     &    rsq1l**2 - 16.D0*mi(38)*r25**(-2)*i1r15**3*rgl*rsq1l + 8.D0*
     &    mi(38)*r25**(-2)*i1r15**3*rgl**2 + mi(38)*r25**(-1) + 4.D0*
     &    mi(38)*r25**(-1)*i1r15**2*rsq1l - 4.D0*mi(38)*r25**(-1)*
     &    i1r15**3*rsq1l - 8.D0*mi(38)*r25**(-1)*i1r15**3*rsq1l**2 + 4.D
     &    0*mi(38)*r25**(-1)*i1r15**3*rgl + 16.D0*mi(38)*r25**(-1)*
     &    i1r15**3*rgl*rsq1l - 8.D0*mi(38)*r25**(-1)*i1r15**3*rgl**2 + 
     &    12.D0*mi(38)*r25**(-1)*i1r15**4*rsq1l**2 - 24.D0*mi(38)*
     &    r25**(-1)*i1r15**4*rgl*rsq1l + 12.D0*mi(38)*r25**(-1)*
     &    i1r15**4*rgl**2 + 4.D0*mi(38)*i1r15**2*i1r15r25*rsq1l - 4.D0*
     &    mi(38)*i1r15**3*i1r15r25*rsq1l - 8.D0*mi(38)*i1r15**3*
     &    i1r15r25*rsq1l**2 + 4.D0*mi(38)*i1r15**3*i1r15r25*rgl + 16.D0
     &    *mi(38)*i1r15**3*i1r15r25*rgl*rsq1l - 8.D0*mi(38)*i1r15**3*
     &    i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(38)*i1r15**3*i1r15r25**2*
     &    rsq1l**2 - 8.D0*mi(38)*i1r15**3*i1r15r25**2*rgl*rsq1l + 4.D0*
     &    mi(38)*i1r15**3*i1r15r25**2*rgl**2 + 12.D0*mi(38)*i1r15**4*
     &    i1r15r25*rsq1l**2 - 24.D0*mi(38)*i1r15**4*i1r15r25*rgl*rsq1l
     &     + 12.D0*mi(38)*i1r15**4*i1r15r25*rgl**2 + 4.D0*mi(38)*r15*
     &    r25**(-3)*rsq1l - 4.D0*mi(38)*r15*r25**(-3)*rgl + 3.D0*mi(38)
     &    *r15*r25**(-2) + 2.D0*mi(38)*r15**2*r25**(-3) - 2.D0*mi(40)*
     &    r25**(-3)*rsq1l**2 + 4.D0*mi(40)*r25**(-3)*rgl*rsq1l - 2.D0*
     &    mi(40)*r25**(-3)*rgl**2 + 2.D0*mi(40)*r25**(-3)*i1r15*
     &    rsq1l**2 - 4.D0*mi(40)*r25**(-3)*i1r15*rgl*rsq1l + 2.D0*mi(40
     &    )*r25**(-3)*i1r15*rgl**2 + mi(40)*r25**(-2) + 3.D0*mi(40)*
     &    r25**(-2)*rsq1l - mi(40)*r25**(-2)*rgl - 4.D0*mi(40)*
     &    r25**(-2)*i1r15*rsq1l - 2.D0*mi(40)*r25**(-2)*i1r15*rsq1l**2
     &     + 4.D0*mi(40)*r25**(-2)*i1r15*rgl + 4.D0*mi(40)*r25**(-2)*
     &    i1r15*rgl*rsq1l - 2.D0*mi(40)*r25**(-2)*i1r15*rgl**2 + 4.D0*
     &    mi(40)*r25**(-2)*i1r15**2*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * (  - 8.D0*mi(40)*r25**(-2)*i1r15**2*rgl*
     &    rsq1l + 4.D0*mi(40)*r25**(-2)*i1r15**2*rgl**2 + 3.D0*mi(40)*
     &    r25**(-1)*i1r15*rsq1l - mi(40)*r25**(-1)*i1r15*rgl - 4.D0*mi(
     &    40)*r25**(-1)*i1r15**2*rsq1l - 2.D0*mi(40)*r25**(-1)*i1r15**2
     &    *rsq1l**2 + 4.D0*mi(40)*r25**(-1)*i1r15**2*rgl + 4.D0*mi(40)*
     &    r25**(-1)*i1r15**2*rgl*rsq1l - 2.D0*mi(40)*r25**(-1)*i1r15**2
     &    *rgl**2 + 6.D0*mi(40)*r25**(-1)*i1r15**3*rsq1l**2 - 12.D0*mi(
     &    40)*r25**(-1)*i1r15**3*rgl*rsq1l + 6.D0*mi(40)*r25**(-1)*
     &    i1r15**3*rgl**2 - 3.D0*mi(40)*i1r15*i1r15r25*rsq1l + mi(40)*
     &    i1r15*i1r15r25*rgl + 4.D0*mi(40)*i1r15**2*i1r15r25*rsq1l + 2.D
     &    0*mi(40)*i1r15**2*i1r15r25*rsq1l**2 - 4.D0*mi(40)*i1r15**2*
     &    i1r15r25*rgl - 4.D0*mi(40)*i1r15**2*i1r15r25*rgl*rsq1l + 2.D0
     &    *mi(40)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(40)*i1r15**2*
     &    i1r15r25**2*rsq1l**2 + 4.D0*mi(40)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1l - 2.D0*mi(40)*i1r15**2*i1r15r25**2*rgl**2 - 6.D0*mi(40)
     &    *i1r15**3*i1r15r25*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * ( 12.D0*mi(40)*i1r15**3*i1r15r25*rgl*
     &    rsq1l - 6.D0*mi(40)*i1r15**3*i1r15r25*rgl**2 + 2.D0*mi(40)*
     &    r15*r25**(-3) - 4.D0*mi(40)*r15*r25**(-3)*rsq1l + 4.D0*mi(40)
     &    *r15*r25**(-3)*rgl - mi(40)*r15*r25**(-2) - 2.D0*mi(40)*
     &    r15**2*r25**(-3) + 2.D0*mi(42)*r25**(-3)*i1r15*rsq1l**2 - 4.D0
     &    *mi(42)*r25**(-3)*i1r15*rgl*rsq1l + 2.D0*mi(42)*r25**(-3)*
     &    i1r15*rgl**2 - 2.D0*mi(42)*r25**(-3)*i1r15**2*rsq1l**2 + 4.D0
     &    *mi(42)*r25**(-3)*i1r15**2*rgl*rsq1l - 2.D0*mi(42)*r25**(-3)*
     &    i1r15**2*rgl**2 - mi(42)*r25**(-2)*i1r15*rsq1l - 2.D0*mi(42)*
     &    r25**(-2)*i1r15*rsq1l**2 - mi(42)*r25**(-2)*i1r15*rgl + 4.D0*
     &    mi(42)*r25**(-2)*i1r15*rgl*rsq1l - 2.D0*mi(42)*r25**(-2)*
     &    i1r15*rgl**2 + 4.D0*mi(42)*r25**(-2)*i1r15**2*rsq1l**2 - 8.D0
     &    *mi(42)*r25**(-2)*i1r15**2*rgl*rsq1l + 4.D0*mi(42)*r25**(-2)*
     &    i1r15**2*rgl**2 - 4.D0*mi(42)*r25**(-2)*i1r15**3*rsq1l**2 + 8.
     &    D0*mi(42)*r25**(-2)*i1r15**3*rgl*rsq1l - 4.D0*mi(42)*
     &    r25**(-2)*i1r15**3*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( mi(42)*r25**(-1)*i1r15*rsq1l + mi(42)*
     &    r25**(-1)*i1r15*rgl - mi(42)*r25**(-1)*i1r15**2*rsq1l - 2.D0*
     &    mi(42)*r25**(-1)*i1r15**2*rsq1l**2 - mi(42)*r25**(-1)*
     &    i1r15**2*rgl + 4.D0*mi(42)*r25**(-1)*i1r15**2*rgl*rsq1l - 2.D0
     &    *mi(42)*r25**(-1)*i1r15**2*rgl**2 + 6.D0*mi(42)*r25**(-1)*
     &    i1r15**3*rsq1l**2 - 12.D0*mi(42)*r25**(-1)*i1r15**3*rgl*rsq1l
     &     + 6.D0*mi(42)*r25**(-1)*i1r15**3*rgl**2 - 6.D0*mi(42)*
     &    r25**(-1)*i1r15**4*rsq1l**2 + 12.D0*mi(42)*r25**(-1)*i1r15**4
     &    *rgl*rsq1l - 6.D0*mi(42)*r25**(-1)*i1r15**4*rgl**2 + mi(42)*
     &    i1r15*i1r15r25*rsq1l + mi(42)*i1r15*i1r15r25*rgl - mi(42)*
     &    i1r15**2*i1r15r25*rsq1l - 2.D0*mi(42)*i1r15**2*i1r15r25*
     &    rsq1l**2 - mi(42)*i1r15**2*i1r15r25*rgl + 4.D0*mi(42)*
     &    i1r15**2*i1r15r25*rgl*rsq1l - 2.D0*mi(42)*i1r15**2*i1r15r25*
     &    rgl**2 + 2.D0*mi(42)*i1r15**2*i1r15r25**2*rsq1l**2 - 4.D0*mi(
     &    42)*i1r15**2*i1r15r25**2*rgl*rsq1l + 2.D0*mi(42)*i1r15**2*
     &    i1r15r25**2*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( 6.D0*mi(42)*i1r15**3*i1r15r25*rsq1l**2
     &     - 12.D0*mi(42)*i1r15**3*i1r15r25*rgl*rsq1l + 6.D0*mi(42)*
     &    i1r15**3*i1r15r25*rgl**2 - 2.D0*mi(42)*i1r15**3*i1r15r25**2*
     &    rsq1l**2 + 4.D0*mi(42)*i1r15**3*i1r15r25**2*rgl*rsq1l - 2.D0*
     &    mi(42)*i1r15**3*i1r15r25**2*rgl**2 - 6.D0*mi(42)*i1r15**4*
     &    i1r15r25*rsq1l**2 + 12.D0*mi(42)*i1r15**4*i1r15r25*rgl*rsq1l
     &     - 6.D0*mi(42)*i1r15**4*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 6.D0*mi(44)*r25**(-3)*rsq1l**2 - 
     &    2.D0*mi(44)*r25**(-3)*rsq1l**3 + 12.D0*mi(44)*r25**(-3)*rgl*
     &    rsq1l + 6.D0*mi(44)*r25**(-3)*rgl*rsq1l**2 - 6.D0*mi(44)*
     &    r25**(-3)*rgl**2 - 6.D0*mi(44)*r25**(-3)*rgl**2*rsq1l + 2.D0*
     &    mi(44)*r25**(-3)*rgl**3 + 6.D0*mi(44)*r25**(-3)*i1r15*
     &    rsq1l**2 + 4.D0*mi(44)*r25**(-3)*i1r15*rsq1l**3 - 12.D0*mi(44
     &    )*r25**(-3)*i1r15*rgl*rsq1l - 12.D0*mi(44)*r25**(-3)*i1r15*
     &    rgl*rsq1l**2 + 6.D0*mi(44)*r25**(-3)*i1r15*rgl**2 + 12.D0*mi(
     &    44)*r25**(-3)*i1r15*rgl**2*rsq1l - 4.D0*mi(44)*r25**(-3)*
     &    i1r15*rgl**3 - 2.D0*mi(44)*r25**(-3)*i1r15**2*rsq1l**3 + 6.D0
     &    *mi(44)*r25**(-3)*i1r15**2*rgl*rsq1l**2 - 6.D0*mi(44)*
     &    r25**(-3)*i1r15**2*rgl**2*rsq1l + 2.D0*mi(44)*r25**(-3)*
     &    i1r15**2*rgl**3 + 3.D0*mi(44)*r25**(-2)*rsq1l**2 - 3.D0*mi(44
     &    )*r25**(-2)*rgl**2 - 9.D0*mi(44)*r25**(-2)*i1r15*rsq1l**2 + 
     &    12.D0*mi(44)*r25**(-2)*i1r15*rgl*rsq1l - 3.D0*mi(44)*
     &    r25**(-2)*i1r15*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( 6.D0*mi(44)*r25**(-2)*i1r15**2*
     &    rsq1l**2 + 4.D0*mi(44)*r25**(-2)*i1r15**2*rsq1l**3 - 12.D0*
     &    mi(44)*r25**(-2)*i1r15**2*rgl*rsq1l - 12.D0*mi(44)*r25**(-2)*
     &    i1r15**2*rgl*rsq1l**2 + 6.D0*mi(44)*r25**(-2)*i1r15**2*rgl**2
     &     + 12.D0*mi(44)*r25**(-2)*i1r15**2*rgl**2*rsq1l - 4.D0*mi(44)
     &    *r25**(-2)*i1r15**2*rgl**3 - 4.D0*mi(44)*r25**(-2)*i1r15**3*
     &    rsq1l**3 + 12.D0*mi(44)*r25**(-2)*i1r15**3*rgl*rsq1l**2 - 12.D
     &    0*mi(44)*r25**(-2)*i1r15**3*rgl**2*rsq1l + 4.D0*mi(44)*
     &    r25**(-2)*i1r15**3*rgl**3 + mi(44)*r25**(-1)*rsq1l + mi(44)*
     &    r25**(-1)*rgl + 4.D0*mi(44)*r25**(-1)*i1r15*rsq1l**2 - 4.D0*
     &    mi(44)*r25**(-1)*i1r15*rgl*rsq1l - 9.D0*mi(44)*r25**(-1)*
     &    i1r15**2*rsq1l**2 + 12.D0*mi(44)*r25**(-1)*i1r15**2*rgl*rsq1l
     &     - 3.D0*mi(44)*r25**(-1)*i1r15**2*rgl**2 + 6.D0*mi(44)*
     &    r25**(-1)*i1r15**3*rsq1l**2 + 4.D0*mi(44)*r25**(-1)*i1r15**3*
     &    rsq1l**3 - 12.D0*mi(44)*r25**(-1)*i1r15**3*rgl*rsq1l - 12.D0*
     &    mi(44)*r25**(-1)*i1r15**3*rgl*rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * ( 6.D0*mi(44)*r25**(-1)*i1r15**3*
     &    rgl**2 + 12.D0*mi(44)*r25**(-1)*i1r15**3*rgl**2*rsq1l - 4.D0*
     &    mi(44)*r25**(-1)*i1r15**3*rgl**3 - 6.D0*mi(44)*r25**(-1)*
     &    i1r15**4*rsq1l**3 + 18.D0*mi(44)*r25**(-1)*i1r15**4*rgl*
     &    rsq1l**2 - 18.D0*mi(44)*r25**(-1)*i1r15**4*rgl**2*rsq1l + 6.D0
     &    *mi(44)*r25**(-1)*i1r15**4*rgl**3 + 4.D0*mi(44)*i1r15*
     &    i1r15r25*rsq1l**2 - 4.D0*mi(44)*i1r15*i1r15r25*rgl*rsq1l - 9.D
     &    0*mi(44)*i1r15**2*i1r15r25*rsq1l**2 + 12.D0*mi(44)*i1r15**2*
     &    i1r15r25*rgl*rsq1l - 3.D0*mi(44)*i1r15**2*i1r15r25*rgl**2 + 6.
     &    D0*mi(44)*i1r15**3*i1r15r25*rsq1l**2 + 4.D0*mi(44)*i1r15**3*
     &    i1r15r25*rsq1l**3 - 12.D0*mi(44)*i1r15**3*i1r15r25*rgl*rsq1l
     &     - 12.D0*mi(44)*i1r15**3*i1r15r25*rgl*rsq1l**2 + 6.D0*mi(44)*
     &    i1r15**3*i1r15r25*rgl**2 + 12.D0*mi(44)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1l - 4.D0*mi(44)*i1r15**3*i1r15r25*rgl**3 - 2.D0*
     &    mi(44)*i1r15**3*i1r15r25**2*rsq1l**3 + 6.D0*mi(44)*i1r15**3*
     &    i1r15r25**2*rgl*rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 6.D0*mi(44)*i1r15**3*i1r15r25**2*
     &    rgl**2*rsq1l + 2.D0*mi(44)*i1r15**3*i1r15r25**2*rgl**3 - 6.D0
     &    *mi(44)*i1r15**4*i1r15r25*rsq1l**3 + 18.D0*mi(44)*i1r15**4*
     &    i1r15r25*rgl*rsq1l**2 - 18.D0*mi(44)*i1r15**4*i1r15r25*rgl**2
     &    *rsq1l + 6.D0*mi(44)*i1r15**4*i1r15r25*rgl**3 - 6.D0*mi(44)*
     &    r15*r25**(-3)*rsq1l**2 + 12.D0*mi(44)*r15*r25**(-3)*rgl*rsq1l
     &     - 6.D0*mi(44)*r15*r25**(-3)*rgl**2 + mi(44)*r15*r25**(-2) + 
     &    6.D0*mi(44)*r15*r25**(-2)*rgl - mi(44)*r15*r25**(-1) + 2.D0*
     &    mi(44)*r15**2*r25**(-3) - 6.D0*mi(44)*r15**2*r25**(-3)*rsq1l
     &     + 6.D0*mi(44)*r15**2*r25**(-3)*rgl - 3.D0*mi(44)*r15**2*
     &    r25**(-2) - 2.D0*mi(44)*r15**3*r25**(-3) - 2.D0*mi(46)*
     &    r25**(-3)*rsq1l**3 + 6.D0*mi(46)*r25**(-3)*rgl*rsq1l**2 - 6.D0
     &    *mi(46)*r25**(-3)*rgl**2*rsq1l + 2.D0*mi(46)*r25**(-3)*rgl**3
     &     + 4.D0*mi(46)*r25**(-3)*i1r15*rsq1l**3 - 12.D0*mi(46)*
     &    r25**(-3)*i1r15*rgl*rsq1l**2 + 12.D0*mi(46)*r25**(-3)*i1r15*
     &    rgl**2*rsq1l )
      e = e  + Nc**(-1)*s125**2 * (  - 4.D0*mi(46)*r25**(-3)*i1r15*
     &    rgl**3 - 2.D0*mi(46)*r25**(-3)*i1r15**2*rsq1l**3 + 6.D0*mi(46
     &    )*r25**(-3)*i1r15**2*rgl*rsq1l**2 - 6.D0*mi(46)*r25**(-3)*
     &    i1r15**2*rgl**2*rsq1l + 2.D0*mi(46)*r25**(-3)*i1r15**2*rgl**3
     &     + 3.D0*mi(46)*r25**(-2)*rsq1l**2 - 3.D0*mi(46)*r25**(-2)*
     &    rgl**2 - 3.D0*mi(46)*r25**(-2)*i1r15*rsq1l**2 + 3.D0*mi(46)*
     &    r25**(-2)*i1r15*rgl**2 + 4.D0*mi(46)*r25**(-2)*i1r15**2*
     &    rsq1l**3 - 12.D0*mi(46)*r25**(-2)*i1r15**2*rgl*rsq1l**2 + 12.D
     &    0*mi(46)*r25**(-2)*i1r15**2*rgl**2*rsq1l - 4.D0*mi(46)*
     &    r25**(-2)*i1r15**2*rgl**3 - 4.D0*mi(46)*r25**(-2)*i1r15**3*
     &    rsq1l**3 + 12.D0*mi(46)*r25**(-2)*i1r15**3*rgl*rsq1l**2 - 12.D
     &    0*mi(46)*r25**(-2)*i1r15**3*rgl**2*rsq1l + 4.D0*mi(46)*
     &    r25**(-2)*i1r15**3*rgl**3 - mi(46)*r25**(-1)*rsq1l + mi(46)*
     &    r25**(-1)*rgl + 4.D0*mi(46)*r25**(-1)*i1r15*rsq1l**2 - 4.D0*
     &    mi(46)*r25**(-1)*i1r15*rgl*rsq1l - 3.D0*mi(46)*r25**(-1)*
     &    i1r15**2*rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(46)*r25**(-1)*i1r15**2*
     &    rgl**2 + 4.D0*mi(46)*r25**(-1)*i1r15**3*rsq1l**3 - 12.D0*mi(
     &    46)*r25**(-1)*i1r15**3*rgl*rsq1l**2 + 12.D0*mi(46)*r25**(-1)*
     &    i1r15**3*rgl**2*rsq1l - 4.D0*mi(46)*r25**(-1)*i1r15**3*rgl**3
     &     - 6.D0*mi(46)*r25**(-1)*i1r15**4*rsq1l**3 + 18.D0*mi(46)*
     &    r25**(-1)*i1r15**4*rgl*rsq1l**2 - 18.D0*mi(46)*r25**(-1)*
     &    i1r15**4*rgl**2*rsq1l + 6.D0*mi(46)*r25**(-1)*i1r15**4*rgl**3
     &     + 4.D0*mi(46)*i1r15*i1r15r25*rsq1l**2 - 4.D0*mi(46)*i1r15*
     &    i1r15r25*rgl*rsq1l - 3.D0*mi(46)*i1r15**2*i1r15r25*rsq1l**2
     &     + 3.D0*mi(46)*i1r15**2*i1r15r25*rgl**2 + 4.D0*mi(46)*
     &    i1r15**3*i1r15r25*rsq1l**3 - 12.D0*mi(46)*i1r15**3*i1r15r25*
     &    rgl*rsq1l**2 + 12.D0*mi(46)*i1r15**3*i1r15r25*rgl**2*rsq1l - 
     &    4.D0*mi(46)*i1r15**3*i1r15r25*rgl**3 - 2.D0*mi(46)*i1r15**3*
     &    i1r15r25**2*rsq1l**3 + 6.D0*mi(46)*i1r15**3*i1r15r25**2*rgl*
     &    rsq1l**2 - 6.D0*mi(46)*i1r15**3*i1r15r25**2*rgl**2*rsq1l + 2.D
     &    0*mi(46)*i1r15**3*i1r15r25**2*rgl**3 )
      e = e  + Nc**(-1)*s125**2 * (  - 6.D0*mi(46)*i1r15**4*i1r15r25*
     &    rsq1l**3 + 18.D0*mi(46)*i1r15**4*i1r15r25*rgl*rsq1l**2 - 18.D0
     &    *mi(46)*i1r15**4*i1r15r25*rgl**2*rsq1l + 6.D0*mi(46)*i1r15**4
     &    *i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * ( 4.D0*mi(17)*r25**(-2)*i1r15 + 6.D0*mi(
     &    17)*r25**(-1)*i1r15**2 - 4.D0*mi(18)*r25**(-2)*i1r15 - 6.D0*
     &    mi(18)*r25**(-1)*i1r15**2 )
      e = e  + Nc * (  - 2.D0*r25**(-1)*i1r15 - 4.D0*mi(20)*r25**(-2)*
     &    i1r15*rsq1l + 4.D0*mi(20)*r25**(-2)*i1r15*rgl + 4.D0*mi(20)*
     &    r25**(-2)*i1r15**2*rsq1l - 4.D0*mi(20)*r25**(-2)*i1r15**2*rgl
     &     - 2.D0*mi(20)*r25**(-1)*i1r15**2 - 4.D0*mi(20)*r25**(-1)*
     &    i1r15**2*rsq1l + 4.D0*mi(20)*r25**(-1)*i1r15**2*rgl + 8.D0*
     &    mi(20)*r25**(-1)*i1r15**3*rsq1l - 8.D0*mi(20)*r25**(-1)*
     &    i1r15**3*rgl - 4.D0*mi(20)*i1r15**3*i1r15r25*rsq1l + 4.D0*mi(
     &    20)*i1r15**3*i1r15r25*rgl + 4.D0*mi(24)*r25**(-2)*i1r15*rsq1l
     &     - 4.D0*mi(24)*r25**(-2)*i1r15*rgl - 4.D0*mi(24)*r25**(-2)*
     &    i1r15**2*rsq1l + 4.D0*mi(24)*r25**(-2)*i1r15**2*rgl + 2.D0*
     &    mi(24)*r25**(-1)*i1r15**2 + 6.D0*mi(24)*r25**(-1)*i1r15**2*
     &    rsq1l - 6.D0*mi(24)*r25**(-1)*i1r15**2*rgl - 8.D0*mi(24)*
     &    r25**(-1)*i1r15**3*rsq1l + 8.D0*mi(24)*r25**(-1)*i1r15**3*rgl
     &     - 4.D0*mi(24)*i1r15**2*i1r15r25*rsq1l + 4.D0*mi(24)*i1r15**2
     &    *i1r15r25*rgl + 4.D0*mi(24)*i1r15**3*i1r15r25*rsq1l - 4.D0*
     &    mi(24)*i1r15**3*i1r15r25*rgl )
      e = e  + Nc * ( 4.D0*mi(26)*r25**(-2)*i1r15*rsq1l - 4.D0*mi(26)*
     &    r25**(-2)*i1r15*rgl + 4.D0*mi(26)*r25**(-1)*i1r15**2*rsq1l - 
     &    4.D0*mi(26)*r25**(-1)*i1r15**2*rgl + 4.D0*mi(26)*i1r15**2*
     &    i1r15r25*rsq1l - 4.D0*mi(26)*i1r15**2*i1r15r25*rgl )
      e = e  + Nc*s125 * (  - 2.D0*mi(30)*r25**(-3)*rsq1l**2 + 4.D0*mi(
     &    30)*r25**(-3)*rgl*rsq1l - 2.D0*mi(30)*r25**(-3)*rgl**2 + 4.D0
     &    *mi(30)*r25**(-3)*i1r15*rsq1l**2 - 8.D0*mi(30)*r25**(-3)*
     &    i1r15*rgl*rsq1l + 4.D0*mi(30)*r25**(-3)*i1r15*rgl**2 - 2.D0*
     &    mi(30)*r25**(-3)*i1r15**2*rsq1l**2 + 4.D0*mi(30)*r25**(-3)*
     &    i1r15**2*rgl*rsq1l - 2.D0*mi(30)*r25**(-3)*i1r15**2*rgl**2 + 
     &    mi(30)*r25**(-2)*rsq1l + mi(30)*r25**(-2)*rgl - 3.D0*mi(30)*
     &    r25**(-2)*i1r15*rsq1l - 2.D0*mi(30)*r25**(-2)*i1r15*rsq1l**2
     &     + mi(30)*r25**(-2)*i1r15*rgl + 4.D0*mi(30)*r25**(-2)*i1r15*
     &    rgl*rsq1l - 2.D0*mi(30)*r25**(-2)*i1r15*rgl**2 + 2.D0*mi(30)*
     &    r25**(-2)*i1r15**2*rsq1l + 6.D0*mi(30)*r25**(-2)*i1r15**2*
     &    rsq1l**2 - 2.D0*mi(30)*r25**(-2)*i1r15**2*rgl - 12.D0*mi(30)*
     &    r25**(-2)*i1r15**2*rgl*rsq1l + 6.D0*mi(30)*r25**(-2)*i1r15**2
     &    *rgl**2 - 4.D0*mi(30)*r25**(-2)*i1r15**3*rsq1l**2 + 8.D0*mi(
     &    30)*r25**(-2)*i1r15**3*rgl*rsq1l - 4.D0*mi(30)*r25**(-2)*
     &    i1r15**3*rgl**2 )
      e = e  + Nc*s125 * ( 3.D0*mi(30)*r25**(-1)*i1r15*rsq1l - mi(30)*
     &    r25**(-1)*i1r15*rgl - 7.D0*mi(30)*r25**(-1)*i1r15**2*rsq1l - 
     &    2.D0*mi(30)*r25**(-1)*i1r15**2*rsq1l**2 + 5.D0*mi(30)*
     &    r25**(-1)*i1r15**2*rgl + 4.D0*mi(30)*r25**(-1)*i1r15**2*rgl*
     &    rsq1l - 2.D0*mi(30)*r25**(-1)*i1r15**2*rgl**2 + 4.D0*mi(30)*
     &    r25**(-1)*i1r15**3*rsq1l + 8.D0*mi(30)*r25**(-1)*i1r15**3*
     &    rsq1l**2 - 4.D0*mi(30)*r25**(-1)*i1r15**3*rgl - 16.D0*mi(30)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l + 8.D0*mi(30)*r25**(-1)*i1r15**3
     &    *rgl**2 - 6.D0*mi(30)*r25**(-1)*i1r15**4*rsq1l**2 + 12.D0*mi(
     &    30)*r25**(-1)*i1r15**4*rgl*rsq1l - 6.D0*mi(30)*r25**(-1)*
     &    i1r15**4*rgl**2 + 2.D0*mi(30)*i1r15r25**2*rsq1l - 2.D0*mi(30)
     &    *i1r15r25**2*rgl + 3.D0*mi(30)*i1r15*i1r15r25*rsq1l - mi(30)*
     &    i1r15*i1r15r25*rgl - 4.D0*mi(30)*i1r15*i1r15r25**2*rsq1l + 4.D
     &    0*mi(30)*i1r15*i1r15r25**2*rgl - 7.D0*mi(30)*i1r15**2*
     &    i1r15r25*rsq1l - 2.D0*mi(30)*i1r15**2*i1r15r25*rsq1l**2 + 5.D0
     &    *mi(30)*i1r15**2*i1r15r25*rgl )
      e = e  + Nc*s125 * ( 4.D0*mi(30)*i1r15**2*i1r15r25*rgl*rsq1l - 2.D0
     &    *mi(30)*i1r15**2*i1r15r25*rgl**2 + 2.D0*mi(30)*i1r15**2*
     &    i1r15r25**2*rsq1l + 2.D0*mi(30)*i1r15**2*i1r15r25**2*rsq1l**2
     &     - 2.D0*mi(30)*i1r15**2*i1r15r25**2*rgl - 4.D0*mi(30)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1l + 2.D0*mi(30)*i1r15**2*
     &    i1r15r25**2*rgl**2 + 4.D0*mi(30)*i1r15**3*i1r15r25*rsq1l + 8.D
     &    0*mi(30)*i1r15**3*i1r15r25*rsq1l**2 - 4.D0*mi(30)*i1r15**3*
     &    i1r15r25*rgl - 16.D0*mi(30)*i1r15**3*i1r15r25*rgl*rsq1l + 8.D0
     &    *mi(30)*i1r15**3*i1r15r25*rgl**2 - 2.D0*mi(30)*i1r15**3*
     &    i1r15r25**2*rsq1l**2 + 4.D0*mi(30)*i1r15**3*i1r15r25**2*rgl*
     &    rsq1l - 2.D0*mi(30)*i1r15**3*i1r15r25**2*rgl**2 - 6.D0*mi(30)
     &    *i1r15**4*i1r15r25*rsq1l**2 + 12.D0*mi(30)*i1r15**4*i1r15r25*
     &    rgl*rsq1l - 6.D0*mi(30)*i1r15**4*i1r15r25*rgl**2 + 2.D0*mi(34
     &    )*r25**(-2)*i1r15*rsq1l**2 - 4.D0*mi(34)*r25**(-2)*i1r15*rgl*
     &    rsq1l + 2.D0*mi(34)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(34)*
     &    r25**(-2)*i1r15**2*rsq1l**2 )
      e = e  + Nc*s125 * ( 4.D0*mi(34)*r25**(-2)*i1r15**2*rgl*rsq1l - 2.D
     &    0*mi(34)*r25**(-2)*i1r15**2*rgl**2 - mi(34)*r25**(-1)*i1r15*
     &    rsq1l - mi(34)*r25**(-1)*i1r15*rgl + 2.D0*mi(34)*r25**(-1)*
     &    i1r15**2*rsq1l + 2.D0*mi(34)*r25**(-1)*i1r15**2*rsq1l**2 - 2.D
     &    0*mi(34)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(34)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l + 2.D0*mi(34)*r25**(-1)*i1r15**2*rgl**2 - 
     &    4.D0*mi(34)*r25**(-1)*i1r15**3*rsq1l**2 + 8.D0*mi(34)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l - 4.D0*mi(34)*r25**(-1)*i1r15**3
     &    *rgl**2 - 2.D0*mi(34)*i1r15r25**2*rsq1l + 2.D0*mi(34)*
     &    i1r15r25**2*rgl - mi(34)*i1r15*i1r15r25*rsq1l - mi(34)*i1r15*
     &    i1r15r25*rgl + 2.D0*mi(34)*i1r15*i1r15r25**2*rsq1l - 2.D0*mi(
     &    34)*i1r15*i1r15r25**2*rgl + 2.D0*mi(34)*i1r15**2*i1r15r25*
     &    rsq1l + 2.D0*mi(34)*i1r15**2*i1r15r25*rsq1l**2 - 2.D0*mi(34)*
     &    i1r15**2*i1r15r25*rgl - 4.D0*mi(34)*i1r15**2*i1r15r25*rgl*
     &    rsq1l + 2.D0*mi(34)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(34)*
     &    i1r15**2*i1r15r25**2*rsq1l**2 )
      e = e  + Nc*s125 * ( 4.D0*mi(34)*i1r15**2*i1r15r25**2*rgl*rsq1l - 
     &    2.D0*mi(34)*i1r15**2*i1r15r25**2*rgl**2 - 4.D0*mi(34)*
     &    i1r15**3*i1r15r25*rsq1l**2 + 8.D0*mi(34)*i1r15**3*i1r15r25*
     &    rgl*rsq1l - 4.D0*mi(34)*i1r15**3*i1r15r25*rgl**2 + 2.D0*mi(40
     &    )*r25**(-3)*rsq1l**2 - 4.D0*mi(40)*r25**(-3)*rgl*rsq1l + 2.D0
     &    *mi(40)*r25**(-3)*rgl**2 - 2.D0*mi(40)*r25**(-3)*i1r15*
     &    rsq1l**2 + 4.D0*mi(40)*r25**(-3)*i1r15*rgl*rsq1l - 2.D0*mi(40
     &    )*r25**(-3)*i1r15*rgl**2 - mi(40)*r25**(-2)*rsq1l - mi(40)*
     &    r25**(-2)*rgl + 2.D0*mi(40)*r25**(-2)*i1r15*rsq1l + 2.D0*mi(
     &    40)*r25**(-2)*i1r15*rsq1l**2 - 2.D0*mi(40)*r25**(-2)*i1r15*
     &    rgl - 4.D0*mi(40)*r25**(-2)*i1r15*rgl*rsq1l + 2.D0*mi(40)*
     &    r25**(-2)*i1r15*rgl**2 - 4.D0*mi(40)*r25**(-2)*i1r15**2*
     &    rsq1l**2 + 8.D0*mi(40)*r25**(-2)*i1r15**2*rgl*rsq1l - 4.D0*
     &    mi(40)*r25**(-2)*i1r15**2*rgl**2 - 3.D0*mi(40)*r25**(-1)*
     &    i1r15*rsq1l + mi(40)*r25**(-1)*i1r15*rgl + 4.D0*mi(40)*
     &    r25**(-1)*i1r15**2*rsq1l )
      e = e  + Nc*s125 * ( 2.D0*mi(40)*r25**(-1)*i1r15**2*rsq1l**2 - 4.D0
     &    *mi(40)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(40)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l + 2.D0*mi(40)*r25**(-1)*i1r15**2*rgl**2 - 
     &    6.D0*mi(40)*r25**(-1)*i1r15**3*rsq1l**2 + 12.D0*mi(40)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l - 6.D0*mi(40)*r25**(-1)*i1r15**3
     &    *rgl**2 + 2.D0*mi(40)*i1r15r25**2*rsq1l - 2.D0*mi(40)*
     &    i1r15r25**2*rgl + 3.D0*mi(40)*i1r15*i1r15r25*rsq1l - mi(40)*
     &    i1r15*i1r15r25*rgl - 2.D0*mi(40)*i1r15*i1r15r25**2*rsq1l + 2.D
     &    0*mi(40)*i1r15*i1r15r25**2*rgl - 4.D0*mi(40)*i1r15**2*
     &    i1r15r25*rsq1l - 2.D0*mi(40)*i1r15**2*i1r15r25*rsq1l**2 + 4.D0
     &    *mi(40)*i1r15**2*i1r15r25*rgl + 4.D0*mi(40)*i1r15**2*i1r15r25
     &    *rgl*rsq1l - 2.D0*mi(40)*i1r15**2*i1r15r25*rgl**2 + 2.D0*mi(
     &    40)*i1r15**2*i1r15r25**2*rsq1l**2 - 4.D0*mi(40)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l + 2.D0*mi(40)*i1r15**2*i1r15r25**2*
     &    rgl**2 + 6.D0*mi(40)*i1r15**3*i1r15r25*rsq1l**2 - 12.D0*mi(40
     &    )*i1r15**3*i1r15r25*rgl*rsq1l )
      e = e  + Nc*s125 * ( 6.D0*mi(40)*i1r15**3*i1r15r25*rgl**2 - 2.D0*
     &    mi(42)*r25**(-3)*i1r15*rsq1l**2 + 4.D0*mi(42)*r25**(-3)*i1r15
     &    *rgl*rsq1l - 2.D0*mi(42)*r25**(-3)*i1r15*rgl**2 + 2.D0*mi(42)
     &    *r25**(-3)*i1r15**2*rsq1l**2 - 4.D0*mi(42)*r25**(-3)*i1r15**2
     &    *rgl*rsq1l + 2.D0*mi(42)*r25**(-3)*i1r15**2*rgl**2 + mi(42)*
     &    r25**(-2)*i1r15*rsq1l + 2.D0*mi(42)*r25**(-2)*i1r15*rsq1l**2
     &     + mi(42)*r25**(-2)*i1r15*rgl - 4.D0*mi(42)*r25**(-2)*i1r15*
     &    rgl*rsq1l + 2.D0*mi(42)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(42)*
     &    r25**(-2)*i1r15**2*rsq1l - 4.D0*mi(42)*r25**(-2)*i1r15**2*
     &    rsq1l**2 + 2.D0*mi(42)*r25**(-2)*i1r15**2*rgl + 8.D0*mi(42)*
     &    r25**(-2)*i1r15**2*rgl*rsq1l - 4.D0*mi(42)*r25**(-2)*i1r15**2
     &    *rgl**2 + 4.D0*mi(42)*r25**(-2)*i1r15**3*rsq1l**2 - 8.D0*mi(
     &    42)*r25**(-2)*i1r15**3*rgl*rsq1l + 4.D0*mi(42)*r25**(-2)*
     &    i1r15**3*rgl**2 - mi(42)*r25**(-1)*i1r15*rsq1l - mi(42)*
     &    r25**(-1)*i1r15*rgl + 5.D0*mi(42)*r25**(-1)*i1r15**2*rsq1l + 
     &    2.D0*mi(42)*r25**(-1)*i1r15**2*rsq1l**2 )
      e = e  + Nc*s125 * (  - 3.D0*mi(42)*r25**(-1)*i1r15**2*rgl - 4.D0*
     &    mi(42)*r25**(-1)*i1r15**2*rgl*rsq1l + 2.D0*mi(42)*r25**(-1)*
     &    i1r15**2*rgl**2 - 4.D0*mi(42)*r25**(-1)*i1r15**3*rsq1l - 6.D0
     &    *mi(42)*r25**(-1)*i1r15**3*rsq1l**2 + 4.D0*mi(42)*r25**(-1)*
     &    i1r15**3*rgl + 12.D0*mi(42)*r25**(-1)*i1r15**3*rgl*rsq1l - 6.D
     &    0*mi(42)*r25**(-1)*i1r15**3*rgl**2 + 6.D0*mi(42)*r25**(-1)*
     &    i1r15**4*rsq1l**2 - 12.D0*mi(42)*r25**(-1)*i1r15**4*rgl*rsq1l
     &     + 6.D0*mi(42)*r25**(-1)*i1r15**4*rgl**2 - 2.D0*mi(42)*
     &    i1r15r25**2*rsq1l + 2.D0*mi(42)*i1r15r25**2*rgl - mi(42)*
     &    i1r15*i1r15r25*rsq1l - mi(42)*i1r15*i1r15r25*rgl + 4.D0*mi(42
     &    )*i1r15*i1r15r25**2*rsq1l - 4.D0*mi(42)*i1r15*i1r15r25**2*rgl
     &     + 5.D0*mi(42)*i1r15**2*i1r15r25*rsq1l + 2.D0*mi(42)*i1r15**2
     &    *i1r15r25*rsq1l**2 - 3.D0*mi(42)*i1r15**2*i1r15r25*rgl - 4.D0
     &    *mi(42)*i1r15**2*i1r15r25*rgl*rsq1l + 2.D0*mi(42)*i1r15**2*
     &    i1r15r25*rgl**2 - 2.D0*mi(42)*i1r15**2*i1r15r25**2*rsq1l - 2.D
     &    0*mi(42)*i1r15**2*i1r15r25**2*rsq1l**2 )
      e = e  + Nc*s125 * ( 2.D0*mi(42)*i1r15**2*i1r15r25**2*rgl + 4.D0*
     &    mi(42)*i1r15**2*i1r15r25**2*rgl*rsq1l - 2.D0*mi(42)*i1r15**2*
     &    i1r15r25**2*rgl**2 - 4.D0*mi(42)*i1r15**3*i1r15r25*rsq1l - 6.D
     &    0*mi(42)*i1r15**3*i1r15r25*rsq1l**2 + 4.D0*mi(42)*i1r15**3*
     &    i1r15r25*rgl + 12.D0*mi(42)*i1r15**3*i1r15r25*rgl*rsq1l - 6.D0
     &    *mi(42)*i1r15**3*i1r15r25*rgl**2 + 2.D0*mi(42)*i1r15**3*
     &    i1r15r25**2*rsq1l**2 - 4.D0*mi(42)*i1r15**3*i1r15r25**2*rgl*
     &    rsq1l + 2.D0*mi(42)*i1r15**3*i1r15r25**2*rgl**2 + 6.D0*mi(42)
     &    *i1r15**4*i1r15r25*rsq1l**2 - 12.D0*mi(42)*i1r15**4*i1r15r25*
     &    rgl*rsq1l + 6.D0*mi(42)*i1r15**4*i1r15r25*rgl**2 )
      e = e  + Nc*s125**2 * (  - 2.D0*mi(48)*r25**(-3)*rsq1l**3 + 6.D0*
     &    mi(48)*r25**(-3)*rgl*rsq1l**2 - 6.D0*mi(48)*r25**(-3)*rgl**2*
     &    rsq1l + 2.D0*mi(48)*r25**(-3)*rgl**3 + 4.D0*mi(48)*r25**(-3)*
     &    i1r15*rsq1l**3 - 12.D0*mi(48)*r25**(-3)*i1r15*rgl*rsq1l**2 + 
     &    12.D0*mi(48)*r25**(-3)*i1r15*rgl**2*rsq1l - 4.D0*mi(48)*
     &    r25**(-3)*i1r15*rgl**3 - 2.D0*mi(48)*r25**(-3)*i1r15**2*
     &    rsq1l**3 + 6.D0*mi(48)*r25**(-3)*i1r15**2*rgl*rsq1l**2 - 6.D0
     &    *mi(48)*r25**(-3)*i1r15**2*rgl**2*rsq1l + 2.D0*mi(48)*
     &    r25**(-3)*i1r15**2*rgl**3 + 3.D0*mi(48)*r25**(-2)*rsq1l**2 - 
     &    3.D0*mi(48)*r25**(-2)*rgl**2 - 7.D0*mi(48)*r25**(-2)*i1r15*
     &    rsq1l**2 + 8.D0*mi(48)*r25**(-2)*i1r15*rgl*rsq1l - mi(48)*
     &    r25**(-2)*i1r15*rgl**2 + 4.D0*mi(48)*r25**(-2)*i1r15**2*
     &    rsq1l**2 + 4.D0*mi(48)*r25**(-2)*i1r15**2*rsq1l**3 - 8.D0*mi(
     &    48)*r25**(-2)*i1r15**2*rgl*rsq1l - 12.D0*mi(48)*r25**(-2)*
     &    i1r15**2*rgl*rsq1l**2 + 4.D0*mi(48)*r25**(-2)*i1r15**2*rgl**2
     &     + 12.D0*mi(48)*r25**(-2)*i1r15**2*rgl**2*rsq1l )
      e = e  + Nc*s125**2 * (  - 4.D0*mi(48)*r25**(-2)*i1r15**2*rgl**3
     &     - 4.D0*mi(48)*r25**(-2)*i1r15**3*rsq1l**3 + 12.D0*mi(48)*
     &    r25**(-2)*i1r15**3*rgl*rsq1l**2 - 12.D0*mi(48)*r25**(-2)*
     &    i1r15**3*rgl**2*rsq1l + 4.D0*mi(48)*r25**(-2)*i1r15**3*rgl**3
     &     - mi(48)*r25**(-1)*rsq1l + mi(48)*r25**(-1)*rgl + 3.D0*mi(48
     &    )*r25**(-1)*i1r15*rsq1l + 4.D0*mi(48)*r25**(-1)*i1r15*
     &    rsq1l**2 - mi(48)*r25**(-1)*i1r15*rgl - 4.D0*mi(48)*r25**(-1)
     &    *i1r15*rgl*rsq1l - 2.D0*mi(48)*r25**(-1)*i1r15**2*rsq1l - 11.D
     &    0*mi(48)*r25**(-1)*i1r15**2*rsq1l**2 + 2.D0*mi(48)*r25**(-1)*
     &    i1r15**2*rgl + 16.D0*mi(48)*r25**(-1)*i1r15**2*rgl*rsq1l - 5.D
     &    0*mi(48)*r25**(-1)*i1r15**2*rgl**2 + 8.D0*mi(48)*r25**(-1)*
     &    i1r15**3*rsq1l**2 + 4.D0*mi(48)*r25**(-1)*i1r15**3*rsq1l**3
     &     - 16.D0*mi(48)*r25**(-1)*i1r15**3*rgl*rsq1l - 12.D0*mi(48)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l**2 + 8.D0*mi(48)*r25**(-1)*
     &    i1r15**3*rgl**2 + 12.D0*mi(48)*r25**(-1)*i1r15**3*rgl**2*
     &    rsq1l )
      e = e  + Nc*s125**2 * (  - 4.D0*mi(48)*r25**(-1)*i1r15**3*rgl**3
     &     - 6.D0*mi(48)*r25**(-1)*i1r15**4*rsq1l**3 + 18.D0*mi(48)*
     &    r25**(-1)*i1r15**4*rgl*rsq1l**2 - 18.D0*mi(48)*r25**(-1)*
     &    i1r15**4*rgl**2*rsq1l + 6.D0*mi(48)*r25**(-1)*i1r15**4*rgl**3
     &     - mi(48)*i1r15r25*rsq1l - mi(48)*i1r15r25*rgl + 2.D0*mi(48)*
     &    i1r15r25**2*rsq1l - 2.D0*mi(48)*i1r15r25**2*rgl + 3.D0*mi(48)
     &    *i1r15*i1r15r25*rsq1l + 4.D0*mi(48)*i1r15*i1r15r25*rsq1l**2
     &     - mi(48)*i1r15*i1r15r25*rgl - 4.D0*mi(48)*i1r15*i1r15r25*rgl
     &    *rsq1l - 2.D0*mi(48)*i1r15*i1r15r25**2*rsq1l - 4.D0*mi(48)*
     &    i1r15*i1r15r25**2*rsq1l**2 + 2.D0*mi(48)*i1r15*i1r15r25**2*
     &    rgl + 8.D0*mi(48)*i1r15*i1r15r25**2*rgl*rsq1l - 4.D0*mi(48)*
     &    i1r15*i1r15r25**2*rgl**2 - 2.D0*mi(48)*i1r15**2*i1r15r25*
     &    rsq1l - 11.D0*mi(48)*i1r15**2*i1r15r25*rsq1l**2 + 2.D0*mi(48)
     &    *i1r15**2*i1r15r25*rgl + 16.D0*mi(48)*i1r15**2*i1r15r25*rgl*
     &    rsq1l - 5.D0*mi(48)*i1r15**2*i1r15r25*rgl**2 + 4.D0*mi(48)*
     &    i1r15**2*i1r15r25**2*rsq1l**2 )
      e = e  + Nc*s125**2 * (  - 8.D0*mi(48)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1l + 4.D0*mi(48)*i1r15**2*i1r15r25**2*rgl**2 + 8.D0*mi(48)
     &    *i1r15**3*i1r15r25*rsq1l**2 + 4.D0*mi(48)*i1r15**3*i1r15r25*
     &    rsq1l**3 - 16.D0*mi(48)*i1r15**3*i1r15r25*rgl*rsq1l - 12.D0*
     &    mi(48)*i1r15**3*i1r15r25*rgl*rsq1l**2 + 8.D0*mi(48)*i1r15**3*
     &    i1r15r25*rgl**2 + 12.D0*mi(48)*i1r15**3*i1r15r25*rgl**2*rsq1l
     &     - 4.D0*mi(48)*i1r15**3*i1r15r25*rgl**3 - 2.D0*mi(48)*
     &    i1r15**3*i1r15r25**2*rsq1l**3 + 6.D0*mi(48)*i1r15**3*
     &    i1r15r25**2*rgl*rsq1l**2 - 6.D0*mi(48)*i1r15**3*i1r15r25**2*
     &    rgl**2*rsq1l + 2.D0*mi(48)*i1r15**3*i1r15r25**2*rgl**3 - 6.D0
     &    *mi(48)*i1r15**4*i1r15r25*rsq1l**3 + 18.D0*mi(48)*i1r15**4*
     &    i1r15r25*rgl*rsq1l**2 - 18.D0*mi(48)*i1r15**4*i1r15r25*rgl**2
     &    *rsq1l + 6.D0*mi(48)*i1r15**4*i1r15r25*rgl**3 + 2.D0*mi(48)*
     &    r15*i1r15r25**2*rsq1l - 2.D0*mi(48)*r15*i1r15r25**2*rgl )

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

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(19)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1r**(-1) + mi(19)*r25**(-2)*rsq1r**(-1) - 
     &    2.D0*mi(19)*r25**(-2)*i1r15*rsq1r**(-1) + 2.D0*mi(19)*
     &    r25**(-2)*i1r15*rgl*rsq1r**(-1) + mi(19)*r25**(-2)*i1r15**2*
     &    rsq1r**(-1) - 2.D0*mi(19)*r25**(-2)*i1r15**2*rgl*rsq1r**(-1)
     &     - 2.D0*mi(19)*r25**(-1)*i1r15**2*rsq1r**(-1) + 2.D0*mi(19)*
     &    r25**(-1)*i1r15**3*rsq1r**(-1) - 4.D0*mi(19)*r25**(-1)*
     &    i1r15**3*rgl*rsq1r**(-1) - 2.D0*mi(19)*i1r15*i1r15r25**2*rgl*
     &    rsq1r**(-1) - 2.D0*mi(19)*i1r15**2*i1r15r25*rsq1r**(-1) + mi(
     &    19)*i1r15**2*i1r15r25**2*rsq1r**(-1) - 2.D0*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r**(-1) + 2.D0*mi(19)*i1r15**3*i1r15r25*
     &    rsq1r**(-1) - 4.D0*mi(19)*i1r15**3*i1r15r25*rgl*rsq1r**(-1)
     &     + 2.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl - 4.D0
     &    /(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl**2*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*r25**(-2) + 4.D0/(rsq1r
     &     - rgl)*mi(19)*r25**(-2)*rgl*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15 - 4.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*
     &    rgl*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*
     &    rgl + 4.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**2*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2 + 2.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl - 4.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-2)*i1r15**2*rgl**2*rsq1r**(-1) + 2.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2 - 4.D0/(rsq1r - rgl)*
     &    mi(19)*r25**(-1)*i1r15**2*rgl*rsq1r**(-1) - 2.D0/(rsq1r - rgl
     &    )*mi(19)*r25**(-1)*i1r15**3 + 4.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**3*rgl - 8.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**3*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*i1r15
     &    *i1r15r25**2*rgl - 4.D0/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25 - 4.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25*rgl*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25**2 + 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl - 4.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**3*i1r15r25 + 4.D0/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25*rgl - 8.D0/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25**2*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl**3*rsq1r**(-1) - 3.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl + 3.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl**2*rsq1r**(-1) + 2.
     &    D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl - 2.
     &    D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**2*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*i1r15*rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*i1r15**2*rgl - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15**2*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl**2 - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl**3*
     &    rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl
     &    )/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl - 2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2*
     &    rsq1r**(-1) + 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**3*rgl**2 - 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-1)*i1r15**3*rgl**3*rsq1r**(-1) + 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl**2 - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl**3*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**2*i1r15r25*rgl - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2*rsq1r**(-1) + 1/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl - 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**2
     &    *rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25**2*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r - rgl
     &    )*mi(19)*i1r15**2*i1r15r25**2*rgl**3*rsq1r**(-1) + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl - 2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1r**(-1) + 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**3*i1r15r25*rgl**2 - 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**3*i1r15r25*rgl**3*rsq1r**(-1) )

      gcoeffarr(aa22,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa22,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  + Nc**(-1)*s125**(-1) * (  - 4.D0*mi(17)*r25**(-2)*i1r15 - 6.
     &    D0*mi(17)*r25**(-1)*i1r15**2 + 4.D0*mi(19)*r25**(-3)*
     &    rsq1r**(-1) - 4.D0*mi(19)*r25**(-3)*rgl*rsq1r**(-1) - 5.D0*
     &    mi(19)*r25**(-3)*i1r15*rsq1r**(-1) + 8.D0*mi(19)*r25**(-3)*
     &    i1r15*rgl*rsq1r**(-1) + mi(19)*r25**(-3)*i1r15**2*rsq1r**(-1)
     &     - 4.D0*mi(19)*r25**(-3)*i1r15**2*rgl*rsq1r**(-1) + mi(19)*
     &    r25**(-2)*rsq1r**(-1) + 3.D0*mi(19)*r25**(-2)*i1r15*
     &    rsq1r**(-1) + 4.D0*mi(19)*r25**(-2)*i1r15 - 6.D0*mi(19)*
     &    r25**(-2)*i1r15**2*rsq1r**(-1) + 8.D0*mi(19)*r25**(-2)*
     &    i1r15**2*rgl*rsq1r**(-1) + 2.D0*mi(19)*r25**(-2)*i1r15**3*
     &    rsq1r**(-1) - 8.D0*mi(19)*r25**(-2)*i1r15**3*rgl*rsq1r**(-1)
     &     + 3.D0*mi(19)*r25**(-1)*i1r15**2*rsq1r**(-1) + 6.D0*mi(19)*
     &    r25**(-1)*i1r15**2 - 7.D0*mi(19)*r25**(-1)*i1r15**3*
     &    rsq1r**(-1) + 8.D0*mi(19)*r25**(-1)*i1r15**3*rgl*rsq1r**(-1)
     &     + 3.D0*mi(19)*r25**(-1)*i1r15**4*rsq1r**(-1) - 12.D0*mi(19)*
     &    r25**(-1)*i1r15**4*rgl*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 3.D0*mi(19)*i1r15**2*i1r15r25*
     &    rsq1r**(-1) - mi(19)*i1r15**2*i1r15r25**2*rsq1r**(-1) - 7.D0*
     &    mi(19)*i1r15**3*i1r15r25*rsq1r**(-1) + 8.D0*mi(19)*i1r15**3*
     &    i1r15r25*rgl*rsq1r**(-1) + mi(19)*i1r15**3*i1r15r25**2*
     &    rsq1r**(-1) - 4.D0*mi(19)*i1r15**3*i1r15r25**2*rgl*
     &    rsq1r**(-1) + 3.D0*mi(19)*i1r15**4*i1r15r25*rsq1r**(-1) - 12.D
     &    0*mi(19)*i1r15**4*i1r15r25*rgl*rsq1r**(-1) + 3.D0*mi(19)*r15*
     &    r25**(-3)*rsq1r**(-1) - 4.D0/(rsq1r - rgl)*mi(19)*r25**(-3)
     &     + 6.D0/(rsq1r - rgl)*mi(19)*r25**(-3)*rgl*rsq1r**(-1) + 4.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-3)*rgl - 6.D0/(rsq1r - rgl)*mi(
     &    19)*r25**(-3)*rgl**2*rsq1r**(-1) + 5.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-3)*i1r15 - 6.D0/(rsq1r - rgl)*mi(19)*r25**(-3)*i1r15*
     &    rgl*rsq1r**(-1) - 8.D0/(rsq1r - rgl)*mi(19)*r25**(-3)*i1r15*
     &    rgl + 12.D0/(rsq1r - rgl)*mi(19)*r25**(-3)*i1r15*rgl**2*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*r25**(-3)*i1r15**2 + 4.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-3)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 6.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-3)*i1r15**2*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19
     &    )*r25**(-2) + 1/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl*
     &    rsq1r**(-1) - 3.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15 + 5.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl*rsq1r**(-1) + 6.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2 - 6.D0/(rsq1r - rgl)
     &    *mi(19)*r25**(-2)*i1r15**2*rgl*rsq1r**(-1) - 8.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-2)*i1r15**2*rgl + 12.D0/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*i1r15**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl
     &    )*mi(19)*r25**(-2)*i1r15**3 + 8.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**3*rgl - 12.D0/(rsq1r - rgl)*mi(19)*r25**(-2)
     &    *i1r15**3*rgl**2*rsq1r**(-1) - 3.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2 + 5.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r**(-1) + 7.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**3 - 6.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**3*rgl*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 8.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**3*rgl + 12.D0/(rsq1r - rgl)*mi(19)*r25**(-1)
     &    *i1r15**3*rgl**2*rsq1r**(-1) - 3.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**4 + 12.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**4*rgl - 18.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**4*
     &    rgl**2*rsq1r**(-1) - 3.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25 + 5.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl*
     &    rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2 + 7.
     &    D0/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25 - 6.D0/(rsq1r - rgl
     &    )*mi(19)*i1r15**3*i1r15r25*rgl*rsq1r**(-1) - 8.D0/(rsq1r - 
     &    rgl)*mi(19)*i1r15**3*i1r15r25*rgl + 12.D0/(rsq1r - rgl)*mi(19
     &    )*i1r15**3*i1r15r25*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(
     &    19)*i1r15**3*i1r15r25**2 + 4.D0/(rsq1r - rgl)*mi(19)*i1r15**3
     &    *i1r15r25**2*rgl - 6.D0/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) - 3.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**4*i1r15r25 )
      e = e  + Nc**(-1)*s125**(-1) * ( 12.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**4*i1r15r25*rgl - 18.D0/(rsq1r - rgl)*mi(19)*i1r15**4*
     &    i1r15r25*rgl**2*rsq1r**(-1) - 3.D0/(rsq1r - rgl)*mi(19)*r15*
     &    r25**(-3) + 6.D0/(rsq1r - rgl)*mi(19)*r15*r25**(-3)*rgl*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-3)*rgl + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-3)*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-3)*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-3)*rgl**3*rsq1r**(-1) + 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-3)*i1r15*rgl - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-3)*i1r15*rgl**2*rsq1r**(-1) - 4.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-3)*i1r15*rgl**2 + 
     &    4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-3)*i1r15*
     &    rgl**3*rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-3)*i1r15**2*rgl - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)
     &    *r25**(-3)*i1r15**2*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-3)*i1r15**2*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r25**(-3)*i1r15**2*rgl**3*rsq1r**(-1) - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl + 2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**2*
     &    rsq1r**(-1) - 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2*rgl**2 + 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15**2*rgl**3*rsq1r**(-1) + 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**3*rgl - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**3*rgl**2*
     &    rsq1r**(-1) + 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**3*rgl**2 - 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15**3*rgl**3*rsq1r**(-1) - 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-1)*i1r15**3*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)
     &    *mi(19)*r25**(-1)*i1r15**3*rgl**2*rsq1r**(-1) - 4.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2 + 4.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**3
     &    *rsq1r**(-1) + 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**4*rgl - 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-1)*i1r15**4*rgl**2*rsq1r**(-1) + 6.D0/(rsq1r - rgl
     &    )/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**4*rgl**2 - 6.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**4*rgl**3*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25*rgl + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*i1r15**2*i1r15r25*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl + 1/(rsq1r - rgl
     &    )/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**3*i1r15r25*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**3*i1r15r25*rgl**2*rsq1r**(-1) - 4.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**2 + 4.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**3*
     &    rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25**2*rgl - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**3*i1r15r25**2*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25**2*rgl**2 - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25**2*rgl**3
     &    *rsq1r**(-1) + 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**4*i1r15r25*rgl - 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*i1r15**4*i1r15r25*rgl**2*rsq1r**(-1) + 6.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*i1r15**4*i1r15r25*rgl**2 - 6.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*i1r15**4*i1r15r25*rgl**3*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 3.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15*r25**(-3)*rgl + 3.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15*r25**(-3)*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1) * ( 2.D0*r25**(-1)*i1r15 + 4.D0*mi(21)*r25**(-2)
     &    *i1r15 + 4.D0*mi(21)*r25**(-2)*i1r15*rsq1r - 4.D0*mi(21)*
     &    r25**(-2)*i1r15*rgl - 4.D0*mi(21)*r25**(-2)*i1r15**2*rsq1r + 
     &    4.D0*mi(21)*r25**(-2)*i1r15**2*rgl + 2.D0*mi(21)*r25**(-1)*
     &    i1r15**2 + 4.D0*mi(21)*r25**(-1)*i1r15**2*rsq1r - 4.D0*mi(21)
     &    *r25**(-1)*i1r15**2*rgl - 8.D0*mi(21)*r25**(-1)*i1r15**3*
     &    rsq1r + 8.D0*mi(21)*r25**(-1)*i1r15**3*rgl + 4.D0*mi(21)*
     &    i1r15**3*i1r15r25*rsq1r - 4.D0*mi(21)*i1r15**3*i1r15r25*rgl
     &     - 4.D0*mi(23)*r25**(-2) + 4.D0*mi(25)*r25**(-2) - 4.D0*mi(25
     &    )*r25**(-2)*i1r15 - 4.D0*mi(25)*r25**(-2)*i1r15*rsq1r + 4.D0*
     &    mi(25)*r25**(-2)*i1r15*rgl + 4.D0*mi(25)*r25**(-2)*i1r15**2*
     &    rsq1r - 4.D0*mi(25)*r25**(-2)*i1r15**2*rgl - 2.D0*mi(25)*
     &    r25**(-1)*i1r15**2 - 6.D0*mi(25)*r25**(-1)*i1r15**2*rsq1r + 6.
     &    D0*mi(25)*r25**(-1)*i1r15**2*rgl + 8.D0*mi(25)*r25**(-1)*
     &    i1r15**3*rsq1r - 8.D0*mi(25)*r25**(-1)*i1r15**3*rgl + 4.D0*
     &    mi(25)*i1r15**2*i1r15r25*rsq1r )
      e = e  + Nc**(-1) * (  - 4.D0*mi(25)*i1r15**2*i1r15r25*rgl - 4.D0*
     &    mi(25)*i1r15**3*i1r15r25*rsq1r + 4.D0*mi(25)*i1r15**3*
     &    i1r15r25*rgl - 4.D0*mi(27)*r25**(-2)*i1r15*rsq1r + 4.D0*mi(27
     &    )*r25**(-2)*i1r15*rgl - 4.D0*mi(27)*r25**(-1)*i1r15**2*rsq1r
     &     + 4.D0*mi(27)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(27)*i1r15**2*
     &    i1r15r25*rsq1r + 4.D0*mi(27)*i1r15**2*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125 * (  - mi(29)*r25**(-2) + 2.D0*mi(29)*
     &    r25**(-2)*rsq1r - 2.D0*mi(29)*r25**(-2)*rgl + mi(29)*
     &    r25**(-1) - 2.D0*mi(29)*r15*r25**(-3) + 4.D0*mi(29)*r15*
     &    r25**(-3)*rsq1r - 4.D0*mi(29)*r15*r25**(-3)*rgl + 3.D0*mi(29)
     &    *r15*r25**(-2) + 2.D0*mi(29)*r15**2*r25**(-3) - 4.D0*mi(33)*
     &    r25**(-3)*rsq1r - 2.D0*mi(33)*r25**(-3)*rsq1r**2 + 4.D0*mi(33
     &    )*r25**(-3)*rgl + 4.D0*mi(33)*r25**(-3)*rgl*rsq1r - 2.D0*mi(
     &    33)*r25**(-3)*rgl**2 + 4.D0*mi(33)*r25**(-3)*i1r15*rsq1r + 4.D
     &    0*mi(33)*r25**(-3)*i1r15*rsq1r**2 - 4.D0*mi(33)*r25**(-3)*
     &    i1r15*rgl - 8.D0*mi(33)*r25**(-3)*i1r15*rgl*rsq1r + 4.D0*mi(
     &    33)*r25**(-3)*i1r15*rgl**2 - 2.D0*mi(33)*r25**(-3)*i1r15**2*
     &    rsq1r**2 + 4.D0*mi(33)*r25**(-3)*i1r15**2*rgl*rsq1r - 2.D0*
     &    mi(33)*r25**(-3)*i1r15**2*rgl**2 + 3.D0*mi(33)*r25**(-2)*
     &    rsq1r - mi(33)*r25**(-2)*rgl - 7.D0*mi(33)*r25**(-2)*i1r15*
     &    rsq1r - 2.D0*mi(33)*r25**(-2)*i1r15*rsq1r**2 + 5.D0*mi(33)*
     &    r25**(-2)*i1r15*rgl )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(33)*r25**(-2)*i1r15*rgl*rsq1r
     &     - 2.D0*mi(33)*r25**(-2)*i1r15*rgl**2 + 4.D0*mi(33)*r25**(-2)
     &    *i1r15**2*rsq1r + 6.D0*mi(33)*r25**(-2)*i1r15**2*rsq1r**2 - 4.
     &    D0*mi(33)*r25**(-2)*i1r15**2*rgl - 12.D0*mi(33)*r25**(-2)*
     &    i1r15**2*rgl*rsq1r + 6.D0*mi(33)*r25**(-2)*i1r15**2*rgl**2 - 
     &    4.D0*mi(33)*r25**(-2)*i1r15**3*rsq1r**2 + 8.D0*mi(33)*
     &    r25**(-2)*i1r15**3*rgl*rsq1r - 4.D0*mi(33)*r25**(-2)*i1r15**3
     &    *rgl**2 + 3.D0*mi(33)*r25**(-1)*i1r15*rsq1r - mi(33)*
     &    r25**(-1)*i1r15*rgl - 7.D0*mi(33)*r25**(-1)*i1r15**2*rsq1r - 
     &    2.D0*mi(33)*r25**(-1)*i1r15**2*rsq1r**2 + 5.D0*mi(33)*
     &    r25**(-1)*i1r15**2*rgl + 4.D0*mi(33)*r25**(-1)*i1r15**2*rgl*
     &    rsq1r - 2.D0*mi(33)*r25**(-1)*i1r15**2*rgl**2 + 4.D0*mi(33)*
     &    r25**(-1)*i1r15**3*rsq1r + 8.D0*mi(33)*r25**(-1)*i1r15**3*
     &    rsq1r**2 - 4.D0*mi(33)*r25**(-1)*i1r15**3*rgl - 16.D0*mi(33)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r + 8.D0*mi(33)*r25**(-1)*i1r15**3
     &    *rgl**2 )
      e = e  + Nc**(-1)*s125 * (  - 6.D0*mi(33)*r25**(-1)*i1r15**4*
     &    rsq1r**2 + 12.D0*mi(33)*r25**(-1)*i1r15**4*rgl*rsq1r - 6.D0*
     &    mi(33)*r25**(-1)*i1r15**4*rgl**2 + 3.D0*mi(33)*i1r15*i1r15r25
     &    *rsq1r - mi(33)*i1r15*i1r15r25*rgl - 7.D0*mi(33)*i1r15**2*
     &    i1r15r25*rsq1r - 2.D0*mi(33)*i1r15**2*i1r15r25*rsq1r**2 + 5.D0
     &    *mi(33)*i1r15**2*i1r15r25*rgl + 4.D0*mi(33)*i1r15**2*i1r15r25
     &    *rgl*rsq1r - 2.D0*mi(33)*i1r15**2*i1r15r25*rgl**2 + 2.D0*mi(
     &    33)*i1r15**2*i1r15r25**2*rsq1r**2 - 4.D0*mi(33)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r + 2.D0*mi(33)*i1r15**2*i1r15r25**2*
     &    rgl**2 + 4.D0*mi(33)*i1r15**3*i1r15r25*rsq1r + 8.D0*mi(33)*
     &    i1r15**3*i1r15r25*rsq1r**2 - 4.D0*mi(33)*i1r15**3*i1r15r25*
     &    rgl - 16.D0*mi(33)*i1r15**3*i1r15r25*rgl*rsq1r + 8.D0*mi(33)*
     &    i1r15**3*i1r15r25*rgl**2 - 2.D0*mi(33)*i1r15**3*i1r15r25**2*
     &    rsq1r**2 + 4.D0*mi(33)*i1r15**3*i1r15r25**2*rgl*rsq1r - 2.D0*
     &    mi(33)*i1r15**3*i1r15r25**2*rgl**2 - 6.D0*mi(33)*i1r15**4*
     &    i1r15r25*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * ( 12.D0*mi(33)*i1r15**4*i1r15r25*rgl*
     &    rsq1r - 6.D0*mi(33)*i1r15**4*i1r15r25*rgl**2 - 4.D0*mi(33)*
     &    r15*r25**(-3)*rsq1r + 4.D0*mi(33)*r15*r25**(-3)*rgl - mi(33)*
     &    r15*r25**(-2) - 2.D0*mi(33)*r15**2*r25**(-3) + 2.D0*mi(37)*
     &    r25**(-2)*i1r15*rsq1r**2 - 4.D0*mi(37)*r25**(-2)*i1r15*rgl*
     &    rsq1r + 2.D0*mi(37)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(37)*
     &    r25**(-2)*i1r15**2*rsq1r**2 + 4.D0*mi(37)*r25**(-2)*i1r15**2*
     &    rgl*rsq1r - 2.D0*mi(37)*r25**(-2)*i1r15**2*rgl**2 - mi(37)*
     &    r25**(-1)*i1r15*rsq1r - mi(37)*r25**(-1)*i1r15*rgl + 2.D0*mi(
     &    37)*r25**(-1)*i1r15**2*rsq1r**2 - 4.D0*mi(37)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r + 2.D0*mi(37)*r25**(-1)*i1r15**2*rgl**2 - 
     &    4.D0*mi(37)*r25**(-1)*i1r15**3*rsq1r**2 + 8.D0*mi(37)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r - 4.D0*mi(37)*r25**(-1)*i1r15**3
     &    *rgl**2 - mi(37)*i1r15*i1r15r25*rsq1r - mi(37)*i1r15*i1r15r25
     &    *rgl + 2.D0*mi(37)*i1r15**2*i1r15r25*rsq1r**2 - 4.D0*mi(37)*
     &    i1r15**2*i1r15r25*rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(37)*i1r15**2*i1r15r25*rgl**2 - 
     &    2.D0*mi(37)*i1r15**2*i1r15r25**2*rsq1r**2 + 4.D0*mi(37)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1r - 2.D0*mi(37)*i1r15**2*
     &    i1r15r25**2*rgl**2 - 4.D0*mi(37)*i1r15**3*i1r15r25*rsq1r**2
     &     + 8.D0*mi(37)*i1r15**3*i1r15r25*rgl*rsq1r - 4.D0*mi(37)*
     &    i1r15**3*i1r15r25*rgl**2 + 4.D0*mi(39)*r25**(-3)*rsq1r + 4.D0
     &    *mi(39)*r25**(-3)*rsq1r**2 - 4.D0*mi(39)*r25**(-3)*rgl - 8.D0
     &    *mi(39)*r25**(-3)*rgl*rsq1r + 4.D0*mi(39)*r25**(-3)*rgl**2 - 
     &    4.D0*mi(39)*r25**(-3)*i1r15*rsq1r - 8.D0*mi(39)*r25**(-3)*
     &    i1r15*rsq1r**2 + 4.D0*mi(39)*r25**(-3)*i1r15*rgl + 16.D0*mi(
     &    39)*r25**(-3)*i1r15*rgl*rsq1r - 8.D0*mi(39)*r25**(-3)*i1r15*
     &    rgl**2 + 4.D0*mi(39)*r25**(-3)*i1r15**2*rsq1r**2 - 8.D0*mi(39
     &    )*r25**(-3)*i1r15**2*rgl*rsq1r + 4.D0*mi(39)*r25**(-3)*
     &    i1r15**2*rgl**2 - 4.D0*mi(39)*r25**(-2)*rgl + 4.D0*mi(39)*
     &    r25**(-2)*i1r15*rsq1r - 4.D0*mi(39)*r25**(-2)*i1r15**2*rsq1r
     &     - 8.D0*mi(39)*r25**(-2)*i1r15**2*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(39)*r25**(-2)*i1r15**2*rgl + 16.
     &    D0*mi(39)*r25**(-2)*i1r15**2*rgl*rsq1r - 8.D0*mi(39)*
     &    r25**(-2)*i1r15**2*rgl**2 + 8.D0*mi(39)*r25**(-2)*i1r15**3*
     &    rsq1r**2 - 16.D0*mi(39)*r25**(-2)*i1r15**3*rgl*rsq1r + 8.D0*
     &    mi(39)*r25**(-2)*i1r15**3*rgl**2 + mi(39)*r25**(-1) + 4.D0*
     &    mi(39)*r25**(-1)*i1r15**2*rsq1r - 4.D0*mi(39)*r25**(-1)*
     &    i1r15**3*rsq1r - 8.D0*mi(39)*r25**(-1)*i1r15**3*rsq1r**2 + 4.D
     &    0*mi(39)*r25**(-1)*i1r15**3*rgl + 16.D0*mi(39)*r25**(-1)*
     &    i1r15**3*rgl*rsq1r - 8.D0*mi(39)*r25**(-1)*i1r15**3*rgl**2 + 
     &    12.D0*mi(39)*r25**(-1)*i1r15**4*rsq1r**2 - 24.D0*mi(39)*
     &    r25**(-1)*i1r15**4*rgl*rsq1r + 12.D0*mi(39)*r25**(-1)*
     &    i1r15**4*rgl**2 + 4.D0*mi(39)*i1r15**2*i1r15r25*rsq1r - 4.D0*
     &    mi(39)*i1r15**3*i1r15r25*rsq1r - 8.D0*mi(39)*i1r15**3*
     &    i1r15r25*rsq1r**2 + 4.D0*mi(39)*i1r15**3*i1r15r25*rgl + 16.D0
     &    *mi(39)*i1r15**3*i1r15r25*rgl*rsq1r - 8.D0*mi(39)*i1r15**3*
     &    i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(39)*i1r15**3*i1r15r25**2*
     &    rsq1r**2 - 8.D0*mi(39)*i1r15**3*i1r15r25**2*rgl*rsq1r + 4.D0*
     &    mi(39)*i1r15**3*i1r15r25**2*rgl**2 + 12.D0*mi(39)*i1r15**4*
     &    i1r15r25*rsq1r**2 - 24.D0*mi(39)*i1r15**4*i1r15r25*rgl*rsq1r
     &     + 12.D0*mi(39)*i1r15**4*i1r15r25*rgl**2 + 4.D0*mi(39)*r15*
     &    r25**(-3)*rsq1r - 4.D0*mi(39)*r15*r25**(-3)*rgl + 3.D0*mi(39)
     &    *r15*r25**(-2) + 2.D0*mi(39)*r15**2*r25**(-3) - 2.D0*mi(41)*
     &    r25**(-3)*rsq1r**2 + 4.D0*mi(41)*r25**(-3)*rgl*rsq1r - 2.D0*
     &    mi(41)*r25**(-3)*rgl**2 + 2.D0*mi(41)*r25**(-3)*i1r15*
     &    rsq1r**2 - 4.D0*mi(41)*r25**(-3)*i1r15*rgl*rsq1r + 2.D0*mi(41
     &    )*r25**(-3)*i1r15*rgl**2 + mi(41)*r25**(-2) + 3.D0*mi(41)*
     &    r25**(-2)*rsq1r - mi(41)*r25**(-2)*rgl - 4.D0*mi(41)*
     &    r25**(-2)*i1r15*rsq1r - 2.D0*mi(41)*r25**(-2)*i1r15*rsq1r**2
     &     + 4.D0*mi(41)*r25**(-2)*i1r15*rgl + 4.D0*mi(41)*r25**(-2)*
     &    i1r15*rgl*rsq1r - 2.D0*mi(41)*r25**(-2)*i1r15*rgl**2 + 4.D0*
     &    mi(41)*r25**(-2)*i1r15**2*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * (  - 8.D0*mi(41)*r25**(-2)*i1r15**2*rgl*
     &    rsq1r + 4.D0*mi(41)*r25**(-2)*i1r15**2*rgl**2 + 3.D0*mi(41)*
     &    r25**(-1)*i1r15*rsq1r - mi(41)*r25**(-1)*i1r15*rgl - 4.D0*mi(
     &    41)*r25**(-1)*i1r15**2*rsq1r - 2.D0*mi(41)*r25**(-1)*i1r15**2
     &    *rsq1r**2 + 4.D0*mi(41)*r25**(-1)*i1r15**2*rgl + 4.D0*mi(41)*
     &    r25**(-1)*i1r15**2*rgl*rsq1r - 2.D0*mi(41)*r25**(-1)*i1r15**2
     &    *rgl**2 + 6.D0*mi(41)*r25**(-1)*i1r15**3*rsq1r**2 - 12.D0*mi(
     &    41)*r25**(-1)*i1r15**3*rgl*rsq1r + 6.D0*mi(41)*r25**(-1)*
     &    i1r15**3*rgl**2 - 3.D0*mi(41)*i1r15*i1r15r25*rsq1r + mi(41)*
     &    i1r15*i1r15r25*rgl + 4.D0*mi(41)*i1r15**2*i1r15r25*rsq1r + 2.D
     &    0*mi(41)*i1r15**2*i1r15r25*rsq1r**2 - 4.D0*mi(41)*i1r15**2*
     &    i1r15r25*rgl - 4.D0*mi(41)*i1r15**2*i1r15r25*rgl*rsq1r + 2.D0
     &    *mi(41)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(41)*i1r15**2*
     &    i1r15r25**2*rsq1r**2 + 4.D0*mi(41)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1r - 2.D0*mi(41)*i1r15**2*i1r15r25**2*rgl**2 - 6.D0*mi(41)
     &    *i1r15**3*i1r15r25*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * ( 12.D0*mi(41)*i1r15**3*i1r15r25*rgl*
     &    rsq1r - 6.D0*mi(41)*i1r15**3*i1r15r25*rgl**2 + 2.D0*mi(41)*
     &    r15*r25**(-3) - 4.D0*mi(41)*r15*r25**(-3)*rsq1r + 4.D0*mi(41)
     &    *r15*r25**(-3)*rgl - mi(41)*r15*r25**(-2) - 2.D0*mi(41)*
     &    r15**2*r25**(-3) + 2.D0*mi(43)*r25**(-3)*i1r15*rsq1r**2 - 4.D0
     &    *mi(43)*r25**(-3)*i1r15*rgl*rsq1r + 2.D0*mi(43)*r25**(-3)*
     &    i1r15*rgl**2 - 2.D0*mi(43)*r25**(-3)*i1r15**2*rsq1r**2 + 4.D0
     &    *mi(43)*r25**(-3)*i1r15**2*rgl*rsq1r - 2.D0*mi(43)*r25**(-3)*
     &    i1r15**2*rgl**2 - mi(43)*r25**(-2)*i1r15*rsq1r - 2.D0*mi(43)*
     &    r25**(-2)*i1r15*rsq1r**2 - mi(43)*r25**(-2)*i1r15*rgl + 4.D0*
     &    mi(43)*r25**(-2)*i1r15*rgl*rsq1r - 2.D0*mi(43)*r25**(-2)*
     &    i1r15*rgl**2 + 4.D0*mi(43)*r25**(-2)*i1r15**2*rsq1r**2 - 8.D0
     &    *mi(43)*r25**(-2)*i1r15**2*rgl*rsq1r + 4.D0*mi(43)*r25**(-2)*
     &    i1r15**2*rgl**2 - 4.D0*mi(43)*r25**(-2)*i1r15**3*rsq1r**2 + 8.
     &    D0*mi(43)*r25**(-2)*i1r15**3*rgl*rsq1r - 4.D0*mi(43)*
     &    r25**(-2)*i1r15**3*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( mi(43)*r25**(-1)*i1r15*rsq1r + mi(43)*
     &    r25**(-1)*i1r15*rgl - mi(43)*r25**(-1)*i1r15**2*rsq1r - 2.D0*
     &    mi(43)*r25**(-1)*i1r15**2*rsq1r**2 - mi(43)*r25**(-1)*
     &    i1r15**2*rgl + 4.D0*mi(43)*r25**(-1)*i1r15**2*rgl*rsq1r - 2.D0
     &    *mi(43)*r25**(-1)*i1r15**2*rgl**2 + 6.D0*mi(43)*r25**(-1)*
     &    i1r15**3*rsq1r**2 - 12.D0*mi(43)*r25**(-1)*i1r15**3*rgl*rsq1r
     &     + 6.D0*mi(43)*r25**(-1)*i1r15**3*rgl**2 - 6.D0*mi(43)*
     &    r25**(-1)*i1r15**4*rsq1r**2 + 12.D0*mi(43)*r25**(-1)*i1r15**4
     &    *rgl*rsq1r - 6.D0*mi(43)*r25**(-1)*i1r15**4*rgl**2 + mi(43)*
     &    i1r15*i1r15r25*rsq1r + mi(43)*i1r15*i1r15r25*rgl - mi(43)*
     &    i1r15**2*i1r15r25*rsq1r - 2.D0*mi(43)*i1r15**2*i1r15r25*
     &    rsq1r**2 - mi(43)*i1r15**2*i1r15r25*rgl + 4.D0*mi(43)*
     &    i1r15**2*i1r15r25*rgl*rsq1r - 2.D0*mi(43)*i1r15**2*i1r15r25*
     &    rgl**2 + 2.D0*mi(43)*i1r15**2*i1r15r25**2*rsq1r**2 - 4.D0*mi(
     &    43)*i1r15**2*i1r15r25**2*rgl*rsq1r + 2.D0*mi(43)*i1r15**2*
     &    i1r15r25**2*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( 6.D0*mi(43)*i1r15**3*i1r15r25*rsq1r**2
     &     - 12.D0*mi(43)*i1r15**3*i1r15r25*rgl*rsq1r + 6.D0*mi(43)*
     &    i1r15**3*i1r15r25*rgl**2 - 2.D0*mi(43)*i1r15**3*i1r15r25**2*
     &    rsq1r**2 + 4.D0*mi(43)*i1r15**3*i1r15r25**2*rgl*rsq1r - 2.D0*
     &    mi(43)*i1r15**3*i1r15r25**2*rgl**2 - 6.D0*mi(43)*i1r15**4*
     &    i1r15r25*rsq1r**2 + 12.D0*mi(43)*i1r15**4*i1r15r25*rgl*rsq1r
     &     - 6.D0*mi(43)*i1r15**4*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 6.D0*mi(45)*r25**(-3)*rsq1r**2 - 
     &    2.D0*mi(45)*r25**(-3)*rsq1r**3 + 12.D0*mi(45)*r25**(-3)*rgl*
     &    rsq1r + 6.D0*mi(45)*r25**(-3)*rgl*rsq1r**2 - 6.D0*mi(45)*
     &    r25**(-3)*rgl**2 - 6.D0*mi(45)*r25**(-3)*rgl**2*rsq1r + 2.D0*
     &    mi(45)*r25**(-3)*rgl**3 + 6.D0*mi(45)*r25**(-3)*i1r15*
     &    rsq1r**2 + 4.D0*mi(45)*r25**(-3)*i1r15*rsq1r**3 - 12.D0*mi(45
     &    )*r25**(-3)*i1r15*rgl*rsq1r - 12.D0*mi(45)*r25**(-3)*i1r15*
     &    rgl*rsq1r**2 + 6.D0*mi(45)*r25**(-3)*i1r15*rgl**2 + 12.D0*mi(
     &    45)*r25**(-3)*i1r15*rgl**2*rsq1r - 4.D0*mi(45)*r25**(-3)*
     &    i1r15*rgl**3 - 2.D0*mi(45)*r25**(-3)*i1r15**2*rsq1r**3 + 6.D0
     &    *mi(45)*r25**(-3)*i1r15**2*rgl*rsq1r**2 - 6.D0*mi(45)*
     &    r25**(-3)*i1r15**2*rgl**2*rsq1r + 2.D0*mi(45)*r25**(-3)*
     &    i1r15**2*rgl**3 + 3.D0*mi(45)*r25**(-2)*rsq1r**2 - 3.D0*mi(45
     &    )*r25**(-2)*rgl**2 - 9.D0*mi(45)*r25**(-2)*i1r15*rsq1r**2 + 
     &    12.D0*mi(45)*r25**(-2)*i1r15*rgl*rsq1r - 3.D0*mi(45)*
     &    r25**(-2)*i1r15*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( 6.D0*mi(45)*r25**(-2)*i1r15**2*
     &    rsq1r**2 + 4.D0*mi(45)*r25**(-2)*i1r15**2*rsq1r**3 - 12.D0*
     &    mi(45)*r25**(-2)*i1r15**2*rgl*rsq1r - 12.D0*mi(45)*r25**(-2)*
     &    i1r15**2*rgl*rsq1r**2 + 6.D0*mi(45)*r25**(-2)*i1r15**2*rgl**2
     &     + 12.D0*mi(45)*r25**(-2)*i1r15**2*rgl**2*rsq1r - 4.D0*mi(45)
     &    *r25**(-2)*i1r15**2*rgl**3 - 4.D0*mi(45)*r25**(-2)*i1r15**3*
     &    rsq1r**3 + 12.D0*mi(45)*r25**(-2)*i1r15**3*rgl*rsq1r**2 - 12.D
     &    0*mi(45)*r25**(-2)*i1r15**3*rgl**2*rsq1r + 4.D0*mi(45)*
     &    r25**(-2)*i1r15**3*rgl**3 + mi(45)*r25**(-1)*rsq1r + mi(45)*
     &    r25**(-1)*rgl + 4.D0*mi(45)*r25**(-1)*i1r15*rsq1r**2 - 4.D0*
     &    mi(45)*r25**(-1)*i1r15*rgl*rsq1r - 9.D0*mi(45)*r25**(-1)*
     &    i1r15**2*rsq1r**2 + 12.D0*mi(45)*r25**(-1)*i1r15**2*rgl*rsq1r
     &     - 3.D0*mi(45)*r25**(-1)*i1r15**2*rgl**2 + 6.D0*mi(45)*
     &    r25**(-1)*i1r15**3*rsq1r**2 + 4.D0*mi(45)*r25**(-1)*i1r15**3*
     &    rsq1r**3 - 12.D0*mi(45)*r25**(-1)*i1r15**3*rgl*rsq1r - 12.D0*
     &    mi(45)*r25**(-1)*i1r15**3*rgl*rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * ( 6.D0*mi(45)*r25**(-1)*i1r15**3*
     &    rgl**2 + 12.D0*mi(45)*r25**(-1)*i1r15**3*rgl**2*rsq1r - 4.D0*
     &    mi(45)*r25**(-1)*i1r15**3*rgl**3 - 6.D0*mi(45)*r25**(-1)*
     &    i1r15**4*rsq1r**3 + 18.D0*mi(45)*r25**(-1)*i1r15**4*rgl*
     &    rsq1r**2 - 18.D0*mi(45)*r25**(-1)*i1r15**4*rgl**2*rsq1r + 6.D0
     &    *mi(45)*r25**(-1)*i1r15**4*rgl**3 + 4.D0*mi(45)*i1r15*
     &    i1r15r25*rsq1r**2 - 4.D0*mi(45)*i1r15*i1r15r25*rgl*rsq1r - 9.D
     &    0*mi(45)*i1r15**2*i1r15r25*rsq1r**2 + 12.D0*mi(45)*i1r15**2*
     &    i1r15r25*rgl*rsq1r - 3.D0*mi(45)*i1r15**2*i1r15r25*rgl**2 + 6.
     &    D0*mi(45)*i1r15**3*i1r15r25*rsq1r**2 + 4.D0*mi(45)*i1r15**3*
     &    i1r15r25*rsq1r**3 - 12.D0*mi(45)*i1r15**3*i1r15r25*rgl*rsq1r
     &     - 12.D0*mi(45)*i1r15**3*i1r15r25*rgl*rsq1r**2 + 6.D0*mi(45)*
     &    i1r15**3*i1r15r25*rgl**2 + 12.D0*mi(45)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1r - 4.D0*mi(45)*i1r15**3*i1r15r25*rgl**3 - 2.D0*
     &    mi(45)*i1r15**3*i1r15r25**2*rsq1r**3 + 6.D0*mi(45)*i1r15**3*
     &    i1r15r25**2*rgl*rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 6.D0*mi(45)*i1r15**3*i1r15r25**2*
     &    rgl**2*rsq1r + 2.D0*mi(45)*i1r15**3*i1r15r25**2*rgl**3 - 6.D0
     &    *mi(45)*i1r15**4*i1r15r25*rsq1r**3 + 18.D0*mi(45)*i1r15**4*
     &    i1r15r25*rgl*rsq1r**2 - 18.D0*mi(45)*i1r15**4*i1r15r25*rgl**2
     &    *rsq1r + 6.D0*mi(45)*i1r15**4*i1r15r25*rgl**3 - 6.D0*mi(45)*
     &    r15*r25**(-3)*rsq1r**2 + 12.D0*mi(45)*r15*r25**(-3)*rgl*rsq1r
     &     - 6.D0*mi(45)*r15*r25**(-3)*rgl**2 + mi(45)*r15*r25**(-2) + 
     &    6.D0*mi(45)*r15*r25**(-2)*rgl - mi(45)*r15*r25**(-1) + 2.D0*
     &    mi(45)*r15**2*r25**(-3) - 6.D0*mi(45)*r15**2*r25**(-3)*rsq1r
     &     + 6.D0*mi(45)*r15**2*r25**(-3)*rgl - 3.D0*mi(45)*r15**2*
     &    r25**(-2) - 2.D0*mi(45)*r15**3*r25**(-3) - 2.D0*mi(47)*
     &    r25**(-3)*rsq1r**3 + 6.D0*mi(47)*r25**(-3)*rgl*rsq1r**2 - 6.D0
     &    *mi(47)*r25**(-3)*rgl**2*rsq1r + 2.D0*mi(47)*r25**(-3)*rgl**3
     &     + 4.D0*mi(47)*r25**(-3)*i1r15*rsq1r**3 - 12.D0*mi(47)*
     &    r25**(-3)*i1r15*rgl*rsq1r**2 + 12.D0*mi(47)*r25**(-3)*i1r15*
     &    rgl**2*rsq1r )
      e = e  + Nc**(-1)*s125**2 * (  - 4.D0*mi(47)*r25**(-3)*i1r15*
     &    rgl**3 - 2.D0*mi(47)*r25**(-3)*i1r15**2*rsq1r**3 + 6.D0*mi(47
     &    )*r25**(-3)*i1r15**2*rgl*rsq1r**2 - 6.D0*mi(47)*r25**(-3)*
     &    i1r15**2*rgl**2*rsq1r + 2.D0*mi(47)*r25**(-3)*i1r15**2*rgl**3
     &     + 3.D0*mi(47)*r25**(-2)*rsq1r**2 - 3.D0*mi(47)*r25**(-2)*
     &    rgl**2 - 3.D0*mi(47)*r25**(-2)*i1r15*rsq1r**2 + 3.D0*mi(47)*
     &    r25**(-2)*i1r15*rgl**2 + 4.D0*mi(47)*r25**(-2)*i1r15**2*
     &    rsq1r**3 - 12.D0*mi(47)*r25**(-2)*i1r15**2*rgl*rsq1r**2 + 12.D
     &    0*mi(47)*r25**(-2)*i1r15**2*rgl**2*rsq1r - 4.D0*mi(47)*
     &    r25**(-2)*i1r15**2*rgl**3 - 4.D0*mi(47)*r25**(-2)*i1r15**3*
     &    rsq1r**3 + 12.D0*mi(47)*r25**(-2)*i1r15**3*rgl*rsq1r**2 - 12.D
     &    0*mi(47)*r25**(-2)*i1r15**3*rgl**2*rsq1r + 4.D0*mi(47)*
     &    r25**(-2)*i1r15**3*rgl**3 - mi(47)*r25**(-1)*rsq1r + mi(47)*
     &    r25**(-1)*rgl + 4.D0*mi(47)*r25**(-1)*i1r15*rsq1r**2 - 4.D0*
     &    mi(47)*r25**(-1)*i1r15*rgl*rsq1r - 3.D0*mi(47)*r25**(-1)*
     &    i1r15**2*rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(47)*r25**(-1)*i1r15**2*
     &    rgl**2 + 4.D0*mi(47)*r25**(-1)*i1r15**3*rsq1r**3 - 12.D0*mi(
     &    47)*r25**(-1)*i1r15**3*rgl*rsq1r**2 + 12.D0*mi(47)*r25**(-1)*
     &    i1r15**3*rgl**2*rsq1r - 4.D0*mi(47)*r25**(-1)*i1r15**3*rgl**3
     &     - 6.D0*mi(47)*r25**(-1)*i1r15**4*rsq1r**3 + 18.D0*mi(47)*
     &    r25**(-1)*i1r15**4*rgl*rsq1r**2 - 18.D0*mi(47)*r25**(-1)*
     &    i1r15**4*rgl**2*rsq1r + 6.D0*mi(47)*r25**(-1)*i1r15**4*rgl**3
     &     + 4.D0*mi(47)*i1r15*i1r15r25*rsq1r**2 - 4.D0*mi(47)*i1r15*
     &    i1r15r25*rgl*rsq1r - 3.D0*mi(47)*i1r15**2*i1r15r25*rsq1r**2
     &     + 3.D0*mi(47)*i1r15**2*i1r15r25*rgl**2 + 4.D0*mi(47)*
     &    i1r15**3*i1r15r25*rsq1r**3 - 12.D0*mi(47)*i1r15**3*i1r15r25*
     &    rgl*rsq1r**2 + 12.D0*mi(47)*i1r15**3*i1r15r25*rgl**2*rsq1r - 
     &    4.D0*mi(47)*i1r15**3*i1r15r25*rgl**3 - 2.D0*mi(47)*i1r15**3*
     &    i1r15r25**2*rsq1r**3 + 6.D0*mi(47)*i1r15**3*i1r15r25**2*rgl*
     &    rsq1r**2 - 6.D0*mi(47)*i1r15**3*i1r15r25**2*rgl**2*rsq1r + 2.D
     &    0*mi(47)*i1r15**3*i1r15r25**2*rgl**3 )
      e = e  + Nc**(-1)*s125**2 * (  - 6.D0*mi(47)*i1r15**4*i1r15r25*
     &    rsq1r**3 + 18.D0*mi(47)*i1r15**4*i1r15r25*rgl*rsq1r**2 - 18.D0
     &    *mi(47)*i1r15**4*i1r15r25*rgl**2*rsq1r + 6.D0*mi(47)*i1r15**4
     &    *i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * ( 4.D0*mi(17)*r25**(-2)*i1r15 + 6.D0*mi(
     &    17)*r25**(-1)*i1r15**2 - 4.D0*mi(19)*r25**(-2)*i1r15 - 6.D0*
     &    mi(19)*r25**(-1)*i1r15**2 )
      e = e  + Nc * (  - 2.D0*r25**(-1)*i1r15 - 4.D0*mi(21)*r25**(-2)*
     &    i1r15*rsq1r + 4.D0*mi(21)*r25**(-2)*i1r15*rgl + 4.D0*mi(21)*
     &    r25**(-2)*i1r15**2*rsq1r - 4.D0*mi(21)*r25**(-2)*i1r15**2*rgl
     &     - 2.D0*mi(21)*r25**(-1)*i1r15**2 - 4.D0*mi(21)*r25**(-1)*
     &    i1r15**2*rsq1r + 4.D0*mi(21)*r25**(-1)*i1r15**2*rgl + 8.D0*
     &    mi(21)*r25**(-1)*i1r15**3*rsq1r - 8.D0*mi(21)*r25**(-1)*
     &    i1r15**3*rgl - 4.D0*mi(21)*i1r15**3*i1r15r25*rsq1r + 4.D0*mi(
     &    21)*i1r15**3*i1r15r25*rgl + 4.D0*mi(25)*r25**(-2)*i1r15*rsq1r
     &     - 4.D0*mi(25)*r25**(-2)*i1r15*rgl - 4.D0*mi(25)*r25**(-2)*
     &    i1r15**2*rsq1r + 4.D0*mi(25)*r25**(-2)*i1r15**2*rgl + 2.D0*
     &    mi(25)*r25**(-1)*i1r15**2 + 6.D0*mi(25)*r25**(-1)*i1r15**2*
     &    rsq1r - 6.D0*mi(25)*r25**(-1)*i1r15**2*rgl - 8.D0*mi(25)*
     &    r25**(-1)*i1r15**3*rsq1r + 8.D0*mi(25)*r25**(-1)*i1r15**3*rgl
     &     - 4.D0*mi(25)*i1r15**2*i1r15r25*rsq1r + 4.D0*mi(25)*i1r15**2
     &    *i1r15r25*rgl + 4.D0*mi(25)*i1r15**3*i1r15r25*rsq1r - 4.D0*
     &    mi(25)*i1r15**3*i1r15r25*rgl )
      e = e  + Nc * ( 4.D0*mi(27)*r25**(-2)*i1r15*rsq1r - 4.D0*mi(27)*
     &    r25**(-2)*i1r15*rgl + 4.D0*mi(27)*r25**(-1)*i1r15**2*rsq1r - 
     &    4.D0*mi(27)*r25**(-1)*i1r15**2*rgl + 4.D0*mi(27)*i1r15**2*
     &    i1r15r25*rsq1r - 4.D0*mi(27)*i1r15**2*i1r15r25*rgl )
      e = e  + Nc*s125 * (  - 2.D0*mi(31)*r25**(-3)*rsq1r**2 + 4.D0*mi(
     &    31)*r25**(-3)*rgl*rsq1r - 2.D0*mi(31)*r25**(-3)*rgl**2 + 4.D0
     &    *mi(31)*r25**(-3)*i1r15*rsq1r**2 - 8.D0*mi(31)*r25**(-3)*
     &    i1r15*rgl*rsq1r + 4.D0*mi(31)*r25**(-3)*i1r15*rgl**2 - 2.D0*
     &    mi(31)*r25**(-3)*i1r15**2*rsq1r**2 + 4.D0*mi(31)*r25**(-3)*
     &    i1r15**2*rgl*rsq1r - 2.D0*mi(31)*r25**(-3)*i1r15**2*rgl**2 + 
     &    mi(31)*r25**(-2)*rsq1r + mi(31)*r25**(-2)*rgl - 3.D0*mi(31)*
     &    r25**(-2)*i1r15*rsq1r - 2.D0*mi(31)*r25**(-2)*i1r15*rsq1r**2
     &     + mi(31)*r25**(-2)*i1r15*rgl + 4.D0*mi(31)*r25**(-2)*i1r15*
     &    rgl*rsq1r - 2.D0*mi(31)*r25**(-2)*i1r15*rgl**2 + 2.D0*mi(31)*
     &    r25**(-2)*i1r15**2*rsq1r + 6.D0*mi(31)*r25**(-2)*i1r15**2*
     &    rsq1r**2 - 2.D0*mi(31)*r25**(-2)*i1r15**2*rgl - 12.D0*mi(31)*
     &    r25**(-2)*i1r15**2*rgl*rsq1r + 6.D0*mi(31)*r25**(-2)*i1r15**2
     &    *rgl**2 - 4.D0*mi(31)*r25**(-2)*i1r15**3*rsq1r**2 + 8.D0*mi(
     &    31)*r25**(-2)*i1r15**3*rgl*rsq1r - 4.D0*mi(31)*r25**(-2)*
     &    i1r15**3*rgl**2 )
      e = e  + Nc*s125 * ( 3.D0*mi(31)*r25**(-1)*i1r15*rsq1r - mi(31)*
     &    r25**(-1)*i1r15*rgl - 7.D0*mi(31)*r25**(-1)*i1r15**2*rsq1r - 
     &    2.D0*mi(31)*r25**(-1)*i1r15**2*rsq1r**2 + 5.D0*mi(31)*
     &    r25**(-1)*i1r15**2*rgl + 4.D0*mi(31)*r25**(-1)*i1r15**2*rgl*
     &    rsq1r - 2.D0*mi(31)*r25**(-1)*i1r15**2*rgl**2 + 4.D0*mi(31)*
     &    r25**(-1)*i1r15**3*rsq1r + 8.D0*mi(31)*r25**(-1)*i1r15**3*
     &    rsq1r**2 - 4.D0*mi(31)*r25**(-1)*i1r15**3*rgl - 16.D0*mi(31)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r + 8.D0*mi(31)*r25**(-1)*i1r15**3
     &    *rgl**2 - 6.D0*mi(31)*r25**(-1)*i1r15**4*rsq1r**2 + 12.D0*mi(
     &    31)*r25**(-1)*i1r15**4*rgl*rsq1r - 6.D0*mi(31)*r25**(-1)*
     &    i1r15**4*rgl**2 + 2.D0*mi(31)*i1r15r25**2*rsq1r - 2.D0*mi(31)
     &    *i1r15r25**2*rgl + 3.D0*mi(31)*i1r15*i1r15r25*rsq1r - mi(31)*
     &    i1r15*i1r15r25*rgl - 4.D0*mi(31)*i1r15*i1r15r25**2*rsq1r + 4.D
     &    0*mi(31)*i1r15*i1r15r25**2*rgl - 7.D0*mi(31)*i1r15**2*
     &    i1r15r25*rsq1r - 2.D0*mi(31)*i1r15**2*i1r15r25*rsq1r**2 + 5.D0
     &    *mi(31)*i1r15**2*i1r15r25*rgl )
      e = e  + Nc*s125 * ( 4.D0*mi(31)*i1r15**2*i1r15r25*rgl*rsq1r - 2.D0
     &    *mi(31)*i1r15**2*i1r15r25*rgl**2 + 2.D0*mi(31)*i1r15**2*
     &    i1r15r25**2*rsq1r + 2.D0*mi(31)*i1r15**2*i1r15r25**2*rsq1r**2
     &     - 2.D0*mi(31)*i1r15**2*i1r15r25**2*rgl - 4.D0*mi(31)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1r + 2.D0*mi(31)*i1r15**2*
     &    i1r15r25**2*rgl**2 + 4.D0*mi(31)*i1r15**3*i1r15r25*rsq1r + 8.D
     &    0*mi(31)*i1r15**3*i1r15r25*rsq1r**2 - 4.D0*mi(31)*i1r15**3*
     &    i1r15r25*rgl - 16.D0*mi(31)*i1r15**3*i1r15r25*rgl*rsq1r + 8.D0
     &    *mi(31)*i1r15**3*i1r15r25*rgl**2 - 2.D0*mi(31)*i1r15**3*
     &    i1r15r25**2*rsq1r**2 + 4.D0*mi(31)*i1r15**3*i1r15r25**2*rgl*
     &    rsq1r - 2.D0*mi(31)*i1r15**3*i1r15r25**2*rgl**2 - 6.D0*mi(31)
     &    *i1r15**4*i1r15r25*rsq1r**2 + 12.D0*mi(31)*i1r15**4*i1r15r25*
     &    rgl*rsq1r - 6.D0*mi(31)*i1r15**4*i1r15r25*rgl**2 + 2.D0*mi(35
     &    )*r25**(-2)*i1r15*rsq1r**2 - 4.D0*mi(35)*r25**(-2)*i1r15*rgl*
     &    rsq1r + 2.D0*mi(35)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(35)*
     &    r25**(-2)*i1r15**2*rsq1r**2 )
      e = e  + Nc*s125 * ( 4.D0*mi(35)*r25**(-2)*i1r15**2*rgl*rsq1r - 2.D
     &    0*mi(35)*r25**(-2)*i1r15**2*rgl**2 - mi(35)*r25**(-1)*i1r15*
     &    rsq1r - mi(35)*r25**(-1)*i1r15*rgl + 2.D0*mi(35)*r25**(-1)*
     &    i1r15**2*rsq1r + 2.D0*mi(35)*r25**(-1)*i1r15**2*rsq1r**2 - 2.D
     &    0*mi(35)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(35)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r + 2.D0*mi(35)*r25**(-1)*i1r15**2*rgl**2 - 
     &    4.D0*mi(35)*r25**(-1)*i1r15**3*rsq1r**2 + 8.D0*mi(35)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r - 4.D0*mi(35)*r25**(-1)*i1r15**3
     &    *rgl**2 - 2.D0*mi(35)*i1r15r25**2*rsq1r + 2.D0*mi(35)*
     &    i1r15r25**2*rgl - mi(35)*i1r15*i1r15r25*rsq1r - mi(35)*i1r15*
     &    i1r15r25*rgl + 2.D0*mi(35)*i1r15*i1r15r25**2*rsq1r - 2.D0*mi(
     &    35)*i1r15*i1r15r25**2*rgl + 2.D0*mi(35)*i1r15**2*i1r15r25*
     &    rsq1r + 2.D0*mi(35)*i1r15**2*i1r15r25*rsq1r**2 - 2.D0*mi(35)*
     &    i1r15**2*i1r15r25*rgl - 4.D0*mi(35)*i1r15**2*i1r15r25*rgl*
     &    rsq1r + 2.D0*mi(35)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(35)*
     &    i1r15**2*i1r15r25**2*rsq1r**2 )
      e = e  + Nc*s125 * ( 4.D0*mi(35)*i1r15**2*i1r15r25**2*rgl*rsq1r - 
     &    2.D0*mi(35)*i1r15**2*i1r15r25**2*rgl**2 - 4.D0*mi(35)*
     &    i1r15**3*i1r15r25*rsq1r**2 + 8.D0*mi(35)*i1r15**3*i1r15r25*
     &    rgl*rsq1r - 4.D0*mi(35)*i1r15**3*i1r15r25*rgl**2 + 2.D0*mi(41
     &    )*r25**(-3)*rsq1r**2 - 4.D0*mi(41)*r25**(-3)*rgl*rsq1r + 2.D0
     &    *mi(41)*r25**(-3)*rgl**2 - 2.D0*mi(41)*r25**(-3)*i1r15*
     &    rsq1r**2 + 4.D0*mi(41)*r25**(-3)*i1r15*rgl*rsq1r - 2.D0*mi(41
     &    )*r25**(-3)*i1r15*rgl**2 - mi(41)*r25**(-2)*rsq1r - mi(41)*
     &    r25**(-2)*rgl + 2.D0*mi(41)*r25**(-2)*i1r15*rsq1r + 2.D0*mi(
     &    41)*r25**(-2)*i1r15*rsq1r**2 - 2.D0*mi(41)*r25**(-2)*i1r15*
     &    rgl - 4.D0*mi(41)*r25**(-2)*i1r15*rgl*rsq1r + 2.D0*mi(41)*
     &    r25**(-2)*i1r15*rgl**2 - 4.D0*mi(41)*r25**(-2)*i1r15**2*
     &    rsq1r**2 + 8.D0*mi(41)*r25**(-2)*i1r15**2*rgl*rsq1r - 4.D0*
     &    mi(41)*r25**(-2)*i1r15**2*rgl**2 - 3.D0*mi(41)*r25**(-1)*
     &    i1r15*rsq1r + mi(41)*r25**(-1)*i1r15*rgl + 4.D0*mi(41)*
     &    r25**(-1)*i1r15**2*rsq1r )
      e = e  + Nc*s125 * ( 2.D0*mi(41)*r25**(-1)*i1r15**2*rsq1r**2 - 4.D0
     &    *mi(41)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(41)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r + 2.D0*mi(41)*r25**(-1)*i1r15**2*rgl**2 - 
     &    6.D0*mi(41)*r25**(-1)*i1r15**3*rsq1r**2 + 12.D0*mi(41)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r - 6.D0*mi(41)*r25**(-1)*i1r15**3
     &    *rgl**2 + 2.D0*mi(41)*i1r15r25**2*rsq1r - 2.D0*mi(41)*
     &    i1r15r25**2*rgl + 3.D0*mi(41)*i1r15*i1r15r25*rsq1r - mi(41)*
     &    i1r15*i1r15r25*rgl - 2.D0*mi(41)*i1r15*i1r15r25**2*rsq1r + 2.D
     &    0*mi(41)*i1r15*i1r15r25**2*rgl - 4.D0*mi(41)*i1r15**2*
     &    i1r15r25*rsq1r - 2.D0*mi(41)*i1r15**2*i1r15r25*rsq1r**2 + 4.D0
     &    *mi(41)*i1r15**2*i1r15r25*rgl + 4.D0*mi(41)*i1r15**2*i1r15r25
     &    *rgl*rsq1r - 2.D0*mi(41)*i1r15**2*i1r15r25*rgl**2 + 2.D0*mi(
     &    41)*i1r15**2*i1r15r25**2*rsq1r**2 - 4.D0*mi(41)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r + 2.D0*mi(41)*i1r15**2*i1r15r25**2*
     &    rgl**2 + 6.D0*mi(41)*i1r15**3*i1r15r25*rsq1r**2 - 12.D0*mi(41
     &    )*i1r15**3*i1r15r25*rgl*rsq1r )
      e = e  + Nc*s125 * ( 6.D0*mi(41)*i1r15**3*i1r15r25*rgl**2 - 2.D0*
     &    mi(43)*r25**(-3)*i1r15*rsq1r**2 + 4.D0*mi(43)*r25**(-3)*i1r15
     &    *rgl*rsq1r - 2.D0*mi(43)*r25**(-3)*i1r15*rgl**2 + 2.D0*mi(43)
     &    *r25**(-3)*i1r15**2*rsq1r**2 - 4.D0*mi(43)*r25**(-3)*i1r15**2
     &    *rgl*rsq1r + 2.D0*mi(43)*r25**(-3)*i1r15**2*rgl**2 + mi(43)*
     &    r25**(-2)*i1r15*rsq1r + 2.D0*mi(43)*r25**(-2)*i1r15*rsq1r**2
     &     + mi(43)*r25**(-2)*i1r15*rgl - 4.D0*mi(43)*r25**(-2)*i1r15*
     &    rgl*rsq1r + 2.D0*mi(43)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(43)*
     &    r25**(-2)*i1r15**2*rsq1r - 4.D0*mi(43)*r25**(-2)*i1r15**2*
     &    rsq1r**2 + 2.D0*mi(43)*r25**(-2)*i1r15**2*rgl + 8.D0*mi(43)*
     &    r25**(-2)*i1r15**2*rgl*rsq1r - 4.D0*mi(43)*r25**(-2)*i1r15**2
     &    *rgl**2 + 4.D0*mi(43)*r25**(-2)*i1r15**3*rsq1r**2 - 8.D0*mi(
     &    43)*r25**(-2)*i1r15**3*rgl*rsq1r + 4.D0*mi(43)*r25**(-2)*
     &    i1r15**3*rgl**2 - mi(43)*r25**(-1)*i1r15*rsq1r - mi(43)*
     &    r25**(-1)*i1r15*rgl + 5.D0*mi(43)*r25**(-1)*i1r15**2*rsq1r + 
     &    2.D0*mi(43)*r25**(-1)*i1r15**2*rsq1r**2 )
      e = e  + Nc*s125 * (  - 3.D0*mi(43)*r25**(-1)*i1r15**2*rgl - 4.D0*
     &    mi(43)*r25**(-1)*i1r15**2*rgl*rsq1r + 2.D0*mi(43)*r25**(-1)*
     &    i1r15**2*rgl**2 - 4.D0*mi(43)*r25**(-1)*i1r15**3*rsq1r - 6.D0
     &    *mi(43)*r25**(-1)*i1r15**3*rsq1r**2 + 4.D0*mi(43)*r25**(-1)*
     &    i1r15**3*rgl + 12.D0*mi(43)*r25**(-1)*i1r15**3*rgl*rsq1r - 6.D
     &    0*mi(43)*r25**(-1)*i1r15**3*rgl**2 + 6.D0*mi(43)*r25**(-1)*
     &    i1r15**4*rsq1r**2 - 12.D0*mi(43)*r25**(-1)*i1r15**4*rgl*rsq1r
     &     + 6.D0*mi(43)*r25**(-1)*i1r15**4*rgl**2 - 2.D0*mi(43)*
     &    i1r15r25**2*rsq1r + 2.D0*mi(43)*i1r15r25**2*rgl - mi(43)*
     &    i1r15*i1r15r25*rsq1r - mi(43)*i1r15*i1r15r25*rgl + 4.D0*mi(43
     &    )*i1r15*i1r15r25**2*rsq1r - 4.D0*mi(43)*i1r15*i1r15r25**2*rgl
     &     + 5.D0*mi(43)*i1r15**2*i1r15r25*rsq1r + 2.D0*mi(43)*i1r15**2
     &    *i1r15r25*rsq1r**2 - 3.D0*mi(43)*i1r15**2*i1r15r25*rgl - 4.D0
     &    *mi(43)*i1r15**2*i1r15r25*rgl*rsq1r + 2.D0*mi(43)*i1r15**2*
     &    i1r15r25*rgl**2 - 2.D0*mi(43)*i1r15**2*i1r15r25**2*rsq1r - 2.D
     &    0*mi(43)*i1r15**2*i1r15r25**2*rsq1r**2 )
      e = e  + Nc*s125 * ( 2.D0*mi(43)*i1r15**2*i1r15r25**2*rgl + 4.D0*
     &    mi(43)*i1r15**2*i1r15r25**2*rgl*rsq1r - 2.D0*mi(43)*i1r15**2*
     &    i1r15r25**2*rgl**2 - 4.D0*mi(43)*i1r15**3*i1r15r25*rsq1r - 6.D
     &    0*mi(43)*i1r15**3*i1r15r25*rsq1r**2 + 4.D0*mi(43)*i1r15**3*
     &    i1r15r25*rgl + 12.D0*mi(43)*i1r15**3*i1r15r25*rgl*rsq1r - 6.D0
     &    *mi(43)*i1r15**3*i1r15r25*rgl**2 + 2.D0*mi(43)*i1r15**3*
     &    i1r15r25**2*rsq1r**2 - 4.D0*mi(43)*i1r15**3*i1r15r25**2*rgl*
     &    rsq1r + 2.D0*mi(43)*i1r15**3*i1r15r25**2*rgl**2 + 6.D0*mi(43)
     &    *i1r15**4*i1r15r25*rsq1r**2 - 12.D0*mi(43)*i1r15**4*i1r15r25*
     &    rgl*rsq1r + 6.D0*mi(43)*i1r15**4*i1r15r25*rgl**2 )
      e = e  + Nc*s125**2 * (  - 2.D0*mi(49)*r25**(-3)*rsq1r**3 + 6.D0*
     &    mi(49)*r25**(-3)*rgl*rsq1r**2 - 6.D0*mi(49)*r25**(-3)*rgl**2*
     &    rsq1r + 2.D0*mi(49)*r25**(-3)*rgl**3 + 4.D0*mi(49)*r25**(-3)*
     &    i1r15*rsq1r**3 - 12.D0*mi(49)*r25**(-3)*i1r15*rgl*rsq1r**2 + 
     &    12.D0*mi(49)*r25**(-3)*i1r15*rgl**2*rsq1r - 4.D0*mi(49)*
     &    r25**(-3)*i1r15*rgl**3 - 2.D0*mi(49)*r25**(-3)*i1r15**2*
     &    rsq1r**3 + 6.D0*mi(49)*r25**(-3)*i1r15**2*rgl*rsq1r**2 - 6.D0
     &    *mi(49)*r25**(-3)*i1r15**2*rgl**2*rsq1r + 2.D0*mi(49)*
     &    r25**(-3)*i1r15**2*rgl**3 + 3.D0*mi(49)*r25**(-2)*rsq1r**2 - 
     &    3.D0*mi(49)*r25**(-2)*rgl**2 - 7.D0*mi(49)*r25**(-2)*i1r15*
     &    rsq1r**2 + 8.D0*mi(49)*r25**(-2)*i1r15*rgl*rsq1r - mi(49)*
     &    r25**(-2)*i1r15*rgl**2 + 4.D0*mi(49)*r25**(-2)*i1r15**2*
     &    rsq1r**2 + 4.D0*mi(49)*r25**(-2)*i1r15**2*rsq1r**3 - 8.D0*mi(
     &    49)*r25**(-2)*i1r15**2*rgl*rsq1r - 12.D0*mi(49)*r25**(-2)*
     &    i1r15**2*rgl*rsq1r**2 + 4.D0*mi(49)*r25**(-2)*i1r15**2*rgl**2
     &     + 12.D0*mi(49)*r25**(-2)*i1r15**2*rgl**2*rsq1r )
      e = e  + Nc*s125**2 * (  - 4.D0*mi(49)*r25**(-2)*i1r15**2*rgl**3
     &     - 4.D0*mi(49)*r25**(-2)*i1r15**3*rsq1r**3 + 12.D0*mi(49)*
     &    r25**(-2)*i1r15**3*rgl*rsq1r**2 - 12.D0*mi(49)*r25**(-2)*
     &    i1r15**3*rgl**2*rsq1r + 4.D0*mi(49)*r25**(-2)*i1r15**3*rgl**3
     &     - mi(49)*r25**(-1)*rsq1r + mi(49)*r25**(-1)*rgl + 3.D0*mi(49
     &    )*r25**(-1)*i1r15*rsq1r + 4.D0*mi(49)*r25**(-1)*i1r15*
     &    rsq1r**2 - mi(49)*r25**(-1)*i1r15*rgl - 4.D0*mi(49)*r25**(-1)
     &    *i1r15*rgl*rsq1r - 2.D0*mi(49)*r25**(-1)*i1r15**2*rsq1r - 11.D
     &    0*mi(49)*r25**(-1)*i1r15**2*rsq1r**2 + 2.D0*mi(49)*r25**(-1)*
     &    i1r15**2*rgl + 16.D0*mi(49)*r25**(-1)*i1r15**2*rgl*rsq1r - 5.D
     &    0*mi(49)*r25**(-1)*i1r15**2*rgl**2 + 8.D0*mi(49)*r25**(-1)*
     &    i1r15**3*rsq1r**2 + 4.D0*mi(49)*r25**(-1)*i1r15**3*rsq1r**3
     &     - 16.D0*mi(49)*r25**(-1)*i1r15**3*rgl*rsq1r - 12.D0*mi(49)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r**2 + 8.D0*mi(49)*r25**(-1)*
     &    i1r15**3*rgl**2 + 12.D0*mi(49)*r25**(-1)*i1r15**3*rgl**2*
     &    rsq1r )
      e = e  + Nc*s125**2 * (  - 4.D0*mi(49)*r25**(-1)*i1r15**3*rgl**3
     &     - 6.D0*mi(49)*r25**(-1)*i1r15**4*rsq1r**3 + 18.D0*mi(49)*
     &    r25**(-1)*i1r15**4*rgl*rsq1r**2 - 18.D0*mi(49)*r25**(-1)*
     &    i1r15**4*rgl**2*rsq1r + 6.D0*mi(49)*r25**(-1)*i1r15**4*rgl**3
     &     - mi(49)*i1r15r25*rsq1r - mi(49)*i1r15r25*rgl + 2.D0*mi(49)*
     &    i1r15r25**2*rsq1r - 2.D0*mi(49)*i1r15r25**2*rgl + 3.D0*mi(49)
     &    *i1r15*i1r15r25*rsq1r + 4.D0*mi(49)*i1r15*i1r15r25*rsq1r**2
     &     - mi(49)*i1r15*i1r15r25*rgl - 4.D0*mi(49)*i1r15*i1r15r25*rgl
     &    *rsq1r - 2.D0*mi(49)*i1r15*i1r15r25**2*rsq1r - 4.D0*mi(49)*
     &    i1r15*i1r15r25**2*rsq1r**2 + 2.D0*mi(49)*i1r15*i1r15r25**2*
     &    rgl + 8.D0*mi(49)*i1r15*i1r15r25**2*rgl*rsq1r - 4.D0*mi(49)*
     &    i1r15*i1r15r25**2*rgl**2 - 2.D0*mi(49)*i1r15**2*i1r15r25*
     &    rsq1r - 11.D0*mi(49)*i1r15**2*i1r15r25*rsq1r**2 + 2.D0*mi(49)
     &    *i1r15**2*i1r15r25*rgl + 16.D0*mi(49)*i1r15**2*i1r15r25*rgl*
     &    rsq1r - 5.D0*mi(49)*i1r15**2*i1r15r25*rgl**2 + 4.D0*mi(49)*
     &    i1r15**2*i1r15r25**2*rsq1r**2 )
      e = e  + Nc*s125**2 * (  - 8.D0*mi(49)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1r + 4.D0*mi(49)*i1r15**2*i1r15r25**2*rgl**2 + 8.D0*mi(49)
     &    *i1r15**3*i1r15r25*rsq1r**2 + 4.D0*mi(49)*i1r15**3*i1r15r25*
     &    rsq1r**3 - 16.D0*mi(49)*i1r15**3*i1r15r25*rgl*rsq1r - 12.D0*
     &    mi(49)*i1r15**3*i1r15r25*rgl*rsq1r**2 + 8.D0*mi(49)*i1r15**3*
     &    i1r15r25*rgl**2 + 12.D0*mi(49)*i1r15**3*i1r15r25*rgl**2*rsq1r
     &     - 4.D0*mi(49)*i1r15**3*i1r15r25*rgl**3 - 2.D0*mi(49)*
     &    i1r15**3*i1r15r25**2*rsq1r**3 + 6.D0*mi(49)*i1r15**3*
     &    i1r15r25**2*rgl*rsq1r**2 - 6.D0*mi(49)*i1r15**3*i1r15r25**2*
     &    rgl**2*rsq1r + 2.D0*mi(49)*i1r15**3*i1r15r25**2*rgl**3 - 6.D0
     &    *mi(49)*i1r15**4*i1r15r25*rsq1r**3 + 18.D0*mi(49)*i1r15**4*
     &    i1r15r25*rgl*rsq1r**2 - 18.D0*mi(49)*i1r15**4*i1r15r25*rgl**2
     &    *rsq1r + 6.D0*mi(49)*i1r15**4*i1r15r25*rgl**3 + 2.D0*mi(49)*
     &    r15*i1r15r25**2*rsq1r - 2.D0*mi(49)*r15*i1r15r25**2*rgl )

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

      e =  + Nc**(-1)*s125**(-1) * (  - mi(18)*r15**(-1)*i1r15r25*
     &    rsq1l**(-1) + mi(18)*r15**(-1)*i1r15r25**2*rsq1l**(-1) - 2.D0
     &    *mi(18)*r15**(-1)*i1r15r25**2*rgl*rsq1l**(-1) + 2.D0*mi(18)*
     &    r25**(-2)*i1r15*rgl*rsq1l**(-1) - 2.D0*mi(18)*r25**(-2)*
     &    i1r15**2*rgl*rsq1l**(-1) - mi(18)*r25**(-1)*i1r15*rsq1l**(-1)
     &     + mi(18)*r25**(-1)*i1r15**2*rsq1l**(-1) - 4.D0*mi(18)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l**(-1) - mi(18)*i1r15*i1r15r25*
     &    rsq1l**(-1) + mi(18)*i1r15*i1r15r25**2*rsq1l**(-1) - 2.D0*mi(
     &    18)*i1r15*i1r15r25**2*rgl*rsq1l**(-1) + mi(18)*i1r15**2*
     &    i1r15r25*rsq1l**(-1) - 2.D0*mi(18)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1l**(-1) - 4.D0*mi(18)*i1r15**3*i1r15r25*rgl*rsq1l**(-1)
     &     + 1/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25 - 4.D0/(rsq1l - 
     &    rgl)*mi(18)*r15**(-1)*i1r15r25*rgl*rsq1l**(-1) - 1/(rsq1l - 
     &    rgl)*mi(18)*r15**(-1)*i1r15r25**2 + 2.D0/(rsq1l - rgl)*mi(18)
     &    *r15**(-1)*i1r15r25**2*rgl - 4.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25**2*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl + 4.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2*rgl - 4.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15 - 4.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*
     &    rgl*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2
     &     + 4.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl - 8.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2*rsq1l**(-1) + 
     &    1/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25 - 4.D0/(rsq1l - rgl)*
     &    mi(18)*i1r15*i1r15r25*rgl*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18
     &    )*i1r15*i1r15r25**2 + 2.D0/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25**2*rgl - 4.D0/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2
     &    *rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25 + 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl
     &     - 4.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 4.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**3*i1r15r25*rgl - 8.D0/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25*rgl**2*rsq1l**(-1) + 3.D0/(rsq1l - rgl)/(rsq1l - rgl
     &    )*mi(18)*r15**(-1)*i1r15r25*rgl - 3.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl**2*rsq1l**(-1) + 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl
     &     - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2
     &    *rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)
     &    *r15**(-1)*i1r15r25**2*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl**3*rsq1l**(-1) - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**2 + 2.D
     &    0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**3*
     &    rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15**2*rgl**3*rsq1l**(-1) + 3.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 3.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15*rgl**2*rsq1l**(-1) + 1/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl - 1/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2*
     &    rsq1l**(-1) + 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**3*rgl**2 - 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-1)*i1r15**3*rgl**3*rsq1l**(-1) + 3.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl - 3.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl**2*rsq1l**(-1)
     &     + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl
     &     - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*
     &    rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15*i1r15r25**2*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15*i1r15r25**2*rgl**3*rsq1l**(-1) + 1/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl - 1/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**2*i1r15r25**2*rgl**2 - 2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**3*rsq1l**(-1)
     &     + 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*
     &    rgl**2 - 4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25*rgl**3*rsq1l**(-1) )

      gcoeffarr(aa21,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(aa21,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*i1r25 + 2.
     &    D0*mi(17)*r25**(-1)*i1r15 + 3.D0/2.D0*mi(18)*r15**(-2)*
     &    rsq1l**(-1) - 2.D0*mi(18)*r15**(-2)*i1r15r25*rsq1l**(-1) + 2.D
     &    0*mi(18)*r15**(-2)*i1r15r25*rgl*rsq1l**(-1) + 1.D0/2.D0*mi(18
     &    )*r15**(-2)*i1r15r25**2*rsq1l**(-1) - 2.D0*mi(18)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l**(-1) + 2.D0*mi(18)*r15**(-1)*i1r25 - 1.
     &    D0/2.D0*mi(18)*r25**(-2)*rsq1l**(-1) + mi(18)*r25**(-2)*i1r15
     &    *rsq1l**(-1) - 2.D0*mi(18)*r25**(-2)*i1r15*rgl*rsq1l**(-1) - 
     &    1.D0/2.D0*mi(18)*r25**(-2)*i1r15**2*rsq1l**(-1) + 2.D0*mi(18)
     &    *r25**(-2)*i1r15**2*rgl*rsq1l**(-1) - 2.D0*mi(18)*r25**(-1)*
     &    i1r15 + mi(18)*r25**(-1)*i1r15**2*rsq1l**(-1) - 2.D0*mi(18)*
     &    r25**(-1)*i1r15**2*rgl*rsq1l**(-1) - mi(18)*r25**(-1)*
     &    i1r15**3*rsq1l**(-1) + 4.D0*mi(18)*r25**(-1)*i1r15**3*rgl*
     &    rsq1l**(-1) + mi(18)*i1r15**2*i1r15r25*rsq1l**(-1) - 2.D0*mi(
     &    18)*i1r15**2*i1r15r25*rgl*rsq1l**(-1) - 1.D0/2.D0*mi(18)*
     &    i1r15**2*i1r15r25**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0*mi(18)*i1r15**2*i1r15r25**2*
     &    rgl*rsq1l**(-1) - mi(18)*i1r15**3*i1r15r25*rsq1l**(-1) + 4.D0
     &    *mi(18)*i1r15**3*i1r15r25*rgl*rsq1l**(-1) - 3.D0/2.D0/(rsq1l
     &     - rgl)*mi(18)*r15**(-2) + 3.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*rgl*rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25 - 3.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25*rgl*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25*rgl + 3.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25*rgl**2*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25**2 + 2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25**2*rgl - 3.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)*mi(
     &    18)*r25**(-2) - 2.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15 + 2.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl*rsq1l**(-1) + 2.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 3.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15**2 - 2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2*rgl + 3.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2 + 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl - 3.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**2*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**3 - 4.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**3*rgl + 6.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*
     &    rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25
     &     + 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl*
     &    rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl
     &     - 3.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25**2 - 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl + 3.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*
     &    i1r15**3*i1r15r25 - 4.D0/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25*rgl + 6.D0/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1l**(-1) - 3.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*rgl + 3.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2*rsq1l**(-1) - 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*
     &    rgl**2 + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25*rgl**3*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl - 1.D0/2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r15**(-2)*i1r15r25**2*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**3*rsq1l**(-1) + 3.D0/2.
     &    D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl - 3.D0/2.D
     &    0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl**2*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*i1r15*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15*rgl**3*rsq1l**(-1) - 1.D0/2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl + 1.D0/2.D
     &    0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2*rgl**2 + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*i1r15**2*rgl**3*rsq1l**(-1) - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2 - 1/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**3*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**3*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)
     &    *i1r15**3*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2 + 2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**3*rsq1l**(-1) - 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl + 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2
     &    *rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25*rgl**3*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl
     &    )/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl + 1.D0/2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**2
     &    *rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**2*i1r15r25**2*rgl**2 + 1/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**3*rsq1l**(-1) - 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl + 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**3*i1r15r25*rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**3*i1r15r25*rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1) * ( 2.D0*mi(20)*r15**(-2)*i1r15r25*rsq1l - 2.D0*
     &    mi(20)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(20)*r15**(-2)*i1r25*
     &    rsq1l + 2.D0*mi(20)*r15**(-2)*i1r25*rgl + 2.D0*mi(20)*
     &    r15**(-1)*r25**(-1) + 2.D0*mi(20)*r15**(-1)*i1r25 - 4.D0*mi(
     &    20)*r15**(-1)*i1r25**2*rsq1l + 4.D0*mi(20)*r15**(-1)*i1r25**2
     &    *rgl + 2.D0*mi(20)*r25**(-1)*i1r15**2*rsq1l - 2.D0*mi(20)*
     &    r25**(-1)*i1r15**2*rgl - 2.D0*mi(20)*i1r15**2*i1r15r25*rsq1l
     &     + 2.D0*mi(20)*i1r15**2*i1r15r25*rgl - 2.D0*mi(22)*r15**(-1)*
     &    r25**(-1) - 2.D0*mi(24)*r15**(-1)*i1r15r25*rsq1l + 2.D0*mi(24
     &    )*r15**(-1)*i1r15r25*rgl - 2.D0*mi(24)*r25**(-1)*i1r15**2*
     &    rsq1l + 2.D0*mi(24)*r25**(-1)*i1r15**2*rgl - 2.D0*mi(24)*
     &    i1r15*i1r15r25*rsq1l + 2.D0*mi(24)*i1r15*i1r15r25*rgl + 2.D0*
     &    mi(24)*i1r15**2*i1r15r25*rsq1l - 2.D0*mi(24)*i1r15**2*
     &    i1r15r25*rgl - 2.D0*mi(26)*r15**(-2)*i1r15r25*rsq1l + 2.D0*
     &    mi(26)*r15**(-2)*i1r15r25*rgl + 2.D0*mi(26)*r15**(-2)*i1r25*
     &    rsq1l )
      e = e  + Nc**(-1) * (  - 2.D0*mi(26)*r15**(-2)*i1r25*rgl + 2.D0*
     &    mi(26)*r15**(-1)*i1r15r25*rsq1l - 2.D0*mi(26)*r15**(-1)*
     &    i1r15r25*rgl - 2.D0*mi(26)*r15**(-1)*i1r25 - 2.D0*mi(26)*
     &    r15**(-1)*i1r25*rsq1l + 2.D0*mi(26)*r15**(-1)*i1r25*rgl + 4.D0
     &    *mi(26)*r15**(-1)*i1r25**2*rsq1l - 4.D0*mi(26)*r15**(-1)*
     &    i1r25**2*rgl + 2.D0*mi(26)*r25**(-1)*i1r15*rsq1l - 2.D0*mi(26
     &    )*r25**(-1)*i1r15*rgl + 2.D0*mi(26)*i1r15*i1r15r25*rsq1l - 2.D
     &    0*mi(26)*i1r15*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125 * (  - mi(28)*r15**(-2) + 2.D0*mi(28)*
     &    r15**(-2)*rsq1l - 2.D0*mi(28)*r15**(-2)*rgl + mi(28)*
     &    r15**(-2)*r25 + mi(28)*r15**(-1) - mi(32)*r15**(-1)*
     &    i1r15r25**2*rsq1l**2 + 2.D0*mi(32)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1l - mi(32)*r15**(-1)*i1r15r25**2*rgl**2 + mi(32)*
     &    r25**(-2)*rsq1l - mi(32)*r25**(-2)*rgl - mi(32)*r25**(-2)*
     &    i1r15*rsq1l - mi(32)*r25**(-2)*i1r15*rsq1l**2 + mi(32)*
     &    r25**(-2)*i1r15*rgl + 2.D0*mi(32)*r25**(-2)*i1r15*rgl*rsq1l
     &     - mi(32)*r25**(-2)*i1r15*rgl**2 + mi(32)*r25**(-2)*i1r15**2*
     &    rsq1l**2 - 2.D0*mi(32)*r25**(-2)*i1r15**2*rgl*rsq1l + mi(32)*
     &    r25**(-2)*i1r15**2*rgl**2 + mi(32)*r25**(-1)*i1r15*rsq1l - 
     &    mi(32)*r25**(-1)*i1r15*rgl - mi(32)*r25**(-1)*i1r15**2*rsq1l
     &     - 2.D0*mi(32)*r25**(-1)*i1r15**2*rsq1l**2 + mi(32)*r25**(-1)
     &    *i1r15**2*rgl + 4.D0*mi(32)*r25**(-1)*i1r15**2*rgl*rsq1l - 2.D
     &    0*mi(32)*r25**(-1)*i1r15**2*rgl**2 + 2.D0*mi(32)*r25**(-1)*
     &    i1r15**3*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(32)*r25**(-1)*i1r15**3*rgl*
     &    rsq1l + 2.D0*mi(32)*r25**(-1)*i1r15**3*rgl**2 + mi(32)*i1r15*
     &    i1r15r25*rsq1l - mi(32)*i1r15*i1r15r25*rgl - mi(32)*i1r15*
     &    i1r15r25**2*rsq1l**2 + 2.D0*mi(32)*i1r15*i1r15r25**2*rgl*
     &    rsq1l - mi(32)*i1r15*i1r15r25**2*rgl**2 - mi(32)*i1r15**2*
     &    i1r15r25*rsq1l - 2.D0*mi(32)*i1r15**2*i1r15r25*rsq1l**2 + mi(
     &    32)*i1r15**2*i1r15r25*rgl + 4.D0*mi(32)*i1r15**2*i1r15r25*rgl
     &    *rsq1l - 2.D0*mi(32)*i1r15**2*i1r15r25*rgl**2 + mi(32)*
     &    i1r15**2*i1r15r25**2*rsq1l**2 - 2.D0*mi(32)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l + mi(32)*i1r15**2*i1r15r25**2*rgl**2 + 
     &    2.D0*mi(32)*i1r15**3*i1r15r25*rsq1l**2 - 4.D0*mi(32)*i1r15**3
     &    *i1r15r25*rgl*rsq1l + 2.D0*mi(32)*i1r15**3*i1r15r25*rgl**2 - 
     &    2.D0*mi(36)*r15**(-2)*rsq1l + 2.D0*mi(36)*r15**(-2)*rgl + 2.D0
     &    *mi(36)*r15**(-2)*i1r15r25*rsq1l + mi(36)*r15**(-2)*i1r15r25*
     &    rsq1l**2 - 2.D0*mi(36)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(36)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * ( mi(36)*r15**(-2)*i1r15r25*rgl**2 - mi(
     &    36)*r15**(-2)*i1r15r25**2*rsq1l**2 + 2.D0*mi(36)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l - mi(36)*r15**(-2)*i1r15r25**2*rgl**2
     &     - mi(36)*r15**(-2)*r25 - 2.D0*mi(36)*r15**(-1)*i1r15r25*
     &    rsq1l + 2.D0*mi(36)*r15**(-1)*i1r15r25*rgl + mi(36)*r15**(-1)
     &    *i1r15r25**2*rsq1l**2 - 2.D0*mi(36)*r15**(-1)*i1r15r25**2*rgl
     &    *rsq1l + mi(36)*r15**(-1)*i1r15r25**2*rgl**2 - mi(36)*
     &    r25**(-1)*i1r15*rsq1l + mi(36)*r25**(-1)*i1r15*rgl + mi(36)*
     &    r25**(-1)*i1r15**2*rsq1l**2 - 2.D0*mi(36)*r25**(-1)*i1r15**2*
     &    rgl*rsq1l + mi(36)*r25**(-1)*i1r15**2*rgl**2 - mi(36)*i1r15*
     &    i1r15r25*rsq1l + mi(36)*i1r15*i1r15r25*rgl + mi(36)*i1r15*
     &    i1r15r25**2*rsq1l**2 - 2.D0*mi(36)*i1r15*i1r15r25**2*rgl*
     &    rsq1l + mi(36)*i1r15*i1r15r25**2*rgl**2 + mi(36)*i1r15**2*
     &    i1r15r25*rsq1l**2 - 2.D0*mi(36)*i1r15**2*i1r15r25*rgl*rsq1l
     &     + mi(36)*i1r15**2*i1r15r25*rgl**2 + 2.D0*mi(38)*r15**(-2)*
     &    rsq1l )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(38)*r15**(-2)*rgl - 2.D0*mi(
     &    38)*r15**(-2)*i1r15r25*rsq1l - 2.D0*mi(38)*r15**(-2)*i1r15r25
     &    *rsq1l**2 + 2.D0*mi(38)*r15**(-2)*i1r15r25*rgl + 4.D0*mi(38)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l - 2.D0*mi(38)*r15**(-2)*i1r15r25
     &    *rgl**2 + 2.D0*mi(38)*r15**(-2)*i1r15r25**2*rsq1l**2 - 4.D0*
     &    mi(38)*r15**(-2)*i1r15r25**2*rgl*rsq1l + 2.D0*mi(38)*
     &    r15**(-2)*i1r15r25**2*rgl**2 + mi(38)*r15**(-2)*r25 + mi(38)*
     &    r15**(-1) - 2.D0*mi(38)*r25**(-2)*rsq1l + 2.D0*mi(38)*
     &    r25**(-2)*rgl + 2.D0*mi(38)*r25**(-2)*i1r15*rsq1l + 2.D0*mi(
     &    38)*r25**(-2)*i1r15*rsq1l**2 - 2.D0*mi(38)*r25**(-2)*i1r15*
     &    rgl - 4.D0*mi(38)*r25**(-2)*i1r15*rgl*rsq1l + 2.D0*mi(38)*
     &    r25**(-2)*i1r15*rgl**2 - 2.D0*mi(38)*r25**(-2)*i1r15**2*
     &    rsq1l**2 + 4.D0*mi(38)*r25**(-2)*i1r15**2*rgl*rsq1l - 2.D0*
     &    mi(38)*r25**(-2)*i1r15**2*rgl**2 + 2.D0*mi(38)*r25**(-1)*
     &    i1r15**2*rsq1l + 2.D0*mi(38)*r25**(-1)*i1r15**2*rsq1l**2 - 2.D
     &    0*mi(38)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(38)*r25**(-1)*i1r15**2*rgl*
     &    rsq1l + 2.D0*mi(38)*r25**(-1)*i1r15**2*rgl**2 - 4.D0*mi(38)*
     &    r25**(-1)*i1r15**3*rsq1l**2 + 8.D0*mi(38)*r25**(-1)*i1r15**3*
     &    rgl*rsq1l - 4.D0*mi(38)*r25**(-1)*i1r15**3*rgl**2 + 2.D0*mi(
     &    38)*i1r15**2*i1r15r25*rsq1l + 2.D0*mi(38)*i1r15**2*i1r15r25*
     &    rsq1l**2 - 2.D0*mi(38)*i1r15**2*i1r15r25*rgl - 4.D0*mi(38)*
     &    i1r15**2*i1r15r25*rgl*rsq1l + 2.D0*mi(38)*i1r15**2*i1r15r25*
     &    rgl**2 - 2.D0*mi(38)*i1r15**2*i1r15r25**2*rsq1l**2 + 4.D0*mi(
     &    38)*i1r15**2*i1r15r25**2*rgl*rsq1l - 2.D0*mi(38)*i1r15**2*
     &    i1r15r25**2*rgl**2 - 4.D0*mi(38)*i1r15**3*i1r15r25*rsq1l**2
     &     + 8.D0*mi(38)*i1r15**3*i1r15r25*rgl*rsq1l - 4.D0*mi(38)*
     &    i1r15**3*i1r15r25*rgl**2 - mi(40)*r15**(-2)*i1r15r25**2*
     &    rsq1l**2 + 2.D0*mi(40)*r15**(-2)*i1r15r25**2*rgl*rsq1l - mi(
     &    40)*r15**(-2)*i1r15r25**2*rgl**2 + mi(40)*r15**(-1)*
     &    i1r15r25**2*rsq1l**2 - 2.D0*mi(40)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1l )
      e = e  + Nc**(-1)*s125 * ( mi(40)*r15**(-1)*i1r15r25**2*rgl**2 + 
     &    mi(40)*r25**(-2)*rsq1l - mi(40)*r25**(-2)*rgl - mi(40)*
     &    r25**(-2)*i1r15*rsq1l**2 + 2.D0*mi(40)*r25**(-2)*i1r15*rgl*
     &    rsq1l - mi(40)*r25**(-2)*i1r15*rgl**2 + mi(40)*r25**(-1)*
     &    i1r15*rsq1l - mi(40)*r25**(-1)*i1r15*rgl - 2.D0*mi(40)*
     &    r25**(-1)*i1r15**2*rsq1l**2 + 4.D0*mi(40)*r25**(-1)*i1r15**2*
     &    rgl*rsq1l - 2.D0*mi(40)*r25**(-1)*i1r15**2*rgl**2 - mi(40)*
     &    i1r15*i1r15r25*rsq1l + mi(40)*i1r15*i1r15r25*rgl + mi(40)*
     &    i1r15*i1r15r25**2*rsq1l**2 - 2.D0*mi(40)*i1r15*i1r15r25**2*
     &    rgl*rsq1l + mi(40)*i1r15*i1r15r25**2*rgl**2 + 2.D0*mi(40)*
     &    i1r15**2*i1r15r25*rsq1l**2 - 4.D0*mi(40)*i1r15**2*i1r15r25*
     &    rgl*rsq1l + 2.D0*mi(40)*i1r15**2*i1r15r25*rgl**2 + mi(42)*
     &    r15**(-2) - 2.D0*mi(42)*r15**(-2)*rsq1l + 2.D0*mi(42)*
     &    r15**(-2)*rgl - mi(42)*r15**(-2)*i1r15r25*rsq1l**2 + 2.D0*mi(
     &    42)*r15**(-2)*i1r15r25*rgl*rsq1l - mi(42)*r15**(-2)*i1r15r25*
     &    rgl**2 )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(42)*r15**(-2)*i1r25*rsq1l**2 - 
     &    4.D0*mi(42)*r15**(-2)*i1r25*rgl*rsq1l + 2.D0*mi(42)*r15**(-2)
     &    *i1r25*rgl**2 - mi(42)*r15**(-2)*r25 + 2.D0*mi(42)*r15**(-1)*
     &    i1r15r25*rsq1l - 2.D0*mi(42)*r15**(-1)*i1r15r25*rgl - mi(42)*
     &    r15**(-1)*i1r15r25**2*rsq1l**2 + 2.D0*mi(42)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1l - mi(42)*r15**(-1)*i1r15r25**2*rgl**2
     &     - 4.D0*mi(42)*r15**(-1)*i1r25*rsq1l + 4.D0*mi(42)*r15**(-1)*
     &    i1r25*rgl + 4.D0*mi(42)*r15**(-1)*i1r25**2*rsq1l**2 - 8.D0*
     &    mi(42)*r15**(-1)*i1r25**2*rgl*rsq1l + 4.D0*mi(42)*r15**(-1)*
     &    i1r25**2*rgl**2 - mi(42)*r25**(-2)*i1r15*rsq1l + mi(42)*
     &    r25**(-2)*i1r15*rgl + mi(42)*r25**(-2)*i1r15**2*rsq1l**2 - 2.D
     &    0*mi(42)*r25**(-2)*i1r15**2*rgl*rsq1l + mi(42)*r25**(-2)*
     &    i1r15**2*rgl**2 + mi(42)*r25**(-1)*i1r15*rsq1l - mi(42)*
     &    r25**(-1)*i1r15*rgl - mi(42)*r25**(-1)*i1r15**2*rsq1l - mi(42
     &    )*r25**(-1)*i1r15**2*rsq1l**2 + mi(42)*r25**(-1)*i1r15**2*rgl
     &     + 2.D0*mi(42)*r25**(-1)*i1r15**2*rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * (  - mi(42)*r25**(-1)*i1r15**2*rgl**2 + 2.
     &    D0*mi(42)*r25**(-1)*i1r15**3*rsq1l**2 - 4.D0*mi(42)*r25**(-1)
     &    *i1r15**3*rgl*rsq1l + 2.D0*mi(42)*r25**(-1)*i1r15**3*rgl**2
     &     + mi(42)*i1r15*i1r15r25*rsq1l - mi(42)*i1r15*i1r15r25*rgl - 
     &    mi(42)*i1r15*i1r15r25**2*rsq1l**2 + 2.D0*mi(42)*i1r15*
     &    i1r15r25**2*rgl*rsq1l - mi(42)*i1r15*i1r15r25**2*rgl**2 - mi(
     &    42)*i1r15**2*i1r15r25*rsq1l - mi(42)*i1r15**2*i1r15r25*
     &    rsq1l**2 + mi(42)*i1r15**2*i1r15r25*rgl + 2.D0*mi(42)*
     &    i1r15**2*i1r15r25*rgl*rsq1l - mi(42)*i1r15**2*i1r15r25*rgl**2
     &     + mi(42)*i1r15**2*i1r15r25**2*rsq1l**2 - 2.D0*mi(42)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1l + mi(42)*i1r15**2*i1r15r25**2*
     &    rgl**2 + 2.D0*mi(42)*i1r15**3*i1r15r25*rsq1l**2 - 4.D0*mi(42)
     &    *i1r15**3*i1r15r25*rgl*rsq1l + 2.D0*mi(42)*i1r15**3*i1r15r25*
     &    rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( mi(44)*r15**(-2)*i1r15r25*rsq1l**3
     &     - 3.D0*mi(44)*r15**(-2)*i1r15r25*rgl*rsq1l**2 + 3.D0*mi(44)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1l - mi(44)*r15**(-2)*i1r15r25*
     &    rgl**3 - mi(44)*r15**(-2)*i1r15r25**2*rsq1l**3 + 3.D0*mi(44)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1l**2 - 3.D0*mi(44)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1l + mi(44)*r15**(-2)*i1r15r25**2*
     &    rgl**3 - mi(44)*r15**(-1)*i1r15r25*rsq1l**2 + mi(44)*
     &    r15**(-1)*i1r15r25*rgl**2 + 2.D0*mi(44)*r25**(-2)*rsq1l**2 - 
     &    4.D0*mi(44)*r25**(-2)*rgl*rsq1l + 2.D0*mi(44)*r25**(-2)*
     &    rgl**2 - 2.D0*mi(44)*r25**(-2)*i1r15*rsq1l**2 - mi(44)*
     &    r25**(-2)*i1r15*rsq1l**3 + 4.D0*mi(44)*r25**(-2)*i1r15*rgl*
     &    rsq1l + 3.D0*mi(44)*r25**(-2)*i1r15*rgl*rsq1l**2 - 2.D0*mi(44
     &    )*r25**(-2)*i1r15*rgl**2 - 3.D0*mi(44)*r25**(-2)*i1r15*rgl**2
     &    *rsq1l + mi(44)*r25**(-2)*i1r15*rgl**3 + mi(44)*r25**(-2)*
     &    i1r15**2*rsq1l**3 - 3.D0*mi(44)*r25**(-2)*i1r15**2*rgl*
     &    rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(44)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1l - mi(44)*r25**(-2)*i1r15**2*rgl**3 + 3.D0*mi(44)
     &    *r25**(-1)*i1r15*rsq1l**2 - 4.D0*mi(44)*r25**(-1)*i1r15*rgl*
     &    rsq1l + mi(44)*r25**(-1)*i1r15*rgl**2 - 2.D0*mi(44)*r25**(-1)
     &    *i1r15**2*rsq1l**2 - mi(44)*r25**(-1)*i1r15**2*rsq1l**3 + 4.D0
     &    *mi(44)*r25**(-1)*i1r15**2*rgl*rsq1l + 3.D0*mi(44)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l**2 - 2.D0*mi(44)*r25**(-1)*i1r15**2*rgl**2
     &     - 3.D0*mi(44)*r25**(-1)*i1r15**2*rgl**2*rsq1l + mi(44)*
     &    r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(44)*r25**(-1)*i1r15**3*
     &    rsq1l**3 - 6.D0*mi(44)*r25**(-1)*i1r15**3*rgl*rsq1l**2 + 6.D0
     &    *mi(44)*r25**(-1)*i1r15**3*rgl**2*rsq1l - 2.D0*mi(44)*
     &    r25**(-1)*i1r15**3*rgl**3 + 3.D0*mi(44)*i1r15*i1r15r25*
     &    rsq1l**2 - 4.D0*mi(44)*i1r15*i1r15r25*rgl*rsq1l + mi(44)*
     &    i1r15*i1r15r25*rgl**2 - 2.D0*mi(44)*i1r15**2*i1r15r25*
     &    rsq1l**2 - mi(44)*i1r15**2*i1r15r25*rsq1l**3 + 4.D0*mi(44)*
     &    i1r15**2*i1r15r25*rgl*rsq1l )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(44)*i1r15**2*i1r15r25*rgl*
     &    rsq1l**2 - 2.D0*mi(44)*i1r15**2*i1r15r25*rgl**2 - 3.D0*mi(44)
     &    *i1r15**2*i1r15r25*rgl**2*rsq1l + mi(44)*i1r15**2*i1r15r25*
     &    rgl**3 + mi(44)*i1r15**2*i1r15r25**2*rsq1l**3 - 3.D0*mi(44)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1l**2 + 3.D0*mi(44)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1l - mi(44)*i1r15**2*i1r15r25**2*rgl**3
     &     + 2.D0*mi(44)*i1r15**3*i1r15r25*rsq1l**3 - 6.D0*mi(44)*
     &    i1r15**3*i1r15r25*rgl*rsq1l**2 + 6.D0*mi(44)*i1r15**3*
     &    i1r15r25*rgl**2*rsq1l - 2.D0*mi(44)*i1r15**3*i1r15r25*rgl**3
     &     + mi(44)*r15*r25**(-2)*rsq1l - mi(44)*r15*r25**(-2)*rgl - 3.D
     &    0*mi(46)*r15**(-2)*rsq1l**2 + 6.D0*mi(46)*r15**(-2)*rgl*rsq1l
     &     - 3.D0*mi(46)*r15**(-2)*rgl**2 + 3.D0*mi(46)*r15**(-2)*
     &    i1r15r25*rsq1l**2 + mi(46)*r15**(-2)*i1r15r25*rsq1l**3 - 6.D0
     &    *mi(46)*r15**(-2)*i1r15r25*rgl*rsq1l - 3.D0*mi(46)*r15**(-2)*
     &    i1r15r25*rgl*rsq1l**2 + 3.D0*mi(46)*r15**(-2)*i1r15r25*rgl**2
     &     + 3.D0*mi(46)*r15**(-2)*i1r15r25*rgl**2*rsq1l )
      e = e  + Nc**(-1)*s125**2 * (  - mi(46)*r15**(-2)*i1r15r25*rgl**3
     &     - mi(46)*r15**(-2)*i1r15r25**2*rsq1l**3 + 3.D0*mi(46)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1l**2 - 3.D0*mi(46)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1l + mi(46)*r15**(-2)*i1r15r25**2*
     &    rgl**3 + mi(46)*r15**(-2)*r25 - 3.D0*mi(46)*r15**(-2)*r25*
     &    rsq1l + 3.D0*mi(46)*r15**(-2)*r25*rgl - mi(46)*r15**(-2)*
     &    r25**2 + mi(46)*r15**(-1)*rsq1l + mi(46)*r15**(-1)*rgl - 3.D0
     &    *mi(46)*r15**(-1)*i1r15r25*rsq1l**2 + 4.D0*mi(46)*r15**(-1)*
     &    i1r15r25*rgl*rsq1l - mi(46)*r15**(-1)*i1r15r25*rgl**2 - mi(46
     &    )*r15**(-1)*r25 + mi(46)*r25**(-2)*rsq1l**2 - 2.D0*mi(46)*
     &    r25**(-2)*rgl*rsq1l + mi(46)*r25**(-2)*rgl**2 - mi(46)*
     &    r25**(-2)*i1r15*rsq1l**2 - mi(46)*r25**(-2)*i1r15*rsq1l**3 + 
     &    2.D0*mi(46)*r25**(-2)*i1r15*rgl*rsq1l + 3.D0*mi(46)*r25**(-2)
     &    *i1r15*rgl*rsq1l**2 - mi(46)*r25**(-2)*i1r15*rgl**2 - 3.D0*
     &    mi(46)*r25**(-2)*i1r15*rgl**2*rsq1l + mi(46)*r25**(-2)*i1r15*
     &    rgl**3 )
      e = e  + Nc**(-1)*s125**2 * ( mi(46)*r25**(-2)*i1r15**2*rsq1l**3
     &     - 3.D0*mi(46)*r25**(-2)*i1r15**2*rgl*rsq1l**2 + 3.D0*mi(46)*
     &    r25**(-2)*i1r15**2*rgl**2*rsq1l - mi(46)*r25**(-2)*i1r15**2*
     &    rgl**3 - mi(46)*r25**(-1)*rsq1l - mi(46)*r25**(-1)*rgl + mi(
     &    46)*r25**(-1)*i1r15*rsq1l**2 - mi(46)*r25**(-1)*i1r15*rgl**2
     &     - mi(46)*r25**(-1)*i1r15**2*rsq1l**2 - mi(46)*r25**(-1)*
     &    i1r15**2*rsq1l**3 + 2.D0*mi(46)*r25**(-1)*i1r15**2*rgl*rsq1l
     &     + 3.D0*mi(46)*r25**(-1)*i1r15**2*rgl*rsq1l**2 - mi(46)*
     &    r25**(-1)*i1r15**2*rgl**2 - 3.D0*mi(46)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1l + mi(46)*r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(46)
     &    *r25**(-1)*i1r15**3*rsq1l**3 - 6.D0*mi(46)*r25**(-1)*i1r15**3
     &    *rgl*rsq1l**2 + 6.D0*mi(46)*r25**(-1)*i1r15**3*rgl**2*rsq1l
     &     - 2.D0*mi(46)*r25**(-1)*i1r15**3*rgl**3 + mi(46)*i1r15*
     &    i1r15r25*rsq1l**2 - mi(46)*i1r15*i1r15r25*rgl**2 - mi(46)*
     &    i1r15**2*i1r15r25*rsq1l**2 - mi(46)*i1r15**2*i1r15r25*
     &    rsq1l**3 )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(46)*i1r15**2*i1r15r25*rgl*
     &    rsq1l + 3.D0*mi(46)*i1r15**2*i1r15r25*rgl*rsq1l**2 - mi(46)*
     &    i1r15**2*i1r15r25*rgl**2 - 3.D0*mi(46)*i1r15**2*i1r15r25*
     &    rgl**2*rsq1l + mi(46)*i1r15**2*i1r15r25*rgl**3 + mi(46)*
     &    i1r15**2*i1r15r25**2*rsq1l**3 - 3.D0*mi(46)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l**2 + 3.D0*mi(46)*i1r15**2*i1r15r25**2*
     &    rgl**2*rsq1l - mi(46)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(
     &    46)*i1r15**3*i1r15r25*rsq1l**3 - 6.D0*mi(46)*i1r15**3*
     &    i1r15r25*rgl*rsq1l**2 + 6.D0*mi(46)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1l - 2.D0*mi(46)*i1r15**3*i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*i1r25 - 2.D0*mi(
     &    17)*r25**(-1)*i1r15 - 2.D0*mi(18)*r15**(-1)*i1r25 + 2.D0*mi(
     &    18)*r25**(-1)*i1r15 )
      e = e  + Nc * (  - 2.D0*mi(20)*r15**(-2)*i1r15r25*rsq1l + 2.D0*mi(
     &    20)*r15**(-2)*i1r15r25*rgl + 2.D0*mi(20)*r15**(-2)*i1r25*
     &    rsq1l - 2.D0*mi(20)*r15**(-2)*i1r25*rgl + 2.D0*mi(20)*
     &    r15**(-1)*i1r15r25 - 2.D0*mi(20)*r15**(-1)*i1r25 + 4.D0*mi(20
     &    )*r15**(-1)*i1r25**2*rsq1l - 4.D0*mi(20)*r15**(-1)*i1r25**2*
     &    rgl + 2.D0*mi(20)*r25**(-1)*i1r15 - 2.D0*mi(20)*r25**(-1)*
     &    i1r15**2*rsq1l + 2.D0*mi(20)*r25**(-1)*i1r15**2*rgl + 2.D0*
     &    mi(20)*i1r15*i1r15r25 + 2.D0*mi(20)*i1r15**2*i1r15r25*rsq1l
     &     - 2.D0*mi(20)*i1r15**2*i1r15r25*rgl + 2.D0*mi(24)*r15**(-1)*
     &    i1r15r25*rsq1l - 2.D0*mi(24)*r15**(-1)*i1r15r25*rgl - 2.D0*
     &    mi(24)*r25**(-1)*i1r15 + 2.D0*mi(24)*r25**(-1)*i1r15**2*rsq1l
     &     - 2.D0*mi(24)*r25**(-1)*i1r15**2*rgl - 2.D0*mi(24)*i1r15*
     &    i1r15r25 + 2.D0*mi(24)*i1r15*i1r15r25*rsq1l - 2.D0*mi(24)*
     &    i1r15*i1r15r25*rgl - 2.D0*mi(24)*i1r15**2*i1r15r25*rsq1l + 2.D
     &    0*mi(24)*i1r15**2*i1r15r25*rgl + 2.D0*mi(26)*r15**(-2)*
     &    i1r15r25*rsq1l )
      e = e  + Nc * (  - 2.D0*mi(26)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(26
     &    )*r15**(-2)*i1r25*rsq1l + 2.D0*mi(26)*r15**(-2)*i1r25*rgl - 2.
     &    D0*mi(26)*r15**(-1)*i1r15r25 - 2.D0*mi(26)*r15**(-1)*i1r15r25
     &    *rsq1l + 2.D0*mi(26)*r15**(-1)*i1r15r25*rgl + 2.D0*mi(26)*
     &    r15**(-1)*i1r25 + 2.D0*mi(26)*r15**(-1)*i1r25*rsq1l - 2.D0*
     &    mi(26)*r15**(-1)*i1r25*rgl - 4.D0*mi(26)*r15**(-1)*i1r25**2*
     &    rsq1l + 4.D0*mi(26)*r15**(-1)*i1r25**2*rgl - 2.D0*mi(26)*
     &    r25**(-1)*i1r15*rsq1l + 2.D0*mi(26)*r25**(-1)*i1r15*rgl - 2.D0
     &    *mi(26)*i1r15*i1r15r25*rsq1l + 2.D0*mi(26)*i1r15*i1r15r25*rgl
     &     )
      e = e  + Nc*s125 * (  - mi(30)*r15**(-1)*i1r15r25**2*rsq1l**2 + 2.D
     &    0*mi(30)*r15**(-1)*i1r15r25**2*rgl*rsq1l - mi(30)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + mi(30)*r25**(-2)*rsq1l - mi(30)*
     &    r25**(-2)*rgl - mi(30)*r25**(-2)*i1r15*rsq1l - mi(30)*
     &    r25**(-2)*i1r15*rsq1l**2 + mi(30)*r25**(-2)*i1r15*rgl + 2.D0*
     &    mi(30)*r25**(-2)*i1r15*rgl*rsq1l - mi(30)*r25**(-2)*i1r15*
     &    rgl**2 + mi(30)*r25**(-2)*i1r15**2*rsq1l**2 - 2.D0*mi(30)*
     &    r25**(-2)*i1r15**2*rgl*rsq1l + mi(30)*r25**(-2)*i1r15**2*
     &    rgl**2 + mi(30)*r25**(-1)*i1r15*rsq1l - mi(30)*r25**(-1)*
     &    i1r15*rgl - mi(30)*r25**(-1)*i1r15**2*rsq1l - 2.D0*mi(30)*
     &    r25**(-1)*i1r15**2*rsq1l**2 + mi(30)*r25**(-1)*i1r15**2*rgl
     &     + 4.D0*mi(30)*r25**(-1)*i1r15**2*rgl*rsq1l - 2.D0*mi(30)*
     &    r25**(-1)*i1r15**2*rgl**2 + 2.D0*mi(30)*r25**(-1)*i1r15**3*
     &    rsq1l**2 - 4.D0*mi(30)*r25**(-1)*i1r15**3*rgl*rsq1l + 2.D0*
     &    mi(30)*r25**(-1)*i1r15**3*rgl**2 + 2.D0*mi(30)*i1r15r25**2*
     &    rsq1l )
      e = e  + Nc*s125 * (  - 2.D0*mi(30)*i1r15r25**2*rgl + mi(30)*i1r15
     &    *i1r15r25*rsq1l - mi(30)*i1r15*i1r15r25*rgl - mi(30)*i1r15*
     &    i1r15r25**2*rsq1l**2 + 2.D0*mi(30)*i1r15*i1r15r25**2*rgl*
     &    rsq1l - mi(30)*i1r15*i1r15r25**2*rgl**2 - mi(30)*i1r15**2*
     &    i1r15r25*rsq1l - 2.D0*mi(30)*i1r15**2*i1r15r25*rsq1l**2 + mi(
     &    30)*i1r15**2*i1r15r25*rgl + 4.D0*mi(30)*i1r15**2*i1r15r25*rgl
     &    *rsq1l - 2.D0*mi(30)*i1r15**2*i1r15r25*rgl**2 + mi(30)*
     &    i1r15**2*i1r15r25**2*rsq1l**2 - 2.D0*mi(30)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l + mi(30)*i1r15**2*i1r15r25**2*rgl**2 + 
     &    2.D0*mi(30)*i1r15**3*i1r15r25*rsq1l**2 - 4.D0*mi(30)*i1r15**3
     &    *i1r15r25*rgl*rsq1l + 2.D0*mi(30)*i1r15**3*i1r15r25*rgl**2 - 
     &    mi(30)*r15*i1r15r25**2 + mi(34)*r15**(-2)*i1r15r25*rsq1l**2
     &     - 2.D0*mi(34)*r15**(-2)*i1r15r25*rgl*rsq1l + mi(34)*
     &    r15**(-2)*i1r15r25*rgl**2 - mi(34)*r15**(-2)*i1r15r25**2*
     &    rsq1l**2 + 2.D0*mi(34)*r15**(-2)*i1r15r25**2*rgl*rsq1l - mi(
     &    34)*r15**(-2)*i1r15r25**2*rgl**2 )
      e = e  + Nc*s125 * (  - 2.D0*mi(34)*r15**(-1)*i1r15r25*rsq1l + 2.D0
     &    *mi(34)*r15**(-1)*i1r15r25*rgl + 2.D0*mi(34)*r15**(-1)*
     &    i1r15r25**2*rsq1l + mi(34)*r15**(-1)*i1r15r25**2*rsq1l**2 - 2.
     &    D0*mi(34)*r15**(-1)*i1r15r25**2*rgl - 2.D0*mi(34)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1l + mi(34)*r15**(-1)*i1r15r25**2*rgl**2
     &     - mi(34)*r25**(-1)*i1r15*rsq1l + mi(34)*r25**(-1)*i1r15*rgl
     &     + mi(34)*r25**(-1)*i1r15**2*rsq1l**2 - 2.D0*mi(34)*r25**(-1)
     &    *i1r15**2*rgl*rsq1l + mi(34)*r25**(-1)*i1r15**2*rgl**2 + mi(
     &    34)*i1r15r25 - mi(34)*i1r15r25**2 - 2.D0*mi(34)*i1r15r25**2*
     &    rsq1l + 2.D0*mi(34)*i1r15r25**2*rgl - mi(34)*i1r15*i1r15r25*
     &    rsq1l + mi(34)*i1r15*i1r15r25*rgl + mi(34)*i1r15*i1r15r25**2*
     &    rsq1l**2 - 2.D0*mi(34)*i1r15*i1r15r25**2*rgl*rsq1l + mi(34)*
     &    i1r15*i1r15r25**2*rgl**2 + mi(34)*i1r15**2*i1r15r25*rsq1l**2
     &     - 2.D0*mi(34)*i1r15**2*i1r15r25*rgl*rsq1l + mi(34)*i1r15**2*
     &    i1r15r25*rgl**2 + mi(34)*r15*i1r15r25**2 + mi(40)*r15**(-2)*
     &    i1r15r25**2*rsq1l**2 )
      e = e  + Nc*s125 * (  - 2.D0*mi(40)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1l + mi(40)*r15**(-2)*i1r15r25**2*rgl**2 - 2.D0*mi(40)*
     &    r15**(-1)*i1r15r25**2*rsq1l - mi(40)*r15**(-1)*i1r15r25**2*
     &    rsq1l**2 + 2.D0*mi(40)*r15**(-1)*i1r15r25**2*rgl + 2.D0*mi(40
     &    )*r15**(-1)*i1r15r25**2*rgl*rsq1l - mi(40)*r15**(-1)*
     &    i1r15r25**2*rgl**2 - mi(40)*r25**(-2)*rsq1l + mi(40)*
     &    r25**(-2)*rgl + mi(40)*r25**(-2)*i1r15*rsq1l**2 - 2.D0*mi(40)
     &    *r25**(-2)*i1r15*rgl*rsq1l + mi(40)*r25**(-2)*i1r15*rgl**2 - 
     &    mi(40)*r25**(-1)*i1r15*rsq1l + mi(40)*r25**(-1)*i1r15*rgl + 2.
     &    D0*mi(40)*r25**(-1)*i1r15**2*rsq1l**2 - 4.D0*mi(40)*r25**(-1)
     &    *i1r15**2*rgl*rsq1l + 2.D0*mi(40)*r25**(-1)*i1r15**2*rgl**2
     &     + mi(40)*i1r15r25**2 + 2.D0*mi(40)*i1r15r25**2*rsq1l - 2.D0*
     &    mi(40)*i1r15r25**2*rgl + mi(40)*i1r15*i1r15r25*rsq1l - mi(40)
     &    *i1r15*i1r15r25*rgl - mi(40)*i1r15*i1r15r25**2*rsq1l**2 + 2.D0
     &    *mi(40)*i1r15*i1r15r25**2*rgl*rsq1l - mi(40)*i1r15*
     &    i1r15r25**2*rgl**2 )
      e = e  + Nc*s125 * (  - 2.D0*mi(40)*i1r15**2*i1r15r25*rsq1l**2 + 4.
     &    D0*mi(40)*i1r15**2*i1r15r25*rgl*rsq1l - 2.D0*mi(40)*i1r15**2*
     &    i1r15r25*rgl**2 - mi(40)*r15*i1r15r25**2 + mi(42)*r15**(-2)*
     &    i1r15r25*rsq1l**2 - 2.D0*mi(42)*r15**(-2)*i1r15r25*rgl*rsq1l
     &     + mi(42)*r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(42)*r15**(-2)*
     &    i1r25*rsq1l**2 + 4.D0*mi(42)*r15**(-2)*i1r25*rgl*rsq1l - 2.D0
     &    *mi(42)*r15**(-2)*i1r25*rgl**2 - 2.D0*mi(42)*r15**(-1)*
     &    i1r15r25*rsq1l + 2.D0*mi(42)*r15**(-1)*i1r15r25*rgl + mi(42)*
     &    r15**(-1)*i1r15r25**2*rsq1l**2 - 2.D0*mi(42)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1l + mi(42)*r15**(-1)*i1r15r25**2*rgl**2
     &     + 4.D0*mi(42)*r15**(-1)*i1r25*rsq1l - 4.D0*mi(42)*r15**(-1)*
     &    i1r25*rgl - 4.D0*mi(42)*r15**(-1)*i1r25**2*rsq1l**2 + 8.D0*
     &    mi(42)*r15**(-1)*i1r25**2*rgl*rsq1l - 4.D0*mi(42)*r15**(-1)*
     &    i1r25**2*rgl**2 + mi(42)*r25**(-2)*i1r15*rsq1l - mi(42)*
     &    r25**(-2)*i1r15*rgl - mi(42)*r25**(-2)*i1r15**2*rsq1l**2 + 2.D
     &    0*mi(42)*r25**(-2)*i1r15**2*rgl*rsq1l )
      e = e  + Nc*s125 * (  - mi(42)*r25**(-2)*i1r15**2*rgl**2 - mi(42)*
     &    r25**(-1)*i1r15*rsq1l + mi(42)*r25**(-1)*i1r15*rgl + mi(42)*
     &    r25**(-1)*i1r15**2*rsq1l + mi(42)*r25**(-1)*i1r15**2*rsq1l**2
     &     - mi(42)*r25**(-1)*i1r15**2*rgl - 2.D0*mi(42)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l + mi(42)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*
     &    mi(42)*r25**(-1)*i1r15**3*rsq1l**2 + 4.D0*mi(42)*r25**(-1)*
     &    i1r15**3*rgl*rsq1l - 2.D0*mi(42)*r25**(-1)*i1r15**3*rgl**2 + 
     &    mi(42)*i1r15r25 - 2.D0*mi(42)*i1r15r25**2*rsq1l + 2.D0*mi(42)
     &    *i1r15r25**2*rgl - mi(42)*i1r15*i1r15r25*rsq1l + mi(42)*i1r15
     &    *i1r15r25*rgl + mi(42)*i1r15*i1r15r25**2*rsq1l**2 - 2.D0*mi(
     &    42)*i1r15*i1r15r25**2*rgl*rsq1l + mi(42)*i1r15*i1r15r25**2*
     &    rgl**2 + mi(42)*i1r15**2*i1r15r25*rsq1l + mi(42)*i1r15**2*
     &    i1r15r25*rsq1l**2 - mi(42)*i1r15**2*i1r15r25*rgl - 2.D0*mi(42
     &    )*i1r15**2*i1r15r25*rgl*rsq1l + mi(42)*i1r15**2*i1r15r25*
     &    rgl**2 - mi(42)*i1r15**2*i1r15r25**2*rsq1l**2 + 2.D0*mi(42)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1l )
      e = e  + Nc*s125 * (  - mi(42)*i1r15**2*i1r15r25**2*rgl**2 - 2.D0*
     &    mi(42)*i1r15**3*i1r15r25*rsq1l**2 + 4.D0*mi(42)*i1r15**3*
     &    i1r15r25*rgl*rsq1l - 2.D0*mi(42)*i1r15**3*i1r15r25*rgl**2 + 
     &    mi(42)*r15*i1r15r25**2 )
      e = e  + Nc*s125**2 * ( mi(48)*r15**(-2)*i1r15r25*rsq1l**3 - 3.D0*
     &    mi(48)*r15**(-2)*i1r15r25*rgl*rsq1l**2 + 3.D0*mi(48)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1l - mi(48)*r15**(-2)*i1r15r25*
     &    rgl**3 - mi(48)*r15**(-2)*i1r15r25**2*rsq1l**3 + 3.D0*mi(48)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1l**2 - 3.D0*mi(48)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1l + mi(48)*r15**(-2)*i1r15r25**2*
     &    rgl**3 - 3.D0*mi(48)*r15**(-1)*i1r15r25*rsq1l**2 + 4.D0*mi(48
     &    )*r15**(-1)*i1r15r25*rgl*rsq1l - mi(48)*r15**(-1)*i1r15r25*
     &    rgl**2 + 3.D0*mi(48)*r15**(-1)*i1r15r25**2*rsq1l**2 - 6.D0*
     &    mi(48)*r15**(-1)*i1r15r25**2*rgl*rsq1l + 3.D0*mi(48)*
     &    r15**(-1)*i1r15r25**2*rgl**2 + mi(48)*r25**(-2)*rsq1l**2 - 2.D
     &    0*mi(48)*r25**(-2)*rgl*rsq1l + mi(48)*r25**(-2)*rgl**2 - mi(
     &    48)*r25**(-2)*i1r15*rsq1l**2 - mi(48)*r25**(-2)*i1r15*
     &    rsq1l**3 + 2.D0*mi(48)*r25**(-2)*i1r15*rgl*rsq1l + 3.D0*mi(48
     &    )*r25**(-2)*i1r15*rgl*rsq1l**2 - mi(48)*r25**(-2)*i1r15*
     &    rgl**2 )
      e = e  + Nc*s125**2 * (  - 3.D0*mi(48)*r25**(-2)*i1r15*rgl**2*
     &    rsq1l + mi(48)*r25**(-2)*i1r15*rgl**3 + mi(48)*r25**(-2)*
     &    i1r15**2*rsq1l**3 - 3.D0*mi(48)*r25**(-2)*i1r15**2*rgl*
     &    rsq1l**2 + 3.D0*mi(48)*r25**(-2)*i1r15**2*rgl**2*rsq1l - mi(
     &    48)*r25**(-2)*i1r15**2*rgl**3 - mi(48)*r25**(-1)*rsq1l - mi(
     &    48)*r25**(-1)*rgl + mi(48)*r25**(-1)*i1r15*rsq1l + mi(48)*
     &    r25**(-1)*i1r15*rsq1l**2 - mi(48)*r25**(-1)*i1r15*rgl - mi(48
     &    )*r25**(-1)*i1r15*rgl**2 - 2.D0*mi(48)*r25**(-1)*i1r15**2*
     &    rsq1l**2 - mi(48)*r25**(-1)*i1r15**2*rsq1l**3 + 4.D0*mi(48)*
     &    r25**(-1)*i1r15**2*rgl*rsq1l + 3.D0*mi(48)*r25**(-1)*i1r15**2
     &    *rgl*rsq1l**2 - 2.D0*mi(48)*r25**(-1)*i1r15**2*rgl**2 - 3.D0*
     &    mi(48)*r25**(-1)*i1r15**2*rgl**2*rsq1l + mi(48)*r25**(-1)*
     &    i1r15**2*rgl**3 + 2.D0*mi(48)*r25**(-1)*i1r15**3*rsq1l**3 - 6.
     &    D0*mi(48)*r25**(-1)*i1r15**3*rgl*rsq1l**2 + 6.D0*mi(48)*
     &    r25**(-1)*i1r15**3*rgl**2*rsq1l - 2.D0*mi(48)*r25**(-1)*
     &    i1r15**3*rgl**3 )
      e = e  + Nc*s125**2 * ( 2.D0*mi(48)*i1r15r25*rsq1l - 3.D0*mi(48)*
     &    i1r15r25**2*rsq1l + 3.D0*mi(48)*i1r15r25**2*rgl + mi(48)*
     &    i1r15*i1r15r25*rsq1l + mi(48)*i1r15*i1r15r25*rsq1l**2 - mi(48
     &    )*i1r15*i1r15r25*rgl - mi(48)*i1r15*i1r15r25*rgl**2 - mi(48)*
     &    i1r15*i1r15r25**2*rsq1l**2 + 2.D0*mi(48)*i1r15*i1r15r25**2*
     &    rgl*rsq1l - mi(48)*i1r15*i1r15r25**2*rgl**2 - 2.D0*mi(48)*
     &    i1r15**2*i1r15r25*rsq1l**2 - mi(48)*i1r15**2*i1r15r25*
     &    rsq1l**3 + 4.D0*mi(48)*i1r15**2*i1r15r25*rgl*rsq1l + 3.D0*mi(
     &    48)*i1r15**2*i1r15r25*rgl*rsq1l**2 - 2.D0*mi(48)*i1r15**2*
     &    i1r15r25*rgl**2 - 3.D0*mi(48)*i1r15**2*i1r15r25*rgl**2*rsq1l
     &     + mi(48)*i1r15**2*i1r15r25*rgl**3 + mi(48)*i1r15**2*
     &    i1r15r25**2*rsq1l**3 - 3.D0*mi(48)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1l**2 + 3.D0*mi(48)*i1r15**2*i1r15r25**2*rgl**2*rsq1l - 
     &    mi(48)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(48)*i1r15**3*
     &    i1r15r25*rsq1l**3 - 6.D0*mi(48)*i1r15**3*i1r15r25*rgl*
     &    rsq1l**2 )
      e = e  + Nc*s125**2 * ( 6.D0*mi(48)*i1r15**3*i1r15r25*rgl**2*rsq1l
     &     - 2.D0*mi(48)*i1r15**3*i1r15r25*rgl**3 - mi(48)*r15*i1r15r25
     &     + mi(48)*r15*i1r15r25**2 + 2.D0*mi(48)*r15*i1r15r25**2*rsq1l
     &     - 2.D0*mi(48)*r15*i1r15r25**2*rgl - mi(48)*r15**2*
     &    i1r15r25**2 )

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

      e =  + Nc**(-1)*s125**(-1) * (  - mi(19)*r15**(-1)*i1r15r25*
     &    rsq1r**(-1) + mi(19)*r15**(-1)*i1r15r25**2*rsq1r**(-1) - 2.D0
     &    *mi(19)*r15**(-1)*i1r15r25**2*rgl*rsq1r**(-1) + 2.D0*mi(19)*
     &    r25**(-2)*i1r15*rgl*rsq1r**(-1) - 2.D0*mi(19)*r25**(-2)*
     &    i1r15**2*rgl*rsq1r**(-1) - mi(19)*r25**(-1)*i1r15*rsq1r**(-1)
     &     + mi(19)*r25**(-1)*i1r15**2*rsq1r**(-1) - 4.D0*mi(19)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r**(-1) - mi(19)*i1r15*i1r15r25*
     &    rsq1r**(-1) + mi(19)*i1r15*i1r15r25**2*rsq1r**(-1) - 2.D0*mi(
     &    19)*i1r15*i1r15r25**2*rgl*rsq1r**(-1) + mi(19)*i1r15**2*
     &    i1r15r25*rsq1r**(-1) - 2.D0*mi(19)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1r**(-1) - 4.D0*mi(19)*i1r15**3*i1r15r25*rgl*rsq1r**(-1)
     &     + 1/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25 - 4.D0/(rsq1r - 
     &    rgl)*mi(19)*r15**(-1)*i1r15r25*rgl*rsq1r**(-1) - 1/(rsq1r - 
     &    rgl)*mi(19)*r15**(-1)*i1r15r25**2 + 2.D0/(rsq1r - rgl)*mi(19)
     &    *r15**(-1)*i1r15r25**2*rgl - 4.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25**2*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl + 4.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2*rgl - 4.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15 - 4.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*
     &    rgl*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2
     &     + 4.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl - 8.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2*rsq1r**(-1) + 
     &    1/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25 - 4.D0/(rsq1r - rgl)*
     &    mi(19)*i1r15*i1r15r25*rgl*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19
     &    )*i1r15*i1r15r25**2 + 2.D0/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25**2*rgl - 4.D0/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2
     &    *rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25 + 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl
     &     - 4.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 4.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**3*i1r15r25*rgl - 8.D0/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25*rgl**2*rsq1r**(-1) + 3.D0/(rsq1r - rgl)/(rsq1r - rgl
     &    )*mi(19)*r15**(-1)*i1r15r25*rgl - 3.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl**2*rsq1r**(-1) + 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl
     &     - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2
     &    *rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)
     &    *r15**(-1)*i1r15r25**2*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl**3*rsq1r**(-1) - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**2 + 2.D
     &    0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**3*
     &    rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15**2*rgl**3*rsq1r**(-1) + 3.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 3.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15*rgl**2*rsq1r**(-1) + 1/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl - 1/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2*
     &    rsq1r**(-1) + 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**3*rgl**2 - 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-1)*i1r15**3*rgl**3*rsq1r**(-1) + 3.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl - 3.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl**2*rsq1r**(-1)
     &     + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl
     &     - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*
     &    rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15*i1r15r25**2*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15*i1r15r25**2*rgl**3*rsq1r**(-1) + 1/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl - 1/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**2*i1r15r25**2*rgl**2 - 2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**3*rsq1r**(-1)
     &     + 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*
     &    rgl**2 - 4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25*rgl**3*rsq1r**(-1) )

      gcoeffarr(aa21,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(aa21,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*i1r25 + 2.
     &    D0*mi(17)*r25**(-1)*i1r15 + 3.D0/2.D0*mi(19)*r15**(-2)*
     &    rsq1r**(-1) - 2.D0*mi(19)*r15**(-2)*i1r15r25*rsq1r**(-1) + 2.D
     &    0*mi(19)*r15**(-2)*i1r15r25*rgl*rsq1r**(-1) + 1.D0/2.D0*mi(19
     &    )*r15**(-2)*i1r15r25**2*rsq1r**(-1) - 2.D0*mi(19)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r**(-1) + 2.D0*mi(19)*r15**(-1)*i1r25 - 1.
     &    D0/2.D0*mi(19)*r25**(-2)*rsq1r**(-1) + mi(19)*r25**(-2)*i1r15
     &    *rsq1r**(-1) - 2.D0*mi(19)*r25**(-2)*i1r15*rgl*rsq1r**(-1) - 
     &    1.D0/2.D0*mi(19)*r25**(-2)*i1r15**2*rsq1r**(-1) + 2.D0*mi(19)
     &    *r25**(-2)*i1r15**2*rgl*rsq1r**(-1) - 2.D0*mi(19)*r25**(-1)*
     &    i1r15 + mi(19)*r25**(-1)*i1r15**2*rsq1r**(-1) - 2.D0*mi(19)*
     &    r25**(-1)*i1r15**2*rgl*rsq1r**(-1) - mi(19)*r25**(-1)*
     &    i1r15**3*rsq1r**(-1) + 4.D0*mi(19)*r25**(-1)*i1r15**3*rgl*
     &    rsq1r**(-1) + mi(19)*i1r15**2*i1r15r25*rsq1r**(-1) - 2.D0*mi(
     &    19)*i1r15**2*i1r15r25*rgl*rsq1r**(-1) - 1.D0/2.D0*mi(19)*
     &    i1r15**2*i1r15r25**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0*mi(19)*i1r15**2*i1r15r25**2*
     &    rgl*rsq1r**(-1) - mi(19)*i1r15**3*i1r15r25*rsq1r**(-1) + 4.D0
     &    *mi(19)*i1r15**3*i1r15r25*rgl*rsq1r**(-1) - 3.D0/2.D0/(rsq1r
     &     - rgl)*mi(19)*r15**(-2) + 3.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*rgl*rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25 - 3.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25*rgl*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25*rgl + 3.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25*rgl**2*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25**2 + 2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25**2*rgl - 3.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)*mi(
     &    19)*r25**(-2) - 2.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15 + 2.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl*rsq1r**(-1) + 2.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl )
      e = e  + Nc**(-1)*s125**(-1) * (  - 3.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15**2 - 2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2*rgl + 3.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2 + 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl - 3.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**2*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**3 - 4.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**3*rgl + 6.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*
     &    rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25
     &     + 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl*
     &    rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl
     &     - 3.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25**2 - 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl + 3.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*
     &    i1r15**3*i1r15r25 - 4.D0/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25*rgl + 6.D0/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1r**(-1) - 3.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*rgl + 3.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2*rsq1r**(-1) - 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*
     &    rgl**2 + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25*rgl**3*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl - 1.D0/2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r15**(-2)*i1r15r25**2*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**3*rsq1r**(-1) + 3.D0/2.
     &    D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl - 3.D0/2.D
     &    0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl**2*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*i1r15*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15*rgl**3*rsq1r**(-1) - 1.D0/2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl + 1.D0/2.D
     &    0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2*rgl**2 + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*i1r15**2*rgl**3*rsq1r**(-1) - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2 - 1/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**3*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**3*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)
     &    *i1r15**3*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2 + 2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**3*rsq1r**(-1) - 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl + 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2
     &    *rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25*rgl**3*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl
     &    )/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl + 1.D0/2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**2
     &    *rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**2*i1r15r25**2*rgl**2 + 1/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**3*rsq1r**(-1) - 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl + 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**3*i1r15r25*rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**3*i1r15r25*rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1) * ( 2.D0*mi(21)*r15**(-2)*i1r15r25*rsq1r - 2.D0*
     &    mi(21)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(21)*r15**(-2)*i1r25*
     &    rsq1r + 2.D0*mi(21)*r15**(-2)*i1r25*rgl + 2.D0*mi(21)*
     &    r15**(-1)*r25**(-1) + 2.D0*mi(21)*r15**(-1)*i1r25 - 4.D0*mi(
     &    21)*r15**(-1)*i1r25**2*rsq1r + 4.D0*mi(21)*r15**(-1)*i1r25**2
     &    *rgl + 2.D0*mi(21)*r25**(-1)*i1r15**2*rsq1r - 2.D0*mi(21)*
     &    r25**(-1)*i1r15**2*rgl - 2.D0*mi(21)*i1r15**2*i1r15r25*rsq1r
     &     + 2.D0*mi(21)*i1r15**2*i1r15r25*rgl - 2.D0*mi(23)*r15**(-1)*
     &    r25**(-1) - 2.D0*mi(25)*r15**(-1)*i1r15r25*rsq1r + 2.D0*mi(25
     &    )*r15**(-1)*i1r15r25*rgl - 2.D0*mi(25)*r25**(-1)*i1r15**2*
     &    rsq1r + 2.D0*mi(25)*r25**(-1)*i1r15**2*rgl - 2.D0*mi(25)*
     &    i1r15*i1r15r25*rsq1r + 2.D0*mi(25)*i1r15*i1r15r25*rgl + 2.D0*
     &    mi(25)*i1r15**2*i1r15r25*rsq1r - 2.D0*mi(25)*i1r15**2*
     &    i1r15r25*rgl - 2.D0*mi(27)*r15**(-2)*i1r15r25*rsq1r + 2.D0*
     &    mi(27)*r15**(-2)*i1r15r25*rgl + 2.D0*mi(27)*r15**(-2)*i1r25*
     &    rsq1r )
      e = e  + Nc**(-1) * (  - 2.D0*mi(27)*r15**(-2)*i1r25*rgl + 2.D0*
     &    mi(27)*r15**(-1)*i1r15r25*rsq1r - 2.D0*mi(27)*r15**(-1)*
     &    i1r15r25*rgl - 2.D0*mi(27)*r15**(-1)*i1r25 - 2.D0*mi(27)*
     &    r15**(-1)*i1r25*rsq1r + 2.D0*mi(27)*r15**(-1)*i1r25*rgl + 4.D0
     &    *mi(27)*r15**(-1)*i1r25**2*rsq1r - 4.D0*mi(27)*r15**(-1)*
     &    i1r25**2*rgl + 2.D0*mi(27)*r25**(-1)*i1r15*rsq1r - 2.D0*mi(27
     &    )*r25**(-1)*i1r15*rgl + 2.D0*mi(27)*i1r15*i1r15r25*rsq1r - 2.D
     &    0*mi(27)*i1r15*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125 * (  - mi(29)*r15**(-2) + 2.D0*mi(29)*
     &    r15**(-2)*rsq1r - 2.D0*mi(29)*r15**(-2)*rgl + mi(29)*
     &    r15**(-2)*r25 + mi(29)*r15**(-1) - mi(33)*r15**(-1)*
     &    i1r15r25**2*rsq1r**2 + 2.D0*mi(33)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1r - mi(33)*r15**(-1)*i1r15r25**2*rgl**2 + mi(33)*
     &    r25**(-2)*rsq1r - mi(33)*r25**(-2)*rgl - mi(33)*r25**(-2)*
     &    i1r15*rsq1r - mi(33)*r25**(-2)*i1r15*rsq1r**2 + mi(33)*
     &    r25**(-2)*i1r15*rgl + 2.D0*mi(33)*r25**(-2)*i1r15*rgl*rsq1r
     &     - mi(33)*r25**(-2)*i1r15*rgl**2 + mi(33)*r25**(-2)*i1r15**2*
     &    rsq1r**2 - 2.D0*mi(33)*r25**(-2)*i1r15**2*rgl*rsq1r + mi(33)*
     &    r25**(-2)*i1r15**2*rgl**2 + mi(33)*r25**(-1)*i1r15*rsq1r - 
     &    mi(33)*r25**(-1)*i1r15*rgl - mi(33)*r25**(-1)*i1r15**2*rsq1r
     &     - 2.D0*mi(33)*r25**(-1)*i1r15**2*rsq1r**2 + mi(33)*r25**(-1)
     &    *i1r15**2*rgl + 4.D0*mi(33)*r25**(-1)*i1r15**2*rgl*rsq1r - 2.D
     &    0*mi(33)*r25**(-1)*i1r15**2*rgl**2 + 2.D0*mi(33)*r25**(-1)*
     &    i1r15**3*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(33)*r25**(-1)*i1r15**3*rgl*
     &    rsq1r + 2.D0*mi(33)*r25**(-1)*i1r15**3*rgl**2 + mi(33)*i1r15*
     &    i1r15r25*rsq1r - mi(33)*i1r15*i1r15r25*rgl - mi(33)*i1r15*
     &    i1r15r25**2*rsq1r**2 + 2.D0*mi(33)*i1r15*i1r15r25**2*rgl*
     &    rsq1r - mi(33)*i1r15*i1r15r25**2*rgl**2 - mi(33)*i1r15**2*
     &    i1r15r25*rsq1r - 2.D0*mi(33)*i1r15**2*i1r15r25*rsq1r**2 + mi(
     &    33)*i1r15**2*i1r15r25*rgl + 4.D0*mi(33)*i1r15**2*i1r15r25*rgl
     &    *rsq1r - 2.D0*mi(33)*i1r15**2*i1r15r25*rgl**2 + mi(33)*
     &    i1r15**2*i1r15r25**2*rsq1r**2 - 2.D0*mi(33)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r + mi(33)*i1r15**2*i1r15r25**2*rgl**2 + 
     &    2.D0*mi(33)*i1r15**3*i1r15r25*rsq1r**2 - 4.D0*mi(33)*i1r15**3
     &    *i1r15r25*rgl*rsq1r + 2.D0*mi(33)*i1r15**3*i1r15r25*rgl**2 - 
     &    2.D0*mi(37)*r15**(-2)*rsq1r + 2.D0*mi(37)*r15**(-2)*rgl + 2.D0
     &    *mi(37)*r15**(-2)*i1r15r25*rsq1r + mi(37)*r15**(-2)*i1r15r25*
     &    rsq1r**2 - 2.D0*mi(37)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(37)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * ( mi(37)*r15**(-2)*i1r15r25*rgl**2 - mi(
     &    37)*r15**(-2)*i1r15r25**2*rsq1r**2 + 2.D0*mi(37)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r - mi(37)*r15**(-2)*i1r15r25**2*rgl**2
     &     - mi(37)*r15**(-2)*r25 - 2.D0*mi(37)*r15**(-1)*i1r15r25*
     &    rsq1r + 2.D0*mi(37)*r15**(-1)*i1r15r25*rgl + mi(37)*r15**(-1)
     &    *i1r15r25**2*rsq1r**2 - 2.D0*mi(37)*r15**(-1)*i1r15r25**2*rgl
     &    *rsq1r + mi(37)*r15**(-1)*i1r15r25**2*rgl**2 - mi(37)*
     &    r25**(-1)*i1r15*rsq1r + mi(37)*r25**(-1)*i1r15*rgl + mi(37)*
     &    r25**(-1)*i1r15**2*rsq1r**2 - 2.D0*mi(37)*r25**(-1)*i1r15**2*
     &    rgl*rsq1r + mi(37)*r25**(-1)*i1r15**2*rgl**2 - mi(37)*i1r15*
     &    i1r15r25*rsq1r + mi(37)*i1r15*i1r15r25*rgl + mi(37)*i1r15*
     &    i1r15r25**2*rsq1r**2 - 2.D0*mi(37)*i1r15*i1r15r25**2*rgl*
     &    rsq1r + mi(37)*i1r15*i1r15r25**2*rgl**2 + mi(37)*i1r15**2*
     &    i1r15r25*rsq1r**2 - 2.D0*mi(37)*i1r15**2*i1r15r25*rgl*rsq1r
     &     + mi(37)*i1r15**2*i1r15r25*rgl**2 + 2.D0*mi(39)*r15**(-2)*
     &    rsq1r )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(39)*r15**(-2)*rgl - 2.D0*mi(
     &    39)*r15**(-2)*i1r15r25*rsq1r - 2.D0*mi(39)*r15**(-2)*i1r15r25
     &    *rsq1r**2 + 2.D0*mi(39)*r15**(-2)*i1r15r25*rgl + 4.D0*mi(39)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r - 2.D0*mi(39)*r15**(-2)*i1r15r25
     &    *rgl**2 + 2.D0*mi(39)*r15**(-2)*i1r15r25**2*rsq1r**2 - 4.D0*
     &    mi(39)*r15**(-2)*i1r15r25**2*rgl*rsq1r + 2.D0*mi(39)*
     &    r15**(-2)*i1r15r25**2*rgl**2 + mi(39)*r15**(-2)*r25 + mi(39)*
     &    r15**(-1) - 2.D0*mi(39)*r25**(-2)*rsq1r + 2.D0*mi(39)*
     &    r25**(-2)*rgl + 2.D0*mi(39)*r25**(-2)*i1r15*rsq1r + 2.D0*mi(
     &    39)*r25**(-2)*i1r15*rsq1r**2 - 2.D0*mi(39)*r25**(-2)*i1r15*
     &    rgl - 4.D0*mi(39)*r25**(-2)*i1r15*rgl*rsq1r + 2.D0*mi(39)*
     &    r25**(-2)*i1r15*rgl**2 - 2.D0*mi(39)*r25**(-2)*i1r15**2*
     &    rsq1r**2 + 4.D0*mi(39)*r25**(-2)*i1r15**2*rgl*rsq1r - 2.D0*
     &    mi(39)*r25**(-2)*i1r15**2*rgl**2 + 2.D0*mi(39)*r25**(-1)*
     &    i1r15**2*rsq1r + 2.D0*mi(39)*r25**(-1)*i1r15**2*rsq1r**2 - 2.D
     &    0*mi(39)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(39)*r25**(-1)*i1r15**2*rgl*
     &    rsq1r + 2.D0*mi(39)*r25**(-1)*i1r15**2*rgl**2 - 4.D0*mi(39)*
     &    r25**(-1)*i1r15**3*rsq1r**2 + 8.D0*mi(39)*r25**(-1)*i1r15**3*
     &    rgl*rsq1r - 4.D0*mi(39)*r25**(-1)*i1r15**3*rgl**2 + 2.D0*mi(
     &    39)*i1r15**2*i1r15r25*rsq1r + 2.D0*mi(39)*i1r15**2*i1r15r25*
     &    rsq1r**2 - 2.D0*mi(39)*i1r15**2*i1r15r25*rgl - 4.D0*mi(39)*
     &    i1r15**2*i1r15r25*rgl*rsq1r + 2.D0*mi(39)*i1r15**2*i1r15r25*
     &    rgl**2 - 2.D0*mi(39)*i1r15**2*i1r15r25**2*rsq1r**2 + 4.D0*mi(
     &    39)*i1r15**2*i1r15r25**2*rgl*rsq1r - 2.D0*mi(39)*i1r15**2*
     &    i1r15r25**2*rgl**2 - 4.D0*mi(39)*i1r15**3*i1r15r25*rsq1r**2
     &     + 8.D0*mi(39)*i1r15**3*i1r15r25*rgl*rsq1r - 4.D0*mi(39)*
     &    i1r15**3*i1r15r25*rgl**2 - mi(41)*r15**(-2)*i1r15r25**2*
     &    rsq1r**2 + 2.D0*mi(41)*r15**(-2)*i1r15r25**2*rgl*rsq1r - mi(
     &    41)*r15**(-2)*i1r15r25**2*rgl**2 + mi(41)*r15**(-1)*
     &    i1r15r25**2*rsq1r**2 - 2.D0*mi(41)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1r )
      e = e  + Nc**(-1)*s125 * ( mi(41)*r15**(-1)*i1r15r25**2*rgl**2 + 
     &    mi(41)*r25**(-2)*rsq1r - mi(41)*r25**(-2)*rgl - mi(41)*
     &    r25**(-2)*i1r15*rsq1r**2 + 2.D0*mi(41)*r25**(-2)*i1r15*rgl*
     &    rsq1r - mi(41)*r25**(-2)*i1r15*rgl**2 + mi(41)*r25**(-1)*
     &    i1r15*rsq1r - mi(41)*r25**(-1)*i1r15*rgl - 2.D0*mi(41)*
     &    r25**(-1)*i1r15**2*rsq1r**2 + 4.D0*mi(41)*r25**(-1)*i1r15**2*
     &    rgl*rsq1r - 2.D0*mi(41)*r25**(-1)*i1r15**2*rgl**2 - mi(41)*
     &    i1r15*i1r15r25*rsq1r + mi(41)*i1r15*i1r15r25*rgl + mi(41)*
     &    i1r15*i1r15r25**2*rsq1r**2 - 2.D0*mi(41)*i1r15*i1r15r25**2*
     &    rgl*rsq1r + mi(41)*i1r15*i1r15r25**2*rgl**2 + 2.D0*mi(41)*
     &    i1r15**2*i1r15r25*rsq1r**2 - 4.D0*mi(41)*i1r15**2*i1r15r25*
     &    rgl*rsq1r + 2.D0*mi(41)*i1r15**2*i1r15r25*rgl**2 + mi(43)*
     &    r15**(-2) - 2.D0*mi(43)*r15**(-2)*rsq1r + 2.D0*mi(43)*
     &    r15**(-2)*rgl - mi(43)*r15**(-2)*i1r15r25*rsq1r**2 + 2.D0*mi(
     &    43)*r15**(-2)*i1r15r25*rgl*rsq1r - mi(43)*r15**(-2)*i1r15r25*
     &    rgl**2 )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(43)*r15**(-2)*i1r25*rsq1r**2 - 
     &    4.D0*mi(43)*r15**(-2)*i1r25*rgl*rsq1r + 2.D0*mi(43)*r15**(-2)
     &    *i1r25*rgl**2 - mi(43)*r15**(-2)*r25 + 2.D0*mi(43)*r15**(-1)*
     &    i1r15r25*rsq1r - 2.D0*mi(43)*r15**(-1)*i1r15r25*rgl - mi(43)*
     &    r15**(-1)*i1r15r25**2*rsq1r**2 + 2.D0*mi(43)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1r - mi(43)*r15**(-1)*i1r15r25**2*rgl**2
     &     - 4.D0*mi(43)*r15**(-1)*i1r25*rsq1r + 4.D0*mi(43)*r15**(-1)*
     &    i1r25*rgl + 4.D0*mi(43)*r15**(-1)*i1r25**2*rsq1r**2 - 8.D0*
     &    mi(43)*r15**(-1)*i1r25**2*rgl*rsq1r + 4.D0*mi(43)*r15**(-1)*
     &    i1r25**2*rgl**2 - mi(43)*r25**(-2)*i1r15*rsq1r + mi(43)*
     &    r25**(-2)*i1r15*rgl + mi(43)*r25**(-2)*i1r15**2*rsq1r**2 - 2.D
     &    0*mi(43)*r25**(-2)*i1r15**2*rgl*rsq1r + mi(43)*r25**(-2)*
     &    i1r15**2*rgl**2 + mi(43)*r25**(-1)*i1r15*rsq1r - mi(43)*
     &    r25**(-1)*i1r15*rgl - mi(43)*r25**(-1)*i1r15**2*rsq1r - mi(43
     &    )*r25**(-1)*i1r15**2*rsq1r**2 + mi(43)*r25**(-1)*i1r15**2*rgl
     &     + 2.D0*mi(43)*r25**(-1)*i1r15**2*rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * (  - mi(43)*r25**(-1)*i1r15**2*rgl**2 + 2.
     &    D0*mi(43)*r25**(-1)*i1r15**3*rsq1r**2 - 4.D0*mi(43)*r25**(-1)
     &    *i1r15**3*rgl*rsq1r + 2.D0*mi(43)*r25**(-1)*i1r15**3*rgl**2
     &     + mi(43)*i1r15*i1r15r25*rsq1r - mi(43)*i1r15*i1r15r25*rgl - 
     &    mi(43)*i1r15*i1r15r25**2*rsq1r**2 + 2.D0*mi(43)*i1r15*
     &    i1r15r25**2*rgl*rsq1r - mi(43)*i1r15*i1r15r25**2*rgl**2 - mi(
     &    43)*i1r15**2*i1r15r25*rsq1r - mi(43)*i1r15**2*i1r15r25*
     &    rsq1r**2 + mi(43)*i1r15**2*i1r15r25*rgl + 2.D0*mi(43)*
     &    i1r15**2*i1r15r25*rgl*rsq1r - mi(43)*i1r15**2*i1r15r25*rgl**2
     &     + mi(43)*i1r15**2*i1r15r25**2*rsq1r**2 - 2.D0*mi(43)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1r + mi(43)*i1r15**2*i1r15r25**2*
     &    rgl**2 + 2.D0*mi(43)*i1r15**3*i1r15r25*rsq1r**2 - 4.D0*mi(43)
     &    *i1r15**3*i1r15r25*rgl*rsq1r + 2.D0*mi(43)*i1r15**3*i1r15r25*
     &    rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( mi(45)*r15**(-2)*i1r15r25*rsq1r**3
     &     - 3.D0*mi(45)*r15**(-2)*i1r15r25*rgl*rsq1r**2 + 3.D0*mi(45)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1r - mi(45)*r15**(-2)*i1r15r25*
     &    rgl**3 - mi(45)*r15**(-2)*i1r15r25**2*rsq1r**3 + 3.D0*mi(45)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1r**2 - 3.D0*mi(45)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1r + mi(45)*r15**(-2)*i1r15r25**2*
     &    rgl**3 - mi(45)*r15**(-1)*i1r15r25*rsq1r**2 + mi(45)*
     &    r15**(-1)*i1r15r25*rgl**2 + 2.D0*mi(45)*r25**(-2)*rsq1r**2 - 
     &    4.D0*mi(45)*r25**(-2)*rgl*rsq1r + 2.D0*mi(45)*r25**(-2)*
     &    rgl**2 - 2.D0*mi(45)*r25**(-2)*i1r15*rsq1r**2 - mi(45)*
     &    r25**(-2)*i1r15*rsq1r**3 + 4.D0*mi(45)*r25**(-2)*i1r15*rgl*
     &    rsq1r + 3.D0*mi(45)*r25**(-2)*i1r15*rgl*rsq1r**2 - 2.D0*mi(45
     &    )*r25**(-2)*i1r15*rgl**2 - 3.D0*mi(45)*r25**(-2)*i1r15*rgl**2
     &    *rsq1r + mi(45)*r25**(-2)*i1r15*rgl**3 + mi(45)*r25**(-2)*
     &    i1r15**2*rsq1r**3 - 3.D0*mi(45)*r25**(-2)*i1r15**2*rgl*
     &    rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(45)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1r - mi(45)*r25**(-2)*i1r15**2*rgl**3 + 3.D0*mi(45)
     &    *r25**(-1)*i1r15*rsq1r**2 - 4.D0*mi(45)*r25**(-1)*i1r15*rgl*
     &    rsq1r + mi(45)*r25**(-1)*i1r15*rgl**2 - 2.D0*mi(45)*r25**(-1)
     &    *i1r15**2*rsq1r**2 - mi(45)*r25**(-1)*i1r15**2*rsq1r**3 + 4.D0
     &    *mi(45)*r25**(-1)*i1r15**2*rgl*rsq1r + 3.D0*mi(45)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r**2 - 2.D0*mi(45)*r25**(-1)*i1r15**2*rgl**2
     &     - 3.D0*mi(45)*r25**(-1)*i1r15**2*rgl**2*rsq1r + mi(45)*
     &    r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(45)*r25**(-1)*i1r15**3*
     &    rsq1r**3 - 6.D0*mi(45)*r25**(-1)*i1r15**3*rgl*rsq1r**2 + 6.D0
     &    *mi(45)*r25**(-1)*i1r15**3*rgl**2*rsq1r - 2.D0*mi(45)*
     &    r25**(-1)*i1r15**3*rgl**3 + 3.D0*mi(45)*i1r15*i1r15r25*
     &    rsq1r**2 - 4.D0*mi(45)*i1r15*i1r15r25*rgl*rsq1r + mi(45)*
     &    i1r15*i1r15r25*rgl**2 - 2.D0*mi(45)*i1r15**2*i1r15r25*
     &    rsq1r**2 - mi(45)*i1r15**2*i1r15r25*rsq1r**3 + 4.D0*mi(45)*
     &    i1r15**2*i1r15r25*rgl*rsq1r )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0*mi(45)*i1r15**2*i1r15r25*rgl*
     &    rsq1r**2 - 2.D0*mi(45)*i1r15**2*i1r15r25*rgl**2 - 3.D0*mi(45)
     &    *i1r15**2*i1r15r25*rgl**2*rsq1r + mi(45)*i1r15**2*i1r15r25*
     &    rgl**3 + mi(45)*i1r15**2*i1r15r25**2*rsq1r**3 - 3.D0*mi(45)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1r**2 + 3.D0*mi(45)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1r - mi(45)*i1r15**2*i1r15r25**2*rgl**3
     &     + 2.D0*mi(45)*i1r15**3*i1r15r25*rsq1r**3 - 6.D0*mi(45)*
     &    i1r15**3*i1r15r25*rgl*rsq1r**2 + 6.D0*mi(45)*i1r15**3*
     &    i1r15r25*rgl**2*rsq1r - 2.D0*mi(45)*i1r15**3*i1r15r25*rgl**3
     &     + mi(45)*r15*r25**(-2)*rsq1r - mi(45)*r15*r25**(-2)*rgl - 3.D
     &    0*mi(47)*r15**(-2)*rsq1r**2 + 6.D0*mi(47)*r15**(-2)*rgl*rsq1r
     &     - 3.D0*mi(47)*r15**(-2)*rgl**2 + 3.D0*mi(47)*r15**(-2)*
     &    i1r15r25*rsq1r**2 + mi(47)*r15**(-2)*i1r15r25*rsq1r**3 - 6.D0
     &    *mi(47)*r15**(-2)*i1r15r25*rgl*rsq1r - 3.D0*mi(47)*r15**(-2)*
     &    i1r15r25*rgl*rsq1r**2 + 3.D0*mi(47)*r15**(-2)*i1r15r25*rgl**2
     &     + 3.D0*mi(47)*r15**(-2)*i1r15r25*rgl**2*rsq1r )
      e = e  + Nc**(-1)*s125**2 * (  - mi(47)*r15**(-2)*i1r15r25*rgl**3
     &     - mi(47)*r15**(-2)*i1r15r25**2*rsq1r**3 + 3.D0*mi(47)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1r**2 - 3.D0*mi(47)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1r + mi(47)*r15**(-2)*i1r15r25**2*
     &    rgl**3 + mi(47)*r15**(-2)*r25 - 3.D0*mi(47)*r15**(-2)*r25*
     &    rsq1r + 3.D0*mi(47)*r15**(-2)*r25*rgl - mi(47)*r15**(-2)*
     &    r25**2 + mi(47)*r15**(-1)*rsq1r + mi(47)*r15**(-1)*rgl - 3.D0
     &    *mi(47)*r15**(-1)*i1r15r25*rsq1r**2 + 4.D0*mi(47)*r15**(-1)*
     &    i1r15r25*rgl*rsq1r - mi(47)*r15**(-1)*i1r15r25*rgl**2 - mi(47
     &    )*r15**(-1)*r25 + mi(47)*r25**(-2)*rsq1r**2 - 2.D0*mi(47)*
     &    r25**(-2)*rgl*rsq1r + mi(47)*r25**(-2)*rgl**2 - mi(47)*
     &    r25**(-2)*i1r15*rsq1r**2 - mi(47)*r25**(-2)*i1r15*rsq1r**3 + 
     &    2.D0*mi(47)*r25**(-2)*i1r15*rgl*rsq1r + 3.D0*mi(47)*r25**(-2)
     &    *i1r15*rgl*rsq1r**2 - mi(47)*r25**(-2)*i1r15*rgl**2 - 3.D0*
     &    mi(47)*r25**(-2)*i1r15*rgl**2*rsq1r + mi(47)*r25**(-2)*i1r15*
     &    rgl**3 )
      e = e  + Nc**(-1)*s125**2 * ( mi(47)*r25**(-2)*i1r15**2*rsq1r**3
     &     - 3.D0*mi(47)*r25**(-2)*i1r15**2*rgl*rsq1r**2 + 3.D0*mi(47)*
     &    r25**(-2)*i1r15**2*rgl**2*rsq1r - mi(47)*r25**(-2)*i1r15**2*
     &    rgl**3 - mi(47)*r25**(-1)*rsq1r - mi(47)*r25**(-1)*rgl + mi(
     &    47)*r25**(-1)*i1r15*rsq1r**2 - mi(47)*r25**(-1)*i1r15*rgl**2
     &     - mi(47)*r25**(-1)*i1r15**2*rsq1r**2 - mi(47)*r25**(-1)*
     &    i1r15**2*rsq1r**3 + 2.D0*mi(47)*r25**(-1)*i1r15**2*rgl*rsq1r
     &     + 3.D0*mi(47)*r25**(-1)*i1r15**2*rgl*rsq1r**2 - mi(47)*
     &    r25**(-1)*i1r15**2*rgl**2 - 3.D0*mi(47)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1r + mi(47)*r25**(-1)*i1r15**2*rgl**3 + 2.D0*mi(47)
     &    *r25**(-1)*i1r15**3*rsq1r**3 - 6.D0*mi(47)*r25**(-1)*i1r15**3
     &    *rgl*rsq1r**2 + 6.D0*mi(47)*r25**(-1)*i1r15**3*rgl**2*rsq1r
     &     - 2.D0*mi(47)*r25**(-1)*i1r15**3*rgl**3 + mi(47)*i1r15*
     &    i1r15r25*rsq1r**2 - mi(47)*i1r15*i1r15r25*rgl**2 - mi(47)*
     &    i1r15**2*i1r15r25*rsq1r**2 - mi(47)*i1r15**2*i1r15r25*
     &    rsq1r**3 )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(47)*i1r15**2*i1r15r25*rgl*
     &    rsq1r + 3.D0*mi(47)*i1r15**2*i1r15r25*rgl*rsq1r**2 - mi(47)*
     &    i1r15**2*i1r15r25*rgl**2 - 3.D0*mi(47)*i1r15**2*i1r15r25*
     &    rgl**2*rsq1r + mi(47)*i1r15**2*i1r15r25*rgl**3 + mi(47)*
     &    i1r15**2*i1r15r25**2*rsq1r**3 - 3.D0*mi(47)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r**2 + 3.D0*mi(47)*i1r15**2*i1r15r25**2*
     &    rgl**2*rsq1r - mi(47)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(
     &    47)*i1r15**3*i1r15r25*rsq1r**3 - 6.D0*mi(47)*i1r15**3*
     &    i1r15r25*rgl*rsq1r**2 + 6.D0*mi(47)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1r - 2.D0*mi(47)*i1r15**3*i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*i1r25 - 2.D0*mi(
     &    17)*r25**(-1)*i1r15 - 2.D0*mi(19)*r15**(-1)*i1r25 + 2.D0*mi(
     &    19)*r25**(-1)*i1r15 )
      e = e  + Nc * (  - 2.D0*mi(21)*r15**(-2)*i1r15r25*rsq1r + 2.D0*mi(
     &    21)*r15**(-2)*i1r15r25*rgl + 2.D0*mi(21)*r15**(-2)*i1r25*
     &    rsq1r - 2.D0*mi(21)*r15**(-2)*i1r25*rgl + 2.D0*mi(21)*
     &    r15**(-1)*i1r15r25 - 2.D0*mi(21)*r15**(-1)*i1r25 + 4.D0*mi(21
     &    )*r15**(-1)*i1r25**2*rsq1r - 4.D0*mi(21)*r15**(-1)*i1r25**2*
     &    rgl + 2.D0*mi(21)*r25**(-1)*i1r15 - 2.D0*mi(21)*r25**(-1)*
     &    i1r15**2*rsq1r + 2.D0*mi(21)*r25**(-1)*i1r15**2*rgl + 2.D0*
     &    mi(21)*i1r15*i1r15r25 + 2.D0*mi(21)*i1r15**2*i1r15r25*rsq1r
     &     - 2.D0*mi(21)*i1r15**2*i1r15r25*rgl + 2.D0*mi(25)*r15**(-1)*
     &    i1r15r25*rsq1r - 2.D0*mi(25)*r15**(-1)*i1r15r25*rgl - 2.D0*
     &    mi(25)*r25**(-1)*i1r15 + 2.D0*mi(25)*r25**(-1)*i1r15**2*rsq1r
     &     - 2.D0*mi(25)*r25**(-1)*i1r15**2*rgl - 2.D0*mi(25)*i1r15*
     &    i1r15r25 + 2.D0*mi(25)*i1r15*i1r15r25*rsq1r - 2.D0*mi(25)*
     &    i1r15*i1r15r25*rgl - 2.D0*mi(25)*i1r15**2*i1r15r25*rsq1r + 2.D
     &    0*mi(25)*i1r15**2*i1r15r25*rgl + 2.D0*mi(27)*r15**(-2)*
     &    i1r15r25*rsq1r )
      e = e  + Nc * (  - 2.D0*mi(27)*r15**(-2)*i1r15r25*rgl - 2.D0*mi(27
     &    )*r15**(-2)*i1r25*rsq1r + 2.D0*mi(27)*r15**(-2)*i1r25*rgl - 2.
     &    D0*mi(27)*r15**(-1)*i1r15r25 - 2.D0*mi(27)*r15**(-1)*i1r15r25
     &    *rsq1r + 2.D0*mi(27)*r15**(-1)*i1r15r25*rgl + 2.D0*mi(27)*
     &    r15**(-1)*i1r25 + 2.D0*mi(27)*r15**(-1)*i1r25*rsq1r - 2.D0*
     &    mi(27)*r15**(-1)*i1r25*rgl - 4.D0*mi(27)*r15**(-1)*i1r25**2*
     &    rsq1r + 4.D0*mi(27)*r15**(-1)*i1r25**2*rgl - 2.D0*mi(27)*
     &    r25**(-1)*i1r15*rsq1r + 2.D0*mi(27)*r25**(-1)*i1r15*rgl - 2.D0
     &    *mi(27)*i1r15*i1r15r25*rsq1r + 2.D0*mi(27)*i1r15*i1r15r25*rgl
     &     )
      e = e  + Nc*s125 * (  - mi(31)*r15**(-1)*i1r15r25**2*rsq1r**2 + 2.D
     &    0*mi(31)*r15**(-1)*i1r15r25**2*rgl*rsq1r - mi(31)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + mi(31)*r25**(-2)*rsq1r - mi(31)*
     &    r25**(-2)*rgl - mi(31)*r25**(-2)*i1r15*rsq1r - mi(31)*
     &    r25**(-2)*i1r15*rsq1r**2 + mi(31)*r25**(-2)*i1r15*rgl + 2.D0*
     &    mi(31)*r25**(-2)*i1r15*rgl*rsq1r - mi(31)*r25**(-2)*i1r15*
     &    rgl**2 + mi(31)*r25**(-2)*i1r15**2*rsq1r**2 - 2.D0*mi(31)*
     &    r25**(-2)*i1r15**2*rgl*rsq1r + mi(31)*r25**(-2)*i1r15**2*
     &    rgl**2 + mi(31)*r25**(-1)*i1r15*rsq1r - mi(31)*r25**(-1)*
     &    i1r15*rgl - mi(31)*r25**(-1)*i1r15**2*rsq1r - 2.D0*mi(31)*
     &    r25**(-1)*i1r15**2*rsq1r**2 + mi(31)*r25**(-1)*i1r15**2*rgl
     &     + 4.D0*mi(31)*r25**(-1)*i1r15**2*rgl*rsq1r - 2.D0*mi(31)*
     &    r25**(-1)*i1r15**2*rgl**2 + 2.D0*mi(31)*r25**(-1)*i1r15**3*
     &    rsq1r**2 - 4.D0*mi(31)*r25**(-1)*i1r15**3*rgl*rsq1r + 2.D0*
     &    mi(31)*r25**(-1)*i1r15**3*rgl**2 + 2.D0*mi(31)*i1r15r25**2*
     &    rsq1r )
      e = e  + Nc*s125 * (  - 2.D0*mi(31)*i1r15r25**2*rgl + mi(31)*i1r15
     &    *i1r15r25*rsq1r - mi(31)*i1r15*i1r15r25*rgl - mi(31)*i1r15*
     &    i1r15r25**2*rsq1r**2 + 2.D0*mi(31)*i1r15*i1r15r25**2*rgl*
     &    rsq1r - mi(31)*i1r15*i1r15r25**2*rgl**2 - mi(31)*i1r15**2*
     &    i1r15r25*rsq1r - 2.D0*mi(31)*i1r15**2*i1r15r25*rsq1r**2 + mi(
     &    31)*i1r15**2*i1r15r25*rgl + 4.D0*mi(31)*i1r15**2*i1r15r25*rgl
     &    *rsq1r - 2.D0*mi(31)*i1r15**2*i1r15r25*rgl**2 + mi(31)*
     &    i1r15**2*i1r15r25**2*rsq1r**2 - 2.D0*mi(31)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r + mi(31)*i1r15**2*i1r15r25**2*rgl**2 + 
     &    2.D0*mi(31)*i1r15**3*i1r15r25*rsq1r**2 - 4.D0*mi(31)*i1r15**3
     &    *i1r15r25*rgl*rsq1r + 2.D0*mi(31)*i1r15**3*i1r15r25*rgl**2 - 
     &    mi(31)*r15*i1r15r25**2 + mi(35)*r15**(-2)*i1r15r25*rsq1r**2
     &     - 2.D0*mi(35)*r15**(-2)*i1r15r25*rgl*rsq1r + mi(35)*
     &    r15**(-2)*i1r15r25*rgl**2 - mi(35)*r15**(-2)*i1r15r25**2*
     &    rsq1r**2 + 2.D0*mi(35)*r15**(-2)*i1r15r25**2*rgl*rsq1r - mi(
     &    35)*r15**(-2)*i1r15r25**2*rgl**2 )
      e = e  + Nc*s125 * (  - 2.D0*mi(35)*r15**(-1)*i1r15r25*rsq1r + 2.D0
     &    *mi(35)*r15**(-1)*i1r15r25*rgl + 2.D0*mi(35)*r15**(-1)*
     &    i1r15r25**2*rsq1r + mi(35)*r15**(-1)*i1r15r25**2*rsq1r**2 - 2.
     &    D0*mi(35)*r15**(-1)*i1r15r25**2*rgl - 2.D0*mi(35)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1r + mi(35)*r15**(-1)*i1r15r25**2*rgl**2
     &     - mi(35)*r25**(-1)*i1r15*rsq1r + mi(35)*r25**(-1)*i1r15*rgl
     &     + mi(35)*r25**(-1)*i1r15**2*rsq1r**2 - 2.D0*mi(35)*r25**(-1)
     &    *i1r15**2*rgl*rsq1r + mi(35)*r25**(-1)*i1r15**2*rgl**2 + mi(
     &    35)*i1r15r25 - mi(35)*i1r15r25**2 - 2.D0*mi(35)*i1r15r25**2*
     &    rsq1r + 2.D0*mi(35)*i1r15r25**2*rgl - mi(35)*i1r15*i1r15r25*
     &    rsq1r + mi(35)*i1r15*i1r15r25*rgl + mi(35)*i1r15*i1r15r25**2*
     &    rsq1r**2 - 2.D0*mi(35)*i1r15*i1r15r25**2*rgl*rsq1r + mi(35)*
     &    i1r15*i1r15r25**2*rgl**2 + mi(35)*i1r15**2*i1r15r25*rsq1r**2
     &     - 2.D0*mi(35)*i1r15**2*i1r15r25*rgl*rsq1r + mi(35)*i1r15**2*
     &    i1r15r25*rgl**2 + mi(35)*r15*i1r15r25**2 + mi(41)*r15**(-2)*
     &    i1r15r25**2*rsq1r**2 )
      e = e  + Nc*s125 * (  - 2.D0*mi(41)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1r + mi(41)*r15**(-2)*i1r15r25**2*rgl**2 - 2.D0*mi(41)*
     &    r15**(-1)*i1r15r25**2*rsq1r - mi(41)*r15**(-1)*i1r15r25**2*
     &    rsq1r**2 + 2.D0*mi(41)*r15**(-1)*i1r15r25**2*rgl + 2.D0*mi(41
     &    )*r15**(-1)*i1r15r25**2*rgl*rsq1r - mi(41)*r15**(-1)*
     &    i1r15r25**2*rgl**2 - mi(41)*r25**(-2)*rsq1r + mi(41)*
     &    r25**(-2)*rgl + mi(41)*r25**(-2)*i1r15*rsq1r**2 - 2.D0*mi(41)
     &    *r25**(-2)*i1r15*rgl*rsq1r + mi(41)*r25**(-2)*i1r15*rgl**2 - 
     &    mi(41)*r25**(-1)*i1r15*rsq1r + mi(41)*r25**(-1)*i1r15*rgl + 2.
     &    D0*mi(41)*r25**(-1)*i1r15**2*rsq1r**2 - 4.D0*mi(41)*r25**(-1)
     &    *i1r15**2*rgl*rsq1r + 2.D0*mi(41)*r25**(-1)*i1r15**2*rgl**2
     &     + mi(41)*i1r15r25**2 + 2.D0*mi(41)*i1r15r25**2*rsq1r - 2.D0*
     &    mi(41)*i1r15r25**2*rgl + mi(41)*i1r15*i1r15r25*rsq1r - mi(41)
     &    *i1r15*i1r15r25*rgl - mi(41)*i1r15*i1r15r25**2*rsq1r**2 + 2.D0
     &    *mi(41)*i1r15*i1r15r25**2*rgl*rsq1r - mi(41)*i1r15*
     &    i1r15r25**2*rgl**2 )
      e = e  + Nc*s125 * (  - 2.D0*mi(41)*i1r15**2*i1r15r25*rsq1r**2 + 4.
     &    D0*mi(41)*i1r15**2*i1r15r25*rgl*rsq1r - 2.D0*mi(41)*i1r15**2*
     &    i1r15r25*rgl**2 - mi(41)*r15*i1r15r25**2 + mi(43)*r15**(-2)*
     &    i1r15r25*rsq1r**2 - 2.D0*mi(43)*r15**(-2)*i1r15r25*rgl*rsq1r
     &     + mi(43)*r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(43)*r15**(-2)*
     &    i1r25*rsq1r**2 + 4.D0*mi(43)*r15**(-2)*i1r25*rgl*rsq1r - 2.D0
     &    *mi(43)*r15**(-2)*i1r25*rgl**2 - 2.D0*mi(43)*r15**(-1)*
     &    i1r15r25*rsq1r + 2.D0*mi(43)*r15**(-1)*i1r15r25*rgl + mi(43)*
     &    r15**(-1)*i1r15r25**2*rsq1r**2 - 2.D0*mi(43)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1r + mi(43)*r15**(-1)*i1r15r25**2*rgl**2
     &     + 4.D0*mi(43)*r15**(-1)*i1r25*rsq1r - 4.D0*mi(43)*r15**(-1)*
     &    i1r25*rgl - 4.D0*mi(43)*r15**(-1)*i1r25**2*rsq1r**2 + 8.D0*
     &    mi(43)*r15**(-1)*i1r25**2*rgl*rsq1r - 4.D0*mi(43)*r15**(-1)*
     &    i1r25**2*rgl**2 + mi(43)*r25**(-2)*i1r15*rsq1r - mi(43)*
     &    r25**(-2)*i1r15*rgl - mi(43)*r25**(-2)*i1r15**2*rsq1r**2 + 2.D
     &    0*mi(43)*r25**(-2)*i1r15**2*rgl*rsq1r )
      e = e  + Nc*s125 * (  - mi(43)*r25**(-2)*i1r15**2*rgl**2 - mi(43)*
     &    r25**(-1)*i1r15*rsq1r + mi(43)*r25**(-1)*i1r15*rgl + mi(43)*
     &    r25**(-1)*i1r15**2*rsq1r + mi(43)*r25**(-1)*i1r15**2*rsq1r**2
     &     - mi(43)*r25**(-1)*i1r15**2*rgl - 2.D0*mi(43)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r + mi(43)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*
     &    mi(43)*r25**(-1)*i1r15**3*rsq1r**2 + 4.D0*mi(43)*r25**(-1)*
     &    i1r15**3*rgl*rsq1r - 2.D0*mi(43)*r25**(-1)*i1r15**3*rgl**2 + 
     &    mi(43)*i1r15r25 - 2.D0*mi(43)*i1r15r25**2*rsq1r + 2.D0*mi(43)
     &    *i1r15r25**2*rgl - mi(43)*i1r15*i1r15r25*rsq1r + mi(43)*i1r15
     &    *i1r15r25*rgl + mi(43)*i1r15*i1r15r25**2*rsq1r**2 - 2.D0*mi(
     &    43)*i1r15*i1r15r25**2*rgl*rsq1r + mi(43)*i1r15*i1r15r25**2*
     &    rgl**2 + mi(43)*i1r15**2*i1r15r25*rsq1r + mi(43)*i1r15**2*
     &    i1r15r25*rsq1r**2 - mi(43)*i1r15**2*i1r15r25*rgl - 2.D0*mi(43
     &    )*i1r15**2*i1r15r25*rgl*rsq1r + mi(43)*i1r15**2*i1r15r25*
     &    rgl**2 - mi(43)*i1r15**2*i1r15r25**2*rsq1r**2 + 2.D0*mi(43)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1r )
      e = e  + Nc*s125 * (  - mi(43)*i1r15**2*i1r15r25**2*rgl**2 - 2.D0*
     &    mi(43)*i1r15**3*i1r15r25*rsq1r**2 + 4.D0*mi(43)*i1r15**3*
     &    i1r15r25*rgl*rsq1r - 2.D0*mi(43)*i1r15**3*i1r15r25*rgl**2 + 
     &    mi(43)*r15*i1r15r25**2 )
      e = e  + Nc*s125**2 * ( mi(49)*r15**(-2)*i1r15r25*rsq1r**3 - 3.D0*
     &    mi(49)*r15**(-2)*i1r15r25*rgl*rsq1r**2 + 3.D0*mi(49)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1r - mi(49)*r15**(-2)*i1r15r25*
     &    rgl**3 - mi(49)*r15**(-2)*i1r15r25**2*rsq1r**3 + 3.D0*mi(49)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1r**2 - 3.D0*mi(49)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1r + mi(49)*r15**(-2)*i1r15r25**2*
     &    rgl**3 - 3.D0*mi(49)*r15**(-1)*i1r15r25*rsq1r**2 + 4.D0*mi(49
     &    )*r15**(-1)*i1r15r25*rgl*rsq1r - mi(49)*r15**(-1)*i1r15r25*
     &    rgl**2 + 3.D0*mi(49)*r15**(-1)*i1r15r25**2*rsq1r**2 - 6.D0*
     &    mi(49)*r15**(-1)*i1r15r25**2*rgl*rsq1r + 3.D0*mi(49)*
     &    r15**(-1)*i1r15r25**2*rgl**2 + mi(49)*r25**(-2)*rsq1r**2 - 2.D
     &    0*mi(49)*r25**(-2)*rgl*rsq1r + mi(49)*r25**(-2)*rgl**2 - mi(
     &    49)*r25**(-2)*i1r15*rsq1r**2 - mi(49)*r25**(-2)*i1r15*
     &    rsq1r**3 + 2.D0*mi(49)*r25**(-2)*i1r15*rgl*rsq1r + 3.D0*mi(49
     &    )*r25**(-2)*i1r15*rgl*rsq1r**2 - mi(49)*r25**(-2)*i1r15*
     &    rgl**2 )
      e = e  + Nc*s125**2 * (  - 3.D0*mi(49)*r25**(-2)*i1r15*rgl**2*
     &    rsq1r + mi(49)*r25**(-2)*i1r15*rgl**3 + mi(49)*r25**(-2)*
     &    i1r15**2*rsq1r**3 - 3.D0*mi(49)*r25**(-2)*i1r15**2*rgl*
     &    rsq1r**2 + 3.D0*mi(49)*r25**(-2)*i1r15**2*rgl**2*rsq1r - mi(
     &    49)*r25**(-2)*i1r15**2*rgl**3 - mi(49)*r25**(-1)*rsq1r - mi(
     &    49)*r25**(-1)*rgl + mi(49)*r25**(-1)*i1r15*rsq1r + mi(49)*
     &    r25**(-1)*i1r15*rsq1r**2 - mi(49)*r25**(-1)*i1r15*rgl - mi(49
     &    )*r25**(-1)*i1r15*rgl**2 - 2.D0*mi(49)*r25**(-1)*i1r15**2*
     &    rsq1r**2 - mi(49)*r25**(-1)*i1r15**2*rsq1r**3 + 4.D0*mi(49)*
     &    r25**(-1)*i1r15**2*rgl*rsq1r + 3.D0*mi(49)*r25**(-1)*i1r15**2
     &    *rgl*rsq1r**2 - 2.D0*mi(49)*r25**(-1)*i1r15**2*rgl**2 - 3.D0*
     &    mi(49)*r25**(-1)*i1r15**2*rgl**2*rsq1r + mi(49)*r25**(-1)*
     &    i1r15**2*rgl**3 + 2.D0*mi(49)*r25**(-1)*i1r15**3*rsq1r**3 - 6.
     &    D0*mi(49)*r25**(-1)*i1r15**3*rgl*rsq1r**2 + 6.D0*mi(49)*
     &    r25**(-1)*i1r15**3*rgl**2*rsq1r - 2.D0*mi(49)*r25**(-1)*
     &    i1r15**3*rgl**3 )
      e = e  + Nc*s125**2 * ( 2.D0*mi(49)*i1r15r25*rsq1r - 3.D0*mi(49)*
     &    i1r15r25**2*rsq1r + 3.D0*mi(49)*i1r15r25**2*rgl + mi(49)*
     &    i1r15*i1r15r25*rsq1r + mi(49)*i1r15*i1r15r25*rsq1r**2 - mi(49
     &    )*i1r15*i1r15r25*rgl - mi(49)*i1r15*i1r15r25*rgl**2 - mi(49)*
     &    i1r15*i1r15r25**2*rsq1r**2 + 2.D0*mi(49)*i1r15*i1r15r25**2*
     &    rgl*rsq1r - mi(49)*i1r15*i1r15r25**2*rgl**2 - 2.D0*mi(49)*
     &    i1r15**2*i1r15r25*rsq1r**2 - mi(49)*i1r15**2*i1r15r25*
     &    rsq1r**3 + 4.D0*mi(49)*i1r15**2*i1r15r25*rgl*rsq1r + 3.D0*mi(
     &    49)*i1r15**2*i1r15r25*rgl*rsq1r**2 - 2.D0*mi(49)*i1r15**2*
     &    i1r15r25*rgl**2 - 3.D0*mi(49)*i1r15**2*i1r15r25*rgl**2*rsq1r
     &     + mi(49)*i1r15**2*i1r15r25*rgl**3 + mi(49)*i1r15**2*
     &    i1r15r25**2*rsq1r**3 - 3.D0*mi(49)*i1r15**2*i1r15r25**2*rgl*
     &    rsq1r**2 + 3.D0*mi(49)*i1r15**2*i1r15r25**2*rgl**2*rsq1r - 
     &    mi(49)*i1r15**2*i1r15r25**2*rgl**3 + 2.D0*mi(49)*i1r15**3*
     &    i1r15r25*rsq1r**3 - 6.D0*mi(49)*i1r15**3*i1r15r25*rgl*
     &    rsq1r**2 )
      e = e  + Nc*s125**2 * ( 6.D0*mi(49)*i1r15**3*i1r15r25*rgl**2*rsq1r
     &     - 2.D0*mi(49)*i1r15**3*i1r15r25*rgl**3 - mi(49)*r15*i1r15r25
     &     + mi(49)*r15*i1r15r25**2 + 2.D0*mi(49)*r15*i1r15r25**2*rsq1r
     &     - 2.D0*mi(49)*r15*i1r15r25**2*rgl - mi(49)*r15**2*
     &    i1r15r25**2 )

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

      e =  + Nc**(-1)*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*r25**(-1) + 
     &    2.D0*mi(17)*r15**(-1)*i1r25 + mi(18)*r15**(-3)*rsq1l**(-1) - 
     &    4.D0*mi(18)*r15**(-3)*rgl*rsq1l**(-1) - mi(18)*r15**(-3)*
     &    i1r15r25*rsq1l**(-1) + 4.D0*mi(18)*r15**(-3)*i1r15r25*rgl*
     &    rsq1l**(-1) + 3.D0*mi(18)*r15**(-3)*r25*rsq1l**(-1) + 2.D0*
     &    mi(18)*r15**(-2)*rsq1l**(-1) + mi(18)*r15**(-2)*i1r15r25*
     &    rsq1l**(-1) - 2.D0*mi(18)*r15**(-1)*r25**(-1) - 2.D0*mi(18)*
     &    r15**(-1)*i1r25 - 1/(rsq1l - rgl)*mi(18)*r15**(-3) + 4.D0/(
     &    rsq1l - rgl)*mi(18)*r15**(-3)*rgl - 6.D0/(rsq1l - rgl)*mi(18)
     &    *r15**(-3)*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*
     &    r15**(-3)*i1r15r25 - 4.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*
     &    i1r15r25*rgl + 6.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*i1r15r25*
     &    rgl**2*rsq1l**(-1) - 3.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*r25
     &     + 6.D0/(rsq1l - rgl)*mi(18)*r15**(-3)*r25*rgl*rsq1l**(-1) - 
     &    2.D0/(rsq1l - rgl)*mi(18)*r15**(-2) + 5.D0/(rsq1l - rgl)*mi(
     &    18)*r15**(-2)*rgl*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25 + 1/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25*rgl*rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)*
     &    mi(18)*r15**(-1)*r25**(-1)*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l
     &     - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl**2*rsq1l**(-1) + 2.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*rgl**2*rsq1l**(-1) + 2.D0
     &    /(rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl**2*rsq1l**(-1) + 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*rgl - 1/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*rgl**2*rsq1l**(-1) + 2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*rgl**2 - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*rgl**3*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*
     &    i1r15r25*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)
     &    *i1r15r25*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-3)*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-3)*i1r15r25*rgl**3*rsq1l**(-1) - 3.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*r25*rgl + 3.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r15**(-3)*r25*rgl**2*rsq1l**(-1) - 
     &    3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*rgl + 3.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*rgl**2*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25*rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*i1r15r25*rgl**3*rsq1l**(-1) - 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*r25**(-1)*rgl**2 + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*r25**(-1)*rgl**3*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25*rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-1)*i1r15r25*rgl**3*rsq1l**(-1) - 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*rgl**2 + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*rgl**3*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*i1r15*i1r15r25*rgl**2 + 2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*i1r15*i1r15r25*rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1) * (  - 4.D0*r15**(-1)*ir15r25 - 4.D0*mi(20)*
     &    r15**(-2)*ir15r25 + 4.D0*mi(20)*r15**(-2)*i1r25*rsq1l - 4.D0*
     &    mi(20)*r15**(-2)*i1r25*rgl - 4.D0*mi(20)*r15**(-1)*ir15r25**2
     &     + 4.D0*mi(20)*r15**(-1)*i1r25**2*rsq1l - 4.D0*mi(20)*
     &    r15**(-1)*i1r25**2*rgl - 4.D0*mi(22)*r15**(-2) + 4.D0*mi(22)*
     &    r15**(-2)*ir15r25 + 4.D0*mi(22)*r15**(-1)*ir15r25**2 + 4.D0*
     &    mi(26)*r15**(-2) - 4.D0*mi(26)*r15**(-2)*i1r25*rsq1l + 4.D0*
     &    mi(26)*r15**(-2)*i1r25*rgl + 2.D0*mi(26)*r15**(-1)*r25**(-1)*
     &    rsq1l - 2.D0*mi(26)*r15**(-1)*r25**(-1)*rgl + 2.D0*mi(26)*
     &    r15**(-1)*i1r25*rsq1l - 2.D0*mi(26)*r15**(-1)*i1r25*rgl - 4.D0
     &    *mi(26)*r15**(-1)*i1r25**2*rsq1l + 4.D0*mi(26)*r15**(-1)*
     &    i1r25**2*rgl )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(28)*r15**(-3) - 4.D0*mi(28)*
     &    r15**(-3)*rsq1l + 4.D0*mi(28)*r15**(-3)*rgl - 4.D0*mi(28)*
     &    r15**(-3)*r25 + 4.D0*mi(28)*r15**(-3)*r25*rsq1l - 4.D0*mi(28)
     &    *r15**(-3)*r25*rgl + 2.D0*mi(28)*r15**(-3)*r25**2 - 3.D0*mi(
     &    28)*r15**(-2) + 2.D0*mi(28)*r15**(-2)*rsq1l - 2.D0*mi(28)*
     &    r15**(-2)*rgl + 3.D0*mi(28)*r15**(-2)*r25 + mi(28)*r15**(-1)
     &     + 2.D0*mi(32)*r15**(-2)*i1r15r25*rsq1l**2 - 4.D0*mi(32)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l + 2.D0*mi(32)*r15**(-2)*i1r15r25
     &    *rgl**2 - 2.D0*mi(32)*r15**(-1)*r25**(-1)*rsq1l + mi(32)*
     &    r15**(-1)*i1r15r25*rsq1l - mi(32)*r15**(-1)*i1r15r25*rgl - 2.D
     &    0*mi(36)*r15**(-3)*rsq1l**2 + 4.D0*mi(36)*r15**(-3)*rgl*rsq1l
     &     - 2.D0*mi(36)*r15**(-3)*rgl**2 + 2.D0*mi(36)*r15**(-3)*
     &    i1r15r25*rsq1l**2 - 4.D0*mi(36)*r15**(-3)*i1r15r25*rgl*rsq1l
     &     + 2.D0*mi(36)*r15**(-3)*i1r15r25*rgl**2 + 2.D0*mi(36)*
     &    r15**(-3)*r25 - 4.D0*mi(36)*r15**(-3)*r25*rsq1l + 4.D0*mi(36)
     &    *r15**(-3)*r25*rgl )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(36)*r15**(-3)*r25**2 + 3.D0*
     &    mi(36)*r15**(-2)*rsq1l - mi(36)*r15**(-2)*rgl - mi(36)*
     &    r15**(-2)*i1r15r25*rsq1l - 2.D0*mi(36)*r15**(-2)*i1r15r25*
     &    rsq1l**2 + mi(36)*r15**(-2)*i1r15r25*rgl + 4.D0*mi(36)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l - 2.D0*mi(36)*r15**(-2)*i1r15r25
     &    *rgl**2 - mi(36)*r15**(-2)*r25 + mi(36)*r15**(-1)*i1r15r25*
     &    rsq1l - mi(36)*r15**(-1)*i1r15r25*rgl + 4.D0*mi(38)*r15**(-3)
     &    *rsq1l**2 - 8.D0*mi(38)*r15**(-3)*rgl*rsq1l + 4.D0*mi(38)*
     &    r15**(-3)*rgl**2 - 4.D0*mi(38)*r15**(-3)*i1r15r25*rsq1l**2 + 
     &    8.D0*mi(38)*r15**(-3)*i1r15r25*rgl*rsq1l - 4.D0*mi(38)*
     &    r15**(-3)*i1r15r25*rgl**2 - 2.D0*mi(38)*r15**(-3)*r25 + 4.D0*
     &    mi(38)*r15**(-3)*r25*rsq1l - 4.D0*mi(38)*r15**(-3)*r25*rgl + 
     &    2.D0*mi(38)*r15**(-3)*r25**2 - 2.D0*mi(38)*r15**(-2) - 4.D0*
     &    mi(38)*r15**(-2)*rgl + 3.D0*mi(38)*r15**(-2)*r25 + 4.D0*mi(38
     &    )*r15**(-1)*r25**(-1)*rsq1l + mi(38)*r15**(-1) - 8.D0*mi(38)*
     &    r15**(-1)*ir15r25*rsq1l )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(40)*r15**(-3)*i1r15r25*rsq1l**2
     &     - 4.D0*mi(40)*r15**(-3)*i1r15r25*rgl*rsq1l + 2.D0*mi(40)*
     &    r15**(-3)*i1r15r25*rgl**2 + 2.D0*mi(40)*r15**(-2)*r25**(-1)*
     &    rsq1l + mi(40)*r15**(-2)*i1r15r25*rsq1l - 2.D0*mi(40)*
     &    r15**(-2)*i1r15r25*rsq1l**2 - mi(40)*r15**(-2)*i1r15r25*rgl
     &     + 4.D0*mi(40)*r15**(-2)*i1r15r25*rgl*rsq1l - 2.D0*mi(40)*
     &    r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(40)*r15**(-1)*r25**(-1)*
     &    rsq1l - mi(40)*r15**(-1)*i1r15r25*rsq1l + mi(40)*r15**(-1)*
     &    i1r15r25*rgl - 2.D0*mi(42)*r15**(-3) + 4.D0*mi(42)*r15**(-3)*
     &    rsq1l - 2.D0*mi(42)*r15**(-3)*rsq1l**2 - 4.D0*mi(42)*
     &    r15**(-3)*rgl + 4.D0*mi(42)*r15**(-3)*rgl*rsq1l - 2.D0*mi(42)
     &    *r15**(-3)*rgl**2 + 4.D0*mi(42)*r15**(-3)*r25 - 4.D0*mi(42)*
     &    r15**(-3)*r25*rsq1l + 4.D0*mi(42)*r15**(-3)*r25*rgl - 2.D0*
     &    mi(42)*r15**(-3)*r25**2 - 2.D0*mi(42)*r15**(-2)*r25**(-1)*
     &    rsq1l + mi(42)*r15**(-2) + 3.D0*mi(42)*r15**(-2)*rsq1l - mi(
     &    42)*r15**(-2)*rgl )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(42)*r15**(-2)*i1r15r25*rsq1l**2
     &     - 4.D0*mi(42)*r15**(-2)*i1r15r25*rgl*rsq1l + 2.D0*mi(42)*
     &    r15**(-2)*i1r15r25*rgl**2 - 4.D0*mi(42)*r15**(-2)*i1r25*
     &    rsq1l**2 + 8.D0*mi(42)*r15**(-2)*i1r25*rgl*rsq1l - 4.D0*mi(42
     &    )*r15**(-2)*i1r25*rgl**2 - mi(42)*r15**(-2)*r25 - mi(42)*
     &    r15**(-1)*i1r15r25*rsq1l + mi(42)*r15**(-1)*i1r15r25*rgl + 2.D
     &    0*mi(42)*r15**(-1)*i1r25*rsq1l - 2.D0*mi(42)*r15**(-1)*i1r25*
     &    rgl - 4.D0*mi(42)*r15**(-1)*i1r25**2*rsq1l**2 + 8.D0*mi(42)*
     &    r15**(-1)*i1r25**2*rgl*rsq1l - 4.D0*mi(42)*r15**(-1)*i1r25**2
     &    *rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(44)*r15**(-3)*rsq1l**3 + 
     &    6.D0*mi(44)*r15**(-3)*rgl*rsq1l**2 - 6.D0*mi(44)*r15**(-3)*
     &    rgl**2*rsq1l + 2.D0*mi(44)*r15**(-3)*rgl**3 + 2.D0*mi(44)*
     &    r15**(-3)*i1r15r25*rsq1l**3 - 6.D0*mi(44)*r15**(-3)*i1r15r25*
     &    rgl*rsq1l**2 + 6.D0*mi(44)*r15**(-3)*i1r15r25*rgl**2*rsq1l - 
     &    2.D0*mi(44)*r15**(-3)*i1r15r25*rgl**3 + 3.D0*mi(44)*r15**(-2)
     &    *rsq1l**2 - 3.D0*mi(44)*r15**(-2)*rgl**2 + mi(44)*r15**(-2)*
     &    i1r15r25*rsq1l**2 - 2.D0*mi(44)*r15**(-2)*i1r15r25*rgl*rsq1l
     &     + mi(44)*r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(44)*r15**(-1)*
     &    r25**(-1)*rsq1l - 2.D0*mi(44)*r15**(-1)*r25**(-1)*rsq1l**2 + 
     &    2.D0*mi(44)*r15**(-1)*r25**(-1)*rgl*rsq1l - mi(44)*r15**(-1)*
     &    rsq1l + mi(44)*r15**(-1)*rgl - 2.D0*mi(44)*r25**(-1)*rsq1l - 
     &    2.D0*mi(46)*r15**(-3)*rsq1l**3 + 6.D0*mi(46)*r15**(-3)*rgl*
     &    rsq1l**2 - 6.D0*mi(46)*r15**(-3)*rgl**2*rsq1l + 2.D0*mi(46)*
     &    r15**(-3)*rgl**3 + 2.D0*mi(46)*r15**(-3)*i1r15r25*rsq1l**3 - 
     &    6.D0*mi(46)*r15**(-3)*i1r15r25*rgl*rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * ( 6.D0*mi(46)*r15**(-3)*i1r15r25*
     &    rgl**2*rsq1l - 2.D0*mi(46)*r15**(-3)*i1r15r25*rgl**3 - 2.D0*
     &    mi(46)*r15**(-3)*r25 + 6.D0*mi(46)*r15**(-3)*r25*rsq1l - 6.D0
     &    *mi(46)*r15**(-3)*r25*rsq1l**2 - 6.D0*mi(46)*r15**(-3)*r25*
     &    rgl + 12.D0*mi(46)*r15**(-3)*r25*rgl*rsq1l - 6.D0*mi(46)*
     &    r15**(-3)*r25*rgl**2 + 4.D0*mi(46)*r15**(-3)*r25**2 - 6.D0*
     &    mi(46)*r15**(-3)*r25**2*rsq1l + 6.D0*mi(46)*r15**(-3)*r25**2*
     &    rgl - 2.D0*mi(46)*r15**(-3)*r25**3 - 4.D0*mi(46)*r15**(-2)*
     &    rsq1l + 3.D0*mi(46)*r15**(-2)*rsq1l**2 - 2.D0*mi(46)*
     &    r15**(-2)*rgl - 3.D0*mi(46)*r15**(-2)*rgl**2 - mi(46)*
     &    r15**(-2)*i1r15r25*rsq1l**2 + 2.D0*mi(46)*r15**(-2)*i1r15r25*
     &    rgl*rsq1l - mi(46)*r15**(-2)*i1r15r25*rgl**2 + 3.D0*mi(46)*
     &    r15**(-2)*r25 + 6.D0*mi(46)*r15**(-2)*r25*rgl - 3.D0*mi(46)*
     &    r15**(-2)*r25**2 - 2.D0*mi(46)*r15**(-1)*r25**(-1)*rsq1l**2
     &     + 2.D0*mi(46)*r15**(-1)*r25**(-1)*rgl*rsq1l + 3.D0*mi(46)*
     &    r15**(-1)*rsq1l )
      e = e  + Nc**(-1)*s125**2 * ( mi(46)*r15**(-1)*rgl - mi(46)*
     &    r15**(-1)*r25 )
      e = e  + Nc*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*r25**(-1) - 2.D
     &    0*mi(17)*r15**(-1)*i1r25 + 2.D0*mi(18)*r15**(-1)*r25**(-1) + 
     &    2.D0*mi(18)*r15**(-1)*i1r25 )
      e = e  + Nc * (  - 4.D0*mi(20)*r15**(-2)*i1r25*rsq1l + 4.D0*mi(20)
     &    *r15**(-2)*i1r25*rgl - 4.D0*mi(20)*r15**(-1)*i1r25**2*rsq1l
     &     + 4.D0*mi(20)*r15**(-1)*i1r25**2*rgl + 4.D0*mi(26)*r15**(-2)
     &    *i1r25*rsq1l - 4.D0*mi(26)*r15**(-2)*i1r25*rgl - 2.D0*mi(26)*
     &    r15**(-1)*r25**(-1)*rsq1l + 2.D0*mi(26)*r15**(-1)*r25**(-1)*
     &    rgl - 2.D0*mi(26)*r15**(-1)*i1r25*rsq1l + 2.D0*mi(26)*
     &    r15**(-1)*i1r25*rgl + 4.D0*mi(26)*r15**(-1)*i1r25**2*rsq1l - 
     &    4.D0*mi(26)*r15**(-1)*i1r25**2*rgl )
      e = e  + Nc*s125 * ( 2.D0*mi(30)*r15**(-2)*i1r15r25*rsq1l**2 - 4.D0
     &    *mi(30)*r15**(-2)*i1r15r25*rgl*rsq1l + 2.D0*mi(30)*r15**(-2)*
     &    i1r15r25*rgl**2 - 2.D0*mi(30)*r15**(-1)*r25**(-1)*rgl - mi(30
     &    )*r15**(-1)*i1r15r25*rsq1l + mi(30)*r15**(-1)*i1r15r25*rgl - 
     &    2.D0*mi(34)*r15**(-3)*rsq1l**2 + 4.D0*mi(34)*r15**(-3)*rgl*
     &    rsq1l - 2.D0*mi(34)*r15**(-3)*rgl**2 + 2.D0*mi(34)*r15**(-3)*
     &    i1r15r25*rsq1l**2 - 4.D0*mi(34)*r15**(-3)*i1r15r25*rgl*rsq1l
     &     + 2.D0*mi(34)*r15**(-3)*i1r15r25*rgl**2 + mi(34)*r15**(-2)*
     &    rsq1l + mi(34)*r15**(-2)*rgl - mi(34)*r15**(-2)*i1r15r25*
     &    rsq1l - 2.D0*mi(34)*r15**(-2)*i1r15r25*rsq1l**2 + mi(34)*
     &    r15**(-2)*i1r15r25*rgl + 4.D0*mi(34)*r15**(-2)*i1r15r25*rgl*
     &    rsq1l - 2.D0*mi(34)*r15**(-2)*i1r15r25*rgl**2 + mi(34)*
     &    r15**(-1)*i1r15r25*rsq1l - mi(34)*r15**(-1)*i1r15r25*rgl - 2.D
     &    0*mi(40)*r15**(-3)*i1r15r25*rsq1l**2 + 4.D0*mi(40)*r15**(-3)*
     &    i1r15r25*rgl*rsq1l - 2.D0*mi(40)*r15**(-3)*i1r15r25*rgl**2 - 
     &    2.D0*mi(40)*r15**(-2)*r25**(-1)*rgl )
      e = e  + Nc*s125 * ( mi(40)*r15**(-2)*i1r15r25*rsq1l + 2.D0*mi(40)
     &    *r15**(-2)*i1r15r25*rsq1l**2 - mi(40)*r15**(-2)*i1r15r25*rgl
     &     - 4.D0*mi(40)*r15**(-2)*i1r15r25*rgl*rsq1l + 2.D0*mi(40)*
     &    r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(40)*r15**(-1)*r25**(-1)*
     &    rgl - mi(40)*r15**(-1)*i1r15r25*rsq1l + mi(40)*r15**(-1)*
     &    i1r15r25*rgl + 2.D0*mi(42)*r15**(-3)*rsq1l**2 - 4.D0*mi(42)*
     &    r15**(-3)*rgl*rsq1l + 2.D0*mi(42)*r15**(-3)*rgl**2 + 2.D0*mi(
     &    42)*r15**(-2)*r25**(-1)*rgl - mi(42)*r15**(-2)*rsq1l - mi(42)
     &    *r15**(-2)*rgl - 2.D0*mi(42)*r15**(-2)*i1r15r25*rsq1l**2 + 4.D
     &    0*mi(42)*r15**(-2)*i1r15r25*rgl*rsq1l - 2.D0*mi(42)*r15**(-2)
     &    *i1r15r25*rgl**2 + 4.D0*mi(42)*r15**(-2)*i1r25*rsq1l**2 - 8.D0
     &    *mi(42)*r15**(-2)*i1r25*rgl*rsq1l + 4.D0*mi(42)*r15**(-2)*
     &    i1r25*rgl**2 + mi(42)*r15**(-1)*i1r15r25*rsq1l - mi(42)*
     &    r15**(-1)*i1r15r25*rgl - 2.D0*mi(42)*r15**(-1)*i1r25*rsq1l + 
     &    2.D0*mi(42)*r15**(-1)*i1r25*rgl + 4.D0*mi(42)*r15**(-1)*
     &    i1r25**2*rsq1l**2 )
      e = e  + Nc*s125 * (  - 8.D0*mi(42)*r15**(-1)*i1r25**2*rgl*rsq1l
     &     + 4.D0*mi(42)*r15**(-1)*i1r25**2*rgl**2 )
      e = e  + Nc*s125**2 * (  - 2.D0*mi(48)*r15**(-3)*rsq1l**3 + 6.D0*
     &    mi(48)*r15**(-3)*rgl*rsq1l**2 - 6.D0*mi(48)*r15**(-3)*rgl**2*
     &    rsq1l + 2.D0*mi(48)*r15**(-3)*rgl**3 + 2.D0*mi(48)*r15**(-3)*
     &    i1r15r25*rsq1l**3 - 6.D0*mi(48)*r15**(-3)*i1r15r25*rgl*
     &    rsq1l**2 + 6.D0*mi(48)*r15**(-3)*i1r15r25*rgl**2*rsq1l - 2.D0
     &    *mi(48)*r15**(-3)*i1r15r25*rgl**3 + 3.D0*mi(48)*r15**(-2)*
     &    rsq1l**2 - 3.D0*mi(48)*r15**(-2)*rgl**2 - 3.D0*mi(48)*
     &    r15**(-2)*i1r15r25*rsq1l**2 + 6.D0*mi(48)*r15**(-2)*i1r15r25*
     &    rgl*rsq1l - 3.D0*mi(48)*r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(
     &    48)*r15**(-1)*r25**(-1)*rgl*rsq1l + 2.D0*mi(48)*r15**(-1)*
     &    r25**(-1)*rgl**2 - mi(48)*r15**(-1)*rsq1l + mi(48)*r15**(-1)*
     &    rgl + mi(48)*r15**(-1)*i1r15r25*rsq1l + 2.D0*mi(48)*r15**(-1)
     &    *i1r15r25*rsq1l**2 - mi(48)*r15**(-1)*i1r15r25*rgl - 4.D0*mi(
     &    48)*r15**(-1)*i1r15r25*rgl*rsq1l + 2.D0*mi(48)*r15**(-1)*
     &    i1r15r25*rgl**2 - mi(48)*i1r15r25*rsq1l + mi(48)*i1r15r25*rgl
     &     )

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

      e =  + Nc**(-1)*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*r25**(-1) + 
     &    2.D0*mi(17)*r15**(-1)*i1r25 + mi(19)*r15**(-3)*rsq1r**(-1) - 
     &    4.D0*mi(19)*r15**(-3)*rgl*rsq1r**(-1) - mi(19)*r15**(-3)*
     &    i1r15r25*rsq1r**(-1) + 4.D0*mi(19)*r15**(-3)*i1r15r25*rgl*
     &    rsq1r**(-1) + 3.D0*mi(19)*r15**(-3)*r25*rsq1r**(-1) + 2.D0*
     &    mi(19)*r15**(-2)*rsq1r**(-1) + mi(19)*r15**(-2)*i1r15r25*
     &    rsq1r**(-1) - 2.D0*mi(19)*r15**(-1)*r25**(-1) - 2.D0*mi(19)*
     &    r15**(-1)*i1r25 - 1/(rsq1r - rgl)*mi(19)*r15**(-3) + 4.D0/(
     &    rsq1r - rgl)*mi(19)*r15**(-3)*rgl - 6.D0/(rsq1r - rgl)*mi(19)
     &    *r15**(-3)*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*
     &    r15**(-3)*i1r15r25 - 4.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*
     &    i1r15r25*rgl + 6.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*i1r15r25*
     &    rgl**2*rsq1r**(-1) - 3.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*r25
     &     + 6.D0/(rsq1r - rgl)*mi(19)*r15**(-3)*r25*rgl*rsq1r**(-1) - 
     &    2.D0/(rsq1r - rgl)*mi(19)*r15**(-2) + 5.D0/(rsq1r - rgl)*mi(
     &    19)*r15**(-2)*rgl*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25 + 1/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25*rgl*rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)*
     &    mi(19)*r15**(-1)*r25**(-1)*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r
     &     - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl**2*rsq1r**(-1) + 2.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*rgl**2*rsq1r**(-1) + 2.D0
     &    /(rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl**2*rsq1r**(-1) + 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*rgl - 1/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*rgl**2*rsq1r**(-1) + 2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*rgl**2 - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*rgl**3*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*
     &    i1r15r25*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)
     &    *i1r15r25*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-3)*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * ( 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-3)*i1r15r25*rgl**3*rsq1r**(-1) - 3.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*r25*rgl + 3.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r15**(-3)*r25*rgl**2*rsq1r**(-1) - 
     &    3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*rgl + 3.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*rgl**2*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25*rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*i1r15r25*rgl**3*rsq1r**(-1) - 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*r25**(-1)*rgl**2 + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*r25**(-1)*rgl**3*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25*rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-1)*i1r15r25*rgl**3*rsq1r**(-1) - 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*rgl**2 + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*rgl**3*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*i1r15*i1r15r25*rgl**2 + 2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*i1r15*i1r15r25*rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1) * (  - 4.D0*r15**(-1)*ir15r25 - 4.D0*mi(21)*
     &    r15**(-2)*ir15r25 + 4.D0*mi(21)*r15**(-2)*i1r25*rsq1r - 4.D0*
     &    mi(21)*r15**(-2)*i1r25*rgl - 4.D0*mi(21)*r15**(-1)*ir15r25**2
     &     + 4.D0*mi(21)*r15**(-1)*i1r25**2*rsq1r - 4.D0*mi(21)*
     &    r15**(-1)*i1r25**2*rgl - 4.D0*mi(23)*r15**(-2) + 4.D0*mi(23)*
     &    r15**(-2)*ir15r25 + 4.D0*mi(23)*r15**(-1)*ir15r25**2 + 4.D0*
     &    mi(27)*r15**(-2) - 4.D0*mi(27)*r15**(-2)*i1r25*rsq1r + 4.D0*
     &    mi(27)*r15**(-2)*i1r25*rgl + 2.D0*mi(27)*r15**(-1)*r25**(-1)*
     &    rsq1r - 2.D0*mi(27)*r15**(-1)*r25**(-1)*rgl + 2.D0*mi(27)*
     &    r15**(-1)*i1r25*rsq1r - 2.D0*mi(27)*r15**(-1)*i1r25*rgl - 4.D0
     &    *mi(27)*r15**(-1)*i1r25**2*rsq1r + 4.D0*mi(27)*r15**(-1)*
     &    i1r25**2*rgl )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(29)*r15**(-3) - 4.D0*mi(29)*
     &    r15**(-3)*rsq1r + 4.D0*mi(29)*r15**(-3)*rgl - 4.D0*mi(29)*
     &    r15**(-3)*r25 + 4.D0*mi(29)*r15**(-3)*r25*rsq1r - 4.D0*mi(29)
     &    *r15**(-3)*r25*rgl + 2.D0*mi(29)*r15**(-3)*r25**2 - 3.D0*mi(
     &    29)*r15**(-2) + 2.D0*mi(29)*r15**(-2)*rsq1r - 2.D0*mi(29)*
     &    r15**(-2)*rgl + 3.D0*mi(29)*r15**(-2)*r25 + mi(29)*r15**(-1)
     &     + 2.D0*mi(33)*r15**(-2)*i1r15r25*rsq1r**2 - 4.D0*mi(33)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r + 2.D0*mi(33)*r15**(-2)*i1r15r25
     &    *rgl**2 - 2.D0*mi(33)*r15**(-1)*r25**(-1)*rsq1r + mi(33)*
     &    r15**(-1)*i1r15r25*rsq1r - mi(33)*r15**(-1)*i1r15r25*rgl - 2.D
     &    0*mi(37)*r15**(-3)*rsq1r**2 + 4.D0*mi(37)*r15**(-3)*rgl*rsq1r
     &     - 2.D0*mi(37)*r15**(-3)*rgl**2 + 2.D0*mi(37)*r15**(-3)*
     &    i1r15r25*rsq1r**2 - 4.D0*mi(37)*r15**(-3)*i1r15r25*rgl*rsq1r
     &     + 2.D0*mi(37)*r15**(-3)*i1r15r25*rgl**2 + 2.D0*mi(37)*
     &    r15**(-3)*r25 - 4.D0*mi(37)*r15**(-3)*r25*rsq1r + 4.D0*mi(37)
     &    *r15**(-3)*r25*rgl )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(37)*r15**(-3)*r25**2 + 3.D0*
     &    mi(37)*r15**(-2)*rsq1r - mi(37)*r15**(-2)*rgl - mi(37)*
     &    r15**(-2)*i1r15r25*rsq1r - 2.D0*mi(37)*r15**(-2)*i1r15r25*
     &    rsq1r**2 + mi(37)*r15**(-2)*i1r15r25*rgl + 4.D0*mi(37)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r - 2.D0*mi(37)*r15**(-2)*i1r15r25
     &    *rgl**2 - mi(37)*r15**(-2)*r25 + mi(37)*r15**(-1)*i1r15r25*
     &    rsq1r - mi(37)*r15**(-1)*i1r15r25*rgl + 4.D0*mi(39)*r15**(-3)
     &    *rsq1r**2 - 8.D0*mi(39)*r15**(-3)*rgl*rsq1r + 4.D0*mi(39)*
     &    r15**(-3)*rgl**2 - 4.D0*mi(39)*r15**(-3)*i1r15r25*rsq1r**2 + 
     &    8.D0*mi(39)*r15**(-3)*i1r15r25*rgl*rsq1r - 4.D0*mi(39)*
     &    r15**(-3)*i1r15r25*rgl**2 - 2.D0*mi(39)*r15**(-3)*r25 + 4.D0*
     &    mi(39)*r15**(-3)*r25*rsq1r - 4.D0*mi(39)*r15**(-3)*r25*rgl + 
     &    2.D0*mi(39)*r15**(-3)*r25**2 - 2.D0*mi(39)*r15**(-2) - 4.D0*
     &    mi(39)*r15**(-2)*rgl + 3.D0*mi(39)*r15**(-2)*r25 + 4.D0*mi(39
     &    )*r15**(-1)*r25**(-1)*rsq1r + mi(39)*r15**(-1) - 8.D0*mi(39)*
     &    r15**(-1)*ir15r25*rsq1r )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(41)*r15**(-3)*i1r15r25*rsq1r**2
     &     - 4.D0*mi(41)*r15**(-3)*i1r15r25*rgl*rsq1r + 2.D0*mi(41)*
     &    r15**(-3)*i1r15r25*rgl**2 + 2.D0*mi(41)*r15**(-2)*r25**(-1)*
     &    rsq1r + mi(41)*r15**(-2)*i1r15r25*rsq1r - 2.D0*mi(41)*
     &    r15**(-2)*i1r15r25*rsq1r**2 - mi(41)*r15**(-2)*i1r15r25*rgl
     &     + 4.D0*mi(41)*r15**(-2)*i1r15r25*rgl*rsq1r - 2.D0*mi(41)*
     &    r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(41)*r15**(-1)*r25**(-1)*
     &    rsq1r - mi(41)*r15**(-1)*i1r15r25*rsq1r + mi(41)*r15**(-1)*
     &    i1r15r25*rgl - 2.D0*mi(43)*r15**(-3) + 4.D0*mi(43)*r15**(-3)*
     &    rsq1r - 2.D0*mi(43)*r15**(-3)*rsq1r**2 - 4.D0*mi(43)*
     &    r15**(-3)*rgl + 4.D0*mi(43)*r15**(-3)*rgl*rsq1r - 2.D0*mi(43)
     &    *r15**(-3)*rgl**2 + 4.D0*mi(43)*r15**(-3)*r25 - 4.D0*mi(43)*
     &    r15**(-3)*r25*rsq1r + 4.D0*mi(43)*r15**(-3)*r25*rgl - 2.D0*
     &    mi(43)*r15**(-3)*r25**2 - 2.D0*mi(43)*r15**(-2)*r25**(-1)*
     &    rsq1r + mi(43)*r15**(-2) + 3.D0*mi(43)*r15**(-2)*rsq1r - mi(
     &    43)*r15**(-2)*rgl )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(43)*r15**(-2)*i1r15r25*rsq1r**2
     &     - 4.D0*mi(43)*r15**(-2)*i1r15r25*rgl*rsq1r + 2.D0*mi(43)*
     &    r15**(-2)*i1r15r25*rgl**2 - 4.D0*mi(43)*r15**(-2)*i1r25*
     &    rsq1r**2 + 8.D0*mi(43)*r15**(-2)*i1r25*rgl*rsq1r - 4.D0*mi(43
     &    )*r15**(-2)*i1r25*rgl**2 - mi(43)*r15**(-2)*r25 - mi(43)*
     &    r15**(-1)*i1r15r25*rsq1r + mi(43)*r15**(-1)*i1r15r25*rgl + 2.D
     &    0*mi(43)*r15**(-1)*i1r25*rsq1r - 2.D0*mi(43)*r15**(-1)*i1r25*
     &    rgl - 4.D0*mi(43)*r15**(-1)*i1r25**2*rsq1r**2 + 8.D0*mi(43)*
     &    r15**(-1)*i1r25**2*rgl*rsq1r - 4.D0*mi(43)*r15**(-1)*i1r25**2
     &    *rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(45)*r15**(-3)*rsq1r**3 + 
     &    6.D0*mi(45)*r15**(-3)*rgl*rsq1r**2 - 6.D0*mi(45)*r15**(-3)*
     &    rgl**2*rsq1r + 2.D0*mi(45)*r15**(-3)*rgl**3 + 2.D0*mi(45)*
     &    r15**(-3)*i1r15r25*rsq1r**3 - 6.D0*mi(45)*r15**(-3)*i1r15r25*
     &    rgl*rsq1r**2 + 6.D0*mi(45)*r15**(-3)*i1r15r25*rgl**2*rsq1r - 
     &    2.D0*mi(45)*r15**(-3)*i1r15r25*rgl**3 + 3.D0*mi(45)*r15**(-2)
     &    *rsq1r**2 - 3.D0*mi(45)*r15**(-2)*rgl**2 + mi(45)*r15**(-2)*
     &    i1r15r25*rsq1r**2 - 2.D0*mi(45)*r15**(-2)*i1r15r25*rgl*rsq1r
     &     + mi(45)*r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(45)*r15**(-1)*
     &    r25**(-1)*rsq1r - 2.D0*mi(45)*r15**(-1)*r25**(-1)*rsq1r**2 + 
     &    2.D0*mi(45)*r15**(-1)*r25**(-1)*rgl*rsq1r - mi(45)*r15**(-1)*
     &    rsq1r + mi(45)*r15**(-1)*rgl - 2.D0*mi(45)*r25**(-1)*rsq1r - 
     &    2.D0*mi(47)*r15**(-3)*rsq1r**3 + 6.D0*mi(47)*r15**(-3)*rgl*
     &    rsq1r**2 - 6.D0*mi(47)*r15**(-3)*rgl**2*rsq1r + 2.D0*mi(47)*
     &    r15**(-3)*rgl**3 + 2.D0*mi(47)*r15**(-3)*i1r15r25*rsq1r**3 - 
     &    6.D0*mi(47)*r15**(-3)*i1r15r25*rgl*rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * ( 6.D0*mi(47)*r15**(-3)*i1r15r25*
     &    rgl**2*rsq1r - 2.D0*mi(47)*r15**(-3)*i1r15r25*rgl**3 - 2.D0*
     &    mi(47)*r15**(-3)*r25 + 6.D0*mi(47)*r15**(-3)*r25*rsq1r - 6.D0
     &    *mi(47)*r15**(-3)*r25*rsq1r**2 - 6.D0*mi(47)*r15**(-3)*r25*
     &    rgl + 12.D0*mi(47)*r15**(-3)*r25*rgl*rsq1r - 6.D0*mi(47)*
     &    r15**(-3)*r25*rgl**2 + 4.D0*mi(47)*r15**(-3)*r25**2 - 6.D0*
     &    mi(47)*r15**(-3)*r25**2*rsq1r + 6.D0*mi(47)*r15**(-3)*r25**2*
     &    rgl - 2.D0*mi(47)*r15**(-3)*r25**3 - 4.D0*mi(47)*r15**(-2)*
     &    rsq1r + 3.D0*mi(47)*r15**(-2)*rsq1r**2 - 2.D0*mi(47)*
     &    r15**(-2)*rgl - 3.D0*mi(47)*r15**(-2)*rgl**2 - mi(47)*
     &    r15**(-2)*i1r15r25*rsq1r**2 + 2.D0*mi(47)*r15**(-2)*i1r15r25*
     &    rgl*rsq1r - mi(47)*r15**(-2)*i1r15r25*rgl**2 + 3.D0*mi(47)*
     &    r15**(-2)*r25 + 6.D0*mi(47)*r15**(-2)*r25*rgl - 3.D0*mi(47)*
     &    r15**(-2)*r25**2 - 2.D0*mi(47)*r15**(-1)*r25**(-1)*rsq1r**2
     &     + 2.D0*mi(47)*r15**(-1)*r25**(-1)*rgl*rsq1r + 3.D0*mi(47)*
     &    r15**(-1)*rsq1r )
      e = e  + Nc**(-1)*s125**2 * ( mi(47)*r15**(-1)*rgl - mi(47)*
     &    r15**(-1)*r25 )
      e = e  + Nc*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*r25**(-1) - 2.D
     &    0*mi(17)*r15**(-1)*i1r25 + 2.D0*mi(19)*r15**(-1)*r25**(-1) + 
     &    2.D0*mi(19)*r15**(-1)*i1r25 )
      e = e  + Nc * (  - 4.D0*mi(21)*r15**(-2)*i1r25*rsq1r + 4.D0*mi(21)
     &    *r15**(-2)*i1r25*rgl - 4.D0*mi(21)*r15**(-1)*i1r25**2*rsq1r
     &     + 4.D0*mi(21)*r15**(-1)*i1r25**2*rgl + 4.D0*mi(27)*r15**(-2)
     &    *i1r25*rsq1r - 4.D0*mi(27)*r15**(-2)*i1r25*rgl - 2.D0*mi(27)*
     &    r15**(-1)*r25**(-1)*rsq1r + 2.D0*mi(27)*r15**(-1)*r25**(-1)*
     &    rgl - 2.D0*mi(27)*r15**(-1)*i1r25*rsq1r + 2.D0*mi(27)*
     &    r15**(-1)*i1r25*rgl + 4.D0*mi(27)*r15**(-1)*i1r25**2*rsq1r - 
     &    4.D0*mi(27)*r15**(-1)*i1r25**2*rgl )
      e = e  + Nc*s125 * ( 2.D0*mi(31)*r15**(-2)*i1r15r25*rsq1r**2 - 4.D0
     &    *mi(31)*r15**(-2)*i1r15r25*rgl*rsq1r + 2.D0*mi(31)*r15**(-2)*
     &    i1r15r25*rgl**2 - 2.D0*mi(31)*r15**(-1)*r25**(-1)*rgl - mi(31
     &    )*r15**(-1)*i1r15r25*rsq1r + mi(31)*r15**(-1)*i1r15r25*rgl - 
     &    2.D0*mi(35)*r15**(-3)*rsq1r**2 + 4.D0*mi(35)*r15**(-3)*rgl*
     &    rsq1r - 2.D0*mi(35)*r15**(-3)*rgl**2 + 2.D0*mi(35)*r15**(-3)*
     &    i1r15r25*rsq1r**2 - 4.D0*mi(35)*r15**(-3)*i1r15r25*rgl*rsq1r
     &     + 2.D0*mi(35)*r15**(-3)*i1r15r25*rgl**2 + mi(35)*r15**(-2)*
     &    rsq1r + mi(35)*r15**(-2)*rgl - mi(35)*r15**(-2)*i1r15r25*
     &    rsq1r - 2.D0*mi(35)*r15**(-2)*i1r15r25*rsq1r**2 + mi(35)*
     &    r15**(-2)*i1r15r25*rgl + 4.D0*mi(35)*r15**(-2)*i1r15r25*rgl*
     &    rsq1r - 2.D0*mi(35)*r15**(-2)*i1r15r25*rgl**2 + mi(35)*
     &    r15**(-1)*i1r15r25*rsq1r - mi(35)*r15**(-1)*i1r15r25*rgl - 2.D
     &    0*mi(41)*r15**(-3)*i1r15r25*rsq1r**2 + 4.D0*mi(41)*r15**(-3)*
     &    i1r15r25*rgl*rsq1r - 2.D0*mi(41)*r15**(-3)*i1r15r25*rgl**2 - 
     &    2.D0*mi(41)*r15**(-2)*r25**(-1)*rgl )
      e = e  + Nc*s125 * ( mi(41)*r15**(-2)*i1r15r25*rsq1r + 2.D0*mi(41)
     &    *r15**(-2)*i1r15r25*rsq1r**2 - mi(41)*r15**(-2)*i1r15r25*rgl
     &     - 4.D0*mi(41)*r15**(-2)*i1r15r25*rgl*rsq1r + 2.D0*mi(41)*
     &    r15**(-2)*i1r15r25*rgl**2 + 2.D0*mi(41)*r15**(-1)*r25**(-1)*
     &    rgl - mi(41)*r15**(-1)*i1r15r25*rsq1r + mi(41)*r15**(-1)*
     &    i1r15r25*rgl + 2.D0*mi(43)*r15**(-3)*rsq1r**2 - 4.D0*mi(43)*
     &    r15**(-3)*rgl*rsq1r + 2.D0*mi(43)*r15**(-3)*rgl**2 + 2.D0*mi(
     &    43)*r15**(-2)*r25**(-1)*rgl - mi(43)*r15**(-2)*rsq1r - mi(43)
     &    *r15**(-2)*rgl - 2.D0*mi(43)*r15**(-2)*i1r15r25*rsq1r**2 + 4.D
     &    0*mi(43)*r15**(-2)*i1r15r25*rgl*rsq1r - 2.D0*mi(43)*r15**(-2)
     &    *i1r15r25*rgl**2 + 4.D0*mi(43)*r15**(-2)*i1r25*rsq1r**2 - 8.D0
     &    *mi(43)*r15**(-2)*i1r25*rgl*rsq1r + 4.D0*mi(43)*r15**(-2)*
     &    i1r25*rgl**2 + mi(43)*r15**(-1)*i1r15r25*rsq1r - mi(43)*
     &    r15**(-1)*i1r15r25*rgl - 2.D0*mi(43)*r15**(-1)*i1r25*rsq1r + 
     &    2.D0*mi(43)*r15**(-1)*i1r25*rgl + 4.D0*mi(43)*r15**(-1)*
     &    i1r25**2*rsq1r**2 )
      e = e  + Nc*s125 * (  - 8.D0*mi(43)*r15**(-1)*i1r25**2*rgl*rsq1r
     &     + 4.D0*mi(43)*r15**(-1)*i1r25**2*rgl**2 )
      e = e  + Nc*s125**2 * (  - 2.D0*mi(49)*r15**(-3)*rsq1r**3 + 6.D0*
     &    mi(49)*r15**(-3)*rgl*rsq1r**2 - 6.D0*mi(49)*r15**(-3)*rgl**2*
     &    rsq1r + 2.D0*mi(49)*r15**(-3)*rgl**3 + 2.D0*mi(49)*r15**(-3)*
     &    i1r15r25*rsq1r**3 - 6.D0*mi(49)*r15**(-3)*i1r15r25*rgl*
     &    rsq1r**2 + 6.D0*mi(49)*r15**(-3)*i1r15r25*rgl**2*rsq1r - 2.D0
     &    *mi(49)*r15**(-3)*i1r15r25*rgl**3 + 3.D0*mi(49)*r15**(-2)*
     &    rsq1r**2 - 3.D0*mi(49)*r15**(-2)*rgl**2 - 3.D0*mi(49)*
     &    r15**(-2)*i1r15r25*rsq1r**2 + 6.D0*mi(49)*r15**(-2)*i1r15r25*
     &    rgl*rsq1r - 3.D0*mi(49)*r15**(-2)*i1r15r25*rgl**2 - 2.D0*mi(
     &    49)*r15**(-1)*r25**(-1)*rgl*rsq1r + 2.D0*mi(49)*r15**(-1)*
     &    r25**(-1)*rgl**2 - mi(49)*r15**(-1)*rsq1r + mi(49)*r15**(-1)*
     &    rgl + mi(49)*r15**(-1)*i1r15r25*rsq1r + 2.D0*mi(49)*r15**(-1)
     &    *i1r15r25*rsq1r**2 - mi(49)*r15**(-1)*i1r15r25*rgl - 4.D0*mi(
     &    49)*r15**(-1)*i1r15r25*rgl*rsq1r + 2.D0*mi(49)*r15**(-1)*
     &    i1r15r25*rgl**2 - mi(49)*i1r15r25*rsq1r + mi(49)*i1r15r25*rgl
     &     )

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

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*r25**(-1)
     &     - 2.D0*mi(17)*r25**(-1)*i1r15 + 2.D0*mi(18)*r15**(-1)*
     &    r25**(-1) - mi(18)*r25**(-3)*rsq1l**(-1) + 4.D0*mi(18)*
     &    r25**(-3)*rgl*rsq1l**(-1) + mi(18)*r25**(-3)*i1r15*
     &    rsq1l**(-1) - 4.D0*mi(18)*r25**(-3)*i1r15*rgl*rsq1l**(-1) - 2.
     &    D0*mi(18)*r25**(-2)*rsq1l**(-1) - mi(18)*r25**(-2)*i1r15*
     &    rsq1l**(-1) + mi(18)*r25**(-2)*i1r15**2*rsq1l**(-1) - 4.D0*
     &    mi(18)*r25**(-2)*i1r15**2*rgl*rsq1l**(-1) + 2.D0*mi(18)*
     &    r25**(-1)*i1r15 - mi(18)*r25**(-1)*i1r15**2*rsq1l**(-1) + mi(
     &    18)*r25**(-1)*i1r15**3*rsq1l**(-1) - 4.D0*mi(18)*r25**(-1)*
     &    i1r15**3*rgl*rsq1l**(-1) - mi(18)*i1r15**2*i1r15r25*
     &    rsq1l**(-1) + mi(18)*i1r15**3*i1r15r25*rsq1l**(-1) - 4.D0*mi(
     &    18)*i1r15**3*i1r15r25*rgl*rsq1l**(-1) - 3.D0*mi(18)*r15*
     &    r25**(-3)*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    r25**(-1)*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)*mi(18)*r25**(-3)
     &     - 4.D0/(rsq1l - rgl)*mi(18)*r25**(-3)*rgl + 6.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-3)*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*
     &    mi(18)*r25**(-3)*i1r15 + 4.D0/(rsq1l - rgl)*mi(18)*r25**(-3)*
     &    i1r15*rgl - 6.D0/(rsq1l - rgl)*mi(18)*r25**(-3)*i1r15*rgl**2*
     &    rsq1l**(-1) + 2.D0/(rsq1l - rgl)*mi(18)*r25**(-2) - 5.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*rgl*rsq1l**(-1) + 1/(rsq1l - 
     &    rgl)*mi(18)*r25**(-2)*i1r15 - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2 + 4.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15**2*rgl - 6.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**2 - 1/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18
     &    )*r25**(-1)*i1r15**3 + 4.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**3*rgl - 6.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*
     &    rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25
     &    *rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25 - 1/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*
     &    rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25
     &     + 4.D0/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl - 6.D0/(
     &    rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**2*rsq1l**(-1) + 3.D
     &    0/(rsq1l - rgl)*mi(18)*r15*r25**(-3) - 6.D0/(rsq1l - rgl)*mi(
     &    18)*r15*r25**(-3)*rgl*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-1)*r25**(-1)*rgl**2 - 2.D0/(rsq1l - rgl
     &    )/(rsq1l - rgl)*mi(18)*r15**(-1)*r25**(-1)*rgl**3*rsq1l**(-1)
     &     + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25
     &    *rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-1)*i1r15r25*rgl**3*rsq1l**(-1) - 1/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-3)*rgl + 1/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*r25**(-3)*rgl**2*rsq1l**(-1) - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-3)*rgl**2 + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-3)*rgl**3*
     &    rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-3)*
     &    i1r15*rgl - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-3)*
     &    i1r15*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-3)*i1r15*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-3)*i1r15*rgl**3*rsq1l**(-1) + 3.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl - 3.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl**2*rsq1l**(-1) + 2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**2 - 
     &    2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*
     &    rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*i1r15**2*rgl - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15**2*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl**2 - 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl**3*
     &    rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r25**(-1)*i1r15*rgl**3*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2 - 2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**3*
     &    rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**3*rgl - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)
     &    *i1r15**3*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2 - 2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**3*rsq1l**(-1) + 2.
     &    D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*i1r15*i1r15r25*rgl**3*rsq1l**(-1) + 2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2 - 2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**3*
     &    rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25*rgl - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25*rgl**2*rsq1l**(-1) + 2.D0/(rsq1l - rgl)/(rsq1l - rgl
     &    )*mi(18)*i1r15**3*i1r15r25*rgl**2 - 2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**3*rsq1l**(-1) + 3.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15*r25**(-3)*rgl - 3.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15*r25**(-3)*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1) * ( 4.D0*r15**(-1)*r25**(-1) - 4.D0*r15**(-1)*
     &    ir15r25 + 4.D0*mi(20)*r15**(-1)*r25**(-2) - 4.D0*mi(20)*
     &    r15**(-1)*ir15r25**2 - 4.D0*mi(20)*r25**(-2)*i1r15*rsq1l + 4.D
     &    0*mi(20)*r25**(-2)*i1r15*rgl - 4.D0*mi(20)*r25**(-1)*i1r15**2
     &    *rsq1l + 4.D0*mi(20)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(22)*
     &    r15**(-1)*r25**(-2) + 4.D0*mi(22)*r15**(-1)*ir15r25**2 + 4.D0
     &    *mi(22)*r25**(-2) - 2.D0*mi(24)*r15**(-1)*r25**(-1)*rsq1l + 2.
     &    D0*mi(24)*r15**(-1)*r25**(-1)*rgl - 4.D0*mi(24)*r25**(-2) + 4.
     &    D0*mi(24)*r25**(-2)*i1r15*rsq1l - 4.D0*mi(24)*r25**(-2)*i1r15
     &    *rgl - 2.D0*mi(24)*r25**(-1)*i1r15*rsq1l + 2.D0*mi(24)*
     &    r25**(-1)*i1r15*rgl + 4.D0*mi(24)*r25**(-1)*i1r15**2*rsq1l - 
     &    4.D0*mi(24)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(28)*r25**(-3) + 4.D0*mi(28)*
     &    r25**(-3)*rsq1l - 4.D0*mi(28)*r25**(-3)*rgl + 3.D0*mi(28)*
     &    r25**(-2) - 2.D0*mi(28)*r25**(-2)*rsq1l + 2.D0*mi(28)*
     &    r25**(-2)*rgl - mi(28)*r25**(-1) + 4.D0*mi(28)*r15*r25**(-3)
     &     - 4.D0*mi(28)*r15*r25**(-3)*rsq1l + 4.D0*mi(28)*r15*
     &    r25**(-3)*rgl - 3.D0*mi(28)*r15*r25**(-2) - 2.D0*mi(28)*
     &    r15**2*r25**(-3) + 2.D0*mi(32)*r25**(-3)*rsq1l**2 - 4.D0*mi(
     &    32)*r25**(-3)*rgl*rsq1l + 2.D0*mi(32)*r25**(-3)*rgl**2 - 2.D0
     &    *mi(32)*r25**(-3)*i1r15*rsq1l**2 + 4.D0*mi(32)*r25**(-3)*
     &    i1r15*rgl*rsq1l - 2.D0*mi(32)*r25**(-3)*i1r15*rgl**2 - 3.D0*
     &    mi(32)*r25**(-2)*rsq1l + mi(32)*r25**(-2)*rgl + mi(32)*
     &    r25**(-2)*i1r15*rsq1l + 2.D0*mi(32)*r25**(-2)*i1r15*rsq1l**2
     &     - mi(32)*r25**(-2)*i1r15*rgl - 4.D0*mi(32)*r25**(-2)*i1r15*
     &    rgl*rsq1l + 2.D0*mi(32)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(32)*
     &    r25**(-2)*i1r15**2*rsq1l**2 + 4.D0*mi(32)*r25**(-2)*i1r15**2*
     &    rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(32)*r25**(-2)*i1r15**2*
     &    rgl**2 - mi(32)*r25**(-1)*i1r15*rsq1l + mi(32)*r25**(-1)*
     &    i1r15*rgl + mi(32)*r25**(-1)*i1r15**2*rsq1l + 2.D0*mi(32)*
     &    r25**(-1)*i1r15**2*rsq1l**2 - mi(32)*r25**(-1)*i1r15**2*rgl
     &     - 4.D0*mi(32)*r25**(-1)*i1r15**2*rgl*rsq1l + 2.D0*mi(32)*
     &    r25**(-1)*i1r15**2*rgl**2 - 2.D0*mi(32)*r25**(-1)*i1r15**3*
     &    rsq1l**2 + 4.D0*mi(32)*r25**(-1)*i1r15**3*rgl*rsq1l - 2.D0*
     &    mi(32)*r25**(-1)*i1r15**3*rgl**2 - mi(32)*i1r15*i1r15r25*
     &    rsq1l + mi(32)*i1r15*i1r15r25*rgl + mi(32)*i1r15**2*i1r15r25*
     &    rsq1l + 2.D0*mi(32)*i1r15**2*i1r15r25*rsq1l**2 - mi(32)*
     &    i1r15**2*i1r15r25*rgl - 4.D0*mi(32)*i1r15**2*i1r15r25*rgl*
     &    rsq1l + 2.D0*mi(32)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(32)*
     &    i1r15**3*i1r15r25*rsq1l**2 + 4.D0*mi(32)*i1r15**3*i1r15r25*
     &    rgl*rsq1l - 2.D0*mi(32)*i1r15**3*i1r15r25*rgl**2 - 2.D0*mi(32
     &    )*r15*r25**(-3) + 4.D0*mi(32)*r15*r25**(-3)*rsq1l - 4.D0*mi(
     &    32)*r15*r25**(-3)*rgl )
      e = e  + Nc**(-1)*s125 * ( mi(32)*r15*r25**(-2) + 2.D0*mi(32)*
     &    r15**2*r25**(-3) + 2.D0*mi(36)*r15**(-1)*r25**(-1)*rsq1l - 2.D
     &    0*mi(36)*r25**(-2)*i1r15*rsq1l**2 + 4.D0*mi(36)*r25**(-2)*
     &    i1r15*rgl*rsq1l - 2.D0*mi(36)*r25**(-2)*i1r15*rgl**2 - mi(36)
     &    *r25**(-1)*i1r15*rsq1l + mi(36)*r25**(-1)*i1r15*rgl - 2.D0*
     &    mi(36)*r25**(-1)*i1r15**2*rsq1l**2 + 4.D0*mi(36)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l - 2.D0*mi(36)*r25**(-1)*i1r15**2*rgl**2 - 
     &    mi(36)*i1r15*i1r15r25*rsq1l + mi(36)*i1r15*i1r15r25*rgl - 2.D0
     &    *mi(36)*i1r15**2*i1r15r25*rsq1l**2 + 4.D0*mi(36)*i1r15**2*
     &    i1r15r25*rgl*rsq1l - 2.D0*mi(36)*i1r15**2*i1r15r25*rgl**2 + 4.
     &    D0*mi(38)*r15**(-1)*r25**(-1)*rsq1l - 8.D0*mi(38)*r15**(-1)*
     &    ir15r25*rsq1l - 4.D0*mi(38)*r25**(-3)*rsq1l**2 + 8.D0*mi(38)*
     &    r25**(-3)*rgl*rsq1l - 4.D0*mi(38)*r25**(-3)*rgl**2 + 4.D0*mi(
     &    38)*r25**(-3)*i1r15*rsq1l**2 - 8.D0*mi(38)*r25**(-3)*i1r15*
     &    rgl*rsq1l + 4.D0*mi(38)*r25**(-3)*i1r15*rgl**2 + 2.D0*mi(38)*
     &    r25**(-2) )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(38)*r25**(-2)*rgl + 4.D0*mi(38)
     &    *r25**(-2)*i1r15**2*rsq1l**2 - 8.D0*mi(38)*r25**(-2)*i1r15**2
     &    *rgl*rsq1l + 4.D0*mi(38)*r25**(-2)*i1r15**2*rgl**2 - mi(38)*
     &    r25**(-1) + 4.D0*mi(38)*r25**(-1)*i1r15**3*rsq1l**2 - 8.D0*
     &    mi(38)*r25**(-1)*i1r15**3*rgl*rsq1l + 4.D0*mi(38)*r25**(-1)*
     &    i1r15**3*rgl**2 + 4.D0*mi(38)*i1r15**3*i1r15r25*rsq1l**2 - 8.D
     &    0*mi(38)*i1r15**3*i1r15r25*rgl*rsq1l + 4.D0*mi(38)*i1r15**3*
     &    i1r15r25*rgl**2 + 2.D0*mi(38)*r15*r25**(-3) - 4.D0*mi(38)*r15
     &    *r25**(-3)*rsq1l + 4.D0*mi(38)*r15*r25**(-3)*rgl - 3.D0*mi(38
     &    )*r15*r25**(-2) - 2.D0*mi(38)*r15**2*r25**(-3) + 2.D0*mi(40)*
     &    r15**(-1)*r25**(-2)*rsq1l + 2.D0*mi(40)*r25**(-3) - 4.D0*mi(
     &    40)*r25**(-3)*rsq1l + 2.D0*mi(40)*r25**(-3)*rsq1l**2 + 4.D0*
     &    mi(40)*r25**(-3)*rgl - 4.D0*mi(40)*r25**(-3)*rgl*rsq1l + 2.D0
     &    *mi(40)*r25**(-3)*rgl**2 - mi(40)*r25**(-2) - 3.D0*mi(40)*
     &    r25**(-2)*rsq1l + mi(40)*r25**(-2)*rgl + 2.D0*mi(40)*
     &    r25**(-2)*i1r15*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(40)*r25**(-2)*i1r15*rgl*
     &    rsq1l + 2.D0*mi(40)*r25**(-2)*i1r15*rgl**2 - mi(40)*r25**(-1)
     &    *i1r15*rsq1l + mi(40)*r25**(-1)*i1r15*rgl + 2.D0*mi(40)*
     &    r25**(-1)*i1r15**2*rsq1l**2 - 4.D0*mi(40)*r25**(-1)*i1r15**2*
     &    rgl*rsq1l + 2.D0*mi(40)*r25**(-1)*i1r15**2*rgl**2 + mi(40)*
     &    i1r15*i1r15r25*rsq1l - mi(40)*i1r15*i1r15r25*rgl - 2.D0*mi(40
     &    )*i1r15**2*i1r15r25*rsq1l**2 + 4.D0*mi(40)*i1r15**2*i1r15r25*
     &    rgl*rsq1l - 2.D0*mi(40)*i1r15**2*i1r15r25*rgl**2 - 4.D0*mi(40
     &    )*r15*r25**(-3) + 4.D0*mi(40)*r15*r25**(-3)*rsq1l - 4.D0*mi(
     &    40)*r15*r25**(-3)*rgl + mi(40)*r15*r25**(-2) + 2.D0*mi(40)*
     &    r15**2*r25**(-3) - 2.D0*mi(42)*r15**(-1)*r25**(-2)*rsq1l + 2.D
     &    0*mi(42)*r15**(-1)*r25**(-1)*rsq1l - 2.D0*mi(42)*r25**(-3)*
     &    i1r15*rsq1l**2 + 4.D0*mi(42)*r25**(-3)*i1r15*rgl*rsq1l - 2.D0
     &    *mi(42)*r25**(-3)*i1r15*rgl**2 - mi(42)*r25**(-2)*i1r15*rsq1l
     &     + 2.D0*mi(42)*r25**(-2)*i1r15*rsq1l**2 + mi(42)*r25**(-2)*
     &    i1r15*rgl )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(42)*r25**(-2)*i1r15*rgl*
     &    rsq1l + 2.D0*mi(42)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(42)*
     &    r25**(-2)*i1r15**2*rsq1l**2 + 4.D0*mi(42)*r25**(-2)*i1r15**2*
     &    rgl*rsq1l - 2.D0*mi(42)*r25**(-2)*i1r15**2*rgl**2 + mi(42)*
     &    r25**(-1)*i1r15*rsq1l - mi(42)*r25**(-1)*i1r15*rgl - mi(42)*
     &    r25**(-1)*i1r15**2*rsq1l + 2.D0*mi(42)*r25**(-1)*i1r15**2*
     &    rsq1l**2 + mi(42)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(42)*
     &    r25**(-1)*i1r15**2*rgl*rsq1l + 2.D0*mi(42)*r25**(-1)*i1r15**2
     &    *rgl**2 - 2.D0*mi(42)*r25**(-1)*i1r15**3*rsq1l**2 + 4.D0*mi(
     &    42)*r25**(-1)*i1r15**3*rgl*rsq1l - 2.D0*mi(42)*r25**(-1)*
     &    i1r15**3*rgl**2 + mi(42)*i1r15*i1r15r25*rsq1l - mi(42)*i1r15*
     &    i1r15r25*rgl - mi(42)*i1r15**2*i1r15r25*rsq1l + 2.D0*mi(42)*
     &    i1r15**2*i1r15r25*rsq1l**2 + mi(42)*i1r15**2*i1r15r25*rgl - 4.
     &    D0*mi(42)*i1r15**2*i1r15r25*rgl*rsq1l + 2.D0*mi(42)*i1r15**2*
     &    i1r15r25*rgl**2 - 2.D0*mi(42)*i1r15**3*i1r15r25*rsq1l**2 + 4.D
     &    0*mi(42)*i1r15**3*i1r15r25*rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(42)*i1r15**3*i1r15r25*rgl**2
     &     )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(44)*r15**(-1)*r25**(-1)*
     &    rsq1l**2 - 2.D0*mi(44)*r15**(-1)*r25**(-1)*rgl*rsq1l + 2.D0*
     &    mi(44)*r25**(-3)*rsq1l**3 - 6.D0*mi(44)*r25**(-3)*rgl*
     &    rsq1l**2 + 6.D0*mi(44)*r25**(-3)*rgl**2*rsq1l - 2.D0*mi(44)*
     &    r25**(-3)*rgl**3 - 2.D0*mi(44)*r25**(-3)*i1r15*rsq1l**3 + 6.D0
     &    *mi(44)*r25**(-3)*i1r15*rgl*rsq1l**2 - 6.D0*mi(44)*r25**(-3)*
     &    i1r15*rgl**2*rsq1l + 2.D0*mi(44)*r25**(-3)*i1r15*rgl**3 + 4.D0
     &    *mi(44)*r25**(-2)*rsq1l - 3.D0*mi(44)*r25**(-2)*rsq1l**2 + 2.D
     &    0*mi(44)*r25**(-2)*rgl + 3.D0*mi(44)*r25**(-2)*rgl**2 + mi(44
     &    )*r25**(-2)*i1r15*rsq1l**2 - 2.D0*mi(44)*r25**(-2)*i1r15*rgl*
     &    rsq1l + mi(44)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(44)*r25**(-2)
     &    *i1r15**2*rsq1l**3 + 6.D0*mi(44)*r25**(-2)*i1r15**2*rgl*
     &    rsq1l**2 - 6.D0*mi(44)*r25**(-2)*i1r15**2*rgl**2*rsq1l + 2.D0
     &    *mi(44)*r25**(-2)*i1r15**2*rgl**3 - 3.D0*mi(44)*r25**(-1)*
     &    rsq1l - mi(44)*r25**(-1)*rgl + mi(44)*r25**(-1)*i1r15**2*
     &    rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(44)*r25**(-1)*i1r15**2*
     &    rgl*rsq1l + mi(44)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*mi(44)*
     &    r25**(-1)*i1r15**3*rsq1l**3 + 6.D0*mi(44)*r25**(-1)*i1r15**3*
     &    rgl*rsq1l**2 - 6.D0*mi(44)*r25**(-1)*i1r15**3*rgl**2*rsq1l + 
     &    2.D0*mi(44)*r25**(-1)*i1r15**3*rgl**3 + mi(44)*i1r15**2*
     &    i1r15r25*rsq1l**2 - 2.D0*mi(44)*i1r15**2*i1r15r25*rgl*rsq1l
     &     + mi(44)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(44)*i1r15**3*
     &    i1r15r25*rsq1l**3 + 6.D0*mi(44)*i1r15**3*i1r15r25*rgl*
     &    rsq1l**2 - 6.D0*mi(44)*i1r15**3*i1r15r25*rgl**2*rsq1l + 2.D0*
     &    mi(44)*i1r15**3*i1r15r25*rgl**3 + 2.D0*mi(44)*r15*r25**(-3)
     &     - 6.D0*mi(44)*r15*r25**(-3)*rsq1l + 6.D0*mi(44)*r15*
     &    r25**(-3)*rsq1l**2 + 6.D0*mi(44)*r15*r25**(-3)*rgl - 12.D0*
     &    mi(44)*r15*r25**(-3)*rgl*rsq1l + 6.D0*mi(44)*r15*r25**(-3)*
     &    rgl**2 - 3.D0*mi(44)*r15*r25**(-2) - 6.D0*mi(44)*r15*
     &    r25**(-2)*rgl + mi(44)*r15*r25**(-1) - 4.D0*mi(44)*r15**2*
     &    r25**(-3) )
      e = e  + Nc**(-1)*s125**2 * ( 6.D0*mi(44)*r15**2*r25**(-3)*rsq1l
     &     - 6.D0*mi(44)*r15**2*r25**(-3)*rgl + 3.D0*mi(44)*r15**2*
     &    r25**(-2) + 2.D0*mi(44)*r15**3*r25**(-3) - 2.D0*mi(46)*
     &    r15**(-1)*r25**(-1)*rsq1l + 2.D0*mi(46)*r15**(-1)*r25**(-1)*
     &    rsq1l**2 - 2.D0*mi(46)*r15**(-1)*r25**(-1)*rgl*rsq1l + 2.D0*
     &    mi(46)*r15**(-1)*rsq1l + 2.D0*mi(46)*r25**(-3)*rsq1l**3 - 6.D0
     &    *mi(46)*r25**(-3)*rgl*rsq1l**2 + 6.D0*mi(46)*r25**(-3)*rgl**2
     &    *rsq1l - 2.D0*mi(46)*r25**(-3)*rgl**3 - 2.D0*mi(46)*r25**(-3)
     &    *i1r15*rsq1l**3 + 6.D0*mi(46)*r25**(-3)*i1r15*rgl*rsq1l**2 - 
     &    6.D0*mi(46)*r25**(-3)*i1r15*rgl**2*rsq1l + 2.D0*mi(46)*
     &    r25**(-3)*i1r15*rgl**3 - 3.D0*mi(46)*r25**(-2)*rsq1l**2 + 3.D0
     &    *mi(46)*r25**(-2)*rgl**2 - mi(46)*r25**(-2)*i1r15*rsq1l**2 + 
     &    2.D0*mi(46)*r25**(-2)*i1r15*rgl*rsq1l - mi(46)*r25**(-2)*
     &    i1r15*rgl**2 - 2.D0*mi(46)*r25**(-2)*i1r15**2*rsq1l**3 + 6.D0
     &    *mi(46)*r25**(-2)*i1r15**2*rgl*rsq1l**2 - 6.D0*mi(46)*
     &    r25**(-2)*i1r15**2*rgl**2*rsq1l )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(46)*r25**(-2)*i1r15**2*
     &    rgl**3 + mi(46)*r25**(-1)*rsq1l - mi(46)*r25**(-1)*rgl - mi(
     &    46)*r25**(-1)*i1r15**2*rsq1l**2 + 2.D0*mi(46)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l - mi(46)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*
     &    mi(46)*r25**(-1)*i1r15**3*rsq1l**3 + 6.D0*mi(46)*r25**(-1)*
     &    i1r15**3*rgl*rsq1l**2 - 6.D0*mi(46)*r25**(-1)*i1r15**3*rgl**2
     &    *rsq1l + 2.D0*mi(46)*r25**(-1)*i1r15**3*rgl**3 - mi(46)*
     &    i1r15**2*i1r15r25*rsq1l**2 + 2.D0*mi(46)*i1r15**2*i1r15r25*
     &    rgl*rsq1l - mi(46)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(46)*
     &    i1r15**3*i1r15r25*rsq1l**3 + 6.D0*mi(46)*i1r15**3*i1r15r25*
     &    rgl*rsq1l**2 - 6.D0*mi(46)*i1r15**3*i1r15r25*rgl**2*rsq1l + 2.
     &    D0*mi(46)*i1r15**3*i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*r25**(-1) + 2.D0*
     &    mi(17)*r25**(-1)*i1r15 - 2.D0*mi(18)*r15**(-1)*r25**(-1) - 2.D
     &    0*mi(18)*r25**(-1)*i1r15 )
      e = e  + Nc * ( 4.D0*mi(20)*r25**(-2)*i1r15*rsq1l - 4.D0*mi(20)*
     &    r25**(-2)*i1r15*rgl + 4.D0*mi(20)*r25**(-1)*i1r15**2*rsq1l - 
     &    4.D0*mi(20)*r25**(-1)*i1r15**2*rgl + 2.D0*mi(24)*r15**(-1)*
     &    r25**(-1)*rsq1l - 2.D0*mi(24)*r15**(-1)*r25**(-1)*rgl - 4.D0*
     &    mi(24)*r25**(-2)*i1r15*rsq1l + 4.D0*mi(24)*r25**(-2)*i1r15*
     &    rgl + 2.D0*mi(24)*r25**(-1)*i1r15*rsq1l - 2.D0*mi(24)*
     &    r25**(-1)*i1r15*rgl - 4.D0*mi(24)*r25**(-1)*i1r15**2*rsq1l + 
     &    4.D0*mi(24)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc*s125 * ( 2.D0*mi(30)*r25**(-3)*rsq1l**2 - 4.D0*mi(30)*
     &    r25**(-3)*rgl*rsq1l + 2.D0*mi(30)*r25**(-3)*rgl**2 - 2.D0*mi(
     &    30)*r25**(-3)*i1r15*rsq1l**2 + 4.D0*mi(30)*r25**(-3)*i1r15*
     &    rgl*rsq1l - 2.D0*mi(30)*r25**(-3)*i1r15*rgl**2 - mi(30)*
     &    r25**(-2)*rsq1l - mi(30)*r25**(-2)*rgl + mi(30)*r25**(-2)*
     &    i1r15*rsq1l + 2.D0*mi(30)*r25**(-2)*i1r15*rsq1l**2 - mi(30)*
     &    r25**(-2)*i1r15*rgl - 4.D0*mi(30)*r25**(-2)*i1r15*rgl*rsq1l
     &     + 2.D0*mi(30)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(30)*r25**(-2)
     &    *i1r15**2*rsq1l**2 + 4.D0*mi(30)*r25**(-2)*i1r15**2*rgl*rsq1l
     &     - 2.D0*mi(30)*r25**(-2)*i1r15**2*rgl**2 - mi(30)*r25**(-1)*
     &    i1r15*rsq1l + mi(30)*r25**(-1)*i1r15*rgl + mi(30)*r25**(-1)*
     &    i1r15**2*rsq1l + 2.D0*mi(30)*r25**(-1)*i1r15**2*rsq1l**2 - 
     &    mi(30)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(30)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l + 2.D0*mi(30)*r25**(-1)*i1r15**2*rgl**2 - 
     &    2.D0*mi(30)*r25**(-1)*i1r15**3*rsq1l**2 + 4.D0*mi(30)*
     &    r25**(-1)*i1r15**3*rgl*rsq1l )
      e = e  + Nc*s125 * (  - 2.D0*mi(30)*r25**(-1)*i1r15**3*rgl**2 - 
     &    mi(30)*i1r15*i1r15r25*rsq1l + mi(30)*i1r15*i1r15r25*rgl + mi(
     &    30)*i1r15**2*i1r15r25*rsq1l + 2.D0*mi(30)*i1r15**2*i1r15r25*
     &    rsq1l**2 - mi(30)*i1r15**2*i1r15r25*rgl - 4.D0*mi(30)*
     &    i1r15**2*i1r15r25*rgl*rsq1l + 2.D0*mi(30)*i1r15**2*i1r15r25*
     &    rgl**2 - 2.D0*mi(30)*i1r15**3*i1r15r25*rsq1l**2 + 4.D0*mi(30)
     &    *i1r15**3*i1r15r25*rgl*rsq1l - 2.D0*mi(30)*i1r15**3*i1r15r25*
     &    rgl**2 + 2.D0*mi(34)*r15**(-1)*r25**(-1)*rgl - 2.D0*mi(34)*
     &    r25**(-2)*i1r15*rsq1l**2 + 4.D0*mi(34)*r25**(-2)*i1r15*rgl*
     &    rsq1l - 2.D0*mi(34)*r25**(-2)*i1r15*rgl**2 + mi(34)*r25**(-1)
     &    *i1r15*rsq1l - mi(34)*r25**(-1)*i1r15*rgl - 2.D0*mi(34)*
     &    r25**(-1)*i1r15**2*rsq1l**2 + 4.D0*mi(34)*r25**(-1)*i1r15**2*
     &    rgl*rsq1l - 2.D0*mi(34)*r25**(-1)*i1r15**2*rgl**2 + mi(34)*
     &    i1r15*i1r15r25*rsq1l - mi(34)*i1r15*i1r15r25*rgl - 2.D0*mi(34
     &    )*i1r15**2*i1r15r25*rsq1l**2 + 4.D0*mi(34)*i1r15**2*i1r15r25*
     &    rgl*rsq1l )
      e = e  + Nc*s125 * (  - 2.D0*mi(34)*i1r15**2*i1r15r25*rgl**2 - 2.D0
     &    *mi(40)*r15**(-1)*r25**(-2)*rgl - 2.D0*mi(40)*r25**(-3)*
     &    rsq1l**2 + 4.D0*mi(40)*r25**(-3)*rgl*rsq1l - 2.D0*mi(40)*
     &    r25**(-3)*rgl**2 + mi(40)*r25**(-2)*rsq1l + mi(40)*r25**(-2)*
     &    rgl - 2.D0*mi(40)*r25**(-2)*i1r15*rsq1l**2 + 4.D0*mi(40)*
     &    r25**(-2)*i1r15*rgl*rsq1l - 2.D0*mi(40)*r25**(-2)*i1r15*
     &    rgl**2 + mi(40)*r25**(-1)*i1r15*rsq1l - mi(40)*r25**(-1)*
     &    i1r15*rgl - 2.D0*mi(40)*r25**(-1)*i1r15**2*rsq1l**2 + 4.D0*
     &    mi(40)*r25**(-1)*i1r15**2*rgl*rsq1l - 2.D0*mi(40)*r25**(-1)*
     &    i1r15**2*rgl**2 - mi(40)*i1r15*i1r15r25*rsq1l + mi(40)*i1r15*
     &    i1r15r25*rgl + 2.D0*mi(40)*i1r15**2*i1r15r25*rsq1l**2 - 4.D0*
     &    mi(40)*i1r15**2*i1r15r25*rgl*rsq1l + 2.D0*mi(40)*i1r15**2*
     &    i1r15r25*rgl**2 + 2.D0*mi(42)*r15**(-1)*r25**(-2)*rgl - 2.D0*
     &    mi(42)*r15**(-1)*r25**(-1)*rgl + 2.D0*mi(42)*r25**(-3)*i1r15*
     &    rsq1l**2 - 4.D0*mi(42)*r25**(-3)*i1r15*rgl*rsq1l + 2.D0*mi(42
     &    )*r25**(-3)*i1r15*rgl**2 )
      e = e  + Nc*s125 * (  - mi(42)*r25**(-2)*i1r15*rsq1l - 2.D0*mi(42)
     &    *r25**(-2)*i1r15*rsq1l**2 + mi(42)*r25**(-2)*i1r15*rgl + 4.D0
     &    *mi(42)*r25**(-2)*i1r15*rgl*rsq1l - 2.D0*mi(42)*r25**(-2)*
     &    i1r15*rgl**2 + 2.D0*mi(42)*r25**(-2)*i1r15**2*rsq1l**2 - 4.D0
     &    *mi(42)*r25**(-2)*i1r15**2*rgl*rsq1l + 2.D0*mi(42)*r25**(-2)*
     &    i1r15**2*rgl**2 + mi(42)*r25**(-1)*i1r15*rsq1l - mi(42)*
     &    r25**(-1)*i1r15*rgl - mi(42)*r25**(-1)*i1r15**2*rsq1l - 2.D0*
     &    mi(42)*r25**(-1)*i1r15**2*rsq1l**2 + mi(42)*r25**(-1)*
     &    i1r15**2*rgl + 4.D0*mi(42)*r25**(-1)*i1r15**2*rgl*rsq1l - 2.D0
     &    *mi(42)*r25**(-1)*i1r15**2*rgl**2 + 2.D0*mi(42)*r25**(-1)*
     &    i1r15**3*rsq1l**2 - 4.D0*mi(42)*r25**(-1)*i1r15**3*rgl*rsq1l
     &     + 2.D0*mi(42)*r25**(-1)*i1r15**3*rgl**2 + mi(42)*i1r15*
     &    i1r15r25*rsq1l - mi(42)*i1r15*i1r15r25*rgl - mi(42)*i1r15**2*
     &    i1r15r25*rsq1l - 2.D0*mi(42)*i1r15**2*i1r15r25*rsq1l**2 + mi(
     &    42)*i1r15**2*i1r15r25*rgl + 4.D0*mi(42)*i1r15**2*i1r15r25*rgl
     &    *rsq1l )
      e = e  + Nc*s125 * (  - 2.D0*mi(42)*i1r15**2*i1r15r25*rgl**2 + 2.D0
     &    *mi(42)*i1r15**3*i1r15r25*rsq1l**2 - 4.D0*mi(42)*i1r15**3*
     &    i1r15r25*rgl*rsq1l + 2.D0*mi(42)*i1r15**3*i1r15r25*rgl**2 )
      e = e  + Nc*s125**2 * ( 2.D0*mi(48)*r15**(-1)*r25**(-1)*rgl*rsq1l
     &     - 2.D0*mi(48)*r15**(-1)*r25**(-1)*rgl**2 + 2.D0*mi(48)*
     &    r25**(-3)*rsq1l**3 - 6.D0*mi(48)*r25**(-3)*rgl*rsq1l**2 + 6.D0
     &    *mi(48)*r25**(-3)*rgl**2*rsq1l - 2.D0*mi(48)*r25**(-3)*rgl**3
     &     - 2.D0*mi(48)*r25**(-3)*i1r15*rsq1l**3 + 6.D0*mi(48)*
     &    r25**(-3)*i1r15*rgl*rsq1l**2 - 6.D0*mi(48)*r25**(-3)*i1r15*
     &    rgl**2*rsq1l + 2.D0*mi(48)*r25**(-3)*i1r15*rgl**3 - 3.D0*mi(
     &    48)*r25**(-2)*rsq1l**2 + 3.D0*mi(48)*r25**(-2)*rgl**2 + 3.D0*
     &    mi(48)*r25**(-2)*i1r15*rsq1l**2 - 6.D0*mi(48)*r25**(-2)*i1r15
     &    *rgl*rsq1l + 3.D0*mi(48)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(48)
     &    *r25**(-2)*i1r15**2*rsq1l**3 + 6.D0*mi(48)*r25**(-2)*i1r15**2
     &    *rgl*rsq1l**2 - 6.D0*mi(48)*r25**(-2)*i1r15**2*rgl**2*rsq1l
     &     + 2.D0*mi(48)*r25**(-2)*i1r15**2*rgl**3 + mi(48)*r25**(-1)*
     &    rsq1l - mi(48)*r25**(-1)*rgl - mi(48)*r25**(-1)*i1r15*rsq1l
     &     - 2.D0*mi(48)*r25**(-1)*i1r15*rsq1l**2 + mi(48)*r25**(-1)*
     &    i1r15*rgl )
      e = e  + Nc*s125**2 * ( 4.D0*mi(48)*r25**(-1)*i1r15*rgl*rsq1l - 2.D
     &    0*mi(48)*r25**(-1)*i1r15*rgl**2 + 3.D0*mi(48)*r25**(-1)*
     &    i1r15**2*rsq1l**2 - 6.D0*mi(48)*r25**(-1)*i1r15**2*rgl*rsq1l
     &     + 3.D0*mi(48)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*mi(48)*
     &    r25**(-1)*i1r15**3*rsq1l**3 + 6.D0*mi(48)*r25**(-1)*i1r15**3*
     &    rgl*rsq1l**2 - 6.D0*mi(48)*r25**(-1)*i1r15**3*rgl**2*rsq1l + 
     &    2.D0*mi(48)*r25**(-1)*i1r15**3*rgl**3 + mi(48)*i1r15r25*rsq1l
     &     - mi(48)*i1r15r25*rgl - mi(48)*i1r15*i1r15r25*rsq1l - 2.D0*
     &    mi(48)*i1r15*i1r15r25*rsq1l**2 + mi(48)*i1r15*i1r15r25*rgl + 
     &    4.D0*mi(48)*i1r15*i1r15r25*rgl*rsq1l - 2.D0*mi(48)*i1r15*
     &    i1r15r25*rgl**2 + 3.D0*mi(48)*i1r15**2*i1r15r25*rsq1l**2 - 6.D
     &    0*mi(48)*i1r15**2*i1r15r25*rgl*rsq1l + 3.D0*mi(48)*i1r15**2*
     &    i1r15r25*rgl**2 - 2.D0*mi(48)*i1r15**3*i1r15r25*rsq1l**3 + 6.D
     &    0*mi(48)*i1r15**3*i1r15r25*rgl*rsq1l**2 - 6.D0*mi(48)*
     &    i1r15**3*i1r15r25*rgl**2*rsq1l + 2.D0*mi(48)*i1r15**3*
     &    i1r15r25*rgl**3 )

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

      e =  + Nc**(-1)*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*r25**(-1)
     &     - 2.D0*mi(17)*r25**(-1)*i1r15 + 2.D0*mi(19)*r15**(-1)*
     &    r25**(-1) - mi(19)*r25**(-3)*rsq1r**(-1) + 4.D0*mi(19)*
     &    r25**(-3)*rgl*rsq1r**(-1) + mi(19)*r25**(-3)*i1r15*
     &    rsq1r**(-1) - 4.D0*mi(19)*r25**(-3)*i1r15*rgl*rsq1r**(-1) - 2.
     &    D0*mi(19)*r25**(-2)*rsq1r**(-1) - mi(19)*r25**(-2)*i1r15*
     &    rsq1r**(-1) + mi(19)*r25**(-2)*i1r15**2*rsq1r**(-1) - 4.D0*
     &    mi(19)*r25**(-2)*i1r15**2*rgl*rsq1r**(-1) + 2.D0*mi(19)*
     &    r25**(-1)*i1r15 - mi(19)*r25**(-1)*i1r15**2*rsq1r**(-1) + mi(
     &    19)*r25**(-1)*i1r15**3*rsq1r**(-1) - 4.D0*mi(19)*r25**(-1)*
     &    i1r15**3*rgl*rsq1r**(-1) - mi(19)*i1r15**2*i1r15r25*
     &    rsq1r**(-1) + mi(19)*i1r15**3*i1r15r25*rsq1r**(-1) - 4.D0*mi(
     &    19)*i1r15**3*i1r15r25*rgl*rsq1r**(-1) - 3.D0*mi(19)*r15*
     &    r25**(-3)*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    r25**(-1)*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)*mi(19)*r25**(-3)
     &     - 4.D0/(rsq1r - rgl)*mi(19)*r25**(-3)*rgl + 6.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-3)*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*
     &    mi(19)*r25**(-3)*i1r15 + 4.D0/(rsq1r - rgl)*mi(19)*r25**(-3)*
     &    i1r15*rgl - 6.D0/(rsq1r - rgl)*mi(19)*r25**(-3)*i1r15*rgl**2*
     &    rsq1r**(-1) + 2.D0/(rsq1r - rgl)*mi(19)*r25**(-2) - 5.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*rgl*rsq1r**(-1) + 1/(rsq1r - 
     &    rgl)*mi(19)*r25**(-2)*i1r15 - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2 + 4.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15**2*rgl - 6.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*
     &    rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**2 - 1/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19
     &    )*r25**(-1)*i1r15**3 + 4.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**3*rgl - 6.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*
     &    rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25
     &    *rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25 - 1/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*
     &    rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25
     &     + 4.D0/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl - 6.D0/(
     &    rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**2*rsq1r**(-1) + 3.D
     &    0/(rsq1r - rgl)*mi(19)*r15*r25**(-3) - 6.D0/(rsq1r - rgl)*mi(
     &    19)*r15*r25**(-3)*rgl*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-1)*r25**(-1)*rgl**2 - 2.D0/(rsq1r - rgl
     &    )/(rsq1r - rgl)*mi(19)*r15**(-1)*r25**(-1)*rgl**3*rsq1r**(-1)
     &     + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25
     &    *rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-1)*i1r15r25*rgl**3*rsq1r**(-1) - 1/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-3)*rgl + 1/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*r25**(-3)*rgl**2*rsq1r**(-1) - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-3)*rgl**2 + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-3)*rgl**3*
     &    rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-3)*
     &    i1r15*rgl - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-3)*
     &    i1r15*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-3)*i1r15*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-3)*i1r15*rgl**3*rsq1r**(-1) + 3.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl - 3.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl**2*rsq1r**(-1) + 2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**2 - 
     &    2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*
     &    rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*i1r15**2*rgl - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15**2*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl**2 - 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl**3*
     &    rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r25**(-1)*i1r15*rgl**3*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2 - 2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**3*
     &    rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**3*rgl - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)
     &    *i1r15**3*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2 - 2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**3*rsq1r**(-1) + 2.
     &    D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*i1r15*i1r15r25*rgl**3*rsq1r**(-1) + 2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2 - 2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**3*
     &    rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25*rgl - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25*rgl**2*rsq1r**(-1) + 2.D0/(rsq1r - rgl)/(rsq1r - rgl
     &    )*mi(19)*i1r15**3*i1r15r25*rgl**2 - 2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**3*rsq1r**(-1) + 3.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15*r25**(-3)*rgl - 3.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15*r25**(-3)*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1) * ( 4.D0*r15**(-1)*r25**(-1) - 4.D0*r15**(-1)*
     &    ir15r25 + 4.D0*mi(21)*r15**(-1)*r25**(-2) - 4.D0*mi(21)*
     &    r15**(-1)*ir15r25**2 - 4.D0*mi(21)*r25**(-2)*i1r15*rsq1r + 4.D
     &    0*mi(21)*r25**(-2)*i1r15*rgl - 4.D0*mi(21)*r25**(-1)*i1r15**2
     &    *rsq1r + 4.D0*mi(21)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(23)*
     &    r15**(-1)*r25**(-2) + 4.D0*mi(23)*r15**(-1)*ir15r25**2 + 4.D0
     &    *mi(23)*r25**(-2) - 2.D0*mi(25)*r15**(-1)*r25**(-1)*rsq1r + 2.
     &    D0*mi(25)*r15**(-1)*r25**(-1)*rgl - 4.D0*mi(25)*r25**(-2) + 4.
     &    D0*mi(25)*r25**(-2)*i1r15*rsq1r - 4.D0*mi(25)*r25**(-2)*i1r15
     &    *rgl - 2.D0*mi(25)*r25**(-1)*i1r15*rsq1r + 2.D0*mi(25)*
     &    r25**(-1)*i1r15*rgl + 4.D0*mi(25)*r25**(-1)*i1r15**2*rsq1r - 
     &    4.D0*mi(25)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(29)*r25**(-3) + 4.D0*mi(29)*
     &    r25**(-3)*rsq1r - 4.D0*mi(29)*r25**(-3)*rgl + 3.D0*mi(29)*
     &    r25**(-2) - 2.D0*mi(29)*r25**(-2)*rsq1r + 2.D0*mi(29)*
     &    r25**(-2)*rgl - mi(29)*r25**(-1) + 4.D0*mi(29)*r15*r25**(-3)
     &     - 4.D0*mi(29)*r15*r25**(-3)*rsq1r + 4.D0*mi(29)*r15*
     &    r25**(-3)*rgl - 3.D0*mi(29)*r15*r25**(-2) - 2.D0*mi(29)*
     &    r15**2*r25**(-3) + 2.D0*mi(33)*r25**(-3)*rsq1r**2 - 4.D0*mi(
     &    33)*r25**(-3)*rgl*rsq1r + 2.D0*mi(33)*r25**(-3)*rgl**2 - 2.D0
     &    *mi(33)*r25**(-3)*i1r15*rsq1r**2 + 4.D0*mi(33)*r25**(-3)*
     &    i1r15*rgl*rsq1r - 2.D0*mi(33)*r25**(-3)*i1r15*rgl**2 - 3.D0*
     &    mi(33)*r25**(-2)*rsq1r + mi(33)*r25**(-2)*rgl + mi(33)*
     &    r25**(-2)*i1r15*rsq1r + 2.D0*mi(33)*r25**(-2)*i1r15*rsq1r**2
     &     - mi(33)*r25**(-2)*i1r15*rgl - 4.D0*mi(33)*r25**(-2)*i1r15*
     &    rgl*rsq1r + 2.D0*mi(33)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(33)*
     &    r25**(-2)*i1r15**2*rsq1r**2 + 4.D0*mi(33)*r25**(-2)*i1r15**2*
     &    rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(33)*r25**(-2)*i1r15**2*
     &    rgl**2 - mi(33)*r25**(-1)*i1r15*rsq1r + mi(33)*r25**(-1)*
     &    i1r15*rgl + mi(33)*r25**(-1)*i1r15**2*rsq1r + 2.D0*mi(33)*
     &    r25**(-1)*i1r15**2*rsq1r**2 - mi(33)*r25**(-1)*i1r15**2*rgl
     &     - 4.D0*mi(33)*r25**(-1)*i1r15**2*rgl*rsq1r + 2.D0*mi(33)*
     &    r25**(-1)*i1r15**2*rgl**2 - 2.D0*mi(33)*r25**(-1)*i1r15**3*
     &    rsq1r**2 + 4.D0*mi(33)*r25**(-1)*i1r15**3*rgl*rsq1r - 2.D0*
     &    mi(33)*r25**(-1)*i1r15**3*rgl**2 - mi(33)*i1r15*i1r15r25*
     &    rsq1r + mi(33)*i1r15*i1r15r25*rgl + mi(33)*i1r15**2*i1r15r25*
     &    rsq1r + 2.D0*mi(33)*i1r15**2*i1r15r25*rsq1r**2 - mi(33)*
     &    i1r15**2*i1r15r25*rgl - 4.D0*mi(33)*i1r15**2*i1r15r25*rgl*
     &    rsq1r + 2.D0*mi(33)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(33)*
     &    i1r15**3*i1r15r25*rsq1r**2 + 4.D0*mi(33)*i1r15**3*i1r15r25*
     &    rgl*rsq1r - 2.D0*mi(33)*i1r15**3*i1r15r25*rgl**2 - 2.D0*mi(33
     &    )*r15*r25**(-3) + 4.D0*mi(33)*r15*r25**(-3)*rsq1r - 4.D0*mi(
     &    33)*r15*r25**(-3)*rgl )
      e = e  + Nc**(-1)*s125 * ( mi(33)*r15*r25**(-2) + 2.D0*mi(33)*
     &    r15**2*r25**(-3) + 2.D0*mi(37)*r15**(-1)*r25**(-1)*rsq1r - 2.D
     &    0*mi(37)*r25**(-2)*i1r15*rsq1r**2 + 4.D0*mi(37)*r25**(-2)*
     &    i1r15*rgl*rsq1r - 2.D0*mi(37)*r25**(-2)*i1r15*rgl**2 - mi(37)
     &    *r25**(-1)*i1r15*rsq1r + mi(37)*r25**(-1)*i1r15*rgl - 2.D0*
     &    mi(37)*r25**(-1)*i1r15**2*rsq1r**2 + 4.D0*mi(37)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r - 2.D0*mi(37)*r25**(-1)*i1r15**2*rgl**2 - 
     &    mi(37)*i1r15*i1r15r25*rsq1r + mi(37)*i1r15*i1r15r25*rgl - 2.D0
     &    *mi(37)*i1r15**2*i1r15r25*rsq1r**2 + 4.D0*mi(37)*i1r15**2*
     &    i1r15r25*rgl*rsq1r - 2.D0*mi(37)*i1r15**2*i1r15r25*rgl**2 + 4.
     &    D0*mi(39)*r15**(-1)*r25**(-1)*rsq1r - 8.D0*mi(39)*r15**(-1)*
     &    ir15r25*rsq1r - 4.D0*mi(39)*r25**(-3)*rsq1r**2 + 8.D0*mi(39)*
     &    r25**(-3)*rgl*rsq1r - 4.D0*mi(39)*r25**(-3)*rgl**2 + 4.D0*mi(
     &    39)*r25**(-3)*i1r15*rsq1r**2 - 8.D0*mi(39)*r25**(-3)*i1r15*
     &    rgl*rsq1r + 4.D0*mi(39)*r25**(-3)*i1r15*rgl**2 + 2.D0*mi(39)*
     &    r25**(-2) )
      e = e  + Nc**(-1)*s125 * ( 4.D0*mi(39)*r25**(-2)*rgl + 4.D0*mi(39)
     &    *r25**(-2)*i1r15**2*rsq1r**2 - 8.D0*mi(39)*r25**(-2)*i1r15**2
     &    *rgl*rsq1r + 4.D0*mi(39)*r25**(-2)*i1r15**2*rgl**2 - mi(39)*
     &    r25**(-1) + 4.D0*mi(39)*r25**(-1)*i1r15**3*rsq1r**2 - 8.D0*
     &    mi(39)*r25**(-1)*i1r15**3*rgl*rsq1r + 4.D0*mi(39)*r25**(-1)*
     &    i1r15**3*rgl**2 + 4.D0*mi(39)*i1r15**3*i1r15r25*rsq1r**2 - 8.D
     &    0*mi(39)*i1r15**3*i1r15r25*rgl*rsq1r + 4.D0*mi(39)*i1r15**3*
     &    i1r15r25*rgl**2 + 2.D0*mi(39)*r15*r25**(-3) - 4.D0*mi(39)*r15
     &    *r25**(-3)*rsq1r + 4.D0*mi(39)*r15*r25**(-3)*rgl - 3.D0*mi(39
     &    )*r15*r25**(-2) - 2.D0*mi(39)*r15**2*r25**(-3) + 2.D0*mi(41)*
     &    r15**(-1)*r25**(-2)*rsq1r + 2.D0*mi(41)*r25**(-3) - 4.D0*mi(
     &    41)*r25**(-3)*rsq1r + 2.D0*mi(41)*r25**(-3)*rsq1r**2 + 4.D0*
     &    mi(41)*r25**(-3)*rgl - 4.D0*mi(41)*r25**(-3)*rgl*rsq1r + 2.D0
     &    *mi(41)*r25**(-3)*rgl**2 - mi(41)*r25**(-2) - 3.D0*mi(41)*
     &    r25**(-2)*rsq1r + mi(41)*r25**(-2)*rgl + 2.D0*mi(41)*
     &    r25**(-2)*i1r15*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(41)*r25**(-2)*i1r15*rgl*
     &    rsq1r + 2.D0*mi(41)*r25**(-2)*i1r15*rgl**2 - mi(41)*r25**(-1)
     &    *i1r15*rsq1r + mi(41)*r25**(-1)*i1r15*rgl + 2.D0*mi(41)*
     &    r25**(-1)*i1r15**2*rsq1r**2 - 4.D0*mi(41)*r25**(-1)*i1r15**2*
     &    rgl*rsq1r + 2.D0*mi(41)*r25**(-1)*i1r15**2*rgl**2 + mi(41)*
     &    i1r15*i1r15r25*rsq1r - mi(41)*i1r15*i1r15r25*rgl - 2.D0*mi(41
     &    )*i1r15**2*i1r15r25*rsq1r**2 + 4.D0*mi(41)*i1r15**2*i1r15r25*
     &    rgl*rsq1r - 2.D0*mi(41)*i1r15**2*i1r15r25*rgl**2 - 4.D0*mi(41
     &    )*r15*r25**(-3) + 4.D0*mi(41)*r15*r25**(-3)*rsq1r - 4.D0*mi(
     &    41)*r15*r25**(-3)*rgl + mi(41)*r15*r25**(-2) + 2.D0*mi(41)*
     &    r15**2*r25**(-3) - 2.D0*mi(43)*r15**(-1)*r25**(-2)*rsq1r + 2.D
     &    0*mi(43)*r15**(-1)*r25**(-1)*rsq1r - 2.D0*mi(43)*r25**(-3)*
     &    i1r15*rsq1r**2 + 4.D0*mi(43)*r25**(-3)*i1r15*rgl*rsq1r - 2.D0
     &    *mi(43)*r25**(-3)*i1r15*rgl**2 - mi(43)*r25**(-2)*i1r15*rsq1r
     &     + 2.D0*mi(43)*r25**(-2)*i1r15*rsq1r**2 + mi(43)*r25**(-2)*
     &    i1r15*rgl )
      e = e  + Nc**(-1)*s125 * (  - 4.D0*mi(43)*r25**(-2)*i1r15*rgl*
     &    rsq1r + 2.D0*mi(43)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(43)*
     &    r25**(-2)*i1r15**2*rsq1r**2 + 4.D0*mi(43)*r25**(-2)*i1r15**2*
     &    rgl*rsq1r - 2.D0*mi(43)*r25**(-2)*i1r15**2*rgl**2 + mi(43)*
     &    r25**(-1)*i1r15*rsq1r - mi(43)*r25**(-1)*i1r15*rgl - mi(43)*
     &    r25**(-1)*i1r15**2*rsq1r + 2.D0*mi(43)*r25**(-1)*i1r15**2*
     &    rsq1r**2 + mi(43)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(43)*
     &    r25**(-1)*i1r15**2*rgl*rsq1r + 2.D0*mi(43)*r25**(-1)*i1r15**2
     &    *rgl**2 - 2.D0*mi(43)*r25**(-1)*i1r15**3*rsq1r**2 + 4.D0*mi(
     &    43)*r25**(-1)*i1r15**3*rgl*rsq1r - 2.D0*mi(43)*r25**(-1)*
     &    i1r15**3*rgl**2 + mi(43)*i1r15*i1r15r25*rsq1r - mi(43)*i1r15*
     &    i1r15r25*rgl - mi(43)*i1r15**2*i1r15r25*rsq1r + 2.D0*mi(43)*
     &    i1r15**2*i1r15r25*rsq1r**2 + mi(43)*i1r15**2*i1r15r25*rgl - 4.
     &    D0*mi(43)*i1r15**2*i1r15r25*rgl*rsq1r + 2.D0*mi(43)*i1r15**2*
     &    i1r15r25*rgl**2 - 2.D0*mi(43)*i1r15**3*i1r15r25*rsq1r**2 + 4.D
     &    0*mi(43)*i1r15**3*i1r15r25*rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * (  - 2.D0*mi(43)*i1r15**3*i1r15r25*rgl**2
     &     )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(45)*r15**(-1)*r25**(-1)*
     &    rsq1r**2 - 2.D0*mi(45)*r15**(-1)*r25**(-1)*rgl*rsq1r + 2.D0*
     &    mi(45)*r25**(-3)*rsq1r**3 - 6.D0*mi(45)*r25**(-3)*rgl*
     &    rsq1r**2 + 6.D0*mi(45)*r25**(-3)*rgl**2*rsq1r - 2.D0*mi(45)*
     &    r25**(-3)*rgl**3 - 2.D0*mi(45)*r25**(-3)*i1r15*rsq1r**3 + 6.D0
     &    *mi(45)*r25**(-3)*i1r15*rgl*rsq1r**2 - 6.D0*mi(45)*r25**(-3)*
     &    i1r15*rgl**2*rsq1r + 2.D0*mi(45)*r25**(-3)*i1r15*rgl**3 + 4.D0
     &    *mi(45)*r25**(-2)*rsq1r - 3.D0*mi(45)*r25**(-2)*rsq1r**2 + 2.D
     &    0*mi(45)*r25**(-2)*rgl + 3.D0*mi(45)*r25**(-2)*rgl**2 + mi(45
     &    )*r25**(-2)*i1r15*rsq1r**2 - 2.D0*mi(45)*r25**(-2)*i1r15*rgl*
     &    rsq1r + mi(45)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(45)*r25**(-2)
     &    *i1r15**2*rsq1r**3 + 6.D0*mi(45)*r25**(-2)*i1r15**2*rgl*
     &    rsq1r**2 - 6.D0*mi(45)*r25**(-2)*i1r15**2*rgl**2*rsq1r + 2.D0
     &    *mi(45)*r25**(-2)*i1r15**2*rgl**3 - 3.D0*mi(45)*r25**(-1)*
     &    rsq1r - mi(45)*r25**(-1)*rgl + mi(45)*r25**(-1)*i1r15**2*
     &    rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 2.D0*mi(45)*r25**(-1)*i1r15**2*
     &    rgl*rsq1r + mi(45)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*mi(45)*
     &    r25**(-1)*i1r15**3*rsq1r**3 + 6.D0*mi(45)*r25**(-1)*i1r15**3*
     &    rgl*rsq1r**2 - 6.D0*mi(45)*r25**(-1)*i1r15**3*rgl**2*rsq1r + 
     &    2.D0*mi(45)*r25**(-1)*i1r15**3*rgl**3 + mi(45)*i1r15**2*
     &    i1r15r25*rsq1r**2 - 2.D0*mi(45)*i1r15**2*i1r15r25*rgl*rsq1r
     &     + mi(45)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(45)*i1r15**3*
     &    i1r15r25*rsq1r**3 + 6.D0*mi(45)*i1r15**3*i1r15r25*rgl*
     &    rsq1r**2 - 6.D0*mi(45)*i1r15**3*i1r15r25*rgl**2*rsq1r + 2.D0*
     &    mi(45)*i1r15**3*i1r15r25*rgl**3 + 2.D0*mi(45)*r15*r25**(-3)
     &     - 6.D0*mi(45)*r15*r25**(-3)*rsq1r + 6.D0*mi(45)*r15*
     &    r25**(-3)*rsq1r**2 + 6.D0*mi(45)*r15*r25**(-3)*rgl - 12.D0*
     &    mi(45)*r15*r25**(-3)*rgl*rsq1r + 6.D0*mi(45)*r15*r25**(-3)*
     &    rgl**2 - 3.D0*mi(45)*r15*r25**(-2) - 6.D0*mi(45)*r15*
     &    r25**(-2)*rgl + mi(45)*r15*r25**(-1) - 4.D0*mi(45)*r15**2*
     &    r25**(-3) )
      e = e  + Nc**(-1)*s125**2 * ( 6.D0*mi(45)*r15**2*r25**(-3)*rsq1r
     &     - 6.D0*mi(45)*r15**2*r25**(-3)*rgl + 3.D0*mi(45)*r15**2*
     &    r25**(-2) + 2.D0*mi(45)*r15**3*r25**(-3) - 2.D0*mi(47)*
     &    r15**(-1)*r25**(-1)*rsq1r + 2.D0*mi(47)*r15**(-1)*r25**(-1)*
     &    rsq1r**2 - 2.D0*mi(47)*r15**(-1)*r25**(-1)*rgl*rsq1r + 2.D0*
     &    mi(47)*r15**(-1)*rsq1r + 2.D0*mi(47)*r25**(-3)*rsq1r**3 - 6.D0
     &    *mi(47)*r25**(-3)*rgl*rsq1r**2 + 6.D0*mi(47)*r25**(-3)*rgl**2
     &    *rsq1r - 2.D0*mi(47)*r25**(-3)*rgl**3 - 2.D0*mi(47)*r25**(-3)
     &    *i1r15*rsq1r**3 + 6.D0*mi(47)*r25**(-3)*i1r15*rgl*rsq1r**2 - 
     &    6.D0*mi(47)*r25**(-3)*i1r15*rgl**2*rsq1r + 2.D0*mi(47)*
     &    r25**(-3)*i1r15*rgl**3 - 3.D0*mi(47)*r25**(-2)*rsq1r**2 + 3.D0
     &    *mi(47)*r25**(-2)*rgl**2 - mi(47)*r25**(-2)*i1r15*rsq1r**2 + 
     &    2.D0*mi(47)*r25**(-2)*i1r15*rgl*rsq1r - mi(47)*r25**(-2)*
     &    i1r15*rgl**2 - 2.D0*mi(47)*r25**(-2)*i1r15**2*rsq1r**3 + 6.D0
     &    *mi(47)*r25**(-2)*i1r15**2*rgl*rsq1r**2 - 6.D0*mi(47)*
     &    r25**(-2)*i1r15**2*rgl**2*rsq1r )
      e = e  + Nc**(-1)*s125**2 * ( 2.D0*mi(47)*r25**(-2)*i1r15**2*
     &    rgl**3 + mi(47)*r25**(-1)*rsq1r - mi(47)*r25**(-1)*rgl - mi(
     &    47)*r25**(-1)*i1r15**2*rsq1r**2 + 2.D0*mi(47)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r - mi(47)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*
     &    mi(47)*r25**(-1)*i1r15**3*rsq1r**3 + 6.D0*mi(47)*r25**(-1)*
     &    i1r15**3*rgl*rsq1r**2 - 6.D0*mi(47)*r25**(-1)*i1r15**3*rgl**2
     &    *rsq1r + 2.D0*mi(47)*r25**(-1)*i1r15**3*rgl**3 - mi(47)*
     &    i1r15**2*i1r15r25*rsq1r**2 + 2.D0*mi(47)*i1r15**2*i1r15r25*
     &    rgl*rsq1r - mi(47)*i1r15**2*i1r15r25*rgl**2 - 2.D0*mi(47)*
     &    i1r15**3*i1r15r25*rsq1r**3 + 6.D0*mi(47)*i1r15**3*i1r15r25*
     &    rgl*rsq1r**2 - 6.D0*mi(47)*i1r15**3*i1r15r25*rgl**2*rsq1r + 2.
     &    D0*mi(47)*i1r15**3*i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*r25**(-1) + 2.D0*
     &    mi(17)*r25**(-1)*i1r15 - 2.D0*mi(19)*r15**(-1)*r25**(-1) - 2.D
     &    0*mi(19)*r25**(-1)*i1r15 )
      e = e  + Nc * ( 4.D0*mi(21)*r25**(-2)*i1r15*rsq1r - 4.D0*mi(21)*
     &    r25**(-2)*i1r15*rgl + 4.D0*mi(21)*r25**(-1)*i1r15**2*rsq1r - 
     &    4.D0*mi(21)*r25**(-1)*i1r15**2*rgl + 2.D0*mi(25)*r15**(-1)*
     &    r25**(-1)*rsq1r - 2.D0*mi(25)*r15**(-1)*r25**(-1)*rgl - 4.D0*
     &    mi(25)*r25**(-2)*i1r15*rsq1r + 4.D0*mi(25)*r25**(-2)*i1r15*
     &    rgl + 2.D0*mi(25)*r25**(-1)*i1r15*rsq1r - 2.D0*mi(25)*
     &    r25**(-1)*i1r15*rgl - 4.D0*mi(25)*r25**(-1)*i1r15**2*rsq1r + 
     &    4.D0*mi(25)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc*s125 * ( 2.D0*mi(31)*r25**(-3)*rsq1r**2 - 4.D0*mi(31)*
     &    r25**(-3)*rgl*rsq1r + 2.D0*mi(31)*r25**(-3)*rgl**2 - 2.D0*mi(
     &    31)*r25**(-3)*i1r15*rsq1r**2 + 4.D0*mi(31)*r25**(-3)*i1r15*
     &    rgl*rsq1r - 2.D0*mi(31)*r25**(-3)*i1r15*rgl**2 - mi(31)*
     &    r25**(-2)*rsq1r - mi(31)*r25**(-2)*rgl + mi(31)*r25**(-2)*
     &    i1r15*rsq1r + 2.D0*mi(31)*r25**(-2)*i1r15*rsq1r**2 - mi(31)*
     &    r25**(-2)*i1r15*rgl - 4.D0*mi(31)*r25**(-2)*i1r15*rgl*rsq1r
     &     + 2.D0*mi(31)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(31)*r25**(-2)
     &    *i1r15**2*rsq1r**2 + 4.D0*mi(31)*r25**(-2)*i1r15**2*rgl*rsq1r
     &     - 2.D0*mi(31)*r25**(-2)*i1r15**2*rgl**2 - mi(31)*r25**(-1)*
     &    i1r15*rsq1r + mi(31)*r25**(-1)*i1r15*rgl + mi(31)*r25**(-1)*
     &    i1r15**2*rsq1r + 2.D0*mi(31)*r25**(-1)*i1r15**2*rsq1r**2 - 
     &    mi(31)*r25**(-1)*i1r15**2*rgl - 4.D0*mi(31)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r + 2.D0*mi(31)*r25**(-1)*i1r15**2*rgl**2 - 
     &    2.D0*mi(31)*r25**(-1)*i1r15**3*rsq1r**2 + 4.D0*mi(31)*
     &    r25**(-1)*i1r15**3*rgl*rsq1r )
      e = e  + Nc*s125 * (  - 2.D0*mi(31)*r25**(-1)*i1r15**3*rgl**2 - 
     &    mi(31)*i1r15*i1r15r25*rsq1r + mi(31)*i1r15*i1r15r25*rgl + mi(
     &    31)*i1r15**2*i1r15r25*rsq1r + 2.D0*mi(31)*i1r15**2*i1r15r25*
     &    rsq1r**2 - mi(31)*i1r15**2*i1r15r25*rgl - 4.D0*mi(31)*
     &    i1r15**2*i1r15r25*rgl*rsq1r + 2.D0*mi(31)*i1r15**2*i1r15r25*
     &    rgl**2 - 2.D0*mi(31)*i1r15**3*i1r15r25*rsq1r**2 + 4.D0*mi(31)
     &    *i1r15**3*i1r15r25*rgl*rsq1r - 2.D0*mi(31)*i1r15**3*i1r15r25*
     &    rgl**2 + 2.D0*mi(35)*r15**(-1)*r25**(-1)*rgl - 2.D0*mi(35)*
     &    r25**(-2)*i1r15*rsq1r**2 + 4.D0*mi(35)*r25**(-2)*i1r15*rgl*
     &    rsq1r - 2.D0*mi(35)*r25**(-2)*i1r15*rgl**2 + mi(35)*r25**(-1)
     &    *i1r15*rsq1r - mi(35)*r25**(-1)*i1r15*rgl - 2.D0*mi(35)*
     &    r25**(-1)*i1r15**2*rsq1r**2 + 4.D0*mi(35)*r25**(-1)*i1r15**2*
     &    rgl*rsq1r - 2.D0*mi(35)*r25**(-1)*i1r15**2*rgl**2 + mi(35)*
     &    i1r15*i1r15r25*rsq1r - mi(35)*i1r15*i1r15r25*rgl - 2.D0*mi(35
     &    )*i1r15**2*i1r15r25*rsq1r**2 + 4.D0*mi(35)*i1r15**2*i1r15r25*
     &    rgl*rsq1r )
      e = e  + Nc*s125 * (  - 2.D0*mi(35)*i1r15**2*i1r15r25*rgl**2 - 2.D0
     &    *mi(41)*r15**(-1)*r25**(-2)*rgl - 2.D0*mi(41)*r25**(-3)*
     &    rsq1r**2 + 4.D0*mi(41)*r25**(-3)*rgl*rsq1r - 2.D0*mi(41)*
     &    r25**(-3)*rgl**2 + mi(41)*r25**(-2)*rsq1r + mi(41)*r25**(-2)*
     &    rgl - 2.D0*mi(41)*r25**(-2)*i1r15*rsq1r**2 + 4.D0*mi(41)*
     &    r25**(-2)*i1r15*rgl*rsq1r - 2.D0*mi(41)*r25**(-2)*i1r15*
     &    rgl**2 + mi(41)*r25**(-1)*i1r15*rsq1r - mi(41)*r25**(-1)*
     &    i1r15*rgl - 2.D0*mi(41)*r25**(-1)*i1r15**2*rsq1r**2 + 4.D0*
     &    mi(41)*r25**(-1)*i1r15**2*rgl*rsq1r - 2.D0*mi(41)*r25**(-1)*
     &    i1r15**2*rgl**2 - mi(41)*i1r15*i1r15r25*rsq1r + mi(41)*i1r15*
     &    i1r15r25*rgl + 2.D0*mi(41)*i1r15**2*i1r15r25*rsq1r**2 - 4.D0*
     &    mi(41)*i1r15**2*i1r15r25*rgl*rsq1r + 2.D0*mi(41)*i1r15**2*
     &    i1r15r25*rgl**2 + 2.D0*mi(43)*r15**(-1)*r25**(-2)*rgl - 2.D0*
     &    mi(43)*r15**(-1)*r25**(-1)*rgl + 2.D0*mi(43)*r25**(-3)*i1r15*
     &    rsq1r**2 - 4.D0*mi(43)*r25**(-3)*i1r15*rgl*rsq1r + 2.D0*mi(43
     &    )*r25**(-3)*i1r15*rgl**2 )
      e = e  + Nc*s125 * (  - mi(43)*r25**(-2)*i1r15*rsq1r - 2.D0*mi(43)
     &    *r25**(-2)*i1r15*rsq1r**2 + mi(43)*r25**(-2)*i1r15*rgl + 4.D0
     &    *mi(43)*r25**(-2)*i1r15*rgl*rsq1r - 2.D0*mi(43)*r25**(-2)*
     &    i1r15*rgl**2 + 2.D0*mi(43)*r25**(-2)*i1r15**2*rsq1r**2 - 4.D0
     &    *mi(43)*r25**(-2)*i1r15**2*rgl*rsq1r + 2.D0*mi(43)*r25**(-2)*
     &    i1r15**2*rgl**2 + mi(43)*r25**(-1)*i1r15*rsq1r - mi(43)*
     &    r25**(-1)*i1r15*rgl - mi(43)*r25**(-1)*i1r15**2*rsq1r - 2.D0*
     &    mi(43)*r25**(-1)*i1r15**2*rsq1r**2 + mi(43)*r25**(-1)*
     &    i1r15**2*rgl + 4.D0*mi(43)*r25**(-1)*i1r15**2*rgl*rsq1r - 2.D0
     &    *mi(43)*r25**(-1)*i1r15**2*rgl**2 + 2.D0*mi(43)*r25**(-1)*
     &    i1r15**3*rsq1r**2 - 4.D0*mi(43)*r25**(-1)*i1r15**3*rgl*rsq1r
     &     + 2.D0*mi(43)*r25**(-1)*i1r15**3*rgl**2 + mi(43)*i1r15*
     &    i1r15r25*rsq1r - mi(43)*i1r15*i1r15r25*rgl - mi(43)*i1r15**2*
     &    i1r15r25*rsq1r - 2.D0*mi(43)*i1r15**2*i1r15r25*rsq1r**2 + mi(
     &    43)*i1r15**2*i1r15r25*rgl + 4.D0*mi(43)*i1r15**2*i1r15r25*rgl
     &    *rsq1r )
      e = e  + Nc*s125 * (  - 2.D0*mi(43)*i1r15**2*i1r15r25*rgl**2 + 2.D0
     &    *mi(43)*i1r15**3*i1r15r25*rsq1r**2 - 4.D0*mi(43)*i1r15**3*
     &    i1r15r25*rgl*rsq1r + 2.D0*mi(43)*i1r15**3*i1r15r25*rgl**2 )
      e = e  + Nc*s125**2 * ( 2.D0*mi(49)*r15**(-1)*r25**(-1)*rgl*rsq1r
     &     - 2.D0*mi(49)*r15**(-1)*r25**(-1)*rgl**2 + 2.D0*mi(49)*
     &    r25**(-3)*rsq1r**3 - 6.D0*mi(49)*r25**(-3)*rgl*rsq1r**2 + 6.D0
     &    *mi(49)*r25**(-3)*rgl**2*rsq1r - 2.D0*mi(49)*r25**(-3)*rgl**3
     &     - 2.D0*mi(49)*r25**(-3)*i1r15*rsq1r**3 + 6.D0*mi(49)*
     &    r25**(-3)*i1r15*rgl*rsq1r**2 - 6.D0*mi(49)*r25**(-3)*i1r15*
     &    rgl**2*rsq1r + 2.D0*mi(49)*r25**(-3)*i1r15*rgl**3 - 3.D0*mi(
     &    49)*r25**(-2)*rsq1r**2 + 3.D0*mi(49)*r25**(-2)*rgl**2 + 3.D0*
     &    mi(49)*r25**(-2)*i1r15*rsq1r**2 - 6.D0*mi(49)*r25**(-2)*i1r15
     &    *rgl*rsq1r + 3.D0*mi(49)*r25**(-2)*i1r15*rgl**2 - 2.D0*mi(49)
     &    *r25**(-2)*i1r15**2*rsq1r**3 + 6.D0*mi(49)*r25**(-2)*i1r15**2
     &    *rgl*rsq1r**2 - 6.D0*mi(49)*r25**(-2)*i1r15**2*rgl**2*rsq1r
     &     + 2.D0*mi(49)*r25**(-2)*i1r15**2*rgl**3 + mi(49)*r25**(-1)*
     &    rsq1r - mi(49)*r25**(-1)*rgl - mi(49)*r25**(-1)*i1r15*rsq1r
     &     - 2.D0*mi(49)*r25**(-1)*i1r15*rsq1r**2 + mi(49)*r25**(-1)*
     &    i1r15*rgl )
      e = e  + Nc*s125**2 * ( 4.D0*mi(49)*r25**(-1)*i1r15*rgl*rsq1r - 2.D
     &    0*mi(49)*r25**(-1)*i1r15*rgl**2 + 3.D0*mi(49)*r25**(-1)*
     &    i1r15**2*rsq1r**2 - 6.D0*mi(49)*r25**(-1)*i1r15**2*rgl*rsq1r
     &     + 3.D0*mi(49)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*mi(49)*
     &    r25**(-1)*i1r15**3*rsq1r**3 + 6.D0*mi(49)*r25**(-1)*i1r15**3*
     &    rgl*rsq1r**2 - 6.D0*mi(49)*r25**(-1)*i1r15**3*rgl**2*rsq1r + 
     &    2.D0*mi(49)*r25**(-1)*i1r15**3*rgl**3 + mi(49)*i1r15r25*rsq1r
     &     - mi(49)*i1r15r25*rgl - mi(49)*i1r15*i1r15r25*rsq1r - 2.D0*
     &    mi(49)*i1r15*i1r15r25*rsq1r**2 + mi(49)*i1r15*i1r15r25*rgl + 
     &    4.D0*mi(49)*i1r15*i1r15r25*rgl*rsq1r - 2.D0*mi(49)*i1r15*
     &    i1r15r25*rgl**2 + 3.D0*mi(49)*i1r15**2*i1r15r25*rsq1r**2 - 6.D
     &    0*mi(49)*i1r15**2*i1r15r25*rgl*rsq1r + 3.D0*mi(49)*i1r15**2*
     &    i1r15r25*rgl**2 - 2.D0*mi(49)*i1r15**3*i1r15r25*rsq1r**3 + 6.D
     &    0*mi(49)*i1r15**3*i1r15r25*rgl*rsq1r**2 - 6.D0*mi(49)*
     &    i1r15**3*i1r15r25*rgl**2*rsq1r + 2.D0*mi(49)*i1r15**3*
     &    i1r15r25*rgl**3 )

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

      e =  + Nc**(-1) * (  - r15**(-1)*r25**(-1) )
      e = e  + Nc * ( r15**(-1)*r25**(-1) )

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1)*s125**(-1) * ( mi(18)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1l**(-1) + 2.D0*mi(18)*r15**(-1)*r25**(-1)*rgl*rsq1l**(-1)
     &     + mi(18)*r15**(-1)*i1r15r25*rsq1l**(-1) + 2.D0*mi(18)*
     &    r15**(-1)*i1r15r25*rgl*rsq1l**(-1) - mi(18)*r15**(-1)*
     &    i1r15r25**2*rsq1l**(-1) + 2.D0*mi(18)*r15**(-1)*i1r15r25**2*
     &    rgl*rsq1l**(-1) + mi(18)*r25**(-2)*i1r15**2*rgl*rsq1l**(-1)
     &     + mi(18)*r25**(-1)*i1r15*rsq1l**(-1) + 2.D0*mi(18)*r25**(-1)
     &    *i1r15*rgl*rsq1l**(-1) - mi(18)*r25**(-1)*i1r15**2*
     &    rsq1l**(-1) + 2.D0*mi(18)*r25**(-1)*i1r15**2*rgl*rsq1l**(-1)
     &     + 2.D0*mi(18)*r25**(-1)*i1r15**3*rgl*rsq1l**(-1) + mi(18)*
     &    i1r15*i1r15r25*rsq1l**(-1) + 2.D0*mi(18)*i1r15*i1r15r25*rgl*
     &    rsq1l**(-1) - mi(18)*i1r15*i1r15r25**2*rsq1l**(-1) + 2.D0*mi(
     &    18)*i1r15*i1r15r25**2*rgl*rsq1l**(-1) - mi(18)*i1r15**2*
     &    i1r15r25*rsq1l**(-1) + 2.D0*mi(18)*i1r15**2*i1r15r25*rgl*
     &    rsq1l**(-1) + mi(18)*i1r15**2*i1r15r25**2*rgl*rsq1l**(-1) + 2.
     &    D0*mi(18)*i1r15**3*i1r15r25*rgl*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18
     &    )*r15**(-2)*i1r15r25**2*rgl + 2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)
     &    *mi(18)*r15**(-1)*r25**(-1)*rgl + 2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*r25**(-1)*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(
     &    18)*r15**(-1)*i1r15r25 + 4.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25*rgl*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25*rgl + 2.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25**2 - 2.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25**2*rgl + 4.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2*rgl + 2.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15 + 4.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*
     &    rgl*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*
     &    rgl + 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*rgl**2*
     &    rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2 - 2.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl + 3.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) - 2.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl + 4.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2*rsq1l**(-1) - 1/(rsq1l
     &     - rgl)*mi(18)*i1r15*i1r15r25 + 4.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15*i1r15r25*rgl*rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15*i1r15r25*rgl + 2.D0/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25
     &    *rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25**2 - 2.D0/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl
     &     + 4.D0/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl**2*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25 - 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl + 
     &    3.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl
     &     + 2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**2*
     &    rsq1l**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl
     &     + 4.D0/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25*rgl**3*rsq1l**(-1) - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**2 + 1/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**3*
     &    rsq1l**(-1) - 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25*rgl + 3.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r15**(-1)*i1r15r25*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*r15**(-1)*i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*
     &    rgl**3*rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)
     &    *r25**(-2)*i1r15*rgl**3*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl**2 + 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl**3*rsq1l**(-1) - 3.
     &    D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*rgl + 3.
     &    D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*rgl**2*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**2*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)
     &    *i1r15**2*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-1)*i1r15**2*rgl**2 + 1/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2 + 2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**3*rsq1l**(-1) - 3.
     &    D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl + 3.D
     &    0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl**2*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25**2*rgl + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*i1r15*i1r15r25**2*rgl**2 + 2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*i1r15*i1r15r25**2*rgl**3*rsq1l**(-1) - 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl + 
     &    1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2
     &    *rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25*rgl**2 + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25*rgl**3*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(
     &    18)*i1r15**2*i1r15r25**2*rgl**3*rsq1l**(-1) - 2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**2 + 2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl**3*
     &    rsq1l**(-1) )

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(bb0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  + Nc**(-1)*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*r25**(-1) + 
     &    mi(17)*r15**(-1)*i1r25 + mi(17)*r25**(-1)*i1r15 - 3.D0/4.D0*
     &    mi(18)*r15**(-2)*rsq1l**(-1) + mi(18)*r15**(-2)*i1r15r25*
     &    rsq1l**(-1) - mi(18)*r15**(-2)*i1r15r25*rgl*rsq1l**(-1) - 1.D0
     &    /4.D0*mi(18)*r15**(-2)*i1r15r25**2*rsq1l**(-1) + mi(18)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1l**(-1) - 2.D0*mi(18)*r15**(-1)
     &    *r25**(-1) + 2.D0*mi(18)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1l**(-1) - mi(18)*r15**(-1)*i1r25 - 3.D0/4.D0*mi(18)*
     &    r25**(-2)*rsq1l**(-1) + mi(18)*r25**(-2)*i1r15*rsq1l**(-1) - 
     &    mi(18)*r25**(-2)*i1r15*rgl*rsq1l**(-1) - 1.D0/4.D0*mi(18)*
     &    r25**(-2)*i1r15**2*rsq1l**(-1) + mi(18)*r25**(-2)*i1r15**2*
     &    rgl*rsq1l**(-1) - mi(18)*r25**(-1)*i1r15 + mi(18)*r25**(-1)*
     &    i1r15**2*rsq1l**(-1) + mi(18)*r25**(-1)*i1r15**2*rgl*
     &    rsq1l**(-1) - 1.D0/2.D0*mi(18)*r25**(-1)*i1r15**3*rsq1l**(-1)
     &     + 2.D0*mi(18)*r25**(-1)*i1r15**3*rgl*rsq1l**(-1) + 2.D0*mi(
     &    18)*i1r15*i1r15r25**2*rgl*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( mi(18)*i1r15**2*i1r15r25*
     &    rsq1l**(-1) + mi(18)*i1r15**2*i1r15r25*rgl*rsq1l**(-1) - 1.D0/
     &    4.D0*mi(18)*i1r15**2*i1r15r25**2*rsq1l**(-1) + mi(18)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1l**(-1) - 1.D0/2.D0*mi(18)*
     &    i1r15**3*i1r15r25*rsq1l**(-1) + 2.D0*mi(18)*i1r15**3*i1r15r25
     &    *rgl*rsq1l**(-1) + 3.D0/4.D0/(rsq1l - rgl)*mi(18)*r15**(-2)
     &     - 3.D0/2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)*rgl*rsq1l**(-1)
     &     - 1/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25 + 3.D0/2.D0/(
     &    rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl*rsq1l**(-1) + 1/(
     &    rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl - 3.D0/2.D0/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2*rsq1l**(-1) + 1.D0/4.
     &    D0/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2 - 1/(rsq1l - 
     &    rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl + 3.D0/2.D0/(rsq1l - 
     &    rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**2*rsq1l**(-1) - 2.D0/(
     &    rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl + 3.D0/(rsq1l
     &     - rgl)*mi(18)*r15**(-1)*i1r15r25**2*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 3.D0/4.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2) - 3.D0/2.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15 + 3.D0/2.
     &    D0/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl*rsq1l**(-1) + 1/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl - 3.D0/2.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-2)*i1r15*rgl**2*rsq1l**(-1) + 1.D0/4.D0/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2 - 1/(rsq1l - rgl)*mi(
     &    18)*r25**(-2)*i1r15**2*rgl + 3.D0/2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18
     &    )*r25**(-1)*i1r15**2 + 3.D0/2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl + 3.D0/2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**3 - 2.D0/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**3*rgl + 3.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*
     &    i1r15**3*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15*i1r15r25**2*rgl + 3.D0/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25 + 3.D0/2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25*rgl*rsq1l**(-1) - 1/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25*rgl + 3.D0/2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25*rgl**2*rsq1l**(-1) + 1.D0/4.D0/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25**2 - 1/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl + 3.D0/2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)*mi(
     &    18)*i1r15**3*i1r15r25 - 2.D0/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25*rgl + 3.D0/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1l**(-1) + 3.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*rgl - 3.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*rgl**2*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2*rsq1l**(-1) + 1.D0/2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**2
     &     - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    i1r15r25*rgl**3*rsq1l**(-1) - 1.D0/4.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl + 1.D0/4.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**2*
     &    rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25**2*rgl**2 + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l
     &     - rgl)*mi(18)*r15**(-2)*i1r15r25**2*rgl**3*rsq1l**(-1) - 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25**2*
     &    rgl**2 + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25**2*rgl**3*rsq1l**(-1) + 3.D0/4.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*rgl - 3.D0/4.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*rgl**2*rsq1l**(-1) - 1.D0/2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-2)*i1r15*rgl**2*rsq1l**(-1) + 1.D0/2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*rgl**2 - 1.D
     &    0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*
     &    rgl**3*rsq1l**(-1) - 1.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*r25**(-2)*i1r15**2*rgl + 1.D0/4.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2*rgl**2*rsq1l**(-1) - 1.
     &    D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15**2
     &    *rgl**2 + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15**2*rgl**3*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl + 1.D0/2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2
     &    *rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15**2*rgl**2 + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**3*rsq1l**(-1) - 1.D0/2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2*rsq1l**(-1) - 1/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**2 + 1/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**3*rgl**3*
     &    rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25**2*rgl**2 + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15*i1r15r25**2*rgl**3*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl
     &    )/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl + 1.D0/2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2*
     &    rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25*rgl**2 + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*i1r15**2*i1r15r25*rgl**3*rsq1l**(-1) - 1.D0/4.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl
     &     + 1.D0/4.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*i1r15**2*i1r15r25**2*rgl**3*rsq1l**(-1) - 1.D0/2.D
     &    0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*i1r15r25*rgl + 
     &    1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**3*
     &    i1r15r25*rgl**2*rsq1l**(-1) - 1/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15**3*i1r15r25*rgl**2 + 1/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*i1r15**3*i1r15r25*rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1) * (  - r15**(-1)*r25**(-1) - mi(20)*r15**(-2)*
     &    i1r15r25*rsq1l + mi(20)*r15**(-2)*i1r15r25*rgl + mi(20)*
     &    r15**(-2)*i1r25*rsq1l - mi(20)*r15**(-2)*i1r25*rgl - 2.D0*mi(
     &    20)*r15**(-1)*r25**(-1) + 2.D0*mi(20)*r15**(-1)*r25**(-1)*
     &    rsq1l - 2.D0*mi(20)*r15**(-1)*r25**(-1)*rgl - 2.D0*mi(20)*
     &    r15**(-1)*i1r15r25*rsq1l + 2.D0*mi(20)*r15**(-1)*i1r15r25*rgl
     &     - mi(20)*r15**(-1)*i1r25 + 2.D0*mi(20)*r15**(-1)*i1r25*rsq1l
     &     - 2.D0*mi(20)*r15**(-1)*i1r25*rgl + 2.D0*mi(20)*r15**(-1)*
     &    i1r25**2*rsq1l - 2.D0*mi(20)*r15**(-1)*i1r25**2*rgl - mi(20)*
     &    r25**(-1)*i1r15 + mi(20)*r25**(-1)*i1r15**2*rsq1l - mi(20)*
     &    r25**(-1)*i1r15**2*rgl - 2.D0*mi(20)*i1r15*i1r15r25*rsq1l + 2.
     &    D0*mi(20)*i1r15*i1r15r25*rgl - mi(20)*i1r15**2*i1r15r25*rsq1l
     &     + mi(20)*i1r15**2*i1r15r25*rgl + mi(22)*r15**(-1)*r25**(-1)
     &     + mi(24)*r15**(-1)*i1r15r25*rsq1l - mi(24)*r15**(-1)*
     &    i1r15r25*rgl + mi(24)*r25**(-1)*i1r15 - mi(24)*r25**(-1)*
     &    i1r15**2*rsq1l )
      e = e  + Nc**(-1) * ( mi(24)*r25**(-1)*i1r15**2*rgl + mi(24)*i1r15
     &    *i1r15r25*rsq1l - mi(24)*i1r15*i1r15r25*rgl + mi(24)*i1r15**2
     &    *i1r15r25*rsq1l - mi(24)*i1r15**2*i1r15r25*rgl + mi(26)*
     &    r15**(-2)*i1r15r25*rsq1l - mi(26)*r15**(-2)*i1r15r25*rgl - 
     &    mi(26)*r15**(-2)*i1r25*rsq1l + mi(26)*r15**(-2)*i1r25*rgl + 
     &    mi(26)*r15**(-1)*i1r15r25*rsq1l - mi(26)*r15**(-1)*i1r15r25*
     &    rgl + mi(26)*r15**(-1)*i1r25 - mi(26)*r15**(-1)*i1r25*rsq1l
     &     + mi(26)*r15**(-1)*i1r25*rgl - 2.D0*mi(26)*r15**(-1)*
     &    i1r25**2*rsq1l + 2.D0*mi(26)*r15**(-1)*i1r25**2*rgl + mi(26)*
     &    r25**(-1)*i1r15*rsq1l - mi(26)*r25**(-1)*i1r15*rgl + mi(26)*
     &    i1r15*i1r15r25*rsq1l - mi(26)*i1r15*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125 * ( 1.D0/2.D0*mi(28)*r15**(-2) - mi(28)*
     &    r15**(-2)*rsq1l + mi(28)*r15**(-2)*rgl - 1.D0/2.D0*mi(28)*
     &    r15**(-2)*r25 - 1.D0/2.D0*mi(28)*r15**(-1) + 1.D0/2.D0*mi(28)
     &    *r25**(-2) - mi(28)*r25**(-2)*rsq1l + mi(28)*r25**(-2)*rgl - 
     &    1.D0/2.D0*mi(28)*r25**(-1) - 1.D0/2.D0*mi(28)*r15*r25**(-2)
     &     + 1.D0/2.D0*mi(32)*r15**(-1)*i1r15r25**2*rsq1l**2 - mi(32)*
     &    r15**(-1)*i1r15r25**2*rgl*rsq1l + 1.D0/2.D0*mi(32)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + mi(32)*r25**(-2)*rsq1l - mi(32)*
     &    r25**(-2)*rgl - mi(32)*r25**(-2)*i1r15*rsq1l - 1.D0/2.D0*mi(
     &    32)*r25**(-2)*i1r15*rsq1l**2 + mi(32)*r25**(-2)*i1r15*rgl + 
     &    mi(32)*r25**(-2)*i1r15*rgl*rsq1l - 1.D0/2.D0*mi(32)*r25**(-2)
     &    *i1r15*rgl**2 + 1.D0/2.D0*mi(32)*r25**(-2)*i1r15**2*rsq1l**2
     &     - mi(32)*r25**(-2)*i1r15**2*rgl*rsq1l + 1.D0/2.D0*mi(32)*
     &    r25**(-2)*i1r15**2*rgl**2 + mi(32)*r25**(-1)*i1r15*rsq1l - 
     &    mi(32)*r25**(-1)*i1r15**2*rsq1l + mi(32)*r25**(-1)*i1r15**2*
     &    rgl )
      e = e  + Nc**(-1)*s125 * ( mi(32)*r25**(-1)*i1r15**3*rsq1l**2 - 2.D
     &    0*mi(32)*r25**(-1)*i1r15**3*rgl*rsq1l + mi(32)*r25**(-1)*
     &    i1r15**3*rgl**2 + mi(32)*i1r15*i1r15r25*rsq1l + 1.D0/2.D0*mi(
     &    32)*i1r15*i1r15r25**2*rsq1l**2 - mi(32)*i1r15*i1r15r25**2*rgl
     &    *rsq1l + 1.D0/2.D0*mi(32)*i1r15*i1r15r25**2*rgl**2 - mi(32)*
     &    i1r15**2*i1r15r25*rsq1l + mi(32)*i1r15**2*i1r15r25*rgl + 1.D0/
     &    2.D0*mi(32)*i1r15**2*i1r15r25**2*rsq1l**2 - mi(32)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l + 1.D0/2.D0*mi(32)*i1r15**2*i1r15r25**2
     &    *rgl**2 + mi(32)*i1r15**3*i1r15r25*rsq1l**2 - 2.D0*mi(32)*
     &    i1r15**3*i1r15r25*rgl*rsq1l + mi(32)*i1r15**3*i1r15r25*rgl**2
     &     + 1.D0/2.D0*mi(32)*r15*r25**(-2) + mi(36)*r15**(-2)*rsq1l - 
     &    mi(36)*r15**(-2)*rgl - mi(36)*r15**(-2)*i1r15r25*rsq1l - 1.D0/
     &    2.D0*mi(36)*r15**(-2)*i1r15r25*rsq1l**2 + mi(36)*r15**(-2)*
     &    i1r15r25*rgl + mi(36)*r15**(-2)*i1r15r25*rgl*rsq1l - 1.D0/2.D0
     &    *mi(36)*r15**(-2)*i1r15r25*rgl**2 + 1.D0/2.D0*mi(36)*
     &    r15**(-2)*i1r15r25**2*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * (  - mi(36)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1l + 1.D0/2.D0*mi(36)*r15**(-2)*i1r15r25**2*rgl**2 + 1.D0/
     &    2.D0*mi(36)*r15**(-2)*r25 + mi(36)*r15**(-1)*i1r15r25*rsq1l
     &     + 1.D0/2.D0*mi(36)*r15**(-1)*i1r15r25**2*rsq1l**2 - mi(36)*
     &    r15**(-1)*i1r15r25**2*rgl*rsq1l + 1.D0/2.D0*mi(36)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + 1.D0/2.D0*mi(36)*r25**(-1)*i1r15**2*
     &    rsq1l**2 - mi(36)*r25**(-1)*i1r15**2*rgl*rsq1l + 1.D0/2.D0*
     &    mi(36)*r25**(-1)*i1r15**2*rgl**2 + 1.D0/2.D0*mi(36)*i1r15*
     &    i1r15r25**2*rsq1l**2 - mi(36)*i1r15*i1r15r25**2*rgl*rsq1l + 1.
     &    D0/2.D0*mi(36)*i1r15*i1r15r25**2*rgl**2 + 1.D0/2.D0*mi(36)*
     &    i1r15**2*i1r15r25*rsq1l**2 - mi(36)*i1r15**2*i1r15r25*rgl*
     &    rsq1l + 1.D0/2.D0*mi(36)*i1r15**2*i1r15r25*rgl**2 - mi(38)*
     &    r15**(-2)*rsq1l + mi(38)*r15**(-2)*rgl + mi(38)*r15**(-2)*
     &    i1r15r25*rsq1l + mi(38)*r15**(-2)*i1r15r25*rsq1l**2 - mi(38)*
     &    r15**(-2)*i1r15r25*rgl - 2.D0*mi(38)*r15**(-2)*i1r15r25*rgl*
     &    rsq1l )
      e = e  + Nc**(-1)*s125 * ( mi(38)*r15**(-2)*i1r15r25*rgl**2 - mi(
     &    38)*r15**(-2)*i1r15r25**2*rsq1l**2 + 2.D0*mi(38)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l - mi(38)*r15**(-2)*i1r15r25**2*rgl**2
     &     - 1.D0/2.D0*mi(38)*r15**(-2)*r25 - 1.D0/2.D0*mi(38)*
     &    r15**(-1) - 2.D0*mi(38)*r15**(-1)*i1r15r25*rgl - 2.D0*mi(38)*
     &    r15**(-1)*i1r15r25**2*rsq1l**2 + 4.D0*mi(38)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1l - 2.D0*mi(38)*r15**(-1)*i1r15r25**2*
     &    rgl**2 - mi(38)*r25**(-2)*rsq1l + mi(38)*r25**(-2)*rgl + mi(
     &    38)*r25**(-2)*i1r15*rsq1l + mi(38)*r25**(-2)*i1r15*rsq1l**2
     &     - mi(38)*r25**(-2)*i1r15*rgl - 2.D0*mi(38)*r25**(-2)*i1r15*
     &    rgl*rsq1l + mi(38)*r25**(-2)*i1r15*rgl**2 - mi(38)*r25**(-2)*
     &    i1r15**2*rsq1l**2 + 2.D0*mi(38)*r25**(-2)*i1r15**2*rgl*rsq1l
     &     - mi(38)*r25**(-2)*i1r15**2*rgl**2 - 1.D0/2.D0*mi(38)*
     &    r25**(-1) - 2.D0*mi(38)*r25**(-1)*i1r15*rgl + mi(38)*
     &    r25**(-1)*i1r15**2*rsq1l - mi(38)*r25**(-1)*i1r15**2*rsq1l**2
     &     - mi(38)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(38)*r25**(-1)*i1r15**2*rgl*
     &    rsq1l - mi(38)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*mi(38)*
     &    r25**(-1)*i1r15**3*rsq1l**2 + 4.D0*mi(38)*r25**(-1)*i1r15**3*
     &    rgl*rsq1l - 2.D0*mi(38)*r25**(-1)*i1r15**3*rgl**2 - 2.D0*mi(
     &    38)*i1r15*i1r15r25*rgl - 2.D0*mi(38)*i1r15*i1r15r25**2*
     &    rsq1l**2 + 4.D0*mi(38)*i1r15*i1r15r25**2*rgl*rsq1l - 2.D0*mi(
     &    38)*i1r15*i1r15r25**2*rgl**2 + mi(38)*i1r15**2*i1r15r25*rsq1l
     &     - mi(38)*i1r15**2*i1r15r25*rsq1l**2 - mi(38)*i1r15**2*
     &    i1r15r25*rgl + 2.D0*mi(38)*i1r15**2*i1r15r25*rgl*rsq1l - mi(
     &    38)*i1r15**2*i1r15r25*rgl**2 - mi(38)*i1r15**2*i1r15r25**2*
     &    rsq1l**2 + 2.D0*mi(38)*i1r15**2*i1r15r25**2*rgl*rsq1l - mi(38
     &    )*i1r15**2*i1r15r25**2*rgl**2 - 2.D0*mi(38)*i1r15**3*i1r15r25
     &    *rsq1l**2 + 4.D0*mi(38)*i1r15**3*i1r15r25*rgl*rsq1l - 2.D0*
     &    mi(38)*i1r15**3*i1r15r25*rgl**2 - 1.D0/2.D0*mi(38)*r15*
     &    r25**(-2) + 1.D0/2.D0*mi(40)*r15**(-2)*i1r15r25**2*rsq1l**2
     &     - mi(40)*r15**(-2)*i1r15r25**2*rgl*rsq1l )
      e = e  + Nc**(-1)*s125 * ( 1.D0/2.D0*mi(40)*r15**(-2)*i1r15r25**2*
     &    rgl**2 - mi(40)*r15**(-1)*r25**(-1)*rsq1l**2 - mi(40)*
     &    r15**(-1)*r25**(-1)*rgl + 2.D0*mi(40)*r15**(-1)*r25**(-1)*rgl
     &    *rsq1l - mi(40)*r15**(-1)*r25**(-1)*rgl**2 + mi(40)*r15**(-1)
     &    *i1r15r25*rsq1l**2 + mi(40)*r15**(-1)*i1r15r25*rgl - 2.D0*mi(
     &    40)*r15**(-1)*i1r15r25*rgl*rsq1l + mi(40)*r15**(-1)*i1r15r25*
     &    rgl**2 + 1.D0/2.D0*mi(40)*r15**(-1)*i1r15r25**2*rsq1l**2 - 
     &    mi(40)*r15**(-1)*i1r15r25**2*rgl*rsq1l + 1.D0/2.D0*mi(40)*
     &    r15**(-1)*i1r15r25**2*rgl**2 - 1.D0/2.D0*mi(40)*r25**(-2) + 
     &    mi(40)*r25**(-2)*rsq1l - mi(40)*r25**(-2)*rgl - 1.D0/2.D0*mi(
     &    40)*r25**(-2)*i1r15*rsq1l**2 + mi(40)*r25**(-2)*i1r15*rgl*
     &    rsq1l - 1.D0/2.D0*mi(40)*r25**(-2)*i1r15*rgl**2 + mi(40)*
     &    r25**(-1)*i1r15*rsq1l - mi(40)*r25**(-1)*i1r15*rsq1l**2 - mi(
     &    40)*r25**(-1)*i1r15*rgl + 2.D0*mi(40)*r25**(-1)*i1r15*rgl*
     &    rsq1l - mi(40)*r25**(-1)*i1r15*rgl**2 - mi(40)*r25**(-1)*
     &    i1r15**2*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(40)*r25**(-1)*i1r15**2*rgl*
     &    rsq1l - mi(40)*r25**(-1)*i1r15**2*rgl**2 - mi(40)*i1r15*
     &    i1r15r25*rsq1l + mi(40)*i1r15*i1r15r25*rsq1l**2 + mi(40)*
     &    i1r15*i1r15r25*rgl - 2.D0*mi(40)*i1r15*i1r15r25*rgl*rsq1l + 
     &    mi(40)*i1r15*i1r15r25*rgl**2 + 1.D0/2.D0*mi(40)*i1r15*
     &    i1r15r25**2*rsq1l**2 - mi(40)*i1r15*i1r15r25**2*rgl*rsq1l + 1.
     &    D0/2.D0*mi(40)*i1r15*i1r15r25**2*rgl**2 + mi(40)*i1r15**2*
     &    i1r15r25*rsq1l**2 - 2.D0*mi(40)*i1r15**2*i1r15r25*rgl*rsq1l
     &     + mi(40)*i1r15**2*i1r15r25*rgl**2 + 1.D0/2.D0*mi(40)*r15*
     &    r25**(-2) - 1.D0/2.D0*mi(42)*r15**(-2) + mi(42)*r15**(-2)*
     &    rsq1l - mi(42)*r15**(-2)*rgl + 1.D0/2.D0*mi(42)*r15**(-2)*
     &    i1r15r25*rsq1l**2 - mi(42)*r15**(-2)*i1r15r25*rgl*rsq1l + 1.D0
     &    /2.D0*mi(42)*r15**(-2)*i1r15r25*rgl**2 - mi(42)*r15**(-2)*
     &    i1r25*rsq1l**2 + 2.D0*mi(42)*r15**(-2)*i1r25*rgl*rsq1l - mi(
     &    42)*r15**(-2)*i1r25*rgl**2 + 1.D0/2.D0*mi(42)*r15**(-2)*r25
     &     - mi(42)*r15**(-1)*r25**(-1)*rsq1l**2 )
      e = e  + Nc**(-1)*s125 * (  - mi(42)*r15**(-1)*r25**(-1)*rgl + 2.D0
     &    *mi(42)*r15**(-1)*r25**(-1)*rgl*rsq1l - mi(42)*r15**(-1)*
     &    r25**(-1)*rgl**2 - mi(42)*r15**(-1)*i1r15r25*rsq1l + mi(42)*
     &    r15**(-1)*i1r15r25*rsq1l**2 + mi(42)*r15**(-1)*i1r15r25*rgl
     &     - 2.D0*mi(42)*r15**(-1)*i1r15r25*rgl*rsq1l + mi(42)*
     &    r15**(-1)*i1r15r25*rgl**2 + 1.D0/2.D0*mi(42)*r15**(-1)*
     &    i1r15r25**2*rsq1l**2 - mi(42)*r15**(-1)*i1r15r25**2*rgl*rsq1l
     &     + 1.D0/2.D0*mi(42)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0*mi(42
     &    )*r15**(-1)*i1r25*rsq1l - 2.D0*mi(42)*r15**(-1)*i1r25*
     &    rsq1l**2 - 2.D0*mi(42)*r15**(-1)*i1r25*rgl + 4.D0*mi(42)*
     &    r15**(-1)*i1r25*rgl*rsq1l - 2.D0*mi(42)*r15**(-1)*i1r25*
     &    rgl**2 - 2.D0*mi(42)*r15**(-1)*i1r25**2*rsq1l**2 + 4.D0*mi(42
     &    )*r15**(-1)*i1r25**2*rgl*rsq1l - 2.D0*mi(42)*r15**(-1)*
     &    i1r25**2*rgl**2 + 1.D0/2.D0*mi(42)*r25**(-2)*i1r15**2*
     &    rsq1l**2 - mi(42)*r25**(-2)*i1r15**2*rgl*rsq1l + 1.D0/2.D0*
     &    mi(42)*r25**(-2)*i1r15**2*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( mi(42)*r25**(-1)*i1r15*rsq1l**2 + mi(42
     &    )*r25**(-1)*i1r15*rgl - 2.D0*mi(42)*r25**(-1)*i1r15*rgl*rsq1l
     &     + mi(42)*r25**(-1)*i1r15*rgl**2 + 1.D0/2.D0*mi(42)*r25**(-1)
     &    *i1r15**2*rsq1l**2 - mi(42)*r25**(-1)*i1r15**2*rgl*rsq1l + 1.D
     &    0/2.D0*mi(42)*r25**(-1)*i1r15**2*rgl**2 + mi(42)*r25**(-1)*
     &    i1r15**3*rsq1l**2 - 2.D0*mi(42)*r25**(-1)*i1r15**3*rgl*rsq1l
     &     + mi(42)*r25**(-1)*i1r15**3*rgl**2 + mi(42)*i1r15*i1r15r25*
     &    rsq1l**2 + mi(42)*i1r15*i1r15r25*rgl - 2.D0*mi(42)*i1r15*
     &    i1r15r25*rgl*rsq1l + mi(42)*i1r15*i1r15r25*rgl**2 + 1.D0/2.D0
     &    *mi(42)*i1r15*i1r15r25**2*rsq1l**2 - mi(42)*i1r15*i1r15r25**2
     &    *rgl*rsq1l + 1.D0/2.D0*mi(42)*i1r15*i1r15r25**2*rgl**2 + 1.D0/
     &    2.D0*mi(42)*i1r15**2*i1r15r25*rsq1l**2 - mi(42)*i1r15**2*
     &    i1r15r25*rgl*rsq1l + 1.D0/2.D0*mi(42)*i1r15**2*i1r15r25*
     &    rgl**2 + 1.D0/2.D0*mi(42)*i1r15**2*i1r15r25**2*rsq1l**2 - mi(
     &    42)*i1r15**2*i1r15r25**2*rgl*rsq1l + 1.D0/2.D0*mi(42)*
     &    i1r15**2*i1r15r25**2*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( mi(42)*i1r15**3*i1r15r25*rsq1l**2 - 2.D0
     &    *mi(42)*i1r15**3*i1r15r25*rgl*rsq1l + mi(42)*i1r15**3*
     &    i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 1.D0/2.D0*mi(44)*r15**(-2)*
     &    i1r15r25*rsq1l**3 + 3.D0/2.D0*mi(44)*r15**(-2)*i1r15r25*rgl*
     &    rsq1l**2 - 3.D0/2.D0*mi(44)*r15**(-2)*i1r15r25*rgl**2*rsq1l
     &     + 1.D0/2.D0*mi(44)*r15**(-2)*i1r15r25*rgl**3 + 1.D0/2.D0*mi(
     &    44)*r15**(-2)*i1r15r25**2*rsq1l**3 - 3.D0/2.D0*mi(44)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1l**2 + 3.D0/2.D0*mi(44)*
     &    r15**(-2)*i1r15r25**2*rgl**2*rsq1l - 1.D0/2.D0*mi(44)*
     &    r15**(-2)*i1r15r25**2*rgl**3 + 1.D0/2.D0*mi(44)*r15**(-1)*
     &    i1r15r25*rsq1l**2 + mi(44)*r15**(-1)*i1r15r25*rgl*rsq1l - 3.D0
     &    /2.D0*mi(44)*r15**(-1)*i1r15r25*rgl**2 + mi(44)*r15**(-1)*
     &    i1r15r25**2*rsq1l**3 - 3.D0*mi(44)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1l**2 + 3.D0*mi(44)*r15**(-1)*i1r15r25**2*rgl**2*rsq1l - 
     &    mi(44)*r15**(-1)*i1r15r25**2*rgl**3 + 3.D0/2.D0*mi(44)*
     &    r25**(-2)*rsq1l**2 - 3.D0*mi(44)*r25**(-2)*rgl*rsq1l + 3.D0/2.
     &    D0*mi(44)*r25**(-2)*rgl**2 - 3.D0/2.D0*mi(44)*r25**(-2)*i1r15
     &    *rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 1.D0/2.D0*mi(44)*r25**(-2)*i1r15*
     &    rsq1l**3 + 3.D0*mi(44)*r25**(-2)*i1r15*rgl*rsq1l + 3.D0/2.D0*
     &    mi(44)*r25**(-2)*i1r15*rgl*rsq1l**2 - 3.D0/2.D0*mi(44)*
     &    r25**(-2)*i1r15*rgl**2 - 3.D0/2.D0*mi(44)*r25**(-2)*i1r15*
     &    rgl**2*rsq1l + 1.D0/2.D0*mi(44)*r25**(-2)*i1r15*rgl**3 + 1.D0/
     &    2.D0*mi(44)*r25**(-2)*i1r15**2*rsq1l**3 - 3.D0/2.D0*mi(44)*
     &    r25**(-2)*i1r15**2*rgl*rsq1l**2 + 3.D0/2.D0*mi(44)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1l - 1.D0/2.D0*mi(44)*r25**(-2)*i1r15**2*
     &    rgl**3 - 1.D0/2.D0*mi(44)*r25**(-1)*rsq1l - 3.D0/2.D0*mi(44)*
     &    r25**(-1)*rgl + 1.D0/2.D0*mi(44)*r25**(-1)*i1r15*rsq1l**2 + 
     &    mi(44)*r25**(-1)*i1r15*rgl*rsq1l - 3.D0/2.D0*mi(44)*r25**(-1)
     &    *i1r15*rgl**2 - 3.D0/2.D0*mi(44)*r25**(-1)*i1r15**2*rsq1l**2
     &     + 1.D0/2.D0*mi(44)*r25**(-1)*i1r15**2*rsq1l**3 + 3.D0*mi(44)
     &    *r25**(-1)*i1r15**2*rgl*rsq1l - 3.D0/2.D0*mi(44)*r25**(-1)*
     &    i1r15**2*rgl*rsq1l**2 - 3.D0/2.D0*mi(44)*r25**(-1)*i1r15**2*
     &    rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0/2.D0*mi(44)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1l - 1.D0/2.D0*mi(44)*r25**(-1)*i1r15**2*rgl**3 + 
     &    mi(44)*r25**(-1)*i1r15**3*rsq1l**3 - 3.D0*mi(44)*r25**(-1)*
     &    i1r15**3*rgl*rsq1l**2 + 3.D0*mi(44)*r25**(-1)*i1r15**3*rgl**2
     &    *rsq1l - mi(44)*r25**(-1)*i1r15**3*rgl**3 + 1.D0/2.D0*mi(44)*
     &    i1r15*i1r15r25*rsq1l**2 + mi(44)*i1r15*i1r15r25*rgl*rsq1l - 3.
     &    D0/2.D0*mi(44)*i1r15*i1r15r25*rgl**2 + mi(44)*i1r15*
     &    i1r15r25**2*rsq1l**3 - 3.D0*mi(44)*i1r15*i1r15r25**2*rgl*
     &    rsq1l**2 + 3.D0*mi(44)*i1r15*i1r15r25**2*rgl**2*rsq1l - mi(44
     &    )*i1r15*i1r15r25**2*rgl**3 - 3.D0/2.D0*mi(44)*i1r15**2*
     &    i1r15r25*rsq1l**2 + 1.D0/2.D0*mi(44)*i1r15**2*i1r15r25*
     &    rsq1l**3 + 3.D0*mi(44)*i1r15**2*i1r15r25*rgl*rsq1l - 3.D0/2.D0
     &    *mi(44)*i1r15**2*i1r15r25*rgl*rsq1l**2 - 3.D0/2.D0*mi(44)*
     &    i1r15**2*i1r15r25*rgl**2 + 3.D0/2.D0*mi(44)*i1r15**2*i1r15r25
     &    *rgl**2*rsq1l - 1.D0/2.D0*mi(44)*i1r15**2*i1r15r25*rgl**3 + 1.
     &    D0/2.D0*mi(44)*i1r15**2*i1r15r25**2*rsq1l**3 )
      e = e  + Nc**(-1)*s125**2 * (  - 3.D0/2.D0*mi(44)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1l**2 + 3.D0/2.D0*mi(44)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1l - 1.D0/2.D0*mi(44)*i1r15**2*
     &    i1r15r25**2*rgl**3 + mi(44)*i1r15**3*i1r15r25*rsq1l**3 - 3.D0
     &    *mi(44)*i1r15**3*i1r15r25*rgl*rsq1l**2 + 3.D0*mi(44)*i1r15**3
     &    *i1r15r25*rgl**2*rsq1l - mi(44)*i1r15**3*i1r15r25*rgl**3 - 1.D
     &    0/2.D0*mi(44)*r15*r25**(-2) + 3.D0/2.D0*mi(44)*r15*r25**(-2)*
     &    rsq1l - 3.D0/2.D0*mi(44)*r15*r25**(-2)*rgl + 1.D0/2.D0*mi(44)
     &    *r15*r25**(-1) + 1.D0/2.D0*mi(44)*r15**2*r25**(-2) + 3.D0/2.D0
     &    *mi(46)*r15**(-2)*rsq1l**2 - 3.D0*mi(46)*r15**(-2)*rgl*rsq1l
     &     + 3.D0/2.D0*mi(46)*r15**(-2)*rgl**2 - 3.D0/2.D0*mi(46)*
     &    r15**(-2)*i1r15r25*rsq1l**2 - 1.D0/2.D0*mi(46)*r15**(-2)*
     &    i1r15r25*rsq1l**3 + 3.D0*mi(46)*r15**(-2)*i1r15r25*rgl*rsq1l
     &     + 3.D0/2.D0*mi(46)*r15**(-2)*i1r15r25*rgl*rsq1l**2 - 3.D0/2.D
     &    0*mi(46)*r15**(-2)*i1r15r25*rgl**2 - 3.D0/2.D0*mi(46)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1l )
      e = e  + Nc**(-1)*s125**2 * ( 1.D0/2.D0*mi(46)*r15**(-2)*i1r15r25*
     &    rgl**3 + 1.D0/2.D0*mi(46)*r15**(-2)*i1r15r25**2*rsq1l**3 - 3.D
     &    0/2.D0*mi(46)*r15**(-2)*i1r15r25**2*rgl*rsq1l**2 + 3.D0/2.D0*
     &    mi(46)*r15**(-2)*i1r15r25**2*rgl**2*rsq1l - 1.D0/2.D0*mi(46)*
     &    r15**(-2)*i1r15r25**2*rgl**3 - 1.D0/2.D0*mi(46)*r15**(-2)*r25
     &     + 3.D0/2.D0*mi(46)*r15**(-2)*r25*rsq1l - 3.D0/2.D0*mi(46)*
     &    r15**(-2)*r25*rgl + 1.D0/2.D0*mi(46)*r15**(-2)*r25**2 - 1.D0/
     &    2.D0*mi(46)*r15**(-1)*rsq1l - 3.D0/2.D0*mi(46)*r15**(-1)*rgl
     &     + 1.D0/2.D0*mi(46)*r15**(-1)*i1r15r25*rsq1l**2 + mi(46)*
     &    r15**(-1)*i1r15r25*rgl*rsq1l - 3.D0/2.D0*mi(46)*r15**(-1)*
     &    i1r15r25*rgl**2 + mi(46)*r15**(-1)*i1r15r25**2*rsq1l**3 - 3.D0
     &    *mi(46)*r15**(-1)*i1r15r25**2*rgl*rsq1l**2 + 3.D0*mi(46)*
     &    r15**(-1)*i1r15r25**2*rgl**2*rsq1l - mi(46)*r15**(-1)*
     &    i1r15r25**2*rgl**3 + 1.D0/2.D0*mi(46)*r15**(-1)*r25 - 1.D0/2.D
     &    0*mi(46)*r25**(-2)*i1r15*rsq1l**3 + 3.D0/2.D0*mi(46)*
     &    r25**(-2)*i1r15*rgl*rsq1l**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 3.D0/2.D0*mi(46)*r25**(-2)*i1r15*
     &    rgl**2*rsq1l + 1.D0/2.D0*mi(46)*r25**(-2)*i1r15*rgl**3 + 1.D0/
     &    2.D0*mi(46)*r25**(-2)*i1r15**2*rsq1l**3 - 3.D0/2.D0*mi(46)*
     &    r25**(-2)*i1r15**2*rgl*rsq1l**2 + 3.D0/2.D0*mi(46)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1l - 1.D0/2.D0*mi(46)*r25**(-2)*i1r15**2*
     &    rgl**3 + 1.D0/2.D0*mi(46)*r25**(-1)*i1r15*rsq1l**2 + mi(46)*
     &    r25**(-1)*i1r15*rgl*rsq1l - 3.D0/2.D0*mi(46)*r25**(-1)*i1r15*
     &    rgl**2 + 1.D0/2.D0*mi(46)*r25**(-1)*i1r15**2*rsq1l**3 - 3.D0/
     &    2.D0*mi(46)*r25**(-1)*i1r15**2*rgl*rsq1l**2 + 3.D0/2.D0*mi(46
     &    )*r25**(-1)*i1r15**2*rgl**2*rsq1l - 1.D0/2.D0*mi(46)*
     &    r25**(-1)*i1r15**2*rgl**3 + mi(46)*r25**(-1)*i1r15**3*
     &    rsq1l**3 - 3.D0*mi(46)*r25**(-1)*i1r15**3*rgl*rsq1l**2 + 3.D0
     &    *mi(46)*r25**(-1)*i1r15**3*rgl**2*rsq1l - mi(46)*r25**(-1)*
     &    i1r15**3*rgl**3 + 1.D0/2.D0*mi(46)*i1r15*i1r15r25*rsq1l**2 + 
     &    mi(46)*i1r15*i1r15r25*rgl*rsq1l - 3.D0/2.D0*mi(46)*i1r15*
     &    i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( mi(46)*i1r15*i1r15r25**2*rsq1l**3 - 
     &    3.D0*mi(46)*i1r15*i1r15r25**2*rgl*rsq1l**2 + 3.D0*mi(46)*
     &    i1r15*i1r15r25**2*rgl**2*rsq1l - mi(46)*i1r15*i1r15r25**2*
     &    rgl**3 + 1.D0/2.D0*mi(46)*i1r15**2*i1r15r25*rsq1l**3 - 3.D0/2.
     &    D0*mi(46)*i1r15**2*i1r15r25*rgl*rsq1l**2 + 3.D0/2.D0*mi(46)*
     &    i1r15**2*i1r15r25*rgl**2*rsq1l - 1.D0/2.D0*mi(46)*i1r15**2*
     &    i1r15r25*rgl**3 + 1.D0/2.D0*mi(46)*i1r15**2*i1r15r25**2*
     &    rsq1l**3 - 3.D0/2.D0*mi(46)*i1r15**2*i1r15r25**2*rgl*rsq1l**2
     &     + 3.D0/2.D0*mi(46)*i1r15**2*i1r15r25**2*rgl**2*rsq1l - 1.D0/
     &    2.D0*mi(46)*i1r15**2*i1r15r25**2*rgl**3 + mi(46)*i1r15**3*
     &    i1r15r25*rsq1l**3 - 3.D0*mi(46)*i1r15**3*i1r15r25*rgl*
     &    rsq1l**2 + 3.D0*mi(46)*i1r15**3*i1r15r25*rgl**2*rsq1l - mi(46
     &    )*i1r15**3*i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*r25**(-1) - 
     &    mi(17)*r15**(-1)*i1r25 - mi(17)*r25**(-1)*i1r15 + 2.D0*mi(18)
     &    *r15**(-1)*r25**(-1) + mi(18)*r15**(-1)*i1r25 + mi(18)*
     &    r25**(-1)*i1r15 )
      e = e  + Nc * ( r15**(-1)*r25**(-1) + mi(20)*r15**(-2)*i1r15r25*
     &    rsq1l - mi(20)*r15**(-2)*i1r15r25*rgl - mi(20)*r15**(-2)*
     &    i1r25*rsq1l + mi(20)*r15**(-2)*i1r25*rgl + mi(20)*r15**(-1)*
     &    r25**(-1) - 2.D0*mi(20)*r15**(-1)*r25**(-1)*rsq1l + 2.D0*mi(
     &    20)*r15**(-1)*r25**(-1)*rgl - mi(20)*r15**(-1)*i1r15r25 + 2.D0
     &    *mi(20)*r15**(-1)*i1r15r25*rsq1l - 2.D0*mi(20)*r15**(-1)*
     &    i1r15r25*rgl + mi(20)*r15**(-1)*i1r25 - 2.D0*mi(20)*r15**(-1)
     &    *i1r25*rsq1l + 2.D0*mi(20)*r15**(-1)*i1r25*rgl - 2.D0*mi(20)*
     &    r15**(-1)*i1r25**2*rsq1l + 2.D0*mi(20)*r15**(-1)*i1r25**2*rgl
     &     - mi(20)*r25**(-1)*i1r15**2*rsq1l + mi(20)*r25**(-1)*
     &    i1r15**2*rgl - mi(20)*i1r15*i1r15r25 + 2.D0*mi(20)*i1r15*
     &    i1r15r25*rsq1l - 2.D0*mi(20)*i1r15*i1r15r25*rgl + mi(20)*
     &    i1r15**2*i1r15r25*rsq1l - mi(20)*i1r15**2*i1r15r25*rgl - mi(
     &    24)*r15**(-1)*i1r15r25*rsq1l + mi(24)*r15**(-1)*i1r15r25*rgl
     &     + mi(24)*r25**(-1)*i1r15**2*rsq1l - mi(24)*r25**(-1)*
     &    i1r15**2*rgl )
      e = e  + Nc * ( mi(24)*i1r15*i1r15r25 - mi(24)*i1r15*i1r15r25*
     &    rsq1l + mi(24)*i1r15*i1r15r25*rgl - mi(24)*i1r15**2*i1r15r25*
     &    rsq1l + mi(24)*i1r15**2*i1r15r25*rgl - mi(26)*r15**(-2)*
     &    i1r15r25*rsq1l + mi(26)*r15**(-2)*i1r15r25*rgl + mi(26)*
     &    r15**(-2)*i1r25*rsq1l - mi(26)*r15**(-2)*i1r25*rgl + mi(26)*
     &    r15**(-1)*i1r15r25 - mi(26)*r15**(-1)*i1r15r25*rsq1l + mi(26)
     &    *r15**(-1)*i1r15r25*rgl - mi(26)*r15**(-1)*i1r25 + mi(26)*
     &    r15**(-1)*i1r25*rsq1l - mi(26)*r15**(-1)*i1r25*rgl + 2.D0*mi(
     &    26)*r15**(-1)*i1r25**2*rsq1l - 2.D0*mi(26)*r15**(-1)*i1r25**2
     &    *rgl - mi(26)*r25**(-1)*i1r15*rsq1l + mi(26)*r25**(-1)*i1r15*
     &    rgl - mi(26)*i1r15*i1r15r25*rsq1l + mi(26)*i1r15*i1r15r25*rgl
     &     )
      e = e  + Nc*s125 * ( 1.D0/2.D0*mi(30)*r15**(-1)*i1r15r25**2*
     &    rsq1l**2 - mi(30)*r15**(-1)*i1r15r25**2*rgl*rsq1l + 1.D0/2.D0
     &    *mi(30)*r15**(-1)*i1r15r25**2*rgl**2 - 1.D0/2.D0*mi(30)*
     &    r25**(-2)*i1r15*rsq1l**2 + mi(30)*r25**(-2)*i1r15*rgl*rsq1l
     &     - 1.D0/2.D0*mi(30)*r25**(-2)*i1r15*rgl**2 + 1.D0/2.D0*mi(30)
     &    *r25**(-2)*i1r15**2*rsq1l**2 - mi(30)*r25**(-2)*i1r15**2*rgl*
     &    rsq1l + 1.D0/2.D0*mi(30)*r25**(-2)*i1r15**2*rgl**2 + mi(30)*
     &    r25**(-1)*i1r15*rsq1l - mi(30)*r25**(-1)*i1r15**2*rsq1l + mi(
     &    30)*r25**(-1)*i1r15**2*rgl + mi(30)*r25**(-1)*i1r15**3*
     &    rsq1l**2 - 2.D0*mi(30)*r25**(-1)*i1r15**3*rgl*rsq1l + mi(30)*
     &    r25**(-1)*i1r15**3*rgl**2 + mi(30)*i1r15*i1r15r25*rsq1l - mi(
     &    30)*i1r15*i1r15r25**2*rsq1l + 1.D0/2.D0*mi(30)*i1r15*
     &    i1r15r25**2*rsq1l**2 + mi(30)*i1r15*i1r15r25**2*rgl - mi(30)*
     &    i1r15*i1r15r25**2*rgl*rsq1l + 1.D0/2.D0*mi(30)*i1r15*
     &    i1r15r25**2*rgl**2 - mi(30)*i1r15**2*i1r15r25*rsq1l + mi(30)*
     &    i1r15**2*i1r15r25*rgl )
      e = e  + Nc*s125 * ( 1.D0/2.D0*mi(30)*i1r15**2*i1r15r25**2*
     &    rsq1l**2 - mi(30)*i1r15**2*i1r15r25**2*rgl*rsq1l + 1.D0/2.D0*
     &    mi(30)*i1r15**2*i1r15r25**2*rgl**2 + mi(30)*i1r15**3*i1r15r25
     &    *rsq1l**2 - 2.D0*mi(30)*i1r15**3*i1r15r25*rgl*rsq1l + mi(30)*
     &    i1r15**3*i1r15r25*rgl**2 + 1.D0/2.D0*mi(30)*r15*i1r15r25**2
     &     - 1.D0/2.D0*mi(34)*r15**(-2)*i1r15r25*rsq1l**2 + mi(34)*
     &    r15**(-2)*i1r15r25*rgl*rsq1l - 1.D0/2.D0*mi(34)*r15**(-2)*
     &    i1r15r25*rgl**2 + 1.D0/2.D0*mi(34)*r15**(-2)*i1r15r25**2*
     &    rsq1l**2 - mi(34)*r15**(-2)*i1r15r25**2*rgl*rsq1l + 1.D0/2.D0
     &    *mi(34)*r15**(-2)*i1r15r25**2*rgl**2 + mi(34)*r15**(-1)*
     &    i1r15r25*rsq1l - mi(34)*r15**(-1)*i1r15r25**2*rsq1l + 1.D0/2.D
     &    0*mi(34)*r15**(-1)*i1r15r25**2*rsq1l**2 + mi(34)*r15**(-1)*
     &    i1r15r25**2*rgl - mi(34)*r15**(-1)*i1r15r25**2*rgl*rsq1l + 1.D
     &    0/2.D0*mi(34)*r15**(-1)*i1r15r25**2*rgl**2 + 1.D0/2.D0*mi(34)
     &    *r25**(-1)*i1r15**2*rsq1l**2 - mi(34)*r25**(-1)*i1r15**2*rgl*
     &    rsq1l )
      e = e  + Nc*s125 * ( 1.D0/2.D0*mi(34)*r25**(-1)*i1r15**2*rgl**2 - 
     &    1.D0/2.D0*mi(34)*i1r15r25 + 1.D0/2.D0*mi(34)*i1r15r25**2 + 1.D
     &    0/2.D0*mi(34)*i1r15*i1r15r25**2*rsq1l**2 - mi(34)*i1r15*
     &    i1r15r25**2*rgl*rsq1l + 1.D0/2.D0*mi(34)*i1r15*i1r15r25**2*
     &    rgl**2 + 1.D0/2.D0*mi(34)*i1r15**2*i1r15r25*rsq1l**2 - mi(34)
     &    *i1r15**2*i1r15r25*rgl*rsq1l + 1.D0/2.D0*mi(34)*i1r15**2*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(34)*r15*i1r15r25**2 - 1.D0/2.D0
     &    *mi(40)*r15**(-2)*i1r15r25**2*rsq1l**2 + mi(40)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l - 1.D0/2.D0*mi(40)*r15**(-2)*
     &    i1r15r25**2*rgl**2 + mi(40)*r15**(-1)*r25**(-1)*rsq1l**2 + 
     &    mi(40)*r15**(-1)*r25**(-1)*rgl - 2.D0*mi(40)*r15**(-1)*
     &    r25**(-1)*rgl*rsq1l + mi(40)*r15**(-1)*r25**(-1)*rgl**2 - mi(
     &    40)*r15**(-1)*i1r15r25*rsq1l**2 - mi(40)*r15**(-1)*i1r15r25*
     &    rgl + 2.D0*mi(40)*r15**(-1)*i1r15r25*rgl*rsq1l - mi(40)*
     &    r15**(-1)*i1r15r25*rgl**2 + mi(40)*r15**(-1)*i1r15r25**2*
     &    rsq1l )
      e = e  + Nc*s125 * (  - 1.D0/2.D0*mi(40)*r15**(-1)*i1r15r25**2*
     &    rsq1l**2 - mi(40)*r15**(-1)*i1r15r25**2*rgl + mi(40)*
     &    r15**(-1)*i1r15r25**2*rgl*rsq1l - 1.D0/2.D0*mi(40)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + 1.D0/2.D0*mi(40)*r25**(-2)*i1r15*
     &    rsq1l**2 - mi(40)*r25**(-2)*i1r15*rgl*rsq1l + 1.D0/2.D0*mi(40
     &    )*r25**(-2)*i1r15*rgl**2 - mi(40)*r25**(-1)*i1r15*rsq1l + mi(
     &    40)*r25**(-1)*i1r15*rsq1l**2 + mi(40)*r25**(-1)*i1r15*rgl - 2.
     &    D0*mi(40)*r25**(-1)*i1r15*rgl*rsq1l + mi(40)*r25**(-1)*i1r15*
     &    rgl**2 + mi(40)*r25**(-1)*i1r15**2*rsq1l**2 - 2.D0*mi(40)*
     &    r25**(-1)*i1r15**2*rgl*rsq1l + mi(40)*r25**(-1)*i1r15**2*
     &    rgl**2 - 1.D0/2.D0*mi(40)*i1r15r25**2 + mi(40)*i1r15*i1r15r25
     &    *rsq1l - mi(40)*i1r15*i1r15r25*rsq1l**2 - mi(40)*i1r15*
     &    i1r15r25*rgl + 2.D0*mi(40)*i1r15*i1r15r25*rgl*rsq1l - mi(40)*
     &    i1r15*i1r15r25*rgl**2 - 1.D0/2.D0*mi(40)*i1r15*i1r15r25**2*
     &    rsq1l**2 + mi(40)*i1r15*i1r15r25**2*rgl*rsq1l - 1.D0/2.D0*mi(
     &    40)*i1r15*i1r15r25**2*rgl**2 )
      e = e  + Nc*s125 * (  - mi(40)*i1r15**2*i1r15r25*rsq1l**2 + 2.D0*
     &    mi(40)*i1r15**2*i1r15r25*rgl*rsq1l - mi(40)*i1r15**2*i1r15r25
     &    *rgl**2 + 1.D0/2.D0*mi(40)*r15*i1r15r25**2 - 1.D0/2.D0*mi(42)
     &    *r15**(-2)*i1r15r25*rsq1l**2 + mi(42)*r15**(-2)*i1r15r25*rgl*
     &    rsq1l - 1.D0/2.D0*mi(42)*r15**(-2)*i1r15r25*rgl**2 + mi(42)*
     &    r15**(-2)*i1r25*rsq1l**2 - 2.D0*mi(42)*r15**(-2)*i1r25*rgl*
     &    rsq1l + mi(42)*r15**(-2)*i1r25*rgl**2 + mi(42)*r15**(-1)*
     &    r25**(-1)*rsq1l**2 + mi(42)*r15**(-1)*r25**(-1)*rgl - 2.D0*
     &    mi(42)*r15**(-1)*r25**(-1)*rgl*rsq1l + mi(42)*r15**(-1)*
     &    r25**(-1)*rgl**2 + mi(42)*r15**(-1)*i1r15r25*rsq1l - mi(42)*
     &    r15**(-1)*i1r15r25*rsq1l**2 - mi(42)*r15**(-1)*i1r15r25*rgl
     &     + 2.D0*mi(42)*r15**(-1)*i1r15r25*rgl*rsq1l - mi(42)*
     &    r15**(-1)*i1r15r25*rgl**2 - 1.D0/2.D0*mi(42)*r15**(-1)*
     &    i1r15r25**2*rsq1l**2 + mi(42)*r15**(-1)*i1r15r25**2*rgl*rsq1l
     &     - 1.D0/2.D0*mi(42)*r15**(-1)*i1r15r25**2*rgl**2 - 2.D0*mi(42
     &    )*r15**(-1)*i1r25*rsq1l )
      e = e  + Nc*s125 * ( 2.D0*mi(42)*r15**(-1)*i1r25*rsq1l**2 + 2.D0*
     &    mi(42)*r15**(-1)*i1r25*rgl - 4.D0*mi(42)*r15**(-1)*i1r25*rgl*
     &    rsq1l + 2.D0*mi(42)*r15**(-1)*i1r25*rgl**2 + 2.D0*mi(42)*
     &    r15**(-1)*i1r25**2*rsq1l**2 - 4.D0*mi(42)*r15**(-1)*i1r25**2*
     &    rgl*rsq1l + 2.D0*mi(42)*r15**(-1)*i1r25**2*rgl**2 - 1.D0/2.D0
     &    *mi(42)*r25**(-2)*i1r15**2*rsq1l**2 + mi(42)*r25**(-2)*
     &    i1r15**2*rgl*rsq1l - 1.D0/2.D0*mi(42)*r25**(-2)*i1r15**2*
     &    rgl**2 - mi(42)*r25**(-1)*i1r15*rsq1l**2 - mi(42)*r25**(-1)*
     &    i1r15*rgl + 2.D0*mi(42)*r25**(-1)*i1r15*rgl*rsq1l - mi(42)*
     &    r25**(-1)*i1r15*rgl**2 + mi(42)*r25**(-1)*i1r15**2*rsq1l - 1.D
     &    0/2.D0*mi(42)*r25**(-1)*i1r15**2*rsq1l**2 - mi(42)*r25**(-1)*
     &    i1r15**2*rgl + mi(42)*r25**(-1)*i1r15**2*rgl*rsq1l - 1.D0/2.D0
     &    *mi(42)*r25**(-1)*i1r15**2*rgl**2 - mi(42)*r25**(-1)*i1r15**3
     &    *rsq1l**2 + 2.D0*mi(42)*r25**(-1)*i1r15**3*rgl*rsq1l - mi(42)
     &    *r25**(-1)*i1r15**3*rgl**2 - 1.D0/2.D0*mi(42)*i1r15r25 - mi(
     &    42)*i1r15*i1r15r25*rsq1l**2 )
      e = e  + Nc*s125 * (  - mi(42)*i1r15*i1r15r25*rgl + 2.D0*mi(42)*
     &    i1r15*i1r15r25*rgl*rsq1l - mi(42)*i1r15*i1r15r25*rgl**2 + mi(
     &    42)*i1r15*i1r15r25**2*rsq1l - 1.D0/2.D0*mi(42)*i1r15*
     &    i1r15r25**2*rsq1l**2 - mi(42)*i1r15*i1r15r25**2*rgl + mi(42)*
     &    i1r15*i1r15r25**2*rgl*rsq1l - 1.D0/2.D0*mi(42)*i1r15*
     &    i1r15r25**2*rgl**2 + mi(42)*i1r15**2*i1r15r25*rsq1l - 1.D0/2.D
     &    0*mi(42)*i1r15**2*i1r15r25*rsq1l**2 - mi(42)*i1r15**2*
     &    i1r15r25*rgl + mi(42)*i1r15**2*i1r15r25*rgl*rsq1l - 1.D0/2.D0
     &    *mi(42)*i1r15**2*i1r15r25*rgl**2 - 1.D0/2.D0*mi(42)*i1r15**2*
     &    i1r15r25**2*rsq1l**2 + mi(42)*i1r15**2*i1r15r25**2*rgl*rsq1l
     &     - 1.D0/2.D0*mi(42)*i1r15**2*i1r15r25**2*rgl**2 - mi(42)*
     &    i1r15**3*i1r15r25*rsq1l**2 + 2.D0*mi(42)*i1r15**3*i1r15r25*
     &    rgl*rsq1l - mi(42)*i1r15**3*i1r15r25*rgl**2 - 1.D0/2.D0*mi(42
     &    )*r15*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(48)*r15**(-2)*i1r15r25*
     &    rsq1l**3 + 3.D0/2.D0*mi(48)*r15**(-2)*i1r15r25*rgl*rsq1l**2
     &     - 3.D0/2.D0*mi(48)*r15**(-2)*i1r15r25*rgl**2*rsq1l + 1.D0/2.D
     &    0*mi(48)*r15**(-2)*i1r15r25*rgl**3 + 1.D0/2.D0*mi(48)*
     &    r15**(-2)*i1r15r25**2*rsq1l**3 - 3.D0/2.D0*mi(48)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1l**2 + 3.D0/2.D0*mi(48)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1l - 1.D0/2.D0*mi(48)*r15**(-2)*
     &    i1r15r25**2*rgl**3 + 3.D0/2.D0*mi(48)*r15**(-1)*i1r15r25*
     &    rsq1l**2 - mi(48)*r15**(-1)*i1r15r25*rgl*rsq1l - 1.D0/2.D0*
     &    mi(48)*r15**(-1)*i1r15r25*rgl**2 - 3.D0/2.D0*mi(48)*r15**(-1)
     &    *i1r15r25**2*rsq1l**2 + mi(48)*r15**(-1)*i1r15r25**2*rsq1l**3
     &     + 3.D0*mi(48)*r15**(-1)*i1r15r25**2*rgl*rsq1l - 3.D0*mi(48)*
     &    r15**(-1)*i1r15r25**2*rgl*rsq1l**2 - 3.D0/2.D0*mi(48)*
     &    r15**(-1)*i1r15r25**2*rgl**2 + 3.D0*mi(48)*r15**(-1)*
     &    i1r15r25**2*rgl**2*rsq1l - mi(48)*r15**(-1)*i1r15r25**2*
     &    rgl**3 )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(48)*r25**(-2)*i1r15*
     &    rsq1l**3 + 3.D0/2.D0*mi(48)*r25**(-2)*i1r15*rgl*rsq1l**2 - 3.D
     &    0/2.D0*mi(48)*r25**(-2)*i1r15*rgl**2*rsq1l + 1.D0/2.D0*mi(48)
     &    *r25**(-2)*i1r15*rgl**3 + 1.D0/2.D0*mi(48)*r25**(-2)*i1r15**2
     &    *rsq1l**3 - 3.D0/2.D0*mi(48)*r25**(-2)*i1r15**2*rgl*rsq1l**2
     &     + 3.D0/2.D0*mi(48)*r25**(-2)*i1r15**2*rgl**2*rsq1l - 1.D0/2.D
     &    0*mi(48)*r25**(-2)*i1r15**2*rgl**3 + 3.D0/2.D0*mi(48)*
     &    r25**(-1)*i1r15*rsq1l**2 - mi(48)*r25**(-1)*i1r15*rgl*rsq1l
     &     - 1.D0/2.D0*mi(48)*r25**(-1)*i1r15*rgl**2 - 3.D0/2.D0*mi(48)
     &    *r25**(-1)*i1r15**2*rsq1l**2 + 1.D0/2.D0*mi(48)*r25**(-1)*
     &    i1r15**2*rsq1l**3 + 3.D0*mi(48)*r25**(-1)*i1r15**2*rgl*rsq1l
     &     - 3.D0/2.D0*mi(48)*r25**(-1)*i1r15**2*rgl*rsq1l**2 - 3.D0/2.D
     &    0*mi(48)*r25**(-1)*i1r15**2*rgl**2 + 3.D0/2.D0*mi(48)*
     &    r25**(-1)*i1r15**2*rgl**2*rsq1l - 1.D0/2.D0*mi(48)*r25**(-1)*
     &    i1r15**2*rgl**3 + mi(48)*r25**(-1)*i1r15**3*rsq1l**3 - 3.D0*
     &    mi(48)*r25**(-1)*i1r15**3*rgl*rsq1l**2 )
      e = e  + Nc*s125**2 * ( 3.D0*mi(48)*r25**(-1)*i1r15**3*rgl**2*
     &    rsq1l - mi(48)*r25**(-1)*i1r15**3*rgl**3 - 3.D0/2.D0*mi(48)*
     &    i1r15r25*rsq1l - 1.D0/2.D0*mi(48)*i1r15r25*rgl + 3.D0/2.D0*
     &    mi(48)*i1r15r25**2*rsq1l - 3.D0/2.D0*mi(48)*i1r15r25**2*rgl
     &     + 3.D0/2.D0*mi(48)*i1r15*i1r15r25*rsq1l**2 - mi(48)*i1r15*
     &    i1r15r25*rgl*rsq1l - 1.D0/2.D0*mi(48)*i1r15*i1r15r25*rgl**2
     &     - 3.D0/2.D0*mi(48)*i1r15*i1r15r25**2*rsq1l**2 + mi(48)*i1r15
     &    *i1r15r25**2*rsq1l**3 + 3.D0*mi(48)*i1r15*i1r15r25**2*rgl*
     &    rsq1l - 3.D0*mi(48)*i1r15*i1r15r25**2*rgl*rsq1l**2 - 3.D0/2.D0
     &    *mi(48)*i1r15*i1r15r25**2*rgl**2 + 3.D0*mi(48)*i1r15*
     &    i1r15r25**2*rgl**2*rsq1l - mi(48)*i1r15*i1r15r25**2*rgl**3 - 
     &    3.D0/2.D0*mi(48)*i1r15**2*i1r15r25*rsq1l**2 + 1.D0/2.D0*mi(48
     &    )*i1r15**2*i1r15r25*rsq1l**3 + 3.D0*mi(48)*i1r15**2*i1r15r25*
     &    rgl*rsq1l - 3.D0/2.D0*mi(48)*i1r15**2*i1r15r25*rgl*rsq1l**2
     &     - 3.D0/2.D0*mi(48)*i1r15**2*i1r15r25*rgl**2 + 3.D0/2.D0*mi(
     &    48)*i1r15**2*i1r15r25*rgl**2*rsq1l )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(48)*i1r15**2*i1r15r25*
     &    rgl**3 + 1.D0/2.D0*mi(48)*i1r15**2*i1r15r25**2*rsq1l**3 - 3.D0
     &    /2.D0*mi(48)*i1r15**2*i1r15r25**2*rgl*rsq1l**2 + 3.D0/2.D0*
     &    mi(48)*i1r15**2*i1r15r25**2*rgl**2*rsq1l - 1.D0/2.D0*mi(48)*
     &    i1r15**2*i1r15r25**2*rgl**3 + mi(48)*i1r15**3*i1r15r25*
     &    rsq1l**3 - 3.D0*mi(48)*i1r15**3*i1r15r25*rgl*rsq1l**2 + 3.D0*
     &    mi(48)*i1r15**3*i1r15r25*rgl**2*rsq1l - mi(48)*i1r15**3*
     &    i1r15r25*rgl**3 + 1.D0/2.D0*mi(48)*r15*i1r15r25 - 1.D0/2.D0*
     &    mi(48)*r15*i1r15r25**2 + 1.D0/2.D0*mi(48)*r15**2*i1r15r25**2
     &     )

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

      e =  + Nc**(-1) * (  - r15**(-1)*r25**(-1) )
      e = e  + Nc * ( r15**(-1)*r25**(-1) )

      gcoeffarr(bb0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1)*s125**(-1) * ( mi(19)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1r**(-1) + 2.D0*mi(19)*r15**(-1)*r25**(-1)*rgl*rsq1r**(-1)
     &     + mi(19)*r15**(-1)*i1r15r25*rsq1r**(-1) + 2.D0*mi(19)*
     &    r15**(-1)*i1r15r25*rgl*rsq1r**(-1) - mi(19)*r15**(-1)*
     &    i1r15r25**2*rsq1r**(-1) + 2.D0*mi(19)*r15**(-1)*i1r15r25**2*
     &    rgl*rsq1r**(-1) + mi(19)*r25**(-2)*i1r15**2*rgl*rsq1r**(-1)
     &     + mi(19)*r25**(-1)*i1r15*rsq1r**(-1) + 2.D0*mi(19)*r25**(-1)
     &    *i1r15*rgl*rsq1r**(-1) - mi(19)*r25**(-1)*i1r15**2*
     &    rsq1r**(-1) + 2.D0*mi(19)*r25**(-1)*i1r15**2*rgl*rsq1r**(-1)
     &     + 2.D0*mi(19)*r25**(-1)*i1r15**3*rgl*rsq1r**(-1) + mi(19)*
     &    i1r15*i1r15r25*rsq1r**(-1) + 2.D0*mi(19)*i1r15*i1r15r25*rgl*
     &    rsq1r**(-1) - mi(19)*i1r15*i1r15r25**2*rsq1r**(-1) + 2.D0*mi(
     &    19)*i1r15*i1r15r25**2*rgl*rsq1r**(-1) - mi(19)*i1r15**2*
     &    i1r15r25*rsq1r**(-1) + 2.D0*mi(19)*i1r15**2*i1r15r25*rgl*
     &    rsq1r**(-1) + mi(19)*i1r15**2*i1r15r25**2*rgl*rsq1r**(-1) + 2.
     &    D0*mi(19)*i1r15**3*i1r15r25*rgl*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19
     &    )*r15**(-2)*i1r15r25**2*rgl + 2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)
     &    *mi(19)*r15**(-1)*r25**(-1)*rgl + 2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*r25**(-1)*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(
     &    19)*r15**(-1)*i1r15r25 + 4.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25*rgl*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25*rgl + 2.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25**2 - 2.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25**2*rgl + 4.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2*rgl + 2.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15 + 4.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*
     &    rgl*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*
     &    rgl + 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*rgl**2*
     &    rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2 - 2.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl + 3.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) - 2.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl + 4.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2*rsq1r**(-1) - 1/(rsq1r
     &     - rgl)*mi(19)*i1r15*i1r15r25 + 4.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15*i1r15r25*rgl*rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15*i1r15r25*rgl + 2.D0/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25
     &    *rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25**2 - 2.D0/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl
     &     + 4.D0/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl**2*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25 - 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl + 
     &    3.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl
     &     + 2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**2*
     &    rsq1r**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl
     &     + 4.D0/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**2*
     &    rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25*rgl**3*rsq1r**(-1) - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**2 + 1/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**3*
     &    rsq1r**(-1) - 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25*rgl + 3.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r15**(-1)*i1r15r25*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*r15**(-1)*i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*
     &    rgl**3*rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)
     &    *r25**(-2)*i1r15*rgl**3*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl**2 + 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl**3*rsq1r**(-1) - 3.
     &    D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*rgl + 3.
     &    D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*rgl**2*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**2*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)
     &    *i1r15**2*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-1)*i1r15**2*rgl**2 + 1/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2 + 2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**3*rsq1r**(-1) - 3.
     &    D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl + 3.D
     &    0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl**2*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25**2*rgl + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*i1r15*i1r15r25**2*rgl**2 + 2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*i1r15*i1r15r25**2*rgl**3*rsq1r**(-1) - 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl + 
     &    1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2
     &    *rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25*rgl**2 + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25*rgl**3*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * ( 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(
     &    19)*i1r15**2*i1r15r25**2*rgl**3*rsq1r**(-1) - 2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**2 + 2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl**3*
     &    rsq1r**(-1) )

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(bb0,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  + Nc**(-1)*s125**(-1) * ( 2.D0*mi(17)*r15**(-1)*r25**(-1) + 
     &    mi(17)*r15**(-1)*i1r25 + mi(17)*r25**(-1)*i1r15 - 3.D0/4.D0*
     &    mi(19)*r15**(-2)*rsq1r**(-1) + mi(19)*r15**(-2)*i1r15r25*
     &    rsq1r**(-1) - mi(19)*r15**(-2)*i1r15r25*rgl*rsq1r**(-1) - 1.D0
     &    /4.D0*mi(19)*r15**(-2)*i1r15r25**2*rsq1r**(-1) + mi(19)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1r**(-1) - 2.D0*mi(19)*r15**(-1)
     &    *r25**(-1) + 2.D0*mi(19)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1r**(-1) - mi(19)*r15**(-1)*i1r25 - 3.D0/4.D0*mi(19)*
     &    r25**(-2)*rsq1r**(-1) + mi(19)*r25**(-2)*i1r15*rsq1r**(-1) - 
     &    mi(19)*r25**(-2)*i1r15*rgl*rsq1r**(-1) - 1.D0/4.D0*mi(19)*
     &    r25**(-2)*i1r15**2*rsq1r**(-1) + mi(19)*r25**(-2)*i1r15**2*
     &    rgl*rsq1r**(-1) - mi(19)*r25**(-1)*i1r15 + mi(19)*r25**(-1)*
     &    i1r15**2*rsq1r**(-1) + mi(19)*r25**(-1)*i1r15**2*rgl*
     &    rsq1r**(-1) - 1.D0/2.D0*mi(19)*r25**(-1)*i1r15**3*rsq1r**(-1)
     &     + 2.D0*mi(19)*r25**(-1)*i1r15**3*rgl*rsq1r**(-1) + 2.D0*mi(
     &    19)*i1r15*i1r15r25**2*rgl*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( mi(19)*i1r15**2*i1r15r25*
     &    rsq1r**(-1) + mi(19)*i1r15**2*i1r15r25*rgl*rsq1r**(-1) - 1.D0/
     &    4.D0*mi(19)*i1r15**2*i1r15r25**2*rsq1r**(-1) + mi(19)*
     &    i1r15**2*i1r15r25**2*rgl*rsq1r**(-1) - 1.D0/2.D0*mi(19)*
     &    i1r15**3*i1r15r25*rsq1r**(-1) + 2.D0*mi(19)*i1r15**3*i1r15r25
     &    *rgl*rsq1r**(-1) + 3.D0/4.D0/(rsq1r - rgl)*mi(19)*r15**(-2)
     &     - 3.D0/2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)*rgl*rsq1r**(-1)
     &     - 1/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25 + 3.D0/2.D0/(
     &    rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl*rsq1r**(-1) + 1/(
     &    rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl - 3.D0/2.D0/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2*rsq1r**(-1) + 1.D0/4.
     &    D0/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2 - 1/(rsq1r - 
     &    rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl + 3.D0/2.D0/(rsq1r - 
     &    rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**2*rsq1r**(-1) - 2.D0/(
     &    rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl + 3.D0/(rsq1r
     &     - rgl)*mi(19)*r15**(-1)*i1r15r25**2*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * ( 3.D0/4.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2) - 3.D0/2.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15 + 3.D0/2.
     &    D0/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl*rsq1r**(-1) + 1/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl - 3.D0/2.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-2)*i1r15*rgl**2*rsq1r**(-1) + 1.D0/4.D0/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2 - 1/(rsq1r - rgl)*mi(
     &    19)*r25**(-2)*i1r15**2*rgl + 3.D0/2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19
     &    )*r25**(-1)*i1r15**2 + 3.D0/2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl + 3.D0/2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**3 - 2.D0/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**3*rgl + 3.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*
     &    i1r15**3*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125**(-1) * (  - 2.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15*i1r15r25**2*rgl + 3.D0/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25 + 3.D0/2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25*rgl*rsq1r**(-1) - 1/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25*rgl + 3.D0/2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25*rgl**2*rsq1r**(-1) + 1.D0/4.D0/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25**2 - 1/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl + 3.D0/2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)*mi(
     &    19)*i1r15**3*i1r15r25 - 2.D0/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25*rgl + 3.D0/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*
     &    rgl**2*rsq1r**(-1) + 3.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*rgl - 3.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*rgl**2*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2*rsq1r**(-1) + 1.D0/2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**2
     &     - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    i1r15r25*rgl**3*rsq1r**(-1) - 1.D0/4.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl + 1.D0/4.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**2*
     &    rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25**2*rgl**2 + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r
     &     - rgl)*mi(19)*r15**(-2)*i1r15r25**2*rgl**3*rsq1r**(-1) - 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25**2*
     &    rgl**2 + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25**2*rgl**3*rsq1r**(-1) + 3.D0/4.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*rgl - 3.D0/4.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*rgl**2*rsq1r**(-1) - 1.D0/2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-2)*i1r15*rgl**2*rsq1r**(-1) + 1.D0/2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*rgl**2 - 1.D
     &    0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*
     &    rgl**3*rsq1r**(-1) - 1.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*r25**(-2)*i1r15**2*rgl + 1.D0/4.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2*rgl**2*rsq1r**(-1) - 1.
     &    D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15**2
     &    *rgl**2 + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15**2*rgl**3*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl + 1.D0/2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2
     &    *rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15**2*rgl**2 + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**3*rsq1r**(-1) - 1.D0/2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2*rsq1r**(-1) - 1/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**2 + 1/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**3*rgl**3*
     &    rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25**2*rgl**2 + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15*i1r15r25**2*rgl**3*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl
     &    )/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl + 1.D0/2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2*
     &    rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25*rgl**2 + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*i1r15**2*i1r15r25*rgl**3*rsq1r**(-1) - 1.D0/4.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl
     &     + 1.D0/4.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**2 )
      e = e  + Nc**(-1)*s125**(-1) * ( 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*i1r15**2*i1r15r25**2*rgl**3*rsq1r**(-1) - 1.D0/2.D
     &    0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*i1r15r25*rgl + 
     &    1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**3*
     &    i1r15r25*rgl**2*rsq1r**(-1) - 1/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15**3*i1r15r25*rgl**2 + 1/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*i1r15**3*i1r15r25*rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1) * (  - r15**(-1)*r25**(-1) - mi(21)*r15**(-2)*
     &    i1r15r25*rsq1r + mi(21)*r15**(-2)*i1r15r25*rgl + mi(21)*
     &    r15**(-2)*i1r25*rsq1r - mi(21)*r15**(-2)*i1r25*rgl - 2.D0*mi(
     &    21)*r15**(-1)*r25**(-1) + 2.D0*mi(21)*r15**(-1)*r25**(-1)*
     &    rsq1r - 2.D0*mi(21)*r15**(-1)*r25**(-1)*rgl - 2.D0*mi(21)*
     &    r15**(-1)*i1r15r25*rsq1r + 2.D0*mi(21)*r15**(-1)*i1r15r25*rgl
     &     - mi(21)*r15**(-1)*i1r25 + 2.D0*mi(21)*r15**(-1)*i1r25*rsq1r
     &     - 2.D0*mi(21)*r15**(-1)*i1r25*rgl + 2.D0*mi(21)*r15**(-1)*
     &    i1r25**2*rsq1r - 2.D0*mi(21)*r15**(-1)*i1r25**2*rgl - mi(21)*
     &    r25**(-1)*i1r15 + mi(21)*r25**(-1)*i1r15**2*rsq1r - mi(21)*
     &    r25**(-1)*i1r15**2*rgl - 2.D0*mi(21)*i1r15*i1r15r25*rsq1r + 2.
     &    D0*mi(21)*i1r15*i1r15r25*rgl - mi(21)*i1r15**2*i1r15r25*rsq1r
     &     + mi(21)*i1r15**2*i1r15r25*rgl + mi(23)*r15**(-1)*r25**(-1)
     &     + mi(25)*r15**(-1)*i1r15r25*rsq1r - mi(25)*r15**(-1)*
     &    i1r15r25*rgl + mi(25)*r25**(-1)*i1r15 - mi(25)*r25**(-1)*
     &    i1r15**2*rsq1r )
      e = e  + Nc**(-1) * ( mi(25)*r25**(-1)*i1r15**2*rgl + mi(25)*i1r15
     &    *i1r15r25*rsq1r - mi(25)*i1r15*i1r15r25*rgl + mi(25)*i1r15**2
     &    *i1r15r25*rsq1r - mi(25)*i1r15**2*i1r15r25*rgl + mi(27)*
     &    r15**(-2)*i1r15r25*rsq1r - mi(27)*r15**(-2)*i1r15r25*rgl - 
     &    mi(27)*r15**(-2)*i1r25*rsq1r + mi(27)*r15**(-2)*i1r25*rgl + 
     &    mi(27)*r15**(-1)*i1r15r25*rsq1r - mi(27)*r15**(-1)*i1r15r25*
     &    rgl + mi(27)*r15**(-1)*i1r25 - mi(27)*r15**(-1)*i1r25*rsq1r
     &     + mi(27)*r15**(-1)*i1r25*rgl - 2.D0*mi(27)*r15**(-1)*
     &    i1r25**2*rsq1r + 2.D0*mi(27)*r15**(-1)*i1r25**2*rgl + mi(27)*
     &    r25**(-1)*i1r15*rsq1r - mi(27)*r25**(-1)*i1r15*rgl + mi(27)*
     &    i1r15*i1r15r25*rsq1r - mi(27)*i1r15*i1r15r25*rgl )
      e = e  + Nc**(-1)*s125 * ( 1.D0/2.D0*mi(29)*r15**(-2) - mi(29)*
     &    r15**(-2)*rsq1r + mi(29)*r15**(-2)*rgl - 1.D0/2.D0*mi(29)*
     &    r15**(-2)*r25 - 1.D0/2.D0*mi(29)*r15**(-1) + 1.D0/2.D0*mi(29)
     &    *r25**(-2) - mi(29)*r25**(-2)*rsq1r + mi(29)*r25**(-2)*rgl - 
     &    1.D0/2.D0*mi(29)*r25**(-1) - 1.D0/2.D0*mi(29)*r15*r25**(-2)
     &     + 1.D0/2.D0*mi(33)*r15**(-1)*i1r15r25**2*rsq1r**2 - mi(33)*
     &    r15**(-1)*i1r15r25**2*rgl*rsq1r + 1.D0/2.D0*mi(33)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + mi(33)*r25**(-2)*rsq1r - mi(33)*
     &    r25**(-2)*rgl - mi(33)*r25**(-2)*i1r15*rsq1r - 1.D0/2.D0*mi(
     &    33)*r25**(-2)*i1r15*rsq1r**2 + mi(33)*r25**(-2)*i1r15*rgl + 
     &    mi(33)*r25**(-2)*i1r15*rgl*rsq1r - 1.D0/2.D0*mi(33)*r25**(-2)
     &    *i1r15*rgl**2 + 1.D0/2.D0*mi(33)*r25**(-2)*i1r15**2*rsq1r**2
     &     - mi(33)*r25**(-2)*i1r15**2*rgl*rsq1r + 1.D0/2.D0*mi(33)*
     &    r25**(-2)*i1r15**2*rgl**2 + mi(33)*r25**(-1)*i1r15*rsq1r - 
     &    mi(33)*r25**(-1)*i1r15**2*rsq1r + mi(33)*r25**(-1)*i1r15**2*
     &    rgl )
      e = e  + Nc**(-1)*s125 * ( mi(33)*r25**(-1)*i1r15**3*rsq1r**2 - 2.D
     &    0*mi(33)*r25**(-1)*i1r15**3*rgl*rsq1r + mi(33)*r25**(-1)*
     &    i1r15**3*rgl**2 + mi(33)*i1r15*i1r15r25*rsq1r + 1.D0/2.D0*mi(
     &    33)*i1r15*i1r15r25**2*rsq1r**2 - mi(33)*i1r15*i1r15r25**2*rgl
     &    *rsq1r + 1.D0/2.D0*mi(33)*i1r15*i1r15r25**2*rgl**2 - mi(33)*
     &    i1r15**2*i1r15r25*rsq1r + mi(33)*i1r15**2*i1r15r25*rgl + 1.D0/
     &    2.D0*mi(33)*i1r15**2*i1r15r25**2*rsq1r**2 - mi(33)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r + 1.D0/2.D0*mi(33)*i1r15**2*i1r15r25**2
     &    *rgl**2 + mi(33)*i1r15**3*i1r15r25*rsq1r**2 - 2.D0*mi(33)*
     &    i1r15**3*i1r15r25*rgl*rsq1r + mi(33)*i1r15**3*i1r15r25*rgl**2
     &     + 1.D0/2.D0*mi(33)*r15*r25**(-2) + mi(37)*r15**(-2)*rsq1r - 
     &    mi(37)*r15**(-2)*rgl - mi(37)*r15**(-2)*i1r15r25*rsq1r - 1.D0/
     &    2.D0*mi(37)*r15**(-2)*i1r15r25*rsq1r**2 + mi(37)*r15**(-2)*
     &    i1r15r25*rgl + mi(37)*r15**(-2)*i1r15r25*rgl*rsq1r - 1.D0/2.D0
     &    *mi(37)*r15**(-2)*i1r15r25*rgl**2 + 1.D0/2.D0*mi(37)*
     &    r15**(-2)*i1r15r25**2*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * (  - mi(37)*r15**(-2)*i1r15r25**2*rgl*
     &    rsq1r + 1.D0/2.D0*mi(37)*r15**(-2)*i1r15r25**2*rgl**2 + 1.D0/
     &    2.D0*mi(37)*r15**(-2)*r25 + mi(37)*r15**(-1)*i1r15r25*rsq1r
     &     + 1.D0/2.D0*mi(37)*r15**(-1)*i1r15r25**2*rsq1r**2 - mi(37)*
     &    r15**(-1)*i1r15r25**2*rgl*rsq1r + 1.D0/2.D0*mi(37)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + 1.D0/2.D0*mi(37)*r25**(-1)*i1r15**2*
     &    rsq1r**2 - mi(37)*r25**(-1)*i1r15**2*rgl*rsq1r + 1.D0/2.D0*
     &    mi(37)*r25**(-1)*i1r15**2*rgl**2 + 1.D0/2.D0*mi(37)*i1r15*
     &    i1r15r25**2*rsq1r**2 - mi(37)*i1r15*i1r15r25**2*rgl*rsq1r + 1.
     &    D0/2.D0*mi(37)*i1r15*i1r15r25**2*rgl**2 + 1.D0/2.D0*mi(37)*
     &    i1r15**2*i1r15r25*rsq1r**2 - mi(37)*i1r15**2*i1r15r25*rgl*
     &    rsq1r + 1.D0/2.D0*mi(37)*i1r15**2*i1r15r25*rgl**2 - mi(39)*
     &    r15**(-2)*rsq1r + mi(39)*r15**(-2)*rgl + mi(39)*r15**(-2)*
     &    i1r15r25*rsq1r + mi(39)*r15**(-2)*i1r15r25*rsq1r**2 - mi(39)*
     &    r15**(-2)*i1r15r25*rgl - 2.D0*mi(39)*r15**(-2)*i1r15r25*rgl*
     &    rsq1r )
      e = e  + Nc**(-1)*s125 * ( mi(39)*r15**(-2)*i1r15r25*rgl**2 - mi(
     &    39)*r15**(-2)*i1r15r25**2*rsq1r**2 + 2.D0*mi(39)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r - mi(39)*r15**(-2)*i1r15r25**2*rgl**2
     &     - 1.D0/2.D0*mi(39)*r15**(-2)*r25 - 1.D0/2.D0*mi(39)*
     &    r15**(-1) - 2.D0*mi(39)*r15**(-1)*i1r15r25*rgl - 2.D0*mi(39)*
     &    r15**(-1)*i1r15r25**2*rsq1r**2 + 4.D0*mi(39)*r15**(-1)*
     &    i1r15r25**2*rgl*rsq1r - 2.D0*mi(39)*r15**(-1)*i1r15r25**2*
     &    rgl**2 - mi(39)*r25**(-2)*rsq1r + mi(39)*r25**(-2)*rgl + mi(
     &    39)*r25**(-2)*i1r15*rsq1r + mi(39)*r25**(-2)*i1r15*rsq1r**2
     &     - mi(39)*r25**(-2)*i1r15*rgl - 2.D0*mi(39)*r25**(-2)*i1r15*
     &    rgl*rsq1r + mi(39)*r25**(-2)*i1r15*rgl**2 - mi(39)*r25**(-2)*
     &    i1r15**2*rsq1r**2 + 2.D0*mi(39)*r25**(-2)*i1r15**2*rgl*rsq1r
     &     - mi(39)*r25**(-2)*i1r15**2*rgl**2 - 1.D0/2.D0*mi(39)*
     &    r25**(-1) - 2.D0*mi(39)*r25**(-1)*i1r15*rgl + mi(39)*
     &    r25**(-1)*i1r15**2*rsq1r - mi(39)*r25**(-1)*i1r15**2*rsq1r**2
     &     - mi(39)*r25**(-1)*i1r15**2*rgl )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(39)*r25**(-1)*i1r15**2*rgl*
     &    rsq1r - mi(39)*r25**(-1)*i1r15**2*rgl**2 - 2.D0*mi(39)*
     &    r25**(-1)*i1r15**3*rsq1r**2 + 4.D0*mi(39)*r25**(-1)*i1r15**3*
     &    rgl*rsq1r - 2.D0*mi(39)*r25**(-1)*i1r15**3*rgl**2 - 2.D0*mi(
     &    39)*i1r15*i1r15r25*rgl - 2.D0*mi(39)*i1r15*i1r15r25**2*
     &    rsq1r**2 + 4.D0*mi(39)*i1r15*i1r15r25**2*rgl*rsq1r - 2.D0*mi(
     &    39)*i1r15*i1r15r25**2*rgl**2 + mi(39)*i1r15**2*i1r15r25*rsq1r
     &     - mi(39)*i1r15**2*i1r15r25*rsq1r**2 - mi(39)*i1r15**2*
     &    i1r15r25*rgl + 2.D0*mi(39)*i1r15**2*i1r15r25*rgl*rsq1r - mi(
     &    39)*i1r15**2*i1r15r25*rgl**2 - mi(39)*i1r15**2*i1r15r25**2*
     &    rsq1r**2 + 2.D0*mi(39)*i1r15**2*i1r15r25**2*rgl*rsq1r - mi(39
     &    )*i1r15**2*i1r15r25**2*rgl**2 - 2.D0*mi(39)*i1r15**3*i1r15r25
     &    *rsq1r**2 + 4.D0*mi(39)*i1r15**3*i1r15r25*rgl*rsq1r - 2.D0*
     &    mi(39)*i1r15**3*i1r15r25*rgl**2 - 1.D0/2.D0*mi(39)*r15*
     &    r25**(-2) + 1.D0/2.D0*mi(41)*r15**(-2)*i1r15r25**2*rsq1r**2
     &     - mi(41)*r15**(-2)*i1r15r25**2*rgl*rsq1r )
      e = e  + Nc**(-1)*s125 * ( 1.D0/2.D0*mi(41)*r15**(-2)*i1r15r25**2*
     &    rgl**2 - mi(41)*r15**(-1)*r25**(-1)*rsq1r**2 - mi(41)*
     &    r15**(-1)*r25**(-1)*rgl + 2.D0*mi(41)*r15**(-1)*r25**(-1)*rgl
     &    *rsq1r - mi(41)*r15**(-1)*r25**(-1)*rgl**2 + mi(41)*r15**(-1)
     &    *i1r15r25*rsq1r**2 + mi(41)*r15**(-1)*i1r15r25*rgl - 2.D0*mi(
     &    41)*r15**(-1)*i1r15r25*rgl*rsq1r + mi(41)*r15**(-1)*i1r15r25*
     &    rgl**2 + 1.D0/2.D0*mi(41)*r15**(-1)*i1r15r25**2*rsq1r**2 - 
     &    mi(41)*r15**(-1)*i1r15r25**2*rgl*rsq1r + 1.D0/2.D0*mi(41)*
     &    r15**(-1)*i1r15r25**2*rgl**2 - 1.D0/2.D0*mi(41)*r25**(-2) + 
     &    mi(41)*r25**(-2)*rsq1r - mi(41)*r25**(-2)*rgl - 1.D0/2.D0*mi(
     &    41)*r25**(-2)*i1r15*rsq1r**2 + mi(41)*r25**(-2)*i1r15*rgl*
     &    rsq1r - 1.D0/2.D0*mi(41)*r25**(-2)*i1r15*rgl**2 + mi(41)*
     &    r25**(-1)*i1r15*rsq1r - mi(41)*r25**(-1)*i1r15*rsq1r**2 - mi(
     &    41)*r25**(-1)*i1r15*rgl + 2.D0*mi(41)*r25**(-1)*i1r15*rgl*
     &    rsq1r - mi(41)*r25**(-1)*i1r15*rgl**2 - mi(41)*r25**(-1)*
     &    i1r15**2*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * ( 2.D0*mi(41)*r25**(-1)*i1r15**2*rgl*
     &    rsq1r - mi(41)*r25**(-1)*i1r15**2*rgl**2 - mi(41)*i1r15*
     &    i1r15r25*rsq1r + mi(41)*i1r15*i1r15r25*rsq1r**2 + mi(41)*
     &    i1r15*i1r15r25*rgl - 2.D0*mi(41)*i1r15*i1r15r25*rgl*rsq1r + 
     &    mi(41)*i1r15*i1r15r25*rgl**2 + 1.D0/2.D0*mi(41)*i1r15*
     &    i1r15r25**2*rsq1r**2 - mi(41)*i1r15*i1r15r25**2*rgl*rsq1r + 1.
     &    D0/2.D0*mi(41)*i1r15*i1r15r25**2*rgl**2 + mi(41)*i1r15**2*
     &    i1r15r25*rsq1r**2 - 2.D0*mi(41)*i1r15**2*i1r15r25*rgl*rsq1r
     &     + mi(41)*i1r15**2*i1r15r25*rgl**2 + 1.D0/2.D0*mi(41)*r15*
     &    r25**(-2) - 1.D0/2.D0*mi(43)*r15**(-2) + mi(43)*r15**(-2)*
     &    rsq1r - mi(43)*r15**(-2)*rgl + 1.D0/2.D0*mi(43)*r15**(-2)*
     &    i1r15r25*rsq1r**2 - mi(43)*r15**(-2)*i1r15r25*rgl*rsq1r + 1.D0
     &    /2.D0*mi(43)*r15**(-2)*i1r15r25*rgl**2 - mi(43)*r15**(-2)*
     &    i1r25*rsq1r**2 + 2.D0*mi(43)*r15**(-2)*i1r25*rgl*rsq1r - mi(
     &    43)*r15**(-2)*i1r25*rgl**2 + 1.D0/2.D0*mi(43)*r15**(-2)*r25
     &     - mi(43)*r15**(-1)*r25**(-1)*rsq1r**2 )
      e = e  + Nc**(-1)*s125 * (  - mi(43)*r15**(-1)*r25**(-1)*rgl + 2.D0
     &    *mi(43)*r15**(-1)*r25**(-1)*rgl*rsq1r - mi(43)*r15**(-1)*
     &    r25**(-1)*rgl**2 - mi(43)*r15**(-1)*i1r15r25*rsq1r + mi(43)*
     &    r15**(-1)*i1r15r25*rsq1r**2 + mi(43)*r15**(-1)*i1r15r25*rgl
     &     - 2.D0*mi(43)*r15**(-1)*i1r15r25*rgl*rsq1r + mi(43)*
     &    r15**(-1)*i1r15r25*rgl**2 + 1.D0/2.D0*mi(43)*r15**(-1)*
     &    i1r15r25**2*rsq1r**2 - mi(43)*r15**(-1)*i1r15r25**2*rgl*rsq1r
     &     + 1.D0/2.D0*mi(43)*r15**(-1)*i1r15r25**2*rgl**2 + 2.D0*mi(43
     &    )*r15**(-1)*i1r25*rsq1r - 2.D0*mi(43)*r15**(-1)*i1r25*
     &    rsq1r**2 - 2.D0*mi(43)*r15**(-1)*i1r25*rgl + 4.D0*mi(43)*
     &    r15**(-1)*i1r25*rgl*rsq1r - 2.D0*mi(43)*r15**(-1)*i1r25*
     &    rgl**2 - 2.D0*mi(43)*r15**(-1)*i1r25**2*rsq1r**2 + 4.D0*mi(43
     &    )*r15**(-1)*i1r25**2*rgl*rsq1r - 2.D0*mi(43)*r15**(-1)*
     &    i1r25**2*rgl**2 + 1.D0/2.D0*mi(43)*r25**(-2)*i1r15**2*
     &    rsq1r**2 - mi(43)*r25**(-2)*i1r15**2*rgl*rsq1r + 1.D0/2.D0*
     &    mi(43)*r25**(-2)*i1r15**2*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( mi(43)*r25**(-1)*i1r15*rsq1r**2 + mi(43
     &    )*r25**(-1)*i1r15*rgl - 2.D0*mi(43)*r25**(-1)*i1r15*rgl*rsq1r
     &     + mi(43)*r25**(-1)*i1r15*rgl**2 + 1.D0/2.D0*mi(43)*r25**(-1)
     &    *i1r15**2*rsq1r**2 - mi(43)*r25**(-1)*i1r15**2*rgl*rsq1r + 1.D
     &    0/2.D0*mi(43)*r25**(-1)*i1r15**2*rgl**2 + mi(43)*r25**(-1)*
     &    i1r15**3*rsq1r**2 - 2.D0*mi(43)*r25**(-1)*i1r15**3*rgl*rsq1r
     &     + mi(43)*r25**(-1)*i1r15**3*rgl**2 + mi(43)*i1r15*i1r15r25*
     &    rsq1r**2 + mi(43)*i1r15*i1r15r25*rgl - 2.D0*mi(43)*i1r15*
     &    i1r15r25*rgl*rsq1r + mi(43)*i1r15*i1r15r25*rgl**2 + 1.D0/2.D0
     &    *mi(43)*i1r15*i1r15r25**2*rsq1r**2 - mi(43)*i1r15*i1r15r25**2
     &    *rgl*rsq1r + 1.D0/2.D0*mi(43)*i1r15*i1r15r25**2*rgl**2 + 1.D0/
     &    2.D0*mi(43)*i1r15**2*i1r15r25*rsq1r**2 - mi(43)*i1r15**2*
     &    i1r15r25*rgl*rsq1r + 1.D0/2.D0*mi(43)*i1r15**2*i1r15r25*
     &    rgl**2 + 1.D0/2.D0*mi(43)*i1r15**2*i1r15r25**2*rsq1r**2 - mi(
     &    43)*i1r15**2*i1r15r25**2*rgl*rsq1r + 1.D0/2.D0*mi(43)*
     &    i1r15**2*i1r15r25**2*rgl**2 )
      e = e  + Nc**(-1)*s125 * ( mi(43)*i1r15**3*i1r15r25*rsq1r**2 - 2.D0
     &    *mi(43)*i1r15**3*i1r15r25*rgl*rsq1r + mi(43)*i1r15**3*
     &    i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 1.D0/2.D0*mi(45)*r15**(-2)*
     &    i1r15r25*rsq1r**3 + 3.D0/2.D0*mi(45)*r15**(-2)*i1r15r25*rgl*
     &    rsq1r**2 - 3.D0/2.D0*mi(45)*r15**(-2)*i1r15r25*rgl**2*rsq1r
     &     + 1.D0/2.D0*mi(45)*r15**(-2)*i1r15r25*rgl**3 + 1.D0/2.D0*mi(
     &    45)*r15**(-2)*i1r15r25**2*rsq1r**3 - 3.D0/2.D0*mi(45)*
     &    r15**(-2)*i1r15r25**2*rgl*rsq1r**2 + 3.D0/2.D0*mi(45)*
     &    r15**(-2)*i1r15r25**2*rgl**2*rsq1r - 1.D0/2.D0*mi(45)*
     &    r15**(-2)*i1r15r25**2*rgl**3 + 1.D0/2.D0*mi(45)*r15**(-1)*
     &    i1r15r25*rsq1r**2 + mi(45)*r15**(-1)*i1r15r25*rgl*rsq1r - 3.D0
     &    /2.D0*mi(45)*r15**(-1)*i1r15r25*rgl**2 + mi(45)*r15**(-1)*
     &    i1r15r25**2*rsq1r**3 - 3.D0*mi(45)*r15**(-1)*i1r15r25**2*rgl*
     &    rsq1r**2 + 3.D0*mi(45)*r15**(-1)*i1r15r25**2*rgl**2*rsq1r - 
     &    mi(45)*r15**(-1)*i1r15r25**2*rgl**3 + 3.D0/2.D0*mi(45)*
     &    r25**(-2)*rsq1r**2 - 3.D0*mi(45)*r25**(-2)*rgl*rsq1r + 3.D0/2.
     &    D0*mi(45)*r25**(-2)*rgl**2 - 3.D0/2.D0*mi(45)*r25**(-2)*i1r15
     &    *rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 1.D0/2.D0*mi(45)*r25**(-2)*i1r15*
     &    rsq1r**3 + 3.D0*mi(45)*r25**(-2)*i1r15*rgl*rsq1r + 3.D0/2.D0*
     &    mi(45)*r25**(-2)*i1r15*rgl*rsq1r**2 - 3.D0/2.D0*mi(45)*
     &    r25**(-2)*i1r15*rgl**2 - 3.D0/2.D0*mi(45)*r25**(-2)*i1r15*
     &    rgl**2*rsq1r + 1.D0/2.D0*mi(45)*r25**(-2)*i1r15*rgl**3 + 1.D0/
     &    2.D0*mi(45)*r25**(-2)*i1r15**2*rsq1r**3 - 3.D0/2.D0*mi(45)*
     &    r25**(-2)*i1r15**2*rgl*rsq1r**2 + 3.D0/2.D0*mi(45)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1r - 1.D0/2.D0*mi(45)*r25**(-2)*i1r15**2*
     &    rgl**3 - 1.D0/2.D0*mi(45)*r25**(-1)*rsq1r - 3.D0/2.D0*mi(45)*
     &    r25**(-1)*rgl + 1.D0/2.D0*mi(45)*r25**(-1)*i1r15*rsq1r**2 + 
     &    mi(45)*r25**(-1)*i1r15*rgl*rsq1r - 3.D0/2.D0*mi(45)*r25**(-1)
     &    *i1r15*rgl**2 - 3.D0/2.D0*mi(45)*r25**(-1)*i1r15**2*rsq1r**2
     &     + 1.D0/2.D0*mi(45)*r25**(-1)*i1r15**2*rsq1r**3 + 3.D0*mi(45)
     &    *r25**(-1)*i1r15**2*rgl*rsq1r - 3.D0/2.D0*mi(45)*r25**(-1)*
     &    i1r15**2*rgl*rsq1r**2 - 3.D0/2.D0*mi(45)*r25**(-1)*i1r15**2*
     &    rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( 3.D0/2.D0*mi(45)*r25**(-1)*i1r15**2*
     &    rgl**2*rsq1r - 1.D0/2.D0*mi(45)*r25**(-1)*i1r15**2*rgl**3 + 
     &    mi(45)*r25**(-1)*i1r15**3*rsq1r**3 - 3.D0*mi(45)*r25**(-1)*
     &    i1r15**3*rgl*rsq1r**2 + 3.D0*mi(45)*r25**(-1)*i1r15**3*rgl**2
     &    *rsq1r - mi(45)*r25**(-1)*i1r15**3*rgl**3 + 1.D0/2.D0*mi(45)*
     &    i1r15*i1r15r25*rsq1r**2 + mi(45)*i1r15*i1r15r25*rgl*rsq1r - 3.
     &    D0/2.D0*mi(45)*i1r15*i1r15r25*rgl**2 + mi(45)*i1r15*
     &    i1r15r25**2*rsq1r**3 - 3.D0*mi(45)*i1r15*i1r15r25**2*rgl*
     &    rsq1r**2 + 3.D0*mi(45)*i1r15*i1r15r25**2*rgl**2*rsq1r - mi(45
     &    )*i1r15*i1r15r25**2*rgl**3 - 3.D0/2.D0*mi(45)*i1r15**2*
     &    i1r15r25*rsq1r**2 + 1.D0/2.D0*mi(45)*i1r15**2*i1r15r25*
     &    rsq1r**3 + 3.D0*mi(45)*i1r15**2*i1r15r25*rgl*rsq1r - 3.D0/2.D0
     &    *mi(45)*i1r15**2*i1r15r25*rgl*rsq1r**2 - 3.D0/2.D0*mi(45)*
     &    i1r15**2*i1r15r25*rgl**2 + 3.D0/2.D0*mi(45)*i1r15**2*i1r15r25
     &    *rgl**2*rsq1r - 1.D0/2.D0*mi(45)*i1r15**2*i1r15r25*rgl**3 + 1.
     &    D0/2.D0*mi(45)*i1r15**2*i1r15r25**2*rsq1r**3 )
      e = e  + Nc**(-1)*s125**2 * (  - 3.D0/2.D0*mi(45)*i1r15**2*
     &    i1r15r25**2*rgl*rsq1r**2 + 3.D0/2.D0*mi(45)*i1r15**2*
     &    i1r15r25**2*rgl**2*rsq1r - 1.D0/2.D0*mi(45)*i1r15**2*
     &    i1r15r25**2*rgl**3 + mi(45)*i1r15**3*i1r15r25*rsq1r**3 - 3.D0
     &    *mi(45)*i1r15**3*i1r15r25*rgl*rsq1r**2 + 3.D0*mi(45)*i1r15**3
     &    *i1r15r25*rgl**2*rsq1r - mi(45)*i1r15**3*i1r15r25*rgl**3 - 1.D
     &    0/2.D0*mi(45)*r15*r25**(-2) + 3.D0/2.D0*mi(45)*r15*r25**(-2)*
     &    rsq1r - 3.D0/2.D0*mi(45)*r15*r25**(-2)*rgl + 1.D0/2.D0*mi(45)
     &    *r15*r25**(-1) + 1.D0/2.D0*mi(45)*r15**2*r25**(-2) + 3.D0/2.D0
     &    *mi(47)*r15**(-2)*rsq1r**2 - 3.D0*mi(47)*r15**(-2)*rgl*rsq1r
     &     + 3.D0/2.D0*mi(47)*r15**(-2)*rgl**2 - 3.D0/2.D0*mi(47)*
     &    r15**(-2)*i1r15r25*rsq1r**2 - 1.D0/2.D0*mi(47)*r15**(-2)*
     &    i1r15r25*rsq1r**3 + 3.D0*mi(47)*r15**(-2)*i1r15r25*rgl*rsq1r
     &     + 3.D0/2.D0*mi(47)*r15**(-2)*i1r15r25*rgl*rsq1r**2 - 3.D0/2.D
     &    0*mi(47)*r15**(-2)*i1r15r25*rgl**2 - 3.D0/2.D0*mi(47)*
     &    r15**(-2)*i1r15r25*rgl**2*rsq1r )
      e = e  + Nc**(-1)*s125**2 * ( 1.D0/2.D0*mi(47)*r15**(-2)*i1r15r25*
     &    rgl**3 + 1.D0/2.D0*mi(47)*r15**(-2)*i1r15r25**2*rsq1r**3 - 3.D
     &    0/2.D0*mi(47)*r15**(-2)*i1r15r25**2*rgl*rsq1r**2 + 3.D0/2.D0*
     &    mi(47)*r15**(-2)*i1r15r25**2*rgl**2*rsq1r - 1.D0/2.D0*mi(47)*
     &    r15**(-2)*i1r15r25**2*rgl**3 - 1.D0/2.D0*mi(47)*r15**(-2)*r25
     &     + 3.D0/2.D0*mi(47)*r15**(-2)*r25*rsq1r - 3.D0/2.D0*mi(47)*
     &    r15**(-2)*r25*rgl + 1.D0/2.D0*mi(47)*r15**(-2)*r25**2 - 1.D0/
     &    2.D0*mi(47)*r15**(-1)*rsq1r - 3.D0/2.D0*mi(47)*r15**(-1)*rgl
     &     + 1.D0/2.D0*mi(47)*r15**(-1)*i1r15r25*rsq1r**2 + mi(47)*
     &    r15**(-1)*i1r15r25*rgl*rsq1r - 3.D0/2.D0*mi(47)*r15**(-1)*
     &    i1r15r25*rgl**2 + mi(47)*r15**(-1)*i1r15r25**2*rsq1r**3 - 3.D0
     &    *mi(47)*r15**(-1)*i1r15r25**2*rgl*rsq1r**2 + 3.D0*mi(47)*
     &    r15**(-1)*i1r15r25**2*rgl**2*rsq1r - mi(47)*r15**(-1)*
     &    i1r15r25**2*rgl**3 + 1.D0/2.D0*mi(47)*r15**(-1)*r25 - 1.D0/2.D
     &    0*mi(47)*r25**(-2)*i1r15*rsq1r**3 + 3.D0/2.D0*mi(47)*
     &    r25**(-2)*i1r15*rgl*rsq1r**2 )
      e = e  + Nc**(-1)*s125**2 * (  - 3.D0/2.D0*mi(47)*r25**(-2)*i1r15*
     &    rgl**2*rsq1r + 1.D0/2.D0*mi(47)*r25**(-2)*i1r15*rgl**3 + 1.D0/
     &    2.D0*mi(47)*r25**(-2)*i1r15**2*rsq1r**3 - 3.D0/2.D0*mi(47)*
     &    r25**(-2)*i1r15**2*rgl*rsq1r**2 + 3.D0/2.D0*mi(47)*r25**(-2)*
     &    i1r15**2*rgl**2*rsq1r - 1.D0/2.D0*mi(47)*r25**(-2)*i1r15**2*
     &    rgl**3 + 1.D0/2.D0*mi(47)*r25**(-1)*i1r15*rsq1r**2 + mi(47)*
     &    r25**(-1)*i1r15*rgl*rsq1r - 3.D0/2.D0*mi(47)*r25**(-1)*i1r15*
     &    rgl**2 + 1.D0/2.D0*mi(47)*r25**(-1)*i1r15**2*rsq1r**3 - 3.D0/
     &    2.D0*mi(47)*r25**(-1)*i1r15**2*rgl*rsq1r**2 + 3.D0/2.D0*mi(47
     &    )*r25**(-1)*i1r15**2*rgl**2*rsq1r - 1.D0/2.D0*mi(47)*
     &    r25**(-1)*i1r15**2*rgl**3 + mi(47)*r25**(-1)*i1r15**3*
     &    rsq1r**3 - 3.D0*mi(47)*r25**(-1)*i1r15**3*rgl*rsq1r**2 + 3.D0
     &    *mi(47)*r25**(-1)*i1r15**3*rgl**2*rsq1r - mi(47)*r25**(-1)*
     &    i1r15**3*rgl**3 + 1.D0/2.D0*mi(47)*i1r15*i1r15r25*rsq1r**2 + 
     &    mi(47)*i1r15*i1r15r25*rgl*rsq1r - 3.D0/2.D0*mi(47)*i1r15*
     &    i1r15r25*rgl**2 )
      e = e  + Nc**(-1)*s125**2 * ( mi(47)*i1r15*i1r15r25**2*rsq1r**3 - 
     &    3.D0*mi(47)*i1r15*i1r15r25**2*rgl*rsq1r**2 + 3.D0*mi(47)*
     &    i1r15*i1r15r25**2*rgl**2*rsq1r - mi(47)*i1r15*i1r15r25**2*
     &    rgl**3 + 1.D0/2.D0*mi(47)*i1r15**2*i1r15r25*rsq1r**3 - 3.D0/2.
     &    D0*mi(47)*i1r15**2*i1r15r25*rgl*rsq1r**2 + 3.D0/2.D0*mi(47)*
     &    i1r15**2*i1r15r25*rgl**2*rsq1r - 1.D0/2.D0*mi(47)*i1r15**2*
     &    i1r15r25*rgl**3 + 1.D0/2.D0*mi(47)*i1r15**2*i1r15r25**2*
     &    rsq1r**3 - 3.D0/2.D0*mi(47)*i1r15**2*i1r15r25**2*rgl*rsq1r**2
     &     + 3.D0/2.D0*mi(47)*i1r15**2*i1r15r25**2*rgl**2*rsq1r - 1.D0/
     &    2.D0*mi(47)*i1r15**2*i1r15r25**2*rgl**3 + mi(47)*i1r15**3*
     &    i1r15r25*rsq1r**3 - 3.D0*mi(47)*i1r15**3*i1r15r25*rgl*
     &    rsq1r**2 + 3.D0*mi(47)*i1r15**3*i1r15r25*rgl**2*rsq1r - mi(47
     &    )*i1r15**3*i1r15r25*rgl**3 )
      e = e  + Nc*s125**(-1) * (  - 2.D0*mi(17)*r15**(-1)*r25**(-1) - 
     &    mi(17)*r15**(-1)*i1r25 - mi(17)*r25**(-1)*i1r15 + 2.D0*mi(19)
     &    *r15**(-1)*r25**(-1) + mi(19)*r15**(-1)*i1r25 + mi(19)*
     &    r25**(-1)*i1r15 )
      e = e  + Nc * ( r15**(-1)*r25**(-1) + mi(21)*r15**(-2)*i1r15r25*
     &    rsq1r - mi(21)*r15**(-2)*i1r15r25*rgl - mi(21)*r15**(-2)*
     &    i1r25*rsq1r + mi(21)*r15**(-2)*i1r25*rgl + mi(21)*r15**(-1)*
     &    r25**(-1) - 2.D0*mi(21)*r15**(-1)*r25**(-1)*rsq1r + 2.D0*mi(
     &    21)*r15**(-1)*r25**(-1)*rgl - mi(21)*r15**(-1)*i1r15r25 + 2.D0
     &    *mi(21)*r15**(-1)*i1r15r25*rsq1r - 2.D0*mi(21)*r15**(-1)*
     &    i1r15r25*rgl + mi(21)*r15**(-1)*i1r25 - 2.D0*mi(21)*r15**(-1)
     &    *i1r25*rsq1r + 2.D0*mi(21)*r15**(-1)*i1r25*rgl - 2.D0*mi(21)*
     &    r15**(-1)*i1r25**2*rsq1r + 2.D0*mi(21)*r15**(-1)*i1r25**2*rgl
     &     - mi(21)*r25**(-1)*i1r15**2*rsq1r + mi(21)*r25**(-1)*
     &    i1r15**2*rgl - mi(21)*i1r15*i1r15r25 + 2.D0*mi(21)*i1r15*
     &    i1r15r25*rsq1r - 2.D0*mi(21)*i1r15*i1r15r25*rgl + mi(21)*
     &    i1r15**2*i1r15r25*rsq1r - mi(21)*i1r15**2*i1r15r25*rgl - mi(
     &    25)*r15**(-1)*i1r15r25*rsq1r + mi(25)*r15**(-1)*i1r15r25*rgl
     &     + mi(25)*r25**(-1)*i1r15**2*rsq1r - mi(25)*r25**(-1)*
     &    i1r15**2*rgl )
      e = e  + Nc * ( mi(25)*i1r15*i1r15r25 - mi(25)*i1r15*i1r15r25*
     &    rsq1r + mi(25)*i1r15*i1r15r25*rgl - mi(25)*i1r15**2*i1r15r25*
     &    rsq1r + mi(25)*i1r15**2*i1r15r25*rgl - mi(27)*r15**(-2)*
     &    i1r15r25*rsq1r + mi(27)*r15**(-2)*i1r15r25*rgl + mi(27)*
     &    r15**(-2)*i1r25*rsq1r - mi(27)*r15**(-2)*i1r25*rgl + mi(27)*
     &    r15**(-1)*i1r15r25 - mi(27)*r15**(-1)*i1r15r25*rsq1r + mi(27)
     &    *r15**(-1)*i1r15r25*rgl - mi(27)*r15**(-1)*i1r25 + mi(27)*
     &    r15**(-1)*i1r25*rsq1r - mi(27)*r15**(-1)*i1r25*rgl + 2.D0*mi(
     &    27)*r15**(-1)*i1r25**2*rsq1r - 2.D0*mi(27)*r15**(-1)*i1r25**2
     &    *rgl - mi(27)*r25**(-1)*i1r15*rsq1r + mi(27)*r25**(-1)*i1r15*
     &    rgl - mi(27)*i1r15*i1r15r25*rsq1r + mi(27)*i1r15*i1r15r25*rgl
     &     )
      e = e  + Nc*s125 * ( 1.D0/2.D0*mi(31)*r15**(-1)*i1r15r25**2*
     &    rsq1r**2 - mi(31)*r15**(-1)*i1r15r25**2*rgl*rsq1r + 1.D0/2.D0
     &    *mi(31)*r15**(-1)*i1r15r25**2*rgl**2 - 1.D0/2.D0*mi(31)*
     &    r25**(-2)*i1r15*rsq1r**2 + mi(31)*r25**(-2)*i1r15*rgl*rsq1r
     &     - 1.D0/2.D0*mi(31)*r25**(-2)*i1r15*rgl**2 + 1.D0/2.D0*mi(31)
     &    *r25**(-2)*i1r15**2*rsq1r**2 - mi(31)*r25**(-2)*i1r15**2*rgl*
     &    rsq1r + 1.D0/2.D0*mi(31)*r25**(-2)*i1r15**2*rgl**2 + mi(31)*
     &    r25**(-1)*i1r15*rsq1r - mi(31)*r25**(-1)*i1r15**2*rsq1r + mi(
     &    31)*r25**(-1)*i1r15**2*rgl + mi(31)*r25**(-1)*i1r15**3*
     &    rsq1r**2 - 2.D0*mi(31)*r25**(-1)*i1r15**3*rgl*rsq1r + mi(31)*
     &    r25**(-1)*i1r15**3*rgl**2 + mi(31)*i1r15*i1r15r25*rsq1r - mi(
     &    31)*i1r15*i1r15r25**2*rsq1r + 1.D0/2.D0*mi(31)*i1r15*
     &    i1r15r25**2*rsq1r**2 + mi(31)*i1r15*i1r15r25**2*rgl - mi(31)*
     &    i1r15*i1r15r25**2*rgl*rsq1r + 1.D0/2.D0*mi(31)*i1r15*
     &    i1r15r25**2*rgl**2 - mi(31)*i1r15**2*i1r15r25*rsq1r + mi(31)*
     &    i1r15**2*i1r15r25*rgl )
      e = e  + Nc*s125 * ( 1.D0/2.D0*mi(31)*i1r15**2*i1r15r25**2*
     &    rsq1r**2 - mi(31)*i1r15**2*i1r15r25**2*rgl*rsq1r + 1.D0/2.D0*
     &    mi(31)*i1r15**2*i1r15r25**2*rgl**2 + mi(31)*i1r15**3*i1r15r25
     &    *rsq1r**2 - 2.D0*mi(31)*i1r15**3*i1r15r25*rgl*rsq1r + mi(31)*
     &    i1r15**3*i1r15r25*rgl**2 + 1.D0/2.D0*mi(31)*r15*i1r15r25**2
     &     - 1.D0/2.D0*mi(35)*r15**(-2)*i1r15r25*rsq1r**2 + mi(35)*
     &    r15**(-2)*i1r15r25*rgl*rsq1r - 1.D0/2.D0*mi(35)*r15**(-2)*
     &    i1r15r25*rgl**2 + 1.D0/2.D0*mi(35)*r15**(-2)*i1r15r25**2*
     &    rsq1r**2 - mi(35)*r15**(-2)*i1r15r25**2*rgl*rsq1r + 1.D0/2.D0
     &    *mi(35)*r15**(-2)*i1r15r25**2*rgl**2 + mi(35)*r15**(-1)*
     &    i1r15r25*rsq1r - mi(35)*r15**(-1)*i1r15r25**2*rsq1r + 1.D0/2.D
     &    0*mi(35)*r15**(-1)*i1r15r25**2*rsq1r**2 + mi(35)*r15**(-1)*
     &    i1r15r25**2*rgl - mi(35)*r15**(-1)*i1r15r25**2*rgl*rsq1r + 1.D
     &    0/2.D0*mi(35)*r15**(-1)*i1r15r25**2*rgl**2 + 1.D0/2.D0*mi(35)
     &    *r25**(-1)*i1r15**2*rsq1r**2 - mi(35)*r25**(-1)*i1r15**2*rgl*
     &    rsq1r )
      e = e  + Nc*s125 * ( 1.D0/2.D0*mi(35)*r25**(-1)*i1r15**2*rgl**2 - 
     &    1.D0/2.D0*mi(35)*i1r15r25 + 1.D0/2.D0*mi(35)*i1r15r25**2 + 1.D
     &    0/2.D0*mi(35)*i1r15*i1r15r25**2*rsq1r**2 - mi(35)*i1r15*
     &    i1r15r25**2*rgl*rsq1r + 1.D0/2.D0*mi(35)*i1r15*i1r15r25**2*
     &    rgl**2 + 1.D0/2.D0*mi(35)*i1r15**2*i1r15r25*rsq1r**2 - mi(35)
     &    *i1r15**2*i1r15r25*rgl*rsq1r + 1.D0/2.D0*mi(35)*i1r15**2*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(35)*r15*i1r15r25**2 - 1.D0/2.D0
     &    *mi(41)*r15**(-2)*i1r15r25**2*rsq1r**2 + mi(41)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r - 1.D0/2.D0*mi(41)*r15**(-2)*
     &    i1r15r25**2*rgl**2 + mi(41)*r15**(-1)*r25**(-1)*rsq1r**2 + 
     &    mi(41)*r15**(-1)*r25**(-1)*rgl - 2.D0*mi(41)*r15**(-1)*
     &    r25**(-1)*rgl*rsq1r + mi(41)*r15**(-1)*r25**(-1)*rgl**2 - mi(
     &    41)*r15**(-1)*i1r15r25*rsq1r**2 - mi(41)*r15**(-1)*i1r15r25*
     &    rgl + 2.D0*mi(41)*r15**(-1)*i1r15r25*rgl*rsq1r - mi(41)*
     &    r15**(-1)*i1r15r25*rgl**2 + mi(41)*r15**(-1)*i1r15r25**2*
     &    rsq1r )
      e = e  + Nc*s125 * (  - 1.D0/2.D0*mi(41)*r15**(-1)*i1r15r25**2*
     &    rsq1r**2 - mi(41)*r15**(-1)*i1r15r25**2*rgl + mi(41)*
     &    r15**(-1)*i1r15r25**2*rgl*rsq1r - 1.D0/2.D0*mi(41)*r15**(-1)*
     &    i1r15r25**2*rgl**2 + 1.D0/2.D0*mi(41)*r25**(-2)*i1r15*
     &    rsq1r**2 - mi(41)*r25**(-2)*i1r15*rgl*rsq1r + 1.D0/2.D0*mi(41
     &    )*r25**(-2)*i1r15*rgl**2 - mi(41)*r25**(-1)*i1r15*rsq1r + mi(
     &    41)*r25**(-1)*i1r15*rsq1r**2 + mi(41)*r25**(-1)*i1r15*rgl - 2.
     &    D0*mi(41)*r25**(-1)*i1r15*rgl*rsq1r + mi(41)*r25**(-1)*i1r15*
     &    rgl**2 + mi(41)*r25**(-1)*i1r15**2*rsq1r**2 - 2.D0*mi(41)*
     &    r25**(-1)*i1r15**2*rgl*rsq1r + mi(41)*r25**(-1)*i1r15**2*
     &    rgl**2 - 1.D0/2.D0*mi(41)*i1r15r25**2 + mi(41)*i1r15*i1r15r25
     &    *rsq1r - mi(41)*i1r15*i1r15r25*rsq1r**2 - mi(41)*i1r15*
     &    i1r15r25*rgl + 2.D0*mi(41)*i1r15*i1r15r25*rgl*rsq1r - mi(41)*
     &    i1r15*i1r15r25*rgl**2 - 1.D0/2.D0*mi(41)*i1r15*i1r15r25**2*
     &    rsq1r**2 + mi(41)*i1r15*i1r15r25**2*rgl*rsq1r - 1.D0/2.D0*mi(
     &    41)*i1r15*i1r15r25**2*rgl**2 )
      e = e  + Nc*s125 * (  - mi(41)*i1r15**2*i1r15r25*rsq1r**2 + 2.D0*
     &    mi(41)*i1r15**2*i1r15r25*rgl*rsq1r - mi(41)*i1r15**2*i1r15r25
     &    *rgl**2 + 1.D0/2.D0*mi(41)*r15*i1r15r25**2 - 1.D0/2.D0*mi(43)
     &    *r15**(-2)*i1r15r25*rsq1r**2 + mi(43)*r15**(-2)*i1r15r25*rgl*
     &    rsq1r - 1.D0/2.D0*mi(43)*r15**(-2)*i1r15r25*rgl**2 + mi(43)*
     &    r15**(-2)*i1r25*rsq1r**2 - 2.D0*mi(43)*r15**(-2)*i1r25*rgl*
     &    rsq1r + mi(43)*r15**(-2)*i1r25*rgl**2 + mi(43)*r15**(-1)*
     &    r25**(-1)*rsq1r**2 + mi(43)*r15**(-1)*r25**(-1)*rgl - 2.D0*
     &    mi(43)*r15**(-1)*r25**(-1)*rgl*rsq1r + mi(43)*r15**(-1)*
     &    r25**(-1)*rgl**2 + mi(43)*r15**(-1)*i1r15r25*rsq1r - mi(43)*
     &    r15**(-1)*i1r15r25*rsq1r**2 - mi(43)*r15**(-1)*i1r15r25*rgl
     &     + 2.D0*mi(43)*r15**(-1)*i1r15r25*rgl*rsq1r - mi(43)*
     &    r15**(-1)*i1r15r25*rgl**2 - 1.D0/2.D0*mi(43)*r15**(-1)*
     &    i1r15r25**2*rsq1r**2 + mi(43)*r15**(-1)*i1r15r25**2*rgl*rsq1r
     &     - 1.D0/2.D0*mi(43)*r15**(-1)*i1r15r25**2*rgl**2 - 2.D0*mi(43
     &    )*r15**(-1)*i1r25*rsq1r )
      e = e  + Nc*s125 * ( 2.D0*mi(43)*r15**(-1)*i1r25*rsq1r**2 + 2.D0*
     &    mi(43)*r15**(-1)*i1r25*rgl - 4.D0*mi(43)*r15**(-1)*i1r25*rgl*
     &    rsq1r + 2.D0*mi(43)*r15**(-1)*i1r25*rgl**2 + 2.D0*mi(43)*
     &    r15**(-1)*i1r25**2*rsq1r**2 - 4.D0*mi(43)*r15**(-1)*i1r25**2*
     &    rgl*rsq1r + 2.D0*mi(43)*r15**(-1)*i1r25**2*rgl**2 - 1.D0/2.D0
     &    *mi(43)*r25**(-2)*i1r15**2*rsq1r**2 + mi(43)*r25**(-2)*
     &    i1r15**2*rgl*rsq1r - 1.D0/2.D0*mi(43)*r25**(-2)*i1r15**2*
     &    rgl**2 - mi(43)*r25**(-1)*i1r15*rsq1r**2 - mi(43)*r25**(-1)*
     &    i1r15*rgl + 2.D0*mi(43)*r25**(-1)*i1r15*rgl*rsq1r - mi(43)*
     &    r25**(-1)*i1r15*rgl**2 + mi(43)*r25**(-1)*i1r15**2*rsq1r - 1.D
     &    0/2.D0*mi(43)*r25**(-1)*i1r15**2*rsq1r**2 - mi(43)*r25**(-1)*
     &    i1r15**2*rgl + mi(43)*r25**(-1)*i1r15**2*rgl*rsq1r - 1.D0/2.D0
     &    *mi(43)*r25**(-1)*i1r15**2*rgl**2 - mi(43)*r25**(-1)*i1r15**3
     &    *rsq1r**2 + 2.D0*mi(43)*r25**(-1)*i1r15**3*rgl*rsq1r - mi(43)
     &    *r25**(-1)*i1r15**3*rgl**2 - 1.D0/2.D0*mi(43)*i1r15r25 - mi(
     &    43)*i1r15*i1r15r25*rsq1r**2 )
      e = e  + Nc*s125 * (  - mi(43)*i1r15*i1r15r25*rgl + 2.D0*mi(43)*
     &    i1r15*i1r15r25*rgl*rsq1r - mi(43)*i1r15*i1r15r25*rgl**2 + mi(
     &    43)*i1r15*i1r15r25**2*rsq1r - 1.D0/2.D0*mi(43)*i1r15*
     &    i1r15r25**2*rsq1r**2 - mi(43)*i1r15*i1r15r25**2*rgl + mi(43)*
     &    i1r15*i1r15r25**2*rgl*rsq1r - 1.D0/2.D0*mi(43)*i1r15*
     &    i1r15r25**2*rgl**2 + mi(43)*i1r15**2*i1r15r25*rsq1r - 1.D0/2.D
     &    0*mi(43)*i1r15**2*i1r15r25*rsq1r**2 - mi(43)*i1r15**2*
     &    i1r15r25*rgl + mi(43)*i1r15**2*i1r15r25*rgl*rsq1r - 1.D0/2.D0
     &    *mi(43)*i1r15**2*i1r15r25*rgl**2 - 1.D0/2.D0*mi(43)*i1r15**2*
     &    i1r15r25**2*rsq1r**2 + mi(43)*i1r15**2*i1r15r25**2*rgl*rsq1r
     &     - 1.D0/2.D0*mi(43)*i1r15**2*i1r15r25**2*rgl**2 - mi(43)*
     &    i1r15**3*i1r15r25*rsq1r**2 + 2.D0*mi(43)*i1r15**3*i1r15r25*
     &    rgl*rsq1r - mi(43)*i1r15**3*i1r15r25*rgl**2 - 1.D0/2.D0*mi(43
     &    )*r15*i1r15r25**2 )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(49)*r15**(-2)*i1r15r25*
     &    rsq1r**3 + 3.D0/2.D0*mi(49)*r15**(-2)*i1r15r25*rgl*rsq1r**2
     &     - 3.D0/2.D0*mi(49)*r15**(-2)*i1r15r25*rgl**2*rsq1r + 1.D0/2.D
     &    0*mi(49)*r15**(-2)*i1r15r25*rgl**3 + 1.D0/2.D0*mi(49)*
     &    r15**(-2)*i1r15r25**2*rsq1r**3 - 3.D0/2.D0*mi(49)*r15**(-2)*
     &    i1r15r25**2*rgl*rsq1r**2 + 3.D0/2.D0*mi(49)*r15**(-2)*
     &    i1r15r25**2*rgl**2*rsq1r - 1.D0/2.D0*mi(49)*r15**(-2)*
     &    i1r15r25**2*rgl**3 + 3.D0/2.D0*mi(49)*r15**(-1)*i1r15r25*
     &    rsq1r**2 - mi(49)*r15**(-1)*i1r15r25*rgl*rsq1r - 1.D0/2.D0*
     &    mi(49)*r15**(-1)*i1r15r25*rgl**2 - 3.D0/2.D0*mi(49)*r15**(-1)
     &    *i1r15r25**2*rsq1r**2 + mi(49)*r15**(-1)*i1r15r25**2*rsq1r**3
     &     + 3.D0*mi(49)*r15**(-1)*i1r15r25**2*rgl*rsq1r - 3.D0*mi(49)*
     &    r15**(-1)*i1r15r25**2*rgl*rsq1r**2 - 3.D0/2.D0*mi(49)*
     &    r15**(-1)*i1r15r25**2*rgl**2 + 3.D0*mi(49)*r15**(-1)*
     &    i1r15r25**2*rgl**2*rsq1r - mi(49)*r15**(-1)*i1r15r25**2*
     &    rgl**3 )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(49)*r25**(-2)*i1r15*
     &    rsq1r**3 + 3.D0/2.D0*mi(49)*r25**(-2)*i1r15*rgl*rsq1r**2 - 3.D
     &    0/2.D0*mi(49)*r25**(-2)*i1r15*rgl**2*rsq1r + 1.D0/2.D0*mi(49)
     &    *r25**(-2)*i1r15*rgl**3 + 1.D0/2.D0*mi(49)*r25**(-2)*i1r15**2
     &    *rsq1r**3 - 3.D0/2.D0*mi(49)*r25**(-2)*i1r15**2*rgl*rsq1r**2
     &     + 3.D0/2.D0*mi(49)*r25**(-2)*i1r15**2*rgl**2*rsq1r - 1.D0/2.D
     &    0*mi(49)*r25**(-2)*i1r15**2*rgl**3 + 3.D0/2.D0*mi(49)*
     &    r25**(-1)*i1r15*rsq1r**2 - mi(49)*r25**(-1)*i1r15*rgl*rsq1r
     &     - 1.D0/2.D0*mi(49)*r25**(-1)*i1r15*rgl**2 - 3.D0/2.D0*mi(49)
     &    *r25**(-1)*i1r15**2*rsq1r**2 + 1.D0/2.D0*mi(49)*r25**(-1)*
     &    i1r15**2*rsq1r**3 + 3.D0*mi(49)*r25**(-1)*i1r15**2*rgl*rsq1r
     &     - 3.D0/2.D0*mi(49)*r25**(-1)*i1r15**2*rgl*rsq1r**2 - 3.D0/2.D
     &    0*mi(49)*r25**(-1)*i1r15**2*rgl**2 + 3.D0/2.D0*mi(49)*
     &    r25**(-1)*i1r15**2*rgl**2*rsq1r - 1.D0/2.D0*mi(49)*r25**(-1)*
     &    i1r15**2*rgl**3 + mi(49)*r25**(-1)*i1r15**3*rsq1r**3 - 3.D0*
     &    mi(49)*r25**(-1)*i1r15**3*rgl*rsq1r**2 )
      e = e  + Nc*s125**2 * ( 3.D0*mi(49)*r25**(-1)*i1r15**3*rgl**2*
     &    rsq1r - mi(49)*r25**(-1)*i1r15**3*rgl**3 - 3.D0/2.D0*mi(49)*
     &    i1r15r25*rsq1r - 1.D0/2.D0*mi(49)*i1r15r25*rgl + 3.D0/2.D0*
     &    mi(49)*i1r15r25**2*rsq1r - 3.D0/2.D0*mi(49)*i1r15r25**2*rgl
     &     + 3.D0/2.D0*mi(49)*i1r15*i1r15r25*rsq1r**2 - mi(49)*i1r15*
     &    i1r15r25*rgl*rsq1r - 1.D0/2.D0*mi(49)*i1r15*i1r15r25*rgl**2
     &     - 3.D0/2.D0*mi(49)*i1r15*i1r15r25**2*rsq1r**2 + mi(49)*i1r15
     &    *i1r15r25**2*rsq1r**3 + 3.D0*mi(49)*i1r15*i1r15r25**2*rgl*
     &    rsq1r - 3.D0*mi(49)*i1r15*i1r15r25**2*rgl*rsq1r**2 - 3.D0/2.D0
     &    *mi(49)*i1r15*i1r15r25**2*rgl**2 + 3.D0*mi(49)*i1r15*
     &    i1r15r25**2*rgl**2*rsq1r - mi(49)*i1r15*i1r15r25**2*rgl**3 - 
     &    3.D0/2.D0*mi(49)*i1r15**2*i1r15r25*rsq1r**2 + 1.D0/2.D0*mi(49
     &    )*i1r15**2*i1r15r25*rsq1r**3 + 3.D0*mi(49)*i1r15**2*i1r15r25*
     &    rgl*rsq1r - 3.D0/2.D0*mi(49)*i1r15**2*i1r15r25*rgl*rsq1r**2
     &     - 3.D0/2.D0*mi(49)*i1r15**2*i1r15r25*rgl**2 + 3.D0/2.D0*mi(
     &    49)*i1r15**2*i1r15r25*rgl**2*rsq1r )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(49)*i1r15**2*i1r15r25*
     &    rgl**3 + 1.D0/2.D0*mi(49)*i1r15**2*i1r15r25**2*rsq1r**3 - 3.D0
     &    /2.D0*mi(49)*i1r15**2*i1r15r25**2*rgl*rsq1r**2 + 3.D0/2.D0*
     &    mi(49)*i1r15**2*i1r15r25**2*rgl**2*rsq1r - 1.D0/2.D0*mi(49)*
     &    i1r15**2*i1r15r25**2*rgl**3 + mi(49)*i1r15**3*i1r15r25*
     &    rsq1r**3 - 3.D0*mi(49)*i1r15**3*i1r15r25*rgl*rsq1r**2 + 3.D0*
     &    mi(49)*i1r15**3*i1r15r25*rgl**2*rsq1r - mi(49)*i1r15**3*
     &    i1r15r25*rgl**3 + 1.D0/2.D0*mi(49)*r15*i1r15r25 - 1.D0/2.D0*
     &    mi(49)*r15*i1r15r25**2 + 1.D0/2.D0*mi(49)*r15**2*i1r15r25**2
     &     )

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

      e =  + Nc**(-1)*s125 * (  - 1.D0/2.D0*r15**(-1) - 1.D0/2.D0*
     &    r25**(-1) )
      e = e  + Nc*s125 * ( 1.D0/2.D0*r15**(-1) + 1.D0/2.D0*r25**(-1) )

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hepm1,hZsr) = pre * e

      e =  + Nc**(-1) * (  - mi(17)*r15**(-2) - mi(17)*r25**(-2) + mi(
     &    18)*r15**(-2) + 1.D0/2.D0*mi(18)*r15**(-2)*rgl*rsq1l**(-1) - 
     &    1.D0/2.D0*mi(18)*r15**(-2)*i1r15r25*rgl*rsq1l**(-1) - 1.D0/2.D
     &    0*mi(18)*r15**(-1)*rsq1l**(-1) + 1.D0/2.D0*mi(18)*r15**(-1)*
     &    i1r15r25*rsq1l**(-1) - mi(18)*r15**(-1)*i1r15r25*rgl*
     &    rsq1l**(-1) + mi(18)*r25**(-2) + 1.D0/2.D0*mi(18)*r25**(-2)*
     &    rgl*rsq1l**(-1) - 1.D0/2.D0*mi(18)*r25**(-2)*i1r15*rgl*
     &    rsq1l**(-1) - 1.D0/2.D0*mi(18)*r25**(-1)*rsq1l**(-1) + 1.D0/2.
     &    D0*mi(18)*r25**(-1)*i1r15*rsq1l**(-1) - mi(18)*r25**(-1)*
     &    i1r15*rgl*rsq1l**(-1) - 1.D0/2.D0*mi(18)*r25**(-1)*i1r15**2*
     &    rgl*rsq1l**(-1) + 1.D0/2.D0*mi(18)*i1r15*i1r15r25*rsq1l**(-1)
     &     - mi(18)*i1r15*i1r15r25*rgl*rsq1l**(-1) - 1.D0/2.D0*mi(18)*
     &    i1r15**2*i1r15r25*rgl*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)*
     &    mi(18)*r15**(-2)*rgl + 1/(rsq1l - rgl)*mi(18)*r15**(-2)*
     &    rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)*mi(18)*r15**(-2)
     &    *i1r15r25*rgl )
      e = e  + Nc**(-1) * (  - 1/(rsq1l - rgl)*mi(18)*r15**(-2)*i1r15r25
     &    *rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)*mi(18)*
     &    r15**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*rgl*
     &    rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)*mi(18)*r15**(-1)*
     &    i1r15r25 + 1/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl - 2.D
     &    0/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl**2*rsq1l**(-1)
     &     - 1.D0/2.D0/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl + 1/(rsq1l - 
     &    rgl)*mi(18)*r25**(-2)*rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l
     &     - rgl)*mi(18)*r25**(-2)*i1r15*rgl - 1/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl**2*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)*
     &    mi(18)*r25**(-1) - 2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*rgl*
     &    rsq1l**(-1) - 1.D0/2.D0/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15
     &     + 1/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*rgl - 2.D0/(rsq1l
     &     - rgl)*mi(18)*r25**(-1)*i1r15*rgl**2*rsq1l**(-1) + 1.D0/2.D0
     &    /(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl - 1/(rsq1l - rgl
     &    )*mi(18)*r25**(-1)*i1r15**2*rgl**2*rsq1l**(-1) )
      e = e  + Nc**(-1) * (  - 1.D0/2.D0/(rsq1l - rgl)*mi(18)*i1r15*
     &    i1r15r25 + 1/(rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl - 2.D0/(
     &    rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl**2*rsq1l**(-1) + 1.D0/
     &    2.D0/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*rgl - 1/(rsq1l - 
     &    rgl)*mi(18)*i1r15**2*i1r15r25*rgl**2*rsq1l**(-1) - 1.D0/2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*rgl**2 + 1.D0/2.
     &    D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-2)*rgl**3*
     &    rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-2)*i1r15r25*rgl**2 - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - 
     &    rgl)*mi(18)*r15**(-2)*i1r15r25*rgl**3*rsq1l**(-1) + 3.D0/2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*rgl - 3.D0/2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*rgl**2*
     &    rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25*rgl - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl
     &    )*mi(18)*r15**(-1)*i1r15r25*rgl**2*rsq1l**(-1) + 1/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r15**(-1)*i1r15r25*rgl**2 )
      e = e  + Nc**(-1) * (  - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r15**(-1)*i1r15r25*rgl**3*rsq1l**(-1) - 1.D0/2.D0/(rsq1l - 
     &    rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl**2 + 1.D0/2.D0/(rsq1l
     &     - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*rgl**3*rsq1l**(-1) + 1.
     &    D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-2)*i1r15*
     &    rgl**2 - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-2)*i1r15*rgl**3*rsq1l**(-1) + 3.D0/2.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*r25**(-1)*rgl - 3.D0/2.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*r25**(-1)*rgl**2*rsq1l**(-1) + 1.D0/2.D0
     &    /(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*rgl - 1.D0
     &    /2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15*
     &    rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    r25**(-1)*i1r15*rgl**2 - 1/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)
     &    *r25**(-1)*i1r15*rgl**3*rsq1l**(-1) + 1.D0/2.D0/(rsq1l - rgl)
     &    /(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**2 - 1.D0/2.D0/(
     &    rsq1l - rgl)/(rsq1l - rgl)*mi(18)*r25**(-1)*i1r15**2*rgl**3*
     &    rsq1l**(-1) )
      e = e  + Nc**(-1) * ( 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)
     &    *i1r15*i1r15r25*rgl - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*
     &    mi(18)*i1r15*i1r15r25*rgl**2*rsq1l**(-1) + 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl**2 - 1/(rsq1l - rgl)/(
     &    rsq1l - rgl)*mi(18)*i1r15*i1r15r25*rgl**3*rsq1l**(-1) + 1.D0/
     &    2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*i1r15**2*i1r15r25*
     &    rgl**2 - 1.D0/2.D0/(rsq1l - rgl)/(rsq1l - rgl)*mi(18)*
     &    i1r15**2*i1r15r25*rgl**3*rsq1l**(-1) )
      e = e  + Nc**(-1)*s125 * (  - 1.D0/2.D0*r15**(-1) - 1.D0/2.D0*
     &    r25**(-1) - mi(24)*r15**(-2)*rsq1l + mi(24)*r15**(-2)*rgl - 
     &    mi(26)*r25**(-2)*rsq1l + mi(26)*r25**(-2)*rgl )
      e = e  + Nc**(-1)*s125**2 * (  - mi(32)*r15**(-1)*rsq1l - mi(36)*
     &    r25**(-1)*rsq1l )
      e = e  + Nc * ( mi(17)*r15**(-2) + mi(17)*r25**(-2) - mi(18)*
     &    r15**(-2) - mi(18)*r25**(-2) )
      e = e  + Nc*s125 * (  - 1.D0/2.D0*r15**(-1) - 1.D0/2.D0*r25**(-1)
     &     + mi(24)*r15**(-2)*rsq1l - mi(24)*r15**(-2)*rgl + mi(26)*
     &    r25**(-2)*rsq1l - mi(26)*r25**(-2)*rgl )
      e = e  + Nc*s125**2 * (  - mi(30)*r15**(-1)*rgl - mi(34)*r25**(-1)
     &    *rgl )

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZfl) = pre * e

      e =  0

      gcoeffarr(dd0,hPl1,hPr2,hep0,hZfr) = pre * e

      e =  + Nc**(-1) * ( 1.D0/2.D0*mi(17)*r15**(-1) + 1.D0/2.D0*mi(17)
     &    *r25**(-1) + 1.D0/2.D0*mi(17)*i1r25 + 1.D0/2.D0*mi(17)*i1r15
     &     - 1.D0/2.D0*mi(18)*r15**(-1) - 1.D0/2.D0*mi(18)*r25**(-1) - 
     &    1.D0/2.D0*mi(18)*i1r25 - 1.D0/2.D0*mi(18)*i1r15 )
      e = e  + Nc**(-1)*s125 * (  - 1.D0/2.D0*r15**(-1) - 1.D0/2.D0*
     &    r25**(-1) - 1.D0/2.D0*mi(20)*r15**(-1) + mi(20)*r15**(-1)*
     &    rsq1l - mi(20)*r15**(-1)*rgl - 1.D0/2.D0*mi(20)*r25**(-1) + 
     &    mi(20)*r25**(-1)*rsq1l - mi(20)*r25**(-1)*rgl - 1.D0/2.D0*mi(
     &    20)*i1r25 + mi(20)*i1r25*rsq1l - mi(20)*i1r25*rgl + mi(20)*
     &    i1r25**2*rsq1l - mi(20)*i1r25**2*rgl - 1.D0/2.D0*mi(20)*i1r15
     &     + mi(20)*i1r15*rsq1l - mi(20)*i1r15*rgl + mi(20)*i1r15**2*
     &    rsq1l - mi(20)*i1r15**2*rgl - 1.D0/2.D0*mi(24)*r15**(-1)*
     &    rsq1l + 1.D0/2.D0*mi(24)*r15**(-1)*rgl + 1.D0/2.D0*mi(24)*
     &    i1r15 - 1.D0/2.D0*mi(24)*i1r15*rsq1l + 1.D0/2.D0*mi(24)*i1r15
     &    *rgl - mi(24)*i1r15**2*rsq1l + mi(24)*i1r15**2*rgl - 1.D0/2.D0
     &    *mi(26)*r25**(-1)*rsq1l + 1.D0/2.D0*mi(26)*r25**(-1)*rgl + 1.D
     &    0/2.D0*mi(26)*i1r25 - 1.D0/2.D0*mi(26)*i1r25*rsq1l + 1.D0/2.D0
     &    *mi(26)*i1r25*rgl - mi(26)*i1r25**2*rsq1l + mi(26)*i1r25**2*
     &    rgl )
      e = e  + Nc**(-1)*s125**2 * (  - mi(40)*r15**(-1)*rsq1l**2 - mi(40
     &    )*r15**(-1)*rgl + 2.D0*mi(40)*r15**(-1)*rgl*rsq1l - mi(40)*
     &    r15**(-1)*rgl**2 + mi(40)*i1r15*rsq1l - mi(40)*i1r15*rsq1l**2
     &     - mi(40)*i1r15*rgl + 2.D0*mi(40)*i1r15*rgl*rsq1l - mi(40)*
     &    i1r15*rgl**2 - mi(40)*i1r15**2*rsq1l**2 + 2.D0*mi(40)*
     &    i1r15**2*rgl*rsq1l - mi(40)*i1r15**2*rgl**2 - mi(42)*
     &    r25**(-1)*rsq1l**2 - mi(42)*r25**(-1)*rgl + 2.D0*mi(42)*
     &    r25**(-1)*rgl*rsq1l - mi(42)*r25**(-1)*rgl**2 + mi(42)*i1r25*
     &    rsq1l - mi(42)*i1r25*rsq1l**2 - mi(42)*i1r25*rgl + 2.D0*mi(42
     &    )*i1r25*rgl*rsq1l - mi(42)*i1r25*rgl**2 - mi(42)*i1r25**2*
     &    rsq1l**2 + 2.D0*mi(42)*i1r25**2*rgl*rsq1l - mi(42)*i1r25**2*
     &    rgl**2 )
      e = e  + Nc * (  - 1.D0/2.D0*mi(17)*r15**(-1) - 1.D0/2.D0*mi(17)*
     &    r25**(-1) - 1.D0/2.D0*mi(17)*i1r25 - 1.D0/2.D0*mi(17)*i1r15
     &     + 1.D0/2.D0*mi(18)*r15**(-1) + 1.D0/2.D0*mi(18)*r25**(-1) + 
     &    1.D0/2.D0*mi(18)*i1r25 + 1.D0/2.D0*mi(18)*i1r15 )
      e = e  + Nc*s125 * ( 1.D0/2.D0*r15**(-1) + 1.D0/2.D0*r25**(-1) + 1.
     &    D0/2.D0*mi(20)*r15**(-1) - mi(20)*r15**(-1)*rsq1l + mi(20)*
     &    r15**(-1)*rgl + 1.D0/2.D0*mi(20)*r25**(-1) - mi(20)*r25**(-1)
     &    *rsq1l + mi(20)*r25**(-1)*rgl + 1.D0/2.D0*mi(20)*i1r25 - mi(
     &    20)*i1r25*rsq1l + mi(20)*i1r25*rgl - mi(20)*i1r25**2*rsq1l + 
     &    mi(20)*i1r25**2*rgl + 1.D0/2.D0*mi(20)*i1r15 - mi(20)*i1r15*
     &    rsq1l + mi(20)*i1r15*rgl - mi(20)*i1r15**2*rsq1l + mi(20)*
     &    i1r15**2*rgl + 1.D0/2.D0*mi(24)*r15**(-1)*rsq1l - 1.D0/2.D0*
     &    mi(24)*r15**(-1)*rgl - 1.D0/2.D0*mi(24)*i1r15 + 1.D0/2.D0*mi(
     &    24)*i1r15*rsq1l - 1.D0/2.D0*mi(24)*i1r15*rgl + mi(24)*
     &    i1r15**2*rsq1l - mi(24)*i1r15**2*rgl + 1.D0/2.D0*mi(26)*
     &    r25**(-1)*rsq1l - 1.D0/2.D0*mi(26)*r25**(-1)*rgl - 1.D0/2.D0*
     &    mi(26)*i1r25 + 1.D0/2.D0*mi(26)*i1r25*rsq1l - 1.D0/2.D0*mi(26
     &    )*i1r25*rgl + mi(26)*i1r25**2*rsq1l - mi(26)*i1r25**2*rgl )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(30)*r25**(-1)*rsq1l + 1.D0/
     &    2.D0*mi(30)*r25**(-1)*rgl + 1.D0/2.D0*mi(30)*r25**(-1)*i1r15*
     &    rsq1l - 1.D0/2.D0*mi(30)*r25**(-1)*i1r15*rgl + 1.D0/2.D0*mi(
     &    30)*i1r15*i1r15r25*rsq1l - 1.D0/2.D0*mi(30)*i1r15*i1r15r25*
     &    rgl - 1.D0/2.D0*mi(30)*r15*i1r15r25 + 1.D0/2.D0*mi(34) - 1.D0/
     &    2.D0*mi(34)*r15**(-1)*rsq1l + 1.D0/2.D0*mi(34)*r15**(-1)*rgl
     &     + 1.D0/2.D0*mi(34)*r15**(-1)*i1r15r25*rsq1l - 1.D0/2.D0*mi(
     &    34)*r15**(-1)*i1r15r25*rgl - 1.D0/2.D0*mi(34)*i1r15r25 + 1.D0/
     &    2.D0*mi(34)*r15*i1r15r25 + mi(40)*r15**(-1)*rsq1l**2 + mi(40)
     &    *r15**(-1)*rgl - 2.D0*mi(40)*r15**(-1)*rgl*rsq1l + mi(40)*
     &    r15**(-1)*rgl**2 - 1.D0/2.D0*mi(40)*r15**(-1)*i1r15r25*rsq1l
     &     + 1.D0/2.D0*mi(40)*r15**(-1)*i1r15r25*rgl + 1.D0/2.D0*mi(40)
     &    *r25**(-1)*rsq1l - 1.D0/2.D0*mi(40)*r25**(-1)*rgl + 1.D0/2.D0
     &    *mi(40)*i1r15r25 - mi(40)*i1r15*rsq1l + mi(40)*i1r15*rsq1l**2
     &     + mi(40)*i1r15*rgl - 2.D0*mi(40)*i1r15*rgl*rsq1l + mi(40)*
     &    i1r15*rgl**2 )
      e = e  + Nc*s125**2 * ( mi(40)*i1r15**2*rsq1l**2 - 2.D0*mi(40)*
     &    i1r15**2*rgl*rsq1l + mi(40)*i1r15**2*rgl**2 - 1.D0/2.D0*mi(40
     &    )*r15*i1r15r25 + 1.D0/2.D0*mi(42) + 1.D0/2.D0*mi(42)*
     &    r15**(-1)*rsq1l - 1.D0/2.D0*mi(42)*r15**(-1)*rgl + mi(42)*
     &    r25**(-1)*rsq1l**2 + mi(42)*r25**(-1)*rgl - 2.D0*mi(42)*
     &    r25**(-1)*rgl*rsq1l + mi(42)*r25**(-1)*rgl**2 - 1.D0/2.D0*mi(
     &    42)*r25**(-1)*i1r15*rsq1l + 1.D0/2.D0*mi(42)*r25**(-1)*i1r15*
     &    rgl - mi(42)*i1r25*rsq1l + mi(42)*i1r25*rsq1l**2 + mi(42)*
     &    i1r25*rgl - 2.D0*mi(42)*i1r25*rgl*rsq1l + mi(42)*i1r25*rgl**2
     &     + mi(42)*i1r25**2*rsq1l**2 - 2.D0*mi(42)*i1r25**2*rgl*rsq1l
     &     + mi(42)*i1r25**2*rgl**2 - 1.D0/2.D0*mi(42)*i1r15*i1r15r25*
     &    rsq1l + 1.D0/2.D0*mi(42)*i1r15*i1r15r25*rgl + 1.D0/2.D0*mi(42
     &    )*r15*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(48)*r15**(-1)*rsq1l**2 + 
     &    mi(48)*r15**(-1)*rgl*rsq1l - 1.D0/2.D0*mi(48)*r15**(-1)*
     &    rgl**2 + 1.D0/2.D0*mi(48)*r15**(-1)*i1r15r25*rsq1l**2 - mi(48
     &    )*r15**(-1)*i1r15r25*rgl*rsq1l + 1.D0/2.D0*mi(48)*r15**(-1)*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(48)*r25**(-1)*rsq1l**2 + mi(48
     &    )*r25**(-1)*rgl*rsq1l - 1.D0/2.D0*mi(48)*r25**(-1)*rgl**2 + 1.
     &    D0/2.D0*mi(48)*r25**(-1)*i1r15*rsq1l**2 - mi(48)*r25**(-1)*
     &    i1r15*rgl*rsq1l + 1.D0/2.D0*mi(48)*r25**(-1)*i1r15*rgl**2 + 
     &    mi(48)*rsq1l + mi(48)*rgl - mi(48)*i1r15r25*rsq1l + mi(48)*
     &    i1r15r25*rgl + 1.D0/2.D0*mi(48)*i1r15*i1r15r25*rsq1l**2 - mi(
     &    48)*i1r15*i1r15r25*rgl*rsq1l + 1.D0/2.D0*mi(48)*i1r15*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(48)*r15 + 1.D0/2.D0*mi(48)*r15
     &    *i1r15r25 - 1.D0/2.D0*mi(48)*r15**2*i1r15r25 )

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

      e =  + Nc**(-1)*s125 * (  - 1.D0/2.D0*r15**(-1) - 1.D0/2.D0*
     &    r25**(-1) )
      e = e  + Nc*s125 * ( 1.D0/2.D0*r15**(-1) + 1.D0/2.D0*r25**(-1) )

      gcoeffarr(dd0,hPr1,hPl2,hepm1,hZsr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZfl) = pre * e

      e =  + Nc**(-1) * (  - mi(17)*r15**(-2) - mi(17)*r25**(-2) + mi(
     &    19)*r15**(-2) + 1.D0/2.D0*mi(19)*r15**(-2)*rgl*rsq1r**(-1) - 
     &    1.D0/2.D0*mi(19)*r15**(-2)*i1r15r25*rgl*rsq1r**(-1) - 1.D0/2.D
     &    0*mi(19)*r15**(-1)*rsq1r**(-1) + 1.D0/2.D0*mi(19)*r15**(-1)*
     &    i1r15r25*rsq1r**(-1) - mi(19)*r15**(-1)*i1r15r25*rgl*
     &    rsq1r**(-1) + mi(19)*r25**(-2) + 1.D0/2.D0*mi(19)*r25**(-2)*
     &    rgl*rsq1r**(-1) - 1.D0/2.D0*mi(19)*r25**(-2)*i1r15*rgl*
     &    rsq1r**(-1) - 1.D0/2.D0*mi(19)*r25**(-1)*rsq1r**(-1) + 1.D0/2.
     &    D0*mi(19)*r25**(-1)*i1r15*rsq1r**(-1) - mi(19)*r25**(-1)*
     &    i1r15*rgl*rsq1r**(-1) - 1.D0/2.D0*mi(19)*r25**(-1)*i1r15**2*
     &    rgl*rsq1r**(-1) + 1.D0/2.D0*mi(19)*i1r15*i1r15r25*rsq1r**(-1)
     &     - mi(19)*i1r15*i1r15r25*rgl*rsq1r**(-1) - 1.D0/2.D0*mi(19)*
     &    i1r15**2*i1r15r25*rgl*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)*
     &    mi(19)*r15**(-2)*rgl + 1/(rsq1r - rgl)*mi(19)*r15**(-2)*
     &    rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)*mi(19)*r15**(-2)
     &    *i1r15r25*rgl )
      e = e  + Nc**(-1) * (  - 1/(rsq1r - rgl)*mi(19)*r15**(-2)*i1r15r25
     &    *rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)*mi(19)*
     &    r15**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*rgl*
     &    rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)*mi(19)*r15**(-1)*
     &    i1r15r25 + 1/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl - 2.D
     &    0/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl**2*rsq1r**(-1)
     &     - 1.D0/2.D0/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl + 1/(rsq1r - 
     &    rgl)*mi(19)*r25**(-2)*rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r
     &     - rgl)*mi(19)*r25**(-2)*i1r15*rgl - 1/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl**2*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)*
     &    mi(19)*r25**(-1) - 2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*rgl*
     &    rsq1r**(-1) - 1.D0/2.D0/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15
     &     + 1/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*rgl - 2.D0/(rsq1r
     &     - rgl)*mi(19)*r25**(-1)*i1r15*rgl**2*rsq1r**(-1) + 1.D0/2.D0
     &    /(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl - 1/(rsq1r - rgl
     &    )*mi(19)*r25**(-1)*i1r15**2*rgl**2*rsq1r**(-1) )
      e = e  + Nc**(-1) * (  - 1.D0/2.D0/(rsq1r - rgl)*mi(19)*i1r15*
     &    i1r15r25 + 1/(rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl - 2.D0/(
     &    rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl**2*rsq1r**(-1) + 1.D0/
     &    2.D0/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*rgl - 1/(rsq1r - 
     &    rgl)*mi(19)*i1r15**2*i1r15r25*rgl**2*rsq1r**(-1) - 1.D0/2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*rgl**2 + 1.D0/2.
     &    D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-2)*rgl**3*
     &    rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-2)*i1r15r25*rgl**2 - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - 
     &    rgl)*mi(19)*r15**(-2)*i1r15r25*rgl**3*rsq1r**(-1) + 3.D0/2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*rgl - 3.D0/2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*rgl**2*
     &    rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25*rgl - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl
     &    )*mi(19)*r15**(-1)*i1r15r25*rgl**2*rsq1r**(-1) + 1/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r15**(-1)*i1r15r25*rgl**2 )
      e = e  + Nc**(-1) * (  - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r15**(-1)*i1r15r25*rgl**3*rsq1r**(-1) - 1.D0/2.D0/(rsq1r - 
     &    rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl**2 + 1.D0/2.D0/(rsq1r
     &     - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*rgl**3*rsq1r**(-1) + 1.
     &    D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-2)*i1r15*
     &    rgl**2 - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-2)*i1r15*rgl**3*rsq1r**(-1) + 3.D0/2.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*r25**(-1)*rgl - 3.D0/2.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*r25**(-1)*rgl**2*rsq1r**(-1) + 1.D0/2.D0
     &    /(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*rgl - 1.D0
     &    /2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15*
     &    rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    r25**(-1)*i1r15*rgl**2 - 1/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)
     &    *r25**(-1)*i1r15*rgl**3*rsq1r**(-1) + 1.D0/2.D0/(rsq1r - rgl)
     &    /(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**2 - 1.D0/2.D0/(
     &    rsq1r - rgl)/(rsq1r - rgl)*mi(19)*r25**(-1)*i1r15**2*rgl**3*
     &    rsq1r**(-1) )
      e = e  + Nc**(-1) * ( 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)
     &    *i1r15*i1r15r25*rgl - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*
     &    mi(19)*i1r15*i1r15r25*rgl**2*rsq1r**(-1) + 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl**2 - 1/(rsq1r - rgl)/(
     &    rsq1r - rgl)*mi(19)*i1r15*i1r15r25*rgl**3*rsq1r**(-1) + 1.D0/
     &    2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*i1r15**2*i1r15r25*
     &    rgl**2 - 1.D0/2.D0/(rsq1r - rgl)/(rsq1r - rgl)*mi(19)*
     &    i1r15**2*i1r15r25*rgl**3*rsq1r**(-1) )
      e = e  + Nc**(-1)*s125 * (  - 1.D0/2.D0*r15**(-1) - 1.D0/2.D0*
     &    r25**(-1) - mi(25)*r15**(-2)*rsq1r + mi(25)*r15**(-2)*rgl - 
     &    mi(27)*r25**(-2)*rsq1r + mi(27)*r25**(-2)*rgl )
      e = e  + Nc**(-1)*s125**2 * (  - mi(33)*r15**(-1)*rsq1r - mi(37)*
     &    r25**(-1)*rsq1r )
      e = e  + Nc * ( mi(17)*r15**(-2) + mi(17)*r25**(-2) - mi(19)*
     &    r15**(-2) - mi(19)*r25**(-2) )
      e = e  + Nc*s125 * (  - 1.D0/2.D0*r15**(-1) - 1.D0/2.D0*r25**(-1)
     &     + mi(25)*r15**(-2)*rsq1r - mi(25)*r15**(-2)*rgl + mi(27)*
     &    r25**(-2)*rsq1r - mi(27)*r25**(-2)*rgl )
      e = e  + Nc*s125**2 * (  - mi(31)*r15**(-1)*rgl - mi(35)*r25**(-1)
     &    *rgl )

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZfr) = pre * e

      e =  0

      gcoeffarr(dd0,hPr1,hPl2,hep0,hZsl) = pre * e

      e =  + Nc**(-1) * ( 1.D0/2.D0*mi(17)*r15**(-1) + 1.D0/2.D0*mi(17)
     &    *r25**(-1) + 1.D0/2.D0*mi(17)*i1r25 + 1.D0/2.D0*mi(17)*i1r15
     &     - 1.D0/2.D0*mi(19)*r15**(-1) - 1.D0/2.D0*mi(19)*r25**(-1) - 
     &    1.D0/2.D0*mi(19)*i1r25 - 1.D0/2.D0*mi(19)*i1r15 )
      e = e  + Nc**(-1)*s125 * (  - 1.D0/2.D0*r15**(-1) - 1.D0/2.D0*
     &    r25**(-1) - 1.D0/2.D0*mi(21)*r15**(-1) + mi(21)*r15**(-1)*
     &    rsq1r - mi(21)*r15**(-1)*rgl - 1.D0/2.D0*mi(21)*r25**(-1) + 
     &    mi(21)*r25**(-1)*rsq1r - mi(21)*r25**(-1)*rgl - 1.D0/2.D0*mi(
     &    21)*i1r25 + mi(21)*i1r25*rsq1r - mi(21)*i1r25*rgl + mi(21)*
     &    i1r25**2*rsq1r - mi(21)*i1r25**2*rgl - 1.D0/2.D0*mi(21)*i1r15
     &     + mi(21)*i1r15*rsq1r - mi(21)*i1r15*rgl + mi(21)*i1r15**2*
     &    rsq1r - mi(21)*i1r15**2*rgl - 1.D0/2.D0*mi(25)*r15**(-1)*
     &    rsq1r + 1.D0/2.D0*mi(25)*r15**(-1)*rgl + 1.D0/2.D0*mi(25)*
     &    i1r15 - 1.D0/2.D0*mi(25)*i1r15*rsq1r + 1.D0/2.D0*mi(25)*i1r15
     &    *rgl - mi(25)*i1r15**2*rsq1r + mi(25)*i1r15**2*rgl - 1.D0/2.D0
     &    *mi(27)*r25**(-1)*rsq1r + 1.D0/2.D0*mi(27)*r25**(-1)*rgl + 1.D
     &    0/2.D0*mi(27)*i1r25 - 1.D0/2.D0*mi(27)*i1r25*rsq1r + 1.D0/2.D0
     &    *mi(27)*i1r25*rgl - mi(27)*i1r25**2*rsq1r + mi(27)*i1r25**2*
     &    rgl )
      e = e  + Nc**(-1)*s125**2 * (  - mi(41)*r15**(-1)*rsq1r**2 - mi(41
     &    )*r15**(-1)*rgl + 2.D0*mi(41)*r15**(-1)*rgl*rsq1r - mi(41)*
     &    r15**(-1)*rgl**2 + mi(41)*i1r15*rsq1r - mi(41)*i1r15*rsq1r**2
     &     - mi(41)*i1r15*rgl + 2.D0*mi(41)*i1r15*rgl*rsq1r - mi(41)*
     &    i1r15*rgl**2 - mi(41)*i1r15**2*rsq1r**2 + 2.D0*mi(41)*
     &    i1r15**2*rgl*rsq1r - mi(41)*i1r15**2*rgl**2 - mi(43)*
     &    r25**(-1)*rsq1r**2 - mi(43)*r25**(-1)*rgl + 2.D0*mi(43)*
     &    r25**(-1)*rgl*rsq1r - mi(43)*r25**(-1)*rgl**2 + mi(43)*i1r25*
     &    rsq1r - mi(43)*i1r25*rsq1r**2 - mi(43)*i1r25*rgl + 2.D0*mi(43
     &    )*i1r25*rgl*rsq1r - mi(43)*i1r25*rgl**2 - mi(43)*i1r25**2*
     &    rsq1r**2 + 2.D0*mi(43)*i1r25**2*rgl*rsq1r - mi(43)*i1r25**2*
     &    rgl**2 )
      e = e  + Nc * (  - 1.D0/2.D0*mi(17)*r15**(-1) - 1.D0/2.D0*mi(17)*
     &    r25**(-1) - 1.D0/2.D0*mi(17)*i1r25 - 1.D0/2.D0*mi(17)*i1r15
     &     + 1.D0/2.D0*mi(19)*r15**(-1) + 1.D0/2.D0*mi(19)*r25**(-1) + 
     &    1.D0/2.D0*mi(19)*i1r25 + 1.D0/2.D0*mi(19)*i1r15 )
      e = e  + Nc*s125 * ( 1.D0/2.D0*r15**(-1) + 1.D0/2.D0*r25**(-1) + 1.
     &    D0/2.D0*mi(21)*r15**(-1) - mi(21)*r15**(-1)*rsq1r + mi(21)*
     &    r15**(-1)*rgl + 1.D0/2.D0*mi(21)*r25**(-1) - mi(21)*r25**(-1)
     &    *rsq1r + mi(21)*r25**(-1)*rgl + 1.D0/2.D0*mi(21)*i1r25 - mi(
     &    21)*i1r25*rsq1r + mi(21)*i1r25*rgl - mi(21)*i1r25**2*rsq1r + 
     &    mi(21)*i1r25**2*rgl + 1.D0/2.D0*mi(21)*i1r15 - mi(21)*i1r15*
     &    rsq1r + mi(21)*i1r15*rgl - mi(21)*i1r15**2*rsq1r + mi(21)*
     &    i1r15**2*rgl + 1.D0/2.D0*mi(25)*r15**(-1)*rsq1r - 1.D0/2.D0*
     &    mi(25)*r15**(-1)*rgl - 1.D0/2.D0*mi(25)*i1r15 + 1.D0/2.D0*mi(
     &    25)*i1r15*rsq1r - 1.D0/2.D0*mi(25)*i1r15*rgl + mi(25)*
     &    i1r15**2*rsq1r - mi(25)*i1r15**2*rgl + 1.D0/2.D0*mi(27)*
     &    r25**(-1)*rsq1r - 1.D0/2.D0*mi(27)*r25**(-1)*rgl - 1.D0/2.D0*
     &    mi(27)*i1r25 + 1.D0/2.D0*mi(27)*i1r25*rsq1r - 1.D0/2.D0*mi(27
     &    )*i1r25*rgl + mi(27)*i1r25**2*rsq1r - mi(27)*i1r25**2*rgl )
      e = e  + Nc*s125**2 * (  - 1.D0/2.D0*mi(31)*r25**(-1)*rsq1r + 1.D0/
     &    2.D0*mi(31)*r25**(-1)*rgl + 1.D0/2.D0*mi(31)*r25**(-1)*i1r15*
     &    rsq1r - 1.D0/2.D0*mi(31)*r25**(-1)*i1r15*rgl + 1.D0/2.D0*mi(
     &    31)*i1r15*i1r15r25*rsq1r - 1.D0/2.D0*mi(31)*i1r15*i1r15r25*
     &    rgl - 1.D0/2.D0*mi(31)*r15*i1r15r25 + 1.D0/2.D0*mi(35) - 1.D0/
     &    2.D0*mi(35)*r15**(-1)*rsq1r + 1.D0/2.D0*mi(35)*r15**(-1)*rgl
     &     + 1.D0/2.D0*mi(35)*r15**(-1)*i1r15r25*rsq1r - 1.D0/2.D0*mi(
     &    35)*r15**(-1)*i1r15r25*rgl - 1.D0/2.D0*mi(35)*i1r15r25 + 1.D0/
     &    2.D0*mi(35)*r15*i1r15r25 + mi(41)*r15**(-1)*rsq1r**2 + mi(41)
     &    *r15**(-1)*rgl - 2.D0*mi(41)*r15**(-1)*rgl*rsq1r + mi(41)*
     &    r15**(-1)*rgl**2 - 1.D0/2.D0*mi(41)*r15**(-1)*i1r15r25*rsq1r
     &     + 1.D0/2.D0*mi(41)*r15**(-1)*i1r15r25*rgl + 1.D0/2.D0*mi(41)
     &    *r25**(-1)*rsq1r - 1.D0/2.D0*mi(41)*r25**(-1)*rgl + 1.D0/2.D0
     &    *mi(41)*i1r15r25 - mi(41)*i1r15*rsq1r + mi(41)*i1r15*rsq1r**2
     &     + mi(41)*i1r15*rgl - 2.D0*mi(41)*i1r15*rgl*rsq1r + mi(41)*
     &    i1r15*rgl**2 )
      e = e  + Nc*s125**2 * ( mi(41)*i1r15**2*rsq1r**2 - 2.D0*mi(41)*
     &    i1r15**2*rgl*rsq1r + mi(41)*i1r15**2*rgl**2 - 1.D0/2.D0*mi(41
     &    )*r15*i1r15r25 + 1.D0/2.D0*mi(43) + 1.D0/2.D0*mi(43)*
     &    r15**(-1)*rsq1r - 1.D0/2.D0*mi(43)*r15**(-1)*rgl + mi(43)*
     &    r25**(-1)*rsq1r**2 + mi(43)*r25**(-1)*rgl - 2.D0*mi(43)*
     &    r25**(-1)*rgl*rsq1r + mi(43)*r25**(-1)*rgl**2 - 1.D0/2.D0*mi(
     &    43)*r25**(-1)*i1r15*rsq1r + 1.D0/2.D0*mi(43)*r25**(-1)*i1r15*
     &    rgl - mi(43)*i1r25*rsq1r + mi(43)*i1r25*rsq1r**2 + mi(43)*
     &    i1r25*rgl - 2.D0*mi(43)*i1r25*rgl*rsq1r + mi(43)*i1r25*rgl**2
     &     + mi(43)*i1r25**2*rsq1r**2 - 2.D0*mi(43)*i1r25**2*rgl*rsq1r
     &     + mi(43)*i1r25**2*rgl**2 - 1.D0/2.D0*mi(43)*i1r15*i1r15r25*
     &    rsq1r + 1.D0/2.D0*mi(43)*i1r15*i1r15r25*rgl + 1.D0/2.D0*mi(43
     &    )*r15*i1r15r25 )
      e = e  + Nc*s125**3 * (  - 1.D0/2.D0*mi(49)*r15**(-1)*rsq1r**2 + 
     &    mi(49)*r15**(-1)*rgl*rsq1r - 1.D0/2.D0*mi(49)*r15**(-1)*
     &    rgl**2 + 1.D0/2.D0*mi(49)*r15**(-1)*i1r15r25*rsq1r**2 - mi(49
     &    )*r15**(-1)*i1r15r25*rgl*rsq1r + 1.D0/2.D0*mi(49)*r15**(-1)*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(49)*r25**(-1)*rsq1r**2 + mi(49
     &    )*r25**(-1)*rgl*rsq1r - 1.D0/2.D0*mi(49)*r25**(-1)*rgl**2 + 1.
     &    D0/2.D0*mi(49)*r25**(-1)*i1r15*rsq1r**2 - mi(49)*r25**(-1)*
     &    i1r15*rgl*rsq1r + 1.D0/2.D0*mi(49)*r25**(-1)*i1r15*rgl**2 + 
     &    mi(49)*rsq1r + mi(49)*rgl - mi(49)*i1r15r25*rsq1r + mi(49)*
     &    i1r15r25*rgl + 1.D0/2.D0*mi(49)*i1r15*i1r15r25*rsq1r**2 - mi(
     &    49)*i1r15*i1r15r25*rgl*rsq1r + 1.D0/2.D0*mi(49)*i1r15*
     &    i1r15r25*rgl**2 - 1.D0/2.D0*mi(49)*r15 + 1.D0/2.D0*mi(49)*r15
     &    *i1r15r25 - 1.D0/2.D0*mi(49)*r15**2*i1r15r25 )

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
