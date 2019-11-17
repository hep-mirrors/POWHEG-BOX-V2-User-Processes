      subroutine init_couplings
      implicit none
#include "PhysPars.h"
#include "constants.h"
#include "zwcouple.h"
#include "ewcharge.h"
#include "qcdcouple.h"
#include "anomcoup.h"
#include "ckm.h"
#include "cabibbo.h"
#include "nwz.h"
#include "cvecbos.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "pwhg_physpar.h"
      double precision masswindow_low,masswindow_high
      logical verbose
      parameter(verbose=.true.)
      integer j,srint
      double precision powheginput,chargeofid
      external powheginput,chargeofid
      double precision deltas,asmzopi
      physpar_ml(1)=0.511d-3
      physpar_ml(2)=0.1057d0
      physpar_ml(3)=1.777d0
      physpar_mq(1)=0.33d0     ! up
      physpar_mq(2)=0.33d0     ! down
      physpar_mq(3)=0.50d0     ! strange
      physpar_mq(4)=1.50d0     ! charm
      physpar_mq(5)=4.80d0     ! bottom


      call smcouplings

c     number of light flavors
      st_nlight = 5


      !TM added QCD couplings
      gsq = st_alpha*4d0*pi
      as  = st_alpha
      ason2pi = st_alpha/2d0/pi
      ason4pi = st_alpha/4d0/pi


      
      !TM added z couplings
      do j=-16,16
         fq(j)=chargeofid(j)
      enddo
      do j=1,16
         if(mod(j,2).eq.0) then
            tau(j)=1
            tau(-j)=-1
         else
            tau(j)=-1
            tau(-j)=1
         endif
      enddo
      tau(0)=0

! -- EW couplings
      esq = ph_unit_e**2
      xw = ph_sthw2
      gwsq = ph_unit_e**2/ph_sthw2
      gw = dsqrt(gwsq)
      write(*,*)'GW',gw,xw

! -- masses and widths
      zmass = ph_Zmass
      zwidth = ph_Zwidth
      wmass = ph_Wmass
      wwidth = ph_Wwidth

      call couplz(ph_sthw2)


c      ! TM for the different processes the
c      ! ew couplings need to be set, as in
c      ! chooser.f. For now, ee,mumu,tautau
c      ! ---really should depend on idvecdecay
c      ! and ideally would be in init_process,
c      ! but the above constatns need to be set
c      if (((vdecaymodeZ).eq.11).or.((vdecaymodeZ).eq.13).or
c     $     .((vdecaymodeZ).eq.15)) then
c      q1=-1d0
c      l1=le
c      r1=re
c      elseif(((vdecaymodeZ).eq.12).or.
c     . ((vdecaymodeZ).eq.14).or.((vdecaymodeZ).eq.16)) then
c      q1=0d0
c      l1=ln
c      r1=rn
c      endif


c     --- set anomalous couplings
      call setanomcoup
      if (anomtgc) call couplzw_anom

      if (anomtgc) then
         write(*,*) '*************************************'
         write(*,*) 'Anomalous couplings used:'
         write(*,*) '_________________________'
         write(*,*)
         write(*,*) 'Triple Gauge Bosons Couplings:'
         write(*,*) '______________________________'
         write(*,*) 'Delta_g1(Z)', delg1_z
         write(*,*) 'Delta_g1(Gamma)', delg1_g
         write(*,*) 'Lambda(Z)', lambda_z
         write(*,*) 'Lambda(Gamma)', lambda_g
         write(*,*) 'Delta_K(Z)', delk_z
         write(*,*) 'Delta_K(Gamma)', delk_g
         write(*,*)
         write(*,*) 'Anomalous Quark Couplings:'
         write(*,*) '__________________________'
         write(*,*) 'Delta_g-up_L(Z)', delgQuL_z
         write(*,*) 'Delta_g-up_R(Z)', delgQuR_z
         write(*,*) 'Delta_g-down_L(Z)', delgQdL_z
         write(*,*) 'Delta_g-down_R(Z)', delgQdR_z
         write(*,*) 'Delta_g-quark_L(W)', delgQL_w
         write(*,*) 'Delta_g-quark_R(W)', delgQR_w
         write(*,*)
         write(*,*)
         write(*,*) 'Calculation up to 1/Lambda^(2n) oder'
         write(*,*) 'in the EFT expansion, with n=',nEFT
      else
         write(*,*) '*************************************'
         write(*,*) 'SM calculation without EFT operators'
      endif


      if(verbose) then
      write(*,*) '*************************************'
      write(*,*) 'Z mass = ',ph_Zmass
      write(*,*) 'Z width = ',ph_Zwidth
      write(*,*) 'W mass = ',ph_Wmass
      write(*,*) 'W width = ',ph_Wwidth
      write(*,*) '1/alphaem = ',1d0/ph_alphaem
      write(*,*) 'sthw2 = ',ph_sthw2
      write(*,*) 'e**2  = ',ph_unit_e**2
      write(*,*) 'Vud,Vus,Vcd,Vcs',Vud,Vus,Vcd,Vcs
      write(*,*) '*************************************'
      endif

      end





      subroutine setzcoupl(a1,a2,id1,iad1,id2,idw)
      implicit none
      integer a1,a2,id1,iad1,id2,idw
#include "nlegborn.h"
#include "pwhg_kn.h"
#include "PhysPars.h"
!TM now set the z-coupling parameters here:
#include "zwcouple.h"
!
#include "ewcharge.h"
#include "qcdcouple.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "pwhg_flg.h"
#include "pwhg_physpar.h"
#include "cvecbos.h"
#include "vvsettings.h"
#include "nwz.h"
      logical withinterference,ini
      double precision mllmin,m1,m2
      data ini/.true./
      save withinterference,ini,mllmin
      double precision powheginput
      logical isquark,islepton,isnu
      external powheginput,isquark,islepton,isnu
c signal if it is W+ or W- to cross section routines
      if(idw.eq.24) then
         nwz=1
      else
         nwz=-1
      endif
      if(ini) then
         if(powheginput("#withinterference").eq.0) then
            withinterference = .false.
         else
            withinterference = .true.
         endif
         ini=.false.
         mllmin=powheginput("#mllmin")
         if(mllmin.le.0) mllmin=0.1d0
      endif

c the DKS like amplitude want to know the incoming
c flavours of the produced partons
      idpart1=a1
      idpart2=a2
      idpart3=id1
      idpart4=iad1
      idpart5=id2
      idpart6=-id2

      normbr = 1

      if(isquark(id1)) then
         normbr=normbr*(1d0+ph_deltasw)*3
      endif

      if(isquark(id2)) then
         normbr=normbr*(1d0+ph_deltasz)*3
      endif

      if(.not.isnu(id2)) then
         m2=sqrt(kn_cmpborn(0,4)**2-kn_cmpborn(1,4)**2
     1        -kn_cmpborn(2,4)**2-kn_cmpborn(3,4)**2)
         if(m2.lt.mllmin.and..not.flg_in_smartsig) then
            normbr = 0
         endif
      endif
      vsymfact = 1
      if(id1.eq.id2) then
         if(withinterference) then
            interference=.true.
         else
            interference=.false.
         endif
         if(.not.isnu(id1)) then
c impose mllmin cut also upon the crossed pairs
            m1=sqrt(
     1           (kn_cmpborn(0,5)+kn_cmpborn(0,8))**2-
     2           (kn_cmpborn(1,5)+kn_cmpborn(1,8))**2-
     3           (kn_cmpborn(2,5)+kn_cmpborn(2,8))**2-
     4           (kn_cmpborn(3,5)+kn_cmpborn(3,8))**2  )
            if(m1.lt.mllmin.and..not.flg_in_smartsig) then
               normbr = 0
            endif
         endif
      elseif(iad1.eq.-id2) then
         if(withinterference) then
            interference=.true.
         else
            interference=.false.
         endif
         if(.not.isnu(iad1)) then
c impose mllmin cut also upon the crossed pairs
            m2=sqrt(
     1           (kn_cmpborn(0,6)+kn_cmpborn(0,7))**2-
     2           (kn_cmpborn(1,6)+kn_cmpborn(1,7))**2-
     3           (kn_cmpborn(2,6)+kn_cmpborn(2,7))**2-
     4           (kn_cmpborn(3,6)+kn_cmpborn(3,7))**2  )
            if(m2.lt.mllmin.and..not.flg_in_smartsig) then
               normbr = 0
            endif
         endif
      else
         interference=.false.
      endif

      end
