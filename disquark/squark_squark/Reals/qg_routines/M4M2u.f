ccc colour stripped partial amplitude for M4M2u
      real*8 function M4M2u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M4M2u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M4M2u = 
     .      (4*mgo**2*(6*mgo**4+4*msq2**4-s2g*(s-s2g+t1)+msq2**2*(3*s-4*s2g
     .      +2*t1-3*t2)+(s+s2g)*t2+mgo**2*(-10*msq2**2-3*s+5*s2g-2*t1+3*t2)))
     .      /((-mgo**2+t1)*t2*(mgo**2-s+s2g-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M4M2u = 
     .      (-4*mgo**2*(mgo**4-4*msq2**4+(s-s2g+t1)*(2*s-2*(s1twg+s2g)+t1)
     .      +msq2**2*(3*s-2*s2g+4*t1-3*t2)+(-5*s+2*s1twg+4*s2g-3*t1)*t2+2
     .      *t2**2+mgo**2*(4*msq2**2-6*s+2*s1twg+5*s2g-6*t1+6*t2)))/((mgo
     .      **2-t1)*t2*(mgo**2-s+s2g-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M4M2u = 
     .      (4*mgo**2*(6*mgo**4+4*msq2**4-2*s*s1twg+2*s1twg**2-s*s2g+3*s1twg
     .      *s2g+s2g**2-s1twg*t1-s2g*t1+msq2**2*(3*s-6*s1twg-4*s2g+2*t1-3
     .      *t2)+(s+2*s1twg+s2g)*t2+mgo**2*(-10*msq2**2-3*s+7*s1twg+5*s2g
     .      -2*t1+3*t2)))/((-mgo**2+t1)*t2*(mgo**2-s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M4M2u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M4M2u = 
     .      (4*mgo**2*(4*mgo**4*nkq-4*mgo**2*msq2**2*nkq+4*mgo**4*npg-8*mgo
     .      **2*msq2**2*npg+4*msq2**4*npg-5*mgo**2*nkq*s+4*msq2**2*nkq*s-mgo
     .      **2*npg*s+msq2**2*npg*s+nkq*s**2+6*mgo**2*nkq*s2g-4*msq2**2*nkq
     .      *s2g+2*mgo**2*npg*s2g-2*msq2**2*npg*s2g-3*nkq*s*s2g+2*nkq*s2g
     .      **2-4*mgo**2*nkq*t1+4*msq2**2*nkq*t1+nkq*s*t1-2*nkq*s2g*t1+8*mgo
     .      **2*nkq*t2-6*msq2**2*nkq*t2-msq2**2*npg*t2-3*nkq*s*t2+npg*s*t2
     .      +5*nkq*s2g*t2-npg*s2g*t2-2*nkq*t1*t2+npg*t1*t2+npq*(mgo**2-2*msq2
     .      **2+t1-t2)*t2+3*nkq*t2**2-npg*t2**2-nk2*t2*(2*mgo**2-2*msq2**2
     .      -s+s2g+t2)+nk1*t2*(2*mgo**2-2*msq2**2+s+s2g+t2)))/(npg*(-mgo*
     .      *2+t1)*t2*(mgo**2-s+s2g-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M4M2u = 
     .      (-4*mgo**2*(-2*mgo**4*nkq+4*mgo**2*msq2**2*nkq+2*mgo**4*npg+2
     .      *mgo**2*msq2**2*npg-4*msq2**4*npg+mgo**2*nkq*s-4*msq2**2*nkq*s
     .      -6*mgo**2*npg*s+5*msq2**2*npg*s+nkq*s**2+npg*s**2+2*mgo**2*npg
     .      *s1twg-2*npg*s*s1twg-2*mgo**2*nkq*s2g+4*msq2**2*nkq*s2g+6*mgo
     .      **2*npg*s2g-4*msq2**2*npg*s2g-nkq*s*s2g-3*npg*s*s2g+2*npg*s1twg
     .      *s2g+2*npg*s2g**2-4*msq2**2*nkq*t1-6*mgo**2*npg*t1+6*msq2**2*npg
     .      *t1+3*nkq*s*t1+npg*s*t1-2*npg*s1twg*t1-2*nkq*s2g*t1-2*npg*s2g
     .      *t1+2*nkq*t1**2-3*mgo**2*nkq*t2+6*msq2**2*nkq*t2+7*mgo**2*npg
     .      *t2-5*msq2**2*npg*t2-2*nkq*s*t2-3*npg*s*t2+2*npg*s1twg*t2+4*npg
     .      *s2g*t2-3*nkq*t1*t2-2*npg*t1*t2+nk2*(mgo**2-2*msq2**2+t1)*t2-nk1
     .      *(mgo**2-2*msq2**2+2*s+t1)*t2+2*npg*t2**2+npq*t2*(2*msq2**2-s
     .      +s2g-2*t1+2*t2)))/(npg*(mgo**2-t1)*t2*(mgo**2-s+s2g-t1+t2)*(mgo
     .      **2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M4M2u = 
     .      (4*mgo**2*(4*mgo**4*nkq-4*mgo**2*msq2**2*nkq+4*mgo**4*npg-8*mgo
     .      **2*msq2**2*npg+4*msq2**4*npg-5*mgo**2*nkq*s+4*msq2**2*nkq*s-mgo
     .      **2*npg*s+msq2**2*npg*s+nkq*s**2+2*mgo**2*nkq*s1twg+6*mgo**2*npg
     .      *s1twg-6*msq2**2*npg*s1twg-2*nkq*s*s1twg-npg*s*s1twg+2*npg*s1twg
     .      **2+6*mgo**2*nkq*s2g-4*msq2**2*nkq*s2g+2*mgo**2*npg*s2g-2*msq2
     .      **2*npg*s2g-3*nkq*s*s2g+2*nkq*s1twg*s2g+2*npg*s1twg*s2g+2*nkq
     .      *s2g**2-4*mgo**2*nkq*t1+4*msq2**2*nkq*t1+nkq*s*t1-2*nkq*s1twg
     .      *t1-2*nkq*s2g*t1+8*mgo**2*nkq*t2-6*msq2**2*nkq*t2-msq2**2*npg
     .      *t2-3*nkq*s*t2+npg*s*t2+3*nkq*s1twg*t2+npg*s1twg*t2+5*nkq*s2g
     .      *t2-npg*s2g*t2-2*nkq*t1*t2+npg*t1*t2+npq*(mgo**2-2*msq2**2+s1twg
     .      +t1-t2)*t2+3*nkq*t2**2-npg*t2**2-nk2*t2*(2*mgo**2-2*msq2**2-s
     .      +s1twg+s2g+t2)+nk1*t2*(2*mgo**2-2*msq2**2+s+s1twg+s2g+t2)))/(npg
     .      *(-mgo**2+t1)*t2*(mgo**2-s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M4M2u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M4M2u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
