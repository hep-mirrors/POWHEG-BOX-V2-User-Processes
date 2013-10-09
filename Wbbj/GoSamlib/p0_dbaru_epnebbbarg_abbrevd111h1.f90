module     p0_dbaru_epnebbbarg_abbrevd111h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(68), public :: abb111
   complex(ki), public :: R2d111
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
      abb111(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb111(2)=1.0_ki/(es34+es567-es12-es234)
      abb111(3)=es56**(-1)
      abb111(4)=spak2l5**(-1)
      abb111(5)=spbl6k2**(-1)
      abb111(6)=spak2l6**(-1)
      abb111(7)=spbl5k2**(-1)
      abb111(8)=TR*gW
      abb111(8)=i_*c2*spak1k4*CVDU*abb111(3)*abb111(2)*abb111(1)*abb111(8)**2
      abb111(9)=abb111(8)*spbk4k3
      abb111(10)=abb111(9)*spbe7k2
      abb111(11)=mB**2
      abb111(12)=abb111(11)*abb111(4)
      abb111(13)=abb111(10)*abb111(12)
      abb111(14)=abb111(10)*spbl5k2
      abb111(15)=abb111(13)-abb111(14)
      abb111(16)=abb111(15)*spak2l6
      abb111(11)=abb111(11)*abb111(5)
      abb111(17)=abb111(14)*abb111(11)
      abb111(16)=abb111(16)+abb111(17)
      abb111(18)=abb111(16)*spak4e7
      abb111(8)=abb111(8)*spbk3k1
      abb111(19)=abb111(8)*spbe7k2
      abb111(20)=abb111(19)*abb111(12)
      abb111(21)=abb111(19)*spbl5k2
      abb111(22)=abb111(20)-abb111(21)
      abb111(23)=abb111(22)*spak2l6
      abb111(24)=abb111(21)*abb111(11)
      abb111(23)=abb111(23)+abb111(24)
      abb111(25)=abb111(23)*spak1e7
      abb111(26)=abb111(8)*spbl5k2
      abb111(27)=abb111(26)*spbe7l5
      abb111(28)=abb111(27)*spak1e7
      abb111(29)=abb111(9)*spbl5k2
      abb111(30)=abb111(29)*spbe7l5
      abb111(31)=abb111(30)*spak4e7
      abb111(28)=abb111(28)+abb111(31)
      abb111(28)=abb111(28)*spal5l6
      abb111(18)=abb111(28)+abb111(18)+abb111(25)
      abb111(25)=es71+es12-es712
      abb111(31)=4.0_ki*abb111(18)*abb111(25)
      abb111(32)=abb111(29)*abb111(11)
      abb111(33)=abb111(12)*abb111(9)
      abb111(34)=-abb111(29)+abb111(33)
      abb111(34)=spak2l6*abb111(34)
      abb111(34)=abb111(32)+abb111(34)
      abb111(34)=spbk7k2*abb111(34)
      abb111(35)=spal5l6*spbk7l5
      abb111(36)=abb111(29)*abb111(35)
      abb111(34)=abb111(34)+abb111(36)
      abb111(34)=spak4k7*abb111(34)
      abb111(36)=abb111(26)*abb111(11)
      abb111(37)=abb111(12)*abb111(8)
      abb111(38)=-abb111(26)+abb111(37)
      abb111(38)=spak2l6*abb111(38)
      abb111(38)=abb111(36)+abb111(38)
      abb111(38)=spbk7k2*abb111(38)
      abb111(39)=abb111(26)*abb111(35)
      abb111(38)=abb111(38)+abb111(39)
      abb111(38)=spak1k7*abb111(38)
      abb111(39)=abb111(8)*spak1k2
      abb111(40)=abb111(9)*spak2k4
      abb111(39)=abb111(39)-abb111(40)
      abb111(40)=-spal5l6*abb111(39)*spbl5k2**2
      abb111(34)=abb111(38)+2.0_ki*abb111(40)+abb111(34)
      abb111(34)=4.0_ki*abb111(34)
      abb111(38)=-8.0_ki*abb111(18)
      abb111(40)=abb111(10)*spak2k4
      abb111(41)=abb111(19)*spak1k2
      abb111(40)=abb111(40)-abb111(41)
      abb111(41)=spbk7k2*spae7k7
      abb111(42)=abb111(11)*abb111(4)
      abb111(43)=abb111(41)*abb111(42)
      abb111(44)=-abb111(43)*abb111(40)
      abb111(45)=abb111(19)*spae7k7
      abb111(46)=abb111(45)*spak1l6
      abb111(47)=abb111(10)*spae7k7
      abb111(48)=abb111(47)*spak4l6
      abb111(46)=abb111(46)+abb111(48)
      abb111(48)=-spbk7l5*abb111(46)
      abb111(44)=abb111(44)+abb111(48)
      abb111(48)=8.0_ki*abb111(44)
      abb111(49)=abb111(29)*spak4l6
      abb111(50)=abb111(26)*spak1l6
      abb111(49)=abb111(49)+abb111(50)
      abb111(50)=8.0_ki*abb111(49)
      abb111(51)=abb111(10)*spak4l6
      abb111(52)=abb111(19)*spak1l6
      abb111(51)=abb111(51)+abb111(52)
      abb111(51)=abb111(51)*spbl6l5
      abb111(52)=spak1k7*spbk7l5
      abb111(53)=abb111(52)*abb111(19)
      abb111(54)=spak4k7*spbk7l5
      abb111(55)=abb111(54)*abb111(10)
      abb111(51)=abb111(51)-abb111(53)-abb111(55)
      abb111(53)=abb111(17)*spak2k4
      abb111(55)=abb111(24)*spak1k2
      abb111(53)=abb111(53)-abb111(55)
      abb111(53)=abb111(53)*abb111(6)
      abb111(15)=-spak2k4*abb111(15)
      abb111(22)=spak1k2*abb111(22)
      abb111(15)=-abb111(53)-abb111(51)+abb111(15)+abb111(22)
      abb111(15)=spal6e7*abb111(15)
      abb111(22)=abb111(9)*spbe7l5
      abb111(55)=abb111(22)*spak4e7
      abb111(56)=abb111(8)*spbe7l5
      abb111(57)=abb111(56)*spak1e7
      abb111(55)=abb111(55)+abb111(57)
      abb111(57)=spbk7k2*abb111(55)*spal6k7
      abb111(57)=2.0_ki*abb111(57)
      abb111(15)=-abb111(57)+abb111(15)-abb111(18)
      abb111(15)=4.0_ki*abb111(15)
      abb111(18)=abb111(42)*abb111(9)
      abb111(58)=abb111(18)*spak4k7
      abb111(59)=abb111(42)*abb111(8)
      abb111(60)=abb111(59)*spak1k7
      abb111(58)=abb111(58)+abb111(60)
      abb111(60)=-spbk7k2*abb111(58)
      abb111(61)=-spak4l5*abb111(29)
      abb111(62)=-spak1l5*abb111(26)
      abb111(61)=abb111(62)+abb111(61)
      abb111(61)=abb111(42)*abb111(61)
      abb111(62)=-3.0_ki*abb111(29)+2.0_ki*abb111(33)
      abb111(62)=spak4l6*abb111(62)
      abb111(63)=-3.0_ki*abb111(26)+2.0_ki*abb111(37)
      abb111(63)=spak1l6*abb111(63)
      abb111(64)=abb111(6)*abb111(11)*abb111(49)
      abb111(60)=3.0_ki*abb111(64)+abb111(62)+abb111(63)+abb111(61)+abb111(60)
      abb111(60)=8.0_ki*abb111(60)
      abb111(61)=abb111(10)*spak4e7
      abb111(62)=abb111(19)*spak1e7
      abb111(61)=abb111(61)+abb111(62)
      abb111(62)=abb111(42)*abb111(61)
      abb111(63)=16.0_ki*abb111(62)
      abb111(64)=abb111(22)*spak4l6
      abb111(65)=abb111(56)*spak1l6
      abb111(64)=abb111(64)+abb111(65)
      abb111(65)=spbl6k2*abb111(64)
      abb111(53)=abb111(53)+abb111(65)
      abb111(65)=abb111(29)*spak4k7
      abb111(66)=abb111(26)*spak1k7
      abb111(65)=abb111(65)+abb111(66)
      abb111(65)=abb111(65)*spbk7e7
      abb111(66)=abb111(40)*abb111(12)
      abb111(49)=-spbe7l6*abb111(49)
      abb111(67)=-spak4l5*abb111(30)
      abb111(68)=-spak1l5*abb111(27)
      abb111(49)=-abb111(65)+abb111(68)+abb111(67)+abb111(49)+4.0_ki*abb111(66)&
      &+abb111(51)+2.0_ki*abb111(53)
      abb111(49)=spal6e7*abb111(49)
      abb111(13)=-3.0_ki*abb111(14)+abb111(13)
      abb111(13)=spak2l6*abb111(13)
      abb111(13)=abb111(17)+abb111(13)
      abb111(13)=spak4e7*abb111(13)
      abb111(17)=-3.0_ki*abb111(21)+abb111(20)
      abb111(17)=spak2l6*abb111(17)
      abb111(17)=abb111(24)+abb111(17)
      abb111(17)=spak1e7*abb111(17)
      abb111(20)=spak2k4*abb111(14)
      abb111(24)=-spak1k2*abb111(21)
      abb111(20)=abb111(20)+abb111(24)
      abb111(20)=abb111(42)*abb111(20)
      abb111(24)=spak4l6*abb111(30)
      abb111(27)=spak1l6*abb111(27)
      abb111(20)=abb111(27)+abb111(24)+abb111(20)
      abb111(20)=spal5e7*abb111(20)
      abb111(24)=2.0_ki*abb111(25)
      abb111(25)=-abb111(62)*abb111(24)
      abb111(13)=abb111(57)+2.0_ki*abb111(20)+abb111(28)+abb111(13)+abb111(17)+&
      &abb111(25)-abb111(44)+abb111(49)
      abb111(13)=2.0_ki*abb111(13)
      abb111(17)=-8.0_ki*abb111(62)
      abb111(20)=abb111(11)*spbe7l5
      abb111(25)=abb111(9)*abb111(20)
      abb111(27)=abb111(22)*spak2l6
      abb111(28)=abb111(25)-abb111(27)
      abb111(28)=spbk7k2*abb111(28)
      abb111(30)=abb111(10)*abb111(11)
      abb111(10)=abb111(10)*spak2l6
      abb111(44)=abb111(30)+abb111(10)
      abb111(44)=spbk7l5*abb111(44)
      abb111(49)=abb111(22)*abb111(35)
      abb111(28)=abb111(49)+abb111(28)+abb111(44)
      abb111(28)=spak4k7*abb111(28)
      abb111(20)=abb111(8)*abb111(20)
      abb111(44)=abb111(56)*spak2l6
      abb111(49)=abb111(20)-abb111(44)
      abb111(49)=spbk7k2*abb111(49)
      abb111(51)=abb111(19)*abb111(11)
      abb111(19)=abb111(19)*spak2l6
      abb111(53)=abb111(51)+abb111(19)
      abb111(53)=spbk7l5*abb111(53)
      abb111(57)=abb111(56)*abb111(35)
      abb111(49)=abb111(57)+abb111(49)+abb111(53)
      abb111(49)=spak1k7*abb111(49)
      abb111(16)=-spak2k4*abb111(16)
      abb111(23)=spak1k2*abb111(23)
      abb111(53)=-spak2l6*abb111(65)
      abb111(57)=spak4k7*abb111(22)
      abb111(62)=spak1k7*abb111(56)
      abb111(57)=abb111(57)+abb111(62)
      abb111(62)=abb111(7)*abb111(12)*spak2l6
      abb111(57)=abb111(57)*spbk7k2*abb111(62)
      abb111(65)=-spak4l6*abb111(10)
      abb111(67)=-spak1l6*abb111(19)
      abb111(65)=abb111(65)+abb111(67)
      abb111(65)=spbl6l5*abb111(65)
      abb111(67)=spak4k7*abb111(10)
      abb111(68)=spak1k7*abb111(19)
      abb111(67)=abb111(67)+abb111(68)
      abb111(67)=spbk7l6*abb111(42)*abb111(67)
      abb111(16)=abb111(67)+abb111(65)+abb111(57)+2.0_ki*abb111(53)+abb111(49)+&
      &abb111(28)+abb111(16)+abb111(23)
      abb111(16)=2.0_ki*abb111(16)
      abb111(23)=abb111(40)*abb111(42)
      abb111(23)=abb111(23)+abb111(64)
      abb111(23)=4.0_ki*abb111(23)
      abb111(28)=spak4l6*abb111(25)
      abb111(49)=spak1l6*abb111(20)
      abb111(28)=abb111(28)+abb111(49)
      abb111(28)=abb111(6)*abb111(28)
      abb111(49)=-spbk7e7*abb111(58)
      abb111(53)=spak4l6*abb111(18)
      abb111(57)=spak1l6*abb111(59)
      abb111(53)=abb111(53)+abb111(57)
      abb111(53)=spbe7l6*abb111(53)
      abb111(57)=abb111(7)*abb111(12)
      abb111(57)=abb111(57)-1.0_ki
      abb111(57)=abb111(64)*abb111(57)
      abb111(58)=abb111(22)*spak4l5
      abb111(65)=abb111(56)*spak1l5
      abb111(58)=abb111(58)+abb111(65)
      abb111(65)=abb111(42)*abb111(58)
      abb111(28)=abb111(53)+abb111(49)+abb111(28)+abb111(65)+abb111(57)
      abb111(28)=4.0_ki*abb111(28)
      abb111(18)=abb111(18)*spak4e7
      abb111(49)=abb111(59)*spak1e7
      abb111(18)=abb111(18)+abb111(49)
      abb111(49)=-spbe7l6*spak2l6*abb111(18)
      abb111(27)=-abb111(25)-abb111(27)
      abb111(27)=spak4e7*abb111(27)
      abb111(44)=-abb111(20)-abb111(44)
      abb111(44)=spak1e7*abb111(44)
      abb111(27)=abb111(49)+abb111(27)+abb111(44)
      abb111(27)=spbk7k2*abb111(27)
      abb111(10)=-abb111(30)+abb111(10)
      abb111(10)=spak4e7*abb111(10)
      abb111(19)=-abb111(51)+abb111(19)
      abb111(19)=spak1e7*abb111(19)
      abb111(30)=-abb111(61)*abb111(62)
      abb111(10)=abb111(30)+abb111(10)+abb111(19)
      abb111(10)=spbk7l5*abb111(10)
      abb111(19)=-abb111(55)*abb111(35)
      abb111(30)=spak4e7*abb111(29)
      abb111(35)=spak1e7*abb111(26)
      abb111(30)=abb111(30)+abb111(35)
      abb111(30)=spbk7e7*spak2l6*abb111(30)
      abb111(10)=abb111(30)+abb111(19)+abb111(10)+abb111(27)
      abb111(10)=4.0_ki*abb111(10)
      abb111(18)=16.0_ki*spbk7e7*abb111(18)
      abb111(12)=abb111(7)*abb111(41)*abb111(12)
      abb111(12)=abb111(12)+abb111(41)
      abb111(19)=abb111(40)*abb111(12)
      abb111(27)=-spak4l5*abb111(47)
      abb111(30)=-spak1l5*abb111(45)
      abb111(27)=abb111(30)+abb111(27)
      abb111(27)=spbk7l5*abb111(27)
      abb111(24)=abb111(61)*abb111(24)
      abb111(11)=abb111(6)*abb111(40)*abb111(11)
      abb111(30)=abb111(41)*abb111(11)
      abb111(35)=-spbk7l6*abb111(46)
      abb111(19)=abb111(35)+abb111(30)+abb111(24)+abb111(19)+abb111(27)
      abb111(19)=2.0_ki*abb111(19)
      abb111(24)=4.0_ki*abb111(61)
      abb111(27)=spak4k7*abb111(9)
      abb111(30)=spak1k7*abb111(8)
      abb111(27)=abb111(27)+abb111(30)
      abb111(27)=spbk7e7*abb111(27)
      abb111(30)=abb111(7)*abb111(66)
      abb111(35)=abb111(8)*spak1l6
      abb111(44)=abb111(9)*spak4l6
      abb111(35)=abb111(35)+abb111(44)
      abb111(44)=-spbe7l6*abb111(35)
      abb111(11)=abb111(44)+abb111(30)+abb111(27)+abb111(11)-abb111(40)-abb111(&
      &58)
      abb111(11)=2.0_ki*abb111(11)
      abb111(27)=-spak4e7*abb111(9)
      abb111(30)=-spak1e7*abb111(8)
      abb111(27)=abb111(27)+abb111(30)
      abb111(27)=8.0_ki*spbk7e7*abb111(27)
      abb111(22)=abb111(22)*spak2k4
      abb111(30)=abb111(56)*spak1k2
      abb111(22)=abb111(22)-abb111(30)
      abb111(12)=-abb111(22)*abb111(12)
      abb111(25)=-spak2k4*abb111(25)
      abb111(20)=spak1k2*abb111(20)
      abb111(20)=abb111(25)+abb111(20)
      abb111(20)=abb111(20)*abb111(41)*abb111(6)
      abb111(25)=abb111(43)*abb111(39)
      abb111(30)=spbk7l5*spae7k7
      abb111(39)=-abb111(30)*abb111(35)
      abb111(25)=abb111(25)+abb111(39)
      abb111(25)=spbe7l6*abb111(25)
      abb111(39)=abb111(30)*abb111(58)
      abb111(40)=spbk7l6*spae7k7*abb111(64)
      abb111(12)=abb111(40)+2.0_ki*abb111(25)+abb111(20)+abb111(39)+abb111(12)
      abb111(12)=2.0_ki*abb111(12)
      abb111(20)=spak2k4*abb111(32)
      abb111(25)=-spak1k2*abb111(36)
      abb111(20)=abb111(20)+abb111(25)
      abb111(20)=abb111(6)*abb111(20)
      abb111(25)=-5.0_ki*abb111(29)-3.0_ki*abb111(33)
      abb111(25)=spak2k4*abb111(25)
      abb111(39)=5.0_ki*abb111(26)+3.0_ki*abb111(37)
      abb111(39)=spak1k2*abb111(39)
      abb111(9)=abb111(9)*abb111(54)
      abb111(8)=abb111(8)*abb111(52)
      abb111(35)=spbl6l5*abb111(35)
      abb111(8)=-3.0_ki*abb111(35)+abb111(20)+abb111(8)+abb111(9)+abb111(25)+ab&
      &b111(39)
      abb111(8)=4.0_ki*abb111(8)
      abb111(9)=4.0_ki*abb111(55)
      abb111(20)=-abb111(43)*abb111(22)
      abb111(22)=-abb111(30)*abb111(64)
      abb111(20)=abb111(20)+abb111(22)
      abb111(20)=4.0_ki*abb111(20)
      abb111(22)=-spak2k4*abb111(29)
      abb111(25)=spak1k2*abb111(26)
      abb111(22)=abb111(22)+abb111(25)
      abb111(22)=16.0_ki*abb111(42)*abb111(22)
      abb111(25)=spae7k7*spak2l6
      abb111(25)=4.0_ki*abb111(25)
      abb111(14)=-abb111(14)*abb111(25)
      abb111(30)=8.0_ki*abb111(42)
      abb111(35)=-abb111(47)*abb111(30)
      abb111(39)=4.0_ki*abb111(47)
      abb111(40)=8.0_ki*spal5l6
      abb111(41)=-abb111(29)*abb111(40)
      abb111(29)=2.0_ki*abb111(29)-abb111(33)
      abb111(29)=spak2l6*abb111(29)
      abb111(29)=-abb111(32)+abb111(29)
      abb111(29)=8.0_ki*abb111(29)
      abb111(21)=-abb111(21)*abb111(25)
      abb111(25)=-abb111(45)*abb111(30)
      abb111(30)=4.0_ki*abb111(45)
      abb111(32)=-abb111(26)*abb111(40)
      abb111(26)=2.0_ki*abb111(26)-abb111(37)
      abb111(26)=spak2l6*abb111(26)
      abb111(26)=-abb111(36)+abb111(26)
      abb111(26)=8.0_ki*abb111(26)
      R2d111=0.0_ki
      rat2 = rat2 + R2d111
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='111' value='", &
          & R2d111, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd111h1
