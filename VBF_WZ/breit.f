      subroutine breitw(x1,mminsq,mmaxsq,rmass,rwidth,msq,wt)       
      implicit none
c---- Given a number 0<x<1 generate a mass-squared msq and a weight wt 
c---- such that mminsq<msq<mmaxsq
c---- points are generated around resonance position rmass, but 
c---- breit-wigner should still be included in the matrix element
c     wt is the jacobian between integration in msq and integration in x1
      double precision x1,mminsq,mmaxsq,rmass,rwidth,msq,wt
      double precision almin,almax,al,tanal
      include 'pwhg_math.h'
      include 'widths.h'

c--- in case the maximum msq is very small, just generate linearly for safety
      if (mmaxsq .lt. rmass*1d-3) then
        msq=mminsq+x1*(mmaxsq-mminsq)
        wt=mmaxsq-mminsq
        return
      endif

      if (zerowidth) then
          tanal=0d0
          almax=+pi/2d0 
          almin=-pi/2d0 
      else
          almin=datan((mminsq-rmass**2)/rmass/rwidth)
          almax=datan((mmaxsq-rmass**2)/rmass/rwidth)
          al=(almax-almin)*x1+almin
          tanal=dtan(al)
      endif

      msq=rmass**2+rmass*rwidth*tanal
      if(msq.lt.0d0) then
         msq = 0d0
         wt = 0d0
      else
         wt=(almax-almin)*rmass*rwidth*(1d0+tanal**2)
      endif
      return
      end
