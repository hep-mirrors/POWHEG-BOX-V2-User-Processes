ccc colour stripped partial amplitude for M12
      real*8 function M12()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M12 = 
     .      (4*(2*mgo**2-2*msq2**2-s+s1+2*s2g)*(2*mgo**2-s+2*s2g-2*t1)+4*(2
     .      *mgo**2+2*msq2**2-s+2*s2g)*t2)/(s*s1**2)
            else if(deltac1c2.eq.1) then
              M12 = 
     .      (4*(2*mgo**2-2*msq2**2-s+s1+2*s2g)*(2*mgo**2-s+2*s2g-2*t1)+4*(2
     .      *mgo**2+2*msq2**2-s+2*s2g)*t2)/(s*s1**2)
            else
              write(*,*) 'Error in M12: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M12 = 
     .      (4*(4*mgo**4*npg-8*mgo**2*msq2**2*npg+4*msq2**4*npg+4*msq2**2
     .      *nkq*s-4*mgo**2*npg*s+npg*s**2+4*mgo**2*npg*s1-nkq*s*s1-npg*s
     .      *s1+nk2*s*(-2*mgo**2+2*msq2**2+s-s1-2*s2g)+8*mgo**2*npg*s2g-8
     .      *msq2**2*npg*s2g-4*npg*s*s2g+4*npg*s1*s2g+4*npg*s2g**2+nk1*s*(2
     .      *mgo**2-2*msq2**2-s+s1+2*s2g)+npq*(4*mgo**4+8*msq2**4+s**2-s*s1
     .      -4*s*s2g+6*s1*s2g+4*s2g**2-2*s*t1+2*s1*t1+4*s2g*t1+s*t2-2*s2g
     .      *t2-2*mgo**2*(6*msq2**2+2*s-3*s1-4*s2g-2*t1+t2)-2*msq2**2*(s+6
     .      *s2g+2*t1+t2))))/(npg*s*s1**2)
            else if(deltac1c2.eq.1) then
              M12 = 
     .      (4*(4*mgo**4*npg-8*mgo**2*msq2**2*npg+4*msq2**4*npg+4*msq2**2
     .      *nkq*s-4*mgo**2*npg*s+npg*s**2+4*mgo**2*npg*s1-nkq*s*s1-npg*s
     .      *s1+nk2*s*(-2*mgo**2+2*msq2**2+s-s1-2*s2g)+8*mgo**2*npg*s2g-8
     .      *msq2**2*npg*s2g-4*npg*s*s2g+4*npg*s1*s2g+4*npg*s2g**2+nk1*s*(2
     .      *mgo**2-2*msq2**2-s+s1+2*s2g)+npq*(4*mgo**4+8*msq2**4+s**2-s*s1
     .      -4*s*s2g+6*s1*s2g+4*s2g**2-2*s*t1+2*s1*t1+4*s2g*t1+s*t2-2*s2g
     .      *t2-2*mgo**2*(6*msq2**2+2*s-3*s1-4*s2g-2*t1+t2)-2*msq2**2*(s+6
     .      *s2g+2*t1+t2))))/(npg*s*s1**2)
            else
              write(*,*) 'Error in M12: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M12 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
