      subroutine setvirtual(p,vflav,virtual)
c Virtual needs to be provided by the user and put here
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'coupl.inc'
      include 'pwhg_physpar.h'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      double precision res(0:3)
c$$$      double precision c1,c2,c4
c$$$      real * 8 bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn),born
      real * 8 virtual,virtual_DR
      real * 8 dotp
      external dotp
cccccccccccccccccccccccccccccc
      double precision old_p,new_p,rescalefactor,pH2,old_c,new_c,
     $     m_1,decayamp2
      include 'MCFM_Include/ewcouple.f'
cccccccccccccccccccccccccccccc

      call i2MCFM_2_POWHEG(p,vflav,res) 

      virtual_DR=res(0)/(st_alpha/(2*pi))

cccccccccccccccccccccccccccccccc
c     !: changes
c     Notice that this overall factor is used in gg_hg_eval_v:
c     Asq=(as/(3d0*pi))**2/vevsq
c     and it is equal to v used in madgraph throughout all
c     tree-level routines.
      m_1=physpar_ml(3)
      decayamp2=-1d0
      pH2=dotp(p(0,3),p(0,3))
      if(phdm_mode.eq.'SC') then
         old_c=(1d0/(3d0*pi*v))**2
         decayamp2 = 2*(pH2-4*m_1**2)
      elseif(phdm_mode.eq.'PS') then
         old_c=(1d0/(2d0*pi*v))**2
         decayamp2 = 2*pH2
      endif
c--------
c$$$      old_p=ph_hmhw /pi /((ph_Hmass**2-pH2)**2 + (ph_HmHw)**2)
c     With old_p included as above + flat integration, I re-obtain the 
c     original Higgs result (obtained with non-flat/BW-shaped
c     PS generation for M2 )
c--------
      old_p=1d0
      virtual_DR=virtual_DR*old_p
cccccccccccc
      if(phdm_efftheory.eq.'T') then
         new_p=decayamp2/(phdm_LambdaUV**3)**2
         new_p=new_p * 16
         new_c=1d0
      else
         new_p=decayamp2 /
     $    ((pH2-phdm_phimass**2)**2 + (phdm_phimass*phdm_phiwidth)**2)
         new_p=new_p * 16
         new_c=(1d0/phdm_LambdaUV)**2
      endif
      rescalefactor= (new_p / old_p) * (new_c/old_c)
      rescalefactor=rescalefactor * (phdm_gSM*phdm_gDM)**2
      virtual_DR=virtual_DR*rescalefactor
cccccccccccccccccccccccccccccccccccc

c from dimensional reduction to dimensional regularization
      call from_DR_to_CDR(p,vflav,virtual_DR,virtual)

cc The following code is used to check the double pole
cc in the virtual amplitude. Must set in
cc set_interface_MCFM.f:      ret_poles=.true.
c
c      call setborn(p,vflav,born,bornjk,bmunu)
c      if(vflav(1).eq.0) then
c         c1=3
c      else
c         c1=4d0/3
c      endif
c      if(vflav(2).eq.0) then
c         c2=3
c      else
c         c2=4d0/3
c      endif
c      if(vflav(4).eq.0) then
c         c4=3
c      else
c         c4=4d0/3
c      endif
c      write(*,*) ' Pole check: ',vflav,
c     1 (res(2)/(st_alpha/(2*pi)))/(born*(-(c1+c2+c4))),virtual_DR

c      print*, vflav(1:2),virtual_DR,virtual,res(0)
c      stop


      end

c     virtual_DR : finite part of the virtual in Dimensional Reduction, stripped off by the factor as/(2pi)
c     returns virtual_CDR, i.e. the virtual in conventional dimensional regularization.
      subroutine from_DR_to_CDR(p,vflav,virtual_DR,virtual_CDR)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual_DR,virtual_CDR
      real * 8 bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn),born
      integer i
      real * 8 gammag,gammaq
      parameter (gammag=(nc*1d0)/6d0,gammaq=(nc**2-1d0)/(4d0*nc)) 

      call setborn(p,vflav,born,bornjk,bmunu)
      virtual_CDR=virtual_DR
c     initial-state partons
      do i=1,2
         if (vflav(i).eq.0) then
            virtual_CDR=virtual_CDR-born*gammag
         else
            virtual_CDR=virtual_CDR-born*gammaq
         endif
      enddo
      do i=flst_lightpart,nlegborn
         if (vflav(i).eq.0) then
            virtual_CDR=virtual_CDR-born*gammag
         else
            virtual_CDR=virtual_CDR-born*gammaq
         endif         
      enddo
      end
