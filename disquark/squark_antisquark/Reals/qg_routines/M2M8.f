ccc colour stripped partial amplitude for M2M8
      real*8 function M2M8(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M8 = 
     .      (4*msq2**4*(s-2*s1)+(-(s1*t1)+s*(t1-t2))*(s+4*(s1+t1)-2*t2)+4
     .      *mgo**4*(2*s-s1+t2)+mgo**2*(-4*s**2+5*s*s1-4*s1**2-8*s*t1+3*s
     .      *t2+2*s1*t2-4*t1*t2+2*t2**2-4*msq2**2*(2*s-2*s1+t2))+msq2**2*(
     .      -s**2+8*s1*t1+4*(s1+t1)*t2-2*t2**2+s*(4*s1+7*t2)))/(s*s1*(s-s1
     .      +t2))
            else
              write(*,*) 'Error in M2M8: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M8 = 
     .      (-4*s**2+5*s*s1-4*s1**2+8*s*s2g-4*s1*s2g-8*s*t1+(3*s+2*s1+4*s2g
     .      -4*t1)*t2+2*t2**2-4*msq2**2*(2*s-2*s1+t2)+8*mgo**2*(2*s-s1+t2))
     .      /(s*s1*(s-s1+t2))
            else
              write(*,*) 'Error in M2M8: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M8 = 
     .      (4*msq2**4*(s-2*s1)-4*s**2*s2g+5*s*s1*s2g-4*s1**2*s2g+8*s*s2g
     .      **2-4*s1*s2g**2+s**2*t1+3*s*s1*t1-4*s1**2*t1-8*s*s2g*t1+4*s*t1
     .      **2-4*s1*t1**2-(s**2+s*(4*s1-3*s2g+6*t1)-2*(2*s2g*(s2g-t1)+s1
     .      *(s2g+t1)))*t2+2*(s+s2g)*t2**2+4*mgo**4*(2*s-s1+t2)+msq2**2*(
     .      -s**2+8*s1*(s2g+t1)+4*(s1-s2g+t1)*t2-2*t2**2+s*(4*s1-8*s2g+7*t2))
     .      +mgo**2*(-4*s**2-4*msq2**2*(2*s-2*s1+t2)+s*(5*s1+16*s2g-8*t1+3
     .      *t2)+2*(-2*s1*(s1+2*s2g)+(s1+4*s2g-2*t1)*t2+t2**2)))/(s*s1*(s
     .      -s1+t2))
            else
              write(*,*) 'Error in M2M8: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M8:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M8 = 
     .      (4*mgo**2*msq2**2*nkq*s-8*msq2**4*nkq*s+8*mgo**4*npg*s-16*mgo
     .      **2*msq2**2*npg*s+12*msq2**4*npg*s+11*msq2**2*nkq*s**2-4*mgo*
     .      *2*npg*s**2-7*msq2**2*npg*s**2-4*mgo**4*npg*s1+8*mgo**2*msq2*
     .      *2*npg*s1-8*msq2**4*npg*s1-3*mgo**2*nkq*s*s1+11*mgo**2*npg*s*s1
     .      +4*msq2**2*npg*s*s1-2*nkq*s**2*s1-4*mgo**2*npg*s1**2-4*mgo**2
     .      *nkq*s*t1+12*msq2**2*nkq*s*t1-8*msq2**2*npg*s*t1+nkq*s**2*t1-npg
     .      *s**2*t1+8*msq2**2*npg*s1*t1-5*nkq*s*s1*t1+5*npg*s*s1*t1-4*npg
     .      *s1**2*t1-4*nkq*s*t1**2+4*npg*s*t1**2-4*npg*s1*t1**2+4*mgo**4
     .      *npg*t2-8*mgo**2*msq2**2*npg*t2+4*msq2**4*npg*t2+3*mgo**2*nkq
     .      *s*t2+2*msq2**2*nkq*s*t2-3*mgo**2*npg*s*t2+2*msq2**2*npg*s*t2
     .      -nkq*s**2*t2+npg*s**2*t2-mgo**2*nkq*s1*t2+5*mgo**2*npg*s1*t2+4
     .      *msq2**2*npg*s1*t2+2*nkq*s*s1*t2-4*npg*s*s1*t2+7*nkq*s*t1*t2-7
     .      *npg*s*t1*t2+nkq*s1*t1*t2+3*npg*s1*t1*t2+mgo**2*nkq*t2**2-msq2
     .      **2*nkq*t2**2-mgo**2*npg*t2**2-3*msq2**2*npg*t2**2-3*nkq*s*t2
     .      **2+3*npg*s*t2**2+nk2*(s*(5*msq2**2*s+mgo**2*(-6*s+s1)+(s-s1)
     .      *(2*s+t1))+(s**2+2*s*s1-mgo**2*(3*s+s1)+3*s*t1+s1*t1)*t2+(mgo
     .      **2-msq2**2-3*s)*t2**2)+nk1*(-((s-t2)*(-(s*t1)+s1*t1+s*t2))-msq2
     .      **2*(3*s**2+t2**2)+mgo**2*(2*s**2+t2*(-s1+t2)+s*(s1+t2)))+npq
     .      *(4*mgo**4*(2*s+t2)+8*msq2**4*(2*s+t2)-msq2**2*(9*s**2+8*s*t1
     .      +10*s*t2+4*t1*t2+t2**2)+mgo**2*(-4*s**2+s*(13*s1+8*t1-9*t2)+(7
     .      *s1+4*t1-3*t2)*t2-12*msq2**2*(2*s+t2))+(3*s+t2)*(s1*t1+s*(-t1
     .      +t2))))/(npg*s*s1*(s-s1+t2))
            else
              write(*,*) 'Error in M2M8: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M8 = 
     .      (4*msq2**2*nkq*s+16*mgo**2*npg*s-16*msq2**2*npg*s-4*npg*s**2-8
     .      *mgo**2*npg*s1+8*msq2**2*npg*s1-3*nkq*s*s1+11*npg*s*s1-4*npg*s1
     .      **2+8*npg*s*s2g-4*npg*s1*s2g-4*nkq*s*t1+8*mgo**2*npg*t2-8*msq2
     .      **2*npg*t2+3*nkq*s*t2-3*npg*s*t2-nkq*s1*t2+5*npg*s1*t2+4*npg*s2g
     .      *t2+nkq*t2**2-npg*t2**2+npq*(s*(16*mgo**2-24*msq2**2-4*s+13*s1
     .      +8*(s2g+t1))+(8*mgo**2-12*msq2**2-9*s+7*s1+4*(s2g+t1))*t2-3*t2
     .      **2)+nk2*(-6*s**2+s*s1-3*s*t2-s1*t2+t2**2)+nk1*(2*s**2+t2*(-s1
     .      +t2)+s*(s1+t2)))/(npg*s*s1*(s-s1+t2))
            else
              write(*,*) 'Error in M2M8: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M2M8 = 
     .      (4*mgo**2*msq2**2*nkq*s-8*msq2**4*nkq*s+8*mgo**4*npg*s-16*mgo
     .      **2*msq2**2*npg*s+12*msq2**4*npg*s+11*msq2**2*nkq*s**2-4*mgo*
     .      *2*npg*s**2-7*msq2**2*npg*s**2-4*mgo**4*npg*s1+8*mgo**2*msq2*
     .      *2*npg*s1-8*msq2**4*npg*s1-3*mgo**2*nkq*s*s1+11*mgo**2*npg*s*s1
     .      +4*msq2**2*npg*s*s1-2*nkq*s**2*s1-4*mgo**2*npg*s1**2+4*msq2**2
     .      *nkq*s*s2g+16*mgo**2*npg*s*s2g-16*msq2**2*npg*s*s2g-4*npg*s**2
     .      *s2g-8*mgo**2*npg*s1*s2g+8*msq2**2*npg*s1*s2g-3*nkq*s*s1*s2g+11
     .      *npg*s*s1*s2g-4*npg*s1**2*s2g+8*npg*s*s2g**2-4*npg*s1*s2g**2-4
     .      *mgo**2*nkq*s*t1+12*msq2**2*nkq*s*t1-8*msq2**2*npg*s*t1+nkq*s
     .      **2*t1-npg*s**2*t1+8*msq2**2*npg*s1*t1-5*nkq*s*s1*t1+5*npg*s*s1
     .      *t1-4*npg*s1**2*t1-4*nkq*s*s2g*t1-4*nkq*s*t1**2+4*npg*s*t1**2
     .      -4*npg*s1*t1**2+4*mgo**4*npg*t2-8*mgo**2*msq2**2*npg*t2+4*msq2
     .      **4*npg*t2+3*mgo**2*nkq*s*t2+2*msq2**2*nkq*s*t2-3*mgo**2*npg*s
     .      *t2+2*msq2**2*npg*s*t2-nkq*s**2*t2+npg*s**2*t2-mgo**2*nkq*s1*t2
     .      +5*mgo**2*npg*s1*t2+4*msq2**2*npg*s1*t2+2*nkq*s*s1*t2-4*npg*s
     .      *s1*t2+8*mgo**2*npg*s2g*t2-8*msq2**2*npg*s2g*t2+3*nkq*s*s2g*t2
     .      -3*npg*s*s2g*t2-nkq*s1*s2g*t2+5*npg*s1*s2g*t2+4*npg*s2g**2*t2
     .      +7*nkq*s*t1*t2-7*npg*s*t1*t2+nkq*s1*t1*t2+3*npg*s1*t1*t2+mgo*
     .      *2*nkq*t2**2-msq2**2*nkq*t2**2-mgo**2*npg*t2**2-3*msq2**2*npg
     .      *t2**2-3*nkq*s*t2**2+3*npg*s*t2**2+nkq*s2g*t2**2-npg*s2g*t2**2
     .      +nk2*(s*(5*msq2**2*s+2*s**2-2*s*s1+mgo**2*(-6*s+s1)-6*s*s2g+s1
     .      *s2g+s*t1-s1*t1)+(s**2-mgo**2*(3*s+s1)+s1*(-s2g+t1)+s*(2*s1-3
     .      *s2g+3*t1))*t2+(mgo**2-msq2**2-3*s+s2g)*t2**2)+nk1*(s*(-3*msq2
     .      **2*s+mgo**2*(2*s+s1)+2*s*s2g+s1*s2g+s*t1-s1*t1)-(s**2+mgo**2
     .      *(-s+s1)+s1*(s2g-t1)+s*(-s2g+t1))*t2+(mgo**2-msq2**2+s+s2g)*t2
     .      **2)+npq*(s*(8*s2g*(s2g+t1)-s*(4*s2g+3*t1)+s1*(13*s2g+3*t1))+(3
     .      *s**2+4*s2g*(s2g+t1)+s1*(7*s2g+t1)-s*(9*s2g+t1))*t2+(s-3*s2g)
     .      *t2**2+4*mgo**4*(2*s+t2)+8*msq2**4*(2*s+t2)-msq2**2*(s*(9*s+8
     .      *(3*s2g+t1))+2*(5*s+6*s2g+2*t1)*t2+t2**2)+mgo**2*(-4*s**2+s*(13
     .      *s1+16*s2g+8*t1-9*t2)+(7*s1+8*s2g+4*t1-3*t2)*t2-12*msq2**2*(2
     .      *s+t2))))/(npg*s*s1*(s-s1+t2))
            else
              write(*,*) 'Error in M2M8: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M8:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M80 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
