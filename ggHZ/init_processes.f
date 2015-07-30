      subroutine init_processes
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_flg.h"
      include "pwhg_st.h"
      include "coupl.inc"
      integer i
      real * 8 powheginput
      external powheginput

      call init_processes_born
      call init_processes_real

      st_nlight=5

      call init_couplings

      flst_lightpart=6


c$$$CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c$$$      if (powheginput("#LOevents").eq.1) then
      flg_LOevents=.true.
      flg_bornonly=.true.
c$$$      endif

      end
 
 
 
      subroutine init_processes_born
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      integer i,j,temp(nlegborn,maxprocborn)
      real * 8 vdecaymode,powheginput
      external powheginput
     
      flst_born(   1,   1)=           0
      flst_born(   2,   1)=           0
      flst_born(   3,   1)=          25
      flst_born(   4,   1)=         -11
      flst_born(   5,   1)=          11
      
      flst_nborn=          1

      vdecaymode = powheginput("vdecaymode")
c     hadronic decay of the Z boson: introduce fake IDs for the up-type quarks
c     and for the down-type quarks
c     1001: down-type quark
c     1002: up-type quark
      if(vdecaymode.eq.0) then
         do i=1,flst_nborn
            temp(:,2*i-1) = flst_born(:,i)
            temp(:,  2*i) = flst_born(:,i)
            temp(4, 2*i-1) = -1001
            temp(5, 2*i-1) =  1001
            temp(4,   2*i) = -1002
            temp(5,   2*i) =  1002            
         enddo
         flst_nborn = 2*flst_nborn
         flst_born = temp
      endif

c     inclusive decay of the Z boson: introduce fake IDs for up-type quarks,
c     down-type quarks, leptons and neutrinos
c     1001: down-type quark
c     1002: up-type quark
c     11  : lepton
c     12  : neutrino
      if(vdecaymode.eq.10) then
         do i=1,flst_nborn
            temp(:,4*i-3) = flst_born(:,i)
            temp(:,4*i-2) = flst_born(:,i)
            temp(:,4*i-1) = flst_born(:,i)
            temp(:,  4*i) = flst_born(:,i)
            temp(4, 4*i-3) = -1001
            temp(5, 4*i-3) =  1001
            temp(4, 4*i-2) = -1002
            temp(5, 4*i-2) =  1002
            temp(4, 4*i-1) = -11
            temp(5, 4*i-1) =  11
            temp(4,   4*i) = -12
            temp(5,   4*i) =  12            
         enddo
         flst_nborn = 4*flst_nborn
         flst_born = temp
      endif

      return
      end
 
 
 
      subroutine init_processes_real
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
 
      flst_nreal = 0
      end
 
