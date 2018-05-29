c -*- Fortran -*-

c The user must set nlegborn to the appropriate value for his process.
      integer ww_nlegborn,ww_nlegreal
      
      parameter (ww_nlegborn=6) ! pp -> W(l nu) W(l nu)
      parameter (ww_nlegreal=ww_nlegborn+1)

c     ndiminteg is the dimensionality of the full real integral
c     ww_ndiminteg=(ww_nlegreal-2)*3-4+2-1
c     if there are undecayed resonances, we need extra variables to pilot
c     the resonance's masses

      integer ww_ndiminteg
C     -4: (p,E) conservation 
C     +2: x1 x2 
C     -2: both Ws onshell      
C      parameter (ww_ndiminteg=(ww_nlegreal-2)*3-4+2-2) ! GZ Ok ? 
      parameter (ww_ndiminteg=(ww_nlegreal-4)*3-4+2) ! GZ Ok ? 
 

      integer ww_maxprocborn,ww_maxprocreal
      parameter (ww_maxprocborn=200,ww_maxprocreal=600)


      integer ww_maxalr
c      parameter (ww_maxalr=ww_maxprocreal*ww_nlegreal*(ww_nlegreal-1)/2)
      parameter (ww_maxalr=600)
