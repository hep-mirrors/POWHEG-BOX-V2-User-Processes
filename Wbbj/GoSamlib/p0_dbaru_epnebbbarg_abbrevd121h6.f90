module     p0_dbaru_epnebbbarg_abbrevd121h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(36), public :: abb121
   complex(ki), public :: R2d121
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
      abb121(1)=1.0_ki/(-mB**2+es67)
      abb121(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb121(3)=1.0_ki/(es34+es567-es12-es234)
      abb121(4)=NC**(-1)
      abb121(5)=sqrt2**(-1)
      abb121(6)=spbk7k2**(-1)
      abb121(7)=spak2l6**(-1)
      abb121(8)=sqrt(mB**2)
      abb121(9)=abb121(4)**2
      abb121(10)=c2*abb121(9)*abb121(6)
      abb121(11)=TR*gW
      abb121(11)=abb121(11)**2*CVDU*i_*spak1k4*abb121(5)*abb121(3)*abb121(2)*ab&
      &b121(1)
      abb121(12)=abb121(11)*spbk3k1
      abb121(13)=abb121(10)*abb121(12)
      abb121(14)=2.0_ki*abb121(4)
      abb121(15)=abb121(11)*c3*abb121(6)
      abb121(16)=abb121(15)*spbk3k1
      abb121(17)=abb121(14)*abb121(16)
      abb121(17)=abb121(17)-abb121(13)
      abb121(18)=spbl6k2**2
      abb121(19)=-abb121(18)*abb121(17)
      abb121(20)=abb121(18)*NC
      abb121(21)=abb121(20)*abb121(16)
      abb121(19)=abb121(19)+abb121(21)
      abb121(21)=spak1l5*spal6k7
      abb121(22)=abb121(19)*abb121(21)
      abb121(11)=abb121(11)*spbk4k3
      abb121(23)=abb121(10)*abb121(11)
      abb121(15)=abb121(15)*spbk4k3
      abb121(24)=abb121(14)*abb121(15)
      abb121(23)=abb121(24)-abb121(23)
      abb121(18)=-abb121(18)*abb121(23)
      abb121(20)=abb121(20)*abb121(15)
      abb121(18)=abb121(18)+abb121(20)
      abb121(20)=spak4l5*spal6k7
      abb121(24)=abb121(18)*abb121(20)
      abb121(22)=abb121(22)+abb121(24)
      abb121(24)=8.0_ki*spak2l5*spbl5k2*abb121(22)
      abb121(22)=16.0_ki*abb121(22)
      abb121(25)=abb121(7)*mB**2
      abb121(26)=abb121(7)*abb121(8)*mB
      abb121(27)=abb121(25)-abb121(26)
      abb121(28)=-NC*abb121(15)*abb121(27)
      abb121(29)=abb121(10)*abb121(27)
      abb121(30)=-abb121(11)*abb121(29)
      abb121(27)=abb121(27)*abb121(4)
      abb121(31)=-abb121(15)*abb121(27)
      abb121(28)=-abb121(30)-abb121(28)+2.0_ki*abb121(31)
      abb121(30)=spak4l5*abb121(28)
      abb121(25)=abb121(16)*abb121(25)
      abb121(31)=abb121(26)*abb121(16)
      abb121(25)=abb121(25)-abb121(31)
      abb121(25)=abb121(25)*NC
      abb121(29)=-abb121(12)*abb121(29)
      abb121(27)=-abb121(16)*abb121(27)
      abb121(25)=abb121(25)-abb121(29)+2.0_ki*abb121(27)
      abb121(27)=spak1l5*abb121(25)
      abb121(27)=abb121(27)+abb121(30)
      abb121(27)=spbl5k2*abb121(27)
      abb121(10)=abb121(10)*spbl6k2
      abb121(29)=abb121(10)*abb121(11)
      abb121(30)=abb121(14)*spbl6k2
      abb121(32)=abb121(30)*abb121(15)
      abb121(15)=abb121(15)*NC
      abb121(33)=spbl6k2*abb121(15)
      abb121(29)=abb121(33)+abb121(29)-abb121(32)
      abb121(32)=abb121(29)*spak4l6
      abb121(33)=-abb121(26)*abb121(32)
      abb121(10)=abb121(10)*abb121(12)
      abb121(34)=abb121(16)*NC
      abb121(35)=spbl6k2*abb121(34)
      abb121(10)=abb121(10)+abb121(35)
      abb121(35)=-abb121(26)*abb121(10)
      abb121(36)=abb121(30)*abb121(31)
      abb121(35)=abb121(36)+abb121(35)
      abb121(35)=spak1l6*abb121(35)
      abb121(27)=abb121(35)+abb121(33)+abb121(27)
      abb121(27)=spak2k7*abb121(27)
      abb121(33)=abb121(29)*spak4k7
      abb121(16)=abb121(30)*abb121(16)
      abb121(10)=-abb121(16)+abb121(10)
      abb121(16)=abb121(10)*spak1k7
      abb121(16)=abb121(33)+abb121(16)
      abb121(30)=abb121(16)*abb121(8)**2
      abb121(14)=abb121(14)-NC
      abb121(31)=-abb121(31)*abb121(14)
      abb121(13)=abb121(13)*abb121(26)
      abb121(13)=abb121(13)+abb121(31)
      abb121(13)=abb121(13)*spak1k7
      abb121(15)=abb121(15)-abb121(23)
      abb121(23)=spak4k7*abb121(26)*abb121(15)
      abb121(13)=abb121(13)+abb121(23)
      abb121(23)=-es12+es712-es71
      abb121(13)=abb121(13)*abb121(23)
      abb121(20)=-abb121(29)*abb121(20)
      abb121(21)=-abb121(10)*abb121(21)
      abb121(20)=abb121(20)+abb121(21)
      abb121(20)=spbl6l5*abb121(20)
      abb121(13)=abb121(20)+abb121(27)+abb121(13)+abb121(30)
      abb121(13)=8.0_ki*abb121(13)
      abb121(16)=16.0_ki*abb121(16)
      abb121(20)=spak4k7*abb121(28)
      abb121(21)=spak1k7*abb121(25)
      abb121(20)=abb121(20)+abb121(21)
      abb121(20)=16.0_ki*abb121(20)
      abb121(11)=spak4k7*abb121(11)
      abb121(12)=spak1k7*abb121(12)
      abb121(11)=abb121(11)+abb121(12)
      abb121(12)=abb121(14)*c3
      abb121(9)=abb121(9)*c2
      abb121(9)=abb121(12)-abb121(9)
      abb121(9)=abb121(9)*abb121(11)
      abb121(11)=-spak1l6*abb121(10)
      abb121(9)=abb121(11)-abb121(32)+abb121(9)
      abb121(9)=8.0_ki*abb121(9)
      abb121(11)=spak4k7*abb121(15)
      abb121(12)=abb121(34)-abb121(17)
      abb121(12)=spak1k7*abb121(12)
      abb121(11)=abb121(11)+abb121(12)
      abb121(11)=spbk7l6*abb121(11)
      abb121(12)=spak2k4*abb121(28)
      abb121(14)=-spak1k2*abb121(25)
      abb121(11)=abb121(14)+abb121(11)+abb121(12)
      abb121(11)=8.0_ki*abb121(11)
      abb121(12)=8.0_ki*spal6k7
      abb121(14)=abb121(29)*abb121(12)
      abb121(15)=abb121(12)*spak2l5
      abb121(17)=abb121(18)*abb121(15)
      abb121(10)=abb121(10)*abb121(12)
      abb121(12)=abb121(19)*abb121(15)
      R2d121=0.0_ki
      rat2 = rat2 + R2d121
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='121' value='", &
          & R2d121, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd121h6
