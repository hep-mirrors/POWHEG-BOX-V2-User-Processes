      subroutine init_hist
      implicit none
      call inihists
      call reweight_bookupeqbins("total", 1d0, 0d0, 1d0)
      call reweight_bookup("../rw_code/bins_equal_xs.dat")
      call reweight_bookup3d("../rw_code/binsSTDataAlt_16_Jan_17.txt")
      end


      subroutine analysis(dsig0,file)
      use auxiliary
      implicit none
      real * 8 dsig0
      include 'hepevt.h'
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_weights.h'
      include 'pwhg_rwl.h'
      include 'pwhg_st.h'
      character * 50 file
      real * 8 dsig(30)
      logical  ini
      data     ini/.true./
      save     ini
      integer  i,j
      integer  ihep
      real*8   expaln_w1,expaln_w2,expaln_w3,expaln_w4,expaln_w5
      real*8   expaln_w6,expaln_w7
      real*8   expaln_stb_w1,expaln_stb_w2,expaln_stb_w3,expaln_stb_w4
      real*8   expaln_stb_w5,expaln_stb_w6,expaln_stb_w7
      real*8   expaln_4_w1,expaln_2_w1,expaln_05_w1,expaln_025_w1
C -----------------------------------
      real*8   p(0:3,nlegreal),q2merge
      integer  flav(nlegreal)
      real*8   pSave(0:3,nlegreal)
      integer  flavSave(nlegreal)
      integer  onem,nq
      parameter(onem=1000000)
      real *8  tMom(0:3),bmom(0:3),Wmom(0:3),jMom(0:3),tAndjMom(0:3)
      real *8  pt_top,  y_top,  eta_top,  m_top
      real *8  pt_jet,  y_jet,  eta_jet,  m_jet
      real *8  pt_w,    y_w,    eta_w,    m_w
      real *8  pt_tAndj,y_tAndj,eta_tAndj,m_tAndj
      real *8  ycm,sshat,Q2W
      integer  nUnClusteredPart,nClusteredPart
      real *8  Q2,tmp,m2top,two_pt_dot_pb,ytopMinusycm
      real *8  bigL,lambda,IRcutoff2,q2mergeMin
      save     IRcutoff2
      real *8  beta0,alphaS
      save     beta0
      real *8  pwhg_alphas
      external pwhg_alphas
      real *8  exponent
      real *8  Q_rescaling
      save     Q_rescaling
      integer  use_nn
      save     use_nn
      integer  ttype
      save     ttype

      if(ini) then

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

         st_lambda5MSB=0.2083925746551497
         st_nlight=5
         beta0 = (11d0*3-2d0*5)/(12*pi)
         alphaS=pwhg_alphas(91.188d0**2,st_lambda5MSB,st_nlight)

         IRcutoff2=(st_lambda5MSB*1.3d0)**2d0

         write(*,*) ''
         write(*,*) '**********************************'
         write(*,*) ' '
         write(*,*) ' st_lambda5MSB   = ',st_lambda5MSB
         write(*,*) ' st_nlight       = ',st_nlight
         write(*,*) ' pwhg_alphas(Mz) = ',alphaS
         write(*,*) ' '
         write(*,*) ' IR cut-off      = ',IRcutoff2
         write(*,*) ' '
         write(*,*) '**********************************'
         write(*,*) ''
         write(*,*) ''
         write(*,*) '**********************************'
         write(*,*) ' '
         write(*,*) ' Enter Q rescaling factor:'
         write(*,*) ''
         read(*,*) Q_rescaling
         write(*,*) ''
         write(*,*) ' Q rescaling factor = ',Q_rescaling
         write(*,*) ' '
         write(*,*) '**********************************'
         write(*,*) ' '
         write(*,*) ' Top (1) or Anti-Top (-1):'
         write(*,*) ''
         read(*,*) ttype
         write(*,*) ''
         write(*,*) ' read ttype = ',ttype
         write(*,*) ' '
         write(*,*) '**********************************'
         write(*,*) ' '
         write(*,*) ' Do you want to apply NN correction?:'
         write(*,*) ' '
         write(*,*) ' 0: No                   '
         write(*,*) ' 1: Yes (8 scales, Q=1.0 GeV)'
         write(*,*) ' 2: Yes (central scale, Q=4.0 GeV)'
         write(*,*) ' 3: Yes (central scale, Q=2.0 GeV)'
         write(*,*) ' 4: Yes (central scale, Q=0.5 GeV)'
         write(*,*) ' 5: Yes (central scale, Q=0.25 GeV)'
         write(*,*) ''
         read(*,*) use_nn
         write(*,*) ''
         write(*,*) ' NN option = ',use_nn
         write(*,*) ' '
         write(*,*) '**********************************'
         if (use_nn.gt.5.or.use_nn.lt.0) then
            write(*,*) 'pwhg_analysis-phiB.f:'
            write(*,*) 'options must be 0-5!'
            stop
         else if(use_nn.ge.1)then
            if (use_nn.eq.1)then
               Q_rescaling = 1.0d0
            elseif (use_nn.eq.2)then
               Q_rescaling = 4.0d0
            elseif (use_nn.eq.3)then
               Q_rescaling = 2.0d0
            elseif (use_nn.eq.4)then
               Q_rescaling = 0.5d0
            elseif (use_nn.eq.5)then
               Q_rescaling = 0.25d0
            endif
            write(*,*) ' Q_rescale overwrite: ', Q_rescaling
            call reweight_lhe(adjustl(trim(file)))
         endif

         ini=.false.
      endif

      dsig=0
      if(weights_num.eq.0.and.rwl_num_weights.eq.0) then
         dsig(1)=dsig0
      else if(weights_num.ne.0.and.rwl_num_weights.eq.0) then
         dsig(1:weights_num)=weights_val(1:weights_num)
      else if(weights_num.eq.0.and.rwl_num_weights.ne.0) then
         dsig(1:rwl_num_weights)=rwl_weights(1:rwl_num_weights)
      else ! Have somehow both types of weights, take weight second vector ... 
         dsig(1:rwl_num_weights)=rwl_weights(1:rwl_num_weights)
      endif

C      if(sum(abs(dsig)).eq.0) return

C - Initialization
      p=0d0
      flav=onem
      if(nhep>nlegreal) then
         stop 'pwhg_analysis-phib: nhep> nlegreal'
      endif

C - Make a copy of phep with energy in the standard position
C - get flavour and assign 0 to gluon
      flav(1:nhep) = idhep(1:nhep)
      do ihep=1,nhep
         p(0,ihep)   = phep(4,ihep)
         p(1:3,ihep) = phep(1:3,ihep)
         if(flav(ihep)==21) flav(ihep) = 0 ! set flavour of gluon to 0
      enddo
C - If running on an anti-top file flip x,y,z momentum components and
C - flip PDG ids by a minus sign. Also re-order first two particles in
C - the arrays to be fed to the cluster event thing, s.t. the first
C - goes in the +z direction and the second goes in the -z direction.
      if(ttype.eq.-1) then
C - Make another copy in case we need to shuffle things when ttype = -1
         flavSave=onem
         flavSave(1:nhep) = idhep(1:nhep)
         do ihep=1,nhep
            pSave(0,ihep)   = phep(4,ihep)
            pSave(1:3,ihep) = phep(1:3,ihep)
            if(flavSave(ihep)==21) flavSave(ihep) = 0 ! set gluon id to 0
         enddo
C - Now we can start doing the flips ...
         if(flavSave(2).ne.onem) then
            flav(1)  = -flavSave(2)
         else
            flav(1)  = onem
         endif
         p(0,1)   =  pSave(0,2)
         p(1:3,1) = -pSave(1:3,2)
         if(flavSave(1).ne.onem) then
            flav(2)  = -flavSave(1)
         else
            flav(2)  = onem
         endif
         p(0,2)   =  pSave(0,1)
         p(1:3,2) = -pSave(1:3,1)
         do j=3,nhep
            if(flavSave(j).ne.onem) then
               flav(j) = -flavSave(j)
            else
               flav(j) = onem
            endif
            p(0,j)   =  pSave(0,j)
            p(1:3,j) = -pSave(1:3,j)
         enddo
      endif

C - Clustering event
      nUnClusteredPart=size(flav)
      jMom=0d0 
CXXX      call ClusterEvent(p,flav, q2merge,tMom,bMom,WMom,jMom)
C - Use this version optionally to generate clusterings of states coming
C - out of the standard clustering which still have 5 or 6 particles in
C - them, down to 4-particles, in an intelligent way compatible with 
C - flavour conservation.
      call AltClusterEvent(p,flav, q2merge,tMom,bMom,WMom,jMom)
      if(ttype.eq.-1) then
         do j=1,3
C - Flip spatial components of clustered top, tMom:
            tMom(j) = -tMom(j)
C - Flip spatial components of clustered b  , bMom:
            bMom(j) = -bMom(j)
C - Flip spatial components of clustered W  , WMom:
            WMom(j) = -WMom(j)
C - Flip spatial components of clustered jet, jMom:
            jMom(j) = -jMom(j)
         enddo
C - Flip PDG IDs back again in flav and also spatial components of p
C - momentum array (although p is not used again, only flav is).
         flavSave(1:nhep) = flav(1:nhep)
         do j=1,nhep
            pSave(0:3,j) = p(0:3,j)
         enddo
         if(flavSave(2).ne.onem) then
            flav(1)  = -flavSave(2)
         else
            flav(1)  = onem
         endif
         p(0,1)   =  pSave(0,2)
         p(1:3,1) = -pSave(1:3,2)
         if(flavSave(1).ne.onem) then
            flav(2)  = -flavSave(1)
         else
            flav(2)  = onem
         endif
         p(0,2)   =  pSave(0,1)
         p(1:3,2) = -pSave(1:3,1)
         do j=3,nhep
            if(flavSave(j).ne.onem) then
               flav(j) = -flavSave(j)
            else
               flav(j) = onem
            endif
            p(0,j)   =  pSave(0,j)
            p(1:3,j) = -pSave(1:3,j)
         enddo
      endif
      tAndjMom=tMom+jMom
      if (all(jMom == 0d0)) stop 'Did not find light Born jet' 

C - Sanity check that we end up in t-channel single-top Born configuration
      if (.not.abs(flav(3))==6) stop 'no top in position 3'
C - Compute number of particles found after clustering
      nClusteredPart=0
      do j=1,nUnClusteredPart
         if(abs(flav(j)).ne.onem) nClusteredPart=nClusteredPart+1
      enddo
      if(nClusteredPart.ne.4.and.q2merge.lt.1d10) then
         write(*,'(/,/,A)') 'analysis: ERROR'
         write(*,*) 'Clustered to give nClusteredPart = ',nClusteredPart
         write(*,*) 'yet q2merge is not 1d10, q2merge = ',q2merge 
         write(*,'(/,/,A)') '*****************************'
         write(*,'(A)')     '* Resetting q2merge to 1d10 *'
         write(*,'(A,/,/)') '*****************************'
         q2merge=1d10
      endif


C - Sanity check that we end up with 4 quarks...
      nq = 0
      do i=1,nhep
         if (abs(flav(i)) > 0 .and. abs(flav(i)) .ne. onem) then
            nq = nq+1
         endif
      enddo
      if (nq/=4.and.nq/=6) then
         write(*,*) 'flav', flav
         write(*,*) 'nq', nq
         stop 'number of quarks different from 4 or 6'
      endif

C - Now compute some Born variables
      call getyetaptmass(tMom,y_top,eta_top,pt_top,m_top)
      call getyetaptmass(jMom,y_jet,eta_jet,pt_jet,m_jet)
      call getyetaptmass(WMom,y_w,eta_w,pt_w,m_w)
      call getyetaptmass(tAndjMom,y_tAndj,eta_tAndj,pt_tAndj,m_tAndj)
      ycm = y_tAndj
      sshat = m_tAndj
      ytopMinusycm=y_top-ycm

C - Set hard scale Q2 now ...
      m2top         = abs(tMom(0)**2-tMom(1)**2-tMom(2)**2-tMom(3)**2)      
      Q2W           = abs(WMom(0)**2-WMom(1)**2-WMom(2)**2-WMom(3)**2)
      two_pt_dot_pb = Q2W+m2top
      Q2            = two_pt_dot_pb  ! <--- Heavy quark line scale
C - Apply recaling factor to explore systematics of hard scale choice ...
      Q2            = Q2 * (Q_rescaling**2)
C - Check sanity ...
      if(Q2.gt.1d10) then
         write(*,*) ''
         write(*,*) '*** WARNING ***'
         write(*,*) 'pwhg_analysis-phiB-Alt.f'
         write(*,*) 'Spuriously high hard scale computed: Q2 = ',Q2
         write(*,*) 'Hard scales > 1d10 will be reset now to 1d10'
         write(*,*) 'as is the case in the clustering algorithm ...'
         Q2=min(Q2,1d10)
      endif

C - Set IR cut off now ...
C - Compute alphaS at hard scale Q2
      tmp=max(Q2,1d0)
      alphaS=pwhg_alphas(tmp,st_lambda5MSB,st_nlight)
C - Compute minimum q2Merge s.t. log(1-2*lambda) is real
      q2MergeMin=Q2*exp(-1d0/(beta0*alphaS))
C - Move q2MergeMin up 1 per mille to hopefully avoid numerical instability
C - if/when computing ln(1-2*lambda)
      q2MergeMin=1.001*q2MergeMin
C - ... And make sure this is also above the hard-wired IR cut off that we
C - implement in the form of 1.3*st_lambda5MSB
      q2MergeMin=max(q2MergeMin,IRcutoff2)


C - Work out exponent ...

C - We have either an event where no merge took place or a hard STJ event:
C - Sudakov is one in such cases and correspondingly the reweighting factor
C - factor for such events should be exactly 1 (no change to event weight(s))
      if(q2Merge.ge.Q2) then
         exponent = 0d0
         bigL     = 0d0
      else
C - If we get an event where the clustering scale is below the IR cut off
C - we reset the clustering to the IR cut-off.
         if(q2Merge.lt.q2MergeMin) then
            if(q2Merge.le.0d0) then
               write(*,'(/,A)') 'pwhg_analysis-phiB::analysis'
               write(*,'(A)')   'Spurious value of q2merge obtained.'
               write(*,*)       'q2merge = ',q2Merge
               write(*,*)       ''
               write(*,'(/,A)') 'q2Merge will be set to the minimum'
               write(*,'(A)')   'possible value for this event, i.e.'
               write(*,'(A)')   'this event will end up being maximally'
               write(*,'(A,/)') 'Sudakov suppressed.'
            endif
            q2Merge=q2MergeMin
         endif
C - Exponent: exp(-NN BMSZ formula)
C - Compute big log L, dividing out by factor of two so as to keep consistent
C - definition of lambda w.r.t Banfi, Monni, Salam, Zanderighi, wherein the 
C - argument of the log is Q/pT instead of Q2/pT2
         bigL=log(Q2/q2Merge)/2d0
C - Compute alphaS at hard scale Q2 (with a freezing scale in case hard scale
C - is low ...)
         tmp=max(Q2,1d0)
         alphaS=pwhg_alphas(tmp,st_lambda5MSB,st_nlight)
C - Lambda of BMSZ is therefore
         lambda=alphaS*beta0*bigL
C - If fitting A(phiB) as the A_2 coefficient in the A_2 term in eq.10a
C - of arXiv:1206.4998 [Banfi, Monni, Salam, Zanderighi], in g_2 function
C - of exponent (eq. 8), then this is what multiplies that A_2 coefficient
         exponent = (2d0*lambda+(1d0-2d0*lambda)*log(1d0-2d0*lambda))
     $            / (1d0-2d0*lambda)
         exponent = (-1d0/(4d0*pi*pi*beta0*beta0))*exponent
C - Divide out a factor two because BMSZ has only two external legs
         exponent = exponent/2d0
C - Multiply in a factor four because we have 4 external legs
         exponent = exponent*4d0
      endif

      if(exponent.gt.0d0) then
         write(*,*) ''
         write(*,*) '*** WARNING ***'
         write(*,*) 'pwhg_analysis-phiB.f'
         write(*,*) 'Returned a spurious positive exponent!'
         write(*,*) 'Please investigate!'
         write(*,*) ''
         write(*,*) 'nUnClusteredPart = ',nUnClusteredPart
         write(*,*) 'nClusteredPart   = ',nClusteredPart
         write(*,*) 'Q2         = ',sqrt(Q2)
         write(*,*) 'q2MergeMin = ',sqrt(q2MergeMin)
         write(*,*) 'q2Merge    = ',sqrt(q2Merge)
         write(*,*) 'bigL       = ',bigL
         write(*,*) 'alphaS     = ',alphaS
         write(*,*) 'exponent   = ',exponent
      endif

C~~ Modify weights
      if (use_nn.eq.1.and.ttype.eq.1) then
         dsig(1)= dsig(1)*expaln_w1(ycm, ytopMinusycm, pt_top, exponent)
         dsig(2)= dsig(2)*expaln_w2(ycm, ytopMinusycm, pt_top, exponent)
         dsig(3)= dsig(3)*expaln_w3(ycm, ytopMinusycm, pt_top, exponent)
         dsig(4)= dsig(4)*expaln_w4(ycm, ytopMinusycm, pt_top, exponent)
         dsig(5)= dsig(5)*expaln_w5(ycm, ytopMinusycm, pt_top, exponent)
         dsig(6)= dsig(6)*expaln_w6(ycm, ytopMinusycm, pt_top, exponent)
         dsig(7)= dsig(7)*expaln_w7(ycm, ytopMinusycm, pt_top, exponent)
         call reweight_update_weights(dsig)
      elseif (use_nn.eq.1.and.ttype.eq.-1) then
         dsig(1)=dsig(1)*expaln_stb_w1(ycm,ytopMinusycm,pt_top,exponent)
         dsig(2)=dsig(2)*expaln_stb_w2(ycm,ytopMinusycm,pt_top,exponent)
         dsig(3)=dsig(3)*expaln_stb_w3(ycm,ytopMinusycm,pt_top,exponent)
         dsig(4)=dsig(4)*expaln_stb_w4(ycm,ytopMinusycm,pt_top,exponent)
         dsig(5)=dsig(5)*expaln_stb_w5(ycm,ytopMinusycm,pt_top,exponent)
         dsig(6)=dsig(6)*expaln_stb_w6(ycm,ytopMinusycm,pt_top,exponent)
         dsig(7)=dsig(7)*expaln_stb_w7(ycm,ytopMinusycm,pt_top,exponent)
         call reweight_update_weights(dsig)
      elseif(use_nn.ge.2.and.ttype.eq.1)then
         if (use_nn.eq.2)then
            dsig(1)= dsig(1)*expaln_4_w1(ycm, ytopMinusycm,
     1           pt_top, exponent)
         elseif (use_nn.eq.3)then
            dsig(1)= dsig(1)*expaln_2_w1(ycm, ytopMinusycm,
     1           pt_top, exponent)
         elseif (use_nn.eq.4)then
            dsig(1)= dsig(1)*expaln_05_w1(ycm, ytopMinusycm,
     1           pt_top, exponent)
         elseif (use_nn.eq.5)then
            dsig(1)= dsig(1)*expaln_025_w1(ycm, ytopMinusycm,
     1           pt_top, exponent)
         endif            
         dsig(2)= 0d0
         dsig(3)= 0d0
         dsig(4)= 0d0
         dsig(5)= 0d0
         dsig(6)= 0d0
         dsig(7)= 0d0
         call reweight_update_weights(dsig)         
      endif


C~~ Fill histograms ...      
      call reweight_fill('total',  0.5d0,  dsig)
      call reweight_fill('ycm',    ycm,    dsig)
      call reweight_fill('sshat',  sshat,  dsig)
      call reweight_fill('y_top',  y_top,  dsig)
      call reweight_fill('eta_top',eta_top,dsig)
      call reweight_fill('pt_top', pt_top, dsig)
      call reweight_fill('eta_w',  eta_w,  dsig)
      call reweight_fill('pt_w',   pt_w,   dsig)
      call reweight_fill('m_w',    m_w,    dsig)
      call reweight_fill('dy',     ytopMinusycm, dsig)
      call reweight_fill3d('ycm_dy_pttop', ycm, ytopMinusycm, pt_top, dsig)


C - NN should be fitted as exp[ NN * exponent ] with exponent as returned here:
CCCC DEBUG      write(*,*) 'dsig, exponent = ',dsig,exponent
      call reweight_store(dsig, exponent)


      end
