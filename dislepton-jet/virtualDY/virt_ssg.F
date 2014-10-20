c     ssg production
c     generated on  Wed Apr  9 15:22:25 2014 by avm

c     input: gcoeff
c     output: res
c     returns M_B * M_V,
c     where M_B is the Born amplitude and
c     M_V is the finite part of the virtual amplitude
c     A factor (4 Pi)^eps/Gamma[1-eps] with eps=(4-d)/2 is implied.
c
      subroutine virtual_ssg(gcoeff,ep,gql,gqr)

      implicit none
#include "vars.h"
#include "gcoeff.h"
      complex*16 pre, ep(-2:0), e
      real*8 gql, gqr
      complex*16 w(1000)

      pre = 1.D0/8.D0*Na*gs*gem*r15*r25*imagunit*s125**2

      e = 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*rd**2*gql
     &  - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r5d*rd*gql
     &  - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r1d*rd*gql
     &  + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r1d*r5d*gql
     &  - 4.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*rd**2*gql + 2.D0*
     & gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*r5d*rd*gql + 6.D0*gcoeff(aa0,
     & hPl1,hPr2,-2)*r15**(-2)*r1d*rd*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,
     & -2)*r15**(-2)*r1d*r5d*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*
     & r15**(-2)*r1d**2*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-2)*rd**2*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-2)*r5d*rd*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-2)*r2d*rd*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-2)*r2d*r5d*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r2d*rd*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r2d*r5d*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r1d*rd*gql
      e  = e  + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*r5d
     & *gql + 4.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*rd*gql + 4.D0*
     & gcoeff(aa0,hPl1,hPr2,-2)*r25**(-2)*rd**2*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-2)*r25**(-2)*r5d*rd*gql - 6.D0*gcoeff(aa0,hPl1,hPr2,
     & -2)*r25**(-2)*r2d*rd*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*
     & r25**(-2)*r2d*r5d*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r25**(-2)*
     & r2d**2*gql - 4.D0*gcoeff(aa0,hPl1,hPr2,-2)*r25**(-1)*rd*gql - 16.
     & D0*gcoeff(aa0,hPl1,hPr2,-2)*e1234*r15**(-2)*r25**(-1)*rd*gql*
     & imagunit*s125**(-2) + 16.D0*gcoeff(aa0,hPl1,hPr2,-2)*e1234*
     & r15**(-2)*r25**(-1)*r1d*gql*imagunit*s125**(-2) + 16.D0*gcoeff(
     & aa0,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-2)*rd*gql*imagunit*
     & s125**(-2) - 16.D0*gcoeff(aa0,hPl1,hPr2,-2)*e1234*r15**(-1)*
     & r25**(-2)*r2d*gql*imagunit*s125**(-2) + 2.D0*gcoeff(aa0,hPr1,
     & hPl2,-2)*r15**(-2)*r25**(-1)*rd**2*gqr - 2.D0*gcoeff(aa0,hPr1,
     & hPl2,-2)*r15**(-2)*r25**(-1)*r5d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,
     & hPl2,-2)*r15**(-2)*r25**(-1)*r1d*rd*gqr
      e  = e  + 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r1d*r5d
     & *gqr - 4.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-2)*rd**2*gqr + 2.D0*
     & gcoeff(aa0,hPr1,hPl2,-2)*r15**(-2)*r5d*rd*gqr + 6.D0*gcoeff(aa0,
     & hPr1,hPl2,-2)*r15**(-2)*r1d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,
     & -2)*r15**(-2)*r1d*r5d*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*
     & r15**(-2)*r1d**2*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-2)*rd**2*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-2)*r5d*rd*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-2)*r2d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-2)*r2d*r5d*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-1)*r2d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-1)*r2d*r5d*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-1)*r1d*rd*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-1)*r1d*r5d*gqr + 4.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*
     & rd*gqr + 4.D0*gcoeff(aa0,hPr1,hPl2,-2)*r25**(-2)*rd**2*gqr - 2.D0
     & *gcoeff(aa0,hPr1,hPl2,-2)*r25**(-2)*r5d*rd*gqr
      e  = e  - 6.D0*gcoeff(aa0,hPr1,hPl2,-2)*r25**(-2)*r2d*rd*gqr + 2.D0
     & *gcoeff(aa0,hPr1,hPl2,-2)*r25**(-2)*r2d*r5d*gqr + 2.D0*gcoeff(
     & aa0,hPr1,hPl2,-2)*r25**(-2)*r2d**2*gqr - 4.D0*gcoeff(aa0,hPr1,
     & hPl2,-2)*r25**(-1)*rd*gqr + 16.D0*gcoeff(aa0,hPr1,hPl2,-2)*e1234
     & *r15**(-2)*r25**(-1)*rd*gqr*imagunit*s125**(-2) - 16.D0*gcoeff(
     & aa0,hPr1,hPl2,-2)*e1234*r15**(-2)*r25**(-1)*r1d*gqr*imagunit*
     & s125**(-2) - 16.D0*gcoeff(aa0,hPr1,hPl2,-2)*e1234*r15**(-1)*
     & r25**(-2)*rd*gqr*imagunit*s125**(-2) + 16.D0*gcoeff(aa0,hPr1,
     & hPl2,-2)*e1234*r15**(-1)*r25**(-2)*r2d*gqr*imagunit*s125**(-2)
     &  - gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*rd**2*gql*s125
     &  + gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r5d*rd*gql*s125
     &  + gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r1d*rd*gql*s125
     &  - gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r1d*r5d*gql*
     & s125 + 2.D0*gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*rd**2*
     & gql*s125 - gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d*rd*
     & gql*s125
      e  = e  - 3.D0*gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*rd
     & *gql*s125 + gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*
     & r5d*gql*s125 + gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*
     & r1d**2*gql*s125 + 3.D0*gcoeff(aa11,hPl1,hPr2,-2)*r25**(-2)*rd**2
     & *gql*s125 - 2.D0*gcoeff(aa11,hPl1,hPr2,-2)*r25**(-2)*r5d*rd*gql*
     & s125 - gcoeff(aa11,hPl1,hPr2,-2)*r25**(-2)*r2d*rd*gql*s125 - 3.D0
     & *gcoeff(aa11,hPl1,hPr2,-2)*r25**(-2)*r1d*rd*gql*s125 + 2.D0*
     & gcoeff(aa11,hPl1,hPr2,-2)*r25**(-2)*r1d*r5d*gql*s125 + gcoeff(
     & aa11,hPl1,hPr2,-2)*r25**(-2)*r1d*r2d*gql*s125 - 4.D0*gcoeff(aa11
     & ,hPl1,hPr2,-2)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa11,hPl1,hPr2,
     & -2)*r25**(-1)*r5d*rd*gql*s125 + 2.D0*gcoeff(aa11,hPl1,hPr2,-2)*
     & r25**(-1)*r2d*rd*gql*s125 + 5.D0*gcoeff(aa11,hPl1,hPr2,-2)*
     & r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa11,hPl1,hPr2,-2)*r25**(-1)*
     & r1d*r5d*gql*s125 - 2.D0*gcoeff(aa11,hPl1,hPr2,-2)*r25**(-1)*r1d*
     & r2d*gql*s125 - gcoeff(aa11,hPl1,hPr2,-2)*r25**(-1)*r1d**2*gql*
     & s125
      e  = e  - 2.D0*gcoeff(aa11,hPl1,hPr2,-2)*r15*r25**(-2)*rd**2*gql*
     & s125 + gcoeff(aa11,hPl1,hPr2,-2)*r15*r25**(-2)*r5d*rd*gql*s125
     &  + gcoeff(aa11,hPl1,hPr2,-2)*r15*r25**(-2)*r2d*rd*gql*s125 + 2.D0
     & *gcoeff(aa11,hPl1,hPr2,-2)*r15*r25**(-2)*r1d*rd*gql*s125 - 
     & gcoeff(aa11,hPl1,hPr2,-2)*r15*r25**(-2)*r1d*r5d*gql*s125 - 
     & gcoeff(aa11,hPl1,hPr2,-2)*r15*r25**(-2)*r1d*r2d*gql*s125 + 8.D0*
     & gcoeff(aa11,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-2)*rd*gql*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa11,hPl1,hPr2,-2)*e1234*
     & r15**(-1)*r25**(-2)*r1d*gql*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa11,hPl1,hPr2,-2)*e1234*r25**(-2)*rd*gql*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa11,hPl1,hPr2,-2)*e1234*r25**(-2)*r1d*gql*imagunit*
     & s125**(-1) - gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*rd**2
     & *gqr*s125 + gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r5d*rd
     & *gqr*s125 + gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r1d*rd
     & *gqr*s125 - gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r1d*
     & r5d*gqr*s125
      e  = e  + 2.D0*gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2*
     & gqr*s125 - gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd*
     & gqr*s125 - 3.D0*gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r1d*rd*gqr*s125 + gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r1d*r5d*gqr*s125 + gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)
     & *r1d**2*gqr*s125 + 3.D0*gcoeff(aa11,hPr1,hPl2,-2)*r25**(-2)*
     & rd**2*gqr*s125 - 2.D0*gcoeff(aa11,hPr1,hPl2,-2)*r25**(-2)*r5d*rd
     & *gqr*s125 - gcoeff(aa11,hPr1,hPl2,-2)*r25**(-2)*r2d*rd*gqr*s125
     &  - 3.D0*gcoeff(aa11,hPr1,hPl2,-2)*r25**(-2)*r1d*rd*gqr*s125 + 2.D
     & 0*gcoeff(aa11,hPr1,hPl2,-2)*r25**(-2)*r1d*r5d*gqr*s125 + gcoeff(
     & aa11,hPr1,hPl2,-2)*r25**(-2)*r1d*r2d*gqr*s125 - 4.D0*gcoeff(aa11
     & ,hPr1,hPl2,-2)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa11,hPr1,hPl2,
     & -2)*r25**(-1)*r5d*rd*gqr*s125 + 2.D0*gcoeff(aa11,hPr1,hPl2,-2)*
     & r25**(-1)*r2d*rd*gqr*s125 + 5.D0*gcoeff(aa11,hPr1,hPl2,-2)*
     & r25**(-1)*r1d*rd*gqr*s125 - gcoeff(aa11,hPr1,hPl2,-2)*r25**(-1)*
     & r1d*r5d*gqr*s125
      e  = e  - 2.D0*gcoeff(aa11,hPr1,hPl2,-2)*r25**(-1)*r1d*r2d*gqr*s125
     &  - gcoeff(aa11,hPr1,hPl2,-2)*r25**(-1)*r1d**2*gqr*s125 - 2.D0*
     & gcoeff(aa11,hPr1,hPl2,-2)*r15*r25**(-2)*rd**2*gqr*s125 + gcoeff(
     & aa11,hPr1,hPl2,-2)*r15*r25**(-2)*r5d*rd*gqr*s125 + gcoeff(aa11,
     & hPr1,hPl2,-2)*r15*r25**(-2)*r2d*rd*gqr*s125 + 2.D0*gcoeff(aa11,
     & hPr1,hPl2,-2)*r15*r25**(-2)*r1d*rd*gqr*s125 - gcoeff(aa11,hPr1,
     & hPl2,-2)*r15*r25**(-2)*r1d*r5d*gqr*s125 - gcoeff(aa11,hPr1,hPl2,
     & -2)*r15*r25**(-2)*r1d*r2d*gqr*s125 - 8.D0*gcoeff(aa11,hPr1,hPl2,
     & -2)*e1234*r15**(-1)*r25**(-2)*rd*gqr*imagunit*s125**(-1) + 8.D0*
     & gcoeff(aa11,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-2)*r1d*gqr*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa11,hPr1,hPl2,-2)*e1234*
     & r25**(-2)*rd*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(aa11,hPr1,
     & hPl2,-2)*e1234*r25**(-2)*r1d*gqr*imagunit*s125**(-1) - gcoeff(
     & aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*rd**2*gql*s125 + gcoeff(
     & aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r5d*rd*gql*s125 + gcoeff(
     & aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r2d*rd*gql*s125
      e  = e  - gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r2d*r5d*gql
     & *s125 + 2.D0*gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*rd**2
     & *gql*s125 - gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d*rd
     & *gql*s125 - 2.D0*gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*
     & r2d*rd*gql*s125 + gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*
     & r2d*r5d*gql*s125 - gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)
     & *r1d*rd*gql*s125 + gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)
     & *r1d*r2d*gql*s125 + 3.D0*gcoeff(aa12,hPl1,hPr2,-2)*r25**(-2)*
     & rd**2*gql*s125 - 2.D0*gcoeff(aa12,hPl1,hPr2,-2)*r25**(-2)*r5d*rd
     & *gql*s125 - 4.D0*gcoeff(aa12,hPl1,hPr2,-2)*r25**(-2)*r2d*rd*gql*
     & s125 + 2.D0*gcoeff(aa12,hPl1,hPr2,-2)*r25**(-2)*r2d*r5d*gql*s125
     &  + gcoeff(aa12,hPl1,hPr2,-2)*r25**(-2)*r2d**2*gql*s125 - 4.D0*
     & gcoeff(aa12,hPl1,hPr2,-2)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa12
     & ,hPl1,hPr2,-2)*r25**(-1)*r5d*rd*gql*s125 + 6.D0*gcoeff(aa12,hPl1
     & ,hPr2,-2)*r25**(-1)*r2d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,-2)*
     & r25**(-1)*r2d*r5d*gql*s125
      e  = e  - 2.D0*gcoeff(aa12,hPl1,hPr2,-2)*r25**(-1)*r2d**2*gql*s125
     &  + gcoeff(aa12,hPl1,hPr2,-2)*r25**(-1)*r1d*rd*gql*s125 - gcoeff(
     & aa12,hPl1,hPr2,-2)*r25**(-1)*r1d*r2d*gql*s125 - 2.D0*gcoeff(aa12
     & ,hPl1,hPr2,-2)*r15*r25**(-2)*rd**2*gql*s125 + gcoeff(aa12,hPl1,
     & hPr2,-2)*r15*r25**(-2)*r5d*rd*gql*s125 + 3.D0*gcoeff(aa12,hPl1,
     & hPr2,-2)*r15*r25**(-2)*r2d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,
     & -2)*r15*r25**(-2)*r2d*r5d*gql*s125 - gcoeff(aa12,hPl1,hPr2,-2)*
     & r15*r25**(-2)*r2d**2*gql*s125 + 8.D0*gcoeff(aa12,hPl1,hPr2,-2)*
     & e1234*r15**(-1)*r25**(-2)*rd*gql*imagunit*s125**(-1) - 8.D0*
     & gcoeff(aa12,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-2)*r2d*gql*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa12,hPl1,hPr2,-2)*e1234*
     & r25**(-2)*rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa12,hPl1,
     & hPr2,-2)*e1234*r25**(-2)*r2d*gql*imagunit*s125**(-1) - gcoeff(
     & aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*rd**2*gqr*s125 + gcoeff(
     & aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r5d*rd*gqr*s125 + gcoeff(
     & aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r2d*rd*gqr*s125
      e  = e  - gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r2d*r5d*gqr
     & *s125 + 2.D0*gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2
     & *gqr*s125 - gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd
     & *gqr*s125 - 2.D0*gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r2d*rd*gqr*s125 + gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r2d*r5d*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)
     & *r1d*rd*gqr*s125 + gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)
     & *r1d*r2d*gqr*s125 + 3.D0*gcoeff(aa12,hPr1,hPl2,-2)*r25**(-2)*
     & rd**2*gqr*s125 - 2.D0*gcoeff(aa12,hPr1,hPl2,-2)*r25**(-2)*r5d*rd
     & *gqr*s125 - 4.D0*gcoeff(aa12,hPr1,hPl2,-2)*r25**(-2)*r2d*rd*gqr*
     & s125 + 2.D0*gcoeff(aa12,hPr1,hPl2,-2)*r25**(-2)*r2d*r5d*gqr*s125
     &  + gcoeff(aa12,hPr1,hPl2,-2)*r25**(-2)*r2d**2*gqr*s125 - 4.D0*
     & gcoeff(aa12,hPr1,hPl2,-2)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa12
     & ,hPr1,hPl2,-2)*r25**(-1)*r5d*rd*gqr*s125 + 6.D0*gcoeff(aa12,hPr1
     & ,hPl2,-2)*r25**(-1)*r2d*rd*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-2)*
     & r25**(-1)*r2d*r5d*gqr*s125
      e  = e  - 2.D0*gcoeff(aa12,hPr1,hPl2,-2)*r25**(-1)*r2d**2*gqr*s125
     &  + gcoeff(aa12,hPr1,hPl2,-2)*r25**(-1)*r1d*rd*gqr*s125 - gcoeff(
     & aa12,hPr1,hPl2,-2)*r25**(-1)*r1d*r2d*gqr*s125 - 2.D0*gcoeff(aa12
     & ,hPr1,hPl2,-2)*r15*r25**(-2)*rd**2*gqr*s125 + gcoeff(aa12,hPr1,
     & hPl2,-2)*r15*r25**(-2)*r5d*rd*gqr*s125 + 3.D0*gcoeff(aa12,hPr1,
     & hPl2,-2)*r15*r25**(-2)*r2d*rd*gqr*s125 - gcoeff(aa12,hPr1,hPl2,
     & -2)*r15*r25**(-2)*r2d*r5d*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-2)*
     & r15*r25**(-2)*r2d**2*gqr*s125 - 8.D0*gcoeff(aa12,hPr1,hPl2,-2)*
     & e1234*r15**(-1)*r25**(-2)*rd*gqr*imagunit*s125**(-1) + 8.D0*
     & gcoeff(aa12,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-2)*r2d*gqr*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa12,hPr1,hPl2,-2)*e1234*
     & r25**(-2)*rd*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(aa12,hPr1,
     & hPl2,-2)*e1234*r25**(-2)*r2d*gqr*imagunit*s125**(-1) + gcoeff(
     & aa22,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*rd**2*gql*s125 - gcoeff(
     & aa22,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r5d*rd*gql*s125 - gcoeff(
     & aa22,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r2d*rd*gql*s125
      e  = e  + gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r2d*r5d*gql
     & *s125 - 3.D0*gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*rd**2*gql*s125
     &  + 2.D0*gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r5d*rd*gql*s125 + 3.D
     & 0*gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r2d*rd*gql*s125 - 2.D0*
     & gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r2d*r5d*gql*s125 + gcoeff(
     & aa22,hPl1,hPr2,-2)*r15**(-2)*r1d*rd*gql*s125 - gcoeff(aa22,hPl1,
     & hPr2,-2)*r15**(-2)*r1d*r2d*gql*s125 + 2.D0*gcoeff(aa22,hPl1,hPr2
     & ,-2)*r15**(-2)*r25*rd**2*gql*s125 - gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-2)*r25*r5d*rd*gql*s125 - 2.D0*gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-2)*r25*r2d*rd*gql*s125 + gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-2)*r25*r2d*r5d*gql*s125 - gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-2)*r25*r1d*rd*gql*s125 + gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-2)*r25*r1d*r2d*gql*s125 - 2.D0*gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + 3.D0*gcoeff(aa22,hPl1,hPr2
     & ,-2)*r15**(-1)*r25**(-1)*r2d*rd*gql*s125
      e  = e  - gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*gql
     & *s125 - gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d**2*gql
     & *s125 + 4.D0*gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*rd**2*gql*s125
     &  - gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*r5d*rd*gql*s125 - 5.D0*
     & gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*r2d*rd*gql*s125 + gcoeff(
     & aa22,hPl1,hPr2,-2)*r15**(-1)*r2d*r5d*gql*s125 + gcoeff(aa22,hPl1
     & ,hPr2,-2)*r15**(-1)*r2d**2*gql*s125 - 2.D0*gcoeff(aa22,hPl1,hPr2
     & ,-2)*r15**(-1)*r1d*rd*gql*s125 + 2.D0*gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-1)*r1d*r2d*gql*s125 - 8.D0*gcoeff(aa22,hPl1,hPr2,-2)*
     & e1234*r15**(-2)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 8.D0*
     & gcoeff(aa22,hPl1,hPr2,-2)*e1234*r15**(-2)*r25**(-1)*r2d*gql*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa22,hPl1,hPr2,-2)*e1234*
     & r15**(-2)*rd*gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa22,hPl1,
     & hPr2,-2)*e1234*r15**(-2)*r2d*gql*imagunit*s125**(-1) + gcoeff(
     & aa22,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*rd**2*gqr*s125 - gcoeff(
     & aa22,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r5d*rd*gqr*s125
      e  = e  - gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r2d*rd*gqr*
     & s125 + gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r2d*r5d*gqr
     & *s125 - 3.D0*gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*rd**2*gqr*s125
     &  + 2.D0*gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*r5d*rd*gqr*s125 + 3.D
     & 0*gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*r2d*rd*gqr*s125 - 2.D0*
     & gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*r2d*r5d*gqr*s125 + gcoeff(
     & aa22,hPr1,hPl2,-2)*r15**(-2)*r1d*rd*gqr*s125 - gcoeff(aa22,hPr1,
     & hPl2,-2)*r15**(-2)*r1d*r2d*gqr*s125 + 2.D0*gcoeff(aa22,hPr1,hPl2
     & ,-2)*r15**(-2)*r25*rd**2*gqr*s125 - gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r5d*rd*gqr*s125 - 2.D0*gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r2d*rd*gqr*s125 + gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r2d*r5d*gqr*s125 - gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r1d*rd*gqr*s125 + gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r1d*r2d*gqr*s125 - 2.D0*gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
      e  = e  + 3.D0*gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*rd
     & *gqr*s125 - gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*
     & r5d*gqr*s125 - gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r2d**2*gqr*s125 + 4.D0*gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*rd**2
     & *gqr*s125 - gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r5d*rd*gqr*s125
     &  - 5.D0*gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r2d*rd*gqr*s125 + 
     & gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r2d*r5d*gqr*s125 + gcoeff(
     & aa22,hPr1,hPl2,-2)*r15**(-1)*r2d**2*gqr*s125 - 2.D0*gcoeff(aa22,
     & hPr1,hPl2,-2)*r15**(-1)*r1d*rd*gqr*s125 + 2.D0*gcoeff(aa22,hPr1,
     & hPl2,-2)*r15**(-1)*r1d*r2d*gqr*s125 + 8.D0*gcoeff(aa22,hPr1,hPl2
     & ,-2)*e1234*r15**(-2)*r25**(-1)*rd*gqr*imagunit*s125**(-1) - 8.D0
     & *gcoeff(aa22,hPr1,hPl2,-2)*e1234*r15**(-2)*r25**(-1)*r2d*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa22,hPr1,hPl2,-2)*e1234*
     & r15**(-2)*rd*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(aa22,hPr1,
     & hPl2,-2)*e1234*r15**(-2)*r2d*gqr*imagunit*s125**(-1) + gcoeff(
     & aa21,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*rd**2*gql*s125
      e  = e  - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r5d*rd*gql*
     & s125 - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r1d*rd*gql*
     & s125 + gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r1d*r5d*gql
     & *s125 - 3.D0*gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*rd**2*gql*s125
     &  + 2.D0*gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r5d*rd*gql*s125 + 4.D
     & 0*gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r1d*rd*gql*s125 - 2.D0*
     & gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r1d*r5d*gql*s125 - gcoeff(
     & aa21,hPl1,hPr2,-2)*r15**(-2)*r1d**2*gql*s125 + 2.D0*gcoeff(aa21,
     & hPl1,hPr2,-2)*r15**(-2)*r25*rd**2*gql*s125 - gcoeff(aa21,hPl1,
     & hPr2,-2)*r15**(-2)*r25*r5d*rd*gql*s125 - 3.D0*gcoeff(aa21,hPl1,
     & hPr2,-2)*r15**(-2)*r25*r1d*rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,
     & -2)*r15**(-2)*r25*r1d*r5d*gql*s125 + gcoeff(aa21,hPl1,hPr2,-2)*
     & r15**(-2)*r25*r1d**2*gql*s125 - 2.D0*gcoeff(aa21,hPl1,hPr2,-2)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa21,hPl1,hPr2,-2)*
     & r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,-2)*
     & r15**(-1)*r25**(-1)*r2d*rd*gql*s125
      e  = e  + 2.D0*gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*rd
     & *gql*s125 - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*
     & r5d*gql*s125 - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d
     & *r2d*gql*s125 + 4.D0*gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*rd**2*
     & gql*s125 - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r5d*rd*gql*s125
     &  - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r2d*rd*gql*s125 - 6.D0*
     & gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r1d*rd*gql*s125 + gcoeff(
     & aa21,hPl1,hPr2,-2)*r15**(-1)*r1d*r5d*gql*s125 + gcoeff(aa21,hPl1
     & ,hPr2,-2)*r15**(-1)*r1d*r2d*gql*s125 + 2.D0*gcoeff(aa21,hPl1,
     & hPr2,-2)*r15**(-1)*r1d**2*gql*s125 - 8.D0*gcoeff(aa21,hPl1,hPr2,
     & -2)*e1234*r15**(-2)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 8.D0*
     & gcoeff(aa21,hPl1,hPr2,-2)*e1234*r15**(-2)*r25**(-1)*r1d*gql*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa21,hPl1,hPr2,-2)*e1234*
     & r15**(-2)*rd*gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa21,hPl1,
     & hPr2,-2)*e1234*r15**(-2)*r1d*gql*imagunit*s125**(-1) + gcoeff(
     & aa21,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*rd**2*gqr*s125
      e  = e  - gcoeff(aa21,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r5d*rd*gqr*
     & s125 - gcoeff(aa21,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r1d*rd*gqr*
     & s125 + gcoeff(aa21,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r1d*r5d*gqr
     & *s125 - 3.D0*gcoeff(aa21,hPr1,hPl2,-2)*r15**(-2)*rd**2*gqr*s125
     &  + 2.D0*gcoeff(aa21,hPr1,hPl2,-2)*r15**(-2)*r5d*rd*gqr*s125 + 4.D
     & 0*gcoeff(aa21,hPr1,hPl2,-2)*r15**(-2)*r1d*rd*gqr*s125 - 2.D0*
     & gcoeff(aa21,hPr1,hPl2,-2)*r15**(-2)*r1d*r5d*gqr*s125 - gcoeff(
     & aa21,hPr1,hPl2,-2)*r15**(-2)*r1d**2*gqr*s125 + 2.D0*gcoeff(aa21,
     & hPr1,hPl2,-2)*r15**(-2)*r25*rd**2*gqr*s125 - gcoeff(aa21,hPr1,
     & hPl2,-2)*r15**(-2)*r25*r5d*rd*gqr*s125 - 3.D0*gcoeff(aa21,hPr1,
     & hPl2,-2)*r15**(-2)*r25*r1d*rd*gqr*s125 + gcoeff(aa21,hPr1,hPl2,
     & -2)*r15**(-2)*r25*r1d*r5d*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r1d**2*gqr*s125 - 2.D0*gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*r2d*rd*gqr*s125
      e  = e  + 2.D0*gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*rd
     & *gqr*s125 - gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*
     & r5d*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d
     & *r2d*gqr*s125 + 4.D0*gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)*rd**2*
     & gqr*s125 - gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)*r5d*rd*gqr*s125
     &  - gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)*r2d*rd*gqr*s125 - 6.D0*
     & gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)*r1d*rd*gqr*s125 + gcoeff(
     & aa21,hPr1,hPl2,-2)*r15**(-1)*r1d*r5d*gqr*s125 + gcoeff(aa21,hPr1
     & ,hPl2,-2)*r15**(-1)*r1d*r2d*gqr*s125 + 2.D0*gcoeff(aa21,hPr1,
     & hPl2,-2)*r15**(-1)*r1d**2*gqr*s125 + 8.D0*gcoeff(aa21,hPr1,hPl2,
     & -2)*e1234*r15**(-2)*r25**(-1)*rd*gqr*imagunit*s125**(-1) - 8.D0*
     & gcoeff(aa21,hPr1,hPl2,-2)*e1234*r15**(-2)*r25**(-1)*r1d*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa21,hPr1,hPl2,-2)*e1234*
     & r15**(-2)*rd*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(aa21,hPr1,
     & hPl2,-2)*e1234*r15**(-2)*r1d*gqr*imagunit*s125**(-1) + gcoeff(
     & aa15,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*rd**2*gql*s125
      e  = e  - 2.D0*gcoeff(aa15,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r5d*rd
     & *gql*s125 + gcoeff(aa15,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r5d**2
     & *gql*s125 - 2.D0*gcoeff(aa15,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*
     & rd**2*gql*s125 + 3.D0*gcoeff(aa15,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa15,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r5d**2*gql*s125 + gcoeff(aa15,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa15,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r1d*r5d*gql*s125 - 3.D0*gcoeff(aa15,hPl1,hPr2,-2)*
     & r25**(-2)*rd**2*gql*s125 + 5.D0*gcoeff(aa15,hPl1,hPr2,-2)*
     & r25**(-2)*r5d*rd*gql*s125 - 2.D0*gcoeff(aa15,hPl1,hPr2,-2)*
     & r25**(-2)*r5d**2*gql*s125 + gcoeff(aa15,hPl1,hPr2,-2)*r25**(-2)*
     & r2d*rd*gql*s125 - gcoeff(aa15,hPl1,hPr2,-2)*r25**(-2)*r2d*r5d*
     & gql*s125 + 4.D0*gcoeff(aa15,hPl1,hPr2,-2)*r25**(-1)*rd**2*gql*
     & s125 - 5.D0*gcoeff(aa15,hPl1,hPr2,-2)*r25**(-1)*r5d*rd*gql*s125
     &  + gcoeff(aa15,hPl1,hPr2,-2)*r25**(-1)*r5d**2*gql*s125 - 2.D0*
     & gcoeff(aa15,hPl1,hPr2,-2)*r25**(-1)*r2d*rd*gql*s125
      e  = e  + 2.D0*gcoeff(aa15,hPl1,hPr2,-2)*r25**(-1)*r2d*r5d*gql*s125
     &  - gcoeff(aa15,hPl1,hPr2,-2)*r25**(-1)*r1d*rd*gql*s125 + gcoeff(
     & aa15,hPl1,hPr2,-2)*r25**(-1)*r1d*r5d*gql*s125 + 2.D0*gcoeff(aa15
     & ,hPl1,hPr2,-2)*r15*r25**(-2)*rd**2*gql*s125 - 3.D0*gcoeff(aa15,
     & hPl1,hPr2,-2)*r15*r25**(-2)*r5d*rd*gql*s125 + gcoeff(aa15,hPl1,
     & hPr2,-2)*r15*r25**(-2)*r5d**2*gql*s125 - gcoeff(aa15,hPl1,hPr2,
     & -2)*r15*r25**(-2)*r2d*rd*gql*s125 + gcoeff(aa15,hPl1,hPr2,-2)*
     & r15*r25**(-2)*r2d*r5d*gql*s125 - 8.D0*gcoeff(aa15,hPl1,hPr2,-2)*
     & e1234*r15**(-1)*r25**(-2)*rd*gql*imagunit*s125**(-1) + 8.D0*
     & gcoeff(aa15,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-2)*r5d*gql*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa15,hPl1,hPr2,-2)*e1234*
     & r25**(-2)*rd*gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa15,hPl1,
     & hPr2,-2)*e1234*r25**(-2)*r5d*gql*imagunit*s125**(-1) + gcoeff(
     & aa15,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*rd**2*gqr*s125 - 2.D0*
     & gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r5d*rd*gqr*s125 + 
     & gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r5d**2*gqr*s125
      e  = e  - 2.D0*gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2*
     & gqr*s125 + 3.D0*gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r5d*rd*gqr*s125 - gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r5d**2*gqr*s125 + gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r1d*rd*gqr*s125 - gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r1d*r5d*gqr*s125 - 3.D0*gcoeff(aa15,hPr1,hPl2,-2)*r25**(-2)*
     & rd**2*gqr*s125 + 5.D0*gcoeff(aa15,hPr1,hPl2,-2)*r25**(-2)*r5d*rd
     & *gqr*s125 - 2.D0*gcoeff(aa15,hPr1,hPl2,-2)*r25**(-2)*r5d**2*gqr*
     & s125 + gcoeff(aa15,hPr1,hPl2,-2)*r25**(-2)*r2d*rd*gqr*s125 - 
     & gcoeff(aa15,hPr1,hPl2,-2)*r25**(-2)*r2d*r5d*gqr*s125 + 4.D0*
     & gcoeff(aa15,hPr1,hPl2,-2)*r25**(-1)*rd**2*gqr*s125 - 5.D0*
     & gcoeff(aa15,hPr1,hPl2,-2)*r25**(-1)*r5d*rd*gqr*s125 + gcoeff(
     & aa15,hPr1,hPl2,-2)*r25**(-1)*r5d**2*gqr*s125 - 2.D0*gcoeff(aa15,
     & hPr1,hPl2,-2)*r25**(-1)*r2d*rd*gqr*s125 + 2.D0*gcoeff(aa15,hPr1,
     & hPl2,-2)*r25**(-1)*r2d*r5d*gqr*s125 - gcoeff(aa15,hPr1,hPl2,-2)*
     & r25**(-1)*r1d*rd*gqr*s125
      e  = e  + gcoeff(aa15,hPr1,hPl2,-2)*r25**(-1)*r1d*r5d*gqr*s125 + 2.D
     & 0*gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*rd**2*gqr*s125 - 3.D0*
     & gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*r5d*rd*gqr*s125 + 
     & gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*r5d**2*gqr*s125 - 
     & gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*r2d*rd*gqr*s125 + 
     & gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*r2d*r5d*gqr*s125 + 8.D0*
     & gcoeff(aa15,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-2)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa15,hPr1,hPl2,-2)*e1234*
     & r15**(-1)*r25**(-2)*r5d*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa15,hPr1,hPl2,-2)*e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa15,hPr1,hPl2,-2)*e1234*r25**(-2)*r5d*gqr*imagunit*
     & s125**(-1) - gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*rd**2
     & *gql*s125 + 2.D0*gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*
     & r5d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*
     & r5d**2*gql*s125 + 3.D0*gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*rd**2
     & *gql*s125
      e  = e  - 5.D0*gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r5d*rd*gql*s125
     &  + 2.D0*gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r5d**2*gql*s125 - 
     & gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r1d*rd*gql*s125 + gcoeff(
     & aa25,hPl1,hPr2,-2)*r15**(-2)*r1d*r5d*gql*s125 - 2.D0*gcoeff(aa25
     & ,hPl1,hPr2,-2)*r15**(-2)*r25*rd**2*gql*s125 + 3.D0*gcoeff(aa25,
     & hPl1,hPr2,-2)*r15**(-2)*r25*r5d*rd*gql*s125 - gcoeff(aa25,hPl1,
     & hPr2,-2)*r15**(-2)*r25*r5d**2*gql*s125 + gcoeff(aa25,hPl1,hPr2,
     & -2)*r15**(-2)*r25*r1d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,-2)*
     & r15**(-2)*r25*r1d*r5d*gql*s125 + 2.D0*gcoeff(aa25,hPl1,hPr2,-2)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 - 3.D0*gcoeff(aa25,hPl1,hPr2,
     & -2)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + gcoeff(aa25,hPl1,hPr2,
     & -2)*r15**(-1)*r25**(-1)*r5d**2*gql*s125 - gcoeff(aa25,hPl1,hPr2,
     & -2)*r15**(-1)*r25**(-1)*r2d*rd*gql*s125 + gcoeff(aa25,hPl1,hPr2,
     & -2)*r15**(-1)*r25**(-1)*r2d*r5d*gql*s125 - 4.D0*gcoeff(aa25,hPl1
     & ,hPr2,-2)*r15**(-1)*rd**2*gql*s125 + 5.D0*gcoeff(aa25,hPl1,hPr2,
     & -2)*r15**(-1)*r5d*rd*gql*s125
      e  = e  - gcoeff(aa25,hPl1,hPr2,-2)*r15**(-1)*r5d**2*gql*s125 + 
     & gcoeff(aa25,hPl1,hPr2,-2)*r15**(-1)*r2d*rd*gql*s125 - gcoeff(
     & aa25,hPl1,hPr2,-2)*r15**(-1)*r2d*r5d*gql*s125 + 2.D0*gcoeff(aa25
     & ,hPl1,hPr2,-2)*r15**(-1)*r1d*rd*gql*s125 - 2.D0*gcoeff(aa25,hPl1
     & ,hPr2,-2)*r15**(-1)*r1d*r5d*gql*s125 + 8.D0*gcoeff(aa25,hPl1,
     & hPr2,-2)*e1234*r15**(-2)*r25**(-1)*rd*gql*imagunit*s125**(-1) - 
     & 8.D0*gcoeff(aa25,hPl1,hPr2,-2)*e1234*r15**(-2)*r25**(-1)*r5d*gql
     & *imagunit*s125**(-1) - 8.D0*gcoeff(aa25,hPl1,hPr2,-2)*e1234*
     & r15**(-2)*rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa25,hPl1,
     & hPr2,-2)*e1234*r15**(-2)*r5d*gql*imagunit*s125**(-1) - gcoeff(
     & aa25,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*rd**2*gqr*s125 + 2.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r5d*rd*gqr*s125 - 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r5d**2*gqr*s125 + 
     & 3.D0*gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*rd**2*gqr*s125 - 5.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r5d*rd*gqr*s125 + 2.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r5d**2*gqr*s125
      e  = e  - gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r1d*rd*gqr*s125 + 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r1d*r5d*gqr*s125 - 2.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*rd**2*gqr*s125 + 3.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*r5d*rd*gqr*s125 - 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*r5d**2*gqr*s125 + 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*r1d*rd*gqr*s125 - 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*r1d*r5d*gqr*s125 + 2.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 - 3.
     & D0*gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
     &  + gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d**2*gqr*s125
     &  - gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*rd*gqr*s125
     &  + gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*gqr*
     & s125 - 4.D0*gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*rd**2*gqr*s125
     &  + 5.D0*gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r5d*rd*gqr*s125 - 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r5d**2*gqr*s125 + gcoeff(
     & aa25,hPr1,hPl2,-2)*r15**(-1)*r2d*rd*gqr*s125
      e  = e  - gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r2d*r5d*gqr*s125 + 2.D
     & 0*gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r1d*rd*gqr*s125 - 2.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r1d*r5d*gqr*s125 - 8.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*e1234*r15**(-2)*r25**(-1)*rd*gqr*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa25,hPr1,hPl2,-2)*e1234*
     & r15**(-2)*r25**(-1)*r5d*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa25,hPr1,hPl2,-2)*e1234*r15**(-2)*rd*gqr*imagunit*s125**(-1) - 
     & 8.D0*gcoeff(aa25,hPr1,hPl2,-2)*e1234*r15**(-2)*r5d*gqr*imagunit*
     & s125**(-1) + 8.D0*gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*
     & rd*gql*s125 - 12.D0*gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)
     & *rd**2*gql*s125 + 4.D0*gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r5d*rd*gql*s125 + 10.D0*gcoeff(bb0,hPl1,hPr2,-2)*
     & r15**(-1)*r25**(-1)*r2d*rd*gql*s125 - 2.D0*gcoeff(bb0,hPl1,hPr2,
     & -2)*r15**(-1)*r25**(-1)*r2d*r5d*gql*s125 + 10.D0*gcoeff(bb0,hPl1
     & ,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*rd*gql*s125 - 2.D0*gcoeff(bb0,
     & hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*r5d*gql*s125
      e  = e  - 8.D0*gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*r2d
     & *gql*s125 - 12.D0*gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*rd*gql*s125
     &  + 12.D0*gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*rd**2*gql*s125 - 4.D0
     & *gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r5d*rd*gql*s125 - 8.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r2d*rd*gql*s125 + 2.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r2d*r5d*gql*s125 - 12.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r1d*rd*gql*s125 + 2.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r1d*r5d*gql*s125 + 6.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r1d*r2d*gql*s125 + 2.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r1d**2*gql*s125 + 4.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*r15**(-1)*r25*rd*gql*s125 - 12.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*r25**(-1)*rd*gql*s125 + 12.D0*gcoeff(
     & bb0,hPl1,hPr2,-2)*r25**(-1)*rd**2*gql*s125 - 4.D0*gcoeff(bb0,
     & hPl1,hPr2,-2)*r25**(-1)*r5d*rd*gql*s125 - 12.D0*gcoeff(bb0,hPl1,
     & hPr2,-2)*r25**(-1)*r2d*rd*gql*s125 + 2.D0*gcoeff(bb0,hPl1,hPr2,
     & -2)*r25**(-1)*r2d*r5d*gql*s125
      e  = e  + 2.D0*gcoeff(bb0,hPl1,hPr2,-2)*r25**(-1)*r2d**2*gql*s125
     &  - 8.D0*gcoeff(bb0,hPl1,hPr2,-2)*r25**(-1)*r1d*rd*gql*s125 + 2.D0
     & *gcoeff(bb0,hPl1,hPr2,-2)*r25**(-1)*r1d*r5d*gql*s125 + 6.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*r25**(-1)*r1d*r2d*gql*s125 + 8.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*rd*gql*s125 + 4.D0*gcoeff(bb0,hPl1,hPr2
     & ,-2)*r15*r25**(-1)*rd*gql*s125 - 32.D0*gcoeff(bb0,hPl1,hPr2,-2)*
     & e1234*r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 16.D0*
     & gcoeff(bb0,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-1)*r2d*gql*
     & imagunit*s125**(-1) + 16.D0*gcoeff(bb0,hPl1,hPr2,-2)*e1234*
     & r15**(-1)*r25**(-1)*r1d*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & bb0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd*gqr*s125 - 12.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 + 4.D
     & 0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
     &  + 10.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*rd*gqr
     & *s125 - 2.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*
     & r5d*gqr*s125
      e  = e  + 10.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*rd
     & *gqr*s125 - 2.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*
     & r1d*r5d*gqr*s125 - 8.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-1)*r1d*r2d*gqr*s125 - 12.D0*gcoeff(bb0,hPr1,hPl2,-2)*
     & r15**(-1)*rd*gqr*s125 + 12.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)
     & *rd**2*gqr*s125 - 4.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r5d*rd
     & *gqr*s125 - 8.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r2d*rd*gqr*
     & s125 + 2.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r2d*r5d*gqr*s125
     &  - 12.D0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r1d*rd*gqr*s125 + 2.D
     & 0*gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r1d*r5d*gqr*s125 + 6.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r1d*r2d*gqr*s125 + 2.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r1d**2*gqr*s125 + 4.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*r15**(-1)*r25*rd*gqr*s125 - 12.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*r25**(-1)*rd*gqr*s125 + 12.D0*gcoeff(
     & bb0,hPr1,hPl2,-2)*r25**(-1)*rd**2*gqr*s125 - 4.D0*gcoeff(bb0,
     & hPr1,hPl2,-2)*r25**(-1)*r5d*rd*gqr*s125
      e  = e  - 12.D0*gcoeff(bb0,hPr1,hPl2,-2)*r25**(-1)*r2d*rd*gqr*s125
     &  + 2.D0*gcoeff(bb0,hPr1,hPl2,-2)*r25**(-1)*r2d*r5d*gqr*s125 + 2.D
     & 0*gcoeff(bb0,hPr1,hPl2,-2)*r25**(-1)*r2d**2*gqr*s125 - 8.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*r25**(-1)*r1d*rd*gqr*s125 + 2.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*r25**(-1)*r1d*r5d*gqr*s125 + 6.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*r25**(-1)*r1d*r2d*gqr*s125 + 8.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*rd*gqr*s125 + 4.D0*gcoeff(bb0,hPr1,hPl2
     & ,-2)*r15*r25**(-1)*rd*gqr*s125 + 32.D0*gcoeff(bb0,hPr1,hPl2,-2)*
     & e1234*r15**(-1)*r25**(-1)*rd*gqr*imagunit*s125**(-1) - 16.D0*
     & gcoeff(bb0,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-1)*r2d*gqr*
     & imagunit*s125**(-1) - 16.D0*gcoeff(bb0,hPr1,hPl2,-2)*e1234*
     & r15**(-1)*r25**(-1)*r1d*gqr*imagunit*s125**(-1) - 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*rd**2*gql + 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r5d*rd*gql + 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r2d*rd*gql - 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r2d*r5d*gql
      e  = e  + 8.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*rd*gql
     &  - 8.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*rd**2*gql
     &  + 4.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gql
     &  + 8.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d*rd*gql
     &  - 4.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*gql
     &  + 4.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*rd*gql
     &  - 4.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*r2d*gql
     &  + 8.D0*gcoeff(dd0,hPl1,hPr2,-2)*r25**(-2)*rd**2*gql - 4.D0*
     & gcoeff(dd0,hPl1,hPr2,-2)*r25**(-2)*r5d*rd*gql - 12.D0*gcoeff(dd0
     & ,hPl1,hPr2,-2)*r25**(-2)*r2d*rd*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,
     & -2)*r25**(-2)*r2d*r5d*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,-2)*
     & r25**(-2)*r2d**2*gql - 8.D0*gcoeff(dd0,hPl1,hPr2,-2)*r25**(-1)*
     & rd*gql + 32.D0*gcoeff(dd0,hPl1,hPr2,-2)*e1234*r15**(-1)*
     & r25**(-2)*rd*gql*imagunit*s125**(-2) - 32.D0*gcoeff(dd0,hPl1,
     & hPr2,-2)*e1234*r15**(-1)*r25**(-2)*r2d*gql*imagunit*s125**(-2)
     &  - 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*rd**2*gqr
      e  = e  + 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r5d*rd*
     & gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r2d*rd*
     & gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r2d*r5d*
     & gqr + 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd*gqr
     &  - 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2*gqr
     &  + 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gqr
     &  + 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*rd*gqr
     &  - 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*gqr
     &  + 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*rd*gqr
     &  - 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*r2d*gqr
     &  + 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r25**(-2)*rd**2*gqr - 4.D0*
     & gcoeff(dd0,hPr1,hPl2,-2)*r25**(-2)*r5d*rd*gqr - 12.D0*gcoeff(dd0
     & ,hPr1,hPl2,-2)*r25**(-2)*r2d*rd*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,
     & -2)*r25**(-2)*r2d*r5d*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*
     & r25**(-2)*r2d**2*gqr - 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r25**(-1)*
     & rd*gqr
      e  = e  - 32.D0*gcoeff(dd0,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-2)*
     & rd*gqr*imagunit*s125**(-2) + 32.D0*gcoeff(dd0,hPr1,hPl2,-2)*
     & e1234*r15**(-1)*r25**(-2)*r2d*gqr*imagunit*s125**(-2)

      ep(-2) = pre*e
      e = 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*rd**2*gql
     &  - 4.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r5d*rd*gql
     &  + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*r25**(-1)*r5d**2*gql
     &  - 4.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*rd**2*gql + 6.D0*
     & gcoeff(aa0,hPl1,hPr2,-2)*r15**(-2)*r5d*rd*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-2)*r15**(-2)*r5d**2*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,
     & -2)*r15**(-2)*r1d*rd*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*
     & r15**(-2)*r1d*r5d*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-2)*rd**2*gql + 4.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-2)*r5d*rd*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-2)*r5d**2*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r2d*rd*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r2d*r5d*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r1d*rd*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-2)*r15**(-1)*
     & r25**(-1)*r1d*r5d*gql + 4.D0*gcoeff(aa0,hPl1,hPr2,-2)*r25**(-2)*
     & rd**2*gql
      e  = e  - 6.D0*gcoeff(aa0,hPl1,hPr2,-2)*r25**(-2)*r5d*rd*gql + 2.D0
     & *gcoeff(aa0,hPl1,hPr2,-2)*r25**(-2)*r5d**2*gql - 2.D0*gcoeff(aa0
     & ,hPl1,hPr2,-2)*r25**(-2)*r2d*rd*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,
     & -2)*r25**(-2)*r2d*r5d*gql - 16.D0*gcoeff(aa0,hPl1,hPr2,-2)*e1234
     & *r15**(-2)*r25**(-1)*rd*gql*imagunit*s125**(-2) + 16.D0*gcoeff(
     & aa0,hPl1,hPr2,-2)*e1234*r15**(-2)*r25**(-1)*r5d*gql*imagunit*
     & s125**(-2) - 16.D0*gcoeff(aa0,hPl1,hPr2,-2)*e1234*r15**(-1)*
     & r25**(-2)*rd*gql*imagunit*s125**(-2) + 16.D0*gcoeff(aa0,hPl1,
     & hPr2,-2)*e1234*r15**(-1)*r25**(-2)*r5d*gql*imagunit*s125**(-2)
     &  + 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*rd**2*gql
     &  - 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r5d*rd*gql
     &  - 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r1d*rd*gql
     &  + 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r1d*r5d*gql
     &  - 4.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*rd**2*gql + 2.D0*
     & gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r5d*rd*gql + 6.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-2)*r1d*rd*gql
      e  = e  - 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r1d*r5d*gql - 2.D0
     & *gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r1d**2*gql - 2.D0*gcoeff(aa0
     & ,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*rd**2*gql + 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r5d*rd*gql + 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r2d*rd*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r2d*r5d*gql + 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*rd*gql + 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*r5d*gql + 4.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-1)*rd*gql + 4.D0*gcoeff(aa0,hPl1,hPr2,-1)*
     & r25**(-2)*rd**2*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r25**(-2)*
     & r5d*rd*gql - 6.D0*gcoeff(aa0,hPl1,hPr2,-1)*r25**(-2)*r2d*rd*gql
     &  + 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r25**(-2)*r2d*r5d*gql + 2.D0*
     & gcoeff(aa0,hPl1,hPr2,-1)*r25**(-2)*r2d**2*gql - 4.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r25**(-1)*rd*gql
      e  = e  - 16.D0*gcoeff(aa0,hPl1,hPr2,-1)*e1234*r15**(-2)*r25**(-1)*
     & rd*gql*imagunit*s125**(-2) + 16.D0*gcoeff(aa0,hPl1,hPr2,-1)*
     & e1234*r15**(-2)*r25**(-1)*r1d*gql*imagunit*s125**(-2) + 16.D0*
     & gcoeff(aa0,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-2)*rd*gql*
     & imagunit*s125**(-2) - 16.D0*gcoeff(aa0,hPl1,hPr2,-1)*e1234*
     & r15**(-1)*r25**(-2)*r2d*gql*imagunit*s125**(-2) + 2.D0*gcoeff(
     & aa0,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*rd**2*gqr - 4.D0*gcoeff(
     & aa0,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r5d*rd*gqr + 2.D0*gcoeff(
     & aa0,hPr1,hPl2,-2)*r15**(-2)*r25**(-1)*r5d**2*gqr - 4.D0*gcoeff(
     & aa0,hPr1,hPl2,-2)*r15**(-2)*rd**2*gqr + 6.D0*gcoeff(aa0,hPr1,
     & hPl2,-2)*r15**(-2)*r5d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*
     & r15**(-2)*r5d**2*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-2)*
     & r1d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-2)*r1d*r5d*gqr
     &  - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*rd**2*gqr
     &  + 4.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r5d*rd*gqr
     &  - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r5d**2*gqr
      e  = e  - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*rd*
     & gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*
     & gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*rd*
     & gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*r5d*
     & gqr + 4.D0*gcoeff(aa0,hPr1,hPl2,-2)*r25**(-2)*rd**2*gqr - 6.D0*
     & gcoeff(aa0,hPr1,hPl2,-2)*r25**(-2)*r5d*rd*gqr + 2.D0*gcoeff(aa0,
     & hPr1,hPl2,-2)*r25**(-2)*r5d**2*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,
     & -2)*r25**(-2)*r2d*rd*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-2)*
     & r25**(-2)*r2d*r5d*gqr + 16.D0*gcoeff(aa0,hPr1,hPl2,-2)*e1234*
     & r15**(-2)*r25**(-1)*rd*gqr*imagunit*s125**(-2) - 16.D0*gcoeff(
     & aa0,hPr1,hPl2,-2)*e1234*r15**(-2)*r25**(-1)*r5d*gqr*imagunit*
     & s125**(-2) + 16.D0*gcoeff(aa0,hPr1,hPl2,-2)*e1234*r15**(-1)*
     & r25**(-2)*rd*gqr*imagunit*s125**(-2) - 16.D0*gcoeff(aa0,hPr1,
     & hPl2,-2)*e1234*r15**(-1)*r25**(-2)*r5d*gqr*imagunit*s125**(-2)
     &  + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*rd**2*gqr
     &  - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*r5d*rd*gqr
      e  = e  - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*r1d*rd*
     & gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*r1d*r5d*
     & gqr - 4.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-2)*rd**2*gqr + 2.D0*
     & gcoeff(aa0,hPr1,hPl2,-1)*r15**(-2)*r5d*rd*gqr + 6.D0*gcoeff(aa0,
     & hPr1,hPl2,-1)*r15**(-2)*r1d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,
     & -1)*r15**(-2)*r1d*r5d*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*
     & r15**(-2)*r1d**2*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-2)*rd**2*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-2)*r5d*rd*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-2)*r2d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-2)*r2d*r5d*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-1)*r2d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-1)*r2d*r5d*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-1)*r1d*rd*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-1)*r1d*r5d*gqr + 4.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*
     & rd*gqr
      e  = e  + 4.D0*gcoeff(aa0,hPr1,hPl2,-1)*r25**(-2)*rd**2*gqr - 2.D0*
     & gcoeff(aa0,hPr1,hPl2,-1)*r25**(-2)*r5d*rd*gqr - 6.D0*gcoeff(aa0,
     & hPr1,hPl2,-1)*r25**(-2)*r2d*rd*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,
     & -1)*r25**(-2)*r2d*r5d*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*
     & r25**(-2)*r2d**2*gqr - 4.D0*gcoeff(aa0,hPr1,hPl2,-1)*r25**(-1)*
     & rd*gqr + 16.D0*gcoeff(aa0,hPr1,hPl2,-1)*e1234*r15**(-2)*
     & r25**(-1)*rd*gqr*imagunit*s125**(-2) - 16.D0*gcoeff(aa0,hPr1,
     & hPl2,-1)*e1234*r15**(-2)*r25**(-1)*r1d*gqr*imagunit*s125**(-2)
     &  - 16.D0*gcoeff(aa0,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-2)*rd*
     & gqr*imagunit*s125**(-2) + 16.D0*gcoeff(aa0,hPr1,hPl2,-1)*e1234*
     & r15**(-1)*r25**(-2)*r2d*gqr*imagunit*s125**(-2) + gcoeff(aa11,
     & hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*rd**2*gql*s125 - gcoeff(aa11,
     & hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa11,
     & hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*rd*gql*s125 + gcoeff(aa11,
     & hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*r5d*gql*s125 - 2.D0*
     & gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*rd**2*gql*s125
      e  = e  + gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r5d*rd*gql*s125 + 3.D0
     & *gcoeff(aa11,hPl1,hPr2,-2)*r15**(-1)*r1d*rd*gql*s125 - gcoeff(
     & aa11,hPl1,hPr2,-2)*r15**(-1)*r1d*r5d*gql*s125 - gcoeff(aa11,hPl1
     & ,hPr2,-2)*r15**(-1)*r1d**2*gql*s125 - gcoeff(aa11,hPl1,hPr2,-2)*
     & r25**(-2)*rd**2*gql*s125 + gcoeff(aa11,hPl1,hPr2,-2)*r25**(-2)*
     & r5d*rd*gql*s125 + gcoeff(aa11,hPl1,hPr2,-2)*r25**(-2)*r1d*rd*gql
     & *s125 - gcoeff(aa11,hPl1,hPr2,-2)*r25**(-2)*r1d*r5d*gql*s125 - 
     & gcoeff(aa11,hPl1,hPr2,-2)*r25**(-1)*r2d*rd*gql*s125 + gcoeff(
     & aa11,hPl1,hPr2,-2)*r25**(-1)*r1d*rd*gql*s125 + gcoeff(aa11,hPl1,
     & hPr2,-2)*r25**(-1)*r1d*r2d*gql*s125 - gcoeff(aa11,hPl1,hPr2,-2)*
     & r25**(-1)*r1d**2*gql*s125 + 2.D0*gcoeff(aa11,hPl1,hPr2,-2)*r15*
     & r25**(-2)*rd**2*gql*s125 - gcoeff(aa11,hPl1,hPr2,-2)*r15*
     & r25**(-2)*r5d*rd*gql*s125 - gcoeff(aa11,hPl1,hPr2,-2)*r15*
     & r25**(-2)*r2d*rd*gql*s125 - 2.D0*gcoeff(aa11,hPl1,hPr2,-2)*r15*
     & r25**(-2)*r1d*rd*gql*s125 + gcoeff(aa11,hPl1,hPr2,-2)*r15*
     & r25**(-2)*r1d*r5d*gql*s125
      e  = e  + gcoeff(aa11,hPl1,hPr2,-2)*r15*r25**(-2)*r1d*r2d*gql*s125
     &  - 8.D0*gcoeff(aa11,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-1)*rd*
     & gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa11,hPl1,hPr2,-2)*e1234*
     & r15**(-1)*r25**(-1)*r1d*gql*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa11,hPl1,hPr2,-2)*e1234*r25**(-2)*rd*gql*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa11,hPl1,hPr2,-2)*e1234*r25**(-2)*r1d*gql*imagunit*
     & s125**(-1) - gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*rd**2
     & *gql*s125 + gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r5d*rd
     & *gql*s125 + gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r1d*rd
     & *gql*s125 - gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r1d*
     & r5d*gql*s125 + 2.D0*gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*
     & r25**(-1)*rd**2*gql*s125 - gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*
     & r25**(-1)*r5d*rd*gql*s125 - 3.D0*gcoeff(aa11,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*r1d*rd*gql*s125 + gcoeff(aa11,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*r1d*r5d*gql*s125 + gcoeff(aa11,hPl1,hPr2,-1)
     & *r15**(-1)*r25**(-1)*r1d**2*gql*s125
      e  = e  + 3.D0*gcoeff(aa11,hPl1,hPr2,-1)*r25**(-2)*rd**2*gql*s125
     &  - 2.D0*gcoeff(aa11,hPl1,hPr2,-1)*r25**(-2)*r5d*rd*gql*s125 - 
     & gcoeff(aa11,hPl1,hPr2,-1)*r25**(-2)*r2d*rd*gql*s125 - 3.D0*
     & gcoeff(aa11,hPl1,hPr2,-1)*r25**(-2)*r1d*rd*gql*s125 + 2.D0*
     & gcoeff(aa11,hPl1,hPr2,-1)*r25**(-2)*r1d*r5d*gql*s125 + gcoeff(
     & aa11,hPl1,hPr2,-1)*r25**(-2)*r1d*r2d*gql*s125 - 4.D0*gcoeff(aa11
     & ,hPl1,hPr2,-1)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa11,hPl1,hPr2,
     & -1)*r25**(-1)*r5d*rd*gql*s125 + 2.D0*gcoeff(aa11,hPl1,hPr2,-1)*
     & r25**(-1)*r2d*rd*gql*s125 + 5.D0*gcoeff(aa11,hPl1,hPr2,-1)*
     & r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa11,hPl1,hPr2,-1)*r25**(-1)*
     & r1d*r5d*gql*s125 - 2.D0*gcoeff(aa11,hPl1,hPr2,-1)*r25**(-1)*r1d*
     & r2d*gql*s125 - gcoeff(aa11,hPl1,hPr2,-1)*r25**(-1)*r1d**2*gql*
     & s125 - 2.D0*gcoeff(aa11,hPl1,hPr2,-1)*r15*r25**(-2)*rd**2*gql*
     & s125 + gcoeff(aa11,hPl1,hPr2,-1)*r15*r25**(-2)*r5d*rd*gql*s125
     &  + gcoeff(aa11,hPl1,hPr2,-1)*r15*r25**(-2)*r2d*rd*gql*s125 + 2.D0
     & *gcoeff(aa11,hPl1,hPr2,-1)*r15*r25**(-2)*r1d*rd*gql*s125
      e  = e  - gcoeff(aa11,hPl1,hPr2,-1)*r15*r25**(-2)*r1d*r5d*gql*s125
     &  - gcoeff(aa11,hPl1,hPr2,-1)*r15*r25**(-2)*r1d*r2d*gql*s125 + 8.D
     & 0*gcoeff(aa11,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-2)*rd*gql*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa11,hPl1,hPr2,-1)*e1234*
     & r15**(-1)*r25**(-2)*r1d*gql*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa11,hPl1,hPr2,-1)*e1234*r25**(-2)*rd*gql*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa11,hPl1,hPr2,-1)*e1234*r25**(-2)*r1d*gql*imagunit*
     & s125**(-1) + gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2
     & *gqr*s125 - gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd
     & *gqr*s125 - gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*rd
     & *gqr*s125 + gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*
     & r5d*gqr*s125 - 2.D0*gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*rd**2*
     & gqr*s125 + gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r5d*rd*gqr*s125
     &  + 3.D0*gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r1d*rd*gqr*s125 - 
     & gcoeff(aa11,hPr1,hPl2,-2)*r15**(-1)*r1d*r5d*gqr*s125 - gcoeff(
     & aa11,hPr1,hPl2,-2)*r15**(-1)*r1d**2*gqr*s125
      e  = e  - gcoeff(aa11,hPr1,hPl2,-2)*r25**(-2)*rd**2*gqr*s125 + 
     & gcoeff(aa11,hPr1,hPl2,-2)*r25**(-2)*r5d*rd*gqr*s125 + gcoeff(
     & aa11,hPr1,hPl2,-2)*r25**(-2)*r1d*rd*gqr*s125 - gcoeff(aa11,hPr1,
     & hPl2,-2)*r25**(-2)*r1d*r5d*gqr*s125 - gcoeff(aa11,hPr1,hPl2,-2)*
     & r25**(-1)*r2d*rd*gqr*s125 + gcoeff(aa11,hPr1,hPl2,-2)*r25**(-1)*
     & r1d*rd*gqr*s125 + gcoeff(aa11,hPr1,hPl2,-2)*r25**(-1)*r1d*r2d*
     & gqr*s125 - gcoeff(aa11,hPr1,hPl2,-2)*r25**(-1)*r1d**2*gqr*s125
     &  + 2.D0*gcoeff(aa11,hPr1,hPl2,-2)*r15*r25**(-2)*rd**2*gqr*s125
     &  - gcoeff(aa11,hPr1,hPl2,-2)*r15*r25**(-2)*r5d*rd*gqr*s125 - 
     & gcoeff(aa11,hPr1,hPl2,-2)*r15*r25**(-2)*r2d*rd*gqr*s125 - 2.D0*
     & gcoeff(aa11,hPr1,hPl2,-2)*r15*r25**(-2)*r1d*rd*gqr*s125 + 
     & gcoeff(aa11,hPr1,hPl2,-2)*r15*r25**(-2)*r1d*r5d*gqr*s125 + 
     & gcoeff(aa11,hPr1,hPl2,-2)*r15*r25**(-2)*r1d*r2d*gqr*s125 + 8.D0*
     & gcoeff(aa11,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-1)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa11,hPr1,hPl2,-2)*e1234*
     & r15**(-1)*r25**(-1)*r1d*gqr*imagunit*s125**(-1)
      e  = e  + 8.D0*gcoeff(aa11,hPr1,hPl2,-2)*e1234*r25**(-2)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa11,hPr1,hPl2,-2)*e1234*
     & r25**(-2)*r1d*gqr*imagunit*s125**(-1) - gcoeff(aa11,hPr1,hPl2,-1
     & )*r15**(-1)*r25**(-2)*rd**2*gqr*s125 + gcoeff(aa11,hPr1,hPl2,-1)
     & *r15**(-1)*r25**(-2)*r5d*rd*gqr*s125 + gcoeff(aa11,hPr1,hPl2,-1)
     & *r15**(-1)*r25**(-2)*r1d*rd*gqr*s125 - gcoeff(aa11,hPr1,hPl2,-1)
     & *r15**(-1)*r25**(-2)*r1d*r5d*gqr*s125 + 2.D0*gcoeff(aa11,hPr1,
     & hPl2,-1)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 - gcoeff(aa11,hPr1,
     & hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 - 3.D0*gcoeff(aa11,
     & hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*rd*gqr*s125 + gcoeff(aa11,
     & hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*r5d*gqr*s125 + gcoeff(aa11
     & ,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d**2*gqr*s125 + 3.D0*
     & gcoeff(aa11,hPr1,hPl2,-1)*r25**(-2)*rd**2*gqr*s125 - 2.D0*
     & gcoeff(aa11,hPr1,hPl2,-1)*r25**(-2)*r5d*rd*gqr*s125 - gcoeff(
     & aa11,hPr1,hPl2,-1)*r25**(-2)*r2d*rd*gqr*s125 - 3.D0*gcoeff(aa11,
     & hPr1,hPl2,-1)*r25**(-2)*r1d*rd*gqr*s125
      e  = e  + 2.D0*gcoeff(aa11,hPr1,hPl2,-1)*r25**(-2)*r1d*r5d*gqr*s125
     &  + gcoeff(aa11,hPr1,hPl2,-1)*r25**(-2)*r1d*r2d*gqr*s125 - 4.D0*
     & gcoeff(aa11,hPr1,hPl2,-1)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa11
     & ,hPr1,hPl2,-1)*r25**(-1)*r5d*rd*gqr*s125 + 2.D0*gcoeff(aa11,hPr1
     & ,hPl2,-1)*r25**(-1)*r2d*rd*gqr*s125 + 5.D0*gcoeff(aa11,hPr1,hPl2
     & ,-1)*r25**(-1)*r1d*rd*gqr*s125 - gcoeff(aa11,hPr1,hPl2,-1)*
     & r25**(-1)*r1d*r5d*gqr*s125 - 2.D0*gcoeff(aa11,hPr1,hPl2,-1)*
     & r25**(-1)*r1d*r2d*gqr*s125 - gcoeff(aa11,hPr1,hPl2,-1)*r25**(-1)
     & *r1d**2*gqr*s125 - 2.D0*gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*
     & rd**2*gqr*s125 + gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r5d*rd*
     & gqr*s125 + gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r2d*rd*gqr*
     & s125 + 2.D0*gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r1d*rd*gqr*
     & s125 - gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r1d*r5d*gqr*s125
     &  - gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r1d*r2d*gqr*s125 - 8.D
     & 0*gcoeff(aa11,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-2)*rd*gqr*
     & imagunit*s125**(-1)
      e  = e  + 8.D0*gcoeff(aa11,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-2)*
     & r1d*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(aa11,hPr1,hPl2,-1)*
     & e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(aa11,
     & hPr1,hPl2,-1)*e1234*r25**(-2)*r1d*gqr*imagunit*s125**(-1) + 
     & gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*rd**2*gql*s125 - 
     & gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 - 
     & gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d*rd*gql*s125 + 
     & gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*gql*s125
     &  - 2.D0*gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*rd**2*gql*s125 + 
     & gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r5d*rd*gql*s125 + 2.D0*
     & gcoeff(aa12,hPl1,hPr2,-2)*r15**(-1)*r2d*rd*gql*s125 - gcoeff(
     & aa12,hPl1,hPr2,-2)*r15**(-1)*r2d*r5d*gql*s125 + gcoeff(aa12,hPl1
     & ,hPr2,-2)*r15**(-1)*r1d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,-2)*
     & r15**(-1)*r1d*r2d*gql*s125 - gcoeff(aa12,hPl1,hPr2,-2)*r25**(-2)
     & *rd**2*gql*s125 + gcoeff(aa12,hPl1,hPr2,-2)*r25**(-2)*r5d*rd*gql
     & *s125
      e  = e  + gcoeff(aa12,hPl1,hPr2,-2)*r25**(-2)*r2d*rd*gql*s125 - 
     & gcoeff(aa12,hPl1,hPr2,-2)*r25**(-2)*r2d*r5d*gql*s125 - gcoeff(
     & aa12,hPl1,hPr2,-2)*r25**(-1)*r2d*rd*gql*s125 + gcoeff(aa12,hPl1,
     & hPr2,-2)*r25**(-1)*r2d**2*gql*s125 + gcoeff(aa12,hPl1,hPr2,-2)*
     & r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,-2)*r25**(-1)*
     & r1d*r2d*gql*s125 + 2.D0*gcoeff(aa12,hPl1,hPr2,-2)*r15*r25**(-2)*
     & rd**2*gql*s125 - gcoeff(aa12,hPl1,hPr2,-2)*r15*r25**(-2)*r5d*rd*
     & gql*s125 - 3.D0*gcoeff(aa12,hPl1,hPr2,-2)*r15*r25**(-2)*r2d*rd*
     & gql*s125 + gcoeff(aa12,hPl1,hPr2,-2)*r15*r25**(-2)*r2d*r5d*gql*
     & s125 + gcoeff(aa12,hPl1,hPr2,-2)*r15*r25**(-2)*r2d**2*gql*s125
     &  - 8.D0*gcoeff(aa12,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-1)*rd*
     & gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa12,hPl1,hPr2,-2)*e1234*
     & r15**(-1)*r25**(-1)*r2d*gql*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa12,hPl1,hPr2,-2)*e1234*r25**(-2)*rd*gql*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa12,hPl1,hPr2,-2)*e1234*r25**(-2)*r2d*gql*imagunit*
     & s125**(-1)
      e  = e  - gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*rd**2*gql*
     & s125 + gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r5d*rd*gql*
     & s125 + gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r2d*rd*gql*
     & s125 - gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r2d*r5d*gql
     & *s125 + 2.D0*gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*rd**2
     & *gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r5d*rd
     & *gql*s125 - 2.D0*gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r2d*rd*gql*s125 + gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r2d*r5d*gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)
     & *r1d*rd*gql*s125 + gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)
     & *r1d*r2d*gql*s125 + 3.D0*gcoeff(aa12,hPl1,hPr2,-1)*r25**(-2)*
     & rd**2*gql*s125 - 2.D0*gcoeff(aa12,hPl1,hPr2,-1)*r25**(-2)*r5d*rd
     & *gql*s125 - 4.D0*gcoeff(aa12,hPl1,hPr2,-1)*r25**(-2)*r2d*rd*gql*
     & s125 + 2.D0*gcoeff(aa12,hPl1,hPr2,-1)*r25**(-2)*r2d*r5d*gql*s125
     &  + gcoeff(aa12,hPl1,hPr2,-1)*r25**(-2)*r2d**2*gql*s125 - 4.D0*
     & gcoeff(aa12,hPl1,hPr2,-1)*r25**(-1)*rd**2*gql*s125
      e  = e  + gcoeff(aa12,hPl1,hPr2,-1)*r25**(-1)*r5d*rd*gql*s125 + 6.D0
     & *gcoeff(aa12,hPl1,hPr2,-1)*r25**(-1)*r2d*rd*gql*s125 - gcoeff(
     & aa12,hPl1,hPr2,-1)*r25**(-1)*r2d*r5d*gql*s125 - 2.D0*gcoeff(aa12
     & ,hPl1,hPr2,-1)*r25**(-1)*r2d**2*gql*s125 + gcoeff(aa12,hPl1,hPr2
     & ,-1)*r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)*
     & r25**(-1)*r1d*r2d*gql*s125 - 2.D0*gcoeff(aa12,hPl1,hPr2,-1)*r15*
     & r25**(-2)*rd**2*gql*s125 + gcoeff(aa12,hPl1,hPr2,-1)*r15*
     & r25**(-2)*r5d*rd*gql*s125 + 3.D0*gcoeff(aa12,hPl1,hPr2,-1)*r15*
     & r25**(-2)*r2d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)*r15*
     & r25**(-2)*r2d*r5d*gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)*r15*
     & r25**(-2)*r2d**2*gql*s125 + 8.D0*gcoeff(aa12,hPl1,hPr2,-1)*e1234
     & *r15**(-1)*r25**(-2)*rd*gql*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa12,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-2)*r2d*gql*imagunit*
     & s125**(-1) - 8.D0*gcoeff(aa12,hPl1,hPr2,-1)*e1234*r25**(-2)*rd*
     & gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa12,hPl1,hPr2,-1)*e1234*
     & r25**(-2)*r2d*gql*imagunit*s125**(-1)
      e  = e  + gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2*gqr*
     & s125 - gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gqr*
     & s125 - gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*rd*gqr*
     & s125 + gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*gqr
     & *s125 - 2.D0*gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*rd**2*gqr*s125
     &  + gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r5d*rd*gqr*s125 + 2.D0*
     & gcoeff(aa12,hPr1,hPl2,-2)*r15**(-1)*r2d*rd*gqr*s125 - gcoeff(
     & aa12,hPr1,hPl2,-2)*r15**(-1)*r2d*r5d*gqr*s125 + gcoeff(aa12,hPr1
     & ,hPl2,-2)*r15**(-1)*r1d*rd*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-2)*
     & r15**(-1)*r1d*r2d*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-2)*r25**(-2)
     & *rd**2*gqr*s125 + gcoeff(aa12,hPr1,hPl2,-2)*r25**(-2)*r5d*rd*gqr
     & *s125 + gcoeff(aa12,hPr1,hPl2,-2)*r25**(-2)*r2d*rd*gqr*s125 - 
     & gcoeff(aa12,hPr1,hPl2,-2)*r25**(-2)*r2d*r5d*gqr*s125 - gcoeff(
     & aa12,hPr1,hPl2,-2)*r25**(-1)*r2d*rd*gqr*s125 + gcoeff(aa12,hPr1,
     & hPl2,-2)*r25**(-1)*r2d**2*gqr*s125 + gcoeff(aa12,hPr1,hPl2,-2)*
     & r25**(-1)*r1d*rd*gqr*s125
      e  = e  - gcoeff(aa12,hPr1,hPl2,-2)*r25**(-1)*r1d*r2d*gqr*s125 + 2.D
     & 0*gcoeff(aa12,hPr1,hPl2,-2)*r15*r25**(-2)*rd**2*gqr*s125 - 
     & gcoeff(aa12,hPr1,hPl2,-2)*r15*r25**(-2)*r5d*rd*gqr*s125 - 3.D0*
     & gcoeff(aa12,hPr1,hPl2,-2)*r15*r25**(-2)*r2d*rd*gqr*s125 + 
     & gcoeff(aa12,hPr1,hPl2,-2)*r15*r25**(-2)*r2d*r5d*gqr*s125 + 
     & gcoeff(aa12,hPr1,hPl2,-2)*r15*r25**(-2)*r2d**2*gqr*s125 + 8.D0*
     & gcoeff(aa12,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-1)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa12,hPr1,hPl2,-2)*e1234*
     & r15**(-1)*r25**(-1)*r2d*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa12,hPr1,hPl2,-2)*e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1) - 
     & 8.D0*gcoeff(aa12,hPr1,hPl2,-2)*e1234*r25**(-2)*r2d*gqr*imagunit*
     & s125**(-1) - gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*rd**2
     & *gqr*s125 + gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*r5d*rd
     & *gqr*s125 + gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*r2d*rd
     & *gqr*s125 - gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*r2d*
     & r5d*gqr*s125
      e  = e  + 2.D0*gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*rd**2*
     & gqr*s125 - gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd*
     & gqr*s125 - 2.D0*gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*
     & r2d*rd*gqr*s125 + gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*
     & r2d*r5d*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)
     & *r1d*rd*gqr*s125 + gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)
     & *r1d*r2d*gqr*s125 + 3.D0*gcoeff(aa12,hPr1,hPl2,-1)*r25**(-2)*
     & rd**2*gqr*s125 - 2.D0*gcoeff(aa12,hPr1,hPl2,-1)*r25**(-2)*r5d*rd
     & *gqr*s125 - 4.D0*gcoeff(aa12,hPr1,hPl2,-1)*r25**(-2)*r2d*rd*gqr*
     & s125 + 2.D0*gcoeff(aa12,hPr1,hPl2,-1)*r25**(-2)*r2d*r5d*gqr*s125
     &  + gcoeff(aa12,hPr1,hPl2,-1)*r25**(-2)*r2d**2*gqr*s125 - 4.D0*
     & gcoeff(aa12,hPr1,hPl2,-1)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa12
     & ,hPr1,hPl2,-1)*r25**(-1)*r5d*rd*gqr*s125 + 6.D0*gcoeff(aa12,hPr1
     & ,hPl2,-1)*r25**(-1)*r2d*rd*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-1)*
     & r25**(-1)*r2d*r5d*gqr*s125 - 2.D0*gcoeff(aa12,hPr1,hPl2,-1)*
     & r25**(-1)*r2d**2*gqr*s125
      e  = e  + gcoeff(aa12,hPr1,hPl2,-1)*r25**(-1)*r1d*rd*gqr*s125 - 
     & gcoeff(aa12,hPr1,hPl2,-1)*r25**(-1)*r1d*r2d*gqr*s125 - 2.D0*
     & gcoeff(aa12,hPr1,hPl2,-1)*r15*r25**(-2)*rd**2*gqr*s125 + gcoeff(
     & aa12,hPr1,hPl2,-1)*r15*r25**(-2)*r5d*rd*gqr*s125 + 3.D0*gcoeff(
     & aa12,hPr1,hPl2,-1)*r15*r25**(-2)*r2d*rd*gqr*s125 - gcoeff(aa12,
     & hPr1,hPl2,-1)*r15*r25**(-2)*r2d*r5d*gqr*s125 - gcoeff(aa12,hPr1,
     & hPl2,-1)*r15*r25**(-2)*r2d**2*gqr*s125 - 8.D0*gcoeff(aa12,hPr1,
     & hPl2,-1)*e1234*r15**(-1)*r25**(-2)*rd*gqr*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa12,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-2)*r2d*gqr
     & *imagunit*s125**(-1) + 8.D0*gcoeff(aa12,hPr1,hPl2,-1)*e1234*
     & r25**(-2)*rd*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(aa12,hPr1,
     & hPl2,-1)*e1234*r25**(-2)*r2d*gqr*imagunit*s125**(-1) + gcoeff(
     & aa22,hPl1,hPr2,-2)*r15**(-2)*rd**2*gql*s125 - gcoeff(aa22,hPl1,
     & hPr2,-2)*r15**(-2)*r5d*rd*gql*s125 - gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-2)*r2d*rd*gql*s125 + gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*
     & r2d*r5d*gql*s125
      e  = e  - 2.D0*gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r25*rd**2*gql*
     & s125 + gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r25*r5d*rd*gql*s125
     &  + 2.D0*gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r25*r2d*rd*gql*s125
     &  - gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r25*r2d*r5d*gql*s125 + 
     & gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r25*r1d*rd*gql*s125 - 
     & gcoeff(aa22,hPl1,hPr2,-2)*r15**(-2)*r25*r1d*r2d*gql*s125 - 
     & gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*rd**2*gql*s125 + 
     & gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + 
     & gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d*rd*gql*s125 - 
     & gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*gql*s125
     &  - gcoeff(aa22,hPl1,hPr2,-2)*r15**(-1)*r2d*rd*gql*s125 + gcoeff(
     & aa22,hPl1,hPr2,-2)*r15**(-1)*r2d**2*gql*s125 + gcoeff(aa22,hPl1,
     & hPr2,-2)*r15**(-1)*r1d*rd*gql*s125 - gcoeff(aa22,hPl1,hPr2,-2)*
     & r15**(-1)*r1d*r2d*gql*s125 + 2.D0*gcoeff(aa22,hPl1,hPr2,-2)*
     & r25**(-1)*rd**2*gql*s125 - gcoeff(aa22,hPl1,hPr2,-2)*r25**(-1)*
     & r5d*rd*gql*s125
      e  = e  - 3.D0*gcoeff(aa22,hPl1,hPr2,-2)*r25**(-1)*r2d*rd*gql*s125
     &  + gcoeff(aa22,hPl1,hPr2,-2)*r25**(-1)*r2d*r5d*gql*s125 + 
     & gcoeff(aa22,hPl1,hPr2,-2)*r25**(-1)*r2d**2*gql*s125 - 8.D0*
     & gcoeff(aa22,hPl1,hPr2,-2)*e1234*r15**(-2)*rd*gql*imagunit*
     & s125**(-1) + 8.D0*gcoeff(aa22,hPl1,hPr2,-2)*e1234*r15**(-2)*r2d*
     & gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa22,hPl1,hPr2,-2)*e1234*
     & r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa22,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-1)*r2d*gql*imagunit*
     & s125**(-1) + gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*rd**2
     & *gql*s125 - gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r5d*rd
     & *gql*s125 - gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r2d*rd
     & *gql*s125 + gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r2d*
     & r5d*gql*s125 - 3.D0*gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*rd**2*
     & gql*s125 + 2.D0*gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r5d*rd*gql*
     & s125 + 3.D0*gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r2d*rd*gql*s125
     &  - 2.D0*gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r2d*r5d*gql*s125
      e  = e  + gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r1d*rd*gql*s125 - 
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r1d*r2d*gql*s125 + 2.D0*
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r25*rd**2*gql*s125 - gcoeff(
     & aa22,hPl1,hPr2,-1)*r15**(-2)*r25*r5d*rd*gql*s125 - 2.D0*gcoeff(
     & aa22,hPl1,hPr2,-1)*r15**(-2)*r25*r2d*rd*gql*s125 + gcoeff(aa22,
     & hPl1,hPr2,-1)*r15**(-2)*r25*r2d*r5d*gql*s125 - gcoeff(aa22,hPl1,
     & hPr2,-1)*r15**(-2)*r25*r1d*rd*gql*s125 + gcoeff(aa22,hPl1,hPr2,
     & -1)*r15**(-2)*r25*r1d*r2d*gql*s125 - 2.D0*gcoeff(aa22,hPl1,hPr2,
     & -1)*r15**(-1)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa22,hPl1,hPr2,
     & -1)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + 3.D0*gcoeff(aa22,hPl1,
     & hPr2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gql*s125 - gcoeff(aa22,hPl1,
     & hPr2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gql*s125 - gcoeff(aa22,hPl1
     & ,hPr2,-1)*r15**(-1)*r25**(-1)*r2d**2*gql*s125 + 4.D0*gcoeff(aa22
     & ,hPl1,hPr2,-1)*r15**(-1)*rd**2*gql*s125 - gcoeff(aa22,hPl1,hPr2,
     & -1)*r15**(-1)*r5d*rd*gql*s125 - 5.D0*gcoeff(aa22,hPl1,hPr2,-1)*
     & r15**(-1)*r2d*rd*gql*s125
      e  = e  + gcoeff(aa22,hPl1,hPr2,-1)*r15**(-1)*r2d*r5d*gql*s125 + 
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-1)*r2d**2*gql*s125 - 2.D0*
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-1)*r1d*rd*gql*s125 + 2.D0*
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-1)*r1d*r2d*gql*s125 - 8.D0*
     & gcoeff(aa22,hPl1,hPr2,-1)*e1234*r15**(-2)*r25**(-1)*rd*gql*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa22,hPl1,hPr2,-1)*e1234*
     & r15**(-2)*r25**(-1)*r2d*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa22,hPl1,hPr2,-1)*e1234*r15**(-2)*rd*gql*imagunit*s125**(-1) - 
     & 8.D0*gcoeff(aa22,hPl1,hPr2,-1)*e1234*r15**(-2)*r2d*gql*imagunit*
     & s125**(-1) + gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*rd**2*gqr*s125
     &  - gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*r5d*rd*gqr*s125 - gcoeff(
     & aa22,hPr1,hPl2,-2)*r15**(-2)*r2d*rd*gqr*s125 + gcoeff(aa22,hPr1,
     & hPl2,-2)*r15**(-2)*r2d*r5d*gqr*s125 - 2.D0*gcoeff(aa22,hPr1,hPl2
     & ,-2)*r15**(-2)*r25*rd**2*gqr*s125 + gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r5d*rd*gqr*s125 + 2.D0*gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r2d*rd*gqr*s125
      e  = e  - gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*r25*r2d*r5d*gqr*s125
     &  + gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*r25*r1d*rd*gqr*s125 - 
     & gcoeff(aa22,hPr1,hPl2,-2)*r15**(-2)*r25*r1d*r2d*gqr*s125 - 
     & gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 + 
     & gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 + 
     & gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*rd*gqr*s125 - 
     & gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*gqr*s125
     &  - gcoeff(aa22,hPr1,hPl2,-2)*r15**(-1)*r2d*rd*gqr*s125 + gcoeff(
     & aa22,hPr1,hPl2,-2)*r15**(-1)*r2d**2*gqr*s125 + gcoeff(aa22,hPr1,
     & hPl2,-2)*r15**(-1)*r1d*rd*gqr*s125 - gcoeff(aa22,hPr1,hPl2,-2)*
     & r15**(-1)*r1d*r2d*gqr*s125 + 2.D0*gcoeff(aa22,hPr1,hPl2,-2)*
     & r25**(-1)*rd**2*gqr*s125 - gcoeff(aa22,hPr1,hPl2,-2)*r25**(-1)*
     & r5d*rd*gqr*s125 - 3.D0*gcoeff(aa22,hPr1,hPl2,-2)*r25**(-1)*r2d*
     & rd*gqr*s125 + gcoeff(aa22,hPr1,hPl2,-2)*r25**(-1)*r2d*r5d*gqr*
     & s125 + gcoeff(aa22,hPr1,hPl2,-2)*r25**(-1)*r2d**2*gqr*s125 + 8.D0
     & *gcoeff(aa22,hPr1,hPl2,-2)*e1234*r15**(-2)*rd*gqr*imagunit*
     & s125**(-1)
      e  = e  - 8.D0*gcoeff(aa22,hPr1,hPl2,-2)*e1234*r15**(-2)*r2d*gqr*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa22,hPr1,hPl2,-2)*e1234*
     & r15**(-1)*r25**(-1)*rd*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa22,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-1)*r2d*gqr*imagunit*
     & s125**(-1) + gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*rd**2
     & *gqr*s125 - gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*r5d*rd
     & *gqr*s125 - gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*r2d*rd
     & *gqr*s125 + gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*r2d*
     & r5d*gqr*s125 - 3.D0*gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*rd**2*
     & gqr*s125 + 2.D0*gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r5d*rd*gqr*
     & s125 + 3.D0*gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r2d*rd*gqr*s125
     &  - 2.D0*gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r2d*r5d*gqr*s125 + 
     & gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r1d*rd*gqr*s125 - gcoeff(
     & aa22,hPr1,hPl2,-1)*r15**(-2)*r1d*r2d*gqr*s125 + 2.D0*gcoeff(aa22
     & ,hPr1,hPl2,-1)*r15**(-2)*r25*rd**2*gqr*s125 - gcoeff(aa22,hPr1,
     & hPl2,-1)*r15**(-2)*r25*r5d*rd*gqr*s125
      e  = e  - 2.D0*gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r25*r2d*rd*gqr*
     & s125 + gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r25*r2d*r5d*gqr*s125
     &  - gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r25*r1d*rd*gqr*s125 + 
     & gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r25*r1d*r2d*gqr*s125 - 2.D0*
     & gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 + 
     & gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 + 
     & 3.D0*gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gqr*
     & s125 - gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gqr
     & *s125 - gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d**2*gqr
     & *s125 + 4.D0*gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*rd**2*gqr*s125
     &  - gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r5d*rd*gqr*s125 - 5.D0*
     & gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r2d*rd*gqr*s125 + gcoeff(
     & aa22,hPr1,hPl2,-1)*r15**(-1)*r2d*r5d*gqr*s125 + gcoeff(aa22,hPr1
     & ,hPl2,-1)*r15**(-1)*r2d**2*gqr*s125 - 2.D0*gcoeff(aa22,hPr1,hPl2
     & ,-1)*r15**(-1)*r1d*rd*gqr*s125 + 2.D0*gcoeff(aa22,hPr1,hPl2,-1)*
     & r15**(-1)*r1d*r2d*gqr*s125
      e  = e  + 8.D0*gcoeff(aa22,hPr1,hPl2,-1)*e1234*r15**(-2)*r25**(-1)*
     & rd*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(aa22,hPr1,hPl2,-1)*
     & e1234*r15**(-2)*r25**(-1)*r2d*gqr*imagunit*s125**(-1) - 8.D0*
     & gcoeff(aa22,hPr1,hPl2,-1)*e1234*r15**(-2)*rd*gqr*imagunit*
     & s125**(-1) + 8.D0*gcoeff(aa22,hPr1,hPl2,-1)*e1234*r15**(-2)*r2d*
     & gqr*imagunit*s125**(-1) + gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*
     & rd**2*gql*s125 - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r5d*rd*gql*
     & s125 - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r1d*rd*gql*s125 + 
     & gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r1d*r5d*gql*s125 - 2.D0*
     & gcoeff(aa21,hPl1,hPr2,-2)*r15**(-2)*r25*rd**2*gql*s125 + gcoeff(
     & aa21,hPl1,hPr2,-2)*r15**(-2)*r25*r5d*rd*gql*s125 + 3.D0*gcoeff(
     & aa21,hPl1,hPr2,-2)*r15**(-2)*r25*r1d*rd*gql*s125 - gcoeff(aa21,
     & hPl1,hPr2,-2)*r15**(-2)*r25*r1d*r5d*gql*s125 - gcoeff(aa21,hPl1,
     & hPr2,-2)*r15**(-2)*r25*r1d**2*gql*s125 - gcoeff(aa21,hPl1,hPr2,
     & -2)*r15**(-1)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa21,hPl1,hPr2,
     & -2)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125
      e  = e  + gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*rd*gql*
     & s125 - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*r5d*gql
     & *s125 - gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r2d*rd*gql*s125 + 
     & gcoeff(aa21,hPl1,hPr2,-2)*r15**(-1)*r1d*rd*gql*s125 + gcoeff(
     & aa21,hPl1,hPr2,-2)*r15**(-1)*r1d*r2d*gql*s125 - gcoeff(aa21,hPl1
     & ,hPr2,-2)*r15**(-1)*r1d**2*gql*s125 + 2.D0*gcoeff(aa21,hPl1,hPr2
     & ,-2)*r25**(-1)*rd**2*gql*s125 - gcoeff(aa21,hPl1,hPr2,-2)*
     & r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa21,hPl1,hPr2,-2)*r25**(-1)*
     & r2d*rd*gql*s125 - 2.D0*gcoeff(aa21,hPl1,hPr2,-2)*r25**(-1)*r1d*
     & rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,-2)*r25**(-1)*r1d*r5d*gql*
     & s125 + gcoeff(aa21,hPl1,hPr2,-2)*r25**(-1)*r1d*r2d*gql*s125 - 8.D
     & 0*gcoeff(aa21,hPl1,hPr2,-2)*e1234*r15**(-2)*rd*gql*imagunit*
     & s125**(-1) + 8.D0*gcoeff(aa21,hPl1,hPr2,-2)*e1234*r15**(-2)*r1d*
     & gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa21,hPl1,hPr2,-2)*e1234*
     & r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa21,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-1)*r1d*gql*imagunit*
     & s125**(-1)
      e  = e  + gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*rd**2*gql*
     & s125 - gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r5d*rd*gql*
     & s125 - gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r1d*rd*gql*
     & s125 + gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r1d*r5d*gql
     & *s125 - 3.D0*gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*rd**2*gql*s125
     &  + 2.D0*gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*r5d*rd*gql*s125 + 4.D
     & 0*gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*r1d*rd*gql*s125 - 2.D0*
     & gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*r1d*r5d*gql*s125 - gcoeff(
     & aa21,hPl1,hPr2,-1)*r15**(-2)*r1d**2*gql*s125 + 2.D0*gcoeff(aa21,
     & hPl1,hPr2,-1)*r15**(-2)*r25*rd**2*gql*s125 - gcoeff(aa21,hPl1,
     & hPr2,-1)*r15**(-2)*r25*r5d*rd*gql*s125 - 3.D0*gcoeff(aa21,hPl1,
     & hPr2,-1)*r15**(-2)*r25*r1d*rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,
     & -1)*r15**(-2)*r25*r1d*r5d*gql*s125 + gcoeff(aa21,hPl1,hPr2,-1)*
     & r15**(-2)*r25*r1d**2*gql*s125 - 2.D0*gcoeff(aa21,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa21,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*r5d*rd*gql*s125
      e  = e  + gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gql*
     & s125 + 2.D0*gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*rd
     & *gql*s125 - gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*
     & r5d*gql*s125 - gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d
     & *r2d*gql*s125 + 4.D0*gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*rd**2*
     & gql*s125 - gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*r5d*rd*gql*s125
     &  - gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*r2d*rd*gql*s125 - 6.D0*
     & gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*r1d*rd*gql*s125 + gcoeff(
     & aa21,hPl1,hPr2,-1)*r15**(-1)*r1d*r5d*gql*s125 + gcoeff(aa21,hPl1
     & ,hPr2,-1)*r15**(-1)*r1d*r2d*gql*s125 + 2.D0*gcoeff(aa21,hPl1,
     & hPr2,-1)*r15**(-1)*r1d**2*gql*s125 - 8.D0*gcoeff(aa21,hPl1,hPr2,
     & -1)*e1234*r15**(-2)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 8.D0*
     & gcoeff(aa21,hPl1,hPr2,-1)*e1234*r15**(-2)*r25**(-1)*r1d*gql*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa21,hPl1,hPr2,-1)*e1234*
     & r15**(-2)*rd*gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa21,hPl1,
     & hPr2,-1)*e1234*r15**(-2)*r1d*gql*imagunit*s125**(-1)
      e  = e  + gcoeff(aa21,hPr1,hPl2,-2)*r15**(-2)*rd**2*gqr*s125 - 
     & gcoeff(aa21,hPr1,hPl2,-2)*r15**(-2)*r5d*rd*gqr*s125 - gcoeff(
     & aa21,hPr1,hPl2,-2)*r15**(-2)*r1d*rd*gqr*s125 + gcoeff(aa21,hPr1,
     & hPl2,-2)*r15**(-2)*r1d*r5d*gqr*s125 - 2.D0*gcoeff(aa21,hPr1,hPl2
     & ,-2)*r15**(-2)*r25*rd**2*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r5d*rd*gqr*s125 + 3.D0*gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r1d*rd*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r1d*r5d*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-2)*r25*r1d**2*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*r1d*rd*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*r1d*r5d*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-2)
     & *r15**(-1)*r2d*rd*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)
     & *r1d*rd*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)*r1d*r2d*
     & gqr*s125
      e  = e  - gcoeff(aa21,hPr1,hPl2,-2)*r15**(-1)*r1d**2*gqr*s125 + 2.D0
     & *gcoeff(aa21,hPr1,hPl2,-2)*r25**(-1)*rd**2*gqr*s125 - gcoeff(
     & aa21,hPr1,hPl2,-2)*r25**(-1)*r5d*rd*gqr*s125 - gcoeff(aa21,hPr1,
     & hPl2,-2)*r25**(-1)*r2d*rd*gqr*s125 - 2.D0*gcoeff(aa21,hPr1,hPl2,
     & -2)*r25**(-1)*r1d*rd*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*
     & r25**(-1)*r1d*r5d*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-2)*r25**(-1)
     & *r1d*r2d*gqr*s125 + 8.D0*gcoeff(aa21,hPr1,hPl2,-2)*e1234*
     & r15**(-2)*rd*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(aa21,hPr1,
     & hPl2,-2)*e1234*r15**(-2)*r1d*gqr*imagunit*s125**(-1) + 8.D0*
     & gcoeff(aa21,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-1)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa21,hPr1,hPl2,-2)*e1234*
     & r15**(-1)*r25**(-1)*r1d*gqr*imagunit*s125**(-1) + gcoeff(aa21,
     & hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*rd**2*gqr*s125 - gcoeff(aa21,
     & hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*r5d*rd*gqr*s125 - gcoeff(aa21,
     & hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*r1d*rd*gqr*s125 + gcoeff(aa21,
     & hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*r1d*r5d*gqr*s125
      e  = e  - 3.D0*gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*rd**2*gqr*s125
     &  + 2.D0*gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r5d*rd*gqr*s125 + 4.D
     & 0*gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r1d*rd*gqr*s125 - 2.D0*
     & gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r1d*r5d*gqr*s125 - gcoeff(
     & aa21,hPr1,hPl2,-1)*r15**(-2)*r1d**2*gqr*s125 + 2.D0*gcoeff(aa21,
     & hPr1,hPl2,-1)*r15**(-2)*r25*rd**2*gqr*s125 - gcoeff(aa21,hPr1,
     & hPl2,-1)*r15**(-2)*r25*r5d*rd*gqr*s125 - 3.D0*gcoeff(aa21,hPr1,
     & hPl2,-1)*r15**(-2)*r25*r1d*rd*gqr*s125 + gcoeff(aa21,hPr1,hPl2,
     & -1)*r15**(-2)*r25*r1d*r5d*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-1)*
     & r15**(-2)*r25*r1d**2*gqr*s125 - 2.D0*gcoeff(aa21,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*r2d*rd*gqr*s125 + 2.D0*gcoeff(aa21,hPr1,hPl2
     & ,-1)*r15**(-1)*r25**(-1)*r1d*rd*gqr*s125 - gcoeff(aa21,hPr1,hPl2
     & ,-1)*r15**(-1)*r25**(-1)*r1d*r5d*gqr*s125 - gcoeff(aa21,hPr1,
     & hPl2,-1)*r15**(-1)*r25**(-1)*r1d*r2d*gqr*s125
      e  = e  + 4.D0*gcoeff(aa21,hPr1,hPl2,-1)*r15**(-1)*rd**2*gqr*s125
     &  - gcoeff(aa21,hPr1,hPl2,-1)*r15**(-1)*r5d*rd*gqr*s125 - gcoeff(
     & aa21,hPr1,hPl2,-1)*r15**(-1)*r2d*rd*gqr*s125 - 6.D0*gcoeff(aa21,
     & hPr1,hPl2,-1)*r15**(-1)*r1d*rd*gqr*s125 + gcoeff(aa21,hPr1,hPl2,
     & -1)*r15**(-1)*r1d*r5d*gqr*s125 + gcoeff(aa21,hPr1,hPl2,-1)*
     & r15**(-1)*r1d*r2d*gqr*s125 + 2.D0*gcoeff(aa21,hPr1,hPl2,-1)*
     & r15**(-1)*r1d**2*gqr*s125 + 8.D0*gcoeff(aa21,hPr1,hPl2,-1)*e1234
     & *r15**(-2)*r25**(-1)*rd*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa21,hPr1,hPl2,-1)*e1234*r15**(-2)*r25**(-1)*r1d*gqr*imagunit*
     & s125**(-1) - 8.D0*gcoeff(aa21,hPr1,hPl2,-1)*e1234*r15**(-2)*rd*
     & gqr*imagunit*s125**(-1) + 8.D0*gcoeff(aa21,hPr1,hPl2,-1)*e1234*
     & r15**(-2)*r1d*gqr*imagunit*s125**(-1) - gcoeff(aa15,hPl1,hPr2,-2
     & )*r15**(-1)*r25**(-1)*rd**2*gql*s125 + 2.D0*gcoeff(aa15,hPl1,
     & hPr2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa15,hPl1,
     & hPr2,-2)*r15**(-1)*r25**(-1)*r5d**2*gql*s125 + 2.D0*gcoeff(aa15,
     & hPl1,hPr2,-2)*r15**(-1)*rd**2*gql*s125
      e  = e  - 3.D0*gcoeff(aa15,hPl1,hPr2,-2)*r15**(-1)*r5d*rd*gql*s125
     &  + gcoeff(aa15,hPl1,hPr2,-2)*r15**(-1)*r5d**2*gql*s125 - gcoeff(
     & aa15,hPl1,hPr2,-2)*r15**(-1)*r1d*rd*gql*s125 + gcoeff(aa15,hPl1,
     & hPr2,-2)*r15**(-1)*r1d*r5d*gql*s125 + gcoeff(aa15,hPl1,hPr2,-2)*
     & r25**(-2)*rd**2*gql*s125 - 2.D0*gcoeff(aa15,hPl1,hPr2,-2)*
     & r25**(-2)*r5d*rd*gql*s125 + gcoeff(aa15,hPl1,hPr2,-2)*r25**(-2)*
     & r5d**2*gql*s125 + gcoeff(aa15,hPl1,hPr2,-2)*r25**(-1)*r2d*rd*gql
     & *s125 - gcoeff(aa15,hPl1,hPr2,-2)*r25**(-1)*r2d*r5d*gql*s125 - 
     & gcoeff(aa15,hPl1,hPr2,-2)*r25**(-1)*r1d*rd*gql*s125 + gcoeff(
     & aa15,hPl1,hPr2,-2)*r25**(-1)*r1d*r5d*gql*s125 - 2.D0*gcoeff(aa15
     & ,hPl1,hPr2,-2)*r15*r25**(-2)*rd**2*gql*s125 + 3.D0*gcoeff(aa15,
     & hPl1,hPr2,-2)*r15*r25**(-2)*r5d*rd*gql*s125 - gcoeff(aa15,hPl1,
     & hPr2,-2)*r15*r25**(-2)*r5d**2*gql*s125 + gcoeff(aa15,hPl1,hPr2,
     & -2)*r15*r25**(-2)*r2d*rd*gql*s125 - gcoeff(aa15,hPl1,hPr2,-2)*
     & r15*r25**(-2)*r2d*r5d*gql*s125 + 8.D0*gcoeff(aa15,hPl1,hPr2,-2)*
     & e1234*r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1)
      e  = e  - 8.D0*gcoeff(aa15,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-1)*
     & r5d*gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa15,hPl1,hPr2,-2)*
     & e1234*r25**(-2)*rd*gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa15,
     & hPl1,hPr2,-2)*e1234*r25**(-2)*r5d*gql*imagunit*s125**(-1) + 
     & gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*rd**2*gql*s125 - 2.
     & D0*gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r5d*rd*gql*s125
     &  + gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r5d**2*gql*s125
     &  - 2.D0*gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*rd**2*gql*
     & s125 + 3.D0*gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r5d*rd
     & *gql*s125 - gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r5d**2
     & *gql*s125 + gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*rd
     & *gql*s125 - gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*
     & r5d*gql*s125 - 3.D0*gcoeff(aa15,hPl1,hPr2,-1)*r25**(-2)*rd**2*
     & gql*s125 + 5.D0*gcoeff(aa15,hPl1,hPr2,-1)*r25**(-2)*r5d*rd*gql*
     & s125 - 2.D0*gcoeff(aa15,hPl1,hPr2,-1)*r25**(-2)*r5d**2*gql*s125
     &  + gcoeff(aa15,hPl1,hPr2,-1)*r25**(-2)*r2d*rd*gql*s125
      e  = e  - gcoeff(aa15,hPl1,hPr2,-1)*r25**(-2)*r2d*r5d*gql*s125 + 4.D
     & 0*gcoeff(aa15,hPl1,hPr2,-1)*r25**(-1)*rd**2*gql*s125 - 5.D0*
     & gcoeff(aa15,hPl1,hPr2,-1)*r25**(-1)*r5d*rd*gql*s125 + gcoeff(
     & aa15,hPl1,hPr2,-1)*r25**(-1)*r5d**2*gql*s125 - 2.D0*gcoeff(aa15,
     & hPl1,hPr2,-1)*r25**(-1)*r2d*rd*gql*s125 + 2.D0*gcoeff(aa15,hPl1,
     & hPr2,-1)*r25**(-1)*r2d*r5d*gql*s125 - gcoeff(aa15,hPl1,hPr2,-1)*
     & r25**(-1)*r1d*rd*gql*s125 + gcoeff(aa15,hPl1,hPr2,-1)*r25**(-1)*
     & r1d*r5d*gql*s125 + 2.D0*gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*
     & rd**2*gql*s125 - 3.D0*gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*
     & r5d*rd*gql*s125 + gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*r5d**2
     & *gql*s125 - gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*r2d*rd*gql*
     & s125 + gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*r2d*r5d*gql*s125
     &  - 8.D0*gcoeff(aa15,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-2)*rd*
     & gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa15,hPl1,hPr2,-1)*e1234*
     & r15**(-1)*r25**(-2)*r5d*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa15,hPl1,hPr2,-1)*e1234*r25**(-2)*rd*gql*imagunit*s125**(-1)
      e  = e  - 8.D0*gcoeff(aa15,hPl1,hPr2,-1)*e1234*r25**(-2)*r5d*gql*
     & imagunit*s125**(-1) - gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*
     & r25**(-1)*rd**2*gqr*s125 + 2.D0*gcoeff(aa15,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 - gcoeff(aa15,hPr1,hPl2,-2)*
     & r15**(-1)*r25**(-1)*r5d**2*gqr*s125 + 2.D0*gcoeff(aa15,hPr1,hPl2
     & ,-2)*r15**(-1)*rd**2*gqr*s125 - 3.D0*gcoeff(aa15,hPr1,hPl2,-2)*
     & r15**(-1)*r5d*rd*gqr*s125 + gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*
     & r5d**2*gqr*s125 - gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*r1d*rd*gqr
     & *s125 + gcoeff(aa15,hPr1,hPl2,-2)*r15**(-1)*r1d*r5d*gqr*s125 + 
     & gcoeff(aa15,hPr1,hPl2,-2)*r25**(-2)*rd**2*gqr*s125 - 2.D0*
     & gcoeff(aa15,hPr1,hPl2,-2)*r25**(-2)*r5d*rd*gqr*s125 + gcoeff(
     & aa15,hPr1,hPl2,-2)*r25**(-2)*r5d**2*gqr*s125 + gcoeff(aa15,hPr1,
     & hPl2,-2)*r25**(-1)*r2d*rd*gqr*s125 - gcoeff(aa15,hPr1,hPl2,-2)*
     & r25**(-1)*r2d*r5d*gqr*s125 - gcoeff(aa15,hPr1,hPl2,-2)*r25**(-1)
     & *r1d*rd*gqr*s125 + gcoeff(aa15,hPr1,hPl2,-2)*r25**(-1)*r1d*r5d*
     & gqr*s125
      e  = e  - 2.D0*gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*rd**2*gqr*
     & s125 + 3.D0*gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*r5d*rd*gqr*
     & s125 - gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*r5d**2*gqr*s125
     &  + gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*r2d*rd*gqr*s125 - 
     & gcoeff(aa15,hPr1,hPl2,-2)*r15*r25**(-2)*r2d*r5d*gqr*s125 - 8.D0*
     & gcoeff(aa15,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-1)*rd*gqr*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa15,hPr1,hPl2,-2)*e1234*
     & r15**(-1)*r25**(-1)*r5d*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa15,hPr1,hPl2,-2)*e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa15,hPr1,hPl2,-2)*e1234*r25**(-2)*r5d*gqr*imagunit*
     & s125**(-1) + gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*rd**2
     & *gqr*s125 - 2.D0*gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*
     & r5d*rd*gqr*s125 + gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*
     & r5d**2*gqr*s125 - 2.D0*gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-1)*rd**2*gqr*s125 + 3.D0*gcoeff(aa15,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
      e  = e  - gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d**2*gqr*
     & s125 + gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*rd*gqr*
     & s125 - gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*r5d*gqr
     & *s125 - 3.D0*gcoeff(aa15,hPr1,hPl2,-1)*r25**(-2)*rd**2*gqr*s125
     &  + 5.D0*gcoeff(aa15,hPr1,hPl2,-1)*r25**(-2)*r5d*rd*gqr*s125 - 2.D
     & 0*gcoeff(aa15,hPr1,hPl2,-1)*r25**(-2)*r5d**2*gqr*s125 + gcoeff(
     & aa15,hPr1,hPl2,-1)*r25**(-2)*r2d*rd*gqr*s125 - gcoeff(aa15,hPr1,
     & hPl2,-1)*r25**(-2)*r2d*r5d*gqr*s125 + 4.D0*gcoeff(aa15,hPr1,hPl2
     & ,-1)*r25**(-1)*rd**2*gqr*s125 - 5.D0*gcoeff(aa15,hPr1,hPl2,-1)*
     & r25**(-1)*r5d*rd*gqr*s125 + gcoeff(aa15,hPr1,hPl2,-1)*r25**(-1)*
     & r5d**2*gqr*s125 - 2.D0*gcoeff(aa15,hPr1,hPl2,-1)*r25**(-1)*r2d*
     & rd*gqr*s125 + 2.D0*gcoeff(aa15,hPr1,hPl2,-1)*r25**(-1)*r2d*r5d*
     & gqr*s125 - gcoeff(aa15,hPr1,hPl2,-1)*r25**(-1)*r1d*rd*gqr*s125
     &  + gcoeff(aa15,hPr1,hPl2,-1)*r25**(-1)*r1d*r5d*gqr*s125 + 2.D0*
     & gcoeff(aa15,hPr1,hPl2,-1)*r15*r25**(-2)*rd**2*gqr*s125 - 3.D0*
     & gcoeff(aa15,hPr1,hPl2,-1)*r15*r25**(-2)*r5d*rd*gqr*s125
      e  = e  + gcoeff(aa15,hPr1,hPl2,-1)*r15*r25**(-2)*r5d**2*gqr*s125
     &  - gcoeff(aa15,hPr1,hPl2,-1)*r15*r25**(-2)*r2d*rd*gqr*s125 + 
     & gcoeff(aa15,hPr1,hPl2,-1)*r15*r25**(-2)*r2d*r5d*gqr*s125 + 8.D0*
     & gcoeff(aa15,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-2)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa15,hPr1,hPl2,-1)*e1234*
     & r15**(-1)*r25**(-2)*r5d*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa15,hPr1,hPl2,-1)*e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa15,hPr1,hPl2,-1)*e1234*r25**(-2)*r5d*gqr*imagunit*
     & s125**(-1) - gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*rd**2*gql*s125
     &  + 2.D0*gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r5d*rd*gql*s125 - 
     & gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r5d**2*gql*s125 + 2.D0*
     & gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r25*rd**2*gql*s125 - 3.D0*
     & gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r25*r5d*rd*gql*s125 + 
     & gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r25*r5d**2*gql*s125 - 
     & gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r25*r1d*rd*gql*s125 + 
     & gcoeff(aa25,hPl1,hPr2,-2)*r15**(-2)*r25*r1d*r5d*gql*s125
      e  = e  + gcoeff(aa25,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*rd**2*gql*
     & s125 - 2.D0*gcoeff(aa25,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d*rd
     & *gql*s125 + gcoeff(aa25,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d**2
     & *gql*s125 + gcoeff(aa25,hPl1,hPr2,-2)*r15**(-1)*r2d*rd*gql*s125
     &  - gcoeff(aa25,hPl1,hPr2,-2)*r15**(-1)*r2d*r5d*gql*s125 - 
     & gcoeff(aa25,hPl1,hPr2,-2)*r15**(-1)*r1d*rd*gql*s125 + gcoeff(
     & aa25,hPl1,hPr2,-2)*r15**(-1)*r1d*r5d*gql*s125 - 2.D0*gcoeff(aa25
     & ,hPl1,hPr2,-2)*r25**(-1)*rd**2*gql*s125 + 3.D0*gcoeff(aa25,hPl1,
     & hPr2,-2)*r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,-2)*
     & r25**(-1)*r5d**2*gql*s125 + gcoeff(aa25,hPl1,hPr2,-2)*r25**(-1)*
     & r2d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,-2)*r25**(-1)*r2d*r5d*
     & gql*s125 + 8.D0*gcoeff(aa25,hPl1,hPr2,-2)*e1234*r15**(-2)*rd*gql
     & *imagunit*s125**(-1) - 8.D0*gcoeff(aa25,hPl1,hPr2,-2)*e1234*
     & r15**(-2)*r5d*gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa25,hPl1,
     & hPr2,-2)*e1234*r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1) - 
     & 8.D0*gcoeff(aa25,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-1)*r5d*gql
     & *imagunit*s125**(-1)
      e  = e  - gcoeff(aa25,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*rd**2*gql*
     & s125 + 2.D0*gcoeff(aa25,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r5d*rd
     & *gql*s125 - gcoeff(aa25,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r5d**2
     & *gql*s125 + 3.D0*gcoeff(aa25,hPl1,hPr2,-1)*r15**(-2)*rd**2*gql*
     & s125 - 5.D0*gcoeff(aa25,hPl1,hPr2,-1)*r15**(-2)*r5d*rd*gql*s125
     &  + 2.D0*gcoeff(aa25,hPl1,hPr2,-1)*r15**(-2)*r5d**2*gql*s125 - 
     & gcoeff(aa25,hPl1,hPr2,-1)*r15**(-2)*r1d*rd*gql*s125 + gcoeff(
     & aa25,hPl1,hPr2,-1)*r15**(-2)*r1d*r5d*gql*s125 - 2.D0*gcoeff(aa25
     & ,hPl1,hPr2,-1)*r15**(-2)*r25*rd**2*gql*s125 + 3.D0*gcoeff(aa25,
     & hPl1,hPr2,-1)*r15**(-2)*r25*r5d*rd*gql*s125 - gcoeff(aa25,hPl1,
     & hPr2,-1)*r15**(-2)*r25*r5d**2*gql*s125 + gcoeff(aa25,hPl1,hPr2,
     & -1)*r15**(-2)*r25*r1d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,-1)*
     & r15**(-2)*r25*r1d*r5d*gql*s125 + 2.D0*gcoeff(aa25,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 - 3.D0*gcoeff(aa25,hPl1,hPr2,
     & -1)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + gcoeff(aa25,hPl1,hPr2,
     & -1)*r15**(-1)*r25**(-1)*r5d**2*gql*s125
      e  = e  - gcoeff(aa25,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gql*
     & s125 + gcoeff(aa25,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gql
     & *s125 - 4.D0*gcoeff(aa25,hPl1,hPr2,-1)*r15**(-1)*rd**2*gql*s125
     &  + 5.D0*gcoeff(aa25,hPl1,hPr2,-1)*r15**(-1)*r5d*rd*gql*s125 - 
     & gcoeff(aa25,hPl1,hPr2,-1)*r15**(-1)*r5d**2*gql*s125 + gcoeff(
     & aa25,hPl1,hPr2,-1)*r15**(-1)*r2d*rd*gql*s125 - gcoeff(aa25,hPl1,
     & hPr2,-1)*r15**(-1)*r2d*r5d*gql*s125 + 2.D0*gcoeff(aa25,hPl1,hPr2
     & ,-1)*r15**(-1)*r1d*rd*gql*s125 - 2.D0*gcoeff(aa25,hPl1,hPr2,-1)*
     & r15**(-1)*r1d*r5d*gql*s125 + 8.D0*gcoeff(aa25,hPl1,hPr2,-1)*
     & e1234*r15**(-2)*r25**(-1)*rd*gql*imagunit*s125**(-1) - 8.D0*
     & gcoeff(aa25,hPl1,hPr2,-1)*e1234*r15**(-2)*r25**(-1)*r5d*gql*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa25,hPl1,hPr2,-1)*e1234*
     & r15**(-2)*rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa25,hPl1,
     & hPr2,-1)*e1234*r15**(-2)*r5d*gql*imagunit*s125**(-1) - gcoeff(
     & aa25,hPr1,hPl2,-2)*r15**(-2)*rd**2*gqr*s125 + 2.D0*gcoeff(aa25,
     & hPr1,hPl2,-2)*r15**(-2)*r5d*rd*gqr*s125
      e  = e  - gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r5d**2*gqr*s125 + 2.D0
     & *gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*rd**2*gqr*s125 - 3.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*r5d*rd*gqr*s125 + 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*r5d**2*gqr*s125 - 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*r1d*rd*gqr*s125 + 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-2)*r25*r1d*r5d*gqr*s125 + 
     & gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 - 2.
     & D0*gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
     &  + gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d**2*gqr*s125
     &  + gcoeff(aa25,hPr1,hPl2,-2)*r15**(-1)*r2d*rd*gqr*s125 - gcoeff(
     & aa25,hPr1,hPl2,-2)*r15**(-1)*r2d*r5d*gqr*s125 - gcoeff(aa25,hPr1
     & ,hPl2,-2)*r15**(-1)*r1d*rd*gqr*s125 + gcoeff(aa25,hPr1,hPl2,-2)*
     & r15**(-1)*r1d*r5d*gqr*s125 - 2.D0*gcoeff(aa25,hPr1,hPl2,-2)*
     & r25**(-1)*rd**2*gqr*s125 + 3.D0*gcoeff(aa25,hPr1,hPl2,-2)*
     & r25**(-1)*r5d*rd*gqr*s125 - gcoeff(aa25,hPr1,hPl2,-2)*r25**(-1)*
     & r5d**2*gqr*s125
      e  = e  + gcoeff(aa25,hPr1,hPl2,-2)*r25**(-1)*r2d*rd*gqr*s125 - 
     & gcoeff(aa25,hPr1,hPl2,-2)*r25**(-1)*r2d*r5d*gqr*s125 - 8.D0*
     & gcoeff(aa25,hPr1,hPl2,-2)*e1234*r15**(-2)*rd*gqr*imagunit*
     & s125**(-1) + 8.D0*gcoeff(aa25,hPr1,hPl2,-2)*e1234*r15**(-2)*r5d*
     & gqr*imagunit*s125**(-1) - 8.D0*gcoeff(aa25,hPr1,hPl2,-2)*e1234*
     & r15**(-1)*r25**(-1)*rd*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa25,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-1)*r5d*gqr*imagunit*
     & s125**(-1) - gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*rd**2
     & *gqr*s125 + 2.D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*
     & r5d*rd*gqr*s125 - gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25**(-1)*
     & r5d**2*gqr*s125 + 3.D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*rd**2
     & *gqr*s125 - 5.D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r5d*rd*gqr*
     & s125 + 2.D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r5d**2*gqr*s125
     &  - gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r1d*rd*gqr*s125 + gcoeff(
     & aa25,hPr1,hPl2,-1)*r15**(-2)*r1d*r5d*gqr*s125 - 2.D0*gcoeff(aa25
     & ,hPr1,hPl2,-1)*r15**(-2)*r25*rd**2*gqr*s125
      e  = e  + 3.D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25*r5d*rd*gqr*
     & s125 - gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25*r5d**2*gqr*s125
     &  + gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25*r1d*rd*gqr*s125 - 
     & gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25*r1d*r5d*gqr*s125 + 2.D0*
     & gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 - 3.
     & D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
     &  + gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d**2*gqr*s125
     &  - gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gqr*s125
     &  + gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gqr*
     & s125 - 4.D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*rd**2*gqr*s125
     &  + 5.D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r5d*rd*gqr*s125 - 
     & gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r5d**2*gqr*s125 + gcoeff(
     & aa25,hPr1,hPl2,-1)*r15**(-1)*r2d*rd*gqr*s125 - gcoeff(aa25,hPr1,
     & hPl2,-1)*r15**(-1)*r2d*r5d*gqr*s125 + 2.D0*gcoeff(aa25,hPr1,hPl2
     & ,-1)*r15**(-1)*r1d*rd*gqr*s125 - 2.D0*gcoeff(aa25,hPr1,hPl2,-1)*
     & r15**(-1)*r1d*r5d*gqr*s125
      e  = e  - 8.D0*gcoeff(aa25,hPr1,hPl2,-1)*e1234*r15**(-2)*r25**(-1)*
     & rd*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(aa25,hPr1,hPl2,-1)*
     & e1234*r15**(-2)*r25**(-1)*r5d*gqr*imagunit*s125**(-1) + 8.D0*
     & gcoeff(aa25,hPr1,hPl2,-1)*e1234*r15**(-2)*rd*gqr*imagunit*
     & s125**(-1) - 8.D0*gcoeff(aa25,hPr1,hPl2,-1)*e1234*r15**(-2)*r5d*
     & gqr*imagunit*s125**(-1) + 8.D0*gcoeff(bb0,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*rd*gql*s125 - 12.D0*gcoeff(bb0,hPl1,hPr2,-1)
     & *r15**(-1)*r25**(-1)*rd**2*gql*s125 + 4.D0*gcoeff(bb0,hPl1,hPr2,
     & -1)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + 10.D0*gcoeff(bb0,hPl1,
     & hPr2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gql*s125 - 2.D0*gcoeff(bb0,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gql*s125 + 10.D0*
     & gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*rd*gql*s125 - 2.
     & D0*gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*r5d*gql*s125
     &  - 8.D0*gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*r2d*gql
     & *s125 - 12.D0*gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*rd*gql*s125 + 
     & 12.D0*gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*rd**2*gql*s125
      e  = e  - 4.D0*gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r5d*rd*gql*s125
     &  - 8.D0*gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r2d*rd*gql*s125 + 2.D0
     & *gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r2d*r5d*gql*s125 - 12.D0*
     & gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r1d*rd*gql*s125 + 2.D0*
     & gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r1d*r5d*gql*s125 + 6.D0*
     & gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r1d*r2d*gql*s125 + 2.D0*
     & gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r1d**2*gql*s125 + 4.D0*
     & gcoeff(bb0,hPl1,hPr2,-1)*r15**(-1)*r25*rd*gql*s125 - 12.D0*
     & gcoeff(bb0,hPl1,hPr2,-1)*r25**(-1)*rd*gql*s125 + 12.D0*gcoeff(
     & bb0,hPl1,hPr2,-1)*r25**(-1)*rd**2*gql*s125 - 4.D0*gcoeff(bb0,
     & hPl1,hPr2,-1)*r25**(-1)*r5d*rd*gql*s125 - 12.D0*gcoeff(bb0,hPl1,
     & hPr2,-1)*r25**(-1)*r2d*rd*gql*s125 + 2.D0*gcoeff(bb0,hPl1,hPr2,
     & -1)*r25**(-1)*r2d*r5d*gql*s125 + 2.D0*gcoeff(bb0,hPl1,hPr2,-1)*
     & r25**(-1)*r2d**2*gql*s125 - 8.D0*gcoeff(bb0,hPl1,hPr2,-1)*
     & r25**(-1)*r1d*rd*gql*s125 + 2.D0*gcoeff(bb0,hPl1,hPr2,-1)*
     & r25**(-1)*r1d*r5d*gql*s125
      e  = e  + 6.D0*gcoeff(bb0,hPl1,hPr2,-1)*r25**(-1)*r1d*r2d*gql*s125
     &  + 8.D0*gcoeff(bb0,hPl1,hPr2,-1)*rd*gql*s125 + 4.D0*gcoeff(bb0,
     & hPl1,hPr2,-1)*r15*r25**(-1)*rd*gql*s125 - 32.D0*gcoeff(bb0,hPl1,
     & hPr2,-1)*e1234*r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 
     & 16.D0*gcoeff(bb0,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-1)*r2d*gql
     & *imagunit*s125**(-1) + 16.D0*gcoeff(bb0,hPl1,hPr2,-1)*e1234*
     & r15**(-1)*r25**(-1)*r1d*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & bb0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*rd*gqr*s125 - 12.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 + 4.D
     & 0*gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
     &  + 10.D0*gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gqr
     & *s125 - 2.D0*gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*
     & r5d*gqr*s125 + 10.D0*gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*
     & r25**(-1)*r1d*rd*gqr*s125 - 2.D0*gcoeff(bb0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*r1d*r5d*gqr*s125 - 8.D0*gcoeff(bb0,hPr1,hPl2
     & ,-1)*r15**(-1)*r25**(-1)*r1d*r2d*gqr*s125
      e  = e  - 12.D0*gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*rd*gqr*s125 + 12.
     & D0*gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*rd**2*gqr*s125 - 4.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r5d*rd*gqr*s125 - 8.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r2d*rd*gqr*s125 + 2.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r2d*r5d*gqr*s125 - 12.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r1d*rd*gqr*s125 + 2.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r1d*r5d*gqr*s125 + 6.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r1d*r2d*gqr*s125 + 2.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r1d**2*gqr*s125 + 4.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r15**(-1)*r25*rd*gqr*s125 - 12.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*r25**(-1)*rd*gqr*s125 + 12.D0*gcoeff(
     & bb0,hPr1,hPl2,-1)*r25**(-1)*rd**2*gqr*s125 - 4.D0*gcoeff(bb0,
     & hPr1,hPl2,-1)*r25**(-1)*r5d*rd*gqr*s125 - 12.D0*gcoeff(bb0,hPr1,
     & hPl2,-1)*r25**(-1)*r2d*rd*gqr*s125 + 2.D0*gcoeff(bb0,hPr1,hPl2,
     & -1)*r25**(-1)*r2d*r5d*gqr*s125 + 2.D0*gcoeff(bb0,hPr1,hPl2,-1)*
     & r25**(-1)*r2d**2*gqr*s125
      e  = e  - 8.D0*gcoeff(bb0,hPr1,hPl2,-1)*r25**(-1)*r1d*rd*gqr*s125
     &  + 2.D0*gcoeff(bb0,hPr1,hPl2,-1)*r25**(-1)*r1d*r5d*gqr*s125 + 6.D
     & 0*gcoeff(bb0,hPr1,hPl2,-1)*r25**(-1)*r1d*r2d*gqr*s125 + 8.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*rd*gqr*s125 + 4.D0*gcoeff(bb0,hPr1,hPl2
     & ,-1)*r15*r25**(-1)*rd*gqr*s125 + 32.D0*gcoeff(bb0,hPr1,hPl2,-1)*
     & e1234*r15**(-1)*r25**(-1)*rd*gqr*imagunit*s125**(-1) - 16.D0*
     & gcoeff(bb0,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-1)*r2d*gqr*
     & imagunit*s125**(-1) - 16.D0*gcoeff(bb0,hPr1,hPl2,-1)*e1234*
     & r15**(-1)*r25**(-1)*r1d*gqr*imagunit*s125**(-1) - 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*rd**2*gql + 8.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r5d*rd*gql - 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-2)*r5d**2*gql + 16.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*rd**2*gql - 20.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d*rd*gql + 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r5d**2*gql - 8.D0*gcoeff(
     & dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d*rd*gql
      e  = e  + 8.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r2d*r5d
     & *gql - 4.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*rd*
     & gql + 4.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*r25**(-1)*r1d*r5d*
     & gql - 8.D0*gcoeff(dd0,hPl1,hPr2,-2)*r15**(-1)*rd*gql + 8.D0*
     & gcoeff(dd0,hPl1,hPr2,-2)*r25**(-2)*rd**2*gql - 12.D0*gcoeff(dd0,
     & hPl1,hPr2,-2)*r25**(-2)*r5d*rd*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,
     & -2)*r25**(-2)*r5d**2*gql - 4.D0*gcoeff(dd0,hPl1,hPr2,-2)*
     & r25**(-2)*r2d*rd*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,-2)*r25**(-2)*
     & r2d*r5d*gql - 8.D0*gcoeff(dd0,hPl1,hPr2,-2)*r25**(-1)*rd*gql - 
     & 32.D0*gcoeff(dd0,hPl1,hPr2,-2)*e1234*r15**(-1)*r25**(-2)*rd*gql*
     & imagunit*s125**(-2) + 32.D0*gcoeff(dd0,hPl1,hPr2,-2)*e1234*
     & r15**(-1)*r25**(-2)*r5d*gql*imagunit*s125**(-2) - 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*rd**2*gql + 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r5d*rd*gql + 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r2d*rd*gql - 4.D0*gcoeff(
     & dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*r2d*r5d*gql
      e  = e  + 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*rd*gql
     &  - 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*rd**2*gql
     &  + 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gql
     &  + 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gql
     &  - 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gql
     &  + 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*rd*gql
     &  - 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*r2d*gql
     &  + 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r25**(-2)*rd**2*gql - 4.D0*
     & gcoeff(dd0,hPl1,hPr2,-1)*r25**(-2)*r5d*rd*gql - 12.D0*gcoeff(dd0
     & ,hPl1,hPr2,-1)*r25**(-2)*r2d*rd*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,
     & -1)*r25**(-2)*r2d*r5d*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*
     & r25**(-2)*r2d**2*gql - 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r25**(-1)*
     & rd*gql + 32.D0*gcoeff(dd0,hPl1,hPr2,-1)*e1234*r15**(-1)*
     & r25**(-2)*rd*gql*imagunit*s125**(-2) - 32.D0*gcoeff(dd0,hPl1,
     & hPr2,-1)*e1234*r15**(-1)*r25**(-2)*r2d*gql*imagunit*s125**(-2)
     &  - 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*rd**2*gqr
      e  = e  + 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r5d*rd*
     & gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-2)*r5d**2*
     & gqr + 16.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*rd**2*
     & gqr - 20.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d*rd*
     & gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r5d**2*
     & gqr - 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*rd*
     & gqr + 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r2d*r5d*
     & gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*rd*
     & gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*r25**(-1)*r1d*r5d*
     & gqr - 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r15**(-1)*rd*gqr + 8.D0*
     & gcoeff(dd0,hPr1,hPl2,-2)*r25**(-2)*rd**2*gqr - 12.D0*gcoeff(dd0,
     & hPr1,hPl2,-2)*r25**(-2)*r5d*rd*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,
     & -2)*r25**(-2)*r5d**2*gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*
     & r25**(-2)*r2d*rd*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-2)*r25**(-2)*
     & r2d*r5d*gqr - 8.D0*gcoeff(dd0,hPr1,hPl2,-2)*r25**(-1)*rd*gqr + 
     & 32.D0*gcoeff(dd0,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-2)*rd*gqr*
     & imagunit*s125**(-2)
      e  = e  - 32.D0*gcoeff(dd0,hPr1,hPl2,-2)*e1234*r15**(-1)*r25**(-2)*
     & r5d*gqr*imagunit*s125**(-2) - 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-2)*rd**2*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-2)*r5d*rd*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-2)*r2d*rd*gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-2)*r2d*r5d*gqr + 8.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*rd*gqr - 8.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*rd**2*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*r5d*rd*gqr + 8.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*r2d*rd*gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*r2d*r5d*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*r1d*rd*gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*r1d*r2d*gqr + 8.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r25**(-2)*rd**2*gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*r25**(-2)*
     & r5d*rd*gqr - 12.D0*gcoeff(dd0,hPr1,hPl2,-1)*r25**(-2)*r2d*rd*gqr
     &  + 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*r25**(-2)*r2d*r5d*gqr
      e  = e  + 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*r25**(-2)*r2d**2*gqr - 8.D0
     & *gcoeff(dd0,hPr1,hPl2,-1)*r25**(-1)*rd*gqr - 32.D0*gcoeff(dd0,
     & hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-2)*rd*gqr*imagunit*
     & s125**(-2) + 32.D0*gcoeff(dd0,hPr1,hPl2,-1)*e1234*r15**(-1)*
     & r25**(-2)*r2d*gqr*imagunit*s125**(-2)

      ep(-1) = pre*e
      e = 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*rd**2*gql
     &  - 4.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r5d*rd*gql
     &  + 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r25**(-1)*r5d**2*gql
     &  - 4.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*rd**2*gql + 6.D0*
     & gcoeff(aa0,hPl1,hPr2,-1)*r15**(-2)*r5d*rd*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,-1)*r15**(-2)*r5d**2*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,
     & -1)*r15**(-2)*r1d*rd*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*
     & r15**(-2)*r1d*r5d*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-1)*
     & r25**(-2)*rd**2*gql + 4.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-1)*
     & r25**(-2)*r5d*rd*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-1)*
     & r25**(-2)*r5d**2*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-1)*
     & r25**(-1)*r2d*rd*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-1)*
     & r25**(-1)*r2d*r5d*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-1)*
     & r25**(-1)*r1d*rd*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,-1)*r15**(-1)*
     & r25**(-1)*r1d*r5d*gql + 4.D0*gcoeff(aa0,hPl1,hPr2,-1)*r25**(-2)*
     & rd**2*gql
      e  = e  - 6.D0*gcoeff(aa0,hPl1,hPr2,-1)*r25**(-2)*r5d*rd*gql + 2.D0
     & *gcoeff(aa0,hPl1,hPr2,-1)*r25**(-2)*r5d**2*gql - 2.D0*gcoeff(aa0
     & ,hPl1,hPr2,-1)*r25**(-2)*r2d*rd*gql + 2.D0*gcoeff(aa0,hPl1,hPr2,
     & -1)*r25**(-2)*r2d*r5d*gql - 16.D0*gcoeff(aa0,hPl1,hPr2,-1)*e1234
     & *r15**(-2)*r25**(-1)*rd*gql*imagunit*s125**(-2) + 16.D0*gcoeff(
     & aa0,hPl1,hPr2,-1)*e1234*r15**(-2)*r25**(-1)*r5d*gql*imagunit*
     & s125**(-2) - 16.D0*gcoeff(aa0,hPl1,hPr2,-1)*e1234*r15**(-1)*
     & r25**(-2)*rd*gql*imagunit*s125**(-2) + 16.D0*gcoeff(aa0,hPl1,
     & hPr2,-1)*e1234*r15**(-1)*r25**(-2)*r5d*gql*imagunit*s125**(-2)
     &  + 2.D0*gcoeff(aa0,hPl1,hPr2,0)*r15**(-2)*r25**(-1)*rd**2*gql - 
     & 2.D0*gcoeff(aa0,hPl1,hPr2,0)*r15**(-2)*r25**(-1)*r5d*rd*gql - 2.D
     & 0*gcoeff(aa0,hPl1,hPr2,0)*r15**(-2)*r25**(-1)*r1d*rd*gql + 2.D0*
     & gcoeff(aa0,hPl1,hPr2,0)*r15**(-2)*r25**(-1)*r1d*r5d*gql - 4.D0*
     & gcoeff(aa0,hPl1,hPr2,0)*r15**(-2)*rd**2*gql + 2.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-2)*r5d*rd*gql + 6.D0*gcoeff(aa0,hPl1,hPr2,0)
     & *r15**(-2)*r1d*rd*gql
      e  = e  - 2.D0*gcoeff(aa0,hPl1,hPr2,0)*r15**(-2)*r1d*r5d*gql - 2.D0
     & *gcoeff(aa0,hPl1,hPr2,0)*r15**(-2)*r1d**2*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-2)*rd**2*gql + 2.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r5d*rd*gql + 2.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r2d*rd*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r2d*r5d*gql + 2.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d*rd*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d*r5d*gql - 2.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*rd*gql + 2.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*r5d*gql + 4.D0*gcoeff(aa0,
     & hPl1,hPr2,0)*r15**(-1)*rd*gql + 4.D0*gcoeff(aa0,hPl1,hPr2,0)*
     & r25**(-2)*rd**2*gql - 2.D0*gcoeff(aa0,hPl1,hPr2,0)*r25**(-2)*r5d
     & *rd*gql - 6.D0*gcoeff(aa0,hPl1,hPr2,0)*r25**(-2)*r2d*rd*gql + 2.D
     & 0*gcoeff(aa0,hPl1,hPr2,0)*r25**(-2)*r2d*r5d*gql + 2.D0*gcoeff(
     & aa0,hPl1,hPr2,0)*r25**(-2)*r2d**2*gql - 4.D0*gcoeff(aa0,hPl1,
     & hPr2,0)*r25**(-1)*rd*gql
      e  = e  - 16.D0*gcoeff(aa0,hPl1,hPr2,0)*e1234*r15**(-2)*r25**(-1)*
     & rd*gql*imagunit*s125**(-2) + 16.D0*gcoeff(aa0,hPl1,hPr2,0)*e1234
     & *r15**(-2)*r25**(-1)*r1d*gql*imagunit*s125**(-2) + 16.D0*gcoeff(
     & aa0,hPl1,hPr2,0)*e1234*r15**(-1)*r25**(-2)*rd*gql*imagunit*
     & s125**(-2) - 16.D0*gcoeff(aa0,hPl1,hPr2,0)*e1234*r15**(-1)*
     & r25**(-2)*r2d*gql*imagunit*s125**(-2) + 2.D0*gcoeff(aa0,hPr1,
     & hPl2,-1)*r15**(-2)*r25**(-1)*rd**2*gqr - 4.D0*gcoeff(aa0,hPr1,
     & hPl2,-1)*r15**(-2)*r25**(-1)*r5d*rd*gqr + 2.D0*gcoeff(aa0,hPr1,
     & hPl2,-1)*r15**(-2)*r25**(-1)*r5d**2*gqr - 4.D0*gcoeff(aa0,hPr1,
     & hPl2,-1)*r15**(-2)*rd**2*gqr + 6.D0*gcoeff(aa0,hPr1,hPl2,-1)*
     & r15**(-2)*r5d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-2)*
     & r5d**2*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-2)*r1d*rd*gqr
     &  - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-2)*r1d*r5d*gqr - 2.D0*
     & gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*rd**2*gqr + 4.D0*
     & gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*r5d*rd*gqr - 2.D0*
     & gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*r5d**2*gqr
      e  = e  - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*rd*
     & gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*
     & gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*rd*
     & gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*r5d*
     & gqr + 4.D0*gcoeff(aa0,hPr1,hPl2,-1)*r25**(-2)*rd**2*gqr - 6.D0*
     & gcoeff(aa0,hPr1,hPl2,-1)*r25**(-2)*r5d*rd*gqr + 2.D0*gcoeff(aa0,
     & hPr1,hPl2,-1)*r25**(-2)*r5d**2*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,
     & -1)*r25**(-2)*r2d*rd*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,-1)*
     & r25**(-2)*r2d*r5d*gqr + 16.D0*gcoeff(aa0,hPr1,hPl2,-1)*e1234*
     & r15**(-2)*r25**(-1)*rd*gqr*imagunit*s125**(-2) - 16.D0*gcoeff(
     & aa0,hPr1,hPl2,-1)*e1234*r15**(-2)*r25**(-1)*r5d*gqr*imagunit*
     & s125**(-2) + 16.D0*gcoeff(aa0,hPr1,hPl2,-1)*e1234*r15**(-1)*
     & r25**(-2)*rd*gqr*imagunit*s125**(-2) - 16.D0*gcoeff(aa0,hPr1,
     & hPl2,-1)*e1234*r15**(-1)*r25**(-2)*r5d*gqr*imagunit*s125**(-2)
     &  + 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*rd**2*gqr - 
     & 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r5d*rd*gqr
      e  = e  - 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r1d*rd*
     & gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r1d*r5d*
     & gqr - 4.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-2)*rd**2*gqr + 2.D0*
     & gcoeff(aa0,hPr1,hPl2,0)*r15**(-2)*r5d*rd*gqr + 6.D0*gcoeff(aa0,
     & hPr1,hPl2,0)*r15**(-2)*r1d*rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,0)
     & *r15**(-2)*r1d*r5d*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-2)*
     & r1d**2*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*
     & rd**2*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r5d
     & *rd*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r2d*
     & rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r2d*
     & r5d*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*
     & rd*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*
     & r5d*gqr - 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d*
     & rd*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d*
     & r5d*gqr + 4.D0*gcoeff(aa0,hPr1,hPl2,0)*r15**(-1)*rd*gqr + 4.D0*
     & gcoeff(aa0,hPr1,hPl2,0)*r25**(-2)*rd**2*gqr
      e  = e  - 2.D0*gcoeff(aa0,hPr1,hPl2,0)*r25**(-2)*r5d*rd*gqr - 6.D0*
     & gcoeff(aa0,hPr1,hPl2,0)*r25**(-2)*r2d*rd*gqr + 2.D0*gcoeff(aa0,
     & hPr1,hPl2,0)*r25**(-2)*r2d*r5d*gqr + 2.D0*gcoeff(aa0,hPr1,hPl2,0
     & )*r25**(-2)*r2d**2*gqr - 4.D0*gcoeff(aa0,hPr1,hPl2,0)*r25**(-1)*
     & rd*gqr + 16.D0*gcoeff(aa0,hPr1,hPl2,0)*e1234*r15**(-2)*r25**(-1)
     & *rd*gqr*imagunit*s125**(-2) - 16.D0*gcoeff(aa0,hPr1,hPl2,0)*
     & e1234*r15**(-2)*r25**(-1)*r1d*gqr*imagunit*s125**(-2) - 16.D0*
     & gcoeff(aa0,hPr1,hPl2,0)*e1234*r15**(-1)*r25**(-2)*rd*gqr*
     & imagunit*s125**(-2) + 16.D0*gcoeff(aa0,hPr1,hPl2,0)*e1234*
     & r15**(-1)*r25**(-2)*r2d*gqr*imagunit*s125**(-2) + gcoeff(aa11,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*rd**2*gql*s125 - gcoeff(aa11,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa11,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*rd*gql*s125 + gcoeff(aa11,
     & hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r1d*r5d*gql*s125 - 2.D0*
     & gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*rd**2*gql*s125 + gcoeff(aa11
     & ,hPl1,hPr2,-1)*r15**(-1)*r5d*rd*gql*s125
      e  = e  + 3.D0*gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*r1d*rd*gql*s125
     &  - gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*r1d*r5d*gql*s125 - 
     & gcoeff(aa11,hPl1,hPr2,-1)*r15**(-1)*r1d**2*gql*s125 - gcoeff(
     & aa11,hPl1,hPr2,-1)*r25**(-2)*rd**2*gql*s125 + gcoeff(aa11,hPl1,
     & hPr2,-1)*r25**(-2)*r5d*rd*gql*s125 + gcoeff(aa11,hPl1,hPr2,-1)*
     & r25**(-2)*r1d*rd*gql*s125 - gcoeff(aa11,hPl1,hPr2,-1)*r25**(-2)*
     & r1d*r5d*gql*s125 - gcoeff(aa11,hPl1,hPr2,-1)*r25**(-1)*r2d*rd*
     & gql*s125 + gcoeff(aa11,hPl1,hPr2,-1)*r25**(-1)*r1d*rd*gql*s125
     &  + gcoeff(aa11,hPl1,hPr2,-1)*r25**(-1)*r1d*r2d*gql*s125 - 
     & gcoeff(aa11,hPl1,hPr2,-1)*r25**(-1)*r1d**2*gql*s125 + 2.D0*
     & gcoeff(aa11,hPl1,hPr2,-1)*r15*r25**(-2)*rd**2*gql*s125 - gcoeff(
     & aa11,hPl1,hPr2,-1)*r15*r25**(-2)*r5d*rd*gql*s125 - gcoeff(aa11,
     & hPl1,hPr2,-1)*r15*r25**(-2)*r2d*rd*gql*s125 - 2.D0*gcoeff(aa11,
     & hPl1,hPr2,-1)*r15*r25**(-2)*r1d*rd*gql*s125 + gcoeff(aa11,hPl1,
     & hPr2,-1)*r15*r25**(-2)*r1d*r5d*gql*s125 + gcoeff(aa11,hPl1,hPr2,
     & -1)*r15*r25**(-2)*r1d*r2d*gql*s125
      e  = e  - 8.D0*gcoeff(aa11,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-1)*
     & rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa11,hPl1,hPr2,-1)*
     & e1234*r15**(-1)*r25**(-1)*r1d*gql*imagunit*s125**(-1) - 8.D0*
     & gcoeff(aa11,hPl1,hPr2,-1)*e1234*r25**(-2)*rd*gql*imagunit*
     & s125**(-1) + 8.D0*gcoeff(aa11,hPl1,hPr2,-1)*e1234*r25**(-2)*r1d*
     & gql*imagunit*s125**(-1) - gcoeff(aa11,hPl1,hPr2,0)*r15**(-1)*
     & r25**(-2)*rd**2*gql*s125 + gcoeff(aa11,hPl1,hPr2,0)*r15**(-1)*
     & r25**(-2)*r5d*rd*gql*s125 + gcoeff(aa11,hPl1,hPr2,0)*r15**(-1)*
     & r25**(-2)*r1d*rd*gql*s125 - gcoeff(aa11,hPl1,hPr2,0)*r15**(-1)*
     & r25**(-2)*r1d*r5d*gql*s125 + 2.D0*gcoeff(aa11,hPl1,hPr2,0)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 - gcoeff(aa11,hPl1,hPr2,0)*
     & r15**(-1)*r25**(-1)*r5d*rd*gql*s125 - 3.D0*gcoeff(aa11,hPl1,hPr2
     & ,0)*r15**(-1)*r25**(-1)*r1d*rd*gql*s125 + gcoeff(aa11,hPl1,hPr2,
     & 0)*r15**(-1)*r25**(-1)*r1d*r5d*gql*s125 + gcoeff(aa11,hPl1,hPr2,
     & 0)*r15**(-1)*r25**(-1)*r1d**2*gql*s125 + 3.D0*gcoeff(aa11,hPl1,
     & hPr2,0)*r25**(-2)*rd**2*gql*s125
      e  = e  - 2.D0*gcoeff(aa11,hPl1,hPr2,0)*r25**(-2)*r5d*rd*gql*s125
     &  - gcoeff(aa11,hPl1,hPr2,0)*r25**(-2)*r2d*rd*gql*s125 - 3.D0*
     & gcoeff(aa11,hPl1,hPr2,0)*r25**(-2)*r1d*rd*gql*s125 + 2.D0*
     & gcoeff(aa11,hPl1,hPr2,0)*r25**(-2)*r1d*r5d*gql*s125 + gcoeff(
     & aa11,hPl1,hPr2,0)*r25**(-2)*r1d*r2d*gql*s125 - 4.D0*gcoeff(aa11,
     & hPl1,hPr2,0)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa11,hPl1,hPr2,0)
     & *r25**(-1)*r5d*rd*gql*s125 + 2.D0*gcoeff(aa11,hPl1,hPr2,0)*
     & r25**(-1)*r2d*rd*gql*s125 + 5.D0*gcoeff(aa11,hPl1,hPr2,0)*
     & r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa11,hPl1,hPr2,0)*r25**(-1)*
     & r1d*r5d*gql*s125 - 2.D0*gcoeff(aa11,hPl1,hPr2,0)*r25**(-1)*r1d*
     & r2d*gql*s125 - gcoeff(aa11,hPl1,hPr2,0)*r25**(-1)*r1d**2*gql*
     & s125 - 2.D0*gcoeff(aa11,hPl1,hPr2,0)*r15*r25**(-2)*rd**2*gql*
     & s125 + gcoeff(aa11,hPl1,hPr2,0)*r15*r25**(-2)*r5d*rd*gql*s125 + 
     & gcoeff(aa11,hPl1,hPr2,0)*r15*r25**(-2)*r2d*rd*gql*s125 + 2.D0*
     & gcoeff(aa11,hPl1,hPr2,0)*r15*r25**(-2)*r1d*rd*gql*s125 - gcoeff(
     & aa11,hPl1,hPr2,0)*r15*r25**(-2)*r1d*r5d*gql*s125
      e  = e  - gcoeff(aa11,hPl1,hPr2,0)*r15*r25**(-2)*r1d*r2d*gql*s125
     &  + 8.D0*gcoeff(aa11,hPl1,hPr2,0)*e1234*r15**(-1)*r25**(-2)*rd*
     & gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa11,hPl1,hPr2,0)*e1234*
     & r15**(-1)*r25**(-2)*r1d*gql*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa11,hPl1,hPr2,0)*e1234*r25**(-2)*rd*gql*imagunit*s125**(-1) + 8.
     & D0*gcoeff(aa11,hPl1,hPr2,0)*e1234*r25**(-2)*r1d*gql*imagunit*
     & s125**(-1) + gcoeff(aa11,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*rd**2
     & *gqr*s125 - gcoeff(aa11,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd
     & *gqr*s125 - gcoeff(aa11,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*rd
     & *gqr*s125 + gcoeff(aa11,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*
     & r5d*gqr*s125 - 2.D0*gcoeff(aa11,hPr1,hPl2,-1)*r15**(-1)*rd**2*
     & gqr*s125 + gcoeff(aa11,hPr1,hPl2,-1)*r15**(-1)*r5d*rd*gqr*s125
     &  + 3.D0*gcoeff(aa11,hPr1,hPl2,-1)*r15**(-1)*r1d*rd*gqr*s125 - 
     & gcoeff(aa11,hPr1,hPl2,-1)*r15**(-1)*r1d*r5d*gqr*s125 - gcoeff(
     & aa11,hPr1,hPl2,-1)*r15**(-1)*r1d**2*gqr*s125 - gcoeff(aa11,hPr1,
     & hPl2,-1)*r25**(-2)*rd**2*gqr*s125
      e  = e  + gcoeff(aa11,hPr1,hPl2,-1)*r25**(-2)*r5d*rd*gqr*s125 + 
     & gcoeff(aa11,hPr1,hPl2,-1)*r25**(-2)*r1d*rd*gqr*s125 - gcoeff(
     & aa11,hPr1,hPl2,-1)*r25**(-2)*r1d*r5d*gqr*s125 - gcoeff(aa11,hPr1
     & ,hPl2,-1)*r25**(-1)*r2d*rd*gqr*s125 + gcoeff(aa11,hPr1,hPl2,-1)*
     & r25**(-1)*r1d*rd*gqr*s125 + gcoeff(aa11,hPr1,hPl2,-1)*r25**(-1)*
     & r1d*r2d*gqr*s125 - gcoeff(aa11,hPr1,hPl2,-1)*r25**(-1)*r1d**2*
     & gqr*s125 + 2.D0*gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*rd**2*
     & gqr*s125 - gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r5d*rd*gqr*
     & s125 - gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r2d*rd*gqr*s125
     &  - 2.D0*gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r1d*rd*gqr*s125
     &  + gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r1d*r5d*gqr*s125 + 
     & gcoeff(aa11,hPr1,hPl2,-1)*r15*r25**(-2)*r1d*r2d*gqr*s125 + 8.D0*
     & gcoeff(aa11,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-1)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa11,hPr1,hPl2,-1)*e1234*
     & r15**(-1)*r25**(-1)*r1d*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa11,hPr1,hPl2,-1)*e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1)
      e  = e  - 8.D0*gcoeff(aa11,hPr1,hPl2,-1)*e1234*r25**(-2)*r1d*gqr*
     & imagunit*s125**(-1) - gcoeff(aa11,hPr1,hPl2,0)*r15**(-1)*
     & r25**(-2)*rd**2*gqr*s125 + gcoeff(aa11,hPr1,hPl2,0)*r15**(-1)*
     & r25**(-2)*r5d*rd*gqr*s125 + gcoeff(aa11,hPr1,hPl2,0)*r15**(-1)*
     & r25**(-2)*r1d*rd*gqr*s125 - gcoeff(aa11,hPr1,hPl2,0)*r15**(-1)*
     & r25**(-2)*r1d*r5d*gqr*s125 + 2.D0*gcoeff(aa11,hPr1,hPl2,0)*
     & r15**(-1)*r25**(-1)*rd**2*gqr*s125 - gcoeff(aa11,hPr1,hPl2,0)*
     & r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 - 3.D0*gcoeff(aa11,hPr1,hPl2
     & ,0)*r15**(-1)*r25**(-1)*r1d*rd*gqr*s125 + gcoeff(aa11,hPr1,hPl2,
     & 0)*r15**(-1)*r25**(-1)*r1d*r5d*gqr*s125 + gcoeff(aa11,hPr1,hPl2,
     & 0)*r15**(-1)*r25**(-1)*r1d**2*gqr*s125 + 3.D0*gcoeff(aa11,hPr1,
     & hPl2,0)*r25**(-2)*rd**2*gqr*s125 - 2.D0*gcoeff(aa11,hPr1,hPl2,0)
     & *r25**(-2)*r5d*rd*gqr*s125 - gcoeff(aa11,hPr1,hPl2,0)*r25**(-2)*
     & r2d*rd*gqr*s125 - 3.D0*gcoeff(aa11,hPr1,hPl2,0)*r25**(-2)*r1d*rd
     & *gqr*s125 + 2.D0*gcoeff(aa11,hPr1,hPl2,0)*r25**(-2)*r1d*r5d*gqr*
     & s125
      e  = e  + gcoeff(aa11,hPr1,hPl2,0)*r25**(-2)*r1d*r2d*gqr*s125 - 4.D0
     & *gcoeff(aa11,hPr1,hPl2,0)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa11
     & ,hPr1,hPl2,0)*r25**(-1)*r5d*rd*gqr*s125 + 2.D0*gcoeff(aa11,hPr1,
     & hPl2,0)*r25**(-1)*r2d*rd*gqr*s125 + 5.D0*gcoeff(aa11,hPr1,hPl2,0
     & )*r25**(-1)*r1d*rd*gqr*s125 - gcoeff(aa11,hPr1,hPl2,0)*r25**(-1)
     & *r1d*r5d*gqr*s125 - 2.D0*gcoeff(aa11,hPr1,hPl2,0)*r25**(-1)*r1d*
     & r2d*gqr*s125 - gcoeff(aa11,hPr1,hPl2,0)*r25**(-1)*r1d**2*gqr*
     & s125 - 2.D0*gcoeff(aa11,hPr1,hPl2,0)*r15*r25**(-2)*rd**2*gqr*
     & s125 + gcoeff(aa11,hPr1,hPl2,0)*r15*r25**(-2)*r5d*rd*gqr*s125 + 
     & gcoeff(aa11,hPr1,hPl2,0)*r15*r25**(-2)*r2d*rd*gqr*s125 + 2.D0*
     & gcoeff(aa11,hPr1,hPl2,0)*r15*r25**(-2)*r1d*rd*gqr*s125 - gcoeff(
     & aa11,hPr1,hPl2,0)*r15*r25**(-2)*r1d*r5d*gqr*s125 - gcoeff(aa11,
     & hPr1,hPl2,0)*r15*r25**(-2)*r1d*r2d*gqr*s125 - 8.D0*gcoeff(aa11,
     & hPr1,hPl2,0)*e1234*r15**(-1)*r25**(-2)*rd*gqr*imagunit*
     & s125**(-1) + 8.D0*gcoeff(aa11,hPr1,hPl2,0)*e1234*r15**(-1)*
     & r25**(-2)*r1d*gqr*imagunit*s125**(-1)
      e  = e  + 8.D0*gcoeff(aa11,hPr1,hPl2,0)*e1234*r25**(-2)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa11,hPr1,hPl2,0)*e1234*
     & r25**(-2)*r1d*gqr*imagunit*s125**(-1) + gcoeff(aa12,hPl1,hPr2,-1
     & )*r15**(-1)*r25**(-1)*rd**2*gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)
     & *r15**(-1)*r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)
     & *r15**(-1)*r25**(-1)*r2d*rd*gql*s125 + gcoeff(aa12,hPl1,hPr2,-1)
     & *r15**(-1)*r25**(-1)*r2d*r5d*gql*s125 - 2.D0*gcoeff(aa12,hPl1,
     & hPr2,-1)*r15**(-1)*rd**2*gql*s125 + gcoeff(aa12,hPl1,hPr2,-1)*
     & r15**(-1)*r5d*rd*gql*s125 + 2.D0*gcoeff(aa12,hPl1,hPr2,-1)*
     & r15**(-1)*r2d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*
     & r2d*r5d*gql*s125 + gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r1d*rd*
     & gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)*r15**(-1)*r1d*r2d*gql*s125
     &  - gcoeff(aa12,hPl1,hPr2,-1)*r25**(-2)*rd**2*gql*s125 + gcoeff(
     & aa12,hPl1,hPr2,-1)*r25**(-2)*r5d*rd*gql*s125 + gcoeff(aa12,hPl1,
     & hPr2,-1)*r25**(-2)*r2d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)*
     & r25**(-2)*r2d*r5d*gql*s125
      e  = e  - gcoeff(aa12,hPl1,hPr2,-1)*r25**(-1)*r2d*rd*gql*s125 + 
     & gcoeff(aa12,hPl1,hPr2,-1)*r25**(-1)*r2d**2*gql*s125 + gcoeff(
     & aa12,hPl1,hPr2,-1)*r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa12,hPl1,
     & hPr2,-1)*r25**(-1)*r1d*r2d*gql*s125 + 2.D0*gcoeff(aa12,hPl1,hPr2
     & ,-1)*r15*r25**(-2)*rd**2*gql*s125 - gcoeff(aa12,hPl1,hPr2,-1)*
     & r15*r25**(-2)*r5d*rd*gql*s125 - 3.D0*gcoeff(aa12,hPl1,hPr2,-1)*
     & r15*r25**(-2)*r2d*rd*gql*s125 + gcoeff(aa12,hPl1,hPr2,-1)*r15*
     & r25**(-2)*r2d*r5d*gql*s125 + gcoeff(aa12,hPl1,hPr2,-1)*r15*
     & r25**(-2)*r2d**2*gql*s125 - 8.D0*gcoeff(aa12,hPl1,hPr2,-1)*e1234
     & *r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa12,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-1)*r2d*gql*imagunit*
     & s125**(-1) - 8.D0*gcoeff(aa12,hPl1,hPr2,-1)*e1234*r25**(-2)*rd*
     & gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa12,hPl1,hPr2,-1)*e1234*
     & r25**(-2)*r2d*gql*imagunit*s125**(-1) - gcoeff(aa12,hPl1,hPr2,0)
     & *r15**(-1)*r25**(-2)*rd**2*gql*s125 + gcoeff(aa12,hPl1,hPr2,0)*
     & r15**(-1)*r25**(-2)*r5d*rd*gql*s125
      e  = e  + gcoeff(aa12,hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r2d*rd*gql*
     & s125 - gcoeff(aa12,hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r2d*r5d*gql*
     & s125 + 2.D0*gcoeff(aa12,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*rd**2*
     & gql*s125 - gcoeff(aa12,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r5d*rd*
     & gql*s125 - 2.D0*gcoeff(aa12,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d
     & *rd*gql*s125 + gcoeff(aa12,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d*
     & r5d*gql*s125 - gcoeff(aa12,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*
     & rd*gql*s125 + gcoeff(aa12,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*
     & r2d*gql*s125 + 3.D0*gcoeff(aa12,hPl1,hPr2,0)*r25**(-2)*rd**2*gql
     & *s125 - 2.D0*gcoeff(aa12,hPl1,hPr2,0)*r25**(-2)*r5d*rd*gql*s125
     &  - 4.D0*gcoeff(aa12,hPl1,hPr2,0)*r25**(-2)*r2d*rd*gql*s125 + 2.D0
     & *gcoeff(aa12,hPl1,hPr2,0)*r25**(-2)*r2d*r5d*gql*s125 + gcoeff(
     & aa12,hPl1,hPr2,0)*r25**(-2)*r2d**2*gql*s125 - 4.D0*gcoeff(aa12,
     & hPl1,hPr2,0)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa12,hPl1,hPr2,0)
     & *r25**(-1)*r5d*rd*gql*s125 + 6.D0*gcoeff(aa12,hPl1,hPr2,0)*
     & r25**(-1)*r2d*rd*gql*s125
      e  = e  - gcoeff(aa12,hPl1,hPr2,0)*r25**(-1)*r2d*r5d*gql*s125 - 2.D0
     & *gcoeff(aa12,hPl1,hPr2,0)*r25**(-1)*r2d**2*gql*s125 + gcoeff(
     & aa12,hPl1,hPr2,0)*r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa12,hPl1,
     & hPr2,0)*r25**(-1)*r1d*r2d*gql*s125 - 2.D0*gcoeff(aa12,hPl1,hPr2,
     & 0)*r15*r25**(-2)*rd**2*gql*s125 + gcoeff(aa12,hPl1,hPr2,0)*r15*
     & r25**(-2)*r5d*rd*gql*s125 + 3.D0*gcoeff(aa12,hPl1,hPr2,0)*r15*
     & r25**(-2)*r2d*rd*gql*s125 - gcoeff(aa12,hPl1,hPr2,0)*r15*
     & r25**(-2)*r2d*r5d*gql*s125 - gcoeff(aa12,hPl1,hPr2,0)*r15*
     & r25**(-2)*r2d**2*gql*s125 + 8.D0*gcoeff(aa12,hPl1,hPr2,0)*e1234*
     & r15**(-1)*r25**(-2)*rd*gql*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa12,hPl1,hPr2,0)*e1234*r15**(-1)*r25**(-2)*r2d*gql*imagunit*
     & s125**(-1) - 8.D0*gcoeff(aa12,hPl1,hPr2,0)*e1234*r25**(-2)*rd*
     & gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa12,hPl1,hPr2,0)*e1234*
     & r25**(-2)*r2d*gql*imagunit*s125**(-1) + gcoeff(aa12,hPr1,hPl2,-1
     & )*r15**(-1)*r25**(-1)*rd**2*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-1)
     & *r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
      e  = e  - gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gqr*
     & s125 + gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gqr
     & *s125 - 2.D0*gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*rd**2*gqr*s125
     &  + gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r5d*rd*gqr*s125 + 2.D0*
     & gcoeff(aa12,hPr1,hPl2,-1)*r15**(-1)*r2d*rd*gqr*s125 - gcoeff(
     & aa12,hPr1,hPl2,-1)*r15**(-1)*r2d*r5d*gqr*s125 + gcoeff(aa12,hPr1
     & ,hPl2,-1)*r15**(-1)*r1d*rd*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-1)*
     & r15**(-1)*r1d*r2d*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-1)*r25**(-2)
     & *rd**2*gqr*s125 + gcoeff(aa12,hPr1,hPl2,-1)*r25**(-2)*r5d*rd*gqr
     & *s125 + gcoeff(aa12,hPr1,hPl2,-1)*r25**(-2)*r2d*rd*gqr*s125 - 
     & gcoeff(aa12,hPr1,hPl2,-1)*r25**(-2)*r2d*r5d*gqr*s125 - gcoeff(
     & aa12,hPr1,hPl2,-1)*r25**(-1)*r2d*rd*gqr*s125 + gcoeff(aa12,hPr1,
     & hPl2,-1)*r25**(-1)*r2d**2*gqr*s125 + gcoeff(aa12,hPr1,hPl2,-1)*
     & r25**(-1)*r1d*rd*gqr*s125 - gcoeff(aa12,hPr1,hPl2,-1)*r25**(-1)*
     & r1d*r2d*gqr*s125 + 2.D0*gcoeff(aa12,hPr1,hPl2,-1)*r15*r25**(-2)*
     & rd**2*gqr*s125
      e  = e  - gcoeff(aa12,hPr1,hPl2,-1)*r15*r25**(-2)*r5d*rd*gqr*s125
     &  - 3.D0*gcoeff(aa12,hPr1,hPl2,-1)*r15*r25**(-2)*r2d*rd*gqr*s125
     &  + gcoeff(aa12,hPr1,hPl2,-1)*r15*r25**(-2)*r2d*r5d*gqr*s125 + 
     & gcoeff(aa12,hPr1,hPl2,-1)*r15*r25**(-2)*r2d**2*gqr*s125 + 8.D0*
     & gcoeff(aa12,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-1)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa12,hPr1,hPl2,-1)*e1234*
     & r15**(-1)*r25**(-1)*r2d*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa12,hPr1,hPl2,-1)*e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1) - 
     & 8.D0*gcoeff(aa12,hPr1,hPl2,-1)*e1234*r25**(-2)*r2d*gqr*imagunit*
     & s125**(-1) - gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*rd**2*
     & gqr*s125 + gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r5d*rd*
     & gqr*s125 + gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r2d*rd*
     & gqr*s125 - gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r2d*r5d*
     & gqr*s125 + 2.D0*gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*
     & rd**2*gqr*s125 - gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*
     & r5d*rd*gqr*s125
      e  = e  - 2.D0*gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*rd*
     & gqr*s125 + gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*r5d*
     & gqr*s125 - gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d*rd*
     & gqr*s125 + gcoeff(aa12,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d*r2d*
     & gqr*s125 + 3.D0*gcoeff(aa12,hPr1,hPl2,0)*r25**(-2)*rd**2*gqr*
     & s125 - 2.D0*gcoeff(aa12,hPr1,hPl2,0)*r25**(-2)*r5d*rd*gqr*s125
     &  - 4.D0*gcoeff(aa12,hPr1,hPl2,0)*r25**(-2)*r2d*rd*gqr*s125 + 2.D0
     & *gcoeff(aa12,hPr1,hPl2,0)*r25**(-2)*r2d*r5d*gqr*s125 + gcoeff(
     & aa12,hPr1,hPl2,0)*r25**(-2)*r2d**2*gqr*s125 - 4.D0*gcoeff(aa12,
     & hPr1,hPl2,0)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa12,hPr1,hPl2,0)
     & *r25**(-1)*r5d*rd*gqr*s125 + 6.D0*gcoeff(aa12,hPr1,hPl2,0)*
     & r25**(-1)*r2d*rd*gqr*s125 - gcoeff(aa12,hPr1,hPl2,0)*r25**(-1)*
     & r2d*r5d*gqr*s125 - 2.D0*gcoeff(aa12,hPr1,hPl2,0)*r25**(-1)*
     & r2d**2*gqr*s125 + gcoeff(aa12,hPr1,hPl2,0)*r25**(-1)*r1d*rd*gqr*
     & s125 - gcoeff(aa12,hPr1,hPl2,0)*r25**(-1)*r1d*r2d*gqr*s125 - 2.D0
     & *gcoeff(aa12,hPr1,hPl2,0)*r15*r25**(-2)*rd**2*gqr*s125
      e  = e  + gcoeff(aa12,hPr1,hPl2,0)*r15*r25**(-2)*r5d*rd*gqr*s125 + 
     & 3.D0*gcoeff(aa12,hPr1,hPl2,0)*r15*r25**(-2)*r2d*rd*gqr*s125 - 
     & gcoeff(aa12,hPr1,hPl2,0)*r15*r25**(-2)*r2d*r5d*gqr*s125 - 
     & gcoeff(aa12,hPr1,hPl2,0)*r15*r25**(-2)*r2d**2*gqr*s125 - 8.D0*
     & gcoeff(aa12,hPr1,hPl2,0)*e1234*r15**(-1)*r25**(-2)*rd*gqr*
     & imagunit*s125**(-1) + 8.D0*gcoeff(aa12,hPr1,hPl2,0)*e1234*
     & r15**(-1)*r25**(-2)*r2d*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa12,hPr1,hPl2,0)*e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1) - 8.
     & D0*gcoeff(aa12,hPr1,hPl2,0)*e1234*r25**(-2)*r2d*gqr*imagunit*
     & s125**(-1) + gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*rd**2*gql*s125
     &  - gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r5d*rd*gql*s125 - gcoeff(
     & aa22,hPl1,hPr2,-1)*r15**(-2)*r2d*rd*gql*s125 + gcoeff(aa22,hPl1,
     & hPr2,-1)*r15**(-2)*r2d*r5d*gql*s125 - 2.D0*gcoeff(aa22,hPl1,hPr2
     & ,-1)*r15**(-2)*r25*rd**2*gql*s125 + gcoeff(aa22,hPl1,hPr2,-1)*
     & r15**(-2)*r25*r5d*rd*gql*s125 + 2.D0*gcoeff(aa22,hPl1,hPr2,-1)*
     & r15**(-2)*r25*r2d*rd*gql*s125
      e  = e  - gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r25*r2d*r5d*gql*s125
     &  + gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r25*r1d*rd*gql*s125 - 
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-2)*r25*r1d*r2d*gql*s125 - 
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*rd**2*gql*s125 + 
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + 
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gql*s125 - 
     & gcoeff(aa22,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gql*s125
     &  - gcoeff(aa22,hPl1,hPr2,-1)*r15**(-1)*r2d*rd*gql*s125 + gcoeff(
     & aa22,hPl1,hPr2,-1)*r15**(-1)*r2d**2*gql*s125 + gcoeff(aa22,hPl1,
     & hPr2,-1)*r15**(-1)*r1d*rd*gql*s125 - gcoeff(aa22,hPl1,hPr2,-1)*
     & r15**(-1)*r1d*r2d*gql*s125 + 2.D0*gcoeff(aa22,hPl1,hPr2,-1)*
     & r25**(-1)*rd**2*gql*s125 - gcoeff(aa22,hPl1,hPr2,-1)*r25**(-1)*
     & r5d*rd*gql*s125 - 3.D0*gcoeff(aa22,hPl1,hPr2,-1)*r25**(-1)*r2d*
     & rd*gql*s125 + gcoeff(aa22,hPl1,hPr2,-1)*r25**(-1)*r2d*r5d*gql*
     & s125 + gcoeff(aa22,hPl1,hPr2,-1)*r25**(-1)*r2d**2*gql*s125 - 8.D0
     & *gcoeff(aa22,hPl1,hPr2,-1)*e1234*r15**(-2)*rd*gql*imagunit*
     & s125**(-1)
      e  = e  + 8.D0*gcoeff(aa22,hPl1,hPr2,-1)*e1234*r15**(-2)*r2d*gql*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa22,hPl1,hPr2,-1)*e1234*
     & r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa22,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-1)*r2d*gql*imagunit*
     & s125**(-1) + gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r25**(-1)*rd**2*
     & gql*s125 - gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r25**(-1)*r5d*rd*
     & gql*s125 - gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r25**(-1)*r2d*rd*
     & gql*s125 + gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r25**(-1)*r2d*r5d*
     & gql*s125 - 3.D0*gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*rd**2*gql*
     & s125 + 2.D0*gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r5d*rd*gql*s125
     &  + 3.D0*gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r2d*rd*gql*s125 - 2.D0
     & *gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r2d*r5d*gql*s125 + gcoeff(
     & aa22,hPl1,hPr2,0)*r15**(-2)*r1d*rd*gql*s125 - gcoeff(aa22,hPl1,
     & hPr2,0)*r15**(-2)*r1d*r2d*gql*s125 + 2.D0*gcoeff(aa22,hPl1,hPr2,
     & 0)*r15**(-2)*r25*rd**2*gql*s125 - gcoeff(aa22,hPl1,hPr2,0)*
     & r15**(-2)*r25*r5d*rd*gql*s125
      e  = e  - 2.D0*gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r25*r2d*rd*gql*
     & s125 + gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r25*r2d*r5d*gql*s125
     &  - gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r25*r1d*rd*gql*s125 + 
     & gcoeff(aa22,hPl1,hPr2,0)*r15**(-2)*r25*r1d*r2d*gql*s125 - 2.D0*
     & gcoeff(aa22,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*rd**2*gql*s125 + 
     & gcoeff(aa22,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + 3.
     & D0*gcoeff(aa22,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d*rd*gql*s125
     &  - gcoeff(aa22,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d*r5d*gql*s125
     &  - gcoeff(aa22,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d**2*gql*s125
     &  + 4.D0*gcoeff(aa22,hPl1,hPr2,0)*r15**(-1)*rd**2*gql*s125 - 
     & gcoeff(aa22,hPl1,hPr2,0)*r15**(-1)*r5d*rd*gql*s125 - 5.D0*
     & gcoeff(aa22,hPl1,hPr2,0)*r15**(-1)*r2d*rd*gql*s125 + gcoeff(aa22
     & ,hPl1,hPr2,0)*r15**(-1)*r2d*r5d*gql*s125 + gcoeff(aa22,hPl1,hPr2
     & ,0)*r15**(-1)*r2d**2*gql*s125 - 2.D0*gcoeff(aa22,hPl1,hPr2,0)*
     & r15**(-1)*r1d*rd*gql*s125 + 2.D0*gcoeff(aa22,hPl1,hPr2,0)*
     & r15**(-1)*r1d*r2d*gql*s125
      e  = e  - 8.D0*gcoeff(aa22,hPl1,hPr2,0)*e1234*r15**(-2)*r25**(-1)*
     & rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa22,hPl1,hPr2,0)*e1234
     & *r15**(-2)*r25**(-1)*r2d*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa22,hPl1,hPr2,0)*e1234*r15**(-2)*rd*gql*imagunit*s125**(-1) - 8.
     & D0*gcoeff(aa22,hPl1,hPr2,0)*e1234*r15**(-2)*r2d*gql*imagunit*
     & s125**(-1) + gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*rd**2*gqr*s125
     &  - gcoeff(aa22,hPr1,hPl2,-1)*r15**(-2)*r5d*rd*gqr*s125 - gcoeff(
     & aa22,hPr1,hPl2,-1)*r15**(-2)*r2d*rd*gqr*s125 + gcoeff(aa22,hPr1,
     & hPl2,-1)*r15**(-2)*r2d*r5d*gqr*s125 - 2.D0*gcoeff(aa22,hPr1,hPl2
     & ,-1)*r15**(-2)*r25*rd**2*gqr*s125 + gcoeff(aa22,hPr1,hPl2,-1)*
     & r15**(-2)*r25*r5d*rd*gqr*s125 + 2.D0*gcoeff(aa22,hPr1,hPl2,-1)*
     & r15**(-2)*r25*r2d*rd*gqr*s125 - gcoeff(aa22,hPr1,hPl2,-1)*
     & r15**(-2)*r25*r2d*r5d*gqr*s125 + gcoeff(aa22,hPr1,hPl2,-1)*
     & r15**(-2)*r25*r1d*rd*gqr*s125 - gcoeff(aa22,hPr1,hPl2,-1)*
     & r15**(-2)*r25*r1d*r2d*gqr*s125 - gcoeff(aa22,hPr1,hPl2,-1)*
     & r15**(-1)*r25**(-1)*rd**2*gqr*s125
      e  = e  + gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gqr*
     & s125 + gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*rd*gqr*
     & s125 - gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*gqr
     & *s125 - gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r2d*rd*gqr*s125 + 
     & gcoeff(aa22,hPr1,hPl2,-1)*r15**(-1)*r2d**2*gqr*s125 + gcoeff(
     & aa22,hPr1,hPl2,-1)*r15**(-1)*r1d*rd*gqr*s125 - gcoeff(aa22,hPr1,
     & hPl2,-1)*r15**(-1)*r1d*r2d*gqr*s125 + 2.D0*gcoeff(aa22,hPr1,hPl2
     & ,-1)*r25**(-1)*rd**2*gqr*s125 - gcoeff(aa22,hPr1,hPl2,-1)*
     & r25**(-1)*r5d*rd*gqr*s125 - 3.D0*gcoeff(aa22,hPr1,hPl2,-1)*
     & r25**(-1)*r2d*rd*gqr*s125 + gcoeff(aa22,hPr1,hPl2,-1)*r25**(-1)*
     & r2d*r5d*gqr*s125 + gcoeff(aa22,hPr1,hPl2,-1)*r25**(-1)*r2d**2*
     & gqr*s125 + 8.D0*gcoeff(aa22,hPr1,hPl2,-1)*e1234*r15**(-2)*rd*gqr
     & *imagunit*s125**(-1) - 8.D0*gcoeff(aa22,hPr1,hPl2,-1)*e1234*
     & r15**(-2)*r2d*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(aa22,hPr1,
     & hPl2,-1)*e1234*r15**(-1)*r25**(-1)*rd*gqr*imagunit*s125**(-1) - 
     & 8.D0*gcoeff(aa22,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-1)*r2d*gqr
     & *imagunit*s125**(-1)
      e  = e  + gcoeff(aa22,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*rd**2*gqr*
     & s125 - gcoeff(aa22,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r5d*rd*gqr*
     & s125 - gcoeff(aa22,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r2d*rd*gqr*
     & s125 + gcoeff(aa22,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r2d*r5d*gqr*
     & s125 - 3.D0*gcoeff(aa22,hPr1,hPl2,0)*r15**(-2)*rd**2*gqr*s125 + 
     & 2.D0*gcoeff(aa22,hPr1,hPl2,0)*r15**(-2)*r5d*rd*gqr*s125 + 3.D0*
     & gcoeff(aa22,hPr1,hPl2,0)*r15**(-2)*r2d*rd*gqr*s125 - 2.D0*
     & gcoeff(aa22,hPr1,hPl2,0)*r15**(-2)*r2d*r5d*gqr*s125 + gcoeff(
     & aa22,hPr1,hPl2,0)*r15**(-2)*r1d*rd*gqr*s125 - gcoeff(aa22,hPr1,
     & hPl2,0)*r15**(-2)*r1d*r2d*gqr*s125 + 2.D0*gcoeff(aa22,hPr1,hPl2,
     & 0)*r15**(-2)*r25*rd**2*gqr*s125 - gcoeff(aa22,hPr1,hPl2,0)*
     & r15**(-2)*r25*r5d*rd*gqr*s125 - 2.D0*gcoeff(aa22,hPr1,hPl2,0)*
     & r15**(-2)*r25*r2d*rd*gqr*s125 + gcoeff(aa22,hPr1,hPl2,0)*
     & r15**(-2)*r25*r2d*r5d*gqr*s125 - gcoeff(aa22,hPr1,hPl2,0)*
     & r15**(-2)*r25*r1d*rd*gqr*s125 + gcoeff(aa22,hPr1,hPl2,0)*
     & r15**(-2)*r25*r1d*r2d*gqr*s125
      e  = e  - 2.D0*gcoeff(aa22,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*rd**2*
     & gqr*s125 + gcoeff(aa22,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r5d*rd*
     & gqr*s125 + 3.D0*gcoeff(aa22,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d
     & *rd*gqr*s125 - gcoeff(aa22,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*
     & r5d*gqr*s125 - gcoeff(aa22,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*
     & r2d**2*gqr*s125 + 4.D0*gcoeff(aa22,hPr1,hPl2,0)*r15**(-1)*rd**2*
     & gqr*s125 - gcoeff(aa22,hPr1,hPl2,0)*r15**(-1)*r5d*rd*gqr*s125 - 
     & 5.D0*gcoeff(aa22,hPr1,hPl2,0)*r15**(-1)*r2d*rd*gqr*s125 + 
     & gcoeff(aa22,hPr1,hPl2,0)*r15**(-1)*r2d*r5d*gqr*s125 + gcoeff(
     & aa22,hPr1,hPl2,0)*r15**(-1)*r2d**2*gqr*s125 - 2.D0*gcoeff(aa22,
     & hPr1,hPl2,0)*r15**(-1)*r1d*rd*gqr*s125 + 2.D0*gcoeff(aa22,hPr1,
     & hPl2,0)*r15**(-1)*r1d*r2d*gqr*s125 + 8.D0*gcoeff(aa22,hPr1,hPl2,
     & 0)*e1234*r15**(-2)*r25**(-1)*rd*gqr*imagunit*s125**(-1) - 8.D0*
     & gcoeff(aa22,hPr1,hPl2,0)*e1234*r15**(-2)*r25**(-1)*r2d*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa22,hPr1,hPl2,0)*e1234*
     & r15**(-2)*rd*gqr*imagunit*s125**(-1)
      e  = e  + 8.D0*gcoeff(aa22,hPr1,hPl2,0)*e1234*r15**(-2)*r2d*gqr*
     & imagunit*s125**(-1) + gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*rd**2*
     & gql*s125 - gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*r5d*rd*gql*s125
     &  - gcoeff(aa21,hPl1,hPr2,-1)*r15**(-2)*r1d*rd*gql*s125 + gcoeff(
     & aa21,hPl1,hPr2,-1)*r15**(-2)*r1d*r5d*gql*s125 - 2.D0*gcoeff(aa21
     & ,hPl1,hPr2,-1)*r15**(-2)*r25*rd**2*gql*s125 + gcoeff(aa21,hPl1,
     & hPr2,-1)*r15**(-2)*r25*r5d*rd*gql*s125 + 3.D0*gcoeff(aa21,hPl1,
     & hPr2,-1)*r15**(-2)*r25*r1d*rd*gql*s125 - gcoeff(aa21,hPl1,hPr2,
     & -1)*r15**(-2)*r25*r1d*r5d*gql*s125 - gcoeff(aa21,hPl1,hPr2,-1)*
     & r15**(-2)*r25*r1d**2*gql*s125 - gcoeff(aa21,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa21,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa21,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*r1d*r5d*gql*s125 - gcoeff(aa21,hPl1,hPr2,-1)
     & *r15**(-1)*r2d*rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)
     & *r1d*rd*gql*s125
      e  = e  + gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*r1d*r2d*gql*s125 - 
     & gcoeff(aa21,hPl1,hPr2,-1)*r15**(-1)*r1d**2*gql*s125 + 2.D0*
     & gcoeff(aa21,hPl1,hPr2,-1)*r25**(-1)*rd**2*gql*s125 - gcoeff(aa21
     & ,hPl1,hPr2,-1)*r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa21,hPl1,hPr2
     & ,-1)*r25**(-1)*r2d*rd*gql*s125 - 2.D0*gcoeff(aa21,hPl1,hPr2,-1)*
     & r25**(-1)*r1d*rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,-1)*r25**(-1)*
     & r1d*r5d*gql*s125 + gcoeff(aa21,hPl1,hPr2,-1)*r25**(-1)*r1d*r2d*
     & gql*s125 - 8.D0*gcoeff(aa21,hPl1,hPr2,-1)*e1234*r15**(-2)*rd*gql
     & *imagunit*s125**(-1) + 8.D0*gcoeff(aa21,hPl1,hPr2,-1)*e1234*
     & r15**(-2)*r1d*gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa21,hPl1,
     & hPr2,-1)*e1234*r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa21,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-1)*r1d*gql
     & *imagunit*s125**(-1) + gcoeff(aa21,hPl1,hPr2,0)*r15**(-2)*
     & r25**(-1)*rd**2*gql*s125 - gcoeff(aa21,hPl1,hPr2,0)*r15**(-2)*
     & r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa21,hPl1,hPr2,0)*r15**(-2)*
     & r25**(-1)*r1d*rd*gql*s125
      e  = e  + gcoeff(aa21,hPl1,hPr2,0)*r15**(-2)*r25**(-1)*r1d*r5d*gql*
     & s125 - 3.D0*gcoeff(aa21,hPl1,hPr2,0)*r15**(-2)*rd**2*gql*s125 + 
     & 2.D0*gcoeff(aa21,hPl1,hPr2,0)*r15**(-2)*r5d*rd*gql*s125 + 4.D0*
     & gcoeff(aa21,hPl1,hPr2,0)*r15**(-2)*r1d*rd*gql*s125 - 2.D0*
     & gcoeff(aa21,hPl1,hPr2,0)*r15**(-2)*r1d*r5d*gql*s125 - gcoeff(
     & aa21,hPl1,hPr2,0)*r15**(-2)*r1d**2*gql*s125 + 2.D0*gcoeff(aa21,
     & hPl1,hPr2,0)*r15**(-2)*r25*rd**2*gql*s125 - gcoeff(aa21,hPl1,
     & hPr2,0)*r15**(-2)*r25*r5d*rd*gql*s125 - 3.D0*gcoeff(aa21,hPl1,
     & hPr2,0)*r15**(-2)*r25*r1d*rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,0)
     & *r15**(-2)*r25*r1d*r5d*gql*s125 + gcoeff(aa21,hPl1,hPr2,0)*
     & r15**(-2)*r25*r1d**2*gql*s125 - 2.D0*gcoeff(aa21,hPl1,hPr2,0)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 + gcoeff(aa21,hPl1,hPr2,0)*
     & r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,0)*
     & r15**(-1)*r25**(-1)*r2d*rd*gql*s125 + 2.D0*gcoeff(aa21,hPl1,hPr2
     & ,0)*r15**(-1)*r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa21,hPl1,hPr2,
     & 0)*r15**(-1)*r25**(-1)*r1d*r5d*gql*s125
      e  = e  - gcoeff(aa21,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*r2d*gql*
     & s125 + 4.D0*gcoeff(aa21,hPl1,hPr2,0)*r15**(-1)*rd**2*gql*s125 - 
     & gcoeff(aa21,hPl1,hPr2,0)*r15**(-1)*r5d*rd*gql*s125 - gcoeff(aa21
     & ,hPl1,hPr2,0)*r15**(-1)*r2d*rd*gql*s125 - 6.D0*gcoeff(aa21,hPl1,
     & hPr2,0)*r15**(-1)*r1d*rd*gql*s125 + gcoeff(aa21,hPl1,hPr2,0)*
     & r15**(-1)*r1d*r5d*gql*s125 + gcoeff(aa21,hPl1,hPr2,0)*r15**(-1)*
     & r1d*r2d*gql*s125 + 2.D0*gcoeff(aa21,hPl1,hPr2,0)*r15**(-1)*
     & r1d**2*gql*s125 - 8.D0*gcoeff(aa21,hPl1,hPr2,0)*e1234*r15**(-2)*
     & r25**(-1)*rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa21,hPl1,
     & hPr2,0)*e1234*r15**(-2)*r25**(-1)*r1d*gql*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa21,hPl1,hPr2,0)*e1234*r15**(-2)*rd*gql*imagunit*
     & s125**(-1) - 8.D0*gcoeff(aa21,hPl1,hPr2,0)*e1234*r15**(-2)*r1d*
     & gql*imagunit*s125**(-1) + gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*
     & rd**2*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r5d*rd*gqr*
     & s125 - gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r1d*rd*gqr*s125 + 
     & gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r1d*r5d*gqr*s125
      e  = e  - 2.D0*gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r25*rd**2*gqr*
     & s125 + gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r25*r5d*rd*gqr*s125
     &  + 3.D0*gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r25*r1d*rd*gqr*s125
     &  - gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r25*r1d*r5d*gqr*s125 - 
     & gcoeff(aa21,hPr1,hPl2,-1)*r15**(-2)*r25*r1d**2*gqr*s125 - 
     & gcoeff(aa21,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 + 
     & gcoeff(aa21,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 + 
     & gcoeff(aa21,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*rd*gqr*s125 - 
     & gcoeff(aa21,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*r5d*gqr*s125
     &  - gcoeff(aa21,hPr1,hPl2,-1)*r15**(-1)*r2d*rd*gqr*s125 + gcoeff(
     & aa21,hPr1,hPl2,-1)*r15**(-1)*r1d*rd*gqr*s125 + gcoeff(aa21,hPr1,
     & hPl2,-1)*r15**(-1)*r1d*r2d*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-1)*
     & r15**(-1)*r1d**2*gqr*s125 + 2.D0*gcoeff(aa21,hPr1,hPl2,-1)*
     & r25**(-1)*rd**2*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-1)*r25**(-1)*
     & r5d*rd*gqr*s125 - gcoeff(aa21,hPr1,hPl2,-1)*r25**(-1)*r2d*rd*gqr
     & *s125
      e  = e  - 2.D0*gcoeff(aa21,hPr1,hPl2,-1)*r25**(-1)*r1d*rd*gqr*s125
     &  + gcoeff(aa21,hPr1,hPl2,-1)*r25**(-1)*r1d*r5d*gqr*s125 + 
     & gcoeff(aa21,hPr1,hPl2,-1)*r25**(-1)*r1d*r2d*gqr*s125 + 8.D0*
     & gcoeff(aa21,hPr1,hPl2,-1)*e1234*r15**(-2)*rd*gqr*imagunit*
     & s125**(-1) - 8.D0*gcoeff(aa21,hPr1,hPl2,-1)*e1234*r15**(-2)*r1d*
     & gqr*imagunit*s125**(-1) + 8.D0*gcoeff(aa21,hPr1,hPl2,-1)*e1234*
     & r15**(-1)*r25**(-1)*rd*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa21,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-1)*r1d*gqr*imagunit*
     & s125**(-1) + gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*rd**2*
     & gqr*s125 - gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r5d*rd*
     & gqr*s125 - gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r1d*rd*
     & gqr*s125 + gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r1d*r5d*
     & gqr*s125 - 3.D0*gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*rd**2*gqr*
     & s125 + 2.D0*gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*r5d*rd*gqr*s125
     &  + 4.D0*gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*r1d*rd*gqr*s125 - 2.D0
     & *gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*r1d*r5d*gqr*s125
      e  = e  - gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*r1d**2*gqr*s125 + 2.D0
     & *gcoeff(aa21,hPr1,hPl2,0)*r15**(-2)*r25*rd**2*gqr*s125 - gcoeff(
     & aa21,hPr1,hPl2,0)*r15**(-2)*r25*r5d*rd*gqr*s125 - 3.D0*gcoeff(
     & aa21,hPr1,hPl2,0)*r15**(-2)*r25*r1d*rd*gqr*s125 + gcoeff(aa21,
     & hPr1,hPl2,0)*r15**(-2)*r25*r1d*r5d*gqr*s125 + gcoeff(aa21,hPr1,
     & hPl2,0)*r15**(-2)*r25*r1d**2*gqr*s125 - 2.D0*gcoeff(aa21,hPr1,
     & hPl2,0)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 + gcoeff(aa21,hPr1,
     & hPl2,0)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 + gcoeff(aa21,hPr1,
     & hPl2,0)*r15**(-1)*r25**(-1)*r2d*rd*gqr*s125 + 2.D0*gcoeff(aa21,
     & hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d*rd*gqr*s125 - gcoeff(aa21,
     & hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d*r5d*gqr*s125 - gcoeff(aa21,
     & hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d*r2d*gqr*s125 + 4.D0*gcoeff(
     & aa21,hPr1,hPl2,0)*r15**(-1)*rd**2*gqr*s125 - gcoeff(aa21,hPr1,
     & hPl2,0)*r15**(-1)*r5d*rd*gqr*s125 - gcoeff(aa21,hPr1,hPl2,0)*
     & r15**(-1)*r2d*rd*gqr*s125 - 6.D0*gcoeff(aa21,hPr1,hPl2,0)*
     & r15**(-1)*r1d*rd*gqr*s125
      e  = e  + gcoeff(aa21,hPr1,hPl2,0)*r15**(-1)*r1d*r5d*gqr*s125 + 
     & gcoeff(aa21,hPr1,hPl2,0)*r15**(-1)*r1d*r2d*gqr*s125 + 2.D0*
     & gcoeff(aa21,hPr1,hPl2,0)*r15**(-1)*r1d**2*gqr*s125 + 8.D0*
     & gcoeff(aa21,hPr1,hPl2,0)*e1234*r15**(-2)*r25**(-1)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa21,hPr1,hPl2,0)*e1234*
     & r15**(-2)*r25**(-1)*r1d*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa21,hPr1,hPl2,0)*e1234*r15**(-2)*rd*gqr*imagunit*s125**(-1) + 8.
     & D0*gcoeff(aa21,hPr1,hPl2,0)*e1234*r15**(-2)*r1d*gqr*imagunit*
     & s125**(-1) - gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*rd**2
     & *gql*s125 + 2.D0*gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r5d*rd*gql*s125 - gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r5d**2*gql*s125 + 2.D0*gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*rd**2
     & *gql*s125 - 3.D0*gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r5d*rd*gql*
     & s125 + gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r5d**2*gql*s125 - 
     & gcoeff(aa15,hPl1,hPr2,-1)*r15**(-1)*r1d*rd*gql*s125 + gcoeff(
     & aa15,hPl1,hPr2,-1)*r15**(-1)*r1d*r5d*gql*s125
      e  = e  + gcoeff(aa15,hPl1,hPr2,-1)*r25**(-2)*rd**2*gql*s125 - 2.D0
     & *gcoeff(aa15,hPl1,hPr2,-1)*r25**(-2)*r5d*rd*gql*s125 + gcoeff(
     & aa15,hPl1,hPr2,-1)*r25**(-2)*r5d**2*gql*s125 + gcoeff(aa15,hPl1,
     & hPr2,-1)*r25**(-1)*r2d*rd*gql*s125 - gcoeff(aa15,hPl1,hPr2,-1)*
     & r25**(-1)*r2d*r5d*gql*s125 - gcoeff(aa15,hPl1,hPr2,-1)*r25**(-1)
     & *r1d*rd*gql*s125 + gcoeff(aa15,hPl1,hPr2,-1)*r25**(-1)*r1d*r5d*
     & gql*s125 - 2.D0*gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*rd**2*
     & gql*s125 + 3.D0*gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*r5d*rd*
     & gql*s125 - gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*r5d**2*gql*
     & s125 + gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*r2d*rd*gql*s125
     &  - gcoeff(aa15,hPl1,hPr2,-1)*r15*r25**(-2)*r2d*r5d*gql*s125 + 8.D
     & 0*gcoeff(aa15,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-1)*rd*gql*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa15,hPl1,hPr2,-1)*e1234*
     & r15**(-1)*r25**(-1)*r5d*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa15,hPl1,hPr2,-1)*e1234*r25**(-2)*rd*gql*imagunit*s125**(-1) - 
     & 8.D0*gcoeff(aa15,hPl1,hPr2,-1)*e1234*r25**(-2)*r5d*gql*imagunit*
     & s125**(-1)
      e  = e  + gcoeff(aa15,hPl1,hPr2,0)*r15**(-1)*r25**(-2)*rd**2*gql*
     & s125 - 2.D0*gcoeff(aa15,hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r5d*rd*
     & gql*s125 + gcoeff(aa15,hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r5d**2*
     & gql*s125 - 2.D0*gcoeff(aa15,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*
     & rd**2*gql*s125 + 3.D0*gcoeff(aa15,hPl1,hPr2,0)*r15**(-1)*
     & r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa15,hPl1,hPr2,0)*r15**(-1)*
     & r25**(-1)*r5d**2*gql*s125 + gcoeff(aa15,hPl1,hPr2,0)*r15**(-1)*
     & r25**(-1)*r1d*rd*gql*s125 - gcoeff(aa15,hPl1,hPr2,0)*r15**(-1)*
     & r25**(-1)*r1d*r5d*gql*s125 - 3.D0*gcoeff(aa15,hPl1,hPr2,0)*
     & r25**(-2)*rd**2*gql*s125 + 5.D0*gcoeff(aa15,hPl1,hPr2,0)*
     & r25**(-2)*r5d*rd*gql*s125 - 2.D0*gcoeff(aa15,hPl1,hPr2,0)*
     & r25**(-2)*r5d**2*gql*s125 + gcoeff(aa15,hPl1,hPr2,0)*r25**(-2)*
     & r2d*rd*gql*s125 - gcoeff(aa15,hPl1,hPr2,0)*r25**(-2)*r2d*r5d*gql
     & *s125 + 4.D0*gcoeff(aa15,hPl1,hPr2,0)*r25**(-1)*rd**2*gql*s125
     &  - 5.D0*gcoeff(aa15,hPl1,hPr2,0)*r25**(-1)*r5d*rd*gql*s125 + 
     & gcoeff(aa15,hPl1,hPr2,0)*r25**(-1)*r5d**2*gql*s125
      e  = e  - 2.D0*gcoeff(aa15,hPl1,hPr2,0)*r25**(-1)*r2d*rd*gql*s125
     &  + 2.D0*gcoeff(aa15,hPl1,hPr2,0)*r25**(-1)*r2d*r5d*gql*s125 - 
     & gcoeff(aa15,hPl1,hPr2,0)*r25**(-1)*r1d*rd*gql*s125 + gcoeff(aa15
     & ,hPl1,hPr2,0)*r25**(-1)*r1d*r5d*gql*s125 + 2.D0*gcoeff(aa15,hPl1
     & ,hPr2,0)*r15*r25**(-2)*rd**2*gql*s125 - 3.D0*gcoeff(aa15,hPl1,
     & hPr2,0)*r15*r25**(-2)*r5d*rd*gql*s125 + gcoeff(aa15,hPl1,hPr2,0)
     & *r15*r25**(-2)*r5d**2*gql*s125 - gcoeff(aa15,hPl1,hPr2,0)*r15*
     & r25**(-2)*r2d*rd*gql*s125 + gcoeff(aa15,hPl1,hPr2,0)*r15*
     & r25**(-2)*r2d*r5d*gql*s125 - 8.D0*gcoeff(aa15,hPl1,hPr2,0)*e1234
     & *r15**(-1)*r25**(-2)*rd*gql*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa15,hPl1,hPr2,0)*e1234*r15**(-1)*r25**(-2)*r5d*gql*imagunit*
     & s125**(-1) + 8.D0*gcoeff(aa15,hPl1,hPr2,0)*e1234*r25**(-2)*rd*
     & gql*imagunit*s125**(-1) - 8.D0*gcoeff(aa15,hPl1,hPr2,0)*e1234*
     & r25**(-2)*r5d*gql*imagunit*s125**(-1) - gcoeff(aa15,hPr1,hPl2,-1
     & )*r15**(-1)*r25**(-1)*rd**2*gqr*s125 + 2.D0*gcoeff(aa15,hPr1,
     & hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
      e  = e  - gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d**2*gqr*
     & s125 + 2.D0*gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*rd**2*gqr*s125
     &  - 3.D0*gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*r5d*rd*gqr*s125 + 
     & gcoeff(aa15,hPr1,hPl2,-1)*r15**(-1)*r5d**2*gqr*s125 - gcoeff(
     & aa15,hPr1,hPl2,-1)*r15**(-1)*r1d*rd*gqr*s125 + gcoeff(aa15,hPr1,
     & hPl2,-1)*r15**(-1)*r1d*r5d*gqr*s125 + gcoeff(aa15,hPr1,hPl2,-1)*
     & r25**(-2)*rd**2*gqr*s125 - 2.D0*gcoeff(aa15,hPr1,hPl2,-1)*
     & r25**(-2)*r5d*rd*gqr*s125 + gcoeff(aa15,hPr1,hPl2,-1)*r25**(-2)*
     & r5d**2*gqr*s125 + gcoeff(aa15,hPr1,hPl2,-1)*r25**(-1)*r2d*rd*gqr
     & *s125 - gcoeff(aa15,hPr1,hPl2,-1)*r25**(-1)*r2d*r5d*gqr*s125 - 
     & gcoeff(aa15,hPr1,hPl2,-1)*r25**(-1)*r1d*rd*gqr*s125 + gcoeff(
     & aa15,hPr1,hPl2,-1)*r25**(-1)*r1d*r5d*gqr*s125 - 2.D0*gcoeff(aa15
     & ,hPr1,hPl2,-1)*r15*r25**(-2)*rd**2*gqr*s125 + 3.D0*gcoeff(aa15,
     & hPr1,hPl2,-1)*r15*r25**(-2)*r5d*rd*gqr*s125 - gcoeff(aa15,hPr1,
     & hPl2,-1)*r15*r25**(-2)*r5d**2*gqr*s125 + gcoeff(aa15,hPr1,hPl2,
     & -1)*r15*r25**(-2)*r2d*rd*gqr*s125
      e  = e  - gcoeff(aa15,hPr1,hPl2,-1)*r15*r25**(-2)*r2d*r5d*gqr*s125
     &  - 8.D0*gcoeff(aa15,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-1)*rd*
     & gqr*imagunit*s125**(-1) + 8.D0*gcoeff(aa15,hPr1,hPl2,-1)*e1234*
     & r15**(-1)*r25**(-1)*r5d*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa15,hPr1,hPl2,-1)*e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1) + 
     & 8.D0*gcoeff(aa15,hPr1,hPl2,-1)*e1234*r25**(-2)*r5d*gqr*imagunit*
     & s125**(-1) + gcoeff(aa15,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*rd**2*
     & gqr*s125 - 2.D0*gcoeff(aa15,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r5d
     & *rd*gqr*s125 + gcoeff(aa15,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*
     & r5d**2*gqr*s125 - 2.D0*gcoeff(aa15,hPr1,hPl2,0)*r15**(-1)*
     & r25**(-1)*rd**2*gqr*s125 + 3.D0*gcoeff(aa15,hPr1,hPl2,0)*
     & r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 - gcoeff(aa15,hPr1,hPl2,0)*
     & r15**(-1)*r25**(-1)*r5d**2*gqr*s125 + gcoeff(aa15,hPr1,hPl2,0)*
     & r15**(-1)*r25**(-1)*r1d*rd*gqr*s125 - gcoeff(aa15,hPr1,hPl2,0)*
     & r15**(-1)*r25**(-1)*r1d*r5d*gqr*s125 - 3.D0*gcoeff(aa15,hPr1,
     & hPl2,0)*r25**(-2)*rd**2*gqr*s125
      e  = e  + 5.D0*gcoeff(aa15,hPr1,hPl2,0)*r25**(-2)*r5d*rd*gqr*s125
     &  - 2.D0*gcoeff(aa15,hPr1,hPl2,0)*r25**(-2)*r5d**2*gqr*s125 + 
     & gcoeff(aa15,hPr1,hPl2,0)*r25**(-2)*r2d*rd*gqr*s125 - gcoeff(aa15
     & ,hPr1,hPl2,0)*r25**(-2)*r2d*r5d*gqr*s125 + 4.D0*gcoeff(aa15,hPr1
     & ,hPl2,0)*r25**(-1)*rd**2*gqr*s125 - 5.D0*gcoeff(aa15,hPr1,hPl2,0
     & )*r25**(-1)*r5d*rd*gqr*s125 + gcoeff(aa15,hPr1,hPl2,0)*r25**(-1)
     & *r5d**2*gqr*s125 - 2.D0*gcoeff(aa15,hPr1,hPl2,0)*r25**(-1)*r2d*
     & rd*gqr*s125 + 2.D0*gcoeff(aa15,hPr1,hPl2,0)*r25**(-1)*r2d*r5d*
     & gqr*s125 - gcoeff(aa15,hPr1,hPl2,0)*r25**(-1)*r1d*rd*gqr*s125 + 
     & gcoeff(aa15,hPr1,hPl2,0)*r25**(-1)*r1d*r5d*gqr*s125 + 2.D0*
     & gcoeff(aa15,hPr1,hPl2,0)*r15*r25**(-2)*rd**2*gqr*s125 - 3.D0*
     & gcoeff(aa15,hPr1,hPl2,0)*r15*r25**(-2)*r5d*rd*gqr*s125 + gcoeff(
     & aa15,hPr1,hPl2,0)*r15*r25**(-2)*r5d**2*gqr*s125 - gcoeff(aa15,
     & hPr1,hPl2,0)*r15*r25**(-2)*r2d*rd*gqr*s125 + gcoeff(aa15,hPr1,
     & hPl2,0)*r15*r25**(-2)*r2d*r5d*gqr*s125 + 8.D0*gcoeff(aa15,hPr1,
     & hPl2,0)*e1234*r15**(-1)*r25**(-2)*rd*gqr*imagunit*s125**(-1)
      e  = e  - 8.D0*gcoeff(aa15,hPr1,hPl2,0)*e1234*r15**(-1)*r25**(-2)*
     & r5d*gqr*imagunit*s125**(-1) - 8.D0*gcoeff(aa15,hPr1,hPl2,0)*
     & e1234*r25**(-2)*rd*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(aa15,
     & hPr1,hPl2,0)*e1234*r25**(-2)*r5d*gqr*imagunit*s125**(-1) - 
     & gcoeff(aa25,hPl1,hPr2,-1)*r15**(-2)*rd**2*gql*s125 + 2.D0*
     & gcoeff(aa25,hPl1,hPr2,-1)*r15**(-2)*r5d*rd*gql*s125 - gcoeff(
     & aa25,hPl1,hPr2,-1)*r15**(-2)*r5d**2*gql*s125 + 2.D0*gcoeff(aa25,
     & hPl1,hPr2,-1)*r15**(-2)*r25*rd**2*gql*s125 - 3.D0*gcoeff(aa25,
     & hPl1,hPr2,-1)*r15**(-2)*r25*r5d*rd*gql*s125 + gcoeff(aa25,hPl1,
     & hPr2,-1)*r15**(-2)*r25*r5d**2*gql*s125 - gcoeff(aa25,hPl1,hPr2,
     & -1)*r15**(-2)*r25*r1d*rd*gql*s125 + gcoeff(aa25,hPl1,hPr2,-1)*
     & r15**(-2)*r25*r1d*r5d*gql*s125 + gcoeff(aa25,hPl1,hPr2,-1)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 - 2.D0*gcoeff(aa25,hPl1,hPr2,
     & -1)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + gcoeff(aa25,hPl1,hPr2,
     & -1)*r15**(-1)*r25**(-1)*r5d**2*gql*s125 + gcoeff(aa25,hPl1,hPr2,
     & -1)*r15**(-1)*r2d*rd*gql*s125
      e  = e  - gcoeff(aa25,hPl1,hPr2,-1)*r15**(-1)*r2d*r5d*gql*s125 - 
     & gcoeff(aa25,hPl1,hPr2,-1)*r15**(-1)*r1d*rd*gql*s125 + gcoeff(
     & aa25,hPl1,hPr2,-1)*r15**(-1)*r1d*r5d*gql*s125 - 2.D0*gcoeff(aa25
     & ,hPl1,hPr2,-1)*r25**(-1)*rd**2*gql*s125 + 3.D0*gcoeff(aa25,hPl1,
     & hPr2,-1)*r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,-1)*
     & r25**(-1)*r5d**2*gql*s125 + gcoeff(aa25,hPl1,hPr2,-1)*r25**(-1)*
     & r2d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,-1)*r25**(-1)*r2d*r5d*
     & gql*s125 + 8.D0*gcoeff(aa25,hPl1,hPr2,-1)*e1234*r15**(-2)*rd*gql
     & *imagunit*s125**(-1) - 8.D0*gcoeff(aa25,hPl1,hPr2,-1)*e1234*
     & r15**(-2)*r5d*gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa25,hPl1,
     & hPr2,-1)*e1234*r15**(-1)*r25**(-1)*rd*gql*imagunit*s125**(-1) - 
     & 8.D0*gcoeff(aa25,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-1)*r5d*gql
     & *imagunit*s125**(-1) - gcoeff(aa25,hPl1,hPr2,0)*r15**(-2)*
     & r25**(-1)*rd**2*gql*s125 + 2.D0*gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-2)*r25**(-1)*r5d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-2)*r25**(-1)*r5d**2*gql*s125
      e  = e  + 3.D0*gcoeff(aa25,hPl1,hPr2,0)*r15**(-2)*rd**2*gql*s125 - 
     & 5.D0*gcoeff(aa25,hPl1,hPr2,0)*r15**(-2)*r5d*rd*gql*s125 + 2.D0*
     & gcoeff(aa25,hPl1,hPr2,0)*r15**(-2)*r5d**2*gql*s125 - gcoeff(aa25
     & ,hPl1,hPr2,0)*r15**(-2)*r1d*rd*gql*s125 + gcoeff(aa25,hPl1,hPr2,
     & 0)*r15**(-2)*r1d*r5d*gql*s125 - 2.D0*gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-2)*r25*rd**2*gql*s125 + 3.D0*gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-2)*r25*r5d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-2)*r25*r5d**2*gql*s125 + gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-2)*r25*r1d*rd*gql*s125 - gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-2)*r25*r1d*r5d*gql*s125 + 2.D0*gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-1)*r25**(-1)*rd**2*gql*s125 - 3.D0*gcoeff(aa25,hPl1,hPr2,
     & 0)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + gcoeff(aa25,hPl1,hPr2,0
     & )*r15**(-1)*r25**(-1)*r5d**2*gql*s125 - gcoeff(aa25,hPl1,hPr2,0)
     & *r15**(-1)*r25**(-1)*r2d*rd*gql*s125 + gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-1)*r25**(-1)*r2d*r5d*gql*s125 - 4.D0*gcoeff(aa25,hPl1,
     & hPr2,0)*r15**(-1)*rd**2*gql*s125
      e  = e  + 5.D0*gcoeff(aa25,hPl1,hPr2,0)*r15**(-1)*r5d*rd*gql*s125
     &  - gcoeff(aa25,hPl1,hPr2,0)*r15**(-1)*r5d**2*gql*s125 + gcoeff(
     & aa25,hPl1,hPr2,0)*r15**(-1)*r2d*rd*gql*s125 - gcoeff(aa25,hPl1,
     & hPr2,0)*r15**(-1)*r2d*r5d*gql*s125 + 2.D0*gcoeff(aa25,hPl1,hPr2,
     & 0)*r15**(-1)*r1d*rd*gql*s125 - 2.D0*gcoeff(aa25,hPl1,hPr2,0)*
     & r15**(-1)*r1d*r5d*gql*s125 + 8.D0*gcoeff(aa25,hPl1,hPr2,0)*e1234
     & *r15**(-2)*r25**(-1)*rd*gql*imagunit*s125**(-1) - 8.D0*gcoeff(
     & aa25,hPl1,hPr2,0)*e1234*r15**(-2)*r25**(-1)*r5d*gql*imagunit*
     & s125**(-1) - 8.D0*gcoeff(aa25,hPl1,hPr2,0)*e1234*r15**(-2)*rd*
     & gql*imagunit*s125**(-1) + 8.D0*gcoeff(aa25,hPl1,hPr2,0)*e1234*
     & r15**(-2)*r5d*gql*imagunit*s125**(-1) - gcoeff(aa25,hPr1,hPl2,-1
     & )*r15**(-2)*rd**2*gqr*s125 + 2.D0*gcoeff(aa25,hPr1,hPl2,-1)*
     & r15**(-2)*r5d*rd*gqr*s125 - gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*
     & r5d**2*gqr*s125 + 2.D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25*
     & rd**2*gqr*s125 - 3.D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25*
     & r5d*rd*gqr*s125
      e  = e  + gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25*r5d**2*gqr*s125
     &  - gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25*r1d*rd*gqr*s125 + 
     & gcoeff(aa25,hPr1,hPl2,-1)*r15**(-2)*r25*r1d*r5d*gqr*s125 + 
     & gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 - 2.
     & D0*gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125
     &  + gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d**2*gqr*s125
     &  + gcoeff(aa25,hPr1,hPl2,-1)*r15**(-1)*r2d*rd*gqr*s125 - gcoeff(
     & aa25,hPr1,hPl2,-1)*r15**(-1)*r2d*r5d*gqr*s125 - gcoeff(aa25,hPr1
     & ,hPl2,-1)*r15**(-1)*r1d*rd*gqr*s125 + gcoeff(aa25,hPr1,hPl2,-1)*
     & r15**(-1)*r1d*r5d*gqr*s125 - 2.D0*gcoeff(aa25,hPr1,hPl2,-1)*
     & r25**(-1)*rd**2*gqr*s125 + 3.D0*gcoeff(aa25,hPr1,hPl2,-1)*
     & r25**(-1)*r5d*rd*gqr*s125 - gcoeff(aa25,hPr1,hPl2,-1)*r25**(-1)*
     & r5d**2*gqr*s125 + gcoeff(aa25,hPr1,hPl2,-1)*r25**(-1)*r2d*rd*gqr
     & *s125 - gcoeff(aa25,hPr1,hPl2,-1)*r25**(-1)*r2d*r5d*gqr*s125 - 8.
     & D0*gcoeff(aa25,hPr1,hPl2,-1)*e1234*r15**(-2)*rd*gqr*imagunit*
     & s125**(-1)
      e  = e  + 8.D0*gcoeff(aa25,hPr1,hPl2,-1)*e1234*r15**(-2)*r5d*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa25,hPr1,hPl2,-1)*e1234*
     & r15**(-1)*r25**(-1)*rd*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa25,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-1)*r5d*gqr*imagunit*
     & s125**(-1) - gcoeff(aa25,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*rd**2*
     & gqr*s125 + 2.D0*gcoeff(aa25,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*r5d
     & *rd*gqr*s125 - gcoeff(aa25,hPr1,hPl2,0)*r15**(-2)*r25**(-1)*
     & r5d**2*gqr*s125 + 3.D0*gcoeff(aa25,hPr1,hPl2,0)*r15**(-2)*rd**2*
     & gqr*s125 - 5.D0*gcoeff(aa25,hPr1,hPl2,0)*r15**(-2)*r5d*rd*gqr*
     & s125 + 2.D0*gcoeff(aa25,hPr1,hPl2,0)*r15**(-2)*r5d**2*gqr*s125
     &  - gcoeff(aa25,hPr1,hPl2,0)*r15**(-2)*r1d*rd*gqr*s125 + gcoeff(
     & aa25,hPr1,hPl2,0)*r15**(-2)*r1d*r5d*gqr*s125 - 2.D0*gcoeff(aa25,
     & hPr1,hPl2,0)*r15**(-2)*r25*rd**2*gqr*s125 + 3.D0*gcoeff(aa25,
     & hPr1,hPl2,0)*r15**(-2)*r25*r5d*rd*gqr*s125 - gcoeff(aa25,hPr1,
     & hPl2,0)*r15**(-2)*r25*r5d**2*gqr*s125 + gcoeff(aa25,hPr1,hPl2,0)
     & *r15**(-2)*r25*r1d*rd*gqr*s125
      e  = e  - gcoeff(aa25,hPr1,hPl2,0)*r15**(-2)*r25*r1d*r5d*gqr*s125
     &  + 2.D0*gcoeff(aa25,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*rd**2*gqr*
     & s125 - 3.D0*gcoeff(aa25,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r5d*rd*
     & gqr*s125 + gcoeff(aa25,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r5d**2*
     & gqr*s125 - gcoeff(aa25,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*rd*
     & gqr*s125 + gcoeff(aa25,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*r5d*
     & gqr*s125 - 4.D0*gcoeff(aa25,hPr1,hPl2,0)*r15**(-1)*rd**2*gqr*
     & s125 + 5.D0*gcoeff(aa25,hPr1,hPl2,0)*r15**(-1)*r5d*rd*gqr*s125
     &  - gcoeff(aa25,hPr1,hPl2,0)*r15**(-1)*r5d**2*gqr*s125 + gcoeff(
     & aa25,hPr1,hPl2,0)*r15**(-1)*r2d*rd*gqr*s125 - gcoeff(aa25,hPr1,
     & hPl2,0)*r15**(-1)*r2d*r5d*gqr*s125 + 2.D0*gcoeff(aa25,hPr1,hPl2,
     & 0)*r15**(-1)*r1d*rd*gqr*s125 - 2.D0*gcoeff(aa25,hPr1,hPl2,0)*
     & r15**(-1)*r1d*r5d*gqr*s125 - 8.D0*gcoeff(aa25,hPr1,hPl2,0)*e1234
     & *r15**(-2)*r25**(-1)*rd*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(
     & aa25,hPr1,hPl2,0)*e1234*r15**(-2)*r25**(-1)*r5d*gqr*imagunit*
     & s125**(-1)
      e  = e  + 8.D0*gcoeff(aa25,hPr1,hPl2,0)*e1234*r15**(-2)*rd*gqr*
     & imagunit*s125**(-1) - 8.D0*gcoeff(aa25,hPr1,hPl2,0)*e1234*
     & r15**(-2)*r5d*gqr*imagunit*s125**(-1) + 8.D0*gcoeff(bb0,hPl1,
     & hPr2,0)*r15**(-1)*r25**(-1)*rd*gql*s125 - 12.D0*gcoeff(bb0,hPl1,
     & hPr2,0)*r15**(-1)*r25**(-1)*rd**2*gql*s125 + 4.D0*gcoeff(bb0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r5d*rd*gql*s125 + 10.D0*gcoeff(
     & bb0,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d*rd*gql*s125 - 2.D0*
     & gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d*r5d*gql*s125 + 
     & 10.D0*gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*rd*gql*
     & s125 - 2.D0*gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*r5d*
     & gql*s125 - 8.D0*gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*
     & r2d*gql*s125 - 12.D0*gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*rd*gql*
     & s125 + 12.D0*gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*rd**2*gql*s125 - 
     & 4.D0*gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r5d*rd*gql*s125 - 8.D0*
     & gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r2d*rd*gql*s125 + 2.D0*gcoeff(
     & bb0,hPl1,hPr2,0)*r15**(-1)*r2d*r5d*gql*s125
      e  = e  - 12.D0*gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r1d*rd*gql*s125
     &  + 2.D0*gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r1d*r5d*gql*s125 + 6.D0
     & *gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r1d*r2d*gql*s125 + 2.D0*
     & gcoeff(bb0,hPl1,hPr2,0)*r15**(-1)*r1d**2*gql*s125 + 4.D0*gcoeff(
     & bb0,hPl1,hPr2,0)*r15**(-1)*r25*rd*gql*s125 - 12.D0*gcoeff(bb0,
     & hPl1,hPr2,0)*r25**(-1)*rd*gql*s125 + 12.D0*gcoeff(bb0,hPl1,hPr2,
     & 0)*r25**(-1)*rd**2*gql*s125 - 4.D0*gcoeff(bb0,hPl1,hPr2,0)*
     & r25**(-1)*r5d*rd*gql*s125 - 12.D0*gcoeff(bb0,hPl1,hPr2,0)*
     & r25**(-1)*r2d*rd*gql*s125 + 2.D0*gcoeff(bb0,hPl1,hPr2,0)*
     & r25**(-1)*r2d*r5d*gql*s125 + 2.D0*gcoeff(bb0,hPl1,hPr2,0)*
     & r25**(-1)*r2d**2*gql*s125 - 8.D0*gcoeff(bb0,hPl1,hPr2,0)*
     & r25**(-1)*r1d*rd*gql*s125 + 2.D0*gcoeff(bb0,hPl1,hPr2,0)*
     & r25**(-1)*r1d*r5d*gql*s125 + 6.D0*gcoeff(bb0,hPl1,hPr2,0)*
     & r25**(-1)*r1d*r2d*gql*s125 + 8.D0*gcoeff(bb0,hPl1,hPr2,0)*rd*gql
     & *s125 + 4.D0*gcoeff(bb0,hPl1,hPr2,0)*r15*r25**(-1)*rd*gql*s125
     &  - 32.D0*gcoeff(bb0,hPl1,hPr2,0)*e1234*r15**(-1)*r25**(-1)*rd*
     & gql*imagunit*s125**(-1)
      e  = e  + 16.D0*gcoeff(bb0,hPl1,hPr2,0)*e1234*r15**(-1)*r25**(-1)*
     & r2d*gql*imagunit*s125**(-1) + 16.D0*gcoeff(bb0,hPl1,hPr2,0)*
     & e1234*r15**(-1)*r25**(-1)*r1d*gql*imagunit*s125**(-1) + 8.D0*
     & gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*rd*gqr*s125 - 12.D0*
     & gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*rd**2*gqr*s125 + 4.D0
     & *gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r5d*rd*gqr*s125 + 
     & 10.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*rd*gqr*
     & s125 - 2.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*r5d*
     & gqr*s125 + 10.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d
     & *rd*gqr*s125 - 2.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*
     & r1d*r5d*gqr*s125 - 8.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*
     & r25**(-1)*r1d*r2d*gqr*s125 - 12.D0*gcoeff(bb0,hPr1,hPl2,0)*
     & r15**(-1)*rd*gqr*s125 + 12.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*
     & rd**2*gqr*s125 - 4.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r5d*rd*
     & gqr*s125 - 8.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r2d*rd*gqr*
     & s125
      e  = e  + 2.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r2d*r5d*gqr*s125
     &  - 12.D0*gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r1d*rd*gqr*s125 + 2.D0
     & *gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r1d*r5d*gqr*s125 + 6.D0*
     & gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r1d*r2d*gqr*s125 + 2.D0*
     & gcoeff(bb0,hPr1,hPl2,0)*r15**(-1)*r1d**2*gqr*s125 + 4.D0*gcoeff(
     & bb0,hPr1,hPl2,0)*r15**(-1)*r25*rd*gqr*s125 - 12.D0*gcoeff(bb0,
     & hPr1,hPl2,0)*r25**(-1)*rd*gqr*s125 + 12.D0*gcoeff(bb0,hPr1,hPl2,
     & 0)*r25**(-1)*rd**2*gqr*s125 - 4.D0*gcoeff(bb0,hPr1,hPl2,0)*
     & r25**(-1)*r5d*rd*gqr*s125 - 12.D0*gcoeff(bb0,hPr1,hPl2,0)*
     & r25**(-1)*r2d*rd*gqr*s125 + 2.D0*gcoeff(bb0,hPr1,hPl2,0)*
     & r25**(-1)*r2d*r5d*gqr*s125 + 2.D0*gcoeff(bb0,hPr1,hPl2,0)*
     & r25**(-1)*r2d**2*gqr*s125 - 8.D0*gcoeff(bb0,hPr1,hPl2,0)*
     & r25**(-1)*r1d*rd*gqr*s125 + 2.D0*gcoeff(bb0,hPr1,hPl2,0)*
     & r25**(-1)*r1d*r5d*gqr*s125 + 6.D0*gcoeff(bb0,hPr1,hPl2,0)*
     & r25**(-1)*r1d*r2d*gqr*s125 + 8.D0*gcoeff(bb0,hPr1,hPl2,0)*rd*gqr
     & *s125
      e  = e  + 4.D0*gcoeff(bb0,hPr1,hPl2,0)*r15*r25**(-1)*rd*gqr*s125 + 
     & 32.D0*gcoeff(bb0,hPr1,hPl2,0)*e1234*r15**(-1)*r25**(-1)*rd*gqr*
     & imagunit*s125**(-1) - 16.D0*gcoeff(bb0,hPr1,hPl2,0)*e1234*
     & r15**(-1)*r25**(-1)*r2d*gqr*imagunit*s125**(-1) - 16.D0*gcoeff(
     & bb0,hPr1,hPl2,0)*e1234*r15**(-1)*r25**(-1)*r1d*gqr*imagunit*
     & s125**(-1) - 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*
     & rd**2*gql + 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*
     & r5d*rd*gql - 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-2)*
     & r5d**2*gql + 16.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & rd**2*gql - 20.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r5d*rd*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r5d**2*gql - 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r2d*rd*gql + 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r2d*r5d*gql - 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r1d*rd*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*r25**(-1)*
     & r1d*r5d*gql
      e  = e  - 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r15**(-1)*rd*gql + 8.D0*
     & gcoeff(dd0,hPl1,hPr2,-1)*r25**(-2)*rd**2*gql - 12.D0*gcoeff(dd0,
     & hPl1,hPr2,-1)*r25**(-2)*r5d*rd*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,
     & -1)*r25**(-2)*r5d**2*gql - 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*
     & r25**(-2)*r2d*rd*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,-1)*r25**(-2)*
     & r2d*r5d*gql - 8.D0*gcoeff(dd0,hPl1,hPr2,-1)*r25**(-1)*rd*gql - 
     & 32.D0*gcoeff(dd0,hPl1,hPr2,-1)*e1234*r15**(-1)*r25**(-2)*rd*gql*
     & imagunit*s125**(-2) + 32.D0*gcoeff(dd0,hPl1,hPr2,-1)*e1234*
     & r15**(-1)*r25**(-2)*r5d*gql*imagunit*s125**(-2) - 4.D0*gcoeff(
     & dd0,hPl1,hPr2,0)*r15**(-1)*r25**(-2)*rd**2*gql + 4.D0*gcoeff(dd0
     & ,hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r5d*rd*gql + 4.D0*gcoeff(dd0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r2d*rd*gql - 4.D0*gcoeff(dd0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-2)*r2d*r5d*gql + 8.D0*gcoeff(dd0,
     & hPl1,hPr2,0)*r15**(-1)*r25**(-1)*rd*gql - 8.D0*gcoeff(dd0,hPl1,
     & hPr2,0)*r15**(-1)*r25**(-1)*rd**2*gql + 4.D0*gcoeff(dd0,hPl1,
     & hPr2,0)*r15**(-1)*r25**(-1)*r5d*rd*gql
      e  = e  + 8.D0*gcoeff(dd0,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d*rd*
     & gql - 4.D0*gcoeff(dd0,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r2d*r5d*
     & gql + 4.D0*gcoeff(dd0,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*rd*
     & gql - 4.D0*gcoeff(dd0,hPl1,hPr2,0)*r15**(-1)*r25**(-1)*r1d*r2d*
     & gql + 8.D0*gcoeff(dd0,hPl1,hPr2,0)*r25**(-2)*rd**2*gql - 4.D0*
     & gcoeff(dd0,hPl1,hPr2,0)*r25**(-2)*r5d*rd*gql - 12.D0*gcoeff(dd0,
     & hPl1,hPr2,0)*r25**(-2)*r2d*rd*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,0)
     & *r25**(-2)*r2d*r5d*gql + 4.D0*gcoeff(dd0,hPl1,hPr2,0)*r25**(-2)*
     & r2d**2*gql - 8.D0*gcoeff(dd0,hPl1,hPr2,0)*r25**(-1)*rd*gql + 32.D
     & 0*gcoeff(dd0,hPl1,hPr2,0)*e1234*r15**(-1)*r25**(-2)*rd*gql*
     & imagunit*s125**(-2) - 32.D0*gcoeff(dd0,hPl1,hPr2,0)*e1234*
     & r15**(-1)*r25**(-2)*r2d*gql*imagunit*s125**(-2) - 4.D0*gcoeff(
     & dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*rd**2*gqr + 8.D0*gcoeff(
     & dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*r5d*rd*gqr - 4.D0*gcoeff(
     & dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-2)*r5d**2*gqr + 16.D0*gcoeff(
     & dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*rd**2*gqr
      e  = e  - 20.D0*gcoeff(dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d*rd
     & *gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r5d**2*
     & gqr - 8.D0*gcoeff(dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*rd*
     & gqr + 8.D0*gcoeff(dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r2d*r5d*
     & gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*rd*
     & gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*r15**(-1)*r25**(-1)*r1d*r5d*
     & gqr - 8.D0*gcoeff(dd0,hPr1,hPl2,-1)*r15**(-1)*rd*gqr + 8.D0*
     & gcoeff(dd0,hPr1,hPl2,-1)*r25**(-2)*rd**2*gqr - 12.D0*gcoeff(dd0,
     & hPr1,hPl2,-1)*r25**(-2)*r5d*rd*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,
     & -1)*r25**(-2)*r5d**2*gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*
     & r25**(-2)*r2d*rd*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,-1)*r25**(-2)*
     & r2d*r5d*gqr - 8.D0*gcoeff(dd0,hPr1,hPl2,-1)*r25**(-1)*rd*gqr + 
     & 32.D0*gcoeff(dd0,hPr1,hPl2,-1)*e1234*r15**(-1)*r25**(-2)*rd*gqr*
     & imagunit*s125**(-2) - 32.D0*gcoeff(dd0,hPr1,hPl2,-1)*e1234*
     & r15**(-1)*r25**(-2)*r5d*gqr*imagunit*s125**(-2) - 4.D0*gcoeff(
     & dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*rd**2*gqr
      e  = e  + 4.D0*gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r5d*rd*
     & gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r2d*rd*
     & gqr - 4.D0*gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-2)*r2d*r5d*
     & gqr + 8.D0*gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*rd*gqr - 
     & 8.D0*gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*rd**2*gqr + 4.D0
     & *gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r5d*rd*gqr + 8.D0*
     & gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*rd*gqr - 4.D0*
     & gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r2d*r5d*gqr + 4.D0*
     & gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d*rd*gqr - 4.D0*
     & gcoeff(dd0,hPr1,hPl2,0)*r15**(-1)*r25**(-1)*r1d*r2d*gqr + 8.D0*
     & gcoeff(dd0,hPr1,hPl2,0)*r25**(-2)*rd**2*gqr - 4.D0*gcoeff(dd0,
     & hPr1,hPl2,0)*r25**(-2)*r5d*rd*gqr - 12.D0*gcoeff(dd0,hPr1,hPl2,0
     & )*r25**(-2)*r2d*rd*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,0)*r25**(-2)*
     & r2d*r5d*gqr + 4.D0*gcoeff(dd0,hPr1,hPl2,0)*r25**(-2)*r2d**2*gqr
     &  - 8.D0*gcoeff(dd0,hPr1,hPl2,0)*r25**(-1)*rd*gqr - 32.D0*gcoeff(
     & dd0,hPr1,hPl2,0)*e1234*r15**(-1)*r25**(-2)*rd*gqr*imagunit*
     & s125**(-2)
      e  = e  + 32.D0*gcoeff(dd0,hPr1,hPl2,0)*e1234*r15**(-1)*r25**(-2)*
     & r2d*gqr*imagunit*s125**(-2)

      ep(0) = pre*e
      end
