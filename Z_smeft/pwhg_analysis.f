c  Analyis inspired by pwhg_analysis-SC.f in Z
c  Calculate the angular coefficients a0 -- a5 in the Collins-Soper frame 
c  as a function on a cut on the dilepton invariant mass
      subroutine init_hist
      implicit none
      include  'LesHouches.h'
      include 'pwhg_math.h'

      call inihists

      call bookupeqbins('mZ_1',10d0,10d0,150d0)   
      call bookupeqbins('mZ_2',100d0,150d0,1050d0)   
      call bookupeqbins('mZ_3',500d0,1000d0,5000d0)   

      call bookupeqbins('pTZ_1',10d0,1d0,101d0)   
      call bookupeqbins('pTZ_2',50d0,100d0,1000d0)   
      
      call bookupeqbins('eta_l',0.5d0,-5d0,5d0)   
      
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
      call getyetaptmass(pl,yl,etal,ptl,ml)
      call getyetaptmass(pnu,ynu,etanu,ptnu,mnu)
      delphi = getdphi(pl,pnu)
      pt=getpt(pw)
      m=getmass(pw)
      mtv = sqrt(2*ptl*ptnu*(1d0-cos(delphi)))

      cs = cstar(pl,pnu)

      phistar = phistar_report(pnu,pl)   !pl2 is the negatively charged lepton

      
      
      call filld('mZ_1',m,dsig)
      call filld('mZ_2',m,dsig)
      call filld('mZ_3',m,dsig)
            
      
      call filld('pTZ_1',pt,dsig)
      call filld('pTZ_2',pt,dsig)
      
      call filld('eta_l',etal,dsig)
      
      

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



      