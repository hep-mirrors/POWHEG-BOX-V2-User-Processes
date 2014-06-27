ccc colour stripped partial amplitude for M5M1u
      real*8 function M5M1u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M5M1u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M5M1u = 
     .      (4*mgo**2*(6*mgo**4+4*msq2**4-mgo**2*(10*msq2**2+s-5*s2g+2*t1
     .      -3*t2)+msq2**2*(s-4*s2g+2*t1-3*t2)+s2g*(s2g-t1+t2)))/(s*(mgo*
     .      *2-t1)*(mgo**2+s2g-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M5M1u = 
     .      (4*mgo**2*(7*mgo**2-6*msq2**2-s+2*s1twg+3*s2g-t1+2*t2))/(s*(mgo
     .      **2-t1)*(mgo**2+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M5M1u = 
     .      (4*mgo**2*(6*mgo**4+4*msq2**4-s*s1twg+2*s1twg**2+3*s1twg*s2g+s2g
     .      **2-s1twg*t1-s2g*t1-mgo**2*(10*msq2**2+s-7*s1twg-5*s2g+2*t1-3
     .      *t2)+msq2**2*(s-6*s1twg-4*s2g+2*t1-3*t2)+2*s1twg*t2+s2g*t2))/(s
     .      *(mgo**2-t1)*(mgo**2+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M5M1u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M5M1u = 
     .      (4*mgo**2*(8*mgo**4+4*msq2**4-s2g*(s-2*s2g+2*t1)+msq2**2*(3*s
     .      -6*s2g+4*t1-5*t2)-(s-3*s2g+t1)*t2+t2**2+mgo**2*(-12*msq2**2-3
     .      *s+8*s2g-4*t1+6*t2)+(2*nk2*s*(2*mgo**2-2*msq2**2+s2g+t2)+(mgo
     .      **2+s2g-t1+t2)*(-(nkq*s)+npq*(4*mgo**2-4*msq2**2+2*s2g+t2)))/npg))
     .      /(s*(mgo**2-t1)*(mgo**2+s2g-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M5M1u = 
     .      (4*mgo**2*(2*nk2*s+2*npq*(mgo**2+s2g-t1+t2)+npg*(8*mgo**2-2*(3
     .      *msq2**2+s-s1twg-2*s2g+t1)+3*t2)))/(npg*s*(mgo**2-t1)*(mgo**2
     .      +s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M5M1u = 
     .      (4*mgo**2*(8*mgo**4+4*msq2**4-2*s*s1twg+2*s1twg**2-s*s2g+4*s1twg
     .      *s2g+2*s2g**2-2*s1twg*t1-2*s2g*t1+msq2**2*(3*s-6*s1twg-6*s2g+4
     .      *t1-5*t2)-(s-3*(s1twg+s2g)+t1)*t2+t2**2+mgo**2*(-12*msq2**2-3
     .      *s+8*s1twg+8*s2g-4*t1+6*t2)+(2*nk2*s*(2*mgo**2-2*msq2**2+s1twg
     .      +s2g+t2)+(mgo**2+s2g-t1+t2)*(-(nkq*s)+npq*(2*(2*mgo**2-2*msq2
     .      **2+s1twg+s2g)+t2)))/npg))/(s*(mgo**2-t1)*(mgo**2+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M5M1u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M5M1u0 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
