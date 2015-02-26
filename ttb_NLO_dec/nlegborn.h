c -*- Fortran -*-

c The user must set nlegborn to the appropriate value for his process.
      integer nlegborn,nlegreal
      
      parameter (nlegborn=12)
      parameter (nlegreal=nlegborn+1)

c     ndiminteg is the dimensionality of the full real integral
c     ndiminteg=(nlegreal-2)*3-4+2-1
c     if there are undecayed resonances, we need extra variables to pilot
c     the resonance's masses

      integer ndiminteg
c add 2 to account for t and tbar virtualities
      parameter (ndiminteg=19)
 

      integer maxprocborn,maxprocreal
      parameter (maxprocborn=11,maxprocreal=95)


      integer maxalr
      parameter (maxalr=maxprocreal*nlegreal*(nlegreal-1)/2)
