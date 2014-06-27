ccc colour stripped partial amplitude for M8M9
      real*8 function M8M9()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M8M9 = 
     .      (4*s**2-4*s*s1-8*s*s2g+6*s1*s2g+6*s*t1-6*s1*t1+mgo**2*(-8*s+6
     .      *s1-6*t2)+2*msq2**2*(s-t2)+4*s1*t2-6*s2g*t2+8*t1*t2-4*t2**2)/(s1
     .      *(s-s1+t2)**2)
            else if(deltac1c2.eq.1) then
              M8M9 = 
     .      (4*s**2-4*s*s1-8*s*s2g+6*s1*s2g+6*s*t1-6*s1*t1+mgo**2*(-8*s+6
     .      *s1-6*t2)+2*msq2**2*(s-t2)+4*s1*t2-6*s2g*t2+8*t1*t2-4*t2**2)/(s1
     .      *(s-s1+t2)**2)
            else
              write(*,*) 'Error in M8M9: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M8M9 = 
     .      (2*(-2*mgo**2*nkq*s-2*mgo**2*npg*s+2*msq2**2*npg*s+nkq*s**2+npg
     .      *s**2+2*mgo**2*nkq*s1-nkq*s*s1-npg*s*s1-2*nkq*s*s2g-2*npg*s*s2g
     .      +2*nkq*s1*s2g+2*nkq*s*t1-2*nkq*s1*t1-2*mgo**2*nkq*t2+4*msq2**2
     .      *nkq*t2-2*msq2**2*npg*t2-nkq*s1*t2+npg*s1*t2-2*nkq*s2g*t2-2*nkq
     .      *t1*t2+2*npg*t1*t2+nkq*t2**2-npg*t2**2+npq*(4*msq2**2*s+s**2-s
     .      *s1-2*s*s2g-2*s1*s2g-2*s*t1+2*s1*t1-2*mgo**2*(s+s1-t2)-(s1-2*s2g
     .      +2*t1)*t2+t2**2)-nk1*(s**2-s*s1+t2*(-s1+t2))+nk2*(s**2-s*s1+t2
     .      *(-s1+t2))))/(npg*s1*(s-s1+t2)**2)
            else if(deltac1c2.eq.1) then
              M8M9 = 
     .      (2*(-2*mgo**2*nkq*s-2*mgo**2*npg*s+2*msq2**2*npg*s+nkq*s**2+npg
     .      *s**2+2*mgo**2*nkq*s1-nkq*s*s1-npg*s*s1-2*nkq*s*s2g-2*npg*s*s2g
     .      +2*nkq*s1*s2g+2*nkq*s*t1-2*nkq*s1*t1-2*mgo**2*nkq*t2+4*msq2**2
     .      *nkq*t2-2*msq2**2*npg*t2-nkq*s1*t2+npg*s1*t2-2*nkq*s2g*t2-2*nkq
     .      *t1*t2+2*npg*t1*t2+nkq*t2**2-npg*t2**2+npq*(4*msq2**2*s+s**2-s
     .      *s1-2*s*s2g-2*s1*s2g-2*s*t1+2*s1*t1-2*mgo**2*(s+s1-t2)-(s1-2*s2g
     .      +2*t1)*t2+t2**2)-nk1*(s**2-s*s1+t2*(-s1+t2))+nk2*(s**2-s*s1+t2
     .      *(-s1+t2))))/(npg*s1*(s-s1+t2)**2)
            else
              write(*,*) 'Error in M8M9: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M8M9 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
