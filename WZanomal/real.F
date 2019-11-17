      subroutine setreal(pin,rflav,amp2real)
      implicit none
#include "nlegborn.h"
#include "pwhg_flst.h"
#include "pwhg_math.h"
#include "pwhg_st.h"
#include "qcdcouple.h"
#include "constants.h"
#include "ckm.h"
#include "cabibbo.h"
#include "PhysPars.h"
      double precision pin(0:3,nlegreal)
      integer rflav(nlegreal)
      integer flavrad
      common/cflavrad/flavrad
      double precision amp2real
      double precision suppfact2e

      integer i,j
      double precision p(mxpart,4),msq

      ason2pi = st_alpha/2d0/pi
      flavrad = rflav(9)

      call setzcoupl(rflav(1),rflav(2),
c          id1      iad1     id2      idw
     .     rflav(5),rflav(6),rflav(7),rflav(3))


      do i=1,2
         p(i,4) = pin(0,i)
         p(i,1:3) = pin(1:3,i)
      enddo

      do i=3,7
         p(i,4) = pin(0,i+2)
         p(i,1:3) = pin(1:3,i+2)
      enddo


      p(1,:)=-p(1,:)
      p(2,:)=-p(2,:)

      ! set Vsum here depending on rflav
      !reset to zero
!      write(*,*)'RFLAV',rflav
      if ((rflav(1).eq.0).and.(rflav(2).ne.0)) then
         Vsum = 0d0
c         Vsum(rflav(2)) = Vsq(rflav(2),-rflav(nlegreal))

c Assume that we produce the appropriate linear combination
c of up (or down) quarks. The flavour will be picked according
c to the CKM at the time of Houches event writing

         Vsum(rflav(2)) = 1

      elseif ((rflav(1).ne.0).and.(rflav(2).eq.0)) then
         Vsum = 0d0
c         Vsum(rflav(1)) = Vsq(rflav(1),-rflav(nlegreal))

         Vsum(rflav(1)) = 1

      endif

      call qqb_wz_g(p,msq)

      amp2real = msq

!      write(*,*)'amp2real',amp2real

      amp2real = amp2real/ason2pi

      amp2real = amp2real * normbr

c      write(*,'(a,1x,d15.9,3x,9(i3,1x))') 'real',amp2real,rflav

      end
