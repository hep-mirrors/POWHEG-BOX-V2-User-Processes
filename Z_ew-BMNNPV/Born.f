      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'strongcorr.h'
      include 'pwhg_st.h'
      integer nlegs
      parameter (nlegs=nlegborn)
      real * 8 p(0:3,nlegs),bornjk(nlegs,nlegs)
      integer bflav(nlegs)
      real * 8 bmunu(0:3,0:3,nlegs),bbmunu(0:3,0:3),born,colcf
      integer j,k,mu,nu
c Colour factors for colour-correlated Born amplitudes;
c     Rule from 2.98 in FNO2007, leads to B_i j=B* C_i
      real*8 virtual
      logical dyqedonly,dyweakonly
      common/split_ew/dyqedonly,dyweakonly
      
      call compborn(p,bflav,born,bbmunu)

      do j=1,nlegs
         do mu=0,3
            do nu=0,3
               if (bflav(j).eq.22) then
                   bmunu(mu,nu,j)=bbmunu(mu,nu)
               else
                   bmunu(mu,nu,j)=0d0
               endif
            enddo
         enddo
      enddo
 
      do j=1,nlegs
         do k=j+1,nlegs
            if(abs(bflav(k)).le.6) then
                colcf=cf
            else
                colcf=0d0
            endif
            bornjk(j,k)=born*colcf
            bornjk(k,j)=bornjk(j,k)
         enddo
      enddo

      if(flg_LOevents.and.dyweakonly.and..not.strongcorr) then ! add the weak virtual directly to the LO
         call setvirtual(p,bflav,virtual) ! the factor( 4 Pi )^eps/Gamma(1-eps) here is irrelevant
         ! since it does not multiply any pole in 1/eps
         born=born+virtual*st_alpha/(2d0*pi) ! remove  the normalization of the NLO machinery
      endif
      end


      subroutine compborn(p,bflav,born,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      real * 8 p(0:3,nlegborn)
      integer bflav(nlegborn)
      real * 8 born,bmunu(0:3,0:3)

      real * 8 charge(-5:22)
      data charge
     #     / 0.33333333333333333333d0, !   1d0/3
     #      -0.66666666666666666667d0, !  -2d0/3
     #       0.33333333333333333333d0, !   1d0/3 
     #      -0.66666666666666666667d0, !   -2d0/3
     #       0.33333333333333333333d0, !   1d0/3 
     #       0d0,                      !   0d0   
     #      -0.33333333333333333333d0, !   -1d0/3
     #       0.66666666666666666667d0, !   2d0/3   
     #      -0.33333333333333333333d0, !   -1d0/3
     #       0.66666666666666666667d0, !   2d0/3 
     #      -0.33333333333333333333d0, !   -1d0/3
     #       0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 /

      integer ferm_type(nlegborn)
      integer i,j
      real * 8 ferm_charge(nlegborn)

c     vector boson id and decay
      integer vdecaymode
      common/cvecbos/vdecaymode

      if (bflav(3).le.0.or.bflav(4).ge.0) then
         write(*,*) 'Error in compborn'
         stop
      endif
      ferm_type(3) = +1
      ferm_type(4) = -1

      if(mod(vdecaymode,2).eq.1) then
         ferm_charge(3) = -1d0
         ferm_charge(4) = +1d0
      elseif(mod(vdecaymode,2).eq.0) then
         ferm_charge(3) = 0d0
         ferm_charge(4) = 0d0
      else
         write(*,*) 'Error in vdecaymode in compborn'
         stop
      endif

      
c     i is the flavour index of first incoming parton
c     j is the flavour index of second incoming parton
c     with the convention:
c     
c      -6  -5  -4  -3  -2  -1  0  1  2  3  4  5  6 ... 22
c      t~  b~  c~  s~  u~  d~  g  d  u  s  c  b  t ... ga
      
      i = bflav(1)
      j = bflav(2)
      ferm_charge(1) = charge(i)
      ferm_charge(2) = charge(j)
      ferm_type(1) = i/abs(i)
      ferm_type(2) = j/abs(j)

      if (ferm_charge(1).ne.0.and.ferm_charge(2).ne.0) then
          call q_aq_to_l_al(p,ferm_type,ferm_charge,born,bmunu) 
      elseif (ferm_charge(1).eq.0.and.ferm_charge(2).eq.0) then
          call a_a_to_l_al(p,ferm_type,ferm_charge,born,bmunu) 
      endif

      end


      subroutine borncolour_lh
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
c     neutral particles
      icolup(1,3)=0
      icolup(2,3)=0
      icolup(1,4)=0
      icolup(2,4)=0
c     colored particles
      if((idup(1).gt.0).and.(idup(2).lt.0)) then
         icolup(1,1)=501
         icolup(2,1)=0
         icolup(1,2)=0
         icolup(2,2)=501
      elseif((idup(1).lt.0).and.(idup(2).gt.0)) then
         icolup(1,1)=0
         icolup(2,1)=501
         icolup(1,2)=501
         icolup(2,2)=0
      elseif((idup(1).eq.22).and.(idup(2).eq.22)) then
         icolup(1,1)=0
         icolup(2,1)=0
         icolup(1,2)=0
         icolup(2,2)=0
      else
         write(*,*) ' invalid flavour'
         stop
      endif
      end


      subroutine finalize_lh
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     
c     Resonance Z -> e-(3) e+(4)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_rad.h'
      include 'LesHouches.h'
c
      integer i1,i2
      real*8 mc_isr_scale,mc_fsr_scale
      common/mc_scale_lhe/mc_isr_scale,mc_fsr_scale
      real*8 dbleradmom
      common/mc_dbleradmom/dbleradmom(0:3,nlegreal+1)
      real*8 mc_tmaxisr,mc_tmaxfsr
      real*8 mc_csiisr,mc_yisr,mc_aziisr
      real*8 mc_csifsr,mc_yfsr,mc_azifsr
      logical mc_dlberad
      common/dblerad/mc_tmaxisr,mc_tmaxfsr,
     +     mc_csiisr,mc_yisr,mc_aziisr,
     +     mc_csifsr,mc_yfsr,mc_azifsr,
     +     mc_dlberad
      real*8 check(4)
c
      scalup=mc_isr_scale        
      call add_resonance(23,3,4)
c if it is a fsr photon, add it to the resonance
      if(nup.eq.nlegreal+1.and.rad_kinreg.ge.2
     +     .and.(.not.mc_dlberad)) then
         mothup(1,6) = 3
         mothup(2,6) = 3
         pup(1:4,3) = pup(1:4,3) + pup(1:4,6)
         pup(5,3)=sqrt(pup(4,3)**2-pup(1,3)**2-pup(2,3)**2-pup(3,3)**2)
      endif
c
      if(mc_dlberad) then
         nup=nlegreal+2 ! one is the resonance
c isr scale in the LHE block
c
         mothup(1,6) = 1 ! isr gluon or gamma
         mothup(2,6) = 2
         istup( 6)=1
         spinup(6)=9
         vtimup(6)=0
c
         mothup(1,7) = 3
         mothup(2,7) = 3
         istup( 7)=1
         spinup(7)=9
         vtimup(7)=0
         idup(  7)=22
c
         call add_azimuth2

         do i1=1,2              !nup
            do i2=1,3
               pup(i2,i1)=dbleradmom(i2,i1)
            enddo
            pup(4,i1)=dbleradmom(0,i1)
         enddo
         do i1=4,nup
            do i2=1,3
               pup(i2,i1)=dbleradmom(i2,i1-1)
            enddo
            pup(4,i1)=dbleradmom(0,i1-1)
         enddo
         pup(5,7)=sqrt(abs(pup(4,7)**2-pup(1,7)**2-pup(2,7)**2
     +        -pup(3,7)**2))
         pup(1:4,3) = pup(1:4,4) + pup(1:4,5) + pup(1:4,7)
         pup(5,3)=sqrt(pup(4,3)**2-pup(1,3)**2-pup(2,3)**2-pup(3,3)**2)
      endif
c
      call lhefinitemasses
      end



c     i1<i2
      subroutine momenta_reshuffle(ires,i1,i2,decmass)
      implicit none
      include 'LesHouches.h'
      integer ires,i1,i2,j
      real * 8 ptemp(0:3),ptemp1(0:3),beta(3),betainv(3),modbeta,decmass
      if (i1.ge.i2) then
         write(*,*) 'wrong sequence in momenta_reshuffle'
         stop
      endif
cccccccccccccccccccccccccccccc
c construct boosts from/to vector boson rest frame 
      do j=1,3
         beta(j)=-pup(j,ires)/pup(4,ires)
      enddo
      modbeta=sqrt(beta(1)**2+beta(2)**2+beta(3)**2)
      do j=1,3
         beta(j)=beta(j)/modbeta
         betainv(j)=-beta(j)
      enddo
cccccccccccccccccccccccccccccccccccccccc
c first decay product 
      ptemp(0)=pup(4,i1)
      do j=1,3
         ptemp(j)=pup(j,i1)
      enddo
      call mboost(1,beta,modbeta,ptemp,ptemp)
      ptemp1(0)=0.5d0*pup(5,ires)
      do j=1,3
         ptemp1(j)=ptemp(j)/ptemp(0)*sqrt(ptemp1(0)**2 -decmass**2)
      enddo
      call mboost(1,betainv,modbeta,ptemp1,ptemp)
      do j=1,3
         pup(j,i1)=ptemp(j)
      enddo
      pup(4,i1)=ptemp(0)
c abs to avoid tiny negative values in case of neutrinos
      pup(5,i1)=sqrt(abs(pup(4,i1)**2-pup(1,i1)**2
     $     -pup(2,i1)**2-pup(3,i1)**2))
      
c second decay product 

      ptemp(0)=pup(4,i2)
      do j=1,3
         ptemp(j)=pup(j,i2)
      enddo
      call mboost(1,beta,modbeta,ptemp,ptemp)
      ptemp1(0)=0.5d0*pup(5,ires)
      do j=1,3
         ptemp1(j)=ptemp(j)/ptemp(0)*sqrt(ptemp1(0)**2 -decmass**2)
      enddo
      call mboost(1,betainv,modbeta,ptemp1,ptemp)
      do j=1,3
         pup(j,i2)=ptemp(j)
      enddo
      pup(4,i2)=ptemp(0)
c abs to avoid tiny negative values in case of neutrinos
      pup(5,i2)=sqrt(abs(pup(4,i2)**2-pup(1,i2)**2
     $     -pup(2,i2)**2-pup(3,i2)**2))
cccccccccccccccccccccccccccccccccccccccc
      end





c this subroutine compute the Born amplitude for the process
c q(p1) aq(p2) -> Z(p3+p4)   con Z -> l-(p3) l+(p4) 
c It gets the matrix p with all the momenta and gives   
c the amplitude squared (amp2) averaged over initial 
c polarization     
c
c         q  --->-----
c                     |
c                     |            l-
c                     |          /  
c         aq ---<-----/\/\/\/\/\/
c                       Z/gamma \
c                                \ l+
c     ferm_type = 1 fermion
c     ferm_type = -1 antifermion
c     fermion_charge = +2/3, -1/3, -2/3, +1/3

      subroutine q_aq_to_l_al(pphy,fermion_type,fermion_charge,
     +                        amp2,bmunu)
      implicit none
      include 'pwhg_physpar.h'
      include 'nlegborn.h'
      include 'mathx.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
*
      integer fermion_type(nlegborn)
      real * 8 fermion_charge(nlegborn)
      real * 8 pphy(0:3,nlegborn)
      real * 8 amp2,bmunu(0:3,0:3)
*
      real*8 dotp
      external dotp
*
      real*8 mlep2
      common/leptmass/mlep2
*
      real * 8 p(0:3,nlegborn)
      real * 8 ferm_charge(nlegborn)
      integer ferm_type(nlegborn)

      real*8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
*
      real*8 s,t,u
      real*8 t2,u2
      real*8 mlep4
      complex*16 deng,denz2,denz,denzd
      complex*16 gvq,gvq2,gaq,gaq2
      complex*16 gvf,gvf2,gaf,gaf2
      complex*16 onesucw2sw2,mzm2

      integer mi,nu,i
      real*8 tmp

      integer ifirst
      data ifirst/0/

      save ifirst,onesucw2sw2,mlep4,mzm2

      real*8 ramp2
      complex*16 gzqbm,gzqm,gzqbp,gzqp,gzlbm,gzlm,gzlbp,gzlp
      complex*16 propa,propz,cpropz

      
      if (ifirst.eq.0) then
          ifirst = 1
          onesucw2sw2 = 1d0/( 4.d0*cw2*sw2 )
          mlep4 = mlep2**2
          mzm2 = 1d0/mz2
      endif

      do i=1,nlegborn
         do nu=0,3
            p(nu,i) = pphy(nu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
 
c     exchance particle 1 and 2
      if (ferm_type(1).eq.-1) then
         if (ferm_type(2).eq.1) then
            call exchange_momenta(p(0,1),p(0,2))
            tmp = ferm_charge(1)
            ferm_charge(1)=-ferm_charge(2)
            ferm_charge(2)=-tmp
            tmp = ferm_type(1)
            ferm_type(1)=ferm_type(2)
            ferm_type(2)=tmp
         else
            write(*,*) 'Error in the type of the quark 1-2'
            stop
         endif
      endif

      if (abs(ferm_charge(1)).eq.qu) then
         qq = qu
         i3q = 0.5d0

         gzqm=gu(0)
         gzqp=gu(1)

         
      elseif (abs(ferm_charge(1)).eq.-qd) then
         qq = qd
         i3q = -0.5d0

         gzqm=gd(0)
         gzqp=gd(1)

         
      else
         write(*,*) 'What charge is this??', ferm_charge(1)
         stop
      endif

      if (abs(ferm_charge(3)).eq.1d0) then
         ql = -1d0
         i3l = -0.5d0
      elseif (abs(ferm_charge(3)).eq.0d0) then
         ql = 0d0
         i3l = 0.5d0
      else
         write(*,*) 'What charge is this??',ferm_charge(4)
         stop
      endif
 
      p1 = p(:,1)
      p2 = p(:,2)
      p3 = p(:,3)
      p4 = p(:,4)

      gaq = i3q
      gvq = gaq - 2.d0*qq*sw2
      gvq2 = gvq**2
      gaq2 = gaq**2

      gaf  =  i3l
      gvf  =  i3l - 2d0*ql*sw2
      gaf2 =  gaf**2
      gvf2 =  gvf**2

      s =  2d0*dotp(p1,p2)
      t = -2d0*dotp(p1,p3) + mlep2
      u = -2d0*dotp(p1,p4) + mlep2

      t2 = t**2
      u2 = u**2

      deng  = 1d0/s
      denz  = 1.d0/(s*cone - ph_Zmass2 + ii*ph_ZmZw)
      denzd = dconjg(denz)
      
      propa=deng  != 1d0/s
      propz=denz  != 1.d0/(s*cone - ph_Zmass2 + ii*ph_ZmZw)
      cpropz=denzd != dconjg(denz)
      denz2 = denz*denzd

      gzlm=gl(0)
      gzlp=gl(1)

      gzqbm=conjg(gzqm)
      gzqbp=conjg(gzqp)
      gzlbm=conjg(gzlm)
      gzlbp=conjg(gzlp)

      amp2=4*el2_scheme*conjg(el2_scheme)*
     -     (cpropz*gzlbp*gzlm*gzqbm*gzqm*mlep2*propz*s +
     -     cpropz*gzlbm*gzlp*gzqbm*gzqm*mlep2*propz*s +
     -     cpropz*gzlbp*gzlm*gzqbp*gzqp*mlep2*propz*s +
     -     cpropz*gzlbm*gzlp*gzqbp*gzqp*mlep2*propz*s +
     -     cpropz*gzlbp*gzqbm*propa*ql*qq*(mlep4 + mlep2*(s - 2*t) +
     -     t**2) + cpropz*gzlbm*gzqbp*propa*ql*qq*(mlep4 +
     -     mlep2*(s - 2*t) + t**2) +
     -     gzlp*gzqm*propa*propz*ql*qq*(mlep4 + mlep2*(s - 2*t) + t**2)+
     -     gzlm*gzqp*propa*propz*ql*qq*(mlep4 + mlep2*(s - 2*t) + t**2)+
     -     cpropz*gzlbp*gzlp*gzqbm*gzqm*propz*(mlep4 +t*(-2*mlep2 + t))+
     -     cpropz*gzlbm*gzlm*gzqbp*gzqp*propz*(mlep4 +t*(-2*mlep2 + t))+
     -     cpropz*gzlbm*gzqbm*propa*ql*qq*(mlep4 + mlep2*(s-2*u)+ u**2)+
     -     cpropz*gzlbp*gzqbp*propa*ql*qq*(mlep4 + mlep2*(s-2*u)+u**2) +
     -     gzlm*gzqm*propa*propz*ql*qq*(mlep4 + mlep2*(s - 2*u) +u**2) +
     -     gzlp*gzqp*propa*propz*ql*qq*(mlep4 + mlep2*(s - 2*u) +u**2) +
     -     2*propa**2*ql**2*qq**2*(2*mlep4 + t**2 +
     -     2*mlep2*(s - t - u) + u**2) +
     -     cpropz*gzlbm*gzlm*gzqbm*gzqm*propz*(mlep4+u*(-2*mlep2 + u)) +
     -     cpropz*gzlbp*gzlp*gzqbp*gzqp*propz*(mlep4+u*(-2*mlep2 + u)))

      amp2=amp2/4d0/nc
      
      do mi=0,3
         do nu=0,3
            bmunu(mi,nu)=0d0
         enddo
      enddo

      end subroutine q_aq_to_l_al

      subroutine a_a_to_l_al(p,fermion_type,fermion_charge,amp2,bmunu) 
      implicit none
      include 'pwhg_physpar.h'
      include 'nlegborn.h'
      include 'mathx.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
*
      integer fermion_type(nlegborn)
      real * 8 fermion_charge(nlegborn)
      real * 8 p(0:3,nlegborn)
      real * 8 amp2,bmunu(0:3,0:3)
*
      real*8 dotp
      external dotp
*
      real *8 decmass
      common/clepmass/decmass
*
      real*8 m
      equivalence (m,decmass)
      real*8 tmp

      double precision g(0:3,0:3)
      data g/1d0, 0d0, 0d0, 0d0,
     #       0d0,-1d0, 0d0, 0d0,
     #       0d0, 0d0,-1d0, 0d0,
     #       0d0, 0d0, 0d0,-1d0/
      save g

      integer mi,nu
      real*8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)

      real*8 p1p3,p1p4
*
      p1=p(:,1)
      p2=p(:,2)
      p3=p(:,3)
      p4=p(:,4)

      p1p3 = dotp(p1,p3)
      p1p4 = dotp(p1,p4)

c eq. 7 of hep-ph/9812411

      amp2 = 2d0 * el2_scheme**2 * ( 
     +          p1p3/p1p4 + p1p4/p1p3 + 
     +          2d0*m**2*(1d0/p1p4+1d0/p1p3) -
     +          m**4*(1d0/p1p4+1d0/p1p3)**2
     +                        )

      do mi=0,3
         do nu=0,3

        bmunu(mi,nu) = -el2_scheme**2 / 4d0 * (
     &   (4*(p1p3*p1p4*(g(mi,nu)*(p1p3**2 + p1p4**2) -
     &       2*p1(nu)*p1p3*p3(mi) - 
     &         p1(nu)*p1p4*p3(mi) + p1(mi)*p1p4*p3(nu) 
     &       + p1(nu)*p1p3*p4(mi) - 
     &         p1p3*p3(nu)*p4(mi) - p1p4*p3(nu)*p4(mi) + 
     &         (-(p1(mi)*(p1p3 + 2*p1p4)) 
     &        + (p1p3 + p1p4)*p3(mi))*p4(nu)) + 
     &    m**2*(2*p1(mi)*p1(nu)*p1p3*p1p4 - 2*p1(nu)*p1p3*p1p4*p3(mi) + 
     &         p1(nu)*p1p4**2*p3(mi) + p1(mi)*p1p4**2*p3(nu) - 
     &      2*p1p4**2*p3(mi)*p3(nu) + 
     &         p1(nu)*p1p3**2*p4(mi) + 
     &         p1p3*(p1(mi)*(p1p3 - 2*p1p4) + 4*p1p4*p3(mi) 
     &      - 2*p1p3*p4(mi))*p4(nu)))
     &    )/(p1p3**2*p1p4**2) )

         enddo
      enddo


      end subroutine a_a_to_l_al

c-----added to rotate dblemom
      subroutine add_azimuth2
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      integer ileg
      real * 8 azi,sazi,cazi
      real * 8 dir(3)
      data dir/0d0,0d0,1d0/
      real * 8 random
      external random
      real*8 dbleradmom
      common/mc_dbleradmom/dbleradmom(0:3,nlegreal+1)
      
      azi=2d0*pi*random()
      sazi = sin(azi)
      cazi = cos(azi)

      do ileg=1, nlegreal+1
         call mrotate(dir,sazi,cazi,dbleradmom(1:3,ileg))
      enddo

      end
c-----added to rotate dblemom!!
