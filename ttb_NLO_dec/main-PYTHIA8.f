      program main_pythia8
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      integer j,k,l,m,iret,kloop,kpy8
      integer maxev
      common/mcmaxev/maxev
      integer canveto
      integer allrad,nlowhich
      real * 8 vetoscaletp,vetoscaletm,
     1         vetoscalewp,vetoscalewm
      common/resonancevetos/vetoscaletp,vetoscaletm,
     1                      vetoscalewp,vetoscalewm,canveto
      integer ntpdec,ntmdec,tpiddec(8),tmiddec(8)
      real * 8 tpdecsc,tmdecsc,tppdec(4,8),tmpdec(4,8)
      common/ctptmdec/tpdecsc,tmdecsc,tppdec,tmpdec,
     1     ntpdec,ntmdec,tpiddec,tmiddec
      integer py8tune,nohad
      common/cpy8tune/py8tune,nohad
      real * 8 powheginput,scalupfac,phepdot
      logical weveto
      external powheginput

      WHCPRG='PYTHIA'

      py8tune = powheginput("#py8tune")
      nohad = powheginput("#nohad")

      allrad = powheginput("#allrad")
      nlowhich = powheginput("#nlowhich")

c default is .true. ; set it to zero to switch it off (not recommended!)      
      weveto = .not. powheginput("#weveto") .ne. 0

c     canveto MUST be set before a call to pythia_init
      if(nlowhich.eq.1) then
         canveto = 0
      else
         canveto = 1
      endif

c we do the vetoing
      if(weveto) canveto = 0

      scalupfac=powheginput('#scalupfac')
      if(scalupfac.lt.0) scalupfac=1

      call init_hist

      call getmaxev(maxev)

      call lhefreadhdr(97)

      call pythia_init

      nevhep=0
      kpy8 = 0
      do l=1,maxev

         call lhefreadev(97)
         scalup=scalupfac*scalup
         if(nlowhich.eq.0) then
c This is not useful here; must be before pythia_init
c to be effective
c            canveto = 1
            if(allrad.eq.1) then
               call findresscale( 6,vetoscaletp)
               call findresscale(-6,vetoscaletm)
            else
               vetoscaletp = scalup
               vetoscaletm = scalup
            endif
         elseif(nlowhich.eq.1) then
c            canveto = 0
         elseif(nlowhich.eq.2) then
c            canveto = 1
            vetoscaletp = scalup
            vetoscaletm = scalup
         elseif(nlowhich.eq.4) then
c            canveto = 1
            vetoscaletp = scalup
c            call findresscale( 6,scalup)
c            write(*,*) 'vetoscaletp/scalup', vetoscaletp/scalup
            vetoscaletm = pup(5,4)
            scalup = sqrt(2*phepdot(pup(:,1),pup(:,2)))
            !ER: try to set this to a (much) bigger value and see what happens
            ! on tbar observables
         else
            write(*,*) 'nlowhich = ',nlowhich,' not yet implemented'
            call pwhg_exit(-1)
         endif

c don't veto W's
         vetoscalewp=100
         vetoscalewm=100

c useful to check that py8 is doing what we are telling him
         if(l.lt.10) then
            write(*,*) 'veto scales: ',l,scalup,vetoscaletp,
     1           vetoscaletm,canveto
         endif

         m=1
         do kloop=1,1000000
c Insist to shower this event;
            call pythia_next(iret)
            kpy8 = kpy8+1
            
            if(iret.ne.1) then
               write(*,*) ' return code ',iret
               if(m.eq.1) then
                  write(*,*) ' Pythia could not shower this event'
                  call printleshouches
               endif
               write(*,*) ' retry'
               if(m.gt.4) then
                  write(*,*) ' after 5 attempts'
                  write(*,*) ' abandoning the event'
                  exit
               endif
               m=m+1
            else
               call pythia_to_hepevt(nmxhep,nhep,isthep,
     1              idhep,jmohep,jdahep,phep,vhep)
               if(weveto) then
                  call getdechardness(1,tpdecsc,ntpdec,tpiddec,tppdec)
                  call getdechardness(-1,tmdecsc,ntmdec,tmiddec,tmpdec)
                  call boost2reson4(tppdec,ntpdec,tppdec,tppdec)
                  call boost2reson4(tmpdec,ntmdec,tmpdec,tmpdec)
                  if(nlowhich.eq.0) then
                     if(allrad.eq.1) then
                        if(tpdecsc.gt.vetoscaletp.or.
     1                    tmdecsc.gt.vetoscaletm) then
                           continue
                        else
                           exit
                        endif
                     else
                        if(tpdecsc.gt.scalup.or.tmdecsc.gt.scalup) then
                           continue
                        else
                           exit
                        endif
                     endif                     
                  elseif(nlowhich.eq.1) then
                     exit
                  elseif(nlowhich.eq.4) then
                     if(tpdecsc.gt.vetoscaletp) then
                        continue
                     else
                        exit
                     endif
                  endif
               else
                  exit
               endif
            endif
         enddo

         if(iret.eq.1) then
            if(nevhep.lt.0) then
               do j=1,nhep
                  write(*,100)j,isthep(j),idhep(j),jmohep(1,j),
     1           jmohep(2,j),jdahep(1,j),jdahep(2,j), (phep(k,j),k=1,5)
               enddo
            endif
            call pyanal
            if(nevhep.gt.0.and.mod(nevhep,1000).eq.0) then
               write(*,*)'# of events processed=',kpy8
               write(*,*)'# of events generated=',nevhep
               call pyaend
            endif 
         endif
      enddo

      write(*,*) 'At the end NEVHEP is ',nevhep
!:      write(*,*) 'At the end: #warnings= ',mstu(27),' #errors= ',mstu(23)
c---user's terminal calculations
      call pyaend
 100  format(i4,2x,i5,2x,i5,2x,i4,1x,i4,2x,i4,1x,i4,2x,5(d10.4,1x))
      end


      subroutine pyanal
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
c     check parameters
      logical verbose
      parameter (verbose=.false.)
      real * 8 powheginput
      external powheginput
      nevhep=nevhep+1
      if(abs(idwtup).eq.3) xwgtup=xwgtup*xsecup(1)
      call analysis(xwgtup)
      call pwhgaccumup 
      end

      subroutine getmaxev(maxev)
      integer maxev
C--- Opens input file and counts number of events, setting MAXEV;
      call opencount(maxev)
      end

      subroutine pyaend
      character * 20 pwgprefix
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      include 'pwhg_rnd.h'

      call pwhgsetout

      if(rnd_cwhichseed.eq.'none') then
         call pwhgtopout(pwgprefix(1:lprefix)//
     1                   'POWHEG+PYTHIA8-output')
      else
         call pwhgtopout(pwgprefix(1:lprefix)//
     1                   '-'//rnd_cwhichseed //'-'//
     2                   'POWHEG+PYTHIA8-output')
      endif

      end

      subroutine printleshouches
c useful for debugging
      call lhefwritev(6)
      end

c...lhefeader(nlf)
c...writes event information to a les houches events file on unit nlf. 
      subroutine lhefwritev(nlf)
      implicit none
      integer nlf
      include 'LesHouches.h'
      include 'pwhg_flg.h'
      integer i,j
      write(nlf,'(a)')'<event>'
      write(nlf,210) nup,idprup,xwgtup,scalup,aqedup,aqcdup
      do 200 i=1,nup
         write(nlf,220) idup(i),istup(i),mothup(1,i),
     & mothup(2,i),icolup(1,i),icolup(2,i),(pup(j,i),j=1,5),
     & vtimup(i),spinup(i)
 200  continue
      write(nlf,'(a)')'</event>'      
 210  format(1p,2(1x,i8),4(1x,e12.5))
 220  format(1p,i8,5(1x,i5),5(1x,e16.9),1x,e12.5,1x,e10.3)
      end


      subroutine findresscale(idres,scale)
      implicit none
      include "LesHouches.h"
      integer idres
      real * 8 scale
      real * 8 p(0:3,3),p0(0:3),dotp
      integer nres,ids(3),idb,idg,idw
      integer j,k
      nres=0
      do j=3,nup
         if(idup(j).eq.idres) then
            p0(1:3) = pup(1:3,j)
            p0(0) = pup(4,j)
            do k=3,nup
               if(mothup(1,k).eq.j) then
                  if(nres.ge.3) then
                     write(*,*)
     1                    ' findresscale: error: more than 3 '
     1                    //'particles in resonance decay'
                     call exit(-1)
                  endif
                  nres = nres+1
                  p(1:3,nres) = pup(1:3,k)
                  p(0,nres) = pup(4,k)
                  ids(nres) = idup(k)
               endif
            enddo
            goto 10
         endif
      enddo
 10   continue
      if(nres.lt.3) then
         scale = 0.8d0
         return
      endif
      call boost2reson(p0,nres,p,p)
      if(abs(idres).eq.6) then
         do j=1,3
            if(abs(ids(j)).eq.24) then
               idw=j
            elseif(abs(ids(j)).eq.5) then
               idb=j
            elseif(abs(ids(j)).eq.21) then
               idg=j
            endif
         enddo
c         scale = sqrt( (
c     1        (p(1,idg)*p(2,idw)-p(2,idg)*p(1,idw))**2+
c     2        (p(2,idg)*p(3,idw)-p(3,idg)*p(2,idw))**2+
c     3        (p(3,idg)*p(1,idw)-p(1,idg)*p(3,idw))**2 )
c     4         /
c     4        (p(1,idw)**2+p(2,idw)**2+p(3,idw)**2)  )
c
c
c         if(scale.lt.5d0) then
c            scale = min(5d0,p(0,idg))
c         endif
         scale = sqrt( 2 * dotp(p(:,idg),p(:,idb))*
     1        p(0,idg)/p(0,idb) )
      endif
      end


      subroutine getdechardness(ichtop,hardness,nmoms,iddec,pmoms)
c ichtop = +- 1, is the charge of the top.
c it returns the hardness of b radiation
      implicit none
      integer ichtop
      real * 8 hardness
      integer nmoms
      integer iddec(8)
      real * 8 pmoms(4,8)
      include 'hepevt.h'
      integer jhep
      integer i_top,i_b,i_w,i_g,j,k,wid,bid,tid
      real * 8 pchain(4,3)
      real * 8 phepdot
      nmoms = 0
      pmoms = 0
      iddec = 0
      tid = 6*ichtop
      wid = 24*ichtop
      bid = 5*ichtop
c find last top in record
      do jhep=1,nhep
         if(idhep(jhep).eq.tid) then
            i_top = jhep
         endif
      enddo
      pchain(:,1)=phep(1:4,i_top)
      pmoms(:,1) = pchain(:,1)
      iddec(1)=tid
      nmoms = 1
c look for top direct sons
      if(jdahep(2,i_top)-jdahep(1,i_top).eq.1) then
         i_w = jdahep(1,i_top)
         i_b = jdahep(2,i_top)
         if(idhep(i_w).ne.wid) then
            write(*,*) ' top did not go in W!'
            goto 998
         endif
         if(idhep(i_b).ne.bid) then
            write(*,*) ' top did not go in b!'
            goto 998
         endif
         nmoms = nmoms+1
         pmoms(:,nmoms) = phep(1:4,i_w)
         iddec(nmoms) = wid
         nmoms = nmoms+1
         pmoms(:,nmoms) = phep(1:4,i_b)
         iddec(nmoms) = bid
         if(jdahep(2,i_b)-jdahep(1,i_b).gt.1) then
            write(*,*) ' found b-> more than 2 particles'
            goto 998
         elseif(idhep(jdahep(1,i_b)).eq.bid
     1        .and.idhep(jdahep(2,i_b)).eq.21) then
c     the b has radiated a gluon
            pchain(:,2) = phep(1:4,jdahep(1,i_b))
            pchain(:,3) = phep(1:4,jdahep(2,i_b))
            nmoms = nmoms+1
            pmoms(:,nmoms) = pchain(:,2)
            iddec(nmoms) = bid
            nmoms = nmoms+1
            pmoms(:,nmoms) = pchain(:,3)
            iddec(nmoms) = 21
         else
            hardness = -1
            return
         endif
c now pchain contains the 4-momenta of the top, and the b-g pair
         call boost2reson4(pchain,3,pchain,pchain)
         
         hardness = sqrt( 2 * phepdot(pchain(:,2),pchain(:,3))
     1        * pchain(4,3)/pchain(4,2) )
         return
      elseif(jdahep(2,i_top)-jdahep(1,i_top).eq.2) then         
c here we have W b g 
         if(.not.(idhep(jdahep(1,i_top)).eq.wid
     1        .and.idhep(jdahep(1,i_top)+1).eq.bid
     2        .and.idhep(jdahep(2,i_top)).eq.21)) then
            write(*,*) ' was not expecting this!'
            goto 998
         endif
         i_w = jdahep(1,i_top)
         i_b = i_w+1
         i_g = i_b+1
         nmoms = nmoms+1
         pmoms(:,nmoms) = phep(1:4,i_w)
         iddec(nmoms) = wid
         nmoms = nmoms+1
         pmoms(:,nmoms) = phep(1:4,i_b)
         iddec(nmoms) = bid
         nmoms = nmoms+1
         pmoms(:,nmoms) = phep(1:4,i_g)
         iddec(nmoms) = 21
c see if b goes into b g
         if(jdahep(2,i_b)-jdahep(1,i_b).gt.1) then
            write(*,*) ' found b-> more than 2 particles'
            goto 998            
         endif
         if(idhep(jdahep(1,i_b)).eq.bid
     1        .and.idhep(jdahep(2,i_b)).eq.21) then
c     the b has radiated a gluon
            pchain(:,2) = phep(1:4,jdahep(1,i_b))
            pchain(:,3) = phep(1:4,jdahep(2,i_b))
            nmoms = nmoms+1
            pmoms(:,nmoms) = pchain(1:4,2)
            iddec(nmoms) = bid
            nmoms = nmoms+1
            pmoms(:,nmoms) = pchain(1:4,3)
            iddec(nmoms) = 21
            call boost2reson4(pchain,2,pchain(1,2),pchain(1,2))
            hardness = sqrt( 2 * phepdot(pchain(:,2),pchain(:,3))
     1        * pchain(4,3)/pchain(4,2) )
         else
            hardness = -1
         endif
         if(jdahep(2,i_g)-jdahep(1,i_g).eq.1) then
            pchain(:,2) = phep(1:4,jdahep(1,i_g))
            pchain(:,3) = phep(1:4,jdahep(2,i_g))
            nmoms = nmoms+1
            pmoms(:,nmoms) = pchain(1:4,2)
            iddec(nmoms) = idhep(jdahep(1,i_g))
            nmoms = nmoms+1
            pmoms(:,nmoms) = pchain(1:4,3)
            iddec(nmoms) = idhep(jdahep(2,i_g))
            call boost2reson4(pchain,2,pchain(1,2),pchain(1,2))
            hardness = max(hardness,
     1           sqrt( 2 * phepdot(pchain(:,2),pchain(:,3))
     2        * (pchain(4,3)*pchain(4,2))
     3           /(pchain(4,3)**2+pchain(4,2)**2)))
         elseif(jdahep(2,i_g)-jdahep(1,i_g).gt.1) then
            write(*,*) ' found g-> more than 2 particles'
            goto 998            
         endif
         return
      else
         write(*,*) ' was not expecting this!'
      endif
 998  continue
      write(*,*) 'top=',i_top
      do j=1,nhep
         write(*,100)j,isthep(j),idhep(j),jmohep(1,j),
     1        jmohep(2,j),jdahep(1,j),jdahep(2,j), (phep(k,j),k=1,5)
      enddo
      call exit(-1)
 100  format(i4,2x,i5,2x,i5,2x,i4,1x,i4,2x,i4,1x,i4,2x,5(d10.4,1x))
 999  end

