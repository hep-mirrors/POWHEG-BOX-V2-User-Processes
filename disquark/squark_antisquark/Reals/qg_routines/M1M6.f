ccc colour stripped partial amplitude for M1M6
      real*8 function M1M6()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M1M6 = 
     .      (2*(-8*msq2**6+s*s1*s2g+4*s1*s2g**2+s**2*t1-s*s1*t1-4*s*s2g*t1
     .      +4*s1*s2g*t1+8*s2g**2*t1+8*msq2**4*(s+2*s2g+t1)+4*mgo**4*(-2*msq2
     .      **2+s1+2*t1-t2)-(s**2-3*s*s2g+4*s2g**2)*t2+mgo**2*(16*msq2**4
     .      +s*s1+8*s1*s2g-4*s*t1+4*s1*t1+16*s2g*t1-4*msq2**2*(s+2*s1+4*(s2g
     .      +t1)-t2)+3*s*t2-8*s2g*t2)-msq2**2*(s**2+8*s2g*(s1+s2g+2*t1)+s
     .      *(4*s2g-t2)-4*s2g*t2)))/(s*s1*(-mgo**2+s-s2g+t1)*(s-s1+t2))
            else if(deltac1c2.eq.1) then
              M1M6 = 
     .      (2*(-8*msq2**6+s*s1*s2g+4*s1*s2g**2+s**2*t1-s*s1*t1-4*s*s2g*t1
     .      +4*s1*s2g*t1+8*s2g**2*t1+8*msq2**4*(s+2*s2g+t1)+4*mgo**4*(-2*msq2
     .      **2+s1+2*t1-t2)-(s**2-3*s*s2g+4*s2g**2)*t2+mgo**2*(16*msq2**4
     .      +s*s1+8*s1*s2g-4*s*t1+4*s1*t1+16*s2g*t1-4*msq2**2*(s+2*s1+4*(s2g
     .      +t1)-t2)+3*s*t2-8*s2g*t2)-msq2**2*(s**2+8*s2g*(s1+s2g+2*t1)+s
     .      *(4*s2g-t2)-4*s2g*t2)))/(s*s1*(-mgo**2+s-s2g+t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M1M6: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M1M6 = 
     .      (2*(-4*mgo**4*msq2**2*npg+12*mgo**2*msq2**4*npg-8*msq2**6*npg
     .      -5*mgo**2*msq2**2*nkq*s-mgo**2*msq2**2*npg*s+8*msq2**4*npg*s+5
     .      *msq2**2*nkq*s**2-msq2**2*npg*s**2-mgo**4*nkq*s1+mgo**4*npg*s1
     .      -8*mgo**2*msq2**2*npg*s1+3*mgo**2*nkq*s*s1+mgo**2*npg*s*s1-2*nkq
     .      *s**2*s1-8*mgo**2*msq2**2*npg*s2g+12*msq2**4*npg*s2g-5*msq2**2
     .      *nkq*s*s2g-msq2**2*npg*s*s2g-2*mgo**2*nkq*s1*s2g+2*mgo**2*npg
     .      *s1*s2g-8*msq2**2*npg*s1*s2g+3*nkq*s*s1*s2g+npg*s*s1*s2g-4*msq2
     .      **2*npg*s2g**2-nkq*s1*s2g**2+npg*s1*s2g**2+4*mgo**4*npg*t1-16
     .      *mgo**2*msq2**2*npg*t1+12*msq2**4*npg*t1+mgo**2*nkq*s*t1+5*msq2
     .      **2*nkq*s*t1-3*mgo**2*npg*s*t1-3*msq2**2*npg*s*t1-nkq*s**2*t1
     .      +npg*s**2*t1+2*mgo**2*nkq*s1*t1+6*mgo**2*npg*s1*t1-3*nkq*s*s1
     .      *t1-npg*s*s1*t1+8*mgo**2*npg*s2g*t1-16*msq2**2*npg*s2g*t1+nkq
     .      *s*s2g*t1-3*npg*s*s2g*t1+2*nkq*s1*s2g*t1+6*npg*s1*s2g*t1+4*npg
     .      *s2g**2*t1+4*mgo**2*npg*t1**2-4*msq2**2*npg*t1**2-nkq*s*t1**2
     .      -npg*s*t1**2-nkq*s1*t1**2+npg*s1*t1**2+4*npg*s2g*t1**2+mgo**4
     .      *nkq*t2-mgo**2*msq2**2*nkq*t2-mgo**4*npg*t2+5*mgo**2*msq2**2*npg
     .      *t2-2*mgo**2*nkq*s*t2+msq2**2*nkq*s*t2+2*mgo**2*npg*s*t2+msq2
     .      **2*npg*s*t2+nkq*s**2*t2-npg*s**2*t2+2*mgo**2*nkq*s2g*t2-msq2
     .      **2*nkq*s2g*t2-2*mgo**2*npg*s2g*t2+5*msq2**2*npg*s2g*t2-2*nkq
     .      *s*s2g*t2+2*npg*s*s2g*t2+nkq*s2g**2*t2-npg*s2g**2*t2-mgo**2*nkq
     .      *t1*t2+msq2**2*nkq*t1*t2-3*mgo**2*npg*t1*t2-msq2**2*npg*t1*t2
     .      +nkq*s*t1*t2+npg*s*t1*t2-nkq*s2g*t1*t2-3*npg*s2g*t1*t2+nk2*(mgo
     .      **2-s+s2g-t1)*(-2*s**2+2*s*s1+4*s*s2g-s1*s2g-s*t1+s1*t1-s*t2+s2g
     .      *t2-msq2**2*(3*s+t2)+mgo**2*(4*s-s1+t2))-npq*(mgo**2-s+s2g-t1)
     .      *(4*mgo**4+8*msq2**4-2*s*s2g+7*s1*s2g+4*s2g**2-s*t1+s1*t1+4*s2g
     .      *t1+mgo**2*(-12*msq2**2-2*s+7*s1+8*s2g+4*t1-3*t2)+s*t2-3*s2g*t2
     .      -msq2**2*(5*s+12*s2g+4*t1+t2))-nk1*(-8*msq2**4*s-7*s*s1*s2g+s1
     .      *s2g**2+s**2*t1-s*s1*t1-7*s*s2g*t1-2*s1*s2g*t1-s*t1**2+s1*t1*
     .      *2+mgo**4*(s1-t2)+(-s**2+s2g*(-s2g+t1)+s*(6*s2g+t1))*t2+msq2*
     .      *2*(7*s*(s+s2g)+9*s*t1+(s+s2g-t1)*t2)+mgo**2*(2*s1*s2g-2*s1*t1
     .      -7*s*(s1+t1)+6*s*t2-2*s2g*t2+t1*t2+msq2**2*(7*s+t2)))))/(npg*s
     .      *s1*(-mgo**2+s-s2g+t1)*(s-s1+t2))
            else if(deltac1c2.eq.1) then
              M1M6 = 
     .      (2*(-4*mgo**4*msq2**2*npg+12*mgo**2*msq2**4*npg-8*msq2**6*npg
     .      -5*mgo**2*msq2**2*nkq*s-mgo**2*msq2**2*npg*s+8*msq2**4*npg*s+5
     .      *msq2**2*nkq*s**2-msq2**2*npg*s**2-mgo**4*nkq*s1+mgo**4*npg*s1
     .      -8*mgo**2*msq2**2*npg*s1+3*mgo**2*nkq*s*s1+mgo**2*npg*s*s1-2*nkq
     .      *s**2*s1-8*mgo**2*msq2**2*npg*s2g+12*msq2**4*npg*s2g-5*msq2**2
     .      *nkq*s*s2g-msq2**2*npg*s*s2g-2*mgo**2*nkq*s1*s2g+2*mgo**2*npg
     .      *s1*s2g-8*msq2**2*npg*s1*s2g+3*nkq*s*s1*s2g+npg*s*s1*s2g-4*msq2
     .      **2*npg*s2g**2-nkq*s1*s2g**2+npg*s1*s2g**2+4*mgo**4*npg*t1-16
     .      *mgo**2*msq2**2*npg*t1+12*msq2**4*npg*t1+mgo**2*nkq*s*t1+5*msq2
     .      **2*nkq*s*t1-3*mgo**2*npg*s*t1-3*msq2**2*npg*s*t1-nkq*s**2*t1
     .      +npg*s**2*t1+2*mgo**2*nkq*s1*t1+6*mgo**2*npg*s1*t1-3*nkq*s*s1
     .      *t1-npg*s*s1*t1+8*mgo**2*npg*s2g*t1-16*msq2**2*npg*s2g*t1+nkq
     .      *s*s2g*t1-3*npg*s*s2g*t1+2*nkq*s1*s2g*t1+6*npg*s1*s2g*t1+4*npg
     .      *s2g**2*t1+4*mgo**2*npg*t1**2-4*msq2**2*npg*t1**2-nkq*s*t1**2
     .      -npg*s*t1**2-nkq*s1*t1**2+npg*s1*t1**2+4*npg*s2g*t1**2+mgo**4
     .      *nkq*t2-mgo**2*msq2**2*nkq*t2-mgo**4*npg*t2+5*mgo**2*msq2**2*npg
     .      *t2-2*mgo**2*nkq*s*t2+msq2**2*nkq*s*t2+2*mgo**2*npg*s*t2+msq2
     .      **2*npg*s*t2+nkq*s**2*t2-npg*s**2*t2+2*mgo**2*nkq*s2g*t2-msq2
     .      **2*nkq*s2g*t2-2*mgo**2*npg*s2g*t2+5*msq2**2*npg*s2g*t2-2*nkq
     .      *s*s2g*t2+2*npg*s*s2g*t2+nkq*s2g**2*t2-npg*s2g**2*t2-mgo**2*nkq
     .      *t1*t2+msq2**2*nkq*t1*t2-3*mgo**2*npg*t1*t2-msq2**2*npg*t1*t2
     .      +nkq*s*t1*t2+npg*s*t1*t2-nkq*s2g*t1*t2-3*npg*s2g*t1*t2+nk2*(mgo
     .      **2-s+s2g-t1)*(-2*s**2+2*s*s1+4*s*s2g-s1*s2g-s*t1+s1*t1-s*t2+s2g
     .      *t2-msq2**2*(3*s+t2)+mgo**2*(4*s-s1+t2))-npq*(mgo**2-s+s2g-t1)
     .      *(4*mgo**4+8*msq2**4-2*s*s2g+7*s1*s2g+4*s2g**2-s*t1+s1*t1+4*s2g
     .      *t1+mgo**2*(-12*msq2**2-2*s+7*s1+8*s2g+4*t1-3*t2)+s*t2-3*s2g*t2
     .      -msq2**2*(5*s+12*s2g+4*t1+t2))-nk1*(-8*msq2**4*s-7*s*s1*s2g+s1
     .      *s2g**2+s**2*t1-s*s1*t1-7*s*s2g*t1-2*s1*s2g*t1-s*t1**2+s1*t1*
     .      *2+mgo**4*(s1-t2)+(-s**2+s2g*(-s2g+t1)+s*(6*s2g+t1))*t2+msq2*
     .      *2*(7*s*(s+s2g)+9*s*t1+(s+s2g-t1)*t2)+mgo**2*(2*s1*s2g-2*s1*t1
     .      -7*s*(s1+t1)+6*s*t2-2*s2g*t2+t1*t2+msq2**2*(7*s+t2)))))/(npg*s
     .      *s1*(-mgo**2+s-s2g+t1)*(s-s1+t2))
            else
              write(*,*) 'Error in M1M6: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M1M6 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
