      subroutine makeplots(book,process,n,
     $     p1,p2,p_ele,p_pos,p_nu,p_nub,pj1,pj2,weight)
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_bookhist-common.h'
      include 'pwhg_weights.h'
      include 'wwproj_parameters.h'
      include 'pwhg_rwl.h' 
      include   'hepevt.h'
      include  'LesHouches.h'
      logical book
      integer n,i

      integer process

      double precision p1(4),p2(4),p_ele(4),p_pos(4),p_nu(4),p_nub(4),pj1(4),pj2(4)
     $     ,weight(maxmulti),wt(maxmulti),tmp_wt(maxmulti)


      double precision phi_CS,th_CS 
      double precision th_CSWm,phi_CSWm
      double precision th_CSWp,phi_CSWp
      double precision costh_star,phi_star,sinphi_star,theta_star
      double precision sinth_star,cosphi_star
      double precision mV, ptV, yV,etaV 

C
      double precision Vmass,Vwidth,Wmass,Zmass,Wwidth,Zwidth
      parameter(Wmass=80.399d0,Wwidth=2.085d0)
      parameter(Zmass=91.188d0,Zwidth=2.495d0)

      character*100 filename
      character(40) prefix
      character(2) ai(9),bi(9)
      integer iWm,iWp,ii 
      logical inimulti
      data inimulti/.true./
      save inimulti
      double precision mult_Wm(9),mult_Wp(9)
      double precision x_yWW, x_dyWW, x_ptWm
      integer counterror
      logical pwhg_isfinite 
      real *8 pwp(4),pwm(4),plp(4),plm(4),pnu(4),pnubar(4),pl1(4),pl2(4)
      real *8 pt_lp,pt_lm,y_lp,y_lm,eta_lp,eta_lm,m_lp,m_lm,pt_miss
     $     ,y_miss,eta_miss,m_miss
      real *8 dy_l1l2,deta_l1l2, dphi_l1l2,dr_l1l2
      real *8 deta_ww,dy_ww,dphi_ww,dr_ww,httot
      real *8 m_wp,pt_wp,eta_wp,y_wp
      real *8 m_wm,pt_wm,eta_wm,y_wm
      real *8 m_ww,pt_ww,eta_ww,y_ww,mt_ww
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
      real * 8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1    phij(maxjet),pj(4,maxjet)
      real *8 rr,ktjmin,choose_bin
      real *8 ppartons(4,2), h_pt 
      integer npartons 
      parameter (rr=0.4d0,ktjmin=25d0)
      logical, save :: usemww 

      if(abs(process).eq.1)then
         Vmass=Wmass
         Vwidth=Wwidth
      elseif(process.eq.0)then
         Vmass=Zmass
         Vwidth=Zwidth
      endif
      wt=weight

c=======================================================================
c=== BOOKING ===========================================================
      if(book) then
         call inihists
c---------- common arrays for binning:
         filename='binvalues-WW-alldy.top'
         call read_array(ii_yWW,  nbin_yww,  arr_yWW,  filename )
         call read_array(ii_dyWW, nbin_dyWW, arr_dyWW, filename )
         call read_array(ii_ptWm, nbin_ptWm, arr_ptWm, filename )

C     build histograms for inclusive (in the number of jets) observables
         prefix=trim('_incl')
         call bookupeqbins('total'//prefix,1d0,0d0,1d0)
         
c---  Collins-Soper variables:
         call bookupeqbins('thetaCS.Wm'//prefix,0.1d0,0d0,3.2d0)
         call bookupeqbins('phiCS.Wm'//prefix,0.1d0,0d0,6.4d0)
         call bookupeqbins('thetaCS.Wp'//prefix,0.1d0,0d0,3.2d0)
         call bookupeqbins('phiCS.Wp'//prefix,0.1d0,0d0,6.4d0)

C     other variables 
         call bookupeqbins('pt_WW_25'//prefix,25d0,0d0,500d0)
         call bookupeqbins('pt_Wp_25'//prefix,25d0,0d0,500d0)
         call bookupeqbins('pt_Wp_5'//prefix,5d0,0d0,500d0)
         call bookupeqbins('pt_Wm_25'//prefix,25d0,0d0,500d0)
         call bookupeqbins('pt_Wm_5'//prefix,5d0,0d0,500d0)
         call bookupeqbins('y_WW_0.25'//prefix,0.25d0,-5d0,5d0)
         call bookupeqbins('dy_WW_0.25'//prefix,0.25d0,-5d0,5d0)

         call bookupeqbins('m_Wm_5'//prefix,5d0,0d0,1000d0)
         call bookupeqbins('m_Wm_20'//prefix,20d0,0d0,1000d0)

         call bookupeqbins('m_Wp_5'//prefix,5d0,0d0,1000d0)
         call bookupeqbins('m_Wp_20'//prefix,20d0,0d0,1000d0)

C     total 1D histo with 3D bins 
         call bookupeqbins('xy_WW'//prefix,1d0,0d0,dble(nbin_yWW))
         call bookupeqbins('xdy_WW'//prefix,1d0,0d0,dble(nbin_dyWW))
         call bookupeqbins('xpt_Wm'//prefix,1d0,0d0,dble(nbin_ptWm))


c--- 3D histograms:
c----------------------------------------------------------------
         ai =(/'A0','A1','A2','A3','A4','A5','A6','A7','si'/)
         bi =(/'B0','B1','B2','B3','B4','B5','B6','B7','si'/)
         do iWm=1,9
            do iWp=1,9
            prefix=trim(ai(iWm))//'-'//trim(bi(iWp))//'-yWW-dwYY-ptWm'
            ii=(iWm-1)*9+iWp
               call pwhgbookup3(ii,trim(prefix),'lin',
     $              1d0,0d0,dble(nbin_yWW),
     $              1d0,0d0,dble(nbin_dyWW),
     $              1d0,0d0,dble(nbin_ptWm))
            ii=(iWm-1)*9+iWp+81
            prefix=trim(ai(iWm))//'-'//trim(bi(iWp))//'-yWW-dwYY-ptWm'//'-hpt'
               call pwhgbookup3(ii,trim(prefix),'lin',
     $              1d0,0d0,dble(nbin_yWW),
     $              1d0,0d0,dble(nbin_dyWW),
     $              1d0,0d0,dble(nbin_ptWm))

            enddo  
         enddo

      else

c========================================================================
c===  ANALYSIS ==========================================================         

c---- : Here initialise multiweight histograms:
CC         write(*,*) 'weights_num ',weights_num 
CC         if(inimulti) then
CC            if(weights_num.eq.0) then
CC               call setupmulti(1)
CC            else
CC               call setupmulti(weights_num)
CC            endif
CC            inimulti=.false.
CC         endif

         if(inimulti) then
            write(*,*) ''
            write(*,*) '*****************************'
            write(*,*) ' weights_num     = ',weights_num
            write(*,*) ' rwl_num_weights = ',rwl_num_weights
            write(*,*) '*****************************'
            write(*,*) ''
            
            if(weights_num.eq.0.and.rwl_num_weights.eq.0) then
               call setupmulti(1)
            else if(weights_num.ne.0.and.rwl_num_weights.eq.0) then
               call setupmulti(weights_num)
            else if(weights_num.eq.0.and.rwl_num_weights.ne.0) then
               call setupmulti(rwl_num_weights)
            else
               call setupmulti(rwl_num_weights)
            endif
            
            if(weights_num.eq.0.and.rwl_num_weights.gt.weights_max) then
               write(*,*) 'ERROR:'
               write(*,*) 'incoming number of weights (rwl_num_weights)'
               write(*,*) 'is greater than declared dsig and bWdsig    '
               write(*,*) 'array length.'
               stop
            endif

            if (powheginput('#usemww').eq. 1) then 
               usemww = .true. 
            else
               usemww = .false. 
            endif
            if (usemww) then 
               write(*,*) 'Using dynamical mww in hpt' 
            else
               write(*,*) 'Using fixed mw in hpt' 
            endif

            if (nbin_dyww .eq. 14) then 
               write(*,*) 'Producing 3D tables for positive dy range' 
            elseif (nbin_dyww .eq. 28) then 
               write(*,*) 'Producing 3D tables for full dy range' 
            else
               write(*,*) 'nbins_dyww not well defined', nbin_dyww 
               stop 
            endif

            
            inimulti=.false.
            
            counterror=0
         endif

         if (.not.pwhg_isfinite(wt(1))) then
            counterror=counterror+1
            if(counterror.le.10) then
               print*, counterror,'  ---NAN---> ',wt(1)
            endif
            return
         endif
         
         

         psum = p_pos+p_ele+p_nu+p_nub+pj1+pj2-(p1+p2)
         if (.not.(all(abs(psum) .lt. 1d-4))) then 
            write(*,*) 'p1', p1 
            write(*,*) 'p2',p2
            write(*,*) p_pos
            write(*,*) p_ele
            write(*,*) p_nu
            write(*,*) p_nub
            write(*,*) pj1
            write(*,*) pj2
            write(*,*) 'psum /=0',psum  
!            stop 
         endif 
         plp=p_pos
         pnu=p_nu
         pwp = plp+pnu 

         plm(:)   =p_ele
         pnubar(:)=p_nub 
         pwm      =plm+pnubar
         
c     Ws
         call getyetaptmass(pwp,y_wp,eta_wp,pt_wp,m_wp)
         call getyetaptmass(pwm,y_wm,eta_wm,pt_wm,m_wm)
         
c     WpWm system
         call getyetaptmass(pwp(1:4)+pwm(1:4),y_ww,eta_ww,pt_ww,m_ww)
C         dy_WW = abs(y_wp-y_wm)
         dy_WW = y_wp-y_wm
         
c----------------------------------------------------------------------------------
c     Collins-Soper angles
c     theta, from CS paper
         do ii = 1,2 
            if (ii==1) then 
               pl1 = p_ele
               pl2 = p_nub
               yV = y_Wm
            else
               pl1 = p_nu 
               pl2 = p_pos 
               yV = y_Wp 
            endif
            
            call CS_angles22(pl2,pl1,yV,
     $           costh_star,sinth_star,cosphi_star,sinphi_star)
            theta_star=acos(costh_star)
            th_CS = theta_star 
            phi_star=acos(cosphi_star)
            if(sinphi_star.ge.0d0) then
               phi_CS=phi_star
            else
               phi_CS= 2d0*pi - phi_star
            endif

            if (ii==1) then 
               phi_CSWm = phi_CS
               th_CSWm = th_CS
            else
               phi_CSWp = phi_CS
               th_CSWp = th_CS
            endif
         enddo
         

c---  fill 1D histograms 
         prefix=trim('_incl')
         call filld('thetaCS.Wm'//prefix, th_CSWm,  wt) 
         call filld('phiCS.Wm'//prefix,   phi_CSWm, wt)
         call filld('thetaCS.Wp'//prefix, th_CSWp,  wt)
         call filld('phiCS.Wp'//prefix,   phi_CSWp, wt)
         call filld('pt_WW_25'//prefix,   pt_WW,    wt)
         call filld('pt_Wp_25'//prefix,   pt_Wp,    wt)
         call filld('pt_Wp_5'//prefix,    pt_Wp,    wt)
         call filld('pt_Wm_25'//prefix,   pt_Wm,    wt)
         call filld('pt_Wm_5'//prefix,    pt_Wm,    wt)
         call filld('y_WW_0.25'//prefix,  y_WW,     wt)
         call filld('dy_WW_0.25'//prefix, dy_WW,    wt)
         call filld('m_Wm_5'//prefix,     m_Wm,     wt)
         call filld('m_Wm_20'//prefix,    m_Wm,     wt)
         call filld('m_Wp_5'//prefix,     m_Wp,     wt)
         call filld('m_Wp_20'//prefix,    m_Wp,     wt)

Cc---------------------------------------------------------------------
Cc---  : 3D histograms:

C     if dy is negative we are NOT filling 3D plots, hence return at this point to safe time 
C         if (dy_WW .lt. 0d0) return 

c-----> jet stuff:                                                                           
      ppartons=0d0
!     find tracks for the let-algorithm                                                      
      if(nup.eq.9) then
         npartons=1
         ppartons(:,1) = pup(1:4,9)
      elseif(nup.eq.10) then
         npartons=2
         ppartons(:,1) = pup(1:4,9)
         ppartons(:,2) = pup(1:4,10)
      else
         write(*,*) 'nup = ', nup
         stop 'compute_rescaling: nup not well defined'
      endif

c-----> get h(pT) factor:                                                                    
      if (usemww) then 
         call get_hpt_factor_new(ppartons,npartons,m_ww,h_pt)
      else
         call get_hpt_factor(ppartons,npartons,h_pt)
      endif

      call fill_mult(th_CSWm,phi_CSWm,mult_Wm)
      call fill_mult(th_CSWp,phi_CSWp,mult_Wp)


C         x_yWW=choose_bin(arr_yWW,abs(Y_WW),nbin_yWW)
         x_yWW=choose_bin(arr_yWW,Y_WW,nbin_yWW)
         x_dyWW=choose_bin(arr_dyWW,dY_WW,nbin_dyWW)
         x_ptWm=choose_bin(arr_ptWm,pt_Wm,nbin_ptWm)

         call filld( 'xy_WW'//prefix,    x_yWW,      wt(1:nmulti))
         call filld('xdy_WW'//prefix,    x_dyWW,     wt(1:nmulti))
         call filld('xpt_Wm'//prefix,    x_ptWm,     wt(1:nmulti))

         do iWm=1,9
            do iWp=1,9
               ii=(iWm-1)*9+iWp
               tmp_wt(1:nmulti) = wt(1:nmulti)*mult_Wm(iWm)*mult_Wp(iWp)
               call pwhgfill3(ii,x_yWW,x_dyWW,x_ptWm,tmp_wt(1:nmulti))
               ii=(iWm-1)*9+iWp+81
               call pwhgfill3(ii,x_yWW,x_dyWW,x_ptWm,tmp_wt(1:nmulti)*h_pt)
            enddo
         enddo
      
      endif
      
      end

c///////////////////////////////////////////////////////////////////////
c///////////////////////////////////////////////////////////////////////
c///////////////////////////////////////////////////////////////////////

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      subroutine fill_mult(th_CS,phi_Cs,mult) 
      implicit none 
      real *8 th_CS, phi_CS, mult(1:9) 

      mult(1) = 10d0*cos(th_CS)**2
      mult(2) = 5d0*sin(2d0*th_CS)*cos(phi_CS)
      mult(3) = 10d0*sin(th_CS)**2*cos(2d0*phi_CS)
      mult(4) = 4d0*sin(th_CS)*cos(phi_CS)
      mult(5) = 4d0*cos(th_CS)
      mult(6) = 4d0*sin(th_CS)*sin(phi_CS)
      mult(7) = 5d0*sin(2d0*th_CS)*sin(phi_CS)
      mult(8) = 5d0*sin(th_CS)**2*sin(2d0*phi_CS)
      mult(9) = 1d0

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
