ccc colour stripped partial amplitude for M5M3u
      real*8 function M5M3u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M5M3u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M5M3u = 
     .      (-8*mgo**2*(2*mgo**2-2*msq2**2+s2g+t2)*(mgo**2-2*msq2**2+s2g-t1
     .      +t2))/((mgo**2-t1)*(mgo**2+s2g-t1+t2)**2)
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M5M3u = 
     .      (-8*mgo**2*(mgo**2-2*msq2**2+s2g-t1+t2))/((mgo**2-t1)*(mgo**2
     .      +s2g-t1+t2)**2)
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M5M3u = 
     .      (-8*mgo**2*(2*mgo**2-2*msq2**2+s1twg+s2g+t2)*(mgo**2-2*msq2**2
     .      +s2g-t1+t2))/((mgo**2-t1)*(mgo**2+s2g-t1+t2)**2)
          else
            write(*,*) "Wrong option for coeffs2g in M5M3u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
          M5M3u = 
     .      (-16*mgo**2*(2*mgo**2-2*msq2**2+s2g+t2)*(-(msq2**2*npg)+nk2*(mgo
     .      **2+s2g-t1+t2)))/(npg*(mgo**2-t1)*(mgo**2+s2g-t1+t2)**2)
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
          M5M3u = 
     .      (-16*mgo**2*(-msq2**2+(nk2*(mgo**2+s2g-t1+t2))/npg))/((mgo**2
     .      -t1)*(mgo**2+s2g-t1+t2)**2)
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M5M3u = 
     .      (-16*mgo**2*(2*mgo**2-2*msq2**2+s1twg+s2g+t2)*(-(msq2**2*npg)
     .      +nk2*(mgo**2+s2g-t1+t2)))/(npg*(mgo**2-t1)*(mgo**2+s2g-t1+t2)
     .      **2)
          else
            write(*,*) "Wrong option for coeffs2g in M5M3u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M5M3u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
