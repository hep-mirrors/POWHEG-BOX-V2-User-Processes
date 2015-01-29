c This analysis should work as sanity check analysis
c for ZZ,WZ,WW production.
c Set the values of dec1p, dec1a, dec2p, dec2a
c in the powheg.input file
c equal to the pdg id of the VV decay products.
c Which one is 1 or 2 is decided as follows:
c            in WZ 1 is W
c            in WW 1 is W+;
c            in ZZ always have dec1p >= dec2p


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

      call setupmulti(9)
      call inihists

c     total cross section sanity check
      call bookupeqbins('total',1d0,0d0,1d0)

c     total cross section sanity check
      call bookupeqbins('totalcut',1d0,0d0,1d0)

      call bookupeqbins('lep1_y',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1_eta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1_pt',2d0,0d0,400d0)
      call bookupeqbins('lep1_m',2d0,0d0,400d0)

      call bookupeqbins('lep2_y',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2_eta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2_pt',2d0,0d0,400d0)
      call bookupeqbins('lep2_m',2d0,0d0,400d0)

      call bookupeqbins('alp1_y',0.2d0,-4d0,4d0)
      call bookupeqbins('alp1_eta',0.2d0,-4d0,4d0)
      call bookupeqbins('alp1_pt',2d0,0d0,400d0)
      call bookupeqbins('alp1_m',2d0,0d0,400d0)

      call bookupeqbins('alp2_y',0.2d0,-4d0,4d0)
      call bookupeqbins('alp2_eta',0.2d0,-4d0,4d0)
      call bookupeqbins('alp2_pt',2d0,0d0,400d0)
      call bookupeqbins('alp2_m',2d0,0d0,400d0)

      call bookupeqbins('lep1alp1_y',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1alp1_eta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1alp1_pt',2d0,0d0,400d0)
      call bookupeqbins('lep1alp1_m',2d0,0d0,400d0)

      call bookupeqbins('lep1alp2_y',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1alp2_eta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1alp2_pt',2d0,0d0,400d0)
      call bookupeqbins('lep1alp2_m',2d0,0d0,400d0)

      call bookupeqbins('lep2alp1_y',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2alp1_eta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2alp1_pt',2d0,0d0,400d0)
      call bookupeqbins('lep2alp1_m',2d0,0d0,400d0)

      call bookupeqbins('lep2alp2_y',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2alp2_eta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2alp2_pt',2d0,0d0,400d0)
      call bookupeqbins('lep2alp2_m',2d0,0d0,400d0)

      call bookupeqbins('4l_y',0.2d0,-4d0,4d0)
      call bookupeqbins('4l_eta',0.2d0,-4d0,4d0)
      call bookupeqbins('4l_pt',2d0,0d0,400d0)
      call bookupeqbins('4l_m',2d0,0d0,400d0)

      call bookupeqbins('j_y_20cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_y_40cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_y_60cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_y_100cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_y_200cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_y_400cut',0.2d0,-4d0,4d0)
      
      call bookupeqbins('j_dy_20cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_dy_40cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_dy_60cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_dy_100cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_dy_200cut',0.2d0,-4d0,4d0)
      call bookupeqbins('j_dy_400cut',0.2d0,-4d0,4d0)

      call bookupeqbins('lep1lep2_dy',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1lep2_deta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1lep2_delphi',pi/20,0d0,pi)
      call bookupeqbins('lep1lep2_dr',0.2d0,-8d0,8d0)
      
      call bookupeqbins('alp1alp2_dy',0.2d0,-4d0,4d0)
      call bookupeqbins('alp1alp2_deta',0.2d0,-4d0,4d0)
      call bookupeqbins('alp1alp2_delphi',pi/20,0d0,pi)
      call bookupeqbins('alp1alp2_dr',0.2d0,-8d0,8d0)
      
      call bookupeqbins('lep1alp1_dy',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1alp1_deta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1alp1_delphi',pi/20,0d0,pi)
      call bookupeqbins('lep1alp1_dr',0.2d0,-8d0,8d0)
      
      call bookupeqbins('lep1alp2_dy',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1alp2_deta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep1alp2_delphi',pi/20,0d0,pi)
      call bookupeqbins('lep1alp2_dr',0.2d0,-8d0,8d0)
      
      call bookupeqbins('lep2alp1_dy',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2alp1_deta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2alp1_delphi',pi/20,0d0,pi)
      call bookupeqbins('lep2alp1_dr',0.2d0,-8d0,8d0)
      
      call bookupeqbins('lep2alp2_dy',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2alp2_deta',0.2d0,-4d0,4d0)
      call bookupeqbins('lep2alp2_delphi',pi/20,0d0,pi)
      call bookupeqbins('lep2alp2_dr',0.2d0,-8d0,8d0)
      
      end
     
      subroutine analysis(dsig0)
      implicit none
      real * 8 dsig0,dsig(10)
      include 'hepevt.h'
      include 'pwhg_math.h' 
      include  'LesHouches.h'
      logical ini
      data ini/.true./
      save ini
c     binsize
c     we need to tell to this analysis file which program is running it
      integer   maxjet,mjets
      parameter (maxjet=2048)
      real * 8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1    phij(maxjet),pj(4,maxjet),rr
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      integer ihepv1,ihepv2,idtmp
      integer lep1,lep2,alp1,alp2
      integer dec1p,dec1a,dec2p,dec2a
      save dec1p,dec1a,dec2p,dec2a
      real * 8 plep1(4),plep2(4),palp1(4),palp2(4)
      real * 8 httot,y,eta,pt,m,mmin,mm1,mm2
      real * 8 dy,deta,delphi,dr
      integer ihep,itmp
      real * 8 powheginput,random
      external powheginput,random
      logical comesfromid,isnu,isquark,islepton,condition
      external comesfromid

      if(dsig0.eq.0) return

      dsig = 0
      dsig(1) = dsig0

c dsig(1) = full
c      2  = leptonic
c      3  = hadronic
c      4  = semileptonic
c      5  = hadrons + miss
c      6  = leptons + miss
c      7  = neutrinos

      if(ini) then
         if(whcprg.eq.'NLO') then
            write(*,*) '       NLO analysis'
         elseif(WHCPRG.eq.'LHE   ') then
            write(*,*) '       LHE analysis'
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS            '
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS            '
         endif
c set these in the powheg.input file, in such a way that
c in WZ 1 is W, in WW 1 is W+;
c in ZZ always have dec1p >= dec2p
         dec1p=powheginput('#dec1p')
         dec1a=powheginput('#dec1a')
         if(dec1a.lt.0.and.dec1a.gt.-100) dec1a=abs(dec1a)
         dec2p=powheginput('#dec2p')
         dec2a=powheginput('#dec2a')
         if(dec2a.lt.0.and.dec2a.gt.-100) dec2a=abs(dec2a)
         ini=.false.
      endif

c     find vector iheps
      ihepv1=0
      ihepv2=0
      do ihep=1,nhep
         idtmp=abs(idhep(ihep))
         if(idtmp.eq.24.or.idtmp.eq.23) then
            if(ihepv1.eq.0) then
               ihepv1=ihep
            elseif(ihepv2.eq.0) then
               ihepv2=ihep
            else
               ihepv1=ihepv2
               ihepv2=ihep
            endif
         endif
      enddo

c Put particles in order: W (24) before Z (23), W+ before W-
c i.e. always id1>=id2
      if(abs(idhep(ihepv1)).lt.abs(idhep(ihepv2)).or.
     1  (abs(idhep(ihepv1)).eq.abs(idhep(ihepv2)).and.
     2       idhep(ihepv1).lt.idhep(ihepv2))) then
         itmp=ihepv1
         ihepv1=ihepv2
         ihepv2=itmp
      endif

      if(powheginput("#W+Z").eq.1) then
c keep only W+ in WZ
         if(idhep(ihepv1).eq.-24) return
      endif

c     find vector decay products
      do ihep=1,nhep
         if(isthep(ihep).eq.1) then
            if(comesfromid(idhep(ihepv1),ihep)) then
               if(idhep(ihep).gt.0) then
                  lep1=ihep
               else
                  alp1=ihep
               endif
            elseif(comesfromid(idhep(ihepv2),ihep)) then
               if(idhep(ihep).gt.0) then
                  lep2=ihep
               else
                  alp2=ihep
               endif
            endif
         endif
      enddo

c In ZZ production, always have dec1p >= dec2p
      if(idhep(ihepv1).eq.idhep(ihepv2)) then
         if(idhep(lep1).lt.idhep(lep2)) then
            itmp=lep2
            lep2=lep1
            lep1=itmp
            itmp=alp2
            alp2=alp1
            alp1=itmp
         endif
      endif


c momenta before randomizing id's of identical leptons

      plep1=phep(1:4,lep1)
      palp1=phep(1:4,alp1)
      plep2=phep(1:4,lep2)
      palp2=phep(1:4,alp2)
    
      mmin = 1d16

c      if (idhep(lep1)+idhep(alp1).eq.0 
c     1    .and.  .not.(isnu(idhep(lep1)))
c     2     ) then 
      call getyetaptmass(plep1+palp1,y,eta,pt,m)
      mmin = min(m,mmin) 
      mm1 = m
c      endif
c      if (idhep(lep2)+idhep(alp2).eq.0
c     1     .and.  .not.(isnu(idhep(lep2)))
c     2     ) then 
      call getyetaptmass(plep2+palp2,y,eta,pt,m)
      mmin = min(m,mmin) 

      mm2 = m
c      endif
c      if (idhep(lep1)+idhep(alp2).eq.0
c     1    .and.   .not.(isnu(idhep(lep1)))
c     2     ) then 
      call getyetaptmass(plep1+palp2,y,eta,pt,m)
      mmin = min(m,mmin) 
c      endif
c      if (idhep(lep2)+idhep(alp1).eq.0
c     1    .and.   .not.(isnu(idhep(lep2)))
c     2     ) then 
      call getyetaptmass(plep2+palp1,y,eta,pt,m)
      mmin = min(m,mmin) 
c      endif




c If there are any pair of identical particles, swap them
c with 50% probability
      if(idhep(lep1).eq.idhep(lep2)) then
         if(random().gt.0.5d0) then
            itmp=lep2
            lep2=lep1
            lep1=itmp
         endif
      endif

            
      if(idhep(alp1).eq.idhep(alp2)) then
         if(random().gt.0.5d0) then
            itmp=alp2
            alp2=alp1
            alp1=itmp
         endif
      endif
            

c find a match with the required decay mode
         
      if(dec1p.gt.0.and.dec1p.ne.idhep(lep1)) return
      if(dec1a.gt.0.and.dec1a.ne.-idhep(alp1)) return
      if(dec2p.gt.0.and.dec2p.ne.idhep(lep2)) return
      if(dec2a.gt.0.and.dec2a.ne.-idhep(alp2)) return

      if( isquark(idhep(lep1)) .and. isquark(idhep(lep2)) )then
         dsig(3) = dsig(1)
      endif

      if(       (islepton(idhep(lep1)).or.islepton(idhep(alp1)))
     1     .and.(islepton(idhep(lep2)).or.islepton(idhep(alp2))))then
         dsig(2) = dsig(1)
      endif

      if(  (     (islepton(idhep(lep1)).or.islepton(idhep(alp1)))
     1     .and. isquark(idhep(lep2))  )
     2     .or.
     3     (     (islepton(idhep(lep2)).or.islepton(idhep(alp2)))
     1     .and. isquark(idhep(lep1))  )        ) then
            dsig(4) = dsig(1)
      endif

      if(  (     (isnu(idhep(lep1)).or.isnu(idhep(alp1)))
     1     .and. isquark(idhep(lep2))  )
     2     .or.
     3     (     (isnu(idhep(lep2)).or.isnu(idhep(alp2)))
     1     .and. isquark(idhep(lep1))  )        ) then
         dsig(5) = dsig(1)
      endif

      if(  (     (isnu(idhep(lep1)).or.isnu(idhep(alp1)))
     1     .and. (islepton(idhep(lep2)).or.islepton(idhep(alp2))) )
     2     .or.
     3     (     (isnu(idhep(lep2)).or.isnu(idhep(alp2)))
     1     .and. (islepton(idhep(lep1)).or.islepton(idhep(alp1))) ))then
         dsig(6) = dsig(1)
      endif


      if(        (isnu(idhep(lep1)).or.isnu(idhep(alp1)))
     1     .and. (isnu(idhep(lep2)).or.isnu(idhep(alp2))) )then
         dsig(7) = dsig(1)
      endif


      if(  idhep(lep1) .eq. idhep(lep2) .or.
     1     idhep(alp1) .eq. idhep(alp2) ) then
         dsig(8) = dsig(1)
      endif

      if(  idhep(lep1) .ne. idhep(lep2) .and.
     1     idhep(alp1) .ne. idhep(alp2) ) then
         dsig(9) = dsig(1)
      endif

      condition = .true.
      condition = condition .and. mmin .gt. 20d0
      if( idhep(ihepv1).eq.23 )
     1 condition = condition .and. mm1 .gt. 80 .and. mm1 .lt.100 
      if( idhep(ihepv2).eq.23 )
     1 condition = condition .and. mm2 .gt. 80 .and. mm2 .lt.100 
      if(condition) call filld('totalcut',0.5d0,dsig)


      call filld('total',0.5d0,dsig)

      rr=0.6d0 
      call buildjets(1,mjets,rr,ktj,etaj,rapj,phij,pj)

      plep1=phep(1:4,lep1)
      palp1=phep(1:4,alp1)
      plep2=phep(1:4,lep2)
      palp2=phep(1:4,alp2)


      call yetaptmassplot(plep1,dsig,'lep1')
      if(lep1.eq.lep2) then
         call yetaptmassplot(plep2,dsig,'lep1')
      else
         call yetaptmassplot(plep2,dsig,'lep2')
      endif
      call yetaptmassplot(palp1,dsig,'alp1')
      if(alp1.eq.alp2) then
         call yetaptmassplot(palp2,dsig,'alp1')
      else
         call yetaptmassplot(palp2,dsig,'alp2')
      endif

      if(lep2.eq.lep1.and.alp2.eq.alp1) then
         call yetaptmassplot(plep1+palp1,dsig,'lep1alp1')
         call yetaptmassplot(plep1+palp2,dsig,'lep1alp1')
         call yetaptmassplot(plep2+palp1,dsig,'lep1alp1')
         call yetaptmassplot(plep2+palp2,dsig,'lep1alp1')
      elseif(lep1.eq.lep2) then
         call yetaptmassplot(plep1+palp1,dsig,'lep1alp1')
         call yetaptmassplot(plep1+palp2,dsig,'lep1alp2')
         call yetaptmassplot(plep2+palp1,dsig,'lep1alp1')
         call yetaptmassplot(plep2+palp2,dsig,'lep1alp2')
      elseif(alp1.eq.alp2) then
         call yetaptmassplot(plep1+palp1,dsig,'lep1alp1')
         call yetaptmassplot(plep1+palp2,dsig,'lep1alp1')
         call yetaptmassplot(plep2+palp1,dsig,'lep2alp1')
         call yetaptmassplot(plep2+palp2,dsig,'lep2alp1')
      else
         call yetaptmassplot(plep1+palp1,dsig,'lep1alp1')
         call yetaptmassplot(plep1+palp2,dsig,'lep1alp2')
         call yetaptmassplot(plep2+palp1,dsig,'lep2alp1')
         call yetaptmassplot(plep2+palp2,dsig,'lep2alp2')
      endif

         
      call yetaptmassplot(plep1+plep2+palp1+palp2,dsig,'4l')

c jets
      if(mjets.gt.0) then
         if(ktj(1).gt.20) call filld('j_y_20cut',rapj(1),dsig)
         if(ktj(1).gt.40) call filld('j_y_40cut',rapj(1),dsig)
         if(ktj(1).gt.60) call filld('j_y_60cut',rapj(1),dsig)
         if(ktj(1).gt.100) call filld('j_y_100cut',rapj(1),dsig)
         if(ktj(1).gt.200) call filld('j_y_200cut',rapj(1),dsig)
         if(ktj(1).gt.400) call filld('j_y_400cut',rapj(1),dsig)
         call getdydetadphidr(plep1+plep2+palp1+palp2,pj(:,1),
     1        dy,deta,delphi,dr)
         if(ktj(1).gt.20) call filld('j_dy_20cut',dy,dsig)
         if(ktj(1).gt.40) call filld('j_dy_40cut',dy,dsig)
         if(ktj(1).gt.60) call filld('j_dy_60cut',dy,dsig)
         if(ktj(1).gt.100) call filld('j_dy_100cut',dy,dsig)
         if(ktj(1).gt.200) call filld('j_dy_200cut',dy,dsig)
        if(ktj(1).gt.400) call filld('j_dy_400cut',dy,dsig)
      endif

      call deltaplot(plep1,plep2,dsig,'lep1lep2')

      call deltaplot(plep1,palp1,dsig,'alp1alp2')

      if(lep2.eq.lep1.and.alp1.eq.alp2) then
         call deltaplot(plep1,palp1,dsig,'lep1alp1')
         call deltaplot(plep1,palp2,dsig,'lep1alp1')
         call deltaplot(plep2,palp1,dsig,'lep1alp1')
         call deltaplot(plep2,palp2,dsig,'lep1alp1')
      elseif(alp2.eq.alp1) then
         call deltaplot(plep1,palp1,dsig,'lep1alp1')
         call deltaplot(plep1,palp2,dsig,'lep1alp1')
         call deltaplot(plep2,palp1,dsig,'lep2alp1')
         call deltaplot(plep2,palp2,dsig,'lep2alp1')
      elseif(lep1.eq.lep2) then
         call deltaplot(plep1,palp1,dsig,'lep1alp1')
         call deltaplot(plep1,palp2,dsig,'lep1alp2')
         call deltaplot(plep2,palp1,dsig,'lep1alp1')
         call deltaplot(plep2,palp2,dsig,'lep1alp2')
      else
         call deltaplot(plep1,palp1,dsig,'lep1alp1')
         call deltaplot(plep1,palp2,dsig,'lep1alp2')
         call deltaplot(plep2,palp1,dsig,'lep2alp1')
         call deltaplot(plep2,palp2,dsig,'lep2alp2')
      endif

      end

      subroutine yetaptmassplot(p,dsig,prefix)
      implicit none
      real * 8 p(4),dsig(*)
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
      real * 8 p1(4),p2(4),dsig(*)
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



      subroutine buildjets(iflag,mjets,rr,kt,eta,rap,phi,pjet)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
      integer iflag,mjets
      real * 8  rr,kt(*),eta(*),rap(*),
     1     phi(*),pjet(4,*)
      include   'hepevt.h'
      include  'LesHouches.h'
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      real * 8  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,jb
      real * 8 r,palg,ptmin,pp,tmp
      logical islepton
      external islepton
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
            if (isthep(j).eq.1.and..not.islepton(idhep(j))) then
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
            if (istup(j).eq.1.and..not.islepton(idup(j))) then
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
C - Inclusive jet pT and Y spectra are to be compared to CDF data:    - C    
C --------------------------------------------------------------------- C
C     R = 0.7   radius parameter
C     f = 0.75  overlapping fraction
c palg=1 is standard kt, -1 is antikt
      palg=-1
      r=rr
      ptmin=1d0 
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
