module     p0_dbaru_epnebbbarg_abbrevd98h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(55), public :: abb98
   complex(ki), public :: R2d98
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
      abb98(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb98(2)=1.0_ki/(es34+es567-es12-es234)
      abb98(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb98(4)=NC**(-1)
      abb98(5)=spak2l5**(-1)
      abb98(6)=spak2l6**(-1)
      abb98(7)=sqrt(mB**2)
      abb98(8)=spbl5k2**(-1)
      abb98(9)=2.0_ki*abb98(4)
      abb98(10)=abb98(9)-NC
      abb98(11)=TR*gW
      abb98(11)=CVDU*i_*spak1k4*abb98(3)*abb98(2)*abb98(1)*abb98(11)**2
      abb98(12)=abb98(11)*spbe7l5
      abb98(13)=abb98(12)*abb98(6)
      abb98(14)=c1*mB
      abb98(15)=-abb98(10)*abb98(13)*abb98(14)
      abb98(16)=spbk4k3*abb98(15)
      abb98(17)=abb98(4)**2
      abb98(18)=abb98(17)*c2
      abb98(19)=abb98(18)*mB
      abb98(20)=abb98(13)*spbk4k3
      abb98(21)=abb98(19)*abb98(20)
      abb98(16)=abb98(21)+abb98(16)
      abb98(21)=spbl5k2*spal5e7
      abb98(22)=abb98(21)*abb98(16)
      abb98(23)=spbk7k2*spae7k7
      abb98(24)=abb98(23)*abb98(16)
      abb98(25)=abb98(22)-abb98(24)
      abb98(26)=abb98(25)*spak2k4
      abb98(15)=spbk3k1*abb98(15)
      abb98(13)=abb98(13)*spbk3k1
      abb98(27)=abb98(19)*abb98(13)
      abb98(15)=abb98(27)+abb98(15)
      abb98(27)=abb98(21)*abb98(15)
      abb98(28)=abb98(23)*abb98(15)
      abb98(29)=abb98(27)-abb98(28)
      abb98(30)=abb98(29)*spak1k2
      abb98(31)=abb98(5)*spak2e7
      abb98(32)=mB*abb98(31)*abb98(11)
      abb98(33)=abb98(32)*c1
      abb98(34)=spbl6k2*abb98(33)
      abb98(35)=-spbk3k1*abb98(10)
      abb98(36)=-abb98(34)*abb98(35)
      abb98(37)=abb98(32)*spbk3k1
      abb98(38)=abb98(18)*spbl6k2
      abb98(39)=abb98(38)*abb98(37)
      abb98(36)=abb98(36)-abb98(39)
      abb98(39)=abb98(36)*spbk7e7
      abb98(40)=abb98(39)*spak1k7
      abb98(41)=-spbk4k3*abb98(10)
      abb98(34)=-abb98(34)*abb98(41)
      abb98(32)=abb98(32)*spbk4k3
      abb98(38)=abb98(32)*abb98(38)
      abb98(34)=abb98(34)-abb98(38)
      abb98(38)=abb98(34)*spbk7e7
      abb98(42)=abb98(38)*spak4k7
      abb98(40)=abb98(40)+abb98(42)
      abb98(26)=-abb98(40)+abb98(26)-abb98(30)
      abb98(30)=-es12+es712-es71
      abb98(26)=abb98(26)*abb98(30)
      abb98(30)=abb98(7)*c1
      abb98(42)=abb98(12)*spbk3k1
      abb98(43)=abb98(30)*abb98(42)
      abb98(44)=spbl6k2*spak2e7
      abb98(45)=abb98(43)*abb98(44)
      abb98(46)=abb98(44)*abb98(42)
      abb98(47)=abb98(46)*abb98(14)
      abb98(45)=abb98(45)-abb98(47)
      abb98(45)=abb98(45)*NC
      abb98(48)=abb98(7)-mB
      abb98(17)=c2*abb98(17)*abb98(48)
      abb98(46)=-abb98(46)*abb98(17)
      abb98(48)=abb98(44)*abb98(4)
      abb98(49)=abb98(48)*abb98(43)
      abb98(47)=abb98(47)*abb98(4)
      abb98(47)=abb98(49)-abb98(47)
      abb98(45)=abb98(46)-abb98(45)+2.0_ki*abb98(47)
      abb98(46)=spak1k7*spbk7k2
      abb98(47)=spak1l5*spbl5k2
      abb98(46)=abb98(47)+abb98(46)
      abb98(46)=abb98(45)*abb98(46)
      abb98(12)=abb98(12)*spbk4k3
      abb98(47)=abb98(30)*abb98(12)
      abb98(49)=abb98(47)*abb98(44)
      abb98(44)=abb98(44)*abb98(12)
      abb98(50)=abb98(44)*abb98(14)
      abb98(49)=abb98(49)-abb98(50)
      abb98(49)=abb98(49)*NC
      abb98(17)=-abb98(44)*abb98(17)
      abb98(44)=abb98(48)*abb98(47)
      abb98(48)=abb98(50)*abb98(4)
      abb98(44)=abb98(44)-abb98(48)
      abb98(17)=abb98(17)-abb98(49)+2.0_ki*abb98(44)
      abb98(44)=spak4k7*spbk7k2
      abb98(48)=spak4l5*spbl5k2
      abb98(44)=abb98(48)+abb98(44)
      abb98(44)=abb98(17)*abb98(44)
      abb98(48)=abb98(16)*spal5e7
      abb98(49)=spbl5k2**2
      abb98(50)=-abb98(49)*abb98(48)
      abb98(51)=spbl5k2*abb98(24)
      abb98(50)=abb98(50)+abb98(51)
      abb98(50)=spak2k4*abb98(50)
      abb98(51)=abb98(15)*spal5e7
      abb98(49)=abb98(49)*abb98(51)
      abb98(52)=-spbl5k2*abb98(28)
      abb98(49)=abb98(49)+abb98(52)
      abb98(49)=spak1k2*abb98(49)
      abb98(49)=abb98(50)+abb98(49)
      abb98(49)=spak2l5*abb98(49)
      abb98(50)=abb98(10)*spbl6k2
      abb98(52)=-abb98(47)*abb98(50)
      abb98(53)=abb98(18)*abb98(7)
      abb98(54)=abb98(53)*spbl6k2
      abb98(55)=abb98(54)*abb98(12)
      abb98(52)=abb98(52)+abb98(55)
      abb98(55)=-spak2k4*abb98(52)
      abb98(50)=-abb98(43)*abb98(50)
      abb98(54)=abb98(54)*abb98(42)
      abb98(50)=abb98(50)+abb98(54)
      abb98(54)=spak1k2*abb98(50)
      abb98(54)=abb98(55)+abb98(54)
      abb98(21)=abb98(21)-abb98(23)
      abb98(21)=abb98(21)*abb98(54)
      abb98(54)=abb98(39)*spak1l5
      abb98(55)=abb98(38)*spak4l5
      abb98(54)=abb98(54)+abb98(55)
      abb98(55)=spak2k7*spbl5k2*abb98(54)
      abb98(21)=abb98(49)+abb98(55)+abb98(26)+abb98(44)+abb98(46)+abb98(21)
      abb98(21)=4.0_ki*abb98(21)
      abb98(24)=-spak2k4*abb98(24)
      abb98(26)=spak1k2*abb98(28)
      abb98(24)=abb98(24)+abb98(26)-abb98(40)
      abb98(24)=8.0_ki*abb98(24)
      abb98(22)=spak2k4*abb98(22)
      abb98(26)=-spak1k2*abb98(27)
      abb98(9)=abb98(9)*abb98(14)
      abb98(14)=abb98(14)*NC
      abb98(9)=abb98(14)+abb98(19)-abb98(9)
      abb98(14)=abb98(9)*abb98(12)
      abb98(19)=abb98(31)*spbl6k2
      abb98(27)=abb98(19)*abb98(14)
      abb98(28)=-spak4l5*abb98(27)
      abb98(9)=abb98(42)*abb98(9)
      abb98(19)=abb98(19)*abb98(9)
      abb98(40)=-spak1l5*abb98(19)
      abb98(22)=abb98(40)+abb98(28)+abb98(22)+abb98(26)
      abb98(22)=8.0_ki*abb98(22)
      abb98(26)=abb98(5)*mB**3
      abb98(28)=abb98(10)*abb98(26)*c1
      abb98(26)=abb98(26)*abb98(18)
      abb98(26)=abb98(28)-abb98(26)
      abb98(20)=abb98(20)*abb98(26)
      abb98(28)=-spal5e7*abb98(20)
      abb98(25)=abb98(28)+abb98(25)
      abb98(25)=spak2k4*abb98(25)
      abb98(13)=abb98(13)*abb98(26)
      abb98(26)=spal5e7*abb98(13)
      abb98(26)=abb98(26)-abb98(29)
      abb98(26)=spak1k2*abb98(26)
      abb98(20)=spak2k4*abb98(20)
      abb98(13)=-spak1k2*abb98(13)
      abb98(13)=abb98(20)+abb98(13)
      abb98(13)=abb98(8)*abb98(23)*abb98(13)
      abb98(13)=abb98(13)+abb98(25)+abb98(26)
      abb98(13)=8.0_ki*abb98(13)
      abb98(20)=spak4k7*abb98(52)
      abb98(23)=spak1k7*abb98(50)
      abb98(20)=abb98(20)+abb98(23)
      abb98(20)=4.0_ki*abb98(20)
      abb98(23)=abb98(6)*abb98(31)*mB**2
      abb98(25)=abb98(11)*abb98(30)*abb98(23)
      abb98(26)=-abb98(25)*abb98(41)
      abb98(11)=abb98(11)*abb98(53)*abb98(23)
      abb98(23)=spbk4k3*abb98(11)
      abb98(23)=abb98(26)-abb98(23)
      abb98(26)=abb98(23)*spak2k4
      abb98(25)=-abb98(25)*abb98(35)
      abb98(11)=spbk3k1*abb98(11)
      abb98(11)=abb98(25)-abb98(11)
      abb98(25)=abb98(11)*spak1k2
      abb98(25)=abb98(26)-abb98(25)
      abb98(25)=4.0_ki*abb98(25)
      abb98(26)=-spbk7k2*abb98(25)
      abb98(28)=spak4l5*abb98(52)
      abb98(29)=spak1l5*abb98(50)
      abb98(28)=abb98(28)+abb98(29)
      abb98(28)=4.0_ki*abb98(28)
      abb98(25)=-spbl5k2*abb98(25)
      abb98(29)=abb98(7)**2
      abb98(30)=4.0_ki*abb98(29)
      abb98(34)=-abb98(34)*abb98(30)
      abb98(40)=16.0_ki*abb98(23)
      abb98(44)=spak2k4*abb98(16)
      abb98(46)=-spak1k2*abb98(15)
      abb98(44)=abb98(44)+abb98(46)
      abb98(44)=abb98(29)*abb98(44)
      abb98(46)=-abb98(47)*abb98(10)
      abb98(12)=abb98(53)*abb98(12)
      abb98(12)=abb98(12)+abb98(46)
      abb98(46)=spak4k7*abb98(12)
      abb98(10)=-abb98(43)*abb98(10)
      abb98(42)=abb98(53)*abb98(42)
      abb98(10)=abb98(42)+abb98(10)
      abb98(42)=spak1k7*abb98(10)
      abb98(42)=abb98(46)+abb98(42)
      abb98(42)=spbk7l6*abb98(42)
      abb98(43)=-spak4l5*abb98(12)
      abb98(46)=-spak1l5*abb98(10)
      abb98(43)=abb98(43)+abb98(46)
      abb98(43)=spbl6l5*abb98(43)
      abb98(42)=abb98(43)+abb98(42)+abb98(44)
      abb98(42)=4.0_ki*abb98(42)
      abb98(30)=-abb98(36)*abb98(30)
      abb98(36)=16.0_ki*abb98(11)
      abb98(43)=abb98(51)*spak1k2
      abb98(44)=abb98(48)*spak2k4
      abb98(43)=abb98(43)-abb98(44)
      abb98(44)=-spbk7k2*abb98(43)
      abb98(44)=abb98(44)-abb98(54)
      abb98(44)=4.0_ki*abb98(44)
      abb98(46)=-abb98(33)*abb98(41)
      abb98(32)=abb98(32)*abb98(18)
      abb98(46)=abb98(46)-abb98(32)
      abb98(47)=-spak4k7*abb98(46)
      abb98(49)=abb98(33)*abb98(35)
      abb98(18)=abb98(37)*abb98(18)
      abb98(37)=abb98(18)+abb98(49)
      abb98(49)=spak1k7*abb98(37)
      abb98(47)=abb98(47)+abb98(49)
      abb98(47)=spbk7l6*abb98(47)
      abb98(49)=spak4l5*abb98(46)
      abb98(53)=-spak1l5*abb98(37)
      abb98(49)=abb98(49)+abb98(53)
      abb98(49)=spbl6l5*abb98(49)
      abb98(47)=abb98(47)+abb98(49)
      abb98(47)=spbk7e7*abb98(47)
      abb98(43)=spbk7l5*abb98(43)
      abb98(43)=abb98(43)+abb98(47)
      abb98(43)=4.0_ki*abb98(43)
      abb98(15)=abb98(15)*spae7k7
      abb98(47)=abb98(15)*spak1k2
      abb98(16)=abb98(16)*spae7k7
      abb98(49)=abb98(16)*spak2k4
      abb98(47)=abb98(47)-abb98(49)
      abb98(49)=spbl5k2*abb98(47)
      abb98(27)=-spak4k7*abb98(27)
      abb98(19)=-spak1k7*abb98(19)
      abb98(19)=abb98(19)+abb98(27)+abb98(49)
      abb98(19)=4.0_ki*abb98(19)
      abb98(14)=abb98(31)*abb98(14)
      abb98(27)=-spak4k7*abb98(14)
      abb98(9)=-abb98(31)*abb98(9)
      abb98(31)=spak1k7*abb98(9)
      abb98(27)=abb98(27)+abb98(31)
      abb98(27)=spbk7l6*abb98(27)
      abb98(31)=spak4l5*abb98(14)
      abb98(49)=-spak1l5*abb98(9)
      abb98(31)=abb98(31)+abb98(49)
      abb98(31)=spbl6l5*abb98(31)
      abb98(47)=spbk7l5*abb98(47)
      abb98(27)=abb98(47)+abb98(27)+abb98(31)
      abb98(27)=4.0_ki*abb98(27)
      abb98(31)=4.0_ki*abb98(52)
      abb98(47)=-spae7k7*abb98(31)
      abb98(49)=16.0_ki*abb98(16)
      abb98(31)=spal5e7*abb98(31)
      abb98(52)=-16.0_ki*abb98(48)
      abb98(53)=spbk7l6*spae7k7
      abb98(54)=spbl6l5*spal5e7
      abb98(53)=abb98(53)+abb98(54)
      abb98(54)=-abb98(12)*abb98(53)
      abb98(38)=-spak2k7*abb98(38)
      abb98(33)=abb98(33)*abb98(29)
      abb98(41)=abb98(33)*abb98(41)
      abb98(32)=abb98(29)*abb98(32)
      abb98(32)=abb98(32)+abb98(41)
      abb98(32)=spbe7l6*abb98(32)
      abb98(17)=abb98(32)+abb98(38)-abb98(17)+abb98(54)
      abb98(17)=4.0_ki*abb98(17)
      abb98(12)=-4.0_ki*abb98(12)
      abb98(23)=-8.0_ki*abb98(23)
      abb98(32)=4.0_ki*spbk7e7
      abb98(38)=abb98(46)*abb98(32)
      abb98(14)=4.0_ki*abb98(14)
      abb98(16)=-8.0_ki*abb98(16)
      abb98(41)=8.0_ki*abb98(48)
      abb98(46)=4.0_ki*abb98(50)
      abb98(48)=-spae7k7*abb98(46)
      abb98(50)=16.0_ki*abb98(15)
      abb98(46)=spal5e7*abb98(46)
      abb98(54)=-16.0_ki*abb98(51)
      abb98(53)=-abb98(10)*abb98(53)
      abb98(39)=-spak2k7*abb98(39)
      abb98(33)=abb98(33)*abb98(35)
      abb98(18)=abb98(29)*abb98(18)
      abb98(18)=abb98(18)+abb98(33)
      abb98(18)=spbe7l6*abb98(18)
      abb98(18)=abb98(18)+abb98(39)-abb98(45)+abb98(53)
      abb98(18)=4.0_ki*abb98(18)
      abb98(10)=-4.0_ki*abb98(10)
      abb98(11)=-8.0_ki*abb98(11)
      abb98(29)=-abb98(37)*abb98(32)
      abb98(9)=-4.0_ki*abb98(9)
      abb98(15)=-8.0_ki*abb98(15)
      abb98(32)=8.0_ki*abb98(51)
      R2d98=0.0_ki
      rat2 = rat2 + R2d98
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='98' value='", &
          & R2d98, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd98h3
