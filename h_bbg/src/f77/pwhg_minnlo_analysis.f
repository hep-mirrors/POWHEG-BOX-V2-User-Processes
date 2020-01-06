c#######################################################################
c-----> book histograms
      subroutine init_hist
      implicit none

      logical ini
      data ini/.true./
      save ini

      include     'LesHouches.h'
      include     'pwhg_math.h'
      include     'pwhg_bookhist-multi.h'

      real*8 y3ref,y3pow
      common/y3values/y3ref,y3pow
      character*100 xstring
      common/histo_names/xstring

      real*8 powheginput
      external powheginput

      call inihists

      if(ini) then
         y3ref= powheginput('#y3ref')
         y3pow= powheginput('#y3pow')
         if( y3ref.lt.0d0 ) y3ref= exp( -4d0 )
         if( y3pow.lt.0d0 ) y3pow= 2d0  
         ini=.false.
         write(*,*)'USING:'
         write(*,*)'>> y3ref=',y3ref
         write(*,*)'>> y3pow=',y3pow
      endif

      write(xstring,111) y3ref,y3pow
      call bookupeqbins('total', 1d0,  0d0,     1d0)
      call bookupeqbins('tot-A'//trim(xstring), 1d0,  0d0,     1d0)
      call bookupeqbins('tot-B'//trim(xstring), 1d0,  0d0,     1d0)
      call bookupeqbins('y3-lin', 2d-4, 0d0, 1d-2)
      call bookupeqbins('y3-log', 2d-1, 0d0, 10d0)

 111  format(' y3ref ',d16.10,' y3pow ',f4.2)
      
      write(*,*)'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
      write(*,*)'@@                BOOKING HISTOGRAMS                @@'
      write(*,*)'@@               FOR MINLO PROCESSING               @@'
      write(*,*)'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'

      return
      end




c#######################################################################
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

      logical is_final, is_QCD_parton
      logical final_state, QCD_parton

      integer ntrack,ihep
      real*8 ptrack(4,mxtrack),ph(4),Qsq

      real*8 y3,y3pow,y3ref,h_y3
      common/y3values/y3ref,y3pow

      common/histo_names/xstring
      character*100 xstring

      real*8 powheginput
      external powheginput

      dsig=0
      if(rwl_num_weights.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:rwl_num_weights)=rwl_weights(1:rwl_num_weights)
      endif

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

      !> reset
      ntrack= 0
      ptrack= 0d0
      if(whcprg.eq.'NLO   ')then
         !>> QCD partons are in positions 4,5,...
         do ihep=4,nhep
            ntrack=ntrack+1
            ptrack(1:4,ntrack)=phep(1:4,ihep)
         enddo
         !>> Higgs (position 3)
         ihep=3
         ph(1:4)= phep(1:4,ihep)
         Qsq= ph(4)**2 - ph(1)**2 - ph(2)**2 - ph(3)**2
      else
         do ihep=3,nhep
            !>> Higgs
            if( isthep(ihep).ge.0 .and. idhep(ihep).eq.25 )then
               ph(1:4)= phep(1:4,ihep)
               Qsq= phep(5,ihep)**2
            endif
            !>> QCD partons
            final_state= is_final(isthep(ihep))
            QCD_parton= is_QCD_parton(idhep(ihep))
            if ( final_state.and.QCD_parton )then
               if(ntrack.eq.mxtrack) then
                  write(*,*)'ERROR: too many tracks!'
                  write(*,*)'-> ntrack: ',ntrack
                  write(*,*)'-> Increase "mxtrack" in "ee_flav.h"'
                  stop
               endif
               ntrack=ntrack+1
               ptrack(1:4,ntrack)=phep(1:4,ihep)
            endif
         enddo
      endif

      !>> calculate y3
      call get_y3_rate_Cambridge(Qsq,ptrack,ntrack,y3)

      !>> fill in the plots
      call filld('y3-lin', y3,          dsig )
      call filld('y3-log', log(1d0/y3), dsig )


      !>> h(pt) function
      h_y3 = 1d0 / ( 1d0 + (y3/y3ref)**y3pow )

      !>> fill in remaining plots
      call filld('total', 0.5d0, dsig )
      call filld('tot-A'//trim(xstring), 0.5d0, dsig*h_y3 )
      call filld('tot-B'//trim(xstring), 0.5d0, dsig*(1d0-h_y3) )

      return
      end



c#######################################################################
      function is_final(isthep)
      implicit none

      logical is_final
      integer isthep

      if( isthep.eq.1 )then
         is_final=.true.
      else
         is_final=.false.
      endif

      return
      end


c#######################################################################
      function is_QCD_parton(idhep)
      implicit none

      logical is_QCD_parton
      integer idhep

      is_QCD_parton=.false.

      if( idhep.eq.21 ) is_QCD_parton= .true.     !>> gluon
      if( abs(idhep).lt.6 ) is_QCD_parton= .true. !>> quarks (except top quark)

      return
      end
