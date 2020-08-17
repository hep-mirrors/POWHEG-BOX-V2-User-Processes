      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'pwhg_kn.h'
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
      real * 8 bmunu(0:3,0:3,nlegborn),born

      if (kn_jacborn==0d0) then
         born=0d0
         bornjk=0d0
         bmunu=0d0
         return
      endif

      
      call update_as_param2(sqrt(st_muren2),st_alpha)
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
      end
