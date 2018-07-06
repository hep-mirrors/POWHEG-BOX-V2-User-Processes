c  The next subroutines, open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones
c  bookup  : opens histograms
c  filld   : fills histograms with data

c  init   :  opens the histograms
c  topout :  closes them
c  pwhgfill  :  fills the histograms with data

      subroutine init_hist
      implicit none

      integer icut
      character *5 prefix
      logical condition
      integer nobin
      real *8 binsize
      common/cvetoplot/binsize,nobin

      binsize=2d0
      nobin=100

      call inihists

      icut=-1
 11   continue
      icut=icut+1
      if(icut.eq.0) then
         prefix='_incl'
         condition=.true.
      elseif(icut.eq.1) then
         prefix='_1jet'
         condition=.true.
      elseif(icut.eq.3) then
         prefix='_2jet'
         condition=.true.
      elseif(icut.eq.2) then
         prefix='_fiducial'
         condition=.false.
         call bookupeqbins('total'//prefix,1d0,0d0,1d0)
         call bookupeqbins('pt_l1'//prefix,10d0,0d0,500d0)      
         call bookupeqbins('y_l1'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('pt_l2'//prefix,10d0,0d0,500d0)      
         call bookupeqbins('y_l2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('pt_miss'//prefix,10d0,0d0,500d0)      
         call bookupeqbins('ptveto'//prefix,binsize,0d0,binsize*nobin)
      elseif(icut.eq.4) then
         goto 66
      endif


      if(condition) then
         call bookupeqbins('total'//prefix,1d0,0d0,1d0)

         call bookupeqbins('m_wp'//prefix,2d0,60d0,100d0)
         call bookupeqbins('pt_wp'//prefix,10d0,0d0,500d0)      
         call bookupeqbins('eta_wp'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('y_wp'//prefix,0.2d0,-5d0,5d0)

         call bookupeqbins('m_wm'//prefix,2d0,60d0,100d0)
         call bookupeqbins('pt_wm'//prefix,10d0,0d0,500d0)      
         call bookupeqbins('eta_wm'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('y_wm'//prefix,0.2d0,-5d0,5d0)

         call bookupeqbins('m_wpwm'//prefix,10d0,0d0,1000d0)
         call bookupeqbins('pt_wpwm'//prefix,10d0,0d0,1000d0)
         call bookupeqbins('ptfine_wpwm'//prefix,2d0,0d0,200d0)
         call bookupeqbins('eta_wpwm'//prefix,0.2d0,-7d0,7d0)
         call bookupeqbins('y_wpwm'//prefix,0.2d0,-7d0,7d0)
         call bookupeqbins('mT_wpwm'//prefix,10d0,0d0,500d0)

         call bookupeqbins('pt_l1'//prefix,10d0,0d0,500d0)      
         call bookupeqbins('eta_l1'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('y_l1'//prefix,0.2d0,-5d0,5d0)

         call bookupeqbins('pt_l2'//prefix,10d0,0d0,500d0)      
         call bookupeqbins('eta_l2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('y_l2'//prefix,0.2d0,-5d0,5d0)

         call bookupeqbins('pt_miss'//prefix,10d0,0d0,500d0)      

         call bookupeqbins('pt_j1'//prefix,10d0,0d0,500d0)      
         call bookupeqbins('eta_j1'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('y_j1'//prefix,0.2d0,-5d0,5d0)

         call bookupeqbins('pt_j2'//prefix,10d0,0d0,500d0)      
         call bookupeqbins('eta_j2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('y_j2'//prefix,0.2d0,-5d0,5d0)

         call bookupeqbins('deta_wpwm'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dy_wpwm'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dphi_wpwm'//prefix,0.314d0,0d0,3.14d0)
         call bookupeqbins('dR_wpwm'//prefix,0.2d0,0d0,8d0)

         call bookupeqbins('deta_l1l2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dy_l1l2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dphi_l1l2'//prefix,0.314d0,0d0,3.14d0)
         call bookupeqbins('dR_l1l2'//prefix,0.2d0,0d0,8d0)

         call bookupeqbins('deta_j1j2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dy_j1j2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dphi_j1j2'//prefix,0.314d0,0d0,3.14d0)
         call bookupeqbins('dR_j1j2'//prefix,0.2d0,0d0,8d0)

         call bookupeqbins('deta_l1j1'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dy_l1j1'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dphi_l1j1'//prefix,0.314d0,0d0,3.14d0)
         call bookupeqbins('dR_l1j1'//prefix,0.2d0,0d0,8d0)

         call bookupeqbins('deta_l2j1'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dy_l2j1'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dphi_l2j1'//prefix,0.314d0,0d0,3.14d0)
         call bookupeqbins('dR_l2j1'//prefix,0.2d0,0d0,8d0)

         call bookupeqbins('deta_l1j2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dy_l1j2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dphi_l1j2'//prefix,0.314d0,0d0,3.14d0)
         call bookupeqbins('dR_l1j2'//prefix,0.2d0,0d0,8d0)

         call bookupeqbins('deta_l2j2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dy_l2j2'//prefix,0.2d0,-5d0,5d0)
         call bookupeqbins('dphi_l2j2'//prefix,0.314d0,0d0,3.14d0)
         call bookupeqbins('dR_l2j2'//prefix,0.2d0,0d0,8d0)

         call bookupeqbins('HTTOT'//prefix,10d0,0d0,500d0)

         call bookupeqbins('ptveto'//prefix,binsize,0d0,binsize*nobin)
      endif
      
      goto 11

 66   end


      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'pwhg_math.h' 
      include 'LesHouches.h'
      include 'cvecbos.h'
      include 'pwhg_weights.h'
C     allow multiweights 
      real * 8 dsig0,dsig(1:weights_max)

      integer icut
      character *5 prefix
      logical condition

      integer ihep,mu,i,ibin
      logical ini
      data ini/.true./
      save ini
      integer   maxjet,mjets
      parameter (maxjet=2048)
      real * 8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1    phij(maxjet),pj(4,maxjet)
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      real *8 pwp(4),pwm(4),plp(4),plm(4),pnu(4),pnubar(4),pl1(4),pl2(4)
      real *8 pt_lp,pt_lm,y_lp,y_lm,eta_lp,eta_lm,m_lp,m_lm,pt_miss
     $     ,y_miss,eta_miss,m_miss
      real *8 dy_l1l2,deta_l1l2, dphi_l1l2,dr_l1l2
      real *8 deta_wpwm,dy_wpwm,dphi_wpwm,dr_wpwm,httot
      real *8 m_wp,pt_wp,eta_wp,y_wp
      real *8 m_wm,pt_wm,eta_wm,y_wm
      real *8 m_wpwm,pt_wpwm,eta_wpwm,y_wpwm,mt_wpwm
      real *8 pt_j1,eta_j1,y_j1
      real *8 pt_j2,eta_j2,y_j2
      real *8 pt_l1,eta_l1,y_l1,m_l1
      real *8 pt_l2,eta_l2,y_l2,m_l2
      real *8 deta_j1j2,dy_j1j2,dphi_j1j2,dr_j1j2
      real *8 dy_l1j1,deta_l1j1, dphi_l1j1,dr_l1j1, dy_l2j1 ,deta_l2j1,
     $     dphi_l2j1,dr_l2j1, dy_l1j2,deta_l1j2, dphi_l1j2 ,dr_l1j2,
     $     dy_l2j2,deta_l2j2, dphi_l2j2,dr_l2j2

      integer ilp,inu,ilm,inubar,itmp,itry,nlp,nnu,nlm,nnubar
      real *8 pll(4),m_lplm,ptll,ptmiss_vec(2),dphi,rjlp(maxjet)
     $     ,rjlm(maxjet), ptrel
      real *8 powheginput
      external powheginput
      real *8 deltar
      external deltar
      real * 8 psum(4) 
      integer istfinal
      integer ixx
cccccccccccccccccccccccccccccccccccccccccccccccccc

      integer vvcut
      save vvcut

      logical wwcode
      save wwcode

      integer nobin
      real *8 binsize
      common/cvetoplot/binsize,nobin


      real *8 rr,ktjmin
      parameter (rr=0.4d0,ktjmin=25d0)
cccccccccccccccccccccccccccccccccccccccccccccccccc
      integer counterror
      save counterror
      logical pwhg_isfinite
      external pwhg_isfinite

      if (ini) then
         write (*,*)
         write (*,*) '********************************************'
         if(whcprg.eq.'NLO') then
            write(*,*) '       NLO analysis'
         elseif(WHCPRG.eq.'LHE   ') then
            write(*,*) '       LHE analysis'
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS            '
            write(*,*) 'analysis not yet implemented '
            write(*,*) 'no plots will be present at the end of the run'
          elseif(WHCPRG.eq.'PYTHIA'.or.WHCPRG.eq.'PY8   ') then
            write (*,*) '           PYTHIA ANALYSIS            '
         endif
         write(*,*) '*****************************'

         if (powheginput("#mu+mu-").eq.1) then 
            vvcut=1
         elseif (powheginput("#e+e-").eq.1) then 
            vvcut=2
         elseif (powheginput("#e+mu-").eq.1) then 
            vvcut=3
         elseif (powheginput("#mu+e-").eq.1) then 
            vvcut=4
         else
            !stop 'analysis need different decaymode' 
            write(*,*) "WARNING: analysis not devised"//
     C           " for this decay mode"
         endif

c     to run the WWJ code, wwcode needs to be set to false
         !wwcode=powheginput("#minlo").ne.1
         wwcode=.false.

c     to run analysis on WW code
c         wwcode=.true.
         
         if(weights_num.eq.0) then
            call setupmulti(1)
         else
            call setupmulti(weights_num)
         endif

         ini=.false.

         counterror=0
      endif

      if (.not.pwhg_isfinite(dsig0)) then
         counterror=counterror+1
         if(counterror.le.10) then
            print*, counterror,'  ---NAN---> ',dsig0
            do ihep=1,nhep
               write(*,*) phep(1:4,ihep)
            enddo
         endif
         return
      endif


      dsig=0
      if(weights_num.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
      endif
      if(sum(abs(dsig)).eq.0) return


      if (vvcut>4.or.vvcut==0) return

      if(whcprg.eq.'NLO'.or.WHCPRG.eq.'LHE   ') then
         if(wwcode) then
            if(nhep.ne.8.and.nhep.ne.9) then
               write(*,*) 'invalid value for nhep: ',nhep
               stop
            endif
            ilp   =6
            inu   =5
            ilm   =7
            inubar=8
         else
            if (whcprg.eq.'NLO') then
               if(nhep.ne.7.and.nhep.ne.8) then
                  write(*,*) 'invalid value for nhep: ',nhep
                  stop
               endif
               ilp   =3
               inu   =4
               ilm   =5
               inubar=6
            elseif (whcprg.eq.'LHE   ') then
               if(nhep.ne.9.and.nhep.ne.10) then
                  write(*,*) 'invalid value for nhep: ',nhep
                  stop
               endif
               ilp   =4
               inu   =5
               ilm   =7
               inubar=8
            end if
         endif
      elseif (whcprg.eq.'PYTHIA'.or.whcprg.eq.'PY8   ') then 
c         call pylist(1)
         ilp   =0
         inu   =0
         ilm   =0
         inubar=0
         nlp   =0
         nnu   =0
         nlm   =0
         nnubar=0
         psum = 0d0 
         if(whcprg.eq.'PYTHIA') then
            istfinal=1
         elseif(whcprg.eq.'PY8   ') then
            istfinal=23
         endif
         do ihep=1,nhep
            if(whcprg.eq.'PYTHIA'.and.isthep(ihep).eq.1) psum=psum+phep(1:4,ihep)
            if(whcprg.eq.'PY8   '.and.isthep(ihep).gt.0) psum=psum+phep(1:4,ihep)

            if((isthep(ihep).eq.istfinal) .and.
     1           abs(idhep(ihep)).ge.11.and.abs(idhep(ihep)).le.16
     2           ) then
               
               itmp = jmohep(1,ihep)
               
               do itry=1,10
                  if (abs(idhep(itmp)) .eq.24) then 
                     if (idhep(itmp).eq.24) then 
                        if(idhep(ihep).lt.0 .and. ilp.eq.0) then
                           ilp= ihep 
                           nlp=nlp+1
                           !write(*,*) 'found ilp', ilp, idhep(ihep),jmohep(1,ihep),itmp 
                           exit 
                        elseif(idhep(ihep).gt.0 .and. inu.eq.0) then
                           inu = ihep 
                           nnu=nnu+1
                           !write(*,*) 'found inu', ihep, idhep(ihep),jmohep(1,ihep),itmp
                           exit 
                        endif
                     elseif (idhep(itmp).eq.-24) then 
                        if(idhep(ihep).gt.0 .and. ilm.eq.0) then
                           ilm= ihep 
                           nlm=nlm+1
                           !write(*,*) 'found inu', ilm, idhep(ihep),jmohep(1,ihep),itmp
                           exit 
                        elseif(idhep(ihep).lt.0 .and. inubar.eq.0) then
                           inubar = ihep 
                           nnubar=nnubar+1
                           !write(*,*) 'found inu', inubar, idhep(ihep),jmohep(1,ihep),itmp
                           exit 
                        endif
                     endif

                  endif
                  itmp = jmohep(1,itmp)
               enddo
               !write(*,*) '==========> here: ', ilp,inu,ilm,inubar,itry 
                    
            endif
c            if (ilp*inu*ilm*inubar .ne. 0)  exit 
         enddo

         if ((ilp*inu*ilm*inubar .eq. 0) .or. (nlp*nnu*nlm*nnubar.ne.1))  then 
            write(*,*) 'errors: leptons not found' 
            write(*,*) ilp,inu,ilm,inubar
            write(*,*) nlp,nnu,nlm,nnubar
            call exit(-1) 
         endif 

         !write(*,*) '==========> Found all : ', nhep,ilp,inu,ilm,inubar,itry 
         if (psum(1)**2+psum(2)**2+psum(3)**2 .gt. 0.1d0) then 
            write(*,*) 'Energy momentum not conserved' 
            write(*,*) 'psum', psum 
c            call pylist(7)
c            call pylist(5)
            return
            call exit(-1) 
         endif

         
      else
c     PY, to be coded
         return
      endif
      
c     momenta
      plp(:)  =phep(1:4,ilp)
      pnu(:)  =phep(1:4,inu)
      pwp     =plp+pnu
            
      plm(:)   =phep(1:4,ilm)
      pnubar(:)=phep(1:4,inubar)
      pwm      =plm+pnubar

      pt_lp=sqrt(plp(1)**2+plp(2)**2)
      pt_lm=sqrt(plm(1)**2+plm(2)**2)


c     leptons
      if(pt_lp.gt.pt_lm) then
         pl1=plp
         pl2=plm
      else
         pl2=plp
         pl1=plm
      endif
      call getyetaptmass(pl1,y_l1,eta_l1,pt_l1,m_l1)
      call getyetaptmass(pl2,y_l2,eta_l2,pt_l2,m_l2)

c     neutrinos
      call getyetaptmass(pnu(1:4)+pnubar(1:4),y_miss,eta_miss,pt_miss
     $     ,m_miss)

c     Ws
      call getyetaptmass(pwp,y_wp,eta_wp,pt_wp,m_wp)
      call getyetaptmass(pwm,y_wm,eta_wm,pt_wm,m_wm)

c     WpWm system
      call getyetaptmass(pwp(1:4)+pwm(1:4),y_wpwm,eta_wpwm,pt_wpwm
     $     ,m_wpwm)
      mt_wpwm=sqrt(m_wpwm**2+pt_wpwm**2)

c     WpWm distances
      call getdydetadphidr(pwp,pwm,dy_wpwm,deta_wpwm, dphi_wpwm,dr_wpwm)

c     l1l2 distances
      call getdydetadphidr(pl1,pl2,dy_l1l2,deta_l1l2, dphi_l1l2,dr_l1l2)
    
c     ---- build jets
      mjets=0 ! Just as a precaution ...
      call buildjets(1,mjets,rr,0d0,ktj,etaj,rapj,phij,pj)

c     jets

c     Initialise jet vars to 'off-histos' values as some kind of precaution,
c     e.g. in case where mjets.lt.2 but we then fill a histo anyway that is
c     to do with the 2nd jet (although that eventuality should now be taken
c     care of with the other fixes going in now).
      pt_j1  = -1d9 ; eta_j1= -1d9    ; y_j1= -1d9
      pt_j2  = -1d9 ; eta_j2= -1d9    ; y_j2= -1d9
      dy_j1j2= -1d9 ; deta_j1j2= -1d9 ; dphi_j1j2= -1d9 ; dr_j1j2= -1d9
      dy_l1j1= -1d9 ; deta_l1j1= -1d9 ; dphi_l1j1= -1d9 ; dr_l1j1= -1d9
      dy_l2j1= -1d9 ; deta_l2j1= -1d9 ; dphi_l2j1= -1d9 ; dr_l2j1= -1d9
      dy_l1j2= -1d9 ; deta_l1j2= -1d9 ; dphi_l1j2= -1d9 ; dr_l1j2= -1d9
      dy_l2j2= -1d9 ; deta_l2j2= -1d9 ; dphi_l2j2= -1d9 ; dr_l2j2= -1d9

      if (mjets .ge. 1) then 
         pt_j1=ktj(1)
         eta_j1=etaj(1)
         y_j1=rapj(1)
      endif
      if (mjets .ge. 2) then       
         pt_j2=ktj(2)
         eta_j2=etaj(2)
         y_j2=rapj(2)
      endif
c     j1j2 distances
      if(mjets.ge.2) then
         call getdydetadphidr(pj(1:4,1),pj(1:4,2),dy_j1j2,deta_j1j2,
     $        dphi_j1j2,dr_j1j2)
      endif

c     lepton-jets
      if(mjets.ge.1) then
         call getdydetadphidr(pl1,pj(1:4,1),dy_l1j1,deta_l1j1,
     $        dphi_l1j1,dr_l1j1)
         call getdydetadphidr(pl2,pj(1:4,1),dy_l2j1,deta_l2j1,
     $        dphi_l2j1,dr_l2j1)
      endif
      if(mjets.ge.2) then
         call getdydetadphidr(pl1,pj(1:4,2),dy_l1j2,deta_l1j2,
     $        dphi_l1j2,dr_l1j2)
         call getdydetadphidr(pl2,pj(1:4,2),dy_l2j2,deta_l2j2,
     $        dphi_l2j2,dr_l2j2)
      endif

      icut=-1
 111  continue
      icut=icut+1
      if(icut.eq.0) then
         prefix='_incl'
         condition=.true.
      elseif(icut.eq.1) then
         prefix='_1jet'
         condition=(mjets.ge.1).and.(ktj(1).ge.ktjmin)
      elseif(icut.eq.3) then
         prefix='_2jet'
         condition=(mjets.ge.2).and.(ktj(1).ge.ktjmin).and.(ktj(2).ge.ktjmin)
      elseif(icut.eq.2) then
         prefix='_fiducial'
         condition=.false.
c     cuts for fiducial cross section. These values match ATLAS CONF 014-33
c     (and are designed for 8TeV)

c     common cuts        
         if (max(pt_lm,pt_lp) < 25d0) goto 77 
         if (min(pt_lm,pt_lp) < 20d0) goto 77 

c     lplm invariant mass and pt
         pll = plp+plm
         m_lplm = sqrt(pll(4)**2-pll(1)**2-pll(2)**2-pll(3)**2)         
         ptll = sqrt(pll(1)**2+pll(2)**2)

C     define ptrel 
         ptmiss_vec(1:2) = pnu(1:2)+pnubar(1:2)
         
         dphi = acos((plm(1)*ptmiss_vec(1)+plm(2)*ptmiss_vec(2))/ pt_lm
     $        /pt_miss)
         dphi = min(dphi, acos((plp(1)*ptmiss_vec(1)+plp(2)
     $        *ptmiss_vec(2))/ pt_lp/pt_miss))
C     
         if (mjets > 0) then 
            do i=1,mjets
               if (ktj(i) .gt. 25d0) then  
                  dphi = min(dphi, acos((pj(1,i)*ptmiss_vec(1)+ pj(2,i)
     $                 *ptmiss_vec(2))/ktj(i)/pt_miss))
               endif
            enddo
         endif
         if (dphi > pi/2d0) then 
            ptrel = pt_miss 
         else
            ptrel = pt_miss * sin(dphi) 
         endif

C     define rjlp, rjlm
         if (mjets > 0) then 
            do i=1,mjets
               rjlp(i) = deltar(plp,pj(1:4,i))
               rjlm(i) = deltar(plm,pj(1:4,i))
            enddo
         endif

c     apply cuts
c     VVcut=1
         if (VVcut .eq. 1) then 
            if (abs(eta_lm) > 2.4d0 .or. abs(eta_lp) > 2.4d0) goto 77 
            if (m_lplm .lt. 15d0) goto 77 
            if (abs(m_lplm-91.188d0) < 15d0) goto 77 
            if (pt_miss < 45d0 ) goto 77 
            if (ptrel < 45d0) goto 77

            if (mjets > 0) then 
               do i=1,mjets
                  if (ktj(i) > 25 .and. abs(etaj(i)) < 4.5d0) goto 77
               enddo
            endif
c     VVcut=2
         elseif (VVcut .eq. 2) then 
            if (abs(eta_lm).gt. 2.47 .or. abs(eta_lp).gt. 2.47) goto 77
            if (abs(eta_lm).gt.1.37 .and. abs(eta_lm).lt.1.52) goto 77
            if (abs(eta_lp).gt.1.37 .and. abs(eta_lp).lt.1.52) goto 77 

            if (m_lplm .lt. 15) goto 77 
            if (abs(m_lplm-91.188d0) < 15) goto 77 
            if (pt_miss < 45 ) goto 77 
            if (ptrel < 45d0) goto 77

            if (mjets > 0) then 
               do i=1,mjets
                  if (ktj(i) > 25 .and. abs(etaj(i)) < 4.5 .and. rjlp(i)
     $                 > 0.3d0 .and. rjlm(i) > 0.3d0 ) goto 77
               enddo
            endif
c     VVcut=3
         elseif (VVcut .eq. 3) then 
            if (abs(eta_lp) .gt. 2.47) goto 77
            if (abs(eta_lp).gt.1.37 .and. abs(eta_lp).lt.1.52) goto 77 
            if (abs(eta_lm) > 2.4d0)  goto 77 
            
            
            if (m_lplm .lt. 10) goto 77 
            if (pt_miss < 20d0 ) goto 77 
            if (ptrel < 15d0) goto 77

            if (mjets > 0) then 
               do i=1,mjets
                  if (ktj(i) > 25 .and. abs(etaj(i)) < 4.5 .and. rjlp(i)
     $                 > 0.3d0  ) goto 77
               enddo
            endif
c     VVcut=4
         elseif (VVcut .eq. 4) then 
            if (abs(eta_lm) .gt. 2.47) goto 77
            if (abs(eta_lm).gt.1.37 .and. abs(eta_lm).lt.1.52) goto 77 
            if (abs(eta_lp) > 2.4d0)  goto 77 
            

            if (m_lplm .lt. 10) goto 77 
            if (pt_miss < 20d0 ) goto 77 
            if (ptrel < 15d0) goto 77

            if (mjets > 0) then 
               do i=1,mjets
                  if (ktj(i) > 25 .and. abs(etaj(i)) < 4.5 .and. rjlm(i)
     $                 >0.3d0  ) goto 77
               enddo
            endif
         else
            write(*,*) 'VVcut', VVcut 
            stop 'VVcut not set'
         endif

c     fill plots
         call filld('total'//prefix,          0.5d0,     dsig)
         call filld('pt_l1'//prefix,          pt_l1      ,dsig)
         call filld('y_l1'//prefix,           y_l1       ,dsig)
         call filld('pt_l2'//prefix,          pt_l2      ,dsig)
         call filld('y_l2'//prefix,           y_l2       ,dsig)
         call filld('pt_miss'//prefix,        pt_miss,    dsig)

         if (mjets.eq. 0) then
            do ibin=1,nobin
               call filld('ptveto'//prefix, (ibin-0.5d0)*binsize , dsig)
            enddo
         elseif(mjets.ge.1) then
            do ibin=1,nobin
               if(ktj(1).le.ibin*binsize) then
               call filld('ptveto'//prefix, (ibin-0.5d0)*binsize , dsig)
               endif
            enddo
         endif

 77      continue

      elseif(icut.eq.4) then
         goto 666
      endif


      if(condition) then

         call filld('total'//prefix,          0.5d0,     dsig)
    
         call filld('m_wp'//prefix,           m_wp,      dsig)
         call filld('pt_wp'//prefix,          pt_wp,     dsig)
         call filld('eta_wp'//prefix,         eta_wp,    dsig)
         call filld('y_wp'//prefix,           y_wp,      dsig)

         call filld('m_wm'//prefix,           m_wm,      dsig)
         call filld('pt_wm'//prefix,          pt_wm,     dsig)
         call filld('eta_wm'//prefix,         eta_wm,    dsig)
         call filld('y_wm'//prefix,           y_wm,      dsig)
         
         call filld('m_wpwm'//prefix,         m_wpwm,      dsig)
         call filld('ptfine_wpwm'//prefix,    pt_wpwm,     dsig)
         call filld('pt_wpwm'//prefix,        pt_wpwm,     dsig)
         call filld('eta_wpwm'//prefix,       eta_wpwm,    dsig)
         call filld('y_wpwm'//prefix,         y_wpwm,      dsig)
         call filld('mT_wpwm'//prefix,        mt_wpwm,     dsig)

         call filld('pt_l1'//prefix,          pt_l1      ,dsig)
         call filld('eta_l1'//prefix,         eta_l1     ,dsig)
         call filld('y_l1'//prefix,           y_l1       ,dsig)

         call filld('pt_l2'//prefix,          pt_l2      ,dsig)
         call filld('eta_l2'//prefix,         eta_l2     ,dsig)
         call filld('y_l2'//prefix,           y_l2       ,dsig)

         call filld('pt_miss'//prefix,        pt_miss,    dsig)     
       
         if(mjets.ge.1) then
            call filld('pt_j1'//prefix,      pt_j1,   dsig)
            if(ktj(1).ge.ktjmin) then
            call filld('eta_j1'//prefix,     eta_j1,  dsig)
            call filld('y_j1'//prefix,       y_j1,    dsig)
            endif
         endif

         if(mjets.ge.2) then
            call filld('pt_j2'//prefix,      pt_j2,     dsig)
            if(ktj(2).ge.ktjmin) then
            call filld('eta_j2'//prefix,     eta_j2,    dsig)
            call filld('y_j2'//prefix,       y_j2,      dsig)
            endif
         endif

         call filld('deta_wpwm'//prefix,    deta_wpwm,     dsig)
         call filld('dy_wpwm'//prefix,      dy_wpwm,       dsig)
         call filld('dphi_wpwm'//prefix,    dphi_wpwm,     dsig)
         call filld('dR_wpwm'//prefix,      dr_wpwm,       dsig)

         call filld('deta_l1l2'//prefix,  deta_l1l2,     dsig)
         call filld('dy_l1l2'//prefix,    dy_l1l2,       dsig)
         call filld('dphi_l1l2'//prefix,  dphi_l1l2,     dsig)
         call filld('dR_l1l2'//prefix,    dr_l1l2,       dsig)

         if((mjets.ge.2).and.(ktj(2).ge.ktjmin)) then
            call filld('deta_j1j2'//prefix,  deta_j1j2,   dsig)
            call filld('dy_j1j2'//prefix,    dy_j1j2,     dsig)
            call filld('dphi_j1j2'//prefix,  dphi_j1j2,   dsig)
            call filld('dR_j1j2'//prefix,    dr_j1j2,     dsig)
         endif

         if((mjets.ge.1).and.(ktj(1).ge.ktjmin)) then
            call filld('deta_l1j1'//prefix,  deta_l1j1,   dsig)
            call filld('dy_l1j1'//prefix,    dy_l1j1,     dsig)
            call filld('dphi_l1j1'//prefix,  dphi_l1j1,   dsig)
            call filld('dR_l1j1'//prefix,  dr_l1j1,     dsig)

            call filld('deta_l2j1'//prefix,  deta_l2j1,   dsig)
            call filld('dy_l2j1'//prefix,    dy_l2j1,     dsig)
            call filld('dphi_l2j1'//prefix,  dphi_l2j1,   dsig)
            call filld('dR_l2j1'//prefix,  dr_l2j1,     dsig)
         endif

         if((mjets.ge.2).and.(ktj(2).ge.ktjmin)) then
            call filld('deta_l1j2'//prefix,  deta_l1j2,   dsig)
            call filld('dy_l1j2'//prefix,    dy_l1j2,     dsig)
            call filld('dphi_l1j2'//prefix,  dphi_l1j2,   dsig)
            call filld('dR_l1j2'//prefix,  dr_l1j2,     dsig)

            call filld('deta_l2j2'//prefix,  deta_l2j2,   dsig)
            call filld('dy_l2j2'//prefix,    dy_l2j2,     dsig)
            call filld('dphi_l2j2'//prefix,  dphi_l2j2,   dsig)
            call filld('dR_l2j2'//prefix,  dr_l2j2,     dsig)
         endif

         httot=pt_wp+pt_wm
         do ixx=1,mjets
            if(ktj(ixx).ge.ktjmin) httot=httot+ktj(ixx)
         enddo
c$$$         if((mjets.ge.1).and.(ktj(1).ge.ktjmin)) then
c$$$            httot=pt_wp+pt_wm
c$$$            httot=httot+ktj(1)
c$$$         elseif((mjets.ge.2).and.(ktj(2).ge.ktjmin)) then
c$$$            httot=pt_wp+pt_wm
c$$$            httot=httot+ktj(1)+ktj(2)
c$$$         endif
         call filld('HTTOT'//prefix,       httot,     dsig)
         
         if(mjets.eq.0) then
            do ibin=1,nobin
               call filld('ptveto'//prefix, (ibin-0.5d0)*binsize , dsig)
            enddo
         elseif(mjets.ge.1) then
            do ibin=1,nobin
               if(ktj(1).le.ibin*binsize) then
               call filld('ptveto'//prefix, (ibin-0.5d0)*binsize , dsig)
               endif
            enddo
         endif

      endif
      
      goto 111

 666  end


c$$$      subroutine getyetaptmass(p,y,eta,pt,mass)
c$$$      implicit none
c$$$      real * 8 p(*),y,eta,pt,mass,pv
c$$$      y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
c$$$      pt=sqrt(p(1)**2+p(2)**2)
c$$$      pv=sqrt(pt**2+p(3)**2)
c$$$      eta=0.5d0*log((pv+p(3))/(pv-p(3)))
c$$$      mass=sqrt(abs(p(4)**2-pv**2))
c$$$      end

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

      subroutine getrapidity(p,y)
      implicit none
      real * 8 p(0:3),y
      y=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      end

      subroutine getinvmass(p,m)
      implicit none
      real * 8 p(0:3),m
      m=sqrt(abs(p(0)**2-p(1)**2-p(2)**2-p(3)**2))
      end

      subroutine get_pseudorap(p,eta)
      implicit none
      real*8 p(0:3),eta,pt,th
      real *8 tiny
      parameter (tiny=1.d-5)

      pt=sqrt(p(1)**2+p(2)**2)
      if(pt.lt.tiny.and.abs(p(3)).lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      elseif(pt.lt.tiny) then   !: added this elseif
         eta=sign(1.d0,p(3))*1.d8
      else
         th=atan2(pt,p(3))
         eta=-log(tan(th/2.d0))
      endif
      end



      subroutine buildjets(iflag,mjets,rr,pptmin,kt,eta,rap,phi,pjet)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
      integer iflag,mjets
      real * 8  rr,pptmin,kt(*),eta(*),rap(*),
     1     phi(*),pjet(4,*)
      include   'hepevt.h'
      include  'LesHouches.h'
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      real * 8  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,jb
      real * 8 r,ptmin,palg,pp,tmp
      logical islepton,isnu,iswboson
      external islepton,isnu,iswboson
      logical istrack
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
         kt(j)=-1d9
         eta(j)=-1d9
         rap(j)=-1d9
         phi(j)=-1d9
      enddo
c      print*, '--- NEW EVENT ---'
      if(iflag.eq.1) then
C     - Extract final state particles to feed to jet finder
c     first make sure we are not clustering leptons
         do j=1,nhep
            if(.not.islepton(idhep(j)) .and. 
     C         .not.isnu(idhep(j)).and.
     C         .not.iswboson(idhep(j))) then

               istrack=.false.
               
               if(whcprg.eq.'NLO   ') then
                  if(isthep(j).gt.0) istrack=.true.  
               elseif(whcprg.eq.'LHE   ') then
                  if(isthep(j).gt.0) istrack=.true.
               elseif(whcprg.eq.'PYTHIA') then
                  if(isthep(j).eq.1) istrack=.true.
               elseif(whcprg.eq.'PY8   ') then
                  if(isthep(j).gt.0) istrack=.true.
               else
                  write(*,*) 'wrong whcprg in buildjets. Stop'
                  call exit(-1)
               endif

               if(istrack) then

                  if(ntracks.eq.maxtrack) then
                     write(*,*) 'analyze: need to increase maxtrack!'
                     write(*,*) 'ntracks: ',ntracks
                     stop
                  endif
                  ntracks=ntracks+1
                  ptrack(1:4,ntracks)=phep(1:4,j)
                  itrackhep(ntracks)=j
               endif
            endif
         enddo
      else
         do j=1,nup
            if (istup(j).eq.1.and..not.islepton(idup(j)) .and. 
     C           .not.isnu(idup(j))) then
               if(ntracks.eq.maxtrack) then
                  write(*,*) 'analyze: need to increase maxtrack!'
                  write(*,*) 'ntracks: ',ntracks
                  stop
               endif
               ntracks=ntracks+1
               ptrack(1:4,ntracks)=phep(1:4,j)
               itrackhep(ntracks)=j
            endif
         enddo
      endif
      if (ntracks.eq.0) then
         mjets=0
         return
      endif

c     palg=1 is standard kt, -1 is antikt
      palg=-1
      r=rr
      ptmin=pptmin

      njets=0d0 ! Just being very uberly safe ...
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets,
     $                        jetvec)
      mjets=njets
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
         eta(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         rap(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo
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
c bubble sort
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

      function iswboson(j)
      implicit none
      logical iswboson
      integer j
      if(abs(j).eq.24) then
         iswboson = .true.
      else
         iswboson = .false.
      endif
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


      subroutine boostx(p_in,pt,ptt,p_out)
      implicit none
c--- Boost input vector p_in to output vector p_out using the same
c--- transformation as required to boost massive vector pt to ptt
      double precision p_in(4),pt(4),ptt(4),p_out(4),
     . p_tmp(4),beta(3),mass,gam,bdotp
      integer j
    
      mass=pt(4)**2-pt(1)**2-pt(2)**2-pt(3)**2  
      if (mass .lt. 0d0) then
        write(6,*) 'mass**2 .lt. 0 in boostx.f, mass**2=',mass,pt
        stop
      endif
      mass=dsqrt(mass)

c--- boost to the rest frame of pt
      gam=pt(4)/mass

      bdotp=0d0
      do j=1,3
        beta(j)=-pt(j)/pt(4)
        bdotp=bdotp+beta(j)*p_in(j)
      enddo
      p_tmp(4)=gam*(p_in(4)+bdotp)
      do j=1,3
        p_tmp(j)=p_in(j)+gam*beta(j)/(1d0+gam)*(p_in(4)+p_tmp(4))
      enddo     

c--- boost from rest frame of pt to frame in which pt is identical
c--- with ptt, thus completing the transformation          
      gam=ptt(4)/mass

      bdotp=0d0
      do j=1,3
        beta(j)=+ptt(j)/ptt(4)
        bdotp=bdotp+beta(j)*p_tmp(j)
      enddo
      p_out(4)=gam*(p_tmp(4)+bdotp)
      do j=1,3
        p_out(j)=p_tmp(j)+gam*beta(j)/(1d0+gam)*(p_out(4)+p_tmp(4))
      enddo

      return
      end
      

      function deltar(p1,p2) 
      implicit none 
      real *8 p1(4), p2(4),e1,e2,r1,dely,r2,delphi,deltar 
      integer i 

      e1=dsqrt(p1(1)**2+p1(2)**2+p1(3)**2)
      e2=dsqrt(p2(1)**2+p2(2)**2+p2(3)**2)

      r1= (e1+p1(3))*(e2-p2(3))/
     .     ((e2+p2(3))*(e1-p1(3)))
      dely=0.5d0*dlog(r1)

      r2= (p1(1)*p2(1)+p1(2)*p2(2))
     .     /dsqrt((p1(1)**2+p1(2)**2)*(p2(1)**2+p2(2)**2))
      if (r2 .gt. +0.9999999D0) r2=+1D0
      if (r2 .lt. -0.9999999D0) r2=-1D0
      delphi=dacos(r2)

      deltar=dsqrt(dely**2+delphi**2)
      end
