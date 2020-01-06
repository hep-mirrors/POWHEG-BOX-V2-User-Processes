c -*- Fortran -*-

c The user must set nlegborn to the appropriate value for his process.
      integer nlegborn,nlegreal
      
      parameter (nlegborn=6)
      parameter (nlegreal=nlegborn+1)

c     ndiminteg is the dimensionality of the full real integral
c     ndiminteg=(nlegreal-2)*3-4+2-1
c     if there are undecayed resonances, we need extra variables to pilot
c     the resonance's masses

      integer ndiminteg
ccc      parameter (ndiminteg=(nlegreal-2)*3-4+2-1)
      parameter (ndiminteg=8) !!>> ndiminteg = (3born+real)*3 - 4 = 12 - 4 = 8
cc      parameter (ndiminteg=5) !!>> for tests neglect Euler angles (just x1,x2+radiation)

      integer maxprocborn,maxprocreal
      parameter (maxprocborn=1,maxprocreal=6)

      integer maxalr
      parameter (maxalr=maxprocreal*nlegreal*(nlegreal-1)/2)
