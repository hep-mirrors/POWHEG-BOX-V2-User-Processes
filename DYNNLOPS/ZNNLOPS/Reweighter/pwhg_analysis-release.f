      subroutine init_hist(nmulti)
      implicit none
c      include 'pwhg_book.h'
      real*8  dyh,dpth,dHT,dptj1,pi!,dy,dpt,dptzm,dptzmzm
      integer nmulti
c      call inihists
      call pwhginimultihist(nmulti)
cccccccccccccccccccccccccccccccccccccccccccccccccc
c     HNNLO-like plots
c     Plots as those produced with HNNLO, using
c     the HNNLO kt-algo.
cccccccccccccccccccccccccccccccccccccccccccccccccc
C - Set bin widths
      dyh=0.1d0
      dpth=3d0
      dHT=5d0
      dptj1=3d0
      pi=3.14159265358979d0

      call pwhgbookup3(1,'yz-theta-mz','lin',0.4d0,-5d0,5d0
     $     ,pi/25d0,0d0,pi
     $     ,pi/25d0,-pi/2d0,pi/2d0)
      call pwhgbookup3(2,'yz-theta-mz-ptj1-3','lin',0.4d0,-5d0,5d0
     $     ,pi/25d0,0d0,pi
     $     ,pi/25d0,-pi/2d0,pi/2d0)
      call pwhgbookup3(3,'yz-theta_l-mz','lin',0.4d0,-5d0,5d0
     $     ,pi/25d0,0d0,pi
     $     ,pi/25d0,-pi/2d0,pi/2d0)
      call pwhgbookup3(4,'yz-theta_l-mz-ptj1-3','lin',0.4d0,-5d0,5d0
     $     ,pi/25d0,0d0,pi
     $     ,pi/25d0,-pi/2d0,pi/2d0)
      call pwhgbookup3(5,'yz-theta_t-mz','lin',0.4d0,-5d0,5d0
     $     ,pi/25d0,0d0,pi
     $     ,pi/25d0,-pi/2d0,pi/2d0)
      call pwhgbookup3(6,'yz-theta_t-mz-ptj1-3','lin',0.4d0,-5d0,5d0
     $     ,pi/25d0,0d0,pi
     $     ,pi/25d0,-pi/2d0,pi/2d0)
      end

     
      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'pwhg_weights.h'
c      include 'pwhg_book.h'
c     allow multiweights 
      real * 8 dsig0,dsig(1:weights_max)
c     tell to the analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'LHE   '/
c     Initialisation indicator (for new hisogramming setup)
      logical ini
      data ini/.true./
      save ini

ccccccccccccccccccccccccc
c     HNNLO-like plots
ccccccccccccccccccccccccc
C - Maximum number of particles to send to jet finder: 
      include  'mxpart.f'
C - Higgs kinematics
      real*8  zmass,theta,theta_t,theta_l,zwidth
      common/zmass/zmass,zwidth
      real*8  pz(4),yz,etaz,ptz,mz,p_ele(4),p_boosted(4),boost(4)
C - Jet radius: 
      real*8  Rmin !:
      common/Rmin/Rmin
C - HNNLO jet finding:
      real*8  p(bigmxpart,4)
      real*8  HT,ptj1,ptj2
      real*8  damping_vec,x !:
C - Auxiliary counters:
      integer ixx,njets

ccccccccccccccccccccccccccc
c     Cross-check plots for jets, using FastJet
ccccccccccccccccccccccccccc
      integer maxjet
      parameter (maxjet=2048)
      real *8 palg,rr,ptmin
      real *8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1    phij(maxjet),pj(4,maxjet),ptrel(4)
      integer mjets
c      zmass= 91.188d0
c      print*, 'entered analysis'
      if (ini) then
         if(zmass.le.0d0) then
            write(*,*) 'pwhg_analysis-release.f:'
            write(*,*) 'zmass = ',zmass
            write(*,*) 'Have not got acceptable Z mass'
            stop
         endif
         write(*,*) '*****************************'
         if(WHCPRG.ne.'LHE   ') then
            write(*,*) 'pwhg_analysis-release has to be'
            write(*,*) 'used only at the LHE file level.'
            write(*,*) 'Quitting ...'
            stop
         else
            write(*,*) '       LHE ANALYSIS'
         endif
         write(*,'(a,f10.5)') 
     C        ' pwhg_analysis: Z mass (zmass) value: ', zmass
         write(*,'(a,f6.4)') 
     C        ' pwhg_analysis: Using kt-algo with R = ',Rmin
         write(*,*) '*****************************'
         if(weights_num.eq.0) then
c            call setupmulti(1)
         else
c            call setupmulti(weights_num)
         endif
         ini=.false.
      endif

      dsig(:)=0d0
      if(weights_num.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
      endif
      if(sum(abs(dsig)).eq.0) return
c      print*, dsig(1:weights_num)
c      stop
cccccccccccccccccccccc
c     DYNNLO-like plots
cccccccccccccccccccccc
c     Settings in jet_finder.f: ptjetmin,etajetmin,etajetmax,ptbjetmin,etabjetmax

C     find jets 
      call find_jets(Rmin,p,njets) ! p are output jet momenta 

C     find the Z
      do ixx=1,nhep
         if(idhep(ixx).eq.23) then
            pz=phep(1:4,ixx)
            cycle
         endif
      enddo
      do ixx=1,nhep
         if(idhep(ixx).eq.11
     $        .or.idhep(ixx).eq.13) then
            p_ele=phep(1:4,ixx)
            cycle
         endif
      enddo
    
C     get Z kinematics
      call getyetaptmass(pz,yz,etaz,ptz,mz)
      HT=sqrt(ptz*ptz+mz*mz)

      call get_ptj1j2(p,ptj1,ptj2)
      HT=HT+ptj1+ptj2
      theta=p_ele(3)
     $     /sqrt(p_ele(1)*p_ele(1)+p_ele(2)*p_ele(2)+p_ele(3)*p_ele(3))
      theta=acos(theta)
      boost=0d0
      boost(3)=pz(3)
      boost(4)=pz(4)
      call lab_to_CM(boost,p_ele,p_boosted)
      theta_l=p_boosted(3)
     $     /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $     p_boosted(3)*p_boosted(3))
      theta_l=acos(theta_l)
      boost=0d0
      boost(1)=pz(1)
      boost(2)=pz(2)
      boost(4)=pz(4)
      call lab_to_CM(boost,p_ele,p_boosted)
      theta_t=p_boosted(3)
     $     /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $     p_boosted(3)*p_boosted(3))
      theta_t=acos(theta_t)

c     x=atan((mz**2-zmass**2)/(2d0*zmass*zwidth)) !!WRONG!!
      x=atan((mz**2-zmass**2)/(zmass*zwidth))

C     compute damping and fill histograms 
      call get_zdamp(ptj1,damping_vec)
      call pwhgfill3(1,yz,theta,x,dsig)
      call pwhgfill3(2,yz,theta,x,damping_vec*dsig)
      call pwhgfill3(3,yz,theta_l,x,dsig)
      call pwhgfill3(4,yz,theta_l,x,damping_vec*dsig)
      call pwhgfill3(5,yz,theta_t,x,dsig)
      call pwhgfill3(6,yz,theta_t,x,damping_vec*dsig)
      call pwhgaccumup3
cccccccccccccccccccccccccccccc
c     find jets with FastJet
cccccccccccccccccccccccccccccc
c     palg: -1=antikt, +1=kt
      palg=1
      rr=0.7d0
      ptmin=0d0 !:
      mjets=0
      ktj(:)=0
      etaj(:)=0
      rapj(:)=0
      call buildjetspalg(1,palg,rr,ptmin,mjets,ktj,etaj,rapj,phij,
     $     ptrel,pj)
c      print*, 'good event'
      if(mjets.lt.1) then
         write(*,*) '>>> EVENT WITH NO JETS: ',ktj(:5)
         write(*,*) 'It cannot happen from HJ-MiNLO'
         stop
      endif
c      print*, ktj(1:2)

ccccccccccccccccccccccccccccccccccccccccccccccccc
c     Cross-check plots for jets, using FastJet
ccccccccccccccccccccccccccccccccccccccccccccccccc
c      call filld('ptj1_check',ktj(1),dsig)
c      call filld('ptj2_check',ktj(2),dsig)

      end
      

      subroutine buildjetspalg(iflag,palg,rr,ptmin,mjets,kt,eta,rap,phi,
     $     ptrel,pjet)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
      integer iflag,mjets
      real * 8  rr,ptmin,kt(*),eta(*),rap(*),
     1     phi(*),ptrel(3),pjet(4,*)
      include   'hepevt.h'
      include  'LesHouches.h'
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      real * 8  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,i,x
      real * 8 r,palg,tmp
      logical islept
      external islept
      real * 8 vec(3),pjetin(0:3),pjetout(0:3),beta,
     $     ptrackin(0:3),ptrackout(0:3)
      real * 8 get_ptrel
      external get_ptrel
C - Initialize arrays and counters for output jets
      do j=1,maxtrack
         do mu=1,4
            ptrack(mu,j)=0d0
         enddo
         jetvec(j)=0
      enddo      
      ntracks=0
      do j=1,maxjet
         do mu=1,4
            pjet(mu,j)=0d0
            pj(mu,j)=0d0
         enddo
      enddo
      if(iflag.eq.1) then
C     - Extract final state particles to feed to jet finder
         do j=1,nhep
c all but the Higgs
            if (isthep(j).eq.1.and.(
     $           .not.idhep(j).eq.23.and..not.abs(idhep(j)).eq.11)) then
               if(ntracks.eq.maxtrack) then
                  write(*,*) 'analyze: need to increase maxtrack!'
                  write(*,*) 'ntracks: ',ntracks
                  stop
               endif
               ntracks=ntracks+1
               do mu=1,4
                  ptrack(mu,ntracks)=phep(mu,j)
               enddo
               itrackhep(ntracks)=j
            endif
         enddo
      else
         do j=1,nup
            if (istup(j).eq.1.and..not.islept(idup(j))) then
               if(ntracks.eq.maxtrack) then
                  write(*,*) 'analyze: need to increase maxtrack!'
                  write(*,*) 'ntracks: ',ntracks
                  stop
               endif
               ntracks=ntracks+1
               do mu=1,4
                  ptrack(mu,ntracks)=pup(mu,j)
               enddo
               itrackhep(ntracks)=j
            endif
         enddo
      endif
      if (ntracks.eq.0) then
         mjets=0
         return
      endif
C --------------------------------------------------------------------- C
C     R = 0.7   radius parameter
c palg=1 is standard kt, -1 is antikt
c      palg=1 !:
      r=rr
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets)
      mjets=njets
      if(njets.eq.0) return
c check consistency
c      do k=1,ntracks
c         if(jetvec(k).gt.0) then
c            do mu=1,4
c               pj(mu,jetvec(k))=pj(mu,jetvec(k))+ptrack(mu,k)
c            enddo
c         endif
c         print*, 'FJ: track ',k, 'is in jet ',jetvec(k)
c      enddo
c      tmp=0
c      do j=1,mjets
c         do mu=1,4
c            tmp=tmp+abs(pj(mu,j)-pjet(mu,j))
c         enddo
c      enddo
c      if(tmp.gt.1d-4) then
c         write(*,*) ' bug!'
c      endif
C --------------------------------------------------------------------- C
C - Computing arrays of useful kinematics quantities for hardest jets - C
C --------------------------------------------------------------------- C
      do j=1,mjets
         call getyetaptmass(pjet(:,j),rap(j),eta(j),kt(j),tmp)
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo

c     loop over the hardest 3 jets
c      do j=1,min(njets,3)
c         do mu=1,3
c            pjetin(mu) = pjet(mu,j)
c         enddo
c         pjetin(0) = pjet(4,j)         
c         vec(1)=0d0
c         vec(2)=0d0
c         vec(3)=1d0
c         beta = -pjet(3,j)/pjet(4,j)
c         call mboost(1,vec,beta,pjetin,pjetout)         
cc     write(*,*) pjetout
c        ptrel(j) = 0
c        do i=1,ntracks
c            if (jetvec(i).eq.j) then
c               do mu=1,3
c                  ptrackin(mu) = ptrack(mu,i)
c               enddo
c               ptrackin(0) = ptrack(4,i)
c               call mboost(1,vec,beta,ptrackin,ptrackout) 
c               ptrel(j) = ptrel(j) + get_ptrel(ptrackout,pjetout)
c            endif
c         enddo
c      enddo
      end
