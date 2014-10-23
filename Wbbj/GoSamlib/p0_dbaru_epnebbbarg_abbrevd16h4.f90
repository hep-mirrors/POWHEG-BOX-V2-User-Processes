module     p0_dbaru_epnebbbarg_abbrevd16h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(31), public :: abb16
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
      abb16(2)=sqrt2**(-1)
      abb16(3)=es56**(-1)
      abb16(4)=es71**(-1)
      abb16(5)=spbl5k2**(-1)
      abb16(6)=spbl6k2**(-1)
      abb16(7)=spbk7k2**(-1)
      abb16(8)=abb16(6)*spal5k7
      abb16(9)=abb16(5)*spal6k7
      abb16(10)=abb16(8)+abb16(9)
      abb16(11)=c3*NC
      abb16(11)=abb16(11)-c4
      abb16(12)=-spak3k4*abb16(11)
      abb16(13)=abb16(12)*abb16(10)
      abb16(14)=abb16(6)*spak1l5
      abb16(15)=abb16(5)*spak1l6
      abb16(16)=abb16(14)+abb16(15)
      abb16(17)=abb16(7)*spbk2k1
      abb16(18)=abb16(16)*abb16(17)
      abb16(19)=-abb16(12)*abb16(18)
      abb16(19)=abb16(19)+abb16(13)
      abb16(20)=gW*TR
      abb16(20)=abb16(4)*abb16(20)**2*abb16(3)*abb16(1)*abb16(2)*CVDU*mB*spak1k&
      &7*i_
      abb16(21)=abb16(20)*spbk3k2**2
      abb16(21)=16.0_ki*abb16(21)
      abb16(21)=abb16(21)*abb16(19)
      abb16(22)=abb16(11)*abb16(17)
      abb16(15)=abb16(15)*spbl6k2
      abb16(15)=abb16(15)+spak1l5
      abb16(23)=spak4l6*abb16(15)
      abb16(14)=abb16(14)*spbl5k2
      abb16(14)=abb16(14)+spak1l6
      abb16(24)=abb16(14)*spak4l5
      abb16(23)=abb16(24)+abb16(23)
      abb16(23)=-abb16(23)*abb16(22)
      abb16(8)=abb16(8)*spbl5k2
      abb16(8)=abb16(8)+spal6k7
      abb16(24)=spak4l5*abb16(8)
      abb16(9)=abb16(9)*spbl6k2
      abb16(9)=abb16(9)+spal5k7
      abb16(25)=spak4l6*abb16(9)
      abb16(24)=abb16(25)+abb16(24)
      abb16(24)=abb16(24)*abb16(11)
      abb16(23)=abb16(23)+abb16(24)
      abb16(19)=-spbk3k2*abb16(19)
      abb16(19)=2.0_ki*abb16(23)+abb16(19)
      abb16(23)=abb16(20)*spbk3k2
      abb16(23)=4.0_ki*abb16(23)
      abb16(19)=abb16(19)*abb16(23)
      abb16(24)=-spbl6k3*abb16(13)
      abb16(25)=abb16(18)*abb16(12)*spbl6k3
      abb16(24)=abb16(25)+abb16(24)
      abb16(25)=8.0_ki*spbk3k2
      abb16(25)=abb16(25)*abb16(20)
      abb16(24)=abb16(24)*abb16(25)
      abb16(26)=abb16(17)*spak1k4
      abb16(26)=abb16(26)-spak4k7
      abb16(27)=-abb16(5)*abb16(11)
      abb16(28)=-abb16(25)*abb16(27)*abb16(26)
      abb16(29)=abb16(12)*abb16(5)
      abb16(30)=abb16(29)*abb16(25)
      abb16(13)=-spbl5k3*abb16(13)
      abb16(18)=abb16(18)*abb16(12)*spbl5k3
      abb16(13)=abb16(18)+abb16(13)
      abb16(13)=abb16(13)*abb16(25)
      abb16(18)=-abb16(6)*abb16(11)
      abb16(26)=-abb16(25)*abb16(18)*abb16(26)
      abb16(12)=abb16(12)*abb16(6)
      abb16(31)=abb16(12)*abb16(25)
      abb16(9)=abb16(9)*abb16(11)
      abb16(15)=-abb16(15)*abb16(22)
      abb16(9)=abb16(15)+abb16(9)
      abb16(15)=8.0_ki*abb16(20)
      abb16(9)=abb16(9)*abb16(15)
      abb16(20)=abb16(27)*abb16(15)
      abb16(8)=abb16(8)*abb16(11)
      abb16(14)=-abb16(14)*abb16(22)
      abb16(8)=abb16(14)+abb16(8)
      abb16(8)=abb16(8)*abb16(15)
      abb16(14)=abb16(18)*abb16(15)
      abb16(16)=-abb16(16)*abb16(22)
      abb16(10)=abb16(10)*abb16(11)
      abb16(10)=abb16(16)+abb16(10)
      abb16(10)=abb16(10)*abb16(23)
      abb16(11)=abb16(25)*abb16(17)
      abb16(16)=abb16(29)*abb16(11)
      abb16(11)=abb16(12)*abb16(11)
      abb16(12)=abb16(15)*abb16(17)
      abb16(15)=abb16(27)*abb16(12)
      abb16(12)=abb16(18)*abb16(12)
      R2d16=0.0_ki
      rat2 = rat2 + R2d16
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='16' value='", &
          & R2d16, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd16h4
