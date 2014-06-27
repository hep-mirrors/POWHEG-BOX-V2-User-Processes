ccc colour stripped partial amplitude for M7M10
      real*8 function M7M10(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M7M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M7M10 = 
     .      (2*(4*msq2**2+s-2*s1+t2)*(-2*msq2**4+s*t1-s1*t1-s*t2+mgo**2*(2
     .      *msq2**2-s1-2*t1+t2)+msq2**2*(s+2*t1+t2)))/((mgo**2-s-t1)*(s-s1
     .      +t2)*(mgo**2-t1+t2))
            else
              write(*,*) 'Error in M7M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M7M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M7M10 = 
     .      (2*(4*msq2**2+s-2*s1+t2)*((mgo**2-s-t1)*(2*msq2**2-s1-2*t1+t2)
     .      *(mgo**2-t1+t2)-s2g*(-2*msq2**4+s*t1-s1*t1-s*t2+mgo**2*(2*msq2
     .      **2-s1-2*t1+t2)+msq2**2*(s+2*t1+t2))-(2*mgo**2-s-2*t1+t2)*(-2
     .      *msq2**4+s*t1-s1*t1-s*t2+mgo**2*(2*msq2**2-s1-2*t1+t2)+msq2**2
     .      *(s+2*t1+t2))))/((mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(s-s1+t2)*(mgo
     .      **2-t1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M7M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M7M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M7M10 = 
     .      (-2*(4*msq2**2+s-2*s1+t2)*(2*msq2**4+s1*s2g-s*t1+s1*t1+2*s2g*t1
     .      +mgo**2*(-2*msq2**2+s1+2*t1-t2)+s*t2-s2g*t2-msq2**2*(s+2*(s2g
     .      +t1)+t2)))/((mgo**2-s+s2g-t1)*(s-s1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M7M10: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M7M10:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M7M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M7M10 = 
     .      (4*(npg*(2*msq2**2-s1)+nk2*(-mgo**2+s+t1)+nk1*(mgo**2-t1+t2))
     .      *(-2*msq2**4+s*t1-s1*t1-s*t2+mgo**2*(2*msq2**2-s1-2*t1+t2)+msq2
     .      **2*(s+2*t1+t2)))/(npg*(mgo**2-s-t1)*(s-s1+t2)*(mgo**2-t1+t2))
            else
              write(*,*) 'Error in M7M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M7M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M7M10 = 
     .      (4*(nk2*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(-2*msq2**4+s*(t1-t2)
     .      -(s1+t1-t2)*(2*t1-t2)+msq2**2*(s+4*t1-t2))+nk1*(mgo**2-t1+t2)
     .      *(mgo**2+s2g-t1+t2)*(2*msq2**4+(s1+t1)*(s+2*t1)-t1*t2-msq2**2
     .      *(3*s+4*t1+t2))+npg*(-2*msq2**2+s1)*(t1*(-s**2-s1*s2g+s*(2*s1
     .      +s2g)+3*s1*t1+2*t1**2)+2*msq2**4*(s-s2g+2*t1-t2)-(-s**2+s*(s1
     .      +s2g)+t1*(2*s1+3*t1))*t2+t1*t2**2+mgo**4*(2*msq2**2-s1-2*t1+t2)
     .      +mgo**2*(-4*msq2**4+2*s*t1-2*s2g*t1-s1*(s2g+2*t1)-2*s*t2+s2g*t2
     .      +2*msq2**2*(s+s2g+2*t1+t2))+msq2**2*(-s**2+2*(s2g-3*t1)*t1+(s2g
     .      +2*t1)*t2+t2**2+s*(s2g-6*t1+2*t2)))))/(npg*(mgo**2-s-t1)*(mgo
     .      **2-s+s2g-t1)*(s-s1+t2)*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M7M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M7M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M7M10 = 
     .      (4*(npg*(2*msq2**2-s1)+nk2*(-mgo**2+s-s2g+t1)+nk1*(mgo**2+s2g
     .      -t1+t2))*(-2*msq2**4-s1*s2g+s*t1-s1*t1-2*s2g*t1-s*t2+s2g*t2+mgo
     .      **2*(2*msq2**2-s1-2*t1+t2)+msq2**2*(s+2*(s2g+t1)+t2)))/(npg*(mgo
     .      **2-s+s2g-t1)*(s-s1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M7M10: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M7M10:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M7M100 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
