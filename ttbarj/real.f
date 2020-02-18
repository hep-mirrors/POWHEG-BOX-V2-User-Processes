      subroutine setreal(p,rflav,amp2)
c Wrapper subroutine to call the OL real emission matrix
c elements and set the event-by-event couplings constant
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'nlegborn.h'
      integer, parameter :: nlegs=nlegborn+1
      real * 8 p(0:3,nlegs)
      integer rflav(nlegs)
      real * 8 amp2,amp2ol
      logical openloopsreal,openloopsvirtual
      common/copenloopsreal/openloopsreal,openloopsvirtual
      if (openloopsreal) then
         call openloops_real(p,rflav,amp2)
      endif
      end

      subroutine regularcolour_lh
      write(*,*) ' regularcolour_lh: there are
     $no regulars in this process'
      write(*,*) ' exiting ...'
      call exit(-1)
      end
