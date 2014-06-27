ccc colour stripped partial amplitude for M1M11
      real*8 function M1M11()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M1M11 = 
     .      (4*(4*msq2**4*s1-s*s1*s2g+2*s1**2*s2g+2*s1*s2g**2-s**2*t1-s*s1
     .      *t1+2*s1**2*t1+2*s*s2g*t1-2*s*t1**2+2*s1*t1**2+2*mgo**4*(s1-t2)
     .      +(2*s2g*(-s2g+t1)-s1*(s2g+t1)+s*(s1+s2g+t1))*t2-s2g*t2**2-mgo
     .      **2*(-2*s1*(s1+2*s2g)+2*msq2**2*(s+2*s1-t2)+s*(s1-2*t1-t2)+(s1
     .      +4*s2g-2*t1)*t2+t2**2)+msq2**2*(s**2-4*s1*(s2g+t1)-2*(s1-s2g+t1)
     .      *t2+t2**2-2*s*(s1+s2g-t1+t2))))/(s*s1**2*t2)
            else if(deltac1c2.eq.1) then
              M1M11 = 
     .      (4*(4*msq2**4*s1-s*s1*s2g+2*s1**2*s2g+2*s1*s2g**2-s**2*t1-s*s1
     .      *t1+2*s1**2*t1+2*s*s2g*t1-2*s*t1**2+2*s1*t1**2+2*mgo**4*(s1-t2)
     .      +(2*s2g*(-s2g+t1)-s1*(s2g+t1)+s*(s1+s2g+t1))*t2-s2g*t2**2-mgo
     .      **2*(-2*s1*(s1+2*s2g)+2*msq2**2*(s+2*s1-t2)+s*(s1-2*t1-t2)+(s1
     .      +4*s2g-2*t1)*t2+t2**2)+msq2**2*(s**2-4*s1*(s2g+t1)-2*(s1-s2g+t1)
     .      *t2+t2**2-2*s*(s1+s2g-t1+t2))))/(s*s1**2*t2)
            else
              write(*,*) 'Error in M1M11: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M1M11 = 
     .      (2*(-4*mgo**2*msq2**2*nkq*s+8*msq2**4*nkq*s-4*msq2**4*npg*s-2
     .      *msq2**2*nkq*s**2+4*msq2**2*npg*s**2+4*mgo**4*npg*s1-8*mgo**2
     .      *msq2**2*npg*s1+8*msq2**4*npg*s1+2*mgo**2*nkq*s*s1-4*mgo**2*npg
     .      *s*s1-4*msq2**2*npg*s*s1+4*mgo**2*npg*s1**2-4*msq2**2*nkq*s*s2g
     .      +8*mgo**2*npg*s1*s2g-8*msq2**2*npg*s1*s2g+2*nkq*s*s1*s2g-4*npg
     .      *s*s1*s2g+4*npg*s1**2*s2g+4*npg*s1*s2g**2+4*mgo**2*nkq*s*t1-12
     .      *msq2**2*nkq*s*t1+8*msq2**2*npg*s*t1-2*nkq*s**2*t1-8*msq2**2*npg
     .      *s1*t1+6*nkq*s*s1*t1-4*npg*s*s1*t1+4*npg*s1**2*t1+4*nkq*s*s2g
     .      *t1+4*nkq*s*t1**2-4*npg*s*t1**2+4*npg*s1*t1**2-4*mgo**4*npg*t2
     .      +8*mgo**2*msq2**2*npg*t2-4*msq2**4*npg*t2-2*mgo**2*nkq*s*t2-6
     .      *msq2**2*nkq*s*t2+4*mgo**2*npg*s*t2+nkq*s**2*t2-npg*s**2*t2-4
     .      *mgo**2*npg*s1*t2-4*msq2**2*npg*s1*t2+2*npg*s*s1*t2-8*mgo**2*npg
     .      *s2g*t2+8*msq2**2*npg*s2g*t2-2*nkq*s*s2g*t2+4*npg*s*s2g*t2-4*npg
     .      *s1*s2g*t2-4*npg*s2g**2*t2-4*nkq*s*t1*t2+4*npg*s*t1*t2-4*npg*s1
     .      *t1*t2+nk1*s*(-2*mgo**2+s-2*s2g+2*t1-t2)*t2+4*msq2**2*npg*t2*
     .      *2+nkq*s*t2**2-npg*s*t2**2+nk2*s*t2*(2*mgo**2-s+2*s2g-2*t1+t2)
     .      -npq*t2*(4*mgo**4+8*msq2**4+s**2-4*s*s2g+6*s1*s2g+4*s2g**2-2*s
     .      *t1+2*s1*t1+4*s2g*t1+s*t2-2*s2g*t2-2*mgo**2*(6*msq2**2+2*s-3*s1
     .      -4*s2g-2*t1+t2)-2*msq2**2*(3*s+6*s2g+2*t1+t2))))/(npg*s*s1**2
     .      *t2)
            else if(deltac1c2.eq.1) then
              M1M11 = 
     .      (2*(-4*mgo**2*msq2**2*nkq*s+8*msq2**4*nkq*s-4*msq2**4*npg*s-2
     .      *msq2**2*nkq*s**2+4*msq2**2*npg*s**2+4*mgo**4*npg*s1-8*mgo**2
     .      *msq2**2*npg*s1+8*msq2**4*npg*s1+2*mgo**2*nkq*s*s1-4*mgo**2*npg
     .      *s*s1-4*msq2**2*npg*s*s1+4*mgo**2*npg*s1**2-4*msq2**2*nkq*s*s2g
     .      +8*mgo**2*npg*s1*s2g-8*msq2**2*npg*s1*s2g+2*nkq*s*s1*s2g-4*npg
     .      *s*s1*s2g+4*npg*s1**2*s2g+4*npg*s1*s2g**2+4*mgo**2*nkq*s*t1-12
     .      *msq2**2*nkq*s*t1+8*msq2**2*npg*s*t1-2*nkq*s**2*t1-8*msq2**2*npg
     .      *s1*t1+6*nkq*s*s1*t1-4*npg*s*s1*t1+4*npg*s1**2*t1+4*nkq*s*s2g
     .      *t1+4*nkq*s*t1**2-4*npg*s*t1**2+4*npg*s1*t1**2-4*mgo**4*npg*t2
     .      +8*mgo**2*msq2**2*npg*t2-4*msq2**4*npg*t2-2*mgo**2*nkq*s*t2-6
     .      *msq2**2*nkq*s*t2+4*mgo**2*npg*s*t2+nkq*s**2*t2-npg*s**2*t2-4
     .      *mgo**2*npg*s1*t2-4*msq2**2*npg*s1*t2+2*npg*s*s1*t2-8*mgo**2*npg
     .      *s2g*t2+8*msq2**2*npg*s2g*t2-2*nkq*s*s2g*t2+4*npg*s*s2g*t2-4*npg
     .      *s1*s2g*t2-4*npg*s2g**2*t2-4*nkq*s*t1*t2+4*npg*s*t1*t2-4*npg*s1
     .      *t1*t2+nk1*s*(-2*mgo**2+s-2*s2g+2*t1-t2)*t2+4*msq2**2*npg*t2*
     .      *2+nkq*s*t2**2-npg*s*t2**2+nk2*s*t2*(2*mgo**2-s+2*s2g-2*t1+t2)
     .      -npq*t2*(4*mgo**4+8*msq2**4+s**2-4*s*s2g+6*s1*s2g+4*s2g**2-2*s
     .      *t1+2*s1*t1+4*s2g*t1+s*t2-2*s2g*t2-2*mgo**2*(6*msq2**2+2*s-3*s1
     .      -4*s2g-2*t1+t2)-2*msq2**2*(3*s+6*s2g+2*t1+t2))))/(npg*s*s1**2
     .      *t2)
            else
              write(*,*) 'Error in M1M11: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M1M11 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
