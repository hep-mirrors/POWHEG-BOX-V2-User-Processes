      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      real(kind(1d0)) ::  p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      real(kind(1d0)) ::  bmunu(0:3,0:3,nlegborn), born
      integer :: bflav(nlegborn)

      call set_ebe_couplings
      call sborn_proc(p,bflav,born,bornjk,bmunu)

      end

      subroutine borncolour_lh
c Wrapper subroutine to call the MadGraph code to associate
c a (leading) color structure to an event.
      implicit none
      include 'nlegborn.h'
      include 'LesHouches.h'
      integer bflav(nlegborn),color(2,nlegborn)
      integer i,j
      do i=1,nlegborn
         bflav(i)=idup(i)
         if (bflav(i).eq.21) bflav(i)=0
      enddo
      call born_color(bflav,color)
      do i=1,2
         do j=1,nlegborn
            icolup(i,j)=color(i,j)
         enddo
      enddo
      end

      subroutine finalize_lh
      implicit none
      include 'LesHouches.h'
      real(kind(1d0)) :: Qfin(4)
      integer :: ii
      logical, parameter :: debug = .false.

      ! Consistency check
      if( nup .ne. 5 .AND. nup .ne. 6 ) then 
        print*, "Error in finalize_lh: nup = ",nup
        print*, "nup has to be 5 or 6!"
        stop
      endif

      ! ttW decay modelling
      call ttW_decay

      ! give masses to final state particles
      call lhefinitemasses

      ! Print debug information
      if( debug ) then 
        print*, "Resonances:"
        do ii = 1, nup
          if( istup(ii) .eq. 2) then 
            print*, idup(ii), pup(1:5,ii)
          endif
        enddo
        print*, "Momentum conservation:"
        Qfin(1:4) = 0d0
        do ii = 3,nup
          if( istup(ii) .eq. 1) Qfin(1:4) = Qfin(1:4) + pup(1:4,ii)
        enddo
        print*, "Ini: ", pup(1:4,1) + pup(1:4,2)
        print*, "Fin: ", Qfin(1:4)
        print*, "On-shell ness:"
        do ii = 1, nup
          print*, ii, dsqrt(dabs(pup(4,ii)**2 - pup(3,ii)**2 - 
     .    pup(2,ii)**2 - pup(1,ii)**2)),  pup(5,ii)
        enddo
      endif
      end
