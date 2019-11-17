      subroutine randomizeckm(id1,id2)
      implicit none
      integer id1,id2
#include "constants.h"
#include "ckm.h"
      double precision rrr(3)
      integer sigid,idd,ind
      logical isewup,isewdo
      sigid=id1/abs(id1)
      if(isewup(id1)) then
         idd = -(abs(id1)-1)

c Don't pick a top!!!

         rrr(1)=vsq(2,idd)
         rrr(2)=vsq(4,idd)

         call pick_random(2,rrr,ind)

         if(ind.eq.1) then
            id2 = 2*sigid
         elseif(ind.eq.2) then
            id2 = 4*sigid
         endif
      elseif(isewdo(id1)) then
         idd = -(abs(id1)+1)

         rrr(1)=vsq(1,idd)
         rrr(2)=vsq(3,idd)
         rrr(3)=vsq(5,idd)

         call pick_random(3,rrr,ind)

         if(ind.eq.1) then
            id2 = 1*sigid
         elseif(ind.eq.2) then
            id2 = 3*sigid
         elseif(ind.eq.3) then
            id2 = 5*sigid
         endif
      endif
      end

      subroutine setckmmatrix
c --- reads in anomalous couplings from powheg.input
      implicit none
#include "constants.h"
#include "ckm.h"
#include "cabibbo.h"
#include "nwz.h"
      double precision powheginput
      external powheginput


      if (diagonal_CKM) then
         Vud=1d0
         Vus=0d0
         Vub=0d0
         Vcd=0d0
         Vcs=1d0
         Vcb=0d0
      else
         Vus=dsqrt(1d0-Vud**2) !0.222d0
         Vub=0d0
         Vcd=dsqrt(1d0-Vud**2) !0.222d0
         Vcs=Vud
         Vcb=0d0
      endif         
      Vsq=0d0

      Vsq(2,-1)=Vud**2
      Vsq(2,-3)=Vus**2
      Vsq(2,-5)=Vub**2
      Vsq(4,-1)=Vcd**2
      Vsq(4,-3)=Vcs**2
      Vsq(4,-5)=Vcb**2
      Vsq(-1,2)=Vsq(2,-1)
      Vsq(-3,2)=Vsq(2,-3)
      Vsq(-5,2)=Vsq(2,-5)
      Vsq(-1,4)=Vsq(4,-1)
      Vsq(-3,4)=Vsq(4,-3)
      Vsq(-5,4)=Vsq(4,-5)

      Vsq(1,-2)=Vud**2
      Vsq(3,-2)=Vus**2
      Vsq(5,-2)=Vub**2
      Vsq(1,-4)=Vcd**2
      Vsq(3,-4)=Vcs**2
      Vsq(5,-4)=Vcb**2
      Vsq(-2,1)=Vsq(1,-2)
      Vsq(-2,3)=Vsq(3,-2)
      Vsq(-2,5)=Vsq(5,-2)
      Vsq(-4,1)=Vsq(1,-4)
      Vsq(-4,3)=Vsq(3,-4)
      Vsq(-4,5)=Vsq(5,-4)

      return 
      end

