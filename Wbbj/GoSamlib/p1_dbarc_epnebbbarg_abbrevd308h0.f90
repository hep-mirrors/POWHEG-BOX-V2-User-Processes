module     p1_dbarc_epnebbbarg_abbrevd308h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(69), public :: abb308
   complex(ki), public :: R2d308
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
      abb308(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb308(2)=1.0_ki/(es34+es567-es12-es234)
      abb308(3)=NC**(-1)
      abb308(4)=spbl5k2**(-1)
      abb308(5)=spbl6k2**(-1)
      abb308(6)=spak2l6**(-1)
      abb308(7)=sqrt(mB**2)
      abb308(8)=CVDC*i_*spak1k4*abb308(2)*abb308(1)
      abb308(9)=TR*gW
      abb308(9)=abb308(9)**2
      abb308(10)=abb308(8)*abb308(9)*spbe7k2
      abb308(11)=abb308(10)*spbk4k3
      abb308(12)=spak4l5*abb308(3)
      abb308(13)=abb308(12)*abb308(11)
      abb308(14)=abb308(10)*spbk3k1
      abb308(15)=abb308(14)*spak1l5
      abb308(16)=abb308(15)*abb308(3)
      abb308(13)=abb308(13)+abb308(16)
      abb308(13)=abb308(13)*abb308(7)
      abb308(10)=abb308(10)*mB
      abb308(16)=abb308(10)*spbk4k3
      abb308(17)=abb308(12)*abb308(16)
      abb308(18)=abb308(10)*abb308(3)
      abb308(19)=spak1l5*spbk3k1
      abb308(20)=abb308(18)*abb308(19)
      abb308(17)=-abb308(13)+abb308(17)+abb308(20)
      abb308(21)=c1-c3
      abb308(17)=-abb308(17)*abb308(21)
      abb308(19)=abb308(19)*abb308(10)
      abb308(22)=abb308(16)*spak4l5
      abb308(23)=abb308(19)+abb308(22)
      abb308(24)=abb308(11)*spak4l5
      abb308(24)=abb308(24)+abb308(15)
      abb308(24)=abb308(24)*abb308(7)
      abb308(25)=abb308(23)-abb308(24)
      abb308(26)=c2-c4
      abb308(25)=-abb308(25)*abb308(26)
      abb308(17)=abb308(25)+abb308(17)
      abb308(17)=abb308(17)*spal6e7
      abb308(25)=abb308(5)**2
      abb308(27)=mB**3
      abb308(15)=abb308(27)*abb308(15)*abb308(25)
      abb308(28)=abb308(27)*abb308(11)
      abb308(25)=abb308(28)*abb308(25)
      abb308(29)=abb308(25)*spak4l5
      abb308(29)=abb308(29)+abb308(15)
      abb308(30)=-spae7k7*abb308(21)
      abb308(31)=spbk7k2*abb308(3)
      abb308(32)=-abb308(30)*abb308(31)
      abb308(33)=-spae7k7*abb308(26)
      abb308(34)=-abb308(33)*spbk7k2
      abb308(32)=abb308(32)+abb308(34)
      abb308(32)=abb308(29)*abb308(32)
      abb308(34)=2.0_ki*abb308(6)
      abb308(35)=abb308(32)*abb308(34)
      abb308(35)=abb308(35)-abb308(17)
      abb308(36)=es71+es12-es712
      abb308(35)=-abb308(35)*abb308(36)
      abb308(10)=abb308(26)*abb308(10)
      abb308(18)=abb308(21)*abb308(18)
      abb308(10)=abb308(10)+abb308(18)
      abb308(18)=abb308(4)*spbk7k2
      abb308(37)=abb308(18)*spae7k7
      abb308(38)=-abb308(10)*abb308(37)*spbk3k1
      abb308(39)=abb308(38)*spak1l6
      abb308(40)=c3*abb308(3)
      abb308(41)=c1*abb308(3)
      abb308(40)=abb308(41)+abb308(26)-abb308(40)
      abb308(41)=abb308(40)*abb308(37)*abb308(16)
      abb308(42)=abb308(41)*spak4l6
      abb308(39)=abb308(39)-abb308(42)
      abb308(42)=spbk7k2*abb308(5)
      abb308(43)=abb308(20)*abb308(42)
      abb308(44)=abb308(22)*abb308(5)
      abb308(45)=abb308(44)*abb308(31)
      abb308(43)=abb308(43)+abb308(45)
      abb308(43)=-abb308(43)*abb308(30)
      abb308(23)=-abb308(33)*abb308(42)*abb308(23)
      abb308(23)=abb308(39)-abb308(43)-abb308(23)
      abb308(43)=2.0_ki*spbk7l6
      abb308(43)=abb308(43)*spal6k7
      abb308(45)=abb308(23)*abb308(43)
      abb308(46)=abb308(7)*mB**2
      abb308(47)=abb308(46)*abb308(5)
      abb308(48)=abb308(47)*abb308(11)
      abb308(49)=2.0_ki*spak4k7
      abb308(50)=abb308(49)*abb308(48)
      abb308(47)=abb308(47)*abb308(14)
      abb308(51)=2.0_ki*spak1k7
      abb308(52)=abb308(51)*abb308(47)
      abb308(50)=abb308(52)+abb308(50)
      abb308(52)=-abb308(3)*abb308(21)*abb308(4)
      abb308(53)=-abb308(4)*abb308(26)
      abb308(52)=abb308(52)+abb308(53)
      abb308(53)=abb308(52)*spae7k7*spbk7k2**2
      abb308(50)=abb308(53)*abb308(50)
      abb308(54)=abb308(28)*abb308(5)
      abb308(55)=-spak2k4*abb308(54)
      abb308(27)=abb308(27)*abb308(14)
      abb308(56)=abb308(27)*abb308(5)
      abb308(57)=spak1k2*abb308(56)
      abb308(55)=abb308(57)+abb308(55)
      abb308(53)=abb308(34)*spal6k7*abb308(53)*abb308(55)
      abb308(35)=abb308(45)+abb308(35)+abb308(53)+abb308(50)
      abb308(35)=2.0_ki*abb308(35)
      abb308(45)=abb308(8)*spbk4k3
      abb308(50)=abb308(45)*abb308(9)
      abb308(53)=abb308(50)*spak4l5
      abb308(8)=abb308(8)*spbk3k1
      abb308(55)=abb308(9)*abb308(8)*spak1l5
      abb308(53)=abb308(53)+abb308(55)
      abb308(57)=2.0_ki*abb308(7)
      abb308(57)=abb308(53)*abb308(57)
      abb308(9)=abb308(9)*mB
      abb308(45)=abb308(45)*abb308(9)
      abb308(58)=abb308(45)*spak4l5
      abb308(8)=abb308(8)*abb308(9)
      abb308(9)=abb308(8)*spak1l5
      abb308(58)=abb308(58)+abb308(9)
      abb308(57)=abb308(57)-abb308(58)
      abb308(59)=-abb308(21)*abb308(31)*abb308(57)
      abb308(57)=-abb308(26)*spbk7k2*abb308(57)
      abb308(40)=-abb308(40)*abb308(18)
      abb308(60)=abb308(45)*abb308(40)
      abb308(61)=abb308(60)*spak4l6
      abb308(40)=abb308(8)*abb308(40)
      abb308(62)=abb308(40)*spak1l6
      abb308(61)=abb308(61)+abb308(62)
      abb308(62)=spbl6k2*abb308(61)
      abb308(57)=abb308(62)+abb308(57)+abb308(59)
      abb308(57)=8.0_ki*spal6k7*abb308(57)
      abb308(59)=abb308(17)+2.0_ki*abb308(23)
      abb308(59)=4.0_ki*abb308(59)
      abb308(39)=-4.0_ki*abb308(39)
      abb308(32)=abb308(6)*abb308(32)
      abb308(32)=abb308(17)+abb308(32)
      abb308(32)=4.0_ki*abb308(32)
      abb308(17)=abb308(17)-abb308(23)
      abb308(17)=2.0_ki*abb308(17)
      abb308(23)=abb308(55)*abb308(3)
      abb308(50)=abb308(50)*abb308(12)
      abb308(23)=abb308(23)+abb308(50)
      abb308(23)=abb308(23)*abb308(7)
      abb308(50)=-abb308(23)*abb308(21)
      abb308(53)=abb308(53)*abb308(7)
      abb308(55)=-abb308(53)*abb308(26)
      abb308(50)=abb308(50)+abb308(55)
      abb308(55)=abb308(50)*spbk7e7
      abb308(62)=abb308(5)*abb308(58)
      abb308(31)=-abb308(21)*abb308(31)*abb308(62)
      abb308(42)=-abb308(26)*abb308(42)*abb308(58)
      abb308(31)=abb308(31)+abb308(42)
      abb308(42)=spbe7l6*abb308(31)
      abb308(42)=abb308(55)+abb308(42)
      abb308(63)=-abb308(18)*abb308(26)
      abb308(64)=abb308(63)*abb308(54)
      abb308(65)=abb308(5)*abb308(3)
      abb308(66)=abb308(21)*abb308(65)
      abb308(18)=-abb308(18)*abb308(66)
      abb308(67)=abb308(18)*abb308(28)
      abb308(64)=abb308(64)+abb308(67)
      abb308(67)=spak2k4*abb308(64)
      abb308(68)=abb308(63)*abb308(56)
      abb308(69)=abb308(18)*abb308(27)
      abb308(68)=abb308(68)+abb308(69)
      abb308(69)=-spak1k2*abb308(68)
      abb308(67)=abb308(69)+abb308(67)
      abb308(67)=abb308(34)*abb308(67)
      abb308(42)=abb308(67)-2.0_ki*abb308(42)
      abb308(42)=spal6k7*abb308(42)
      abb308(29)=-abb308(29)*abb308(26)
      abb308(15)=abb308(15)*abb308(3)
      abb308(25)=abb308(25)*abb308(12)
      abb308(15)=abb308(25)+abb308(15)
      abb308(15)=-abb308(15)*abb308(21)
      abb308(15)=abb308(15)+abb308(29)
      abb308(25)=abb308(15)*abb308(34)
      abb308(19)=abb308(19)*abb308(5)
      abb308(19)=abb308(19)+abb308(44)
      abb308(29)=-abb308(19)*abb308(26)
      abb308(22)=abb308(22)*abb308(65)
      abb308(20)=abb308(20)*abb308(5)
      abb308(20)=abb308(22)+abb308(20)
      abb308(22)=-abb308(20)*abb308(21)
      abb308(22)=abb308(29)+abb308(22)
      abb308(25)=abb308(25)+abb308(22)
      abb308(25)=-abb308(25)*abb308(36)
      abb308(10)=-abb308(4)*spbk3k1*abb308(10)
      abb308(29)=abb308(10)*spak1l6
      abb308(16)=-abb308(16)*abb308(52)
      abb308(34)=abb308(16)*spak4l6
      abb308(29)=abb308(29)-abb308(34)
      abb308(34)=-abb308(29)*abb308(43)
      abb308(36)=abb308(63)*abb308(48)
      abb308(11)=abb308(46)*abb308(11)
      abb308(43)=abb308(18)*abb308(11)
      abb308(36)=abb308(36)+abb308(43)
      abb308(43)=-abb308(36)*abb308(49)
      abb308(44)=abb308(63)*abb308(47)
      abb308(14)=abb308(46)*abb308(14)
      abb308(18)=abb308(18)*abb308(14)
      abb308(18)=abb308(44)+abb308(18)
      abb308(44)=-abb308(18)*abb308(51)
      abb308(25)=abb308(44)+abb308(43)+abb308(34)+abb308(42)+abb308(25)
      abb308(25)=2.0_ki*abb308(25)
      abb308(34)=2.0_ki*abb308(29)
      abb308(42)=-3.0_ki*abb308(22)-abb308(34)
      abb308(42)=4.0_ki*abb308(42)
      abb308(29)=4.0_ki*abb308(29)
      abb308(15)=abb308(6)*abb308(15)
      abb308(15)=abb308(15)-abb308(22)
      abb308(15)=4.0_ki*abb308(15)
      abb308(43)=2.0_ki*abb308(50)
      abb308(22)=spbk7l6*abb308(22)
      abb308(44)=spbe7l6*abb308(61)
      abb308(46)=spak2k4*abb308(6)
      abb308(50)=-abb308(64)*abb308(46)
      abb308(61)=spak1k2*abb308(6)
      abb308(63)=abb308(68)*abb308(61)
      abb308(22)=abb308(44)+abb308(63)+abb308(50)+abb308(22)-abb308(55)
      abb308(22)=spal6e7*abb308(22)
      abb308(36)=spak4e7*abb308(36)
      abb308(18)=spak1e7*abb308(18)
      abb308(18)=abb308(18)+abb308(36)+abb308(22)
      abb308(18)=4.0_ki*abb308(18)
      abb308(22)=16.0_ki*abb308(31)
      abb308(31)=-spak4e7*abb308(60)
      abb308(36)=-spak1e7*abb308(40)
      abb308(31)=abb308(31)+abb308(36)
      abb308(31)=4.0_ki*abb308(31)
      abb308(36)=-abb308(62)*abb308(26)
      abb308(44)=-abb308(58)*abb308(66)
      abb308(36)=abb308(36)+abb308(44)
      abb308(44)=-8.0_ki*spbk7e7*abb308(36)
      abb308(24)=-abb308(24)*abb308(33)
      abb308(13)=-abb308(13)*abb308(30)
      abb308(41)=abb308(41)*abb308(49)
      abb308(38)=-abb308(38)*abb308(51)
      abb308(13)=abb308(38)+abb308(41)+abb308(13)+abb308(24)
      abb308(13)=2.0_ki*abb308(13)
      abb308(16)=-spak4k7*abb308(16)
      abb308(10)=spak1k7*abb308(10)
      abb308(10)=abb308(16)+abb308(10)
      abb308(10)=4.0_ki*abb308(10)
      abb308(16)=-abb308(20)*abb308(30)
      abb308(19)=-abb308(19)*abb308(33)
      abb308(16)=abb308(19)+abb308(16)
      abb308(16)=spbk7l6*abb308(16)
      abb308(19)=-abb308(37)*abb308(66)
      abb308(20)=abb308(28)*abb308(19)
      abb308(24)=-abb308(37)*abb308(26)
      abb308(28)=abb308(54)*abb308(24)
      abb308(20)=abb308(28)+abb308(20)
      abb308(20)=abb308(20)*abb308(46)
      abb308(27)=-abb308(27)*abb308(19)
      abb308(28)=-abb308(56)*abb308(24)
      abb308(27)=abb308(28)+abb308(27)
      abb308(27)=abb308(27)*abb308(61)
      abb308(16)=abb308(27)+abb308(16)+abb308(20)
      abb308(16)=2.0_ki*abb308(16)
      abb308(12)=abb308(45)*abb308(12)
      abb308(9)=abb308(9)*abb308(3)
      abb308(9)=-abb308(9)-abb308(12)+3.0_ki*abb308(23)
      abb308(9)=abb308(9)*abb308(21)
      abb308(12)=-abb308(58)+3.0_ki*abb308(53)
      abb308(12)=abb308(12)*abb308(26)
      abb308(20)=abb308(52)*abb308(45)
      abb308(21)=-spak4l6*abb308(20)
      abb308(8)=abb308(52)*abb308(8)
      abb308(23)=-spak1l6*abb308(8)
      abb308(21)=abb308(21)+abb308(23)
      abb308(21)=spbl6k2*abb308(21)
      abb308(23)=abb308(60)*abb308(49)
      abb308(26)=abb308(40)*abb308(51)
      abb308(9)=2.0_ki*abb308(21)+abb308(26)+abb308(23)+abb308(12)+abb308(9)
      abb308(9)=4.0_ki*abb308(9)
      abb308(12)=spbe7l6*abb308(36)
      abb308(21)=-abb308(46)*abb308(54)
      abb308(23)=abb308(61)*abb308(56)
      abb308(21)=abb308(23)+abb308(21)
      abb308(21)=abb308(52)*abb308(21)
      abb308(12)=abb308(12)+abb308(21)
      abb308(12)=2.0_ki*abb308(12)
      abb308(11)=-abb308(11)*abb308(19)
      abb308(21)=-abb308(48)*abb308(24)
      abb308(11)=abb308(21)+abb308(11)
      abb308(11)=2.0_ki*abb308(11)
      abb308(21)=2.0_ki*abb308(52)
      abb308(23)=abb308(48)*abb308(21)
      abb308(20)=-8.0_ki*abb308(20)
      abb308(14)=-abb308(14)*abb308(19)
      abb308(19)=-abb308(47)*abb308(24)
      abb308(14)=abb308(19)+abb308(14)
      abb308(14)=2.0_ki*abb308(14)
      abb308(19)=abb308(47)*abb308(21)
      abb308(8)=-8.0_ki*abb308(8)
      R2d308=0.0_ki
      rat2 = rat2 + R2d308
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='308' value='", &
          & R2d308, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd308h0