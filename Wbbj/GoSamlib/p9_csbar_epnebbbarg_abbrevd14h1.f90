module     p9_csbar_epnebbbarg_abbrevd14h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(59), public :: abb14
   complex(ki), public :: R2d14
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb14(1)=1.0_ki/(-es71+es712-es12)
      abb14(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb14(3)=NC**(-1)
      abb14(4)=es56**(-1)
      abb14(5)=spak2l5**(-1)
      abb14(6)=spbl6k2**(-1)
      abb14(7)=abb14(3)*c3
      abb14(8)=c4*abb14(3)**2
      abb14(7)=abb14(7)-abb14(8)
      abb14(8)=TR*gW
      abb14(7)=abb14(7)*abb14(8)**2*spbk7e7*i_*spak2e7*CVSC*abb14(4)*abb14(2)*a&
      &bb14(1)
      abb14(8)=spak2l6*spbl5k3
      abb14(9)=abb14(8)*spak3k4
      abb14(10)=spak1k7*spbk3k1
      abb14(11)=spbk2k1*abb14(7)*abb14(10)*abb14(9)
      abb14(12)=abb14(7)*spbk3k1
      abb14(13)=spal6k7*spbl5k3
      abb14(14)=abb14(12)*abb14(13)
      abb14(15)=mB**2*abb14(6)*abb14(5)
      abb14(16)=abb14(15)*spak2k7
      abb14(17)=abb14(16)*abb14(7)
      abb14(18)=abb14(17)*spbk3k2
      abb14(19)=abb14(18)*spbk3k1
      abb14(14)=abb14(14)+abb14(19)
      abb14(14)=abb14(14)*spak3k4
      abb14(19)=-es71*abb14(14)
      abb14(20)=abb14(12)*spbl5k1
      abb14(21)=abb14(20)*spal6k7
      abb14(22)=abb14(17)*spbk2k1
      abb14(23)=abb14(22)*spbk3k1
      abb14(21)=abb14(21)-abb14(23)
      abb14(23)=es71*abb14(21)
      abb14(24)=abb14(7)*spbl5k1
      abb14(25)=abb14(24)*abb14(10)
      abb14(26)=-abb14(25)*spak2l6*spbk2k1
      abb14(23)=abb14(26)+abb14(23)
      abb14(23)=spak1k4*abb14(23)
      abb14(11)=abb14(23)+abb14(11)+abb14(19)
      abb14(11)=4.0_ki*abb14(11)
      abb14(19)=spak1k4*abb14(21)
      abb14(14)=-abb14(14)+abb14(19)
      abb14(14)=8.0_ki*abb14(14)
      abb14(19)=abb14(25)*spak4l6
      abb14(21)=abb14(15)*spbk3k1
      abb14(23)=abb14(21)*abb14(7)
      abb14(26)=spbk2k1*spak1k7
      abb14(27)=abb14(23)*abb14(26)
      abb14(28)=abb14(27)*spak2k4
      abb14(19)=abb14(19)+abb14(28)
      abb14(28)=8.0_ki*abb14(19)
      abb14(29)=8.0_ki*abb14(7)
      abb14(30)=abb14(29)*abb14(15)
      abb14(31)=spak1k7*spak3k4*spbk3k1**2
      abb14(32)=-abb14(30)*abb14(31)
      abb14(33)=abb14(7)*spak4k7
      abb14(34)=abb14(33)*spbl5k1
      abb14(35)=-spal6k7*abb14(34)
      abb14(36)=spbk2k1*abb14(16)*abb14(33)
      abb14(35)=abb14(35)+abb14(36)
      abb14(35)=spbk7k3*abb14(35)
      abb14(36)=abb14(34)*spak2l6*spbk3k2
      abb14(35)=abb14(35)+abb14(36)-abb14(19)
      abb14(35)=8.0_ki*abb14(35)
      abb14(36)=abb14(33)*abb14(21)
      abb14(37)=-16.0_ki*abb14(36)
      abb14(38)=-spak4l6*abb14(34)
      abb14(39)=abb14(15)*spbk2k1
      abb14(40)=-spak2k4*abb14(39)*abb14(33)
      abb14(38)=abb14(38)+abb14(40)
      abb14(38)=spbk4k3*abb14(38)
      abb14(16)=abb14(16)*spbk3k2
      abb14(16)=abb14(16)+abb14(13)
      abb14(16)=abb14(16)*abb14(33)
      abb14(40)=spbk7k1*abb14(16)
      abb14(41)=abb14(33)*spbl5k3
      abb14(42)=abb14(41)*spak2l6
      abb14(43)=spbk2k1*abb14(42)
      abb14(36)=es12*abb14(36)
      abb14(34)=-spak1l6*spbk3k1*abb14(34)
      abb14(19)=abb14(34)+abb14(40)+abb14(38)+abb14(36)+abb14(43)+abb14(19)
      abb14(19)=4.0_ki*abb14(19)
      abb14(34)=8.0_ki*abb14(33)
      abb14(36)=-abb14(21)*abb14(34)
      abb14(38)=abb14(12)*spak4l6
      abb14(40)=8.0_ki*abb14(38)
      abb14(38)=-4.0_ki*abb14(38)
      abb14(21)=abb14(29)*abb14(21)
      abb14(43)=spak3k4*abb14(21)
      abb14(9)=-abb14(12)*abb14(9)
      abb14(20)=spak1k4*spak2l6*abb14(20)
      abb14(9)=abb14(9)+abb14(20)
      abb14(9)=4.0_ki*abb14(9)
      abb14(20)=abb14(21)*spak2k4
      abb14(44)=-4.0_ki*abb14(23)*spak2k4
      abb14(21)=-spak1k4*abb14(21)
      abb14(45)=4.0_ki*abb14(7)
      abb14(31)=abb14(45)*abb14(31)
      abb14(46)=spbk3k1*abb14(34)
      abb14(47)=4.0_ki*abb14(33)
      abb14(48)=spbk3k1*abb14(47)
      abb14(49)=4.0_ki*abb14(12)
      abb14(50)=-spak3k4*abb14(49)
      abb14(49)=spak1k4*abb14(49)
      abb14(51)=abb14(34)*spbl5k3
      abb14(41)=-4.0_ki*abb14(41)
      abb14(52)=abb14(24)*spal6k7
      abb14(22)=abb14(52)-abb14(22)
      abb14(52)=-es71*abb14(22)
      abb14(53)=abb14(7)*spak2k4
      abb14(39)=abb14(39)*spak1k7
      abb14(54)=abb14(39)*abb14(53)
      abb14(55)=spbl5k1*spak1k7
      abb14(56)=abb14(55)*abb14(7)
      abb14(57)=abb14(56)*spak4l6
      abb14(54)=abb14(54)+abb14(57)
      abb14(57)=-spbk4k1*abb14(54)
      abb14(24)=abb14(24)*spak2l6
      abb14(58)=abb14(26)*abb14(24)
      abb14(59)=-spak3l6*abb14(25)
      abb14(27)=-spak2k3*abb14(27)
      abb14(27)=abb14(27)+abb14(59)+abb14(57)+abb14(58)+abb14(52)
      abb14(27)=4.0_ki*abb14(27)
      abb14(22)=8.0_ki*abb14(22)
      abb14(52)=spbk4k1*spak4l6*abb14(7)
      abb14(12)=spak3l6*abb14(12)
      abb14(12)=abb14(52)+abb14(12)
      abb14(12)=4.0_ki*abb14(12)
      abb14(52)=spbk4k1*abb14(15)*abb14(53)
      abb14(53)=spak2k3*abb14(23)
      abb14(24)=abb14(53)-abb14(24)+abb14(52)
      abb14(24)=4.0_ki*abb14(24)
      abb14(52)=-es712+es71+es12
      abb14(52)=abb14(15)*abb14(52)
      abb14(53)=-spbk7l5*spal6k7
      abb14(52)=abb14(53)+abb14(52)
      abb14(52)=abb14(52)*abb14(45)
      abb14(53)=spak3k7*spbl5k3
      abb14(57)=spbl5k2*spak2k7
      abb14(53)=abb14(57)+abb14(53)
      abb14(53)=abb14(7)*abb14(53)
      abb14(57)=spbl5k4*abb14(33)
      abb14(53)=abb14(57)-abb14(56)+abb14(53)
      abb14(53)=4.0_ki*abb14(53)
      abb14(13)=abb14(13)*abb14(7)
      abb14(13)=abb14(18)+abb14(13)
      abb14(18)=es123-es456+es712+es71
      abb14(18)=abb14(13)*abb14(18)
      abb14(57)=abb14(7)*spbk3k2
      abb14(55)=-abb14(55)*abb14(57)
      abb14(58)=-spbl5k3*abb14(7)*abb14(26)
      abb14(55)=abb14(55)+abb14(58)
      abb14(55)=spak2l6*abb14(55)
      abb14(56)=spal6k7*abb14(56)
      abb14(26)=-abb14(26)*abb14(17)
      abb14(26)=abb14(56)+abb14(26)
      abb14(26)=spbk7k3*abb14(26)
      abb14(23)=abb14(23)*spak1k7
      abb14(56)=-abb14(23)-abb14(13)
      abb14(56)=es12*abb14(56)
      abb14(54)=spbk4k3*abb14(54)
      abb14(8)=spak3k7*abb14(57)*abb14(8)
      abb14(25)=spak1l6*abb14(25)
      abb14(8)=abb14(25)+abb14(8)+abb14(54)+abb14(56)+abb14(26)+abb14(55)+abb14&
      &(18)
      abb14(8)=4.0_ki*abb14(8)
      abb14(18)=8.0_ki*abb14(13)
      abb14(23)=16.0_ki*abb14(23)
      abb14(13)=4.0_ki*abb14(13)
      abb14(10)=-abb14(10)*abb14(29)
      abb14(25)=-spbl5k4*spal6k7*abb14(7)
      abb14(17)=-spbk4k2*abb14(17)
      abb14(17)=abb14(25)+abb14(17)
      abb14(17)=4.0_ki*abb14(17)
      abb14(16)=spbk7k3*abb14(16)
      abb14(25)=-spbk3k2*abb14(42)
      abb14(16)=abb14(25)+abb14(16)
      abb14(16)=4.0_ki*abb14(16)
      abb14(25)=abb14(15)*spbk3k2
      abb14(26)=abb14(34)*abb14(25)
      abb14(29)=-abb14(25)*abb14(47)
      abb14(25)=spak3k7*abb14(25)
      abb14(34)=-spbl5k2*spal6k7
      abb14(25)=abb14(34)+abb14(39)+abb14(25)
      abb14(7)=abb14(7)*abb14(25)
      abb14(15)=spbk4k2*abb14(15)*abb14(33)
      abb14(7)=abb14(15)+abb14(7)
      abb14(7)=4.0_ki*abb14(7)
      R2d14=0.0_ki
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd14h1
