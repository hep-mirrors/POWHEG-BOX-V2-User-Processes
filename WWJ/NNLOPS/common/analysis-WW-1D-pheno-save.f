      subroutine makeplots(book,process,nn,
     $     p1,p2,p_ele,p_pos,p_nu,p_nub,pj1,pj2,weight)
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_bookhist-common.h'
      include 'pwhg_weights.h'
      include 'wwproj_parameters.h'
      include 'pwhg_rwl.h' 
      include 'hepevt.h'
      include 'LesHouches.h'
      logical book
      integer nn,process
      double precision p1(4),p2(4),p_ele(4),p_pos(4),p_nu(4),p_nub(4)
     $     ,pj1(4),pj2(4),weight(maxmulti),wt(maxmulti)
     $     ,tmp_wt(maxmulti),tmp

      character*100 filename
      character(40) prefix
      character(3) pref2

      logical inimulti
      data inimulti/.true./
      save inimulti

      integer counterror
      logical pwhg_isfinite
      real *8 powheginput,choose_bin
      external powheginput

      
      integer i,ii,iWm,iWp,icut
      
      double precision phi_CS,th_CS
      double precision th_CSWm,phi_CSWm
      double precision th_CSWp,phi_CSWp
      double precision th_CSWm_tmp,phi_CSWm_tmp
      double precision th_CSWp_tmp,phi_CSWp_tmp
      double precision dy_WW_tmp, y_WW_tmp 
      double precision costh_star,phi_star,sinphi_star,theta_star
      double precision sinth_star,cosphi_star
      double precision ptmiss,dummy,ptmiss_rel

      double precision mult_Wm(9),mult_Wp(9)
      double precision x_yWW, x_dyWW, x_ptWm, x_ptWp

      real *8 pwp(4),pwm(4),plp(4),plm(4),pnu(4),pnubar(4),pl1(4),pl2(4)
     $     ,pllnunu(4),plplm(4),pmiss(4)
      real *8 pt_lp,pt_lm,y_lp,y_lm,eta_lp,eta_lm,m_lp,m_lm,pt_miss
     $     ,y_miss,eta_miss,m_miss,y_lplm,dphi_lplm,dR,m_lplm,ptl1,ptl2
     $     ,pt_lplm,dphi_ll_nunu

      real *8 yv,deta_ww,dy_ww,dphi_ww,dr_ww,httot,dabsy_ww 
      real *8 m_wp,pt_wp,eta_wp,y_wp
      real *8 m_wm,pt_wm,eta_wm,y_wm
      real *8 m_ww,pt_ww,eta_ww,y_ww,mt_ww
      real *8 ptw1,ptw2

      real * 8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1     phij(maxjet),pj(4,maxjet)
c      integer jetvec(maxjet)
      integer njet
      real *8 etaj_1,etaj_2,ptj_1,ptj_2,rapj_1
      logical jetveto
      
      logical condition
      real *8 ptl_min,etal_max,mll_min,ptmiss_min,ptmiss_rel_min
      real *8 palg,rr,ktjmin,ptj_min1,ptj_min2,etaj_max1,etaj_max2
     $     ,dr_l_j_max
      real *8 dr_l_gamma_max


c     parameters for cuts...
      palg=-1d0
      rr=0.4d0
      ktjmin=0d0

      ptl_min       = 25d0
      etal_max      = 2.4d0
      mll_min       = 10d0
      ptmiss_min    = 20d0
      ptmiss_rel_min= 15d0
      ptj_min1      = 25d0
      etaj_max1     = 2.4d0
      ptj_min2      = 30d0
      etaj_max2     = 4.5d0
      dr_l_j_max    = 0.3d0
      dr_l_gamma_max= 0.1d0


      wt=weight

c=======================================================================
c=== BOOKING ===========================================================
      if(book) then
         
         write(*,*) '====================================='
         write(*,*) '1D-pheno analysis called'
         write(*,*) '3 sets of plots:'
         write(*,*) '-> fully inclusive'
         write(*,*) '   no leptonic cuts'
         write(*,*) '   no requirement on jets'
         write(*,*) '   jets: antikt, R= ',rr,' ktmin= ',ktjmin
         write(*,*) '-> fiducial no jetveto'
         write(*,*) '   see analysis-WW-1D-pheno.f'
         write(*,*) '-> fiducial WITH jetveto'
         write(*,*) '   see analysis-WW-1D-pheno.f'
         write(*,*) '   veto if ptj>25 and |eta|<2.4'
         write(*,*) '   OR   if ptj>30 and |eta|<4.5'
         write(*,*)
         write(*,*) '---> so far no isolation cut implemented'
         write(*,*) '====================================='
         
         
         
         
         call inihists
c---------- common arrays for binning:
         filename='binvalues-WW.top'
         call read_array(ii_yWW,  nbin_yww,  arr_yWW,  filename )
         call read_array(ii_dyWW, nbin_dyWW, arr_dyWW, filename )
         call read_array(ii_ptWm, nbin_ptWm, arr_ptWm, filename )

         icut=-1
 11      continue
         icut=icut+1
         if(icut.eq.0) then
c     inclusive
            prefix=trim('_incl')
            condition=.true.
         elseif(icut.eq.1) then
c     fiducial (NO JET VETO)
            prefix=trim('_fid')
            condition=.true.
         elseif(icut.eq.2) then
c     fiducial AND JET VETO            
            prefix=trim('_fid_veto')
            condition=.true.
         elseif(icut.eq.3) then
            write(*,*) '1D analysis: done with booking histograms'
            goto 999
         else
            write(*,*) '1D analysis: icut error in booking histograms'
            call pwhg_exit(-1)
         endif
         
         if(condition) then
         
C     build histograms for inclusive (in the number of jets) observables
            call bookupeqbins('total'//prefix,1d0,0d0,1d0)

C     total 1D histo with 3D bins 
            call bookupeqbins('xy_WW'//prefix,1d0,0d0,dble(nbin_yWW))
            call bookupeqbins('xdy_WW'//prefix,1d0,0d0,dble(nbin_dyWW))
            call bookupeqbins('xpt_Wm'//prefix,1d0,0d0,dble(nbin_ptWm))
            
c     Collins-Soper variables:
            call bookupeqbins('theta_CS.Wm_0.2'//prefix,0.2d0,0d0,3.2d0)
            call bookupeqbins('theta_CS.Wp_0.2'//prefix,0.2d0,0d0,3.2d0)           
            call bookupeqbins('phi_CS.Wm_0.2'//prefix,  0.2d0,0d0,6.4d0)
            call bookupeqbins('phi_CS.Wp_0.2'//prefix,  0.2d0,0d0,6.4d0)

C     pt variables:
            call bookupeqbins('pT.WW_5'//prefix,        5d0,0d0,1500d0)
            call bookupeqbins('pt.Wp_5'//prefix,        5d0,0d0,1500d0)
c     ------ptwp, with reweighting bins
            call bookupeqbins('pt.Wp'//prefix,  1d0,0d0,dble(nbin_ptWm))
            call bookupeqbins('pt.Wm_5'//prefix,        5d0,0d0,1500d0)
c     ------ptwm, with reweighting bins
            call bookupeqbins('pt.Wm'//prefix,  1d0,0d0,dble(nbin_ptWm))

c     rapidities:
            call bookupeqbins('y.Wp_0.1'//prefix,       0.1d0,-5d0,5d0)
            call bookupeqbins('y.Wm_0.1'//prefix,       0.1d0,-5d0,5d0)
c     ------this is the system made by the two charged leptons
            call bookupeqbins('y.emu_0.1'//prefix,      0.1d0,-5d0,5d0)
            call bookupeqbins('dy.WpWm_0.1'//prefix,    0.1d0,-5d0,5d0)

            call bookupeqbins('dabsy.WpWm_FBasymmetry_0.1'//prefix,    0.1d0,-10d0,10d0)


c     ------dy, with reweighting bins
            call bookupeqbins('dy.WpWm'//prefix,1d0,0d0,dble(nbin_dyWW))
            call bookupeqbins('y.WW_0.1'//prefix,       0.1d0,-5d0,5d0)
c     ------yWW, with reweighting bins
            call bookupeqbins('y.WW'//prefix,1d0,0d0,dble(nbin_dyWW))

c     invariant masses:
            call bookupeqbins('m.Wm_1.0'//prefix,      1d0,50d0,100d0)
            call bookupeqbins('m.Wm_5.0'//prefix,      5d0,0d0,1000d0)
            call bookupeqbins('m.Wp_1.0'//prefix,      1d0,50d0,100d0)
            call bookupeqbins('m.Wp_5.0'//prefix,      5d0,0d0,1000d0)

c     jets:
c     distributionname        =       pTveto.jet_log
c     distributiontype        =       pTveto
c     particle 1              =       jet 1
c     startpoint              =       1.

c     binnumber               =       101
c     endpoint                =       1000.
c     binningtype             =       logarithmic
            call bookupeqbins('pT.jet1_5'//prefix,     5d0,0d0,1000d0)
            call bookupeqbins('pT.jet1_1'//prefix,     1d0,0d0,200d0)
            call bookupeqbins('y.jet1_0.1'//prefix,      0.1d0,-5d0,5d0)
            call bookupeqbins('eta.jet1_0.1'//prefix,      0.1d0,-5d0,5d0)
            call bookupeqbins('pTveto.jet_log'//prefix, 1d0,1d0,100d0)
            call bookupeqbins('pTveto.jet_lin_2.5'//prefix,2.5d0,0d0,500d0)

c     lepton and lepton pairs
            call bookupeqbins('m.leplep_5'//prefix,      5d0,0d0,1000d0)
            call bookupeqbins('pT.miss_5'//prefix,       5d0,0d0,1500d0)

            call bookupeqbins('pT.lep1st_5'//prefix,     5d0,0d0,1000d0)
            call bookupeqbins('pT.lep2nd_5'//prefix,     5d0,0d0,1000d0)
            call bookupeqbins('pT.leplep_5'//prefix,     5d0,0d0,1000d0)
            call bookupeqbins('dphi.leplep_0.1'//prefix,0.1d0,0d0,3.2d0)
            call bookupeqbins('dphi.emu_0.1'//prefix,   0.1d0,0d0,3.2d0)

c     other observables
            call bookupeqbins('mT.WW_5'//prefix,         5d0,0d0,1500d0)           
            call bookupeqbins('dphi.leplep_nunu_0.1'//prefix,0.1d0,0d0,3.2d0)
            call bookupeqbins('m.WW_5'//prefix,         5d0,0d0,2000d0)           
       
            call bookupeqbins('pT.W1_5'//prefix,     5d0,0d0,1000d0)
            call bookupeqbins('pT.W2_5'//prefix,     5d0,0d0,500d0)
            
            call bookupeqbins('ChargeAsym_m.WW_5'//prefix,         5d0,0d0,2000d0)           

c     CS momenta
            do i=1,8
               write (pref2, "(A2,I1)") "1-",i
               call bookupeqbins('dy.WpWm_mom'//pref2//prefix,
     c              1d0,0d0,dble(nbin_dyWW))
               call bookupeqbins('y.WpWm_mom'//pref2//prefix,
     c              1d0,0d0,dble(nbin_yWW))
            enddo
            do i=1,8
               write (pref2, "(A2,I1)") "2-",i
               call bookupeqbins('dy.WpWm_mom'//pref2//prefix,
     c              1d0,0d0,dble(nbin_dyWW))
               call bookupeqbins('y.WpWm_mom'//pref2//prefix,
     c              1d0,0d0,dble(nbin_yWW))
            enddo
            
         endif
         goto 11
         
      else

c========================================================================
c===  ANALYSIS ==========================================================         


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
            
            inimulti=.false.
            
            counterror=0
         endif

c     check if there's a NaN in weights
         if (.not.pwhg_isfinite(wt(1))) then
            counterror=counterror+1
            if(counterror.le.10) then
               print*, counterror,'  ---NAN---> ',wt(1)
            endif
            return
         endif

c     ER: This can't work with PYTHIA, so I comment it.
c$$$c     check momentum conservations
c$$$         psum = p_pos+p_ele+p_nu+p_nub+pj1+pj2-(p1+p2)
c$$$         if (.not.(all(abs(psum) .lt. 1d-4))) then 
c$$$            write(*,*) 'p1', p1 
c$$$            write(*,*) 'p2',p2
c$$$            write(*,*) p_pos
c$$$            write(*,*) p_ele
c$$$            write(*,*) p_nu
c$$$            write(*,*) p_nub
c$$$            write(*,*) pj1
c$$$            write(*,*) pj2
c$$$            write(*,*) 'psum /=0',psum  
c$$$!            stop 
c$$$  endif

c     compute observables
         
c     leptons and Ws
         plp      = p_pos !this is the POSITRON (e+)
         pnu      = p_nu
         pwp      = plp+pnu 
         
         plm      = p_ele !this is the MUON (mu-)
         pnubar   = p_nub 
         pwm      = plm+pnubar

         call getyetaptmass(plp,y_lp,dummy,pt_lp,dummy)
         call getyetaptmass(plm,y_lm,dummy,pt_lm,dummy)
         if(pt_lm.gt.pt_lp) then
            ptl1=pt_lm
            ptl2=pt_lp
         else
            ptl1=pt_lp
            ptl2=pt_lm
         endif

         plplm    = p_pos+p_ele
         call getyetaptmass(plplm,y_lplm,dummy,pt_lplm,m_lplm)

         call getdydetadphidr(plp,plm,dummy,dummy,dphi_lplm,dummy)
         
         pmiss    = p_nu+p_nub
         call getdydetadphidr(plplm,pmiss,dummy,dummy,dphi_ll_nunu
     $        ,dummy)
         ptmiss   = sqrt(pmiss(1)**2+pmiss(2)**2)
         pllnunu  = plplm + pmiss

         ptmiss_rel = ptmiss * sin(dphi_lplm)
         


         mt_ww = sqrt(dabs((pt_lp+pt_lm+ptmiss)**2 - pllnunu(1)**2 -
     $        pllnunu(2)**2 ))
         
c     Ws
         call getyetaptmass(pwp,y_wp,eta_wp,pt_wp,m_wp)
         call getyetaptmass(pwm,y_wm,eta_wm,pt_wm,m_wm)
         if(pt_wm.gt.pt_wp) then
            ptW1=pt_wm
            ptW2=pt_wp
         else
            ptW1=pt_wp
            ptW2=pt_wm
      endif
         
c     WpWm system
         call getyetaptmass(pwp(1:4)+pwm(1:4),y_ww,eta_ww,pt_ww,m_ww)
!         dy_WW = abs(y_wp-y_wm)
         dy_WW = y_wp-y_wm
         dabsy_ww  = abs(y_wp)-abs(y_wm) 


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

c     JETS
         if(nn.eq.7) then
            ntracks=1
            ptrack=0d0
            ptrack(:,1) = pj1(:)
         elseif(nn.eq.8) then
            ntracks=2
            ptrack=0d0
            ptrack(:,1) = pj1(:)
            ptrack(:,2) = pj2(:)
         elseif(nn.eq.1234567890) then
c     ntracks and ptracks already in common block !
c     Don't clean ptrack here, as it was filled in the analysis wrapper!!!!
         else
            write(*,*)'this should not happen!'
            write(*,*)'check the code!'
            stop
         endif
c     Anti-kt algorithm
c-----Initialise parameters and call jet algorithm
         pj=0d0
         ktj=0d0
         etaj=0d0
         rapj=0d0
         phij=0d0
         njet=0
         call buildjets(1,njet,rr,ktjmin,ktj,etaj,rapj,phij,pj)

C     compute jetveto condition (needed for icut == 2) 
         jetveto=.false.
         do i=1,njet
            
c     jet veto: here jets are only those far from electrons
            call getdydetadphidr(pj(:,i),plp,dummy,dummy,dummy,dR)
            if(dR.gt.dr_l_j_max) then
C     apply (later) jetveto on events with a jet with ptj > 25 GeV and |eta| < 2.4 or  
C     with a jet with  ptj > 30 GeV and |eta| < 4.5 or  
C     only jets not too close to the electron are vetoed on 
               if(ktj(i).gt.ptj_min1 .and.
     $              dabs(etaj(i)).lt.etaj_max1) then
                  jetveto=.true.
                  goto 123
               endif
               if(ktj(i).gt.ptj_min2 .and.
     $              dabs(etaj(i)).lt.etaj_max2) then
                  jetveto=.true.
                  goto 123
               endif
            endif
         enddo
 123     continue
         


c     cuts

         icut=-1
 111     continue
         icut=icut+1
         if(icut.eq.0) then
c     inclusive
            prefix=trim('_incl')
            condition=.true.
         elseif(icut.eq.1) then
c     fiducial (NO JET VETO)
            prefix=trim('_fid')
            condition=.true.
            condition=condition.and.
     c           pt_lp.gt.ptl_min.and.
     c           pt_lm.gt.ptl_min.and.
     c           abs(eta_lp).lt.etal_max.and.
     c           abs(eta_lm).lt.etal_max.and.
     c           ptmiss.gt.ptmiss_min.and.
     c           ptmiss_rel.gt.ptmiss_rel_min
         elseif(icut.eq.2) then
c     fiducial AND JET VETO
            prefix=trim('_fid_veto')
            condition=.true.
            condition=condition.and.
     c           pt_lp.gt.ptl_min.and.
     c           pt_lm.gt.ptl_min.and.
     c           abs(eta_lp).lt.etal_max.and.
     c           abs(eta_lm).lt.etal_max.and.
     c           ptmiss.gt.ptmiss_min.and.
     c           ptmiss_rel.gt.ptmiss_rel_min.and.
     c           (.not.jetveto)
         elseif(icut.eq.3) then
            goto 999
         else
            write(*,*) '1D analysis: icut error in booking histograms'
            call pwhg_exit(-1)
         endif

         if(condition) then

C     find leading jet 
            ptj_1=-1d0
            etaj_1=-1000d0
            do i=1,njet
               if(icut.eq.0) then
c     here find hardest jet, no other requirement on jet cuts
                  if(ktj(i).gt.ptj_1) then
                     ptj_1=ktj(i)
                     etaj_1=etaj(i)
                     rapj_1=rapj(i)
                  endif
               elseif(icut.eq.1) then
c     here find hardest jet, but only in central rapidity region
                  if(ktj(i).gt.ptj_1 .and. dabs(etaj(i)).lt.etaj_max2) then
                     ptj_1=ktj(i)
                     etaj_1=etaj(i)
                     rapj_1=rapj(i)
                  endif
               endif
            enddo
            

c     fill histograms
            call filld('total'//prefix,      0.5d0,    wt)
            
            x_yWW=choose_bin(arr_yWW,Y_WW,nbin_yWW)
            x_dyWW=choose_bin(arr_dyWW,dY_WW,nbin_dyWW)
            x_ptWm=choose_bin(arr_ptWm,pt_Wm,nbin_ptWm)
            x_ptWp=choose_bin(arr_ptWm,pt_Wp,nbin_ptWm)
            call filld('xy_WW'//prefix,    x_yWW,      wt)
            call filld('xdy_WW'//prefix,   x_dyWW,     wt)
            call filld('xpt_Wm'//prefix,   x_ptWm,     wt)
c     ...
            call filld('theta_CS.Wm_0.2'//prefix, th_CSWm, wt)
            call filld('theta_CS.Wp_0.2'//prefix, th_CSWp, wt)
            call filld('phi_CS.Wm_0.2'//prefix,  phi_CSWm, wt) 
            call filld('phi_CS.Wp_0.2'//prefix,  phi_CSWp, wt) 
            call filld('pT.WW_5'//prefix, pt_ww, wt)       
            call filld('pt.Wp_5'//prefix, pt_wp, wt)
c     ------ptwp, with reweighting bins
            call filld('pt.Wp'//prefix,  x_ptwp, wt)
            call filld('pt.Wm_5'//prefix, pt_wm, wt)
c     ------ptwm, with reweighting bins
            call filld('pt.Wm'//prefix,  x_ptwm, wt)
            call filld('y.Wp_0.1'//prefix, y_wp, wt)
            call filld('y.Wm_0.1'//prefix, y_wm, wt)
            call filld('y.emu_0.1'//prefix,y_lplm, wt)
            call filld('dy.WpWm_0.1'//prefix, dy_ww, wt)

            call filld('dabsy.WpWm_FBasymmetry_0.1'//prefix, dabsy_ww, wt)

!            write(*,*) 'y_wp, y_wm, dabsy_ww,sign(dabsy_ww)',y_wp, y_wm, dabsy_ww,sign(1d0,dabsy_ww)
            call filld('ChargeAsym_m.WW_5'//prefix, m_ww,wt*sign(1d0,dabsy_ww))           

c     ------dy, with reweighting bins
            call filld('dy.WpWm'//prefix,x_dyww, wt)
            call filld('y.WW_0.1'//prefix,y_ww, wt)
c     ------yWW, with reweighting bins
            call filld('y.WW'//prefix,x_yww, wt)
            call filld('m.Wm_1.0'//prefix,m_wm, wt)
            call filld('m.Wm_5.0'//prefix,m_wm, wt)
            call filld('m.Wp_1.0'//prefix,m_wp, wt)
            call filld('m.Wp_5.0'//prefix,m_wp, wt)
            
            call filld('pT.jet1_5'//prefix,ptj_1, wt)
            call filld('pT.jet1_1'//prefix,ptj_1, wt)
            call filld('y.jet1_0.1'//prefix, rapj_1, wt)
            call filld('eta.jet1_0.1'//prefix, etaj_1, wt)
            if (ptj_1 .gt. 0d0) then 
               tmp = dlog10(ptj_1)
            else
               tmp = -100 
            endif
            call filld('pTveto.jet_log'//prefix, tmp, wt)
            call filld('pTveto.jet_lin_2.5'//prefix, ptj_1, wt)

            call filld('m.leplep_5'//prefix,m_lplm, wt)  
            call filld('pT.miss_5'//prefix,ptmiss, wt)   
            call filld('pT.lep1st_5'//prefix, ptl1, wt)
            call filld('pT.lep2nd_5'//prefix, ptl2, wt)
            call filld('pT.leplep_5'//prefix, pt_lplm, wt)
            call filld('dphi.leplep_0.1'//prefix,dphi_lplm, wt)
            call filld('dphi.emu_0.1'//prefix,dphi_lplm, wt)   

            call filld('mT.WW_5'//prefix,mt_ww, wt)
            call filld('dphi.leplep_nunu_0.1'//prefix,dphi_ll_nunu, wt)
            call filld('m.WW_5'//prefix,m_ww, wt)     
            call filld('pT.W1_5'//prefix,ptw1, wt)    
            call filld('pT.W2_5'//prefix,ptw2, wt)    

Cc     CS momenta 
CC     we are storing only positive values of the dy_WW = y_Wp - y_Wm distribution 
CC     if the event has negative dy_WW then use mirrow symmetry, i.e. 
CC     that f(y_WW, dy_WW) = d^2 sigma / d y_WW d dy_WW has the symmtry 
CC     f(y,dy) = f(-y, -dy) 
C            if (dy_WW .lt. 0d0) then 
C               y_WW_tmp = -y_WW 
C               dy_WW_tmp = -dy_WW 
C               th_CSWm_tmp = pi - th_CSWm
C               th_CSWp_tmp = pi - th_CSWp
C               phi_CSWm_tmp = 2d0*pi - phi_CSWm
C               phi_CSWp_tmp = 2d0*pi - phi_CSWp
C               x_yWW=choose_bin(arr_yWW,Y_WW_tmp,nbin_yWW)
C               x_dyWW=choose_bin(arr_dyWW,dY_WW_tmp,nbin_dyWW)
C            endif
C            write(*,*) 'x_dyWW, dy_ww',x_dyWW, dy_ww

            call fill_mult(th_CSWm,phi_CSWm,mult_Wm)
            call fill_mult(th_CSWp,phi_CSWp,mult_Wp)
            do i=1,8
               write (pref2, "(A2,I1)") "1-",i
               call filld('dy.WpWm_mom'//pref2//prefix,
     c              x_dyww , mult_Wm(i) * wt)
               call filld('y.WpWm_mom'//pref2//prefix,
     c              x_yww , mult_Wm(i) * wt)
            enddo
            do i=1,8
               write (pref2, "(A2,I1)") "2-",i
               call filld('dy.WpWm_mom'//pref2//prefix,
     c              x_dyww , mult_Wp(i) * wt)
               call filld('y.WpWm_mom'//pref2//prefix,
     c              x_yww , mult_Wp(i) * wt)
            enddo

 
            
         endif

         goto 111

         
      endif

 999  end

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



      subroutine buildjets(iflag,mjets,rr,pptmin,kt_loc,eta_loc,rap_loc,phi_loc,pjet_loc)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
      integer iflag,mjets
      real * 8  rr,pptmin,kt_loc(*),eta_loc(*),rap_loc(*),
     1     phi_loc(*),pjet_loc(4,*)
      include  'hepevt.h'
      include  'LesHouches.h'
      include 'wwproj_parameters.h'
c      integer   maxtrack,maxjet
c      parameter (maxtrack=2048,maxjet=2048)
      real * 8  pj_loc(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks_loc,njets
      integer   j,k,mu,jb,i
      real * 8 r,ptmin,palg,pp,tmp,dummy 
      logical islepton,isnu,iswboson
      external islepton,isnu,iswboson
      logical istrack
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
C - Initialize arrays and counters for output jets
      jetvec=0
      pjet_loc(:,:maxjet)=0d0
      pj_loc(:,:maxjet)=0d0
      kt_loc(:maxjet)=0d0
      eta_loc(:maxjet)=0d0
      rap_loc(:maxjet)=0d0
      phi_loc(:maxjet)=0d0

c      print*, '--- NEW EVENT ---'
      if(iflag.eq.1) then
C     - Extract final state particles to feed to jet finder
c     first make sure we are not clustering leptons
         
c     Normally, here I should look for final state particles, etc
c     but I've already done this in the wrapper...
c$$$         do j=1,nhep
c$$$            if(.not.islepton(idhep(j)) .and. 
c$$$     C         .not.isnu(idhep(j)).and.
c$$$     C         .not.iswboson(idhep(j))) then
c$$$
c$$$               istrack=.false.
c$$$               
c$$$               if(whcprg.eq.'NLO   ') then
c$$$                  if(isthep(j).gt.0) istrack=.true.  
c$$$               elseif(whcprg.eq.'LHE   ') then
c$$$                  if(isthep(j).gt.0) istrack=.true.
c$$$               elseif(whcprg.eq.'PYTHIA') then
c$$$                  if(isthep(j).eq.1) istrack=.true.
c$$$               elseif(whcprg.eq.'PY8   ') then
c$$$                  if(isthep(j).gt.0) istrack=.true.
c$$$               else
c$$$                  write(*,*) 'wrong whcprg in buildjets. Stop'
c$$$                  call exit(-1)
c$$$               endif
c$$$
c$$$               if(istrack) then
c$$$
c$$$                  if(ntracks.eq.maxtrack) then
c$$$                     write(*,*) 'analyze: need to increase maxtrack!'
c$$$                     write(*,*) 'ntracks: ',ntracks
c$$$                     stop
c$$$                  endif
c$$$                  ntracks=ntracks+1
c$$$                  ptrack(1:4,ntracks)=phep(1:4,j)
c$$$                  itrackhep(ntracks)=j
c$$$               endif
c$$$            endif
c$$$  enddo

c     ntracks and ptrack is already defined in common block!!!
      else
         write(*,*) 'This has not been validated for WWNNLOPS'
         stop
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
      palg=-1d0
      r=rr
      ptmin=pptmin

      njets=0d0 ! Just being very uberly safe ...
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets,
     $     jetvec)
      mjets=njets
      pjet_loc(:,:njets) = pjet(:,:njets) 
      if(njets.eq.0) return
c check consistency
      do k=1,ntracks
         if(jetvec(k).gt.0) then
            do mu=1,4
               pj_loc(mu,jetvec(k))=pj_loc(mu,jetvec(k))+ptrack(mu,k)
            enddo
         endif
      enddo
      tmp=0
      do j=1,mjets
         do mu=1,4
            tmp=tmp+abs(pj_loc(mu,j)-pjet_loc(mu,j))
         enddo
      enddo
      if(tmp.gt.1d-4) then
         write(*,*) ' bug!',tmp
      endif
C --------------------------------------------------------------------- C
C - Computing arrays of useful kinematics quantities for hardest jets - C
C --------------------------------------------------------------------- C
      do j=1,mjets
         call getyetaptmass(pjet_loc(:,j),rap_loc(j),eta_loc(j),kt_loc(j),dummy)
C         kt_loc(j)=sqrt(pjet_loc(1,j)**2+pjet_loc(2,j)**2)
C         pp = sqrt(kt_loc(j)**2+pjet_loc(3,j)**2)
C         eta_loc(j)=0.5d0*log((pjet_loc(4,j)+pjet_loc(3,j))/(pjet_loc(4,j)-pjet_loc(3,j)))
CC     GZ strictly speaking not correct for massive jets 
C         rap_loc(j)=0.5d0*log((pjet_loc(4,j)+pjet_loc(3,j))/(pjet_loc(4,j)-pjet_loc(3,j)))
         phi_loc(j)=atan2(pjet_loc(2,j),pjet_loc(1,j))
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
