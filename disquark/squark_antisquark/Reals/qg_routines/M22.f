ccc colour stripped partial amplitude for M22
      real*8 function M22(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.0) then !return the term propto 1/s2g^2
            if(deltac1c2.eq.0) then
          M22 = 
     .      (-8*mgo**2*t2)/s
            else if(deltac1c2.eq.1) then
              M22 = 
     .      (8*(mgo**4+msq2**2*t1-mgo**2*(msq2**2+t1-t2)))/s
            else
              write(*,*) 'Error in M22: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M22 = 
     .      0
            else if(deltac1c2.eq.1) then
              M22 = 
     .      (8*(2*mgo**2-msq2**2-t1+t2))/s
            else
              write(*,*) 'Error in M22: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-ropagator
            if(deltac1c2.eq.0) then
          M22 = 
     .      0
            else if(deltac1c2.eq.1) then
              M22 = 
     .      8/s
            else
              write(*,*) 'Error in M22: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M22 = 
     .      (-8*mgo**2*t2)/s
            else if(deltac1c2.eq.1) then
              M22 = 
     .      (8*(mgo**2-msq2**2+s2g)*(mgo**2+s2g-t1)+8*(mgo**2+s2g)*t2)/s
            else
              write(*,*) 'Error in M22: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M22:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.0) then !return the term propto 1/s2g^2
            if(deltac1c2.eq.0) then
          M22 = 
     .      (8*mgo**2*(-(nkq*s)+npg*(s-s1)+npq*(2*s-2*s1+t2)))/(npg*s)
            else if(deltac1c2.eq.1) then
              M22 = 
     .      (8*((-mgo**2+msq2**2)*nk2*s+msq2**2*nkq*s+npg*(mgo**4+msq2**2
     .      *(msq1**2-s)-mgo**2*(msq1**2+msq2**2-s1))+npq*(mgo**4+msq2**2
     .      *(2*msq1**2-2*s-t1)-mgo**2*(2*msq1**2+msq2**2-2*s1-t1+t2))))/(npg
     .      *s)
            else
              write(*,*) 'Error in M22: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M22 = 
     .      0
            else if(deltac1c2.eq.1) then
              M22 = 
     .      (-8*(nk2*s+npg*(-2*mgo**2+msq1**2+msq2**2-s1)+npq*(-2*mgo**2+2
     .      *msq1**2+msq2**2-2*s1-t1+t2)))/(npg*s)
            else
              write(*,*) 'Error in M22: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M22 = 
     .      0
            else if(deltac1c2.eq.1) then
              M22 = 
     .      (8*(1+npq/npg))/s
            else
              write(*,*) 'Error in M22: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M22 = 
     .      (8*mgo**2*(-(nkq*s)+npg*(s-s1)+npq*(2*s-2*s1+t2)))/(npg*s)
            else if(deltac1c2.eq.1) then
              M22 = 
     .      (8*(msq2**2*nkq*s-nk2*s*(mgo**2-msq2**2+s2g)+npg*(mgo**4+msq2
     .      **2*(msq1**2-s)-mgo**2*(msq1**2+msq2**2-s1-2*s2g)-(msq1**2+msq2
     .      **2-s1)*s2g+s2g**2)+npq*(mgo**4-2*msq2**2*s+2*msq1**2*(msq2**2
     .      -s2g)-msq2**2*s2g+2*s1*s2g+s2g**2-msq2**2*t1+s2g*t1-s2g*t2-mgo
     .      **2*(2*msq1**2+msq2**2-2*s1-2*s2g-t1+t2))))/(npg*s)
            else
              write(*,*) 'Error in M22: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M22:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M220 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
