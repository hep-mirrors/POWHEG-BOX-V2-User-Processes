module     p0_dbaru_epnebbbarg_abbrevd306h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(67), public :: abb306
   complex(ki), public :: R2d306
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb306(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb306(2)=1.0_ki/(es34+es567-es12-es234)
      abb306(3)=NC**(-1)
      abb306(4)=spak2l5**(-1)
      abb306(5)=spak2l6**(-1)
      abb306(6)=spbl5k2**(-1)
      abb306(7)=sqrt(mB**2)
      abb306(8)=mB**3
      abb306(9)=abb306(8)*abb306(4)
      abb306(10)=abb306(5)*abb306(3)
      abb306(11)=abb306(9)*abb306(10)
      abb306(12)=CVDU*i_*spak1k4*abb306(2)*abb306(1)
      abb306(13)=TR*gW
      abb306(13)=abb306(13)**2
      abb306(14)=abb306(12)*abb306(13)*c1
      abb306(15)=abb306(14)*spbk4k3
      abb306(16)=abb306(11)*abb306(15)
      abb306(17)=abb306(5)*abb306(4)
      abb306(18)=abb306(17)*abb306(8)
      abb306(12)=abb306(12)*c3*abb306(13)*abb306(3)
      abb306(13)=spbk4k3*abb306(12)
      abb306(19)=abb306(18)*abb306(13)
      abb306(20)=abb306(14)*NC
      abb306(9)=abb306(9)*abb306(20)
      abb306(21)=abb306(5)*spbk4k3
      abb306(22)=abb306(9)*abb306(21)
      abb306(16)=-abb306(19)+abb306(16)-abb306(22)
      abb306(16)=abb306(16)*spak2k4
      abb306(19)=abb306(14)*spbk3k1
      abb306(11)=abb306(11)*abb306(19)
      abb306(22)=spbk3k1*abb306(12)
      abb306(18)=abb306(18)*abb306(22)
      abb306(23)=abb306(5)*spbk3k1
      abb306(9)=abb306(9)*abb306(23)
      abb306(9)=-abb306(18)+abb306(11)-abb306(9)
      abb306(9)=abb306(9)*spak1k2
      abb306(9)=abb306(16)-abb306(9)
      abb306(11)=abb306(9)*abb306(6)
      abb306(16)=spae7k7*spbe7k2
      abb306(18)=abb306(16)*spbk7l5
      abb306(24)=abb306(11)*abb306(18)
      abb306(25)=abb306(20)*spbk3k1
      abb306(26)=abb306(19)*abb306(3)
      abb306(25)=abb306(22)+abb306(25)-abb306(26)
      abb306(26)=abb306(25)*spak1k2
      abb306(27)=abb306(20)*spbk4k3
      abb306(28)=abb306(15)*abb306(3)
      abb306(27)=-abb306(28)+abb306(27)+abb306(13)
      abb306(28)=abb306(27)*spak2k4
      abb306(26)=abb306(26)-abb306(28)
      abb306(8)=abb306(6)*abb306(26)*abb306(8)*abb306(4)**2
      abb306(28)=abb306(16)*spbk7l6
      abb306(29)=abb306(8)*abb306(28)
      abb306(24)=abb306(24)+abb306(29)
      abb306(29)=spbl6k2*abb306(7)
      abb306(30)=abb306(29)*spbe7l5
      abb306(31)=abb306(30)*abb306(27)
      abb306(32)=abb306(31)*spak4e7
      abb306(30)=abb306(30)*abb306(25)
      abb306(33)=abb306(30)*spak1e7
      abb306(32)=abb306(32)+abb306(33)
      abb306(14)=abb306(14)*mB
      abb306(33)=abb306(14)*NC
      abb306(12)=mB*abb306(12)
      abb306(12)=abb306(33)+abb306(12)
      abb306(33)=abb306(21)*abb306(12)
      abb306(34)=abb306(14)*spbk4k3
      abb306(35)=abb306(10)*abb306(34)
      abb306(33)=abb306(33)-abb306(35)
      abb306(35)=abb306(33)*spak2k4
      abb306(36)=abb306(23)*abb306(12)
      abb306(14)=abb306(14)*spbk3k1
      abb306(37)=abb306(10)*abb306(14)
      abb306(36)=abb306(36)-abb306(37)
      abb306(37)=abb306(36)*spak1k2
      abb306(35)=abb306(35)-abb306(37)
      abb306(37)=-spbe7l5*abb306(35)
      abb306(38)=spal5e7*abb306(37)*spbl5k2
      abb306(39)=2.0_ki*abb306(24)+abb306(38)-abb306(32)
      abb306(40)=es71+es12-es712
      abb306(39)=abb306(40)*abb306(39)
      abb306(41)=abb306(27)*abb306(7)
      abb306(42)=abb306(41)*spak4k7
      abb306(43)=abb306(25)*abb306(7)
      abb306(44)=abb306(43)*spak1k7
      abb306(42)=abb306(42)+abb306(44)
      abb306(44)=2.0_ki*abb306(18)
      abb306(45)=-abb306(44)*spbk7l6*abb306(42)
      abb306(46)=-abb306(12)*spbk4k3*abb306(4)
      abb306(47)=abb306(4)*abb306(3)
      abb306(48)=abb306(47)*abb306(34)
      abb306(46)=abb306(48)+abb306(46)
      abb306(48)=abb306(46)*spak4l5
      abb306(49)=abb306(12)*spbk3k1*abb306(4)
      abb306(47)=abb306(47)*abb306(14)
      abb306(47)=-abb306(47)+abb306(49)
      abb306(49)=abb306(47)*spak1l5
      abb306(48)=abb306(48)-abb306(49)
      abb306(49)=2.0_ki*spak2k7
      abb306(50)=spbk7l6*abb306(49)*abb306(18)
      abb306(51)=spak2e7*spbe7l5
      abb306(52)=abb306(51)*spbl6k2
      abb306(53)=abb306(40)*abb306(52)
      abb306(50)=abb306(50)+abb306(53)
      abb306(50)=-abb306(50)*abb306(48)
      abb306(53)=spal5k7*abb306(35)*spbk7l5**2*abb306(16)
      abb306(39)=-2.0_ki*abb306(53)+abb306(45)+abb306(39)+abb306(50)
      abb306(39)=2.0_ki*abb306(39)
      abb306(45)=mB**2
      abb306(17)=abb306(45)*abb306(17)
      abb306(13)=abb306(13)*abb306(17)
      abb306(45)=abb306(45)*abb306(4)
      abb306(10)=abb306(45)*abb306(10)
      abb306(15)=abb306(10)*abb306(15)
      abb306(20)=abb306(45)*abb306(20)
      abb306(21)=abb306(20)*abb306(21)
      abb306(13)=-abb306(13)+abb306(15)-abb306(21)
      abb306(13)=abb306(13)*spak2k4
      abb306(15)=abb306(22)*abb306(17)
      abb306(10)=abb306(10)*abb306(19)
      abb306(17)=abb306(20)*abb306(23)
      abb306(10)=-abb306(15)+abb306(10)-abb306(17)
      abb306(10)=abb306(10)*spak1k2
      abb306(10)=abb306(13)-abb306(10)
      abb306(10)=abb306(10)*abb306(7)
      abb306(13)=abb306(8)*spbl6k2
      abb306(15)=2.0_ki*abb306(10)+abb306(13)-abb306(9)
      abb306(15)=-abb306(15)*abb306(40)
      abb306(17)=-spbl5k2*abb306(26)*abb306(29)
      abb306(19)=abb306(29)*abb306(27)
      abb306(20)=spbk7l5*abb306(19)
      abb306(21)=spbk7l6*spbl5k2
      abb306(22)=-abb306(41)*abb306(21)
      abb306(20)=abb306(20)+abb306(22)
      abb306(20)=spak4k7*abb306(20)
      abb306(22)=abb306(29)*abb306(25)
      abb306(23)=spbk7l5*abb306(22)
      abb306(26)=-abb306(43)*abb306(21)
      abb306(23)=abb306(23)+abb306(26)
      abb306(23)=spak1k7*abb306(23)
      abb306(26)=spbl6k2*spbk7l5
      abb306(21)=abb306(26)-abb306(21)
      abb306(21)=spak2k7*abb306(21)*abb306(48)
      abb306(26)=spak2l5*abb306(35)*spbl5k2**2
      abb306(15)=abb306(26)+abb306(23)+abb306(20)+abb306(17)+abb306(15)+abb306(&
      &21)
      abb306(15)=8.0_ki*abb306(15)
      abb306(17)=-abb306(52)*abb306(48)
      abb306(17)=abb306(17)+abb306(38)
      abb306(20)=-abb306(17)+abb306(32)
      abb306(21)=-4.0_ki*abb306(20)
      abb306(23)=abb306(35)*abb306(18)
      abb306(26)=abb306(46)*spak2k4
      abb306(29)=abb306(47)*spak1k2
      abb306(26)=abb306(26)+abb306(29)
      abb306(29)=abb306(26)*abb306(28)
      abb306(23)=abb306(23)-abb306(29)
      abb306(29)=4.0_ki*abb306(23)
      abb306(32)=abb306(26)*spbl6k2
      abb306(35)=abb306(35)*spbl5k2
      abb306(38)=abb306(32)+abb306(35)
      abb306(38)=8.0_ki*abb306(38)
      abb306(45)=abb306(33)*spbe7l5
      abb306(50)=-abb306(45)*abb306(40)
      abb306(31)=-abb306(31)+abb306(50)
      abb306(31)=spak4e7*abb306(31)
      abb306(50)=abb306(36)*spbe7l5
      abb306(52)=-abb306(50)*abb306(40)
      abb306(30)=-abb306(30)+abb306(52)
      abb306(30)=spak1e7*abb306(30)
      abb306(17)=abb306(30)+abb306(31)-abb306(24)+abb306(17)
      abb306(17)=4.0_ki*abb306(17)
      abb306(24)=abb306(9)-abb306(35)
      abb306(30)=abb306(33)*spak4k7
      abb306(31)=abb306(36)*spak1k7
      abb306(30)=abb306(30)+abb306(31)
      abb306(31)=2.0_ki*spbk7l5
      abb306(31)=abb306(31)*abb306(30)
      abb306(52)=-2.0_ki*abb306(48)
      abb306(52)=spbl6l5*abb306(52)
      abb306(13)=abb306(13)+3.0_ki*abb306(10)+abb306(52)+abb306(31)-2.0_ki*abb3&
      &06(24)
      abb306(13)=8.0_ki*abb306(13)
      abb306(24)=abb306(45)*spak4e7
      abb306(45)=abb306(50)*spak1e7
      abb306(24)=abb306(24)+abb306(45)
      abb306(45)=8.0_ki*abb306(24)
      abb306(20)=abb306(23)-abb306(20)
      abb306(20)=2.0_ki*abb306(20)
      abb306(23)=abb306(32)-abb306(35)
      abb306(23)=4.0_ki*abb306(23)
      abb306(24)=4.0_ki*abb306(24)
      abb306(32)=-spbk7l5*spbe7k2*abb306(11)
      abb306(35)=spbk7e7*abb306(10)
      abb306(32)=abb306(35)+abb306(32)
      abb306(32)=spak2k7*abb306(32)
      abb306(35)=-abb306(8)*abb306(40)
      abb306(50)=spak2k7*abb306(48)
      abb306(42)=abb306(50)+abb306(42)
      abb306(42)=spbk7l5*abb306(42)
      abb306(35)=abb306(42)+abb306(35)
      abb306(35)=spbe7l6*abb306(35)
      abb306(42)=abb306(37)*spbk7l5
      abb306(50)=-spal5k7*abb306(42)
      abb306(32)=abb306(50)+abb306(35)+abb306(32)
      abb306(32)=4.0_ki*abb306(32)
      abb306(26)=abb306(26)*spbe7l6
      abb306(26)=abb306(26)+abb306(37)
      abb306(35)=4.0_ki*abb306(26)
      abb306(11)=spbe7l5*abb306(11)
      abb306(8)=spbe7l6*abb306(8)
      abb306(8)=abb306(11)+abb306(8)
      abb306(8)=4.0_ki*abb306(8)
      abb306(26)=2.0_ki*abb306(26)
      abb306(37)=abb306(46)*spbk7l6
      abb306(50)=abb306(33)*spbk7l5
      abb306(37)=abb306(37)-abb306(50)
      abb306(37)=abb306(37)*abb306(49)
      abb306(50)=spbk4k3*abb306(12)
      abb306(34)=abb306(34)*abb306(3)
      abb306(34)=abb306(50)-abb306(34)
      abb306(50)=abb306(34)-abb306(41)
      abb306(52)=abb306(50)*spbl6l5
      abb306(53)=-abb306(37)-abb306(52)
      abb306(53)=2.0_ki*abb306(53)
      abb306(9)=abb306(9)-abb306(10)
      abb306(31)=abb306(9)-abb306(31)
      abb306(31)=2.0_ki*abb306(31)
      abb306(54)=abb306(47)*spbk7l6
      abb306(55)=abb306(36)*spbk7l5
      abb306(54)=abb306(54)+abb306(55)
      abb306(54)=abb306(54)*abb306(49)
      abb306(12)=spbk3k1*abb306(12)
      abb306(14)=abb306(14)*abb306(3)
      abb306(12)=abb306(12)-abb306(14)
      abb306(14)=abb306(12)-abb306(43)
      abb306(55)=abb306(14)*spbl6l5
      abb306(56)=abb306(54)-abb306(55)
      abb306(56)=2.0_ki*abb306(56)
      abb306(57)=-spak4e7*abb306(27)
      abb306(58)=-spak1e7*abb306(25)
      abb306(57)=abb306(58)+abb306(57)
      abb306(58)=abb306(7)*spbe7l5
      abb306(57)=abb306(58)*abb306(57)
      abb306(59)=-abb306(51)*abb306(48)
      abb306(57)=abb306(57)+abb306(59)
      abb306(57)=spbk7l6*abb306(57)
      abb306(59)=spbk7e7*spak2e7
      abb306(10)=abb306(10)*abb306(59)
      abb306(11)=spbk7k2*spak2e7*abb306(11)
      abb306(42)=spal5e7*abb306(42)
      abb306(10)=abb306(11)+abb306(10)+abb306(42)+abb306(57)
      abb306(10)=4.0_ki*abb306(10)
      abb306(11)=-abb306(33)*abb306(18)
      abb306(42)=abb306(46)*abb306(28)
      abb306(11)=abb306(11)+abb306(42)
      abb306(11)=abb306(11)*abb306(49)
      abb306(42)=abb306(16)*abb306(52)
      abb306(11)=abb306(11)+abb306(42)
      abb306(11)=2.0_ki*abb306(11)
      abb306(42)=spbl6k2*abb306(46)
      abb306(52)=-spbl5k2*abb306(33)
      abb306(42)=abb306(42)+abb306(52)
      abb306(52)=8.0_ki*spak2k7
      abb306(42)=abb306(42)*abb306(52)
      abb306(57)=abb306(51)*abb306(33)
      abb306(60)=spbe7l6*spak2e7
      abb306(61)=abb306(60)*abb306(46)
      abb306(57)=abb306(57)-abb306(61)
      abb306(61)=4.0_ki*abb306(57)
      abb306(62)=-abb306(50)*abb306(44)
      abb306(50)=spbl5k2*abb306(50)
      abb306(63)=4.0_ki*abb306(46)
      abb306(64)=-abb306(63)*abb306(40)
      abb306(50)=abb306(50)+abb306(64)
      abb306(50)=4.0_ki*abb306(50)
      abb306(27)=-abb306(27)*abb306(58)
      abb306(64)=spbe7l5*abb306(34)
      abb306(65)=abb306(49)*spbk7e7
      abb306(66)=abb306(46)*abb306(65)
      abb306(27)=abb306(66)+abb306(64)+abb306(27)
      abb306(27)=2.0_ki*abb306(27)
      abb306(63)=abb306(63)*abb306(59)
      abb306(19)=8.0_ki*abb306(19)
      abb306(64)=32.0_ki*abb306(33)
      abb306(66)=2.0_ki*abb306(40)
      abb306(67)=abb306(57)*abb306(66)
      abb306(34)=-3.0_ki*abb306(41)+abb306(34)
      abb306(34)=spbl6l5*abb306(34)
      abb306(34)=abb306(37)+abb306(34)
      abb306(34)=4.0_ki*abb306(34)
      abb306(37)=2.0_ki*abb306(57)
      abb306(9)=-abb306(9)*abb306(16)
      abb306(41)=abb306(44)*abb306(30)
      abb306(9)=abb306(9)+abb306(41)
      abb306(9)=2.0_ki*abb306(9)
      abb306(30)=8.0_ki*spbl5k2*abb306(30)
      abb306(41)=8.0_ki*abb306(46)
      abb306(46)=8.0_ki*spbl6k2*abb306(48)
      abb306(33)=-16.0_ki*abb306(33)
      abb306(18)=-abb306(36)*abb306(18)
      abb306(28)=-abb306(47)*abb306(28)
      abb306(18)=abb306(18)+abb306(28)
      abb306(18)=abb306(18)*abb306(49)
      abb306(16)=abb306(16)*abb306(55)
      abb306(16)=abb306(18)+abb306(16)
      abb306(16)=2.0_ki*abb306(16)
      abb306(18)=-spbl6k2*abb306(47)
      abb306(28)=-spbl5k2*abb306(36)
      abb306(18)=abb306(18)+abb306(28)
      abb306(18)=abb306(18)*abb306(52)
      abb306(28)=abb306(51)*abb306(36)
      abb306(48)=abb306(60)*abb306(47)
      abb306(28)=abb306(28)+abb306(48)
      abb306(48)=4.0_ki*abb306(28)
      abb306(44)=-abb306(14)*abb306(44)
      abb306(14)=spbl5k2*abb306(14)
      abb306(49)=4.0_ki*abb306(47)
      abb306(40)=abb306(49)*abb306(40)
      abb306(14)=abb306(14)+abb306(40)
      abb306(14)=4.0_ki*abb306(14)
      abb306(25)=-abb306(25)*abb306(58)
      abb306(40)=spbe7l5*abb306(12)
      abb306(51)=-abb306(47)*abb306(65)
      abb306(25)=abb306(51)+abb306(40)+abb306(25)
      abb306(25)=2.0_ki*abb306(25)
      abb306(40)=-abb306(49)*abb306(59)
      abb306(22)=8.0_ki*abb306(22)
      abb306(49)=32.0_ki*abb306(36)
      abb306(51)=abb306(28)*abb306(66)
      abb306(12)=-3.0_ki*abb306(43)+abb306(12)
      abb306(12)=spbl6l5*abb306(12)
      abb306(12)=-abb306(54)+abb306(12)
      abb306(12)=4.0_ki*abb306(12)
      abb306(28)=2.0_ki*abb306(28)
      abb306(43)=-8.0_ki*abb306(47)
      abb306(36)=-16.0_ki*abb306(36)
      R2d306=0.0_ki
      rat2 = rat2 + R2d306
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='306' value='", &
          & R2d306, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd306h3
