c############### nlegborn header #######################################
c last modified by Julien Baglio, 10/03/2015

c The user must set nlegborn to the appropriate value for his process.
c for Higgs + ZZ production in the SM
        integer nlegborn,nlegreal
        
        parameter (nlegborn=5)
        parameter (nlegreal=nlegborn+1)

c ndiminteg is the dimensionality of the full real integral
c if there are undecayed resonances, we need extra variables to pilot
c the resonance's masses
c -4: (p,E) conservation 
c +2: x1 x2 
c -1: azimuthal-integration  

        integer ndiminteg
        parameter (ndiminteg=(nlegreal-2)*3-4+2-1)

        integer maxprocborn,maxprocreal
        parameter (maxprocborn=999,maxprocreal=999)

        integer maxalr
        parameter (maxalr=maxprocreal*nlegreal*(nlegreal-1)/2)

c############### nlegborn header #######################################
