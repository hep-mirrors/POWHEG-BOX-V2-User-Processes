      subroutine BornScHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfm,
     $     AmpS3m4m5p,AmpS3p4p5p,AmpS3m4m5m,AmpS3p4p5m)
      implicit none
      integer k1,k2,k3,k4,k5
      double precision pmcfm(12,1:4),mX,betap,beta,apl,k34,pSsq,mass2
      double complex AmpS3m4m5p,AmpS3p4p5p,AmpS3m4m5m,AmpS3p4p5m
c      include 'MCFM_include/constants.f'
c     instead of including constants.f
      integer nf,mxpart
      parameter(nf=5,mxpart=12)
      include 'MCFM_include/zprods_decl.f'
      include 'pwhg_physpar.h'
ccccccccccccccccccccccccc
c$$$c     !: to check with mcfm
c$$$      integer i1,i2,i3,i4,i5,h1,h2,h3,h4,id1,id2
c$$$      double precision s34,xmass,bp,s123
c$$$      double complex amp_prod(2,2),amp_dec(2,2),amp(2,2,2,2)
c$$$      double precision ampsq
c$$$      double precision one
c$$$      parameter (one=1d0)
ccccccccccccccccccccccccc

      call spinoru(5,pmcfm,za,zb)
      mX=physpar_ml(3)
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

      include 'FortranBornScalarAmplitudes.f'
      AmpS3m4m5m=AmpS3m4m5m/2d0
      AmpS3p4p5m=AmpS3p4p5m/2d0
      AmpS3m4m5p=AmpS3m4m5p/2d0
      AmpS3p4p5p=AmpS3p4p5p/2d0

c$$$      print*, 'ME: 3m4m5m ',AmpS3m4m5m
c$$$      print*, 'ME: 3p4p5m ',AmpS3p4p5m
c$$$      print*, 'ME: 3m4m5p ',AmpS3m4m5p
c$$$      print*, 'ME: 3p4p5p ',AmpS3p4p5p

cccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccc
c$$$c     !: to check with mcfm
c$$$      if(k1.eq.1) then
c$$$         print*, '===== MCFM SC=='
c$$$         i4=k3
c$$$         i5=k4
c$$$         i1=k1
c$$$         i2=k5
c$$$         i3=k2
c$$$         xmass=mX
c$$$         
c$$$         s34=Dble(za(i4,i5)*zb(i5,i4))
c$$$         beta=dsqrt(1d0-4d0*xmass**2/s34) 
c$$$         bp=0.5d0*(one+beta)
c$$$c      print*, 'bp ',bp
c$$$      
c$$$!      write(6,*) 'In LO ',i4,i5,bp,s34,xmass
c$$$cccccccccc
c$$$c      call dm_scal_decay(i4,i5,za,zb,bp,amp_dec) 
c$$$         id1=i5
c$$$         id2=i4
c$$$         amp_dec(1,2)=0d0
c$$$         amp_dec(2,1)=0d0
c$$$         amp_dec(1,1)=za(id2,id1)*bp-xmass**2/(zb(id1,id2)*bp)
c$$$         amp_dec(2,2)=zb(id2,id1)*bp-xmass**2/(za(id1,id2)*bp)
c$$$cccccccccc
c$$$
c$$$         s123=za(i1,i2)*zb(i2,i1)+za(i2,i3)*zb(i3,i2)+za(i1,i3)*zb(i3
c$$$     $        ,i1) 
c$$$
c$$$c      print*, s123,pSSq
c$$$
c$$$c     Q minus, G minus
c$$$         amp_prod(1,1)=-s123/(zb(i1,i2)*zb(i2,i3))
c$$$c     Q plus, G plus
c$$$         amp_prod(2,2)=-s123/(za(i1,i2)*za(i2,i3))
c$$$c     Q minus, G plus
c$$$         amp_prod(1,2)=-za(i1,i3)**2/(za(i1,i2)*za(i2,i3))
c$$$c     Q pllus, G minus
c$$$         amp_prod(2,1)=-zb(i1,i3)**2/(zb(i1,i2)*zb(i2,i3))
c$$$         do h1=1,2
c$$$            do h2=1,2
c$$$               do h3=1,2
c$$$                  do h4=1,2 
c$$$                     amp(h1,h2,h3,h4)=amp_prod(h1,h2)*amp_dec(h3,h4) 
c$$$c$$$                     if(amp(h1,h2,h3,h4).ne.(0d0,0d0)) print*,
c$$$c$$$     $                    '===== MCFM SC hq hg hX ',h1,h2,h3,amp(h1,h2,h3
c$$$c$$$     $                    ,h4)
c$$$                  enddo
c$$$               enddo
c$$$            enddo
c$$$         enddo
c$$$
c$$$         do h1=1,2
c$$$            do h3=1,2
c$$$               ampsq=0d0
c$$$               do h2=1,2
c$$$                  do h4=1,2
c$$$                     ampsq=ampsq+ dble(amp(h1,h2,h3,h4)*dconjg(amp(h1,h2
c$$$     $                    ,h3,h4)))
c$$$                  enddo
c$$$               enddo
c$$$               print*, '===== MCFM SC ampsq hq hX ',h1,h3,ampsq
c$$$            enddo
c$$$         enddo
c$$$         
c$$$      endif
cccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccc
      end



      subroutine BornPScHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfm,
     $     AmpPS3m4m5p,AmpPS3p4p5p,AmpPS3m4m5m,AmpPS3p4p5m)
      implicit none
      integer k1,k2,k3,k4,k5
      double precision pmcfm(12,1:4),mX,betap,beta,apl,k34,pSsq,mass2
      double complex AmpPS3m4m5p,AmpPS3p4p5p,AmpPS3m4m5m,AmpPS3p4p5m
c      include 'MCFM_include/constants.f'
c     instead of including constants.f
      integer nf,mxpart
      parameter(nf=5,mxpart=12)
      include 'MCFM_include/zprods_decl.f'
      include 'pwhg_physpar.h'
ccccccccccccccccccccccccc
c$$$c     !: to check with mcfm
c$$$      integer i1,i2,i3,i4,i5,h1,h2,h3,h4,id1,id2
c$$$      double precision s34,xmass,bp,s123
c$$$      double complex amp_prod(2,2),amp_dec(2,2),amp(2,2,2,2)
c$$$      double precision ampsq
c$$$      double precision one
c$$$      parameter (one=1d0)
ccccccccccccccccccccccccc

      call spinoru(5,pmcfm,za,zb)
      mX=physpar_ml(3)
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

      include 'FortranBornPseudoScalarAmplitudes.f'
      AmpPS3m4m5m=AmpPS3m4m5m/2d0
      AmpPS3p4p5m=AmpPS3p4p5m/2d0
      AmpPS3m4m5p=AmpPS3m4m5p/2d0
      AmpPS3p4p5p=AmpPS3p4p5p/2d0

c$$$      print*, 'ME: 3m4m5m ',AmpPS3m4m5m
c$$$      print*, 'ME: 3p4p5m ',AmpPS3p4p5m
c$$$      print*, 'ME: 3m4m5p ',AmpPS3m4m5p
c$$$      print*, 'ME: 3p4p5p ',AmpPS3p4p5p

cccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccc
c$$$c     !: to check with mcfm
c$$$      if(k1.eq.1) then
c$$$         print*, '===== MCFM PS =='
c$$$         i4=k3
c$$$         i5=k4
c$$$         i1=k1
c$$$         i2=k5
c$$$         i3=k2
c$$$         xmass=mX
c$$$         
c$$$         s34=Dble(za(i4,i5)*zb(i5,i4))
c$$$         beta=dsqrt(1d0-4d0*xmass**2/s34) 
c$$$         bp=0.5d0*(one+beta)
c$$$c      print*, 'bp ',bp
c$$$      
c$$$!      write(6,*) 'In LO ',i4,i5,bp,s34,xmass
c$$$cccccccccc
c$$$c      call dm_Pscal_decay(i4,i5,za,zb,bp,amp_dec) 
c$$$         id1=i5
c$$$         id2=i4
c$$$         amp_dec(1,2)=0d0
c$$$         amp_dec(2,1)=0d0
c$$$         amp_dec(1,1)=-za(id2,id1)*bp-xmass**2/(zb(id1,id2)*bp)
c$$$         amp_dec(2,2)=zb(id2,id1)*bp+xmass**2/(za(id1,id2)*bp)
c$$$cccccccccc
c$$$
c$$$         s123=za(i1,i2)*zb(i2,i1)+za(i2,i3)*zb(i3,i2)+za(i1,i3)*zb(i3
c$$$     $        ,i1) 
c$$$
c$$$c      print*, s123,pSSq
c$$$
c$$$c     Q minus, G minus
c$$$      amp_prod(1,1)=-s123/(zb(i1,i2)*za(i2,i3)) !: original code
c$$$c      amp_prod(1,1)=-s123/(zb(i1,i2)*zb(i2,i3)) !: xxxxxxxxx
c$$$c     Q plus, G plus
c$$$      amp_prod(2,2)=-s123/(za(i1,i2)*za(i2,i3))
c$$$c     Q minus, G plus
c$$$      amp_prod(1,2)=-za(i1,i3)**2/(za(i1,i2)*za(i2,i3))
c$$$c     Q pllus, G minus
c$$$      amp_prod(2,1)=-zb(i1,i3)**2/(zb(i1,i2)*zb(i2,i3))
c$$$
c$$$
c$$$
c$$$
c$$$         do h1=1,2
c$$$            do h2=1,2
c$$$               do h3=1,2
c$$$                  do h4=1,2 
c$$$                     amp(h1,h2,h3,h4)=amp_prod(h1,h2)*amp_dec(h3,h4) 
c$$$                     if(amp(h1,h2,h3,h4).ne.(0d0,0d0)) print*,
c$$$     $                    '===== MCFM PS hq hX hg ',h1,h3,h2,amp(h1,h2,h3
c$$$     $                    ,h4)
c$$$                  enddo
c$$$               enddo
c$$$            enddo
c$$$         enddo
c$$$
c$$$         do h1=1,2
c$$$            do h3=1,2
c$$$               ampsq=0d0
c$$$               do h2=1,2
c$$$                  do h4=1,2
c$$$                     ampsq=ampsq+ dble(amp(h1,h2,h3,h4)*dconjg(amp(h1,h2
c$$$     $                    ,h3,h4)))
c$$$                  enddo
c$$$               enddo
c$$$               print*, '===== MCFM PS ampsq hq hX ',h1,h3,ampsq
c$$$            enddo
c$$$         enddo
c$$$
c$$$      endif
cccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccc
      end





