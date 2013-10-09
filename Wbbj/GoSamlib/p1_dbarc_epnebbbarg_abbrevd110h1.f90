module     p1_dbarc_epnebbbarg_abbrevd110h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(44), public :: abb110
   complex(ki), public :: R2d110
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb110(1)=1.0_ki/(-es71+es712-es12)
      abb110(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb110(3)=1.0_ki/(es34+es567-es12-es234)
      abb110(4)=sqrt(mB**2)
      abb110(5)=NC**(-1)
      abb110(6)=spbl6k2**(-1)
      abb110(7)=spak2l5**(-1)
      abb110(8)=spak2l6**(-1)
      abb110(9)=TR*gW
      abb110(9)=CVDC*i_*spak1k4*abb110(3)*abb110(2)*abb110(1)*abb110(9)**2
      abb110(10)=abb110(9)*spbe7k2
      abb110(11)=abb110(10)*abb110(5)
      abb110(12)=2.0_ki*c1
      abb110(13)=abb110(12)*abb110(11)
      abb110(14)=abb110(13)*spae7k7
      abb110(15)=spbk3k1*abb110(14)
      abb110(16)=abb110(5)**2
      abb110(16)=abb110(16)+1.0_ki
      abb110(10)=abb110(10)*abb110(16)
      abb110(17)=spbk3k1*c4
      abb110(18)=abb110(10)*abb110(17)
      abb110(19)=abb110(18)*spae7k7
      abb110(15)=abb110(15)-abb110(19)
      abb110(20)=abb110(15)*spak1k2
      abb110(14)=spbk4k3*abb110(14)
      abb110(21)=spbk4k3*c4
      abb110(10)=abb110(10)*abb110(21)
      abb110(22)=abb110(10)*spae7k7
      abb110(14)=abb110(14)-abb110(22)
      abb110(23)=abb110(14)*spak2k4
      abb110(20)=abb110(20)-abb110(23)
      abb110(23)=abb110(4)*mB**3
      abb110(24)=abb110(6)**2
      abb110(25)=-abb110(8)*abb110(20)*spbk7k2*abb110(23)*abb110(24)
      abb110(26)=abb110(13)*spbk4k3
      abb110(10)=abb110(10)-abb110(26)
      abb110(26)=spae7k7*abb110(6)
      abb110(27)=abb110(4)*mB
      abb110(28)=abb110(26)*abb110(27)
      abb110(29)=spbk7k2*abb110(28)
      abb110(30)=-abb110(29)*abb110(10)
      abb110(31)=-spak2k4*abb110(30)
      abb110(13)=abb110(13)*spbk3k1
      abb110(13)=abb110(18)-abb110(13)
      abb110(18)=-abb110(29)*abb110(13)
      abb110(29)=spak1k2*abb110(18)
      abb110(25)=abb110(25)+abb110(31)+abb110(29)
      abb110(25)=spbl5k2*abb110(25)
      abb110(29)=abb110(13)*spak1k2
      abb110(31)=abb110(10)*spak2k4
      abb110(29)=abb110(29)-abb110(31)
      abb110(31)=spbk7k2*abb110(7)
      abb110(23)=-abb110(29)*abb110(26)*abb110(23)*abb110(31)
      abb110(32)=spak4k7*abb110(30)
      abb110(33)=spak1k7*abb110(18)
      abb110(32)=abb110(33)+abb110(32)
      abb110(32)=spbk7l5*abb110(32)
      abb110(33)=abb110(31)*abb110(27)
      abb110(34)=-spak2l6*abb110(33)*abb110(20)
      abb110(30)=spak4l6*abb110(30)
      abb110(18)=spak1l6*abb110(18)
      abb110(18)=abb110(30)+abb110(18)
      abb110(18)=spbl6l5*abb110(18)
      abb110(18)=abb110(18)+abb110(34)+abb110(32)+abb110(25)+abb110(23)
      abb110(18)=4.0_ki*abb110(18)
      abb110(23)=abb110(9)*abb110(12)*abb110(5)
      abb110(25)=abb110(23)*spbk4k3
      abb110(9)=abb110(9)*abb110(16)
      abb110(16)=abb110(9)*abb110(21)
      abb110(16)=abb110(25)-abb110(16)
      abb110(21)=abb110(16)*spak4k7
      abb110(23)=abb110(23)*spbk3k1
      abb110(9)=abb110(9)*abb110(17)
      abb110(9)=abb110(23)-abb110(9)
      abb110(17)=abb110(9)*spak1k7
      abb110(17)=abb110(21)+abb110(17)
      abb110(21)=spbl5k2*abb110(17)*abb110(6)*abb110(27)*spbk7k2
      abb110(23)=abb110(16)*spak2k4
      abb110(25)=abb110(9)*spak1k2
      abb110(23)=abb110(23)-abb110(25)
      abb110(25)=2.0_ki*spal6k7
      abb110(30)=-abb110(25)*abb110(33)*abb110(23)
      abb110(21)=abb110(30)+abb110(21)
      abb110(21)=8.0_ki*abb110(21)
      abb110(30)=abb110(27)*abb110(6)
      abb110(32)=-abb110(30)*abb110(13)
      abb110(33)=abb110(32)*spak1e7
      abb110(34)=-abb110(30)*abb110(10)
      abb110(35)=abb110(34)*spak4e7
      abb110(33)=abb110(33)+abb110(35)
      abb110(33)=abb110(33)*spbl5k2
      abb110(35)=abb110(27)*abb110(7)
      abb110(36)=-abb110(35)*abb110(29)
      abb110(37)=2.0_ki*spal6e7
      abb110(37)=abb110(37)*abb110(36)
      abb110(33)=abb110(33)+abb110(37)
      abb110(37)=abb110(15)*spak1l6
      abb110(38)=abb110(14)*spak4l6
      abb110(37)=abb110(37)+abb110(38)
      abb110(38)=-spbk7l5*abb110(37)
      abb110(39)=mB**2
      abb110(40)=abb110(39)*abb110(26)
      abb110(41)=-abb110(29)*abb110(40)*abb110(31)
      abb110(38)=abb110(41)+abb110(38)
      abb110(42)=abb110(38)-abb110(33)
      abb110(42)=8.0_ki*abb110(42)
      abb110(24)=abb110(8)*abb110(20)*abb110(31)*abb110(24)*mB**4
      abb110(24)=abb110(24)-abb110(41)+abb110(33)
      abb110(24)=8.0_ki*abb110(24)
      abb110(33)=4.0_ki*abb110(38)
      abb110(38)=abb110(13)*spak1l6
      abb110(41)=abb110(10)*spak4l6
      abb110(38)=abb110(38)+abb110(41)
      abb110(41)=8.0_ki*abb110(38)
      abb110(30)=-spbl5k2*abb110(30)*abb110(17)
      abb110(25)=abb110(25)*abb110(35)*abb110(23)
      abb110(25)=abb110(25)+abb110(30)
      abb110(25)=spbk7e7*abb110(25)
      abb110(30)=spak2k4*abb110(34)
      abb110(32)=-spak1k2*abb110(32)
      abb110(30)=abb110(30)+abb110(32)
      abb110(30)=spbl5k2*abb110(30)
      abb110(32)=spak2l6*abb110(36)
      abb110(25)=2.0_ki*abb110(32)+abb110(30)+abb110(25)
      abb110(25)=4.0_ki*abb110(25)
      abb110(30)=abb110(39)*abb110(7)
      abb110(32)=abb110(30)*abb110(6)
      abb110(34)=-8.0_ki*abb110(32)*abb110(29)
      abb110(35)=abb110(16)*spbk7k2
      abb110(36)=-spak4l6*abb110(35)
      abb110(43)=abb110(9)*spbk7k2
      abb110(44)=-spak1l6*abb110(43)
      abb110(36)=abb110(36)+abb110(44)
      abb110(36)=8.0_ki*abb110(36)
      abb110(16)=spak4l6*abb110(16)
      abb110(9)=spak1l6*abb110(9)
      abb110(9)=abb110(16)+abb110(9)
      abb110(16)=4.0_ki*spbk7e7
      abb110(9)=abb110(9)*abb110(16)
      abb110(31)=8.0_ki*abb110(23)*abb110(6)*abb110(31)*abb110(39)
      abb110(16)=-abb110(16)*abb110(32)*abb110(23)
      abb110(23)=abb110(39)-abb110(27)
      abb110(22)=abb110(22)*abb110(23)
      abb110(11)=abb110(12)*abb110(23)*spae7k7*abb110(11)
      abb110(12)=-spbk4k3*abb110(11)
      abb110(12)=abb110(22)+abb110(12)
      abb110(12)=spak2k4*abb110(12)
      abb110(19)=-abb110(19)*abb110(23)
      abb110(11)=spbk3k1*abb110(11)
      abb110(11)=abb110(19)+abb110(11)
      abb110(11)=spak1k2*abb110(11)
      abb110(11)=abb110(12)+abb110(11)
      abb110(11)=abb110(7)*abb110(11)
      abb110(12)=abb110(10)*abb110(40)
      abb110(19)=-spak2k4*abb110(12)
      abb110(22)=abb110(13)*abb110(40)
      abb110(23)=spak1k2*abb110(22)
      abb110(19)=abb110(19)+abb110(23)
      abb110(19)=abb110(8)*abb110(19)
      abb110(19)=abb110(19)+abb110(20)
      abb110(19)=spbl5k2*abb110(19)
      abb110(14)=spak4k7*abb110(14)
      abb110(15)=spak1k7*abb110(15)
      abb110(14)=abb110(15)+abb110(14)
      abb110(14)=spbk7l5*abb110(14)
      abb110(11)=abb110(19)+abb110(14)+abb110(11)
      abb110(11)=4.0_ki*abb110(11)
      abb110(14)=spak4k7*abb110(35)
      abb110(15)=spak1k7*abb110(43)
      abb110(14)=abb110(14)+abb110(15)
      abb110(14)=8.0_ki*abb110(14)
      abb110(15)=abb110(13)*spak1e7
      abb110(19)=abb110(10)*spak4e7
      abb110(15)=abb110(15)+abb110(19)
      abb110(15)=8.0_ki*abb110(15)
      abb110(17)=-spbk7e7*abb110(17)
      abb110(17)=abb110(17)+abb110(29)
      abb110(17)=4.0_ki*abb110(17)
      abb110(19)=-4.0_ki*spbk7l6*abb110(29)*abb110(30)*abb110(26)
      abb110(20)=4.0_ki*spbk7l5
      abb110(20)=abb110(20)*abb110(28)
      abb110(10)=-abb110(10)*abb110(20)
      abb110(12)=-spak4l6*abb110(12)
      abb110(22)=-spak1l6*abb110(22)
      abb110(12)=abb110(12)+abb110(22)
      abb110(12)=abb110(8)*abb110(12)
      abb110(12)=abb110(12)-abb110(37)
      abb110(12)=4.0_ki*spbl5k2*abb110(12)
      abb110(22)=-4.0_ki*abb110(38)
      abb110(13)=-abb110(13)*abb110(20)
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd110h1
