ccc colour stripped partial amplitude for M5M6
      real*8 function M5M6(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M5M6 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M6 = 
     .      (4*(msq2**2*(2*msq2**2-t1)*(msq2**2-s-t1)+mgo**2*(msq2**4+msq2
     .      **2*(-2*s+2*s1-3*t2)-(s+t1)*(t1-t2))+mgo**4*(-3*msq2**2+2*s1+3
     .      *t1-2*t2)))/((mgo**2-t1)*(mgo**2-s-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M5M6: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M5M6 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M6 = 
     .      (2*(-4*msq2**6+msq2**4*(6*s+8*t1)+mgo**4*(-2*msq2**2+s1+2*t1-t2)
     .      +msq2**2*(s+t1)*(s-4*s1+2*s2g-6*t1+5*t2)+(s+t1)*(-((s2g-t1)*(s1
     .      +2*t1))+s*(t1-t2)+(s2g-2*t1)*t2)+mgo**2*(-4*msq2**4-5*s*s1+s1
     .      *s2g-7*s*t1-6*s1*t1+2*s2g*t1-8*t1**2+4*s*t2-s2g*t2+5*t1*t2+msq2
     .      **2*(11*s-2*s2g+12*t1+t2))))/((mgo**2-t1)*(mgo**2-s-t1)*(mgo*
     .      *2-s+s2g-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M5M6: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M5M6 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M6 = 
     .      (-2*(-4*msq2**6+2*msq2**4*(2*s+s2g+3*t1)+mgo**4*(6*msq2**2-4*s1
     .      -6*t1+4*t2)+msq2**2*(-4*s1*s2g+2*s2g**2+s*(s2g-2*t1)-4*s2g*t1
     .      -2*t1**2+5*s2g*t2)+s2g*(-((s2g-t1)*(s1+2*t1))+s*(t1-t2)+(s2g-2
     .      *t1)*t2)+mgo**2*(-2*msq2**4-5*s1*s2g+2*t1*(s-4*s2g+t1)+(-2*s+5
     .      *s2g-2*t1)*t2+msq2**2*(4*s-4*s1+8*s2g+6*t2))))/((mgo**2-t1)*(mgo
     .      **2-s+s2g-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M5M6: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M5M6:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M5M6 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M6 = 
     .      (4*(-(npq*(mgo**4+msq2**4-msq2**2*s+mgo**2*(-2*msq2**2+s1))*(mgo
     .      **2-s-t1))-nk1*(-3*mgo**2+s+3*t1)*(msq2**2*(msq2**2-s-t1)+mgo
     .      **2*(-msq2**2+s1+t1-t2))+nkq*(mgo**2-s-t1)*(-msq2**4+msq2**2*t1
     .      +mgo**2*(msq2**2-s1-t1+t2))+nk2*(mgo**2-s-t1)*(-msq2**4+msq2*
     .      *2*t1+mgo**2*(msq2**2+s-s1-t1+t2))+npg*(2*msq2**4*(msq2**2-s-t1)
     .      +mgo**4*(-2*msq2**2+s1+2*t1-t2)+mgo**2*(-(s*t1)+s1*t1+s*t2-msq2
     .      **2*(s-2*s1+3*t2)))))/(npg*(mgo**2-t1)*(mgo**2-s-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M5M6: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M5M6 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M6 = 
     .      (-4*(npq*(mgo**2-msq2**2+s1)*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)-nk2
     .      *(msq2**2-t1)*(-mgo**2+s+t1)*(-mgo**2+s-s2g+t1)+nk1*(2*msq2**4
     .      *s-msq2**2*(s+t1)*(3*s2g-3*t1+t2)+mgo**4*(3*msq2**2-2*s1-3*t1
     .      +2*t2)-(s+t1)*(-((s2g-t1)*(2*s1+3*t1))+s*(s1+2*t1-2*t2)+(2*s2g
     .      -3*t1)*t2)+mgo**2*(-((s2g-2*t1)*(2*s1+3*t1))+s*(5*s1+7*t1-6*t2)
     .      +(2*s2g-5*t1)*t2+msq2**2*(-7*s+3*s2g-6*t1+t2)))+npg*(2*msq2**2
     .      *(msq2**4-2*msq2**2*(s+t1)+(s+t1)*(s1+t1-t2))+mgo**2*(2*msq2*
     .      *4+(s1+t1)*(s+2*t1)-t1*t2-msq2**2*(3*s+4*t1+t2)))))/(npg*(mgo
     .      **2-t1)*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M5M6: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M5M6 = 
     .      0
            else if(deltac1c2.eq.1) then
              M5M6 = 
     .      (4*(-2*mgo**4*msq2**2*npg+2*msq2**6*npg-mgo**2*msq2**2*npg*s-2
     .      *msq2**4*npg*s+mgo**4*npg*s1+2*mgo**2*msq2**2*npg*s1-2*mgo**2
     .      *msq2**2*npg*s2g-2*msq2**4*npg*s2g+mgo**2*npg*s1*s2g+2*msq2**2
     .      *npg*s1*s2g-npq*(mgo**4+msq2**4+s1*s2g-msq2**2*(s+s2g)+mgo**2
     .      *(-2*msq2**2+s1+s2g))*(mgo**2-s+s2g-t1)+2*mgo**4*npg*t1-2*msq2
     .      **4*npg*t1-mgo**2*npg*s*t1+mgo**2*npg*s1*t1+2*mgo**2*npg*s2g*t1
     .      +2*msq2**2*npg*s2g*t1-mgo**4*npg*t2-3*mgo**2*msq2**2*npg*t2+mgo
     .      **2*npg*s*t2-mgo**2*npg*s2g*t2-2*msq2**2*npg*s2g*t2+nkq*(mgo*
     .      *2-s+s2g-t1)*(-msq2**4+msq2**2*t1+mgo**2*(msq2**2-s1-t1+t2))+nk2
     .      *(mgo**2-s+s2g-t1)*(-((msq2**2-s2g)*(msq2**2-t1))+mgo**2*(msq2
     .      **2+s-s1-t1+t2))-nk1*(msq2**4*(s-3*s2g+3*t1)+3*mgo**4*(msq2**2
     .      -s1-t1+t2)+s2g*(-((s2g-t1)*(2*s1+3*t1))+s*(s1+2*t1-2*t2)+(2*s2g
     .      -3*t1)*t2)+mgo**2*(-3*msq2**4-5*s1*s2g+2*msq2**2*(s+3*s2g)+3*s1
     .      *t1-6*s2g*t1+3*t1**2+s*(s1+t1-t2)+5*s2g*t2-3*t1*t2)+msq2**2*(
     .      -s**2+s*(s2g-4*t1)-3*t1**2+s2g*(3*s2g+t2)))))/(npg*(mgo**2-t1)
     .      *(mgo**2-s+s2g-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M5M6: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M5M6:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M5M61 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
