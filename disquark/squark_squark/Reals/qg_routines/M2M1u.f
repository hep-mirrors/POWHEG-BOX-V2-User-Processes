ccc colour stripped partial amplitude for M2M1u
      real*8 function M2M1u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M2M1u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M2M1u = 
     .      (4*mgo**2*((mgo-msq2)*(mgo+msq2)*(2*mgo**2-4*msq2**2-s+2*t1)+(mgo
     .      **2-msq2**2+s)*t2))/(s*(mgo**2-t1))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M2M1u = 
     .      (4*mgo**2*(3*mgo**2-4*msq2**2-s+s2g+t1+t2))/(s*(mgo**2-t1))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M2M1u = 
     .      (4*mgo**2*(mgo**2-2*msq2**2+t1))/(s*(mgo**2-t1))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M2M1u = 
     .      (4*mgo**2)/(mgo**2*s-s*t1)
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M1u = 
     .      (4*mgo**2*(2*mgo**4+4*msq2**4-s*s2g+s1twg*s2g+s2g**2+s1twg*t1
     .      +s2g*t1+msq2**2*(s-2*(s1twg+2*s2g+t1)-t2)+(s+s2g)*t2+mgo**2*(
     .      -6*msq2**2-s+s1twg+3*s2g+2*t1+t2)))/(s*(mgo**2-t1))
          else
            write(*,*) "Wrong option for coeffs2g in M2M1u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M2M1u = 
     .      (4*mgo**2*(4*mgo**2*msq2**2*npg-4*msq2**4*npg+2*(mgo-msq2)*(mgo
     .      +msq2)*nk2*s+mgo**2*nkq*s-2*msq2**2*nkq*s+mgo**2*npg*s-msq2**2
     .      *npg*s-nkq*s**2-4*mgo**2*npg*t1+4*msq2**2*npg*t1+nkq*s*t1+msq2
     .      **2*npg*t2-npg*t1*t2-2*nk1*s*(mgo**2-msq2**2+t2)+npq*(2*(mgo-msq2)
     .      *(mgo+msq2)*(2*mgo**2+s-2*t1)+(mgo**2+s-t1)*t2)))/(npg*s*(-mgo
     .      **2+t1))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M2M1u = 
     .      (4*mgo**2*(nk1*s-nk2*s-npg*(2*msq2**2+s-2*t1)-npq*(6*mgo**2-4
     .      *msq2**2+s+2*s2g-2*t1+t2)))/(npg*s*(mgo**2-t1))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M2M1u = 
     .      (4*mgo**2*(2*mgo**2*npq+(-nk1+nk2+nkq)*s+npq*(s-2*t1)+2*npg*(msq2
     .      **2-t1)))/(npg*s*(-mgo**2+t1))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M2M1u = 
     .      (8*mgo**2*npq)/(npg*s*(-mgo**2+t1))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M1u = 
     .      (4*mgo**2*(4*mgo**2*msq2**2*npg-4*msq2**4*npg+mgo**2*nkq*s-2*msq2
     .      **2*nkq*s+mgo**2*npg*s-msq2**2*npg*s-nkq*s**2+2*msq2**2*npg*s1twg
     .      +nkq*s*s1twg+2*msq2**2*npg*s2g+npg*s*s2g+nk2*s*(2*mgo**2-2*msq2
     .      **2+s1twg+s2g)-4*mgo**2*npg*t1+4*msq2**2*npg*t1+nkq*s*t1-2*npg
     .      *s1twg*t1-2*npg*s2g*t1+msq2**2*npg*t2-npg*t1*t2-nk1*s*(2*mgo*
     .      *2-2*msq2**2+s1twg+s2g+2*t2)+npq*((2*mgo**2-2*msq2**2+s1twg+s2g)
     .      *(2*mgo**2+s+2*s2g-2*t1)+(mgo**2+s+s2g-t1)*t2)))/(npg*s*(-mgo
     .      **2+t1))
          else
            write(*,*) "Wrong option for coeffs2g in M2M1u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M1u0 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
