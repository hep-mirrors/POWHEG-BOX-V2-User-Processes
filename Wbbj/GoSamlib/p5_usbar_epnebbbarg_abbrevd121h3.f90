module     p5_usbar_epnebbbarg_abbrevd121h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(68), public :: abb121
   complex(ki), public :: R2d121
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
      abb121(1)=1.0_ki/(-mB**2+es67)
      abb121(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb121(3)=1.0_ki/(es34+es567-es12-es234)
      abb121(4)=NC**(-1)
      abb121(5)=spak2l6**(-1)
      abb121(6)=sqrt(mB**2)
      abb121(7)=spbl6k2**(-1)
      abb121(8)=abb121(3)*i_*CVSU*abb121(2)*abb121(1)
      abb121(9)=TR*gW
      abb121(9)=abb121(9)**2
      abb121(10)=abb121(8)*abb121(9)*spbk3k1
      abb121(11)=abb121(10)*mB
      abb121(12)=abb121(4)**2
      abb121(12)=abb121(12)+1.0_ki
      abb121(13)=abb121(11)*abb121(12)
      abb121(14)=spak2e7*abb121(5)
      abb121(15)=abb121(14)*c2
      abb121(16)=abb121(13)*abb121(15)
      abb121(11)=abb121(11)*abb121(4)
      abb121(17)=2.0_ki*c3
      abb121(18)=abb121(17)*abb121(11)
      abb121(19)=abb121(18)*abb121(14)
      abb121(16)=abb121(16)-abb121(19)
      abb121(19)=spbk7e7*abb121(16)*spak2k7
      abb121(20)=abb121(10)*abb121(4)
      abb121(21)=abb121(20)*abb121(6)
      abb121(22)=abb121(11)-abb121(21)
      abb121(23)=spak2e7*abb121(17)*spbe7l6
      abb121(24)=-abb121(22)*abb121(23)
      abb121(25)=spak2e7*c2
      abb121(26)=abb121(13)*abb121(25)
      abb121(10)=abb121(10)*abb121(12)
      abb121(27)=abb121(25)*abb121(6)
      abb121(28)=abb121(27)*abb121(10)
      abb121(26)=abb121(26)-abb121(28)
      abb121(26)=abb121(26)*spbe7l6
      abb121(19)=abb121(19)-abb121(24)-abb121(26)
      abb121(24)=spbl5k2*abb121(19)
      abb121(26)=spbl5k3*spak3k4
      abb121(28)=spbl5k1*spak1k4
      abb121(26)=abb121(26)-abb121(28)
      abb121(28)=4.0_ki*spak2l5
      abb121(29)=abb121(28)*abb121(26)*abb121(24)
      abb121(30)=spbe7l6*abb121(6)
      abb121(31)=abb121(10)*abb121(30)
      abb121(32)=spak2k4*c2
      abb121(33)=abb121(31)*abb121(32)
      abb121(34)=abb121(20)*abb121(17)
      abb121(35)=abb121(34)*abb121(30)
      abb121(36)=abb121(35)*spak2k4
      abb121(33)=abb121(33)-abb121(36)
      abb121(37)=spae7k7*spbk7l5
      abb121(38)=spal6e7*spbl6l5
      abb121(37)=abb121(37)-abb121(38)
      abb121(33)=-abb121(33)*abb121(37)
      abb121(38)=mB**2
      abb121(39)=abb121(38)*abb121(14)
      abb121(36)=abb121(39)*abb121(36)
      abb121(40)=abb121(38)*abb121(31)
      abb121(41)=abb121(15)*spak2k4
      abb121(42)=abb121(40)*abb121(41)
      abb121(36)=abb121(36)-abb121(42)
      abb121(42)=abb121(7)*spbl5k2
      abb121(36)=abb121(36)*abb121(42)
      abb121(43)=-spak2k4*abb121(16)
      abb121(44)=abb121(6)**2
      abb121(45)=abb121(44)*spbe7l5
      abb121(46)=-abb121(43)*abb121(45)
      abb121(33)=abb121(46)+abb121(33)+abb121(36)
      abb121(33)=8.0_ki*abb121(33)
      abb121(36)=abb121(6)*spak2k4
      abb121(20)=abb121(36)*abb121(20)
      abb121(11)=abb121(11)*spak2k4
      abb121(11)=abb121(20)-abb121(11)
      abb121(11)=abb121(11)*abb121(17)
      abb121(20)=abb121(13)*abb121(32)
      abb121(46)=abb121(10)*c2
      abb121(47)=abb121(36)*abb121(46)
      abb121(11)=abb121(11)+abb121(20)-abb121(47)
      abb121(11)=abb121(11)*spbl6l5
      abb121(18)=abb121(18)*abb121(5)
      abb121(20)=abb121(5)*c2
      abb121(48)=abb121(13)*abb121(20)
      abb121(18)=abb121(18)-abb121(48)
      abb121(48)=-spak2k4*abb121(18)
      abb121(49)=spbk7l5*spak2k7
      abb121(50)=abb121(49)*abb121(48)
      abb121(11)=abb121(11)+abb121(50)
      abb121(11)=16.0_ki*abb121(11)
      abb121(50)=16.0_ki*spbe7l5
      abb121(43)=abb121(43)*abb121(50)
      abb121(51)=abb121(39)*abb121(35)
      abb121(40)=abb121(40)*abb121(15)
      abb121(40)=abb121(51)-abb121(40)
      abb121(51)=8.0_ki*abb121(26)
      abb121(52)=abb121(40)*abb121(7)*abb121(51)
      abb121(53)=mB**3
      abb121(10)=abb121(53)*abb121(10)
      abb121(54)=abb121(5)**2
      abb121(55)=abb121(54)*spak2k4
      abb121(56)=abb121(55)*abb121(25)
      abb121(57)=abb121(10)*abb121(56)
      abb121(58)=abb121(53)*spak2e7
      abb121(59)=abb121(58)*abb121(34)
      abb121(55)=abb121(59)*abb121(55)
      abb121(55)=abb121(55)-abb121(57)
      abb121(50)=abb121(7)*abb121(55)*abb121(50)
      abb121(57)=8.0_ki*abb121(26)*abb121(19)
      abb121(34)=abb121(34)*abb121(36)
      abb121(34)=abb121(34)-abb121(47)
      abb121(47)=8.0_ki*spbe7l5
      abb121(34)=abb121(34)*abb121(47)
      abb121(31)=abb121(31)*c2
      abb121(31)=abb121(31)-abb121(35)
      abb121(35)=-abb121(31)*abb121(26)
      abb121(47)=-abb121(35)*abb121(28)
      abb121(44)=-abb121(44)*abb121(16)
      abb121(60)=4.0_ki*abb121(26)
      abb121(61)=abb121(44)*abb121(60)
      abb121(62)=abb121(16)*abb121(26)
      abb121(63)=-8.0_ki*abb121(62)
      abb121(48)=-abb121(48)*abb121(37)
      abb121(55)=abb121(55)*abb121(42)
      abb121(48)=abb121(48)+abb121(55)
      abb121(48)=8.0_ki*abb121(48)
      abb121(21)=abb121(21)*abb121(17)
      abb121(46)=abb121(6)*abb121(46)
      abb121(21)=abb121(21)-abb121(46)
      abb121(55)=-abb121(21)*abb121(60)
      abb121(28)=abb121(62)*abb121(28)
      abb121(60)=spbk7e7*abb121(28)
      abb121(28)=-spbe7l6*abb121(28)
      abb121(62)=-8.0_ki*abb121(19)
      abb121(64)=abb121(8)*abb121(4)
      abb121(65)=abb121(64)*abb121(9)
      abb121(66)=abb121(17)*spak2k4
      abb121(67)=abb121(66)*abb121(65)
      abb121(68)=abb121(67)*abb121(30)
      abb121(39)=abb121(68)*abb121(39)
      abb121(8)=abb121(12)*abb121(8)
      abb121(12)=abb121(9)*abb121(8)
      abb121(30)=abb121(12)*abb121(30)
      abb121(38)=abb121(41)*abb121(38)*abb121(30)
      abb121(38)=abb121(39)-abb121(38)
      abb121(38)=abb121(38)*abb121(42)
      abb121(9)=abb121(9)*mB
      abb121(8)=abb121(9)*abb121(8)
      abb121(39)=abb121(8)*abb121(41)
      abb121(9)=abb121(64)*abb121(9)
      abb121(14)=abb121(9)*abb121(14)
      abb121(41)=abb121(14)*abb121(66)
      abb121(39)=abb121(39)-abb121(41)
      abb121(41)=abb121(39)*abb121(45)
      abb121(30)=abb121(32)*abb121(30)
      abb121(30)=abb121(30)-abb121(68)
      abb121(30)=abb121(37)*abb121(30)
      abb121(30)=abb121(38)+abb121(41)-abb121(30)
      abb121(38)=spbk4k1*abb121(30)
      abb121(41)=abb121(44)*spbe7l5
      abb121(40)=abb121(40)*abb121(42)
      abb121(31)=abb121(37)*abb121(31)
      abb121(31)=abb121(31)+abb121(41)-abb121(40)
      abb121(40)=-spak2k3*abb121(31)
      abb121(38)=abb121(38)+abb121(40)
      abb121(38)=4.0_ki*abb121(38)
      abb121(40)=abb121(65)*abb121(36)
      abb121(41)=abb121(9)*spak2k4
      abb121(44)=abb121(40)-abb121(41)
      abb121(44)=abb121(44)*abb121(17)
      abb121(32)=abb121(8)*abb121(32)
      abb121(36)=c2*abb121(12)*abb121(36)
      abb121(32)=abb121(44)+abb121(32)-abb121(36)
      abb121(32)=abb121(32)*spbl6l5
      abb121(20)=spak2k4*abb121(8)*abb121(20)
      abb121(41)=abb121(41)*abb121(17)*abb121(5)
      abb121(20)=abb121(20)-abb121(41)
      abb121(41)=abb121(20)*abb121(49)
      abb121(32)=abb121(32)+abb121(41)
      abb121(41)=-spbk4k1*abb121(32)
      abb121(22)=abb121(22)*abb121(17)
      abb121(13)=abb121(13)*c2
      abb121(13)=abb121(22)-abb121(13)+abb121(46)
      abb121(22)=abb121(13)*spbl6l5
      abb121(44)=abb121(49)*abb121(18)
      abb121(22)=abb121(44)+abb121(22)
      abb121(44)=spak2k3*abb121(22)
      abb121(41)=abb121(41)+abb121(44)
      abb121(41)=8.0_ki*abb121(41)
      abb121(16)=abb121(16)*spbe7l5
      abb121(44)=abb121(16)*spak2k3
      abb121(45)=spbk4k1*spbe7l5
      abb121(46)=abb121(39)*abb121(45)
      abb121(44)=abb121(44)+abb121(46)
      abb121(44)=8.0_ki*abb121(44)
      abb121(46)=abb121(56)*abb121(53)*abb121(12)
      abb121(49)=abb121(54)*abb121(67)*abb121(58)
      abb121(46)=abb121(46)-abb121(49)
      abb121(49)=abb121(46)*abb121(7)
      abb121(53)=abb121(45)*abb121(49)
      abb121(10)=abb121(25)*abb121(10)
      abb121(10)=abb121(59)-abb121(10)
      abb121(10)=abb121(54)*abb121(10)
      abb121(54)=abb121(10)*abb121(7)
      abb121(56)=spak2k3*spbe7l5
      abb121(58)=-abb121(56)*abb121(54)
      abb121(53)=abb121(53)+abb121(58)
      abb121(53)=8.0_ki*abb121(53)
      abb121(40)=abb121(40)*abb121(17)
      abb121(36)=abb121(40)-abb121(36)
      abb121(40)=abb121(36)*abb121(45)
      abb121(45)=abb121(21)*abb121(56)
      abb121(40)=abb121(40)+abb121(45)
      abb121(40)=4.0_ki*abb121(40)
      abb121(45)=abb121(46)*abb121(42)
      abb121(20)=abb121(37)*abb121(20)
      abb121(20)=abb121(20)+abb121(45)
      abb121(45)=spbk4k1*abb121(20)
      abb121(10)=abb121(10)*abb121(42)
      abb121(37)=abb121(37)*abb121(18)
      abb121(10)=abb121(10)+abb121(37)
      abb121(37)=-spak2k3*abb121(10)
      abb121(37)=abb121(45)+abb121(37)
      abb121(37)=4.0_ki*abb121(37)
      abb121(42)=abb121(65)*abb121(6)
      abb121(9)=abb121(42)-abb121(9)
      abb121(9)=abb121(9)*abb121(23)
      abb121(23)=abb121(8)*abb121(25)
      abb121(12)=abb121(12)*abb121(27)
      abb121(12)=abb121(23)-abb121(12)
      abb121(12)=abb121(12)*spbe7l6
      abb121(8)=abb121(8)*abb121(15)
      abb121(14)=abb121(14)*abb121(17)
      abb121(8)=abb121(8)-abb121(14)
      abb121(8)=abb121(8)*spbk7e7*spak2k7
      abb121(8)=-abb121(8)+abb121(9)+abb121(12)
      abb121(8)=4.0_ki*abb121(8)
      abb121(9)=-spbk4k1*abb121(8)
      abb121(12)=-spbk4k3*abb121(30)
      abb121(14)=-spak1k2*abb121(31)
      abb121(12)=abb121(12)+abb121(14)
      abb121(12)=4.0_ki*abb121(12)
      abb121(14)=spbk4k3*abb121(32)
      abb121(15)=spak1k2*abb121(22)
      abb121(14)=abb121(14)+abb121(15)
      abb121(14)=8.0_ki*abb121(14)
      abb121(15)=abb121(16)*spak1k2
      abb121(16)=spbk4k3*spbe7l5
      abb121(17)=abb121(39)*abb121(16)
      abb121(15)=abb121(15)-abb121(17)
      abb121(15)=8.0_ki*abb121(15)
      abb121(17)=-abb121(16)*abb121(49)
      abb121(22)=spak1k2*spbe7l5
      abb121(23)=-abb121(22)*abb121(54)
      abb121(17)=abb121(17)+abb121(23)
      abb121(17)=8.0_ki*abb121(17)
      abb121(16)=-abb121(36)*abb121(16)
      abb121(21)=abb121(21)*abb121(22)
      abb121(16)=abb121(16)+abb121(21)
      abb121(16)=4.0_ki*abb121(16)
      abb121(20)=-spbk4k3*abb121(20)
      abb121(10)=-spak1k2*abb121(10)
      abb121(10)=abb121(20)+abb121(10)
      abb121(10)=4.0_ki*abb121(10)
      abb121(8)=spbk4k3*abb121(8)
      abb121(19)=-4.0_ki*abb121(19)
      abb121(20)=4.0_ki*abb121(35)
      abb121(21)=-spae7k7*abb121(20)
      abb121(18)=-abb121(18)*abb121(26)
      abb121(22)=8.0_ki*spak2k7*abb121(18)
      abb121(18)=4.0_ki*abb121(18)
      abb121(23)=-spae7k7*abb121(18)
      abb121(20)=spal6e7*abb121(20)
      abb121(13)=-abb121(13)*abb121(51)
      abb121(18)=spal6e7*abb121(18)
      abb121(24)=4.0_ki*abb121(24)
      abb121(25)=spak3k4*abb121(24)
      abb121(24)=-spak1k4*abb121(24)
      R2d121=0.0_ki
      rat2 = rat2 + R2d121
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='121' value='", &
          & R2d121, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd121h3
