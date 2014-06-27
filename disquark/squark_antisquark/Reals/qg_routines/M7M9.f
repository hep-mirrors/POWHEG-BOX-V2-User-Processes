ccc colour stripped partial amplitude for M7M9
      real*8 function M7M9()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M7M9 = 
     .      (2*(-4*msq2**4-s1*s2g+3*s*t1-3*s1*t1-4*s2g*t1-s*t2+s2g*t2+mgo
     .      **2*(4*msq2**2-s1-4*t1+t2)+msq2**2*(s+4*(s2g+t1)+3*t2)))/((s-s1
     .      +t2)**2*(mgo**2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M7M9 = 
     .      (2*(-4*msq2**4-s1*s2g+3*s*t1-3*s1*t1-4*s2g*t1-s*t2+s2g*t2+mgo
     .      **2*(4*msq2**2-s1-4*t1+t2)+msq2**2*(s+4*(s2g+t1)+3*t2)))/((s-s1
     .      +t2)**2*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M7M9: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M7M9 = 
     .      (-4*(2*msq2**4+s1*s2g-s*t1+s1*t1+2*s2g*t1+mgo**2*(-2*msq2**2+s1
     .      +2*t1-t2)+s*t2-s2g*t2-msq2**2*(s+2*(s2g+t1)+t2)+((-(npq*(mgo*
     .      *2-msq2**2-s+s1+s2g))+nkq*(msq2**2-t1))*(mgo**2+s2g-t1+t2)-nk1
     .      *(s-s1+t2)*(mgo**2+s2g-t1+t2)+nk2*(-(s1*(mgo**2+s2g))+s1*t1+msq2
     .      **2*(s-t2)+mgo**2*t2+s2g*t2-s*(t1+t2)))/npg))/((s-s1+t2)**2*(mgo
     .      **2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M7M9 = 
     .      (-4*(2*msq2**4+s1*s2g-s*t1+s1*t1+2*s2g*t1+mgo**2*(-2*msq2**2+s1
     .      +2*t1-t2)+s*t2-s2g*t2-msq2**2*(s+2*(s2g+t1)+t2)+((-(npq*(mgo*
     .      *2-msq2**2-s+s1+s2g))+nkq*(msq2**2-t1))*(mgo**2+s2g-t1+t2)-nk1
     .      *(s-s1+t2)*(mgo**2+s2g-t1+t2)+nk2*(-(s1*(mgo**2+s2g))+s1*t1+msq2
     .      **2*(s-t2)+mgo**2*t2+s2g*t2-s*(t1+t2)))/npg))/((s-s1+t2)**2*(mgo
     .      **2+s2g-t1+t2))
            else
              write(*,*) 'Error in M7M9: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M7M9 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
