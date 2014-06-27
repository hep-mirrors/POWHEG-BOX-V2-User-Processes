ccc colour stripped partial amplitude for M3M2u
      real*8 function M3M2u(coeffs2g)
      implicit none
      include "sqsq_realqg.h"
      integer coeffs2g
      if(deltac1c2.ne.1) then
        write(*,*) 'Error in M3M2u: deltac1c2=',deltac1c2
        write(*,*) 'These terms only contribute for d_c1c2=1'
        call exit(-1)
      endif
      if(gauge.eq.2) then !The Feynman-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M3M2u = 
     .      (4*mgo**2*(-((mgo-msq2)*(mgo+msq2)*(8*mgo**2+4*msq2**2-5*s-4*t1))
     .      +(-6*mgo**2+msq2**2+2*s+t1)*t2-t2**2))/((mgo**2-s-t1)*(mgo**2
     .      -s-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M3M2u = 
     .      (4*mgo**2*((mgo**2-s-t1)*(-8*mgo**2+2*(msq2**2+s-s2g+t1)-3*t2)
     .      *(mgo**2-s-t1+t2)+s2g*((mgo-msq2)*(mgo+msq2)*(8*mgo**2+4*msq2
     .      **2-5*s-4*t1)+(6*mgo**2-msq2**2-2*s-t1)*t2+t2**2)+(2*mgo**2-2
     .      *(s+t1)+t2)*((mgo-msq2)*(mgo+msq2)*(8*mgo**2+4*msq2**2-5*s-4*t1)
     .      +(6*mgo**2-msq2**2-2*s-t1)*t2+t2**2)))/((mgo**2-s-t1)*(mgo**2
     .      -s+s2g-t1)*(mgo**2-s-t1+t2)*(mgo**2-s+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M3M2u = 
     .      (4*mgo**2*(-4*msq2**4-(s+t1)*(3*s-2*s1twg+2*t1)+mgo**2*(-2*msq2
     .      **2+6*s-2*s1twg+6*t1-5*t2)+2*(2*s-s1twg+2*t1)*t2-2*t2**2+msq2
     .      **2*(3*s+2*t1+t2)))/((mgo**2-s-t1)*(mgo**2-s-t1+t2)*(mgo**2-s
     .      +s1twg-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M3M2u = 
     .      (-4*mgo**2*(4*mgo**8-4*s**4+5*s**3*s1twg-2*s**2*s1twg**2+7*s*
     .      *3*s2g-7*s**2*s1twg*s2g+2*s*s1twg**2*s2g-3*s**2*s2g**2+2*s*s1twg
     .      *s2g**2-14*s**3*t1+14*s**2*s1twg*t1-4*s*s1twg**2*t1+18*s**2*s2g
     .      *t1-13*s*s1twg*s2g*t1+2*s1twg**2*s2g*t1-5*s*s2g**2*t1+2*s1twg
     .      *s2g**2*t1-18*s**2*t1**2+13*s*s1twg*t1**2-2*s1twg**2*t1**2+15
     .      *s*s2g*t1**2-6*s1twg*s2g*t1**2-2*s2g**2*t1**2-10*s*t1**3+4*s1twg
     .      *t1**3+4*s2g*t1**3-2*t1**4+mgo**6*(-6*msq2**2+s+2*(s2g+t1)-3*t2)
     .      +2*(5*s**3+s**2*(-6*s1twg-7*s2g+14*t1)-(s1twg+s2g-2*t1)*(s1twg
     .      *s2g-2*(s1twg+s2g)*t1+2*t1**2)+s*(2*s1twg**2+2*s2g**2+6*s1twg
     .      *(s2g-2*t1)-13*s2g*t1+13*t1**2))*t2-2*(6*s**2+s1twg**2+3*s1twg
     .      *s2g+s2g**2-6*s*(s1twg+s2g-2*t1)-6*(s1twg+s2g)*t1+6*t1**2)*t2
     .      **2+4*(2*s-s1twg-s2g+2*t1)*t2**3-2*t2**4-4*msq2**4*(3*s**2+s2g
     .      **2-3*s2g*t1+3*t1**2+2*s2g*t2-4*t1*t2+t2**2+s1twg*(s2g-2*t1+t2)
     .      -s*(2*s1twg+3*s2g-6*t1+4*t2))+msq2**2*(3*s+2*t1+t2)*(3*s**2+s2g
     .      **2-3*s2g*t1+3*t1**2+2*s2g*t2-4*t1*t2+t2**2+s1twg*(s2g-2*t1+t2)
     .      -s*(2*s1twg+3*s2g-6*t1+4*t2))-mgo**4*(12*msq2**4+18*s**2+2*(s1twg
     .      -3*t1)*(s1twg+2*s2g-3*t1)+(12*s1twg+11*s2g-30*t1)*t2+14*t2**2
     .      +msq2**2*(-21*s+4*s1twg+6*s2g-18*t1+5*t2)-s*(11*s1twg+12*s2g-36
     .      *t1+28*t2))+mgo**2*(17*s**3-2*s1twg*s2g*(s1twg+s2g)+2*(2*s1twg
     .      +s2g)*(s1twg+3*s2g)*t1-2*(8*s1twg+9*s2g)*t1**2+14*t1**3+4*msq2
     .      **4*(6*s-2*s1twg-3*s2g+6*t1-4*t2)-(4*s1twg**2+13*s1twg*s2g+5*s2g
     .      **2-28*s1twg*t1-31*s2g*t1+35*t1**2)*t2+(-13*s1twg-14*s2g+30*t1)
     .      *t2**2-9*t2**3-s**2*(16*s1twg+21*s2g-48*t1+35*t2)+s*(4*s1twg*
     .      *2+14*s1twg*s2g+6*s2g**2-32*s1twg*t1-39*s2g*t1+45*t1**2+27*s1twg
     .      *t2+31*s2g*t2-70*t1*t2+29*t2**2)+msq2**2*(-24*s**2-2*(s1twg*(s2g
     .      -4*t1)+(s2g-3*t1)**2)-(s2g-10*t1)*t2+2*t2**2+s*(10*s1twg+15*s2g
     .      -42*t1+14*t2)))))/((mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(mgo**2-s-t1
     .      +t2)*(mgo**2-s+s1twg-t1+t2)*(mgo**2-s+s2g-t1+t2)*(mgo**2-s+s1twg
     .      +s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M3M2u = 
     .      (-4*mgo**2*(8*mgo**4-4*msq2**4-3*s*s1twg+2*s1twg**2-2*s*s2g+4
     .      *s1twg*s2g+2*s2g**2-2*s1twg*t1-2*s2g*t1+msq2**2*(5*s-2*(s1twg
     .      +s2g-2*t1)-t2)-(2*s-3*(s1twg+s2g)+t1)*t2+t2**2+mgo**2*(-4*msq2
     .      **2-5*s+8*s1twg+8*s2g-4*t1+6*t2)))/((mgo**2-s+s2g-t1)*(mgo**2
     .      -s+s1twg+s2g-t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M3M2u:",coeffs2g
            call exit(-1)
          endif
      else if(gauge.eq.1) then !The lightcone-Gauge
        if(coeffs2g.eq.10) then !return the term propto 1/s2g*1/s1twg
          M3M2u = 
     .      (4*mgo**2*(-((mgo-msq2)*(mgo+msq2)*(6*mgo**2+4*msq2**2-3*s-2*t1))
     .      +(-3*mgo**2-msq2**2+s)*t2+(-(nk1*(2*mgo**2-2*msq2**2+t2)*(3*mgo
     .      **2-3*(s+t1)+2*t2))+(mgo**2-s-t1)*(2*(-mgo**2+msq2**2)*npq+nkq
     .      *(-2*mgo**2+2*msq2**2+s-t2)+nk2*(2*mgo**2-2*msq2**2+t2)))/npg))
     .      /((mgo**2-s-t1)*(mgo**2-s-t1+t2))
        else if(coeffs2g.eq.11) then !return the term propto 1/s1twg
          M3M2u = 
     .      (4*mgo**2*(7*mgo**6+(s+t1)**2*(s-s2g+t1)+(-2*s+s2g-2*t1)*t1*t2
     .      +t1*t2**2-msq2**2*(2*s-s2g+2*t1-t2)*(3*s+2*t1+t2)+mgo**4*(-4*msq2
     .      **2-7*s+5*s2g-5*t1+6*t2)+msq2**4*(8*s-4*(s2g-2*t1+t2))-mgo**2
     .      *(8*msq2**4+s**2+2*msq2**2*(-5*s+s2g-4*t1)+3*t1**2-2*t2*(s2g+t2)
     .      +s*(s2g+4*t1+3*t2))+(-((mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(-(nkq
     .      *(mgo**2-2*msq2**2+t1))+nk2*(mgo**2-2*msq2**2+s+t1)-npq*(mgo*
     .      *2-2*msq2**2+s+t1-t2)))+nk1*(3*(mgo**2-s-t1)*(mgo**2-s+s2g-t1)
     .      *(mgo**2-2*msq2**2+s+t1)+2*(3*mgo**4-(s+t1)**2-2*mgo**2*(2*msq2
     .      **2+s-s2g+t1)+msq2**2*(4*s-2*s2g+4*t1))*t2+2*(3*mgo**2-2*msq2
     .      **2-s+s2g-t1)*t2**2+2*t2**3))/npg))/((mgo**2-s-t1)*(mgo**2-s+s2g
     .      -t1)*(mgo**2-s-t1+t2)*(mgo**2-s+s2g-t1+t2))
        else if(coeffs2g.eq.12) then !return the term propto 1/s2g
          M3M2u = 
     .      (4*mgo**2*(mgo**2-s-t1)*(-mgo**4-4*msq2**4-(s+t1)*(2*s-2*s1twg
     .      +t1)+mgo**2*(6*s-2*s1twg+6*t1-6*t2)+(3*s-2*s1twg+3*t1)*t2-2*t2
     .      **2+msq2**2*(s+3*t2)+((mgo**2-s-t1)*(nkq*(mgo**2-2*msq2**2+t1)
     .      -nk2*(mgo**2-2*msq2**2+s+t1)+npq*(mgo**2-2*msq2**2+s+t1-t2))+nk1
     .      *(mgo**2-2*msq2**2+s+t1)*(3*mgo**2-3*(s+t1)+2*t2))/npg))/((-mgo
     .      **2+s+t1)**2*(mgo**2-s-t1+t2)*(mgo**2-s+s1twg-t1+t2))
        else if(coeffs2g.eq.13) then !return the term propto O(1)
          M3M2u = 
     .      (4*mgo**2*(mgo**2-s-t1)*(-2*mgo**8+(s+t1)*(s-s2g+t1)*(2*(s-s1twg)
     .      *(s-s1twg-s2g)+(2*s-3*s1twg-s2g)*t1)-(5*s**3-2*s1twg*s2g*(s1twg
     .      +s2g)+(4*s1twg**2+11*s1twg*s2g+3*s2g**2)*t1-(10*s1twg+7*s2g)*t1
     .      **2+3*t1**3+s**2*(-10*s1twg-9*s2g+13*t1)+s*(4*s1twg**2+11*s1twg
     .      *s2g+3*s2g**2-4*(5*s1twg+4*s2g)*t1+11*t1**2))*t2+(8*s**2+2*s1twg
     .      **2+s1twg*(6*s2g-11*t1)+2*(s2g-4*t1)*(s2g-t1)+s*(-11*s1twg-10
     .      *s2g+16*t1))*t2**2+(-7*s+4*(s1twg+s2g)-7*t1)*t2**3+2*t2**4+mgo
     .      **6*(2*msq2**2-5*s+s1twg+s2g-6*t1+8*t2)+4*msq2**4*(3*s**2+s2g
     .      **2-3*s2g*t1+3*t1**2+2*s2g*t2-4*t1*t2+t2**2+s1twg*(s2g-2*t1+t2)
     .      -s*(2*s1twg+3*s2g-6*t1+4*t2))+mgo**4*(12*msq2**4+18*s**2+2*s1twg
     .      **2+5*s1twg*s2g+s2g**2-13*s1twg*t1-15*s2g*t1+18*t1**2+14*s1twg
     .      *t2+16*s2g*t2-35*t1*t2+18*t2**2-msq2**2*(9*s-2*s1twg+6*t1+5*t2)
     .      -3*s*(4*s1twg+5*s2g-12*t1+11*t2))+msq2**2*(-5*s**3+2*(s1twg-t1)
     .      *t1**2+s**2*(4*s1twg+3*s2g-12*t1-t2)+(-3*s2g*(s1twg+s2g)+(4*s1twg
     .      +9*s2g)*t1-5*t1**2)*t2+(-3*s1twg-6*s2g+10*t1)*t2**2-3*t2**3-s
     .      *(s2g**2-3*s2g*t1+9*t1**2+s1twg*(s2g-6*t1-3*t2)-7*s2g*t2+6*t1
     .      *t2-9*t2**2))+((mgo**2-s-t1)*(mgo**2-s+s2g-t1)*(-(nkq*(mgo**2
     .      -2*msq2**2+t1))+nk2*(mgo**2-2*msq2**2+s+t1)-npq*(mgo**2-2*msq2
     .      **2+s+t1-t2))*(2*mgo**2-2*s+s1twg+s2g-2*t1+2*t2)-nk1*(mgo**2-2
     .      *msq2**2+s+t1)*(3*(2*mgo**2-2*s+s1twg+s2g-2*t1)*(mgo**2-s-t1)
     .      *(mgo**2-s+s2g-t1)+2*(6*mgo**4+6*s**2+s2g*(s1twg+s2g)-2*s*(s1twg
     .      +3*s2g-6*t1)+2*mgo**2*(-6*s+s1twg+3*s2g-6*t1)-2*(s1twg+3*s2g)
     .      *t1+6*t1**2)*t2+2*(4*mgo**2-4*s+s1twg+2*s2g-4*t1)*t2**2+2*t2*
     .      *3))/npg+mgo**2*(-13*s**3+2*s1twg**2*s2g+2*s1twg*s2g**2-4*s1twg
     .      **2*t1-14*s1twg*s2g*t1-6*s2g**2*t1+15*s1twg*t1**2+15*s2g*t1**2
     .      -10*t1**3+(4*s1twg**2+6*s2g**2+14*s1twg*(s2g-2*t1)-31*s2g*t1+30
     .      *t1**2)*t2+2*(7*s1twg+8*s2g-15*t1)*t2**2+10*t2**3+4*msq2**4*(
     .      -6*s+2*s1twg+3*s2g-6*t1+4*t2)+3*s**2*(5*s1twg+6*s2g-12*t1+10*t2)
     .      +msq2**2*(12*s**2+6*t1**2-3*s*(2*s1twg+s2g-6*t1-2*t2)-9*s2g*t2
     .      +10*t1*t2-10*t2**2-4*s1twg*(t1+t2))-s*(4*s1twg**2+6*s2g**2-33
     .      *s2g*t1+33*t1**2+31*s2g*t2-60*t1*t2+29*t2**2+s1twg*(14*s2g-30
     .      *t1+27*t2)))))/((mgo**2-s+s2g-t1)*(-mgo**2+s+t1)**2*(mgo**2-s
     .      -t1+t2)*(mgo**2-s+s1twg-t1+t2)*(mgo**2-s+s2g-t1+t2)*(mgo**2-s
     .      +s1twg+s2g-t1+t2))
          else if(coeffs2g.eq.99) then !return the  complete term, with the resonant propagators left out
          M3M2u = 
     .      (4*mgo**2*(-6*mgo**4+4*msq2**4+2*s*s1twg-2*s1twg**2+s*s2g-3*s1twg
     .      *s2g-s2g**2+s1twg*t1+s2g*t1+mgo**2*(2*msq2**2+3*s-7*s1twg-5*s2g
     .      +2*t1-3*t2)+(s-2*s1twg-s2g)*t2-msq2**2*(3*s-2*s1twg+2*t1+t2)+(
     .      -(nk1*(2*mgo**2-2*msq2**2+s1twg+s2g+t2)*(3*mgo**2-3*(s-s2g+t1)
     .      +2*t2))+(mgo**2-s+s2g-t1)*(-(npq*(2*mgo**2-2*msq2**2+s1twg+s2g))
     .      +nk2*(2*mgo**2-2*msq2**2+s1twg+s2g+t2)-nkq*(2*mgo**2-2*msq2**2
     .      -s+s1twg+s2g+t2)))/npg))/((mgo**2-s+s2g-t1)*(mgo**2-s+s1twg+s2g
     .      -t1+t2))
          else
            write(*,*) "Wrong option for coeffs2g in M3M2u:",coeffs2g
            call exit(-1)
          endif
      else
        write(*,*) 'Error in amplitude-routine M3M2u1 for the qg-contributions:' 
        write(*,*) 'gauge = ',gauge
        call exit(-1)
      endif
      end
