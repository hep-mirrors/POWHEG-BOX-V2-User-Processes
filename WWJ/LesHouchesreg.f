      subroutine gen_leshouches_reg
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'pwhg_st.h'
      include 'LesHouches.h'
      include "PhysPars.h"
      integer ireg
      
      aqedup=ph_alphaem
      aqcdup=st_alpha

      nup=nlegreal
      scalup=sqrt(rad_pt2max)
      do ireg=1,nup
c Remember: gluons are marked 0 here!
         idup(ireg)=flst_regular(ireg,rad_realreg)
         if(ireg.le.2) then
            istup(ireg)=-1
            mothup(1,ireg)=0
            mothup(2,ireg)=0            
         else
            istup(ireg)=1
            mothup(1,ireg)=1
            mothup(2,ireg)=2            
         endif
         spinup(ireg)=9
         vtimup(ireg)=0
      enddo
c convert momenta in LH form
      call momenta_lh(kn_preal,nup)
c define colour connections
      call realcolour_lh
c add resonances, perform decays, put particles on shell, etc.(or nothing!)
      call finalize_lh 
c no remnants for now!
c     Don't forget to set scale for scalup equal to the pt of the 
c     radiation (whatever it is now!)
c     set color connections for all particles
c      write(*,*) 'gen_leshouches_reg: dummy interface to regular'//
c     1           ' contributions'
c      write(*,*) ' Replace with your own process-dependent one, to be'
c      write(*,*) ' put in the process-specific directory (e.g. /W,'//'
c     #     /Z, /VBF_H...)'
c      write(*,*) ' The Makefile will automatically compile the version'
c      write(*,*) ' in the process-specific directory'
c      call exit(1)
      end
