module     p0_dbaru_epnebbbarg_abbrevd16h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(29), public :: abb16
   complex(ki), public :: R2d16
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
      abb16(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb16(2)=es56**(-1)
      abb16(3)=es71**(-1)
      abb16(4)=spbl5k2**(-1)
      abb16(5)=spbl6k2**(-1)
      abb16(6)=abb16(5)*spak1l5
      abb16(7)=abb16(4)*spak1l6
      abb16(8)=abb16(6)+abb16(7)
      abb16(9)=abb16(8)*spbe7k1
      abb16(10)=abb16(5)*spal5k7
      abb16(11)=abb16(4)*spal6k7
      abb16(12)=abb16(10)+abb16(11)
      abb16(13)=abb16(12)*spbk7e7
      abb16(9)=abb16(9)-abb16(13)
      abb16(13)=c3*NC
      abb16(13)=abb16(13)-c4
      abb16(14)=-spak3k4*abb16(13)
      abb16(15)=-abb16(14)*abb16(9)
      abb16(16)=gW*TR
      abb16(16)=abb16(16)**2*abb16(3)*abb16(1)*abb16(2)*CVDU*mB*spak1e7*i_
      abb16(17)=abb16(15)*abb16(16)*spbk3k2**2
      abb16(17)=8.0_ki*abb16(17)
      abb16(7)=abb16(7)*spbl6k2
      abb16(7)=abb16(7)+spak1l5
      abb16(18)=spak4l6*abb16(7)
      abb16(6)=abb16(6)*spbl5k2
      abb16(6)=abb16(6)+spak1l6
      abb16(19)=abb16(6)*spak4l5
      abb16(18)=abb16(19)+abb16(18)
      abb16(19)=abb16(13)*spbe7k1
      abb16(18)=-abb16(18)*abb16(19)
      abb16(11)=abb16(11)*spbl6k2
      abb16(11)=abb16(11)+spal5k7
      abb16(20)=spak4l6*abb16(11)
      abb16(10)=abb16(10)*spbl5k2
      abb16(10)=abb16(10)+spal6k7
      abb16(21)=spak4l5*abb16(10)
      abb16(20)=abb16(21)+abb16(20)
      abb16(21)=abb16(13)*spbk7e7
      abb16(20)=abb16(20)*abb16(21)
      abb16(18)=abb16(18)+abb16(20)
      abb16(15)=-spbk3k2*abb16(15)
      abb16(15)=2.0_ki*abb16(18)+abb16(15)
      abb16(18)=abb16(16)*spbk3k2
      abb16(18)=2.0_ki*abb16(18)
      abb16(15)=abb16(15)*abb16(18)
      abb16(20)=4.0_ki*spbk3k2
      abb16(20)=abb16(20)*abb16(16)
      abb16(22)=abb16(20)*abb16(9)*abb16(14)*spbl6k3
      abb16(23)=spbe7k1*spak1k4
      abb16(24)=spbk7e7*spak4k7
      abb16(23)=abb16(23)-abb16(24)
      abb16(24)=-abb16(4)*abb16(13)
      abb16(25)=-abb16(20)*abb16(24)*abb16(23)
      abb16(26)=abb16(20)*spbk7e7
      abb16(27)=abb16(14)*abb16(4)
      abb16(28)=abb16(27)*abb16(26)
      abb16(9)=abb16(20)*abb16(9)*abb16(14)*spbl5k3
      abb16(13)=-abb16(5)*abb16(13)
      abb16(23)=-abb16(20)*abb16(13)*abb16(23)
      abb16(14)=abb16(14)*abb16(5)
      abb16(26)=abb16(14)*abb16(26)
      abb16(7)=-abb16(7)*abb16(19)
      abb16(11)=abb16(11)*abb16(21)
      abb16(7)=abb16(7)+abb16(11)
      abb16(11)=4.0_ki*abb16(16)
      abb16(7)=abb16(7)*abb16(11)
      abb16(16)=abb16(11)*spbk7e7
      abb16(29)=abb16(24)*abb16(16)
      abb16(6)=-abb16(6)*abb16(19)
      abb16(10)=abb16(10)*abb16(21)
      abb16(6)=abb16(6)+abb16(10)
      abb16(6)=abb16(6)*abb16(11)
      abb16(10)=abb16(13)*abb16(16)
      abb16(8)=-abb16(8)*abb16(19)
      abb16(12)=abb16(12)*abb16(21)
      abb16(8)=abb16(8)+abb16(12)
      abb16(8)=abb16(8)*abb16(18)
      abb16(12)=abb16(20)*spbe7k1
      abb16(16)=abb16(27)*abb16(12)
      abb16(12)=abb16(14)*abb16(12)
      abb16(11)=abb16(11)*spbe7k1
      abb16(14)=abb16(24)*abb16(11)
      abb16(11)=abb16(13)*abb16(11)
      R2d16=0.0_ki
      rat2 = rat2 + R2d16
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='16' value='", &
          & R2d16, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd16h0
