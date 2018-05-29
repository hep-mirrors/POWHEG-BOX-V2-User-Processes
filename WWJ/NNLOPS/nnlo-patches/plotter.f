      subroutine bookplot(n,tag,titlex,var,wt,xmin,xmax,dx,llplot) 
      implicit none
      include 'nplot.f'
      integer n
      character*(*) titlex
      character*3 llplot
      character*4 tag,mypart
      double precision var,wt,xmin,xmax,dx
      common/mypart/mypart

      if (tag.eq.'book') then
          call mbook(n,titlex,dx,xmin,xmax)
          call mbook(20+n,titlex,dx,xmin,xmax)
          call mbook(40+n,titlex,dx,xmin,xmax)
          call mbook(60+n,titlex,dx,xmin,xmax)
          call mbook(80+n,titlex,dx,xmin,xmax)
          call mbook(100+n,titlex,dx,xmin,xmax)
          call mbook(120+n,titlex,dx,xmin,xmax)
      elseif (tag .eq. 'plot') then
          call mfill(n,var,wt)
        linlog(n)=llplot
        titlearray(n)=titlex
      endif

      return
      end

    
      subroutine plotter(p,wt,switch)
      implicit none
      include 'clustering.f'
      include 'constants.f'
      include 'cutoff.f'
      include 'jetlabel.f'
      include 'npart.f'
      include 'mxdim.f'
      include 'process.f'
      include 'removebr.f'
      include 'masses.f'
      include 'runstring.f'


      character*2 plabel(mxpart)
      common/plabel/plabel

      integer n,switch,nplotmax,i,j
      character tag*4
  
      double precision wt
      double precision m34,m56,p(mxpart,4),fphi,Rjl
      double precision pt3,pt4,pt5,pt6,pt7,pt8
      double precision eta3,eta4,eta5,eta6,eta7,eta8
      double precision pt34,y34,pjm,pt3dpt4,tmass,ptmin,ptmax,m3456
      double precision pt56,y56,mfat,ptfat
      double precision pt,etarap,yraptwo,yrapfour,pttwo,R,pt3456
      double precision cosphi45,deltaphi,pto(1:4),tmp(1:2)
      integer eventpart,nqcdjets,nqcdstart
      
      logical first,jetmerge
!      character*30 runstring
!      common/runstring/runstring
      common/nplotmax/nplotmax
      common/nqcdjets/nqcdjets,nqcdstart
      common/jetmerge/jetmerge
      double precision realeventp(mxpart,4)
      common/realeventp/realeventp
      integer order,nproc,ndec,jlept
      common/nproc/nproc
      common/nnlo/order
      data first/.true./
      save first

      double precision p_l1(4),p_l2(4)
      integer particles,process,NNN

       if (first) then
        tag='book'
c--- ensure we initialize all possible histograms
        eventpart=npart+3
        eta3=0d0
        pt3=0d0
        eta4=0d0
        pt4=0d0
        eta5=0d0
        pt5=0d0
        eta6=0d0
        pt6=0d0
        eta7=0d0
        pt7=0d0
        eta8=0d0
        pt8=0d0

        y34=0d0
        pt34=0d0
        y56=0d0
        pt56=0d0
        pt3456=0d0
        m34=0d0
        m56=0d0
        m3456=0d0
        ptfat=0d0
        mfat=0d0

        Rjl=0d0

        deltaphi=0d0
        pto(1)=0d0
        pto(2)=0d0
        pto(3)=0d0
        pto(4)=0d0


        jetmerge=.true.
CC      Here set jets to the maximum number of jets 
CC      to book the necessary histograms: 0 at LO, 1 at NLO and 2 at NNLO
        jets=1
        jetlabel(1)='bb'
CC
        goto 99
      else
        tag='plot'
      endif

    

      eta3=etarap(3,p)
      pt3=pt(3,p)
      eta4=etarap(4,p)
      pt4=pt(4,p)        
      pt7=pt(7,p)        
      y34=yraptwo(3,4,p)
      pt34=pttwo(3,4,p)
      m34=dsqrt((p(3,4)+p(4,4))**2-(p(3,1)+p(4,1))**2
     .          -(p(3,2)+p(4,2))**2-(p(3,3)+p(4,3))**2)


C     Index of charged lepton

      jlept=4
      if(nproc.eq.5)jlept=3

 99   continue

      n=1                  

c-----> 1-plot for checks:
      call bookplot(n,tag,'m34',m34,wt,70d0,120d0,5d0,'lin')
      n=n+1

    
      n=n-1

      if (n .gt. 20) then
        write(6,*) 'WARNING - TOO MANY HISTOGRAMS!'
        write(6,*) n,' > 20, which is the built-in maximum'
        stop
      endif

ccccccccccccccccccccccccccccccccccccccccccccccc
c Ordering priority: electron, positron, neutrinos
c     W+ ( nu(p3)  e+(p4) )   nproc=4
c     W- ( e-(p3)  nu(p4) )   nproc=5
c     Z  ( e-(p3)  e+(p4) )   nproc=6
      if(nproc.eq.4) then
         process=1
         p_l1(1:4)=p(4,1:4)
         p_l2(1:4)=p(3,1:4)
      elseif(nproc.eq.5) then
         process=-1
         p_l1(1:4)=p(3,1:4)
         p_l2(1:4)=p(4,1:4)
      elseif(nproc.eq.6) then
         process=0
         p_l1(1:4)=p(3,1:4)
         p_l2(1:4)=p(4,1:4)
      else
         write(*,*) 'ERROR: plotter.f'
         write(*,*) 'Wrong decay channel!'
         stop
      endif
c Now lepton ordering is (as required by "analysis_nnlops-final")
c [-1]  W-:  l1=electron, l2=nu~
c [+1]  W+:  l1=positron, l2=nu
c [ 0]  Z :  l1=electron, l2=positron




      if(first) then
         call makeplots(.true.,process,6,p(1,1:4),p(2,1:4),p_l1,p_l2
     $        ,p(5,1:4)+p(6,1:4),p(7,1:4),p(8,1:4),wt)
      else 

         !-- check how many jets:
         if(p(8,4).eq.0d0)then
            if(p(7,4).eq.0d0)then
               particles=5
            else
               particles=6
            endif
         else
            particles=7
         endif
         
         !-- check for consistency:
         NNN=particles+1
         if(sum(p(1:NNN,4)).gt.1d-6)then
            write(676,*) 'ERROR: plotter.f, 
     $           Conservation of energy does not work!'
            write(676,*) 'sumE:',sum(p(1:NNN,4))
         endif

         !-- make plot
         call makeplots(.false.,process,particles,p(1,1:4),p(2,1:4),
     $        p_l1,p_l2
     $        ,p(5,1:4)+p(6,1:4),p(7,1:4),p(8,1:4),wt)
         
c         call pwhgaccumup3
c         call pwhgaccumup

      endif
c      n=0
ccccccccccccccccccccccccccccccccccccccccccccccc


c--- set the maximum number of plots, on the first call
      if (first) then
        first=.false.
        nplotmax=n
      endif
      

      return 
      end
      

      
