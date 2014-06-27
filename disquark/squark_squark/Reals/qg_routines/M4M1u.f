ccc colour stripped partial amplitude for M4M1u
      real*8 function M4M1u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M4M1u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M4M1u = 
     .      (8*mgo**2*(2*mgo**2-2*msq2**2+s2g)*(2*mgo**2-2*msq2**2-s+s2g+t2))
     .      /(s*(-mgo**2+t1)*t2)
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M4M1u = 
     .      (-8*mgo**2*(4*mgo**2-4*msq2**2-s+s1twg+2*s2g+t2))/(s*(mgo**2-t1)
     .      *t2)
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M4M1u = 
     .      (8*mgo**2*(2*mgo**2-2*msq2**2+s1twg+s2g)*(2*mgo**2-2*msq2**2-s
     .      +s1twg+s2g+t2))/(s*(-mgo**2+t1)*t2)
          else
            write(*,*) "Wrong option for coeffs2g in M4M1u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M4M1u = 
     .      (4*mgo**2*(nkq*s*(-4*mgo**2+4*msq2**2+s-2*s2g-3*t2)+npq*t2*(4
     .      *mgo**2-4*msq2**2+s+2*s2g+t2)+npg*((2*mgo**2-2*msq2**2+s2g)*(4
     .      *mgo**2-4*msq2**2-s+2*s2g)+(6*mgo**2-6*msq2**2+s+3*s2g)*t2+t2
     .      **2)))/(npg*s*(-mgo**2+t1)*t2)
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M4M1u = 
     .      (-4*mgo**2*(-2*nkq*s+2*npq*t2+npg*(8*mgo**2-8*msq2**2-s+2*s1twg
     .      +4*s2g+3*t2)))/(npg*s*(mgo**2-t1)*t2)
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M4M1u = 
     .      (4*mgo**2*(nkq*s*(-4*mgo**2+4*msq2**2+s-2*(s1twg+s2g)-3*t2)+npq
     .      *t2*(4*mgo**2-4*msq2**2+s+2*(s1twg+s2g)+t2)+npg*((2*mgo**2-2*msq2
     .      **2+s1twg+s2g)*(4*mgo**2-4*msq2**2-s+2*(s1twg+s2g))+(6*mgo**2
     .      -6*msq2**2+s+3*(s1twg+s2g))*t2+t2**2)))/(npg*s*(-mgo**2+t1)*t2)
          else
            write(*,*) "Wrong option for coeffs2g in M4M1u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M4M1u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
