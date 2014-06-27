ccc colour stripped partial amplitude for M4M4u
      real*8 function M4M4u()
      implicit none
      include "sqsq_realqg.h"
            if(deltac1c2.ne.1) then
              write(*,*) 'Error in M4M4: deltac1c2=',deltac1c2
              write(*,*) 'These terms only contribute for d_c1c2=1'
              call exit(-1)
            endif
      if(gauge.eq.2) then !The Feynman-Gauge
          M4M4u = 
     .      (8*mgo**2*s)/((mgo**2-t1)*t2*(mgo**2-s+s1twg+s2g-t1+t2))
      else if(gauge.eq.1) then !The lightcone-Gauge
          M4M4u = 
     .      (8*mgo**2*(npg*(s1-t2)-npq*t2+nkq*(s-2*s1+2*t2)))/(npg*(mgo**2
     .      -t1)*t2*(mgo**2-s+s1twg+s2g-t1+t2))
      else
        write(*,*) 'Error in amplitude-routine M4M4u for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
