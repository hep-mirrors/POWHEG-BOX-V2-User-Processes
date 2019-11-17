c     returns 2 Re(M_B * M_V)/(as/(2pi)), 
c     where M_B is the Born amplitude and 
c     M_V is the finite part of the virtual amplitude
c     The as/(2pi) factor is attached at a later point
      subroutine setvirtual(pin,vflav,virtual)
      implicit none
#include "nlegborn.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "qcdcouple.h"
#include "PhysPars.h"
      integer mxpart
      parameter (mxpart=12)
      double precision msqB,msq
      double precision p(mxpart,4)
      double precision pin(0:3,nlegborn)
      integer vflav(nlegborn)
      double precision virtual
      double precision born,dummy(0:3,0:3)
      double precision s,dotp
      external dotp
      integer i,j
      double precision suppfact2e

      call setzcoupl(vflav(1),vflav(2),
c          id1      iad1     id2      idw
     .     vflav(5),vflav(6),vflav(7),vflav(3))

c --- set scale dependent QCD coupling 
      ason2pi = st_alpha/2d0/pi


      do i=1,2
         p(i,4) = pin(0,i)
         p(i,1:3) = pin(1:3,i)
      enddo

      do i=3,6
         p(i,4) = pin(0,i+2)
         p(i,1:3) = pin(1:3,i+2)
      enddo

      p(1,:)=-p(1,:)
      p(2,:)=-p(2,:)

      call qqb_wz(p,msqB)
      call qqb_wz_v(p,msq)


      ! -- divide out ason2pi
      virtual = msq/ason2pi
      born = msqB

      ! -- scheme change from dred 
      virtual = virtual + born*(-2d0*(cf/2d0)) 

      virtual = virtual * normbr

c      write(*,'(a,1x,d15.9,3x,9(i3,1x))') 'virt',virtual,vflav

      end

