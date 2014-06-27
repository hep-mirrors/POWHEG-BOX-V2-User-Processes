ccc colour stripped partial amplitude for M6M8
      real*8 function M6M8()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M6M8 = 
     .      (2*(-4*s*s1*s2g+4*s1**2*s2g-s1*s2g**2-4*s*s1*t1+4*s1**2*t1-s*s2g
     .      *t1+6*s1*s2g*t1-4*s2g**2*t1-3*s*t1**2+3*s1*t1**2+4*s2g*t1**2+4
     .      *msq2**4*(-3*s+2*s1-s2g+t1)+(s2g*(s2g-9*t1)-3*s1*(3*s2g+t1)+s
     .      *(4*s1+s2g+6*t1))*t2+(-3*s+5*s2g)*t2**2+mgo**4*(4*msq2**2-s1-4
     .      *t1+t2)+mgo**2*(-4*msq2**4-4*s*s1+4*s1**2-2*s1*s2g-s*t1+6*s1*t1
     .      -8*s2g*t1+4*t1**2+(s-9*s1+2*s2g-9*t1)*t2+5*t2**2+msq2**2*(5*s
     .      +8*s2g+3*t2))+msq2**2*(4*s**2+4*s2g**2+s*(-4*s1+5*s2g+11*t1-3
     .      *t2)+3*s2g*t2+t2*(5*t1+3*t2)-4*(t1**2+s1*(4*t1+t2)))))/(s1*(mgo
     .      **2-s+s2g-t1)*(s-s1+t2)**2)
            else if(deltac1c2.eq.1) then
              M6M8 = 
     .      (2*(-4*s*s1*s2g+4*s1**2*s2g-s1*s2g**2-4*s*s1*t1+4*s1**2*t1-s*s2g
     .      *t1+6*s1*s2g*t1-4*s2g**2*t1-3*s*t1**2+3*s1*t1**2+4*s2g*t1**2+4
     .      *msq2**4*(-3*s+2*s1-s2g+t1)+(s2g*(s2g-9*t1)-3*s1*(3*s2g+t1)+s
     .      *(4*s1+s2g+6*t1))*t2+(-3*s+5*s2g)*t2**2+mgo**4*(4*msq2**2-s1-4
     .      *t1+t2)+mgo**2*(-4*msq2**4-4*s*s1+4*s1**2-2*s1*s2g-s*t1+6*s1*t1
     .      -8*s2g*t1+4*t1**2+(s-9*s1+2*s2g-9*t1)*t2+5*t2**2+msq2**2*(5*s
     .      +8*s2g+3*t2))+msq2**2*(4*s**2+4*s2g**2+s*(-4*s1+5*s2g+11*t1-3
     .      *t2)+3*s2g*t2+t2*(5*t1+3*t2)-4*(t1**2+s1*(4*t1+t2)))))/(s1*(mgo
     .      **2-s+s2g-t1)*(s-s1+t2)**2)
            else
              write(*,*) 'Error in M6M8: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M6M8 = 
     .      (4*(2*mgo**4*msq2**2*nkq-4*mgo**2*msq2**4*nkq+2*mgo**2*msq2**2
     .      *nkq*s+4*msq2**4*nkq*s+mgo**2*msq2**2*npg*s-6*msq2**4*npg*s-4
     .      *msq2**2*nkq*s**2+2*msq2**2*npg*s**2-mgo**4*nkq*s1+mgo**4*npg
     .      *s1+4*msq2**4*npg*s1-2*mgo**2*npg*s*s1-2*msq2**2*npg*s*s1+nkq
     .      *s**2*s1+2*mgo**2*npg*s1**2+4*mgo**2*msq2**2*nkq*s2g-4*msq2**4
     .      *nkq*s2g+2*msq2**2*nkq*s*s2g+msq2**2*npg*s*s2g-2*mgo**2*nkq*s1
     .      *s2g+2*mgo**2*npg*s1*s2g-2*npg*s*s1*s2g+2*npg*s1**2*s2g+2*msq2
     .      **2*nkq*s2g**2-nkq*s1*s2g**2+npg*s1*s2g**2-2*mgo**4*nkq*t1+4*mgo
     .      **2*msq2**2*nkq*t1+4*msq2**4*nkq*t1+2*mgo**2*nkq*s*t1-10*msq2
     .      **2*nkq*s*t1-mgo**2*npg*s*t1+7*msq2**2*npg*s*t1-2*mgo**2*nkq*s1
     .      *t1+2*mgo**2*npg*s1*t1-8*msq2**2*npg*s1*t1+4*nkq*s*s1*t1-2*npg
     .      *s*s1*t1+2*npg*s1**2*t1-4*mgo**2*nkq*s2g*t1+4*msq2**2*nkq*s2g
     .      *t1+2*nkq*s*s2g*t1-npg*s*s2g*t1-2*nkq*s1*s2g*t1+2*npg*s1*s2g*t1
     .      -2*nkq*s2g**2*t1-6*msq2**2*nkq*t1**2+2*nkq*s*t1**2-npg*s*t1**2
     .      +3*nkq*s1*t1**2+npg*s1*t1**2+2*nkq*t1**3+mgo**4*nkq*t2-mgo**4
     .      *npg*t2-mgo**2*msq2**2*npg*t2+2*msq2**4*npg*t2-mgo**2*nkq*s*t2
     .      +mgo**2*npg*s*t2-3*msq2**2*npg*s*t2+mgo**2*nkq*s1*t2-3*mgo**2
     .      *npg*s1*t2-2*msq2**2*npg*s1*t2-nkq*s*s1*t2+2*npg*s*s1*t2+2*mgo
     .      **2*nkq*s2g*t2-2*mgo**2*npg*s2g*t2-msq2**2*npg*s2g*t2-nkq*s*s2g
     .      *t2+npg*s*s2g*t2+nkq*s1*s2g*t2-3*npg*s1*s2g*t2+nkq*s2g**2*t2-npg
     .      *s2g**2*t2+2*mgo**2*nkq*t1*t2-mgo**2*npg*t1*t2+msq2**2*npg*t1
     .      *t2-3*nkq*s*t1*t2+2*npg*s*t1*t2-nkq*s1*t1*t2-npg*s1*t1*t2+2*nkq
     .      *s2g*t1*t2-npg*s2g*t1*t2-3*nkq*t1**2*t2-mgo**2*nkq*t2**2+mgo*
     .      *2*npg*t2**2+msq2**2*npg*t2**2+nkq*s*t2**2-npg*s*t2**2-nkq*s2g
     .      *t2**2+npg*s2g*t2**2+nkq*t1*t2**2-nk2*(mgo**2-s+s2g-t1)*(-s**2
     .      +s*s1+2*s*s2g-s1*s2g-s*t1+s1*t1-(s+s1-s2g+2*t1)*t2+t2**2+msq2
     .      **2*(-s+t2)+mgo**2*(2*s-s1+t2))+npq*(mgo**2-s+s2g-t1)*(2*mgo*
     .      *4+4*msq2**4-s*s2g+3*s1*s2g+2*s2g**2-s*t1+s1*t1+2*s2g*t1+s*t2
     .      -2*s2g*t2-2*msq2**2*(s+3*s2g+t1+t2)-mgo**2*(6*msq2**2+s-3*s1-4
     .      *s2g-2*t1+2*t2))+nk1*(-4*s*s1*s2g+s1*s2g**2-3*s*s2g*t1-2*s1*s2g
     .      *t1-s*t1**2+s1*t1**2+mgo**4*(s1-t2)-(-3*s*s2g+3*s1*s2g+s2g**2
     .      -2*s*t1+s1*t1+3*s2g*t1)*t2-(s-3*s2g)*t2**2-4*msq2**4*(s+t2)+msq2
     .      **2*(4*s**2+t2*(5*s2g+3*t1+t2)+s*(3*s2g+5*t1+3*t2))+mgo**2*(-4
     .      *s*s1+2*s1*s2g-3*s*t1-2*s1*t1+(3*s-3*s1-2*s2g-3*t1)*t2+3*t2**2
     .      +msq2**2*(3*s+5*t2)))))/(npg*s1*(mgo**2-s+s2g-t1)*(s-s1+t2)**2)
            else if(deltac1c2.eq.1) then
              M6M8 = 
     .      (4*(2*mgo**4*msq2**2*nkq-4*mgo**2*msq2**4*nkq+2*mgo**2*msq2**2
     .      *nkq*s+4*msq2**4*nkq*s+mgo**2*msq2**2*npg*s-6*msq2**4*npg*s-4
     .      *msq2**2*nkq*s**2+2*msq2**2*npg*s**2-mgo**4*nkq*s1+mgo**4*npg
     .      *s1+4*msq2**4*npg*s1-2*mgo**2*npg*s*s1-2*msq2**2*npg*s*s1+nkq
     .      *s**2*s1+2*mgo**2*npg*s1**2+4*mgo**2*msq2**2*nkq*s2g-4*msq2**4
     .      *nkq*s2g+2*msq2**2*nkq*s*s2g+msq2**2*npg*s*s2g-2*mgo**2*nkq*s1
     .      *s2g+2*mgo**2*npg*s1*s2g-2*npg*s*s1*s2g+2*npg*s1**2*s2g+2*msq2
     .      **2*nkq*s2g**2-nkq*s1*s2g**2+npg*s1*s2g**2-2*mgo**4*nkq*t1+4*mgo
     .      **2*msq2**2*nkq*t1+4*msq2**4*nkq*t1+2*mgo**2*nkq*s*t1-10*msq2
     .      **2*nkq*s*t1-mgo**2*npg*s*t1+7*msq2**2*npg*s*t1-2*mgo**2*nkq*s1
     .      *t1+2*mgo**2*npg*s1*t1-8*msq2**2*npg*s1*t1+4*nkq*s*s1*t1-2*npg
     .      *s*s1*t1+2*npg*s1**2*t1-4*mgo**2*nkq*s2g*t1+4*msq2**2*nkq*s2g
     .      *t1+2*nkq*s*s2g*t1-npg*s*s2g*t1-2*nkq*s1*s2g*t1+2*npg*s1*s2g*t1
     .      -2*nkq*s2g**2*t1-6*msq2**2*nkq*t1**2+2*nkq*s*t1**2-npg*s*t1**2
     .      +3*nkq*s1*t1**2+npg*s1*t1**2+2*nkq*t1**3+mgo**4*nkq*t2-mgo**4
     .      *npg*t2-mgo**2*msq2**2*npg*t2+2*msq2**4*npg*t2-mgo**2*nkq*s*t2
     .      +mgo**2*npg*s*t2-3*msq2**2*npg*s*t2+mgo**2*nkq*s1*t2-3*mgo**2
     .      *npg*s1*t2-2*msq2**2*npg*s1*t2-nkq*s*s1*t2+2*npg*s*s1*t2+2*mgo
     .      **2*nkq*s2g*t2-2*mgo**2*npg*s2g*t2-msq2**2*npg*s2g*t2-nkq*s*s2g
     .      *t2+npg*s*s2g*t2+nkq*s1*s2g*t2-3*npg*s1*s2g*t2+nkq*s2g**2*t2-npg
     .      *s2g**2*t2+2*mgo**2*nkq*t1*t2-mgo**2*npg*t1*t2+msq2**2*npg*t1
     .      *t2-3*nkq*s*t1*t2+2*npg*s*t1*t2-nkq*s1*t1*t2-npg*s1*t1*t2+2*nkq
     .      *s2g*t1*t2-npg*s2g*t1*t2-3*nkq*t1**2*t2-mgo**2*nkq*t2**2+mgo*
     .      *2*npg*t2**2+msq2**2*npg*t2**2+nkq*s*t2**2-npg*s*t2**2-nkq*s2g
     .      *t2**2+npg*s2g*t2**2+nkq*t1*t2**2-nk2*(mgo**2-s+s2g-t1)*(-s**2
     .      +s*s1+2*s*s2g-s1*s2g-s*t1+s1*t1-(s+s1-s2g+2*t1)*t2+t2**2+msq2
     .      **2*(-s+t2)+mgo**2*(2*s-s1+t2))+npq*(mgo**2-s+s2g-t1)*(2*mgo*
     .      *4+4*msq2**4-s*s2g+3*s1*s2g+2*s2g**2-s*t1+s1*t1+2*s2g*t1+s*t2
     .      -2*s2g*t2-2*msq2**2*(s+3*s2g+t1+t2)-mgo**2*(6*msq2**2+s-3*s1-4
     .      *s2g-2*t1+2*t2))+nk1*(-4*s*s1*s2g+s1*s2g**2-3*s*s2g*t1-2*s1*s2g
     .      *t1-s*t1**2+s1*t1**2+mgo**4*(s1-t2)-(-3*s*s2g+3*s1*s2g+s2g**2
     .      -2*s*t1+s1*t1+3*s2g*t1)*t2-(s-3*s2g)*t2**2-4*msq2**4*(s+t2)+msq2
     .      **2*(4*s**2+t2*(5*s2g+3*t1+t2)+s*(3*s2g+5*t1+3*t2))+mgo**2*(-4
     .      *s*s1+2*s1*s2g-3*s*t1-2*s1*t1+(3*s-3*s1-2*s2g-3*t1)*t2+3*t2**2
     .      +msq2**2*(3*s+5*t2)))))/(npg*s1*(mgo**2-s+s2g-t1)*(s-s1+t2)**2)
            else
              write(*,*) 'Error in M6M8: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M6M8 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
