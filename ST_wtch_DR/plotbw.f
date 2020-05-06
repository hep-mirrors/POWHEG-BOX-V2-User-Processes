c     to plot a BW function as an histogram, where each bin contains the
c     integral of the bw(x) function in that bin (not divided by the
c     binsize)

      implicit none
      integer ibin,nbin,npoints,ipoint
      real*8 binsize,binint,qmin,q,q1,q2,weight,x,bw,total
      
      real *8 kappa,mw,gammaw
      common/cbw/kappa,mw,gammaw
      kappa=1d0
      mw=80d0
      gammaw=2d0

      nbin=70
      binsize=2d0
      qmin=23d0

      npoints=1000

      total=0d0
      do ibin=0,nbin-1
         q1=qmin+ibin*binsize
         q2=qmin+(ibin+1)*binsize
         q=(q2+q1)/2d0
         weight=0d0
         do ipoint=1,npoints
            x=q1+rand(0)*(q2-q1)
            weight=weight+bw(x)
         enddo
         weight=weight*binsize/npoints
         total=total+weight
         write(123,*) q1,q2,weight
      enddo
      write(*,*) 'total(including binsize) is',total
      
      end

      function bw(x)
      real *8 kappa,mw,gammaw
      common/cbw/kappa,mw,gammaw
      real*8 bw,x
      bw = kappa*(mw*gammaw)**2/(3.1415d0)/((x**2-mw**2)**2 + (gammaw
     $     *mw)**2)
      return
      end
