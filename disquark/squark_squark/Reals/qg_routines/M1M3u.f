ccc colour stripped partial amplitude for M1M3u
      real*8 function M1M3u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M1M3u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M1M3u = 
     .      (-4*mgo**2*(mgo-msq2)*(mgo+msq2)*(6*mgo**2-4*msq2**2-s-2*t1+3
     .      *t2))/(s*(mgo**2-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M1M3u = 
     .      (4*mgo**2*(mgo**4+4*msq2**4+msq2**2*(s-2*t1+t2)+(t1-t2)*(s2g-t1
     .      +t2)-mgo**2*(6*msq2**2+s+s2g-4*t1+3*t2)))/(s*(mgo**2-t1+t2)*(mgo
     .      **2+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M1M3u = 
     .      (4*mgo**2*(-7*mgo**2+6*msq2**2+s-2*s1twg+t1-2*t2))/(s*(mgo**2
     .      -t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M1M3u = 
     .      (-4*mgo**2*(-4*mgo**2+6*msq2**2+s-2*(s1twg+t1)+t2))/(s*(mgo**2
     .      -t1+t2)*(mgo**2+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M1M3u = 
     .      (-4*mgo**2*(6*mgo**4+4*msq2**4-s*s1twg+2*s1twg**2+3*s1twg*s2g
     .      +s2g**2-s1twg*t1-s2g*t1-mgo**2*(10*msq2**2+s-7*s1twg-5*s2g+2*t1
     .      -3*t2)+msq2**2*(s-6*s1twg-4*s2g+2*t1-3*t2)+2*s1twg*t2+s2g*t2))
     .      /(s*(mgo**2+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M1M3u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M1M3u = 
     .      (4*mgo**2*(-2*nk2*s*(2*mgo**2-2*msq2**2+t2)+nkq*s*(mgo**2-t1+t2)
     .      -npq*(4*mgo**2-4*msq2**2+t2)*(mgo**2-t1+t2)+npg*(-((mgo-msq2)
     .      *(mgo+msq2)*(8*mgo**2-4*msq2**2-3*s-4*t1))+(-6*mgo**2+5*msq2*
     .      *2+s+t1)*t2-t2**2)))/(npg*s*(mgo**2-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M1M3u = 
     .      (-4*mgo**2*(-2*nk2*s*(mgo**2-2*msq2**2+t1)+2*npq*(mgo**2-t1+t2)
     .      *(mgo**2+s2g-t1+t2)+npg*(-4*msq2**4+s*t1-2*s2g*t1+2*t1**2+2*s2g
     .      *t2-4*t1*t2+2*t2**2-msq2**2*(3*s-2*t1+t2)+mgo**2*(6*msq2**2+2
     .      *(s+s2g-3*t1)+5*t2))))/(npg*s*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M1M3u = 
     .      (-4*mgo**2*(2*nk2*s+2*npq*(mgo**2-t1+t2)+npg*(8*mgo**2-2*(3*msq2
     .      **2+s-s1twg+t1)+3*t2)))/(npg*s*(mgo**2-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M1M3u = 
     .      (4*mgo**2*(2*nk2*s+npg*(4*mgo**2-6*msq2**2-2*s+2*(s1twg+t1)-t2)))
     .      /(npg*s*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M1M3u = 
     .      (-4*mgo**2*(2*nk2*s*(2*mgo**2-2*msq2**2+s1twg+s2g+t2)-nkq*s*(mgo
     .      **2+s2g-t1+t2)+npq*(4*mgo**2-4*msq2**2+2*(s1twg+s2g)+t2)*(mgo
     .      **2+s2g-t1+t2)+npg*(8*mgo**4+4*msq2**4-2*s*s1twg+2*s1twg**2-s
     .      *s2g+4*s1twg*s2g+2*s2g**2-2*s1twg*t1-2*s2g*t1+msq2**2*(3*s-6*s1twg
     .      -6*s2g+4*t1-5*t2)-(s-3*(s1twg+s2g)+t1)*t2+t2**2+mgo**2*(-12*msq2
     .      **2-3*s+8*s1twg+8*s2g-4*t1+6*t2))))/(npg*s*(mgo**2+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M1M3u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M1M3u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
