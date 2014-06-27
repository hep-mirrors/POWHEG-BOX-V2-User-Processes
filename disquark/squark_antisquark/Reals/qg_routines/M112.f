ccc colour stripped partial amplitude for M112
      real*8 function M112()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M112 = 
     .      (4*(s*(2*t1-t2)+2*mgo**2*(2*msq2**2-s1-2*t1+t2)-(s1+2*t1-t2)*(2
     .      *s2g-2*t1+t2)+2*msq2**2*(s+2*s2g-2*t1+t2)))/(s1**2*t2)
            else if(deltac1c2.eq.1) then
              M112 = 
     .      (4*(s*(2*t1-t2)+2*mgo**2*(2*msq2**2-s1-2*t1+t2)-(s1+2*t1-t2)*(2
     .      *s2g-2*t1+t2)+2*msq2**2*(s+2*s2g-2*t1+t2)))/(s1**2*t2)
            else
              write(*,*) 'Error in M112: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M112 = 
     .      (4*(4*mgo**2*msq2**2*nkq-8*msq2**4*nkq+4*msq2**4*npg+2*msq2**2
     .      *nkq*s-2*mgo**2*nkq*s1+4*msq2**2*nkq*s2g-2*nkq*s1*s2g-4*mgo**2
     .      *nkq*t1+12*msq2**2*nkq*t1-8*msq2**2*npg*t1+2*nkq*s*t1-6*nkq*s1
     .      *t1+4*npg*s1*t1-4*nkq*s2g*t1-4*nkq*t1**2+4*npg*t1**2+2*mgo**2
     .      *nkq*t2+2*msq2**2*nkq*t2-nkq*s*t2+nkq*s1*t2-npg*s1*t2+npq*(-4
     .      *msq2**2+s1)*t2+2*nkq*s2g*t2+4*nkq*t1*t2-4*npg*t1*t2+nk2*(-2*msq2
     .      **2+s1+2*t1-t2)*t2-nkq*t2**2+npg*t2**2+nk1*t2*(2*msq2**2-s1-2
     .      *t1+t2)))/(npg*s1**2*t2)
            else if(deltac1c2.eq.1) then
              M112 = 
     .      (4*(4*mgo**2*msq2**2*nkq-8*msq2**4*nkq+4*msq2**4*npg+2*msq2**2
     .      *nkq*s-2*mgo**2*nkq*s1+4*msq2**2*nkq*s2g-2*nkq*s1*s2g-4*mgo**2
     .      *nkq*t1+12*msq2**2*nkq*t1-8*msq2**2*npg*t1+2*nkq*s*t1-6*nkq*s1
     .      *t1+4*npg*s1*t1-4*nkq*s2g*t1-4*nkq*t1**2+4*npg*t1**2+2*mgo**2
     .      *nkq*t2+2*msq2**2*nkq*t2-nkq*s*t2+nkq*s1*t2-npg*s1*t2+npq*(-4
     .      *msq2**2+s1)*t2+2*nkq*s2g*t2+4*nkq*t1*t2-4*npg*t1*t2+nk2*(-2*msq2
     .      **2+s1+2*t1-t2)*t2-nkq*t2**2+npg*t2**2+nk1*t2*(2*msq2**2-s1-2
     .      *t1+t2)))/(npg*s1**2*t2)
            else
              write(*,*) 'Error in M112: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M112 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
