ccc colour stripped partial amplitude for M7M11
      real*8 function M7M11()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M7M11 = 
     .      (-2*(8*msq2**6-4*t1*(s1*s2g+(-s+s1+2*s2g)*t1)+(s1*s2g-(3*s+s1
     .      -4*s2g)*t1)*t2+(s-s2g)*t2**2-8*msq2**4*(s2g+2*t1+t2)-mgo**2*(8
     .      *msq2**4-16*msq2**2*t1+4*t1*(s1+2*t1)-(s1+4*t1)*t2+t2**2)+msq2
     .      **2*(8*t1*(s1+2*s2g+t1)+4*t1*t2+t2**2-s*(4*t1+t2))))/(s1*t2*(s
     .      -s1+t2)*(mgo**2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M7M11 = 
     .      (-2*(8*msq2**6-4*t1*(s1*s2g+(-s+s1+2*s2g)*t1)+(s1*s2g-(3*s+s1
     .      -4*s2g)*t1)*t2+(s-s2g)*t2**2-8*msq2**4*(s2g+2*t1+t2)-mgo**2*(8
     .      *msq2**4-16*msq2**2*t1+4*t1*(s1+2*t1)-(s1+4*t1)*t2+t2**2)+msq2
     .      **2*(8*t1*(s1+2*s2g+t1)+4*t1*t2+t2**2-s*(4*t1+t2))))/(s1*t2*(s
     .      -s1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M7M11: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M7M11 = 
     .      (-2*(-4*mgo**4*msq2**2*nkq+8*mgo**2*msq2**4*nkq+4*mgo**4*msq2
     .      **2*npg-12*mgo**2*msq2**4*npg+8*msq2**6*npg-mgo**2*msq2**2*nkq
     .      *s+mgo**2*msq2**2*npg*s+mgo**4*nkq*s1-mgo**4*npg*s1-8*mgo**2*msq2
     .      **2*nkq*s2g+8*msq2**4*nkq*s2g+8*mgo**2*msq2**2*npg*s2g-12*msq2
     .      **4*npg*s2g-msq2**2*nkq*s*s2g+msq2**2*npg*s*s2g+2*mgo**2*nkq*s1
     .      *s2g-2*mgo**2*npg*s1*s2g-4*msq2**2*nkq*s2g**2+4*msq2**2*npg*s2g
     .      **2+nkq*s1*s2g**2-npg*s1*s2g**2+4*mgo**4*nkq*t1-8*mgo**2*msq2
     .      **2*nkq*t1-8*msq2**4*nkq*t1-4*mgo**4*npg*t1+16*mgo**2*msq2**2
     .      *npg*t1-12*msq2**4*npg*t1-3*mgo**2*nkq*s*t1+msq2**2*nkq*s*t1+3
     .      *mgo**2*npg*s*t1-5*msq2**2*npg*s*t1+6*mgo**2*nkq*s1*t1-6*mgo*
     .      *2*npg*s1*t1+8*msq2**2*npg*s1*t1+8*mgo**2*nkq*s2g*t1-8*msq2**2
     .      *nkq*s2g*t1-8*mgo**2*npg*s2g*t1+16*msq2**2*npg*s2g*t1-3*nkq*s
     .      *s2g*t1+3*npg*s*s2g*t1+6*nkq*s1*s2g*t1-6*npg*s1*s2g*t1+4*nkq*s2g
     .      **2*t1-4*npg*s2g**2*t1+12*msq2**2*nkq*t1**2-4*mgo**2*npg*t1**2
     .      +4*msq2**2*npg*t1**2+3*nkq*s*t1**2+npg*s*t1**2-7*nkq*s1*t1**2
     .      -npg*s1*t1**2-4*npg*s2g*t1**2-4*nkq*t1**3-mgo**4*nkq*t2-9*mgo
     .      **2*msq2**2*nkq*t2+8*msq2**4*nkq*t2+mgo**4*npg*t2+3*mgo**2*msq2
     .      **2*npg*t2-8*msq2**4*npg*t2+mgo**2*nkq*s*t2-msq2**2*nkq*s*t2-mgo
     .      **2*npg*s*t2-msq2**2*npg*s*t2+mgo**2*nkq*s1*t2+mgo**2*npg*s1*t2
     .      -2*mgo**2*nkq*s2g*t2-9*msq2**2*nkq*s2g*t2+2*mgo**2*npg*s2g*t2
     .      +3*msq2**2*npg*s2g*t2+nkq*s*s2g*t2-npg*s*s2g*t2+nkq*s1*s2g*t2
     .      +npg*s1*s2g*t2-nkq*s2g**2*t2+npg*s2g**2*t2+3*mgo**2*nkq*t1*t2
     .      -7*msq2**2*nkq*t1*t2+3*mgo**2*npg*t1*t2+msq2**2*npg*t1*t2-4*nkq
     .      *s*t1*t2-2*npg*s*t1*t2+7*nkq*s1*t1*t2-npg*s1*t1*t2+3*nkq*s2g*t1
     .      *t2+3*npg*s2g*t1*t2+6*nkq*t1**2*t2-mgo**2*nkq*t2**2-5*msq2**2
     .      *nkq*t2**2-mgo**2*npg*t2**2+msq2**2*npg*t2**2+nkq*s*t2**2+npg
     .      *s*t2**2-nkq*s2g*t2**2-npg*s2g*t2**2-2*nkq*t1*t2**2+nk2*((mgo
     .      **2+s2g-t1)*(-(msq2**2*s)+s1*(mgo**2+s2g-t1)+s*t1)-(mgo**4+8*msq2
     .      **4-s*s2g+s1*s2g+s2g**2-6*s*t1+7*s1*t1+7*s2g*t1+mgo**2*(-9*msq2
     .      **2-s+s1+2*s2g+7*t1)-msq2**2*(s+9*s2g+7*t1))*t2+(mgo**2+7*msq2
     .      **2-s+s2g)*t2**2)-nk1*(mgo**2+s2g-t1+t2)*(-(s1*(mgo**2+s2g-t1))
     .      -s*t1+(mgo**2+s-2*s1+s2g-4*t1)*t2+2*t2**2+msq2**2*(s+3*t2))-npq
     .      *(mgo**2+s2g-t1+t2)*(s1*(mgo**2+s2g-t1)+s*t1+(mgo**2-s+2*s1+s2g)
     .      *t2-msq2**2*(s+5*t2))))/(npg*s1*t2*(s-s1+t2)*(mgo**2+s2g-t1+t2))
            else if(deltac1c2.eq.1) then
              M7M11 = 
     .      (-2*(-4*mgo**4*msq2**2*nkq+8*mgo**2*msq2**4*nkq+4*mgo**4*msq2
     .      **2*npg-12*mgo**2*msq2**4*npg+8*msq2**6*npg-mgo**2*msq2**2*nkq
     .      *s+mgo**2*msq2**2*npg*s+mgo**4*nkq*s1-mgo**4*npg*s1-8*mgo**2*msq2
     .      **2*nkq*s2g+8*msq2**4*nkq*s2g+8*mgo**2*msq2**2*npg*s2g-12*msq2
     .      **4*npg*s2g-msq2**2*nkq*s*s2g+msq2**2*npg*s*s2g+2*mgo**2*nkq*s1
     .      *s2g-2*mgo**2*npg*s1*s2g-4*msq2**2*nkq*s2g**2+4*msq2**2*npg*s2g
     .      **2+nkq*s1*s2g**2-npg*s1*s2g**2+4*mgo**4*nkq*t1-8*mgo**2*msq2
     .      **2*nkq*t1-8*msq2**4*nkq*t1-4*mgo**4*npg*t1+16*mgo**2*msq2**2
     .      *npg*t1-12*msq2**4*npg*t1-3*mgo**2*nkq*s*t1+msq2**2*nkq*s*t1+3
     .      *mgo**2*npg*s*t1-5*msq2**2*npg*s*t1+6*mgo**2*nkq*s1*t1-6*mgo*
     .      *2*npg*s1*t1+8*msq2**2*npg*s1*t1+8*mgo**2*nkq*s2g*t1-8*msq2**2
     .      *nkq*s2g*t1-8*mgo**2*npg*s2g*t1+16*msq2**2*npg*s2g*t1-3*nkq*s
     .      *s2g*t1+3*npg*s*s2g*t1+6*nkq*s1*s2g*t1-6*npg*s1*s2g*t1+4*nkq*s2g
     .      **2*t1-4*npg*s2g**2*t1+12*msq2**2*nkq*t1**2-4*mgo**2*npg*t1**2
     .      +4*msq2**2*npg*t1**2+3*nkq*s*t1**2+npg*s*t1**2-7*nkq*s1*t1**2
     .      -npg*s1*t1**2-4*npg*s2g*t1**2-4*nkq*t1**3-mgo**4*nkq*t2-9*mgo
     .      **2*msq2**2*nkq*t2+8*msq2**4*nkq*t2+mgo**4*npg*t2+3*mgo**2*msq2
     .      **2*npg*t2-8*msq2**4*npg*t2+mgo**2*nkq*s*t2-msq2**2*nkq*s*t2-mgo
     .      **2*npg*s*t2-msq2**2*npg*s*t2+mgo**2*nkq*s1*t2+mgo**2*npg*s1*t2
     .      -2*mgo**2*nkq*s2g*t2-9*msq2**2*nkq*s2g*t2+2*mgo**2*npg*s2g*t2
     .      +3*msq2**2*npg*s2g*t2+nkq*s*s2g*t2-npg*s*s2g*t2+nkq*s1*s2g*t2
     .      +npg*s1*s2g*t2-nkq*s2g**2*t2+npg*s2g**2*t2+3*mgo**2*nkq*t1*t2
     .      -7*msq2**2*nkq*t1*t2+3*mgo**2*npg*t1*t2+msq2**2*npg*t1*t2-4*nkq
     .      *s*t1*t2-2*npg*s*t1*t2+7*nkq*s1*t1*t2-npg*s1*t1*t2+3*nkq*s2g*t1
     .      *t2+3*npg*s2g*t1*t2+6*nkq*t1**2*t2-mgo**2*nkq*t2**2-5*msq2**2
     .      *nkq*t2**2-mgo**2*npg*t2**2+msq2**2*npg*t2**2+nkq*s*t2**2+npg
     .      *s*t2**2-nkq*s2g*t2**2-npg*s2g*t2**2-2*nkq*t1*t2**2+nk2*((mgo
     .      **2+s2g-t1)*(-(msq2**2*s)+s1*(mgo**2+s2g-t1)+s*t1)-(mgo**4+8*msq2
     .      **4-s*s2g+s1*s2g+s2g**2-6*s*t1+7*s1*t1+7*s2g*t1+mgo**2*(-9*msq2
     .      **2-s+s1+2*s2g+7*t1)-msq2**2*(s+9*s2g+7*t1))*t2+(mgo**2+7*msq2
     .      **2-s+s2g)*t2**2)-nk1*(mgo**2+s2g-t1+t2)*(-(s1*(mgo**2+s2g-t1))
     .      -s*t1+(mgo**2+s-2*s1+s2g-4*t1)*t2+2*t2**2+msq2**2*(s+3*t2))-npq
     .      *(mgo**2+s2g-t1+t2)*(s1*(mgo**2+s2g-t1)+s*t1+(mgo**2-s+2*s1+s2g)
     .      *t2-msq2**2*(s+5*t2))))/(npg*s1*t2*(s-s1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M7M11: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M7M11 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
