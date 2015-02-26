C ----------------------------------------------------------------- C
C - This is a parton level only analysis for ttbar production     - C
C - tops bs Ws etc are constructed using MC truth only - no jets  - C
C - The MC truth reconstruction has been tested (see sanity check - C
C - code in the analysis below).                                  - C
C - Since it is parton level you need to comment out from         - C
C - CALL HWDHOB down to CALL HWDHOB inclusive in main-HERWIG.f .  - C
C - Also at some point, the showering went into what looked like  - C
C - an infinite loop after 137K events - gdb said it was in       - C
C - HWHGUP. The same glitch did not occur with *** herwig6520.f *** C
C - I also eliminated the analysis as a possible cause (it occurs - C
C - with HWANAL removed). I did not see anything fishy with the   - C
C - Tevatron, semileptonic event that got caught.                 - C
C ----------------------------------------------------------------- C

c  The next subroutines, open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones
c  init   :  opens the histograms
c  topout :  closes them
c  pwhgfill  :  fills the histograms with data

      subroutine init_hist
      implicit none
      include  'LesHouches.h'
      include 'pwhg_math.h'
      integer j,l

      call inihists
      call bookupeqbins('pt_e+'  ,20d0,0d0,400d0)
      call bookupeqbins('pt_top' ,40d0,0d0,800d0)
      call bookupeqbins('pt_b_max' ,20d0,0d0,400d0)
      call bookupeqbins('pt_b_min' ,20d0,0d0,400d0)
      call bookupeqbins('pt_bb' ,20d0,0d0,400d0)
      call bookupeqbins('pt_miss' ,20d0,0d0,400d0)
      call bookupeqbins('m_top' ,0.5d0,167d0,177d0)
      call bookupeqbins('m_e+_b' ,10d0,0d0,200d0)
      call bookupeqbins('Ht' ,60d0,0d0,1200d0)
      call bookupeqbins('m_bb' ,40d0,0d0,800d0)
      call bookupeqbins('m_tt' ,30d0,200d0,800d0)
      call bookupeqbins('phi_e+_mu-' ,pi/20,0d0,pi+1d-8)

c      call bookupeqbins('costh_e+_mu-' ,0.1d0,-1d0,1d0)

      call bookupeqbins('total'  ,1d0,0d0,1d0)
      call bookupeqbins('m_tt_zoom',2d0,200d0,400d0)
      call bookupeqbins('total_no_cut',1d0,0d0,1d0)

c Important plots for paper:

c Mtop (MC truth)
c Mb lepton
c mu_ll and mu_bb, from CMS paper

c dilepton observables:
c lepton pair pt
c lepton pair mass
c sum of lepton energies
c sum of lepton pt's

c Studio con correzione radiativa al decadimento
c Funzione di frammentazione del b nel frame del t
c Massa del sistema W+bjet

      end

      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'pwhg_math.h' 
      include 'LesHouches.h'
      character * 6 whcprg      
      common/cwhcprg/whcprg
      integer jpref
      character * 20 prefix(18)
      common/ccccprefix/jpref,prefix
      data whcprg/'NLO   '/
      real * 8  dsig0,dsig
      integer   ihep                ! HEPEVT index.
      real * 8 p_top(4),p_tb(4),p_wp(4),p_wm(4),p_lwp(4),p_lwm(4),
     1         p_nuwp(4),p_nuwm(4),p_b(4),p_ab(4),y,eta,pt,mass,
     2         ptzmf(4),plzmf(4)
      integer   maxtracks,maxjets
      parameter (maxtracks=nmxhep,maxjets=20)
      integer mjets,jetvec(maxtracks)
      logical   isForClustering(maxtracks)
      real * 8 j_kt(maxjets),j_eta(maxjets),j_rap(maxjets),
     1     j_phi(maxjets),j_p(4,maxjets)
      integer j,id,i_top,i_atop,i_bfromtop,i_abfromatop,
     1     i_wp,i_wm,i_lwp,i_lwm,i_nuwp,i_nuwm,i_bjet,i_abjet,jhep,
     1     i_part,njets20,njets30,njets40
      real * 8 mtop,mtb,mwp,mwm,mb,mab,p_bmax,e_bmax,xb,
     1     p_abmax,e_abmax,xab,ewp,pwp,ewm,pwm,xw,
     2     dy,deta,delphi,dr,cth1,cth2,ptmp(4),ht
      integer jcth1
      real * 8 w(4),pb(4),ptb
      real * 8 prodvec2,powheginput
      logical sonofid
      external sonofid
      integer in_jet
      external in_jet
      real * 8 etalwp,ptlwp,ptlwm,ptmiss
      real * 8 rparam,ptmisscut,ptbcut,ptlcut,etacut
      integer ngenerations,inotfound,iprodrad
      common/cngenerations/ngenerations
      character * 2 digit(20)
      data digit/'01','02','03','04','05','06','07','08','09','10',
     1           '11','12','13','14','15','16','17','18','19','20'/
      integer id1,id2
      logical ini
      data ini/.true./
      save ini,rparam,ptmisscut,ptbcut,ptlcut,etacut

      integer nevents
      save nevents

      if(ini) then
         if(powheginput("ih2").eq.-1) then
            rparam = 0.4d0
            ptmisscut = 25d0
            ptbcut = 20
         else
            rparam = 0.5d0
            ptmisscut = 20d0
            ptbcut = 30
         endif
         ptlcut = 20
         etacut = 2.5d0
         ini = .false.

         if (powheginput("#madevent").eq.1) then
            print*, 'Enter number of events in MG5 file'
            read*, nevents
            write(*,*) 'top-denner analysis on madevent-generated file'
            write(*,*) 'nevents ',nevents
         endif

      endif


      dsig  = dsig0

      if(whcprg.eq.'NLO'.or.whcprg.eq.'LHE') then
         i_top = 3
         i_atop = 4
         i_wp = 5
         i_wm = 6

         i_lwp = 7
         i_lwm = 9
         i_nuwp = 8
         i_nuwm = 10
         i_bfromtop = 11
         i_abfromatop = 12
         
         IsForClustering = .false.
         IsForClustering(13) = .true.
         IsForClustering(i_bfromtop) = .true.
         IsForClustering(i_abfromatop) = .true.
C --------------------------------------------- C
C - LHE PARTICLE TOP RECONSTRUCTION: MC TRUTH - C
C --------------------------------------------- C
      else
         write(*,*) ' This analysis is only of NLO or LH'
         call exit(-1)
      endif

      id1=idhep(1)
      id2=idhep(2)
      if(id1.eq.21) id1=0
      if(id2.eq.21) id2=0

      p_top=phep(1:4,i_top)
      p_tb=phep(1:4,i_atop)
      p_wp=phep(1:4,i_wp)
      p_wm=phep(1:4,i_wm)
      p_lwp=phep(1:4,i_lwp)
      p_lwm=phep(1:4,i_lwm)
      p_nuwp=phep(1:4,i_nuwp)
      p_nuwm=phep(1:4,i_nuwm)
      p_b=phep(1:4,i_bfromtop)
      p_ab=phep(1:4,i_abfromatop)

      if(powheginput("#madevent").eq.1) then
c     !: MG5 doesn't seem to be compliant with LHE file 
c     conventions for value of xwgtup when idwtup is 3
c     (MG5 events don't have weight = 1, but tot_x_sec/nevents)
c     So  
c     if(abs(idwtup).eq.3) xwgtup=xwgtup*xsecup(1)
c     had to be commented away in lhef_analysis.f
         dsig=dsig*nevents
         
c     In madgraph record, not necessarily we have
c     the intermediate resonances, so don't look
c     for them, and just set the momenta after we
c     have extracted the final-state particles....

         do j=1,nhep
c            if(idhep(j).eq.6) i_top = j
c            if(idhep(j).eq.-6) i_atop = j
c            if(idhep(j).eq.24) i_wp = j
c            if(idhep(j).eq.-24) i_wm = j
            if(idhep(j).eq.-11) i_lwp = j
            if(idhep(j).eq.13) i_lwm = j
            if(idhep(j).eq.12) i_nuwp = j
            if(idhep(j).eq.-14) i_nuwm = j
            if(idhep(j).eq.5) i_bfromtop = j
            if(idhep(j).eq.-5) i_abfromatop = j
         enddo

         p_lwp=phep(1:4,i_lwp)
         p_lwm=phep(1:4,i_lwm)
         p_nuwp=phep(1:4,i_nuwp)
         p_nuwm=phep(1:4,i_nuwm)
         p_b=phep(1:4,i_bfromtop)
         p_ab=phep(1:4,i_abfromatop)

         p_wp=p_lwp+p_nuwp
         p_wm=p_lwm+p_nuwm

         p_top=p_wp+p_b
         p_tb=p_wm+p_ab

c$$$         rparam = 0.5d0
c$$$         ptmisscut = 20d0
c$$$         ptbcut = 30
c$$$         ptlcut = 20
c$$$         etacut = 2.5d0

         IsForClustering = .false.
         IsForClustering(13) = .true.
         IsForClustering(i_bfromtop) = .true.
         IsForClustering(i_abfromatop) = .true.
         
      endif


      mjets = maxjets
      call buildjets(mjets,rparam,j_kt,j_eta,j_rap,j_phi,j_p,jetvec,
     1     isForClustering)

      i_bjet = jetvec(i_bfromtop)
      i_abjet = jetvec(i_abfromatop)

      call filld('total_no_cut',0.5d0,dsig)

c if less than 2 jets, skip
      if(mjets.le.1) return

c b and bbar not resolved
      if(i_bjet .eq. i_abjet) return

c not both bjets are defined if b or bbar have
c rapidity larger than 5 (see comment in buildjets, and
c Denner paper). In this case, skip analysis !
      if(i_bjet*i_abjet.eq.0) then
c         print*, i_bjet,i_abjet,p_b,p_ab
c         print*, 0.5d0*abs(log((p_b(4)+p_b(3))/(p_b(4)-p_b(3))))
c         print*, 0.5d0*abs(log((p_ab(4)+p_ab(3))/(p_ab(4)-p_ab(3))))
         return
      endif

      p_b=j_p(:,i_bjet)
      p_ab=j_p(:,i_abjet)

      ht = 0
      do j=1,mjets
         ht = ht + j_kt(j)
      enddo
      
      if(j_kt(i_bjet).lt.ptbcut.or.abs(j_eta(i_bjet)).gt.etacut) return
      if(j_kt(i_abjet).lt.ptbcut.or.abs(j_eta(i_abjet)).gt.etacut) 
     1     return
      
      call getyetaptmass(p_lwp,y,eta,pt,mass)
      etalwp = eta
      ptlwp = pt
      if(abs(eta).gt.etacut.or.pt.lt.ptlcut) return

      call getyetaptmass(p_lwm,y,eta,pt,mass)
      ptlwm = pt
      if(abs(eta).gt.etacut.or.pt.lt.ptlcut) return

      ptmiss = sqrt((p_nuwp(1)+p_nuwm(1))**2+(p_nuwp(2)+p_nuwm(2))**2)
      if(ptmiss.lt.ptmisscut) return

      call filld('total',0.5d0,dsig)

      call filld('pt_e+'  ,ptlwp,dsig)

      call filld('pt_top' ,sqrt(p_top(1)**2+p_top(2)**2),dsig)

      call filld('pt_b_max' ,sqrt(max(p_b(1)**2+p_b(2)**2,
     1                                p_ab(1)**2+p_ab(2)**2)),dsig)

      call filld('pt_b_min' ,sqrt(min(p_b(1)**2+p_b(2)**2,
     1                                p_ab(1)**2+p_ab(2)**2)),dsig)

      call filld('pt_bb' ,sqrt((p_b(1)+p_ab(1))**2+(p_b(2)+p_ab(2))**2),
     1                               dsig)
      call filld('pt_miss' ,
     1  sqrt((p_nuwp(1)+p_nuwm(1))**2+(p_nuwp(2)+p_nuwm(2))**2),dsig)

      ptmp=p_wp+p_b
      call filld('m_top' ,
     1     sqrt(ptmp(4)**2-ptmp(1)**2-ptmp(2)**2-ptmp(3)**2),dsig)

      ptmp = p_lwp+p_b
      call filld('m_e+_b' ,
     1     sqrt(ptmp(4)**2-ptmp(1)**2-ptmp(2)**2-ptmp(3)**2),dsig)

      ht = ht + ptlwp + ptlwm + ptmiss
      call filld('Ht' ,ht,dsig)

      ptmp = p_b+p_ab
      call filld('m_bb' ,
     1     sqrt(ptmp(4)**2-ptmp(1)**2-ptmp(2)**2-ptmp(3)**2),dsig)

      ptmp = p_top+p_tb
      call filld('m_tt' ,
     1     sqrt(ptmp(4)**2-ptmp(1)**2-ptmp(2)**2-ptmp(3)**2),dsig)
      call filld('m_tt_zoom',
     1     sqrt(ptmp(4)**2-ptmp(1)**2-ptmp(2)**2-ptmp(3)**2),dsig)

      call getdydetadphidr(p_lwp,p_lwm,dy,deta,delphi,dr)
      call filld('phi_e+_mu-' ,delphi,dsig)

c      call filld('costh_e+_mu-' ,0.1d0,-1d0,1d0)
      
      end


      function in_jet(i_part,jetvec)
      implicit none
      include 'hepevt.h'
      integer   maxtracks,maxjets
      parameter (maxtracks=nmxhep,maxjets=20)
      integer in_jet,jetvec(maxtracks),i_part
      integer j
      logical sonofhep
      external sonofhep
      do j=1,nhep
         if(jetvec(j).ne.0) then
            if(sonofhep(i_part,j)) then
               in_jet = jetvec(j)
               return
            endif
         endif
      enddo
      in_jet = 0
      end

      function prodvec2(vec1,vec2)
      implicit none
      real * 8 prodvec2,vec1(4),vec2(4)
      prodvec2=vec1(4)*vec2(4)-vec1(1)*vec2(1)
     1 -vec1(2)*vec2(2)-vec1(3)*vec2(3)
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


      subroutine pwhgfinalopshist
      implicit none
      include 'pwhg_bookhist-new.h'
      integer  f_idx,b_idx,x_idx,ixx,jxx,j,k,l
      integer  indexhist
      real * 8 num,numerr,den,denerr

      f_idx=indexhist('dF-dpT')
      b_idx=indexhist('dB-dpT')
      x_idx=indexhist('dAFB-dpT')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('dF-dpT')
      b_idx=indexhist('dB-dpT')
      x_idx=indexhist('F-gt-pT')
      call integratehist(f_idx,x_idx,1)
      x_idx=indexhist('B-gt-pT')
      call integratehist(b_idx,x_idx,1)
      x_idx=indexhist('F-lt-pT')
      call integratehist(f_idx,x_idx,-1)
      x_idx=indexhist('B-lt-pT')
      call integratehist(b_idx,x_idx,-1)

      f_idx=indexhist('F-gt-pT')
      b_idx=indexhist('B-gt-pT')
      x_idx=indexhist('AFB-gt-pT')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('F-lt-pT')
      b_idx=indexhist('B-lt-pT')
      x_idx=indexhist('AFB-lt-pT')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('dF-dm_tt')
      b_idx=indexhist('dB-dm_tt')
      x_idx=indexhist('dAFB-dm_tt')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('dF-dm_tt')
      b_idx=indexhist('dB-dm_tt')
      x_idx=indexhist('F-gt-m_tt')
      call integratehist(f_idx,x_idx,1)
      x_idx=indexhist('B-gt-m_tt')
      call integratehist(b_idx,x_idx,1)
      x_idx=indexhist('F-lt-m_tt')
      call integratehist(f_idx,x_idx,-1)
      x_idx=indexhist('B-lt-m_tt')
      call integratehist(b_idx,x_idx,-1)

      f_idx=indexhist('F-gt-m_tt')
      b_idx=indexhist('B-gt-m_tt')
      x_idx=indexhist('AFB-gt-m_tt')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('F-lt-m_tt')
      b_idx=indexhist('B-lt-m_tt')
      x_idx=indexhist('AFB-lt-m_tt')
      call get_afb_hist(f_idx,b_idx,x_idx)

      end


      subroutine integratehist(integrand,integral,direction)
      implicit none
      include 'pwhg_bookhist-new.h'
      integer  integrand,integral,direction
      integer  indexhist,ixx,jxx
      external indexhist
      if(direction.eq.1) then
        do ixx=1,nbins(integrand)
          do jxx=ixx,nbins(integrand)
            yhistarr2(ixx,integral)=yhistarr2(ixx,integral)
     1         +yhistarr2(jxx,integrand)
     1         *(xhistarr(jxx+1,integrand)-xhistarr(jxx,integrand))
            errhistarr2(ixx,integral)=errhistarr2(ixx,integral)
     1         +(errhistarr2(jxx,integrand)
     1         *(xhistarr(jxx+1,integrand)-xhistarr(jxx,integrand)))**2
          enddo
          errhistarr2(ixx,integral)=sqrt(errhistarr2(ixx,integral))
        enddo
      else if(direction.eq.-1) then
        do ixx=1,nbins(integrand)
          do jxx=ixx,1,-1
            yhistarr2(ixx,integral)=yhistarr2(ixx,integral)
     1         +yhistarr2(jxx,integrand)
     1         *(xhistarr(jxx+1,integrand)-xhistarr(jxx,integrand))
            errhistarr2(ixx,integral)=errhistarr2(ixx,integral)
     1         +(errhistarr2(jxx,integrand)
     1         *(xhistarr(jxx+1,integrand)-xhistarr(jxx,integrand)))**2
          enddo
          errhistarr2(ixx,integral)=sqrt(errhistarr2(ixx,integral))
        enddo
      else
         write(*,*) 'subroutine integratehist: error!'
         write(*,*) '--------------------------------'
         write(*,*) 'Invalid direction specified for histogram given.'
         write(*,*) 'direction=1/-1 only - integral from lowest bin to'
         write(*,*) 'highest bin or highest bin to lowest bin.'
         call exit(-1)
      endif

      end


      subroutine get_afb_hist(f_idx,b_idx,afb_idx)
      implicit none
      include 'pwhg_bookhist-new.h'
      real*8   f,ef,b,eb
      integer  ixx,f_idx,b_idx,afb_idx
      
      do ixx=1,nbins(f_idx)
         f=yhistarr2(ixx,f_idx)
         ef=errhistarr2(ixx,f_idx)
         b=yhistarr2(ixx,b_idx)
         eb=errhistarr2(ixx,b_idx)
         if((f+b).gt.0d0) then         ! Guard against division by zero.
            yhistarr2(ixx,afb_idx)=(f-b)/(f+b)
            errhistarr2(ixx,afb_idx)=2*sqrt((f*ef)**2+(b*eb)**2)
     1                              /(f+b)**2
         else
            yhistarr2(ixx,afb_idx)=0d0
            errhistarr2(ixx,afb_idx)=0d0
         endif
      enddo

      end


      function islept(j)
      implicit none
      logical islept
      integer j
      if(abs(j).ge.11.and.abs(j).le.16) then
         islept = .true.
      else
         islept = .false.
      endif
      end

      function phepDot(p_A,p_B)
      implicit none
      real * 8  phepDot
      real * 8  p_A(4),p_B(4)
      phepDot=p_A(4)*p_B(4)-p_A(1)*p_B(1)
     1       -p_A(2)*p_B(2)-p_A(3)*p_B(3)
      end

c     calculate the separation in the lego plot between the two momenta
c     p1 and p2 in azi and pseudorapidity
      function rsepn_p(p1,p2)
      implicit none
      real * 8 pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      real * 8 rsepn_p,p1(0:3),p2(0:3)
      real * 8 eta1,phi1,eta2,phi2
      real * 8 delphi
      real * 8 pseudorapidity,azi
      external pseudorapidity,azi

      phi1 = azi(p1)   
      phi2 = azi(p2)
      eta1 = pseudorapidity(p1)
      eta2 = pseudorapidity(p2)

      delphi = abs(phi1-phi2)
      if (delphi.gt.pi) then
         delphi = 2*pi-delphi
      endif
      if (delphi.lt.0 .or. delphi.gt.pi) then
         print*,' problem in rsepn. delphi = ',delphi
      endif
      rsepn_p = sqrt( (eta1-eta2)**2 + delphi**2 )
      end

      function azi(p)
      implicit none
      real * 8 pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      real * 8 azi,p(0:3)
      azi = atan(p(2)/p(1))
      if (p(1).lt.0d0) then
         if (azi.gt.0d0) then               
            azi = azi - pi
         else
            azi = azi + pi
         endif
      endif    
      end

      function pseudorapidity(p)
      implicit none
      real * 8 p(0:3),pseudorapidity
      real * 8 mod, costh
      mod = sqrt(p(1)**2+p(2)**2+p(3)**2)
      costh = p(3)/mod
      pseudorapidity=0.5*log((1+costh)/(1-costh))
      end


      subroutine buildjets(mjets,r,kt,eta,rap,phi,pjet,jetvechep,
     1                                               isForClustering)
c     arrays to reconstruct jets
      implicit  none
      include  'hepevt.h'
      integer   maxtracks,maxjets
      parameter (maxtracks=nmxhep,maxjets=20)
      integer   mjets,jetvechep(maxtracks)
      real * 8  kt(maxjets),eta(maxjets),rap(maxjets),
     1     phi(maxjets),pjet(4,maxjets)
      logical   isForClustering(maxtracks)
      real * 8  ptrack(4,maxtracks),pj(4,maxjets)
      integer   jetvec(maxtracks),itrackhep(maxtracks)
      integer   ntracks,njets
      integer   j,k,mu
      real * 8  r,palg,ptmin,pp,tmp
      logical sonofid
      external sonofid
C - Initialize arrays and counters for output jets
      kt = 0
      eta = 0
      rap = 0
      phi = 0
      pjet = 0
      jetvechep = 0

      ptrack = 0
      ntracks=0
      pj = 0
      jetvec = 0

C - Extract final state particles to feed to jet finder
      do j=1,nhep
         if(.not.isForClustering(j)) cycle
c To compare with Denner paper, limit the pseudorapidity of particles
c (since b are massless there, use rapidity)
         if(0.5d0*abs(log((phep(4,j)+phep(3,j))/(phep(4,j)-phep(3,j))))
     1        .gt.5) cycle
         if(ntracks.eq.maxtracks) then
            write(*,*) 'analyze: need to increase maxtracks!'
            write(*,*) 'ntracks: ',ntracks
            call exit(-1)
         endif
         ntracks=ntracks+1
         ptrack(:,ntracks) = phep(1:4,j)
         itrackhep(ntracks)=j
      enddo
      if (ntracks.eq.0) then
         mjets=0
         return
      endif
C --------------- C
C - Run FastJet - C
C --------------- C
C - R = 0.7   radius parameter
C - f = 0.75  overlapping fraction
      palg  = -1
      ptmin = 0d0
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets,jetvec)
      mjets=min(mjets,njets)
      if(njets.eq.0) return
c check consistency
      do k=1,ntracks
         if(jetvec(k).gt.0) then
            do mu=1,4
               pj(mu,jetvec(k))=pj(mu,jetvec(k))+ptrack(mu,k)
            enddo
         endif
      enddo
      tmp=0
      do j=1,mjets
         do mu=1,4
            tmp=tmp+abs(pj(mu,j)-pjet(mu,j))
         enddo
      enddo
      if(tmp.gt.1d-4) then
         write(*,*) ' bug!'
      endif
C --------------------------------------------------------------------- C
C - Computing arrays of useful kinematics quantities for hardest jets - C
C --------------------------------------------------------------------- C
      do j=1,mjets
         kt(j)=sqrt(pjet(1,j)**2+pjet(2,j)**2)
         pp = sqrt(kt(j)**2+pjet(3,j)**2)
         eta(j)=0.5d0*log((pp+pjet(3,j))/(pp-pjet(3,j)))
         rap(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo
      jetvechep = 0
      do j=1,ntracks
         jetvechep(itrackhep(j))=jetvec(j)
      enddo
      end

      function sonofid(m,k)
      implicit none
      logical sonofid
      integer m,k
      include  'hepevt.h'
      integer j,kcurr
      integer ngenerations
      common/cngenerations/ngenerations
      kcurr=k
      do j=1,ngenerations
         if(abs(idhep(kcurr)).eq.m) then
            sonofid = .true.
            return
         endif
         kcurr = jmohep(1,kcurr)
         if(kcurr.eq.0) then
            sonofid = .false.
            return
         endif
      enddo
      sonofid=.false.
      end


      function sonofhep(m,k)
      implicit none
      logical sonofhep
      integer m,k
      include  'hepevt.h'
      integer j,kcurr
      integer ngenerations
      common/cngenerations/ngenerations
      kcurr=k
      do j=1,ngenerations
         if(kcurr.eq.m) then
            sonofhep = .true.
            return
         endif
         kcurr = jmohep(1,kcurr)
         if(kcurr.eq.0) then
            sonofhep = .false.
            return
         endif
      enddo
      sonofhep = .false.
      end

      subroutine boost2reson4(pres,nm,pin,pout)
      implicit none
      integer nm
      real * 8 pres(4),pin(4,nm),pout(4,nm)
      real * 8 vec(3),beta
      beta=sqrt(pres(1)**2+pres(2)**2+pres(3)**2)/pres(4)
      vec(1)=pres(1)/(beta*pres(4))
      vec(2)=pres(2)/(beta*pres(4))
      vec(3)=pres(3)/(beta*pres(4))
      call mboost4(nm,vec,-beta,pin,pout)
      end


      
      subroutine mboost4(m,vec,beta,vin,vout)
c     boosts the m vectors vin(4,m) into the vectors vout(4,m) (that can
c     be the same) in the direction of vec(3) (|vec|=1) with velocity
c     beta.  Lorents convention: (t,x,y,z).
      implicit none
      integer m
      real * 8 vec(3),beta,vin(4,m),vout(4,m)
      real * 8 betav,gamma
      real * 8 vdotb
      integer ipart,idim
      gamma=1/sqrt(1-beta**2)
      do ipart=1,m
         vdotb=vin(1,ipart)*vec(1)
     #         +vin(2,ipart)*vec(2)+vin(3,ipart)*vec(3)
         do idim=1,3
            vout(idim,ipart)=vin(idim,ipart)
     #           +vec(idim)*((gamma-1)*vdotb
     #           +gamma*beta*vin(4,ipart))
         enddo
         vout(4,ipart)=gamma*(vin(4,ipart)+vdotb*beta)
      enddo
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
      dr=sqrt(deta**2+dphi**2)
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

