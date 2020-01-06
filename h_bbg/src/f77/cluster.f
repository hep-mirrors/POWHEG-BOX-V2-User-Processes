c#######################################################################      
      subroutine get_y3_rate_Cambridge(Qsq,
     $     ptrack,ntrack,y3out)
      implicit none

      include 'cluster.h'
      real*8 ::Qsq,y3out,ycut,yijmax
      real*8 :: ptrack(1:4,mxtrack),pjet(1:4,mxtrack)
      integer :: ntrack,njet
      logical :: cluster

!     !>> if too few tracks, return
      if( ntrack.lt.3 )then
         y3out = 0d0
         return
      endif
      
!     !>> clustering and computing y3
      ycut= 1d0                 !! start with max cut
      y3out= 1d0
      cluster=.true.
      do while (cluster)
         yijmax= 0d0
         pjet= ptrack
         njet= ntrack
         call cluster_cambridge(pjet,njet,ycut,Qsq,yijmax)
!     !>> we have reached two-jets (try clustering with slightly lower ycut)
         if( njet.eq.2 .and. yijmax.le.y3out )then
            y3out=yijmax
            ycut= yijmax
!     !>> ???
         elseif( njet.eq.ntrack .or. ycut.eq.yijmax )then
            cluster=.false.
            exit
         endif
         ycut= yijmax
      enddo

      return
      end


c########################################################################
      subroutine cluster_cambridge(ptrack,ntrack,ycut,Qsq,yijmax)
      implicit none

      include 'cluster.h'
      real*8 :: Qsq,ycut,yijmax,vmin,vij,yij,os
      real*8 :: ptrack(1:4,mxtrack),pjet(1:4,mxtrack),q(1:5,mxtrack)
      integer:: ntrack,njet,i,j,ii,jj,isoft
      integer:: njetmin,ndel
      real*8 :: qdummy(1:5)
      logical :: cluster

      njetmin=1
      ndel=0

!     !>> 
      q(1:4,:)= ptrack(1:4,1:mxtrack)
      q(5,:)= sqrt( q(1,:)**2 + q(2,:)**2 + q(3,:)**2 )
      cluster=.true.

      do while (cluster)
         os= 1d0/Qsq
         vmin= 1d6
!     !>> find the pair with minimym vij
         do i=1,ntrack-1
            do j=i+1,ntrack
               if( q(5,i).gt.0d0 .and. q(5,j).gt.0d0 )then
                  vij= 2d0*(
     $                 1d0
     $                 - (q(1,i)*q(1,j)+q(2,i)*q(2,j)+q(3,i)*q(3,j))
     $                 /(q(5,i)*q(5,j))
     $                 )
               endif
               if( vij.lt.vmin )then
                  vmin= vij
                  ii=i
                  jj=j
               endif
               yij= min(q(4,i),q(4,j))**2*os*vij
               if( yij.gt.yijmax .and. yij.lt.ycut ) yijmax=yij
            enddo
         enddo
!     !>> find the softer particle
         isoft=jj
         if( q(4,ii)<q(4,jj) ) isoft=ii
!     !>> check if yij > yvut
         yij= q(4,isoft)**2*os*vmin
         if( yij.lt.ycut )then
!     !>> recombine particles ii and jj
            q(1:4,ii)= q(1:4,ii) + q(1:4,jj)
            q(5,ii)= sqrt( q(1,ii)**2+q(2,ii)**2+q(3,ii)**2 )
!     !>> swap particle jj and last particle "ntrack"
            if( jj.ne.ntrack )then
               qdummy(1:5)= q(1:5,jj)
               q(1:5,jj)= q(1:5,ntrack)
               q(1:5,ntrack)= qdummy(1:5)
            endif
         else
            ndel= ndel+1
            q(1:5,isoft)=q(1:5,ntrack)
         endif
         ntrack= ntrack-1
         if( ntrack.eq.njetmin )then
            cluster=.false.
            exit
         endif
      enddo

      ntrack= ntrack+ndel

      return
      end
