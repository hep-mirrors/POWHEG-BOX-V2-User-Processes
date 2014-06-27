ccc colour stripped partial amplitude for M2M3u
      real*8 function M2M3u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M2M3u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M2M3u = 
     .      (4*mgo**2*(-((mgo-msq2)*(mgo+msq2)*(4*msq2**2-s+4*t1))+(-3*msq2
     .      **2+s-t1)*t2))/((mgo**2-t1)*(mgo**2-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M2M3u = 
     .      (4*mgo**2*(-4*msq2**4+2*mgo**2*(msq2**2+t1)+t1*(-s+2*t1-t2)+msq2
     .      **2*(s-2*t1+t2)))/((mgo**2-t1)*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M2M3u = 
     .      (-8*mgo**2*(msq2**2+t1))/((mgo**2-t1)*(mgo**2-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M2M3u = 
     .      (8*mgo**2*(msq2**2+t1))/((mgo**2-t1)*(mgo**2-t1+t2)*(mgo**2+s2g
     .      -t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M3u = 
     .      (4*mgo**2*(-4*msq2**4-s*s2g+2*s1twg*t1+2*s2g*t1+mgo**2*(4*msq2
     .      **2-s+4*t1)-s*t2+t1*t2+msq2**2*(s+2*(s1twg+s2g-2*t1)+3*t2)))/((
     .      -mgo**2+t1)*(mgo**2+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M2M3u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M2M3u = 
     .      (4*mgo**2*(-((mgo-msq2)*(mgo+msq2)*(2*mgo**2+4*msq2**2-s+2*t1))
     .      +(-mgo**2-3*msq2**2+s)*t2+(nk2*(2*mgo**2-2*msq2**2+t2)*(3*mgo
     .      **2-3*t1+t2)-nk1*(2*mgo**2-2*msq2**2+t2)*(mgo**2-t1+t2)+(mgo*
     .      *2-t1+t2)*(2*(mgo-msq2)*(mgo+msq2)*npq+nkq*(2*mgo**2-2*msq2**2
     .      -s+t2)))/npg))/((mgo**2-t1)*(mgo**2-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M2M3u = 
     .      (-4*mgo**2*(-(mgo**4*nkq)+mgo**4*npg-2*mgo**2*msq2**2*npg+4*msq2
     .      **4*npg-msq2**2*npg*s-mgo**2*nkq*s2g+mgo**2*npg*s2g+2*mgo**2*nkq
     .      *t1-4*mgo**2*npg*t1+2*msq2**2*npg*t1+npg*s*t1+nkq*s2g*t1-npg*s2g
     .      *t1-nkq*t1**2-npg*t1**2-2*mgo**2*nkq*t2+3*mgo**2*npg*t2-3*msq2
     .      **2*npg*t2-nkq*s2g*t2+npg*s2g*t2+2*nkq*t1*t2-nkq*t2**2+npg*t2
     .      **2+nk1*(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2)-npq*(mgo**2-t1+t2)*(mgo
     .      **2+s2g-t1+t2)-nk2*(3*(mgo**2-t1)*(mgo**2+s2g-t1)+(8*mgo**2-4
     .      *msq2**2+3*s2g-4*t1)*t2+3*t2**2)))/(npg*(mgo**2-t1)*(mgo**2-t1
     .      +t2)*(mgo**2+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M2M3u = 
     .      (4*mgo**2*(mgo**2*nkq-mgo**2*npg-2*msq2**2*npg-nkq*t1-npg*t1+nkq
     .      *t2+nk2*(3*mgo**2-3*t1+t2)-nk1*(mgo**2-t1+t2)+npq*(mgo**2-t1+t2)))
     .      /(npg*(mgo**2-t1)*(mgo**2-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M2M3u = 
     .      (4*mgo**2*(npg*(2*(msq2**2+t1)-t2)+2*nk2*t2))/(npg*(mgo**2-t1)
     .      *(mgo**2-t1+t2)*(mgo**2+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M2M3u = 
     .      (-2*mgo**2*(-2*(2*mgo**4-4*msq2**4-s*s2g+s1twg*s2g+s2g**2+s1twg
     .      *t1+s2g*t1-s*t2+s2g*t2+mgo**2*(2*msq2**2-s+s1twg+3*s2g+2*t1+t2)
     .      +msq2**2*(s+2*s1twg-2*t1+3*t2))+(2*(nk2*(2*mgo**2-2*msq2**2+s1twg
     .      +s2g+t2)*(3*(mgo**2+s2g-t1)+t2)-nk1*(2*mgo**2-2*msq2**2+s1twg
     .      +s2g+t2)*(mgo**2+s2g-t1+t2)+(mgo**2+s2g-t1+t2)*(npq*(2*mgo**2
     .      -2*msq2**2+s1twg+s2g)+nkq*(2*mgo**2-2*msq2**2-s+s1twg+s2g+t2))))
     .      /npg))/((-mgo**2+t1)*(mgo**2+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M2M3u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M3u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
