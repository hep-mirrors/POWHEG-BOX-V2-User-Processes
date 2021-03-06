module     p0_dbaru_epnebbbarg_abbrevd13h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(67), public :: abb13
   complex(ki), public :: R2d13
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
      abb13(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb13(2)=NC**(-1)
      abb13(3)=sqrt2**(-1)
      abb13(4)=es56**(-1)
      abb13(5)=es71**(-1)
      abb13(6)=spak2k7**(-1)
      abb13(7)=spbl5k2**(-1)
      abb13(8)=spak2l6**(-1)
      abb13(9)=spak2l5**(-1)
      abb13(10)=spbl6k2**(-1)
      abb13(11)=spbk7k1*abb13(5)
      abb13(12)=TR*gW
      abb13(13)=abb13(12)**2
      abb13(14)=abb13(11)*abb13(13)
      abb13(15)=abb13(4)*abb13(6)*i_*CVDU*abb13(3)*abb13(1)
      abb13(16)=abb13(15)*c3
      abb13(17)=abb13(2)*abb13(14)*abb13(16)
      abb13(18)=spak1k2**2
      abb13(19)=abb13(17)*abb13(18)
      abb13(20)=abb13(15)*c4
      abb13(14)=abb13(14)*abb13(20)
      abb13(21)=spak1k2*abb13(2)
      abb13(22)=abb13(21)**2
      abb13(23)=abb13(14)*abb13(22)
      abb13(19)=abb13(19)-abb13(23)
      abb13(23)=spbl6k2*spbk3k2
      abb13(24)=abb13(19)*abb13(23)
      abb13(12)=abb13(12)*mB
      abb13(12)=abb13(12)**2
      abb13(25)=abb13(12)*abb13(15)
      abb13(26)=abb13(25)*abb13(11)
      abb13(22)=c4*abb13(22)*abb13(26)
      abb13(27)=c3*abb13(2)
      abb13(28)=abb13(26)*abb13(27)
      abb13(18)=abb13(28)*abb13(18)
      abb13(18)=abb13(22)-abb13(18)
      abb13(22)=abb13(8)*spbk3k2
      abb13(29)=abb13(18)*abb13(22)
      abb13(30)=abb13(24)+abb13(29)
      abb13(31)=spbk7k2*spak4k7
      abb13(32)=-abb13(30)*abb13(31)
      abb13(33)=abb13(2)**2
      abb13(34)=abb13(33)*c4
      abb13(27)=abb13(34)-abb13(27)
      abb13(11)=abb13(27)*abb13(15)*abb13(11)*spak1k2
      abb13(12)=abb13(12)*abb13(11)
      abb13(15)=abb13(12)*spak1k4
      abb13(27)=abb13(15)*abb13(22)
      abb13(11)=-abb13(13)*abb13(11)
      abb13(35)=abb13(11)*spak1k4
      abb13(23)=abb13(23)*abb13(35)
      abb13(23)=abb13(27)+abb13(23)
      abb13(27)=es12*abb13(23)
      abb13(27)=abb13(32)+abb13(27)
      abb13(27)=spak2l5*abb13(27)
      abb13(32)=abb13(31)*abb13(18)
      abb13(36)=es12*abb13(15)
      abb13(36)=-abb13(32)+abb13(36)
      abb13(37)=abb13(7)*spbk3k2
      abb13(38)=abb13(37)*spbl6k2
      abb13(36)=abb13(38)*abb13(36)
      abb13(39)=abb13(11)*spbl6k3
      abb13(40)=abb13(39)*spak1k4
      abb13(41)=abb13(40)*es12
      abb13(42)=abb13(31)*spbl6k3
      abb13(43)=abb13(42)*abb13(19)
      abb13(41)=abb13(41)-abb13(43)
      abb13(43)=spal5l6*spbl6k2
      abb13(44)=-abb13(41)*abb13(43)
      abb13(27)=abb13(44)+abb13(27)+abb13(36)
      abb13(27)=8.0_ki*abb13(27)
      abb13(36)=16.0_ki*spak4l5
      abb13(44)=abb13(36)*abb13(24)
      abb13(37)=abb13(37)*abb13(9)
      abb13(45)=abb13(37)*abb13(18)
      abb13(46)=abb13(45)*spbl6k2
      abb13(30)=abb13(46)+abb13(30)
      abb13(46)=spak4l5*abb13(30)
      abb13(47)=abb13(12)*spak1l5
      abb13(48)=abb13(22)*abb13(10)
      abb13(48)=abb13(48)+abb13(37)
      abb13(49)=-abb13(47)*spak4k7*abb13(48)
      abb13(50)=abb13(11)*spak1l5
      abb13(51)=spak4k7*spbk3k2
      abb13(52)=-abb13(51)*abb13(50)
      abb13(49)=abb13(52)+abb13(49)
      abb13(49)=spbk7l6*abb13(49)
      abb13(52)=abb13(8)*abb13(7)
      abb13(53)=abb13(12)*abb13(52)
      abb13(54)=abb13(53)*abb13(31)
      abb13(26)=abb13(26)*abb13(34)
      abb13(26)=abb13(26)-abb13(28)
      abb13(26)=abb13(26)*abb13(52)*es12
      abb13(28)=-spak1k4*abb13(26)
      abb13(28)=abb13(54)+abb13(28)
      abb13(54)=spbl5k3*spak1l5
      abb13(28)=abb13(28)*abb13(54)
      abb13(48)=abb13(48)*abb13(15)
      abb13(55)=abb13(35)*spbk3k2
      abb13(48)=abb13(48)+abb13(55)
      abb13(56)=spbl6k1*spak1l5*abb13(48)
      abb13(57)=abb13(53)*abb13(42)
      abb13(58)=spbl6k3*spak1k4
      abb13(26)=-abb13(58)*abb13(26)
      abb13(26)=abb13(57)+abb13(26)
      abb13(26)=spak1l6*abb13(26)
      abb13(26)=abb13(26)+abb13(56)+abb13(28)+abb13(49)+abb13(46)
      abb13(26)=16.0_ki*abb13(26)
      abb13(28)=abb13(15)*abb13(52)
      abb13(46)=abb13(28)*spbk3k2
      abb13(49)=32.0_ki*abb13(46)
      abb13(23)=-spak2l5*abb13(23)
      abb13(56)=-abb13(15)*abb13(38)
      abb13(57)=abb13(40)*abb13(43)
      abb13(23)=abb13(57)+abb13(56)+abb13(23)
      abb13(23)=16.0_ki*abb13(23)
      abb13(56)=-spbl6l5*spbk3k2*abb13(50)
      abb13(56)=abb13(56)+abb13(29)-abb13(24)
      abb13(56)=spak4l5*abb13(56)
      abb13(57)=abb13(18)*abb13(52)
      abb13(59)=spbk3k2*abb13(57)
      abb13(60)=abb13(39)*spak1l5
      abb13(61)=abb13(59)-abb13(60)
      abb13(62)=abb13(61)*abb13(31)
      abb13(14)=-abb13(33)*abb13(14)
      abb13(14)=abb13(14)+abb13(17)
      abb13(14)=spak1l5*abb13(14)*abb13(58)
      abb13(14)=-abb13(46)+abb13(14)
      abb13(14)=es12*abb13(14)
      abb13(17)=abb13(12)*abb13(22)
      abb13(22)=abb13(11)*spbl6k2
      abb13(58)=abb13(22)*spbk3k2
      abb13(17)=abb13(17)+abb13(58)
      abb13(58)=-spak1l5*abb13(17)
      abb13(37)=-spbl6k2*abb13(37)*abb13(47)
      abb13(37)=abb13(58)+abb13(37)
      abb13(37)=spak2k4*abb13(37)
      abb13(58)=spak4l6*spbl6k2
      abb13(59)=abb13(59)*abb13(58)
      abb13(14)=abb13(59)+abb13(37)+abb13(14)+abb13(62)+abb13(56)
      abb13(14)=8.0_ki*abb13(14)
      abb13(37)=16.0_ki*abb13(46)
      abb13(46)=16.0_ki*abb13(28)
      abb13(56)=-spbk7k3*abb13(46)
      abb13(42)=-abb13(42)*abb13(57)
      abb13(57)=abb13(28)*es12
      abb13(59)=spbl6k3*abb13(57)
      abb13(62)=spbk7l6*spak4k7
      abb13(63)=-abb13(60)*abb13(62)
      abb13(64)=abb13(40)*spbl6k1
      abb13(65)=spak1l5*abb13(64)
      abb13(42)=abb13(65)+abb13(63)+abb13(42)+abb13(59)
      abb13(42)=8.0_ki*abb13(42)
      abb13(59)=spbl6k3*abb13(46)
      abb13(63)=abb13(19)*spbk3k2
      abb13(31)=abb13(31)*abb13(63)
      abb13(65)=-es12*abb13(55)
      abb13(24)=spak4l6*abb13(24)
      abb13(66)=abb13(63)*spak4l5
      abb13(67)=spbl5k2*abb13(66)
      abb13(24)=abb13(67)+abb13(24)+abb13(31)+abb13(65)
      abb13(24)=8.0_ki*abb13(24)
      abb13(31)=16.0_ki*abb13(48)
      abb13(48)=16.0_ki*abb13(55)
      abb13(35)=8.0_ki*abb13(35)
      abb13(55)=-spbk7k3*abb13(35)
      abb13(65)=8.0_ki*abb13(40)
      abb13(29)=abb13(29)*abb13(10)
      abb13(29)=abb13(45)+abb13(29)+abb13(63)
      abb13(45)=-spbl6k1*spak1k4
      abb13(45)=abb13(45)+abb13(62)
      abb13(45)=abb13(29)*abb13(45)
      abb13(32)=-abb13(52)*abb13(32)
      abb13(32)=abb13(32)+abb13(57)
      abb13(32)=spbl5k3*abb13(32)
      abb13(57)=abb13(39)*abb13(62)
      abb13(57)=abb13(57)-abb13(64)
      abb13(57)=spak1l6*abb13(57)
      abb13(30)=spak2k4*abb13(30)
      abb13(62)=spbl6l5*abb13(66)
      abb13(30)=abb13(62)+abb13(30)+abb13(57)+abb13(32)-abb13(41)+abb13(45)
      abb13(30)=8.0_ki*abb13(30)
      abb13(32)=16.0_ki*abb13(40)
      abb13(41)=abb13(10)*abb13(8)
      abb13(45)=abb13(9)*abb13(7)
      abb13(41)=abb13(41)+abb13(45)
      abb13(15)=abb13(15)*spbl6k3*abb13(41)
      abb13(28)=spbl5k3*abb13(28)
      abb13(15)=abb13(28)+abb13(40)+abb13(15)
      abb13(15)=16.0_ki*abb13(15)
      abb13(28)=spbl5k3*abb13(35)
      abb13(40)=8.0_ki*spal5l6
      abb13(40)=-abb13(19)*spbl6k2**2*abb13(40)
      abb13(57)=abb13(53)*spak1l6
      abb13(62)=abb13(47)*abb13(45)
      abb13(62)=-abb13(57)+abb13(62)
      abb13(62)=spbl6k2*abb13(62)
      abb13(63)=abb13(22)*spak1l5
      abb13(62)=abb13(63)+abb13(62)
      abb13(62)=16.0_ki*abb13(62)
      abb13(63)=8.0_ki*abb13(63)
      abb13(18)=abb13(18)*spbl6k2
      abb13(64)=8.0_ki*abb13(52)*abb13(18)
      abb13(19)=spbl6k2*abb13(19)
      abb13(18)=-abb13(18)*abb13(45)
      abb13(18)=-2.0_ki*abb13(19)+abb13(18)
      abb13(18)=8.0_ki*abb13(18)
      abb13(19)=16.0_ki*abb13(61)
      abb13(41)=-abb13(47)*abb13(41)
      abb13(41)=-abb13(57)+abb13(41)
      abb13(41)=spbl6k3*abb13(41)
      abb13(47)=-abb13(53)*abb13(54)
      abb13(34)=-spak1k2*abb13(34)
      abb13(54)=c3*abb13(21)
      abb13(34)=abb13(34)+abb13(54)
      abb13(25)=spbk7k3*abb13(52)*abb13(25)*abb13(34)
      abb13(25)=abb13(25)+abb13(47)-abb13(60)+abb13(41)
      abb13(25)=16.0_ki*abb13(25)
      abb13(34)=-8.0_ki*abb13(61)
      abb13(41)=-spbl5k3*abb13(50)
      abb13(47)=-spak1l6*abb13(39)
      abb13(20)=spak1k2*abb13(33)*abb13(20)
      abb13(16)=-abb13(21)*abb13(16)
      abb13(16)=abb13(20)+abb13(16)
      abb13(13)=spbk7k3*abb13(13)*abb13(16)
      abb13(13)=abb13(13)+abb13(47)+abb13(41)-abb13(29)
      abb13(13)=8.0_ki*abb13(13)
      abb13(16)=-spak2l5*abb13(17)
      abb13(17)=-abb13(12)*abb13(38)
      abb13(20)=abb13(39)*abb13(43)
      abb13(16)=abb13(20)+abb13(17)+abb13(16)
      abb13(16)=8.0_ki*spak4k7*abb13(16)
      abb13(17)=16.0_ki*abb13(53)
      abb13(20)=abb13(51)*abb13(17)
      abb13(21)=8.0_ki*abb13(11)
      abb13(29)=abb13(51)*abb13(21)
      abb13(33)=8.0_ki*abb13(22)
      abb13(38)=-spal5l6*abb13(33)
      abb13(36)=abb13(36)*abb13(22)
      abb13(39)=abb13(12)*abb13(8)
      abb13(12)=abb13(12)*spbl6k2
      abb13(41)=abb13(45)*abb13(12)
      abb13(41)=abb13(41)+2.0_ki*abb13(39)+abb13(22)
      abb13(41)=spak4l5*abb13(41)
      abb13(43)=abb13(53)*abb13(58)
      abb13(41)=abb13(43)+abb13(41)
      abb13(41)=16.0_ki*abb13(41)
      abb13(33)=-spak4l5*abb13(33)
      abb13(43)=spak4l6*abb13(22)
      abb13(11)=spbl5k2*spak4l5*abb13(11)
      abb13(11)=abb13(43)+abb13(11)
      abb13(11)=8.0_ki*abb13(11)
      abb13(43)=-spbk3k1*abb13(46)
      abb13(35)=-spbk3k1*abb13(35)
      abb13(22)=-abb13(39)-abb13(22)
      abb13(22)=spak2l5*abb13(22)
      abb13(12)=-abb13(7)*abb13(12)
      abb13(12)=abb13(12)+abb13(22)
      abb13(12)=8.0_ki*abb13(12)
      R2d13=0.0_ki
      rat2 = rat2 + R2d13
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='13' value='", &
          & R2d13, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd13h2
