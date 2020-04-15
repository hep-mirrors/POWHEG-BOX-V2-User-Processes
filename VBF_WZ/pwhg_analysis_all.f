c this subroutine calls right analysis routines, depending on decay mode
c (four charged leptons, 2 leptons+2neutrinos, or semi leptonic)

      subroutine init_hist
      implicit none
      include 'cvecbos.h'
      logical :: first = .true. 
      save first 
      real *8 powheginput 
      external powheginput
      integer fat_jet, higgs_analysis
      save fat_jet, higgs_analysis

      if (first) then 
c     decay products of the two vector bosons
         vdecaymodeW=powheginput('vdecaymodeW')
         vdecaymodeZ=powheginput('vdecaymodeZ')
         
c     identify decay mode (default is fully lept.):
         decmode_lep = .true.
         decmode_lnu = .false.
         decmode_slp = .false.
c     default are fully lept. decays:
         if (abs(vdecaymodeW).eq.11.or. ! W decays leptonically
     &       abs(vdecaymodeW).eq.13) then 
            if (abs(vdecaymodeZ).eq.11.or.
     &          abs(vdecaymodeZ).eq.13) then ! Z -> ll
               decmode_lep = .true.
               decmode_lnu = .false.
               decmode_slp = .false.
            elseif (abs(vdecaymodeZ).eq.12.or.
     &              abs(vdecaymodeZ).eq.14) then ! Z -> vv
               decmode_slp = .false.
               decmode_lnu = .true.
               decmode_lep = .false.
            elseif (abs(vdecaymodeZ).lt.11) then ! Z -> hadrons
               decmode_slp = .true.
               decmode_lnu = .false.
               decmode_lep = .false.
            else
               stop 'unsupported decay mode' 
            endif
         else  
            stop 'unsupported decay mode'  
         endif   
         
         if (decmode_lep) then
            write(*,*) 'Calling analysis_lep' 
         elseif (decmode_slp) then
      	    write(*,*) 'Calling analysis_slp'
         elseif (decmode_lnu) then
            write(*,*) 'Calling analysis_lnu'
         else
            stop 'deacy mode not set correctly in analysis'
         endif   
         
         first = .false. 
      endif                     !first

      if (decmode_slp) then
      	stop 'Not implemented yet'
      elseif (decmode_lnu) then
	stop 'Not implemented yet'
      else
         call init_hist_lep
      endif   
      
      end


      subroutine analysis(dsig0)
      implicit none
      real * 8 dsig0
      include 'cvecbos.h'
      logical :: first = .true. 
      save first 
      real *8 powheginput 
      external powheginput
      integer fat_jet, higgs_analysis
      save fat_jet, higgs_analysis

      if((dsig0+1d0).eq.dsig0) then !Tests for NaN, inf and -inf
         print*, 'dsig0 equals ', dsig0
         return
      endif
      if (first) then 
c     decay products of the two vector bosons
         vdecaymodeW=powheginput('vdecaymodeW')
         vdecaymodeZ=powheginput('vdecaymodeZ')
         
c     identify decay mode (default is fully lept.):
         decmode_lep = .true.
         decmode_lnu = .false.
         decmode_slp = .false.
c     default are fully lept. decays:
         if (abs(vdecaymodeW).eq.11.or.
     &       abs(vdecaymodeW).eq.13) then ! W decays leptonically
            if (abs(vdecaymodeZ).eq.11.or.
     &          abs(vdecaymodeZ).eq.13) then ! Z -> ll
               decmode_lep = .true.
               decmode_lnu = .false.
               decmode_slp = .false.
            elseif (abs(vdecaymodeZ).eq.12.or.
     &              abs(vdecaymodeZ).eq.14) then ! Z -> vv
               decmode_slp = .false.
               decmode_lnu = .true.
               decmode_lep = .false.
            elseif (abs(vdecaymodeZ).lt.11) then ! Z -> hadrons
               decmode_slp = .true.
               decmode_lnu = .false.
               decmode_lep = .false.
            else
               stop 'unsupported decay mode' 
            endif
         else  
            stop 'unsupported decay mode'  
         endif   
         
         if (decmode_lep) then
            write(*,*) 'Calling analysis_lep' 
         elseif (decmode_slp) then
	            write(*,*) 'Calling analysis_slp'
         elseif (decmode_lnu) then
            write(*,*) 'Calling analysis_lnu'
         else
            stop 'deacy mode not set correctly in analysis'
         endif   
         
         first = .false. 
      endif                     !first

      if (decmode_slp) then
      	stop 'Not implemented yet'
      elseif (decmode_lnu) then
      	stop 'Not implemented yet'
      else
         call analysis_lep(dsig0)
      endif   
      
      end
      
      subroutine deltaplot(p1,p2,dsig,prefix,postfix)
      implicit none
      real * 8 p1(4),p2(4),dsig
      character *(*) prefix,postfix
      real * 8 dy,deta,delphi,dr
      call getdydetadphidr(p1,p2,dy,deta,delphi,dr)
      call filld(prefix//'-dy'//postfix,dy,dsig)
      call filld(prefix//'-deta'//postfix,deta,dsig)
      call filld(prefix//'-delphi'//postfix,delphi,dsig)
      call filld(prefix//'-dr'//postfix,dr,dsig)
      end


      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      real * 8 p(4),y,eta,pt,mass,pv
      real *8 tiny
      parameter (tiny=1.d-5)
      y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      pt=sqrt(p(1)**2+p(2)**2)
      pv=sqrt(pt**2+p(3)**2)
      if(pt.lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      else
         eta=0.5d0*log((pv+p(3))/(pv-p(3)))
      endif
      mass=sqrt(abs(p(4)**2-pv**2))
      end

      subroutine getdydetadphidr(p1,p2,dy,deta,dphi,dr)
      implicit none
      include 'pwhg_math.h' 
      real * 8 p1(*),p2(*),dy,deta,dphi,dr
      real * 8 y1,eta1,pt1,mass1,phi1
      real * 8 y2,eta2,pt2,mass2,phi2
      call getyetaptmass(p1,y1,eta1,pt1,mass1)
      call getyetaptmass(p2,y2,eta2,pt2,mass2)
      dy=y1-y2
      deta=eta1-eta2
      phi1=atan2(p1(1),p1(2))
      phi2=atan2(p2(1),p2(2))
      dphi=abs(phi1-phi2)
      dphi=min(dphi,2d0*pi-dphi)
      dr=sqrt(dy**2+dphi**2)
      end


      subroutine buildjets(iflag,rr,ptmin,mjets,kt,eta,rap,phi,
     $     ptrel,pjet,yijs)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
      integer iflag,mjets
      real * 8  rr,ptmin,kt(*),eta(*),rap(*),
     1     phi(*),ptrel(3),pjet(4,*)
      include   'hepevt.h'
      include  'LesHouches.h'
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      real * 8  ptrack(4,maxtrack),pj(4,maxjet),pjet_in(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,jb,i
      real * 8 r,palg,pp,tmp
      logical islept
      external islept
      logical comesfromid,comesfrom
      external comesfromid,comesfrom
      real * 8 vec(3),pjetin(0:3),pjetout(0:3),beta,
     $     ptrackin(0:3),ptrackout(0:3)
      real * 8 get_ptrel
      external get_ptrel
      real * 8 yijs(4)
      character * 5 pr
      common/pwhgprocess/pr
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
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
c all but the Boson
            if (isthep(j).eq.1) then
               if(pr.eq.'H') then
                  if(idhep(j).eq.25) cycle
               elseif(pr.eq.'Z') then
                  if(WHCPRG.eq.'NLO') then
                     if(j.eq.3.or.j.eq.4) cycle
                  else
                     if(idhep(jmohep(1,j)).eq.23) cycle
                     if(jmohep(1,jmohep(1,j)).ne.0) then
                        if(idhep(jmohep(1,jmohep(1,j))).eq.23) cycle
                     endif
                  endif
               elseif(pr.eq.'VBFZZ') then
                  if(WHCPRG.eq.'NLO') then
                     if(j.eq.3.or.j.eq.4.or.j.eq.5.or.j.eq.6) cycle
                  else
                     if(idhep(jmohep(1,j)).eq.23) cycle
                     if(jmohep(1,jmohep(1,j)).ne.0) then
                        if(idhep(jmohep(1,jmohep(1,j))).eq.23) cycle
                     endif
                  endif
               elseif(pr.eq.'VBFWZ') then
                  if(WHCPRG.eq.'NLO') then
                     if(j.eq.3.or.j.eq.4.or.j.eq.5.or.j.eq.6) cycle
		  elseif(WHCPRG.eq.'HERWIG') then
		     if(comesfromid(23,j)) cycle
		     if(comesfromid(24,j)) cycle                     
                  else
                     if(idhep(jmohep(1,j)).eq.23) cycle
                     if(jmohep(1,jmohep(1,j)).ne.0) then
                        if(idhep(jmohep(1,jmohep(1,j))).eq.23) cycle
                     endif
                     if(idhep(jmohep(1,j)).eq.24) cycle
                     if(jmohep(1,jmohep(1,j)).ne.0) then
                        if(idhep(jmohep(1,jmohep(1,j))).eq.24) cycle
                     endif
                  endif
               elseif(pr.eq.'W') then
                  if(WHCPRG.eq.'NLO') then
                     if(j.eq.3.or.j.eq.4) cycle
                  else
                     if(abs(idhep(jmohep(1,j))).eq.24) cycle
                     if(jmohep(1,jmohep(1,j)).ne.0) then
                        if(abs(idhep(jmohep(1,jmohep(1,j)))).eq.24)cycle
                     endif
                  endif
               endif
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
c palg=1 is standard kt, -1 is antikt
      palg=-1
      r=rr
c      ptmin=20d0 
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets,
     $                        jetvec,yijs)
      mjets=njets
      if(njets.eq.0) return
C --------------------------------------------------------------------- C
C - Computing arrays of useful kinematics quantities for hardest jets - C
C --------------------------------------------------------------------- 
      do j=1,mjets
         call getyetaptmass(pjet(:,j),rap(j),eta(j),kt(j),tmp)
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo

      end

      subroutine maximum(i1,i2,i3,i4,dummy)
      implicit none
      real * 8 i1,i2,i3,i4,dummy
      dummy=max(i1,i2)
      dummy=max(dummy,i3)
      dummy=max(dummy,i4)
      end

      subroutine maximum3(i1,i2,i3,dummy)
      implicit none
      real * 8 i1,i2,i3,i4,dummy
      dummy=max(i1,i2)
      dummy=max(dummy,i3)
      end
      
      subroutine minimum(i1,i2,i3,i4,dummy)
      implicit none
      real * 8 i1,i2,i3,i4,dummy
      dummy=min(i1,i2)
      dummy=min(dummy,i3)
      dummy=min(dummy,i4)
      end

      subroutine minimum3(i1,i2,i3,dummy)
      implicit none
      real * 8 i1,i2,i3,dummy
      dummy=min(i1,i2)
      dummy=min(dummy,i3)
      end
      
      subroutine sortbypt(n,iarr)
      implicit none
      integer n,iarr(n)
      include 'hepevt.h'
      integer j,k
      real * 8 tmp,pt(nmxhep)
      logical touched
      do j=1,n
         pt(j)=sqrt(phep(1,iarr(j))**2+phep(2,iarr(j))**2)
      enddo
c     bubble sort
      touched=.true.
      do while(touched)
         touched=.false.
         do j=1,n-1
            if(pt(j).lt.pt(j+1)) then
               k=iarr(j)
               iarr(j)=iarr(j+1)
               iarr(j+1)=k
               tmp=pt(j)
               pt(j)=pt(j+1)
               pt(j+1)=tmp
               touched=.true.
            endif
         enddo
      enddo
      end
      
      function islept(j)
      implicit none
      logical islept
      integer j
      if(abs(j).ge.11.and.abs(j).le.15) then
         islept = .true.
      else
         islept = .false.
      endif
      end

      function get_ptrel(pin,pjet)
      implicit none
      real * 8 get_ptrel,pin(0:3),pjet(0:3)
      real * 8 pin2,pjet2,cth2,scalprod
      pin2  = pin(1)**2 + pin(2)**2 + pin(3)**2
      pjet2 = pjet(1)**2 + pjet(2)**2 + pjet(3)**2
      scalprod = pin(1)*pjet(1) + pin(2)*pjet(2) + pin(3)*pjet(3)
      cth2 = scalprod**2/pin2/pjet2
      get_ptrel = sqrt(pin2*abs(1d0 - cth2))
      end

      subroutine pwhgfinalopshist
      end

      function invmass(p)
      implicit none
      real * 8 p(1:4),invmass
      invmass=sqrt(abs(p(4)**2-p(1)**2-p(2)**2-p(3)**2))
      end

      function invmass0(p)
      implicit none
      real * 8 p(0:3),invmass0
      invmass0=dsqrt(abs(p(0)**2-p(1)**2-p(2)**2-p(3)**2))
      end



C---  calculate azimuthal angle between vectors 
      double precision function fphi(p1,p2)
      implicit none
      double precision p1(4),p2(4)
      double precision pi
      parameter(pi=3.14159265358979d0)
   
      fphi=p1(1)*p2(1)+p1(2)*p2(2)
      fphi=fphi/dsqrt(p1(1)**2+p1(2)**2)
      fphi=fphi/dsqrt(p2(1)**2+p2(2)**2)
      if     (fphi .gt. +0.9999999D0) then
        fphi=0d0
      elseif (fphi .lt. -0.9999999D0) then
        fphi=pi
      else
        fphi=dacos(fphi)
      endif

      end

      real * 8 function min(i1,i2)
      implicit none
      double precision i1,i2
      if(i1.lt.i2) then
         min=i1
      else
         min=i2
      endif
      end function min
      
