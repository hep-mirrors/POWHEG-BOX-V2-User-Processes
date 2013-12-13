      subroutine BornVecHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfm,Amp3m4p5p
     $     ,Amp3p4m5p,Amp3m4m5p,Amp3p4p5p,Amp3m4p5m,Amp3p4m5m,Amp3m4m5m
     $     ,Amp3p4p5m)
      implicit none
      integer k1,k2,k3,k4,k5
      double precision pmcfm(12,1:4),mX
      double complex Amp3m4p5p,Amp3p4m5p,Amp3m4m5p ,Amp3p4p5p,Amp3m4p5m
     $     ,Amp3p4m5m,Amp3m4m5m,Amp3p4p5m
c      include 'MCFM_include/constants.f'
c     instead of including constants.f
      integer nf,mxpart
      parameter(nf=5,mxpart=12)
      include 'MCFM_include/zprods_decl.f'
      include 'pwhg_physpar.h'

      call spinoru(5,pmcfm,za,zb)
      mX=physpar_ml(3)

c      print*, mx
c      print*, pmcfm
      
      include 'FortranBornVecAmplitudes.f'

      end

      subroutine BornAxHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfm,
     $     AmpAx3m4p5p,AmpAx3p4m5p,AmpAx3m4m5p,AmpAx3p4p5p,AmpAx3m4p5m
     $     ,AmpAx3p4m5m,AmpAx3m4m5m,AmpAx3p4p5m)
      implicit none
      integer k1,k2,k3,k4,k5
      double precision pmcfm(12,1:4),mX,betap,beta,apl,k34,mass2
      double complex AmpAx3m4p5p,AmpAx3p4m5p,AmpAx3m4m5p,AmpAx3p4p5p,AmpAx3m4p5m
     $     ,AmpAx3p4m5m,AmpAx3m4m5m,AmpAx3p4p5m
c      include 'MCFM_include/constants.f'
c     instead of including constants.f
      integer nf,mxpart
      parameter(nf=5,mxpart=12)
      include 'MCFM_include/zprods_decl.f'
      include 'pwhg_physpar.h'

      call spinoru(5,pmcfm,za,zb)
      mX=physpar_ml(3)
      mass2=mX**2
      k34=pmcfm(3,4)*pmcfm(4,4)-pmcfm(3,1)*pmcfm(4,1)-pmcfm(3,2)*pmcfm(4
     $     ,2)-pmcfm(3,3)*pmcfm(4,3)
c     This k34 is done with the rescaled momenta, and since p3+p4=k3+k4,
c     we have:
c     2*m^2 + 2(p3*p4) = 2(k3*k4)
c     and in the beta definition I have to use (1-4*m2/(p3+p4)^2)
      beta=sqrt(1-4d0*mass2/2d0/k34)
      apl=(1+beta)/2d0
      betap=apl

c      print*, 'mx,betap ',mx,betap
      
      include 'FortranBornAxAmplitudes.f'

      end

