module     p1_dbarc_epnebbbarg_abbrevd301h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(45), public :: abb301
   complex(ki), public :: R2d301
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
      abb301(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb301(2)=1.0_ki/(es34+es567-es12-es234)
      abb301(3)=NC**(-1)
      abb301(4)=sqrt(mB**2)
      abb301(5)=spak2l6**(-1)
      abb301(6)=CVDC*i_*spak1k4*abb301(2)*abb301(1)
      abb301(7)=TR*gW
      abb301(7)=abb301(7)**2
      abb301(8)=abb301(6)*c4*abb301(7)*abb301(3)**2
      abb301(6)=abb301(6)*abb301(7)*abb301(3)
      abb301(7)=abb301(6)*c3
      abb301(6)=abb301(6)*c1
      abb301(6)=-abb301(7)+abb301(8)-abb301(6)
      abb301(7)=spbk3k1*abb301(6)
      abb301(8)=-spbe7k2*abb301(7)
      abb301(9)=spak1l5*abb301(8)
      abb301(6)=spbk4k3*abb301(6)
      abb301(10)=-spbe7k2*abb301(6)
      abb301(11)=spak4l5*abb301(10)
      abb301(9)=abb301(9)+abb301(11)
      abb301(9)=spbk7l6*spae7k7*abb301(9)
      abb301(11)=spbl5k2*spak2l5*abb301(9)
      abb301(12)=abb301(4)*mB*abb301(5)
      abb301(13)=abb301(12)*spak2k4
      abb301(14)=abb301(10)*abb301(13)
      abb301(12)=abb301(12)*spak1k2
      abb301(15)=abb301(8)*abb301(12)
      abb301(14)=abb301(14)-abb301(15)
      abb301(15)=-spak2l5*abb301(14)
      abb301(16)=-spbk7k2*spae7k7*abb301(15)
      abb301(11)=abb301(11)+abb301(16)
      abb301(11)=4.0_ki*abb301(11)
      abb301(16)=-abb301(7)*spak1l5
      abb301(17)=-abb301(6)*spak4l5
      abb301(16)=abb301(16)+abb301(17)
      abb301(17)=abb301(16)*spbl5k2
      abb301(18)=spak2l5*spbl6k2
      abb301(19)=8.0_ki*abb301(18)
      abb301(20)=abb301(17)*abb301(19)
      abb301(9)=-8.0_ki*abb301(9)
      abb301(21)=abb301(16)*spbl6k2
      abb301(22)=-16.0_ki*abb301(21)
      abb301(17)=spbe7l6*abb301(17)
      abb301(23)=-abb301(17)+abb301(14)
      abb301(24)=8.0_ki*spal5e7
      abb301(23)=abb301(23)*abb301(24)
      abb301(25)=abb301(17)+abb301(14)
      abb301(26)=4.0_ki*spal5e7
      abb301(25)=abb301(25)*abb301(26)
      abb301(27)=-abb301(6)*spbl6k2
      abb301(28)=-abb301(27)*abb301(24)
      abb301(29)=abb301(27)*abb301(26)
      abb301(12)=-abb301(12)*abb301(7)
      abb301(13)=-abb301(13)*abb301(6)
      abb301(12)=abb301(12)-abb301(13)
      abb301(13)=abb301(12)*spbk7e7
      abb301(30)=spal5k7*abb301(13)
      abb301(15)=-2.0_ki*abb301(15)+abb301(30)
      abb301(15)=4.0_ki*abb301(15)
      abb301(30)=-abb301(7)*spbl6k2
      abb301(31)=-abb301(30)*abb301(24)
      abb301(32)=abb301(30)*abb301(26)
      abb301(13)=-abb301(26)*abb301(13)
      abb301(33)=4.0_ki*spae7k7
      abb301(14)=-abb301(14)*abb301(33)
      abb301(21)=-spak2e7*abb301(21)
      abb301(34)=spbk7l6*spae7k7*abb301(16)
      abb301(21)=abb301(21)+abb301(34)
      abb301(21)=spbe7l5*abb301(21)
      abb301(17)=spak2e7*abb301(17)
      abb301(17)=abb301(17)+abb301(21)
      abb301(17)=4.0_ki*abb301(17)
      abb301(16)=spbl6l5*abb301(16)
      abb301(12)=abb301(16)+abb301(12)
      abb301(12)=8.0_ki*abb301(12)
      abb301(16)=-spak4k7*abb301(6)
      abb301(21)=-spak1k7*abb301(7)
      abb301(16)=abb301(21)+abb301(16)
      abb301(16)=spbk7e7*abb301(16)
      abb301(21)=-spak2k4*abb301(10)
      abb301(34)=spak1k2*abb301(8)
      abb301(21)=abb301(21)+abb301(34)
      abb301(16)=2.0_ki*abb301(21)+abb301(16)
      abb301(16)=4.0_ki*abb301(16)
      abb301(21)=4.0_ki*spak2e7
      abb301(27)=abb301(27)*abb301(21)
      abb301(30)=abb301(30)*abb301(21)
      abb301(34)=spak4e7*abb301(6)
      abb301(35)=spak1e7*abb301(7)
      abb301(34)=abb301(34)+abb301(35)
      abb301(35)=4.0_ki*spbk7e7
      abb301(34)=abb301(34)*abb301(35)
      abb301(35)=abb301(10)*abb301(33)
      abb301(36)=abb301(18)*abb301(35)
      abb301(37)=abb301(33)*spbe7l6
      abb301(38)=-abb301(6)*abb301(37)
      abb301(39)=spbk7k2*abb301(33)*spak2l5
      abb301(40)=-abb301(10)*abb301(39)
      abb301(41)=abb301(10)*abb301(24)
      abb301(42)=-abb301(10)*abb301(26)
      abb301(43)=abb301(6)*abb301(19)
      abb301(44)=-8.0_ki*abb301(6)
      abb301(21)=abb301(21)*spbe7l6
      abb301(6)=-abb301(6)*abb301(21)
      abb301(10)=-spak4e7*abb301(10)
      abb301(45)=-spak1e7*abb301(8)
      abb301(10)=abb301(10)+abb301(45)
      abb301(10)=8.0_ki*abb301(10)
      abb301(33)=abb301(8)*abb301(33)
      abb301(18)=abb301(18)*abb301(33)
      abb301(37)=-abb301(7)*abb301(37)
      abb301(39)=-abb301(8)*abb301(39)
      abb301(24)=abb301(8)*abb301(24)
      abb301(8)=-abb301(8)*abb301(26)
      abb301(19)=abb301(7)*abb301(19)
      abb301(26)=-8.0_ki*abb301(7)
      abb301(7)=-abb301(7)*abb301(21)
      R2d301=0.0_ki
      rat2 = rat2 + R2d301
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='301' value='", &
          & R2d301, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd301h2
