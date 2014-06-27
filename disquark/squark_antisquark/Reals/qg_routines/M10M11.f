ccc colour stripped partial amplitude for M10M11
      real*8 function M10M11(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M10M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M10M11 = 
     .      (-8*msq2**6+8*msq2**4*(s1+2*t1)+mgo**2*(4*(2*msq2**4-2*msq2**2
     .      *(s1+2*t1)+(s1+t1)*(s1+2*t1))+(8*msq2**2-9*s1-12*t1)*t2+5*t2*
     .      *2)+(4*(s1+t1)-3*t2)*(s1*t1+s*(-t1+t2))-msq2**2*(8*t1*(2*s1+t1)
     .      +4*(s1-t1)*t2-3*t2**2+s*(4*s1-4*t1+3*t2)))/(s1*(mgo**2-s-t1)*t2)
            else
              write(*,*) 'Error in M10M11: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M10M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M10M11 = 
     .      (4*(msq2**2-s1-t1)*(2*msq2**4-2*msq2**2*(s+2*t1)+(s1+t1)*(s+2
     .      *t1))+(msq2**2*(-5*s+4*(s1-3*t1))+(s1+t1)*(5*s+12*t1))*t2-(3*msq2
     .      **2+2*s+5*t1)*t2**2)/(s1*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)*t2)
            else
              write(*,*) 'Error in M10M11: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M10M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M10M11 = 
     .      (4*(-2*msq2**6+2*msq2**4*(s1+s2g+2*t1)+(s1+t1)*(s1*s2g+(-s+s1
     .      +2*s2g)*t1)+mgo**2*(2*msq2**4-2*msq2**2*(s1+2*t1)+(s1+t1)*(s1
     .      +2*t1))-msq2**2*(s*(s1-t1)+2*(s1*s2g+2*(s1+s2g)*t1+t1**2)))+(4
     .      *s*s1-9*s1*s2g+mgo**2*(8*msq2**2-9*s1-12*t1)+7*s*t1-3*s1*t1-12
     .      *s2g*t1+msq2**2*(-3*s-4*s1+8*s2g+4*t1))*t2+(5*mgo**2+3*msq2**2
     .      -3*s+5*s2g)*t2**2)/(s1*(mgo**2-s+s2g-t1)*t2)
            else
              write(*,*) 'Error in M10M11: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M10M11:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M10M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M10M11 = 
     .      (4*mgo**4*msq2**2*nkq-8*mgo**2*msq2**4*nkq-4*mgo**4*msq2**2*npg
     .      +12*mgo**2*msq2**4*npg-8*msq2**6*npg-mgo**2*msq2**2*nkq*s+8*msq2
     .      **4*nkq*s+mgo**2*msq2**2*npg*s-4*msq2**4*npg*s-3*msq2**2*nkq*s
     .      **2+3*msq2**2*npg*s**2-3*mgo**4*nkq*s1+3*mgo**4*npg*s1-8*mgo*
     .      *2*msq2**2*npg*s1+8*msq2**4*npg*s1+3*mgo**2*nkq*s*s1-3*mgo**2
     .      *npg*s*s1-4*msq2**2*npg*s*s1+4*mgo**2*npg*s1**2-4*mgo**4*nkq*t1
     .      +8*mgo**2*msq2**2*nkq*t1+8*msq2**4*nkq*t1+4*mgo**4*npg*t1-16*mgo
     .      **2*msq2**2*npg*t1+12*msq2**4*npg*t1+5*mgo**2*nkq*s*t1-15*msq2
     .      **2*nkq*s*t1-5*mgo**2*npg*s*t1+11*msq2**2*npg*s*t1-nkq*s**2*t1
     .      +npg*s**2*t1-2*mgo**2*nkq*s1*t1+10*mgo**2*npg*s1*t1-16*msq2**2
     .      *npg*s1*t1+5*nkq*s*s1*t1-5*npg*s*s1*t1+4*npg*s1**2*t1-12*msq2
     .      **2*nkq*t1**2+4*mgo**2*npg*t1**2-4*msq2**2*npg*t1**2+3*nkq*s*t1
     .      **2-3*npg*s*t1**2+5*nkq*s1*t1**2+3*npg*s1*t1**2+4*nkq*t1**3+3
     .      *mgo**4*nkq*t2-mgo**2*msq2**2*nkq*t2-3*mgo**4*npg*t2+3*mgo**2
     .      *msq2**2*npg*t2+4*msq2**4*npg*t2-4*mgo**2*nkq*s*t2+msq2**2*nkq
     .      *s*t2+4*mgo**2*npg*s*t2-5*msq2**2*npg*s*t2+nkq*s**2*t2-npg*s*
     .      *2*t2+2*mgo**2*nkq*s1*t2-6*mgo**2*npg*s1*t2-4*msq2**2*npg*s1*t2
     .      -2*nkq*s*s1*t2+4*npg*s*s1*t2+3*mgo**2*nkq*t1*t2+msq2**2*nkq*t1
     .      *t2-5*mgo**2*npg*t1*t2+msq2**2*npg*t1*t2-5*nkq*s*t1*t2+5*npg*s
     .      *t1*t2-2*nkq*s1*t1*t2-2*npg*s1*t1*t2-6*nkq*t1**2*t2-2*mgo**2*nkq
     .      *t2**2+2*mgo**2*npg*t2**2+2*msq2**2*npg*t2**2+2*nkq*s*t2**2-2
     .      *npg*s*t2**2+2*nkq*t1*t2**2-npq*(mgo**2-s-t1)*(s*t1-s1*t1-msq2
     .      **2*(s-3*t2)-s*t2+mgo**2*(s1+t2))+nk2*(mgo**2-s-t1)*((s-s1)*t1
     .      +mgo**2*(s1-t2)+(s+2*s1+4*t1)*t2-2*t2**2-msq2**2*(s+3*t2))+nk1
     .      *(mgo**4*(s1-t2)-8*msq2**4*t2-mgo**2*(s*s1-s*t1+2*s1*t1+msq2*
     .      *2*(s-9*t2)+6*s1*t2+7*t1*t2-6*t2**2)+(s+t1-2*t2)*(s1*t1+s*(-t1
     .      +t2))+msq2**2*(s**2+t2*(7*t1+2*t2)+s*(t1+5*t2))))/(npg*s1*(mgo
     .      **2-s-t1)*t2)
            else
              write(*,*) 'Error in M10M11: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M10M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M10M11 = 
     .      (4*mgo**4*msq2**2*nkq-4*mgo**4*msq2**2*npg+8*msq2**6*npg-8*mgo
     .      **2*msq2**2*nkq*s+8*mgo**2*msq2**2*npg*s-8*msq2**4*npg*s+4*msq2
     .      **2*nkq*s**2-4*msq2**2*npg*s**2-3*mgo**4*nkq*s1+3*mgo**4*npg*s1
     .      -8*msq2**4*npg*s1+6*mgo**2*nkq*s*s1-6*mgo**2*npg*s*s1+12*msq2
     .      **2*npg*s*s1-3*nkq*s**2*s1+3*npg*s**2*s1-4*npg*s*s1**2+4*mgo*
     .      *2*msq2**2*nkq*s2g-4*mgo**2*msq2**2*npg*s2g-4*msq2**2*nkq*s*s2g
     .      +4*msq2**2*npg*s*s2g-3*mgo**2*nkq*s1*s2g+3*mgo**2*npg*s1*s2g+3
     .      *nkq*s*s1*s2g-3*npg*s*s1*s2g-4*mgo**4*nkq*t1-8*mgo**2*msq2**2
     .      *nkq*t1+4*mgo**4*npg*t1+8*mgo**2*msq2**2*npg*t1-24*msq2**4*npg
     .      *t1+8*mgo**2*nkq*s*t1+8*msq2**2*nkq*s*t1-8*mgo**2*npg*s*t1+4*msq2
     .      **2*npg*s*t1-4*nkq*s**2*t1+4*npg*s**2*t1+6*mgo**2*nkq*s1*t1-6
     .      *mgo**2*npg*s1*t1+24*msq2**2*npg*s1*t1-6*nkq*s*s1*t1-2*npg*s*s1
     .      *t1-8*npg*s1**2*t1-4*mgo**2*nkq*s2g*t1-4*msq2**2*nkq*s2g*t1+4
     .      *mgo**2*npg*s2g*t1+4*msq2**2*npg*s2g*t1+4*nkq*s*s2g*t1-4*npg*s
     .      *s2g*t1+3*nkq*s1*s2g*t1-3*npg*s1*s2g*t1+8*mgo**2*nkq*t1**2+4*msq2
     .      **2*nkq*t1**2-8*mgo**2*npg*t1**2+20*msq2**2*npg*t1**2-8*nkq*s
     .      *t1**2+4*npg*s*t1**2-3*nkq*s1*t1**2-13*npg*s1*t1**2+4*nkq*s2g
     .      *t1**2-4*npg*s2g*t1**2-4*nkq*t1**3-4*npg*t1**3+nk2*(mgo**2-s-t1)
     .      *(mgo**2-s+s2g-t1)*(s1-t2)+3*mgo**4*nkq*t2-3*mgo**4*npg*t2-4*msq2
     .      **4*npg*t2-6*mgo**2*nkq*s*t2+6*mgo**2*npg*s*t2+2*msq2**2*npg*s
     .      *t2+3*nkq*s**2*t2-3*npg*s**2*t2+4*msq2**2*npg*s1*t2+2*npg*s*s1
     .      *t2+3*mgo**2*nkq*s2g*t2-3*mgo**2*npg*s2g*t2-3*nkq*s*s2g*t2+3*npg
     .      *s*s2g*t2-6*mgo**2*nkq*t1*t2+6*mgo**2*npg*t1*t2-4*msq2**2*npg
     .      *t1*t2+6*nkq*s*t1*t2-4*npg*s*t1*t2+8*npg*s1*t1*t2-3*nkq*s2g*t1
     .      *t2+3*npg*s2g*t1*t2+3*nkq*t1**2*t2+5*npg*t1**2*t2-2*msq2**2*npg
     .      *t2**2-2*npg*t1*t2**2-npq*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(s1
     .      +t2)+nk1*(s1*(s+t1)*(s-s2g+t1)+mgo**4*(s1-t2)-mgo**2*(2*s-s2g
     .      +2*t1)*(s1-t2)+(8*msq2**4-s**2+s*(6*s1+s2g+4*t1)+t1*(8*s1+s2g
     .      +7*t1)-2*msq2**2*(7*s+8*t1))*t2-2*(msq2**2+2*s+3*t1)*t2**2))/(npg
     .      *s1*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)*t2)
            else
              write(*,*) 'Error in M10M11: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M10M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M10M11 = 
     .      (4*mgo**4*msq2**2*nkq-8*mgo**2*msq2**4*nkq-4*mgo**4*msq2**2*npg
     .      +12*mgo**2*msq2**4*npg-8*msq2**6*npg-mgo**2*msq2**2*nkq*s+8*msq2
     .      **4*nkq*s+mgo**2*msq2**2*npg*s-4*msq2**4*npg*s-3*msq2**2*nkq*s
     .      **2+3*msq2**2*npg*s**2-3*mgo**4*nkq*s1+3*mgo**4*npg*s1-8*mgo*
     .      *2*msq2**2*npg*s1+8*msq2**4*npg*s1+3*mgo**2*nkq*s*s1-3*mgo**2
     .      *npg*s*s1-4*msq2**2*npg*s*s1+4*mgo**2*npg*s1**2+8*mgo**2*msq2
     .      **2*nkq*s2g-8*msq2**4*nkq*s2g-8*mgo**2*msq2**2*npg*s2g+12*msq2
     .      **4*npg*s2g-msq2**2*nkq*s*s2g+msq2**2*npg*s*s2g-6*mgo**2*nkq*s1
     .      *s2g+6*mgo**2*npg*s1*s2g-8*msq2**2*npg*s1*s2g+3*nkq*s*s1*s2g-3
     .      *npg*s*s1*s2g+4*npg*s1**2*s2g+4*msq2**2*nkq*s2g**2-4*msq2**2*npg
     .      *s2g**2-3*nkq*s1*s2g**2+3*npg*s1*s2g**2-4*mgo**4*nkq*t1+8*mgo
     .      **2*msq2**2*nkq*t1+8*msq2**4*nkq*t1+4*mgo**4*npg*t1-16*mgo**2
     .      *msq2**2*npg*t1+12*msq2**4*npg*t1+5*mgo**2*nkq*s*t1-15*msq2**2
     .      *nkq*s*t1-5*mgo**2*npg*s*t1+11*msq2**2*npg*s*t1-nkq*s**2*t1+npg
     .      *s**2*t1-2*mgo**2*nkq*s1*t1+10*mgo**2*npg*s1*t1-16*msq2**2*npg
     .      *s1*t1+5*nkq*s*s1*t1-5*npg*s*s1*t1+4*npg*s1**2*t1-8*mgo**2*nkq
     .      *s2g*t1+8*msq2**2*nkq*s2g*t1+8*mgo**2*npg*s2g*t1-16*msq2**2*npg
     .      *s2g*t1+5*nkq*s*s2g*t1-5*npg*s*s2g*t1-2*nkq*s1*s2g*t1+10*npg*s1
     .      *s2g*t1-4*nkq*s2g**2*t1+4*npg*s2g**2*t1-12*msq2**2*nkq*t1**2+4
     .      *mgo**2*npg*t1**2-4*msq2**2*npg*t1**2+3*nkq*s*t1**2-3*npg*s*t1
     .      **2+5*nkq*s1*t1**2+3*npg*s1*t1**2+4*npg*s2g*t1**2+4*nkq*t1**3
     .      +3*mgo**4*nkq*t2-mgo**2*msq2**2*nkq*t2-3*mgo**4*npg*t2+3*mgo*
     .      *2*msq2**2*npg*t2+4*msq2**4*npg*t2-4*mgo**2*nkq*s*t2+msq2**2*nkq
     .      *s*t2+4*mgo**2*npg*s*t2-5*msq2**2*npg*s*t2+nkq*s**2*t2-npg*s*
     .      *2*t2+2*mgo**2*nkq*s1*t2-6*mgo**2*npg*s1*t2-4*msq2**2*npg*s1*t2
     .      -2*nkq*s*s1*t2+4*npg*s*s1*t2+6*mgo**2*nkq*s2g*t2-msq2**2*nkq*s2g
     .      *t2-6*mgo**2*npg*s2g*t2+3*msq2**2*npg*s2g*t2-4*nkq*s*s2g*t2+4
     .      *npg*s*s2g*t2+2*nkq*s1*s2g*t2-6*npg*s1*s2g*t2+3*nkq*s2g**2*t2
     .      -3*npg*s2g**2*t2+3*mgo**2*nkq*t1*t2+msq2**2*nkq*t1*t2-5*mgo**2
     .      *npg*t1*t2+msq2**2*npg*t1*t2-5*nkq*s*t1*t2+5*npg*s*t1*t2-2*nkq
     .      *s1*t1*t2-2*npg*s1*t1*t2+3*nkq*s2g*t1*t2-5*npg*s2g*t1*t2-6*nkq
     .      *t1**2*t2-2*mgo**2*nkq*t2**2+2*mgo**2*npg*t2**2+2*msq2**2*npg
     .      *t2**2+2*nkq*s*t2**2-2*npg*s*t2**2-2*nkq*s2g*t2**2+2*npg*s2g*t2
     .      **2+2*nkq*t1*t2**2-npq*(mgo**2-s+s2g-t1)*(s1*(mgo**2+s2g-t1)+s
     .      *t1-msq2**2*(s-3*t2)+(mgo**2-s+s2g)*t2)+nk1*((mgo**2-s+s2g-t1)
     .      *(-(msq2**2*s)+s1*(mgo**2+s2g-t1)+s*t1)-(mgo**4+8*msq2**4-s**2
     .      +6*s1*s2g+s2g**2-3*s*t1+2*s1*t1+7*s2g*t1+mgo**2*(-9*msq2**2+6
     .      *s1+2*s2g+7*t1)-msq2**2*(5*s+9*s2g+7*t1))*t2+2*(3*mgo**2+msq2
     .      **2-s+3*s2g)*t2**2)+nk2*(mgo**2-s+s2g-t1)*(s1*(mgo**2+s2g-t1)
     .      +s*t1+(-mgo**2+s+2*s1-s2g+4*t1)*t2-2*t2**2-msq2**2*(s+3*t2)))
     .      /(npg*s1*(mgo**2-s+s2g-t1)*t2)
            else
              write(*,*) 'Error in M10M11: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M10M11:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M10M111 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
