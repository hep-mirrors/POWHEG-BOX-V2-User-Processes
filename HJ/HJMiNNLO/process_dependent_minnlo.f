      subroutine init_masses_Dterms()
      use internal_parameters, pi_hoppet => pi, cf_hoppet => cf, ca_hoppet => ca, tf_hoppet => tf
      implicit none
      double precision powheginput
      include 'PhysPars.h'
      ph_zmass = powheginput('#zmass') 
      if (ph_zmass .lt. 0) ph_zmass = 91.1876d0
      ph_topmass = powheginput('#topmass')
      if (ph_topmass .lt. 0) ph_topmass = 173.2d0
      call set_masses(ph_zmass,ph_topmass)
      print*, "Z, topmass = ",ph_zmass, ph_topmass
      end

      function get_M_for_init_Dterms()
      implicit none
      double precision get_M_for_init_Dterms, powheginput

      include 'PhysPars.h'
      ph_hmass = powheginput('hmass') 
      get_M_for_init_Dterms = ph_hmass
      print*, "Hmass = ",ph_hmass
      end

      subroutine get_B_V1_V2(pborn_UUB,msqB,msqV1,msqV2)
      implicit none
      include 'nlegborn.h'
      integer, parameter :: nflav=5
      double precision msqB(-nflav:nflav,-nflav:nflav), msqV1(-nflav:nflav,-nflav:nflav), msqV2(-nflav:nflav,-nflav:nflav)
      double precision pborn_UUB(0:3,nlegborn-1)
      integer process
      msqB(:,:)  = 0d0
      msqV1(:,:) = 0d0
      msqV2(:,:) = 0d0

      call M2_ggh_v(pborn_UUB,2,msqB(0,0),msqV1(0,0),msqV2(0,0))
      end

c     matrix elements for gg->h
      subroutine uub_for_minnlo(pphy,iborn,amp2)
c     Born matrix element times normalizations and averages.  IMPORTANT:
c     the flux factor 1/2s is intentionally missing The results are
c     given exact in M_top (iborn=1) or in the M_top --> inf limit
c     (iborn=2). We assume that only the top quark is flowing in the
c     loop
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      real * 8 s,v2,tiny,tmp,xnorm,tauq,etapl,etamn
      complex * 16 zic,tmpc
      parameter (v2=0.70710678118654757d0) 
c     real * 8 , parameter :: gf=0.116639D-04
      real *8 gf
      parameter (tiny=1.d-8)
      parameter (zic=(0.d0,1.d0))
      real* 8 amp2
      integer nlegs,iborn
      parameter (nlegs=3)
      real *8 pphy(0:3,nlegs)
      s=(pphy(0,1)+pphy(0,2))**2-(pphy(1,1)+pphy(1,2))**2
     $     -(pphy(2,1)+pphy(2,2))**2 -(pphy(3,1)+pphy(3,2))**2
      xnorm=1/(2.d0*pi)*1/(pi)*s/(256*v2)
c     1/(2pi) comes from the 2*pi*delta(s-m^2) of phase space
c$$$      if(iborn.eq.1)then
c$$$c     From eq.(2.2) of NPB359(91)283
c$$$         tauq=4*ph_topmass**2/s
c$$$         if(tauq.gt.1.d0)then
c$$$            tmp=tauq*(1+(1-tauq)*(asin(1/sqrt(tauq)))**2)
c$$$            tmp=tmp**2
c$$$      else
c$$$         etapl=1+sqrt(1-tauq)
c$$$         etamn=1-sqrt(1-tauq)
c$$$         tmpc=tauq*(1-(1-tauq)*(log(etapl/etamn)-zic*pi)**2/4.d0)
c$$$         tmp=tmpc*dconjg(tmpc)
c$$$      endif
      if(iborn.eq.2)then
         tmp=4.d0/9.d0
      else
         write(*,*)'Unknown option in f1born',iborn
         call exit(1)
      endif

      gf=ph_gfermi

      amp2=xnorm*tmp*st_alpha*st_alpha*GF*2d0*s

c     the multiplication for 2s is needed to remove the flux factor
      end


      subroutine M2_ggh_v(pphy,iborn,msqb,msqv1,msqv2)
c     virtual matrix element times normalizations and averages.  IMPORTANT:
c     the flux factor 1/2s is intentionally missing The results are
c     given exact in M_top (iborn=1) or in the M_top --> inf limit
c     (iborn=2). We assume that only the top quark is flowing in the
c     loop
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      real * 8 s,v2,tiny,tmp,xnorm,tauq,etapl,etamn
      complex * 16 zic,tmpc
      parameter (v2=0.70710678118654757d0)
c     real * 8 , parameter :: gf=0.116639D-04 ! change to powheg input
      real *8 gf
      parameter (tiny=1.d-8)
      parameter (zic=(0.d0,1.d0))
      real* 8 msqb
      integer nlegs,iborn
      parameter (nlegs=3)
      real *8 pphy(0:3,nlegs),Lt,msqv1,msqv2
      real *8, parameter :: zeta3=1.2020569031595942853997381615114d0

      gf=ph_gfermi
      
      s=(pphy(0,1)+pphy(0,2))**2-(pphy(1,1)+pphy(1,2))**2
     $     -(pphy(2,1)+pphy(2,2))**2 -(pphy(3,1)+pphy(3,2))**2
      xnorm=1/(2.d0*pi)*1/(pi)*s/(256*v2)

      if(iborn.eq.2)then
         tmp=4.d0/9.d0
         msqb=xnorm*tmp*st_alpha*st_alpha*GF*2d0*s
         msqv1 = (ca*(5d0+7d0/6d0*pi**2)-3d0*cf)*msqb

         Lt = log(ph_hmass**2/ph_topmass**2)
         
         msqv2 = 5359d0/54d0 + (137d0*Lt)/6d0
     &        + (1679d0*pi**2)/24d0 
     &        + (37d0*pi**4)/8d0 - (499d0*zeta3)/6d0
         msqv2 = msqv2*msqb

         
      else
         write(*,*)'Unknown option in f1born',iborn
         call exit(1)
      endif
      
c     the multiplication for 2s is needed to remove the flux factor
      end
