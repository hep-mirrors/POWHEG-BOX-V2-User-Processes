ccc colour stripped partial amplitude for M1M3
      real*8 function M1M3(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.0) then !return the term propto 1/s2g^2
            if(deltac1c2.eq.0) then
          M1M3 = 
     .      (4*(msq2**2*(2*msq1**2-s)*(msq1**2-s-t1)+mgo**2*(-2*msq1**4-s1
     .      *(s+t1)+msq2**2*(s+2*t1)+msq1**2*(-2*msq2**2+s+2*(s1+t1)-t2))
     .      +mgo**4*(2*msq1**2-s1-2*t1+t2)))/(s*(-mgo**2+s+t1))
            else if(deltac1c2.eq.1) then
              M1M3 = 
     .      (4*mgo**2*(-(msq2**2*s)-(s-s1)*(s+t1)+mgo**2*(s1-t2)+msq1**2*(2
     .      *s-2*s1+t2)))/(s*(-mgo**2+s+t1))
            else
              write(*,*) 'Error in M1M3: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M1M3 = 
     .      (-4*(-((2*msq2**2-s1)*(s+t1)**2)+2*msq1**4*(-msq2**2+s+t1)+msq1
     .      **2*(msq2**2*(5*s+4*t1)-(s+t1)*(s+2*(s1+t1)-t2))+2*mgo**2*(s+t1)
     .      *(-2*msq1**2+s1+2*t1-t2)+mgo**4*(2*msq1**2-s1-2*t1+t2)))/(s*(
     .      -mgo**2+s+t1)**2)
            else if(deltac1c2.eq.1) then
              M1M3 = 
     .      (-4*mgo**2*(msq2**2*s+(s+t1)*(s-2*s1+t2)-msq1**2*(2*s-2*s1+t2)))
     .      /(s*(-mgo**2+s+t1)**2)
            else
              write(*,*) 'Error in M1M3: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-ropagator
            if(deltac1c2.eq.0) then
          M1M3 = 
     .      (4*(2*msq1**4*(msq2**2-s-t1)+msq1**2*(-(msq2**2*(5*s+4*t1))+(s
     .      +t1)*(3*s+2*s1+4*t1-t2))+(s+t1)**2*(2*msq2**2-2*(s1+t1)+t2)))
     .      /(s*(-mgo**2+s+t1)**2*(-mgo**2+s-s2g+t1))
            else if(deltac1c2.eq.1) then
              M1M3 = 
     .      (-4*mgo**2*(msq2**2*s+(s+t1)*(s-2*s1+t2)-msq1**2*(2*s-2*s1+t2)))
     .      /(s*(-mgo**2+s+t1)**2*(-mgo**2+s-s2g+t1))
            else
              write(*,*) 'Error in M1M3: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M1M3 = 
     .      (-4*(2*msq1**4*(msq2**2-s2g)+msq2**2*(s**2+2*s2g*t1+s*(s2g+t1))
     .      -s2g*(s*s1+s1*(s2g+t1)+s2g*(2*t1-t2))+msq1**2*(-(msq2**2*(3*s
     .      +2*(s2g+t1)))+s2g*(s+2*(s1+s2g+t1)-t2))+mgo**4*(2*msq1**2-s1-2
     .      *t1+t2)+mgo**2*(-2*msq1**4-s*s1-2*s1*s2g-s1*t1-4*s2g*t1+msq2*
     .      *2*(s+2*t1)+msq1**2*(-2*msq2**2+s+2*(s1+2*s2g+t1)-t2)+2*s2g*t2)))
     .      /(s*(mgo**2-s+s2g-t1))
            else if(deltac1c2.eq.1) then
              M1M3 = 
     .      (4*mgo**2*(-(msq2**2*s)-s**2+mgo**2*s1+s*s1+s1*s2g-s*t1+s1*t1
     .      -(mgo**2+s2g)*t2+msq1**2*(2*s-2*s1+t2)))/(s*(-mgo**2+s-s2g+t1))
            else
              write(*,*) 'Error in M1M3: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M1M3:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.0) then !return the term propto 1/s2g^2
            if(deltac1c2.eq.0) then
          M1M3 = 
     .      (-4*(mgo**4*(-msq1**2+t1)-msq2**2*(2*msq1**4-3*msq1**2*(s+t1)
     .      +(s+t1)**2)+mgo**2*(2*msq1**4+s*s1+t1*(-msq2**2+2*s1+t1-t2)+msq1
     .      **2*(msq2**2-s-2*s1-3*t1+t2))+(-2*nk1*s*(msq2**2*(-msq1**2+s+t1)
     .      +mgo**2*(msq1**2-s1-t1+t2))+(mgo**2-s-t1)*((mgo-msq2)*(mgo+msq2)
     .      *nk2*s-msq2**2*nkq*s+npq*(-mgo**4+msq2**2*(-2*msq1**2+2*s+t1)
     .      +mgo**2*(2*msq1**2+msq2**2-2*s1-t1+t2))))/npg))/(s*(-mgo**2+s
     .      +t1))
            else if(deltac1c2.eq.1) then
              M1M3 = 
     .      (-4*mgo**2*(-(mgo**2*s)+msq2**2*s+s**2-s*s1+2*s*t1-2*s1*t1+t1
     .      *t2-msq1**2*(2*s-2*s1+t2)+(2*nk1*s*(s-s1+t2)+(mgo**2-s-t1)*(nkq
     .      *s-npq*(2*s-2*s1+t2)))/npg))/(s*(-mgo**2+s+t1))
            else
              write(*,*) 'Error in M1M3: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M1M3 = 
     .      (4*(mgo**4*(-msq1**2+t1)+2*mgo**2*(msq1**2-t1)*(s+t1)-2*msq1*
     .      *4*(-msq2**2+s+t1)-(s+t1)*(s*s1-msq2**2*(s+2*t1)+t1*(2*s1+t1-t2))
     .      +msq1**2*(s+t1)*(-4*msq2**2+s+2*s1+3*t1-t2)-((-mgo**2+s+t1)**2
     .      *(-(nk2*s)+npq*(2*mgo**2-2*msq1**2-msq2**2+2*s1+t1-t2))-2*nk1
     .      *s*(msq1**2*(-msq2**2+s+t1)+(s+t1)*(msq2**2-s1-t1+t2)))/npg))
     .      /(s*(-mgo**2+s+t1)**2)
            else if(deltac1c2.eq.1) then
              M1M3 = 
     .      (-4*mgo**2*(2*nk1*s*(s-s1+t2)+npg*(msq2**2*s-s*s1+s*t1-2*s1*t1
     .      +t1*t2-msq1**2*(2*s-2*s1+t2))))/(npg*s*(-mgo**2+s+t1)**2)
            else
              write(*,*) 'Error in M1M3: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M1M3 = 
     .      (-4*(-(npq*(mgo**2-s+s2g-t1)*(-mgo**2+s+t1)**2)-2*nk1*s*(msq1
     .      **2*(-msq2**2+s+t1)+(s+t1)*(msq2**2-s1-t1+t2))+npg*(2*msq1**4
     .      *(-msq2**2+s+t1)+msq1**2*(s+t1)*(4*msq2**2-2*(s+s1+2*t1)+t2)+(s
     .      +t1)*((-msq2**2+s1+t1)*(s+2*t1)-t1*t2))))/(npg*s*(-mgo**2+s+t1)
     .      **2*(-mgo**2+s-s2g+t1))
            else if(deltac1c2.eq.1) then
              M1M3 = 
     .      (-4*mgo**2*(2*nk1*s*(s-s1+t2)+npg*(msq2**2*s-s*s1+s*t1-2*s1*t1
     .      +t1*t2-msq1**2*(2*s-2*s1+t2))))/(npg*s*(-mgo**2+s+t1)**2*(-mgo
     .      **2+s-s2g+t1))
            else
              write(*,*) 'Error in M1M3: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M1M3 = 
     .      (4*(2*msq1**4*(-msq2**2+s2g)+mgo**4*(-msq1**2+t1)-msq2**2*(s*
     .      *2+2*s*t1+t1*(s2g+t1))+s2g*(s*s1+t1*(2*s1+s2g+t1-t2))-msq1**2
     .      *(-(msq2**2*(3*s+s2g+3*t1))+s2g*(s+2*s1+s2g+3*t1-t2))+mgo**2*(2
     .      *msq1**4+s*s1+t1*(-msq2**2+2*s1+2*s2g+t1-t2)+msq1**2*(msq2**2
     .      -s-2*s1-2*s2g-3*t1+t2))+(2*nk1*s*(msq1**2*(msq2**2-s2g)-msq2*
     .      *2*(s+t1)+s2g*(s1+t1-t2)+mgo**2*(-msq1**2+s1+t1-t2))+(mgo**2-s
     .      +s2g-t1)*(-(msq2**2*nkq*s)+nk2*s*(mgo**2-msq2**2+s2g)+npq*(-mgo
     .      **4+2*msq1**2*(-msq2**2+s2g)+msq2**2*(2*s+s2g+t1)-s2g*(2*s1+s2g
     .      +t1-t2)+mgo**2*(2*msq1**2+msq2**2-2*s1-2*s2g-t1+t2))))/npg))/(s
     .      *(mgo**2-s+s2g-t1))
            else if(deltac1c2.eq.1) then
              M1M3 = 
     .      (4*mgo**2*(-(mgo**2*s)+msq2**2*s+s**2-s*s1-s*s2g+2*s*t1-2*s1*t1
     .      +t1*t2-msq1**2*(2*s-2*s1+t2)+(2*nk1*s*(s-s1+t2)+(mgo**2-s+s2g
     .      -t1)*(nkq*s-npq*(2*s-2*s1+t2)))/npg))/(s*(mgo**2-s+s2g-t1))
            else
              write(*,*) 'Error in M1M3: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M1M3:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M1M32 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
