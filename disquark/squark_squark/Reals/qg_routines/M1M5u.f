ccc colour stripped partial amplitude for M1M5u
      real*8 function M1M5u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M1M5u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M1M5u = 
     .      (-4*mgo**2*(2*mgo**4+4*msq2**4+s1twg*(s+t1)+mgo**2*(-6*msq2**2
     .      +s+s1twg+2*t1+t2)-msq2**2*(s+2*(s1twg+t1)+t2)))/(s*(-mgo**2+s
     .      +t1)*(mgo**2-s+s1twg-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M1M5u = 
     .      (4*mgo**2*(-((-mgo**2+s+t1)*(mgo**2-s+s1twg-t1+t2)*(3*mgo**2-4
     .      *msq2**2+s1twg+s2g+t1+t2))-s2g*(2*mgo**4+4*msq2**4+s1twg*(s+t1)
     .      +mgo**2*(-6*msq2**2+s+s1twg+2*t1+t2)-msq2**2*(s+2*(s1twg+t1)+t2))
     .      -(2*mgo**2-2*s+s1twg-2*t1+t2)*(2*mgo**4+4*msq2**4+s1twg*(s+t1)
     .      +mgo**2*(-6*msq2**2+s+s1twg+2*t1+t2)-msq2**2*(s+2*(s1twg+t1)+t2))))
     .      /(s*(-mgo**2+s+t1)*(-mgo**2+s-s2g+t1)*(mgo**2-s+s1twg-t1+t2)*(mgo
     .      **2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M1M5u = 
     .      (4*mgo**2*(2*mgo**4+4*msq2**4+s*s1twg+s1twg*s2g+s2g**2+s1twg*t1
     .      +s2g*t1+s2g*t2+mgo**2*(-6*msq2**2+s+s1twg+3*s2g+2*t1+t2)-msq2
     .      **2*(s+2*(s1twg+2*s2g+t1)+t2)))/(s*(mgo**2-s+s2g-t1)*(mgo**2-s
     .      +s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M1M5u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M1M5u = 
     .      (4*mgo**2*(nkq*s*(-mgo**2+s+t1)-2*nk1*s*(2*mgo**2-2*msq2**2+s1twg
     .      +t2)+npq*(mgo**2-s-t1)*(4*mgo**2-4*msq2**2+2*s1twg+t2)+npg*(-4
     .      *msq2**4+mgo**2*(4*msq2**2-s-4*t1)-s1twg*(s+2*t1)-t1*t2+msq2*
     .      *2*(s+2*s1twg+4*t1+t2))))/(npg*s*(-mgo**2+s+t1)*(mgo**2-s+s1twg
     .      -t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M1M5u = 
     .      (4*mgo**2*(-((-mgo**2+s+t1)*(mgo**2-s+s1twg-t1+t2)*(2*nk1*s+nkq
     .      *s+2*npg*(-msq2**2+t1)-npq*(2*(3*mgo**2-2*msq2**2-s+s1twg+s2g
     .      -t1)+t2)))+s2g*(nkq*s*(-mgo**2+s+t1)-2*nk1*s*(2*mgo**2-2*msq2
     .      **2+s1twg+t2)+npq*(mgo**2-s-t1)*(4*mgo**2-4*msq2**2+2*s1twg+t2)
     .      +npg*(-4*msq2**4+mgo**2*(4*msq2**2-s-4*t1)-s1twg*(s+2*t1)-t1*t2
     .      +msq2**2*(s+2*s1twg+4*t1+t2)))+(2*mgo**2-2*s+s1twg-2*t1+t2)*(nkq
     .      *s*(-mgo**2+s+t1)-2*nk1*s*(2*mgo**2-2*msq2**2+s1twg+t2)+npq*(mgo
     .      **2-s-t1)*(4*mgo**2-4*msq2**2+2*s1twg+t2)+npg*(-4*msq2**4+mgo
     .      **2*(4*msq2**2-s-4*t1)-s1twg*(s+2*t1)-t1*t2+msq2**2*(s+2*s1twg
     .      +4*t1+t2)))))/(npg*s*(-mgo**2+s+t1)*(-mgo**2+s-s2g+t1)*(mgo**2
     .      -s+s1twg-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M1M5u = 
     .      (4*mgo**2*(nkq*s*(-mgo**2+s-s2g+t1)-2*nk1*s*(2*mgo**2-2*msq2*
     .      *2+s1twg+s2g+t2)+npq*(mgo**2-s+s2g-t1)*(4*mgo**2-4*msq2**2+2*(s1twg
     .      +s2g)+t2)+npg*(-4*msq2**4-s*s1twg+mgo**2*(4*msq2**2-s-4*t1)-2
     .      *s1twg*t1-2*s2g*t1-t1*t2+msq2**2*(s+2*(s1twg+s2g+2*t1)+t2))))
     .      /(npg*s*(-mgo**2+s-s2g+t1)*(mgo**2-s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M1M5u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M1M5u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
