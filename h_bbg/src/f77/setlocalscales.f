      subroutine setlocalscales(iuborn,imode,rescfac)
c returns the rescaling factor including sudakov form factors and
c coupling rescaling, for Born (imode=1) and NLO corrections (imode=2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_st.h'
      include 'pwhg_flg.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'hepevt.h'
      include 'cluster.h'
      integer iuborn,imode
      real*8 rescfac,expsud,expsudakov,sudakov

      real*8 pwhg_alphas,powheginput
      external pwhg_alphas,powheginput

      logical ini
      data ini/.true./
      save ini

      real*8 alphas,as,b0,b1,xv,xx,y3,kresum
      real*8 Qsq,ktsq,musq
      save b0,b1,xv,kresum

      real*8 ptrack(4,mxtrack)
      integer itrack,ntrack,algo

      real*8 alphaFREEZE
      parameter( alphaFREEZE=1d0 )
c-----------------------------------------------------------------------

      if(ini) then
         b0=(33d0-2d0*st_nlight)/(12*pi)
         b1=(153d0-19d0*st_nlight)/(24*pi**2)
         ini = .false.
         kresum=powheginput('#xresummation')
         if( kresum.lt.0d0 ) kresum=1d0
         !>>  Q = sqrt( xv ) * MH
         xv = kresum**2
      endif

      rescfac = 1d0
c-----------------------------------------------------------------------
!     !>> code for Hbbg process:
      if( flg_minlo_real )then
         ntrack=4
         do itrack=1,ntrack
            ptrack(1:3,itrack)= kn_cmpreal(1:3,itrack+3)
            ptrack(4,itrack)=   kn_cmpreal(0,itrack+3)
         enddo
      else
         ntrack=3
         do itrack=1,ntrack
            ptrack(1:3,itrack)= kn_cmpborn(1:3,itrack+3)
            ptrack(4,itrack)=   kn_cmpborn(0,itrack+3)
         enddo
      endif

      if( ntrack.lt.3 .or. ntrack.gt.4 )then
         write(*,*)'ERROR!'
         write(*,*)'>> setlocalscales:'
         write(*,*)'>> number of tracks is not correct...'
         write(*,*)'>> ntrack=',ntrack
      endif

!     !>> jet clustering to get three-jet resolution parameter (y3)
      Qsq= ph_hmass**2          !!>> centre-of-mass energy

!     !>> Cambridge algorithm
      call get_y3_rate_Cambridge(Qsq,ptrack,ntrack,y3)

!     !>> compute sudakov and its O(as) expansion
      rescfac= sudakov(y3,xv)**2
      expsud=  2d0*expsudakov(y3,xv)

!     !>> compute strong coupling at lower scale (run from Q^2 ---> (xmur*kt)^2 )
      ktsq= Qsq * y3
      musq= ktsq *st_renfact**2
      
      as= pwhg_alphas(Qsq, st_lambda5MSB, st_nlight)
      xx= -as*b0*log( musq / Qsq )
      alphas=as/(1-xx)-as**2*b1*log(1-xx)/(b0*(1-xx)**2)

      if( ktsq.gt.(Qsq*kresum**2) )then
         rescfac = 1d0
         expsud = 0d0
      endif

!     !>> for numerical stability freeze alphas running at as==1
      if( alphas.gt.alphaFREEZE ) alphas=alphaFREEZE

!     !>> implement MiNLO rescaling
      if(imode.eq.2) then
         rescfac = rescfac * (alphas/st_alpha)**2
      else
         rescfac = rescfac * (alphas/st_alpha)
         if(.not.flg_bornonly) then
            rescfac = rescfac *
     $           (1+alphas*(-expsud + b0*log(musq/st_muren2) ))
         endif
      endif

      return
      end
