ccc colour stripped partial amplitude for M1M2u
      real*8 function M1M2u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M1M2u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M1M2u = 
     .      (4*mgo**2*((mgo-msq2)*(mgo+msq2)*(6*mgo**2-4*msq2**2-3*s-2*t1)
     .      +(3*mgo**2-3*msq2**2+s)*t2))/(s*(-mgo**2+s+t1-t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M1M2u = 
     .      (4*mgo**2*(mgo**4+4*msq2**4-(s+t1)*(s-s2g+t1)+(3*s-s2g+2*t1)*t2
     .      -t2**2+msq2**2*(-s-2*t1+t2)-mgo**2*(6*msq2**2-3*s+s2g-4*t1+3*t2)))
     .      /(s*(mgo**2-s-t1+t2)*(mgo**2-s+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M1M2u = 
     .      (-4*mgo**2*(mgo**4-4*msq2**4+(s+t1)*(2*s-2*s1twg+t1)+msq2**2*(3
     .      *s+4*t1-3*t2)+(-5*s+2*s1twg-3*t1)*t2+2*t2**2+2*mgo**2*(2*msq2
     .      **2-3*s+s1twg-3*t1+3*t2)))/(s*(mgo**2-s-t1+t2)*(mgo**2-s+s1twg
     .      -t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M1M2u = 
     .      (4*mgo**2*(3*mgo**6-t1*(s+t1)*(s-s2g+t1)+mgo**4*(-10*msq2**2+2
     .      *s1twg+s2g+t1)+(-2*s**2+s*(s1twg+s2g)+t1*(-s2g+2*t1))*t2+(2*s
     .      -t1)*t2**2+4*msq2**4*(-2*s+s1twg+s2g-2*t1+2*t2)+msq2**2*(4*s*
     .      *2-2*(s1twg+2*s2g-3*t1)*t1+(s1twg+3*s2g-10*t1)*t2+4*t2**2-s*(s1twg
     .      +3*s2g-10*t1+8*t2))+mgo**2*(8*msq2**4-3*s**2+(2*(s1twg+s2g)-3
     .      *t1)*t1+msq2**2*(6*s-6*s1twg-4*s2g+4*t1-6*t2)-(s1twg+2*s2g-6*t1)
     .      *t2-3*t2**2+s*(s1twg+2*s2g-6*t1+8*t2))))/(s*(-mgo**2+s+t1-t2)
     .      *(-mgo**2+s-s1twg+t1-t2)*(-mgo**2+s-s2g+t1-t2)*(mgo**2-s+s1twg
     .      +s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M1M2u = 
     .      (-4*mgo**2*(6*mgo**4+4*msq2**4-2*s*s1twg+2*s1twg**2-s*s2g+3*s1twg
     .      *s2g+s2g**2-s1twg*t1-s2g*t1+msq2**2*(3*s-6*s1twg-4*s2g+2*t1-3
     .      *t2)+(s+2*s1twg+s2g)*t2+mgo**2*(-10*msq2**2-3*s+7*s1twg+5*s2g
     .      -2*t1+3*t2)))/(s*(mgo**2-s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M1M2u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M1M2u = 
     .      (4*mgo**2*(8*mgo**4*npg-12*mgo**2*msq2**2*npg+4*msq2**4*npg+2
     .      *(-mgo**2+msq2**2)*nk1*s-3*mgo**2*nkq*s+2*msq2**2*nkq*s-5*mgo
     .      **2*npg*s+5*msq2**2*npg*s+2*nkq*s**2-4*mgo**2*npg*t1+4*msq2**2
     .      *npg*t1+nkq*s*t1+6*mgo**2*npg*t2-5*msq2**2*npg*t2-nkq*s*t2-npg
     .      *s*t2-npg*t1*t2+npg*t2**2+2*nk2*s*(mgo**2-msq2**2+t2)+npq*(2*(mgo
     .      -msq2)*(mgo+msq2)*(2*mgo**2-3*s-2*t1)+(5*mgo**2-4*msq2**2-2*s
     .      -t1)*t2+t2**2)))/(npg*s*(-mgo**2+s+t1-t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M1M2u = 
     .      (-4*mgo**2*(6*mgo**2*msq2**2*npg-4*msq2**4*npg+mgo**2*nkq*s-2
     .      *msq2**2*nkq*s-5*mgo**2*npg*s+msq2**2*npg*s+2*npg*s**2+2*mgo*
     .      *2*npg*s2g-2*npg*s*s2g-6*mgo**2*npg*t1+2*msq2**2*npg*t1+nkq*s
     .      *t1+4*npg*s*t1-2*npg*s2g*t1+2*npg*t1**2+nk1*s*(mgo**2-2*msq2*
     .      *2+s+t1-t2)+5*mgo**2*npg*t2-msq2**2*npg*t2-nkq*s*t2-4*npg*s*t2
     .      +2*npg*s2g*t2-4*npg*t1*t2+2*npg*t2**2-nk2*s*(mgo**2-2*msq2**2
     .      +s+t1+t2)+npq*(2*mgo**4-2*msq2**2*s+(s+t1)*(3*s-2*s2g+2*t1)+2
     .      *(-2*s+s2g-2*t1)*t2+2*t2**2+mgo**2*(-3*s+2*s2g-4*t1+4*t2))))/(npg
     .      *s*(mgo**2-s-t1+t2)*(mgo**2-s+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M1M2u = 
     .      (4*mgo**2*(-6*mgo**2*msq2**2*npg+4*msq2**4*npg-2*mgo**2*nkq*s
     .      +2*msq2**2*nkq*s+6*mgo**2*npg*s-msq2**2*npg*s+nkq*s**2-3*npg*s
     .      **2-2*mgo**2*npg*s1twg+2*npg*s*s1twg+6*mgo**2*npg*t1-2*msq2**2
     .      *npg*t1-5*npg*s*t1+2*npg*s1twg*t1-2*npg*t1**2-nk1*s*(mgo**2-2
     .      *msq2**2+s+t1-t2)-5*mgo**2*npg*t2+msq2**2*npg*t2+5*npg*s*t2-2
     .      *npg*s1twg*t2+4*npg*t1*t2-2*npg*t2**2+nk2*s*(mgo**2-2*msq2**2
     .      +s+t1+t2)+npq*((2*mgo**2-3*s-2*t1)*(mgo**2-2*msq2**2+s+t1)+(mgo
     .      **2-4*msq2**2+3*(s+t1))*t2-t2**2)))/(npg*s*(mgo**2-s-t1+t2)*(mgo
     .      **2-s+s1twg-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M1M2u = 
     .      (4*mgo**2*(-4*mgo**6-s*(s+t1-t2)*(s-s2g+t1-t2)-msq2**2*(2*s-s1twg
     .      -s2g+2*t1-2*t2)*(s+2*t1-t2)+mgo**4*(12*msq2**2+s-2*(s1twg+s2g
     .      +t2))+msq2**4*(8*s-4*(s1twg+s2g-2*t1+2*t2))+mgo**2*(-8*msq2**4
     .      +4*s**2-(2*t1-t2)*(s1twg+s2g-2*t1+2*t2)+2*msq2**2*(-5*s+3*s1twg
     .      +3*s2g-4*t1+5*t2)-s*(s1twg+2*s2g-8*t1+6*t2))+(nk1*s*(mgo**2-2
     .      *msq2**2+s+t1-t2)*(2*mgo**2-2*s+s1twg+s2g-2*t1+2*t2)-nk2*s*(mgo
     .      **2-2*msq2**2+s+t1+t2)*(2*mgo**2-2*s+s1twg+s2g-2*t1+2*t2)+npq
     .      *(-((mgo**2-2*msq2**2+s+t1)*(2*mgo**4+4*s**2-s*(s1twg+3*s2g-6
     .      *t1)+2*mgo**2*(-3*s+s2g-2*t1)+2*t1*(-s2g+t1)))-(3*mgo**4+4*msq2
     .      **2*(3*s-s2g+2*t1)+mgo**2*(-8*msq2**2+s2g+2*t1)-(s+t1)*(7*s-3
     .      *s2g+5*t1))*t2+(4*msq2**2-4*s+s2g-4*t1)*t2**2+t2**3)+nkq*s*(3
     .      *mgo**4+s*(s-s2g)+(t1-t2)*(s1twg-t1+t2)+mgo**2*(-4*msq2**2-4*s
     .      +s1twg+2*(s2g-t1+t2))+msq2**2*(4*s-2*(s1twg+s2g-2*t1+2*t2))))
     .      /npg))/(s*(mgo**2-s-t1+t2)*(mgo**2-s+s1twg-t1+t2)*(mgo**2-s+s2g
     .      -t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M1M2u = 
     .      (-4*mgo**2*(8*mgo**4*npg-12*mgo**2*msq2**2*npg+4*msq2**4*npg-3
     .      *mgo**2*nkq*s+2*msq2**2*nkq*s-5*mgo**2*npg*s+5*msq2**2*npg*s+2
     .      *nkq*s**2+8*mgo**2*npg*s1twg-6*msq2**2*npg*s1twg-nkq*s*s1twg-3
     .      *npg*s*s1twg+2*npg*s1twg**2+8*mgo**2*npg*s2g-6*msq2**2*npg*s2g
     .      -2*nkq*s*s2g-2*npg*s*s2g+4*npg*s1twg*s2g+2*npg*s2g**2-nk1*s*(2
     .      *mgo**2-2*msq2**2+s1twg+s2g)-4*mgo**2*npg*t1+4*msq2**2*npg*t1
     .      +nkq*s*t1-2*npg*s1twg*t1-2*npg*s2g*t1+6*mgo**2*npg*t2-5*msq2*
     .      *2*npg*t2-nkq*s*t2-npg*s*t2+3*npg*s1twg*t2+3*npg*s2g*t2-npg*t1
     .      *t2+npg*t2**2+nk2*s*(2*mgo**2-2*msq2**2+s1twg+s2g+2*t2)+npq*((2
     .      *mgo**2-2*msq2**2+s1twg+s2g)*(2*mgo**2-3*s+2*s2g-2*t1)+(5*mgo
     .      **2-4*msq2**2-2*s+2*s1twg+3*s2g-t1)*t2+t2**2)))/(npg*s*(mgo**2
     .      -s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M1M2u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M1M2u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
