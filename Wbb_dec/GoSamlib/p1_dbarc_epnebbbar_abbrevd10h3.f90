module     p1_dbarc_epnebbbar_abbrevd10h3
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(65), public :: abb10
   complex(ki), public :: R2d10
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_color, only: TR
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      implicit none
      abb10(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb10(2)=NC**(-1)
      abb10(3)=es234**(-1)
      abb10(4)=es56**(-1)
      abb10(5)=spak2l5**(-1)
      abb10(6)=spak2l6**(-1)
      abb10(7)=1.0_ki/(es34+es56-es12-es234)
      abb10(8)=spbl5k2**(-1)
      abb10(9)=spbl6k2**(-1)
      abb10(10)=spak2k4*spbl6k2
      abb10(11)=abb10(10)*abb10(2)
      abb10(12)=spak3k4*abb10(2)
      abb10(13)=abb10(12)*spbl6k3
      abb10(14)=abb10(11)-abb10(13)
      abb10(15)=c1*spak1k2
      abb10(16)=abb10(14)*abb10(15)
      abb10(17)=spak3k4*spbl6k3
      abb10(18)=abb10(17)-abb10(10)
      abb10(19)=c2*spak1k2
      abb10(20)=abb10(18)*abb10(19)
      abb10(16)=abb10(16)+abb10(20)
      abb10(16)=abb10(16)*abb10(5)
      abb10(20)=spak2k4*spbl5k2
      abb10(21)=abb10(20)*abb10(2)
      abb10(22)=abb10(12)*spbl5k3
      abb10(23)=abb10(21)-abb10(22)
      abb10(24)=abb10(23)*abb10(15)
      abb10(25)=spak3k4*spbl5k3
      abb10(26)=abb10(25)-abb10(20)
      abb10(27)=abb10(26)*abb10(19)
      abb10(24)=abb10(24)+abb10(27)
      abb10(24)=abb10(24)*abb10(6)
      abb10(16)=abb10(16)+abb10(24)
      abb10(24)=8.0_ki*Nfrat
      abb10(27)=abb10(16)*abb10(24)
      abb10(28)=-abb10(19)*NC*abb10(26)
      abb10(29)=abb10(26)*abb10(15)
      abb10(28)=abb10(28)+abb10(29)
      abb10(29)=abb10(28)*abb10(6)
      abb10(30)=-abb10(19)*NC*abb10(18)
      abb10(31)=abb10(18)*abb10(15)
      abb10(30)=abb10(30)+abb10(31)
      abb10(31)=abb10(30)*abb10(5)
      abb10(29)=abb10(29)+abb10(31)
      abb10(27)=abb10(27)-abb10(29)
      abb10(31)=abb10(3)*spbk3k2
      abb10(27)=abb10(27)*abb10(31)
      abb10(32)=abb10(7)*spbk4k3
      abb10(33)=abb10(32)*spak2k4
      abb10(34)=abb10(7)*spbk3k1
      abb10(35)=abb10(34)*spak1k2
      abb10(33)=abb10(33)-abb10(35)
      abb10(35)=-spbl6k2*abb10(33)
      abb10(36)=c1*spak1k4
      abb10(37)=-abb10(36)*abb10(2)*abb10(35)
      abb10(38)=c2*spak1k4
      abb10(39)=abb10(35)*abb10(38)
      abb10(39)=abb10(37)+abb10(39)
      abb10(39)=abb10(39)*abb10(5)
      abb10(40)=-spbl5k2*abb10(33)
      abb10(41)=-abb10(36)*abb10(2)*abb10(40)
      abb10(42)=abb10(40)*abb10(38)
      abb10(42)=abb10(41)+abb10(42)
      abb10(42)=abb10(42)*abb10(6)
      abb10(39)=abb10(39)+abb10(42)
      abb10(42)=abb10(39)*abb10(24)
      abb10(43)=-abb10(38)*NC*abb10(35)
      abb10(44)=abb10(35)*abb10(36)
      abb10(44)=abb10(43)+abb10(44)
      abb10(44)=abb10(44)*abb10(5)
      abb10(45)=-abb10(38)*NC*abb10(40)
      abb10(46)=abb10(40)*abb10(36)
      abb10(46)=abb10(45)+abb10(46)
      abb10(46)=abb10(46)*abb10(6)
      abb10(44)=abb10(44)+abb10(46)
      abb10(27)=-abb10(44)+abb10(27)+abb10(42)
      abb10(42)=abb10(1)*CVDC
      abb10(46)=abb10(42)*mB
      abb10(47)=abb10(46)*i_
      abb10(48)=gW*TR
      abb10(48)=abb10(4)*abb10(47)*abb10(48)**2
      abb10(49)=-2.0_ki/3.0_ki*abb10(27)*abb10(48)
      abb10(50)=abb10(29)*abb10(31)
      abb10(50)=abb10(50)+abb10(44)
      abb10(48)=10.0_ki*abb10(50)*abb10(48)
      abb10(50)=16.0_ki*Nfrat
      abb10(16)=abb10(16)*abb10(50)
      abb10(16)=abb10(16)-abb10(29)
      abb10(16)=abb10(16)*abb10(31)
      abb10(29)=abb10(39)*abb10(50)
      abb10(16)=-abb10(44)+abb10(16)+abb10(29)
      abb10(29)=abb10(4)*gW
      abb10(39)=abb10(29)*TR
      abb10(39)=abb10(39)**2
      abb10(44)=abb10(47)*abb10(39)
      abb10(50)=4.0_ki*abb10(44)
      abb10(16)=abb10(16)*abb10(50)
      abb10(51)=abb10(19)*NC
      abb10(51)=abb10(51)-abb10(15)
      abb10(52)=spbl5k3*abb10(8)
      abb10(53)=spbl6k3*abb10(9)
      abb10(52)=abb10(52)+abb10(53)
      abb10(53)=abb10(52)*spak3k4
      abb10(54)=-abb10(53)+2.0_ki*spak2k4
      abb10(54)=abb10(6)*abb10(54)*abb10(51)
      abb10(30)=abb10(5)*abb10(8)*abb10(30)
      abb10(30)=abb10(54)+abb10(30)
      abb10(30)=abb10(5)*abb10(30)
      abb10(52)=abb10(52)*abb10(12)
      abb10(54)=spak2k4*abb10(2)
      abb10(52)=abb10(52)-abb10(54)
      abb10(52)=abb10(52)*abb10(15)
      abb10(53)=-abb10(53)+spak2k4
      abb10(53)=abb10(53)*abb10(19)
      abb10(52)=abb10(52)+abb10(53)
      abb10(53)=2.0_ki*abb10(6)
      abb10(52)=abb10(52)*abb10(53)
      abb10(11)=2.0_ki*abb10(13)-abb10(11)
      abb10(11)=abb10(15)*abb10(11)
      abb10(10)=-2.0_ki*abb10(17)+abb10(10)
      abb10(10)=abb10(19)*abb10(10)
      abb10(10)=abb10(11)+abb10(10)
      abb10(10)=abb10(5)*abb10(8)*abb10(10)
      abb10(10)=abb10(52)+abb10(10)
      abb10(10)=abb10(5)*abb10(10)
      abb10(11)=2.0_ki*abb10(22)-abb10(21)
      abb10(11)=abb10(15)*abb10(11)
      abb10(13)=-2.0_ki*abb10(25)+abb10(20)
      abb10(13)=abb10(19)*abb10(13)
      abb10(11)=abb10(11)+abb10(13)
      abb10(13)=abb10(6)**2
      abb10(11)=abb10(13)*abb10(9)*abb10(11)
      abb10(10)=abb10(11)+abb10(10)
      abb10(10)=abb10(10)*abb10(24)
      abb10(11)=abb10(13)*abb10(9)*abb10(28)
      abb10(10)=abb10(10)+abb10(11)+abb10(30)
      abb10(10)=abb10(10)*abb10(31)
      abb10(11)=abb10(38)*NC
      abb10(11)=abb10(11)-abb10(36)
      abb10(17)=abb10(53)*abb10(33)*abb10(11)
      abb10(20)=abb10(35)*abb10(8)
      abb10(21)=abb10(20)*abb10(36)
      abb10(22)=abb10(8)*abb10(43)
      abb10(21)=abb10(21)+abb10(22)
      abb10(21)=abb10(5)*abb10(21)
      abb10(17)=abb10(17)+abb10(21)
      abb10(17)=abb10(5)*abb10(17)
      abb10(21)=abb10(36)*abb10(2)
      abb10(21)=abb10(21)-abb10(38)
      abb10(22)=-abb10(53)*abb10(33)*abb10(21)
      abb10(25)=-abb10(8)*abb10(37)
      abb10(20)=-abb10(20)*abb10(38)
      abb10(20)=abb10(25)+abb10(20)
      abb10(20)=abb10(5)*abb10(20)
      abb10(20)=abb10(22)+abb10(20)
      abb10(20)=abb10(5)*abb10(20)
      abb10(22)=-abb10(9)*abb10(41)
      abb10(25)=abb10(40)*abb10(9)
      abb10(28)=-abb10(25)*abb10(38)
      abb10(22)=abb10(22)+abb10(28)
      abb10(22)=abb10(22)*abb10(13)
      abb10(20)=abb10(22)+abb10(20)
      abb10(20)=abb10(20)*abb10(24)
      abb10(22)=abb10(25)*abb10(36)
      abb10(24)=abb10(9)*abb10(45)
      abb10(22)=abb10(22)+abb10(24)
      abb10(22)=abb10(22)*abb10(13)
      abb10(10)=abb10(10)+abb10(20)+abb10(22)+abb10(17)
      abb10(17)=abb10(42)*i_*mB**3
      abb10(10)=4.0_ki*abb10(10)*abb10(39)*abb10(17)
      abb10(20)=-abb10(27)*abb10(50)
      abb10(22)=abb10(12)*abb10(15)
      abb10(24)=abb10(19)*spak3k4
      abb10(25)=abb10(22)-abb10(24)
      abb10(27)=16.0_ki*abb10(39)
      abb10(28)=abb10(27)*abb10(47)
      abb10(30)=abb10(28)*abb10(25)*spbl6l5
      abb10(35)=abb10(31)*Nfrat
      abb10(37)=abb10(35)*abb10(6)
      abb10(39)=abb10(37)*abb10(30)
      abb10(33)=-abb10(21)*spbl6l5*abb10(33)
      abb10(40)=Nfrat*abb10(6)
      abb10(41)=abb10(33)*abb10(40)
      abb10(42)=abb10(54)*abb10(15)
      abb10(19)=abb10(19)*spak2k4
      abb10(19)=abb10(19)-abb10(42)
      abb10(19)=abb10(19)*spbl6l5
      abb10(42)=abb10(19)*abb10(37)
      abb10(41)=abb10(41)+abb10(42)
      abb10(41)=abb10(41)*abb10(28)
      abb10(42)=abb10(35)*abb10(5)
      abb10(30)=-abb10(42)*abb10(30)
      abb10(43)=Nfrat*abb10(5)
      abb10(33)=-abb10(33)*abb10(43)
      abb10(19)=-abb10(19)*abb10(42)
      abb10(19)=abb10(33)+abb10(19)
      abb10(19)=abb10(19)*abb10(28)
      abb10(33)=abb10(28)*Nfrat
      abb10(45)=-abb10(32)*abb10(21)
      abb10(47)=abb10(5)*spbl6k2*spak2l6
      abb10(47)=abb10(47)+spbl5k2
      abb10(50)=-abb10(33)*abb10(45)*abb10(47)
      abb10(52)=abb10(6)*spbl5k2*spak2l5
      abb10(52)=abb10(52)+spbl6k2
      abb10(33)=-abb10(33)*abb10(45)*abb10(52)
      abb10(55)=spbl5k2*spak1l5
      abb10(56)=spbl6k2*spak1l6
      abb10(55)=abb10(55)+abb10(56)
      abb10(55)=abb10(55)*spak2k4
      abb10(56)=spbl5k3*spak1l5
      abb10(57)=spbl6k3*spak1l6
      abb10(56)=abb10(56)+abb10(57)
      abb10(57)=abb10(56)*spak3k4
      abb10(57)=abb10(55)-abb10(57)
      abb10(58)=c2*NC*abb10(57)
      abb10(59)=abb10(57)*c1
      abb10(58)=abb10(58)-abb10(59)
      abb10(59)=3.0_ki*abb10(5)
      abb10(60)=abb10(58)*abb10(59)
      abb10(56)=abb10(56)*abb10(12)
      abb10(55)=abb10(2)*abb10(55)
      abb10(55)=abb10(56)-abb10(55)
      abb10(55)=abb10(55)*c1
      abb10(56)=abb10(57)*c2
      abb10(55)=abb10(55)+abb10(56)
      abb10(56)=32.0_ki*abb10(43)
      abb10(57)=-abb10(55)*abb10(56)
      abb10(57)=abb10(60)+abb10(57)
      abb10(57)=abb10(57)*abb10(31)
      abb10(60)=abb10(24)*abb10(8)
      abb10(61)=abb10(60)*NC
      abb10(15)=abb10(15)*spak3k4
      abb10(62)=abb10(15)*abb10(8)
      abb10(61)=abb10(61)-abb10(62)
      abb10(61)=abb10(61)*abb10(5)
      abb10(24)=abb10(24)*abb10(9)
      abb10(62)=abb10(24)*NC
      abb10(15)=abb10(15)*abb10(9)
      abb10(15)=abb10(62)-abb10(15)
      abb10(62)=abb10(6)*abb10(15)
      abb10(62)=abb10(62)+abb10(61)
      abb10(62)=abb10(62)*abb10(59)
      abb10(63)=abb10(22)*abb10(8)
      abb10(60)=abb10(63)-abb10(60)
      abb10(60)=abb10(60)*abb10(5)
      abb10(22)=abb10(22)*abb10(9)
      abb10(22)=abb10(22)-abb10(24)
      abb10(24)=abb10(6)*abb10(22)
      abb10(24)=abb10(24)+abb10(60)
      abb10(24)=abb10(24)*abb10(56)
      abb10(24)=abb10(62)+abb10(24)
      abb10(62)=mB*spbk3k2
      abb10(62)=abb10(3)*abb10(62)**2
      abb10(24)=abb10(24)*abb10(62)
      abb10(63)=spbk3k1*spak1l5
      abb10(64)=spbk4k3*spak4l5
      abb10(63)=abb10(63)+abb10(64)
      abb10(63)=abb10(63)*spbl5k2
      abb10(64)=spbk3k1*spak1l6
      abb10(65)=spbk4k3*spak4l6
      abb10(64)=abb10(64)+abb10(65)
      abb10(64)=abb10(64)*spbl6k2
      abb10(63)=abb10(63)+abb10(64)
      abb10(38)=abb10(38)*abb10(7)
      abb10(64)=abb10(38)*NC
      abb10(36)=abb10(36)*abb10(7)
      abb10(64)=abb10(64)-abb10(36)
      abb10(64)=abb10(63)*abb10(64)
      abb10(59)=-abb10(64)*abb10(59)
      abb10(36)=abb10(36)*abb10(2)
      abb10(36)=abb10(36)-abb10(38)
      abb10(36)=abb10(63)*abb10(36)
      abb10(38)=-abb10(36)*abb10(56)
      abb10(24)=abb10(24)+abb10(57)+abb10(59)+abb10(38)
      abb10(29)=i_*TR**2*abb10(46)*abb10(29)**2
      abb10(24)=abb10(24)*abb10(29)
      abb10(38)=abb10(11)*abb10(28)*abb10(31)
      abb10(46)=abb10(38)*abb10(5)
      abb10(56)=abb10(11)*spbk4k2
      abb10(57)=c2*NC
      abb10(57)=abb10(57)-c1
      abb10(57)=spbk3k2*abb10(57)*spak1k3
      abb10(56)=abb10(57)+abb10(56)
      abb10(57)=8.0_ki*abb10(44)
      abb10(56)=abb10(56)*abb10(57)*abb10(3)
      abb10(59)=abb10(5)*abb10(56)
      abb10(51)=abb10(51)*spbk3k2
      abb10(63)=abb10(11)*spbk4k3
      abb10(51)=abb10(51)+abb10(63)
      abb10(51)=abb10(51)*abb10(3)
      abb10(32)=abb10(11)*abb10(32)
      abb10(32)=abb10(51)+abb10(32)
      abb10(51)=-abb10(5)*abb10(32)
      abb10(45)=4.0_ki*abb10(45)
      abb10(63)=abb10(43)*abb10(45)
      abb10(51)=abb10(63)+abb10(51)
      abb10(51)=abb10(51)*abb10(57)
      abb10(63)=3.0_ki*abb10(6)
      abb10(58)=abb10(58)*abb10(63)
      abb10(65)=32.0_ki*abb10(40)
      abb10(55)=-abb10(55)*abb10(65)
      abb10(55)=abb10(58)+abb10(55)
      abb10(31)=abb10(55)*abb10(31)
      abb10(15)=abb10(15)*abb10(13)
      abb10(55)=abb10(6)*abb10(61)
      abb10(15)=abb10(15)+abb10(55)
      abb10(13)=abb10(22)*abb10(13)
      abb10(22)=abb10(6)*abb10(60)
      abb10(22)=abb10(13)+abb10(22)
      abb10(22)=Nfrat*abb10(22)
      abb10(15)=3.0_ki*abb10(15)+32.0_ki*abb10(22)
      abb10(15)=abb10(15)*abb10(62)
      abb10(22)=-abb10(64)*abb10(63)
      abb10(36)=-abb10(36)*abb10(65)
      abb10(15)=abb10(15)+abb10(31)+abb10(22)+abb10(36)
      abb10(15)=abb10(15)*abb10(29)
      abb10(22)=abb10(38)*abb10(6)
      abb10(29)=abb10(6)*abb10(56)
      abb10(31)=-abb10(6)*abb10(32)
      abb10(32)=abb10(40)*abb10(45)
      abb10(31)=abb10(32)+abb10(31)
      abb10(31)=abb10(31)*abb10(57)
      abb10(25)=-abb10(25)*abb10(53)
      abb10(32)=-spbl6k2*abb10(60)
      abb10(25)=abb10(25)+abb10(32)
      abb10(25)=abb10(5)*abb10(25)
      abb10(13)=-spbl5k2*abb10(13)
      abb10(13)=abb10(13)+abb10(25)
      abb10(13)=abb10(13)*abb10(27)*abb10(35)*abb10(17)
      abb10(17)=abb10(23)*c1
      abb10(23)=abb10(26)*c2
      abb10(17)=abb10(17)+abb10(23)
      abb10(14)=abb10(14)*c1
      abb10(18)=abb10(18)*c2
      abb10(14)=abb10(14)+abb10(18)
      abb10(18)=-abb10(5)*spak2l6*abb10(14)
      abb10(18)=abb10(18)-abb10(17)
      abb10(18)=abb10(18)*abb10(35)
      abb10(21)=-abb10(34)*abb10(21)
      abb10(23)=-Nfrat*abb10(21)*abb10(47)
      abb10(18)=abb10(23)+abb10(18)
      abb10(18)=abb10(18)*abb10(28)
      abb10(17)=-abb10(6)*spak2l5*abb10(17)
      abb10(14)=abb10(17)-abb10(14)
      abb10(14)=abb10(14)*abb10(35)
      abb10(17)=-Nfrat*abb10(21)*abb10(52)
      abb10(14)=abb10(17)+abb10(14)
      abb10(14)=abb10(14)*abb10(28)
      abb10(17)=c2*spak3k4
      abb10(12)=abb10(12)*c1
      abb10(12)=abb10(17)-abb10(12)
      abb10(17)=32.0_ki*abb10(44)
      abb10(12)=abb10(12)*abb10(17)
      abb10(17)=abb10(42)*abb10(12)
      abb10(12)=abb10(37)*abb10(12)
      abb10(11)=abb10(11)*abb10(34)
      abb10(23)=-abb10(5)*abb10(11)
      abb10(21)=4.0_ki*abb10(21)
      abb10(25)=abb10(43)*abb10(21)
      abb10(26)=c2*spak2k4
      abb10(27)=abb10(54)*c1
      abb10(26)=abb10(26)-abb10(27)
      abb10(26)=4.0_ki*abb10(26)
      abb10(27)=-abb10(42)*abb10(26)
      abb10(23)=abb10(27)+abb10(23)+abb10(25)
      abb10(23)=abb10(23)*abb10(57)
      abb10(11)=-abb10(6)*abb10(11)
      abb10(21)=abb10(40)*abb10(21)
      abb10(25)=-abb10(37)*abb10(26)
      abb10(11)=abb10(25)+abb10(11)+abb10(21)
      abb10(11)=abb10(11)*abb10(57)
      R2d10=abb10(49)
      rat2 = rat2 + R2d10
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='10' value='", &
          & R2d10, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd10h3
