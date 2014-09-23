
      subroutine write_mom(p)
      implicit none
      real * 8 p(0:3)
      write(*,*) p(0),p(1),p(2),p(3), p(0)**2-p(1)**2-p(2)**2-p(3)**2
      end
      
