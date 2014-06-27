c -*- Fortran -*-
c The user must set nlegborn to the appropriate value for his process.
c     for squark-squark-production
      integer nlegborn,nlegreal

      parameter (nlegborn=8)
      parameter (nlegreal=nlegborn+1)

c     ndiminteg is the dimensionality of the full real integral
c     ndiminteg=(nlegreal-2)*3-4+2-1
c     if there are undecayed resonances, we need extra variables to pilot
c     the resonance's masses

      integer ndiminteg
C     -4: (p,E) conservation 
C     +2: x1 x2 
C     -1: azimuthal-integration  

      parameter (ndiminteg=(nlegreal-2-2)*3-4+2-1-2*1) ! we keep the decaying squarks in the flst-arrays-> additional -2; moreover: 2 resonances-> -2*1

      integer maxprocborn,maxprocreal,maxflow !maxflow-> max. number of color-flows in real MES
      parameter (maxprocborn=500,maxprocreal=1000,maxflow=10)

      integer maxalr
      parameter (maxalr=maxprocreal*nlegreal*(nlegreal-1)/2)
