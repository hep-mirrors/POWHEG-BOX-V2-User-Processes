ccc colour stripped partial amplitude for M2M10
      real*8 function M2M10(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.0) then !return the term propto 1/s2g^2
            if(deltac1c2.eq.0) then
          M2M10 = 
     .      (4*mgo**2*(-(msq2**2*s)-(s-s1)*(s+t1)+mgo**2*(s1-t2)+msq1**2*(2
     .      *s-2*s1+t2)))/(s*(-mgo**2+s+t1))
            else if(deltac1c2.eq.1) then
              M2M10 = 
     .      (4*(msq2**2*(2*msq1**2-s)*(msq1**2-s-t1)+mgo**2*(-2*msq1**4-s1
     .      *(s+t1)+msq2**2*(s+2*t1)+msq1**2*(-2*msq2**2+s+2*(s1+t1)-t2))
     .      +mgo**4*(2*msq1**2-s1-2*t1+t2)))/(s*(-mgo**2+s+t1))
            else
              write(*,*) 'Error in M2M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M10 = 
     .      (-4*mgo**2*(msq2**2*s+(s+t1)*(s-2*s1+t2)-msq1**2*(2*s-2*s1+t2)))
     .      /(s*(-mgo**2+s+t1)**2)
            else if(deltac1c2.eq.1) then
              M2M10 = 
     .      (-4*(-((2*msq2**2-s1)*(s+t1)**2)+2*msq1**4*(-msq2**2+s+t1)+msq1
     .      **2*(msq2**2*(5*s+4*t1)-(s+t1)*(s+2*(s1+t1)-t2))+2*mgo**2*(s+t1)
     .      *(-2*msq1**2+s1+2*t1-t2)+mgo**4*(2*msq1**2-s1-2*t1+t2)))/(s*(
     .      -mgo**2+s+t1)**2)
            else
              write(*,*) 'Error in M2M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-ropagator
            if(deltac1c2.eq.0) then
          M2M10 = 
     .      (-4*mgo**2*(msq2**2*s+(s+t1)*(s-2*s1+t2)-msq1**2*(2*s-2*s1+t2)))
     .      /(s*(-mgo**2+s+t1)**2*(-mgo**2+s-s2g+t1))
            else if(deltac1c2.eq.1) then
              M2M10 = 
     .      (4*(2*msq1**4*(msq2**2-s-t1)+msq1**2*(-(msq2**2*(5*s+4*t1))+(s
     .      +t1)*(3*s+2*s1+4*t1-t2))+(s+t1)**2*(2*msq2**2-2*(s1+t1)+t2)))
     .      /(s*(-mgo**2+s+t1)**2*(-mgo**2+s-s2g+t1))
            else
              write(*,*) 'Error in M2M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M10 = 
     .      (4*mgo**2*(-(msq2**2*s)-s**2+mgo**2*s1+s*s1+s1*s2g-s*t1+s1*t1
     .      -(mgo**2+s2g)*t2+msq1**2*(2*s-2*s1+t2)))/(s*(-mgo**2+s-s2g+t1))
            else if(deltac1c2.eq.1) then
              M2M10 = 
     .      (4*(msq2**2*s**2+2*msq1**4*(msq2**2-s2g)+msq2**2*s*s2g-s*s1*s2g
     .      -s1*s2g**2+msq2**2*s*t1+2*msq2**2*s2g*t1-s1*s2g*t1-2*s2g**2*t1
     .      +msq1**2*(-(msq2**2*(3*s+2*(s2g+t1)))+s2g*(s+2*(s1+s2g+t1)-t2))
     .      +s2g**2*t2+mgo**4*(2*msq1**2-s1-2*t1+t2)+mgo**2*(-2*msq1**4-s
     .      *s1-2*s1*s2g-s1*t1-4*s2g*t1+msq2**2*(s+2*t1)+msq1**2*(-2*msq2
     .      **2+s+2*(s1+2*s2g+t1)-t2)+2*s2g*t2)))/(s*(-mgo**2+s-s2g+t1))
            else
              write(*,*) 'Error in M2M10: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M10:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.0) then !return the term propto 1/s2g^2
            if(deltac1c2.eq.0) then
          M2M10 = 
     .      (-4*mgo**2*(-(mgo**2*s)+msq2**2*s+s**2-s*s1+2*s*t1-2*s1*t1+t1
     .      *t2-msq1**2*(2*s-2*s1+t2)+(2*nk1*s*(s-s1+t2)+(mgo**2-s-t1)*(nkq
     .      *s-npq*(2*s-2*s1+t2)))/npg))/(s*(-mgo**2+s+t1))
            else if(deltac1c2.eq.1) then
              M2M10 = 
     .      (-4*(-(msq2**2*(msq1**2-s-t1)*(2*msq1**2-s-t1))+mgo**4*(-msq1
     .      **2+t1)+mgo**2*(2*msq1**4+s*s1+t1*(-msq2**2+2*s1+t1-t2)+msq1*
     .      *2*(msq2**2-s-2*s1-3*t1+t2))+(-2*nk1*s*(msq2**2*(-msq1**2+s+t1)
     .      +mgo**2*(msq1**2-s1-t1+t2))+(mgo**2-s-t1)*((mgo-msq2)*(mgo+msq2)
     .      *nk2*s-msq2**2*nkq*s+npq*(-mgo**4+msq2**2*(-2*msq1**2+2*s+t1)
     .      +mgo**2*(2*msq1**2+msq2**2-2*s1-t1+t2))))/npg))/(s*(-mgo**2+s
     .      +t1))
            else
              write(*,*) 'Error in M2M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M10 = 
     .      (-4*mgo**2*(2*nk1*s*(s-s1+t2)+npg*(msq2**2*s-s*s1+s*t1-2*s1*t1
     .      +t1*t2-msq1**2*(2*s-2*s1+t2))))/(npg*s*(-mgo**2+s+t1)**2)
            else if(deltac1c2.eq.1) then
              M2M10 = 
     .      (4*(-(mgo**4*msq1**2*npg)+2*msq1**4*msq2**2*npg+2*mgo**2*msq1
     .      **2*npg*s-2*msq1**4*npg*s-4*msq1**2*msq2**2*npg*s+msq1**2*npg
     .      *s**2+msq2**2*npg*s**2+2*msq1**2*npg*s*s1-npg*s**2*s1+mgo**4*npg
     .      *t1+2*mgo**2*msq1**2*npg*t1-2*msq1**4*npg*t1-4*msq1**2*msq2**2
     .      *npg*t1-2*mgo**2*npg*s*t1+4*msq1**2*npg*s*t1+3*msq2**2*npg*s*t1
     .      +2*msq1**2*npg*s1*t1-3*npg*s*s1*t1-2*mgo**2*npg*t1**2+3*msq1*
     .      *2*npg*t1**2+2*msq2**2*npg*t1**2-npg*s*t1**2-2*npg*s1*t1**2-npg
     .      *t1**3+nk2*s*(-mgo**2+s+t1)**2-npq*(-mgo**2+s+t1)**2*(2*mgo**2
     .      -2*msq1**2-msq2**2+2*s1+t1-t2)-msq1**2*npg*s*t2-msq1**2*npg*t1
     .      *t2+npg*s*t1*t2+npg*t1**2*t2+2*nk1*s*(msq1**2*(-msq2**2+s+t1)
     .      +(s+t1)*(msq2**2-s1-t1+t2))))/(npg*s*(-mgo**2+s+t1)**2)
            else
              write(*,*) 'Error in M2M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M10 = 
     .      (-4*mgo**2*(2*nk1*s*(s-s1+t2)+npg*(msq2**2*s-s*s1+s*t1-2*s1*t1
     .      +t1*t2-msq1**2*(2*s-2*s1+t2))))/(npg*s*(-mgo**2+s+t1)**2*(-mgo
     .      **2+s-s2g+t1))
            else if(deltac1c2.eq.1) then
              M2M10 = 
     .      (-4*(-(npq*(mgo**2-s+s2g-t1)*(-mgo**2+s+t1)**2)-2*nk1*s*(msq1
     .      **2*(-msq2**2+s+t1)+(s+t1)*(msq2**2-s1-t1+t2))+npg*(2*msq1**4
     .      *(-msq2**2+s+t1)+msq1**2*(s+t1)*(4*msq2**2-2*(s+s1+2*t1)+t2)+(s
     .      +t1)*((-msq2**2+s1+t1)*(s+2*t1)-t1*t2))))/(npg*s*(-mgo**2+s+t1)
     .      **2*(-mgo**2+s-s2g+t1))
            else
              write(*,*) 'Error in M2M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M10 = 
     .      (4*mgo**2*(nkq*s*(-mgo**2+s-s2g+t1)+npq*(mgo**2-s+s2g-t1)*(2*s
     .      -2*s1+t2)-2*nk1*s*(s-s1+t2)+npg*(mgo**2*s-msq2**2*s-s**2+s*s1
     .      +s*s2g-2*s*t1+2*s1*t1-t1*t2+msq1**2*(2*s-2*s1+t2))))/(npg*s*(
     .      -mgo**2+s-s2g+t1))
            else if(deltac1c2.eq.1) then
              M2M10 = 
     .      (4*(mgo**4*msq1**2*npg-2*mgo**2*msq1**4*npg-mgo**2*msq1**2*msq2
     .      **2*npg+2*msq1**4*msq2**2*npg+mgo**2*msq2**2*nkq*s+mgo**2*msq1
     .      **2*npg*s-3*msq1**2*msq2**2*npg*s-msq2**2*nkq*s**2+msq2**2*npg
     .      *s**2+2*mgo**2*msq1**2*npg*s1-mgo**2*npg*s*s1+2*mgo**2*msq1**2
     .      *npg*s2g-2*msq1**4*npg*s2g-msq1**2*msq2**2*npg*s2g+msq2**2*nkq
     .      *s*s2g+msq1**2*npg*s*s2g+2*msq1**2*npg*s1*s2g-npg*s*s1*s2g+msq1
     .      **2*npg*s2g**2-mgo**4*npg*t1+3*mgo**2*msq1**2*npg*t1+mgo**2*msq2
     .      **2*npg*t1-3*msq1**2*msq2**2*npg*t1-msq2**2*nkq*s*t1+2*msq2**2
     .      *npg*s*t1-2*mgo**2*npg*s1*t1-2*mgo**2*npg*s2g*t1+3*msq1**2*npg
     .      *s2g*t1+msq2**2*npg*s2g*t1-2*npg*s1*s2g*t1-npg*s2g**2*t1-mgo*
     .      *2*npg*t1**2+msq2**2*npg*t1**2-npg*s2g*t1**2+nk2*s*(mgo**2-msq2
     .      **2+s2g)*(-mgo**2+s-s2g+t1)-mgo**2*msq1**2*npg*t2-msq1**2*npg
     .      *s2g*t2+mgo**2*npg*t1*t2+npg*s2g*t1*t2+2*nk1*s*(msq2**2*s-s1*s2g
     .      +msq1**2*(-msq2**2+s2g)+msq2**2*t1-s2g*t1+s2g*t2+mgo**2*(msq1
     .      **2-s1-t1+t2))+npq*(mgo**2-s+s2g-t1)*(mgo**4-2*msq2**2*s+2*msq1
     .      **2*(msq2**2-s2g)-msq2**2*s2g+2*s1*s2g+s2g**2-msq2**2*t1+s2g*t1
     .      -s2g*t2-mgo**2*(2*msq1**2+msq2**2-2*s1-2*s2g-t1+t2))))/(npg*s
     .      *(-mgo**2+s-s2g+t1))
            else
              write(*,*) 'Error in M2M10: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M10:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M101 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
