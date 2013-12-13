      subroutine VirtScHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfm,mu2
     $     ,VLCSAmp3m4m5p,VLCSAmp3p4p5p,VLCSAmp3m4m5m,VLCSAmp3p4p5m
     $     ,VSLCSAmp3m4m5p,VSLCSAmp3p4p5p,VSLCSAmp3m4m5m,VSLCSAmp3p4p5m)
      implicit none
      integer k1,k2,k3,k4,k5
      double precision pmcfm(12,1:4),mX,mu2,epsinv,epsinv2,betap
     $     ,beta,apl,k34,pSsq,mass2
      double complex VLCSAmp3m4m5p,VLCSAmp3p4p5p,VLCSAmp3m4m5m
     $     ,VLCSAmp3p4p5m,VSLCSAmp3m4m5p,VSLCSAmp3p4p5p,VSLCSAmp3m4m5m
     $     ,VSLCSAmp3p4p5m

      double complex AmpBorn(-1:1),AmpDecay(-1:1)
      double complex AmpS3m4m5p,AmpS3p4p5p,AmpS3m4m5m,AmpS3p4p5m

      double complex Lsm1,lnrat

      complex * 16 respp,resmm,Smm,Spp
      

c      include 'MCFM_include/constants.f'
c     instead of including constants.f
      integer nf,mxpart
      parameter(nf=5,mxpart=12)
      include 'MCFM_include/zprods_decl.f'
      include 'MCFM_include/sprods_com.f'
      include 'pwhg_physpar.h'

      if(k3.ne.3.and.k4.ne.4) then
         write(*,*) 'not default value for k3 and k4: will stop '
         call exit(-1)
      endif

      call spinoru(5,pmcfm,za,zb)
ccccccccccccccccccccccccccccccccccccccccc
      mX=physpar_ml(3)
      epsinv=0d0
      epsinv2=0d0
      k34=pmcfm(3,4)*pmcfm(4,4)-pmcfm(3,1)*pmcfm(4,1)-pmcfm(3,2)*pmcfm(4
     $     ,2)-pmcfm(3,3)*pmcfm(4,3)
      pSsq=2*k34
c     This k34 is done with the rescaled momenta, and since p3+p4=k3+k4,
c     we have:
c     2*m^2 + 2(p3*p4) = 2(k3*k4)
c     and in the beta definition I have to use (1-4*m2/(p3+p4)^2)
      mass2=mX**2
      beta=sqrt(1-4d0*mass2/2d0/k34)
      apl=(1+beta)/2d0
      betap=apl
      resmm=za(k3,k4)
      respp=zb(k3,k4)
      Smm=(2d0*apl-1d0)*resmm
      Spp=(2d0*apl-1d0)*respp
ccccccccccccccccccccccccccccccccccccccccc

      include 'FortranBornScalarAmplitudes.f'
      AmpS3m4m5m=AmpS3m4m5m/2d0
      AmpS3p4p5m=AmpS3p4p5m/2d0
      AmpS3m4m5p=AmpS3m4m5p/2d0
      AmpS3p4p5p=AmpS3p4p5p/2d0
cccccc
      AmpBorn(-1)=AmpS3m4m5p 
      AmpBorn(+1) =AmpS3p4p5p 
      AmpDecay(-1)=Smm/2d0
      AmpDecay(+1)=Spp/2d0
      include 'FortranVirtScalarAmplitudes5p.f'
c$$$      print*, 'AmpBorn(X-,g+) ',AmpBorn(-1)
c$$$      print*, 'AmpLC(X-,g+) ',VLCSAmp3m4m5p
c$$$      print*, 'AmpSLC(X-,g+) ',VSLCSAmp3m4m5p
cccccc
      AmpBorn(-1)=AmpS3m4m5m 
      AmpBorn(+1) =AmpS3p4p5m 
      AmpDecay(-1)=Smm/2d0
      AmpDecay(+1)=Spp/2d0
      include 'FortranVirtScalarAmplitudes5m.f'
c$$$      print*, 'AmpBorn(X+,g-) ',AmpBorn(+1)
c$$$      print*, 'AmpLC(X+,g-) ',VLCSAmp3p4p5m

c$$$      print*, 'AmpBorn(X-,g-) ',AmpBorn(-1)
c$$$      print*, 'AmpLC(X-,g-) ',VLCSAmp3m4m5m
c$$$      print*, 'rational part ',(AmpDecay(-1)*s(k1,k5))/(2.*za(k1,k5)*za(k2,k5)) + 
c$$$     -  (AmpDecay(-1)*s(k5,k2))/(2.*za(k1,k5)*za(k2,k5))
cccccc
      end


      subroutine VirtPScHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfm,mu2
     $     ,VLCSAmp3m4m5p,VLCSAmp3p4p5p,VLCSAmp3m4m5m,VLCSAmp3p4p5m
     $     ,VSLCSAmp3m4m5p,VSLCSAmp3p4p5p ,VSLCSAmp3m4m5m,VSLCSAmp3p4p5m)
      implicit none
      integer k1,k2,k3,k4,k5
      double precision pmcfm(12,1:4),mX,mu2,epsinv,epsinv2,betap
     $     ,beta,apl,k34,pSsq,mass2
      double complex VLCSAmp3m4m5p,VLCSAmp3p4p5p,VLCSAmp3m4m5m
     $     ,VLCSAmp3p4p5m,VSLCSAmp3m4m5p,VSLCSAmp3p4p5p,VSLCSAmp3m4m5m
     $     ,VSLCSAmp3p4p5m

      double complex AmpBorn(-1:1),AmpDecay(-1:1)
      double complex AmpPS3m4m5p,AmpPS3p4p5p,AmpPS3m4m5m,AmpPS3p4p5m

      double complex Lsm1,lnrat

      complex * 16 respp,resmm,PSmm,PSpp

c      include 'MCFM_include/constants.f'
c     instead of including constants.f
      integer nf,mxpart
      parameter(nf=5,mxpart=12)
      include 'MCFM_include/zprods_decl.f'
      include 'MCFM_include/sprods_com.f'
      include 'pwhg_physpar.h'

      if(k3.ne.3.and.k4.ne.4) then
         write(*,*) 'not default value for k3 and k4: will stop '
         call exit(-1)
      endif

      call spinoru(5,pmcfm,za,zb)
ccccccccccccccccccccccccccccccccccccccccc
      mX=physpar_ml(3)
      epsinv=0d0
      epsinv2=0d0
      k34=pmcfm(3,4)*pmcfm(4,4)-pmcfm(3,1)*pmcfm(4,1)-pmcfm(3,2)*pmcfm(4
     $     ,2)-pmcfm(3,3)*pmcfm(4,3)
      pSsq=2*k34
c     This k34 is done with the rescaled momenta, and since p3+p4=k3+k4,
c     we have:
c     2*m^2 + 2(p3*p4) = 2(k3*k4)
c     and in the beta definition I have to use (1-4*m2/(p3+p4)^2)
      mass2=mX**2
      beta=sqrt(1-4d0*mass2/2d0/k34)
      apl=(1+beta)/2d0
      betap=apl
      resmm=za(k3,k4)
      respp=zb(k3,k4)
      PSmm=resmm
      PSpp=-respp
ccccccccccccccccccccccccccccccccccccccccc

      include 'FortranBornPseudoScalarAmplitudes.f'
      AmpPS3m4m5m=AmpPS3m4m5m/2d0
      AmpPS3p4p5m=AmpPS3p4p5m/2d0
      AmpPS3m4m5p=AmpPS3m4m5p/2d0
      AmpPS3p4p5p=AmpPS3p4p5p/2d0
cccccc
      AmpBorn(-1)=AmpPS3m4m5p 
      AmpBorn(+1) =AmpPS3p4p5p 
      AmpDecay(-1)=PSmm/2d0
      AmpDecay(+1)=PSpp/2d0
      include 'FortranVirtScalarAmplitudes5p.f'
cccccc
      AmpBorn(-1)=AmpPS3m4m5m 
      AmpBorn(+1) =AmpPS3p4p5m 
      AmpDecay(-1)=PSmm/2d0
      AmpDecay(+1)=PSpp/2d0
      include 'FortranVirtScalarAmplitudes5m.f'
cccccc
      end

