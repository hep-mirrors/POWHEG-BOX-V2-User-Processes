ccc colour stripped partial amplitude for M3M4u
      real*8 function M3M4u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M3M4u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M3M4u = 
     .      (4*mgo**2*(6*mgo**4+4*msq2**4-s1twg*(2*s-2*s1twg+t1)+msq2**2*(3
     .      *s-6*s1twg+2*t1-5*t2)-(s-3*s1twg)*t2+t2**2+mgo**2*(-10*msq2**2
     .      -3*s+7*s1twg-2*t1+5*t2)))/((mgo**2-s-t1)*t2*(mgo**2-s+s1twg-t1
     .      +t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M3M4u = 
     .      (4*mgo**2*((mgo**2-s-t1)*(mgo**2-s+s1twg-t1+t2)*(5*mgo**2-4*msq2
     .      **2-s+3*s1twg+s2g-t1+2*t2)-s2g*(6*mgo**4+4*msq2**4-s1twg*(2*s
     .      -2*s1twg+t1)+msq2**2*(3*s-6*s1twg+2*t1-5*t2)-(s-3*s1twg)*t2+t2
     .      **2+mgo**2*(-10*msq2**2-3*s+7*s1twg-2*t1+5*t2))-(2*mgo**2-2*s
     .      +s1twg-2*t1+t2)*(6*mgo**4+4*msq2**4-s1twg*(2*s-2*s1twg+t1)+msq2
     .      **2*(3*s-6*s1twg+2*t1-5*t2)-(s-3*s1twg)*t2+t2**2+mgo**2*(-10*msq2
     .      **2-3*s+7*s1twg-2*t1+5*t2))))/((mgo**2-s-t1)*(mgo**2-s+s2g-t1)
     .      *t2*(mgo**2-s+s1twg-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M3M4u = 
     .      (4*mgo**2*(6*mgo**4+4*msq2**4-2*s*s1twg+2*s1twg**2-s*s2g+3*s1twg
     .      *s2g+s2g**2-s1twg*t1-s2g*t1+msq2**2*(3*s-6*s1twg-4*s2g+2*t1-5
     .      *t2)-s*t2+3*s1twg*t2+2*s2g*t2+t2**2+mgo**2*(-10*msq2**2-3*s+7
     .      *s1twg+5*s2g-2*t1+5*t2)))/((mgo**2-s+s2g-t1)*t2*(mgo**2-s+s1twg
     .      +s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M3M4u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M3M4u = 
     .      (4*mgo**2*(npq*(-mgo**2+s+t1)*t2+2*nk1*t2*(2*mgo**2-2*msq2**2
     .      +s1twg+t2)+npg*((mgo**2-msq2**2+s1twg)*(4*mgo**2-4*msq2**2-s+2
     .      *s1twg)+(2*mgo**2-3*msq2**2+2*s1twg+t1)*t2)+nkq*(mgo**2-s-t1)
     .      *(4*mgo**2-4*msq2**2-s+2*(s1twg+t2))))/(npg*(mgo**2-s-t1)*t2*(mgo
     .      **2-s+s1twg-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M3M4u = 
     .      (4*mgo**2*(-(s2g*(npq*(-mgo**2+s+t1)*t2+2*nk1*t2*(2*mgo**2-2*msq2
     .      **2+s1twg+t2)+npg*((mgo**2-msq2**2+s1twg)*(4*mgo**2-4*msq2**2
     .      -s+2*s1twg)+(2*mgo**2-3*msq2**2+2*s1twg+t1)*t2)+nkq*(mgo**2-s
     .      -t1)*(4*mgo**2-4*msq2**2-s+2*(s1twg+t2))))-(2*mgo**2-2*s+s1twg
     .      -2*t1+t2)*(npq*(-mgo**2+s+t1)*t2+2*nk1*t2*(2*mgo**2-2*msq2**2
     .      +s1twg+t2)+npg*((mgo**2-msq2**2+s1twg)*(4*mgo**2-4*msq2**2-s+2
     .      *s1twg)+(2*mgo**2-3*msq2**2+2*s1twg+t1)*t2)+nkq*(mgo**2-s-t1)
     .      *(4*mgo**2-4*msq2**2-s+2*(s1twg+t2)))+(mgo**2-s-t1)*(mgo**2-s
     .      +s1twg-t1+t2)*(2*npg*(mgo**2-msq2**2+s1twg)+2*nk1*t2-npq*t2+nkq
     .      *(6*mgo**2-4*msq2**2-3*s+2*(s1twg+s2g-t1+t2)))))/(npg*(mgo**2
     .      -s-t1)*(mgo**2-s+s2g-t1)*t2*(mgo**2-s+s1twg-t1+t2)*(mgo**2-s+s1twg
     .      +s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M3M4u = 
     .      (4*mgo**2*(npq*(-mgo**2+s-s2g+t1)*t2+2*nk1*t2*(2*mgo**2-2*msq2
     .      **2+s1twg+s2g+t2)+npg*((mgo**2-msq2**2+s1twg)*(4*mgo**2-4*msq2
     .      **2-s+2*(s1twg+s2g))+(2*mgo**2-3*msq2**2+2*s1twg+t1)*t2)+nkq*(mgo
     .      **2-s+s2g-t1)*(4*mgo**2-4*msq2**2-s+2*(s1twg+s2g+t2))))/(npg*(mgo
     .      **2-s+s2g-t1)*t2*(mgo**2-s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M3M4u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M3M4u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
