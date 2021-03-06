module     p0_dbaru_epnebbbarg_abbrevd90h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(50), public :: abb90
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
      abb90(6)=spak2l6**(-1)
      abb90(7)=spbk7k2**(-1)
      abb90(8)=1.0_ki/(es34+es567-es12-es234)
      abb90(9)=spbl5k2**(-1)
      abb90(10)=spak2l5**(-1)
      abb90(11)=spbl6k2**(-1)
      abb90(12)=sqrt(mB**2)
      abb90(13)=abb90(4)*i_*CVDU*abb90(2)*abb90(1)
      abb90(14)=TR*gW
      abb90(14)=abb90(14)**2
      abb90(15)=abb90(13)*abb90(14)
      abb90(16)=spak1k7*abb90(15)
      abb90(17)=abb90(16)*abb90(5)
      abb90(18)=abb90(17)*c3
      abb90(19)=abb90(18)*spbk3k2
      abb90(20)=mB**2
      abb90(21)=abb90(19)*abb90(20)
      abb90(22)=abb90(21)*spak4k7
      abb90(23)=spak1k4*abb90(7)
      abb90(24)=abb90(23)*spbk2k1
      abb90(25)=abb90(21)*abb90(24)
      abb90(22)=abb90(22)-abb90(25)
      abb90(22)=abb90(22)*NC
      abb90(26)=abb90(3)**2
      abb90(17)=abb90(26)*abb90(17)
      abb90(27)=spbk3k2*abb90(17)
      abb90(28)=abb90(27)*abb90(20)
      abb90(29)=spak4k7*abb90(28)
      abb90(28)=abb90(24)*abb90(28)
      abb90(29)=abb90(29)-abb90(28)
      abb90(29)=abb90(29)*c4
      abb90(30)=abb90(21)*abb90(3)
      abb90(31)=abb90(30)*spak4k7
      abb90(32)=abb90(25)*abb90(3)
      abb90(31)=abb90(31)-abb90(32)
      abb90(22)=-2.0_ki*abb90(31)+abb90(22)+abb90(29)
      abb90(31)=spak2l5**2
      abb90(33)=abb90(6)*abb90(31)*abb90(22)
      abb90(34)=abb90(19)*abb90(3)
      abb90(35)=spak4k7*spbl6k2
      abb90(36)=abb90(34)*abb90(35)
      abb90(37)=abb90(19)*abb90(24)
      abb90(38)=spbl6k2*abb90(3)
      abb90(39)=-abb90(37)*abb90(38)
      abb90(36)=abb90(36)+abb90(39)
      abb90(36)=abb90(31)*abb90(36)
      abb90(39)=-abb90(31)*abb90(27)*abb90(35)
      abb90(40)=abb90(27)*abb90(24)
      abb90(31)=abb90(31)*spbl6k2
      abb90(41)=abb90(40)*abb90(31)
      abb90(39)=abb90(39)+abb90(41)
      abb90(39)=c4*abb90(39)
      abb90(41)=abb90(19)*spak4k7
      abb90(41)=abb90(41)-abb90(37)
      abb90(41)=abb90(41)*NC
      abb90(31)=-abb90(31)*abb90(41)
      abb90(31)=abb90(33)+abb90(31)+2.0_ki*abb90(36)+abb90(39)
      abb90(31)=spbl5k2*abb90(31)
      abb90(26)=abb90(26)*c4
      abb90(13)=abb90(14)*abb90(26)*abb90(13)*abb90(23)
      abb90(14)=-NC+2.0_ki*abb90(3)
      abb90(15)=-abb90(14)*abb90(15)*abb90(23)*c3
      abb90(33)=abb90(13)+abb90(15)
      abb90(36)=spak4k7*spak2l5
      abb90(33)=abb90(33)*abb90(36)
      abb90(39)=spbk4k3*abb90(33)
      abb90(16)=abb90(23)*abb90(16)
      abb90(14)=-abb90(14)*c3*abb90(16)
      abb90(16)=abb90(26)*abb90(16)
      abb90(14)=abb90(16)+abb90(14)
      abb90(16)=abb90(14)*spbk3k1
      abb90(23)=spak2l5*abb90(16)
      abb90(23)=abb90(39)+abb90(23)
      abb90(26)=spbl6k2**2
      abb90(23)=abb90(26)*abb90(23)
      abb90(39)=spbl5k2*abb90(8)
      abb90(42)=-abb90(39)*abb90(23)
      abb90(24)=abb90(24)-spak4k7
      abb90(17)=c4*abb90(24)*abb90(17)
      abb90(18)=-abb90(18)*abb90(24)
      abb90(24)=abb90(18)*NC
      abb90(17)=abb90(17)-abb90(24)
      abb90(24)=spak2l5*spbl6k2
      abb90(43)=-abb90(24)*abb90(17)
      abb90(44)=abb90(24)*abb90(3)
      abb90(45)=-abb90(44)*abb90(18)
      abb90(43)=2.0_ki*abb90(45)+abb90(43)
      abb90(45)=abb90(43)*spbl6k3
      abb90(46)=spbl5k2*abb90(45)
      abb90(42)=abb90(46)+abb90(42)
      abb90(42)=spal5l6*abb90(42)
      abb90(46)=abb90(24)*spak4k7
      abb90(47)=-abb90(30)*abb90(46)
      abb90(48)=abb90(25)*abb90(44)
      abb90(47)=abb90(47)+abb90(48)
      abb90(48)=abb90(24)*abb90(29)
      abb90(49)=abb90(21)*abb90(46)
      abb90(50)=-abb90(24)*abb90(25)
      abb90(49)=abb90(49)+abb90(50)
      abb90(49)=NC*abb90(49)
      abb90(31)=abb90(31)+abb90(49)+2.0_ki*abb90(47)+abb90(48)+abb90(42)
      abb90(31)=8.0_ki*abb90(31)
      abb90(42)=abb90(25)*spbl6k2
      abb90(47)=abb90(35)*abb90(21)
      abb90(42)=abb90(42)-abb90(47)
      abb90(42)=abb90(42)*NC
      abb90(47)=abb90(35)*abb90(30)
      abb90(48)=abb90(38)*abb90(25)
      abb90(47)=abb90(47)-abb90(48)
      abb90(29)=spbl6k2*abb90(29)
      abb90(29)=-abb90(29)+abb90(42)+2.0_ki*abb90(47)
      abb90(29)=abb90(29)*abb90(9)
      abb90(21)=abb90(21)*abb90(36)
      abb90(25)=abb90(25)*spak2l5
      abb90(21)=abb90(21)-abb90(25)
      abb90(21)=abb90(21)*NC
      abb90(25)=abb90(30)*abb90(36)
      abb90(30)=abb90(32)*spak2l5
      abb90(25)=abb90(25)-abb90(30)
      abb90(28)=abb90(28)*spak2l5
      abb90(30)=abb90(27)*abb90(36)
      abb90(20)=abb90(30)*abb90(20)
      abb90(20)=abb90(28)-abb90(20)
      abb90(20)=abb90(20)*c4
      abb90(20)=abb90(20)-abb90(21)+2.0_ki*abb90(25)
      abb90(20)=abb90(20)*abb90(6)
      abb90(21)=abb90(46)*abb90(27)
      abb90(25)=abb90(40)*abb90(24)
      abb90(21)=abb90(21)-abb90(25)
      abb90(21)=abb90(21)*c4
      abb90(25)=abb90(44)*abb90(37)
      abb90(28)=abb90(46)*abb90(34)
      abb90(25)=abb90(25)-abb90(28)
      abb90(28)=abb90(24)*abb90(41)
      abb90(21)=abb90(29)+abb90(28)+abb90(20)+abb90(21)+2.0_ki*abb90(25)
      abb90(13)=spak4k7*abb90(13)
      abb90(25)=abb90(15)*spak4k7
      abb90(25)=abb90(25)+abb90(13)
      abb90(25)=abb90(25)*spbk4k3
      abb90(16)=abb90(25)+abb90(16)
      abb90(25)=spal5l6*abb90(8)
      abb90(26)=-abb90(25)*abb90(26)*abb90(16)
      abb90(28)=-spbl6k2*abb90(17)
      abb90(29)=-abb90(38)*abb90(18)
      abb90(28)=2.0_ki*abb90(29)+abb90(28)
      abb90(28)=abb90(28)*spbl6k3*spal5l6
      abb90(26)=abb90(28)+abb90(26)-abb90(21)
      abb90(26)=16.0_ki*abb90(26)
      abb90(21)=-16.0_ki*abb90(21)
      abb90(23)=abb90(8)*abb90(23)
      abb90(23)=-abb90(45)+abb90(23)
      abb90(23)=8.0_ki*abb90(23)
      abb90(28)=-abb90(11)*abb90(6)
      abb90(29)=-abb90(10)*abb90(9)
      abb90(28)=abb90(29)+abb90(28)
      abb90(28)=-abb90(22)*abb90(28)
      abb90(29)=spak4k7*abb90(34)
      abb90(32)=-abb90(3)*abb90(37)
      abb90(29)=abb90(29)+abb90(32)
      abb90(27)=abb90(27)*spak4k7
      abb90(27)=-abb90(27)+abb90(40)
      abb90(27)=c4*abb90(27)
      abb90(27)=-abb90(41)+2.0_ki*abb90(29)+abb90(27)+abb90(28)
      abb90(27)=16.0_ki*abb90(27)
      abb90(28)=abb90(13)*spbl6k2
      abb90(29)=-abb90(35)*abb90(15)
      abb90(28)=abb90(29)-abb90(28)
      abb90(32)=-spbk4k3*abb90(28)
      abb90(35)=abb90(14)*spbl6k2
      abb90(38)=spbk3k1*abb90(35)
      abb90(32)=abb90(38)+abb90(32)
      abb90(32)=abb90(8)*abb90(32)
      abb90(18)=-abb90(3)*abb90(18)
      abb90(17)=-abb90(17)+2.0_ki*abb90(18)
      abb90(18)=abb90(17)*spbl6k3
      abb90(32)=-abb90(18)+abb90(32)
      abb90(32)=8.0_ki*abb90(32)
      abb90(22)=-abb90(9)*abb90(22)
      abb90(20)=abb90(11)*abb90(20)
      abb90(34)=-abb90(36)*abb90(34)
      abb90(37)=abb90(37)*spak2l5
      abb90(38)=abb90(3)*abb90(37)
      abb90(34)=abb90(34)+abb90(38)
      abb90(38)=-spak2l5*abb90(40)
      abb90(30)=abb90(30)+abb90(38)
      abb90(30)=c4*abb90(30)
      abb90(19)=abb90(19)*abb90(36)
      abb90(19)=abb90(19)-abb90(37)
      abb90(19)=NC*abb90(19)
      abb90(18)=-spal5l6*abb90(18)
      abb90(18)=abb90(20)+abb90(22)+abb90(18)+abb90(19)+2.0_ki*abb90(34)+abb90(&
      &30)
      abb90(18)=spbl6l5*abb90(18)
      abb90(19)=abb90(24)*abb90(13)
      abb90(15)=abb90(46)*abb90(15)
      abb90(15)=abb90(19)+abb90(15)
      abb90(15)=abb90(15)*abb90(39)
      abb90(19)=abb90(25)*spbl6l5
      abb90(20)=-abb90(28)*abb90(19)
      abb90(15)=abb90(15)+abb90(20)
      abb90(15)=spbk4k3*abb90(15)
      abb90(20)=mB*spbl6k2
      abb90(13)=abb90(13)*abb90(20)
      abb90(22)=-mB*abb90(29)
      abb90(13)=abb90(13)+abb90(22)
      abb90(13)=abb90(8)*abb90(13)
      abb90(22)=abb90(39)*abb90(6)
      abb90(25)=abb90(22)*mB*abb90(33)
      abb90(13)=abb90(13)+abb90(25)
      abb90(13)=spbk4k3*abb90(13)
      abb90(25)=-spbl6k3*mB*abb90(17)
      abb90(28)=mB*spak2l5
      abb90(22)=abb90(22)*abb90(28)
      abb90(20)=abb90(8)*abb90(20)
      abb90(20)=abb90(20)+abb90(22)
      abb90(20)=spbk3k1*abb90(14)*abb90(20)
      abb90(13)=abb90(20)+abb90(25)+abb90(13)
      abb90(13)=abb90(12)*abb90(13)
      abb90(14)=abb90(39)*abb90(24)*abb90(14)
      abb90(19)=abb90(35)*abb90(19)
      abb90(14)=abb90(14)+abb90(19)
      abb90(14)=spbk3k1*abb90(14)
      abb90(19)=-abb90(12)*abb90(6)*abb90(28)*abb90(17)
      abb90(19)=abb90(19)-abb90(43)
      abb90(19)=spbl5k3*abb90(19)
      abb90(13)=abb90(19)+abb90(13)+abb90(14)+abb90(15)+abb90(18)
      abb90(13)=8.0_ki*abb90(13)
      abb90(14)=abb90(39)*abb90(16)
      abb90(15)=-spbl5k3*abb90(17)
      abb90(14)=abb90(15)+abb90(14)
      abb90(14)=8.0_ki*abb90(14)
      R2d90=0.0_ki
      rat2 = rat2 + R2d90
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='90' value='", &
          & R2d90, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd90h6
