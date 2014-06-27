ccc colour stripped partial amplitude for M2M5u
      real*8 function M2M5u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M2M5u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M2M5u = 
     .      (-4*mgo**2*(4*mgo**4-4*msq2**4-(s+t1)*t2+msq2**2*(s+2*s1twg+3
     .      *t2)+mgo**2*(-s+2*(s1twg+t2))))/((-mgo**2+t1)*(-mgo**2+s+t1)*(mgo
     .      **2-s+s1twg-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M2M5u = 
     .      (4*mgo**2*(2*mgo**6+mgo**4*(2*msq2**2+3*s+2*s2g+4*t1)+mgo**2*(
     .      -8*msq2**4-6*s**2+6*s*s1twg+3*s*s2g-12*s*t1+6*s1twg*t1+4*s2g*t1
     .      -6*t1**2-2*msq2**2*(s-3*s1twg+2*t1-4*t2)+4*(s+t1)*t2)+(s+t1)*((s
     .      -2*(s1twg+s2g))*(s-s1twg+t1)+(-s+3*s1twg+s2g)*t2+t2**2)+msq2*
     .      *2*(2*(s1twg*(s1twg+s2g)-3*s1twg*t1+t1**2)+s*(-5*s1twg+s2g+2*t1
     .      -7*t2)+(5*s1twg+3*s2g-8*t1)*t2+3*t2**2)+msq2**4*(8*s-4*(s1twg
     .      +s2g-2*t1+t2))))/((mgo**2-t1)*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)
     .      *(mgo**2-s+s1twg-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M5u = 
     .      (-4*mgo**2*(4*mgo**4-4*msq2**4+s2g*(-s+2*(s1twg+s2g))-(s-2*s2g
     .      +t1)*t2+msq2**2*(s+2*s1twg-2*s2g+3*t2)+mgo**2*(-s+2*(s1twg+3*s2g
     .      +t2))))/((mgo**2-t1)*(mgo**2-s+s2g-t1)*(mgo**2-s+s1twg+s2g-t1
     .      +t2))
          else
            write(*,*) "Wrong option for coeffs2g in M2M5u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M2M5u = 
     .      (-4*mgo**2*(-2*mgo**4*nkq+2*mgo**2*msq2**2*nkq+2*mgo**4*npg+2
     .      *mgo**2*msq2**2*npg-4*msq2**4*npg+3*mgo**2*nkq*s-2*msq2**2*nkq
     .      *s-mgo**2*npg*s+msq2**2*npg*s-nkq*s**2-mgo**2*nkq*s1twg+mgo**2
     .      *npg*s1twg+2*msq2**2*npg*s1twg+nkq*s*s1twg-npq*(2*mgo**2-2*msq2
     .      **2+s1twg)*(mgo**2-s-t1)+2*mgo**2*nkq*t1-2*msq2**2*nkq*t1+2*mgo
     .      **2*npg*t1-2*msq2**2*npg*t1-nkq*s*t1+nkq*s1twg*t1+npg*s1twg*t1
     .      -mgo**2*nkq*t2+mgo**2*npg*t2+3*msq2**2*npg*t2+nkq*s*t2-npg*s*t2
     .      +nkq*t1*t2+nk1*(3*mgo**2-s-3*t1)*(2*mgo**2-2*msq2**2+s1twg+t2)
     .      -nk2*(mgo**2-s-t1)*(2*mgo**2-2*msq2**2+s1twg+t2)))/(npg*(-mgo
     .      **2+t1)*(-mgo**2+s+t1)*(mgo**2-s+s1twg-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M2M5u = 
     .      (4*mgo**2*(-(s2g*(-mgo**2+t1)*(-2*mgo**4*nkq+2*mgo**2*msq2**2
     .      *nkq+2*mgo**4*npg+2*mgo**2*msq2**2*npg-4*msq2**4*npg+3*mgo**2
     .      *nkq*s-2*msq2**2*nkq*s-mgo**2*npg*s+msq2**2*npg*s-nkq*s**2-mgo
     .      **2*nkq*s1twg+mgo**2*npg*s1twg+2*msq2**2*npg*s1twg+nkq*s*s1twg
     .      -npq*(2*mgo**2-2*msq2**2+s1twg)*(mgo**2-s-t1)+2*mgo**2*nkq*t1
     .      -2*msq2**2*nkq*t1+2*mgo**2*npg*t1-2*msq2**2*npg*t1-nkq*s*t1+nkq
     .      *s1twg*t1+npg*s1twg*t1-mgo**2*nkq*t2+mgo**2*npg*t2+3*msq2**2*npg
     .      *t2+nkq*s*t2-npg*s*t2+nkq*t1*t2+nk1*(3*mgo**2-s-3*t1)*(2*mgo*
     .      *2-2*msq2**2+s1twg+t2)-nk2*(mgo**2-s-t1)*(2*mgo**2-2*msq2**2+s1twg
     .      +t2)))+(mgo**2-t1)*(2*mgo**2-2*s+s1twg-2*t1+t2)*(-2*mgo**4*nkq
     .      +2*mgo**2*msq2**2*nkq+2*mgo**4*npg+2*mgo**2*msq2**2*npg-4*msq2
     .      **4*npg+3*mgo**2*nkq*s-2*msq2**2*nkq*s-mgo**2*npg*s+msq2**2*npg
     .      *s-nkq*s**2-mgo**2*nkq*s1twg+mgo**2*npg*s1twg+2*msq2**2*npg*s1twg
     .      +nkq*s*s1twg-npq*(2*mgo**2-2*msq2**2+s1twg)*(mgo**2-s-t1)+2*mgo
     .      **2*nkq*t1-2*msq2**2*nkq*t1+2*mgo**2*npg*t1-2*msq2**2*npg*t1-nkq
     .      *s*t1+nkq*s1twg*t1+npg*s1twg*t1-mgo**2*nkq*t2+mgo**2*npg*t2+3
     .      *msq2**2*npg*t2+nkq*s*t2-npg*s*t2+nkq*t1*t2+nk1*(3*mgo**2-s-3
     .      *t1)*(2*mgo**2-2*msq2**2+s1twg+t2)-nk2*(mgo**2-s-t1)*(2*mgo**2
     .      -2*msq2**2+s1twg+t2))-(-mgo**2+t1)*(-mgo**2+s+t1)*(mgo**2-s+s1twg
     .      -t1+t2)*(-3*mgo**2*nkq+2*msq2**2*nkq+3*mgo**2*npg+2*nkq*s-npg
     .      *s-nkq*s1twg+npg*s1twg-nkq*s2g+npg*s2g+nkq*t1+npg*t1+npq*(-3*mgo
     .      **2+2*msq2**2+s-s1twg-s2g+t1)-nkq*t2+npg*t2-nk2*(3*mgo**2-2*msq2
     .      **2-s+s1twg+s2g-t1+t2)+nk1*(9*mgo**2-6*msq2**2-s+3*(s1twg+s2g
     .      -t1+t2)))))/(npg*(mgo**2-t1)**2*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)
     .      *(mgo**2-s+s1twg-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M5u = 
     .      (-4*mgo**2*(-2*mgo**4*nkq+2*mgo**2*msq2**2*nkq+2*mgo**4*npg+2
     .      *mgo**2*msq2**2*npg-4*msq2**4*npg+3*mgo**2*nkq*s-2*msq2**2*nkq
     .      *s-mgo**2*npg*s+msq2**2*npg*s-nkq*s**2-mgo**2*nkq*s1twg+mgo**2
     .      *npg*s1twg+2*msq2**2*npg*s1twg+nkq*s*s1twg-3*mgo**2*nkq*s2g+2
     .      *msq2**2*nkq*s2g+3*mgo**2*npg*s2g+2*nkq*s*s2g-npg*s*s2g-nkq*s1twg
     .      *s2g+npg*s1twg*s2g-nkq*s2g**2+npg*s2g**2-npq*(2*mgo**2-2*msq2
     .      **2+s1twg+s2g)*(mgo**2-s+s2g-t1)+2*mgo**2*nkq*t1-2*msq2**2*nkq
     .      *t1+2*mgo**2*npg*t1-2*msq2**2*npg*t1-nkq*s*t1+nkq*s1twg*t1+npg
     .      *s1twg*t1+nkq*s2g*t1+npg*s2g*t1-mgo**2*nkq*t2+mgo**2*npg*t2+3
     .      *msq2**2*npg*t2+nkq*s*t2-npg*s*t2-nkq*s2g*t2+npg*s2g*t2+nkq*t1
     .      *t2+nk1*(3*mgo**2-s+3*s2g-3*t1)*(2*mgo**2-2*msq2**2+s1twg+s2g
     .      +t2)-nk2*(mgo**2-s+s2g-t1)*(2*mgo**2-2*msq2**2+s1twg+s2g+t2)))
     .      /(npg*(mgo**2-t1)*(mgo**2-s+s2g-t1)*(mgo**2-s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M2M5u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M5u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
