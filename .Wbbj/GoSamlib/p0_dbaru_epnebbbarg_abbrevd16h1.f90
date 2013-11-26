module     p0_dbaru_epnebbbarg_abbrevd16h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(51), public :: abb16
   complex(ki), public :: R2d16
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
      abb16(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb16(2)=es56**(-1)
      abb16(3)=es71**(-1)
      abb16(4)=spak2l5**(-1)
      abb16(5)=spbl6k2**(-1)
      abb16(6)=spak2l6**(-1)
      abb16(7)=spbl5k2**(-1)
      abb16(8)=TR*gW
      abb16(8)=CVDU*i_*spak1e7*abb16(3)*abb16(2)*abb16(1)*abb16(8)**2
      abb16(9)=c3*abb16(8)*NC
      abb16(8)=abb16(8)*c4
      abb16(8)=abb16(9)-abb16(8)
      abb16(9)=spbk7e7*abb16(8)
      abb16(10)=-spbk3k2*abb16(9)
      abb16(11)=spbl5k3*spak3k4
      abb16(12)=abb16(11)*abb16(10)
      abb16(13)=abb16(12)*spal6k7
      abb16(8)=-spbe7k1*abb16(8)
      abb16(14)=-spbk3k2*abb16(8)
      abb16(15)=abb16(11)*abb16(14)
      abb16(16)=abb16(15)*spak1l6
      abb16(17)=spbk3k2**2
      abb16(18)=-abb16(17)*abb16(8)
      abb16(19)=mB**2
      abb16(20)=abb16(19)*abb16(5)
      abb16(21)=abb16(20)*abb16(4)
      abb16(22)=abb16(21)*spak3k4
      abb16(23)=abb16(22)*spak1k2
      abb16(24)=abb16(23)*abb16(18)
      abb16(17)=-abb16(17)*abb16(9)
      abb16(25)=abb16(22)*spak2k7
      abb16(26)=abb16(25)*abb16(17)
      abb16(13)=abb16(13)+abb16(16)+abb16(24)+abb16(26)
      abb16(16)=8.0_ki*abb16(13)
      abb16(24)=abb16(8)*spbl5k2
      abb16(26)=abb16(24)*spak1l5
      abb16(27)=abb16(9)*spbl5k2
      abb16(28)=abb16(27)*spal5k7
      abb16(26)=abb16(26)+abb16(28)
      abb16(28)=-spbl5k3*abb16(26)
      abb16(29)=abb16(10)*spbl5k2
      abb16(19)=abb16(19)*abb16(4)
      abb16(30)=3.0_ki*abb16(19)
      abb16(31)=-abb16(10)*abb16(30)
      abb16(31)=-abb16(29)+abb16(31)
      abb16(31)=spak2k7*abb16(31)
      abb16(32)=abb16(14)*spbl5k2
      abb16(33)=-abb16(14)*abb16(30)
      abb16(33)=-abb16(32)+abb16(33)
      abb16(33)=spak1k2*abb16(33)
      abb16(34)=abb16(20)*spak2k7
      abb16(35)=-abb16(34)*abb16(29)
      abb16(36)=abb16(20)*spak1k2
      abb16(37)=-abb16(36)*abb16(32)
      abb16(35)=abb16(35)+abb16(37)
      abb16(35)=abb16(6)*abb16(35)
      abb16(37)=abb16(24)*spak1l6
      abb16(38)=abb16(27)*spal6k7
      abb16(37)=abb16(37)+abb16(38)
      abb16(38)=-spbl6k3*abb16(37)
      abb16(39)=abb16(8)*spak1l6
      abb16(40)=abb16(9)*spal6k7
      abb16(39)=abb16(39)+abb16(40)
      abb16(40)=abb16(39)*spbl5k3
      abb16(41)=spbl6k2*abb16(40)
      abb16(42)=spak4k7*abb16(27)
      abb16(43)=spak1k4*abb16(24)
      abb16(42)=abb16(42)+abb16(43)
      abb16(42)=spbk4k3*abb16(42)
      abb16(28)=abb16(42)+2.0_ki*abb16(41)+abb16(38)+abb16(35)+abb16(28)+abb16(&
      &31)+abb16(33)
      abb16(28)=spak4l6*abb16(28)
      abb16(31)=spbl5k3*abb16(37)
      abb16(33)=abb16(21)*spak2k7
      abb16(35)=-abb16(33)*abb16(29)
      abb16(38)=abb16(21)*spak1k2
      abb16(41)=-abb16(38)*abb16(32)
      abb16(31)=abb16(35)+abb16(41)+abb16(31)
      abb16(31)=spak4l5*abb16(31)
      abb16(35)=spak4k7*abb16(29)
      abb16(41)=spak1k4*abb16(32)
      abb16(35)=abb16(35)+abb16(41)
      abb16(35)=spak2l6*abb16(35)
      abb16(31)=abb16(35)+abb16(31)
      abb16(13)=-abb16(13)+2.0_ki*abb16(31)+abb16(28)
      abb16(13)=2.0_ki*abb16(13)
      abb16(28)=abb16(14)*spak1k4
      abb16(31)=abb16(10)*spak4k7
      abb16(28)=abb16(28)+abb16(31)
      abb16(31)=8.0_ki*abb16(21)*abb16(28)
      abb16(35)=4.0_ki*spak2l6
      abb16(41)=abb16(35)*spak3k4
      abb16(29)=abb16(29)*abb16(41)
      abb16(22)=8.0_ki*abb16(22)
      abb16(42)=abb16(10)*abb16(22)
      abb16(18)=abb16(18)*spak1k2
      abb16(17)=abb16(17)*spak2k7
      abb16(17)=abb16(18)+abb16(17)
      abb16(18)=abb16(19)*abb16(7)
      abb16(18)=abb16(18)+1.0_ki
      abb16(19)=-abb16(6)*abb16(20)
      abb16(19)=abb16(19)-abb16(18)
      abb16(17)=abb16(19)*abb16(17)*spak3k4
      abb16(19)=spal6k7*abb16(10)
      abb16(20)=spak1l6*abb16(14)
      abb16(19)=abb16(19)+abb16(20)
      abb16(19)=spbl6k3*spak3k4*abb16(19)
      abb16(20)=spal5k7*abb16(12)
      abb16(43)=spak1l5*abb16(15)
      abb16(17)=abb16(43)+abb16(20)+abb16(19)+abb16(17)
      abb16(17)=2.0_ki*abb16(17)
      abb16(19)=4.0_ki*abb16(28)
      abb16(20)=-2.0_ki*abb16(28)
      abb16(28)=4.0_ki*spak3k4
      abb16(43)=-abb16(10)*abb16(28)
      abb16(11)=abb16(11)*abb16(39)
      abb16(25)=-abb16(10)*abb16(25)
      abb16(23)=-abb16(14)*abb16(23)
      abb16(23)=abb16(25)+abb16(23)
      abb16(11)=2.0_ki*abb16(23)+abb16(11)
      abb16(11)=spbl6k3*abb16(11)
      abb16(23)=abb16(12)*spak2k7
      abb16(25)=abb16(15)*spak1k2
      abb16(23)=abb16(23)+abb16(25)
      abb16(18)=-abb16(23)*abb16(18)
      abb16(23)=-spal5k7*abb16(9)
      abb16(25)=-spak1l5*abb16(8)
      abb16(23)=abb16(25)+abb16(23)
      abb16(25)=spak3k4*spbl5k3**2
      abb16(23)=abb16(25)*abb16(23)
      abb16(44)=-abb16(34)*abb16(12)
      abb16(45)=-abb16(36)*abb16(15)
      abb16(44)=abb16(44)+abb16(45)
      abb16(44)=abb16(6)*abb16(44)
      abb16(11)=abb16(11)+abb16(44)+abb16(23)+abb16(18)
      abb16(11)=2.0_ki*abb16(11)
      abb16(18)=abb16(9)*spbl5k3
      abb16(23)=abb16(18)*spak4k7
      abb16(44)=abb16(8)*spbl5k3
      abb16(45)=abb16(44)*spak1k4
      abb16(23)=abb16(23)+abb16(45)
      abb16(45)=4.0_ki*abb16(23)
      abb16(23)=-2.0_ki*abb16(23)
      abb16(25)=abb16(25)*abb16(39)
      abb16(12)=-abb16(12)*abb16(33)
      abb16(15)=-abb16(15)*abb16(38)
      abb16(12)=abb16(12)+abb16(15)+abb16(25)
      abb16(12)=4.0_ki*abb16(12)
      abb16(15)=8.0_ki*abb16(37)
      abb16(25)=-2.0_ki*abb16(37)
      abb16(37)=-abb16(27)*abb16(35)
      abb16(21)=8.0_ki*abb16(21)
      abb16(46)=-abb16(9)*abb16(21)
      abb16(47)=spbl6k2*abb16(39)
      abb16(48)=abb16(8)*spak1k4
      abb16(49)=abb16(9)*spak4k7
      abb16(48)=abb16(48)+abb16(49)
      abb16(49)=-spbk4k2*abb16(48)
      abb16(50)=spak3k7*abb16(10)
      abb16(51)=spak1k3*abb16(14)
      abb16(26)=abb16(51)+abb16(49)+abb16(50)+abb16(47)+abb16(26)
      abb16(26)=2.0_ki*abb16(26)
      abb16(47)=4.0_ki*abb16(9)
      abb16(9)=abb16(9)*abb16(30)
      abb16(9)=abb16(27)+abb16(9)
      abb16(9)=spak2k7*abb16(9)
      abb16(30)=abb16(8)*abb16(30)
      abb16(30)=abb16(24)+abb16(30)
      abb16(30)=spak1k2*abb16(30)
      abb16(34)=abb16(34)*abb16(27)
      abb16(36)=abb16(24)*abb16(36)
      abb16(34)=abb16(34)+abb16(36)
      abb16(34)=abb16(6)*abb16(34)
      abb16(36)=spbl6l5*abb16(39)
      abb16(39)=-spbl5k4*abb16(48)
      abb16(18)=-spak3k7*abb16(18)
      abb16(44)=-spak1k3*abb16(44)
      abb16(9)=abb16(44)+abb16(18)+abb16(39)-3.0_ki*abb16(36)+abb16(34)+abb16(9&
      &)+abb16(30)
      abb16(9)=2.0_ki*abb16(9)
      abb16(18)=abb16(27)*abb16(33)
      abb16(27)=abb16(24)*abb16(38)
      abb16(18)=abb16(18)+abb16(27)
      abb16(18)=4.0_ki*abb16(18)
      abb16(10)=-abb16(10)*abb16(33)
      abb16(27)=-abb16(14)*abb16(38)
      abb16(10)=abb16(10)+abb16(27)+abb16(40)
      abb16(10)=2.0_ki*abb16(10)
      abb16(27)=-abb16(32)*abb16(41)
      abb16(22)=-abb16(14)*abb16(22)
      abb16(14)=abb16(14)*abb16(28)
      abb16(24)=abb16(24)*abb16(35)
      abb16(21)=abb16(8)*abb16(21)
      abb16(8)=-4.0_ki*abb16(8)
      R2d16=0.0_ki
      rat2 = rat2 + R2d16
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='16' value='", &
          & R2d16, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd16h1
