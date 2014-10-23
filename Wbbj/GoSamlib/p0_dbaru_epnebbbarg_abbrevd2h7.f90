module     p0_dbaru_epnebbbarg_abbrevd2h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
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
      abb2(5)=spak2l5**(-1)
      abb2(6)=spbk7k2**(-1)
      abb2(7)=spak2l6**(-1)
      abb2(8)=abb2(7)*spbl5k2
      abb2(9)=abb2(5)*spbl6k2
      abb2(8)=abb2(8)+abb2(9)
      abb2(9)=spbk4k3*spak4k7
      abb2(10)=spbk3k1*spak1k7
      abb2(9)=abb2(9)+abb2(10)
      abb2(10)=-c3+2.0_ki*c1
      abb2(10)=abb2(10)*NC
      abb2(11)=c4-c2
      abb2(10)=abb2(10)-abb2(11)
      abb2(12)=gW*TR
      abb2(12)=abb2(6)*abb2(4)*abb2(12)**2*abb2(3)*abb2(1)*abb2(2)*CVDU*mB*spak&
      &1k4*i_
      abb2(9)=8.0_ki*abb2(12)*abb2(8)*abb2(10)*abb2(9)
      abb2(10)=c3+c1
      abb2(10)=abb2(10)*NC
      abb2(10)=-abb2(10)+2.0_ki*abb2(11)
      abb2(11)=4.0_ki*abb2(12)
      abb2(8)=abb2(11)*abb2(8)*abb2(10)*spak2k7
      abb2(10)=spbk4k3*abb2(8)
      abb2(8)=spbk3k1*abb2(8)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd2h7
