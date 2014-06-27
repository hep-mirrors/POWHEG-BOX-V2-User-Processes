ccc colour stripped partial amplitude for M9M11
      real*8 function M9M11()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M9M11 = 
     .      (-4*(-(s1*(mgo**2+s2g-t1))-s*t1+(mgo**2-s1+s2g-2*t1)*t2+t2**2
     .      +msq2**2*(s+t2)))/(s1*(-s+s1-t2)*t2)
            else if(deltac1c2.eq.1) then
              M9M11 = 
     .      (-4*(-(s1*(mgo**2+s2g-t1))-s*t1+(mgo**2-s1+s2g-2*t1)*t2+t2**2
     .      +msq2**2*(s+t2)))/(s1*(-s+s1-t2)*t2)
            else
              write(*,*) 'Error in M9M11: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M9M11 = 
     .      (2*(-2*msq2**2*nkq*s+2*mgo**2*nkq*s1+2*nkq*s1*s2g+2*nkq*s*t1-2
     .      *nkq*s1*t1-2*mgo**2*nkq*t2+4*msq2**2*nkq*t2-2*msq2**2*npg*t2-nkq
     .      *s1*t2+npg*s1*t2-2*nkq*s2g*t2-2*nkq*t1*t2+2*npg*t1*t2+nk1*(s1
     .      -t2)*t2+nkq*t2**2-npg*t2**2+nk2*t2*(-s1+t2)+npq*t2*(2*msq2**2
     .      -s1-2*t1+t2)))/(npg*s1*(-s+s1-t2)*t2)
            else if(deltac1c2.eq.1) then
              M9M11 = 
     .      (2*(-2*msq2**2*nkq*s+2*mgo**2*nkq*s1+2*nkq*s1*s2g+2*nkq*s*t1-2
     .      *nkq*s1*t1-2*mgo**2*nkq*t2+4*msq2**2*nkq*t2-2*msq2**2*npg*t2-nkq
     .      *s1*t2+npg*s1*t2-2*nkq*s2g*t2-2*nkq*t1*t2+2*npg*t1*t2+nk1*(s1
     .      -t2)*t2+nkq*t2**2-npg*t2**2+nk2*t2*(-s1+t2)+npq*t2*(2*msq2**2
     .      -s1-2*t1+t2)))/(npg*s1*(-s+s1-t2)*t2)
            else
              write(*,*) 'Error in M9M11: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M9M11 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
