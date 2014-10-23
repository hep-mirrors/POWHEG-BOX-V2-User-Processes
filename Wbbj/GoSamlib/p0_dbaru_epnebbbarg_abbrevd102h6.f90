module     p0_dbaru_epnebbbarg_abbrevd102h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(61), public :: abb102
   complex(ki), public :: R2d102
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
      abb102(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb102(2)=1.0_ki/(-es71+es56-es567+es234)
      abb102(3)=NC**(-1)
      abb102(4)=sqrt2**(-1)
      abb102(5)=es56**(-1)
      abb102(6)=spak2l5**(-1)
      abb102(7)=spbl5k2**(-1)
      abb102(8)=spbk7k2**(-1)
      abb102(9)=spak2l6**(-1)
      abb102(10)=c4*abb102(3)**2
      abb102(11)=c1*abb102(3)
      abb102(10)=abb102(10)-abb102(11)
      abb102(11)=abb102(10)*spak1l5
      abb102(12)=abb102(5)*abb102(8)*i_*CVDU*abb102(4)*abb102(2)
      abb102(13)=TR*gW
      abb102(14)=abb102(13)*mB
      abb102(14)=abb102(12)*abb102(14)**2
      abb102(15)=abb102(14)*abb102(9)
      abb102(16)=spbk3k2*abb102(1)
      abb102(17)=abb102(15)*abb102(16)
      abb102(18)=abb102(17)*abb102(11)
      abb102(19)=abb102(18)*spak4k7
      abb102(20)=abb102(14)*abb102(11)*abb102(16)
      abb102(21)=spbl6k2*abb102(7)
      abb102(22)=abb102(21)*abb102(6)
      abb102(23)=abb102(22)*spak4k7
      abb102(24)=abb102(23)*abb102(20)
      abb102(19)=abb102(19)+abb102(24)
      abb102(24)=32.0_ki*abb102(19)
      abb102(15)=abb102(15)*abb102(10)*abb102(1)
      abb102(25)=spbk3k2**2
      abb102(26)=-abb102(25)*abb102(15)
      abb102(27)=abb102(26)*spak1k2
      abb102(11)=abb102(11)*abb102(12)*abb102(13)**2
      abb102(12)=-abb102(1)*abb102(11)
      abb102(13)=-abb102(25)*abb102(12)
      abb102(28)=abb102(13)*spbl6l5
      abb102(27)=abb102(27)-abb102(28)
      abb102(28)=-spak3k7*abb102(27)
      abb102(17)=-abb102(17)*abb102(10)
      abb102(29)=abb102(17)*spak4k7
      abb102(30)=abb102(29)*spak1k2
      abb102(31)=-spbk4k2*abb102(30)
      abb102(11)=abb102(16)*abb102(11)
      abb102(16)=abb102(11)*spbl6l5
      abb102(32)=spbk4k2*spak4k7
      abb102(33)=abb102(16)*abb102(32)
      abb102(28)=abb102(28)+abb102(31)+abb102(33)
      abb102(28)=spak4l5*abb102(28)
      abb102(31)=es12*abb102(7)
      abb102(33)=abb102(26)*abb102(31)
      abb102(13)=abb102(13)*spbl6k1
      abb102(13)=abb102(33)+abb102(13)
      abb102(33)=spak3k7*abb102(13)
      abb102(11)=abb102(11)*spbl6k1
      abb102(34)=abb102(11)*abb102(32)
      abb102(35)=abb102(29)*abb102(31)
      abb102(36)=spbk4k2*abb102(35)
      abb102(33)=abb102(33)+abb102(34)+abb102(36)
      abb102(33)=spak1k4*abb102(33)
      abb102(34)=es234-es34
      abb102(36)=-es23+abb102(34)
      abb102(36)=abb102(19)*abb102(36)
      abb102(10)=-abb102(1)*abb102(10)*abb102(14)*spak1l5
      abb102(14)=-abb102(25)*abb102(10)
      abb102(25)=abb102(14)*abb102(22)
      abb102(37)=-spak1l5*abb102(26)
      abb102(25)=abb102(25)+abb102(37)
      abb102(38)=-spak2k4*spak3k7*abb102(25)
      abb102(21)=abb102(21)*spak1k2
      abb102(29)=abb102(29)*abb102(21)
      abb102(39)=-spbk4k2*abb102(29)
      abb102(26)=abb102(26)*abb102(21)
      abb102(40)=-spak3k7*abb102(26)
      abb102(39)=abb102(39)+abb102(40)
      abb102(39)=spak4l6*abb102(39)
      abb102(28)=abb102(39)+abb102(38)+abb102(28)+abb102(33)+abb102(36)
      abb102(28)=8.0_ki*abb102(28)
      abb102(33)=-16.0_ki*abb102(19)
      abb102(36)=abb102(17)*spak1k2
      abb102(36)=abb102(36)-abb102(16)
      abb102(38)=abb102(36)*spak4l5
      abb102(39)=abb102(31)*abb102(17)
      abb102(39)=abb102(11)+abb102(39)
      abb102(40)=abb102(39)*spak1k4
      abb102(20)=abb102(20)*abb102(22)
      abb102(18)=abb102(20)+abb102(18)
      abb102(20)=abb102(18)*spak2k4
      abb102(17)=abb102(21)*abb102(17)
      abb102(41)=abb102(17)*spak4l6
      abb102(20)=-abb102(41)-abb102(38)+abb102(40)-abb102(20)
      abb102(20)=16.0_ki*abb102(20)
      abb102(38)=8.0_ki*spak3k4
      abb102(40)=abb102(38)*spak4k7
      abb102(41)=-abb102(26)*abb102(40)
      abb102(42)=abb102(38)*spak3k7
      abb102(26)=-abb102(42)*abb102(26)
      abb102(43)=-abb102(17)*abb102(38)
      abb102(44)=16.0_ki*abb102(29)
      abb102(45)=8.0_ki*abb102(29)
      abb102(46)=-abb102(27)*abb102(40)
      abb102(27)=-abb102(27)*abb102(42)
      abb102(47)=-abb102(36)*abb102(38)
      abb102(16)=abb102(16)*spak4k7
      abb102(16)=abb102(16)-abb102(30)
      abb102(30)=16.0_ki*abb102(16)
      abb102(48)=-8.0_ki*abb102(16)
      abb102(49)=-spak1l5*abb102(15)
      abb102(50)=abb102(49)*spak4k7
      abb102(51)=abb102(10)*abb102(23)
      abb102(50)=abb102(50)+abb102(51)
      abb102(51)=spbk4k2*abb102(50)
      abb102(52)=-spak3k7*abb102(18)
      abb102(51)=abb102(51)+abb102(52)
      abb102(51)=16.0_ki*abb102(51)
      abb102(10)=abb102(10)*abb102(22)
      abb102(10)=abb102(10)+abb102(49)
      abb102(22)=-abb102(10)*abb102(34)
      abb102(34)=abb102(12)*spbl6l5
      abb102(49)=abb102(34)*spbk4k2
      abb102(52)=abb102(15)*spbk4k2
      abb102(53)=abb102(52)*spak1k2
      abb102(49)=abb102(49)-abb102(53)
      abb102(54)=-spak4l5*abb102(49)
      abb102(12)=abb102(12)*spbl6k1
      abb102(55)=abb102(12)*spbk4k2
      abb102(56)=abb102(52)*abb102(31)
      abb102(55)=abb102(55)+abb102(56)
      abb102(57)=-spak1k4*abb102(55)
      abb102(58)=-spak3l5*abb102(36)
      abb102(59)=spak1k3*abb102(39)
      abb102(52)=abb102(52)*abb102(21)
      abb102(60)=spak4l6*abb102(52)
      abb102(61)=-spak3l6*abb102(17)
      abb102(22)=abb102(61)+abb102(59)+abb102(58)+abb102(60)+abb102(54)+abb102(&
      &57)+abb102(22)
      abb102(22)=16.0_ki*abb102(22)
      abb102(54)=-16.0_ki*abb102(10)
      abb102(57)=-spak4k7*abb102(52)
      abb102(58)=spak3k7*abb102(17)
      abb102(57)=abb102(57)+abb102(58)
      abb102(57)=8.0_ki*abb102(57)
      abb102(21)=8.0_ki*abb102(15)*abb102(21)
      abb102(58)=spak3k7*abb102(36)
      abb102(53)=-spak4k7*abb102(53)
      abb102(59)=abb102(32)*abb102(34)
      abb102(53)=abb102(58)+abb102(53)+abb102(59)
      abb102(53)=8.0_ki*abb102(53)
      abb102(58)=spak1k2*abb102(15)
      abb102(34)=abb102(58)-abb102(34)
      abb102(34)=8.0_ki*abb102(34)
      abb102(58)=spak3l5*abb102(16)
      abb102(11)=abb102(11)*spak4k7
      abb102(11)=abb102(11)+abb102(35)
      abb102(35)=spak1k3*abb102(11)
      abb102(50)=-es23*abb102(50)
      abb102(59)=-spak3l6*abb102(29)
      abb102(35)=abb102(59)+abb102(50)+abb102(58)+abb102(35)
      abb102(50)=8.0_ki*spbk4k3
      abb102(35)=abb102(35)*abb102(50)
      abb102(36)=abb102(36)*spal5k7
      abb102(58)=abb102(39)*spak1k7
      abb102(59)=abb102(18)*spak2k7
      abb102(17)=abb102(17)*spal6k7
      abb102(17)=abb102(36)+abb102(17)+abb102(58)-abb102(59)
      abb102(36)=16.0_ki*abb102(17)
      abb102(17)=-8.0_ki*abb102(17)
      abb102(49)=-spal5k7*abb102(49)
      abb102(10)=-spak2k7*spbk4k2*abb102(10)
      abb102(55)=spak1k7*abb102(55)
      abb102(52)=spal6k7*abb102(52)
      abb102(10)=abb102(52)+abb102(55)+abb102(49)+abb102(10)
      abb102(10)=16.0_ki*abb102(10)
      abb102(16)=-spak4l5*abb102(16)
      abb102(49)=-spak1k4*abb102(11)
      abb102(19)=spak2k4*abb102(19)
      abb102(29)=spak4l6*abb102(29)
      abb102(16)=abb102(29)+abb102(19)+abb102(16)+abb102(49)
      abb102(16)=abb102(16)*abb102(50)
      abb102(19)=spak4k7*abb102(37)
      abb102(14)=abb102(14)*abb102(23)
      abb102(14)=abb102(19)+abb102(14)
      abb102(14)=abb102(14)*abb102(38)
      abb102(19)=abb102(25)*abb102(42)
      abb102(18)=abb102(18)*abb102(38)
      abb102(23)=-abb102(13)*abb102(40)
      abb102(13)=-abb102(13)*abb102(42)
      abb102(25)=-abb102(39)*abb102(38)
      abb102(29)=16.0_ki*abb102(11)
      abb102(11)=8.0_ki*abb102(11)
      abb102(37)=spak3k7*abb102(39)
      abb102(32)=-abb102(32)*abb102(12)
      abb102(38)=-spak4k7*abb102(56)
      abb102(32)=abb102(37)+abb102(32)+abb102(38)
      abb102(32)=8.0_ki*abb102(32)
      abb102(15)=abb102(15)*abb102(31)
      abb102(12)=abb102(12)+abb102(15)
      abb102(12)=8.0_ki*abb102(12)
      R2d102=0.0_ki
      rat2 = rat2 + R2d102
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='102' value='", &
          & R2d102, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd102h6
