ccc colour stripped partial amplitude for M42
      real*8 function M42()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M42 = 
     .      (-8*mgo**2*s)/((mgo**2-t1)**2*t2)
            else if(deltac1c2.eq.1) then
              M42 = 
     .      (8*(msq1**2*(mgo**2+s2g)-(mgo**2+msq1**2-s+s2g)*t1+t1**2))/((mgo
     .      **2-t1)**2*t2)
            else
              write(*,*) 'Error in M42: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M42 = 
     .      (8*mgo**2*(npq*t2+npg*(-s1+t2)-nkq*(s-2*s1+2*t2)))/(npg*(mgo*
     .      *2-t1)**2*t2)
            else if(deltac1c2.eq.1) then
              M42 = 
     .      (8*(npg*(t1*(-msq2**2+s1+t1)+msq1**2*(msq2**2-t1-t2))-msq1**2
     .      *npq*t2+nk1*(msq1**2-t1)*t2+nkq*(mgo**2*(msq1**2-t1)+(2*msq2*
     .      *2+s-2*s1-s2g-t1)*t1+msq1**2*(-2*msq2**2+s2g+t1+2*t2))))/(npg
     .      *(mgo**2-t1)**2*t2)
            else
              write(*,*) 'Error in M42: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M42 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
