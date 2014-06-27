ccc colour stripped partial amplitude for M1M9
      real*8 function M1M9()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M1M9 = 
     .      (4*(s**2-s*s1-2*s*s2g+s1*s2g+s*t1-s1*t1+mgo**2*(-2*s+s1-t2)-s2g
     .      *t2+msq2**2*(s+t2)))/(s*s1*(s-s1+t2))
            else if(deltac1c2.eq.1) then
              M1M9 = 
     .      (4*(s**2-s*s1-2*s*s2g+s1*s2g+s*t1-s1*t1+mgo**2*(-2*s+s1-t2)-s2g
     .      *t2+msq2**2*(s+t2)))/(s*s1*(s-s1+t2))
            else
              write(*,*) 'Error in M1M9: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M1M9 = 
     .      (2*s*(nk2*(s-s1)+nk1*(-s+s1)-(nkq+npg)*(2*mgo**2-2*msq2**2-s+s1
     .      +2*s2g))-2*npq*(-s**2+s*s1+2*s*s2g+2*s1*s2g+2*s*t1-2*s1*t1+2*mgo
     .      **2*(s+s1-t2)-2*s2g*t2+2*msq2**2*(-2*s+t2)))/(npg*s*s1*(s-s1+t2))
            else if(deltac1c2.eq.1) then
              M1M9 = 
     .      (2*s*(nk2*(s-s1)+nk1*(-s+s1)-(nkq+npg)*(2*mgo**2-2*msq2**2-s+s1
     .      +2*s2g))-2*npq*(-s**2+s*s1+2*s*s2g+2*s1*s2g+2*s*t1-2*s1*t1+2*mgo
     .      **2*(s+s1-t2)-2*s2g*t2+2*msq2**2*(-2*s+t2)))/(npg*s*s1*(s-s1+t2))
            else
              write(*,*) 'Error in M1M9: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M1M9 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
