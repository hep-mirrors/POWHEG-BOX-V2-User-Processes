ccc colour stripped partial amplitude for M2M9
      real*8 function M2M9(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M9 = 
     .      (-2*(-(s*t1)+s1*t1+s*t2-msq2**2*(s+t2)+mgo**2*(2*s-s1+t2)))/(s
     .      *(s-s1+t2))
            else
              write(*,*) 'Error in M2M9: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M9 = 
     .      -2/s-2/(s-s1+t2)
            else
              write(*,*) 'Error in M2M9: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M9 = 
     .      (2*(-2*s*s2g+s1*s2g+s*t1-s1*t1+mgo**2*(-2*s+s1-t2)-(s+s2g)*t2
     .      +msq2**2*(s+t2)))/(s*(s-s1+t2))
            else
              write(*,*) 'Error in M2M9: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M9:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M9 = 
     .      (-2*(s*((mgo-msq2)*(mgo+msq2)*(nkq+npg)+nkq*s1+nk2*(-s+s1))+npq
     .      *(s*t1-s1*t1+mgo**2*(s+s1-t2)-s*t2+msq2**2*(-2*s+t2))))/(npg*s
     .      *(s-s1+t2))
            else
              write(*,*) 'Error in M2M9: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M9 = 
     .      (-2*((nkq+npg)*s+npq*(s+s1-t2)))/(npg*s*(s-s1+t2))
            else
              write(*,*) 'Error in M2M9: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M9 = 
     .      (-2*(s*(nk2*(-s+s1)+npg*(mgo**2-msq2**2+s2g)+nkq*(mgo**2-msq2
     .      **2+s1+s2g))+npq*(s*s2g+s1*s2g+s*t1-s1*t1+mgo**2*(s+s1-t2)-(s
     .      +s2g)*t2+msq2**2*(-2*s+t2))))/(npg*s*(s-s1+t2))
            else
              write(*,*) 'Error in M2M9: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M9:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M91 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
