ccc colour stripped partial amplitude for M4M11
      real*8 function M4M11()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M4M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M4M11 = 
     .      (2*((s2g-t1)*(s1+4*t1)+mgo**2*(-4*msq2**2+s1+4*t1-t2)-(s2g-2*t1)
     .      *t2-msq2**2*(s+4*s2g-4*t1+t2)+s*(-3*t1+t2)))/(s1*(mgo**2-t1)*t2)
            else
              write(*,*) 'Error in M4M11: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M4M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M4M11 = 
     .      (-2*(4*mgo**2*msq2**2*nkq-8*msq2**4*nkq+4*msq2**4*npg+msq2**2
     .      *nkq*s-mgo**2*nkq*s1+4*msq2**2*nkq*s2g-nkq*s1*s2g-4*mgo**2*nkq
     .      *t1+12*msq2**2*nkq*t1-8*msq2**2*npg*t1+3*nkq*s*t1-7*nkq*s1*t1
     .      +4*npg*s1*t1-4*nkq*s2g*t1-4*nkq*t1**2+4*npg*t1**2+mgo**2*nkq*t2
     .      +5*msq2**2*nkq*t2-2*msq2**2*npg*t2-nkq*s*t2+npq*(-4*msq2**2+s1)
     .      *t2+nkq*s2g*t2+2*nkq*t1*t2-2*npg*t1*t2+nk2*(-msq2**2+t1)*t2+nk1
     .      *t2*(3*msq2**2-s1-3*t1+t2)))/(npg*s1*(mgo**2-t1)*t2)
            else
              write(*,*) 'Error in M4M11: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M4M11 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
