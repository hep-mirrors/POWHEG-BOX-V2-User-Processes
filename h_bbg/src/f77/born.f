      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'PhysPars.h'
      include 'math_const.f'
      integer nlegs
      parameter (nlegs=nlegborn)
      real * 8 p(0:3,nlegs),bornjk(nlegs,nlegs)
      integer bflav(nlegs)
      real * 8 bmunu(0:3,0:3,nlegs),bmunu_calc,born,colcf
      integer j,k,mu,nu
      real*8 pHiggs(0:3),pb1(0:3),pb2(0:3),pg(0:3)
      real*8 msq_xxh,couplingsq
      real*8 msq_Hbbg0
      real*8 msq_hbbgDEC,msq_HbbgFA

      real*8 born_test1,born_test2

      born=0d0
      bornjk=0d0
      bmunu=0d0

!     !>> momenta
      pHiggs(0:3) = p(0:3,3)
      pb1(0:3)=p(0:3,4)
      pb2(0:3)=p(0:3,5)
      pg(0:3)= p(0:3,6)

      born = msq_Hbbg0( p(0:3,4:6) )

c----------> Born[j,k]
      bornjk(4,4) = - CF      * born
      bornjk(4,5) = - half/Nc * born
      bornjk(4,6) = + half*CA * born
      bornjk(5,4) = - half/Nc * born
      bornjk(5,5) = - CF * born
      bornjk(5,6) = + half*CA * born
      bornjk(6,4) = + half*CA * born
      bornjk(6,5) = + half*CA * born
      bornjk(6,6) = - CA      * born

c----------> Bmunu
      bmunu=0d0
      do mu=0,3
         do nu=0,3
            bmunu(mu,nu,6) = bmunu_calc(mu,nu,pHiggs,pb1,pb2,pg)
         enddo
      enddo

      return
      end



c#######################################################################
c#######################################################################
      subroutine borncolour_lh
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
c colours of incoming quarks, antiquarks
      integer icolqi(2),icolai(2),icolgi(2),
     #        icolqf(2),icolaf(2),icolgf(2)
      data icolqi/ 501, 0   /
      data icolai/ 0  , 502 /
      data icolgi/ 502, 501 /
      data icolqf/ 502, 0   /
      data icolaf/ 0  , 501 /
      data icolgf/ 501, 502 /
      save icolqi,icolai,icolgi,icolqf,icolaf,icolgf
      logical no_b1,no_b2,no_gl
      no_b1=.true.
      no_b2=.true.
      no_gl=.true.
c----------> set everything to neutral:
      icolup=0
c----------> set b, b~ and gluon:
      do j=1,nlegborn
         if( idup(j).eq.5 )then
            icolup(1,j) = icolqf(1)
            icolup(2,j) = icolqf(2)
            no_b1=.false.
         elseif( idup(j).eq.-5 )then
            icolup(1,j) = icolaf(1)
            icolup(2,j) = icolaf(2)
            no_b2=.false.
         elseif( idup(j).eq.21 )then
            icolup(1,j) = icolgf(1)
            icolup(2,j) = icolgf(2)
            no_gl=.false.
         endif
      enddo

      if( no_b1 )then
         write(*,*) 'B-quark not found! Cannot assign colour!'
         stop
      elseif( no_b2 )then
         write(*,*) 'B-antiquark not found! Cannot assign colour!'
         stop
      elseif( no_gl )then
         write(*,*) 'Gluon not found! Cannot assign colour!'
         stop
      endif

      end


c#######################################################################
c#######################################################################
      subroutine finalize_lh
      implicit none
c     Set up the resonance whose mass must be preserved
c     on the Les Houches interface.

c     give masses to final-state products
      call lhefinitemasses
      end
