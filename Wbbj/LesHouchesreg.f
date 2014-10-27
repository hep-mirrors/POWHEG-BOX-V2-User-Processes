      subroutine gen_leshouches_reg
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'LesHouches.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      integer ireg

c id of the event
      idprup=lprup(1)
c     idwtup has already been set by the subroutine pwhgevent

c     aqedup must can be set here
c     since the process-dependent PhysPars.h 
c     is well defined
      aqedup=ph_alphaem
cccccccccccccccccccccccccccccccccccccccccccccccccccccc
      aqcdup=st_alpha

      nup=nlegreal

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
c it is an event with radiation
      call momenta_lh(kn_preal,nup)
c     set color connections for all particles      

      call realcolour_lh
      write(*,*) 'idup ',idup
      write(*,*) 'icolup ',icolup
      

c add resonances, perform decays, put particles on shell, etc.(or nothing!)
      call finalize_lh 
c no remnants for now!
c     Don't forget to set scale for scalup equal to the pt of the 
c     radiation (whatever it is now!)

      scalup=sqrt(rad_pt2max)     

      end
