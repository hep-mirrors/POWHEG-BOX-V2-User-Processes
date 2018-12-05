      subroutine setreal(pin,rflav,amp2real)
      implicit none
#include "nlegborn.h"
#include "pwhg_flst.h"
#include "pwhg_st.h"
#include "qcdcouple.h"
#include "constants.h"
#include "PhysPars.h"
      double precision pin(0:3,nlegreal)
      integer rflav(nlegreal)
      double precision amp2real
      double precision p(mxpart,4),msq
      integer i,k

c --- set scale dependent QCD coupling 
      gsq = st_alpha*fourpi
      ason2pi = st_alpha/twopi

      call setwzcoupl(rflav(1),rflav(2),rflav(5),rflav(7))

      do i=1,7
         if(i.lt.3) then
            k=i
         else
            k=i+2
         endif
         p(i,4) = pin(0,k)
         p(i,1:3) = pin(1:3,k)
      enddo

      p(1,:)=-p(1,:)
      p(2,:)=-p(2,:)

      call qqb_ww_g(p,msq)

      amp2real = msq
      amp2real = amp2real/ason2pi

      amp2real =  amp2real * normbr

c      write(*,'(a,d15.9)') ' real=',amp2real

      end
