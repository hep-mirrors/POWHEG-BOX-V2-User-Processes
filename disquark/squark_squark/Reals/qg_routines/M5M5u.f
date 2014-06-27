ccc colour stripped partial amplitude for M5M5u
      real*8 function M5M5u()
      implicit none
      include "sqsq_realqg.h"
            if(deltac1c2.ne.1) then
              write(*,*) 'Error in M5M5: deltac1c2=',deltac1c2
              write(*,*) 'These terms only contribute for d_c1c2=1'
              call exit(-1)
            endif
      if(gauge.eq.2) then !The Feynman-Gauge
          M5M5u = 
     .      (4*mgo**2*(4*msq2**2+s-2*s1+t2)*(s-s1+t2))/((mgo**2-t1)*(mgo*
     .      *2-s+s2g-t1)*(mgo**2+s2g-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
      else if(gauge.eq.1) then !The lightcone-Gauge
          M5M5u = 
     .      (8*mgo**2*(s-s1+t2)*(npg*(2*msq2**2-s1)+nk2*(-mgo**2+s-s2g+t1)
     .      +nk1*(mgo**2+s2g-t1+t2)))/(npg*(mgo**2-t1)*(mgo**2-s+s2g-t1)*(mgo
     .      **2+s2g-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
      else
        write(*,*) 'Error in amplitude-routine M5M5u for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
