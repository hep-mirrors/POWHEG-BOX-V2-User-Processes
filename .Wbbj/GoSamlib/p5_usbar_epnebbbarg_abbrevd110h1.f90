module     p5_usbar_epnebbbarg_abbrevd110h1
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(45), public :: abb110
   complex(ki), public :: R2d110
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb110(1)=1.0_ki/(-es71+es712-es12)
      abb110(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb110(3)=1.0_ki/(es34+es567-es12-es234)
      abb110(4)=sqrt(mB**2)
      abb110(5)=NC**(-1)
      abb110(6)=spak2l5**(-1)
      abb110(7)=spbl6k2**(-1)
      abb110(8)=spak2l6**(-1)
      abb110(9)=-spbk7k3*spak3k4
      abb110(10)=spbk7k1*spak1k4
      abb110(9)=abb110(10)+abb110(9)
      abb110(9)=spak2k7*abb110(9)
      abb110(10)=-spbl6k3*spak3k4
      abb110(11)=spbl6k1*spak1k4
      abb110(10)=abb110(11)+abb110(10)
      abb110(10)=spak2l6*abb110(10)
      abb110(9)=abb110(10)+abb110(9)
      abb110(10)=-NC+2.0_ki*abb110(5)
      abb110(11)=TR*gW
      abb110(11)=abb110(11)**2*spbk7e7*i_*spak2e7*CVSU*abb110(3)*abb110(2)*abb1&
      &10(1)
      abb110(12)=abb110(11)*c3
      abb110(13)=-abb110(10)*spbk3k1*abb110(12)
      abb110(14)=-mB*abb110(13)*abb110(6)
      abb110(15)=abb110(5)**2
      abb110(16)=abb110(15)*spbk3k1
      abb110(17)=abb110(16)*c4
      abb110(18)=abb110(17)*mB
      abb110(19)=abb110(11)*abb110(6)
      abb110(20)=abb110(18)*abb110(19)
      abb110(14)=abb110(14)-abb110(20)
      abb110(9)=abb110(14)*abb110(9)
      abb110(20)=abb110(11)*c4
      abb110(16)=abb110(16)*abb110(20)
      abb110(16)=abb110(13)+abb110(16)
      abb110(21)=spbl5k3*spak3k4
      abb110(22)=spbl5k1*spak1k4
      abb110(21)=abb110(21)-abb110(22)
      abb110(22)=-abb110(21)*abb110(16)*mB
      abb110(9)=abb110(9)+abb110(22)
      abb110(22)=spal6k7*abb110(4)
      abb110(9)=4.0_ki*abb110(22)*abb110(9)
      abb110(23)=abb110(16)*spak1k4
      abb110(24)=abb110(23)*spbl5k1
      abb110(25)=abb110(16)*spak3k4
      abb110(26)=abb110(25)*spbl5k3
      abb110(24)=abb110(24)-abb110(26)
      abb110(26)=spal6k7*abb110(24)
      abb110(27)=mB**2
      abb110(28)=abb110(7)*abb110(13)*abb110(27)
      abb110(29)=-abb110(6)*abb110(28)
      abb110(11)=abb110(11)*abb110(7)
      abb110(27)=abb110(27)*abb110(11)
      abb110(30)=abb110(27)*abb110(6)
      abb110(31)=abb110(30)*abb110(17)
      abb110(29)=abb110(29)-abb110(31)
      abb110(31)=abb110(29)*spak1k4
      abb110(32)=abb110(31)*spbk2k1
      abb110(33)=abb110(29)*spak3k4
      abb110(34)=abb110(33)*spbk3k2
      abb110(32)=abb110(32)+abb110(34)
      abb110(34)=spak2k7*abb110(32)
      abb110(34)=abb110(34)+abb110(26)
      abb110(34)=8.0_ki*abb110(34)
      abb110(26)=8.0_ki*abb110(26)
      abb110(35)=2.0_ki*abb110(22)
      abb110(36)=abb110(35)*spak2k4
      abb110(37)=abb110(36)*abb110(14)
      abb110(13)=abb110(13)*abb110(7)*mB
      abb110(18)=abb110(18)*abb110(11)
      abb110(13)=abb110(18)+abb110(13)
      abb110(18)=spbl5k2*abb110(4)
      abb110(38)=abb110(18)*spak4k7
      abb110(39)=abb110(38)*abb110(13)
      abb110(37)=abb110(37)+abb110(39)
      abb110(37)=8.0_ki*abb110(37)
      abb110(32)=4.0_ki*spak2l6*abb110(32)
      abb110(39)=-spbk3k2*spak3k4
      abb110(40)=-spbk2k1*spak1k4
      abb110(39)=abb110(39)+abb110(40)
      abb110(39)=4.0_ki*abb110(13)*abb110(4)*abb110(39)
      abb110(40)=8.0_ki*abb110(16)
      abb110(41)=abb110(40)*spak4l6
      abb110(42)=8.0_ki*abb110(33)
      abb110(17)=abb110(27)*abb110(17)
      abb110(17)=-abb110(28)-abb110(17)
      abb110(27)=-spak3k4*abb110(17)
      abb110(28)=-spak2l6*abb110(25)
      abb110(27)=abb110(27)+abb110(28)
      abb110(27)=spbl5k3*abb110(27)
      abb110(28)=spak1k4*abb110(17)
      abb110(43)=spak2l6*abb110(23)
      abb110(28)=abb110(28)+abb110(43)
      abb110(28)=spbl5k1*abb110(28)
      abb110(43)=-spbk7k1*spak2k7
      abb110(44)=-spbl6k1*spak2l6
      abb110(43)=abb110(44)+abb110(43)
      abb110(43)=abb110(31)*abb110(43)
      abb110(44)=spbk7k3*spak2k7
      abb110(45)=spbl6k3*spak2l6
      abb110(44)=abb110(45)+abb110(44)
      abb110(44)=abb110(33)*abb110(44)
      abb110(27)=abb110(27)+abb110(28)+abb110(44)+abb110(43)
      abb110(27)=4.0_ki*abb110(27)
      abb110(28)=abb110(29)*spak2k4
      abb110(28)=8.0_ki*abb110(28)
      abb110(43)=-8.0_ki*abb110(31)
      abb110(40)=abb110(40)*spak4k7
      abb110(25)=4.0_ki*abb110(25)
      abb110(23)=4.0_ki*abb110(23)
      abb110(17)=abb110(8)*abb110(17)*abb110(21)
      abb110(17)=abb110(17)-abb110(24)
      abb110(17)=4.0_ki*spak2k7*abb110(17)
      abb110(19)=abb110(36)*abb110(19)
      abb110(11)=abb110(38)*abb110(11)
      abb110(11)=abb110(19)-abb110(11)
      abb110(19)=-c3*abb110(10)
      abb110(21)=abb110(15)*c4
      abb110(19)=abb110(19)+abb110(21)
      abb110(11)=abb110(11)*abb110(19)*mB
      abb110(21)=-spbk4k1*abb110(11)
      abb110(13)=abb110(13)*abb110(18)
      abb110(18)=spak3k7*abb110(13)
      abb110(24)=abb110(14)*abb110(35)
      abb110(35)=spak2k3*abb110(24)
      abb110(18)=abb110(35)+abb110(21)+abb110(18)
      abb110(18)=4.0_ki*abb110(18)
      abb110(10)=-abb110(12)*abb110(10)
      abb110(12)=abb110(20)*abb110(15)
      abb110(10)=abb110(12)+abb110(10)
      abb110(12)=abb110(10)*spbk4k1
      abb110(15)=-spak4l6*abb110(12)
      abb110(20)=-spak3l6*abb110(16)
      abb110(15)=abb110(15)+abb110(20)
      abb110(15)=4.0_ki*abb110(15)
      abb110(19)=spak2k4*abb110(19)*abb110(30)
      abb110(20)=spbk4k1*abb110(19)
      abb110(21)=-spak2k3*abb110(29)
      abb110(20)=abb110(20)+abb110(21)
      abb110(20)=4.0_ki*abb110(20)
      abb110(12)=spak4k7*abb110(12)
      abb110(21)=spak3k7*abb110(16)
      abb110(12)=abb110(12)+abb110(21)
      abb110(12)=4.0_ki*abb110(12)
      abb110(11)=spbk4k3*abb110(11)
      abb110(13)=-spak1k7*abb110(13)
      abb110(21)=spak1k2*abb110(24)
      abb110(11)=abb110(21)+abb110(11)+abb110(13)
      abb110(11)=4.0_ki*abb110(11)
      abb110(10)=abb110(10)*spbk4k3
      abb110(13)=spak4l6*abb110(10)
      abb110(21)=spak1l6*abb110(16)
      abb110(13)=abb110(13)+abb110(21)
      abb110(13)=4.0_ki*abb110(13)
      abb110(19)=-spbk4k3*abb110(19)
      abb110(21)=-spak1k2*abb110(29)
      abb110(19)=abb110(19)+abb110(21)
      abb110(19)=4.0_ki*abb110(19)
      abb110(10)=-spak4k7*abb110(10)
      abb110(16)=-spak1k7*abb110(16)
      abb110(10)=abb110(10)+abb110(16)
      abb110(10)=4.0_ki*abb110(10)
      abb110(14)=abb110(14)*abb110(22)
      abb110(14)=4.0_ki*abb110(14)
      abb110(16)=spak3k4*abb110(14)
      abb110(21)=-4.0_ki*abb110(33)
      abb110(14)=-spak1k4*abb110(14)
      abb110(22)=4.0_ki*abb110(31)
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd110h1
