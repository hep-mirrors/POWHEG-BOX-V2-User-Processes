c  Analyis inspired by pwhg_analysis-SC.f in Z
c  Calculate the angular coefficients a0 -- a5 in the Collins-Soper frame 
c  as a function on a cut on the dilepton invariant mass
      subroutine init_hist
      implicit none
      include  'LesHouches.h'
      include 'pwhg_math.h'
      integer j,k, nmZcutmax
      character * 1 cnum(9)
      character * 2 seqstring
      parameter(nmZcutmax = 41)
      real * 8 mZcuts(0:nmZcutmax-1)
      integer i, nmZcut, ncut
      data cnum/'1','2','3','4','5','6','7','8','9'/

      common/cuts/mZcuts,nmZcut

c     put pt cuts 	
      nmZcut = 31
      do i=0,nmZcut -1
	mZcuts(i) = 1000d0 + i * 50d0
      enddo
      

      
      call inihists

      do ncut=0,nmZcut-1
        write (seqstring,'(I0)') ncut
        call bookupeqbins("total_mZcut"//trim(seqstring),1d0,-0.5d0,
     $    		   0.5d0)
c	call bookupeqbins('V_mZcut'//trim(seqstring),10d0,
c     $   		   mZcuts(ncut),mZcuts(ncut) + 100d0*2)     !for W
c     	call bookupeqbins('V_mZcut_tot'//trim(seqstring),50d0,
c     $   		   mZcuts(ncut),3000d0)     !for W
c        call bookupeqbins("pTZ"//trim(seqstring),20d0,1d0,
c     $    		   101d0)
	call bookupeqbins("a0"//trim(seqstring),1d0,-0.5d0,
     $    		   0.5d0)
        call bookupeqbins("a1"//trim(seqstring),1d0,-0.5d0,
     $    		   0.5d0)
        call bookupeqbins("a2"//trim(seqstring),1d0,-0.5d0,
     $    		   0.5d0)
        call bookupeqbins("a3"//trim(seqstring),1d0,-0.5d0,
     $    		   0.5d0)
        call bookupeqbins("a4"//trim(seqstring),1d0,-0.5d0,
     $    		   0.5d0)
        call bookupeqbins("a5"//trim(seqstring),1d0,-0.5d0,
     $    		   0.5d0)     
c        call bookupeqbins("a6"//trim(seqstring),1d0,-0.5d0,
c     $    		   0.5d0)
c        call bookupeqbins("a7"//trim(seqstring),1d0,-0.5d0,
c     $    		   0.5d0)
     
     
      enddo


      end
     
      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'pwhg_math.h' 
      include  'LesHouches.h'
      include 'pwhg_rwl.h'
      include 'pwhg_bookhist-multi-new.h'
      real * 8 dsig0, dsig(1:rwl_maxweights)
      integer   maxphot,nphot
      parameter (maxphot=2048)
      real * 8 pg(4,maxphot)
      character * 1 cnum(9)
      data cnum/'1','2','3','4','5','6','7','8','9'/
      save cnum
      integer j,k
c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      real * 8 pw(4),pl(4),pnu(4)
      real * 8 pl03(0:3),pnu03(0:3)
      real * 8 y,eta,pt,m
      real * 8 dy,deta,delphi,dr
      real * 8 getpt,getdphi,getmass,geteta
      external getpt,getdphi,getmass,geteta
      integer ihep
      real * 8 powheginput,dotp
      external powheginput,dotp
      integer vdecaytemp,vdecay2temp
      real * 8 mtv 
      real * 8 yl,ptl,etal,ynu,ptnu,etanu,ml,mnu
      logical accepted
      real*8 mw,mz, aa(0:7)
      real*8 cs
      real*8 getdeta,getdr,dphi,dr1,dr2
      real*8 cstar,phistar,phistar_report
c spin correlation observables
      real * 8 aspincor(0:7),lcos,genphi
      external cstar,phistar_report
      logical ini,noheavy
      data ini/.true./
      save ini
      character * 2 seqstring
      integer nmZcutmax, nmZcut, ncut
      parameter(nmZcutmax = 41)
      real * 8 mZcuts(0:nmZcutmax-1)
      common/cuts/mZcuts,nmZcut

      if (ini) then
          vdecaytemp = lprup(1)-10000
          vdecay2temp = - vdecaytemp
          noheavy = powheginput("#noheavy").eq.1
          if(rwl_num_weights.eq.0) then
             call setupmulti(1)
          else
             call setupmulti(rwl_num_weights+1)
          endif
          ini=.false.
      endif
      
c      dsig=0
      if(rwl_num_weights.eq.0) then
         dsig(1)=dsig0
      else
	 dsig(1) = dsig0
         dsig(2:rwl_num_weights+1)=rwl_weights(1:rwl_num_weights)
      endif
      if(sum(abs(dsig)).eq.0) return   


      if (ini) then
          ini=.false.
      endif

      if(noheavy.and.
     1       abs(idup(1)).eq.5.or.abs(idup(2)).eq.5
     2  .or. abs(idup(5)).eq.5.or.abs(idup(5)).eq.4
     3  .or. abs(idup(1)).eq.4.or.abs(idup(2)).eq.4) then
         return
      endif

      pw = (/0,0,0,0/)
      pl = (/0,0,0,0/)
      pnu= (/0,0,0,0/)
      nphot = 0

      do ihep=1,nhep
c p_W = p_l + p_nu
         if( idhep(ihep).eq.vdecaytemp  ) then
             if (phep(4,ihep).gt.pl(4)) pl = phep(1:4,ihep)
         endif
         if( idhep(ihep).eq.vdecay2temp ) then
             if (phep(4,ihep).gt.pnu(4)) pnu = phep(1:4,ihep)
         endif
         pw = pl + pnu
         if( idhep(ihep).eq.22 ) then 
             if (phep(4,ihep).gt.10d0)then
                 nphot = nphot + 1
                 pg(1:4,nphot) = phep(1:4,ihep)
             endif
         endif
      enddo


      pl03(0)=pl(4)
      pl03(1:3)=pl(1:3)
      pnu03(0)=pnu(4)
      pnu03(1:3)=pnu(1:3)
      call get_ang_coeffs(pl03,pnu03,aa)


      call getyetaptmass(pl,yl,etal,ptl,ml)
      call getyetaptmass(pnu,ynu,etanu,ptnu,mnu)
      delphi = getdphi(pl,pnu)
      pt=getpt(pw)
      m=getmass(pw)
      mtv = sqrt(2*ptl*ptnu*(1d0-cos(delphi)))

      cs = cstar(pl,pnu)

      phistar = phistar_report(pnu,pl)   !pl2 is the negatively charged lepton

      
      
      do ncut=0,nmZcut-1
        write (seqstring,'(I0)') ncut
	if((m.gt.mZcuts(ncut)).and.pt.gt.1d0) then
         call filld('total_mZcut'//trim(seqstring),0d0,dsig)
c         call filld('V_mZcut'//trim(seqstring),m,dsig)
c         call filld('V_mZcut_tot'//trim(seqstring),m,dsig)
c         call filld('pTZ'//trim(seqstring),pt,dsig)
	 call filld('a0'//trim(seqstring),0d0,aa(0)*dsig)
	 call filld('a1'//trim(seqstring),0d0,aa(1)*dsig)
         call filld('a2'//trim(seqstring),0d0,aa(2)*dsig)
	 call filld('a3'//trim(seqstring),0d0,aa(3)*dsig)
	 call filld('a4'//trim(seqstring),0d0,4*cs*dsig)
         call filld('a5'//trim(seqstring),0d0,aa(5)*dsig)
c         call filld('a6'//trim(seqstring),0d0,aa(6)*dsig)
c	 call filld('a7'//trim(seqstring),0d0,aa(7)*dsig)
        endif

      enddo
      

      end

      subroutine yetaptmassplot(p,dsig,prefix)
      implicit none
      real * 8 p(4),dsig
      character *(*) prefix
      real * 8 y,eta,pt,m
      call getyetaptmass(p,y,eta,pt,m)
      call filld(prefix//'_y',y,dsig)
      call filld(prefix//'_eta',eta,dsig)
      call filld(prefix//'_pt',pt,dsig)
      call filld(prefix//'_m',m,dsig)
      end

      subroutine deltaplot(p1,p2,dsig,prefix)
      implicit none
      real * 8 p1(4),p2(4),dsig
      character *(*) prefix
      real * 8 dy,deta,delphi,dr
      call getdydetadphidr(p1,p2,dy,deta,delphi,dr)
      call filld(prefix//'_dy',dy,dsig)
      call filld(prefix//'_deta',deta,dsig)
      call filld(prefix//'_delphi',delphi,dsig)
      call filld(prefix//'_dr',dr,dsig)
      end


      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      real * 8 p(4),y,eta,pt,mass,pv
      real * 8 gety,getpt,geteta,getmass
      external gety,getpt,geteta,getmass
      y  = gety(p)
      pt = getpt(p)
      eta = geteta(p)
      mass = getmass(p)
      end


      function gety(p)
      implicit none
      real * 8 gety,p(4)
      gety=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      end

      function getpt(p)
      implicit none
      real * 8 getpt,p(4)
      getpt = sqrt(p(1)**2+p(2)**2)
      end

      function getmass(p)
      implicit none
      real * 8 getmass,p(4)
      getmass=sqrt(abs(p(4)**2-p(3)**2-p(2)**2-p(1)**2))
      end

      function geteta(p)
      implicit none
      real * 8 geteta,p(4),pv
      real * 8 tiny
      parameter (tiny=1.d-5)
      pv = sqrt(p(1)**2+p(2)**2+p(3)**2)
      if(pv.lt.tiny)then
         geteta=sign(1.d0,p(3))*1.d8
      else
         geteta=0.5d0*log((pv+p(3))/(pv-p(3)))
      endif
      end



      subroutine getdydetadphidr(p1,p2,dy,deta,dphi,dr)
      implicit none
      real * 8 p1(*),p2(*),dy,deta,dphi,dr
      real * 8 getdy,getdeta,getdphi,getdr
      external getdy,getdeta,getdphi,getdr
      dy=getdy(p1,p2)
      deta=getdeta(p1,p2)
      dphi=getdphi(p1,p2)
      dr=getdr(deta,dphi)
      end

      function getdy(p1,p2)
      implicit none
      real*8 p1(*),p2(*),getdy
      real*8 y1,y2
      real*8 gety
      external gety
      y1 = gety(p1)
      y2 = gety(p2)
      getdy = y1-y2
      end

      function getdeta(p1,p2)
      implicit none
      real*8 p1(*),p2(*),getdeta
      real*8 eta1,eta2
      real*8 geteta
      external geteta
      eta1 = geteta(p1)
      eta2 = geteta(p2)
      getdeta = eta1-eta2
      end

      function getdphi(p1,p2)
      implicit none
      include 'pwhg_math.h' 
      real*8 p1(*),p2(*),getdphi
      real*8 phi1,phi2
      real*8 geteta
      external geteta
      phi1=atan2(p1(2),p1(1))
      phi2=atan2(p2(2),p2(1))
      getdphi=abs(phi1-phi2)
      getdphi=min(getdphi,2d0*pi-getdphi)
      end

      function getdr(deta,dphi)
      implicit none
      real*8 getdr,deta,dphi 
      getdr=sqrt(deta**2+dphi**2)
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


      real*8 function cstar(p1,p2)
      implicit none
      real*8 p1(4),p2(4),psum(4)
*
      real*8 dotp
      external dotp
*
      real*8 rq2,cs1p,cs2p,cs1m,cs2m,qmass,pt2,sig
      integer k
*
      psum = p1 + p2
      rq2 = sqrt(2.d0)
! Collins - Soper momenta for particle 1 and 2 
      cs1p = (p1(4) + p1(3))/rq2
      cs2p = (p2(4) + p2(3))/rq2
      cs1m = (p1(4) - p1(3))/rq2
      cs2m = (p2(4) - p2(3))/rq2
      qmass = sqrt(psum(4)**2-psum(1)**2-psum(2)**2-psum(3)**2)
      pt2 = psum(1)**2 + psum(2)**2
      cstar = 2.d0/qmass/sqrt(qmass**2 + pt2)*(cs1p*cs2m - cs1m*cs2p)
! for a ppbar should end here
c      if (hadr1.eq.hadr2) then
         sig = 1.d0
         if (psum(3).ne.0.d0) sig = abs(psum(3))/psum(3)
         cstar = cstar * sig
c      endif
      return
      end
*
      real*8 function phistar_report(p2,p1)
      implicit none
      include 'pwhg_math.h' 
      real*8 p1(4),p2(4)
*
      real*8 phim,phip,dphi,dphio2,etam,etap,detao2
      real*8 cthetastar,sthetastar
      real*8 geteta
      external geteta
*
      phim= atan2(p2(2),p2(1))
      phip= atan2(p1(2),p1(1))
      dphi= phim-phip
      dphio2= (pi - dphi)/2.d0
      etam= geteta(p2)
      etap= geteta(p1)
      detao2= (etam-etap)/2.d0
      cthetastar= tanh(detao2)
      sthetastar= sqrt(1.d0-cthetastar**2)
      phistar_report= tan(dphio2) * sthetastar

      return
      end



      subroutine get_ang_coeffs(p1,p2,a)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_rwl.h'
      real * 8 dsig(1:rwl_maxweights)
      real *8 p1(0:3),p2(0:3),res(0:3)
      real *8 a(0:7)
      real *8 theta,lcos,genphi,ptvb
      real *8 mom0,mom1,mom2,mom3,mom4,mom5,mom6,mom7
c //==========================================================
c     // <m0> = <(1/2)*(1-3cos^2(tjeta))> = (3/20)*(A0 - (2/3))
c     // <m1> = <sin(2*theta)*cos(phi)> = (1/5)*A1
c     // <m2> = <sin^2(theta)*cos(2*phi)> = (1/10)*A2
c     // <m3> = <sin(theta)*cos(phi)> = (1/4)*A3
c     // <m4> = <cos(theta)> - (1/4)*A4
c     // <m5> = <sin^2(theta)*sin(2*phi)> = (1/5)*A5
c     // <m6> = <sin(2*theta)*sin(phi)> = (1/5)*A6
c     // <m7> = <sin(theta)*sin(phi)> = (1/4)*A7
c     //======================================================
      
      call calCSVariables(p1,p2,res,.false.)
      
      theta=dacos(res(0))
c      if(abs(res(0)-kn_cthdec).gt.1d-16) then
c         write(*,*) ' cos theta: ', res(0), kn_cthdec,res(0)/kn_cthdec
c      endif
      lcos=res(0)
      genphi=res(3)

      mom0 = 0.5d0*(1-3*lcos*lcos)
      mom1 = dsin(2d0*theta)*dcos(genphi)
      mom2 = dsin(theta)*dsin(theta)*dcos(2d0*genphi)
      mom3 = dsin(theta)*dcos(genphi)
      mom4 = lcos                 
      mom5 = dsin(theta)*dsin(theta)*dsin(2d0*genphi)
      mom6 = dsin(2d0*theta)*dsin(genphi)
      mom7 = dsin(theta)*dsin(genphi)

      a(0)   = (20d0/3d0)*mom0 + (2d0/3d0)
      a(1)   = 5*mom1
      a(2)   = 10*mom2
      a(3)   = 4*mom3
      a(4)   = 4*mom4
      a(5)   = 5*mom5
      a(6)   = 5*mom6
      a(7)   = 4*mom7



      end




      subroutine calCSVariables(p1,p2,res,swap)
      implicit none
      include '../include/LesHouches.h'
      include 'nlegborn.h'
      include '../include/pwhg_kn.h'
      real *8 p1(0:3),p2(0:3),res(0:3)
      logical swap
      real *8 Pbeam(0:3),Ptarget(0:3),Q(0:3)
      real *8 p1plus,p1minus,p2plus,p2minus,costheta
      integer nu
      real *8 Qmag,Qpt
      real *8 D(0:3),dt_qt,sin2theta,Dpt
      real *8 R(3),Rmag,Runit(3),Qt(3),Qtunit(3),Dt(3),tanphi,phi
      real *8 dotp,dotp3
      external dotp,dotp3

      do nu=0,3
         Pbeam(nu)=0
         Ptarget(nu)=0
         Q(nu)=p1(nu)+p2(nu)
      enddo
      Pbeam(0)=ebmup(1)
      Ptarget(0)=ebmup(2)
      Pbeam(3)=ebmup(1)
      Ptarget(3)=-ebmup(2)

      Qmag=sqrt(dotp(Q,Q))
      Qpt=sqrt(Q(1)**2+Q(2)**2)
c*********************************************************************
c*
c* 1) cos(theta) = 2 Q^-1 (Q^2+Qt^2)^-1/2 (p1^+ p2^- - p1^- p2^+)
c*
c*
c*********************************************************************
    
      p1plus=1d0/sqrt(2d0) * (p1(0) + p1(3))
      p1minus = 1d0/sqrt(2d0) * (p1(0) - p1(3))
      p2plus=1d0/sqrt(2d0) * (p2(0) + p2(3))
      p2minus = 1d0/sqrt(2d0) * (p2(0) - p2(3))

      costheta = 2d0 / Qmag / sqrt(Qmag**2 + 
     $     Qpt**2) * (p1plus * p2minus - p1minus * p2plus)

      if (swap) costheta = -costheta

c/********************************************************************
c*
c* 2) sin2(theta) = Q^-2 Dt^2 - Q^-2 (Q^2 + Qt^2)^-1 * (Dt dot Qt)^2
c*
c********************************************************************
      do nu=0,3
         D(nu)=p1(nu)-p2(nu)
      enddo
      Dpt=sqrt(D(1)**2+D(2)**2)
      dt_qt = D(1)*Q(1) + D(2)*Q(2)
      sin2theta=(DPt/QMag)**2 -1d0/QMag**2/(QMag**2 + QPt**2)*dt_qt**2

c      if (abs(sin2theta+(costheta*costheta)-1d0).gt.1d-6) then
c         write (*,*) "HAHA",abs(sin2theta+(costheta*costheta)-1d0),Qpt
c         stop
c      endif

c/********************************************************************
c*
c* 3) tanphi = (Q^2 + Qt^2)^1/2 / Q (Dt dot R unit) /(Dt dot Qt unit)
c*
c*********************************************************************
c// unit vector on R direction

      if(Qpt.gt.0d0) then
         call cross3(pbeam(1),Q(1),R)
         Rmag=sqrt(dotp3(R,R))

         Runit(1)=R(1)/Rmag
         Runit(2)=R(2)/Rmag
         Runit(3)=R(3)/Rmag

         Qt(1)=Q(1)
         Qt(2)=Q(2)
         Qt(3)=0

         Qtunit(1)=Qt(1)/Qpt
         Qtunit(2)=Qt(2)/Qpt
         Qtunit(3)=0
    
      
         Dt(1)=D(1)
         Dt(2)=D(2)
         Dt(3)=0

      
         tanphi=sqrt( Qmag**2 + Qpt**2) / Qmag * dotp3(Dt,Runit)/
     $        dotp3(Dt,Qtunit)

         if (swap) tanphi = -tanphi

         phi=atan2(sqrt(Qmag**2 + Qpt**2 )* dotp3(Dt,Runit),QMag
     $        *dotp3(Dt,Qtunit))


         if (swap) phi = atan2(-sqrt(QMag**2+ QPt**2)*dotp3(Dt,Runit)
     $        ,QMag*dotp3(Dt,Qtunit))

      else
         tanphi=0
         phi=0
      endif

      res(0)=costheta
      res(1)=sin2theta
      res(2)=tanphi
      res(3)=phi
      end

      function dotp3(p1,p2)
      implicit none
      real * 8 dotp3,p1(3),p2(3)
      dotp3 = p1(1)*p2(1) + p1(2)*p2(2) + p1(3)*p2(3)
      end

      subroutine cross3(p1,p2,p3)
      implicit none
      real * 8 p3(3),p1(3),p2(3)
      p3(1) = p1(2)*p2(3)-p1(3)*p2(2)
      p3(2) = p1(3)*p2(1)-p1(1)*p2(3)
      p3(3) = p1(1)*p2(2)-p1(2)*p2(1)
      end
