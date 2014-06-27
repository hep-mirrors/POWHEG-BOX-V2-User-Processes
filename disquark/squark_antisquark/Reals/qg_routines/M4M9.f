ccc colour stripped partial amplitude for M4M9
      real*8 function M4M9()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M4M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M4M9 = 
     .      (-2*(-(s1*(mgo**2+s2g))+s1*t1+mgo**2*t2+s2g*t2-2*t1*t2+msq2**2
     .      *(s+t2)-s*(t1+t2)))/((mgo**2-t1)*t2*(s-s1+t2))
            else
              write(*,*) 'Error in M4M9: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M4M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M4M9 = 
     .      (-2*(npg*(msq2**2-t1)*t2+npq*(-msq2**2+s1+t1)*t2+nk1*t2*(-s1+t2)
     .      +nkq*(-(s1*(mgo**2+s2g))+s1*t1+msq2**2*(s-2*t2)+mgo**2*t2+(s2g
     .      +t1)*t2-s*(t1+t2))))/(npg*(mgo**2-t1)*t2*(s-s1+t2))
            else
              write(*,*) 'Error in M4M9: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M4M9 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
