module     p0_dbaru_epnebbbarg_abbrevd305h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(58), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=spbl6k2**(-1)
      abb305(6)=spak2l5**(-1)
      abb305(7)=CVDU*i_*spak1k4*abb305(2)*abb305(1)
      abb305(8)=TR*gW
      abb305(8)=abb305(8)**2
      abb305(9)=abb305(7)*c2*abb305(8)*abb305(4)**2
      abb305(7)=abb305(7)*abb305(8)*abb305(4)
      abb305(8)=abb305(7)*c3
      abb305(7)=abb305(7)*c1
      abb305(7)=-abb305(8)+abb305(9)-abb305(7)
      abb305(8)=spbk4k3*abb305(7)
      abb305(9)=mB*spbl5k2**2
      abb305(10)=abb305(8)*abb305(9)
      abb305(11)=spak4k7*abb305(10)
      abb305(7)=spbk3k1*abb305(7)
      abb305(9)=abb305(7)*abb305(9)
      abb305(12)=spak1k7*abb305(9)
      abb305(11)=abb305(12)+abb305(11)
      abb305(12)=abb305(3)*spbk7e7
      abb305(13)=abb305(12)*abb305(5)
      abb305(11)=abb305(13)*abb305(11)
      abb305(14)=spbl5k2*abb305(7)
      abb305(15)=abb305(14)*spak1l6
      abb305(16)=spbl5k2*abb305(8)
      abb305(17)=abb305(16)*spak4l6
      abb305(15)=abb305(15)+abb305(17)
      abb305(17)=abb305(15)*spbe7l5
      abb305(18)=abb305(3)**2
      abb305(19)=-abb305(18)*abb305(17)
      abb305(11)=abb305(19)+abb305(11)
      abb305(11)=spal5e7*abb305(11)
      abb305(19)=mB**2
      abb305(20)=abb305(19)*spbl5k2
      abb305(21)=-abb305(20)*abb305(7)
      abb305(22)=spbe7k2*abb305(5)
      abb305(23)=abb305(22)*spak1e7
      abb305(24)=abb305(21)*abb305(23)
      abb305(20)=-abb305(20)*abb305(8)
      abb305(25)=abb305(22)*spak4e7
      abb305(26)=abb305(20)*abb305(25)
      abb305(24)=abb305(24)+abb305(26)
      abb305(26)=-abb305(18)*abb305(24)
      abb305(27)=abb305(8)*spak4l6
      abb305(28)=abb305(7)*spak1l6
      abb305(27)=abb305(27)+abb305(28)
      abb305(28)=-mB*abb305(27)
      abb305(29)=abb305(28)*abb305(3)
      abb305(30)=spbk7l5*spae7k7
      abb305(31)=-abb305(30)*spbe7k2*abb305(29)
      abb305(11)=abb305(31)+abb305(11)+abb305(26)
      abb305(11)=4.0_ki*abb305(11)
      abb305(26)=-abb305(19)*abb305(8)
      abb305(31)=abb305(26)*abb305(6)
      abb305(32)=abb305(31)+abb305(16)
      abb305(33)=abb305(32)*spak4l6
      abb305(19)=-abb305(19)*abb305(7)
      abb305(34)=abb305(19)*abb305(6)
      abb305(35)=abb305(34)+abb305(14)
      abb305(36)=abb305(35)*spak1l6
      abb305(33)=abb305(33)+abb305(36)
      abb305(36)=-es12+es712-es71
      abb305(33)=abb305(33)*abb305(36)
      abb305(36)=abb305(16)*mB
      abb305(37)=-spak4l6*abb305(36)
      abb305(38)=abb305(14)*mB
      abb305(39)=-spak1l6*abb305(38)
      abb305(37)=abb305(37)+abb305(39)
      abb305(37)=abb305(3)*abb305(37)
      abb305(39)=spak4k7*abb305(20)
      abb305(40)=spak1k7*abb305(21)
      abb305(39)=abb305(40)+abb305(39)
      abb305(39)=spbk7k2*abb305(5)*abb305(39)
      abb305(10)=spak4l5*abb305(10)
      abb305(9)=spak1l5*abb305(9)
      abb305(9)=abb305(9)+abb305(10)
      abb305(10)=abb305(3)*abb305(5)
      abb305(9)=abb305(10)*abb305(9)
      abb305(15)=spal5k7*spbk7l5*abb305(15)
      abb305(9)=abb305(15)+abb305(33)+abb305(9)+abb305(39)+abb305(37)
      abb305(9)=8.0_ki*abb305(9)
      abb305(15)=spal5e7*abb305(17)
      abb305(15)=abb305(15)+abb305(24)
      abb305(17)=-8.0_ki*abb305(15)
      abb305(23)=abb305(23)*abb305(34)
      abb305(24)=abb305(25)*abb305(31)
      abb305(23)=abb305(23)+abb305(24)
      abb305(24)=8.0_ki*abb305(23)
      abb305(25)=-abb305(18)*abb305(24)
      abb305(29)=abb305(6)*abb305(29)
      abb305(31)=abb305(6)*abb305(5)
      abb305(33)=abb305(26)*abb305(31)
      abb305(34)=spak4k7*abb305(33)
      abb305(31)=abb305(19)*abb305(31)
      abb305(37)=spak1k7*abb305(31)
      abb305(34)=abb305(37)+abb305(34)
      abb305(34)=spbk7k2*abb305(34)
      abb305(34)=abb305(34)+abb305(29)
      abb305(34)=16.0_ki*abb305(34)
      abb305(23)=-16.0_ki*abb305(23)
      abb305(15)=4.0_ki*abb305(15)
      abb305(37)=spbe7k2*abb305(27)
      abb305(39)=4.0_ki*abb305(37)
      abb305(40)=-abb305(18)*abb305(39)
      abb305(37)=-8.0_ki*abb305(37)
      abb305(41)=spae7k7*spbk7k2
      abb305(42)=8.0_ki*abb305(41)
      abb305(43)=-abb305(33)*abb305(42)
      abb305(44)=-spak4k7*abb305(36)
      abb305(45)=-spak1k7*abb305(38)
      abb305(44)=abb305(45)+abb305(44)
      abb305(13)=abb305(13)*abb305(44)
      abb305(44)=abb305(27)*spbe7l5
      abb305(18)=abb305(18)*abb305(44)
      abb305(12)=abb305(12)*abb305(28)*abb305(6)
      abb305(28)=-spak2k7*abb305(12)
      abb305(13)=abb305(28)+abb305(18)+abb305(13)
      abb305(13)=4.0_ki*abb305(13)
      abb305(18)=8.0_ki*abb305(27)
      abb305(27)=spbe7l5*abb305(18)
      abb305(28)=spak4k7*spbk7e7
      abb305(45)=abb305(33)*abb305(28)
      abb305(46)=spak1k7*spbk7e7
      abb305(47)=abb305(31)*abb305(46)
      abb305(45)=abb305(45)+abb305(47)
      abb305(45)=8.0_ki*abb305(45)
      abb305(44)=-4.0_ki*abb305(44)
      abb305(29)=4.0_ki*abb305(29)*abb305(41)
      abb305(42)=-abb305(31)*abb305(42)
      abb305(47)=spbk7k2*abb305(18)
      abb305(48)=4.0_ki*spak2e7
      abb305(12)=abb305(12)*abb305(48)
      abb305(18)=-spbk7l5*abb305(18)
      abb305(49)=-spak4e7*abb305(33)
      abb305(50)=-spak1e7*abb305(31)
      abb305(49)=abb305(49)+abb305(50)
      abb305(49)=8.0_ki*spbk7e7*abb305(49)
      abb305(50)=-abb305(16)*abb305(28)
      abb305(51)=-abb305(14)*abb305(46)
      abb305(50)=abb305(50)+abb305(51)
      abb305(50)=4.0_ki*spal5e7*abb305(50)
      abb305(51)=-spak4l5*abb305(16)
      abb305(52)=-spak1l5*abb305(14)
      abb305(51)=abb305(51)+abb305(52)
      abb305(51)=8.0_ki*abb305(51)
      abb305(52)=abb305(8)*abb305(28)
      abb305(53)=abb305(7)*abb305(46)
      abb305(52)=abb305(52)+abb305(53)
      abb305(52)=4.0_ki*abb305(52)
      abb305(28)=abb305(32)*abb305(28)
      abb305(46)=abb305(35)*abb305(46)
      abb305(28)=abb305(28)+abb305(46)
      abb305(28)=abb305(28)*abb305(48)
      abb305(46)=-spak2k4*abb305(32)
      abb305(48)=spak1k2*abb305(35)
      abb305(46)=abb305(46)+abb305(48)
      abb305(46)=8.0_ki*abb305(46)
      abb305(41)=abb305(41)*abb305(22)
      abb305(48)=-abb305(26)*abb305(41)
      abb305(53)=spal6k7*spbk7e7
      abb305(54)=abb305(53)*spal5e7
      abb305(55)=abb305(16)*abb305(54)
      abb305(48)=abb305(48)+abb305(55)
      abb305(48)=4.0_ki*abb305(48)
      abb305(55)=8.0_ki*spal5l6
      abb305(16)=-abb305(16)*abb305(55)
      abb305(56)=4.0_ki*abb305(53)
      abb305(57)=abb305(8)*abb305(56)
      abb305(8)=16.0_ki*abb305(8)
      abb305(53)=abb305(53)*spak2e7
      abb305(58)=-abb305(32)*abb305(53)
      abb305(22)=abb305(30)*abb305(22)
      abb305(26)=abb305(26)*abb305(22)
      abb305(26)=abb305(58)+abb305(26)
      abb305(26)=4.0_ki*abb305(26)
      abb305(30)=spak2l6*abb305(32)
      abb305(20)=-abb305(5)*abb305(20)
      abb305(32)=abb305(36)*abb305(10)
      abb305(20)=abb305(30)+abb305(20)+abb305(32)
      abb305(20)=8.0_ki*abb305(20)
      abb305(30)=-16.0_ki*abb305(33)
      abb305(32)=-abb305(19)*abb305(41)
      abb305(33)=abb305(14)*abb305(54)
      abb305(32)=abb305(32)+abb305(33)
      abb305(32)=4.0_ki*abb305(32)
      abb305(14)=-abb305(14)*abb305(55)
      abb305(33)=abb305(56)*abb305(7)
      abb305(7)=16.0_ki*abb305(7)
      abb305(36)=-abb305(35)*abb305(53)
      abb305(19)=abb305(19)*abb305(22)
      abb305(19)=abb305(36)+abb305(19)
      abb305(19)=4.0_ki*abb305(19)
      abb305(22)=spak2l6*abb305(35)
      abb305(21)=-abb305(5)*abb305(21)
      abb305(10)=abb305(38)*abb305(10)
      abb305(10)=abb305(22)+abb305(21)+abb305(10)
      abb305(10)=8.0_ki*abb305(10)
      abb305(21)=-16.0_ki*abb305(31)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd305h1
