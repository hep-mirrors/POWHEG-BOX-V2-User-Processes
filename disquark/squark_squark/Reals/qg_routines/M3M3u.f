ccc colour stripped partial amplitude for M3M3u
      real*8 function M3M3u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M3M3u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M3M3u = 
     .      (-4*mgo**2*(2*mgo**2-2*msq2**2+t2)*(4*mgo**2-s+t2))/((mgo**2-s
     .      -t1)*(mgo**2-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M3M3u = 
     .      (4*mgo**2*(s2g*(2*mgo**2-2*msq2**2+t2)*(4*mgo**2-s+t2)+(2*mgo
     .      **2-2*msq2**2+t2)*(4*mgo**2-s+t2)*(2*mgo**2-s-2*t1+t2)-(mgo**2
     .      -s-t1)*(mgo**2-t1+t2)*(8*mgo**2-4*msq2**2-s+2*s2g+3*t2)))/((mgo
     .      **2-s-t1)*(mgo**2-s+s2g-t1)*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M3M3u = 
     .      (-4*mgo**2*(8*mgo**2-4*msq2**2-s+2*s1twg+3*t2))/((mgo**2-s-t1)
     .      *(mgo**2-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M3M3u = 
     .      (4*mgo**2*(12*mgo**4+s**2-2*s*s1twg-s*s2g+2*s1twg*s2g-2*s*t1-4
     .      *s1twg*t1-4*t1**2+4*msq2**2*(s-s2g+2*t1-t2)+2*s1twg*t2+3*s2g*t2
     .      -2*t1*t2+3*t2**2+mgo**2*(-8*msq2**2-6*s+4*s1twg+8*s2g-8*t1+10
     .      *t2)))/((mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(mgo**2-t1+t2)*(mgo**2
     .      +s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M3M3u = 
     .      (-4*mgo**2*(2*mgo**2-2*msq2**2+s1twg+s2g+t2)*(4*mgo**2-s+2*(s1twg
     .      +s2g)+t2))/((mgo**2-s+s2g-t1)*(mgo**2+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M3M3u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M3M3u = 
     .      (-8*mgo**2*(2*mgo**2-2*msq2**2+t2)*(npg*(2*mgo**2-s)+nk2*(-mgo
     .      **2+s+t1)+nk1*(mgo**2-t1+t2)))/(npg*(mgo**2-s-t1)*(mgo**2-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M3M3u = 
     .      (8*mgo**2*(-(nk2*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(mgo**2-2*msq2
     .      **2+t1))+nk1*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2)*(mgo**2-2*msq2
     .      **2+s+t1+t2)+npg*(4*mgo**6+3*mgo**4*(-2*msq2**2-s+s2g+t2)+t1*((s
     .      -s2g)*(s+t1)+(s2g-t1)*t2+t2**2)+mgo**2*(s**2+2*(s2g-2*t1)*t1-s
     .      *(s2g+2*t1)+msq2**2*(6*s-4*s2g+4*t1-2*t2)+(s2g+2*t1)*t2+t2**2)
     .      -2*msq2**2*(s**2+s*(-s2g+t1)+t1*(-t1+t2)))))/(npg*(mgo**2-s-t1)
     .      *(mgo**2-s+s2g-t1)*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M3M3u = 
     .      (-8*mgo**2*(nk2*(-mgo**2+s+t1)+npg*(4*mgo**2-2*msq2**2-s+s1twg
     .      +t2)+nk1*(mgo**2-t1+t2)))/(npg*(mgo**2-s-t1)*(mgo**2-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M3M3u = 
     .      (8*mgo**2*(-(nk2*(mgo**2-s-t1)*(mgo**2-s+s2g-t1))+nk1*(mgo**2
     .      -t1+t2)*(mgo**2+s2g-t1+t2)+npg*(6*mgo**4+s**2-s*s1twg-s*s2g+s1twg
     .      *s2g-2*s1twg*t1-2*t1**2+2*msq2**2*(s-s2g+2*t1-t2)+(s1twg+s2g)
     .      *t2+t2**2+2*mgo**2*(-2*msq2**2-2*s+s1twg+2*(s2g-t1+t2)))))/(npg
     .      *(mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(mgo**2-t1+t2)*(mgo**2+s2g-t1
     .      +t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M3M3u = 
     .      (-8*mgo**2*(2*mgo**2-2*msq2**2+s1twg+s2g+t2)*(npg*(2*mgo**2-s
     .      +s1twg+s2g)+nk2*(-mgo**2+s-s2g+t1)+nk1*(mgo**2+s2g-t1+t2)))/(npg
     .      *(mgo**2-s+s2g-t1)*(mgo**2+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M3M3u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M3M3u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
