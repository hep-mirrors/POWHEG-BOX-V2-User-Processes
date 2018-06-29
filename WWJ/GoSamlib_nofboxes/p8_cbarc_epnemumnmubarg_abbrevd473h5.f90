module     p8_cbarc_epnemumnmubarg_abbrevd473h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(71), public :: abb473
   complex(ki), public :: R2d473
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb473(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb473(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb473(3)=NC**(-1)
      abb473(4)=sqrt2**(-1)
      abb473(5)=spbk7k2**(-1)
      abb473(6)=spak5k7*spak3k4
      abb473(7)=abb473(6)*spbk6k5
      abb473(8)=spak1k7*spak3k4
      abb473(9)=abb473(8)*spbk6k1
      abb473(7)=abb473(7)-abb473(9)
      abb473(7)=abb473(7)*spak1k5
      abb473(9)=spbk3k2**2
      abb473(10)=abb473(3)*gW**4*abb473(1)*abb473(2)*abb473(4)*abb473(5)*c1*TR
      abb473(11)=8.0_ki*abb473(10)
      abb473(12)=abb473(11)*i_
      abb473(13)=abb473(9)*abb473(12)
      abb473(14)=-abb473(13)*es12*abb473(7)
      abb473(15)=16.0_ki*i_
      abb473(15)=abb473(15)*abb473(10)
      abb473(9)=abb473(9)*abb473(15)
      abb473(16)=abb473(9)*abb473(6)
      abb473(17)=spbk6k2*spak1k2
      abb473(18)=abb473(16)*abb473(17)
      abb473(19)=spbk6k2**2
      abb473(20)=abb473(19)*spak1k2
      abb473(21)=spak5k6*spak4k7
      abb473(22)=abb473(20)*abb473(21)
      abb473(23)=abb473(15)*spbk3k2
      abb473(24)=abb473(22)*abb473(23)
      abb473(25)=abb473(6)*abb473(17)
      abb473(7)=abb473(7)+abb473(25)
      abb473(7)=abb473(7)*abb473(9)
      abb473(26)=spak1k5*spak4k7
      abb473(27)=i_*spbk3k2
      abb473(28)=abb473(27)*abb473(26)*abb473(10)*spbk6k2
      abb473(28)=32.0_ki*abb473(28)
      abb473(29)=spak1k4*spbk2k1
      abb473(30)=spak1k7*spbk6k1
      abb473(31)=abb473(30)*abb473(29)
      abb473(32)=spak5k7*spak1k4
      abb473(33)=abb473(32)*spbk6k5
      abb473(34)=-spbk2k1*abb473(33)
      abb473(31)=abb473(34)+abb473(31)
      abb473(31)=spak1k5*abb473(31)
      abb473(34)=-spak1k2*abb473(21)
      abb473(35)=spak1k4*spak5k6
      abb473(36)=spak2k7*abb473(35)
      abb473(34)=abb473(34)+abb473(36)
      abb473(34)=abb473(34)*abb473(19)
      abb473(25)=spbk3k2*abb473(25)
      abb473(25)=abb473(25)+abb473(31)+abb473(34)
      abb473(25)=spbk3k2*abb473(25)
      abb473(31)=spak1k4*spbk4k3*abb473(19)*abb473(21)
      abb473(25)=abb473(31)+abb473(25)
      abb473(25)=abb473(25)*abb473(12)
      abb473(31)=abb473(32)*abb473(23)
      abb473(34)=abb473(31)*spbk6k2
      abb473(26)=abb473(32)+abb473(26)
      abb473(26)=spbk6k2*abb473(26)*abb473(23)
      abb473(11)=abb473(11)*abb473(27)
      abb473(27)=abb473(32)*abb473(11)
      abb473(36)=spbk6k2*abb473(27)
      abb473(37)=spak5k6*spbk6k3
      abb473(38)=spak1k5*spbk3k1
      abb473(39)=-abb473(37)+abb473(38)
      abb473(40)=spak3k4*spak1k2
      abb473(39)=abb473(40)*abb473(39)
      abb473(41)=spak5k6*spak2k4*abb473(17)
      abb473(39)=abb473(41)+abb473(39)
      abb473(39)=spbk6k2*abb473(39)
      abb473(41)=spak1k5*spbk6k3
      abb473(42)=abb473(41)*spak3k4
      abb473(43)=-es12*abb473(42)
      abb473(39)=abb473(43)+abb473(39)
      abb473(39)=abb473(39)*abb473(11)
      abb473(43)=abb473(37)*spak1k4
      abb473(44)=abb473(38)*spak1k4
      abb473(43)=abb473(43)+abb473(44)
      abb473(43)=abb473(43)*spbk6k2
      abb473(45)=spak1k5*spbk2k1
      abb473(46)=spak1k4*abb473(45)*spbk6k3
      abb473(43)=abb473(43)-abb473(46)
      abb473(43)=abb473(43)*abb473(15)
      abb473(47)=spbk6k2*spak1k5
      abb473(48)=-spak2k4*abb473(47)
      abb473(42)=abb473(42)+abb473(48)
      abb473(42)=abb473(42)*abb473(23)
      abb473(44)=spbk6k2*abb473(44)
      abb473(44)=-abb473(46)+abb473(44)
      abb473(44)=abb473(44)*abb473(15)
      abb473(46)=spak1k2*spbk5k2
      abb473(48)=abb473(6)*abb473(46)
      abb473(49)=spak3k4*spak6k7
      abb473(50)=abb473(17)*abb473(49)
      abb473(51)=es12*abb473(8)
      abb473(48)=abb473(50)+abb473(48)+abb473(51)
      abb473(48)=abb473(48)*abb473(13)
      abb473(8)=-abb473(9)*abb473(8)
      abb473(9)=spbk5k2*abb473(32)
      abb473(50)=spak1k7*abb473(29)
      abb473(51)=spbk6k2*spak1k4*spak6k7
      abb473(9)=abb473(51)+abb473(9)+abb473(50)
      abb473(9)=abb473(9)*abb473(11)
      abb473(40)=abb473(13)*abb473(40)
      abb473(50)=abb473(23)*spak1k4
      abb473(51)=spbk4k2*abb473(22)
      abb473(52)=spbk3k2*spak3k7
      abb473(20)=abb473(20)*spak5k6
      abb473(53)=abb473(52)*abb473(20)
      abb473(51)=abb473(51)+abb473(53)
      abb473(51)=abb473(51)*abb473(12)
      abb473(53)=spak1k7*spak5k6
      abb473(19)=-abb473(19)*abb473(15)*abb473(53)
      abb473(54)=abb473(47)*abb473(15)
      abb473(55)=spak4k7*spbk4k2
      abb473(55)=abb473(55)+abb473(52)
      abb473(56)=-abb473(55)*abb473(54)
      abb473(57)=spbk6k3*spak1k3
      abb473(58)=spbk2k1*abb473(57)
      abb473(29)=spbk6k4*abb473(29)
      abb473(59)=-spbk6k5*abb473(45)
      abb473(29)=abb473(59)+abb473(58)+abb473(29)
      abb473(29)=spak1k5*abb473(29)
      abb473(58)=-spak1k3*abb473(37)
      abb473(59)=-spbk6k4*abb473(35)
      abb473(60)=-es12-es234+es567
      abb473(60)=spak1k5*abb473(60)
      abb473(58)=abb473(60)+abb473(58)+abb473(59)
      abb473(58)=spbk6k2*abb473(58)
      abb473(29)=abb473(29)+abb473(58)
      abb473(29)=abb473(29)*abb473(12)
      abb473(10)=32.0_ki*abb473(47)*abb473(10)*i_
      abb473(47)=abb473(12)*abb473(47)
      abb473(58)=-spak1k4*spbk4k2
      abb473(59)=spak1k5*spbk5k2
      abb473(60)=spbk6k2*spak1k6
      abb473(61)=-spbk3k2*spak1k3
      abb473(58)=abb473(61)+abb473(60)+abb473(58)+abb473(59)
      abb473(58)=abb473(58)*abb473(12)
      abb473(59)=spbk6k2*spak1k7
      abb473(60)=abb473(59)*abb473(12)
      abb473(61)=abb473(45)*spak1k7
      abb473(62)=abb473(61)*abb473(12)
      abb473(63)=spbk6k5*abb473(62)
      abb473(59)=abb473(59)*abb473(15)
      abb473(64)=abb473(12)*spak1k7
      abb473(65)=-spbk5k2*abb473(64)
      abb473(22)=-spbk4k3*abb473(22)
      abb473(66)=spak5k7*spbk6k5
      abb473(30)=abb473(66)-abb473(30)
      abb473(66)=2.0_ki*es12
      abb473(67)=es23+abb473(66)-es123
      abb473(30)=spak1k5*abb473(67)*abb473(30)
      abb473(20)=-spak2k7*abb473(20)
      abb473(20)=abb473(30)+abb473(20)
      abb473(20)=spbk3k2*abb473(20)
      abb473(20)=abb473(22)+abb473(20)
      abb473(20)=abb473(20)*abb473(12)
      abb473(22)=abb473(57)+abb473(17)
      abb473(30)=spak5k7*abb473(22)
      abb473(57)=abb473(30)*abb473(23)
      abb473(68)=abb473(38)*spak1k7
      abb473(69)=spak1k7*spbk6k3
      abb473(70)=abb473(69)*spak5k6
      abb473(68)=abb473(68)+abb473(70)
      abb473(68)=abb473(68)*spbk6k2
      abb473(69)=abb473(69)*abb473(45)
      abb473(68)=abb473(68)-abb473(69)
      abb473(69)=abb473(68)*abb473(15)
      abb473(30)=-spbk3k2*abb473(30)
      abb473(30)=abb473(30)-abb473(68)
      abb473(30)=abb473(30)*abb473(12)
      abb473(41)=abb473(66)*abb473(41)
      abb473(17)=abb473(17)*abb473(38)
      abb473(38)=spbk6k3**2
      abb473(66)=spak5k6*spak1k3*abb473(38)
      abb473(17)=-2.0_ki*abb473(17)+abb473(66)+abb473(41)
      abb473(17)=abb473(17)*abb473(12)
      abb473(22)=-spak6k7*abb473(22)
      abb473(41)=-spak1k3*spbk5k3
      abb473(41)=abb473(41)-abb473(46)
      abb473(41)=spak5k7*abb473(41)
      abb473(46)=-spak1k7*abb473(67)
      abb473(22)=abb473(46)+abb473(41)+abb473(22)
      abb473(22)=abb473(22)*abb473(11)
      abb473(41)=abb473(23)*spak1k7
      abb473(46)=abb473(11)*spak1k7
      abb473(66)=-spak1k2*abb473(23)
      abb473(53)=spbk6k4*abb473(53)
      abb473(67)=spak1k5*spak1k7*spbk4k1
      abb473(53)=abb473(53)+abb473(67)
      abb473(53)=spbk6k2*abb473(53)
      abb473(61)=-spbk6k4*abb473(61)
      abb473(53)=abb473(61)+abb473(53)
      abb473(53)=abb473(53)*abb473(12)
      abb473(61)=spbk4k2*abb473(64)
      abb473(33)=-spbk3k1*abb473(33)
      abb473(64)=spak1k7*spbk3k1
      abb473(67)=spak1k4*spbk6k1*abb473(64)
      abb473(33)=abb473(33)+abb473(67)
      abb473(33)=spak1k5*abb473(33)*abb473(11)
      abb473(31)=abb473(31)*spbk6k3
      abb473(27)=spbk6k3*abb473(27)
      abb473(35)=-abb473(38)*abb473(12)*abb473(35)
      abb473(38)=spbk6k3*spak6k7
      abb473(38)=abb473(64)+abb473(38)
      abb473(38)=spak1k4*abb473(38)
      abb473(32)=spbk5k3*abb473(32)
      abb473(32)=abb473(32)+abb473(38)
      abb473(32)=abb473(32)*abb473(11)
      abb473(38)=abb473(68)*abb473(12)
      abb473(64)=abb473(45)*spak4k7
      abb473(21)=abb473(21)*spbk6k2
      abb473(21)=abb473(64)-abb473(21)
      abb473(64)=abb473(21)*abb473(23)
      abb473(67)=abb473(6)*spbk3k2
      abb473(67)=abb473(67)+abb473(21)
      abb473(67)=abb473(67)*abb473(11)
      abb473(68)=-spbk2k1*spak2k4
      abb473(70)=spak3k4*spbk3k1
      abb473(68)=abb473(68)+abb473(70)
      abb473(68)=spak1k5*abb473(68)
      abb473(37)=-spak3k4*abb473(37)
      abb473(70)=spbk6k2*spak5k6
      abb473(71)=spak2k4*abb473(70)
      abb473(37)=abb473(71)+abb473(37)+abb473(68)
      abb473(37)=abb473(37)*abb473(11)
      abb473(49)=abb473(13)*abb473(49)
      abb473(21)=-spbk4k2*abb473(21)
      abb473(45)=abb473(70)-abb473(45)
      abb473(52)=abb473(45)*abb473(52)
      abb473(21)=abb473(52)+abb473(21)
      abb473(21)=abb473(21)*abb473(12)
      abb473(45)=-abb473(45)*abb473(12)
      abb473(6)=abb473(6)*abb473(13)
      abb473(13)=spak3k4*abb473(11)
      abb473(23)=abb473(23)*spak4k7
      abb473(52)=spak4k7*abb473(11)
      abb473(11)=-spak2k4*abb473(11)
      abb473(62)=-spbk6k1*abb473(62)
      abb473(15)=-spak1k5*spbk6k1*abb473(15)
      abb473(68)=-spak1k7*spbk2k1
      abb473(55)=abb473(68)-abb473(55)
      abb473(55)=abb473(55)*abb473(12)
      R2d473=0.0_ki
      rat2 = rat2 + R2d473
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='473' value='", &
          & R2d473, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd473h5
