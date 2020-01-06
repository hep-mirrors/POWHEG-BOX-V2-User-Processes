c#######################################################################
c## This file contains some auxiliary functions that are useful      
c#######################################################################
      
c-----------------------------------------------------------------------
c---> returns square of the 4-momentum
      function square4( p )
      implicit none

      real*8 p(0:3)
      real*8 square4

      square4 = p(0)**2 - p(1)**2 - p(2)**2 - p(3)**2

      return
      end

c-----------------------------------------------------------------------
c---> dot product of two 4-momenta
      function dot4(p1,p2)
      implicit none

      real*8 p1(0:3), p2(0:3)
      real*8 dot4

      dot4 = p1(0)*p2(0)
     $     - p1(1)*p2(1)
     $     - p1(2)*p2(2)
     $     - p1(3)*p2(3)

      return
      end
