ccc colour stripped partial amplitude for M2M4
      real*8 function M2M4(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(gauge.eq.2) then !The Feynman-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M4 = 
     .      (-4*(2*msq2**2*(t1*(-msq2**2+s1+t1)+msq1**2*(msq2**2-t1-t2))+mgo
     .      **4*(s1-t2)+mgo**2*(-(msq2**2*(s-2*t1))+(s-3*s1-2*t1)*t1+(s+2
     .      *t1)*t2+msq1**2*(-2*msq2**2+2*t1+t2))))/((mgo**2-t1)**2*t2)
            else if(deltac1c2.eq.1) then
              M2M4 = 
     .      (4*mgo**2*(s*t1-s1*(mgo**2+t1)+(mgo**2+msq1**2+s)*t2-msq2**2*(s
     .      -2*s1+2*t2)))/((mgo**2-t1)**2*t2)
            else
              write(*,*) 'Error in M2M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M4 = 
     .      (8*t1*(-msq2**2+s1+t1)+8*msq1**2*(msq2**2-t1-t2)+4*mgo**2*(-s1
     .      +t2))/((mgo**2-t1)**2*t2)
            else if(deltac1c2.eq.1) then
              M2M4 = 
     .      (4*mgo**2*(-s1+t2))/((mgo**2-t1)**2*t2)
            else
              write(*,*) 'Error in M2M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M4 = 
     .      (-4*(2*(msq2**2-s2g)*(t1*(-msq2**2+s1+t1)+msq1**2*(msq2**2-t1
     .      -t2))+mgo**4*(s1-t2)+mgo**2*(s1*s2g-msq2**2*(s-2*t1)+(s-3*s1-2
     .      *t1)*t1+(s-s2g+2*t1)*t2+msq1**2*(-2*msq2**2+2*t1+t2))))/((mgo
     .      **2-t1)**2*t2)
            else if(deltac1c2.eq.1) then
              M2M4 = 
     .      (4*mgo**2*(s*t1-s1*(mgo**2+s2g+t1)+(mgo**2+msq1**2+s+s2g)*t2-msq2
     .      **2*(s-2*s1+2*t2)))/((mgo**2-t1)**2*t2)
            else
              write(*,*) 'Error in M2M4: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M4:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
          if(coeffs2g.eq.1) then !return the term propto 1/s2g
            if(deltac1c2.eq.0) then
          M2M4 = 
     .      (4*(mgo**4*msq1**2*nkq-2*mgo**2*msq1**2*msq2**2*nkq-mgo**4*msq1
     .      **2*npg+3*mgo**2*msq1**2*msq2**2*npg-2*msq1**2*msq2**4*npg+mgo
     .      **2*msq2**2*nkq*s-mgo**4*nkq*s1-mgo**4*nkq*t1+2*mgo**2*msq2**2
     .      *nkq*t1+2*msq1**2*msq2**2*nkq*t1+mgo**4*npg*t1-mgo**2*msq1**2
     .      *npg*t1-3*mgo**2*msq2**2*npg*t1+msq1**2*msq2**2*npg*t1+2*msq2
     .      **4*npg*t1-msq2**2*nkq*s*t1-mgo**2*npg*s*t1+msq2**2*npg*s*t1+2
     .      *mgo**2*npg*s1*t1-2*msq2**2*npg*s1*t1-msq1**2*nkq*t1**2-2*msq2
     .      **2*nkq*t1**2+mgo**2*npg*t1**2-msq2**2*npg*t1**2+nkq*s1*t1**2
     .      +nkq*t1**3+mgo**4*nkq*t2-mgo**2*msq1**2*nkq*t2+msq1**2*msq2**2
     .      *nkq*t2-mgo**2*msq1**2*npg*t2+2*msq1**2*msq2**2*npg*t2-mgo**2
     .      *nkq*s*t2+mgo**2*nkq*t1*t2-msq2**2*nkq*t1*t2-mgo**2*npg*t1*t2
     .      +nkq*s1*t1*t2-nkq*t1**2*t2+npq*(msq1**2*msq2**2+mgo**2*(-msq1
     .      **2-msq2**2+s1+t1))*t2+nk2*(2*mgo**2*(-msq1**2+t1)-t1*(msq2**2
     .      +2*s-s1+t1)+msq1**2*(msq2**2+t1-t2))*t2-msq1**2*nkq*t2**2+nk1
     .      *t2*(msq2**2*(-msq1**2+t1)+mgo**2*(msq1**2-s1-t1+t2))))/(npg*(mgo
     .      **2-t1)**2*t2)
            else if(deltac1c2.eq.1) then
              M2M4 = 
     .      (4*mgo**2*(-(mgo**2*nkq*s)+mgo**2*npg*s-msq2**2*npg*s+2*mgo**2
     .      *nkq*s1-2*mgo**2*npg*s1+2*msq2**2*npg*s1+nkq*s*t1-2*nkq*s1*t1
     .      -2*mgo**2*nkq*t2+2*mgo**2*npg*t2+msq1**2*npg*t2-2*msq2**2*npg
     .      *t2+nkq*s*t2-nkq*s1*t2+npq*(mgo**2-s1-t1)*t2+2*nkq*t1*t2-npg*t1
     .      *t2+nk1*(s1-t2)*t2+nkq*t2**2+nk2*t2*(2*s-s1+t2)))/(npg*(mgo**2
     .      -t1)**2*t2)
            else
              write(*,*) 'Error in M2M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.2) then !return the term O(1) wrt s2g-propagator
            if(deltac1c2.eq.0) then
          M2M4 = 
     .      (4*(2*mgo**2*msq1**2*nkq-2*msq1**2*msq2**2*nkq-2*mgo**2*msq1*
     .      *2*npg+3*msq1**2*msq2**2*npg-mgo**2*nkq*s1+(nkq-npg)*s2g*(msq1
     .      **2-t1)-2*mgo**2*nkq*t1+2*msq2**2*nkq*t1+2*mgo**2*npg*t1-msq1
     .      **2*npg*t1-3*msq2**2*npg*t1+nkq*s*t1-npg*s*t1-nkq*s1*t1+2*npg
     .      *s1*t1+npg*t1**2+mgo**2*nkq*t2+msq1**2*nkq*t2-2*msq1**2*npg*t2
     .      -msq1**2*npq*t2+nk1*(msq1**2-t1)*t2+2*nk2*(-msq1**2+t1)*t2))/(npg
     .      *(mgo**2-t1)**2*t2)
            else if(deltac1c2.eq.1) then
              M2M4 = 
     .      (4*mgo**2*(npq*t2-(nkq-npg)*(s-2*s1+2*t2)))/(npg*(mgo**2-t1)*
     .      *2*t2)
            else
              write(*,*) 'Error in M2M4: deltac1c2=',deltac1c2
            endif
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
            if(deltac1c2.eq.0) then
          M2M4 = 
     .      (4*(mgo**4*msq1**2*nkq-2*mgo**2*msq1**2*msq2**2*nkq-mgo**4*msq1
     .      **2*npg+3*mgo**2*msq1**2*msq2**2*npg-2*msq1**2*msq2**4*npg+mgo
     .      **2*msq2**2*nkq*s-mgo**4*nkq*s1+2*mgo**2*msq1**2*nkq*s2g-2*msq1
     .      **2*msq2**2*nkq*s2g-2*mgo**2*msq1**2*npg*s2g+3*msq1**2*msq2**2
     .      *npg*s2g-mgo**2*nkq*s1*s2g+msq1**2*nkq*s2g**2-msq1**2*npg*s2g
     .      **2-mgo**4*nkq*t1+2*mgo**2*msq2**2*nkq*t1+2*msq1**2*msq2**2*nkq
     .      *t1+mgo**4*npg*t1-mgo**2*msq1**2*npg*t1-3*mgo**2*msq2**2*npg*t1
     .      +msq1**2*msq2**2*npg*t1+2*msq2**4*npg*t1-msq2**2*nkq*s*t1-mgo
     .      **2*npg*s*t1+msq2**2*npg*s*t1+2*mgo**2*npg*s1*t1-2*msq2**2*npg
     .      *s1*t1-2*mgo**2*nkq*s2g*t1+2*msq2**2*nkq*s2g*t1+2*mgo**2*npg*s2g
     .      *t1-msq1**2*npg*s2g*t1-3*msq2**2*npg*s2g*t1+nkq*s*s2g*t1-npg*s
     .      *s2g*t1-nkq*s1*s2g*t1+2*npg*s1*s2g*t1-nkq*s2g**2*t1+npg*s2g**2
     .      *t1-msq1**2*nkq*t1**2-2*msq2**2*nkq*t1**2+mgo**2*npg*t1**2-msq2
     .      **2*npg*t1**2+nkq*s1*t1**2+npg*s2g*t1**2+nkq*t1**3+mgo**4*nkq
     .      *t2-mgo**2*msq1**2*nkq*t2+msq1**2*msq2**2*nkq*t2-mgo**2*msq1*
     .      *2*npg*t2+2*msq1**2*msq2**2*npg*t2-mgo**2*nkq*s*t2+mgo**2*nkq
     .      *s2g*t2+msq1**2*nkq*s2g*t2-2*msq1**2*npg*s2g*t2+mgo**2*nkq*t1
     .      *t2-msq2**2*nkq*t1*t2-mgo**2*npg*t1*t2+nkq*s1*t1*t2-nkq*t1**2
     .      *t2+npq*(msq1**2*(msq2**2-s2g)+mgo**2*(-msq1**2-msq2**2+s1+t1))
     .      *t2+nk2*(2*mgo**2*(-msq1**2+t1)-t1*(msq2**2+2*s-s1-2*s2g+t1)+msq1
     .      **2*(msq2**2-2*s2g+t1-t2))*t2-msq1**2*nkq*t2**2+nk1*t2*(-((msq2
     .      **2-s2g)*(msq1**2-t1))+mgo**2*(msq1**2-s1-t1+t2))))/(npg*(mgo
     .      **2-t1)**2*t2)
            else if(deltac1c2.eq.1) then
              M2M4 = 
     .      (4*mgo**2*(-(mgo**2*nkq*s)+mgo**2*npg*s-msq2**2*npg*s+2*mgo**2
     .      *nkq*s1-2*mgo**2*npg*s1+2*msq2**2*npg*s1-nkq*s*s2g+npg*s*s2g+2
     .      *nkq*s1*s2g-2*npg*s1*s2g+nkq*s*t1-2*nkq*s1*t1-2*mgo**2*nkq*t2
     .      +2*mgo**2*npg*t2+msq1**2*npg*t2-2*msq2**2*npg*t2+nkq*s*t2-nkq
     .      *s1*t2-2*nkq*s2g*t2+2*npg*s2g*t2+npq*(mgo**2-s1+s2g-t1)*t2+2*nkq
     .      *t1*t2-npg*t1*t2+nk1*(s1-t2)*t2+nkq*t2**2+nk2*t2*(2*s-s1+t2)))
     .      /(npg*(mgo**2-t1)**2*t2)
            else
              write(*,*) 'Error in M2M4: deltac1c2=',deltac1c2
            endif
          else
            write(*,*) "Wrong option for coeffs2g in M2M4:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M2M40 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
