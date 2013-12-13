      subroutine init_hist
      implicit none
      include 'pwhg_bookhist-multi.h'
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      character * 10 cut
      double precision binsize

      call inihists

      cut = ' Etm>350'
      
      binsize=25d0
      call bookupeqbins('Etmiss >=1jet'//cut,
     $     binsize,100d0,1500d0)
      
      binsize=25d0
      call bookupeqbins('ptj1 >=1jet'//cut,
     $     binsize,100d0,1500d0)
      
      end
     

      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'pwhg_weights.h'
      double precision dsig0,dsig(1:weights_max)
      double precision pi
      parameter(pi = 3.141592653589793D0)
c
      character * 10 cut
      character *6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO'/
      character *20 process
c arrays to reconstruct jets
      integer maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      integer njets
      double precision pjet(4,maxjet),ktjet(maxjet)
      integer foundhardjets,jj(maxjet)
c
      integer nregjet,jj_good(maxjet)
      double precision Et_j,Etmiss,Etmiss_true,ptj1,eta_j
c
      integer j,mu,ihep,iDM(2),nDM
      double precision pX(4),pXbar(4),pinv(4),pinv_true(4),pt_X,y_X
     $     ,phi_X,pt_Xbar,y_Xbar,phi_Xbar

c     save variables
      logical ini
      data ini/.true./
      save ini
      integer idDM
      double precision min_Etmiss,min_pt_j1,max_eta_j
      save min_Etmiss,min_pt_j1,max_eta_j,idDM

      cut = ' Etm>350'

      if(ini) then
         write(*,*) 'Simplified analysis:'
         write(*,*) 'Not all realistic cuts are present here...'
         write(*,*) 'jet algo: antikt, pt>30, R=0.4'
         write(*,*) 'Etm>350, ptj1>110, |etaj|<4.5'
         min_Etmiss=350
         min_pt_j1=110
         max_eta_j=4.5
         idDM=19
         if(WHCPRG.eq.'NLO') then
            weights_num=1
         endif
         if(weights_num.eq.0.and.WHCPRG.eq.'PYTHIA') weights_num=1
         if(weights_num.eq.1) then
            call setupmulti(1)
         else
            call setupmulti(weights_num)
         endif
         ini =.false.
      endif
      dsig=0
      if(weights_num.eq.1.or.weights_num.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
      endif
      if(sum(abs(dsig)).eq.0) return

c     find DM particles...
      nDM=0
      if(WHCPRG.eq.'NLO   '.or.WHCPRG.eq.'LHE   '
     $     .or.WHCPRG.eq.'PYTHIA') then
         do ihep=1,nhep
            if(isthep(ihep).eq.1) then
               if(abs(idhep(ihep)).eq.idDM) then
                  nDM=nDM+1
                  iDM(nDM)=ihep
               endif
            endif
         enddo
         if(nDM.ne.2) then
            write(*,*) 'Problems with DM particles X: ',nDM
            write(*,*) 'SKIP EVENT'
            goto 666            ! reject event
         endif
      elseif (WHCPRG.eq.'HERWIG') then
         write(*,*) 'HERWIG analysis not implemented'
         call exit(1)
      else
         write(*,*) 'Wrong WHCPRG: ',WHCPRG
         call exit(1)
      endif

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     DM analysis
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Compute DM variables (eventually we'll do the Etmiss computation
c     as -(total_pt). For now, lets assume I can tag X and Xbar)
      do mu=1,4
         pX(mu)=phep(mu,iDM(1))
         pXbar(mu)=phep(mu,iDM(2))
      enddo
      call getktyphi(1,pX,pt_X,y_X,phi_X)
      call getktyphi(1,pXbar,pt_Xbar,y_Xbar,phi_Xbar)
      
      pinv_true(:)=pX(:)+pXbar(:)
      Etmiss_true=sqrt(pinv_true(1)**2+pinv_true(2)**2)

c     build jets:
c     here reconstruct jets with ATLAS antikt algo
      process="DM search"
c     build jets
      call buildjets(njets,pjet,process)
c     sort jet in decreasing Et (by finding their position
c     in pjet matrix)
      call find_hardest_jets(njets,pjet,njets,'PT',
     $     foundhardjets,jj,ktjet)
      
      if( njets /=  foundhardjets ) print*, 'problem'

      nregjet=0
      pinv(:)=0d0
      do j=1,njets
         pinv(:)=pinv(:)-pjet(:,jj(j))
         Et_j=ktjet(j)
         call getpseudorapidity(pjet(1,jj(j)),eta_j)
         if(abs(eta_j).le.max_eta_j) then
            nregjet=nregjet+1
            jj_good(nregjet)=jj(j)
         endif
         if(Et_j.le.30d0) then
            write(*,*) 'Error 1'
            stop
         endif
      enddo

      Etmiss=sqrt(pinv(1)**2+pinv(2)**2)

c     no jets within (Et,eta) cut
      if(nregjet.eq.0) goto 666

      ptj1=ktjet(jj_good(1))
     
c     Etmiss cut
      if(Etmiss.lt.min_Etmiss) goto 666

c     ptj1 cut
      if(ptj1.lt.min_pt_j1) goto 666

ccccccccccccccccccccccccc
c     Histograms filling
ccccccccccccccccccccccccc
      if(nregjet.ge.1) then
         call filld('Etmiss >=1jet'//cut,Etmiss,dsig)
      endif

      if(nregjet.ge.1) then
         call filld('ptj1 >=1jet'//cut,ptj1,dsig)
      endif

 666  end


      subroutine buildjets(njets,pjet,process)
c     arrays to reconstruct jets
      implicit none
      include 'hepevt.h'
      integer njets
      double precision pjet(4,*)
      character * 20 process
      integer maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      double precision ptrack(4,maxtrack)
      integer jetvec(maxtrack)
      integer ihep,ntracks,jpart,jjet,mu
      double precision found
      double precision r,ptmin

c     set up arrays for jet finding
      do jpart=1,maxtrack
         do mu=1,4
            ptrack(mu,jpart)=0d0
         enddo
         jetvec(jpart)=0
      enddo      
      do jjet=1,maxjet
         do mu=1,4
            pjet(mu,jjet)=0d0
         enddo
      enddo

      found=0
      ntracks=0
      njets=0

c     loop over final state particles to find valid tracks
      do ihep=1,nhep
c     exclude leptons, gauge and higgs bosons, but include gluons
         if ((isthep(ihep).eq.1).and.
     1        (((abs(idhep(ihep)).le.10).or.(abs(idhep(ihep)).ge.40))
     2        .or.(abs(idhep(ihep)).eq.21))) then
            if(ntracks.eq.maxtrack) then
               write(*,*)
     $              'analyze: too many particles, increase maxtrack'
               call exit(1)
            endif
c     copy momenta to construct jets 
            ntracks=ntracks+1
            do mu=1,4
               ptrack(mu,ntracks)=phep(mu,ihep)
            enddo
         endif
      enddo
      if (ntracks.eq.0) then
         njets=0
         return
      endif
      if (process.eq."DM search") then
*******************************************
c     DM search
*******************************************
         R     = 0.4d0
         ptmin = 30d0
         call fastjetppgenkt(ptrack,ntracks,R,-1d0,ptmin,
     $        pjet,njets,jetvec)
      else
         write(*,*) 'JET ANALYSIS TO USE UNKNOWN:',process
         call exit(1)
      endif
         
      end

      subroutine getinvmass(p,m)
      implicit none
      double precision p(4),m
      double precision m2
      m2 = p(4)**2-p(1)**2-p(2)**2-p(3)**2
      if (m2.ge.0d0) then
         m = sqrt(abs(m2))
      else
         m = -sqrt(abs(m2))
      endif
      end

      function get_ptrel(pin,pjet)
      implicit none
      double precision get_ptrel,pin(0:3),pjet(0:3)
      double precision pin2,pjet2,cth2,scalprod
      pin2  = pin(1)**2 + pin(2)**2 + pin(3)**2
      pjet2 = pjet(1)**2 + pjet(2)**2 + pjet(3)**2
      scalprod = pin(1)*pjet(1) + pin(2)*pjet(2) + pin(3)*pjet(3)
      cth2 = scalprod**2/pin2/pjet2
      get_ptrel = sqrt(pin2*abs(1d0 - cth2))
      end



      function getrapidity0(p)
      implicit none
      double precision p(0:3),getrapidity0
      getrapidity0=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      end
      subroutine getrapidity(p,y)
      implicit none
      double precision p(4),y
      y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      end

      function pseudorapidity(p)
      implicit none
      double precision p(0:3),pseudorapidity
      double precision mod, costh
      mod = sqrt(p(1)**2+p(2)**2+p(3)**2)
      costh = p(3)/mod
      pseudorapidity=0.5*log((1+costh)/(1-costh))
      end



c     calculate the separation in the lego plot between the two momenta p1 and p2 
c     in azi and rapidity
      function rsep_azi_y(p1,p2)
      implicit none
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      double precision rsep_azi_y,p1(4),p2(4)
      double precision y1,phi1,y2,phi2,kt1,kt2
      double precision delphi

      call getktyphi(1,p1,kt1,y1,phi1)
      call getktyphi(1,p2,kt2,y2,phi2)

      delphi = abs(phi1-phi2)
c make sure it is below 2 pi
c      delphi=delphi-2*pi*int(delphi/(2*pi))
      if (delphi.gt.pi) then
         delphi = 2*pi-delphi
      endif
      if (delphi.lt.0 .or. delphi.gt.pi) then
         print*,' problem in rsep_azi_y. delphi = ',delphi
      endif
      rsep_azi_y = sqrt( (y1-y2)**2 + delphi**2 )
      end

      function azi(p)
      implicit none
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      double precision azi,p(0:3)
      azi = atan(p(2)/p(1))
      if (p(1).lt.0d0) then
         if (azi.gt.0d0) then               
            azi = azi - pi
         else
            azi = azi + pi
         endif
      endif    
      end






      subroutine getktyphi(njets,pjet,ktjet,yjet,phijet)
      implicit none
      integer njets
      double precision pjet(4,njets),ktjet(njets),yjet(njets),phijet(njets)
      integer j
      do j=1,njets
         ktjet(j)=sqrt(pjet(1,j)**2+pjet(2,j)**2)        
         yjet(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phijet(j)=atan2(pjet(2,j),pjet(1,j))
      enddo
      end
      

c     calculate the separation in the lego plot between the two momenta p1 and p2 
c     in azi and pseudorapidity
      function rsep_azi_eta(p1,p2)
      implicit none
      double precision rsep_azi_eta,p1(4),p2(4)
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      double precision y1,phi1,y2,phi2,kt1,kt2,eta1,eta2
      double precision delphi

      call getktyphi(1,p1,kt1,y1,phi1)
      call getktyphi(1,p2,kt2,y2,phi2)

      delphi = abs(phi1-phi2)
c make sure it is below 2 pi
c      delphi=delphi-2*pi*int(delphi/(2*pi))
      if (delphi.gt.pi) then
         delphi = 2*pi-delphi
      endif
      if (delphi.lt.0 .or. delphi.gt.pi) then
         print*,' problem in rsep_azi_eta. delphi = ',delphi
      endif
      call getpseudorapidity(p1,eta1)
      call getpseudorapidity(p2,eta2)
      rsep_azi_eta = sqrt( (eta1-eta2)**2 + delphi**2 )
      end



      subroutine getpseudorapidity(p,eta)
      implicit none
      double precision p(1:4),eta
      double precision mod, costh
      mod = sqrt(p(1)**2+p(2)**2+p(3)**2)
      costh = p(3)/mod
      if (costh.eq.1d0) then
         eta=1d+30
      else
         eta=0.5*log(abs((1+costh)/(1-costh)))
      endif
      end



      function deltaphi(phi1,phi2)
      implicit none
      double precision deltaphi,phi1,phi2
      double precision pi
      parameter(pi = 3.141592653589793D0)
      deltaphi = abs(phi1-phi2)
      deltaphi=deltaphi-2*pi*int(deltaphi/(2*pi))
      if (deltaphi.gt.pi) then
         deltaphi = 2*pi-deltaphi
      endif
      if (deltaphi.lt.0 .or. deltaphi.gt.pi) then
         print*,' problem in rsep_azi_y. deltaphi = ',deltaphi
      endif      
      end



c     find the first "nhardjets" hardest jets in pjet (that contains njets)
c     and return their position.
c     criterium = "ET" or "PT": order them according to their 
c     transverse energy or momentum 
c     foundhardjets is the number of found hard jets (.le.nhardjets)
c     jj(1) is the position of the first jet, jj(2) the position of the 
c     second one...
c     ptj(1) = pt (or ET) of the first jet, etc
      subroutine find_hardest_jets(njets,pjet,nhardjets,criterium,
     #     foundhardjets,jj,ptj)
      implicit none
      integer njets
      double precision pjet(4,njets)
      integer nhardjets,jj(nhardjets)
      double precision ptj(nhardjets),pt,modp
      integer ijet,hjet,foundhardjets,i
      character * 2 criterium
      logical is_i_in_array
      external is_i_in_array
      
      if (.not.(criterium.eq.'ET'.or.criterium.eq.'PT')) then
         write(*,*) 'WRONG criterium in find_hardest_jets: ',criterium
         call exit(10)
      endif
      if (njets.eq.0) then
c         write(*,*) 'WARNING!!!!!!!!!!!  EMPTY  PJET ARRAY'
         foundhardjets=0
         return
      endif

      do hjet=1,nhardjets
         jj(hjet)=0d0
         ptj(hjet)=0d0
      enddo
      foundhardjets=1
      do ijet=1,njets
         pt=sqrt(pjet(1,ijet)**2 + pjet(2,ijet)**2)
         if (criterium.eq.'ET') then
c     pt is then the transverse energy
            modp = sqrt(pjet(1,ijet)**2+pjet(2,ijet)**2+pjet(3,ijet)**2)
            pt = pjet(4,ijet) * pt/modp
         endif
         do hjet=1,min(foundhardjets,nhardjets)
            if (pt.gt.ptj(hjet).and.
     $           .not.is_i_in_array(nhardjets,ijet,jj)) then
               foundhardjets = foundhardjets + 1
               do i=nhardjets,hjet+1,-1
                  ptj(i)=ptj(i-1)
                  jj(i)=jj(i-1)
               enddo
               ptj(hjet)=pt
               jj(hjet)=ijet
            endif
         enddo
      enddo
c     set number of jets found
      foundhardjets = min(foundhardjets-1,nhardjets)
      end

      function is_i_in_array(nhardjets,i,jj)
      implicit none
      logical is_i_in_array
      integer nhardjets,i,jj(nhardjets)
      integer j
      is_i_in_array = .false.
      do j=1,nhardjets
         if (i.eq.jj(j)) then
            is_i_in_array = .true.
            return
         endif
      enddo
      end



      subroutine getEt(p,Et)
      implicit none
      double precision p(4),Et
      double precision pt,modp
      pt=sqrt(p(1)**2 + p(2)**2)
      modp = sqrt(p(1)**2+p(2)**2+p(3)**2)
      Et = p(4) * pt/modp
      end
