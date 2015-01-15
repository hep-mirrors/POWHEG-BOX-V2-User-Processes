      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
      real * 8 bmunu(0:3,0:3,nlegborn),born
c
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
c Specify here if resonances need be written in the event file.
      implicit none
c      
c adapted from POWHEG-BOX/ttJ:
      include 'LesHouches.h'

c test only:
c      return

c     consistency check
      if ((nup.ne.5).and.(nup.ne.6)) then
         write(*,*) "Error in finalize_lh, nup=",nup
         write(*,*) "Only nup=5 or 6 allowed at this stage"
         write(*,*) "Halting execution"
         call exit(-1)
      endif
c     Performs the decay of top and anti-top quarks  
c      call randomsave
      call tth_decay
c      call randomrestore
c
c     give masses to final-state products
      call lhefinitemasses

      end
