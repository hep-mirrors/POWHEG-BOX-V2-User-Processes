ccc colour stripped partial amplitude for M6M11
      real*8 function M6M11()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M6M11 = 
     .      -((8*(-2*msq2**6+2*msq2**4*(s1+s2g+2*t1)+(s1+t1)*(s1*s2g+(-s+s1
     .      +2*s2g)*t1)+mgo**2*(2*msq2**4-2*msq2**2*(s1+2*t1)+(s1+t1)*(s1
     .      +2*t1))-msq2**2*(s*(s1-t1)+2*(s1*s2g+2*(s1+s2g)*t1+t1**2)))+2
     .      *(4*s*s1-9*s1*s2g+mgo**2*(8*msq2**2-9*s1-12*t1)+7*s*t1-3*s1*t1
     .      -12*s2g*t1+msq2**2*(-3*s-4*s1+8*s2g+4*t1))*t2+2*(5*mgo**2+3*msq2
     .      **2-3*s+5*s2g)*t2**2)/(s1*(mgo**2-s+s2g-t1)*t2*(s-s1+t2)))
            else if(deltac1c2.eq.1) then
              M6M11 = 
     .      -((8*(-2*msq2**6+2*msq2**4*(s1+s2g+2*t1)+(s1+t1)*(s1*s2g+(-s+s1
     .      +2*s2g)*t1)+mgo**2*(2*msq2**4-2*msq2**2*(s1+2*t1)+(s1+t1)*(s1
     .      +2*t1))-msq2**2*(s*(s1-t1)+2*(s1*s2g+2*(s1+s2g)*t1+t1**2)))+2
     .      *(4*s*s1-9*s1*s2g+mgo**2*(8*msq2**2-9*s1-12*t1)+7*s*t1-3*s1*t1
     .      -12*s2g*t1+msq2**2*(-3*s-4*s1+8*s2g+4*t1))*t2+2*(5*mgo**2+3*msq2
     .      **2-3*s+5*s2g)*t2**2)/(s1*(mgo**2-s+s2g-t1)*t2*(s-s1+t2)))
            else
              write(*,*) 'Error in M6M11: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M6M11 = 
     .      (-2*(-8*msq2**6-3*s*s1*s2g+4*s1**2*s2g+3*s1*s2g**2+s**2*t1-5*s
     .      *s1*t1+4*s1**2*t1-5*s*s2g*t1+10*s1*s2g*t1+4*s2g**2*t1-3*s*t1*
     .      *2+3*s1*t1**2+4*s2g*t1**2+mgo**4*(-4*msq2**2+3*s1+4*t1-3*t2)-(s
     .      **2-4*s*(s1+s2g)-5*s*t1+2*s1*(3*s2g+t1)+s2g*(3*s2g+5*t1))*t2+2
     .      *(-s+s2g)*t2**2+4*msq2**4*(-s+2*s1+3*(s2g+t1)+t2)+msq2**2*(3*s
     .      **2-4*(s2g*(2*s1+s2g)+4*(s1+s2g)*t1+t1**2)+s*(-4*s1+s2g+11*t1
     .      -5*t2)+(-4*s1+3*s2g+t1)*t2+2*t2**2)+mgo**2*(12*msq2**4-3*s*s1
     .      +4*s1**2+6*s1*s2g-5*s*t1+10*s1*t1+8*s2g*t1+4*t1**2+(4*s-6*(s1
     .      +s2g)-5*t1)*t2+2*t2**2+msq2**2*(s-8*(s1+s2g+2*t1)+3*t2))+(nk1
     .      *((mgo**2-s+s2g-t1)*(-(msq2**2*s)+s1*(mgo**2+s2g-t1)+s*t1)-(mgo
     .      **4+8*msq2**4-s**2+6*s1*s2g+s2g**2-3*s*t1+2*s1*t1+7*s2g*t1+mgo
     .      **2*(-9*msq2**2+6*s1+2*s2g+7*t1)-msq2**2*(5*s+9*s2g+7*t1))*t2
     .      +2*(3*mgo**2+msq2**2-s+3*s2g)*t2**2)-(mgo**2-s+s2g-t1)*(npq*(s1
     .      *(mgo**2+s2g-t1)+s*t1-msq2**2*(s-3*t2)+(mgo**2-s+s2g)*t2)+nkq
     .      *(8*msq2**4+3*s1*s2g+5*s1*t1+4*s2g*t1+4*t1**2+mgo**2*(-4*msq2
     .      **2+3*s1+4*t1-3*t2)-(2*s1+3*s2g+6*t1)*t2+2*t2**2+s*(-t1+t2)+msq2
     .      **2*(-3*s-4*(s2g+3*t1)+t2))+nk2*(-(s1*(mgo**2+s2g-t1))-s*t1+(mgo
     .      **2-s-2*s1+s2g-4*t1)*t2+2*t2**2+msq2**2*(s+3*t2))))/npg))/(s1
     .      *(mgo**2-s+s2g-t1)*t2*(s-s1+t2))
            else if(deltac1c2.eq.1) then
              M6M11 = 
     .      (-2*(-8*msq2**6-3*s*s1*s2g+4*s1**2*s2g+3*s1*s2g**2+s**2*t1-5*s
     .      *s1*t1+4*s1**2*t1-5*s*s2g*t1+10*s1*s2g*t1+4*s2g**2*t1-3*s*t1*
     .      *2+3*s1*t1**2+4*s2g*t1**2+mgo**4*(-4*msq2**2+3*s1+4*t1-3*t2)-(s
     .      **2-4*s*(s1+s2g)-5*s*t1+2*s1*(3*s2g+t1)+s2g*(3*s2g+5*t1))*t2+2
     .      *(-s+s2g)*t2**2+4*msq2**4*(-s+2*s1+3*(s2g+t1)+t2)+msq2**2*(3*s
     .      **2-4*(s2g*(2*s1+s2g)+4*(s1+s2g)*t1+t1**2)+s*(-4*s1+s2g+11*t1
     .      -5*t2)+(-4*s1+3*s2g+t1)*t2+2*t2**2)+mgo**2*(12*msq2**4-3*s*s1
     .      +4*s1**2+6*s1*s2g-5*s*t1+10*s1*t1+8*s2g*t1+4*t1**2+(4*s-6*(s1
     .      +s2g)-5*t1)*t2+2*t2**2+msq2**2*(s-8*(s1+s2g+2*t1)+3*t2))+(nk1
     .      *((mgo**2-s+s2g-t1)*(-(msq2**2*s)+s1*(mgo**2+s2g-t1)+s*t1)-(mgo
     .      **4+8*msq2**4-s**2+6*s1*s2g+s2g**2-3*s*t1+2*s1*t1+7*s2g*t1+mgo
     .      **2*(-9*msq2**2+6*s1+2*s2g+7*t1)-msq2**2*(5*s+9*s2g+7*t1))*t2
     .      +2*(3*mgo**2+msq2**2-s+3*s2g)*t2**2)-(mgo**2-s+s2g-t1)*(npq*(s1
     .      *(mgo**2+s2g-t1)+s*t1-msq2**2*(s-3*t2)+(mgo**2-s+s2g)*t2)+nkq
     .      *(8*msq2**4+3*s1*s2g+5*s1*t1+4*s2g*t1+4*t1**2+mgo**2*(-4*msq2
     .      **2+3*s1+4*t1-3*t2)-(2*s1+3*s2g+6*t1)*t2+2*t2**2+s*(-t1+t2)+msq2
     .      **2*(-3*s-4*(s2g+3*t1)+t2))+nk2*(-(s1*(mgo**2+s2g-t1))-s*t1+(mgo
     .      **2-s-2*s1+s2g-4*t1)*t2+2*t2**2+msq2**2*(s+3*t2))))/npg))/(s1
     .      *(mgo**2-s+s2g-t1)*t2*(s-s1+t2))
            else
              write(*,*) 'Error in M6M11: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M6M11 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
