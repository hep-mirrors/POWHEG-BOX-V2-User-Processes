module     p0_dbaru_epnebbbarg_abbrevd306h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(71), public :: abb306
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
      abb306(4)=sqrt2**(-1)
      abb306(5)=spak2k7**(-1)
      abb306(6)=spak2l5**(-1)
      abb306(7)=spbl5k2**(-1)
      abb306(8)=spbl6k2**(-1)
      abb306(9)=sqrt(mB**2)
      abb306(10)=2.0_ki*es71
      abb306(11)=abb306(10)-es712
      abb306(11)=abb306(11)*es712
      abb306(12)=es71**2
      abb306(11)=abb306(11)-abb306(12)
      abb306(13)=abb306(3)-NC
      abb306(14)=TR*gW
      abb306(14)=abb306(14)**2*CVDU*i_*spak1k4*abb306(5)*abb306(4)*abb306(2)*ab&
      &b306(1)
      abb306(13)=abb306(13)*abb306(14)*c1
      abb306(14)=c3*abb306(14)*abb306(3)
      abb306(13)=abb306(13)-abb306(14)
      abb306(14)=-spbk4k3*abb306(13)
      abb306(15)=-spbk7l5*abb306(14)
      abb306(16)=mB**2
      abb306(17)=abb306(16)*abb306(6)
      abb306(18)=-abb306(17)*abb306(15)
      abb306(19)=-abb306(18)*abb306(11)
      abb306(20)=es712-es71
      abb306(21)=-es12+2.0_ki*abb306(20)
      abb306(22)=-es12*abb306(18)*abb306(21)
      abb306(19)=abb306(22)+abb306(19)
      abb306(19)=spak4l6*abb306(19)
      abb306(13)=-spbk3k1*abb306(13)
      abb306(22)=-spbk7l5*abb306(13)
      abb306(23)=-abb306(17)*abb306(22)
      abb306(24)=-abb306(23)*abb306(11)
      abb306(25)=-es12*abb306(23)*abb306(21)
      abb306(24)=abb306(25)+abb306(24)
      abb306(24)=spak1l6*abb306(24)
      abb306(25)=mB**4*abb306(8)*abb306(6)**2
      abb306(26)=-abb306(25)*abb306(14)
      abb306(27)=abb306(26)*abb306(11)
      abb306(28)=es12*abb306(26)*abb306(21)
      abb306(27)=abb306(28)+abb306(27)
      abb306(28)=spak2k4*spbk7k2
      abb306(27)=abb306(27)*abb306(28)
      abb306(25)=-abb306(25)*abb306(13)
      abb306(29)=-abb306(25)*abb306(11)
      abb306(30)=-es12*abb306(25)*abb306(21)
      abb306(29)=abb306(30)+abb306(29)
      abb306(30)=spak1k2*spbk7k2
      abb306(29)=abb306(29)*abb306(30)
      abb306(19)=abb306(29)+abb306(27)+abb306(19)+abb306(24)
      abb306(19)=abb306(7)*abb306(19)
      abb306(20)=abb306(20)-es12
      abb306(24)=-abb306(15)*abb306(20)
      abb306(27)=abb306(24)*spak4l6
      abb306(29)=-abb306(22)*abb306(20)
      abb306(31)=abb306(29)*spak1l6
      abb306(27)=abb306(27)+abb306(31)
      abb306(31)=spak2l5*spbl5k2
      abb306(32)=abb306(27)*abb306(31)
      abb306(33)=abb306(17)*abb306(8)
      abb306(34)=-abb306(33)*abb306(15)
      abb306(35)=abb306(34)*abb306(11)
      abb306(36)=es12*abb306(34)*abb306(21)
      abb306(35)=abb306(36)+abb306(35)
      abb306(36)=2.0_ki*spak4l5
      abb306(35)=abb306(35)*abb306(36)
      abb306(37)=-abb306(33)*abb306(22)
      abb306(11)=abb306(37)*abb306(11)
      abb306(21)=es12*abb306(37)*abb306(21)
      abb306(11)=abb306(21)+abb306(11)
      abb306(21)=2.0_ki*spak1l5
      abb306(11)=abb306(11)*abb306(21)
      abb306(38)=abb306(8)*mB
      abb306(39)=-abb306(38)*abb306(15)
      abb306(40)=-abb306(20)*abb306(39)
      abb306(41)=2.0_ki*spak4k7
      abb306(42)=spbk7k2*abb306(9)
      abb306(43)=abb306(41)*abb306(42)
      abb306(44)=abb306(40)*abb306(43)
      abb306(45)=-abb306(38)*abb306(22)
      abb306(46)=-abb306(20)*abb306(45)
      abb306(47)=2.0_ki*spak1k7
      abb306(48)=abb306(47)*abb306(42)
      abb306(49)=abb306(46)*abb306(48)
      abb306(50)=spbk7l5**2
      abb306(51)=abb306(50)*abb306(14)
      abb306(52)=-abb306(20)*spak4l6
      abb306(53)=abb306(51)*abb306(52)
      abb306(50)=-abb306(50)*abb306(13)
      abb306(54)=-abb306(20)*spak1l6
      abb306(55)=-abb306(50)*abb306(54)
      abb306(53)=abb306(53)+abb306(55)
      abb306(55)=2.0_ki*spal5k7
      abb306(53)=abb306(53)*abb306(55)
      abb306(11)=abb306(53)+abb306(49)+abb306(44)+abb306(11)+abb306(35)+2.0_ki*&
      &abb306(19)+abb306(32)
      abb306(11)=4.0_ki*abb306(11)
      abb306(19)=abb306(22)*spak1l6
      abb306(32)=abb306(15)*spak4l6
      abb306(19)=abb306(19)+abb306(32)
      abb306(31)=abb306(19)*abb306(31)
      abb306(32)=8.0_ki*abb306(31)
      abb306(35)=-abb306(33)*abb306(14)
      abb306(44)=abb306(35)*es71
      abb306(49)=abb306(35)*es712
      abb306(44)=abb306(44)-abb306(49)
      abb306(53)=abb306(35)*es12
      abb306(56)=abb306(44)+abb306(53)
      abb306(57)=abb306(56)*abb306(28)
      abb306(33)=-abb306(33)*abb306(13)
      abb306(58)=abb306(33)*es71
      abb306(59)=abb306(33)*es712
      abb306(58)=abb306(58)-abb306(59)
      abb306(60)=abb306(33)*es12
      abb306(61)=abb306(58)+abb306(60)
      abb306(62)=abb306(61)*abb306(30)
      abb306(27)=-abb306(62)+abb306(27)+abb306(57)
      abb306(57)=8.0_ki*abb306(27)
      abb306(25)=abb306(30)*abb306(25)
      abb306(26)=abb306(28)*abb306(26)
      abb306(25)=abb306(25)-abb306(26)
      abb306(26)=abb306(20)*abb306(25)
      abb306(52)=-abb306(18)*abb306(52)
      abb306(54)=-abb306(23)*abb306(54)
      abb306(26)=abb306(52)+abb306(54)+abb306(26)
      abb306(26)=abb306(7)*abb306(26)
      abb306(34)=abb306(36)*abb306(34)
      abb306(37)=abb306(21)*abb306(37)
      abb306(34)=abb306(37)+abb306(34)
      abb306(34)=-abb306(20)*abb306(34)
      abb306(37)=-abb306(39)*abb306(43)
      abb306(43)=-abb306(45)*abb306(48)
      abb306(48)=abb306(51)*spak4l6
      abb306(50)=abb306(50)*spak1l6
      abb306(48)=abb306(48)-abb306(50)
      abb306(50)=-abb306(48)*abb306(55)
      abb306(26)=abb306(50)+abb306(43)+abb306(37)+3.0_ki*abb306(26)+abb306(31)+&
      &abb306(34)
      abb306(26)=8.0_ki*abb306(26)
      abb306(34)=abb306(30)*abb306(33)
      abb306(37)=abb306(28)*abb306(35)
      abb306(19)=-abb306(34)+abb306(37)+abb306(19)
      abb306(34)=-16.0_ki*abb306(19)
      abb306(18)=spak4l6*abb306(18)
      abb306(23)=spak1l6*abb306(23)
      abb306(18)=abb306(18)+abb306(23)+abb306(25)
      abb306(18)=16.0_ki*abb306(7)*abb306(18)
      abb306(23)=abb306(31)+abb306(27)
      abb306(23)=4.0_ki*abb306(23)
      abb306(19)=-8.0_ki*abb306(19)
      abb306(25)=-abb306(39)*abb306(28)
      abb306(27)=abb306(45)*abb306(30)
      abb306(25)=abb306(25)+abb306(27)
      abb306(25)=abb306(9)*abb306(25)
      abb306(27)=-spak2l5*abb306(48)
      abb306(25)=abb306(27)+abb306(25)
      abb306(25)=8.0_ki*abb306(25)
      abb306(27)=abb306(6)*mB
      abb306(28)=-abb306(27)*abb306(14)
      abb306(30)=-abb306(20)*abb306(28)
      abb306(31)=abb306(30)*abb306(9)
      abb306(37)=-abb306(17)*abb306(14)
      abb306(43)=-abb306(20)*abb306(37)
      abb306(31)=abb306(31)-abb306(43)
      abb306(48)=spak2k4*abb306(31)
      abb306(27)=-abb306(27)*abb306(13)
      abb306(50)=-abb306(20)*abb306(27)
      abb306(51)=abb306(50)*abb306(9)
      abb306(17)=-abb306(17)*abb306(13)
      abb306(52)=-abb306(20)*abb306(17)
      abb306(51)=abb306(51)-abb306(52)
      abb306(54)=-spak1k2*abb306(51)
      abb306(55)=-abb306(24)*abb306(41)
      abb306(62)=-abb306(29)*abb306(47)
      abb306(48)=abb306(62)+abb306(55)+abb306(48)+abb306(54)
      abb306(48)=4.0_ki*abb306(48)
      abb306(47)=abb306(47)*abb306(22)
      abb306(41)=abb306(41)*abb306(15)
      abb306(41)=abb306(47)+abb306(41)
      abb306(47)=abb306(28)*abb306(9)
      abb306(47)=abb306(47)-abb306(37)
      abb306(54)=-spak2k4*abb306(47)
      abb306(55)=abb306(27)*abb306(9)
      abb306(55)=abb306(55)-abb306(17)
      abb306(62)=spak1k2*abb306(55)
      abb306(54)=abb306(54)+abb306(62)+abb306(41)
      abb306(54)=8.0_ki*abb306(54)
      abb306(62)=abb306(22)*spak1k2
      abb306(63)=abb306(15)*spak2k4
      abb306(62)=abb306(62)-abb306(63)
      abb306(63)=8.0_ki*abb306(62)
      abb306(64)=-spak2k4*abb306(24)
      abb306(65)=spak1k2*abb306(29)
      abb306(64)=abb306(64)+abb306(65)
      abb306(64)=4.0_ki*abb306(64)
      abb306(62)=4.0_ki*abb306(62)
      abb306(65)=abb306(35)*abb306(10)
      abb306(49)=abb306(65)-abb306(49)
      abb306(49)=es712*abb306(49)
      abb306(44)=-2.0_ki*abb306(44)-abb306(53)
      abb306(44)=es12*abb306(44)
      abb306(53)=-abb306(35)*abb306(12)
      abb306(44)=abb306(44)+abb306(53)+abb306(49)
      abb306(16)=abb306(16)*abb306(8)
      abb306(49)=-abb306(16)*abb306(14)
      abb306(53)=abb306(49)*abb306(20)
      abb306(65)=-abb306(38)*abb306(14)
      abb306(66)=-abb306(20)*abb306(9)
      abb306(67)=abb306(65)*abb306(66)
      abb306(53)=abb306(67)+abb306(53)
      abb306(53)=spbl5k2*abb306(53)
      abb306(31)=-spak2l6*abb306(31)
      abb306(67)=2.0_ki*spal6k7
      abb306(68)=abb306(24)*abb306(67)
      abb306(31)=abb306(68)+abb306(31)+2.0_ki*abb306(44)+abb306(53)
      abb306(31)=4.0_ki*abb306(31)
      abb306(44)=abb306(65)*abb306(9)
      abb306(49)=-abb306(44)+abb306(49)
      abb306(49)=spbl5k2*abb306(49)
      abb306(53)=spak2l6*abb306(47)
      abb306(68)=abb306(15)*abb306(67)
      abb306(49)=-abb306(68)+abb306(53)+2.0_ki*abb306(56)+abb306(49)
      abb306(49)=8.0_ki*abb306(49)
      abb306(15)=abb306(15)*spak2l6
      abb306(53)=8.0_ki*abb306(15)
      abb306(69)=spbk7l5*abb306(16)
      abb306(70)=-abb306(69)*abb306(14)
      abb306(71)=abb306(70)*abb306(20)
      abb306(40)=-abb306(9)*abb306(40)
      abb306(24)=spak2l6*abb306(24)
      abb306(24)=abb306(24)+abb306(40)+abb306(71)
      abb306(24)=4.0_ki*abb306(24)
      abb306(39)=abb306(9)*abb306(39)
      abb306(39)=abb306(15)+abb306(39)+abb306(70)
      abb306(39)=8.0_ki*abb306(39)
      abb306(15)=4.0_ki*abb306(15)
      abb306(40)=-spak4k7*abb306(65)
      abb306(38)=-abb306(38)*abb306(13)
      abb306(65)=-spak1k7*abb306(38)
      abb306(40)=abb306(65)+abb306(40)
      abb306(40)=abb306(42)*abb306(40)
      abb306(42)=spak4l5*abb306(56)
      abb306(65)=spak1l5*abb306(61)
      abb306(40)=abb306(65)+abb306(42)+abb306(40)
      abb306(40)=spbl5k2*abb306(40)
      abb306(42)=2.0_ki*abb306(9)
      abb306(30)=abb306(30)*abb306(42)
      abb306(30)=abb306(30)-abb306(43)
      abb306(30)=spak4l6*abb306(30)
      abb306(43)=abb306(50)*abb306(42)
      abb306(43)=abb306(43)-abb306(52)
      abb306(43)=spak1l6*abb306(43)
      abb306(50)=-spak4l6*abb306(14)
      abb306(52)=-spak1l6*abb306(13)
      abb306(50)=abb306(50)+abb306(52)
      abb306(50)=spak2l5*abb306(50)*spbl5k2**2
      abb306(30)=abb306(50)+abb306(30)+abb306(43)+abb306(40)
      abb306(30)=8.0_ki*abb306(30)
      abb306(40)=abb306(14)*spbl5k2
      abb306(43)=abb306(40)*spak4l6
      abb306(50)=abb306(13)*spbl5k2
      abb306(52)=abb306(50)*spak1l6
      abb306(43)=abb306(43)+abb306(52)
      abb306(52)=-8.0_ki*abb306(43)
      abb306(36)=-abb306(35)*abb306(36)
      abb306(21)=-abb306(33)*abb306(21)
      abb306(21)=abb306(21)+abb306(36)
      abb306(21)=spbl5k2*abb306(21)
      abb306(28)=-abb306(28)*abb306(42)
      abb306(28)=abb306(28)+abb306(37)
      abb306(28)=spak4l6*abb306(28)
      abb306(27)=-abb306(27)*abb306(42)
      abb306(17)=abb306(27)+abb306(17)
      abb306(17)=spak1l6*abb306(17)
      abb306(17)=abb306(28)+abb306(17)+abb306(21)
      abb306(17)=8.0_ki*abb306(17)
      abb306(21)=4.0_ki*abb306(43)
      abb306(27)=spak4k7*abb306(40)
      abb306(28)=spak1k7*abb306(50)
      abb306(27)=abb306(27)+abb306(28)
      abb306(27)=8.0_ki*abb306(27)
      abb306(28)=abb306(47)+2.0_ki*abb306(40)
      abb306(36)=spak2k4*abb306(28)
      abb306(37)=abb306(55)+2.0_ki*abb306(50)
      abb306(42)=-spak1k2*abb306(37)
      abb306(36)=abb306(36)+abb306(42)-abb306(41)
      abb306(36)=4.0_ki*abb306(36)
      abb306(41)=8.0_ki*spal6k7
      abb306(40)=-abb306(40)*abb306(41)
      abb306(14)=16.0_ki*abb306(14)
      abb306(42)=spbl5k2*abb306(44)
      abb306(42)=abb306(42)+abb306(56)
      abb306(28)=-spak2l6*abb306(28)
      abb306(28)=abb306(68)+2.0_ki*abb306(42)+abb306(28)
      abb306(28)=4.0_ki*abb306(28)
      abb306(35)=-16.0_ki*abb306(35)
      abb306(10)=abb306(33)*abb306(10)
      abb306(10)=abb306(10)-abb306(59)
      abb306(10)=es712*abb306(10)
      abb306(42)=-2.0_ki*abb306(58)-abb306(60)
      abb306(42)=es12*abb306(42)
      abb306(12)=-abb306(33)*abb306(12)
      abb306(10)=abb306(42)+abb306(12)+abb306(10)
      abb306(12)=-abb306(16)*abb306(13)
      abb306(16)=abb306(12)*abb306(20)
      abb306(42)=abb306(38)*abb306(66)
      abb306(16)=abb306(42)+abb306(16)
      abb306(16)=spbl5k2*abb306(16)
      abb306(42)=-spak2l6*abb306(51)
      abb306(43)=abb306(29)*abb306(67)
      abb306(10)=abb306(43)+abb306(42)+2.0_ki*abb306(10)+abb306(16)
      abb306(10)=4.0_ki*abb306(10)
      abb306(16)=abb306(38)*abb306(9)
      abb306(12)=-abb306(16)+abb306(12)
      abb306(12)=spbl5k2*abb306(12)
      abb306(38)=spak2l6*abb306(55)
      abb306(42)=abb306(67)*abb306(22)
      abb306(12)=-abb306(42)+abb306(38)+2.0_ki*abb306(61)+abb306(12)
      abb306(12)=8.0_ki*abb306(12)
      abb306(22)=abb306(22)*spak2l6
      abb306(38)=8.0_ki*abb306(22)
      abb306(41)=-abb306(50)*abb306(41)
      abb306(43)=16.0_ki*abb306(13)
      abb306(13)=-abb306(69)*abb306(13)
      abb306(20)=abb306(13)*abb306(20)
      abb306(44)=-abb306(9)*abb306(46)
      abb306(29)=spak2l6*abb306(29)
      abb306(20)=abb306(29)+abb306(44)+abb306(20)
      abb306(20)=4.0_ki*abb306(20)
      abb306(29)=abb306(9)*abb306(45)
      abb306(13)=abb306(22)+abb306(29)+abb306(13)
      abb306(13)=8.0_ki*abb306(13)
      abb306(22)=4.0_ki*abb306(22)
      abb306(16)=spbl5k2*abb306(16)
      abb306(16)=abb306(16)+abb306(61)
      abb306(29)=-spak2l6*abb306(37)
      abb306(16)=abb306(42)+2.0_ki*abb306(16)+abb306(29)
      abb306(16)=4.0_ki*abb306(16)
      abb306(29)=-16.0_ki*abb306(33)
      R2d306=0.0_ki
      rat2 = rat2 + R2d306
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='306' value='", &
          & R2d306, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd306h1
