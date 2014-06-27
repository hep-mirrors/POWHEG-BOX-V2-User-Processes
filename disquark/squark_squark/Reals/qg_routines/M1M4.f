ccc colour stripped partial amplitude for M1M4
      real*8 function M1M4(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M1M4 = 
     .      (-4*((msq2**2-s1-t1)*(msq2**2*s-s1*t1+s*(t1-t2))+mgo**4*(s1-t2)
     .      +msq1**4*t2+mgo**2*(-(msq1**2*s1)+s1**2+s*t1-msq2**2*(s+s1-t2)
     .      +(s-s1+t1)*t2)-msq1**2*((-s+s1)*t1+(s+s1+t1)*t2+msq2**2*(s-2*s1
     .      +t2))))/(s*(-mgo**2+t1)*t2)
            else if(deltac1c2.eq.1) then
              M1M4 = 
     .      (8*mgo**2*(s-s1)*(s1-t2))/(s*(mgo**2-t1)*t2)
            else
              write(*,*) 'Error in M1M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M1M4 = 
     .      (4*(s1*(2*mgo**2-msq1**2+s1+s2g)+s*t1-msq2**2*(s+s1-t2)+(-2*mgo
     .      **2+s-s1-s2g+t1)*t2))/(s*(mgo**2-t1)*t2)
            else if(deltac1c2.eq.1) then
              M1M4 = 
     .      0
            else
              write(*,*) 'Error in M1M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M1M4 = 
     .      (-4*(msq2**4*s+s1**2*s2g+s1*s2g**2-s*s1*t1+s1**2*t1+s*s2g*t1-s
     .      *t1**2+s1*t1**2+mgo**4*(s1-t2)+msq1**4*t2+((s-s2g)*(s1+s2g)+(s
     .      +s2g)*t1)*t2+mgo**2*(-(msq1**2*s1)+s1**2+2*s1*s2g+s*t1-msq2**2
     .      *(s+s1-t2)+(s-s1-2*s2g+t1)*t2)-msq2**2*(s1*(s2g+t1)-s2g*t2+s*(s1
     .      +s2g+t2))-msq1**2*(-(s*t1)+(s+t1)*t2+msq2**2*(s-2*s1+t2)+s1*(s2g
     .      +t1+t2))))/(s*(-mgo**2+t1)*t2)
            else if(deltac1c2.eq.1) then
              M1M4 = 
     .      (8*mgo**2*(s-s1)*(s1-t2))/(s*(mgo**2-t1)*t2)
            else
              write(*,*) 'Error in M1M4: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M1M4:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M1M4 = 
     .      (2*(-2*mgo**2*msq1**2*nkq*s+4*msq1**2*msq2**2*nkq*s+2*mgo**2*msq1
     .      **2*npg*s-2*mgo**2*msq2**2*npg*s-4*msq1**2*msq2**2*npg*s+2*msq2
     .      **4*npg*s-msq2**2*nkq*s**2+msq2**2*npg*s**2+2*mgo**4*npg*s1-2
     .      *mgo**2*msq1**2*npg*s1-2*mgo**2*msq2**2*npg*s1+4*msq1**2*msq2
     .      **2*npg*s1+mgo**2*nkq*s*s1-mgo**2*npg*s*s1-2*msq2**2*npg*s*s1
     .      +2*mgo**2*npg*s1**2+2*mgo**2*nkq*s*t1-2*msq1**2*nkq*s*t1-4*msq2
     .      **2*nkq*s*t1+2*msq1**2*npg*s*t1+2*msq2**2*npg*s*t1-nkq*s**2*t1
     .      +npg*s**2*t1-2*msq1**2*npg*s1*t1-2*msq2**2*npg*s1*t1+3*nkq*s*s1
     .      *t1-3*npg*s*s1*t1+2*npg*s1**2*t1+2*nkq*s*t1**2-2*npg*s*t1**2+2
     .      *npg*s1*t1**2-2*mgo**4*npg*t2+2*mgo**2*msq1**2*npg*t2+2*msq1*
     .      *4*npg*t2+2*mgo**2*msq2**2*npg*t2-4*msq1**2*msq2**2*npg*t2-mgo
     .      **2*nkq*s*t2-msq1**2*nkq*s*t2-msq2**2*nkq*s*t2+3*mgo**2*npg*s
     .      *t2-msq1**2*npg*s*t2-msq2**2*npg*s*t2+nkq*s**2*t2-npg*s**2*t2
     .      +mgo**2*nkq*s1*t2-3*mgo**2*npg*s1*t2-2*msq1**2*npg*s1*t2+2*npg
     .      *s*s1*t2-2*msq1**2*npg*t1*t2+2*msq2**2*npg*t1*t2-3*nkq*s*t1*t2
     .      +3*npg*s*t1*t2-nkq*s1*t1*t2-npg*s1*t1*t2-mgo**2*nkq*t2**2+msq1
     .      **2*nkq*t2**2+mgo**2*npg*t2**2+msq1**2*npg*t2**2+nkq*s*t2**2-npg
     .      *s*t2**2+nk2*(s*(-s+s1)*t1+msq2**2*s*(s-t2)-(-(msq1**2*s)+s**2
     .      +(s+s1)*t1)*t2+(msq1**2+s)*t2**2+mgo**2*(s-t2)*(-s1+t2))+nk1*(msq2
     .      **2*s*(s+t2)-mgo**2*(t2*(-s1+t2)+s*(s1+t2))+(s-t2)*(s1*t1-msq1
     .      **2*t2+s*(-t1+t2)))+npq*(-2*mgo**4*t2+(s+t2)*(-(s1*t1)+s*(t1-t2)
     .      +msq1**2*t2)+msq2**2*(-s**2+s*t2+2*(mgo**2-2*msq1**2+t1)*t2)+mgo
     .      **2*(t2*(4*msq1**2-3*s1-2*t1+t2)+s*(s1+3*t2)))))/(npg*s*(mgo*
     .      *2-t1)*t2)
            else if(deltac1c2.eq.1) then
              M1M4 = 
     .      (-4*mgo**2*(npq*t2*(3*s-2*s1+t2)-nkq*s*(s-2*s1+3*t2)+npg*(s**2
     .      -3*s*s1+2*s1**2+4*s*t2-3*s1*t2+t2**2)))/(npg*s*(mgo**2-t1)*t2)
            else
              write(*,*) 'Error in M1M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M1M4 = 
     .      (2*(-2*msq1**2*nkq*s+2*msq1**2*npg*s-2*msq2**2*npg*s+4*mgo**2
     .      *npg*s1-2*msq1**2*npg*s1-2*msq2**2*npg*s1+nkq*s*s1-npg*s*s1+2
     .      *npg*s1**2+2*npg*s1*s2g+2*nkq*s*t1-4*mgo**2*npg*t2+2*msq1**2*npg
     .      *t2+2*msq2**2*npg*t2-nkq*s*t2+3*npg*s*t2+nkq*s1*t2-3*npg*s1*t2
     .      -2*npg*s2g*t2-nkq*t2**2+npg*t2**2+nk2*(s-t2)*(-s1+t2)-nk1*(t2
     .      *(-s1+t2)+s*(s1+t2))+npq*(t2*(-4*mgo**2+4*msq1**2+2*msq2**2-3
     .      *s1-2*(s2g+t1)+t2)+s*(s1+3*t2))))/(npg*s*(mgo**2-t1)*t2)
            else if(deltac1c2.eq.1) then
              M1M4 = 
     .      0
            else
              write(*,*) 'Error in M1M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M1M4 = 
     .      (2*(-2*mgo**2*msq1**2*nkq*s+4*msq1**2*msq2**2*nkq*s+2*mgo**2*msq1
     .      **2*npg*s-2*mgo**2*msq2**2*npg*s-4*msq1**2*msq2**2*npg*s+2*msq2
     .      **4*npg*s-msq2**2*nkq*s**2+msq2**2*npg*s**2+2*mgo**4*npg*s1-2
     .      *mgo**2*msq1**2*npg*s1-2*mgo**2*msq2**2*npg*s1+4*msq1**2*msq2
     .      **2*npg*s1+mgo**2*nkq*s*s1-mgo**2*npg*s*s1-2*msq2**2*npg*s*s1
     .      +2*mgo**2*npg*s1**2-2*msq1**2*nkq*s*s2g+2*msq1**2*npg*s*s2g-2
     .      *msq2**2*npg*s*s2g+4*mgo**2*npg*s1*s2g-2*msq1**2*npg*s1*s2g-2
     .      *msq2**2*npg*s1*s2g+nkq*s*s1*s2g-npg*s*s1*s2g+2*npg*s1**2*s2g
     .      +2*npg*s1*s2g**2+2*mgo**2*nkq*s*t1-2*msq1**2*nkq*s*t1-4*msq2*
     .      *2*nkq*s*t1+2*msq1**2*npg*s*t1+2*msq2**2*npg*s*t1-nkq*s**2*t1
     .      +npg*s**2*t1-2*msq1**2*npg*s1*t1-2*msq2**2*npg*s1*t1+3*nkq*s*s1
     .      *t1-3*npg*s*s1*t1+2*npg*s1**2*t1+2*nkq*s*s2g*t1+2*nkq*s*t1**2
     .      -2*npg*s*t1**2+2*npg*s1*t1**2-2*mgo**4*npg*t2+2*mgo**2*msq1**2
     .      *npg*t2+2*msq1**4*npg*t2+2*mgo**2*msq2**2*npg*t2-4*msq1**2*msq2
     .      **2*npg*t2-mgo**2*nkq*s*t2-msq1**2*nkq*s*t2-msq2**2*nkq*s*t2+3
     .      *mgo**2*npg*s*t2-msq1**2*npg*s*t2-msq2**2*npg*s*t2+nkq*s**2*t2
     .      -npg*s**2*t2+mgo**2*nkq*s1*t2-3*mgo**2*npg*s1*t2-2*msq1**2*npg
     .      *s1*t2+2*npg*s*s1*t2-4*mgo**2*npg*s2g*t2+2*msq1**2*npg*s2g*t2
     .      +2*msq2**2*npg*s2g*t2-nkq*s*s2g*t2+3*npg*s*s2g*t2+nkq*s1*s2g*t2
     .      -3*npg*s1*s2g*t2-2*npg*s2g**2*t2-2*msq1**2*npg*t1*t2+2*msq2**2
     .      *npg*t1*t2-3*nkq*s*t1*t2+3*npg*s*t1*t2-nkq*s1*t1*t2-npg*s1*t1
     .      *t2-mgo**2*nkq*t2**2+msq1**2*nkq*t2**2+mgo**2*npg*t2**2+msq1*
     .      *2*npg*t2**2+nkq*s*t2**2-npg*s*t2**2-nkq*s2g*t2**2+npg*s2g*t2
     .      **2+nk1*(-(s*(s1*(mgo**2+s2g-t1)+s*t1))+(-(msq1**2*s)+s**2+mgo
     .      **2*(-s+s1)-s*s2g+s1*s2g+s*t1-s1*t1)*t2-(mgo**2-msq1**2+s+s2g)
     .      *t2**2+msq2**2*s*(s+t2))+nk2*(-(s*(s1*s2g+s*t1-s1*t1))+msq2**2
     .      *s*(s-t2)+(msq1**2*s-s**2+s*s2g+s1*s2g-(s+s1)*t1)*t2+(msq1**2
     .      +s-s2g)*t2**2+mgo**2*(s-t2)*(-s1+t2))+npq*(s*s1*(mgo**2+s2g)+s
     .      *(s-s1)*t1-(2*mgo**4+s**2-3*s*s2g+3*s1*s2g+2*s2g**2-msq1**2*(s
     .      +4*s2g)-s*t1+s1*t1+2*s2g*t1+mgo**2*(-4*msq1**2-3*s+3*s1+4*s2g
     .      +2*t1))*t2+(mgo**2+msq1**2-s+s2g)*t2**2+msq2**2*(-s**2+s*t2+2
     .      *(mgo**2-2*msq1**2+s2g+t1)*t2))))/(npg*s*(mgo**2-t1)*t2)
            else if(deltac1c2.eq.1) then
              M1M4 = 
     .      (-4*mgo**2*(npq*t2*(3*s-2*s1+t2)-nkq*s*(s-2*s1+3*t2)+npg*(s**2
     .      -3*s*s1+2*s1**2+4*s*t2-3*s1*t2+t2**2)))/(npg*s*(mgo**2-t1)*t2)
            else
              write(*,*) 'Error in M1M4: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M1M4:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M1M40 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
