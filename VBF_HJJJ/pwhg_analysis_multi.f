c  The next subroutines open some histograms and prepare them 
c      to receive data 
c  You can substitute these with your favourite ones

      subroutine init_hist
      implicit none
      include 'pwhg_bookhist-multi.h'
      include 'PhysPars.h'
      real * 8 pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      REAL*8 ymax
      logical ini
      data ini/.true./
      save ini

      ymax = 7.4d0

      call inihists

      call bookupeqbins('abs(yj(1) - yj(2))',0.2d0,0d0,10d0)
      call bookupeqbins('yj(1) - yj(2)',0.5d0,-10d0,10d0)   
      call bookupeqbins('sig(all VBF cuts)',1d0, 0d0, 1d0)
      call bookupeqbins('mj1j2', 50d0, 0d0, 3500d0)
      call bookupeqbins('ptj(4) zoom', 1d0, 0d0, 50d0)
      call bookupeqbins('ptj(4)', 5d0, 0d0, 150d0)
      call bookupeqbins('ptj(3)', 5d0, 0d0, 300d0)
      call bookupeqbins('ptj(2)', 5d0, 0d0, 400d0)
      call bookupeqbins('ptj(1)', 5d0, 0d0, 500d0)    
      call bookupeqbins('yj(4)',0.25d0, -5d0, 5d0)
      call bookupeqbins('yj(3)',0.25d0, -5d0, 5d0)
      call bookupeqbins('yj(2)',0.25d0, -5d0, 5d0)
      call bookupeqbins('yj(1)',0.25d0, -5d0, 5d0)
      call bookupeqbins('yj*(3)',0.25d0, -5d0, 5d0)
      call bookupeqbins('yj*(4)',0.25d0, -5d0, 5d0)
      call bookupeqbins('z*(3)',0.25d0, -5d0, 5d0)      
      call bookupeqbins('ptj(3) z3*<0.5', 5d0, 0d0, 200d0)
      call bookupeqbins('ptj(3) z3*>0.5', 5d0, 0d0, 200d0)
      call bookupeqbins('delphi_jj',3.6d0, -180d0, 180d0)
      call bookupeqbins('mHjj', 50d0, 0d0, 4000d0)
      call bookupeqbins('inv mass cuts', 0.01d0, 124d0, 128d0)
      call bookupeqbins('pt H cuts', 5d0, 0d0, 300d0)
      call bookupeqbins('y H cuts', 0.25d0, -5d0, 5d0)
      call bookupeqbins('pt H more', 10d0, 0d0, 1000d0)
      
      end


      subroutine getrapidity(p,y)
      implicit none
      real * 8 p(4),y
      y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      end

      function getrapidity0(p)
      implicit none
      real * 8 p(0:3),getrapidity0
      getrapidity0=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      end

      subroutine getinvmass(p,m)
      implicit none
      real * 8 p(4),m
      m=dsqrt(abs(p(4)**2-p(1)**2-p(2)**2-p(3)**2))
      end
      
      function azi(p)
      implicit none
      include 'pwhg_math.h'  
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

c     calculate the separation in the lego plot between the two momenta
c     p1 and p2
      function rsepn(p1,p2)
      implicit none
      include 'pwhg_math.h'  
      real * 8 rsepn,p1(0:3),p2(0:3)
      real * 8 y1,phi1,y2,phi2
      real * 8 delphi
      real * 8 getrapidity0,azi
      external getrapidity0,azi

      phi1 = azi(p1)   
      phi2 = azi(p2)
      y1 = getrapidity0(p1)
      y2 = getrapidity0(p2)

      delphi = abs(phi1-phi2)
      if (delphi.gt.pi) then
         delphi = 2*pi-delphi
      endif
      if (delphi.lt.0 .or. delphi.gt.pi) then
         print*,' problem in rsepn. delphi = ',delphi
      endif
      rsepn = sqrt( (y1-y2)**2 + delphi**2 )
      end

c     calculate the separation in the lego plot between the two momenta
c     p1 and p2 for pj(1:4)
      function rsepn4(p1,p2)
      implicit none
      include 'pwhg_math.h'  
      real * 8 rsepn4,p1(4),p2(4)
      real * 8 y1,phi1,y2,phi2
      real * 8 delphi
      real * 8 azi4
      external azi4

      phi1 = azi4(p1)   
      phi2 = azi4(p2)
      call getrapidity(p1,y1)
      call getrapidity(p2,y2)

      delphi = abs(phi1-phi2)
      if (delphi.gt.pi) then
         delphi = 2*pi-delphi
      endif
      if (delphi.lt.0 .or. delphi.gt.pi) then
         print*,' problem in rsepn. delphi = ',delphi
      endif
      rsepn4 = sqrt( (y1-y2)**2 + delphi**2 )
      end
      
      function azi4(p)
      implicit none
      include 'pwhg_math.h'  
      real * 8 azi4,p(4)
      azi4 = atan(p(2)/p(1))
      if (p(1).lt.0d0) then
         if (azi4.gt.0d0) then               
            azi4 = azi4 - pi
         else
            azi4 = azi4 + pi
         endif
      endif    
      end

c mjj^2 = (p1+p2)^2 = p1^2 + p2^2 + 2*dotp(p1,p2)
      function mjj(p1,p2)
      implicit none
      real * 8 mjj,p1(0:3),p2(0:3)
      real * 8 p(0:3)
      integer mu
      do mu=0,3
         p(mu)=p1(mu)+p2(mu)
      enddo
      mjj = sqrt(abs(p(0)**2-p(1)**2-p(2)**2-p(3)**2))
      end

c     find the first "nhardjets" hardest jets in pjet (that contains njets)
c     and return their position.
c     foundhardjets is the number of found hard jets (.le.nhardjets)
      subroutine find_hardest_jets(njets,pjet,nhardjets,
     #     foundhardjets,jj)
      implicit none
      integer njets
      real *8 pjet(4,njets) 
      integer nhardjets,jj(nhardjets)
      real * 8 ptj(nhardjets),pt
      integer ijet,hjet,foundhardjets,i
      logical is_i_in_array
      external is_i_in_array

      if (njets.eq.0) then
         write(*,*) 'WARNING!!!!!!!!!!!  EMPTY  PJET ARRAY'
         nhardjets=0
         return
      endif

      do hjet=1,nhardjets
         jj(hjet)=0d0
         ptj(hjet)=0d0
      enddo
      foundhardjets=1
      do ijet=1,njets   
         pt=sqrt(pjet(1,ijet)**2 + pjet(2,ijet)**2)
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


      subroutine analysis(dsig0)
      implicit none
      real * 8 dsig(7),dsig0
      include 'hepevt.h'
      include 'pwhg_math.h'  
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'LesHouches.h'
      include 'pwhg_weights.h'
c
c arrays to reconstruct jets
      integer maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      real *8 ptrack(4,maxtrack)
      integer maxtagjets
      parameter (maxtagjets=10)
      integer jet,jjet,tagjets,nIS
      real *8 ptj(maxtagjets),yj(maxtagjets)
      real *8 pjet(4,maxjet) ,pIS(4,maxjet)
      integer mu,jpart,njj(maxtagjets),found,njets,ihep,ntracks,ijet,j1

      real * 8 R,ptmin_fastkt,rminjj,rsep_jjmin,rsepjj
      integer jetvec(maxtrack)
      integer HZZ,HWW
      integer idH, k, kk, kmax, j
      real * 8 pH(0:3),ptH,yH,inv_mH,pj(0:3,4),pHjj(0:3), mHjj 
      real * 8 rsepn,getrapidity0,mjj,azi,mjj2,rsepn4
      external rsepn,getrapidity0,mjj,azi,mjj2,rsepn4
      real * 8 Rmin,delphi_jj,actcuts
      logical pass_cuts,pass_cuts_no_mjjmin,pass_cuts_no_deltayjjmin
      real * 8 ptjetmin,ptalljetmin,yjetmax,deltay_jjmin,mjjmin
      logical jet_opphem,exist3rdjet,exist4thjet
      logical activate_cuts
      logical higgsfound,passcuts4j,passcuts4j_zoom
c
c     we need to tell to the this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      double precision powheginput
      external powheginput

      double precision z3, ptj4min      
      logical just4j
      double precision real_emission

      logical ini
      data ini/.true./
      save ini
      
c===============================================

      if(ini) then
         if(WHCPRG.eq.'NLO'.or.WHCPRG.eq.'LHE') then
            weights_num=0
         endif
         if(weights_num.eq.0) then
            call setupmulti(1)
         else
            call setupmulti(weights_num)
         endif
      endif !ini

      dsig(:)=0d0
      if(weights_num.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
      endif

      if(sum(abs(dsig)).eq.0) return
      
      if (ini) then
c
c set cuts to default values:
      ptalljetmin = 20d0            
      ptjetmin = 30d0         
      yjetmax = 4.5d0           
      mjjmin = 600d0              
      deltay_jjmin = 4d0        

      Rsep_jjmin = 0.7d0 !For jet algorithm   

      jet_opphem = .false.
      passcuts4j = .false.
      just4j=.false.
      
c replace default cuts by input values (if active):
      actcuts=powheginput('#activate_cuts')
      if (actcuts.eq.1d0) then
         ptalljetmin=powheginput('#ptalljetmin')
         ptjetmin=powheginput('#ptjetmin')
         mjjmin=powheginput('#mjjmin')  
         deltay_jjmin=powheginput('#deltay_jjmin')
         yjetmax=powheginput('#yjetmax') 
         ptj4min=powheginput('#ptj4min')
         real_emission=powheginput('#real_emission')
         if(real_emission.eq.1d0) just4j=.true.
         if(ptj4min.le.0d0) ptj4min=ptalljetmin
         if (yjetmax.lt.0.1d0) yjetmax=100d0  
         Rsep_jjmin=powheginput('#Rsep_jjmin')
         if(powheginput('#jet_opphem').eq.1d0) jet_opphem=.true.   
      endif

         write(*,*) '**************************************************'
         write(*,*) '**************************************************'
         write(*,*) '                ANALYSIS CUTS                     '
         write(*,*) '**************************************************'
         write(*,*) '**************************************************'
         write(*,*) 'ptalljetmin = ',ptalljetmin
         write(*,*) 'ptjetmin = ',ptjetmin
         write(*,*) 'ptjet4min = ',ptj4min
         write(*,*) 'yjetmax = ',yjetmax
         write(*,*) 'mjjmin = ',mjjmin 
         write(*,*) 'deltay_jjmin = ',deltay_jjmin
         write(*,*) 'Rsep_jjmin = ',Rsep_jjmin
         write(*,*) 'jet_opphem = ',jet_opphem 
         write(*,*) '**************************************************'
         write(*,*) '**************************************************'
         ini = .false.
      endif

      idH=0
      higgsfound = .false.
c     find Higgs boson
      call particle_identif(HWW,HZZ)      
      do ihep=1,nhep
c     set up different searching stategies according to the shower Monte Carlo
c     program used      
         if ((WHCPRG.eq.'HERWIG').and.(idhep(ihep).eq.25).and.
     $        (isthep(ihep).eq.155)) then 
            higgsfound = .true.      
         elseif ((WHCPRG.eq.'PYTHIA').and.(idhep(ihep).eq.25).and.
     #           (ISTHEP(ihep).eq.1)) then 
            higgsfound = .true.      
         elseif (( (WHCPRG.eq.'POWHEG').or.(WHCPRG.eq.'NLO   ').or.
     $           (WHCPRG.eq.'LHE   ')).and.
     #           ((idhep(ihep).eq.HWW).or.(idhep(ihep).eq.HZZ).or.
     #           (idhep(ihep).eq.25) )) then
            higgsfound = .true.            
         endif
         if (higgsfound) then
            idH=ihep
            idhep(ihep)=25
            goto 333
         endif
      enddo
 333  continue
      if (idH.eq.0) then
         write(*,*) 'HIGGS NOT FOUND'
         call exit(2)
      endif

      do mu=1,3
         pH(mu) = phep(mu,idH)
      enddo
      pH(0) = phep(4,idH)
      
      ptH = sqrt(pH(1)**2+pH(2)**2)
      call getrapidity(phep(1,idH),yH)
      call getinvmass(phep(1,idH),inv_mH)
      
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
      j1=0
      found=0
      ntracks=0
      njets=0
      nIS=0
c     loop over final state particles to find jets 
      do ihep=1,nhep
         if ((isthep(ihep).eq.1).and.
c     exclude leptons, gauge and Higgs bosons
     #        (((abs(idhep(ihep)).le.10).or.(abs(idhep(ihep)).ge.40))
c     but include gluons 
     #        .or.(abs(idhep(ihep)).eq.21))) then
            if(ntracks.eq.maxtrack) then
               write(*,*)
     #              'hwanal: too many particles, increase maxtrack'
               stop
            endif
c     copy momenta to construct jets 
            ntracks=ntracks+1
            do mu=1,4
               ptrack(mu,ntracks)=phep(mu,ihep)
            enddo
         endif
      enddo
      do ihep=1,nhep
         if ((isthep(ihep).eq.-1).and.
c     exclude leptons, gauge and Higgs bosons
     #        (((abs(idhep(ihep)).le.10).or.(abs(idhep(ihep)).ge.40))
c     but include gluons 
     #        .or.(abs(idhep(ihep)).eq.21))) then
            if(ntracks.eq.maxtrack) then
               write(*,*)
     #              'hwanal: too many particles, increase maxtrack'
               stop
            endif
c     copy momenta to construct jets 
            nIS=nIS+1
            do mu=1,4
               pIS(mu,nIS)=phep(mu,ihep)
            enddo
         endif
      enddo
      if (ntracks.eq.0) then
         return
      endif
      
************************************************************************
*     siscone algorithm
**********************************************************************
c     R =  radius parameter
c     f =  overlapping fraction
c.....run the clustering        
c      call fastjetsiscone(ptrack,ntracks,R,f,pjet,njets) 
************************************************************************
*     fastkt algorithm
**********************************************************************
      R = Rsep_jjmin          
      ptmin_fastkt = 0d0

c      -1 is anti_kt, +1 is kt     
      call fastjetppgenkt(ptrack,ntracks,r,-1,ptmin_fastkt,pjet,njets,
     $                        jetvec)

c     now we have the jets
      if (njets.gt.0) then
c     find the first 4 hardest jets, if any
         call find_hardest_jets(njets,pjet,4,tagjets,njj)
       
c     at least THREE hard jets to continue
         if (tagjets.le.2) then
            return
         endif         
         
         do ijet=1,4
           do mu=0,3
             pj(mu,ijet) =0d0
           enddo        
         enddo
         do ijet=1,tagjets
            do mu=1,3
               pj(mu,ijet)=pjet(mu,njj(ijet))
            enddo
            pj(0,ijet)=pjet(4,njj(ijet))
         enddo
    
c     get pt's and rapidities of the jets
         do ijet=1,tagjets
            ptj(ijet) = sqrt(pj(1,ijet)**2 + pj(2,ijet)**2)
            yj(ijet) = getrapidity0(pj(0,ijet))
         enddo
         
c     compute min R_ij separations
         Rmin = 1d50
cccc already done by kt-algorithm
         do jet=1,tagjets-1
            do jjet=jet+1,tagjets
               Rsepjj=rsepn(pj(0,jet),pj(0,jjet))
               Rminjj=min(Rmin,Rsepjj)
            enddo
         enddo

         if (yj(1).gt.yj(2)) then
            delphi_jj = azi(pj(0,1))-azi(pj(0,2))
         else
            delphi_jj = azi(pj(0,2))-azi(pj(0,1))
         endif
 
         if (delphi_jj.gt.Pi) then
            delphi_jj = delphi_jj - 2d0*pi
         else if (delphi_jj.lt.-Pi) then
            delphi_jj = delphi_jj + 2d0*pi
         endif
         delphi_jj = delphi_jj * 180d0 / Pi
 
c     compute invariant mass of the Hjj system
         do mu=0,3
            pHjj(mu) = pH(mu)+pj(mu,1)+pj(mu,2)
         enddo
         mHjj = sqrt(abs(phjj(0)**2-phjj(1)**2-phjj(2)**2-phjj(3)**2))
c       
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCC               APPLY CUTS
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c
         pass_cuts = 
     $        (min(pTj(1),pTj(2)).gt.ptjetmin) .and.
     $        (max(abs(yj(1)),abs(yj(2))).lt.yjetmax) .and.
     $        (rminjj.gt.rsep_jjmin) 

         if (jet_opphem) then
            pass_cuts = pass_cuts .and. 
     $           (yj(1)*yj(2).lt.0)
         endif
         if (tagjets.lt.3) then
            exist3rdjet = .false.
         else
            exist3rdjet = (pTj(3).gt.ptalljetmin) .and.
     $           (abs(yj(3)).lt.yjetmax)
         endif

         if (tagjets.lt.4) then
            exist4thjet = .false.
            passcuts4j_zoom=.false.
         else
            exist4thjet = (pTj(4).gt.ptj4min) .and.
     $           (abs(yj(4)).lt.yjetmax)
            passcuts4j_zoom = (pTj(4).gt.1d0) .and.
     $           (abs(yj(4)).lt.yjetmax) 
         endif

         pass_cuts_no_mjjmin = pass_cuts .and. 
     $        (abs(yj(1)-yj(2)).gt.deltay_jjmin)
         
         pass_cuts_no_deltayjjmin = pass_cuts .and.
     $        (mjj(pj(0,1),pj(0,2)).gt.mjjmin)
         
         pass_cuts = pass_cuts .and.
     $        (mjj(pj(0,1),pj(0,2)).gt.mjjmin) .and.
     $        (abs(yj(1)-yj(2)).gt.deltay_jjmin).and. 
     $        exist3rdjet
         
         if(just4j) then
            pass_cuts=pass_cuts.and.exist4thjet
         endif

         if (pass_cuts) then    
         
            call filld('abs(yj(1) - yj(2))',abs(yj(1) - yj(2)),dsig)
            call filld('yj(1) - yj(2)',(yj(1) - yj(2)),dsig)
            call filld('sig(all VBF cuts)',0.5d0, dsig)
            call filld('mj1j2', mjj(pj(0,1),pj(0,2)),dsig)       
            if (passcuts4j_zoom)  call filld('ptj(4) zoom',ptj(4),dsig)
            if (exist4thjet) then
               call filld('ptj(4)',ptj(4),dsig)
            endif            
            
            if (exist3rdjet) then
               call filld('ptj(3)',ptj(3),dsig)
            else
              print*, 'no 3rd jet, why??'
            endif
                        
            call filld('ptj(2)',ptj(2),dsig)
            call filld('ptj(1)',ptj(1),dsig)

            if (exist4thjet)  then
               call filld('yj(4)',yj(4),dsig)
            endif

            if (exist3rdjet)  then
               call filld('yj(3)',yj(3),dsig)
            endif

            call filld('yj(2)',yj(2),dsig)
            call filld('yj(1)',yj(1),dsig)
                    
            if (exist3rdjet) then 
               call filld('yj*(3)',yj(3)-0.5*(yj(1)+yj(2)),dsig)
               z3=(yj(3)-0.5*(yj(1)+yj(2)))/abs(yj(1)-yj(2))
               call filld('z*(3)',z3, dsig)
               if(abs(z3).lt.0.5) then
                  call filld('ptj(3) z3*<0.5',ptj(3), dsig)
               else
                  call filld('ptj(3) z3*>0.5',ptj(3), dsig)
               endif               
            endif
            if (exist4thjet) then 
               call filld('yj*(4)',yj(4)-0.5*(yj(1)+yj(2)),dsig)
            endif
                        
            call filld('delphi_jj', delphi_jj, dsig)
            call filld('mHjj', mHjj, dsig)
            
            call filld('pt H cuts', ptH, dsig)
            call filld('y H cuts', yH, dsig)
            call filld('inv mass cuts', inv_mH, dsig)
            call filld('pt H more', ptH, dsig)
      
      endif
      endif
      end

      subroutine particle_identif(HWW,HZZ)
      implicit none
      integer pdg_Higgs,pdg_Z,pdg_W,HZZ,HWW
      pdg_Higgs = 25
      pdg_Z = 23
      pdg_W = 24      
c     build an identifier for Higgs production in WW and ZZ fusion 
      HWW = 10000*pdg_W + pdg_Higgs
      HZZ = 10000*pdg_Z + pdg_Higgs
      end

