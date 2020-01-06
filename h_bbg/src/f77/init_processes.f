c####################################################################### 
      subroutine init_processes
      implicit none

      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_flg.h"
      include "pwhg_st.h"
      integer i
      real * 8 powheginput
      external powheginput

      st_bornorder=1
      if(powheginput("#minlo").eq.1) then
         flg_minlo=.true.
         if(powheginput("#minlo_nnll").eq.1) then
            flg_minlo_nnll=.true.
         else
            flg_minlo_nnll=.false.
         endif
         flg_minlo_real=.false.
      else
         flg_minlo=.false.
         flg_minlo_nnll=.false.
         flg_minlo_real=.false.
      endif

      call init_processes_born
      call init_processes_real

      st_nlight=5

      call init_couplings

      !>> first massless parton in list
      flst_lightpart=4

      return
      end
 

      
c####################################################################### 
      subroutine init_processes_born
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      integer i,j,temp(nlegborn,maxprocborn)
      real * 8 vdecaymode,powheginput
      external powheginput
      
      flst_born(   1,   1)=          12
      flst_born(   2,   1)=         -12
      flst_born(   3,   1)=          25
      flst_born(   4,   1)=          +5
      flst_born(   5,   1)=          -5
      flst_born(   6,   1)=           0

      flst_nborn=          1

      flst_bornres = 0
      do i=1,flst_nborn
         flst_bornres(4,i)=3
         flst_bornres(5,i)=3
         flst_bornres(6,i)=3
      enddo

      return
      end
 
 
 
c####################################################################### 
      subroutine init_processes_real
      implicit none
      integer i,j,ireal,iflav
      include "nlegborn.h"
      include "pwhg_flst.h"

      ireal=0

      ireal=ireal+1
      flst_real(   1, ireal)=          12
      flst_real(   2, ireal)=         -12
      flst_real(   3, ireal)=          25
      flst_real(   4, ireal)=          +5
      flst_real(   5, ireal)=          -5
      flst_real(   6, ireal)=           0
      flst_real(   7, ireal)=           0

      do iflav=1,5
         ireal=ireal+1
         flst_real(   1, ireal)=          12
         flst_real(   2, ireal)=         -12
         flst_real(   3, ireal)=          25
         flst_real(   4, ireal)=          +5
         flst_real(   5, ireal)=          -5
         flst_real(   6, ireal)=          -iflav
         flst_real(   7, ireal)=          +iflav
      enddo
      
      flst_nreal = ireal

      flst_realres=0
      do i=1,flst_nreal
         flst_realres(4,i)=3
         flst_realres(5,i)=3
         flst_realres(6,i)=3
         flst_realres(7,i)=3
      enddo

      return
      end
 
