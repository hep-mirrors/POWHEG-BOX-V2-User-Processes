module     p1_dbarc_epnebbbarg_abbrevd108h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(73), public :: abb108
   complex(ki), public :: R2d108
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
      abb108(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb108(2)=sqrt(mB**2)
      abb108(3)=NC**(-1)
      abb108(4)=es234**(-1)
      abb108(5)=es71**(-1)
      abb108(6)=spak2l6**(-1)
      abb108(7)=spbl5k2**(-1)
      abb108(8)=spbl6k2**(-1)
      abb108(9)=-NC+2.0_ki*abb108(3)
      abb108(10)=abb108(9)*spbk7e7*c3
      abb108(11)=abb108(2)*mB
      abb108(12)=TR*gW
      abb108(12)=abb108(12)**2*i_*spak1e7*CVDC*abb108(1)
      abb108(13)=abb108(12)*abb108(6)
      abb108(14)=-abb108(11)*abb108(13)*abb108(10)
      abb108(15)=c4*abb108(3)**2
      abb108(16)=abb108(15)*abb108(11)
      abb108(17)=abb108(16)*abb108(13)
      abb108(18)=spbk7e7*abb108(17)
      abb108(14)=abb108(18)+abb108(14)
      abb108(14)=abb108(14)*spbk3k2*abb108(4)
      abb108(18)=abb108(4)*abb108(5)
      abb108(19)=abb108(12)*abb108(18)*spbk3k2
      abb108(20)=abb108(19)*abb108(6)
      abb108(21)=abb108(16)*abb108(20)
      abb108(22)=abb108(21)*spbe7k1
      abb108(23)=abb108(19)*c3
      abb108(24)=abb108(23)*abb108(6)
      abb108(25)=abb108(24)*abb108(11)
      abb108(26)=abb108(25)*spbe7k1
      abb108(27)=-abb108(26)*abb108(9)
      abb108(22)=abb108(22)+abb108(27)
      abb108(27)=abb108(22)*spak1k2
      abb108(28)=-spbk7k2*abb108(27)
      abb108(29)=abb108(21)*spbk7e7
      abb108(25)=abb108(25)*spbk7e7
      abb108(30)=-abb108(25)*abb108(9)
      abb108(30)=abb108(30)+abb108(29)
      abb108(31)=-es712*abb108(30)
      abb108(14)=abb108(31)+abb108(28)+abb108(14)
      abb108(28)=spal5k7*spak2k4
      abb108(14)=abb108(28)*abb108(14)
      abb108(31)=spak3k4*spbk3k2**2
      abb108(32)=abb108(12)*spbe7k1
      abb108(33)=abb108(31)*abb108(32)
      abb108(34)=abb108(33)*spak1k2
      abb108(12)=abb108(12)*spbk7e7
      abb108(35)=abb108(31)*abb108(12)
      abb108(36)=abb108(35)*spak2k7
      abb108(34)=abb108(34)-abb108(36)
      abb108(36)=abb108(18)*c3
      abb108(37)=-abb108(36)*abb108(9)
      abb108(38)=abb108(15)*abb108(18)
      abb108(39)=abb108(38)+abb108(37)
      abb108(40)=abb108(8)*spak2l5
      abb108(41)=abb108(2)*mB**3
      abb108(42)=abb108(6)**2
      abb108(43)=abb108(40)*abb108(34)*abb108(39)*abb108(41)*abb108(42)
      abb108(44)=abb108(30)*spak2k7
      abb108(27)=abb108(27)-abb108(44)
      abb108(45)=spbl6k2*spak2k4
      abb108(46)=-abb108(45)*abb108(27)
      abb108(47)=spak3k4*spbe7k1
      abb108(21)=abb108(47)*abb108(21)
      abb108(48)=-spak3k4*abb108(9)
      abb108(26)=-abb108(26)*abb108(48)
      abb108(21)=abb108(26)-abb108(21)
      abb108(21)=abb108(21)*spak1k2
      abb108(26)=abb108(29)*spak3k4
      abb108(25)=abb108(25)*abb108(48)
      abb108(25)=abb108(26)+abb108(25)
      abb108(25)=abb108(25)*spak2k7
      abb108(21)=abb108(21)+abb108(25)
      abb108(25)=-spbl6k3*abb108(21)
      abb108(25)=abb108(25)+abb108(46)
      abb108(25)=spal5l6*abb108(25)
      abb108(26)=-spbk7l6*abb108(33)
      abb108(29)=spbl6k1*abb108(35)
      abb108(26)=abb108(29)+abb108(26)
      abb108(29)=abb108(11)*abb108(7)
      abb108(37)=-abb108(29)*abb108(37)
      abb108(16)=abb108(16)*abb108(7)
      abb108(46)=abb108(16)*abb108(18)
      abb108(37)=abb108(37)-abb108(46)
      abb108(26)=spak1k7*abb108(37)*abb108(26)
      abb108(46)=spbk7k3*spal5k7
      abb108(49)=spbk3k1*spak1l5
      abb108(46)=abb108(46)-abb108(49)
      abb108(49)=-abb108(21)*abb108(46)
      abb108(30)=abb108(30)*abb108(28)
      abb108(50)=spak1l5*spak2k4
      abb108(22)=abb108(22)*abb108(50)
      abb108(22)=abb108(30)+abb108(22)
      abb108(22)=es12*abb108(22)
      abb108(30)=abb108(13)*abb108(36)
      abb108(36)=-abb108(9)*abb108(30)*abb108(31)
      abb108(38)=abb108(38)*abb108(13)
      abb108(31)=abb108(38)*abb108(31)
      abb108(31)=abb108(36)+abb108(31)
      abb108(36)=spak2k7*spbk7e7
      abb108(51)=abb108(7)*abb108(36)
      abb108(52)=abb108(7)*spbe7k1
      abb108(53)=-spak1k2*abb108(52)
      abb108(51)=abb108(51)+abb108(53)
      abb108(41)=abb108(51)*abb108(31)*abb108(41)
      abb108(50)=abb108(50)*spbk2k1
      abb108(44)=-abb108(44)*abb108(50)
      abb108(14)=abb108(22)+abb108(44)+abb108(25)+abb108(43)+abb108(14)+abb108(&
      &49)+abb108(26)+abb108(41)
      abb108(14)=4.0_ki*abb108(14)
      abb108(22)=mB**2
      abb108(25)=abb108(22)*abb108(7)
      abb108(26)=abb108(25)*spbk7e7
      abb108(41)=abb108(26)*abb108(31)
      abb108(43)=spak2k7*abb108(41)
      abb108(44)=abb108(23)*spbk7e7
      abb108(49)=-abb108(44)*abb108(9)
      abb108(51)=abb108(19)*spbk7e7
      abb108(53)=abb108(15)*abb108(51)
      abb108(54)=abb108(53)+abb108(49)
      abb108(55)=abb108(28)*spbl6k2
      abb108(56)=-abb108(54)*abb108(55)
      abb108(44)=abb108(48)*abb108(44)
      abb108(53)=abb108(53)*spak3k4
      abb108(53)=-abb108(44)-abb108(53)
      abb108(57)=abb108(53)*spbl6k3
      abb108(58)=-spal5k7*abb108(57)
      abb108(43)=abb108(58)+abb108(43)+abb108(56)
      abb108(43)=8.0_ki*abb108(43)
      abb108(23)=-abb108(23)*abb108(9)
      abb108(52)=abb108(23)*abb108(52)*abb108(11)
      abb108(19)=abb108(19)*spbe7k1
      abb108(56)=abb108(16)*abb108(19)
      abb108(52)=abb108(56)+abb108(52)
      abb108(56)=spak1k4*spbl6k2
      abb108(58)=abb108(56)*abb108(52)
      abb108(59)=2.0_ki*spak4l5
      abb108(60)=abb108(27)*abb108(59)
      abb108(16)=abb108(16)*abb108(51)
      abb108(49)=-abb108(29)*abb108(49)
      abb108(49)=abb108(49)-abb108(16)
      abb108(51)=spak4k7*spbl6k2
      abb108(61)=abb108(51)*abb108(49)
      abb108(58)=-abb108(60)+abb108(58)+abb108(61)
      abb108(60)=8.0_ki*abb108(58)
      abb108(34)=-abb108(8)*abb108(42)*abb108(34)*abb108(39)*abb108(7)*mB**4
      abb108(34)=abb108(34)-abb108(58)
      abb108(34)=8.0_ki*abb108(34)
      abb108(42)=-abb108(24)*abb108(9)
      abb108(20)=abb108(15)*abb108(20)
      abb108(42)=abb108(42)+abb108(20)
      abb108(58)=-abb108(26)*abb108(42)
      abb108(61)=abb108(58)*spak4k7
      abb108(62)=abb108(25)*spbe7k1
      abb108(63)=-abb108(62)*abb108(42)
      abb108(64)=abb108(63)*spak1k4
      abb108(61)=abb108(61)-abb108(64)
      abb108(61)=16.0_ki*abb108(61)
      abb108(64)=-abb108(47)*abb108(23)
      abb108(19)=abb108(15)*abb108(19)
      abb108(65)=abb108(19)*spak3k4
      abb108(64)=abb108(64)-abb108(65)
      abb108(65)=abb108(64)*spbl6k3
      abb108(23)=spbe7k1*abb108(23)
      abb108(19)=abb108(19)+abb108(23)
      abb108(23)=-abb108(19)*abb108(45)
      abb108(23)=-abb108(65)+abb108(23)
      abb108(23)=spak1l5*abb108(23)
      abb108(66)=abb108(62)*abb108(31)
      abb108(67)=spak1k2*abb108(66)
      abb108(23)=abb108(67)+abb108(23)
      abb108(23)=8.0_ki*abb108(23)
      abb108(28)=abb108(28)*spbk7k2
      abb108(28)=abb108(28)-abb108(50)
      abb108(50)=abb108(54)*abb108(28)
      abb108(67)=abb108(53)*abb108(46)
      abb108(68)=abb108(39)*abb108(25)
      abb108(35)=abb108(35)*abb108(68)
      abb108(31)=abb108(31)*abb108(40)
      abb108(69)=abb108(22)*spbk7e7
      abb108(70)=-abb108(69)*abb108(31)
      abb108(35)=abb108(70)+abb108(35)+abb108(67)+abb108(50)
      abb108(35)=4.0_ki*abb108(35)
      abb108(50)=8.0_ki*spak4l5
      abb108(67)=abb108(50)*abb108(54)
      abb108(70)=abb108(58)*spak3k4
      abb108(71)=-8.0_ki*abb108(70)
      abb108(16)=-spak3k4*abb108(16)
      abb108(24)=abb108(24)*abb108(69)
      abb108(48)=-abb108(24)*abb108(48)
      abb108(20)=abb108(69)*abb108(20)
      abb108(69)=-spak3k4*abb108(20)
      abb108(48)=abb108(69)+abb108(48)
      abb108(48)=abb108(48)*abb108(40)
      abb108(29)=-abb108(29)*abb108(44)
      abb108(16)=abb108(48)+abb108(16)+abb108(29)
      abb108(16)=spbl6k3*abb108(16)
      abb108(29)=-abb108(49)*abb108(45)
      abb108(24)=-abb108(24)*abb108(9)
      abb108(20)=abb108(20)+abb108(24)
      abb108(24)=spak2l5*spak2k4
      abb108(20)=abb108(20)*abb108(24)
      abb108(16)=abb108(29)+abb108(20)+abb108(16)
      abb108(16)=4.0_ki*abb108(16)
      abb108(20)=8.0_ki*spak2k4
      abb108(29)=abb108(20)*abb108(58)
      abb108(44)=-abb108(54)*abb108(45)
      abb108(44)=-abb108(57)+abb108(44)
      abb108(44)=spak1l5*abb108(44)
      abb108(48)=spak1k2*abb108(41)
      abb108(44)=abb108(48)+abb108(44)
      abb108(44)=4.0_ki*abb108(44)
      abb108(48)=4.0_ki*abb108(53)
      abb108(53)=4.0_ki*spak2k4
      abb108(57)=abb108(53)*abb108(54)
      abb108(21)=4.0_ki*abb108(21)
      abb108(69)=abb108(27)*abb108(53)
      abb108(72)=-spak1k3*abb108(52)
      abb108(73)=-spak3k7*abb108(49)
      abb108(72)=abb108(72)+abb108(73)
      abb108(72)=spbl6k2*abb108(72)
      abb108(56)=abb108(56)*abb108(32)
      abb108(51)=abb108(51)*abb108(12)
      abb108(51)=-abb108(56)+abb108(51)
      abb108(37)=abb108(37)*abb108(51)
      abb108(30)=-abb108(30)*abb108(9)
      abb108(11)=-abb108(11)*abb108(30)
      abb108(17)=abb108(17)*abb108(18)
      abb108(11)=abb108(11)-abb108(17)
      abb108(17)=spak1k2*spbe7k1
      abb108(17)=abb108(17)-abb108(36)
      abb108(11)=abb108(59)*abb108(11)*abb108(17)
      abb108(11)=abb108(11)+abb108(37)
      abb108(17)=-spbk4k2*abb108(11)
      abb108(18)=2.0_ki*abb108(27)
      abb108(27)=spak3l5*abb108(18)
      abb108(17)=abb108(17)+abb108(27)+abb108(72)
      abb108(17)=4.0_ki*abb108(17)
      abb108(27)=abb108(30)+abb108(38)
      abb108(30)=-abb108(62)*abb108(27)
      abb108(36)=abb108(30)*spak1k4
      abb108(27)=-abb108(26)*abb108(27)
      abb108(37)=abb108(27)*spak4k7
      abb108(36)=abb108(36)-abb108(37)
      abb108(37)=spbk4k2*abb108(36)
      abb108(38)=-spak3k7*abb108(58)
      abb108(51)=spak1k3*abb108(63)
      abb108(37)=abb108(51)+abb108(37)+abb108(38)
      abb108(37)=8.0_ki*abb108(37)
      abb108(38)=abb108(39)*spak4l5
      abb108(12)=abb108(12)*abb108(38)
      abb108(39)=-spbk4k2*abb108(12)
      abb108(51)=-spak3l5*abb108(54)
      abb108(39)=abb108(39)+abb108(51)
      abb108(39)=4.0_ki*abb108(39)
      abb108(10)=abb108(25)*abb108(10)
      abb108(25)=-abb108(15)*abb108(26)
      abb108(10)=abb108(25)+abb108(10)
      abb108(13)=abb108(13)*abb108(5)
      abb108(10)=abb108(13)*abb108(10)
      abb108(25)=-es34*abb108(27)
      abb108(10)=abb108(25)+abb108(10)
      abb108(10)=4.0_ki*abb108(10)
      abb108(25)=spak1k2*abb108(52)
      abb108(26)=spak2k7*abb108(49)
      abb108(25)=abb108(26)+abb108(25)
      abb108(25)=spbl6k2*abb108(25)
      abb108(11)=spbk4k3*abb108(11)
      abb108(18)=-spak2l5*abb108(18)
      abb108(11)=abb108(18)+abb108(11)+abb108(25)
      abb108(11)=4.0_ki*abb108(11)
      abb108(18)=-spbk4k3*abb108(36)
      abb108(25)=spak2k7*abb108(58)
      abb108(26)=-spak1k2*abb108(63)
      abb108(18)=abb108(25)+abb108(26)+abb108(18)
      abb108(18)=8.0_ki*abb108(18)
      abb108(25)=spak2l5*abb108(54)
      abb108(12)=spbk4k3*abb108(12)
      abb108(12)=abb108(25)+abb108(12)
      abb108(12)=4.0_ki*abb108(12)
      abb108(25)=abb108(53)*spbk4k3
      abb108(26)=abb108(27)*abb108(25)
      abb108(27)=4.0_ki*spak1k7
      abb108(36)=-abb108(66)*abb108(27)
      abb108(49)=spal6k7*abb108(41)
      abb108(51)=-spak1l6*abb108(66)
      abb108(49)=abb108(49)+abb108(51)
      abb108(49)=4.0_ki*abb108(49)
      abb108(51)=4.0_ki*abb108(70)
      abb108(27)=-abb108(41)*abb108(27)
      abb108(41)=spak2k7*abb108(66)
      abb108(54)=-abb108(19)*abb108(55)
      abb108(55)=-spal5k7*abb108(65)
      abb108(41)=abb108(55)+abb108(41)+abb108(54)
      abb108(41)=4.0_ki*abb108(41)
      abb108(28)=abb108(19)*abb108(28)
      abb108(46)=abb108(64)*abb108(46)
      abb108(33)=abb108(33)*abb108(68)
      abb108(54)=abb108(22)*spbe7k1
      abb108(31)=-abb108(54)*abb108(31)
      abb108(28)=abb108(31)+abb108(33)+abb108(46)+abb108(28)
      abb108(28)=4.0_ki*abb108(28)
      abb108(31)=abb108(50)*abb108(19)
      abb108(33)=4.0_ki*abb108(64)
      abb108(46)=abb108(53)*abb108(19)
      abb108(32)=abb108(32)*abb108(38)
      abb108(38)=-spbk4k2*abb108(32)
      abb108(50)=-spak3l5*abb108(19)
      abb108(38)=abb108(38)+abb108(50)
      abb108(38)=4.0_ki*abb108(38)
      abb108(19)=spak2l5*abb108(19)
      abb108(32)=spbk4k3*abb108(32)
      abb108(19)=abb108(19)+abb108(32)
      abb108(19)=4.0_ki*abb108(19)
      abb108(32)=abb108(63)*spak3k4
      abb108(50)=-8.0_ki*abb108(32)
      abb108(53)=-spak3k4*abb108(52)
      abb108(22)=-abb108(40)*abb108(47)*abb108(22)*abb108(42)
      abb108(22)=abb108(22)+abb108(53)
      abb108(22)=spbl6k3*abb108(22)
      abb108(40)=abb108(52)*abb108(45)
      abb108(24)=abb108(24)*abb108(54)*abb108(42)
      abb108(22)=abb108(40)+abb108(24)+abb108(22)
      abb108(22)=4.0_ki*abb108(22)
      abb108(20)=abb108(20)*abb108(63)
      abb108(9)=c3*abb108(9)
      abb108(9)=-abb108(15)+abb108(9)
      abb108(9)=abb108(9)*abb108(13)*abb108(62)
      abb108(13)=-es34*abb108(30)
      abb108(9)=abb108(13)+abb108(9)
      abb108(9)=4.0_ki*abb108(9)
      abb108(13)=abb108(30)*abb108(25)
      abb108(15)=4.0_ki*abb108(32)
      R2d108=0.0_ki
      rat2 = rat2 + R2d108
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='108' value='", &
          & R2d108, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd108h2