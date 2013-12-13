      subroutine VirtVecHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfm,mu2
     $     ,VLCAmp3m4p5p,VLCAmp3p4m5p,VLCAmp3m4m5p,VLCAmp3p4p5p
     $     ,VLCAmp3m4p5m,VLCAmp3p4m5m,VLCAmp3m4m5m,VLCAmp3p4p5m
     $     ,VSLCAmp3m4p5p,VSLCAmp3p4m5p,VSLCAmp3m4m5p,VSLCAmp3p4p5p
     $     ,VSLCAmp3m4p5m,VSLCAmp3p4m5m,VSLCAmp3m4m5m,VSLCAmp3p4p5m)
      implicit none
      integer k1,k2,k3,k4,k5
      double precision pmcfm(12,1:4),mX,mu2,epsinv,epsinv2,k34,pZsq
      double complex VLCAmp3m4p5p,VLCAmp3p4m5p,VLCAmp3m4m5p
     $     ,VLCAmp3p4p5p,VLCAmp3m4p5m,VLCAmp3p4m5m,VLCAmp3m4m5m
     $     ,VLCAmp3p4p5m,VSLCAmp3m4p5p,VSLCAmp3p4m5p,VSLCAmp3m4m5p
     $     ,VSLCAmp3p4p5p,VSLCAmp3m4p5m,VSLCAmp3p4m5m,VSLCAmp3m4m5m
     $     ,VSLCAmp3p4p5m

      double complex AmpBorn(-3:3)
      double complex Amp3m4p5p,Amp3p4m5p,Amp3m4m5p,Amp3p4p5p,Amp3m4p5m
     $     ,Amp3p4m5m,Amp3m4m5m,Amp3p4p5m

      double complex L0,L1,Lsm1,lnrat


c      include 'MCFM_include/constants.f'
c     instead of including constants.f
      integer nf,mxpart
      parameter(nf=5,mxpart=12)
      include 'MCFM_include/zprods_decl.f'
      include 'MCFM_include/sprods_com.f'
      include 'pwhg_physpar.h'

cccccc
      call spinoru(5,pmcfm,za,zb)
      mX=physpar_ml(3)
      epsinv=0d0
      epsinv2=0d0
      k34=pmcfm(3,4)*pmcfm(4,4)-pmcfm(3,1)*pmcfm(4,1)-pmcfm(3,2)*pmcfm(4
     $     ,2)-pmcfm(3,3)*pmcfm(4,3)
      pZsq=2*k34

      include 'FortranBornVecAmplitudes.f'
cccccc
      AmpBorn(-3)=Amp3m4m5p 
      AmpBorn(-1)=Amp3m4p5p 
      AmpBorn(1) =Amp3p4m5p 
      AmpBorn(3) =Amp3p4p5p 
      include 'FortranVirtVecAmplitudes5p.f'
cccccc
      AmpBorn(-3)=Amp3m4m5m 
      AmpBorn(-1)=Amp3m4p5m 
      AmpBorn(1) =Amp3p4m5m 
      AmpBorn(3) =Amp3p4p5m 
      include 'FortranVirtVecAmplitudes5m.f'
cccccc
      end


      subroutine VirtAxHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfm,mu2
     $     ,VLCAmpAx3m4p5p,VLCAmpAx3p4m5p,VLCAmpAx3m4m5p ,VLCAmpAx3p4p5p
     $     ,VLCAmpAx3m4p5m,VLCAmpAx3p4m5m,VLCAmpAx3m4m5m ,VLCAmpAx3p4p5m
     $     ,VSLCAmpAx3m4p5p,VSLCAmpAx3p4m5p ,VSLCAmpAx3m4m5p
     $     ,VSLCAmpAx3p4p5p,VSLCAmpAx3m4p5m ,VSLCAmpAx3p4m5m
     $     ,VSLCAmpAx3m4m5m,VSLCAmpAx3p4p5m)
      implicit none
      integer k1,k2,k3,k4,k5
      double precision pmcfm(12,1:4),mX,mu2,epsinv,epsinv2,betap,beta
     $     ,apl,k34,pZsq,mass2
      double complex VLCAmpAx3m4p5p,VLCAmpAx3p4m5p,VLCAmpAx3m4m5p ,VLCAmpAx3p4p5p
     $     ,VLCAmpAx3m4p5m,VLCAmpAx3p4m5m,VLCAmpAx3m4m5m ,VLCAmpAx3p4p5m
     $     ,VSLCAmpAx3m4p5p,VSLCAmpAx3p4m5p ,VSLCAmpAx3m4m5p
     $     ,VSLCAmpAx3p4p5p,VSLCAmpAx3m4p5m ,VSLCAmpAx3p4m5m
     $     ,VSLCAmpAx3m4m5m,VSLCAmpAx3p4p5m

      double complex AmpAxBorn(-3:3)
      double complex AmpAx3m4p5p,AmpAx3p4m5p,AmpAx3m4m5p,AmpAx3p4p5p,AmpAx3m4p5m
     $     ,AmpAx3p4m5m,AmpAx3m4m5m,AmpAx3p4p5m

      double complex L0,L1,Lsm1,lnrat

c      include 'MCFM_include/constants.f'
c     instead of including constants.f
      integer nf,mxpart
      parameter(nf=5,mxpart=12)
      include 'MCFM_include/zprods_decl.f'
      include 'MCFM_include/sprods_com.f'
      include 'pwhg_physpar.h'

cccccc
      call spinoru(5,pmcfm,za,zb)
      mX=physpar_ml(3)
      epsinv=0d0
      epsinv2=0d0
      k34=pmcfm(3,4)*pmcfm(4,4)-pmcfm(3,1)*pmcfm(4,1)-pmcfm(3,2)*pmcfm(4
     $     ,2)-pmcfm(3,3)*pmcfm(4,3)
      pZsq=2*k34
c     This k34 is done with the rescaled momenta, and since p3+p4=k3+k4,
c     we have:
c     2*m^2 + 2(p3*p4) = 2(k3*k4)
c     and in the beta definition I have to use (1-4*m2/(p3+p4)^2)
      mass2=mX**2
      beta=sqrt(1-4d0*mass2/2d0/k34)
      apl=(1+beta)/2d0
      betap=apl

      include 'FortranBornAxAmplitudes.f'
cccccc
      AmpAxBorn(-3)=AmpAx3m4m5p 
      AmpAxBorn(-1)=AmpAx3m4p5p 
      AmpAxBorn(1) =AmpAx3p4m5p 
      AmpAxBorn(3) =AmpAx3p4p5p 
      include 'FortranVirtAxAmplitudes5p.f'
cccccc
      AmpAxBorn(-3)=AmpAx3m4m5m 
      AmpAxBorn(-1)=AmpAx3m4p5m 
      AmpAxBorn(1) =AmpAx3p4m5m 
      AmpAxBorn(3) =AmpAx3p4p5m 
      include 'FortranVirtAxAmplitudes5m.f'
cccccc



      end
