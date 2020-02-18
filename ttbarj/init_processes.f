      subroutine init_processes
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_st.h"
      include 'pwhg_rad.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_par.h'
      integer i, int(maxprocreal), k, j
      integer nmaxres_real,nmaxres_born,dim_integ
      real * 8 powheginput,qmass,tmp
      logical openloopsreal,openloopsvirtual
      common/copenloopsreal/openloopsreal,openloopsvirtual
      real *8 R_jet,ptmin_jet
      common/cjetdefs/R_jet,ptmin_jet
      logical debug
      parameter (debug=.true.)

c even up upper bound limits for radiation in equivalent amplitudes
      flg_evenmaxrat = .true.

c invert default behaviour for the following flags:
c whether to save btilde calls to set up upper bounding envelope
      if(powheginput('#storemintupb').eq.0d0) then
         flg_storemintupb = .false.
      else
         flg_storemintupb = .true.
      endif
c whether to save btilde calls to set up upper bounding envelope
      if(powheginput('#fastbtlbound').eq.0d0) then
         flg_fastbtlbound = .false.
      else
         flg_fastbtlbound = .true.
      endif

      openloopsreal = powheginput("#openloopsreal") /= 0
      openloopsvirtual = powheginput("#openloopsvirtual") /= 0

      do i=1,maxprocreal
         int(i)=i
      enddo

c     check nlegborn. This is only a sanity check while we are TESTING
c     the code and we change often from one process to the other
      if (nlegborn.ne.5) then
         write(*,*) ' ERROR: set nlegborn to the appropriate value'
         write(*,*) ' for this process in nlegborn.h'
         stop
      endif

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   JET DEFINITIONS AND HVQ MASS MANDATORY TO DEFINE THE PROCESS
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      R_jet=powheginput('R_jet')
      ptmin_jet=powheginput('ptmin_jet')
      qmass=powheginput("#topmass")
      if (qmass.lt.0 ) then
         qmass=172.9d0
      endif
c     number of light flavors
      if(qmass.lt.3) then
         st_nlight = 3
      elseif(qmass.lt.10) then
         st_nlight = 4
      else
         st_nlight = 5
      endif

*********************************************************************
c     index of the first LIGHT coloured parton in the final state
c     (all subsequent particles are coloured)
c     THIS IS INDEPENDENT FROM st_nlight
      flst_lightpart=5
*********************************************************************
C     set initial- and final-state masses for Born and real
      do k=1,nlegreal
         kn_masses(k)=0d0
      enddo
c     Set the mass only for heavy particles
      kn_masses(flst_lightpart-2)=qmass
      kn_masses(flst_lightpart-1)=qmass
      kn_minmass=2*qmass

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc  OPTIONAL PARAMETERS
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      tmp=powheginput('#par_isrtinycsi')
      if(tmp.ge.0) then
         par_isrtinycsi=tmp
      endif
      tmp=powheginput('#par_fsrtinycsi')
      if(tmp.ge.0) then
         par_fsrtinycsi=tmp
      endif
      tmp=powheginput('#par_isrtinyy')
      if(tmp.ge.0) then
         par_isrtinyy=tmp
      endif
      tmp=powheginput('#par_fsrtinyy')
      if(tmp.ge.0) then
         par_fsrtinyy=tmp
      endif
      tmp=powheginput('#par_diexp')
      if(tmp.ge.0) then
         par_diexp = tmp
         par_dijexp= tmp
      endif
      tmp=powheginput('#jacsing')
      if(tmp.eq.1) flg_jacsing=.true.
      tmp=powheginput('#collremnsamp"')
      if(tmp.eq.1) flg_collremnsamp=.true.


c     print out the parameters
      if (debug) then
         print *
         print *, " PARAMETER VALUES"
         print *, " par_csicut      = ", par_csicut
         print *, " par_diexp       = ", par_diexp
         print *, " par_dijexp      = ", par_dijexp
         print *, " par_2gsupp      = ", par_2gsupp
         print *, " par_isrtinycsi  = ", par_isrtinycsi
         print *, " par_fsrtinycsi  = ", par_fsrtinycsi
         print *, " par_isrtinyy    = ", par_isrtinyy
         print *, " par_fsrtinyy    = ", par_fsrtinyy
         print *, " flg_jacsing     = ", flg_jacsing
         print *, " flg_collremnsamp= ", flg_collremnsamp
         print *
         print *, " NUMBER OF LIGHT FLAVOURS = ", st_nlight
         print *, " FIRST MASSLES COLORED PARTICLE = ", flst_lightpart
      endif




c minlo setup
      st_bornorder = 1
      call minlo_checks
      if (nlegborn.ne.5) then
         write(*,*) ' ERROR: set nlegborn to the appropriate value'
         write(*,*) ' for this process in nlegborn.h'
         stop
      endif

      call init_processes_born
      call init_processes_real

***************************************************************
      if (debug) then
         write(*,*) ' born processes',flst_nborn
         do j=1,flst_nborn
            write(*,*) (flst_born(k,j),k=1,nlegborn)
         enddo
      endif
      if (debug) then
         write(*,*) ' real processes',flst_nreal
         do j=1,flst_nreal
            write(*,*) (flst_real(k,j),k=1,nlegreal)
         enddo
      endif
      call init_top_dec(st_nlight+1)
      return
      end


      subroutine init_processes_born
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_st.h"
      integer nflav,ihvq
      real * 8 powheginput
      external powheginput
      integer i1,i2,i3,i4,i5,k,ii(5)
      equivalence (i1,ii(1)),(i2,ii(2)),(i3,ii(3)),
     #(i4,ii(4)),(i5,ii(5))
      logical condition
*********************************************************************
***********            BORN SUBPROCESSES              ***************
*********************************************************************
c     Identity of heavy particles
      ihvq=st_nlight+1
      nflav=st_nlight
      i3=ihvq
      i4=-ihvq
      flst_nborn=0
      do i1=-nflav,nflav
         do i2=-nflav,nflav
            if(i1.ne.0.and.i1+i2.eq.0) then
c q qbar
               i5=0
               if(powheginput('#qqbproc').ne.0) goto 20
            endif
c a quark and a gluon
            if(i1*i2.eq.0) then
               if(i1.ne.0) then
                  i5=i1
                  if(powheginput('#qgproc').ne.0) goto 20
               elseif(i2.ne.0) then
                  i5=i2
                  if(powheginput('#gqbproc').ne.0) goto 20
               endif
            endif
c two gluons
            if((i1.eq.0).and.(i2.eq.0))then
               i5=0
               if(powheginput('#ggproc').ne.0) goto 20
            endif
            goto 21
 20         continue
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c     Uncomment the following line to obtain the same 9
c     processes implemented in MCFM, useful for checking
c           if((i5.ne.0).or.(abs(i1).eq.5)) goto 21
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            flst_nborn=flst_nborn+1
            if(flst_nborn.gt.maxprocborn) goto 999
            do k=1,nlegborn
               flst_born(k,flst_nborn)=ii(k)
            enddo
 21         continue
         enddo
      enddo
      return
 999  write(*,*) 'init_processes: increase maxprocborn'
      stop
      end



      subroutine init_processes_real
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_st.h"
      integer nflav,ihvq
      real * 8 powheginput
      external powheginput
      integer i1,i2,i3,i4,i5,i6,j,k,ii(6)
      equivalence (i1,ii(1)),(i2,ii(2)),(i3,ii(3)),
     #  (i4,ii(4)),(i5,ii(5)),(i6,ii(6))
      logical condition
      logical flavequiv
      external flavequiv
*********************************************************************
***********            REAL SUBPROCESSES              ***************
*********************************************************************
c     Identity of heavy particles
      ihvq=st_nlight+1
      nflav=st_nlight
      i3=ihvq
      i4=-ihvq
      flst_nreal=0
      condition=.false.
      do i1=-nflav,nflav
         do i2=-nflav,nflav
            do i5=-nflav,nflav
               do i6=-nflav,nflav
                  condition=(i1+i2).eq.(i5+i6)
                  condition=condition.and.((
     $                 ((i1.eq.i5).or.(i1.eq.i6))
     $                 .and.
     $                 (i2.eq.i5).or.(i2.eq.i6))
     $                 .or.
     $             ((abs(i1).eq.abs(i2)).and.(abs(i5).eq.abs(i6))))
                  if(condition) then
                     do j=1,flst_nreal
c     Check that an inequivalent configuration is generated
                        if(flavequiv(nlegreal,flst_real(1,j),ii(1)))
     $                       goto 10
                     enddo

c     check if the corresponding channel are open
                     if((i1.ne.0.and.i1+i2.eq.0) .and.(powheginput
     $                    ('#qqbproc').ne.0))  goto 11

                     if((i1*i2.eq.0).and.(i1.ne.0).and.(powheginput
     $                    ('#qgproc').ne.0)) goto 11

                     if((i1*i2.eq.0).and.(i2.ne.0).and.(powheginput
     $                    ('#gqbproc').ne.0)) goto 11

                     if((i1.eq.0).and.(i2.eq.0).and.(powheginput
     $                    ('#ggproc').ne.0)) goto 11

                     if((i1.ne.0).and.(i1+i2.ne.0).and.(i1.ne.i2).and
     $                    .(powheginput('#qqpproc').ne.0)) goto 11

                     if((i1.ne.0).and.(i1+i2.ne.0).and.(i1.eq.i2).and
     $                    .(powheginput('#qqproc').ne.0)) goto 11


                     goto 10
 11                  continue
                     flst_nreal=flst_nreal+1
                     if(flst_nreal.gt.maxprocreal) goto 998
                     do k=1,nlegreal
                        flst_real(k,flst_nreal)=ii(k)
                     enddo
 10                  continue
                  endif
               enddo
            enddo
         enddo
      enddo
      return
 998  write(*,*) 'init_processes: increase maxprocreal'
      stop
      end



      subroutine init_top_dec(nhvq)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      include 'LesHouches.h'
      integer nhvq
      integer itdec
      integer iwp1,iwp2,iwm1,iwm2
      real * 8 mdecwp1,mdecwp2,mdecwm1,mdecwm2,totbr
      real * 8 powheginput
      external powheginput
      if(nhvq.eq.6) then
         itdec=powheginput('#topdecaymode')
         if(itdec.lt.0) itdec=0
         if(itdec.ne.0) then
            lprup(1)=300000+itdec
c first call to pickwdecay, to initialize and get back the branching fraction
            call pickwdecays(iwp1,mdecwp1,iwp2,mdecwp2,
     #                 iwm1,mdecwm1,iwm2,mdecwm2,totbr)
            rad_branching=totbr
            print *," POWHEG: branching ratio ",totbr
         endif
      endif
      end
