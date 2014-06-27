ccc colour stripped partial amplitude for M1M1u
      real*8 function M1M1u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M1M1u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M1M1u = 
     .      (-8*mgo**2*t2)/s
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M1M1u = 
     .      0
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M1M1u = 
     .      0
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M1M1u = 
     .      0
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M1M1u = 
     .      (-8*mgo**2*t2)/s
          else
            write(*,*) "Wrong option for coeffs2g in M1M1u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M1M1u = 
     .      (8*mgo**2*(2*(mgo-msq2)*(mgo+msq2)*npg-nkq*s+npq*(4*mgo**2-4*msq2
     .      **2+t2)))/(npg*s)
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M1M1u = 
     .      (8*mgo**2*(1+(2*npq)/npg))/s
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M1M1u = 
     .      (8*mgo**2*(1+(2*npq)/npg))/s
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M1M1u = 
     .      0
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M1M1u = 
     .      (8*mgo**2*(-(nkq*s)+npg*(2*mgo**2-2*msq2**2+s1twg+s2g)+npq*(2
     .      *(2*mgo**2-2*msq2**2+s1twg+s2g)+t2)))/(npg*s)
          else
            write(*,*) "Wrong option for coeffs2g in M1M1u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M1M1u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
