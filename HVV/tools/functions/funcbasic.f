c############### funcbasic.f ###########################################
c some simple auxiliary functions for matrix elements
c 2012-04 AvM
c last modified by Julien Baglio, 10/03/2014
c adapted from dislepton in POWHEG-BOX-V1

c############### functions #############################################


c squared of a four vector
      real *8 function momsq(p)
      implicit none

      real *8 p(0:3), dotp
      external dotp

      momsq = dotp(p,p)

      end



c squared of sum of 2 four vectors
      real *8 function momsum2sq(p1,p2)
      implicit none

      real *8 p1(0:3),p2(0:3),psum(0:3)
      real *8 dotp
      external dotp
      integer j

      do j=0,3
         psum(j) = p1(j) + p2(j)
      enddo
        momsum2sq = dotp(psum,psum)

      end



c squared of sum of 3 four vectors
      real *8 function momsum3sq(p1,p2,p3)
      implicit none

      real *8 p1(0:3),p2(0:3),p3(0:3),psum(0:3)
      real *8 dotp
      external dotp
      integer j

      do j=0,3
         psum(j) = p1(j) + p2(j) + p3(j)
      enddo
      momsum3sq = dotp(psum,psum)

      end

c############### end functions #########################################
