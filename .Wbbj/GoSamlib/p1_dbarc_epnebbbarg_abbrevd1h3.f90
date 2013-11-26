module     p1_dbarc_epnebbbarg_abbrevd1h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(31), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spak2l5**(-1)
      abb1(4)=spak2l6**(-1)
      abb1(5)=TR*gW
      abb1(5)=abb1(5)**2*CVDC*i_*mB*abb1(2)*abb1(1)
      abb1(6)=abb1(5)*c4
      abb1(7)=abb1(5)*c2
      abb1(8)=abb1(6)-abb1(7)
      abb1(5)=NC*abb1(5)
      abb1(9)=abb1(5)*c3
      abb1(5)=abb1(5)*c1
      abb1(10)=abb1(5)+abb1(8)-2.0_ki*abb1(9)
      abb1(10)=abb1(10)*spak1k2
      abb1(11)=abb1(4)*abb1(10)
      abb1(12)=spbl5k3*spak3k4
      abb1(13)=abb1(11)*abb1(12)
      abb1(10)=-abb1(3)*abb1(10)
      abb1(14)=spbl6k3*spak3k4
      abb1(15)=abb1(10)*abb1(14)
      abb1(13)=abb1(13)-abb1(15)
      abb1(15)=4.0_ki*spbk3k2*abb1(13)
      abb1(16)=2.0_ki*abb1(4)
      abb1(17)=spbk3k2*spak2e7
      abb1(18)=-abb1(8)*abb1(16)*abb1(17)
      abb1(19)=abb1(5)*abb1(4)
      abb1(20)=abb1(9)*abb1(4)
      abb1(19)=abb1(19)+abb1(20)
      abb1(21)=abb1(17)*abb1(19)
      abb1(18)=abb1(18)+abb1(21)
      abb1(18)=abb1(18)*spbe7l5
      abb1(21)=2.0_ki*abb1(3)
      abb1(22)=abb1(8)*abb1(21)
      abb1(23)=abb1(5)*abb1(3)
      abb1(9)=abb1(9)*abb1(3)
      abb1(22)=abb1(22)-abb1(23)-abb1(9)
      abb1(17)=-spbe7l6*abb1(17)*abb1(22)
      abb1(17)=abb1(18)+abb1(17)
      abb1(18)=abb1(17)*spak1k4
      abb1(23)=abb1(6)*abb1(4)
      abb1(20)=abb1(23)+abb1(20)
      abb1(23)=spbe7k3*spak1e7
      abb1(24)=abb1(23)*abb1(20)
      abb1(25)=abb1(23)*abb1(5)
      abb1(26)=abb1(25)*abb1(16)
      abb1(27)=abb1(23)*abb1(7)
      abb1(28)=abb1(27)*abb1(4)
      abb1(24)=-abb1(28)+abb1(24)-abb1(26)
      abb1(26)=spbl5k2*spak2k4
      abb1(28)=abb1(26)*abb1(24)
      abb1(6)=abb1(6)*abb1(3)
      abb1(6)=abb1(6)+abb1(9)
      abb1(9)=abb1(23)*abb1(6)
      abb1(23)=abb1(25)*abb1(21)
      abb1(25)=abb1(27)*abb1(3)
      abb1(9)=-abb1(25)+abb1(9)-abb1(23)
      abb1(23)=spbl6k2*spak2k4
      abb1(25)=abb1(23)*abb1(9)
      abb1(27)=spak4e7*spbe7k2
      abb1(29)=abb1(11)*abb1(27)
      abb1(30)=abb1(29)*spbl5k3
      abb1(27)=abb1(10)*abb1(27)
      abb1(31)=abb1(27)*spbl6k3
      abb1(18)=abb1(18)-abb1(30)+abb1(28)+abb1(25)+abb1(31)
      abb1(25)=4.0_ki*abb1(18)
      abb1(14)=abb1(9)*abb1(14)
      abb1(12)=abb1(24)*abb1(12)
      abb1(12)=abb1(14)+abb1(12)
      abb1(12)=4.0_ki*abb1(12)
      abb1(14)=2.0_ki*abb1(18)
      abb1(13)=2.0_ki*spbe7k3*abb1(13)
      abb1(18)=spbl6k2*abb1(9)
      abb1(28)=spbl5k2*abb1(24)
      abb1(18)=abb1(18)+abb1(28)
      abb1(18)=spak2k3*abb1(18)
      abb1(21)=abb1(21)*abb1(5)
      abb1(6)=abb1(21)-abb1(6)
      abb1(6)=abb1(6)*spak1e7
      abb1(7)=abb1(7)*spak1e7
      abb1(21)=abb1(7)*abb1(3)
      abb1(6)=abb1(6)+abb1(21)
      abb1(21)=-abb1(6)*abb1(23)
      abb1(5)=abb1(16)*abb1(5)
      abb1(5)=abb1(5)-abb1(20)
      abb1(5)=abb1(5)*spak1e7
      abb1(7)=abb1(7)*abb1(4)
      abb1(5)=abb1(5)+abb1(7)
      abb1(7)=-abb1(5)*abb1(26)
      abb1(7)=abb1(21)+abb1(7)
      abb1(7)=spbe7k4*abb1(7)
      abb1(20)=abb1(11)*spbl5k3
      abb1(21)=abb1(10)*spbl6k3
      abb1(20)=abb1(21)-abb1(20)
      abb1(20)=spak3e7*spbe7k2*abb1(20)
      abb1(8)=abb1(8)*abb1(16)
      abb1(8)=-abb1(8)+abb1(19)
      abb1(8)=spbe7l5*abb1(8)
      abb1(16)=-spbe7l6*abb1(22)
      abb1(8)=abb1(8)+abb1(16)
      abb1(8)=spak2e7*abb1(8)
      abb1(16)=spbk4k2*spak1k4*abb1(8)
      abb1(19)=spak1k3*abb1(17)
      abb1(21)=spbl6k4*abb1(27)
      abb1(22)=-spbl5k4*abb1(29)
      abb1(7)=abb1(22)+abb1(21)+abb1(19)+abb1(18)+abb1(16)+abb1(7)+abb1(20)
      abb1(7)=2.0_ki*abb1(7)
      abb1(16)=-spbl6k2*abb1(10)
      abb1(18)=spbl5k2*abb1(11)
      abb1(16)=abb1(16)+abb1(18)
      abb1(16)=4.0_ki*abb1(16)
      abb1(18)=spbe7l6*abb1(6)
      abb1(19)=spbe7l5*abb1(5)
      abb1(18)=abb1(18)+abb1(19)
      abb1(18)=4.0_ki*abb1(18)
      abb1(10)=-spbe7l6*abb1(10)
      abb1(11)=spbe7l5*abb1(11)
      abb1(10)=abb1(10)+abb1(11)
      abb1(10)=2.0_ki*abb1(10)
      abb1(11)=2.0_ki*spak3k4
      abb1(19)=abb1(11)*spbk3k2
      abb1(9)=abb1(9)*abb1(19)
      abb1(20)=2.0_ki*spbe7k2
      abb1(6)=-abb1(6)*abb1(20)
      abb1(19)=abb1(24)*abb1(19)
      abb1(5)=-abb1(5)*abb1(20)
      abb1(11)=abb1(17)*abb1(11)
      abb1(8)=-2.0_ki*abb1(8)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd1h3
