ccc colour stripped partial amplitude for M2M7
      real*8 function M2M7(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M7 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M7 = 
     .      (2*(-4*msq2**6+2*msq2**4*(s+2*(s1+t1))+(s-2*s1)*(-(s1*t1)+s*(t1
     .      -t2))+2*mgo**4*(-2*msq2**2+s1+2*t1-t2)+msq2**2*((s-2*s1)*(s+2
     .      *t1)-(3*s+2*s1)*t2)+mgo**2*(8*msq2**4-s*(s1+4*t1-3*t2)+2*s1*(s1
     .      +3*t1-t2)+2*msq2**2*(-4*(s1+t1)+t2))))/(s*(s-s1+t2)*(mgo**2-t1
     .      +t2))
            else
              write(*,*) 'Error in M2M7: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M7 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M7 = 
     .      (-2*(-4*msq2**6+t1*(s**2+4*s1**2+4*s2g*t1-4*s*(s1+t1)+2*s1*(s2g
     .      +3*t1))+2*msq2**4*(s+2*s1+6*t1-4*t2)-(s**2-3*s*s1+2*s1**2+2*s1
     .      *s2g-7*s*t1+8*s1*t1+6*s2g*t1)*t2+(-3*s+2*(s1+s2g))*t2**2+2*mgo
     .      **4*(2*msq2**2-s1-2*t1+t2)+2*mgo**2*(2*msq2**2-s1-2*t1+t2)*(s2g
     .      -2*t1+2*t2)+msq2**2*(s**2+s*(-2*s1+2*t1-3*t2)-2*(t1-t2)*(2*s2g
     .      +4*t1-t2)+6*s1*(-2*t1+t2))))/(s*(s-s1+t2)*(mgo**2-t1+t2)*(mgo
     .      **2+s2g-t1+t2))
            else
              write(*,*) 'Error in M2M7: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M7 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M7 = 
     .      (2*(-4*msq2**6+2*msq2**4*(s+2*(s1+2*s2g+t1))+2*mgo**4*(-2*msq2
     .      **2+s1+2*t1-t2)+(s-2*(s1+s2g))*(-(s1*(s2g+t1))+s*(t1-t2)+s2g*(
     .      -2*t1+t2))+mgo**2*(8*msq2**4-s*(s1+4*t1-3*t2)+2*msq2**2*(-4*(s1
     .      +s2g+t1)+t2)+2*(s1**2+2*s1*s2g+3*s1*t1+4*s2g*t1-(s1+2*s2g)*t2))
     .      +msq2**2*(s**2+s*(-2*s1+2*t1-3*t2)-2*(s2g*(2*s2g+4*t1-t2)+s1*(4
     .      *s2g+2*t1+t2)))))/(s*(s-s1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M2M7: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M7:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M7 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M7 = 
     .      (2*(-4*msq2**6+msq2**4*(4*s+4*s1+6*t1-2*t2)+mgo**4*(-2*msq2**2
     .      +s1+2*t1-t2)+mgo**2*(6*msq2**4+2*s1**2-msq2**2*(s+8*(s1+t1)-5
     .      *t2)+s1*(6*t1-3*t2)-(t1-t2)*(s-2*t1+t2))+(2*s1+t1-t2)*(s1*t1+s
     .      *(-t1+t2))-msq2**2*((2*s1+t1-t2)*(2*t1+t2)+s*(2*s1+t1+3*t2))+(
     .      -(nk1*(mgo**2-t1+t2)*(-(s*t1)+s1*t1+s*t2-msq2**2*(s+t2)+mgo**2
     .      *(2*s-s1+t2)))+nk2*(-4*msq2**4*s+(s-s1)*(2*s-t1)*t1+mgo**4*(s1
     .      -t2)-(2*s**2+s1*t1)*t2+s*t2**2+msq2**2*(2*s**2+5*s*t1+s*t2-t1
     .      *t2+t2**2)+mgo**2*(-2*s*s1-3*s*t1-2*s1*t1+(3*s+s1+t1)*t2-t2**2
     .      +msq2**2*(3*s+t2)))-(mgo**2-t1+t2)*(nkq*((s+s1)*t1+msq2**2*(s
     .      -t2)-s*t2+mgo**2*(-s1+t2))+npq*(2*mgo**4+4*msq2**4-s*t1+s1*t1
     .      +s*t2-mgo**2*(6*msq2**2+2*s-3*s1-2*t1+t2)-msq2**2*(s+2*t1+t2))))
     .      /npg))/(s*(s-s1+t2)*(mgo**2-t1+t2))
            else
              write(*,*) 'Error in M2M7: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M7 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M7 = 
     .      (2*(-2*mgo**4*msq2**2*npg+4*msq2**6*npg-4*msq2**4*npg*s+mgo**4
     .      *nkq*s1+mgo**4*npg*s1-4*msq2**4*npg*s1+2*msq2**2*npg*s*s1-2*mgo
     .      **2*msq2**2*npg*s2g+mgo**2*nkq*s1*s2g+mgo**2*npg*s1*s2g+2*mgo
     .      **4*npg*t1+4*mgo**2*msq2**2*npg*t1-12*msq2**4*npg*t1+2*msq2**2
     .      *npg*s*t1-2*mgo**2*nkq*s1*t1-2*mgo**2*npg*s1*t1+12*msq2**2*npg
     .      *s1*t1+2*npg*s*s1*t1-4*npg*s1**2*t1+2*mgo**2*npg*s2g*t1+2*msq2
     .      **2*npg*s2g*t1-nkq*s1*s2g*t1-npg*s1*s2g*t1-4*mgo**2*npg*t1**2
     .      +10*msq2**2*npg*t1**2+2*npg*s*t1**2+nkq*s1*t1**2-7*npg*s1*t1*
     .      *2-2*npg*s2g*t1**2-2*npg*t1**3-mgo**4*nkq*t2-mgo**4*npg*t2-4*mgo
     .      **2*msq2**2*npg*t2+8*msq2**4*npg*t2+2*msq2**2*npg*s*t2+2*mgo*
     .      *2*nkq*s1*t2+2*mgo**2*npg*s1*t2-6*msq2**2*npg*s1*t2-2*npg*s*s1
     .      *t2+2*npg*s1**2*t2-mgo**2*nkq*s2g*t2-mgo**2*npg*s2g*t2-2*msq2
     .      **2*npg*s2g*t2+nkq*s1*s2g*t2+npg*s1*s2g*t2+2*mgo**2*nkq*t1*t2
     .      +6*mgo**2*npg*t1*t2-14*msq2**2*npg*t1*t2-4*npg*s*t1*t2-2*nkq*s1
     .      *t1*t2+10*npg*s1*t1*t2+nkq*s2g*t1*t2+3*npg*s2g*t1*t2-nkq*t1**2
     .      *t2+5*npg*t1**2*t2-2*mgo**2*nkq*t2**2-2*mgo**2*npg*t2**2+4*msq2
     .      **2*npg*t2**2+2*npg*s*t2**2+nkq*s1*t2**2-3*npg*s1*t2**2-nkq*s2g
     .      *t2**2-npg*s2g*t2**2+2*nkq*t1*t2**2-4*npg*t1*t2**2-nkq*t2**3+npg
     .      *t2**3-npq*(4*mgo**2-6*msq2**2-2*s+3*s1+2*(s2g+t1)-t2)*(mgo**2
     .      -t1+t2)*(mgo**2+s2g-t1+t2)-nk1*(2*s-s1+t2)*(mgo**2-t1+t2)*(mgo
     .      **2+s2g-t1+t2)+nk2*(4*msq2**4*s+t1*(-2*s**2+4*s*(s1+t1)+s1*(-s2g
     .      +t1))+mgo**4*(s1-t2)-2*msq2**2*s*(s+4*t1-t2)+(2*s**2+s1*(s2g-2
     .      *t1)+(s2g-t1)*t1-2*s*(s1+3*t1))*t2+(2*s+s1-s2g+2*t1)*t2**2-t2
     .      **3+mgo**2*(s1-t2)*(s2g-2*t1+2*t2))))/(npg*s*(s-s1+t2)*(mgo**2
     .      -t1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M2M7: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M7 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M7 = 
     .      (2*(-4*msq2**6+msq2**4*(4*s+4*s1+6*(s2g+t1)-2*t2)+mgo**4*(-2*msq2
     .      **2+s1+2*t1-t2)+(2*s1+s2g+t1-t2)*(-(s*t1)+2*s2g*t1+s1*(s2g+t1)
     .      +s*t2-s2g*t2)+mgo**2*(6*msq2**4+2*s1**2-msq2**2*(s+8*s1+4*s2g
     .      +8*t1-5*t2)+s1*(2*s2g+6*t1-3*t2)+(2*s2g+t1-t2)*(2*t1-t2)+s*(-t1
     .      +t2))-msq2**2*(2*(s2g**2+4*s2g*t1+t1**2)-(5*s2g+t1)*t2-t2**2+2
     .      *s1*(4*s2g+2*t1+t2)+s*(2*s1+s2g+t1+3*t2))+(-(nk1*(mgo**2+s2g-t1
     .      +t2)*(2*s*s2g-s1*s2g-s*t1+s1*t1+(s+s2g)*t2-msq2**2*(s+t2)+mgo
     .      **2*(2*s-s1+t2)))-(mgo**2+s2g-t1+t2)*(nkq*(-(s1*(mgo**2+s2g-t1))
     .      +s*t1+msq2**2*(s-t2)+(mgo**2-s+s2g)*t2)+npq*(2*mgo**4+4*msq2*
     .      *4-2*s*s2g+3*s1*s2g+2*s2g**2-s*t1+s1*t1+2*s2g*t1+s*t2-s2g*t2-mgo
     .      **2*(6*msq2**2+2*s-3*s1-4*s2g-2*t1+t2)-msq2**2*(s+6*s2g+2*t1+t2)))
     .      +nk2*(-4*msq2**4*s-2*s*s1*s2g+s1*s2g**2+2*s**2*t1-2*s*s1*t1-3
     .      *s*s2g*t1-2*s1*s2g*t1-s*t1**2+s1*t1**2+mgo**4*(s1-t2)+(-2*s**2
     .      +3*s*s2g+(s1-s2g)*(s2g-t1))*t2+(s-s2g)*t2**2+mgo**2*(-2*s*s1+2
     .      *s1*s2g-3*s*t1-2*s1*t1+(3*s+s1-2*s2g+t1)*t2-t2**2+msq2**2*(3*s
     .      +t2))+msq2**2*(2*s**2+t2*(s2g-t1+t2)+s*(3*s2g+5*t1+t2))))/npg))
     .      /(s*(s-s1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M2M7: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M7:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M70 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
