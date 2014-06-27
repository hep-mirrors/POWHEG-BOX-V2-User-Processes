ccc colour stripped partial amplitude for M1M5
      real*8 function M1M5(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M1M5 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M5 = 
     .      (4*(msq2**2*(2*msq2**2-s)*(msq2**2-t1)+mgo**4*(2*msq2**2+2*s-s1
     .      -2*t1+t2)-mgo**2*(4*msq2**4+s**2-s*s1+s1*t1+msq2**2*(2*s-2*s1
     .      -4*t1+t2))))/(s*s1*(-mgo**2+t1))
            else
              write(*,*) 'Error in M1M5: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M1M5 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M5 = 
     .      (-4*(-((4*msq2**2+s-2*(s1+s2g))*(msq2**2-t1))+mgo**2*(4*msq2*
     .      *2+2*s-s1-4*t1+t2)))/(s*s1*(mgo**2-t1))
            else
              write(*,*) 'Error in M1M5: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M1M5 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M5 = 
     .      (4*((2*msq2**4-msq2**2*(s+4*s2g)+s2g*(-s+2*(s1+s2g)))*(msq2**2
     .      -t1)+mgo**4*(2*msq2**2+2*s-s1-2*t1+t2)-mgo**2*(4*msq2**4+s**2
     .      +s1*s2g-s*(s1+2*s2g)+s1*t1+4*s2g*t1-s2g*t2+msq2**2*(2*s-2*(s1
     .      +2*(s2g+t1))+t2))))/(s*s1*(-mgo**2+t1))
            else
              write(*,*) 'Error in M1M5: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M1M5:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M1M5 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M5 = 
     .      (4*mgo**4*msq2**2*npg-12*mgo**2*msq2**4*npg+8*msq2**6*npg+4*mgo
     .      **4*nkq*s-3*mgo**2*msq2**2*nkq*s+4*msq2**4*nkq*s+4*mgo**4*npg
     .      *s-7*mgo**2*msq2**2*npg*s-4*msq2**4*npg*s-2*mgo**2*nkq*s**2+msq2
     .      **2*nkq*s**2-2*mgo**2*npg*s**2-msq2**2*npg*s**2+mgo**4*nkq*s1
     .      -mgo**4*npg*s1+8*mgo**2*msq2**2*npg*s1+mgo**2*nkq*s*s1+3*mgo*
     .      *2*npg*s*s1-4*mgo**4*npg*t1+16*mgo**2*msq2**2*npg*t1-12*msq2*
     .      *4*npg*t1-mgo**2*nkq*s*t1-5*msq2**2*nkq*s*t1+3*mgo**2*npg*s*t1
     .      +3*msq2**2*npg*s*t1+nkq*s**2*t1-npg*s**2*t1-2*mgo**2*nkq*s1*t1
     .      -6*mgo**2*npg*s1*t1+3*nkq*s*s1*t1+npg*s*s1*t1-4*mgo**2*npg*t1
     .      **2+4*msq2**2*npg*t1**2+nkq*s*t1**2+npg*s*t1**2+nkq*s1*t1**2-npg
     .      *s1*t1**2-mgo**4*nkq*t2+mgo**2*msq2**2*nkq*t2+mgo**4*npg*t2-5
     .      *mgo**2*msq2**2*npg*t2+2*mgo**2*nkq*s*t2-msq2**2*nkq*s*t2-2*mgo
     .      **2*npg*s*t2-msq2**2*npg*s*t2-nkq*s**2*t2+npg*s**2*t2+mgo**2*nkq
     .      *t1*t2-msq2**2*nkq*t1*t2+3*mgo**2*npg*t1*t2+msq2**2*npg*t1*t2
     .      -nkq*s*t1*t2-npg*s*t1*t2+nk1*(-4*msq2**4*s+mgo**4*(4*s+s1-t2)
     .      +(s-t1)*(s*t1-s1*t1-s*t2)+msq2**2*(3*s*(s+3*t1)+(s-t1)*t2)+mgo
     .      **2*(-3*s*s1-7*s*t1-2*s1*t1+6*s*t2+t1*t2+msq2**2*(-s+t2)))+nk2
     .      *(4*msq2**4*s-(s-s1)*t1*(3*s+t1)+mgo**4*(s1-t2)-s*(s+t1)*t2+msq2
     .      **2*(s*(s-3*t1)-(s+t1)*t2)+mgo**2*(-2*s**2+msq2**2*(-5*s+t2)+t1
     .      *(-2*s1+t2)+s*(s1+5*t1+2*t2)))+npq*(4*mgo**6+4*msq2**4*(s-2*t1)
     .      -(s-t1)*(-(s1*t1)+s*(t1-t2))-mgo**4*(12*msq2**2+2*s-7*s1+3*t2)
     .      +msq2**2*(-3*s**2+s*(t1-t2)+t1*(4*t1+t2))+mgo**2*(8*msq2**4+s
     .      *(3*s1+5*t1-2*t2)-msq2**2*(9*s-8*t1+t2)+t1*(-6*s1-4*t1+3*t2))))
     .      /(npg*s*s1*(-mgo**2+t1))
            else
              write(*,*) 'Error in M1M5: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M1M5 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M5 = 
     .      (-8*mgo**2*msq2**2*npg+12*msq2**4*npg-4*mgo**2*nkq*s-msq2**2*nkq
     .      *s-4*mgo**2*npg*s+3*msq2**2*npg*s-2*mgo**2*nkq*s1+2*mgo**2*npg
     .      *s1-8*msq2**2*npg*s1+nkq*s*s1-npg*s*s1-4*msq2**2*npg*s2g-nkq*s1
     .      *s2g+npg*s1*s2g+8*mgo**2*npg*t1-16*msq2**2*npg*t1+nkq*s*t1-3*npg
     .      *s*t1+2*nkq*s1*t1+6*npg*s1*t1+4*npg*s2g*t1+4*npg*t1**2+2*mgo*
     .      *2*nkq*t2-msq2**2*nkq*t2-2*mgo**2*npg*t2+5*msq2**2*npg*t2-2*nkq
     .      *s*t2+2*npg*s*t2+nkq*s2g*t2-npg*s2g*t2-nkq*t1*t2-3*npg*t1*t2+nk1
     .      *(msq2**2*s+2*s**2+s*s1-4*s*s2g-s1*s2g+7*s*t1+2*s1*t1-2*mgo**2
     .      *(4*s+s1-t2)-(msq2**2+6*s-s2g+t1)*t2)+nk2*(5*msq2**2*s+s*s1-s1
     .      *s2g-5*s*t1+2*s1*t1-(msq2**2+2*s-s2g+t1)*t2+2*mgo**2*(-s1+t2))
     .      -npq*(12*mgo**4+8*msq2**4+2*s**2+s*s1-6*s*s2g+3*s1*s2g+4*s2g*
     .      *2+s*t1-2*s1*t1-4*t1**2-2*s*t2+s2g*t2+3*t1*t2-2*mgo**2*(12*msq2
     .      **2+4*s-5*s1-6*s2g+t2)-msq2**2*(s+12*s2g-8*t1+5*t2)))/(npg*s*s1
     .      *(mgo**2-t1))
            else
              write(*,*) 'Error in M1M5: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M1M5 = 
     .      0
            else if(deltac1c2.eq.1) then
              M1M5 = 
     .      (4*mgo**4*msq2**2*npg-12*mgo**2*msq2**4*npg+8*msq2**6*npg+4*mgo
     .      **4*nkq*s-3*mgo**2*msq2**2*nkq*s+4*msq2**4*nkq*s+4*mgo**4*npg
     .      *s-7*mgo**2*msq2**2*npg*s-4*msq2**4*npg*s-2*mgo**2*nkq*s**2+msq2
     .      **2*nkq*s**2-2*mgo**2*npg*s**2-msq2**2*npg*s**2+mgo**4*nkq*s1
     .      -mgo**4*npg*s1+8*mgo**2*msq2**2*npg*s1+mgo**2*nkq*s*s1+3*mgo*
     .      *2*npg*s*s1+8*mgo**2*msq2**2*npg*s2g-12*msq2**4*npg*s2g+4*mgo
     .      **2*nkq*s*s2g+msq2**2*nkq*s*s2g+4*mgo**2*npg*s*s2g-3*msq2**2*npg
     .      *s*s2g+2*mgo**2*nkq*s1*s2g-2*mgo**2*npg*s1*s2g+8*msq2**2*npg*s1
     .      *s2g-nkq*s*s1*s2g+npg*s*s1*s2g+4*msq2**2*npg*s2g**2+nkq*s1*s2g
     .      **2-npg*s1*s2g**2-4*mgo**4*npg*t1+16*mgo**2*msq2**2*npg*t1-12
     .      *msq2**4*npg*t1-mgo**2*nkq*s*t1-5*msq2**2*nkq*s*t1+3*mgo**2*npg
     .      *s*t1+3*msq2**2*npg*s*t1+nkq*s**2*t1-npg*s**2*t1-2*mgo**2*nkq
     .      *s1*t1-6*mgo**2*npg*s1*t1+3*nkq*s*s1*t1+npg*s*s1*t1-8*mgo**2*npg
     .      *s2g*t1+16*msq2**2*npg*s2g*t1-nkq*s*s2g*t1+3*npg*s*s2g*t1-2*nkq
     .      *s1*s2g*t1-6*npg*s1*s2g*t1-4*npg*s2g**2*t1-4*mgo**2*npg*t1**2
     .      +4*msq2**2*npg*t1**2+nkq*s*t1**2+npg*s*t1**2+nkq*s1*t1**2-npg
     .      *s1*t1**2-4*npg*s2g*t1**2-mgo**4*nkq*t2+mgo**2*msq2**2*nkq*t2
     .      +mgo**4*npg*t2-5*mgo**2*msq2**2*npg*t2+2*mgo**2*nkq*s*t2-msq2
     .      **2*nkq*s*t2-2*mgo**2*npg*s*t2-msq2**2*npg*s*t2-nkq*s**2*t2+npg
     .      *s**2*t2-2*mgo**2*nkq*s2g*t2+msq2**2*nkq*s2g*t2+2*mgo**2*npg*s2g
     .      *t2-5*msq2**2*npg*s2g*t2+2*nkq*s*s2g*t2-2*npg*s*s2g*t2-nkq*s2g
     .      **2*t2+npg*s2g**2*t2+mgo**2*nkq*t1*t2-msq2**2*nkq*t1*t2+3*mgo
     .      **2*npg*t1*t2+msq2**2*npg*t1*t2-nkq*s*t1*t2-npg*s*t1*t2+nkq*s2g
     .      *t1*t2+3*npg*s2g*t1*t2+nk2*(4*msq2**4*s+msq2**2*s**2-5*msq2**2
     .      *s*s2g-s*s1*s2g+s1*s2g**2-3*msq2**2*s*t1-3*s**2*t1+3*s*s1*t1+5
     .      *s*s2g*t1-2*s1*s2g*t1-s*t1**2+s1*t1**2+mgo**4*(s1-t2)-(msq2**2
     .      +s-s2g)*(s-s2g+t1)*t2+mgo**2*(-2*s**2+s*s1+2*s1*s2g+5*s*t1-2*s1
     .      *t1+(2*s-2*s2g+t1)*t2+msq2**2*(-5*s+t2)))+nk1*(-4*msq2**4*s-2
     .      *s**2*s2g-s*s1*s2g+4*s*s2g**2+s1*s2g**2+s**2*t1-s*s1*t1-7*s*s2g
     .      *t1-2*s1*s2g*t1-s*t1**2+s1*t1**2+mgo**4*(4*s+s1-t2)+(-s**2+6*s
     .      *s2g-s2g**2+(s+s2g)*t1)*t2+msq2**2*(s*(3*s-s2g+9*t1)+(s+s2g-t1)
     .      *t2)+mgo**2*(-3*s*s1+8*s*s2g+2*s1*s2g-7*s*t1-2*s1*t1+(6*s-2*s2g
     .      +t1)*t2+msq2**2*(-s+t2)))+npq*(4*mgo**6+2*s**2*s2g+s*s1*s2g-6
     .      *s*s2g**2+3*s1*s2g**2+4*s2g**3+4*msq2**4*(s+2*s2g-2*t1)-s**2*t1
     .      +s*s1*t1+s*s2g*t1-2*s1*s2g*t1+s*t1**2-s1*t1**2-4*s2g*t1**2+mgo
     .      **4*(-12*msq2**2-2*s+7*s1+12*s2g-3*t2)+((s-s2g)**2-(s-3*s2g)*t1)
     .      *t2+mgo**2*(8*msq2**4+10*s1*s2g+12*s2g**2-6*s1*t1-4*t1**2+s*(3
     .      *s1-8*s2g+5*t1-2*t2)-2*s2g*t2+3*t1*t2-msq2**2*(9*s+24*s2g-8*t1
     .      +t2))+msq2**2*(-3*s**2-12*s2g**2+s2g*(8*t1-5*t2)-s*(s2g-t1+t2)
     .      +t1*(4*t1+t2))))/(npg*s*s1*(-mgo**2+t1))
            else
              write(*,*) 'Error in M1M5: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M1M5:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M1M51 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
