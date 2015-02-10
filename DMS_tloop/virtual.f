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
     $     m_1
      include 'MCFM_Include/ewcouple.f'
cccccccccccccccccccccccccccccc


      virtual=0d0
      write(*,*) 'entered in virtual, error'
      stop
      return

c$$$      call i2MCFM_2_POWHEG(p,vflav,res) 
c$$$
c$$$      virtual_DR=res(0)/(st_alpha/(2*pi))
c$$$
c$$$cccccccccccccccccccccccccccccccc
c$$$c     !: changes
c$$$c     Notice that this overall factor is used in gg_hg_eval_v:
c$$$c     Asq=(as/(3d0*pi))**2/vevsq
c$$$c     and it is equal to v used in madgraph throughout all
c$$$c     tree-level routines.
c$$$      if(phdm_mode.eq.'SC') then
c$$$         old_c=(1d0/(3d0*pi*v))**2
c$$$      elseif(phdm_mode.eq.'PS') then
c$$$         old_c=(1d0/(2d0*pi*v))**2
c$$$      endif
c$$$      pH2=dotp(p(0,3),p(0,3))
c$$$c--------
c$$$c$$$      old_p=ph_hmhw /pi /((ph_Hmass**2-pH2)**2 + (ph_HmHw)**2)
c$$$c     With old_p included as above + flat integration, I re-obtain the 
c$$$c     original Higgs result (obtained with non-flat/BW-shaped
c$$$c     PS generation for M2 )
c$$$c--------
c$$$      old_p=1d0
c$$$      virtual_DR=virtual_DR*old_p
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
c$$$      virtual_DR=virtual_DR*rescalefactor
c$$$cccccccccccccccccccccccccccccccccccc
c$$$
c$$$c from dimensional reduction to dimensional regularization
c$$$      call from_DR_to_CDR(p,vflav,virtual_DR,virtual)
c$$$
c$$$cc The following code is used to check the double pole
c$$$cc in the virtual amplitude. Must set in
c$$$cc set_interface_MCFM.f:      ret_poles=.true.
c$$$c
c$$$c      call setborn(p,vflav,born,bornjk,bmunu)
c$$$c      if(vflav(1).eq.0) then
c$$$c         c1=3
c$$$c      else
c$$$c         c1=4d0/3
c$$$c      endif
c$$$c      if(vflav(2).eq.0) then
c$$$c         c2=3
c$$$c      else
c$$$c         c2=4d0/3
c$$$c      endif
c$$$c      if(vflav(4).eq.0) then
c$$$c         c4=3
c$$$c      else
c$$$c         c4=4d0/3
c$$$c      endif
c$$$c      write(*,*) ' Pole check: ',vflav,
c$$$c     1 (res(2)/(st_alpha/(2*pi)))/(born*(-(c1+c2+c4))),virtual_DR
c$$$
c$$$c      print*, vflav(1:2),virtual_DR,virtual,res(0)
c$$$c      stop


      end

c$$$c     virtual_DR : finite part of the virtual in Dimensional Reduction, stripped off by the factor as/(2pi)
c$$$c     returns virtual_CDR, i.e. the virtual in conventional dimensional regularization.
c$$$      subroutine from_DR_to_CDR(p,vflav,virtual_DR,virtual_CDR)
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'pwhg_flst.h'
c$$$      include 'pwhg_math.h'
c$$$      real * 8 p(0:3,nlegborn)
c$$$      integer vflav(nlegborn)
c$$$      real * 8 virtual_DR,virtual_CDR
c$$$      real * 8 bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn),born
c$$$      integer i
c$$$      real * 8 gammag,gammaq
c$$$      parameter (gammag=(nc*1d0)/6d0,gammaq=(nc**2-1d0)/(4d0*nc)) 
c$$$
c$$$      call setborn(p,vflav,born,bornjk,bmunu)
c$$$      virtual_CDR=virtual_DR
c$$$c     initial-state partons
c$$$      do i=1,2
c$$$         if (vflav(i).eq.0) then
c$$$            virtual_CDR=virtual_CDR-born*gammag
c$$$         else
c$$$            virtual_CDR=virtual_CDR-born*gammaq
c$$$         endif
c$$$      enddo
c$$$      do i=flst_lightpart,nlegborn
c$$$         if (vflav(i).eq.0) then
c$$$            virtual_CDR=virtual_CDR-born*gammag
c$$$         else
c$$$            virtual_CDR=virtual_CDR-born*gammaq
c$$$         endif         
c$$$      enddo
c$$$      end
