module     p0_dbaru_epnebbbarg_abbrevd2h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(12), public :: abb2
   complex(ki), public :: R2d2
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=1.0_ki/(es34+es567-es12-es234)
      abb2(3)=sqrt2**(-1)
      abb2(4)=es56**(-1)
      abb2(5)=spbl5k2**(-1)
      abb2(6)=spak2k7**(-1)
      abb2(7)=spbl6k2**(-1)
      abb2(8)=-c1+2.0_ki*c3
      abb2(8)=abb2(8)*NC
      abb2(9)=c4-c2
      abb2(8)=abb2(8)-abb2(9)
      abb2(10)=-spbk3k1*spak1l5*abb2(8)
      abb2(11)=-spbk4k3*spak4l5*abb2(8)
      abb2(10)=abb2(10)+abb2(11)
      abb2(10)=abb2(7)*abb2(10)
      abb2(11)=-spbk3k1*spak1l6*abb2(8)
      abb2(8)=-spbk4k3*spak4l6*abb2(8)
      abb2(8)=abb2(11)+abb2(8)
      abb2(8)=abb2(5)*abb2(8)
      abb2(8)=abb2(10)+abb2(8)
      abb2(10)=gW*TR
      abb2(10)=CVDU*abb2(6)*abb2(4)*abb2(10)**2*abb2(3)*abb2(1)*abb2(2)*mB*spbk&
      &7k2*spak1k4*i_
      abb2(8)=8.0_ki*abb2(8)*abb2(10)
      abb2(11)=-abb2(7)*spak2l5
      abb2(12)=-abb2(5)*spak2l6
      abb2(11)=abb2(11)+abb2(12)
      abb2(12)=c3+c1
      abb2(12)=abb2(12)*NC
      abb2(9)=-abb2(12)+2.0_ki*abb2(9)
      abb2(10)=4.0_ki*abb2(10)
      abb2(9)=abb2(10)*abb2(9)*abb2(11)
      abb2(10)=spbk4k3*abb2(9)
      abb2(9)=spbk3k1*abb2(9)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd2h0
