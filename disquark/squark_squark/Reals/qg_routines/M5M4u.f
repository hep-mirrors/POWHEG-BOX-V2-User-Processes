ccc colour stripped partial amplitude for M5M4u
      real*8 function M5M4u()
      implicit none
      include "sqsq_realqg.h"
            if(deltac1c2.ne.1) then
              write(*,*) 'Error in M5M4: deltac1c2=',deltac1c2
              write(*,*) 'These terms only contribute for d_c1c2=1'
              call exit(-1)
            endif
      if(gauge.eq.2) then !The Feynman-Gauge
          M5M4u = 
     .      (-4*mgo**2*(-(s*t1)+mgo**2*(s1-t2)+msq2**2*(s-2*s1+t2)-t2*(s2g
     .      +t2)+s1*(s2g+t1+t2)))/((mgo**2-t1)*t2*(mgo**2+s2g-t1+t2)*(mgo
     .      **2-s+s1twg+s2g-t1+t2))
      else if(gauge.eq.1) then !The lightcone-Gauge
          M5M4u = 
     .      (4*mgo**2*(2*nk2*t2*(s-s1+t2)+npq*t2*(mgo**2+s2g-t1+t2)-nkq*(mgo
     .      **2+s2g-t1+t2)*(s-2*s1+2*t2)+npg*((s-2*s1)*(mgo**2-msq2**2+s2g)
     .      -(-2*mgo**2+msq2**2+s1-2*s2g+t1)*t2+t2**2)))/(npg*(mgo**2-t1)
     .      *t2*(mgo**2+s2g-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
      else
        write(*,*) 'Error in amplitude-routine M5M4u for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
