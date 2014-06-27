ccc colour stripped partial amplitude for M2M11
      real*8 function M2M11(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M11 = 
     .      (2*(4*msq2**4*s1+2*mgo**4*(s1-t2)-mgo**2*(-2*(s1**2+s*t1)+2*msq2
     .      **2*(s+2*s1-t2)+(s1-2*t1)*t2+t2**2)+msq2**2*(-4*s1*t1+s*(-2*s1
     .      +2*t1-3*t2)-2*(s1+t1)*t2+t2**2)+(2*(s1+t1)-t2)*(s1*t1+s*(-t1+t2))))
     .      /(s*s1*t2)
            else
              write(*,*) 'Error in M2M11: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M11 = 
     .      (-2*(-2*s1*(2*mgo**2+s1+s2g)-2*s*t1+2*msq2**2*(s+2*s1-t2)+(4*mgo
     .      **2+s1+2*s2g-2*t1)*t2+t2**2))/(s*s1*t2)
            else
              write(*,*) 'Error in M2M11: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M11 = 
     .      (4*(mgo**4*s1+2*msq2**4*s1+s1*s2g*(s1+s2g)+(s1**2+s*(-s1+s2g))
     .      *t1+(-s+s1)*t1**2+mgo**2*(s1**2-msq2**2*(s+2*s1)+2*s1*s2g+s*t1)
     .      -msq2**2*(s*(s1+s2g-t1)+2*s1*(s2g+t1)))-2*(2*mgo**4-2*s*s1+s1
     .      *s2g+2*s2g**2+mgo**2*(-2*msq2**2+s1+4*s2g-2*t1)-3*s*t1+s1*t1-2
     .      *s2g*t1+msq2**2*(3*s+2*(s1-s2g+t1)))*t2-2*(mgo**2-msq2**2+s+s2g)
     .      *t2**2)/(s*s1*t2)
            else
              write(*,*) 'Error in M2M11: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M11:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M11 = 
     .      (-4*mgo**2*msq2**2*nkq*s+8*msq2**4*nkq*s-4*msq2**4*npg*s-3*msq2
     .      **2*nkq*s**2+3*msq2**2*npg*s**2+4*mgo**4*npg*s1-8*mgo**2*msq2
     .      **2*npg*s1+8*msq2**4*npg*s1+3*mgo**2*nkq*s*s1-3*mgo**2*npg*s*s1
     .      -4*msq2**2*npg*s*s1+4*mgo**2*npg*s1**2+4*mgo**2*nkq*s*t1-12*msq2
     .      **2*nkq*s*t1+8*msq2**2*npg*s*t1-nkq*s**2*t1+npg*s**2*t1-8*msq2
     .      **2*npg*s1*t1+5*nkq*s*s1*t1-5*npg*s*s1*t1+4*npg*s1**2*t1+4*nkq
     .      *s*t1**2-4*npg*s*t1**2+4*npg*s1*t1**2-4*mgo**4*npg*t2+8*mgo**2
     .      *msq2**2*npg*t2-4*msq2**4*npg*t2-3*mgo**2*nkq*s*t2-2*msq2**2*nkq
     .      *s*t2+3*mgo**2*npg*s*t2-2*msq2**2*npg*s*t2+nkq*s**2*t2-npg*s*
     .      *2*t2+mgo**2*nkq*s1*t2-5*mgo**2*npg*s1*t2-4*msq2**2*npg*s1*t2
     .      -2*nkq*s*s1*t2+4*npg*s*s1*t2-7*nkq*s*t1*t2+7*npg*s*t1*t2-nkq*s1
     .      *t1*t2-3*npg*s1*t1*t2-mgo**2*nkq*t2**2+msq2**2*nkq*t2**2+mgo*
     .      *2*npg*t2**2+3*msq2**2*npg*t2**2+3*nkq*s*t2**2-3*npg*s*t2**2+nk2
     .      *(s*(-s+s1)*t1-(s**2+2*s*s1+3*s*t1+s1*t1)*t2+3*s*t2**2+msq2**2
     .      *(s**2+t2**2)-mgo**2*(s*s1-(3*s+s1)*t2+t2**2))+nk1*(msq2**2*(s
     .      **2+t2**2)-mgo**2*(t2*(-s1+t2)+s*(s1+t2))+(s-t2)*(s1*t1+s*(-t1
     .      +t2)))+npq*(-4*mgo**4*t2-8*msq2**4*t2+msq2**2*(-s**2+4*(3*mgo
     .      **2+2*s+t1)*t2+t2**2)-(s+t2)*(s1*t1+s*(-t1+t2))+mgo**2*(s*(s1
     .      +3*t2)+t2*(-7*s1-4*t1+3*t2))))/(npg*s*s1*t2)
            else
              write(*,*) 'Error in M2M11: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M11 = 
     .      (-4*msq2**2*nkq*s+8*mgo**2*npg*s1-8*msq2**2*npg*s1+3*nkq*s*s1
     .      -3*npg*s*s1+4*npg*s1**2+4*npg*s1*s2g+4*nkq*s*t1-8*mgo**2*npg*t2
     .      +8*msq2**2*npg*t2-3*nkq*s*t2+3*npg*s*t2+nkq*s1*t2-5*npg*s1*t2
     .      -4*npg*s2g*t2-nkq*t2**2+npg*t2**2-nk2*(s*s1-(3*s+s1)*t2+t2**2)
     .      -nk1*(t2*(-s1+t2)+s*(s1+t2))+npq*(s*(s1+3*t2)+t2*(-8*mgo**2+12
     .      *msq2**2-7*s1-4*(s2g+t1)+3*t2)))/(npg*s*s1*t2)
            else
              write(*,*) 'Error in M2M11: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M11 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M11 = 
     .      (-4*mgo**2*msq2**2*nkq*s+8*msq2**4*nkq*s-4*msq2**4*npg*s-3*msq2
     .      **2*nkq*s**2+3*msq2**2*npg*s**2+4*mgo**4*npg*s1-8*mgo**2*msq2
     .      **2*npg*s1+8*msq2**4*npg*s1+3*mgo**2*nkq*s*s1-3*mgo**2*npg*s*s1
     .      -4*msq2**2*npg*s*s1+4*mgo**2*npg*s1**2-4*msq2**2*nkq*s*s2g+8*mgo
     .      **2*npg*s1*s2g-8*msq2**2*npg*s1*s2g+3*nkq*s*s1*s2g-3*npg*s*s1
     .      *s2g+4*npg*s1**2*s2g+4*npg*s1*s2g**2+4*mgo**2*nkq*s*t1-12*msq2
     .      **2*nkq*s*t1+8*msq2**2*npg*s*t1-nkq*s**2*t1+npg*s**2*t1-8*msq2
     .      **2*npg*s1*t1+5*nkq*s*s1*t1-5*npg*s*s1*t1+4*npg*s1**2*t1+4*nkq
     .      *s*s2g*t1+4*nkq*s*t1**2-4*npg*s*t1**2+4*npg*s1*t1**2-4*mgo**4
     .      *npg*t2+8*mgo**2*msq2**2*npg*t2-4*msq2**4*npg*t2-3*mgo**2*nkq
     .      *s*t2-2*msq2**2*nkq*s*t2+3*mgo**2*npg*s*t2-2*msq2**2*npg*s*t2
     .      +nkq*s**2*t2-npg*s**2*t2+mgo**2*nkq*s1*t2-5*mgo**2*npg*s1*t2-4
     .      *msq2**2*npg*s1*t2-2*nkq*s*s1*t2+4*npg*s*s1*t2-8*mgo**2*npg*s2g
     .      *t2+8*msq2**2*npg*s2g*t2-3*nkq*s*s2g*t2+3*npg*s*s2g*t2+nkq*s1
     .      *s2g*t2-5*npg*s1*s2g*t2-4*npg*s2g**2*t2-7*nkq*s*t1*t2+7*npg*s
     .      *t1*t2-nkq*s1*t1*t2-3*npg*s1*t1*t2-mgo**2*nkq*t2**2+msq2**2*nkq
     .      *t2**2+mgo**2*npg*t2**2+3*msq2**2*npg*t2**2+3*nkq*s*t2**2-3*npg
     .      *s*t2**2-nkq*s2g*t2**2+npg*s2g*t2**2+nk2*(-(s*(s1*(mgo**2+s2g
     .      -t1)+s*t1))+(-s**2-2*s*s1+mgo**2*(3*s+s1)+3*s*s2g+s1*s2g-(3*s
     .      +s1)*t1)*t2-(mgo**2-3*s+s2g)*t2**2+msq2**2*(s**2+t2**2))+nk1*(
     .      -(s*(s1*(mgo**2+s2g-t1)+s*t1))+(s**2+mgo**2*(-s+s1)-s*s2g+s1*s2g
     .      +s*t1-s1*t1)*t2-(mgo**2+s+s2g)*t2**2+msq2**2*(s**2+t2**2))+npq
     .      *(s*s1*(mgo**2+s2g)+s*(s-s1)*t1-8*msq2**4*t2-(4*mgo**4+s**2+7
     .      *s1*s2g+4*s2g**2+s1*t1+4*s2g*t1-s*(3*s2g+t1)+mgo**2*(-3*s+7*s1
     .      +8*s2g+4*t1))*t2+(3*mgo**2-s+3*s2g)*t2**2+msq2**2*(-s**2+8*s*t2
     .      +t2*(4*(3*(mgo**2+s2g)+t1)+t2))))/(npg*s*s1*t2)
            else
              write(*,*) 'Error in M2M11: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M11:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M110 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
