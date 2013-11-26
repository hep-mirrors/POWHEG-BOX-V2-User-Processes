module     p5_usbar_epnebbbarg_abbrevd110h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(47), public :: abb110
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
      abb110(6)=spak2l6**(-1)
      abb110(7)=spbl5k2**(-1)
      abb110(8)=spbl6k2**(-1)
      abb110(9)=abb110(5)**2
      abb110(10)=abb110(9)*spbk3k1
      abb110(11)=abb110(10)*c4
      abb110(12)=TR*gW
      abb110(12)=abb110(12)**2*spbk7e7*i_*spak2e7*CVSU*abb110(3)*abb110(2)*abb1&
      &10(1)
      abb110(13)=abb110(12)*abb110(6)
      abb110(14)=abb110(11)*abb110(13)
      abb110(15)=spbk3k1*abb110(12)*c3
      abb110(16)=abb110(15)*abb110(6)
      abb110(17)=abb110(16)*NC
      abb110(14)=abb110(14)+abb110(17)
      abb110(17)=spak2k7*abb110(4)
      abb110(18)=abb110(17)*mB
      abb110(19)=abb110(18)*abb110(14)
      abb110(20)=abb110(17)*abb110(16)
      abb110(21)=abb110(5)*mB
      abb110(22)=2.0_ki*abb110(21)
      abb110(23)=abb110(22)*abb110(20)
      abb110(19)=abb110(19)-abb110(23)
      abb110(23)=abb110(19)*spak3k4
      abb110(24)=spbk7k3*abb110(23)
      abb110(25)=abb110(19)*spak1k4
      abb110(26)=-spbk7k1*abb110(25)
      abb110(24)=abb110(26)+abb110(24)
      abb110(24)=spal5k7*abb110(24)
      abb110(26)=mB**3
      abb110(27)=2.0_ki*abb110(5)
      abb110(20)=abb110(26)*abb110(20)*abb110(27)
      abb110(28)=abb110(26)*abb110(17)
      abb110(29)=abb110(14)*abb110(28)
      abb110(20)=abb110(20)-abb110(29)
      abb110(20)=abb110(7)*abb110(20)
      abb110(29)=spak3k4*abb110(20)
      abb110(30)=spak2l5*spak3k4
      abb110(31)=-abb110(19)*abb110(30)
      abb110(29)=abb110(29)+abb110(31)
      abb110(29)=spbk3k2*abb110(29)
      abb110(20)=spak1k4*abb110(20)
      abb110(31)=-spak2l5*abb110(25)
      abb110(20)=abb110(20)+abb110(31)
      abb110(20)=spbk2k1*abb110(20)
      abb110(31)=abb110(6)**2
      abb110(32)=abb110(31)*spak2k7
      abb110(26)=abb110(32)*abb110(26)*abb110(11)*abb110(12)*abb110(4)
      abb110(33)=2.0_ki*abb110(15)
      abb110(34)=abb110(33)*abb110(5)
      abb110(15)=abb110(15)*NC
      abb110(35)=abb110(34)-abb110(15)
      abb110(28)=abb110(35)*abb110(28)*abb110(31)
      abb110(26)=abb110(26)-abb110(28)
      abb110(28)=spbk3k2*spak3k4
      abb110(31)=spbk2k1*spak1k4
      abb110(28)=abb110(28)+abb110(31)
      abb110(31)=abb110(28)*abb110(8)
      abb110(36)=abb110(31)*spak2l5
      abb110(26)=abb110(26)*abb110(36)
      abb110(37)=spbl6k3*abb110(23)
      abb110(38)=-spbl6k1*abb110(25)
      abb110(37)=abb110(37)+abb110(38)
      abb110(37)=spal5l6*abb110(37)
      abb110(38)=abb110(12)*abb110(7)
      abb110(39)=abb110(11)*abb110(38)
      abb110(15)=abb110(15)*abb110(7)
      abb110(40)=abb110(39)+abb110(15)
      abb110(41)=abb110(18)*abb110(40)
      abb110(21)=abb110(7)*abb110(33)*abb110(21)
      abb110(33)=abb110(21)*abb110(17)
      abb110(33)=-abb110(33)+abb110(41)
      abb110(33)=spbl6k2*abb110(33)*abb110(28)
      abb110(20)=abb110(37)+abb110(26)+abb110(33)+abb110(29)+abb110(20)+abb110(&
      &24)
      abb110(20)=4.0_ki*abb110(20)
      abb110(24)=abb110(12)*c4
      abb110(10)=abb110(10)*abb110(24)
      abb110(10)=abb110(10)-abb110(35)
      abb110(26)=abb110(10)*spak3k4
      abb110(29)=-spbl6k3*abb110(26)
      abb110(33)=abb110(10)*spak1k4
      abb110(37)=spbl6k1*abb110(33)
      abb110(29)=abb110(37)+abb110(29)
      abb110(29)=spal5k7*abb110(29)
      abb110(37)=abb110(27)-NC
      abb110(41)=mB**2
      abb110(42)=abb110(41)*abb110(7)
      abb110(43)=-abb110(37)*abb110(42)*abb110(16)
      abb110(44)=abb110(42)*abb110(13)
      abb110(45)=abb110(44)*abb110(11)
      abb110(43)=abb110(43)+abb110(45)
      abb110(45)=abb110(28)*spak2k7*abb110(43)
      abb110(29)=-abb110(45)+abb110(29)
      abb110(29)=8.0_ki*abb110(29)
      abb110(21)=abb110(21)*abb110(4)
      abb110(46)=abb110(4)*mB
      abb110(47)=abb110(46)*abb110(38)
      abb110(11)=abb110(47)*abb110(11)
      abb110(15)=abb110(15)*abb110(46)
      abb110(11)=-abb110(21)+abb110(11)+abb110(15)
      abb110(15)=spbl6k2*spak4k7
      abb110(21)=abb110(11)*abb110(15)
      abb110(19)=2.0_ki*abb110(19)
      abb110(46)=abb110(19)*spak4l5
      abb110(21)=abb110(46)-abb110(21)
      abb110(21)=8.0_ki*abb110(21)
      abb110(34)=abb110(34)*abb110(7)
      abb110(34)=-abb110(34)+abb110(40)
      abb110(31)=-abb110(34)*abb110(32)*mB**4*abb110(31)
      abb110(31)=abb110(31)+abb110(45)
      abb110(31)=8.0_ki*abb110(31)
      abb110(32)=abb110(43)*spak4k7
      abb110(32)=16.0_ki*abb110(32)
      abb110(34)=spbk7k3*abb110(26)
      abb110(40)=-spbk7k1*abb110(33)
      abb110(34)=abb110(40)+abb110(34)
      abb110(34)=spal5k7*abb110(34)
      abb110(40)=abb110(26)*spak2l5
      abb110(39)=abb110(39)*abb110(41)
      abb110(35)=abb110(35)*abb110(42)
      abb110(35)=abb110(39)-abb110(35)
      abb110(39)=-spak3k4*abb110(35)
      abb110(39)=abb110(39)-abb110(40)
      abb110(39)=spbk3k2*abb110(39)
      abb110(35)=-spak1k4*abb110(35)
      abb110(42)=-spak2l5*abb110(33)
      abb110(35)=abb110(35)+abb110(42)
      abb110(35)=spbk2k1*abb110(35)
      abb110(16)=abb110(27)*abb110(16)
      abb110(14)=-abb110(16)+abb110(14)
      abb110(14)=abb110(41)*abb110(14)
      abb110(16)=abb110(14)*abb110(36)
      abb110(16)=abb110(16)+abb110(39)+abb110(35)+abb110(34)
      abb110(16)=4.0_ki*abb110(16)
      abb110(27)=abb110(10)*spak4l5
      abb110(27)=8.0_ki*abb110(27)
      abb110(34)=8.0_ki*abb110(43)
      abb110(35)=-spak3k4*abb110(34)
      abb110(36)=spak3k4*abb110(11)
      abb110(14)=abb110(14)*abb110(8)
      abb110(30)=abb110(30)*abb110(14)
      abb110(30)=abb110(30)+abb110(36)-abb110(40)
      abb110(30)=spbl6k3*abb110(30)
      abb110(14)=-spak1k4*abb110(14)
      abb110(14)=abb110(14)+abb110(33)
      abb110(14)=spak2l5*abb110(14)
      abb110(36)=-spak1k4*abb110(11)
      abb110(14)=abb110(36)+abb110(14)
      abb110(14)=spbl6k1*abb110(14)
      abb110(14)=abb110(30)+abb110(14)
      abb110(14)=4.0_ki*abb110(14)
      abb110(30)=abb110(34)*spak2k4
      abb110(34)=spak1k4*abb110(34)
      abb110(26)=4.0_ki*abb110(26)
      abb110(33)=4.0_ki*abb110(33)
      abb110(23)=-4.0_ki*abb110(23)
      abb110(25)=4.0_ki*abb110(25)
      abb110(36)=NC*c3
      abb110(39)=abb110(9)*c4
      abb110(36)=abb110(36)+abb110(39)
      abb110(18)=abb110(36)*abb110(18)
      abb110(22)=abb110(22)*c3
      abb110(17)=abb110(22)*abb110(17)
      abb110(17)=abb110(18)-abb110(17)
      abb110(18)=2.0_ki*spak4l5
      abb110(13)=abb110(18)*abb110(13)*abb110(17)
      abb110(17)=abb110(36)*abb110(47)
      abb110(18)=abb110(4)*abb110(22)*abb110(38)
      abb110(17)=abb110(17)-abb110(18)
      abb110(15)=abb110(17)*abb110(15)
      abb110(13)=abb110(13)-abb110(15)
      abb110(15)=spbk4k1*abb110(13)
      abb110(11)=abb110(11)*spbl6k2
      abb110(17)=-spak3k7*abb110(11)
      abb110(18)=spak3l5*abb110(19)
      abb110(15)=abb110(18)+abb110(15)+abb110(17)
      abb110(15)=4.0_ki*abb110(15)
      abb110(17)=abb110(37)*c3
      abb110(18)=-abb110(17)+abb110(39)
      abb110(18)=abb110(44)*abb110(18)
      abb110(22)=abb110(18)*spbk4k1
      abb110(36)=-spak4k7*abb110(22)
      abb110(37)=-spak3k7*abb110(43)
      abb110(36)=abb110(36)+abb110(37)
      abb110(36)=8.0_ki*abb110(36)
      abb110(12)=abb110(12)*abb110(17)
      abb110(9)=abb110(24)*abb110(9)
      abb110(9)=abb110(12)-abb110(9)
      abb110(9)=abb110(9)*spak4l5
      abb110(12)=-spbk4k1*abb110(9)
      abb110(17)=spak3l5*abb110(10)
      abb110(12)=abb110(12)+abb110(17)
      abb110(12)=4.0_ki*abb110(12)
      abb110(17)=-spak2k4*abb110(22)
      abb110(22)=-spak2k3*abb110(43)
      abb110(17)=abb110(17)+abb110(22)
      abb110(17)=4.0_ki*abb110(17)
      abb110(13)=-spbk4k3*abb110(13)
      abb110(11)=spak1k7*abb110(11)
      abb110(19)=-spak1l5*abb110(19)
      abb110(11)=abb110(19)+abb110(13)+abb110(11)
      abb110(11)=4.0_ki*abb110(11)
      abb110(13)=abb110(18)*spbk4k3
      abb110(18)=spak4k7*abb110(13)
      abb110(19)=spak1k7*abb110(43)
      abb110(18)=abb110(18)+abb110(19)
      abb110(18)=8.0_ki*abb110(18)
      abb110(9)=spbk4k3*abb110(9)
      abb110(10)=-spak1l5*abb110(10)
      abb110(9)=abb110(9)+abb110(10)
      abb110(9)=4.0_ki*abb110(9)
      abb110(10)=spak2k4*abb110(13)
      abb110(13)=-spak1k2*abb110(43)
      abb110(10)=abb110(10)+abb110(13)
      abb110(10)=4.0_ki*abb110(10)
      abb110(13)=4.0_ki*abb110(43)
      abb110(19)=-spal6k7*abb110(28)*abb110(13)
      abb110(22)=spak3k4*abb110(13)
      abb110(13)=-spak1k4*abb110(13)
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd110h2
