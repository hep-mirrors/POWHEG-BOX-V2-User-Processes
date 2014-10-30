module     p0_dbaru_epnebbbarg_abbrevd315h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(76), public :: abb315
   complex(ki), public :: R2d315
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
      abb315(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb315(2)=sqrt(mB**2)
      abb315(3)=NC**(-1)
      abb315(4)=sqrt2**(-1)
      abb315(5)=es234**(-1)
      abb315(6)=spak2l6**(-1)
      abb315(7)=spbk7k2**(-1)
      abb315(8)=spak2l5**(-1)
      abb315(9)=spbl6k2**(-1)
      abb315(10)=c1+c3
      abb315(11)=abb315(3)*abb315(10)
      abb315(12)=abb315(3)**2
      abb315(13)=abb315(12)*c2
      abb315(14)=abb315(11)-abb315(13)
      abb315(15)=TR*gW
      abb315(15)=abb315(15)**2*i_*CVDU*abb315(4)*abb315(1)
      abb315(16)=abb315(7)*abb315(5)
      abb315(17)=abb315(15)*abb315(16)*spbk3k2
      abb315(18)=abb315(14)*abb315(17)*abb315(6)*mB
      abb315(19)=spak1k7*abb315(18)
      abb315(20)=abb315(19)*abb315(2)
      abb315(21)=abb315(17)*abb315(10)
      abb315(22)=mB**2
      abb315(23)=abb315(6)*abb315(3)
      abb315(24)=abb315(21)*abb315(22)*abb315(23)
      abb315(25)=abb315(17)*c2
      abb315(26)=mB*abb315(3)
      abb315(27)=abb315(26)**2
      abb315(28)=abb315(27)*abb315(25)
      abb315(29)=abb315(28)*abb315(6)
      abb315(24)=abb315(24)-abb315(29)
      abb315(29)=-spak1k7*abb315(24)
      abb315(20)=abb315(20)-abb315(29)
      abb315(20)=-es12*abb315(20)
      abb315(30)=es712-es71
      abb315(29)=-abb315(30)*abb315(29)
      abb315(20)=abb315(20)+abb315(29)
      abb315(29)=spbl5k2*spak2k4
      abb315(31)=spbl5k3*spak3k4
      abb315(29)=abb315(29)-abb315(31)
      abb315(31)=abb315(29)*abb315(2)
      abb315(20)=abb315(31)*abb315(20)
      abb315(32)=abb315(15)*abb315(3)
      abb315(33)=abb315(32)*c1
      abb315(34)=abb315(32)*c3
      abb315(33)=abb315(33)+abb315(34)
      abb315(35)=abb315(13)*abb315(15)
      abb315(35)=abb315(33)-abb315(35)
      abb315(36)=spbk3k2*abb315(5)
      abb315(37)=abb315(36)*spak1k7**2
      abb315(31)=abb315(35)*abb315(37)*abb315(31)
      abb315(38)=abb315(15)*mB
      abb315(39)=abb315(38)*abb315(16)
      abb315(11)=-abb315(11)*abb315(39)*spak1k7
      abb315(40)=abb315(13)*spak1k7
      abb315(41)=abb315(40)*abb315(39)
      abb315(11)=abb315(41)+abb315(11)
      abb315(41)=abb315(8)*spak3k4
      abb315(42)=spbk3k2**2
      abb315(43)=abb315(41)*abb315(11)*abb315(42)
      abb315(44)=abb315(2)**2
      abb315(45)=abb315(44)*spak1k2
      abb315(46)=abb315(45)*abb315(43)
      abb315(31)=abb315(46)+abb315(31)
      abb315(31)=spbl6k1*abb315(31)
      abb315(46)=-abb315(18)*abb315(29)
      abb315(47)=abb315(46)*spal6k7*spbl6k2
      abb315(48)=abb315(45)*abb315(47)
      abb315(20)=abb315(31)+abb315(48)+abb315(20)
      abb315(20)=8.0_ki*abb315(20)
      abb315(31)=abb315(18)*spak4k7
      abb315(48)=spbl5k2*spak1k2
      abb315(49)=abb315(44)*abb315(48)
      abb315(50)=abb315(49)*abb315(31)
      abb315(51)=abb315(36)*spak1k7
      abb315(52)=abb315(51)*abb315(35)
      abb315(53)=spbl6l5*abb315(2)
      abb315(54)=abb315(53)*spak4k7
      abb315(55)=abb315(54)*abb315(52)
      abb315(50)=abb315(50)+abb315(55)
      abb315(21)=abb315(26)*abb315(21)
      abb315(26)=spak1k7*abb315(21)
      abb315(12)=abb315(25)*abb315(12)
      abb315(55)=spak1k7*abb315(12)
      abb315(56)=abb315(55)*mB
      abb315(26)=abb315(26)-abb315(56)
      abb315(56)=abb315(8)*spak2k4
      abb315(57)=abb315(56)*spbl6k2
      abb315(58)=abb315(26)*abb315(57)
      abb315(59)=abb315(58)*abb315(44)
      abb315(59)=abb315(59)+abb315(50)
      abb315(59)=16.0_ki*abb315(59)
      abb315(60)=mB**3
      abb315(25)=abb315(25)*abb315(60)*abb315(23)**2
      abb315(17)=abb315(17)*abb315(3)
      abb315(60)=abb315(6)**2*abb315(60)*abb315(17)
      abb315(61)=abb315(60)*c3
      abb315(25)=abb315(25)-abb315(61)
      abb315(61)=-spak1k7*abb315(25)
      abb315(62)=c1*spak1k7
      abb315(63)=abb315(60)*abb315(62)
      abb315(61)=abb315(63)+abb315(61)
      abb315(30)=abb315(30)-es12
      abb315(61)=abb315(61)*abb315(29)*abb315(30)*abb315(9)
      abb315(63)=abb315(41)*spbl6k3
      abb315(26)=abb315(63)*abb315(26)
      abb315(64)=-abb315(44)*abb315(26)
      abb315(50)=abb315(64)+abb315(61)-abb315(50)
      abb315(50)=16.0_ki*abb315(50)
      abb315(61)=-abb315(19)*abb315(29)
      abb315(64)=-16.0_ki*abb315(61)*abb315(30)
      abb315(43)=-spbl6k1*abb315(43)
      abb315(43)=abb315(43)-abb315(47)
      abb315(43)=spak1k2*abb315(43)
      abb315(47)=-es12*abb315(61)
      abb315(43)=abb315(47)+abb315(43)
      abb315(43)=8.0_ki*abb315(43)
      abb315(47)=abb315(31)*abb315(48)
      abb315(58)=abb315(47)+abb315(58)
      abb315(58)=16.0_ki*abb315(58)
      abb315(26)=abb315(47)+abb315(26)
      abb315(26)=16.0_ki*abb315(26)
      abb315(47)=spbl6k2*spak2k4
      abb315(61)=spbl6k3*spak3k4
      abb315(47)=abb315(47)-abb315(61)
      abb315(47)=abb315(47)*abb315(2)
      abb315(61)=-abb315(52)*abb315(47)
      abb315(65)=abb315(10)*abb315(23)
      abb315(13)=abb315(13)*abb315(6)
      abb315(65)=abb315(65)-abb315(13)
      abb315(65)=abb315(39)*abb315(65)
      abb315(42)=abb315(65)*abb315(42)
      abb315(45)=spak3k4*abb315(42)*abb315(45)
      abb315(45)=abb315(45)+abb315(61)
      abb315(45)=8.0_ki*abb315(45)
      abb315(23)=abb315(23)*abb315(38)
      abb315(10)=abb315(10)*abb315(51)*abb315(23)
      abb315(51)=abb315(38)*spak1k7
      abb315(61)=abb315(13)*abb315(51)
      abb315(36)=abb315(61)*abb315(36)
      abb315(10)=abb315(10)-abb315(36)
      abb315(36)=16.0_ki*abb315(10)
      abb315(66)=-spak2k4*abb315(36)
      abb315(67)=8.0_ki*spak3k4
      abb315(42)=-spak1k2*abb315(42)*abb315(67)
      abb315(68)=abb315(17)*c1
      abb315(69)=abb315(17)*c3
      abb315(68)=abb315(68)+abb315(69)
      abb315(70)=abb315(68)*abb315(22)
      abb315(28)=abb315(70)-abb315(28)
      abb315(63)=abb315(63)-abb315(57)
      abb315(70)=spak1k2*abb315(2)
      abb315(28)=abb315(70)*abb315(28)*abb315(63)
      abb315(71)=abb315(24)*abb315(70)
      abb315(72)=abb315(71)*abb315(29)
      abb315(73)=abb315(71)*abb315(56)
      abb315(74)=es12*abb315(73)
      abb315(75)=abb315(41)*spbk3k1
      abb315(24)=-abb315(2)*abb315(24)*spak1k2**2*abb315(75)
      abb315(24)=abb315(24)+abb315(74)+abb315(72)+abb315(28)
      abb315(24)=8.0_ki*abb315(24)
      abb315(28)=abb315(68)-abb315(12)
      abb315(68)=abb315(28)*abb315(53)
      abb315(72)=abb315(68)*spak1k4
      abb315(74)=-abb315(72)+2.0_ki*abb315(73)
      abb315(74)=16.0_ki*abb315(74)
      abb315(60)=abb315(60)*c1
      abb315(25)=abb315(60)-abb315(25)
      abb315(25)=-abb315(9)*abb315(25)*abb315(29)
      abb315(60)=-spak1k2*abb315(25)
      abb315(60)=abb315(72)-abb315(73)+abb315(60)
      abb315(60)=16.0_ki*abb315(60)
      abb315(12)=abb315(12)*mB
      abb315(12)=abb315(21)-abb315(12)
      abb315(21)=abb315(12)*abb315(63)
      abb315(21)=abb315(46)+abb315(21)
      abb315(21)=16.0_ki*spak1k2*abb315(21)
      abb315(40)=abb315(5)*abb315(40)*abb315(15)
      abb315(63)=abb315(62)*abb315(5)
      abb315(32)=abb315(63)*abb315(32)
      abb315(72)=spak1k7*abb315(5)
      abb315(34)=abb315(72)*abb315(34)
      abb315(32)=-abb315(40)+abb315(32)+abb315(34)
      abb315(32)=abb315(32)*abb315(54)
      abb315(34)=abb315(65)*spak4k7
      abb315(40)=abb315(49)*abb315(34)
      abb315(32)=abb315(32)+abb315(40)
      abb315(40)=-spbk4k2*abb315(32)
      abb315(49)=abb315(49)*abb315(18)
      abb315(52)=-abb315(52)*abb315(53)
      abb315(52)=-abb315(49)+abb315(52)
      abb315(52)=spak3k7*abb315(52)
      abb315(54)=es34*abb315(8)
      abb315(73)=abb315(11)*abb315(54)
      abb315(76)=-abb315(14)*abb315(8)
      abb315(51)=abb315(51)*abb315(7)*abb315(76)
      abb315(51)=abb315(73)-abb315(51)
      abb315(51)=spbl6k2*abb315(51)
      abb315(73)=abb315(44)*abb315(51)
      abb315(40)=abb315(52)+abb315(40)+abb315(73)
      abb315(40)=8.0_ki*abb315(40)
      abb315(52)=spbk4k2*abb315(34)
      abb315(73)=spak3k7*abb315(18)
      abb315(52)=abb315(73)+abb315(52)
      abb315(52)=abb315(48)*abb315(52)
      abb315(51)=abb315(52)-abb315(51)
      abb315(51)=8.0_ki*abb315(51)
      abb315(22)=abb315(33)*abb315(22)*abb315(6)
      abb315(15)=c2*abb315(27)*abb315(15)*abb315(6)
      abb315(15)=abb315(22)-abb315(15)
      abb315(22)=abb315(8)*abb315(7)*abb315(15)
      abb315(15)=abb315(16)*abb315(15)
      abb315(27)=-abb315(15)*abb315(54)
      abb315(22)=abb315(27)+abb315(22)
      abb315(27)=2.0_ki*abb315(70)
      abb315(22)=abb315(27)*abb315(22)
      abb315(16)=-abb315(53)*spak1k4*abb315(35)*abb315(16)
      abb315(33)=-spbk4k2*abb315(16)
      abb315(35)=spak1k3*abb315(68)
      abb315(22)=abb315(35)+abb315(33)+abb315(22)
      abb315(22)=8.0_ki*abb315(22)
      abb315(17)=abb315(62)*abb315(17)
      abb315(33)=abb315(69)*spak1k7
      abb315(17)=-abb315(55)+abb315(17)+abb315(33)
      abb315(17)=-abb315(17)*abb315(30)*abb315(53)
      abb315(11)=abb315(11)*abb315(57)
      abb315(33)=-abb315(44)*abb315(11)
      abb315(32)=abb315(33)+abb315(32)
      abb315(32)=spbk4k3*abb315(32)
      abb315(33)=spak2k7*abb315(49)
      abb315(17)=abb315(33)+abb315(17)+abb315(32)
      abb315(17)=8.0_ki*abb315(17)
      abb315(32)=-abb315(48)*abb315(34)
      abb315(11)=abb315(32)+abb315(11)
      abb315(11)=spbk4k3*abb315(11)
      abb315(32)=-abb315(48)*abb315(18)*spak2k7
      abb315(11)=abb315(11)+abb315(32)
      abb315(11)=8.0_ki*abb315(11)
      abb315(15)=abb315(15)*abb315(56)*abb315(27)
      abb315(15)=abb315(16)+abb315(15)
      abb315(15)=spbk4k3*abb315(15)
      abb315(16)=-spak1k2*abb315(68)
      abb315(15)=abb315(16)+abb315(15)
      abb315(15)=8.0_ki*abb315(15)
      abb315(16)=8.0_ki*spal6k7
      abb315(27)=-abb315(16)*abb315(10)*abb315(29)
      abb315(32)=-8.0_ki*spak1l6*abb315(46)
      abb315(33)=abb315(36)*spak4k7
      abb315(35)=abb315(18)*spak1k4
      abb315(35)=16.0_ki*abb315(35)
      abb315(36)=abb315(61)*abb315(5)
      abb315(44)=abb315(63)*abb315(23)
      abb315(48)=abb315(23)*c3
      abb315(49)=abb315(72)*abb315(48)
      abb315(36)=-abb315(49)+abb315(36)-abb315(44)
      abb315(36)=abb315(36)*spak4k7
      abb315(44)=spbk4k2*abb315(36)
      abb315(49)=-spak3k7*abb315(10)
      abb315(44)=abb315(44)+abb315(49)
      abb315(44)=8.0_ki*abb315(44)
      abb315(49)=abb315(65)*spak1k4
      abb315(52)=spbk4k2*abb315(49)
      abb315(53)=spak1k3*abb315(18)
      abb315(52)=abb315(52)+abb315(53)
      abb315(52)=8.0_ki*abb315(52)
      abb315(36)=-spbk4k3*abb315(36)
      abb315(19)=-abb315(19)*abb315(30)
      abb315(19)=abb315(36)+abb315(19)
      abb315(19)=8.0_ki*abb315(19)
      abb315(36)=-spak1k2*abb315(18)
      abb315(49)=-spbk4k3*abb315(49)
      abb315(36)=abb315(36)+abb315(49)
      abb315(36)=8.0_ki*abb315(36)
      abb315(10)=abb315(10)*abb315(67)
      abb315(41)=8.0_ki*abb315(41)
      abb315(49)=-abb315(71)*abb315(41)
      abb315(23)=abb315(23)*c1
      abb315(23)=abb315(23)+abb315(48)
      abb315(48)=abb315(13)*abb315(38)
      abb315(48)=abb315(48)-abb315(23)
      abb315(37)=-8.0_ki*abb315(48)*abb315(29)*abb315(37)
      abb315(16)=abb315(16)*abb315(46)*abb315(30)
      abb315(46)=-es12*abb315(56)
      abb315(48)=spak1k2*abb315(75)
      abb315(29)=abb315(48)+abb315(46)-abb315(29)
      abb315(29)=8.0_ki*abb315(12)*abb315(29)
      abb315(46)=abb315(12)*abb315(56)
      abb315(48)=16.0_ki*abb315(46)
      abb315(14)=-abb315(14)*abb315(39)
      abb315(39)=-abb315(14)*abb315(54)
      abb315(38)=abb315(38)*abb315(7)
      abb315(53)=abb315(38)*abb315(76)
      abb315(39)=abb315(53)+abb315(39)
      abb315(39)=8.0_ki*abb315(39)
      abb315(53)=8.0_ki*spbk4k3
      abb315(14)=abb315(14)*abb315(56)*abb315(53)
      abb315(12)=abb315(41)*abb315(12)
      abb315(31)=abb315(30)*abb315(31)
      abb315(31)=16.0_ki*abb315(31)
      abb315(28)=-8.0_ki*abb315(28)*abb315(47)
      abb315(41)=abb315(18)*spak2k4
      abb315(47)=16.0_ki*abb315(41)
      abb315(54)=-32.0_ki*abb315(41)
      abb315(34)=abb315(30)*abb315(34)
      abb315(55)=-spbk4k2*abb315(34)
      abb315(56)=abb315(30)*abb315(18)
      abb315(57)=-spak3k7*abb315(56)
      abb315(55)=abb315(55)+abb315(57)
      abb315(55)=8.0_ki*abb315(55)
      abb315(23)=abb315(7)*abb315(23)
      abb315(57)=-es34*abb315(65)
      abb315(13)=-abb315(13)*abb315(38)
      abb315(13)=abb315(57)+abb315(13)+abb315(23)
      abb315(13)=8.0_ki*abb315(13)
      abb315(23)=spbk4k3*abb315(34)
      abb315(34)=spak2k7*abb315(56)
      abb315(23)=abb315(23)+abb315(34)
      abb315(23)=8.0_ki*abb315(23)
      abb315(34)=spak2k4*abb315(65)*abb315(53)
      abb315(18)=abb315(18)*spak3k4
      abb315(38)=8.0_ki*abb315(18)
      abb315(30)=8.0_ki*abb315(30)
      abb315(18)=abb315(18)*abb315(30)
      abb315(25)=spak2k7*abb315(30)*abb315(25)
      abb315(30)=-abb315(41)*abb315(30)
      abb315(46)=8.0_ki*abb315(46)
      abb315(41)=8.0_ki*abb315(41)
      R2d315=0.0_ki
      rat2 = rat2 + R2d315
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='315' value='", &
          & R2d315, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd315h7