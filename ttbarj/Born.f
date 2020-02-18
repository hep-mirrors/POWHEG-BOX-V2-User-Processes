      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call OL Born
      implicit none
      include 'nlegborn.h'
      integer, parameter :: nlegs=nlegborn
      real * 8, intent(in)  :: p(0:3,nlegs)
      integer,  intent(in)  :: bflav(nlegs)
      real * 8, intent(out) :: born
      real * 8, intent(out) :: bornjk(nlegs,nlegs)
      real * 8, intent(out) :: bmunu(0:3,0:3,nlegs)

      call openloops_born(p,bflav,born,bornjk,bmunu)
      end subroutine setborn

      subroutine setbornonly(p,bflav,born)
c Wrapper subroutine to call OL Born
      implicit none
      include 'nlegborn.h'
      integer, parameter :: nlegs=nlegborn
      real * 8, intent(in)  :: p(0:3,nlegs)
      integer,  intent(in)  :: bflav(nlegs)
      real * 8, intent(out) :: born

      call openloops_born(p,bflav,born)
      end subroutine setbornonly






