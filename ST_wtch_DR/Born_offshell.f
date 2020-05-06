
c     !: May2020: This is only a file needed to perform some checks on
c     the new implementation of the offshellness effects
      
c     !: Born.f should be very similar between DR and DS.
c     !: Differences should be confined in the decay
c     !: generation machinery.

c     !: Reshuffling procedure not implemented for Wt, therefore program
c     !: stops if this option is used.
c     !: See comments in put_on_mass_shell.

      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      integer nlegs
      parameter (nlegs=4)
      real * 8 p(0:3,nlegs),bornjk(nlegs,nlegs)
      integer bflav(nlegs)
      real * 8 bmunu(0:3,0:3,nlegs),bbmunu(0:3,0:3),born,colcf,tot(0:3)
      real *8 borntmp,dotp
      integer j,k,mu,nu

      integer bflav_loc(nlegs)

ccccccccccccccccccccccccccccccccccccccc
c     charge conjugation
c     If ttype=-1, then bflav has been filled with tbar-production flavours.
c     Subroutines here work for t-production flavour assignment.
c     Therefore, invert the sign of local flavours.
      do j=1,nlegs
         bflav_loc(j)= ttype *bflav(j)
      enddo
ccccccccccccccccccccccccccccccccccccccc

c$$$c     3 IS TOP, 4 IS W
c$$$      print*, "Born: ",sqrt(dotp(p(:,3),p(:,3))),sqrt(dotp(p(:,4),p(:,4)))
      tot=0d0
      do j=1,2
         tot(:)=tot(:)+p(:,j)
      enddo
      do j=3,4
         tot(:)=tot(:)-p(:,j)
      enddo
      if(dabs(tot(0)).gt.1d-6) then
         print*, 'TOT ',tot
      endif
      
      call compborn(p,bflav_loc(1:4),borntmp,bbmunu)
      born=borntmp
      do j=1,nlegborn
         if(abs(bflav(j)).le.6) then
            do mu=0,3
               do nu=0,3
                  bmunu(mu,nu,j)=0d0
               enddo
            enddo
            if(bflav(j).eq.0) then
c     leg is a gluon. Assign corresponding bmunu
               do mu=0,3
                  do nu=0,3
                     bmunu(mu,nu,j)=bbmunu(mu,nu)
                  enddo
               enddo
            endif

c Colour factors for colour-correlated Born amplitudes;
c Rule from 2.98 in FNO2007, leads to B_i j=B*(C_i+C_j-C_k)/2,
c where k#i,j
            do k=j+1,nlegborn
               if(abs(bflav(k)).le.6) then
                  if(bflav(j).ne.0.and.bflav(k).ne.0) then
                     colcf=(2.*cf-ca)/2.
                  else
                     colcf=ca/2.
                  endif
                  bornjk(j,k)=born*colcf
                  bornjk(k,j)=bornjk(j,k)
               endif
            enddo
         endif
      enddo
      end


      subroutine compborn(p,bflav,born,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_flst.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      integer nleg
      parameter (nleg=nlegborn)
      real * 8 p(0:3,4)
      integer bflav(4)
      real * 8 born,bmunu(0:3,0:3)
      integer i,j

cccccccccccccccccccccccccccccccc    
c     common bl. originally present in lh_readin, needed
c     by my_setpara
c
c     Common to lh_readin and printout
c
      double precision  alpha, gfermi, alfas
      double precision  mtMS,mbMS,mcMS,mtaMS!MSbar masses
      double precision  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb !CKM matrix elements
      common/values/    alpha,gfermi,alfas,   
     &                  mtMS,mbMS,mcMS,mtaMS,
     &                  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb
ccccccccccccccccccccccccccccccccc


cccccccccccccccccc
      integer mu,ileg
      real *8 kbcm(0:3,7)
      real *8 ewcoupl,s,t1,u1
      real *8 amp2_bg,amp2_gb
      real *8 dotp
      external dotp

      real *8 amp2_mad
cccccccccccccccc

      real *8 ktemp,kbcm_mad(0:3,7)
      integer ftemp,mflav(nleg)

      real *8 A0sq
      external A0sq

      logical ME_check
      parameter (ME_check=.false.)

      real *8 t,u,m2t,m2w,mttmp,mwtmp,tmp,tmp2,ckmtmp

      real *8 born_bmunu,amp2mad,wt,ptop(4),pWtop(4),pb(4) ,pl1top(4)
     $     ,pl2top(4),pW(4),pl1W(4),pl2W(4)

      
      external born_bmunu

c     check
      if ((abs(bflav(3)).ne.24).or.(abs(bflav(4)).ne.6)) then
         write(*,*) 'born_ampsq: ERROR in flavor assignement'
         call exit(1)
      endif

c     local copy of variables
      do ileg=1,nleg
         do mu=0,3
            kbcm(mu,ileg)=p(mu,ileg)
         enddo
      enddo
c     NOW kbcm CONTAINS 4 PARTICLES: 3(W) and 4(top) ARE OFFSHELL!
      
c     ew coupling
      ewcoupl=4d0*pi*alphaem_pow/sthw2_pow

      
c$$$ccccccccccccccccccccccccccccccccccccccccccc
c$$$c     >>> WT CHANNEL <<<
c$$$ccccccccccccccccccccccccccccccccccccccccccc

c     USING MADGRAPH SUBROUTINES
      do ileg=1,2
         mflav(ileg)=bflav(ileg)
         if(mflav(ileg).ne.0) mflav(ileg)=sign(1,mflav(ileg))
         do mu=0,3
            kbcm_mad(mu,ileg)=kbcm(mu,ileg)
         enddo
      enddo
c     to avoid bugs in HELAS, restore exact masslessness of incoming partons 
      kbcm_mad(0,1)=dabs(kbcm_mad(3,1))
      kbcm_mad(0,2)=dabs(kbcm_mad(3,2))
c     reassign here helas couplings and parameters that 
c     can change on an event-by-event basis
      alfas=st_alpha

      
c     mtMS=sqrt(dotp(kbcm_mad(0,4),kbcm_mad(0,4)))
c     tmass=mtMS
c     twidth=0d0
c     wwidth=0d0

      ptop(1:3)=kbcm(1:3,4)
      ptop(4)=kbcm(0,4)
c      print*,'MTOP ',sqrt(dotp(kbcm(:,4),kbcm(:,4)))
      call phi1_2(0.5d0,0.5d0,ptop,pWtop,pb,80d0,0d0,wt)   
      call phi3m0(0.5d0,0.5d0,pWtop,pl1top,pl2top,wt)
c     bepveemvex -> (b,l1,l2), (lW,lW)
      kbcm_mad(0,3)=pb(4)
      kbcm_mad(1:3,3)=pb(1:3)

      kbcm_mad(0,4)=pl1top(4)
      kbcm_mad(1:3,4)=pl1top(1:3)

      kbcm_mad(0,5)=pl2top(4)
      kbcm_mad(1:3,5)=pl2top(1:3)

c      print*, '--------------------------------'
c      print*, dotp(kbcm_mad(:,3),kbcm_mad(:,3))
c      print*, dotp(kbcm_mad(:,4),kbcm_mad(:,4))
c      print*, dotp(kbcm_mad(:,5),kbcm_mad(:,5))
c      print*,sqrt(pWtop(4)**2-pWtop(1)**2-pWtop(2)**2-pWtop(3)**2)

      pW(1:3)=kbcm(1:3,3)
      pW(4)=kbcm(0,3)
c      print*,'MW: ',sqrt(dotp(kbcm(:,3),kbcm(:,3)))
      call phi3m0(0.5d0,0.5d0,pW,pl1W,pl2W,wt)

      kbcm_mad(0,6)=pl1W(4)
      kbcm_mad(1:3,6)=pl1W(1:3)

      kbcm_mad(0,7)=pl2W(4)
      kbcm_mad(1:3,7)=pl2W(1:3)

c      print*, bflav(1:4)
      
      alfas=st_alpha
      mtMS=topmass_pow
      tmass=mtMS
      twidth=topwidth_pow
      wwidth=wwidth_pow
c      print*, twidth,wwidth,tmass,wmass
      call my_setpara

      
c     bg
      if(mflav(1).eq.1.and.mflav(2).eq.0) then
         call Sbg_bepveemvex(kbcm_mad,amp2mad)
c     gb
      elseif(mflav(1).eq.0.and.mflav(2).eq.1) then
         call Sgb_bepveemvex(kbcm_mad,amp2mad)
      else
         write(*,*) 'Error in Born offshell'
         call exit(1)
      endif

      born=amp2mad
c      print*, "   -->   ",born
c      stop
      end

ccccccccccccccccccccccccccccccccccc
            subroutine borncolour_lh
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      implicit none
      include 'LesHouches.h'
      include 'PhysPars.h'
      integer ileg,tmp
      integer tgcol,bgcol
      data tgcol/501/
      data bgcol/502/

c     There are 2 possible (equivalent) colour structures
c     for single-top Wt-channel Born processes.
c     ttype is needed to handle the charge-conjugated process

c     gb
      if(abs(idup(1)).gt.5) then
c     g ggggg          ==>== t
c            g        /
c             g      /
c              -->--W
c             /      W
c     b -->--/        WWWWWW W
         icolup(1,1)=tgcol
         icolup(2,1)=bgcol
         icolup(1,2)=bgcol
         icolup(2,2)=0
c     bg
      elseif(abs(idup(2)).gt.5) then
c     b -->--\          ==>== t
c             \        /
c              \      /
c              g-->--W
c             g       W
c     g gggggg         WWWWW W
         icolup(1,1)=bgcol
         icolup(2,1)=0
         icolup(1,2)=tgcol
         icolup(2,2)=bgcol
      else
         write(*,*) 'Error 1 in borncolor_lh'
         call exit(1)
      endif

c     final state
      do ileg=3,4
         if(abs(idup(ileg)).eq.24) then
            icolup(1,ileg)=0
            icolup(2,ileg)=0
         elseif(abs(idup(ileg)).eq.6) then
            icolup(1,ileg)=tgcol
            icolup(2,ileg)=0
         else
            write(*,*) 'Error 2 in borncolor_lh'
            call exit(1)
         endif
      enddo

c     if charge-conjugated process, exchange color
c     with anticolors
      if(ttype.lt.0) then
         do ileg=1,4
            tmp=icolup(1,ileg)
            icolup(1,ileg)=icolup(2,ileg)
            icolup(2,ileg)=tmp
         enddo
      endif

      end


      subroutine finalize_lh
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     Before that, call the routine that generates the decay.
c     Notice that the current subroutine is called at the end
c     of gen_leshouches (or gen_leshouches_reg). This means
c     that the overall azimuthal rotation has been already
c     performed (add_azimuth called in pwhgevent). 
      implicit none
      include 'nlegborn.h'
      include 'LesHouches.h'
      include 'PhysPars.h'
      integer tdecaymode
      integer mu,ileg
      real *8 klab_dec(0:3,nlegreal+5),klab_os(0:3,nlegreal+5)
      real *8 powheginput,dotp
      external powheginput,dotp
      logical check_momcons
      parameter (check_momcons=.true.)
      real *8 toten,totpx,totpy,totpz
      logical tdecayflag
      real *8 kt(0:3)
      integer chflag
      common/cchflag/chflag
      integer MC_mass
      real *8 mcmass(0:6)
      common/cmcmass/mcmass
      integer ini
      data ini/0/
      save ini
c     decay products
      integer decids(1:5)
      common/cdecids/decids
      integer nup_undec,iw,ie,ive
c     killev variables
      logical killev
      integer nkillev
      common/ckillev/nkillev,killev
c     to order momenta at the very end
      integer iduptmp(11),icoluptmp(2,11)
      real *8 pw_primary(4),pt(4),pj(4),pe_w(4),pv_w(4),pb_top(4)
     $     ,pw_top(4),pe_top(4),pv_top(4)
      end


      subroutine pickwdecay(iw1,mdecw1,iw2,mdecw2,iw3,mdecw3,iw4,mdecw4,
     $     totbr)
c     !: originally taken from POWHEG-hvq. Modified, but should be OK.
c     Finds which decays to choose with correct probability, according
c     to topdecaymode and wdecaymode. 
c     It returns always particle ids of W+ decay and the primary W- decay.

c     iw1, iw2 refer to the pdg ids of W+ decay products 1 and 2;
c     iw3, iw4 refer to the pdg ids of W- decay products 1 and 2;

c     by convention 1 is down type (e,mu,tau,d,s) and 2 is up type.

c     topdecaymode has to be an integer with 5 digits that are either 0 or 1
c     and they represent respectively the maximum number of the following particles
c     (antiparticles) in the top decay final state:
c     e  mu tau up charm
c     Relevant examples:
c     11111    All decays
c     leptonic:
c     10000    t->(b e ve) (with the appropriate signs)
c     11000    t->(b e ve) or t->(b mu vmu) (with the appropriate signs)
c     11100    fully leptonic
c     hadronic:
c     00010    t->(b u d) (with the appropriate signs)
c     00001    t->(b c s) (with the appropriate signs)
c     00011    fully hadronic

c     Same rules apply to wdecaymode.

      implicit none
      include 'PhysPars.h'
      integer iw1,iw2,iw3,iw4
      real * 8 mdecw1,mdecw2,mdecw3,mdecw4,totbr
c     local
      integer iwa(2)
      real * 8 prbs(1:5),totprbs(0:5),mass(16),sin2cabibbo,ebr,hbr,r,
     $     prbsw(1:5),totprbsw(0:5)
      integer ini,ii(5),j,k,imode,iwp(5,2),imodew,iiw(5),iwm(5,2)
      data ini/0/
c     pdg id's of the W+ decay products for e,mu,tau,up and charm decays (ignoring CKM)
      data ((iwp(j,k),k=1,2),j=1,5)/-11,12, -13,14, -15,16, -1,2, -3,4/
c     pdg id's of the W- decay products for e,mu,tau,up and charm decays (ignoring CKM)
      data ((iwm(j,k),k=1,2),j=1,5)/11,-12, 13,-14, 15,-16, 1,-2, 3,-4/

c     external
      real * 8 random,powheginput
      external random,powheginput
c     save
      save ini,totprbs,iwp,mass,sin2cabibbo,totprbsw,iwm
      if(ini.eq.2) return
      if(ini.eq.0) then
         ini=1
c     on first run look for decay mode in powheginput
         imode=powheginput('topdecaymode')
         if(imode.le.0) then
            write(*,*) 'Invalid value for tdecaymode, in pickwdecay'
            call exit(1)
         endif
c     on first run look for W decay mode in powheginput
         imodew=powheginput('wdecaymode')
         if(imodew.le.0) then
            write(*,*) 'Invalid value for wdecaymode, in pickwdecay'
            call exit(1)
         endif
c$$$         if(imode.eq.0) then
c$$$            ini=2
c$$$            return
c$$$         endif
         ii(1)=imode/10000
         imode=imode-ii(1)*10000
         ii(2)=imode/1000
         imode=imode-ii(2)*1000
         ii(3)=imode/100
         imode=imode-ii(3)*100
         ii(4)=imode/10
         imode=imode-ii(4)*10
         ii(5)=imode

         iiw(1)=imodew/10000
         imodew=imodew-iiw(1)*10000
         iiw(2)=imodew/1000
         imodew=imodew-iiw(2)*1000
         iiw(3)=imodew/100
         imodew=imodew-iiw(3)*100
         iiw(4)=imodew/10
         imodew=imodew-iiw(4)*10
         iiw(5)=imodew

c     load from input card the branching t->(b l vl) (only one lepton flavour)
         ebr=powheginput('tdec/elbranching')
c     from ebr calculates the hadronic branching t->(b u d)
         hbr=(1-3*ebr)/2
c     Probabilities for top decay
         do j=1,5
            if(ii(j).eq.0) then
               prbs(j)=0
            else
               if(j.le.3) then
                  prbs(j)=ebr
               else
                  prbs(j)=hbr
               endif
            endif
         enddo
c     now in prbs(j) there is the branching ratio assumed by the program for the
c     j-type decay. If prbs(j)=0, the corresponding decay channel will be closed.
         totprbs(0)=0d0
         do j=1,5
            totprbs(j)=prbs(j)+totprbs(j-1)
         enddo

c     Do the same for the branching of the primary W. Same
c     branching used.
         do j=1,5
            if(iiw(j).eq.0) then
               prbsw(j)=0
            else
               if(j.le.3) then
                  prbsw(j)=ebr
               else
                  prbsw(j)=hbr
               endif
            endif
         enddo
c     now in prbsw(j) there is the branching ratio assumed by the program for the
c     j-type decay. If prbsw(j)=0, the corresponding decay channel will be closed.
         totprbsw(0)=0d0
         do j=1,5
            totprbsw(j)=prbsw(j)+totprbsw(j-1)
         enddo

ccccccccccccccccccccccccccccccccccccccccc
         totbr=totprbs(5)*totprbsw(5)
ccccccccccccccccccccccccccccccccccccccccc

c     mass of decay products. For internal consistency, here one should use
c     the masses assumed by the shower. Leptonic W decay products masses have to be
c     assigned here. The 3 light quarks are assumed massless.
         mass(11)=powheginput('#tdec/emass')
         mass(13)=powheginput('#tdec/mumass')
         mass(15)=powheginput('#tdec/taumass')
         mass(12)=0
         mass(14)=0
         mass(16)=0
         mass(1)=0
         mass(2)=0
         mass(3)=0
c         mass(5)=powheginput('tdec/bmass')
         mass(5)=powheginput('#bottomthr')
         if (mass(5).lt.0d0) mass(5)=5.
c         mass(4)=powheginput('tdec/cmass')
         mass(4)=powheginput('#charmthr')
         if (mass(4).lt.0d0) mass(4)=1.5
         sin2cabibbo=(CKM_pow(1,2))**2
         if(iw1.eq.-1000) return
      endif
c     end initialization

ccccccccccccccccccccccccccccccccccccccccccccccccccc
c     choice for top decay mode (W from top decay)
ccccccccccccccccccccccccccccccccccccccccccccccccccc
      r=random()*totprbs(5)
      do j=1,5
         if(r.lt.totprbs(j)) goto 1
      enddo
 1    continue
c     now we have j decay mode
      if(j.gt.5) then
         write(*,*) 'Error 1 in pickwdecay, j',r,totprbs
         call exit(1)
      endif

c     W decay products
      iwa(1)=iwp(j,1)
      iwa(2)=iwp(j,2)
c     if any W decay product is down (or strange), it may turn to
c     strange (or down) with a probability sin^2 theta
      do j=1,2
         if(abs(iwa(j)).eq.1) then
            if(random().lt.sin2cabibbo) then
               iwa(j)=sign(3,iwa(j))
            endif
         elseif(abs(iwa(j)).eq.3) then
            if(random().lt.sin2cabibbo) then
               iwa(j)=sign(1,iwa(j))
            endif
         endif
      enddo
      iw1=iwa(1)
      iw2=iwa(2)
      mdecw1=mass(abs(iw1))
      mdecw2=mass(abs(iw2))

cccccccccccccccccccccccccccccccccccccc
c     choice for primary W decay mode
cccccccccccccccccccccccccccccccccccccc
      r=random()*totprbsw(5)
      do j=1,5
         if(r.lt.totprbsw(j)) goto 2
      enddo
 2    continue
c     now we have j decay mode
      if(j.gt.5) then
         write(*,*) 'Error 2 in pickwdecay, j',r,totprbsw
         call exit(1)
      endif

c     W decay products
      iwa(1)=iwm(j,1)
      iwa(2)=iwm(j,2)
c     if any W decay product is down (or strange), it may turn to
c     strange (or down) with a probability sin^2 theta
      do j=1,2
         if(abs(iwa(j)).eq.1) then
            if(random().lt.sin2cabibbo) then
               iwa(j)=sign(3,iwa(j))
            endif
         elseif(abs(iwa(j)).eq.3) then
            if(random().lt.sin2cabibbo) then
               iwa(j)=sign(1,iwa(j))
            endif
         endif
      enddo
      iw3=iwa(1)
      iw4=iwa(2)
      mdecw3=mass(abs(iw3))
      mdecw4=mass(abs(iw4))

      end



      function A0sq(s,t1,u1,m2t,m2w)
      implicit none
      real *8 A0sq
      real *8 s,t1,u1,m2t,m2w
      real *8 tmp

      tmp=-(s/u1+u1/s)*(1+m2t/2/m2w)
      tmp=tmp + 2*(1-m2t/2/m2w-m2t*m2t/2/m2w/m2w)*
     $     (m2w*(s+u1)*u1+m2t*m2w*s)/s/u1/u1
      tmp=tmp - (2-3*m2t/m2w+(m2t/m2w)**3)*m2w*m2w/s/u1
      tmp=tmp - m2t/m2w

      A0sq=16*3*(4./3.)*tmp
      return
      end
      

      subroutine phi1_2(x3,x4,p1,p2,p3,
     .     m2,m3,wt)
c     massive particle p1 decaying into p2 mass m2 and p3 mass m3.
c     with invariant mass 
c     of particle two s2 and particle three s3 integrated over.
c     vectors returned p2 and p3 are in the same frame as p1 is supplied
c     Expression evaluate is 
c     d^4 p2/(2 pi)^4   d^4 p3 /(2 pi)^4  (2 pi)^4 delta(p1-p2-p3)
c     (2 pi) delta(p2^2-m2^2) (2 pi) delta(p3^2-m3^2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      double precision p1(4),p2(4),p3(4),p3cm(4)
      double precision x3,x4,costh,sinth,phi,cphi,sphi
      double precision wt,wt0
      double precision one,two
      double precision m1,s1,s2,s3,lambda,m2,m3
      integer j
      parameter(wt0=1d0/8d0/pi)
      parameter(one=1d0)
      parameter(two=2d0)

      s1=p1(4)**2-p1(1)**2-p1(2)**2-p1(3)**2  
      if (s1 .lt. 0d0) stop 'phi1_2: s1 < 0 ' 
      m1=dsqrt(s1)

c     The following should never happen
c      if(m1.lt.m2+m3) then 
c         write(*,*) 'p1', p1 
c         write(*,*) 'm1,m2,m3', m1, m2, m3
c         write(*,*) 'phi1_2: m1 < m2+m3 ?'  
c         call exit(-1)
c      endif

      costh=two*x3-one      
      phi=two*pi*x4
      sinth=dsqrt(one-costh**2)
      cphi=dcos(phi)
      sphi=dsin(phi)
      s2=m2**2
      s3=m3**2
      lambda=((s1-s2-s3)**2-4d0*s2*s3)
      if (lambda .lt. 0d0) then 
         if(lambda/s1**2.gt.-1d-6) then
            lambda = 0
         else
            write(*,*) lambda,sqrt(s1),sqrt(s2),sqrt(s3)
            stop 'phi1_2: lambda < 0 ?' 
         endif
      endif
      lambda=dsqrt(lambda)
      wt=wt0*lambda/s1

      p3cm(4)=m1/two*(s1+s3-s2)/s1
      p3cm(1)=m1/two*lambda/s1*sinth*sphi
      p3cm(2)=m1/two*lambda/s1*sinth*cphi
      p3cm(3)=m1/two*lambda/s1*costh
      call boost_loc(m1,p1,p3cm,p3)
      do j=1,4
      p2(j)=p1(j)-p3(j)
      enddo

!      s34=p2(4)**2-p2(1)**2-p2(2)**2-p2(3)**2  
!      s56=p3(4)**2-p3(1)**2-p3(2)**2-p3(3)**2  
!      if (s34 .lt. 0d0) then
!         write(*,*)'s34 is lt zero in phi12',s34,x1,x2,x3,x4
!      elseif (s56 .lt. 0d0) then
!         write(*,*)'s56 is lt zero,in phi12',s56,x1,x2,x3,x4
!      endif
c      if (  (p1(4) .lt. 0d0) 
c     & .or. (p2(4) .lt. 0d0) 
c     & .or. (p3(4) .lt. 0d0)) then
c         write(*,*) 'phi1_2: one of E1,E2,E3 < 0'
c         call exit(-1)
c      endif

      end

      subroutine phi3m0(xth,xphi,p0,p1,p2,wt)
c     massive particle p0 in rest frame 
c     decaying into p1 fixed mass 0 and p2 fixed mass 0.
c     vectors returned p1 and p2 are in the frame in which 
C     p0 is supplied
c result is 1/8/pi * 2|p|/sqrts  * domega/(4*pi)
c     factor of (2*pi)^4 included in definition of phase space
c     Expression evaluated is 
c     d^4 p1 d^4 p2 (2 pi)^4 delta(p0-p1-p2)/(2 pi)^6
c     delta(p2^2) delta(p3^2)
      implicit none
      include 'pwhg_math.h'
      double precision p0(4),p1(4),p2(4),p1cm(4)
      double precision xth,xphi,phi,s,roots,costh,sinth
      double precision wt0,wt
      integer j
      parameter(wt0=1d0/8d0/pi)
      wt=0d0

      s=p0(4)**2-p0(1)**2-p0(2)**2-p0(3)**2  
c      if (s .lt. 0d0) then
c       write(*,*)'phi3m0: s < 0' ,s
C       wt=0d0
c       write(*,*) 'phi3m0: s < 0'
c       call exit(-1)
c         s=0
c      endif

      roots=dsqrt(abs(s))
      costh=2d0*xth-1d0    
      sinth=dsqrt(1d0-costh**2)
      phi=2d0*pi*xphi

      wt=wt0

      p1cm(4)=roots/2d0
      p1cm(1)=roots/2d0*sinth*dsin(phi)
      p1cm(2)=roots/2d0*sinth*dcos(phi)
      p1cm(3)=roots/2d0*costh

      call boost_loc(roots,p0,p1cm,p1)
      do j=1,4
      p2(j)=p0(j)-p1(j)
      enddo

      if (  (p0(4) .lt. 0d0) 
     & .or. (p1(4) .lt. 0d0) 
     & .or. (p2(4) .lt. 0d0)) then  
      write(6,*) 'p0',p0(4),p0(4)**2-p0(1)**2-p0(2)**2-p0(3)**2,s
      write(6,*) 'p1',p1(4),p1(4)**2-p1(1)**2-p1(2)**2-p1(3)**2
      write(6,*) 'p2',p2(4),p2(4)**2-p2(1)**2-p2(2)**2-p2(3)**2
      write(6,*) 'in phi3m0'
      endif

      end



      subroutine boost_loc(mass,p1,p_in,p_out)
c     take momenta p_in in frame in which one particle is at rest with mass "mass" 
c     and convert to frame in which the one particle has fourvector p1
      implicit none
      double precision mass,p1(4),p_in(4),p_out(4)
      double precision gam,beta(1:3),bdotp,one
      parameter(one=1d0)
      integer j,k
      gam=p1(4)/mass
      bdotp=0d0
      do j=1,3
      beta(j)=-p1(j)/p1(4)
      bdotp=bdotp+p_in(j)*beta(j)
      enddo
      p_out(4)=gam*(p_in(4)-bdotp)
      do k=1,3
      p_out(k)=p_in(k)+gam*beta(k)*(gam/(gam+one)*bdotp-p_in(4))
      enddo
      return
      end      
      
