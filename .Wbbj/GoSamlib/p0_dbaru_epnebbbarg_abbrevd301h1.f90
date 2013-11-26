module     p0_dbaru_epnebbbarg_abbrevd301h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(57), public :: abb301
   complex(ki), public :: R2d301
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
      abb301(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb301(2)=1.0_ki/(es34+es567-es12-es234)
      abb301(3)=NC**(-1)
      abb301(4)=sqrt(mB**2)
      abb301(5)=spbl6k2**(-1)
      abb301(6)=spak2l5**(-1)
      abb301(7)=spbl5k2**(-1)
      abb301(8)=CVDU*i_*spak1k4*abb301(2)*abb301(1)
      abb301(9)=TR*gW
      abb301(9)=abb301(9)**2
      abb301(10)=abb301(8)*c4*abb301(9)*abb301(3)**2
      abb301(8)=abb301(8)*abb301(9)*abb301(3)
      abb301(9)=abb301(8)*c3
      abb301(8)=abb301(8)*c1
      abb301(8)=-abb301(9)+abb301(10)-abb301(8)
      abb301(9)=spbk4k3*abb301(8)
      abb301(10)=-spak2k4*abb301(9)
      abb301(8)=spbk3k1*abb301(8)
      abb301(11)=spak1k2*abb301(8)
      abb301(10)=abb301(11)+abb301(10)
      abb301(11)=spbk7k2*abb301(4)
      abb301(12)=spbl5k2*mB
      abb301(13)=spbe7k2*spae7k7
      abb301(14)=abb301(13)*abb301(5)
      abb301(10)=abb301(11)*abb301(10)*abb301(12)*abb301(14)
      abb301(15)=abb301(13)*spbl5k2
      abb301(16)=-abb301(15)*abb301(9)
      abb301(17)=spak4l6*abb301(16)
      abb301(15)=-abb301(15)*abb301(8)
      abb301(18)=spak1l6*abb301(15)
      abb301(17)=abb301(17)+abb301(18)
      abb301(17)=spak2l5*spbk7l5*abb301(17)
      abb301(10)=abb301(17)+abb301(10)
      abb301(10)=4.0_ki*abb301(10)
      abb301(17)=abb301(9)*spak4l6
      abb301(18)=abb301(8)*spak1l6
      abb301(17)=abb301(17)+abb301(18)
      abb301(18)=-8.0_ki*spak2l5*abb301(17)*spbl5k2**2
      abb301(19)=-abb301(13)*abb301(9)
      abb301(20)=-spak4l6*abb301(19)
      abb301(21)=-abb301(13)*abb301(8)
      abb301(22)=-spak1l6*abb301(21)
      abb301(20)=abb301(20)+abb301(22)
      abb301(20)=8.0_ki*spbk7l5*abb301(20)
      abb301(22)=-spbl5k2*abb301(9)
      abb301(23)=abb301(22)*spak4l6
      abb301(24)=-spbl5k2*abb301(8)
      abb301(25)=abb301(24)*spak1l6
      abb301(23)=abb301(23)+abb301(25)
      abb301(25)=-16.0_ki*abb301(23)
      abb301(26)=spak4l5*abb301(9)
      abb301(27)=spak1l5*abb301(8)
      abb301(26)=abb301(27)+abb301(26)
      abb301(27)=abb301(6)*mB**2
      abb301(28)=abb301(27)*abb301(5)
      abb301(26)=abb301(26)*abb301(28)*spae7k7
      abb301(29)=-spae7k7*abb301(9)
      abb301(30)=abb301(29)*spak4l6
      abb301(31)=-spae7k7*abb301(8)
      abb301(32)=abb301(31)*spak1l6
      abb301(30)=abb301(30)+abb301(32)
      abb301(32)=abb301(7)*abb301(27)*abb301(30)
      abb301(26)=abb301(32)+abb301(26)
      abb301(32)=spbk7k2*spbe7l5
      abb301(26)=abb301(32)*abb301(26)
      abb301(33)=spak4e7*abb301(9)
      abb301(34)=spak1e7*abb301(8)
      abb301(33)=abb301(33)+abb301(34)
      abb301(34)=abb301(5)*spbe7k2
      abb301(12)=abb301(4)*abb301(33)*abb301(12)*abb301(34)
      abb301(23)=spal5e7*abb301(23)*spbe7l5
      abb301(12)=abb301(12)-abb301(23)
      abb301(23)=abb301(12)+abb301(26)
      abb301(23)=8.0_ki*abb301(23)
      abb301(26)=spak4l5*abb301(22)
      abb301(33)=spak1l5*abb301(24)
      abb301(26)=abb301(33)+abb301(26)
      abb301(26)=abb301(28)*abb301(26)
      abb301(33)=abb301(27)*abb301(9)
      abb301(35)=abb301(6)*mB
      abb301(36)=-abb301(35)*abb301(9)
      abb301(37)=abb301(4)*abb301(36)
      abb301(33)=abb301(37)+abb301(33)
      abb301(33)=spak4l6*abb301(33)
      abb301(37)=abb301(27)*abb301(8)
      abb301(38)=-abb301(35)*abb301(8)
      abb301(39)=abb301(4)*abb301(38)
      abb301(37)=abb301(39)+abb301(37)
      abb301(37)=spak1l6*abb301(37)
      abb301(26)=abb301(33)+abb301(37)+abb301(26)
      abb301(26)=16.0_ki*abb301(26)
      abb301(33)=abb301(34)*abb301(27)
      abb301(34)=abb301(9)*abb301(33)
      abb301(37)=-spak4e7*abb301(34)
      abb301(33)=abb301(8)*abb301(33)
      abb301(39)=-spak1e7*abb301(33)
      abb301(37)=abb301(37)+abb301(39)
      abb301(37)=32.0_ki*abb301(37)
      abb301(12)=-4.0_ki*abb301(12)
      abb301(39)=abb301(22)*spak4e7
      abb301(40)=abb301(24)*spak1e7
      abb301(39)=abb301(39)+abb301(40)
      abb301(40)=8.0_ki*abb301(39)
      abb301(39)=-4.0_ki*abb301(39)
      abb301(41)=abb301(22)*spal6e7
      abb301(42)=-8.0_ki*abb301(41)
      abb301(41)=4.0_ki*abb301(41)
      abb301(43)=spak4l6*abb301(4)
      abb301(36)=abb301(36)*abb301(43)
      abb301(44)=spak1l6*abb301(4)
      abb301(38)=abb301(38)*abb301(44)
      abb301(36)=abb301(36)+abb301(38)
      abb301(36)=abb301(36)*spbk7e7
      abb301(38)=4.0_ki*spak2k7*abb301(36)
      abb301(34)=-spak2k4*abb301(34)
      abb301(33)=spak1k2*abb301(33)
      abb301(33)=abb301(34)+abb301(33)
      abb301(34)=abb301(9)*abb301(28)
      abb301(45)=abb301(34)*spbk7e7
      abb301(46)=spak4k7*abb301(45)
      abb301(47)=abb301(8)*abb301(28)
      abb301(48)=abb301(47)*spbk7e7
      abb301(49)=spak1k7*abb301(48)
      abb301(33)=abb301(49)+2.0_ki*abb301(33)+abb301(46)
      abb301(33)=8.0_ki*abb301(33)
      abb301(46)=abb301(24)*spal6e7
      abb301(49)=-8.0_ki*abb301(46)
      abb301(46)=4.0_ki*abb301(46)
      abb301(50)=4.0_ki*spak2e7
      abb301(36)=-abb301(50)*abb301(36)
      abb301(45)=-spak4e7*abb301(45)
      abb301(48)=-spak1e7*abb301(48)
      abb301(45)=abb301(45)+abb301(48)
      abb301(45)=8.0_ki*abb301(45)
      abb301(48)=-spak2k4*abb301(16)
      abb301(51)=spak1k2*abb301(15)
      abb301(48)=abb301(48)+abb301(51)
      abb301(48)=4.0_ki*abb301(48)
      abb301(51)=spak2k4*abb301(22)
      abb301(52)=-spak1k2*abb301(24)
      abb301(51)=abb301(51)+abb301(52)
      abb301(51)=8.0_ki*abb301(51)
      abb301(52)=abb301(22)*abb301(50)
      abb301(50)=abb301(24)*abb301(50)
      abb301(53)=4.0_ki*spbe7l5
      abb301(30)=spbk7l5*abb301(30)*abb301(53)
      abb301(54)=4.0_ki*spak2l6
      abb301(16)=abb301(16)*abb301(54)
      abb301(19)=4.0_ki*abb301(19)
      abb301(29)=abb301(29)*abb301(53)
      abb301(11)=4.0_ki*abb301(11)
      abb301(11)=abb301(11)*abb301(14)*mB
      abb301(14)=abb301(9)*abb301(11)
      abb301(55)=16.0_ki*abb301(9)
      abb301(32)=abb301(32)*abb301(4)
      abb301(32)=4.0_ki*abb301(32)
      abb301(56)=abb301(5)*mB
      abb301(32)=abb301(32)*abb301(56)*spae7k7
      abb301(57)=-abb301(9)*abb301(32)
      abb301(56)=abb301(56)*abb301(4)
      abb301(56)=abb301(56)+spak2l6
      abb301(22)=-8.0_ki*abb301(22)*abb301(56)
      abb301(34)=16.0_ki*abb301(34)
      abb301(43)=-abb301(43)*abb301(9)
      abb301(44)=-abb301(44)*abb301(8)
      abb301(43)=abb301(43)+abb301(44)
      abb301(35)=4.0_ki*abb301(43)*abb301(35)*abb301(13)
      abb301(28)=abb301(28)*abb301(13)
      abb301(9)=abb301(9)*abb301(28)
      abb301(43)=4.0_ki*abb301(9)
      abb301(13)=abb301(7)*abb301(17)*abb301(13)*abb301(27)
      abb301(9)=-spak4l5*abb301(9)
      abb301(17)=abb301(8)*abb301(28)
      abb301(27)=-spak1l5*abb301(17)
      abb301(9)=abb301(13)+abb301(27)+abb301(9)
      abb301(9)=4.0_ki*spbk7k2*abb301(9)
      abb301(13)=abb301(15)*abb301(54)
      abb301(15)=4.0_ki*abb301(21)
      abb301(21)=abb301(31)*abb301(53)
      abb301(11)=abb301(8)*abb301(11)
      abb301(27)=16.0_ki*abb301(8)
      abb301(8)=-abb301(8)*abb301(32)
      abb301(24)=-8.0_ki*abb301(24)*abb301(56)
      abb301(28)=16.0_ki*abb301(47)
      abb301(17)=4.0_ki*abb301(17)
      R2d301=0.0_ki
      rat2 = rat2 + R2d301
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='301' value='", &
          & R2d301, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd301h1
