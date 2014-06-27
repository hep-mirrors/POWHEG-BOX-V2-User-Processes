ccc colour stripped partial amplitude for M3M5u
      real*8 function M3M5u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M3M5u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M3M5u = 
     .      (-8*mgo**2*(mgo**2+2*msq2**2-s-t1)*(2*mgo**2-2*msq2**2+s1twg+t2))
     .      /((-mgo**2+s+t1)**2*(mgo**2-s+s1twg-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M3M5u = 
     .      (8*mgo**2*(s2g*(mgo**2+2*msq2**2-s-t1)*(2*mgo**2-2*msq2**2+s1twg
     .      +t2)*(3*mgo**2-3*s+s1twg+s2g-3*t1+t2)-(-mgo**2+s+t1)**2*(mgo*
     .      *2-s+s1twg-t1+t2)*(3*mgo**2-s+s1twg+s2g-t1+t2)+(mgo**2-s-t1)*(mgo
     .      **2+2*msq2**2-s-t1)*(2*mgo**2-2*msq2**2+s1twg+t2)*(3*mgo**2-3
     .      *s+2*s1twg-3*t1+2*t2)))/((mgo**2-s+s2g-t1)**2*(-mgo**2+s+t1)*
     .      *2*(mgo**2-s+s1twg-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M3M5u = 
     .      (-8*mgo**2*(mgo**2+2*msq2**2-s+s2g-t1)*(2*mgo**2-2*msq2**2+s1twg
     .      +s2g+t2))/((mgo**2-s+s2g-t1)**2*(mgo**2-s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M3M5u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M3M5u = 
     .      (-16*mgo**2*(msq2**2*npg+nk1*(mgo**2-s-t1))*(2*mgo**2-2*msq2*
     .      *2+s1twg+t2))/(npg*(-mgo**2+s+t1)**2*(mgo**2-s+s1twg-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M3M5u = 
     .      (16*mgo**2*(s2g*(msq2**2*npg+nk1*(mgo**2-s-t1))*(2*mgo**2-2*msq2
     .      **2+s1twg+t2)*(3*mgo**2-3*s+s1twg+s2g-3*t1+t2)+(msq2**2*npg+nk1
     .      *(mgo**2-s-t1))*(mgo**2-s-t1)*(2*mgo**2-2*msq2**2+s1twg+t2)*(3
     .      *mgo**2-3*s+2*s1twg-3*t1+2*t2)-(-mgo**2+s+t1)**2*(mgo**2-s+s1twg
     .      -t1+t2)*(msq2**2*npg+nk1*(3*mgo**2-2*msq2**2-s+s1twg+s2g-t1+t2))))
     .      /(npg*(mgo**2-s+s2g-t1)**2*(-mgo**2+s+t1)**2*(mgo**2-s+s1twg-t1
     .      +t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M3M5u = 
     .      (-16*mgo**2*(msq2**2*npg+nk1*(mgo**2-s+s2g-t1))*(2*mgo**2-2*msq2
     .      **2+s1twg+s2g+t2))/(npg*(mgo**2-s+s2g-t1)**2*(mgo**2-s+s1twg+s2g
     .      -t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M3M5u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M3M5u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
