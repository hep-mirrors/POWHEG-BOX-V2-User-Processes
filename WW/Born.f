      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer nlegs
      parameter (nlegs=nlegborn)
      real * 8 p(0:3,nlegs),bornjk(nlegs,nlegs)
      integer bflav(nlegs)
      real * 8 bmunu(0:3,0:3,nlegs),born

      call setwzcoupl(bflav(1),bflav(2),bflav(5),bflav(7))

      call compborn(p,bflav,born,bmunu,bornjk)

c      write(*,*) ' born=',born

      end


      subroutine compborn(pin,bflav,born,bmunu,bornjk)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'constants.f'
      include 'PhysPars.h'
      integer nlegs
      parameter (nlegs=nlegborn)
      real * 8 pin(0:3,nlegborn)
      integer bflav(nlegborn)
      real * 8 born,bmunu(0:3,0:3,nlegs),bornjk(nlegs,nlegs)
      real *8 amp2,colcf
      integer i,j,k,mu,nu
      real * 8 p(mxpart,1:4)  
      double precision msq
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

      do i=1,6
         if(i.le.2) then
            k=i
         else
            k=i+2
         endif
         p(i,4)   = pin(0,k) 
         p(i,1:3) = pin(1:3,k) 
      enddo
      p(1,:) = -p(1,:) 
      p(2,:) = -p(2,:) 

      call qqb_ww(p,msq)

      born = msq*normbr
C     -- no gluons, so no spin correlated Born  
      do i=0,3
         do j=0,3
            bmunu(i,j,:)=0d0
         enddo
      enddo
      
      bornjk=0d0
C     -- here the bornjk is very simple B_i j = B C_i
      do j=1,nlegs
         if(abs(bflav(j)).le.6) then
            do k=j+1,nlegs
               if(abs(bflav(k)).le.6) then
                  colcf=cf
                  bornjk(j,k)=born*colcf
                  bornjk(k,j)=bornjk(j,k)
               endif
            enddo
         endif
      enddo
      
      end


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
      logical isquark
c     neutral particles
      icolup(1,3)=0
      icolup(2,3)=0
      icolup(1,4)=0
      icolup(2,4)=0
      icolup(1,5)=0
      icolup(2,5)=0
      icolup(1,6)=0
      icolup(2,6)=0
c     colored particles
      if((idup(1).gt.0).and.(idup(2).lt.0)) then
         icolup(1,1)=501
         icolup(2,1)=0
         icolup(1,2)=0
         icolup(2,2)=501
      elseif((idup(1).lt.0).and.(idup(2).gt.0)) then
         icolup(1,1)=0
         icolup(2,1)=501
         icolup(1,2)=501
         icolup(2,2)=0
      else
         write(*,*) ' invalid flavour'
         call pwhg_exit(-1)
      endif
      if(isquark(idup(5))) then
         icolup(1,5)=502
         icolup(2,5)=0
         icolup(1,6)=0
         icolup(2,6)=502
      else
         icolup(:,5)=0
         icolup(:,6)=0
      endif
      if(isquark(idup(7))) then
         icolup(1,7)=503
         icolup(2,7)=0
         icolup(1,8)=0
         icolup(2,8)=503
      else
         icolup(:,7)=0
         icolup(:,8)=0
      endif      
      end

      subroutine finalize_lh
      implicit none
      include 'LesHouches.h'
      logical isquark

c 6 and 7 are EW down

      if(isquark(idup(6))) call randomizeckm(idup(6),idup(6))
      if(isquark(idup(7))) call randomizeckm(idup(7),idup(7))
      
      call lhefinitemasses

      end
