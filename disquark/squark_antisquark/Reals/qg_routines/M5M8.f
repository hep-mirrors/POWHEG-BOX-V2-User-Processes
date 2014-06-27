ccc colour stripped partial amplitude for M5M8
      real*8 function M5M8(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M5M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M8 = 
     .      -((4*msq2**4*(-s+t1+t2)+msq2**2*t1*(7*s-8*s1-4*t1+5*t2)+mgo**4
     .      *(4*msq2**2+8*s-5*s1-4*t1+5*t2)+t1*(s*t1-s1*t1-s*t2)+mgo**2*(
     .      -4*msq2**4-4*s**2+4*s*s1-5*s*t1+6*s1*t1+4*t1**2+msq2**2*(-7*s
     .      +8*s1-5*t2)+(s-4*s1-9*t1)*t2+4*t2**2))/(s1*(mgo**2-t1)*(s-s1+t2)))
            else
              write(*,*) 'Error in M5M8: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M5M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M8 = 
     .      -((-4*msq2**4+s1*s2g-4*s2g*t1+4*t1**2+msq2**2*(-5*s+8*s1+4*s2g
     .      -7*t2)-(s2g+t1)*t2+4*mgo**2*(2*msq2**2+2*s-s1-2*t1+t2)+s*(t1+t2))
     .      /(s1*(mgo**2-t1)*(s-s1+t2)))
            else
              write(*,*) 'Error in M5M8: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M5M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M8 = 
     .      -((s1*s2g**2+s*s2g*t1-4*s2g**2*t1+s*t1**2-s1*t1**2+4*s2g*t1**2
     .      -(s*(-s2g+t1)+s2g*(s2g+t1))*t2+4*msq2**4*(-s-s2g+t1+t2)+mgo**4
     .      *(4*msq2**2+8*s-5*s1-4*t1+5*t2)+msq2**2*(4*(s2g-t1)*(2*s1+s2g
     .      +t1)+s*(-5*s2g+7*t1)-7*s2g*t2+5*t1*t2)+mgo**2*(-4*msq2**4-4*s
     .      **2+4*s*s1+8*s*s2g-4*s1*s2g-5*s*t1+6*s1*t1-8*s2g*t1+4*t1**2+msq2
     .      **2*(-7*s+8*(s1+s2g)-5*t2)+(s-4*s1+4*s2g-9*t1)*t2+4*t2**2))/(s1
     .      *(mgo**2-t1)*(s-s1+t2)))
            else
              write(*,*) 'Error in M5M8: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M5M8:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M5M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M8 = 
     .      -((4*mgo**4*msq2**2*nkq-8*mgo**2*msq2**4*nkq+4*mgo**4*nkq*s+2
     .      *mgo**2*msq2**2*nkq*s+4*msq2**4*nkq*s+4*mgo**4*npg*s-8*mgo**2
     .      *msq2**2*npg*s-4*msq2**4*npg*s-2*mgo**2*nkq*s**2+msq2**2*nkq*s
     .      **2-2*mgo**2*npg*s**2-msq2**2*npg*s**2-4*mgo**4*nkq*s1+8*mgo*
     .      *2*msq2**2*npg*s1+mgo**2*nkq*s*s1+3*mgo**2*npg*s*s1-4*mgo**4*nkq
     .      *t1+8*mgo**2*msq2**2*nkq*t1+8*msq2**4*nkq*t1-2*mgo**2*nkq*s*t1
     .      -10*msq2**2*nkq*s*t1+8*msq2**2*npg*s*t1+nkq*s**2*t1-npg*s**2*t1
     .      -8*msq2**2*npg*s1*t1+3*nkq*s*s1*t1+npg*s*s1*t1-12*msq2**2*nkq
     .      *t1**2+2*nkq*s*t1**2+4*nkq*s1*t1**2+4*nkq*t1**3+4*mgo**4*nkq*t2
     .      -6*mgo**2*msq2**2*nkq*t2+4*msq2**4*nkq*t2-4*mgo**2*msq2**2*npg
     .      *t2+4*msq2**4*npg*t2+mgo**2*nkq*s*t2-2*msq2**2*nkq*s*t2-mgo**2
     .      *npg*s*t2-nkq*s**2*t2+npg*s**2*t2+3*mgo**2*nkq*s1*t2-3*mgo**2
     .      *npg*s1*t2+6*mgo**2*nkq*t1*t2-2*msq2**2*nkq*t1*t2-4*mgo**2*npg
     .      *t1*t2+4*msq2**2*npg*t1*t2-3*nkq*s*t1*t2+npg*s*t1*t2+nkq*s1*t1
     .      *t2-npg*s1*t1*t2-6*nkq*t1**2*t2-3*mgo**2*nkq*t2**2-3*msq2**2*nkq
     .      *t2**2+3*mgo**2*npg*t2**2+msq2**2*npg*t2**2+nkq*s*t2**2-npg*s
     .      *t2**2+2*nkq*t1*t2**2+nk2*(3*s*(-s+s1)*t1-(s**2+7*s*t1+t1*(-s1
     .      +4*t1))*t2+(s+2*t1)*t2**2+4*msq2**4*(s+t2)+msq2**2*(s**2-3*t2
     .      **2-2*s*(2*t1+t2))+mgo**2*(-2*s**2+(3*s1+8*t1-3*t2)*t2+s*(s1+4
     .      *t1+t2)-4*msq2**2*(s+2*t2)))+npq*(4*mgo**6-2*mgo**4*(6*msq2**2
     .      +s-4*s1+t2)+4*msq2**4*(s-2*t1+t2)+msq2**2*(-3*s**2+4*t1**2+2*s
     .      *(t1-t2)+2*t1*t2+t2**2)+(s-t2)*(s1*t1+s*(-t1+t2))+mgo**2*(8*msq2
     .      **4-4*t1*(2*s1+t1)+3*s*(s1+2*t1-t2)+(5*s1+6*t1)*t2-t2**2-2*msq2
     .      **2*(5*s-4*t1+5*t2)))+nk1*(4*mgo**4*s-4*msq2**4*(s+t2)-(s-t2)
     .      *(-(s*t1)+s1*t1+s*t2)+msq2**2*(3*s**2+8*s*t1+2*s*t2+4*t1*t2-t2
     .      **2)+mgo**2*(t2*(4*msq2**2-5*s1-4*t1+5*t2)+s*(-3*s1-8*t1+7*t2))))
     .      /(npg*s1*(mgo**2-t1)*(s-s1+t2)))
            else
              write(*,*) 'Error in M5M8: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M5M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M8 = 
     .      -((8*mgo**2*msq2**2*nkq-8*msq2**4*nkq+4*mgo**2*nkq*s+2*msq2**2
     .      *nkq*s+4*mgo**2*npg*s-4*msq2**2*npg*s-4*mgo**2*nkq*s1+8*msq2*
     .      *2*npg*s1-nkq*s*s1+npg*s*s1+4*msq2**2*nkq*s2g-8*mgo**2*nkq*t1
     .      +8*msq2**2*nkq*t1+2*nkq*s*t1-4*nkq*s1*t1-4*nkq*s2g*t1+4*mgo**2
     .      *nkq*t2+2*msq2**2*nkq*t2-8*msq2**2*npg*t2+nkq*s*t2-npg*s*t2+nkq
     .      *s1*t2-npg*s1*t2+2*nkq*t1*t2-nkq*t2**2+npg*t2**2+nk1*(8*mgo**2
     .      *s-s*(2*s+s1-4*s2g+8*t1)+(4*msq2**2+7*s-3*s1-4*t1)*t2+3*t2**2)
     .      +nk2*((s1+8*t1-t2)*t2+s*(-s1+4*t1+t2)-4*msq2**2*(s+2*t2))+npq
     .      *(12*mgo**4+8*msq2**4+2*s**2+s*s1-6*s*s2g+4*s1*s2g+4*s2g**2+4
     .      *mgo**2*(-6*msq2**2-2*s+3*(s1+s2g))+2*s*t1-4*s1*t1-4*t1**2-3*s
     .      *t2+3*s1*t2+2*s2g*t2+2*t1*t2+t2**2-2*msq2**2*(s+6*s2g-4*t1+5*t2)))
     .      /(npg*s1*(mgo**2-t1)*(s-s1+t2)))
            else
              write(*,*) 'Error in M5M8: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M5M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M8 = 
     .      -((4*mgo**4*msq2**2*nkq-8*mgo**2*msq2**4*nkq+4*mgo**4*nkq*s+2
     .      *mgo**2*msq2**2*nkq*s+4*msq2**4*nkq*s+4*mgo**4*npg*s-8*mgo**2
     .      *msq2**2*npg*s-4*msq2**4*npg*s-2*mgo**2*nkq*s**2+msq2**2*nkq*s
     .      **2-2*mgo**2*npg*s**2-msq2**2*npg*s**2-4*mgo**4*nkq*s1+8*mgo*
     .      *2*msq2**2*npg*s1+mgo**2*nkq*s*s1+3*mgo**2*npg*s*s1+8*mgo**2*msq2
     .      **2*nkq*s2g-8*msq2**4*nkq*s2g+4*mgo**2*nkq*s*s2g+2*msq2**2*nkq
     .      *s*s2g+4*mgo**2*npg*s*s2g-4*msq2**2*npg*s*s2g-4*mgo**2*nkq*s1
     .      *s2g+8*msq2**2*npg*s1*s2g-nkq*s*s1*s2g+npg*s*s1*s2g+4*msq2**2
     .      *nkq*s2g**2-4*mgo**4*nkq*t1+8*mgo**2*msq2**2*nkq*t1+8*msq2**4
     .      *nkq*t1-2*mgo**2*nkq*s*t1-10*msq2**2*nkq*s*t1+8*msq2**2*npg*s
     .      *t1+nkq*s**2*t1-npg*s**2*t1-8*msq2**2*npg*s1*t1+3*nkq*s*s1*t1
     .      +npg*s*s1*t1-8*mgo**2*nkq*s2g*t1+8*msq2**2*nkq*s2g*t1+2*nkq*s
     .      *s2g*t1-4*nkq*s1*s2g*t1-4*nkq*s2g**2*t1-12*msq2**2*nkq*t1**2+2
     .      *nkq*s*t1**2+4*nkq*s1*t1**2+4*nkq*t1**3+4*mgo**4*nkq*t2-6*mgo
     .      **2*msq2**2*nkq*t2+4*msq2**4*nkq*t2-4*mgo**2*msq2**2*npg*t2+4
     .      *msq2**4*npg*t2+mgo**2*nkq*s*t2-2*msq2**2*nkq*s*t2-mgo**2*npg
     .      *s*t2-nkq*s**2*t2+npg*s**2*t2+3*mgo**2*nkq*s1*t2-3*mgo**2*npg
     .      *s1*t2+4*mgo**2*nkq*s2g*t2+2*msq2**2*nkq*s2g*t2-8*msq2**2*npg
     .      *s2g*t2+nkq*s*s2g*t2-npg*s*s2g*t2+nkq*s1*s2g*t2-npg*s1*s2g*t2
     .      +6*mgo**2*nkq*t1*t2-2*msq2**2*nkq*t1*t2-4*mgo**2*npg*t1*t2+4*msq2
     .      **2*npg*t1*t2-3*nkq*s*t1*t2+npg*s*t1*t2+nkq*s1*t1*t2-npg*s1*t1
     .      *t2+2*nkq*s2g*t1*t2-6*nkq*t1**2*t2-3*mgo**2*nkq*t2**2-3*msq2*
     .      *2*nkq*t2**2+3*mgo**2*npg*t2**2+msq2**2*npg*t2**2+nkq*s*t2**2
     .      -npg*s*t2**2-nkq*s2g*t2**2+npg*s2g*t2**2+2*nkq*t1*t2**2+nk2*(s
     .      *(4*msq2**4-s1*s2g-3*s*t1+3*s1*t1+4*s2g*t1+mgo**2*(-4*msq2**2
     .      -2*s+s1+4*t1)+msq2**2*(s-4*(s2g+t1)))+(4*msq2**4-s**2+s*s2g+s1
     .      *s2g-2*msq2**2*(s+4*s2g)-7*s*t1+s1*t1+8*s2g*t1-4*t1**2+mgo**2
     .      *(-8*msq2**2+s+3*s1+8*t1))*t2+(-3*mgo**2-3*msq2**2+s-s2g+2*t1)
     .      *t2**2)+npq*(4*mgo**6+2*s**2*s2g+s*s1*s2g-6*s*s2g**2+4*s1*s2g
     .      **2+4*s2g**3-s**2*t1+s*s1*t1+2*s*s2g*t1-4*s1*s2g*t1-4*s2g*t1*
     .      *2+(s**2+s1*(3*s2g-t1)+s*(-3*s2g+t1)+2*s2g*(s2g+t1))*t2+(-s+s2g)
     .      *t2**2-2*mgo**4*(6*msq2**2+s-4*s1-6*s2g+t2)+4*msq2**4*(s+2*s2g
     .      -2*t1+t2)+msq2**2*(-3*s**2-12*s2g**2+8*s2g*t1+4*t1**2-10*s2g*t2
     .      +2*t1*t2+t2**2-2*s*(s2g-t1+t2))+mgo**2*(8*msq2**4+12*s1*s2g+12
     .      *s2g**2-8*s1*t1-4*t1**2+s*(3*s1-8*s2g+6*t1-3*t2)+5*s1*t2+6*t1
     .      *t2-t2**2-2*msq2**2*(5*s+12*s2g-4*t1+5*t2)))+nk1*(4*mgo**4*s-s
     .      *(2*s+s1-4*s2g)*s2g+s*(s-s1-8*s2g)*t1-(s**2-7*s*s2g+3*s1*s2g+(s
     .      -s1+4*s2g)*t1)*t2+(s+3*s2g)*t2**2-4*msq2**4*(s+t2)+msq2**2*(s
     .      *(3*s+8*t1)+2*(s+2*(s2g+t1))*t2-t2**2)+mgo**2*(t2*(4*msq2**2-5
     .      *s1-4*t1+5*t2)+s*(-3*s1+8*s2g-8*t1+7*t2))))/(npg*s1*(mgo**2-t1)
     .      *(s-s1+t2)))
            else
              write(*,*) 'Error in M5M8: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M5M8:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M5M80 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
