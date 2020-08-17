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
      integer j,k,i,ii
      real * 8 dy,dpt
      character * 1 cnum(9)
      data cnum/'1','2','3','4','5','6','7','8','9'/
      integer maxjet
      parameter (maxjet=3)
      
      integer nptmin
      parameter (nptmin=1)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin)
      
      integer nmjjmax
      parameter (nmjjmax=3)
      character * 4 cmjj(nmjjmax)
      real * 8 mjj(nmjjmax)
      
      data cptmin/  '-030'/     !,  '-050',  '-100'/
      data ptminarr/   30d0/    !,    50d0,   100d0/
      
      data cmjj/  '-010' , '-250' , '-500'/
      data  mjj/   10d0  ,  250d0 ,  500d0/
      
      common/infohist/ptminarr,mjj,cnum,cptmin,cmjj
      save /infohist/

      call inihists

      dy=0.25d0
      dpt=20d0/2

      call bookupeqbins('sigmatot', 1d0,0d0,1d0)


      call bookupeqbins('H-pt-incl',2d0,0d0,100d0)
      call bookupeqbins('H-y-incl',dy,-5d0,5d0)
      call bookupeqbins('Hj1-pt-incl',2d0,0d0,100d0)
      call bookupeqbins('Hj1-dphi-incl',pi/10,0d0,pi)      
      call bookupeqbins('j1-pt-incl',2d0,0d0,100d0)
      call bookupeqbins('j2-pt-incl',2d0,0d0,100d0)
      
      
      do i=1,nptmin
c     total cross section sanity check
         call bookupeqbins('Njet'//cptmin(i),1d0,-0.5d0,5.5d0)

c         call bookupeqbins('mjj'//cptmin(i),50d0,0d0,1500d0)
         call bookupeqbins('mjj'//cptmin(i),20d0,0d0,1500d0)

         
         do ii=1,nmjjmax
            call bookupeqbins('H-eta'//cptmin(i)//cmjj(ii),
     $           dy,-5d0,5d0)
            call bookupeqbins('H-pt'//cptmin(i)//cmjj(ii),
     $           dpt,0d0,800d0)
         
            do j=1,maxjet
               call bookupeqbins('j'//cnum(j)//'-eta'//cptmin(i)
     $              //cmjj(ii), dy, -5d0, 5d0)
               call bookupeqbins('j'//cnum(j)//'-pt'//cptmin(i)
     $              //cmjj(ii), dpt, 0d0, 800d0)
               call bookupeqbins('j'//cnum(j)//'-ptzoom'//cptmin(i)
     $              //cmjj(ii), 2d0, 1d0, 151d0)
            enddo
                        
            do j=1,maxjet-1
               do k=j+1,maxjet
                  call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     $                 '-deta'//cptmin(i)//cmjj(ii),dy,0d0,7d0)
                  
                  call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
c     $                 '-delphi'//cptmin(i)//cmjj(ii),pi/10,0d0,2*pi)
     $                 '-delphi'//cptmin(i)//cmjj(ii),pi/20,0d0,2*pi)
                  
                  call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     $                 '-dphior'//cptmin(i)//cmjj(ii),pi/20,-pi,pi)

                  call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     $                 '-dphinor'//cptmin(i)//cmjj(ii),pi/20,0,2*pi)
               enddo
            enddo
         call bookupeqbins('j1j2-dphieta'//cptmin(i)//cmjj(ii),pi/20,-pi,pi)            
         enddo
                 
      enddo
      end
     
      subroutine analysis(dsig0)
      implicit none
      real * 8 dsig0
      include 'hepevt.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h' 
      include 'pwhg_rad.h' 
      include 'pwhg_flg.h'
      include  'LesHouches.h'
      include 'pwhg_weights.h'
      real * 8 dsig(10)
      integer nweights
      logical ini
      data ini/.true./
      save ini
      integer   maxjet,mjets,njets
      parameter (maxjet=2048)
      real * 8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1    phij(maxjet),pj(4,maxjet),rr,ptrel(4)
      character * 1 cnum(9)
c      data cnum/'1','2','3','4','5','6','7','8','9'/
c      save cnum
      integer nptmin
      parameter (nptmin=1)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin)
      integer nmjjmax
      parameter (nmjjmax=3)
      character * 4 cmjj(nmjjmax)      
      real * 8 mjj(nmjjmax)
      common/infohist/ptminarr,mjj,cnum,cptmin,cmjj
      save /infohist/
      integer j,k,i,jj,ii
c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      real * 8 ph(4),pHj1(4),ptHj1,dphiHj1
      real * 8 httot,y,yj,eta,pt,m
      real * 8 dy,deta,delphi,dr
      integer ihep
      real * 8 powheginput,dotp
      external powheginput,dotp
      real * 8 ptmin,djetmass
      real * 8 dphiori,dphieta
      real * 8 yh
      
      call multi_plot_setup(dsig0,dsig,10)

c$$$      
c$$$      if(ini) then
c$$$         if(weights_num.eq.0) then
c$$$            call setupmulti(1)
c$$$         else
c$$$            call setupmulti(weights_num)
c$$$         endif
c$$$         ini=.false.
c$$$      endif
c$$$
c$$$      dsig=0
c$$$      if(weights_num.eq.0) then
c$$$         dsig(1)=dsig0
c$$$         nweights=1
c$$$      else
c$$$         dsig(1:weights_num)=weights_val(1:weights_num)
c$$$          nweights=weights_num
c$$$      endif

      if(sum(abs(dsig)).eq.0) return

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      flg_processid='HJJ'
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

c      write(*,*) rad_type,' ',rad_kinreg,' ',nup
c      if(rad_type.eq.1) return
c      if(rad_kinreg.ne.1) return


      do ihep=1,nhep
         if(idhep(ihep).eq.25.and.isthep(ihep).eq.1) then
            ph=phep(1:4,ihep)
         endif
      enddo

      pt = sqrt(ph(1)**2 + ph(2)**2)
      call filld('H-pt-incl',pt,dsig)     
      call pwhg_getrapidity(ph,yh)
      call filld('H-y-incl',yh,dsig)

      
      rr=0.4d0        
      ptmin=0d0
      
      call buildjets(1,rr,ptmin,mjets,ktj,etaj,rapj,phij,ptrel,pj)

      if (mjets .ge. 1) then
         call filld('j1-pt-incl',ktj(1),dsig)
      endif
      
      if (mjets .ge. 2) then
         call filld('j2-pt-incl',ktj(2),dsig)
      endif
      
        

      do i=1,nptmin        
         njets=0
         do k=1,min(4,mjets)
            if (ktj(k).gt.ptminarr(i)) then
               njets=njets+1
            endif
         enddo
         
         if(njets.eq.0) then
            call filld('Njet'//cptmin(i),0d0,dsig)
         elseif(njets.eq.1) then
            call filld('Njet'//cptmin(i),1d0,dsig)
         elseif(njets.eq.2) then
            if( ktj(1) > 30d0 .and. abs(etaj(1)) < 4.5d0 )
     $           then
               call filld('Njet'//cptmin(i),2d0,dsig)
            endif
         elseif(njets.eq.3) then
            call filld('Njet'//cptmin(i),3d0,dsig)
         elseif(njets.eq.4) then
            call filld('Njet'//cptmin(i),4d0,dsig)
         elseif(njets.eq.5) then
            call filld('Njet'//cptmin(i),5d0,dsig)
         else
c     write(*,*) ' Njet?',mjets
         endif
         
c     Since ptminarr(1) is the smallest value, the following is correct
         if (flg_processid.eq.'HJ') then
            if(njets.lt.1) return
         elseif (flg_processid.eq.'HJJ') then
            if(njets.gt.1) then
               pHj1 = ph(:) + pj(:,1)
               ptHj1 = sqrt(pHj1(1)**2 + pHj1(2)**2)
               call filld('Hj1-pt-incl',ptHj1, dsig)
               call pwhg_getdelta_azi(ph, pj(:,1),dphiHj1)
               call filld('Hj1-dphi-incl',dphiHj1, dsig)
            endif
            if(njets.lt.2) return
         endif
         
         mjets=min(mjets,3)
         
         
         if(mjets >= 2) then
            if (ktj(1) > 30d0 .and. ktj(2) > 30d0 .and. 
     $           abs(etaj(1)) < 4.5d0 .and. abs(etaj(2)) < 4.5d0) then
               
               call filld('sigmatot',0.5d0,dsig)
            
               call pwhg_getinvmass(pj(:,1)+pj(:,2),djetmass) 
               
               call filld('mjj'//cptmin(i), djetmass, dsig)
               
               do ii=1,nmjjmax
                  if (djetmass > mjj(ii)) then                     
c     Higgs              
                     call getyetaptmass(ph,y,eta,pt,m)
                     call filld('H-eta'//cptmin(i)//cmjj(ii), eta, dsig)
                     call filld('H-pt'//cptmin(i)//cmjj(ii),   pt, dsig)      
c     jets      
                     do j=1,mjets
c                        call getyetaptmass(pj(:,j),y,eta,pt,m)   <== NON ricalcolare !!
                        call filld('j'//cnum(j)//'-eta'//cptmin(i)
     $                       //cmjj(ii), etaj(j), dsig)
                        call filld('j'//cnum(j)//'-pt'//cptmin(i)
     $                       //cmjj(ii), ktj(j), dsig)
                        call filld('j'//cnum(j)//'-ptzoom'//cptmin(i)
     $                       //cmjj(ii), ktj(j), dsig)      
                     enddo
c     diffj1j2
                     do j=1,mjets-1
                        do k=j+1,mjets
                           call deltaplot(pj(:,j),pj(:,k),dsig,'j'//cnum(j)//'j'//cnum(k),
     $                          cptmin(i)//cmjj(ii))
                        enddo
                     enddo
c     dphiorij1j2
                     do j=1,mjets-1
                        do k=j+1,mjets
                           call getdphiori(pj(:,j),pj(:,k),dphiori)                           
                           call filld('j'//cnum(j)//'j'//cnum(k)
     $                          //'-dphior'//cptmin(i)//cmjj(ii), dphiori, dsig)
                           if (dphiori < 0d0) dphiori = dphiori + 2*pi
                           call filld('j'//cnum(j)//'j'//cnum(k)
     $                          //'-dphinor'//cptmin(i)//cmjj(ii), dphiori, dsig)
                        enddo
                     enddo                         
                  endif
                  call getdphieta(pj(:,1),pj(:,2),dphieta)
                  call filld('j1j2-dphieta'//cptmin(i)//cmjj(ii),dphieta,dsig)            
               enddo
            endif

         endif                  
      enddo
      
      end

c      subroutine yetaptmassplot(p,dsig,prefix)
c      implicit none
c      real * 8 p(4),dsig(*)
c      character *(*) prefix
c      real * 8 y,eta,pt,m
c      call getyetaptmass(p,y,eta,pt,m)
c      call filld(prefix//'-y',y,dsig)
c      call filld(prefix//'-eta',eta,dsig)
c      call filld(prefix//'-pt',pt,dsig)
c      call filld(prefix//'-m',m,dsig)
c      end

      subroutine deltaplot(p1,p2,dsig,prefix,postfix)
      implicit none
      include 'pwhg_math.h'
      real * 8 p1(4),p2(4),dsig(*)
      character *(*) prefix,postfix
      real * 8 dy,deta,delphi,dr
      real * 8 dsiglocal(7)
      call getdydetadphidr(p1,p2,dy,deta,delphi,dr)
c      call filld(prefix//'-dy'//postfix,dy,dsig)
      call filld(prefix//'-deta'//postfix,abs(deta),dsig)
      dsiglocal(1:7) = dsig(1:7)/2      
      call filld(prefix//'-delphi'//postfix,delphi,dsiglocal)
      call filld(prefix//'-delphi'//postfix,2*pi-delphi,dsiglocal)     
c      call filld(prefix//'-dr'//postfix,dr,dsig)
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
      dr=sqrt(deta**2+dphi**2)
      end

      subroutine getdphiori(p1,p2,dphiori)
c     see eq.(47) from arXiv:hep-ph/2002.09888
      implicit none
      include 'pwhg_math.h'
      real * 8 p1(4),p2(4),dphiori
      real * 8 z_p1txp2t,z_p1mp2,p1ap2,mod_p1t,mod_p2t

      z_p1mp2   = p1(3)-p2(3)
      z_p1txp2t = p1(1)*p2(2)-p1(2)*p2(1)

      if (z_p1txp2t == 0d0) then
c     j1t parallel to j2t  => acrcos(j1t \cdot j2t) = 0
         dphiori = 0d0
         return
      endif
      if (z_p1mp2==0) then
c     \vec(j1) and \vec(j2) belong to xy plane or \vec(j1) = \vec(j2)
c     return value OUTSIDE the plotting region
         dphiori = 2*pi
         write(*,*) "WARNING: null value of z_p1mp2"
         return
      endif
      z_p1mp2  =  sign(1d0,z_p1mp2)
      z_p1txp2t = sign(1d0,z_p1txp2t)      
c      z_p1mp2   = z_p1mp2 / abs(z_p1mp2)
c      z_p1txp2t = z_p1txp2t / abs(z_p1txp2t)      
      mod_p1t = sqrt(p1(1)**2 + p1(2)**2)
      mod_p2t = sqrt(p2(1)**2 + p2(2)**2)      
      p1ap2 = acos((p1(1)*p2(1)+p1(2)*p2(2))/mod_p1t/mod_p2t)          
      dphiori = z_p1txp2t * z_p1mp2 * p1ap2      
      end

c return deltaphi between p1 and p2, ordered in pseudorapidity      
      subroutine getdphieta(p1,p2,dphieta)
c     see eq. (4.1) from arXiv:hep-ph/0703202
      implicit none
      include 'pwhg_math.h'
      real * 8 p1(4),p2(4),dphieta,delphi
      real * 8 eta1,eta2,pplus(4),pminus(4),aziplus,aziminus
      call pwhg_getpseudorapidity(p1,eta1)
      call pwhg_getpseudorapidity(p2,eta2)

      if (eta1 > eta2) then
         pplus = p1
         pminus = p2
      else
         pplus = p2
         pminus = p1
      endif
c     atan2 returns values between -pi and +pi
      aziplus=atan2(pplus(2),pplus(1))
      aziminus=atan2(pminus(2),pminus(1))      
c     translate negative values in order to have azimuthal angles between 0 and 2*pi
      if (aziplus < 0d0) aziplus = 2*pi + aziplus
      if (aziminus < 0d0) aziminus = 2*pi + aziminus
      
      dphieta = aziplus - aziminus

      call pwhg_getdelta_azi(pplus,pminus,delphi)

      dphieta = delphi * sign(1d0,sin(dphieta))
            
      end

 
      subroutine buildjets(iflag,rr,ptmin,mjets,kt,eta,rap,phi,
     $     ptrel,pjet)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
      integer iflag,mjets
      real * 8  rr,ptmin,kt(*),eta(*),rap(*),
     1     phi(*),ptrel(3),pjet(4,*)
      include   'hepevt.h'
      include  'LesHouches.h'
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      real * 8  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,jb,i
      real * 8 r,palg,pp,tmp
      logical islept
      external islept
      real * 8 vec(3),pjetin(0:3),pjetout(0:3),beta,
     $     ptrackin(0:3),ptrackout(0:3)
      real * 8 get_ptrel
      external get_ptrel
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
c all but the Higgs
            if (isthep(j).eq.1.and..not.idhep(j).eq.25) then
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
C     R = 0.7   radius parameter
c palg=1 is standard kt, -1 is antikt
      palg=-1
      r=rr
c      ptmin=20d0 
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
         call getyetaptmass(pjet(:,j),rap(j),eta(j),kt(j),tmp)
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo

c     loop over the hardest 3 jets
      do j=1,min(njets,3)
         do mu=1,3
            pjetin(mu) = pjet(mu,j)
         enddo
         pjetin(0) = pjet(4,j)         
         vec(1)=0d0
         vec(2)=0d0
         vec(3)=1d0
         beta = -pjet(3,j)/pjet(4,j)
         call mboost(1,vec,beta,pjetin,pjetout)         
c     write(*,*) pjetout
         ptrel(j) = 0
         do i=1,ntracks
            if (jetvec(i).eq.j) then
               do mu=1,3
                  ptrackin(mu) = ptrack(mu,i)
               enddo
               ptrackin(0) = ptrack(4,i)
               call mboost(1,vec,beta,ptrackin,ptrackout) 
               ptrel(j) = ptrel(j) + get_ptrel(ptrackout,pjetout)
            endif
         enddo
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
