ccc colour stripped partial amplitude for M4M8
      real*8 function M4M8()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M4M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M4M8 = 
     .      -((2*(4*msq2**4*s1-s**2*t1+msq2**2*(s**2-2*s*(s1+s2g-t1)-4*s1
     .      *(s2g+t1))+2*s1*(s2g**2+t1**2+s1*(s2g+t1))-s*(2*t1*(-s2g+t1)+s1
     .      *(s2g+t1)))+4*mgo**4*(s1-t2)-(4*msq2**4+2*s**2+3*s1*s2g+4*s2g
     .      **2+msq2**2*(7*s+4*s1-8*t1)+5*s1*t1-8*s2g*t1+8*t1**2+s*(-4*s1
     .      -6*s2g+3*t1))*t2+(msq2**2+s-s2g+4*t1)*t2**2-mgo**2*(4*msq2**2
     .      *(s+2*s1)-4*s1*(s1+2*s2g)+2*s*(s1-2*t1-3*t2)+(3*s1+8*s2g-8*t1)
     .      *t2+t2**2))/(s1*(mgo**2-t1)*t2*(s-s1+t2)))
            else
              write(*,*) 'Error in M4M8: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M4M8 = 
     .      0
            else if(deltac1c2.eq.1) then
              M4M8 = 
     .      -((-4*mgo**2*msq2**2*nkq*s+8*msq2**4*nkq*s-4*msq2**4*npg*s-msq2
     .      **2*nkq*s**2+3*msq2**2*npg*s**2+4*mgo**4*npg*s1-8*mgo**2*msq2
     .      **2*npg*s1+8*msq2**4*npg*s1+mgo**2*nkq*s*s1-3*mgo**2*npg*s*s1
     .      -4*msq2**2*npg*s*s1+4*mgo**2*npg*s1**2-4*msq2**2*nkq*s*s2g+8*mgo
     .      **2*npg*s1*s2g-8*msq2**2*npg*s1*s2g+nkq*s*s1*s2g-3*npg*s*s1*s2g
     .      +4*npg*s1**2*s2g+4*npg*s1*s2g**2+4*mgo**2*nkq*s*t1-12*msq2**2
     .      *nkq*s*t1+8*msq2**2*npg*s*t1-3*nkq*s**2*t1+npg*s**2*t1-8*msq2
     .      **2*npg*s1*t1+7*nkq*s*s1*t1-5*npg*s*s1*t1+4*npg*s1**2*t1+4*nkq
     .      *s*s2g*t1+4*nkq*s*t1**2-4*npg*s*t1**2+4*npg*s1*t1**2-8*mgo**2
     .      *msq2**2*nkq*t2+16*msq2**4*nkq*t2-4*mgo**4*npg*t2+8*mgo**2*msq2
     .      **2*npg*t2-12*msq2**4*npg*t2-mgo**2*nkq*s*t2-10*msq2**2*nkq*s
     .      *t2+7*mgo**2*npg*s*t2-2*msq2**2*npg*s*t2+nkq*s**2*t2-3*npg*s*
     .      *2*t2+3*mgo**2*nkq*s1*t2-5*mgo**2*npg*s1*t2-4*msq2**2*npg*s1*t2
     .      +4*npg*s*s1*t2-8*msq2**2*nkq*s2g*t2-8*mgo**2*npg*s2g*t2+8*msq2
     .      **2*npg*s2g*t2-nkq*s*s2g*t2+7*npg*s*s2g*t2+3*nkq*s1*s2g*t2-5*npg
     .      *s1*s2g*t2-4*npg*s2g**2*t2+8*mgo**2*nkq*t1*t2-24*msq2**2*nkq*t1
     .      *t2+16*msq2**2*npg*t1*t2-9*nkq*s*t1*t2+3*npg*s*t1*t2+13*nkq*s1
     .      *t1*t2-11*npg*s1*t1*t2+8*nkq*s2g*t1*t2+8*nkq*t1**2*t2-8*npg*t1
     .      **2*t2-3*mgo**2*nkq*t2**2-9*msq2**2*nkq*t2**2+mgo**2*npg*t2**2
     .      +7*msq2**2*npg*t2**2+3*nkq*s*t2**2-npg*s*t2**2-3*nkq*s2g*t2**2
     .      +npg*s2g*t2**2-4*nkq*t1*t2**2+4*npg*t1*t2**2+nk2*(s*(msq2**2*s
     .      -s1*(mgo**2+s2g)+(-s+s1)*t1)+(-s**2+mgo**2*(s+s1)+s*s2g+s1*s2g
     .      -(s+s1)*t1)*t2-(mgo**2-3*msq2**2-s+s2g+2*t1)*t2**2)+nk1*(s*(msq2
     .      **2*s-s1*(mgo**2+s2g)+(-s+s1)*t1)+(3*s**2+mgo**2*(-3*s+s1)+s1
     .      *(s2g-t1)+s*(-2*s1-3*s2g+3*t1))*t2-(mgo**2+5*msq2**2+s-2*s1+s2g
     .      -6*t1)*t2**2-2*t2**3)+npq*(s*s1*(mgo**2+s2g)+s*(s-s1)*t1-8*msq2
     .      **4*t2-(4*mgo**4+3*s**2+5*s1*s2g+4*s2g**2+3*s1*t1+4*s2g*t1-s*(2
     .      *s1+7*s2g+3*t1)+mgo**2*(-7*s+5*s1+8*s2g+4*t1))*t2+(mgo**2-s-2
     .      *s1+s2g)*t2**2+msq2**2*(-s**2+2*s*t2+t2*(4*(3*(mgo**2+s2g)+t1)
     .      +11*t2))))/(npg*s1*(mgo**2-t1)*t2*(s-s1+t2)))
            else
              write(*,*) 'Error in M4M8: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M4M8 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
