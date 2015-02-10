      subroutine setreal(p,rflav,amp2)
c Wrapper subroutine to call the MadGraph real emission matrix
c elements and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'coupl.inc'
      include 'pwhg_physpar.h'
      real * 8 p(0:3,nlegreal)
      integer rflav(nlegreal)
      real * 8 amp2
cccccccccccccccccccccccccccccc
      double precision old_p,new_p,rescalefactor,pH2,dotp,old_c,new_c,
     $     m_1
cccccccccccccccccccccccccccccc

      amp2=0d0
      write(*,*) 'entered in real, error'
      stop
      return

c$$$      call set_ebe_couplings
c$$$      call sreal_proc(p,rflav,amp2)
c$$$c Cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
c$$$      amp2 = amp2/(st_alpha/(2d0*pi))     
c$$$
c$$$cccccccccccccccccccccccccccccccc
c$$$c     !: changes
c$$$      if(phdm_mode.eq.'SC') then
c$$$         old_c=(1d0/(3d0*pi*v))**2
c$$$      elseif(phdm_mode.eq.'PS') then
c$$$         old_c=(1d0/(2d0*pi*v))**2
c$$$      endif
c$$$
c$$$      pH2=dotp(p(0,3),p(0,3))
c$$$c--------
c$$$c$$$      old_p=ph_hmhw /pi /((ph_Hmass**2-pH2)**2 + (ph_HmHw)**2)
c$$$c     With old_p included as above + flat integration, I re-obtain the 
c$$$c     original Higgs result (obtained with non-flat/BW-shaped
c$$$c     PS generation for M2 )
c$$$c--------
c$$$      old_p=1d0
c$$$      amp2=amp2*old_p
c$$$cccccccccccc
c$$$      m_1=physpar_ml(3)
c$$$      if(phdm_efftheory.eq.'T') then
c$$$         new_p=2*(pH2-4*m_1**2)/(phdm_LambdaUV**3)**2
c$$$         new_p=new_p * 16
c$$$         new_c=1d0
c$$$      else
c$$$         new_p=2*(pH2-4*m_1**2) /
c$$$     $    ((pH2-phdm_phimass**2)**2 + (phdm_phimass*phdm_phiwidth)**2)
c$$$         new_p=new_p * 16
c$$$         new_c=(1d0/phdm_LambdaUV)**2
c$$$      endif
c$$$      rescalefactor= (new_p / old_p) * (new_c/old_c)
c$$$      rescalefactor=rescalefactor * (phdm_gSM*phdm_gDM)**2
c$$$
c$$$      amp2=amp2*rescalefactor
c$$$cccccccccccccccccccccccccccccccccccc

      end



c$$$      subroutine realcolour_lh
c$$$c Wrapper subroutine to call the MadGraph code to associate
c$$$c a (leading) color structure to an event.
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'LesHouches.h'
c$$$      integer rflav(nlegreal),color(2,nlegreal)
c$$$      integer i,j
c$$$      do i=1,nlegreal
c$$$         rflav(i)=idup(i)
c$$$         if (rflav(i).eq.21) rflav(i)=0
c$$$      enddo
c$$$      call real_color(rflav,color)
c$$$      do i=1,2
c$$$         do j=1,nlegreal
c$$$            icolup(i,j)=color(i,j)
c$$$         enddo
c$$$      enddo
c$$$      end

