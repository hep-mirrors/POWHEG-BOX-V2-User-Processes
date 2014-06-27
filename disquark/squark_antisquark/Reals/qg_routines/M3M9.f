ccc colour stripped partial amplitude for M3M9
      real*8 function M3M9()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M3M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M3M9 = 
     .      (-4*msq2**4-s1*s2g+3*s*t1-3*s1*t1-4*s2g*t1-s*t2+s2g*t2+mgo**2
     .      *(4*msq2**2-s1-4*t1+t2)+msq2**2*(s+4*(s2g+t1)+3*t2))/((mgo**2
     .      -t1)*(s-s1+t2)*(mgo**2+s2g-t1+t2))
            else
              write(*,*) 'Error in M3M9: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M3M9 = 
     .      0
            else if(deltac1c2.eq.1) then
              M3M9 = 
     .      (2*(-(mgo**2*msq2**2*nkq)+2*mgo**2*msq2**2*npg-2*msq2**4*npg+msq2
     .      **2*npg*s-mgo**2*npg*s1-msq2**2*nkq*s2g+2*msq2**2*npg*s2g-npg
     .      *s1*s2g+mgo**2*nkq*t1+msq2**2*nkq*t1-2*mgo**2*npg*t1+2*msq2**2
     .      *npg*t1+npg*s*t1-npg*s1*t1+nkq*s2g*t1-2*npg*s2g*t1-nkq*t1**2-msq2
     .      **2*nkq*t2+mgo**2*npg*t2+msq2**2*npg*t2-npg*s*t2+npg*s2g*t2+nkq
     .      *t1*t2+npq*(mgo**2-msq2**2-s+s1+s2g)*(mgo**2+s2g-t1+t2)+nk1*(s
     .      -s1+t2)*(mgo**2+s2g-t1+t2)+nk2*(s1*(mgo**2+s2g-t1)+s*t1-(mgo*
     .      *2-s+s2g)*t2+msq2**2*(-s+t2))))/(npg*(mgo**2-t1)*(s-s1+t2)*(mgo
     .      **2+s2g-t1+t2))
            else
              write(*,*) 'Error in M3M9: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M3M9 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
