ccc colour stripped partial amplitude for M2M2u
      real*8 function M2M2u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M2M2u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M2M2u = 
     .      (8*mgo**2*(-4*mgo**2*msq2**2+4*msq2**4-2*msq2**2*t2+s*t2))/((mgo
     .      **2-t1)*(mgo**2-s-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M2M2u = 
     .      (8*mgo**2*(2*msq2**2*(mgo**2-2*msq2**2+s+t1)-s*t2))/((mgo**2-t1)
     .      *(mgo**2-s-t1+t2)*(mgo**2-s+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M2M2u = 
     .      (8*mgo**2*(2*msq2**2*(mgo**2-2*msq2**2+s+t1)-s*t2))/((mgo**2-t1)
     .      *(mgo**2-s-t1+t2)*(mgo**2-s+s1twg-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M2M2u = 
     .      (-8*mgo**2*(2*mgo**2-2*s+s1twg+s2g-2*t1+2*t2)*(2*msq2**2*(mgo
     .      **2-2*msq2**2+s+t1)-s*t2))/((mgo**2-t1)*(mgo**2-s-t1+t2)*(mgo
     .      **2-s+s1twg-t1+t2)*(mgo**2-s+s2g-t1+t2)*(mgo**2-s+s1twg+s2g-t1
     .      +t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M2u = 
     .      (8*mgo**2*(-4*mgo**2*msq2**2+4*msq2**4+s*t2-2*msq2**2*(s1twg+s2g
     .      +t2)))/((mgo**2-t1)*(mgo**2-s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M2M2u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M2M2u = 
     .      (4*mgo**2*(8*mgo**2*msq2**2*npg-8*msq2**4*npg+2*mgo**2*nkq*s-2
     .      *msq2**2*nkq*s-nkq*s**2-2*mgo**2*nkq*t2+2*msq2**2*nkq*t2+4*msq2
     .      **2*npg*t2-nkq*t2**2+nk1*(2*(mgo-msq2)*(mgo+msq2)*(2*mgo**2-s
     .      -2*t1)+(4*mgo**2-2*msq2**2-3*s-2*t1)*t2+t2**2)-nk2*(2*(mgo-msq2)
     .      *(mgo+msq2)*(2*mgo**2-s-2*t1)+(4*mgo**2-2*msq2**2+s-2*t1)*t2+t2
     .      **2)+2*npq*(mgo**2*(s-t2)+s*t2+msq2**2*(-s+t2))))/(npg*(-mgo*
     .      *2+t1)*(mgo**2-s-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M2M2u = 
     .      (-4*mgo**2*(-4*mgo**2*msq2**2*npg+8*msq2**4*npg-mgo**2*nkq*s+2
     .      *msq2**2*nkq*s-4*msq2**2*npg*s-4*msq2**2*npg*t1-nkq*s*t1+mgo*
     .      *2*nkq*t2-2*msq2**2*nkq*t2+2*nkq*s*t2+nkq*t1*t2-npq*(s*(mgo**2
     .      -2*msq2**2+s+t1)-(mgo**2-2*msq2**2+t1)*t2+t2**2)-nk2*(2*mgo**4
     .      +(s+t1)*(s-2*s2g+2*t1)+2*msq2**2*(s-t2)+(-5*s+2*s2g-3*t1)*t2+2
     .      *t2**2+mgo**2*(-5*s+2*s2g-4*t1+5*t2))+nk1*(2*mgo**4+(s+t1)*(s
     .      -2*s2g+2*t1)+2*msq2**2*(s-t2)-(s-2*s2g+3*t1)*t2+2*t2**2+mgo**2
     .      *(-5*s+2*s2g-4*t1+5*t2))))/(npg*(mgo**2-t1)*(mgo**2-s-t1+t2)*(mgo
     .      **2-s+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M2M2u = 
     .      (4*mgo**2*(4*mgo**2*msq2**2*npg-8*msq2**4*npg+mgo**2*nkq*s-2*msq2
     .      **2*nkq*s+4*msq2**2*npg*s+4*msq2**2*npg*t1+nkq*s*t1-mgo**2*nkq
     .      *t2+2*msq2**2*nkq*t2-2*nkq*s*t2-nkq*t1*t2+nk1*((2*mgo**2-s-2*t1)
     .      *(mgo**2-2*msq2**2+s+t1)+(mgo**2-2*msq2**2-s+t1)*t2)-nk2*((2*mgo
     .      **2-s-2*t1)*(mgo**2-2*msq2**2+s+t1)+(mgo**2-2*msq2**2+3*s+t1)
     .      *t2)+npq*(s*(mgo**2-2*msq2**2+s+t1)-(mgo**2-2*msq2**2+t1)*t2+t2
     .      **2)))/(npg*(mgo**2-t1)*(mgo**2-s-t1+t2)*(mgo**2-s+s1twg-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M2M2u = 
     .      (-4*mgo**2*(nk1*((mgo**2-2*msq2**2+s+t1)*(2*mgo**4+2*t1*(-s2g
     .      +t1)-2*mgo**2*(s-s2g+2*t1)+s*(s1twg-s2g+2*t1))+(2*mgo**4+4*s*
     .      *2-mgo**2*(4*msq2**2+2*s+s1twg-s2g)-s*(3*s1twg+s2g-2*t1)+(2*msq2
     .      **2-t1)*(s1twg-s2g+2*t1))*t2-4*s*t2**2)-nk2*((mgo**2-2*msq2**2
     .      +s+t1)*(2*mgo**4+2*t1*(-s2g+t1)-2*mgo**2*(s-s2g+2*t1)+s*(s1twg
     .      -s2g+2*t1))+(2*mgo**4-4*s**2+mgo**2*(-4*msq2**2+6*s-s1twg+s2g)
     .      +s*(s1twg+3*s2g-6*t1)+(2*msq2**2-t1)*(s1twg-s2g+2*t1))*t2+4*s
     .      *t2**2)+(2*mgo**2-2*s+s1twg+s2g-2*t1+2*t2)*(4*msq2**2*npg*(mgo
     .      **2-2*msq2**2+s+t1)+nkq*(s*(mgo**2-2*msq2**2+t1)-(mgo**2-2*msq2
     .      **2+2*s+t1)*t2)+npq*(s*(mgo**2-2*msq2**2+s+t1)-(mgo**2-2*msq2
     .      **2+t1)*t2+t2**2))))/(npg*(mgo**2-t1)*(mgo**2-s-t1+t2)*(mgo**2
     .      -s+s1twg-t1+t2)*(mgo**2-s+s2g-t1+t2)*(mgo**2-s+s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M2u = 
     .      (4*mgo**2*(8*mgo**2*msq2**2*npg-8*msq2**4*npg+2*mgo**2*nkq*s-2
     .      *msq2**2*nkq*s-nkq*s**2+4*msq2**2*npg*s1twg+nkq*s*s1twg+4*msq2
     .      **2*npg*s2g+nkq*s*s2g-2*mgo**2*nkq*t2+2*msq2**2*nkq*t2+4*msq2
     .      **2*npg*t2-nkq*s1twg*t2-nkq*s2g*t2-nkq*t2**2+npq*(s*(2*mgo**2
     .      -2*msq2**2+s1twg+s2g)-(2*mgo**2-2*msq2**2-2*s+s1twg+s2g)*t2)+nk1
     .      *((2*mgo**2-2*msq2**2+s1twg+s2g)*(2*mgo**2-s+2*s2g-2*t1)+(4*mgo
     .      **2-2*msq2**2-3*s+s1twg+3*s2g-2*t1)*t2+t2**2)-nk2*((2*mgo**2-2
     .      *msq2**2+s1twg+s2g)*(2*mgo**2-s+2*s2g-2*t1)+(4*mgo**2-2*msq2*
     .      *2+s+s1twg+3*s2g-2*t1)*t2+t2**2)))/(npg*(-mgo**2+t1)*(mgo**2-s
     .      +s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M2M2u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M2u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
