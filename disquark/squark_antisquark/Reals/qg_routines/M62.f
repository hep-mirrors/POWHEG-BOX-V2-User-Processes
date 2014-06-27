ccc colour stripped partial amplitude for M62
      real*8 function M62()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M62 = 
     .      (16*(mgo**2+2*msq2**2-s+s2g-t1)*(-msq2**4+msq2**2*(s+s2g+t1)-s2g
     .      *(s1+t1-t2)+mgo**2*(msq2**2-s1-t1+t2)))/((mgo**2-s+s2g-t1)**2
     .      *(s-s1+t2)**2)
            else if(deltac1c2.eq.1) then
              M62 = 
     .      (16*(mgo**2+2*msq2**2-s+s2g-t1)*(-msq2**4+msq2**2*(s+s2g+t1)-s2g
     .      *(s1+t1-t2)+mgo**2*(msq2**2-s1-t1+t2)))/((mgo**2-s+s2g-t1)**2
     .      *(s-s1+t2)**2)
            else
              write(*,*) 'Error in M62: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M62 = 
     .      (32*(msq2**2*npg+nk1*(mgo**2-s+s2g-t1))*(-msq2**4+msq2**2*(s+s2g
     .      +t1)-s2g*(s1+t1-t2)+mgo**2*(msq2**2-s1-t1+t2)))/(npg*(mgo**2-s
     .      +s2g-t1)**2*(s-s1+t2)**2)
            else if(deltac1c2.eq.1) then
              M62 = 
     .      (32*(msq2**2*npg+nk1*(mgo**2-s+s2g-t1))*(-msq2**4+msq2**2*(s+s2g
     .      +t1)-s2g*(s1+t1-t2)+mgo**2*(msq2**2-s1-t1+t2)))/(npg*(mgo**2-s
     .      +s2g-t1)**2*(s-s1+t2)**2)
            else
              write(*,*) 'Error in M62: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M62 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
