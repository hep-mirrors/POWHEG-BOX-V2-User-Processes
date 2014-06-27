ccc colour stripped partial amplitude for M32
      real*8 function M32(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.0) then !return the term propto 1/s2g^2
            if(deltac1c2.eq.0) then
          M32 = 
     .      (8*(mgo**2+2*msq1**2-s-t1)*(msq2**2*(-msq1**2+s+t1)+mgo**2*(msq1
     .      **2-s1-t1+t2)))/(-mgo**2+s+t1)**2
            else if(deltac1c2.eq.1) then
              M32 = 
     .      (-8*mgo**2*(mgo**2+2*msq1**2-s-t1)*(s-s1+t2))/(-mgo**2+s+t1)*
     .      *2
            else
              write(*,*) 'Error in M32: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M32 = 
     .      (8*(mgo**2-s-t1)*(msq1**4*(4*msq2**2-2*(s+t1))+mgo**2*(-2*msq1
     .      **4+msq1**2*(msq2**2-s+2*s1+t1-2*t2)+(s+t1)*(-msq2**2+s1+t1-t2))
     .      +msq1**2*(s+t1)*(-5*msq2**2+s+2*s1+3*t1-2*t2)+(s+t1)**2*(msq2
     .      **2-s1-t1+t2)))/(-mgo**2+s+t1)**4
            else if(deltac1c2.eq.1) then
              M32 = 
     .      (8*mgo**2*(mgo**2+4*msq1**2-s-t1)*(s-s1+t2))/(mgo**2-s-t1)**3
            else
              write(*,*) 'Error in M32: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-ropagator
            if(deltac1c2.eq.0) then
          M32 = 
     .      (-8*(mgo**2-s-t1)*(-2*msq1**4*(-((s+t1)*(2*s-s2g+2*t1))+msq2*
     .      *2*(3*s-2*s2g+3*t1))+mgo**4*(-2*msq1**4+msq1**2*(msq2**2-s+2*s1
     .      +t1-2*t2)+(s+t1)*(-msq2**2+s1+t1-t2))+(s+t1)**2*(s-s2g+t1)*(-msq2
     .      **2+s1+t1-t2)+msq1**2*(s+t1)*(-s**2+2*s1*s2g-4*s1*t1+3*s2g*t1
     .      -5*t1**2+msq2**2*(7*s-5*s2g+7*t1)-2*s2g*t2+4*t1*t2+s*(-4*s1+s2g
     .      -6*t1+4*t2))+mgo**2*(msq1**4*(6*msq2**2-2*(s+s2g+t1))+(s+t1)*(2
     .      *s-s2g+2*t1)*(msq2**2-s1-t1+t2)+msq1**2*(2*s**2+2*s*s1-s*s2g+2
     .      *s1*s2g+msq2**2*(-8*s+s2g-8*t1)+6*s*t1+2*s1*t1+s2g*t1+4*t1**2
     .      -2*(s+s2g+t1)*t2))))/((mgo**2-s+s2g-t1)**2*(-mgo**2+s+t1)**4)
            else if(deltac1c2.eq.1) then
              M32 = 
     .      (-8*mgo**2*(mgo**4+msq1**2*(-6*s+4*s2g-6*t1)+mgo**2*(6*msq1**2
     .      -2*s+s2g-2*t1)+(s+t1)*(s-s2g+t1))*(s-s1+t2))/((mgo**2-s-t1)**3
     .      *(mgo**2-s+s2g-t1)**2)
            else
              write(*,*) 'Error in M32: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M32 = 
     .      (8*(mgo**2+2*msq1**2-s+s2g-t1)*(msq1**2*(-msq2**2+s2g)+msq2**2
     .      *(s+t1)-s2g*(s1+t1-t2)+mgo**2*(msq1**2-s1-t1+t2)))/(mgo**2-s+s2g
     .      -t1)**2
            else if(deltac1c2.eq.1) then
              M32 = 
     .      (-8*mgo**2*(mgo**2+2*msq1**2-s+s2g-t1)*(s-s1+t2))/(mgo**2-s+s2g
     .      -t1)**2
            else
              write(*,*) 'Error in M32: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M32:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.0) then !return the term propto 1/s2g^2
            if(deltac1c2.eq.0) then
          M32 = 
     .      (16*(msq1**2*npg+nk1*(mgo**2-s-t1))*(msq2**2*(-msq1**2+s+t1)+mgo
     .      **2*(msq1**2-s1-t1+t2)))/(npg*(-mgo**2+s+t1)**2)
            else if(deltac1c2.eq.1) then
              M32 = 
     .      (-16*mgo**2*(msq1**2*npg+nk1*(mgo**2-s-t1))*(s-s1+t2))/(npg*(
     .      -mgo**2+s+t1)**2)
            else
              write(*,*) 'Error in M32: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M32 = 
     .      (16*(mgo**2-s-t1)*(msq1**2*npg*(msq1**2*(2*msq2**2-s-t1)+mgo*
     .      *2*(-msq1**2+s1+t1-t2)+(s+t1)*(-2*msq2**2+s1+t1-t2))+nk1*(mgo
     .      **2-s-t1)*(msq1**2*(msq2**2-s-t1)+(s+t1)*(-msq2**2+s1+t1-t2))))
     .      /(npg*(-mgo**2+s+t1)**4)
            else if(deltac1c2.eq.1) then
              M32 = 
     .      (16*mgo**2*(2*msq1**2*npg+nk1*(mgo**2-s-t1))*(s-s1+t2))/(npg*(mgo
     .      **2-s-t1)**3)
            else
              write(*,*) 'Error in M32: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M32 = 
     .      (16*(-(msq1**2*npg*(mgo**2-s-t1)*(-(msq1**2*(-((s+t1)*(2*s-s2g
     .      +2*t1))+msq2**2*(3*s-2*s2g+3*t1)))+mgo**2*(msq1**2*(3*msq2**2
     .      -s-s2g-t1)-3*msq2**2*(s+t1)+(s+s2g+t1)*(s1+t1-t2))+(s+t1)*(msq2
     .      **2*(3*s-2*s2g+3*t1)-(2*s-s2g+2*t1)*(s1+t1-t2))+mgo**4*(-msq1
     .      **2+s1+t1-t2)))-nk1*(mgo**2-s+s2g-t1)*(-mgo**2+s+t1)**2*(msq1
     .      **2*(msq2**2-s-t1)+(s+t1)*(-msq2**2+s1+t1-t2))))/(npg*(mgo**2
     .      -s+s2g-t1)**2*(-mgo**2+s+t1)**4)
            else if(deltac1c2.eq.1) then
              M32 = 
     .      (-16*mgo**2*(msq1**2*npg*(3*mgo**2-3*s+2*s2g-3*t1)+nk1*(mgo**2
     .      -s-t1)*(mgo**2-s+s2g-t1))*(s-s1+t2))/(npg*(mgo**2-s-t1)**3*(mgo
     .      **2-s+s2g-t1)**2)
            else
              write(*,*) 'Error in M32: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M32 = 
     .      (16*(msq1**2*npg+nk1*(mgo**2-s+s2g-t1))*(msq1**2*(-msq2**2+s2g)
     .      +msq2**2*(s+t1)-s2g*(s1+t1-t2)+mgo**2*(msq1**2-s1-t1+t2)))/(npg
     .      *(mgo**2-s+s2g-t1)**2)
            else if(deltac1c2.eq.1) then
              M32 = 
     .      (-16*mgo**2*(msq1**2*npg+nk1*(mgo**2-s+s2g-t1))*(s-s1+t2))/(npg
     .      *(mgo**2-s+s2g-t1)**2)
            else
              write(*,*) 'Error in M32: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M32:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M322 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
