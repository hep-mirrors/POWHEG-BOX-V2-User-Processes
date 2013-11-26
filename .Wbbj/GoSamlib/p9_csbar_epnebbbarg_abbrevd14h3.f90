module     p9_csbar_epnebbbarg_abbrevd14h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(47), public :: abb14
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
      abb14(6)=spak2l6**(-1)
      abb14(7)=abb14(3)*c3
      abb14(8)=c4*abb14(3)**2
      abb14(7)=abb14(7)-abb14(8)
      abb14(8)=TR*gW
      abb14(7)=abb14(7)*mB*abb14(8)**2*spbk7e7*i_*spak2e7*CVSC*abb14(4)*abb14(2&
      &)*abb14(1)
      abb14(8)=abb14(5)*abb14(7)
      abb14(9)=abb14(8)*spbl6k1*spak2k7
      abb14(7)=abb14(6)*abb14(7)
      abb14(10)=abb14(7)*spbl5k1
      abb14(11)=spak2k7*abb14(10)
      abb14(9)=abb14(9)+abb14(11)
      abb14(11)=spak1k4*spbk3k1*abb14(9)
      abb14(12)=abb14(8)*spbl6k3
      abb14(13)=abb14(7)*spbl5k3
      abb14(12)=abb14(12)+abb14(13)
      abb14(13)=spak2k7*abb14(12)
      abb14(14)=spak3k4*abb14(13)*spbk3k1
      abb14(11)=abb14(11)-abb14(14)
      abb14(14)=4.0_ki*es71*abb14(11)
      abb14(11)=8.0_ki*abb14(11)
      abb14(15)=spbl6k1*spak1k7
      abb14(16)=abb14(8)*abb14(15)
      abb14(17)=spbl5k1*spak1k7
      abb14(18)=abb14(7)*abb14(17)
      abb14(16)=abb14(16)+abb14(18)
      abb14(18)=spak2k4*spbk3k1
      abb14(19)=abb14(18)*abb14(16)
      abb14(20)=8.0_ki*abb14(19)
      abb14(21)=-spbk7k3*spak4k7*abb14(9)
      abb14(21)=abb14(21)+abb14(19)
      abb14(21)=8.0_ki*abb14(21)
      abb14(22)=abb14(8)*spbl6k1
      abb14(10)=abb14(22)+abb14(10)
      abb14(22)=spbk4k3*spak2k4*spak4k7
      abb14(23)=spak4k7*spbk3k1
      abb14(24)=-spak1k2*abb14(23)
      abb14(22)=abb14(24)+abb14(22)
      abb14(10)=abb14(10)*abb14(22)
      abb14(22)=abb14(13)*spak4k7
      abb14(24)=spbk7k1*abb14(22)
      abb14(10)=abb14(24)-abb14(19)+abb14(10)
      abb14(10)=4.0_ki*abb14(10)
      abb14(19)=8.0_ki*abb14(18)
      abb14(24)=abb14(8)*abb14(19)
      abb14(25)=4.0_ki*abb14(8)
      abb14(26)=abb14(18)*abb14(25)
      abb14(19)=abb14(7)*abb14(19)
      abb14(27)=4.0_ki*abb14(7)
      abb14(18)=abb14(18)*abb14(27)
      abb14(28)=-es71*abb14(9)
      abb14(29)=abb14(16)*spbk3k1
      abb14(30)=spak2k3*abb14(29)
      abb14(31)=abb14(16)*spak2k4
      abb14(32)=spbk4k1*abb14(31)
      abb14(28)=abb14(32)+abb14(28)+abb14(30)
      abb14(28)=4.0_ki*abb14(28)
      abb14(9)=8.0_ki*abb14(9)
      abb14(30)=spak2k3*spbk3k1
      abb14(32)=spbk4k1*spak2k4
      abb14(30)=abb14(30)+abb14(32)
      abb14(30)=4.0_ki*abb14(30)
      abb14(32)=-abb14(8)*abb14(30)
      abb14(30)=-abb14(7)*abb14(30)
      abb14(33)=-spbk7l6*abb14(8)
      abb14(34)=-spbk7l5*abb14(7)
      abb14(33)=abb14(33)+abb14(34)
      abb14(34)=4.0_ki*spak2k7
      abb14(33)=abb14(33)*abb14(34)
      abb14(35)=-es12+es123-es456+es712+es71
      abb14(35)=abb14(13)*abb14(35)
      abb14(16)=spbk7k3*spak2k7*abb14(16)
      abb14(31)=-spbk4k3*abb14(31)
      abb14(29)=spak1k2*abb14(29)
      abb14(16)=abb14(29)+abb14(31)+abb14(16)+abb14(35)
      abb14(16)=4.0_ki*abb14(16)
      abb14(29)=8.0_ki*abb14(13)
      abb14(13)=4.0_ki*abb14(13)
      abb14(31)=-spbl6k4*abb14(8)
      abb14(35)=-spbl5k4*abb14(7)
      abb14(31)=abb14(31)+abb14(35)
      abb14(31)=abb14(31)*abb14(34)
      abb14(22)=4.0_ki*spbk7k3*abb14(22)
      abb14(34)=4.0_ki*spak3k4
      abb14(35)=spak1k7*abb14(34)*spbk3k1**2
      abb14(36)=abb14(8)*abb14(35)
      abb14(37)=8.0_ki*abb14(8)
      abb14(38)=abb14(23)*abb14(37)
      abb14(39)=abb14(23)*abb14(25)
      abb14(34)=abb14(34)*spbk3k1
      abb14(40)=-abb14(8)*abb14(34)
      abb14(41)=4.0_ki*spbk3k1
      abb14(41)=abb14(41)*spak1k4
      abb14(42)=abb14(8)*abb14(41)
      abb14(43)=spak1k7*spbk3k1
      abb14(37)=-abb14(43)*abb14(37)
      abb14(35)=abb14(7)*abb14(35)
      abb14(44)=8.0_ki*abb14(7)
      abb14(45)=abb14(23)*abb14(44)
      abb14(23)=abb14(23)*abb14(27)
      abb14(34)=-abb14(7)*abb14(34)
      abb14(41)=abb14(7)*abb14(41)
      abb14(43)=-abb14(43)*abb14(44)
      abb14(44)=spak4k7*abb14(12)
      abb14(46)=8.0_ki*abb14(44)
      abb14(44)=-4.0_ki*abb14(44)
      abb14(47)=spbl6k4*spak4k7
      abb14(15)=abb14(47)-abb14(15)
      abb14(8)=abb14(8)*abb14(15)
      abb14(15)=spbl5k4*spak4k7
      abb14(15)=abb14(15)-abb14(17)
      abb14(7)=abb14(7)*abb14(15)
      abb14(12)=spak3k7*abb14(12)
      abb14(7)=abb14(12)+abb14(7)+abb14(8)
      abb14(7)=4.0_ki*abb14(7)
      R2d14=0.0_ki
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd14h3
