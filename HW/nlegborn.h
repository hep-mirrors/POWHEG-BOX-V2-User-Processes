c -*- Fortran -*-     

      integer nlegborn,nlegreal
      parameter (nlegborn=           5 )
      parameter (nlegreal=nlegborn+1)
      
      integer ndiminteg
      parameter (ndiminteg=(nlegreal-2)*3-4+2+1)
      
      integer maxprocborn,maxprocreal
      parameter (maxprocborn=12,maxprocreal=36)
      
      integer maxalr
      parameter (maxalr=maxprocreal*nlegreal*(nlegreal-1)/2)
