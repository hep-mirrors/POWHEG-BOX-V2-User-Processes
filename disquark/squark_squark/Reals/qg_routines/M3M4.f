ccc colour stripped partial amplitude for M3M4
      real*8 function M3M4(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M3M4 = 
     .      (2*(-2*msq1**4*t2-(-(s1*t1)+msq2**2*(s+2*t1)+s*(t1-t2))*(2*msq2
     .      **2-2*(s1+t1)+t2)-msq1**2*(-4*msq2**4+2*(s-s1)*t1+msq2**2*(-2
     .      *s+4*(s1+t1))-2*(s+s1+t1)*t2+t2**2)+mgo**2*(2*msq1**2*(-2*msq2
     .      **2+s1+2*t1)+(s1+2*t1-t2)*(2*msq2**2-2*(s1+t1)+t2))))/((mgo**2
     .      -s-t1)*(-mgo**2+t1)*t2)
            else if(deltac1c2.eq.1) then
              M3M4 = 
     .      (-4*mgo**2*(-((s-s1)*(2*s1+t1))+mgo**2*(s1-t2)-(msq1**2-2*s+3
     .      *s1)*t2+t2**2+msq2**2*(s-2*s1+2*t2)))/((mgo**2-t1)*(mgo**2-s-t1)
     .      *t2)
            else
              write(*,*) 'Error in M3M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M3M4 = 
     .      (-2*(2*msq1**4*t2+(2*msq2**2-2*(s1+t1)+t2)*(-((-msq2**2+s1+t1)
     .      *(s+2*t1))+t1*t2)+msq1**2*(-2*(2*msq2**2-s-2*t1)*(msq2**2-s1-t1)
     .      -2*(s+s1+t1)*t2+t2**2)))/((mgo**2-t1)*(mgo**2-s-t1)*(mgo**2-s
     .      +s2g-t1)*t2)
            else if(deltac1c2.eq.1) then
              M3M4 = 
     .      (-4*mgo**2*(msq1**2*t2+(s1+t1-t2)*(s-2*s1+t2)-msq2**2*(s-2*s1
     .      +2*t2)))/((mgo**2-t1)*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)*t2)
            else
              write(*,*) 'Error in M3M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M3M4 = 
     .      (2*(-2*msq1**4*t2-(2*msq2**2-2*(s1+t1)+t2)*(s*t1-2*s2g*t1-s1*(s2g
     .      +t1)+msq2**2*(s+2*t1)-s*t2+s2g*t2)-msq1**2*(-2*(2*msq2**4+s1*s2g
     .      +(-s+s1+2*s2g)*t1+msq2**2*(s-2*(s1+s2g+t1)))-2*(s+s1+t1)*t2+t2
     .      **2)+mgo**2*(2*msq1**2*(-2*msq2**2+s1+2*t1)+(s1+2*t1-t2)*(2*msq2
     .      **2-2*(s1+t1)+t2))))/((mgo**2-s+s2g-t1)*(-mgo**2+t1)*t2)
            else if(deltac1c2.eq.1) then
              M3M4 = 
     .      (-4*mgo**2*(mgo**2*s1-2*s*s1+2*s1**2+s1*s2g-s*t1+s1*t1-(mgo**2
     .      +msq1**2-2*s+3*s1+s2g)*t2+t2**2+msq2**2*(s-2*s1+2*t2)))/((mgo
     .      **2-t1)*(mgo**2-s+s2g-t1)*t2)
            else
              write(*,*) 'Error in M3M4: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M3M4:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M3M4 = 
     .      (2*(-((2*msq2**2+s-2*s1-t1)*(-(s1*t1)+msq2**2*(s+2*t1)+s*(t1-t2)))
     .      -2*msq1**4*t2+mgo**4*(2*msq1**2-s1-2*t1+t2)+msq1**2*(2*(msq2*
     .      *2+s-s1)*(2*msq2**2-t1)+(-2*msq2**2+s+2*s1+t1)*t2)+mgo**2*(s*s1
     .      -2*s1**2+3*s*t1-6*s1*t1-2*t1**2+msq2**2*(s+2*s1+6*t1-2*t2)-2*s
     .      *t2+2*s1*t2+t1*t2+msq1**2*(-6*msq2**2-2*s+2*(s1+t1)+3*t2))+(nk1
     .      *(mgo**4*(-s1+t2)+(s+t1-2*t2)*(s*t1-s1*t1+msq1**2*t2-s*t2)-msq2
     .      **2*(s*(s+t1)+2*(-2*msq1**2+s+2*t1)*t2)+mgo**2*(msq2**2*s+s*s1
     .      -s*t1+2*s1*t1-5*msq1**2*t2+2*s1*t2+3*t1*t2-2*t2**2))+(mgo**2-s
     .      -t1)*(npq*(-(msq2**2*s)+s*t1-s1*t1+msq1**2*t2-s*t2+mgo**2*(s1
     .      +t2))+nk2*(msq2**2*s+t1*(s1-2*t2)+msq1**2*t2+mgo**2*(-s1+t2)-s
     .      *(t1+t2))-nkq*(msq2**2*s+4*msq2**2*t1+s*t1-3*s1*t1-2*t1**2-s*t2
     .      +2*t1*t2+mgo**2*(2*msq1**2-s1-2*t1+t2)+msq1**2*(-4*msq2**2+2*t1
     .      +t2))))/npg))/((mgo**2-s-t1)*(-mgo**2+t1)*t2)
            else if(deltac1c2.eq.1) then
              M3M4 = 
     .      (4*mgo**2*((s-2*s1)*(-mgo**2+msq2**2+s-s1)+(-2*mgo**2-msq1**2
     .      +2*(msq2**2+s-s1)+t1)*t2+(2*nk1*t2*(s-s1+t2)+(mgo**2-s-t1)*(-(npq
     .      *t2)+nkq*(s-2*s1+2*t2)))/npg))/((mgo**2-s-t1)*(-mgo**2+t1)*t2)
            else
              write(*,*) 'Error in M3M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M3M4 = 
     .      (2*(-mgo**2+t1)*(-(s**2*s1)+2*s*s1**2+s*s1*s2g-2*s**2*t1+2*s*s1
     .      *t1+4*s1**2*t1+2*s*s2g*t1+s1*s2g*t1-2*s*t1**2+7*s1*t1**2+2*s2g
     .      *t1**2+2*t1**3+2*msq2**4*(s+2*t1)+mgo**2*(2*s-s2g+2*t1)*(-2*msq1
     .      **2+s1+2*t1-t2)+2*msq1**4*t2+(s**2-s*(s2g-2*t1)-t1*(2*s1+s2g+t1))
     .      *t2+mgo**4*(2*msq1**2-s1-2*t1+t2)+2*msq2**2*(-2*(s1+t1)*(s+2*t1)
     .      +t1*t2)-2*msq1**2*(2*msq2**4-s**2+t1*(2*s1+s2g+t1)+(s1+2*t1)*t2
     .      -msq2**2*(s+2*s1+4*t1+t2)+s*(s1+s2g-t1+2*t2))+(nk1*(-(s1*(s+t1)
     .      *(s-s2g+t1))+mgo**2*(2*s-s2g+2*t1)*(s1-t2)+(s*(s-2*s1-s2g)-(4
     .      *s1+s2g)*t1-3*t1**2+4*msq1**2*(-msq2**2+s+t1)+2*msq2**2*(s+2*t1))
     .      *t2+2*(msq1**2+t1)*t2**2+mgo**4*(-s1+t2))+(mgo**2-s-t1)*(mgo*
     .      *2-s+s2g-t1)*(nkq*(-2*msq1**2+s1+2*t1-t2)+nk2*(-s1+t2)+npq*(s1
     .      +t2)))/npg))/((mgo**2-t1)**2*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)*t2)
            else if(deltac1c2.eq.1) then
              M3M4 = 
     .      (4*mgo**2*(2*nk1*t2*(s-s1+t2)-npg*((s-2*s1)*(-msq2**2+s1+t1)+(msq1
     .      **2-2*msq2**2+2*s1+t1)*t2)))/(npg*(mgo**2-t1)*(mgo**2-s-t1)*(mgo
     .      **2-s+s2g-t1)*t2)
            else
              write(*,*) 'Error in M3M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M3M4 = 
     .      (2*(-2*msq1**4*t2+mgo**4*(2*msq1**2-s1-2*t1+t2)-(2*msq2**2+s-2
     .      *s1-s2g-t1)*(s*t1-2*s2g*t1-s1*(s2g+t1)+msq2**2*(s+2*t1)-s*t2+s2g
     .      *t2)-msq1**2*(-4*msq2**4+2*(s-s1-s2g)*(s2g+t1)-(s+2*s1+3*s2g+t1)
     .      *t2+2*msq2**2*(-2*s+2*s1+3*s2g+t1+t2))+mgo**2*(s*s1-2*s1**2-2
     .      *s1*s2g+3*s*t1-6*s1*t1-4*s2g*t1-2*t1**2+msq2**2*(s+2*s1+6*t1-2
     .      *t2)+(-2*s+2*(s1+s2g)+t1)*t2+msq1**2*(-6*msq2**2-2*s+2*(s1+2*s2g
     .      +t1)+3*t2))+(nk1*(-((mgo**2-s+s2g-t1)*(-(msq2**2*s)+s1*(mgo**2
     .      +s2g-t1)+s*t1))+(mgo**4-s*(2*msq2**2+s)+s2g*(2*s1+s2g)+(-4*msq2
     .      **2-3*s+2*s1+3*s2g)*t1+msq1**2*(4*msq2**2+s-5*s2g+t1)+mgo**2*(
     .      -5*msq1**2+2*(s1+s2g)+3*t1))*t2-2*(mgo**2+msq1**2-s+s2g)*t2**2)
     .      +(mgo**2-s+s2g-t1)*(npq*(-(msq2**2*s)+s1*(mgo**2+s2g-t1)+s*t1
     .      +(mgo**2+msq1**2-s+s2g)*t2)+nk2*(msq2**2*s-s1*(mgo**2+s2g-t1)
     .      -s*t1+(mgo**2+msq1**2-s+s2g-2*t1)*t2)+nkq*(s1*s2g-msq2**2*(s+4
     .      *t1)+t1*(-s+3*s1+2*(s2g+t1))+mgo**2*(-2*msq1**2+s1+2*t1-t2)+(s
     .      -s2g-2*t1)*t2-msq1**2*(-4*msq2**2+2*(s2g+t1)+t2))))/npg))/((mgo
     .      **2-s+s2g-t1)*(-mgo**2+t1)*t2)
            else if(deltac1c2.eq.1) then
              M3M4 = 
     .      (2*mgo**2*(-2*(s-2*s1)*(mgo**2-msq2**2-s+s1+s2g)-2*(2*mgo**2+msq1
     .      **2-2*msq2**2-2*s+2*(s1+s2g)-t1)*t2+(2*(2*nk1*t2*(s-s1+t2)+(mgo
     .      **2-s+s2g-t1)*(-(npq*t2)+nkq*(s-2*s1+2*t2))))/npg))/((mgo**2-s
     .      +s2g-t1)*(-mgo**2+t1)*t2)
            else
              write(*,*) 'Error in M3M4: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M3M4:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M3M41 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
