ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c some additional routines
ccccccccccccccccccccccccccccccccccccccccccccc
c routines from WW-analysis
      subroutine getyetaptphi(p,y,eta,pt,phi)
      implicit none
      include 'pwhg_math.h'
      real * 8 p(*),y,eta,pt,pv,phi
	real*8 x
      x=p(3)/p(4)
      if (x.ge.1d0.or.x.le.-1d0) then
        y=sign(1d0,x)*1d10
      else
        y=0.5*log((1+x)/(1-x))
	endif
      pt=sqrt(p(1)**2+p(2)**2)
      pv=sqrt(pt**2+p(3)**2)
      if(pv-abs(p(3)).lt.1d-13) then
        eta=1d10
      else
        eta=0.5d0*log((pv+p(3))/(pv-p(3)))
      endif
      phi = atan(p(2)/p(1))
      if(p(1).lt.0d0) then
         if(phi.gt.0d0) then
             phi=phi-pi
         else
              phi=phi+pi
         endif
      endif
      end
ccccccccccccccccc
      real*8 function getinvmass(p1,p2)
      implicit none
      real*8 p1(1:4),p2(1:4),psum(1:4),temp
      integer i
      do i=1,4
	psum(i)=p1(i)+p2(i)
      enddo
      temp=psum(4)**2-(psum(1)**2+psum(2)**2+psum(3)**2)
      getinvmass=sign(1.d0,temp)*dsqrt(abs(temp))
      end
cccccccccccccccccccccccccccccc
      real*8 function etafrom2p(p1,p2)
      implicit none
      real*8 p1(1:4),p2(1:4),psum(1:4),absp
      integer i
      do i=1,4
        psum(i)=p1(i)+p2(i)
      enddo
      absp=dsqrt(psum(1)**2+psum(2)**2+psum(3)**2)
      if(absp-abs(psum(3)).lt.1d-13) then
        etafrom2p=1d10
      else
        etafrom2p=0.5d0*log((psum(3)+absp)/(absp-psum(3)))
      endif
      end
cccccccccccccccccccccccccccccc
      real*8 function yfrom2p(p1,p2)
      implicit none
      real*8 p1(1:4),p2(1:4),psum(1:4),x
      integer i

      do i=1,4
        psum(i)=p1(i)+p2(i)
      enddo

      x=psum(3)/psum(4)
      if (x.ge.1d0.or.x.le.-1d0) then
        yfrom2p=sign(1d0,x)*1d10
      else
        yfrom2p=0.5*log((1+x)/(1-x))
	endif

      end
cccccccccccccccccccccccccccccc
      real*8 function ptfrom2p(p1,p2)
      implicit none
      real*8 p1(1:4),p2(1:4),psum(1:4)
      integer i
      do i=1,4
        psum(i)=p1(i)+p2(i)
      enddo
      ptfrom2p=dsqrt(psum(1)**2+psum(2)**2)
      end

	real*8 function phi(p)
      implicit none
	include 'pwhg_math.h'
      real * 8 p(3),azi
      azi = atan(p(2)/p(1))
      if (p(1).lt.0d0) then
         if (azi.gt.0d0) then
            azi = azi - pi
         else
            azi = azi + pi
         endif
      endif
      end

cccccccccccccccccccccccccccccccccccccccccccccccccccc
c     compute delta_phi between two momenta p1,p2
      real*8 function getdeltaphi(p1,p2)
      implicit none
	include 'pwhg_math.h'
      real*8 p1(4),p2(4)
      real*8 phi1, phi2,deltaphi
	real*8 phi
	phi1=phi(p1)
	phi2=phi(p2)
      deltaphi = abs(phi1-phi2)
      if (deltaphi.gt.pi) then
         deltaphi = 2d0*pi-deltaphi
      endif
      if (deltaphi.lt.0 .or. deltaphi.gt.pi) then
         write(*,*) 'Probelm in deltaphi'
	   write(*,*) 'delphi',deltaphi
      endif
	getdeltaphi=deltaphi
      end

c the routine to "build" jets via calls to Fastjet
      subroutine buildjets(mjets,mpseudojets,rr,jetalgo,kt,eta,rap,phi,m_j1j2,eta_j1j2,pjet,ptmin)
c     arrays to reconstruct jets, radius parameter rr
      implicit none

      integer mjets,mpseudojets !mpseudojets is the initial length of pjet!
      real * 8  rr,kt(*),eta(*),rap(*),
     1     phi(*),pjet(4,*),m_j1j2,eta_j1j2
      include  'hepevt.h'
      include  'LesHouches.h'
      include  'nlegborn.h'
      integer   maxtrack,maxjet
      parameter (maxtrack=50,maxjet=50)
      real*8    ptrack(4,maxtrack),pjtemp(4,maxjet)
      real*8    etatemp(maxjet),raptemp(maxjet),phitemp(maxjet),kttemp(maxjet)
      integer   jetvec(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,jb
      real*8    r,palg,jetalgo,ptmin
      logical  issquark
      external issquark
      real*8 getinvmass,etafrom2p
      external getinvmass,etafrom2p
      real*8 ptjcut(1:9),ptjmincut,etajcut
      common/pwganajetcuts/ptjcut,ptjmincut,etajcut
C - Initialize arrays and counters for output jets
      do j=1,maxtrack
         do mu=1,4
            ptrack(mu,j)=0d0
         enddo
         jetvec(j)=0
      enddo      
      ntracks=0
c use some temp-arrays, will check them for cuts after fastjet-call
      do j=1,maxjet
         do mu=1,4
            pjtemp(mu,j)=0d0
         enddo
         kttemp(j)=0d0
         etatemp(j)=0d0
         raptemp(j)=0d0
         phitemp(j)=0d0
      enddo
      
	do j=1,mpseudojets
	  ntracks=ntracks+1
        if(ntracks.eq.maxtrack) then
          write(*,*) 'analyze: need to increase maxtrack!'
          write(*,*) 'ntracks: ',ntracks
          stop
        endif
	  do mu=1,4
          ptrack(mu,ntracks)=pjet(mu,j)
        enddo
	enddo

      if (ntracks.eq.0) then
         mjets=0
         return
      endif

	palg=jetalgo
	r=rr

      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjtemp,njets,
     &                        jetvec)
      mjets=0 !this is a counter-> see jet-cuts-part in routine
      if(njets.eq.0) return

C --------------------------------------------------------------------- C
C - Computing arrays of useful kinematics quantities for hardest jets - C
C --------------------------------------------------------------------- C
      do j=1,njets
	 call getyetaptphi(pjtemp(1:4,j),raptemp(j),etatemp(j),kttemp(j),phitemp(j))
      enddo

C --------------------------------------------------------------------- C
C - Directly apply some jet-cuts
C --------------------------------------------------------------------- C
c simply loop over all jets obtained by fastjet, check if every single jet passes the
c jet cuts, if so: fill into pjet and increase the jetcounter, otherwise simply continue
      do j=1,njets
c use here ptjcut(mjets+1), the current "number" of the possible jet under consideration
	 if(kttemp(j).ge.ptjmincut.and.abs(etatemp(j)).le.etajcut.and.kttemp(j).ge.ptjcut(mjets+1)) then
c copy the jet, as it is accepted
         mjets=mjets+1
         kt(mjets)=kttemp(j)
         eta(mjets)=etatemp(j)
         rap(mjets)=raptemp(j)
         phi(mjets)=phitemp(j)
         do k=1,4
           pjet(k,mjets)=pjtemp(k,j)
         enddo  
	endif
      enddo    

      do j=njets+1,maxjet
          do k=1,4
           pjet(k,j)=0d0
         enddo  
      enddo
        m_j1j2=getinvmass(pjet(1:4,1),pjet(1:4,2)) !invmass of 2 hardest jets
        eta_j1j2=etafrom2p(pjet(1:4,1),pjet(1:4,2))
      end

C copy sort-routine from WW-example (for jets: an ordering-routine is already implemented in FastJet!)
      subroutine sortbypt(n,p)!iarr)
      implicit none
      integer n
      integer j,k
	real*8 p(1:4,n)
      real * 8 tmp,pt(n)
      logical touched
      do j=1,n
         pt(j)=sqrt(p(1,j)**2+p(2,j)**2)
      enddo
c bubble sort
      touched=.true.
      do while(touched)
         touched=.false.
         do j=1,n-1
            if(pt(j).lt.pt(j+1)) then
		   do k=1,4
		     tmp=p(k,j)
		     p(k,j)=p(k,j+1)
		     p(k,j+1)=tmp
	         enddo
!                k=iarr(j)
!                iarr(j)=iarr(j+1)
!                iarr(j+1)=k
               tmp=pt(j)
               pt(j)=pt(j+1)
               pt(j+1)=tmp
               touched=.true.
            endif
         enddo
      enddo
      end

      function issquark(j) !works for antisquarks as well!
      implicit none
	include 'pwhg_math.h'
      logical issquark
      integer j
      if(abs(j).ge.pdgfac.and.mod(abs(j),pdgfac).le.6) then
         issquark = .true.
      else
         issquark = .false.
      endif
      end
