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
      call set_ebe_couplings
      call sreal_proc(p,rflav,amp2)
c Cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2d0*pi))     

cccccccccccccccccccccccccccccccc
c     !: changes
      old_c=(1d0/(3d0*pi*v))**2
      pH2=dotp(p(0,3),p(0,3))
c--------
c$$$      old_p=ph_hmhw /pi /((ph_Hmass**2-pH2)**2 + (ph_HmHw)**2)
c     With old_p included as above + flat integration, I re-obtain the 
c     original Higgs result (obtained with non-flat/BW-shaped
c     PS generation for M2 )
c--------
      old_p=1d0
      amp2=amp2*old_p
cccccccccccc
      m_1=physpar_ml(3)
      if(phdm_efftheory.eq.'T') then
         new_p=2*(pH2-4*m_1**2)/(phdm_LambdaUV**3)**2
         new_p=new_p * 16
         new_c=1d0
      else
         new_p=2*(pH2-4*m_1**2) /
     $    ((pH2-phdm_phimass**2)**2 + (phdm_phimass*phdm_phiwidth)**2)
         new_p=new_p * 16
         new_c=(1d0/phdm_LambdaUV)**2
      endif
      rescalefactor= (new_p / old_p) * (new_c/old_c)
      amp2=amp2*rescalefactor
cccccccccccccccccccccccccccccccccccc
      end



      subroutine realcolour_lh
c Wrapper subroutine to call the MadGraph code to associate
c a (leading) color structure to an event.
      implicit none
      include 'nlegborn.h'
      include 'LesHouches.h'
      integer rflav(nlegreal),color(2,nlegreal)
      integer i,j
      do i=1,nlegreal
         rflav(i)=idup(i)
         if (rflav(i).eq.21) rflav(i)=0
      enddo
      call real_color(rflav,color)
      do i=1,2
         do j=1,nlegreal
            icolup(i,j)=color(i,j)
         enddo
      enddo
      end

