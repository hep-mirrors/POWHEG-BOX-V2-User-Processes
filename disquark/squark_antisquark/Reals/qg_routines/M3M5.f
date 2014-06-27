ccc colour stripped partial amplitude for M3M5
      real*8 function M3M5(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M3M5 = 
     .      (4*mgo**2*(mgo**2*s-2*s*t1+2*s1*t1+msq2**2*(-3*s+2*s1-2*t2)-msq1
     .      **2*t2+s*t2-t1*t2))/((mgo**2-t1)**2*(mgo**2-t1+t2))
            else if(deltac1c2.eq.1) then
              M3M5 = 
     .      (2*(t1*(4*msq2**4-s1*t1+msq2**2*(5*s-4*s1+2*t1)+s*(t1-t2))+mgo
     .      **4*(2*msq1**2-s1-2*t1+t2)+msq1**2*(-4*msq2**4-2*msq2**2*(t1-2
     .      *t2)+t1*t2)+mgo**2*(msq2**2*(s-2*t1)+s*t1-2*s1*t1-2*t1**2-s*t2
     .      +t1*t2+msq1**2*(2*(msq2**2+t1)+t2))))/((mgo**2-t1)**2*(mgo**2
     .      -t1+t2))
            else
              write(*,*) 'Error in M3M5: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M3M5 = 
     .      (4*mgo**2*(msq1**2*t2+t1*(s-2*s1+t2)+msq2**2*(3*s-2*s1+2*t2)))
     .      /((mgo**2-t1)**2*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M3M5 = 
     .      (2*(2*mgo**4*(-msq1**2+t1)+mgo**2*(-3*s*t1+4*s1*t1+2*s2g*t1-msq2
     .      **2*(s+4*t1)+msq1**2*(4*msq2**2-2*s2g-3*t2)+s*t2-s1*t2-t1*t2+t2
     .      **2)+msq1**2*(4*msq2**4-2*t1**2+2*s2g*(t1-t2)+3*t1*t2-2*t2**2
     .      +2*msq2**2*(-2*t1+t2))+t1*(-4*msq2**4+msq2**2*(-5*s+4*(s1+t1)
     .      -6*t2)+s*(t1-t2)+s1*t2-(t1-t2)*(2*s2g-2*t1+t2))))/((mgo**2-t1)
     .      **2*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M3M5: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M3M5 = 
     .      (4*mgo**2*(mgo**2*s+s*s2g-2*s*t1+2*s1*t1+msq2**2*(-3*s+2*s1-2
     .      *t2)-(msq1**2-s+t1)*t2))/((mgo**2-t1)**2*(mgo**2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M3M5 = 
     .      (2*(mgo**4*(2*msq1**2-s1-2*t1+t2)+t1*(4*msq2**4+(s1+2*s2g)*(s2g
     .      -t1)+msq2**2*(5*s-4*s1-6*s2g+2*t1)+s*(-2*s2g+t1-t2)+s2g*t2)+msq1
     .      **2*(-2*(msq2**2-s2g)*(2*msq2**2-s2g+t1)+(4*msq2**2-2*s2g+t1)
     .      *t2)+mgo**2*(-(s1*s2g)+msq2**2*(s-2*t1)+s*t1-2*s1*t1-2*t1**2+(
     .      -s+s2g+t1)*t2+msq1**2*(2*(msq2**2+t1)+t2))))/((mgo**2-t1)**2*(mgo
     .      **2+s2g-t1+t2))
            else
              write(*,*) 'Error in M3M5: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M3M5:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M3M5 = 
     .      (-4*mgo**2*(3*msq2**2*npg*s+mgo**2*nkq*s1-mgo**2*npg*s1-2*msq2
     .      **2*npg*s1+npg*s*t1-nkq*s1*t1-npg*s1*t1-mgo**2*nkq*t2+mgo**2*npg
     .      *t2+msq1**2*npg*t2+2*msq2**2*npg*t2-npg*s*t2+nkq*s1*t2+nkq*t1
     .      *t2-nkq*t2**2-nk2*(s-s1+t2)*(3*mgo**2-3*t1+t2)+npq*(-s+s1)*(mgo
     .      **2-t1+t2)+nk1*(s-s1+t2)*(mgo**2-t1+t2)))/(npg*(mgo**2-t1)**2
     .      *(mgo**2-t1+t2))
            else if(deltac1c2.eq.1) then
              M3M5 = 
     .      (4*(-(mgo**4*msq1**2*nkq)+mgo**2*msq1**2*msq2**2*nkq+2*mgo**4
     .      *msq1**2*npg-2*msq1**2*msq2**4*npg+mgo**2*msq2**2*npg*s-mgo**4
     .      *npg*s1+mgo**4*nkq*t1+mgo**2*msq1**2*nkq*t1-mgo**2*msq2**2*nkq
     .      *t1-msq1**2*msq2**2*nkq*t1-2*mgo**4*npg*t1+2*msq2**4*npg*t1+mgo
     .      **2*npg*s*t1+2*msq2**2*npg*s*t1+mgo**2*nkq*s1*t1-mgo**2*npg*s1
     .      *t1-2*msq2**2*npg*s1*t1-mgo**2*nkq*t1**2+msq2**2*nkq*t1**2-nkq
     .      *s1*t1**2-2*mgo**2*msq1**2*nkq*t2+msq1**2*msq2**2*nkq*t2+mgo*
     .      *4*npg*t2+mgo**2*msq1**2*npg*t2+2*msq1**2*msq2**2*npg*t2-mgo*
     .      *2*npg*s*t2+mgo**2*nkq*t1*t2+msq1**2*nkq*t1*t2-msq2**2*nkq*t1
     .      *t2+nkq*s1*t1*t2-msq1**2*nkq*t2**2+npq*(mgo**4+msq1**2*msq2**2
     .      -mgo**2*(msq1**2+msq2**2+s-s1))*(mgo**2-t1+t2)+nk2*((mgo**2-t1)
     .      *(3*msq1**2*msq2**2-msq2**2*s-3*msq2**2*t1-2*s*t1+2*s1*t1+mgo
     .      **2*(-3*msq1**2+s1+3*t1))+(-mgo**4+(-msq2**2-2*s+s1)*t1+msq1*
     .      *2*(msq2**2+2*t1)+mgo**2*(-3*msq1**2+s+2*t1))*t2-msq1**2*t2**2)
     .      +nk1*(mgo**2-t1+t2)*(msq2**2*(-msq1**2+t1)+mgo**2*(msq1**2+s-s1
     .      -t1+t2))))/(npg*(mgo**2-t1)**2*(mgo**2-t1+t2))
            else
              write(*,*) 'Error in M3M5: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M3M5 = 
     .      (4*mgo**2*(2*nk2*t2*(s-s1+t2)+npg*(-2*s1*t1+s*(t1-t2)+(msq1**2
     .      +s1+t1)*t2-t2**2+msq2**2*(3*s-2*s1+2*t2))))/(npg*(mgo**2-t1)*
     .      *2*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M3M5 = 
     .      (4*(2*mgo**2*msq1**2*msq2**2*npg+2*msq1**2*msq2**4*npg-mgo**2
     .      *msq2**2*npg*s-2*mgo**2*msq1**2*npg*t1-2*mgo**2*msq2**2*npg*t1
     .      -2*msq1**2*msq2**2*npg*t1-2*msq2**4*npg*t1-mgo**2*npg*s*t1-2*msq2
     .      **2*npg*s*t1+2*mgo**2*npg*s1*t1+2*msq2**2*npg*s1*t1+2*mgo**2*npg
     .      *t1**2+2*msq2**2*npg*t1**2+mgo**2*msq1**2*npg*t2+mgo**2*npg*s
     .      *t2-mgo**2*npg*s1*t2-3*mgo**2*npg*t1*t2-2*msq2**2*npg*t1*t2+mgo
     .      **2*npg*t2**2+(mgo-msq1)*(mgo+msq1)*npq*(mgo**2-t1+t2)*(mgo**2
     .      +s2g-t1+t2)+nk1*(msq1**2-t1)*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2)
     .      +nk2*((mgo**2-t1)*(msq2**2*s+3*mgo**2*(-msq1**2+t1)+3*msq1**2
     .      *(-s2g+t1)-t1*(s-3*s2g+3*t1))+((-2*msq2**2-s+s1+3*s2g-5*t1)*t1
     .      +msq1**2*(2*msq2**2-3*s2g+5*t1)+mgo**2*(-7*msq1**2-s+s1+7*t1))
     .      *t2-(mgo**2+3*msq1**2-2*t1)*t2**2)))/(npg*(mgo**2-t1)**2*(mgo
     .      **2-t1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M3M5: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M3M5 = 
     .      (-4*mgo**2*(3*msq2**2*npg*s+mgo**2*nkq*s1-mgo**2*npg*s1-2*msq2
     .      **2*npg*s1+nkq*s1*s2g-npg*s1*s2g+npg*s*t1-nkq*s1*t1-npg*s1*t1
     .      -mgo**2*nkq*t2+mgo**2*npg*t2+msq1**2*npg*t2+2*msq2**2*npg*t2-npg
     .      *s*t2+nkq*s1*t2-nkq*s2g*t2+npg*s2g*t2+nkq*t1*t2-nkq*t2**2-nk2
     .      *(s-s1+t2)*(3*(mgo**2+s2g-t1)+t2)+npq*(-s+s1)*(mgo**2+s2g-t1+t2)
     .      +nk1*(s-s1+t2)*(mgo**2+s2g-t1+t2)))/(npg*(mgo**2-t1)**2*(mgo*
     .      *2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M3M5 = 
     .      (4*(-(mgo**4*msq1**2*nkq)+mgo**2*msq1**2*msq2**2*nkq+2*mgo**4
     .      *msq1**2*npg-2*msq1**2*msq2**4*npg+mgo**2*msq2**2*npg*s-mgo**4
     .      *npg*s1-mgo**2*msq1**2*nkq*s2g+msq1**2*msq2**2*nkq*s2g+2*mgo*
     .      *2*msq1**2*npg*s2g+2*msq1**2*msq2**2*npg*s2g-mgo**2*npg*s1*s2g
     .      +mgo**4*nkq*t1+mgo**2*msq1**2*nkq*t1-mgo**2*msq2**2*nkq*t1-msq1
     .      **2*msq2**2*nkq*t1-2*mgo**4*npg*t1+2*msq2**4*npg*t1+mgo**2*npg
     .      *s*t1+2*msq2**2*npg*s*t1+mgo**2*nkq*s1*t1-mgo**2*npg*s1*t1-2*msq2
     .      **2*npg*s1*t1+mgo**2*nkq*s2g*t1-msq2**2*nkq*s2g*t1-2*mgo**2*npg
     .      *s2g*t1-2*msq2**2*npg*s2g*t1+nkq*s1*s2g*t1-mgo**2*nkq*t1**2+msq2
     .      **2*nkq*t1**2-nkq*s1*t1**2-2*mgo**2*msq1**2*nkq*t2+msq1**2*msq2
     .      **2*nkq*t2+mgo**4*npg*t2+mgo**2*msq1**2*npg*t2+2*msq1**2*msq2
     .      **2*npg*t2-mgo**2*npg*s*t2-msq1**2*nkq*s2g*t2+mgo**2*npg*s2g*t2
     .      +mgo**2*nkq*t1*t2+msq1**2*nkq*t1*t2-msq2**2*nkq*t1*t2+nkq*s1*t1
     .      *t2-msq1**2*nkq*t2**2+npq*(mgo**4+msq1**2*(msq2**2-s2g)-mgo**2
     .      *(msq1**2+msq2**2+s-s1-s2g))*(mgo**2+s2g-t1+t2)+nk1*(mgo**2+s2g
     .      -t1+t2)*(-((msq2**2-s2g)*(msq1**2-t1))+mgo**2*(msq1**2+s-s1-t1
     .      +t2))+nk2*(mgo**4*(-3*msq1**2+s1+3*t1-t2)+t1*((2*s1+3*s2g)*(s2g
     .      -t1)+s*(-3*s2g+2*t1-2*t2)+msq2**2*(s-3*s2g+3*t1-t2)+(s1+2*s2g)
     .      *t2)+mgo**2*(s1*s2g-2*s*t1+s1*t1+6*s2g*t1-3*t1**2-msq2**2*(s+3
     .      *t1)+3*msq1**2*(msq2**2-2*s2g+t1-t2)+s*t2-s2g*t2+2*t1*t2)+msq1
     .      **2*(3*(msq2**2-s2g)*(s2g-t1)+(msq2**2-4*s2g+2*t1)*t2-t2**2))))
     .      /(npg*(mgo**2-t1)**2*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M3M5: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M3M5:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M3M51 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
