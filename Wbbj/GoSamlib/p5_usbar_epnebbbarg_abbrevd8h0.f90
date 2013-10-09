module     p5_usbar_epnebbbarg_abbrevd8h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(48), public :: abb8
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
      abb8(5)=spbl5k2**(-1)
      abb8(6)=spbl6k2**(-1)
      abb8(7)=1.0_ki/(es34+es567-es12-es234)
      abb8(8)=spbk3k1*abb8(7)
      abb8(9)=TR*gW
      abb8(9)=abb8(9)**2*i_*CVSU*abb8(4)*abb8(1)
      abb8(10)=abb8(9)*abb8(8)
      abb8(11)=c2-c4
      abb8(12)=abb8(2)*spbe7k1
      abb8(13)=-abb8(11)*abb8(10)*abb8(12)
      abb8(14)=abb8(8)*abb8(9)*NC
      abb8(15)=c3*abb8(14)
      abb8(16)=abb8(15)*abb8(12)
      abb8(14)=c1*abb8(14)
      abb8(17)=abb8(14)*abb8(12)
      abb8(18)=2.0_ki*abb8(16)-abb8(17)+abb8(13)
      abb8(18)=spak1k4*abb8(18)
      abb8(10)=-abb8(10)*abb8(11)
      abb8(19)=-2.0_ki*abb8(15)+abb8(14)-abb8(10)
      abb8(20)=spbe7k3*spak3k4
      abb8(19)=abb8(20)*abb8(2)*abb8(19)
      abb8(21)=spak2k4*abb8(3)
      abb8(22)=abb8(9)*abb8(21)
      abb8(12)=abb8(12)*abb8(22)
      abb8(23)=c2*spbk3k2
      abb8(24)=abb8(23)*abb8(12)
      abb8(25)=abb8(12)*spbk3k2
      abb8(26)=abb8(25)*c4
      abb8(24)=abb8(24)-abb8(26)
      abb8(26)=c1*NC
      abb8(27)=abb8(25)*abb8(26)
      abb8(28)=c3*NC
      abb8(29)=2.0_ki*abb8(28)
      abb8(30)=-abb8(25)*abb8(29)
      abb8(18)=abb8(19)+abb8(18)+abb8(30)+abb8(27)+abb8(24)
      abb8(18)=spak2l6*abb8(18)
      abb8(19)=abb8(29)-abb8(26)
      abb8(29)=abb8(11)-abb8(19)
      abb8(12)=abb8(12)*spbk4k3
      abb8(30)=spak4l6*abb8(12)*abb8(29)
      abb8(18)=abb8(30)+abb8(18)
      abb8(18)=spal5e7*abb8(18)
      abb8(30)=abb8(25)*abb8(28)
      abb8(27)=abb8(30)+abb8(27)-2.0_ki*abb8(24)
      abb8(27)=spak2e7*abb8(27)
      abb8(31)=-abb8(16)-abb8(17)-2.0_ki*abb8(13)
      abb8(32)=spak1k4*spak2e7
      abb8(31)=abb8(31)*abb8(32)
      abb8(33)=abb8(15)+abb8(14)+2.0_ki*abb8(10)
      abb8(34)=abb8(20)*spak2e7
      abb8(33)=abb8(34)*abb8(2)*abb8(33)
      abb8(35)=abb8(28)+abb8(26)
      abb8(36)=abb8(35)-2.0_ki*abb8(11)
      abb8(36)=spak4e7*abb8(12)*abb8(36)
      abb8(27)=abb8(36)+abb8(33)+abb8(27)+abb8(31)
      abb8(27)=spal5l6*abb8(27)
      abb8(13)=abb8(16)-2.0_ki*abb8(17)-abb8(13)
      abb8(13)=spak1k4*abb8(13)
      abb8(16)=2.0_ki*abb8(26)
      abb8(17)=abb8(16)*abb8(25)
      abb8(13)=abb8(13)-abb8(30)+abb8(17)-abb8(24)
      abb8(13)=spak2l5*abb8(13)
      abb8(10)=-abb8(15)+2.0_ki*abb8(14)+abb8(10)
      abb8(14)=abb8(20)*spak2l5
      abb8(10)=abb8(14)*abb8(2)*abb8(10)
      abb8(15)=abb8(16)-abb8(28)
      abb8(17)=abb8(15)-abb8(11)
      abb8(24)=abb8(17)*spak4l5
      abb8(12)=abb8(12)*abb8(24)
      abb8(10)=abb8(12)+abb8(13)+abb8(10)
      abb8(10)=spal6e7*abb8(10)
      abb8(12)=abb8(28)-abb8(26)
      abb8(13)=spak4e7*spbe7k2
      abb8(12)=spbk2k1*abb8(13)*spbk4k3*abb8(5)*abb8(6)*abb8(12)*abb8(22)*abb8(&
      &2)*mB**2
      abb8(10)=2.0_ki*abb8(27)+3.0_ki*abb8(12)+abb8(10)+abb8(18)
      abb8(10)=2.0_ki*abb8(10)
      abb8(9)=abb8(9)*mB
      abb8(12)=abb8(9)*abb8(6)
      abb8(18)=abb8(12)*abb8(8)
      abb8(22)=abb8(18)*c2
      abb8(25)=abb8(18)*c4
      abb8(22)=abb8(22)-abb8(25)
      abb8(27)=abb8(16)*abb8(18)
      abb8(30)=abb8(18)*abb8(28)
      abb8(27)=abb8(27)-abb8(30)
      abb8(31)=abb8(22)-abb8(27)
      abb8(33)=-spak1k4*abb8(31)
      abb8(12)=abb8(12)*abb8(21)
      abb8(36)=abb8(23)*abb8(12)
      abb8(37)=abb8(12)*c4
      abb8(38)=abb8(37)*spbk3k2
      abb8(36)=abb8(36)-abb8(38)
      abb8(38)=abb8(12)*abb8(28)
      abb8(39)=abb8(38)*spbk3k2
      abb8(16)=-spbk3k2*abb8(12)*abb8(16)
      abb8(16)=abb8(33)+abb8(39)+abb8(16)+abb8(36)
      abb8(16)=spbk2k1*abb8(16)
      abb8(25)=abb8(25)+abb8(27)
      abb8(25)=spbk3k2*abb8(25)
      abb8(27)=-abb8(18)*abb8(23)
      abb8(25)=abb8(27)+abb8(25)
      abb8(25)=spak3k4*abb8(25)
      abb8(16)=abb8(25)+abb8(16)
      abb8(16)=spak2l5*abb8(16)
      abb8(25)=abb8(12)*spbk4k3
      abb8(24)=-abb8(25)*abb8(24)
      abb8(9)=abb8(9)*abb8(5)
      abb8(21)=abb8(21)*abb8(9)
      abb8(27)=abb8(21)*spbk4k3
      abb8(15)=abb8(15)*abb8(27)
      abb8(33)=-abb8(27)*abb8(11)
      abb8(15)=abb8(33)+abb8(15)
      abb8(40)=-spak4l6*abb8(15)
      abb8(24)=abb8(40)+abb8(24)
      abb8(24)=spbk2k1*abb8(24)
      abb8(8)=abb8(9)*abb8(8)
      abb8(9)=abb8(8)*c2
      abb8(40)=abb8(8)*c4
      abb8(9)=abb8(9)-abb8(40)
      abb8(41)=NC*abb8(8)
      abb8(42)=abb8(41)*c3
      abb8(41)=abb8(41)*c1
      abb8(43)=-abb8(42)+2.0_ki*abb8(41)
      abb8(44)=abb8(43)-abb8(9)
      abb8(45)=spak1k4*abb8(44)
      abb8(46)=abb8(21)*spbk3k2
      abb8(17)=abb8(17)*abb8(46)
      abb8(45)=abb8(45)-abb8(17)
      abb8(45)=spbk2k1*abb8(45)
      abb8(40)=abb8(43)+abb8(40)
      abb8(40)=abb8(40)*spbk3k2
      abb8(8)=abb8(23)*abb8(8)
      abb8(8)=abb8(40)-abb8(8)
      abb8(8)=abb8(8)*spak3k4
      abb8(23)=abb8(8)+abb8(45)
      abb8(23)=spak2l6*abb8(23)
      abb8(16)=abb8(16)+abb8(23)+abb8(24)
      abb8(16)=4.0_ki*abb8(16)
      abb8(23)=abb8(12)*c2
      abb8(23)=abb8(23)-abb8(37)
      abb8(12)=abb8(12)*abb8(26)
      abb8(24)=abb8(23)+abb8(12)
      abb8(37)=spbk3k2*spbe7k1
      abb8(40)=-abb8(37)*abb8(24)
      abb8(18)=abb8(18)*abb8(26)
      abb8(43)=abb8(22)+abb8(18)
      abb8(45)=spbe7k1*abb8(43)
      abb8(47)=2.0_ki*spbe7k1
      abb8(48)=-abb8(47)*abb8(30)
      abb8(45)=abb8(48)+abb8(45)
      abb8(45)=spak1k4*abb8(45)
      abb8(43)=abb8(43)-2.0_ki*abb8(30)
      abb8(20)=-abb8(43)*abb8(20)
      abb8(48)=abb8(47)*abb8(39)
      abb8(20)=abb8(20)+abb8(45)+abb8(48)+abb8(40)
      abb8(20)=4.0_ki*spal5e7*abb8(20)
      abb8(40)=-abb8(44)*abb8(32)
      abb8(17)=spak2e7*abb8(17)
      abb8(15)=spak4e7*abb8(15)
      abb8(15)=abb8(15)+abb8(17)+abb8(40)
      abb8(15)=spbk2k1*abb8(15)
      abb8(8)=-spak2e7*abb8(8)
      abb8(8)=abb8(8)+abb8(15)
      abb8(8)=2.0_ki*abb8(8)
      abb8(15)=abb8(23)+abb8(38)
      abb8(17)=-abb8(37)*abb8(15)
      abb8(23)=abb8(30)+abb8(22)
      abb8(23)=spbe7k1*abb8(23)
      abb8(40)=-abb8(47)*abb8(18)
      abb8(23)=abb8(40)+abb8(23)
      abb8(23)=spak1k4*abb8(23)
      abb8(40)=abb8(12)*spbk3k2
      abb8(44)=abb8(47)*abb8(40)
      abb8(17)=abb8(23)+abb8(44)+abb8(17)
      abb8(17)=spak2l5*abb8(17)
      abb8(14)=-abb8(31)*abb8(14)
      abb8(23)=spbk4k3*spbe7k1
      abb8(15)=-abb8(23)*abb8(15)
      abb8(31)=abb8(25)*abb8(47)
      abb8(26)=abb8(26)*abb8(31)
      abb8(15)=abb8(26)+abb8(15)
      abb8(15)=spak4l5*abb8(15)
      abb8(14)=abb8(15)+abb8(17)+abb8(14)
      abb8(14)=2.0_ki*abb8(14)
      abb8(15)=abb8(35)*abb8(21)
      abb8(17)=-abb8(37)*abb8(15)
      abb8(21)=abb8(46)*abb8(47)*abb8(11)
      abb8(17)=abb8(21)+abb8(17)
      abb8(17)=spak2e7*abb8(17)
      abb8(21)=abb8(42)+abb8(41)
      abb8(26)=spbe7k1*abb8(21)
      abb8(35)=-abb8(47)*abb8(9)
      abb8(26)=abb8(35)+abb8(26)
      abb8(26)=abb8(26)*abb8(32)
      abb8(21)=-abb8(21)+2.0_ki*abb8(9)
      abb8(21)=abb8(21)*abb8(34)
      abb8(15)=-abb8(23)*abb8(15)
      abb8(35)=-abb8(47)*abb8(33)
      abb8(15)=abb8(15)+abb8(35)
      abb8(15)=spak4e7*abb8(15)
      abb8(15)=abb8(15)+abb8(21)+abb8(17)+abb8(26)
      abb8(15)=2.0_ki*abb8(15)
      abb8(17)=abb8(27)*abb8(19)
      abb8(17)=abb8(33)+abb8(17)
      abb8(13)=2.0_ki*abb8(17)*abb8(13)
      abb8(19)=abb8(47)*abb8(36)
      abb8(12)=abb8(12)+abb8(38)
      abb8(21)=-abb8(37)*abb8(12)
      abb8(19)=abb8(21)+abb8(19)
      abb8(19)=spak2e7*abb8(19)
      abb8(18)=abb8(18)+abb8(30)
      abb8(21)=spbe7k1*abb8(18)
      abb8(26)=-abb8(47)*abb8(22)
      abb8(21)=abb8(26)+abb8(21)
      abb8(21)=abb8(21)*abb8(32)
      abb8(18)=-abb8(18)+2.0_ki*abb8(22)
      abb8(18)=abb8(18)*abb8(34)
      abb8(12)=-abb8(23)*abb8(12)
      abb8(11)=abb8(31)*abb8(11)
      abb8(11)=abb8(11)+abb8(12)
      abb8(11)=spak4e7*abb8(11)
      abb8(11)=abb8(11)+abb8(18)+abb8(19)+abb8(21)
      abb8(11)=2.0_ki*abb8(11)
      abb8(12)=-abb8(23)*abb8(24)
      abb8(18)=abb8(28)*abb8(31)
      abb8(12)=abb8(18)+abb8(12)
      abb8(12)=2.0_ki*spal5e7*abb8(12)
      abb8(18)=spbe7k2*spal5e7
      abb8(19)=abb8(18)*abb8(25)*abb8(29)
      abb8(21)=spal6e7*spbe7k2
      abb8(17)=-abb8(17)*abb8(21)
      abb8(17)=abb8(19)+abb8(17)
      abb8(17)=2.0_ki*abb8(17)
      abb8(9)=-abb8(41)-abb8(9)+2.0_ki*abb8(42)
      abb8(19)=-abb8(9)*abb8(21)
      abb8(22)=abb8(43)*abb8(18)
      abb8(19)=abb8(22)+abb8(19)
      abb8(19)=2.0_ki*spak3k4*abb8(19)
      abb8(22)=-spak1k4*abb8(43)
      abb8(22)=abb8(22)-2.0_ki*abb8(39)+abb8(40)+abb8(36)
      abb8(18)=abb8(22)*abb8(18)
      abb8(9)=spak1k4*abb8(9)
      abb8(22)=abb8(46)*abb8(29)
      abb8(9)=abb8(9)+abb8(22)
      abb8(9)=abb8(9)*abb8(21)
      abb8(9)=abb8(18)+abb8(9)
      abb8(9)=2.0_ki*abb8(9)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd8h0
