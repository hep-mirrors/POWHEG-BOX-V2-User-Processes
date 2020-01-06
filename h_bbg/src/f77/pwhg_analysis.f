c-----------------------------------------------------------------------
c-----> book histograms      
      subroutine init_hist
      implicit none
      include     'LesHouches.h'
      include     'pwhg_math.h'
      include     'pwhg_bookhist-multi.h'

      call inihists

      call bookupeqbins('total', 1d0,  0d0,     1d0)

      write(*,*)'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
      write(*,*)'@@               BOOKING HISTOGRAMS                @@'
      write(*,*)'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'

      return
      end




c-----------------------------------------------------------------------
c-----> fill in histograms
      subroutine analysis(dsig0)
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_rwl.h'
      include 'hepevt.h'
      include 'LesHouches.h'
      include 'PhysPars.h'
      include 'cluster.h'

      real*8 dsig(7),dsig0

      character*6 WHCPRG
      common/cWHCPRG/WHCPRG
      data    WHCPRG/'NLO   '/

      logical ini
      data ini/.true./
      save ini

      real*8 mbb,pb1(4),pb2(4),ph(4),pg(4)
      real*8 ptrack(4,mxtrack),pjet(4,mxtrack)
      integer flavtrack(mxtrack),flavjet(mxtrack)
      real*8 rfj,jptcut,xalgo
      integer jetvec(mxtrack),palg,njet,ntrack,nbjet
      integer i,j,ib,ib1,ib2,ibjet1,ibjet2,ihep,nbquarks
      integer bquarks(mxtrack)
      real*8 test,ptotal(4)
      real*8 phi,costh,length
      real*8 x1,x2,x3,xktglue
      real*8 Qsq,ycut,Qhiggs
      real*8 xbjet,ptbjet1,ptbjet2,xpt
      character*7 title
      real*8 ktsq,xkt,dotx

      logical xcuts,testcuts
      character*5 ytext
      real*8 epsilon,x2max,xratio,xratioTMP
      integer algo

      real*8 y3

      !>> reset weights
      dsig=0

      if(ini) then
         if(WHCPRG.eq.'NLO   ') then
            rwl_num_weights=0
         endif
         if(rwl_num_weights.eq.0) then
            call setupmulti(1)
         else
            call setupmulti(rwl_num_weights)
         endif
         ini=.false.
      endif

      if(rwl_num_weights.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:rwl_num_weights)=rwl_weights(1:rwl_num_weights)
      endif

      call filld('total',  0.5d0,  dsig)

      return
      end



