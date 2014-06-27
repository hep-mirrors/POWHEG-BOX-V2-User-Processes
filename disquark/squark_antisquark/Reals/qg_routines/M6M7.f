ccc colour stripped partial amplitude for M6M7
      real*8 function M6M7()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M6M7 = 
     .      (4*(4*msq2**2+s-2*s1+t2)*(2*msq2**4+s1*s2g-s*t1+s1*t1+2*s2g*t1
     .      +mgo**2*(-2*msq2**2+s1+2*t1-t2)+s*t2-s2g*t2-msq2**2*(s+2*(s2g
     .      +t1)+t2)))/((mgo**2-s+s2g-t1)*(s-s1+t2)**2*(mgo**2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M6M7 = 
     .      (4*(4*msq2**2+s-2*s1+t2)*(2*msq2**4+s1*s2g-s*t1+s1*t1+2*s2g*t1
     .      +mgo**2*(-2*msq2**2+s1+2*t1-t2)+s*t2-s2g*t2-msq2**2*(s+2*(s2g
     .      +t1)+t2)))/((mgo**2-s+s2g-t1)*(s-s1+t2)**2*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M6M7: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M6M7 = 
     .      (-8*(npg*(2*msq2**2-s1)+nk2*(-mgo**2+s-s2g+t1)+nk1*(mgo**2+s2g
     .      -t1+t2))*(-2*msq2**4-s1*s2g+s*t1-s1*t1-2*s2g*t1-s*t2+s2g*t2+mgo
     .      **2*(2*msq2**2-s1-2*t1+t2)+msq2**2*(s+2*(s2g+t1)+t2)))/(npg*(mgo
     .      **2-s+s2g-t1)*(s-s1+t2)**2*(mgo**2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M6M7 = 
     .      (-8*(npg*(2*msq2**2-s1)+nk2*(-mgo**2+s-s2g+t1)+nk1*(mgo**2+s2g
     .      -t1+t2))*(-2*msq2**4-s1*s2g+s*t1-s1*t1-2*s2g*t1-s*t2+s2g*t2+mgo
     .      **2*(2*msq2**2-s1-2*t1+t2)+msq2**2*(s+2*(s2g+t1)+t2)))/(npg*(mgo
     .      **2-s+s2g-t1)*(s-s1+t2)**2*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M6M7: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M6M7 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
