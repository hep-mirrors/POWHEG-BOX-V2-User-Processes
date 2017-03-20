c -*- Fortran -*-

      integer nmxhep
      parameter (nmxhep=10000)
      integer idhep,isthep,jdahep,jmohep,nevhep,nhep
      real*8 phep,vhep
      common/ph_hepevt/nevhep,nhep,isthep(nmxhep),idhep(nmxhep),
     1jmohep(2,nmxhep),jdahep(2,nmxhep),phep(5,nmxhep),vhep(4,nmxhep)
      save /ph_hepevt/
