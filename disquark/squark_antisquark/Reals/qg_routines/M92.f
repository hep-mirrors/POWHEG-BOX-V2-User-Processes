ccc colour stripped partial amplitude for M92
      real*8 function M92()
      implicit none
      include "sqantisq_realqg.h"
      if(gauge.eq.2) then !The Feynman-Gauge
            if(deltac1c2.eq.0) then
          M92 = 
     .      4/(s-s1+t2)
            else if(deltac1c2.eq.1) then
              M92 = 
     .      4/(s-s1+t2)
            else
              write(*,*) 'Error in M92: deltac1c2=',deltac1c2
            endif
      else if(gauge.eq.1) then !The lightcone-Gauge
            if(deltac1c2.eq.0) then
          M92 = 
     .      (4*(nkq*s-npq*t2))/(npg*(s-s1+t2)**2)
            else if(deltac1c2.eq.1) then
              M92 = 
     .      (4*(nkq*s-npq*t2))/(npg*(s-s1+t2)**2)
            else
              write(*,*) 'Error in M92: deltac1c2=',deltac1c2
            endif
      else
        write(*,*) 'Error in amplitude-routine M92 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
