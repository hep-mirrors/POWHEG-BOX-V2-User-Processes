ccc colour stripped partial amplitude for M2M4u
      real*8 function M2M4u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M2M4u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M2M4u = 
     .      (4*mgo**2*(2*mgo**4+4*msq2**4+s1twg*t1+msq2**2*(s-2*(s1twg+t1)
     .      -t2)+s*t2+mgo**2*(-6*msq2**2-s+s1twg+2*t1+t2)))/((-mgo**2+t1)
     .      *t2*(mgo**2-s+s1twg-t1+t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M2M4u = 
     .      (-4*mgo**2*(mgo**4-4*msq2**4+s**2-2*s*s1twg+s1twg**2-s*s2g+s1twg
     .      *s2g-s1twg*t1-s2g*t1-t1**2+msq2**2*(3*s-2*s1twg+6*t1-3*t2)-3*s
     .      *t2+2*s1twg*t2+s2g*t2+t2**2+mgo**2*(2*msq2**2-3*s+3*s1twg+s2g
     .      -4*t1+3*t2)))/((mgo**2-t1)*t2*(mgo**2-s+s1twg-t1+t2)*(mgo**2-s
     .      +s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M4u = 
     .      (4*mgo**2*(2*mgo**4+4*msq2**4-s*s2g+s1twg*s2g+s2g**2+s1twg*t1
     .      +s2g*t1+msq2**2*(s-2*(s1twg+2*s2g+t1)-t2)+(s+s2g)*t2+mgo**2*(
     .      -6*msq2**2-s+s1twg+3*s2g+2*t1+t2)))/((-mgo**2+t1)*t2*(mgo**2-s
     .      +s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M2M4u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M2M4u = 
     .      (4*mgo**2*(-4*mgo**4*nkq+4*mgo**2*msq2**2*nkq+4*mgo**4*npg-8*mgo
     .      **2*msq2**2*npg+4*msq2**4*npg+mgo**2*nkq*s-mgo**2*npg*s+msq2*
     .      *2*npg*s-2*mgo**2*nkq*s1twg+2*mgo**2*npg*s1twg-2*msq2**2*npg*s1twg
     .      +4*mgo**2*nkq*t1-4*msq2**2*nkq*t1-nkq*s*t1+2*nkq*s1twg*t1-2*msq2
     .      **2*nkq*t2+2*mgo**2*npg*t2-msq2**2*npg*t2+nkq*s1twg*t2+npq*(3
     .      *mgo**2-2*msq2**2-s+s1twg-t1)*t2+2*nkq*t1*t2-npg*t1*t2+nkq*t2
     .      **2-nk1*t2*(2*mgo**2-2*msq2**2-s+s1twg+t2)+nk2*t2*(2*mgo**2-2
     .      *msq2**2+s+s1twg+t2)))/(npg*(-mgo**2+t1)*t2*(mgo**2-s+s1twg-t1
     .      +t2))
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M2M4u = 
     .      (4*mgo**2*(-mgo**2+t1)*(4*mgo**4*nkq-4*mgo**2*msq2**2*nkq-4*mgo
     .      **4*npg+8*mgo**2*msq2**2*npg-4*msq2**4*npg-mgo**2*nkq*s+mgo**2
     .      *npg*s-msq2**2*npg*s+2*mgo**2*nkq*s1twg-2*mgo**2*npg*s1twg+2*msq2
     .      **2*npg*s1twg-4*mgo**2*nkq*t1+4*msq2**2*nkq*t1+nkq*s*t1-2*nkq
     .      *s1twg*t1+2*msq2**2*nkq*t2-2*mgo**2*npg*t2+msq2**2*npg*t2-nkq
     .      *s1twg*t2-2*nkq*t1*t2+npg*t1*t2+npq*(-3*mgo**2+2*msq2**2+s-s1twg
     .      +t1)*t2-nkq*t2**2+nk1*t2*(2*mgo**2-2*msq2**2-s+s1twg+t2)-nk2*t2
     .      *(2*mgo**2-2*msq2**2+s+s1twg+t2)-(mgo**2-s+s1twg-t1+t2)*(npg*(
     .      -6*mgo**2+6*msq2**2+s-2*(s1twg+s2g))+nkq*(6*mgo**2-4*msq2**2-s
     .      +2*(s1twg+s2g-t1))+(nk1-nk2+nkq-2*(npg+npq))*t2)))/(npg*(mgo*
     .      *2-t1)**2*t2*(mgo**2-s+s1twg-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M4u = 
     .      (4*mgo**2*(-4*mgo**4*nkq+4*mgo**2*msq2**2*nkq+4*mgo**4*npg-8*mgo
     .      **2*msq2**2*npg+4*msq2**4*npg+mgo**2*nkq*s-mgo**2*npg*s+msq2*
     .      *2*npg*s-2*mgo**2*nkq*s1twg+2*mgo**2*npg*s1twg-2*msq2**2*npg*s1twg
     .      -6*mgo**2*nkq*s2g+4*msq2**2*nkq*s2g+6*mgo**2*npg*s2g-6*msq2**2
     .      *npg*s2g+nkq*s*s2g-npg*s*s2g-2*nkq*s1twg*s2g+2*npg*s1twg*s2g-2
     .      *nkq*s2g**2+2*npg*s2g**2+4*mgo**2*nkq*t1-4*msq2**2*nkq*t1-nkq
     .      *s*t1+2*nkq*s1twg*t1+2*nkq*s2g*t1-2*msq2**2*nkq*t2+2*mgo**2*npg
     .      *t2-msq2**2*npg*t2+nkq*s1twg*t2-nkq*s2g*t2+2*npg*s2g*t2+npq*(3
     .      *mgo**2-2*msq2**2-s+s1twg+2*s2g-t1)*t2+2*nkq*t1*t2-npg*t1*t2+nkq
     .      *t2**2-nk1*t2*(2*mgo**2-2*msq2**2-s+s1twg+s2g+t2)+nk2*t2*(2*mgo
     .      **2-2*msq2**2+s+s1twg+s2g+t2)))/(npg*(-mgo**2+t1)*t2*(mgo**2-s
     .      +s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M2M4u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M4u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
