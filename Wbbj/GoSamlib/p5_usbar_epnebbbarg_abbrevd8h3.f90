module     p5_usbar_epnebbbarg_abbrevd8h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(36), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=sqrt(mB**2)
      abb8(3)=es234**(-1)
      abb8(4)=es567**(-1)
      abb8(5)=spak2l5**(-1)
      abb8(6)=spak2l6**(-1)
      abb8(7)=1.0_ki/(es34+es567-es12-es234)
      abb8(8)=TR*gW
      abb8(8)=abb8(8)**2*i_*CVSU*abb8(4)*abb8(1)
      abb8(9)=abb8(8)*spak2e7
      abb8(10)=abb8(9)*abb8(2)
      abb8(11)=spbk3k1*abb8(7)
      abb8(12)=abb8(11)*abb8(10)
      abb8(13)=c2-c4
      abb8(14)=-abb8(12)*abb8(13)
      abb8(15)=c1*NC
      abb8(16)=abb8(12)*abb8(15)
      abb8(17)=c3*NC
      abb8(18)=abb8(12)*abb8(17)
      abb8(19)=-abb8(18)-abb8(16)-2.0_ki*abb8(14)
      abb8(20)=2.0_ki*spbl6l5
      abb8(19)=spbe7k3*abb8(19)*abb8(20)
      abb8(21)=2.0_ki*abb8(15)
      abb8(22)=abb8(21)*abb8(12)
      abb8(22)=-abb8(18)+abb8(22)+abb8(14)
      abb8(23)=-spbl5k3*spbe7l6*abb8(22)
      abb8(24)=2.0_ki*abb8(17)
      abb8(25)=abb8(24)*abb8(12)
      abb8(16)=abb8(14)+abb8(25)-abb8(16)
      abb8(25)=spbl6k3*spbe7l5*abb8(16)
      abb8(19)=abb8(25)+abb8(23)+abb8(19)
      abb8(19)=spak3k4*abb8(19)
      abb8(23)=spak2k4*abb8(3)
      abb8(10)=abb8(23)*abb8(10)
      abb8(25)=abb8(13)*abb8(10)
      abb8(26)=abb8(9)*NC
      abb8(27)=abb8(26)*abb8(2)
      abb8(28)=abb8(27)*abb8(23)
      abb8(29)=abb8(28)*c3
      abb8(28)=abb8(28)*c1
      abb8(30)=abb8(29)-2.0_ki*abb8(28)+abb8(25)
      abb8(30)=spbk3k2*abb8(30)
      abb8(22)=spak1k4*abb8(22)
      abb8(31)=abb8(3)*abb8(2)*spbk4k3
      abb8(32)=spak4e7*spak2k4*abb8(8)*abb8(31)
      abb8(33)=abb8(13)+abb8(17)
      abb8(21)=abb8(21)-abb8(33)
      abb8(34)=-abb8(21)*abb8(32)
      abb8(22)=abb8(22)+abb8(34)+abb8(30)
      abb8(22)=spbl5k1*spbe7l6*abb8(22)
      abb8(30)=c3-c1
      abb8(34)=spak2k4**2
      abb8(35)=spbe7k1*abb8(5)
      abb8(26)=abb8(26)*abb8(6)*abb8(30)*abb8(34)*abb8(35)*mB**2*abb8(31)
      abb8(30)=-c3-c1
      abb8(31)=abb8(23)*spbe7k1
      abb8(27)=abb8(31)*abb8(27)*abb8(30)
      abb8(30)=2.0_ki*spbe7k1
      abb8(36)=-abb8(30)*abb8(13)
      abb8(10)=-abb8(10)*abb8(36)
      abb8(10)=abb8(10)+abb8(27)
      abb8(10)=spbk3k2*abb8(10)
      abb8(14)=abb8(30)*abb8(14)
      abb8(18)=spbe7k1*abb8(18)
      abb8(27)=abb8(15)*spbe7k1
      abb8(12)=abb8(12)*abb8(27)
      abb8(12)=abb8(18)+abb8(12)+abb8(14)
      abb8(12)=spak1k4*abb8(12)
      abb8(14)=abb8(17)*spbe7k1
      abb8(14)=abb8(14)+abb8(27)
      abb8(18)=abb8(36)+abb8(14)
      abb8(36)=-abb8(18)*abb8(32)
      abb8(10)=abb8(12)+abb8(36)+abb8(10)
      abb8(10)=abb8(10)*abb8(20)
      abb8(12)=2.0_ki*abb8(29)-abb8(28)-abb8(25)
      abb8(12)=spbk3k2*abb8(12)
      abb8(16)=-spak1k4*abb8(16)
      abb8(20)=abb8(13)+abb8(15)
      abb8(24)=abb8(24)-abb8(20)
      abb8(25)=abb8(24)*abb8(32)
      abb8(12)=abb8(16)+abb8(25)+abb8(12)
      abb8(12)=spbl6k1*spbe7l5*abb8(12)
      abb8(10)=abb8(12)+abb8(10)+3.0_ki*abb8(26)+abb8(19)+abb8(22)
      abb8(10)=2.0_ki*abb8(10)
      abb8(12)=abb8(6)*abb8(33)
      abb8(16)=2.0_ki*abb8(6)
      abb8(19)=-abb8(15)*abb8(16)
      abb8(12)=abb8(19)+abb8(12)
      abb8(8)=abb8(8)*mB
      abb8(19)=abb8(8)*spbk4k3*abb8(34)*abb8(3)
      abb8(12)=spbl5k1*abb8(19)*abb8(12)
      abb8(19)=abb8(21)*abb8(19)
      abb8(22)=-spbl6k1*abb8(5)*abb8(19)
      abb8(12)=abb8(12)+abb8(22)
      abb8(12)=4.0_ki*abb8(12)
      abb8(19)=2.0_ki*abb8(35)*abb8(19)
      abb8(22)=abb8(23)*spbk4k3
      abb8(8)=abb8(22)*abb8(8)
      abb8(25)=abb8(8)*abb8(6)
      abb8(26)=abb8(25)*abb8(33)
      abb8(28)=abb8(16)*abb8(8)
      abb8(29)=-abb8(15)*abb8(28)
      abb8(26)=abb8(29)+abb8(26)
      abb8(26)=spak4e7*abb8(26)
      abb8(9)=abb8(9)*mB
      abb8(29)=abb8(9)*abb8(23)
      abb8(32)=abb8(29)*abb8(6)
      abb8(33)=abb8(32)*abb8(33)
      abb8(16)=abb8(16)*abb8(29)
      abb8(29)=-abb8(15)*abb8(16)
      abb8(29)=abb8(29)+abb8(33)
      abb8(29)=spbk3k2*abb8(29)
      abb8(11)=abb8(9)*abb8(11)
      abb8(33)=abb8(11)*abb8(6)
      abb8(34)=abb8(21)*abb8(33)
      abb8(36)=spak1k4*abb8(34)
      abb8(26)=abb8(36)+abb8(26)+abb8(29)
      abb8(26)=spbl5k1*abb8(26)
      abb8(29)=-spbl5k3*spak3k4*abb8(34)
      abb8(26)=abb8(29)+abb8(26)
      abb8(26)=2.0_ki*abb8(26)
      abb8(29)=-abb8(17)*abb8(30)
      abb8(30)=-spbe7k1*abb8(13)
      abb8(27)=abb8(29)+abb8(27)-abb8(30)
      abb8(9)=abb8(9)*abb8(5)
      abb8(22)=abb8(22)*abb8(9)
      abb8(27)=2.0_ki*abb8(22)*abb8(27)
      abb8(22)=spbe7l6*abb8(22)*abb8(24)
      abb8(29)=-abb8(32)*abb8(20)
      abb8(34)=abb8(17)*abb8(16)
      abb8(29)=abb8(34)+abb8(29)
      abb8(29)=spbe7l5*spbk4k3*abb8(29)
      abb8(22)=abb8(22)+abb8(29)
      abb8(22)=2.0_ki*abb8(22)
      abb8(9)=abb8(9)*spbk3k2
      abb8(29)=abb8(31)*abb8(9)
      abb8(31)=abb8(11)*abb8(5)
      abb8(34)=spbe7k3*spak3k4
      abb8(36)=abb8(34)*abb8(31)
      abb8(29)=abb8(36)+abb8(29)
      abb8(29)=abb8(21)*abb8(29)
      abb8(13)=abb8(17)+abb8(15)-2.0_ki*abb8(13)
      abb8(8)=spak4e7*abb8(8)*abb8(35)*abb8(13)
      abb8(11)=-spak1k4*abb8(11)*abb8(21)*abb8(35)
      abb8(8)=abb8(11)+abb8(8)+abb8(29)
      abb8(8)=2.0_ki*abb8(8)
      abb8(11)=-spak1k4*abb8(18)
      abb8(13)=abb8(34)*abb8(13)
      abb8(11)=abb8(13)+abb8(11)
      abb8(11)=abb8(33)*abb8(11)
      abb8(13)=abb8(25)*abb8(14)
      abb8(15)=abb8(28)*abb8(30)
      abb8(13)=abb8(15)+abb8(13)
      abb8(13)=spak4e7*abb8(13)
      abb8(14)=abb8(32)*abb8(14)
      abb8(15)=abb8(16)*abb8(30)
      abb8(14)=abb8(15)+abb8(14)
      abb8(14)=spbk3k2*abb8(14)
      abb8(11)=abb8(13)+abb8(14)+abb8(11)
      abb8(11)=2.0_ki*abb8(11)
      abb8(13)=abb8(24)*abb8(31)
      abb8(14)=2.0_ki*spak3k4*spbe7l6*abb8(13)
      abb8(9)=abb8(23)*abb8(24)*abb8(9)
      abb8(13)=-spak1k4*abb8(13)
      abb8(9)=abb8(9)+abb8(13)
      abb8(9)=spbe7l6*abb8(9)
      abb8(13)=abb8(25)*abb8(20)
      abb8(15)=-abb8(17)*abb8(28)
      abb8(13)=abb8(15)+abb8(13)
      abb8(13)=spbe7l5*spak4e7*abb8(13)
      abb8(9)=abb8(13)+abb8(9)
      abb8(9)=2.0_ki*abb8(9)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd8h3
