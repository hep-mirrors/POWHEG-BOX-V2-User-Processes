ccc colour stripped partial amplitude for M9M10
      real*8 function M9M10(coeffs2g)
      implicit none
      include "sqantisq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M9M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M9M10 = 
     .      (-4*msq2**4+s*t1-s1*t1-s*t2+msq2**2*(3*s+4*t1+t2)+mgo**2*(4*msq2
     .      **2-3*s1-4*t1+3*t2))/((mgo**2-s-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M9M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M9M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M9M10 = 
     .      (4*msq2**4+3*s*(s1+t1)+4*t1*(s1+t1)-2*s*t2-3*t1*t2-msq2**2*(7
     .      *s+8*t1+t2))/((mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M9M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M9M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M9M10 = 
     .      (-4*msq2**4-3*s1*s2g+s*t1-s1*t1-4*s2g*t1-s*t2+3*s2g*t2+msq2**2
     .      *(3*s+4*(s2g+t1)+t2)+mgo**2*(4*msq2**2-3*s1-4*t1+3*t2))/((mgo
     .      **2-s+s2g-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M9M10: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M9M10:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M9M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M9M10 = 
     .      (2*(-(mgo**2*msq2**2*nkq)+2*mgo**2*msq2**2*npg-2*msq2**4*npg+msq2
     .      **2*nkq*s+msq2**2*npg*s+mgo**2*nkq*s1-mgo**2*npg*s1-nkq*s*s1+(mgo
     .      -msq2)*(mgo+msq2)*npq*(mgo**2-s-t1)+mgo**2*nkq*t1+msq2**2*nkq
     .      *t1-2*mgo**2*npg*t1+2*msq2**2*npg*t1-nkq*s*t1+npg*s*t1-nkq*s1
     .      *t1-npg*s1*t1-nkq*t1**2-mgo**2*nkq*t2+mgo**2*npg*t2+msq2**2*npg
     .      *t2+nkq*s*t2-npg*s*t2+nkq*t1*t2-nk2*(mgo**2-s-t1)*(s-s1+t2)+nk1
     .      *(-(s*t1)+s1*t1+msq2**2*(s-t2)+s*t2+mgo**2*(-s1+t2))))/(npg*(mgo
     .      **2-s-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M9M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M9M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M9M10 = 
     .      (2*(npq*(-mgo**2+s+t1)*(-mgo**2+s-s2g+t1)+nk1*(s*(s1+t1)-(2*s
     .      +t1)*t2+msq2**2*(-s+t2))+npg*(2*msq2**4+(s1+t1)*(s+2*t1)-t1*t2
     .      -msq2**2*(3*s+4*t1+t2))))/(npg*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)
     .      *(s-s1+t2))
            else
              write(*,*) 'Error in M9M10: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M9M10 = 
     .      0
            else if(deltac1c2.eq.1) then
              M9M10 = 
     .      (2*(-(mgo**2*msq2**2*nkq)+2*mgo**2*msq2**2*npg-2*msq2**4*npg+msq2
     .      **2*nkq*s+msq2**2*npg*s+mgo**2*nkq*s1-mgo**2*npg*s1-nkq*s*s1-msq2
     .      **2*nkq*s2g+2*msq2**2*npg*s2g+nkq*s1*s2g-npg*s1*s2g+npq*(mgo*
     .      *2-msq2**2+s2g)*(mgo**2-s+s2g-t1)+mgo**2*nkq*t1+msq2**2*nkq*t1
     .      -2*mgo**2*npg*t1+2*msq2**2*npg*t1-nkq*s*t1+npg*s*t1-nkq*s1*t1
     .      -npg*s1*t1+nkq*s2g*t1-2*npg*s2g*t1-nkq*t1**2-mgo**2*nkq*t2+mgo
     .      **2*npg*t2+msq2**2*npg*t2+nkq*s*t2-npg*s*t2-nkq*s2g*t2+npg*s2g
     .      *t2+nkq*t1*t2-nk2*(mgo**2-s+s2g-t1)*(s-s1+t2)+nk1*(-(s1*(mgo*
     .      *2+s2g-t1))-s*t1+msq2**2*(s-t2)+(mgo**2+s+s2g)*t2)))/(npg*(mgo
     .      **2-s+s2g-t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M9M10: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M9M10:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M9M100 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
