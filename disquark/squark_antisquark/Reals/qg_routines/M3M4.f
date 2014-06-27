ccc colour stripped partial amplitude for M3M4
      real*8 function M3M4()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M3M4 = 
     .      (4*mgo**2*(mgo**2*s1-s*t1-(mgo**2+msq1**2)*t2-t2*(s2g+t2)+s1*(s2g
     .      +t1+t2)+msq2**2*(s-2*s1+2*t2)))/((mgo**2-t1)**2*t2*(mgo**2+s2g
     .      -t1+t2))
            else if(deltac1c2.eq.1) then
              M3M4 = 
     .      (4*(mgo**2*((2*msq2**2-s1-2*t1)*t1+msq1**2*(-2*msq2**2+2*t1+t2))
     .      +t1*(-2*msq2**4+(s-2*s2g)*t1-s1*(s2g+t1+t2)+msq2**2*(-s+2*(s1
     .      +s2g+t1)+t2))+msq1**2*(2*msq2**4+t2*(t1+t2)+s2g*(2*t1+t2)-msq2
     .      **2*(2*(s2g+t1)+3*t2))))/((mgo**2-t1)**2*t2*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M3M4: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M3M4 = 
     .      (-4*mgo**2*((s-2*s1)*(mgo**2-msq2**2+s2g)+(2*mgo**2+msq1**2-2
     .      *msq2**2-s1+2*s2g-t1)*t2+t2**2+(2*nk2*t2*(s-s1+t2)+(mgo**2+s2g
     .      -t1+t2)*(npq*t2-nkq*(s-2*s1+2*t2)))/npg))/((mgo**2-t1)**2*t2*(mgo
     .      **2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M3M4 = 
     .      (-4*(-((mgo**2-msq2**2+s2g)*(mgo**2*(msq1**2-t1)+(2*msq2**2+s
     .      -2*s1-s2g-t1)*t1+msq1**2*(-2*msq2**2+s2g+t1)))+(msq1**2*(-2*mgo
     .      **2+3*msq2**2-2*s2g)+(-msq2**2+s1)*t1)*t2-msq1**2*t2**2+(nk1*(msq1
     .      **2-t1)*t2*(mgo**2+s2g-t1+t2)-2*nk2*t2*(mgo**2*(msq1**2-t1)+(msq2
     .      **2+s-s1-s2g)*t1+msq1**2*(-msq2**2+s2g+t2))+(mgo**2+s2g-t1+t2)
     .      *(-(msq1**2*npq*t2)+nkq*(mgo**2*(msq1**2-t1)+(2*msq2**2+s-2*s1
     .      -s2g-t1)*t1+msq1**2*(-2*msq2**2+s2g+t1+2*t2))))/npg))/((mgo**2
     .      -t1)**2*t2*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M3M4: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M3M4 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
