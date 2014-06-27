ccc colour stripped partial amplitude for M1M2
      real*8 function M1M2(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M1M2 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M2 = 
     .      (2*(4*mgo**4+s*t1-s1*t1-s*t2+msq2**2*(s+4*t1+t2)+mgo**2*(-4*msq2
     .      **2-2*s+s1-4*t1+3*t2)))/(s*s1)
            else
              write(*,*) 'Error in M1M2: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M1M2 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M2 = 
     .      (2*(8*mgo**2-4*msq2**2-2*s+s1+4*s2g-4*t1+3*t2))/(s*s1)
            else
              write(*,*) 'Error in M1M2: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M1M2 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M2 = 
     .      (2*(4*mgo**4-2*s*s2g+s1*s2g+4*s2g**2+s*t1-s1*t1-4*s2g*t1-s*t2
     .      +3*s2g*t2+msq2**2*(s-4*s2g+4*t1+t2)+mgo**2*(-4*msq2**2-2*s+s1
     .      +8*s2g-4*t1+3*t2)))/(s*s1)
            else
              write(*,*) 'Error in M1M2: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M1M2:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M1M2 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M2 = 
     .      (2*(4*mgo**4*npg-8*mgo**2*msq2**2*npg+4*msq2**4*npg+(mgo-msq2)
     .      *(mgo+msq2)*nk1*s+4*msq2**2*nkq*s-2*mgo**2*npg*s-2*msq2**2*npg
     .      *s+nk2*s*(-3*mgo**2+3*msq2**2+s-s1)+4*mgo**2*npg*s1-nkq*s*s1+npq
     .      *(4*mgo**4+8*msq2**4-s*t1+s1*t1+mgo**2*(-12*msq2**2-2*s+7*s1+4
     .      *t1-3*t2)+s*t2-msq2**2*(5*s+4*t1+t2))))/(npg*s*s1)
            else
              write(*,*) 'Error in M1M2: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M1M2 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M2 = 
     .      (2*(nk1*s-3*nk2*s+2*npg*(4*mgo**2-4*msq2**2-s+2*(s1+s2g))+npq
     .      *(8*mgo**2-12*msq2**2-2*s+7*s1+4*(s2g+t1)-3*t2)))/(npg*s*s1)
            else
              write(*,*) 'Error in M1M2: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M1M2 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M2 = 
     .      (2*(4*mgo**4*npg-8*mgo**2*msq2**2*npg+4*msq2**4*npg+4*msq2**2
     .      *nkq*s-2*mgo**2*npg*s-2*msq2**2*npg*s+4*mgo**2*npg*s1-nkq*s*s1
     .      +nk2*s*(-3*mgo**2+3*msq2**2+s-s1-3*s2g)+8*mgo**2*npg*s2g-8*msq2
     .      **2*npg*s2g-2*npg*s*s2g+4*npg*s1*s2g+4*npg*s2g**2+nk1*s*(mgo*
     .      *2-msq2**2+s2g)+npq*(4*mgo**4+8*msq2**4-2*s*s2g+7*s1*s2g+4*s2g
     .      **2-s*t1+s1*t1+4*s2g*t1+mgo**2*(-12*msq2**2-2*s+7*s1+8*s2g+4*t1
     .      -3*t2)+s*t2-3*s2g*t2-msq2**2*(5*s+12*s2g+4*t1+t2))))/(npg*s*s1)
            else
              write(*,*) 'Error in M1M2: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M1M2:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M1M21 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
