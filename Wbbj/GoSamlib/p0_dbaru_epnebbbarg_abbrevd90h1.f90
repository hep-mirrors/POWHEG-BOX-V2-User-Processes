module     p0_dbaru_epnebbbarg_abbrevd90h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(63), public :: abb90
   complex(ki), public :: R2d90
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
      abb90(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb90(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb90(3)=NC**(-1)
      abb90(4)=sqrt2**(-1)
      abb90(5)=es71**(-1)
      abb90(6)=spak2k7**(-1)
      abb90(7)=spbl6k2**(-1)
      abb90(8)=1.0_ki/(es34+es567-es12-es234)
      abb90(9)=spak2l5**(-1)
      abb90(10)=spbl5k2**(-1)
      abb90(11)=spak2l6**(-1)
      abb90(12)=sqrt(mB**2)
      abb90(13)=abb90(1)*abb90(3)**2
      abb90(14)=TR*gW
      abb90(14)=CVDU*i_*spak1k4*abb90(6)*abb90(4)*abb90(2)*abb90(14)**2
      abb90(15)=abb90(13)*abb90(14)*abb90(8)
      abb90(16)=spak2k4*spbk4k3
      abb90(17)=abb90(15)*abb90(16)
      abb90(13)=abb90(13)*abb90(14)*spak1k2
      abb90(18)=spbk3k1*abb90(8)
      abb90(19)=abb90(18)*abb90(13)
      abb90(17)=abb90(17)-abb90(19)
      abb90(17)=abb90(17)*c4
      abb90(14)=abb90(14)*c3*abb90(1)
      abb90(20)=abb90(14)*spak1k2
      abb90(21)=abb90(20)*abb90(3)
      abb90(22)=abb90(18)*abb90(21)
      abb90(23)=abb90(16)*abb90(14)*abb90(3)
      abb90(24)=abb90(23)*abb90(8)
      abb90(22)=abb90(22)-abb90(24)
      abb90(17)=abb90(17)+2.0_ki*abb90(22)
      abb90(25)=abb90(14)*abb90(16)*abb90(8)
      abb90(26)=abb90(20)*spbk3k1
      abb90(27)=abb90(26)*abb90(8)
      abb90(28)=abb90(25)-abb90(27)
      abb90(28)=abb90(28)*NC
      abb90(28)=abb90(17)+abb90(28)
      abb90(29)=spbl5k2**2
      abb90(30)=spbk7l5*abb90(29)*abb90(28)
      abb90(31)=spbk7k1*abb90(5)
      abb90(32)=abb90(31)*c4
      abb90(33)=abb90(32)*abb90(13)
      abb90(34)=2.0_ki*abb90(31)
      abb90(35)=abb90(34)*abb90(21)
      abb90(31)=abb90(31)*NC
      abb90(36)=abb90(20)*abb90(31)
      abb90(33)=abb90(36)+abb90(33)-abb90(35)
      abb90(35)=abb90(33)*abb90(29)
      abb90(36)=spbl5k3*abb90(35)
      abb90(30)=abb90(36)+abb90(30)
      abb90(30)=spal5l6*abb90(30)
      abb90(36)=spbk7k2*abb90(8)
      abb90(37)=abb90(36)*spbk3k1
      abb90(38)=abb90(37)*abb90(21)
      abb90(39)=abb90(23)*abb90(36)
      abb90(38)=abb90(38)-abb90(39)
      abb90(40)=2.0_ki*abb90(38)
      abb90(41)=abb90(16)*spbk7k2
      abb90(42)=abb90(41)*abb90(15)
      abb90(43)=abb90(13)*abb90(37)
      abb90(42)=abb90(42)-abb90(43)
      abb90(42)=abb90(42)*c4
      abb90(44)=abb90(36)*abb90(14)
      abb90(45)=abb90(44)*abb90(16)
      abb90(26)=abb90(26)*abb90(36)
      abb90(46)=abb90(45)-abb90(26)
      abb90(47)=abb90(46)*NC
      abb90(42)=abb90(40)+abb90(42)+abb90(47)
      abb90(48)=mB**2
      abb90(49)=abb90(48)*abb90(7)
      abb90(50)=abb90(29)*abb90(49)
      abb90(51)=abb90(50)*abb90(42)
      abb90(29)=-spak2l6*abb90(29)*abb90(42)
      abb90(50)=-abb90(50)*abb90(33)
      abb90(35)=spak2l6*abb90(35)
      abb90(35)=abb90(35)+abb90(50)
      abb90(35)=spbk3k2*abb90(35)
      abb90(29)=abb90(35)+abb90(29)+abb90(51)+abb90(30)
      abb90(29)=spak2l5*abb90(29)
      abb90(30)=-NC*spbl5k2*abb90(46)
      abb90(35)=abb90(13)*spbl5k2
      abb90(46)=abb90(35)*abb90(37)
      abb90(50)=spbl5k2*abb90(15)
      abb90(41)=abb90(50)*abb90(41)
      abb90(41)=abb90(46)-abb90(41)
      abb90(41)=abb90(41)*c4
      abb90(46)=abb90(39)*spbl5k2
      abb90(51)=abb90(21)*spbl5k2
      abb90(37)=abb90(51)*abb90(37)
      abb90(46)=abb90(46)-abb90(37)
      abb90(30)=2.0_ki*abb90(46)+abb90(30)+abb90(41)
      abb90(46)=-spak2l6*abb90(48)*abb90(30)
      abb90(52)=spbl5k2*abb90(33)
      abb90(53)=spbk3k2*spak2l6
      abb90(54)=-abb90(53)*abb90(48)*abb90(52)
      abb90(29)=abb90(46)+abb90(54)+abb90(29)
      abb90(29)=8.0_ki*abb90(29)
      abb90(46)=abb90(49)*abb90(30)
      abb90(54)=abb90(52)*spbl5k3
      abb90(55)=abb90(18)*abb90(35)
      abb90(56)=abb90(50)*abb90(16)
      abb90(55)=abb90(55)-abb90(56)
      abb90(55)=abb90(55)*c4
      abb90(56)=abb90(24)*spbl5k2
      abb90(18)=abb90(18)*abb90(51)
      abb90(56)=abb90(56)-abb90(18)
      abb90(56)=abb90(55)+2.0_ki*abb90(56)
      abb90(25)=spbl5k2*abb90(25)
      abb90(57)=abb90(27)*spbl5k2
      abb90(58)=abb90(57)-abb90(25)
      abb90(58)=abb90(58)*NC
      abb90(58)=abb90(58)+abb90(56)
      abb90(59)=abb90(58)*spbk7l5
      abb90(54)=abb90(54)-abb90(59)
      abb90(59)=spal5l6*abb90(54)
      abb90(60)=abb90(48)*abb90(9)
      abb90(61)=abb90(60)*abb90(36)
      abb90(62)=spbl5k2*abb90(36)
      abb90(62)=abb90(62)-abb90(61)
      abb90(23)=abb90(62)*abb90(23)
      abb90(62)=-abb90(36)*abb90(51)
      abb90(63)=abb90(21)*abb90(61)
      abb90(62)=abb90(62)+abb90(63)
      abb90(62)=spbk3k1*abb90(62)
      abb90(23)=abb90(23)+abb90(62)
      abb90(50)=-spbk7k2*abb90(50)
      abb90(62)=abb90(15)*spbk7k2
      abb90(63)=abb90(60)*abb90(62)
      abb90(50)=abb90(50)+abb90(63)
      abb90(50)=abb90(50)*abb90(16)
      abb90(61)=-abb90(13)*abb90(61)
      abb90(63)=abb90(36)*abb90(35)
      abb90(61)=abb90(63)+abb90(61)
      abb90(61)=spbk3k1*abb90(61)
      abb90(50)=abb90(50)+abb90(61)
      abb90(50)=c4*abb90(50)
      abb90(61)=abb90(60)-spbl5k2
      abb90(45)=abb90(61)*abb90(45)
      abb90(20)=abb90(20)*abb90(61)
      abb90(36)=-spbk3k1*abb90(36)*abb90(20)
      abb90(36)=abb90(45)+abb90(36)
      abb90(36)=NC*abb90(36)
      abb90(23)=abb90(36)+2.0_ki*abb90(23)+abb90(50)
      abb90(23)=spak2l6*abb90(23)
      abb90(36)=abb90(52)*abb90(49)
      abb90(13)=-abb90(13)*abb90(60)
      abb90(13)=abb90(35)+abb90(13)
      abb90(13)=abb90(13)*abb90(32)
      abb90(21)=abb90(21)*abb90(60)
      abb90(21)=-abb90(51)+abb90(21)
      abb90(21)=abb90(21)*abb90(34)
      abb90(20)=-abb90(20)*abb90(31)
      abb90(13)=abb90(20)+abb90(21)+abb90(13)
      abb90(13)=spak2l6*abb90(13)
      abb90(13)=abb90(13)-abb90(36)
      abb90(13)=spbk3k2*abb90(13)
      abb90(13)=abb90(13)+abb90(23)+abb90(59)-abb90(46)
      abb90(13)=16.0_ki*abb90(13)
      abb90(20)=abb90(9)*mB
      abb90(21)=-abb90(20)*abb90(22)
      abb90(16)=abb90(16)*abb90(9)
      abb90(22)=abb90(16)*mB
      abb90(15)=-abb90(15)*abb90(22)
      abb90(19)=abb90(20)*abb90(19)
      abb90(15)=abb90(15)+abb90(19)
      abb90(15)=c4*abb90(15)
      abb90(14)=abb90(14)*abb90(16)*abb90(8)
      abb90(19)=-mB*abb90(14)
      abb90(23)=abb90(20)*abb90(27)
      abb90(19)=abb90(19)+abb90(23)
      abb90(19)=NC*abb90(19)
      abb90(15)=abb90(19)+2.0_ki*abb90(21)+abb90(15)
      abb90(15)=abb90(12)*abb90(15)
      abb90(19)=abb90(60)*abb90(17)
      abb90(14)=abb90(48)*abb90(14)
      abb90(21)=-abb90(60)*abb90(27)
      abb90(21)=abb90(14)+abb90(21)
      abb90(21)=NC*abb90(21)
      abb90(15)=abb90(15)+abb90(21)+abb90(19)
      abb90(15)=spbk7l5*abb90(15)
      abb90(19)=abb90(33)*abb90(60)
      abb90(21)=abb90(33)*abb90(20)
      abb90(23)=-abb90(12)*abb90(21)
      abb90(23)=abb90(23)+abb90(19)
      abb90(23)=spbl5k3*abb90(23)
      abb90(31)=abb90(49)*abb90(9)
      abb90(32)=-abb90(31)*abb90(56)
      abb90(14)=abb90(14)*abb90(7)
      abb90(34)=spbl5k2*abb90(14)
      abb90(35)=-abb90(31)*abb90(57)
      abb90(34)=abb90(34)+abb90(35)
      abb90(34)=NC*abb90(34)
      abb90(32)=abb90(34)+abb90(32)
      abb90(32)=spbk7l6*abb90(32)
      abb90(34)=spbl6k3*abb90(31)*abb90(52)
      abb90(15)=abb90(34)+abb90(32)+abb90(23)+abb90(15)
      abb90(15)=spal5l6*abb90(15)
      abb90(23)=abb90(20)*abb90(38)
      abb90(32)=abb90(22)*abb90(62)
      abb90(34)=-abb90(43)*abb90(20)
      abb90(32)=abb90(32)+abb90(34)
      abb90(32)=c4*abb90(32)
      abb90(22)=abb90(44)*abb90(22)
      abb90(20)=-abb90(26)*abb90(20)
      abb90(20)=abb90(22)+abb90(20)
      abb90(20)=NC*abb90(20)
      abb90(20)=abb90(20)+2.0_ki*abb90(23)+abb90(32)
      abb90(20)=spak2l6*abb90(20)
      abb90(22)=abb90(7)*mB
      abb90(23)=abb90(22)*spbl5k2
      abb90(32)=abb90(23)*abb90(33)
      abb90(21)=-spak2l6*abb90(21)
      abb90(21)=abb90(21)+abb90(32)
      abb90(21)=spbk3k2*abb90(21)
      abb90(34)=abb90(39)*abb90(23)
      abb90(35)=-abb90(22)*abb90(37)
      abb90(34)=abb90(34)+abb90(35)
      abb90(35)=abb90(22)*abb90(41)
      abb90(37)=-abb90(23)*abb90(47)
      abb90(20)=abb90(21)+abb90(20)+abb90(37)+2.0_ki*abb90(34)+abb90(35)
      abb90(20)=abb90(12)*abb90(20)
      abb90(21)=abb90(9)**2
      abb90(34)=mB**4
      abb90(35)=abb90(21)*abb90(34)
      abb90(37)=spak2l6*abb90(35)*abb90(42)
      abb90(38)=mB**3
      abb90(21)=abb90(38)*abb90(21)
      abb90(39)=-spak2l6*abb90(21)*abb90(42)
      abb90(41)=abb90(53)*abb90(33)
      abb90(21)=abb90(21)*abb90(41)
      abb90(21)=abb90(39)+abb90(21)
      abb90(21)=abb90(12)*abb90(21)
      abb90(39)=-abb90(35)*abb90(41)
      abb90(21)=abb90(21)+abb90(37)+abb90(39)
      abb90(21)=abb90(10)*abb90(21)
      abb90(37)=abb90(52)*spbk3k2
      abb90(37)=abb90(30)+abb90(37)
      abb90(39)=abb90(7)**2
      abb90(34)=abb90(39)*abb90(34)
      abb90(41)=abb90(34)*abb90(37)
      abb90(37)=-abb90(12)*abb90(37)*abb90(38)*abb90(39)
      abb90(37)=abb90(37)+abb90(41)
      abb90(37)=abb90(11)*abb90(37)
      abb90(30)=spak2l6*abb90(30)
      abb90(38)=abb90(52)*spak2l6
      abb90(36)=-2.0_ki*abb90(36)+abb90(38)
      abb90(36)=spbk3k2*abb90(36)
      abb90(15)=abb90(37)+abb90(21)+abb90(20)+abb90(36)-2.0_ki*abb90(46)+abb90(&
      &30)+abb90(15)
      abb90(15)=16.0_ki*abb90(15)
      abb90(20)=abb90(33)*spbk3k2
      abb90(21)=abb90(40)-abb90(20)
      abb90(30)=abb90(34)*abb90(9)
      abb90(21)=-abb90(30)*abb90(21)
      abb90(16)=abb90(34)*abb90(16)
      abb90(34)=-abb90(62)*abb90(16)
      abb90(36)=abb90(43)*abb90(30)
      abb90(34)=abb90(34)+abb90(36)
      abb90(34)=c4*abb90(34)
      abb90(16)=-abb90(44)*abb90(16)
      abb90(26)=abb90(26)*abb90(30)
      abb90(16)=abb90(16)+abb90(26)
      abb90(16)=NC*abb90(16)
      abb90(16)=abb90(16)+abb90(34)+abb90(21)
      abb90(16)=abb90(11)*abb90(16)
      abb90(21)=abb90(31)*abb90(42)
      abb90(20)=abb90(42)-abb90(20)
      abb90(26)=-abb90(10)*abb90(20)*abb90(35)*abb90(7)
      abb90(30)=abb90(33)*abb90(31)
      abb90(34)=-spbk3k2*abb90(30)
      abb90(16)=abb90(16)+abb90(26)+abb90(34)+abb90(21)
      abb90(16)=32.0_ki*abb90(16)
      abb90(21)=abb90(11)*abb90(49)*abb90(20)
      abb90(26)=abb90(60)*abb90(42)
      abb90(19)=abb90(19)*spbk3k2
      abb90(19)=-abb90(19)+abb90(26)
      abb90(19)=abb90(19)*abb90(10)
      abb90(19)=abb90(21)+abb90(19)-abb90(20)
      abb90(20)=32.0_ki*abb90(19)
      abb90(21)=abb90(27)*abb90(23)
      abb90(25)=abb90(25)*abb90(22)
      abb90(21)=abb90(21)-abb90(25)
      abb90(21)=abb90(21)*NC
      abb90(23)=abb90(24)*abb90(23)
      abb90(18)=abb90(18)*abb90(22)
      abb90(18)=abb90(23)-abb90(18)
      abb90(22)=abb90(22)*abb90(55)
      abb90(18)=abb90(22)+abb90(21)+2.0_ki*abb90(18)
      abb90(21)=-spbk7l6*abb90(18)
      abb90(22)=spbl6k3*abb90(32)
      abb90(21)=abb90(22)+abb90(21)
      abb90(21)=abb90(12)*abb90(21)
      abb90(22)=-spak2l5*abb90(54)
      abb90(21)=abb90(22)+abb90(21)
      abb90(21)=8.0_ki*abb90(21)
      abb90(22)=abb90(28)*spbk7l5
      abb90(23)=abb90(33)*spbl5k3
      abb90(22)=abb90(22)+abb90(23)
      abb90(23)=-32.0_ki*abb90(22)
      abb90(17)=-abb90(31)*abb90(17)
      abb90(24)=abb90(27)*abb90(31)
      abb90(14)=abb90(24)-abb90(14)
      abb90(14)=abb90(14)*NC
      abb90(14)=abb90(14)+abb90(17)
      abb90(17)=spbk7l6*abb90(14)
      abb90(24)=-spbl6k3*abb90(30)
      abb90(17)=abb90(17)+abb90(24)
      abb90(17)=16.0_ki*abb90(17)
      abb90(18)=-abb90(12)*abb90(18)
      abb90(24)=-spak2l6*abb90(58)
      abb90(18)=abb90(24)+abb90(18)
      abb90(18)=spbk7l5*abb90(18)
      abb90(24)=abb90(12)*abb90(32)
      abb90(24)=abb90(38)+abb90(24)
      abb90(24)=spbl5k3*abb90(24)
      abb90(18)=abb90(18)+abb90(24)
      abb90(18)=8.0_ki*abb90(18)
      abb90(14)=spbk7l5*abb90(14)
      abb90(24)=-spbl5k3*abb90(30)
      abb90(14)=abb90(14)+abb90(24)
      abb90(14)=16.0_ki*abb90(14)
      abb90(22)=16.0_ki*abb90(22)
      abb90(19)=-16.0_ki*abb90(19)
      R2d90=0.0_ki
      rat2 = rat2 + R2d90
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='90' value='", &
          & R2d90, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd90h1
