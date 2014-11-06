      integer nlegborn,nlegreal
      parameter (nlegborn=6)
      parameter (nlegreal=nlegborn+1)
      
      integer ndiminteg
      parameter (ndiminteg=(nlegreal-2)*3-4+2-1)
      
      integer maxprocborn,maxprocreal
      parameter (maxprocborn=175,maxprocreal=275)
      

      integer maxalr
c      parameter (maxalr=maxprocreal*nlegreal*(nlegreal-1)/2)
      parameter (maxalr=1945)
