ccc colour stripped partial amplitude for M72
      real*8 function M72()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M72 = 
     .      (-16*(mgo**2-2*msq2**2+s2g-t1+t2)*(-msq2**4+mgo**2*(msq2**2-t1)
     .      +(s-s1-s2g)*t1+msq2**2*(s2g+t1+t2)))/((s-s1+t2)**2*(mgo**2+s2g
     .      -t1+t2)**2)
            else if(deltac1c2.eq.1) then
              M72 = 
     .      (-16*(mgo**2-2*msq2**2+s2g-t1+t2)*(-msq2**4+mgo**2*(msq2**2-t1)
     .      +(s-s1-s2g)*t1+msq2**2*(s2g+t1+t2)))/((s-s1+t2)**2*(mgo**2+s2g
     .      -t1+t2)**2)
            else
              write(*,*) 'Error in M72: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M72 = 
     .      (-32*(-(msq2**2*npg)+nk2*(mgo**2+s2g-t1+t2))*(-msq2**4+mgo**2
     .      *(msq2**2-t1)+(s-s1-s2g)*t1+msq2**2*(s2g+t1+t2)))/(npg*(s-s1+t2)
     .      **2*(mgo**2+s2g-t1+t2)**2)
            else if(deltac1c2.eq.1) then
              M72 = 
     .      (-32*(-(msq2**2*npg)+nk2*(mgo**2+s2g-t1+t2))*(-msq2**4+mgo**2
     .      *(msq2**2-t1)+(s-s1-s2g)*t1+msq2**2*(s2g+t1+t2)))/(npg*(s-s1+t2)
     .      **2*(mgo**2+s2g-t1+t2)**2)
            else
              write(*,*) 'Error in M72: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M72 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
