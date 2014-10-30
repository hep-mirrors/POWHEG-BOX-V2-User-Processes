module     p0_dbaru_epnebbbarg_abbrevd103h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(67), public :: abb103
   complex(ki), public :: R2d103
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
      abb103(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb103(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb103(3)=NC**(-1)
      abb103(4)=sqrt2**(-1)
      abb103(5)=es56**(-1)
      abb103(6)=spbk7k2**(-1)
      abb103(7)=spbl5k2**(-1)
      abb103(8)=spak2l6**(-1)
      abb103(9)=spak2l5**(-1)
      abb103(10)=spak2l5*spak1k7
      abb103(11)=mB**2
      abb103(12)=abb103(11)*abb103(7)
      abb103(13)=abb103(12)*spak1k7
      abb103(14)=abb103(10)-abb103(13)
      abb103(15)=c3*abb103(3)
      abb103(16)=c4*abb103(3)**2
      abb103(15)=abb103(15)-abb103(16)
      abb103(16)=TR*gW
      abb103(16)=abb103(5)*i_*CVDU*abb103(4)*abb103(2)*abb103(1)*abb103(16)**2
      abb103(17)=abb103(15)*abb103(16)*spbl6k2*abb103(6)
      abb103(18)=spbk3k2**2
      abb103(19)=abb103(18)*abb103(17)
      abb103(20)=-abb103(19)*abb103(14)
      abb103(15)=-abb103(16)*abb103(15)
      abb103(16)=abb103(15)*abb103(6)
      abb103(18)=abb103(18)*abb103(16)
      abb103(11)=abb103(11)*abb103(8)
      abb103(21)=abb103(11)*spak2l5
      abb103(22)=abb103(21)*spak1k7
      abb103(23)=abb103(18)*abb103(22)
      abb103(20)=abb103(20)-abb103(23)
      abb103(20)=abb103(20)*spak3k4
      abb103(23)=-spbk3k2*abb103(17)
      abb103(24)=abb103(23)*spak1k7
      abb103(25)=spbl6k3*spal5l6
      abb103(26)=abb103(25)*spak3k4
      abb103(27)=abb103(24)*abb103(26)
      abb103(27)=-abb103(20)+abb103(27)
      abb103(27)=16.0_ki*abb103(27)
      abb103(28)=spal5k7*spak1k4
      abb103(29)=spak4l5*spak1k7
      abb103(28)=abb103(28)+abb103(29)
      abb103(29)=abb103(23)*abb103(28)
      abb103(30)=16.0_ki*abb103(29)
      abb103(31)=abb103(30)*es34
      abb103(32)=spak2l5*spak4k7
      abb103(33)=abb103(19)*abb103(32)
      abb103(34)=abb103(21)*spak4k7
      abb103(35)=abb103(18)*abb103(34)
      abb103(36)=abb103(19)*abb103(12)
      abb103(37)=abb103(36)*spak4k7
      abb103(33)=-abb103(37)+abb103(33)+abb103(35)
      abb103(33)=abb103(33)*spak1k3
      abb103(35)=abb103(23)*spak1k4
      abb103(37)=abb103(35)*abb103(32)
      abb103(38)=abb103(15)*spbk3k2
      abb103(39)=-abb103(6)*abb103(38)
      abb103(40)=abb103(39)*spak1k4
      abb103(41)=abb103(40)*abb103(34)
      abb103(42)=abb103(35)*abb103(12)
      abb103(43)=abb103(42)*spak4k7
      abb103(37)=-abb103(43)+abb103(37)+abb103(41)
      abb103(37)=abb103(37)*spbk4k2
      abb103(41)=-spbl6k2*abb103(15)
      abb103(43)=abb103(41)*spak1k7
      abb103(44)=-abb103(17)*spak1k4
      abb103(45)=abb103(44)*spbk4k2
      abb103(46)=abb103(23)*spak1k3
      abb103(47)=-abb103(46)+abb103(43)-abb103(45)
      abb103(48)=spal5l6*spak4k7
      abb103(49)=-abb103(48)*abb103(47)
      abb103(50)=abb103(24)*spak3k4*spal5l6
      abb103(50)=abb103(49)+abb103(50)
      abb103(50)=abb103(50)*spbl6k3
      abb103(51)=-spbk3k2*abb103(41)
      abb103(52)=spak1k7*abb103(51)*abb103(32)
      abb103(53)=abb103(34)*spak1k7
      abb103(54)=-abb103(38)*abb103(53)
      abb103(55)=abb103(51)*abb103(13)
      abb103(56)=abb103(55)*spak4k7
      abb103(20)=-abb103(56)-abb103(33)+abb103(20)+abb103(52)+abb103(54)+abb103&
      &(37)-abb103(50)
      abb103(33)=16.0_ki*abb103(20)
      abb103(29)=32.0_ki*abb103(29)
      abb103(37)=abb103(23)*abb103(12)
      abb103(50)=abb103(9)*abb103(37)*abb103(28)
      abb103(52)=abb103(11)*spak1k7
      abb103(54)=abb103(52)*abb103(39)
      abb103(54)=abb103(54)+abb103(24)
      abb103(56)=abb103(54)*spak4l5
      abb103(57)=abb103(40)*abb103(11)
      abb103(57)=abb103(57)+abb103(35)
      abb103(58)=abb103(57)*spal5k7
      abb103(50)=abb103(50)-abb103(56)-abb103(58)
      abb103(56)=16.0_ki*abb103(50)
      abb103(58)=es34*abb103(56)
      abb103(50)=32.0_ki*abb103(50)
      abb103(20)=8.0_ki*abb103(20)
      abb103(59)=abb103(35)*spak2l5
      abb103(40)=abb103(40)*abb103(21)
      abb103(40)=-abb103(42)+abb103(59)+abb103(40)
      abb103(59)=abb103(44)*abb103(25)
      abb103(59)=-abb103(40)+abb103(59)
      abb103(59)=es34*abb103(59)
      abb103(60)=-abb103(23)*abb103(14)
      abb103(61)=abb103(21)*abb103(39)
      abb103(62)=-spak1k7*abb103(61)
      abb103(60)=abb103(62)+abb103(60)
      abb103(60)=spak3k4*abb103(60)
      abb103(62)=-abb103(17)*spak1k7
      abb103(63)=abb103(62)*abb103(26)
      abb103(60)=abb103(60)+abb103(63)
      abb103(60)=spbk7k3*abb103(60)
      abb103(59)=abb103(60)+abb103(59)
      abb103(59)=8.0_ki*abb103(59)
      abb103(60)=abb103(39)*abb103(28)
      abb103(63)=abb103(60)*spbl5k2
      abb103(35)=abb103(35)*spal6k7
      abb103(64)=abb103(24)*spak4l6
      abb103(35)=-abb103(63)+abb103(35)+abb103(64)
      abb103(63)=8.0_ki*abb103(35)
      abb103(64)=-es34*abb103(63)
      abb103(35)=16.0_ki*abb103(35)
      abb103(42)=abb103(42)*abb103(9)
      abb103(42)=abb103(42)-abb103(57)
      abb103(42)=abb103(42)*spak2k7
      abb103(57)=abb103(13)*abb103(9)
      abb103(65)=abb103(57)*abb103(23)
      abb103(54)=abb103(65)-abb103(54)
      abb103(65)=abb103(54)*spak2k4
      abb103(60)=abb103(60)*spbl6l5
      abb103(42)=-abb103(60)+abb103(42)-abb103(65)
      abb103(60)=-8.0_ki*es34*abb103(42)
      abb103(65)=16.0_ki*abb103(42)
      abb103(42)=-8.0_ki*abb103(42)
      abb103(40)=spbk4k2*abb103(40)
      abb103(19)=abb103(19)*spak2l5
      abb103(18)=abb103(18)*abb103(21)
      abb103(18)=-abb103(36)+abb103(19)+abb103(18)
      abb103(19)=-spak1k3*abb103(18)
      abb103(36)=abb103(47)*abb103(25)
      abb103(10)=abb103(51)*abb103(10)
      abb103(38)=-abb103(38)*abb103(22)
      abb103(10)=abb103(36)+abb103(19)+abb103(40)+abb103(38)+abb103(10)-abb103(&
      &55)
      abb103(10)=spak3k7*abb103(10)
      abb103(19)=abb103(32)*abb103(23)
      abb103(36)=abb103(37)*spak4k7
      abb103(38)=abb103(34)*abb103(39)
      abb103(19)=abb103(38)+abb103(19)-abb103(36)
      abb103(36)=spak1k3*abb103(19)
      abb103(38)=-spak4k7*abb103(12)
      abb103(38)=abb103(32)+abb103(38)
      abb103(38)=abb103(44)*abb103(38)
      abb103(34)=-abb103(16)*abb103(34)
      abb103(40)=spak1k4*abb103(34)
      abb103(38)=abb103(40)+abb103(38)
      abb103(38)=spbk4k2*abb103(38)
      abb103(40)=-abb103(32)*abb103(43)
      abb103(13)=spak4k7*abb103(41)*abb103(13)
      abb103(43)=-abb103(15)*abb103(53)
      abb103(13)=abb103(36)+abb103(38)+abb103(43)+abb103(40)+abb103(13)
      abb103(13)=spbk4k2*abb103(13)
      abb103(36)=-spbl6k4*abb103(49)
      abb103(10)=abb103(36)+abb103(10)+abb103(13)
      abb103(10)=8.0_ki*abb103(10)
      abb103(13)=abb103(16)*spbl6k2**2
      abb103(36)=16.0_ki*abb103(13)
      abb103(38)=spal5l6*spak1k7
      abb103(40)=abb103(36)*abb103(38)
      abb103(43)=-abb103(17)*spbk4k2
      abb103(47)=abb103(43)*abb103(28)
      abb103(49)=abb103(24)*spak3l5
      abb103(51)=abb103(46)*spal5k7
      abb103(49)=abb103(47)+abb103(49)+abb103(51)
      abb103(49)=32.0_ki*abb103(49)
      abb103(51)=abb103(16)*abb103(11)
      abb103(53)=-spak1k4*abb103(51)
      abb103(53)=abb103(53)+abb103(44)
      abb103(55)=-spal5k7*abb103(53)
      abb103(52)=-abb103(16)*abb103(52)
      abb103(52)=abb103(52)+abb103(62)
      abb103(62)=-spak4l5*abb103(52)
      abb103(55)=abb103(55)+abb103(62)
      abb103(55)=spbk4k2*abb103(55)
      abb103(11)=abb103(39)*abb103(11)
      abb103(11)=abb103(11)+abb103(23)
      abb103(62)=spak1k3*spal5k7
      abb103(66)=-abb103(11)*abb103(62)
      abb103(47)=abb103(12)*abb103(47)
      abb103(67)=abb103(37)*abb103(62)
      abb103(47)=abb103(67)+abb103(47)
      abb103(47)=abb103(9)*abb103(47)
      abb103(54)=spak3l5*abb103(54)
      abb103(47)=abb103(54)+abb103(47)+abb103(66)+abb103(55)
      abb103(47)=32.0_ki*abb103(47)
      abb103(13)=8.0_ki*abb103(13)
      abb103(38)=-abb103(38)*abb103(13)
      abb103(54)=abb103(23)*spak2l5
      abb103(54)=-abb103(37)+abb103(54)+abb103(61)
      abb103(25)=-abb103(25)*abb103(17)
      abb103(25)=abb103(25)-abb103(54)
      abb103(55)=-spak1k3*abb103(25)
      abb103(14)=-abb103(41)*abb103(14)
      abb103(41)=spak2l5-abb103(12)
      abb103(41)=abb103(44)*abb103(41)
      abb103(21)=-abb103(16)*abb103(21)
      abb103(61)=spak1k4*abb103(21)
      abb103(41)=abb103(61)+abb103(41)
      abb103(41)=spbk4k2*abb103(41)
      abb103(15)=-abb103(15)*abb103(22)
      abb103(22)=-spbl6k4*spal5l6*abb103(44)
      abb103(44)=-abb103(17)*spal5l6
      abb103(61)=spbk7l6*spak1k7*abb103(44)
      abb103(14)=abb103(61)+abb103(22)+abb103(41)+abb103(15)+abb103(14)+abb103(&
      &55)
      abb103(14)=8.0_ki*abb103(14)
      abb103(15)=32.0_ki*spak1l5
      abb103(22)=-abb103(15)*abb103(17)
      abb103(41)=-abb103(17)*abb103(12)
      abb103(55)=abb103(41)*abb103(9)
      abb103(51)=abb103(51)+abb103(55)+abb103(17)
      abb103(15)=abb103(51)*abb103(15)
      abb103(55)=spak1k7*spak3l5
      abb103(55)=abb103(55)+abb103(62)
      abb103(39)=abb103(39)*abb103(55)
      abb103(28)=-abb103(28)*abb103(16)*spbk4k2
      abb103(28)=abb103(28)+abb103(39)
      abb103(39)=spbl5k2*abb103(28)
      abb103(46)=-abb103(45)-abb103(46)
      abb103(46)=spal6k7*abb103(46)
      abb103(43)=-spak4l6*spak1k7*abb103(43)
      abb103(24)=-spak3l6*abb103(24)
      abb103(24)=abb103(24)+abb103(43)+abb103(46)+abb103(39)
      abb103(24)=16.0_ki*abb103(24)
      abb103(16)=-abb103(16)*spak1l5
      abb103(39)=spbl5k2*abb103(16)
      abb103(43)=spak1l6*abb103(17)
      abb103(39)=abb103(39)+abb103(43)
      abb103(39)=16.0_ki*abb103(39)
      abb103(43)=spbk4k2*abb103(53)
      abb103(11)=spak1k3*abb103(11)
      abb103(12)=-abb103(12)*abb103(45)
      abb103(37)=-spak1k3*abb103(37)
      abb103(12)=abb103(12)+abb103(37)
      abb103(12)=abb103(9)*abb103(12)
      abb103(11)=abb103(12)+abb103(43)+abb103(11)
      abb103(11)=spak2k7*abb103(11)
      abb103(12)=spbl6l5*abb103(28)
      abb103(28)=-abb103(57)*abb103(17)
      abb103(28)=abb103(28)-abb103(52)
      abb103(37)=-es234+es34
      abb103(28)=abb103(28)*abb103(37)
      abb103(11)=abb103(11)+abb103(12)+abb103(28)
      abb103(11)=16.0_ki*abb103(11)
      abb103(12)=-spak1k2*abb103(51)
      abb103(16)=spbl6l5*abb103(16)
      abb103(12)=abb103(16)+abb103(12)
      abb103(12)=16.0_ki*abb103(12)
      abb103(16)=8.0_ki*abb103(44)
      abb103(28)=abb103(13)*abb103(48)
      abb103(19)=spbk4k2*abb103(19)
      abb103(37)=abb103(48)*spbl6k4
      abb103(43)=-abb103(23)*abb103(37)
      abb103(19)=abb103(43)+abb103(19)
      abb103(19)=spak3k4*abb103(19)
      abb103(18)=-spak3k4*abb103(18)
      abb103(23)=-abb103(23)*abb103(26)
      abb103(18)=abb103(18)+abb103(23)
      abb103(18)=spak3k7*abb103(18)
      abb103(18)=abb103(18)+abb103(19)
      abb103(18)=8.0_ki*abb103(18)
      abb103(19)=abb103(36)*abb103(48)
      abb103(23)=spak3k4*abb103(54)
      abb103(26)=abb103(17)*abb103(26)
      abb103(23)=abb103(23)+abb103(26)
      abb103(23)=8.0_ki*abb103(23)
      abb103(13)=spak3k7*spal5l6*abb103(13)
      abb103(26)=-abb103(17)*abb103(32)
      abb103(32)=-spak4k7*abb103(41)
      abb103(26)=abb103(34)+abb103(26)+abb103(32)
      abb103(26)=spbk4k2*abb103(26)
      abb103(25)=-spak3k7*abb103(25)
      abb103(32)=abb103(17)*abb103(37)
      abb103(25)=abb103(32)+abb103(26)+abb103(25)
      abb103(25)=8.0_ki*abb103(25)
      abb103(17)=-spak2l5*abb103(17)
      abb103(17)=abb103(21)+abb103(17)-abb103(41)
      abb103(17)=8.0_ki*abb103(17)
      R2d103=0.0_ki
      rat2 = rat2 + R2d103
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='103' value='", &
          & R2d103, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd103h6