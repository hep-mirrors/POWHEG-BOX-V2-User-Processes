module     p0_dbaru_epnebbbarg_abbrevd102h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(57), public :: abb102
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
      abb102(10)=spbl6k2**(-1)
      abb102(11)=abb102(6)**2
      abb102(12)=mB**3
      abb102(13)=abb102(11)*abb102(12)
      abb102(14)=c1*abb102(3)
      abb102(15)=TR*gW
      abb102(15)=abb102(8)*abb102(15)**2*CVDU*i_*spak1k2*abb102(5)*abb102(4)*ab&
      &b102(2)*abb102(1)
      abb102(16)=abb102(15)*spbk3k2
      abb102(17)=abb102(14)*abb102(16)
      abb102(18)=abb102(13)*abb102(17)
      abb102(19)=c4*abb102(3)**2
      abb102(20)=abb102(19)*abb102(16)
      abb102(21)=abb102(20)*abb102(12)
      abb102(11)=abb102(21)*abb102(11)
      abb102(11)=abb102(11)-abb102(18)
      abb102(18)=spbl6k2*abb102(7)
      abb102(22)=abb102(18)*spak4k7
      abb102(23)=abb102(22)*abb102(11)
      abb102(24)=abb102(9)**2
      abb102(25)=abb102(24)*abb102(12)
      abb102(26)=abb102(25)*abb102(17)
      abb102(21)=abb102(21)*abb102(24)
      abb102(21)=abb102(21)-abb102(26)
      abb102(24)=spbl5k2*abb102(10)
      abb102(26)=abb102(24)*spak4k7
      abb102(27)=abb102(26)*abb102(21)
      abb102(17)=abb102(17)-abb102(20)
      abb102(12)=abb102(6)*abb102(12)*abb102(9)
      abb102(17)=abb102(12)*abb102(17)
      abb102(20)=2.0_ki*spak4k7
      abb102(28)=abb102(20)*abb102(17)
      abb102(23)=-abb102(28)+abb102(23)+abb102(27)
      abb102(27)=32.0_ki*abb102(23)
      abb102(28)=es234-es34
      abb102(29)=-es23+abb102(28)
      abb102(29)=abb102(23)*abb102(29)
      abb102(14)=abb102(14)-abb102(19)
      abb102(19)=-abb102(15)*abb102(14)
      abb102(25)=-abb102(25)*abb102(19)
      abb102(30)=spbk3k2**2
      abb102(31)=-abb102(30)*abb102(25)
      abb102(32)=abb102(31)*abb102(24)
      abb102(13)=-abb102(13)*abb102(19)
      abb102(33)=-abb102(30)*abb102(13)
      abb102(34)=abb102(33)*abb102(18)
      abb102(12)=abb102(19)*abb102(12)
      abb102(19)=abb102(30)*abb102(12)
      abb102(32)=abb102(34)+abb102(32)+2.0_ki*abb102(19)
      abb102(34)=-spak2k4*spak3k7*abb102(32)
      abb102(14)=abb102(14)*mB
      abb102(16)=-abb102(16)*abb102(14)
      abb102(35)=-abb102(6)*abb102(16)
      abb102(36)=abb102(35)*spbl6k1
      abb102(16)=-abb102(9)*abb102(16)
      abb102(37)=abb102(16)*spbl5k1
      abb102(36)=abb102(36)+abb102(37)
      abb102(37)=spak4k7*abb102(36)
      abb102(38)=-spbk4k2*abb102(37)
      abb102(14)=-abb102(15)*abb102(14)
      abb102(15)=-abb102(9)*abb102(14)
      abb102(39)=-abb102(30)*abb102(15)
      abb102(40)=abb102(39)*spbl5k1
      abb102(14)=-abb102(6)*abb102(14)
      abb102(30)=-abb102(30)*abb102(14)
      abb102(41)=abb102(30)*spbl6k1
      abb102(40)=abb102(40)+abb102(41)
      abb102(41)=spak3k7*abb102(40)
      abb102(38)=abb102(38)+abb102(41)
      abb102(38)=spak1k4*abb102(38)
      abb102(16)=abb102(16)*spbl6l5
      abb102(41)=abb102(16)*spak4k7
      abb102(42)=spbk4k2*abb102(41)
      abb102(43)=spak3k7*spbl6l5
      abb102(44)=-abb102(39)*abb102(43)
      abb102(42)=abb102(42)+abb102(44)
      abb102(42)=spak4l6*abb102(42)
      abb102(35)=abb102(35)*spbl6l5
      abb102(44)=abb102(35)*spak4k7
      abb102(45)=-spbk4k2*abb102(44)
      abb102(43)=abb102(30)*abb102(43)
      abb102(43)=abb102(45)+abb102(43)
      abb102(43)=spak4l5*abb102(43)
      abb102(29)=abb102(43)+abb102(42)+abb102(34)+abb102(38)+abb102(29)
      abb102(29)=8.0_ki*abb102(29)
      abb102(34)=-16.0_ki*abb102(23)
      abb102(21)=abb102(21)*abb102(24)
      abb102(11)=abb102(11)*abb102(18)
      abb102(11)=-2.0_ki*abb102(17)+abb102(21)+abb102(11)
      abb102(17)=abb102(11)*spak2k4
      abb102(21)=abb102(36)*spak1k4
      abb102(38)=abb102(16)*spak4l6
      abb102(42)=abb102(35)*spak4l5
      abb102(17)=-abb102(38)+abb102(42)+abb102(21)+abb102(17)
      abb102(17)=16.0_ki*abb102(17)
      abb102(21)=8.0_ki*spak3k4
      abb102(38)=spbl6l5*spak4k7
      abb102(42)=abb102(21)*abb102(38)
      abb102(43)=-abb102(39)*abb102(42)
      abb102(45)=abb102(21)*spak3k7
      abb102(46)=abb102(45)*spbl6l5
      abb102(39)=-abb102(39)*abb102(46)
      abb102(47)=abb102(16)*abb102(21)
      abb102(48)=16.0_ki*abb102(41)
      abb102(49)=-8.0_ki*abb102(41)
      abb102(42)=abb102(30)*abb102(42)
      abb102(30)=abb102(30)*abb102(46)
      abb102(46)=-abb102(35)*abb102(21)
      abb102(50)=16.0_ki*abb102(44)
      abb102(51)=8.0_ki*abb102(44)
      abb102(52)=-spak3k7*abb102(11)
      abb102(53)=abb102(13)*abb102(22)
      abb102(54)=abb102(25)*abb102(26)
      abb102(55)=-abb102(12)*abb102(20)
      abb102(53)=abb102(55)+abb102(53)+abb102(54)
      abb102(54)=spbk4k2*abb102(53)
      abb102(52)=abb102(54)+abb102(52)
      abb102(52)=16.0_ki*abb102(52)
      abb102(13)=abb102(13)*abb102(18)
      abb102(18)=abb102(25)*abb102(24)
      abb102(12)=abb102(18)+abb102(13)-2.0_ki*abb102(12)
      abb102(13)=-abb102(12)*abb102(28)
      abb102(18)=abb102(14)*spbl6k1
      abb102(24)=abb102(15)*spbl5k1
      abb102(18)=abb102(18)+abb102(24)
      abb102(24)=-spak1k4*abb102(18)
      abb102(25)=abb102(15)*spbl6l5
      abb102(28)=spak4l6*abb102(25)
      abb102(54)=abb102(14)*spbl6l5
      abb102(55)=-spak4l5*abb102(54)
      abb102(24)=abb102(55)+abb102(24)+abb102(28)
      abb102(24)=spbk4k2*abb102(24)
      abb102(28)=-spak1k3*abb102(36)
      abb102(55)=spak3l6*abb102(16)
      abb102(56)=-spak3l5*abb102(35)
      abb102(13)=abb102(56)+abb102(55)+abb102(28)+abb102(24)+abb102(13)
      abb102(13)=16.0_ki*abb102(13)
      abb102(24)=-16.0_ki*abb102(12)
      abb102(28)=abb102(38)*spbk4k2
      abb102(15)=-abb102(15)*abb102(28)
      abb102(38)=-spak3k7*abb102(16)
      abb102(15)=abb102(15)+abb102(38)
      abb102(15)=8.0_ki*abb102(15)
      abb102(38)=8.0_ki*abb102(25)
      abb102(14)=abb102(14)*abb102(28)
      abb102(28)=spak3k7*abb102(35)
      abb102(14)=abb102(14)+abb102(28)
      abb102(14)=8.0_ki*abb102(14)
      abb102(28)=-8.0_ki*abb102(54)
      abb102(53)=-es23*abb102(53)
      abb102(55)=-spak1k3*abb102(37)
      abb102(56)=spak3l6*abb102(41)
      abb102(57)=-spak3l5*abb102(44)
      abb102(53)=abb102(57)+abb102(56)+abb102(53)+abb102(55)
      abb102(55)=8.0_ki*spbk4k3
      abb102(53)=abb102(53)*abb102(55)
      abb102(56)=abb102(11)*spak2k7
      abb102(57)=abb102(36)*spak1k7
      abb102(16)=abb102(16)*spal6k7
      abb102(35)=abb102(35)*spal5k7
      abb102(16)=abb102(16)-abb102(35)+abb102(57)+abb102(56)
      abb102(35)=16.0_ki*abb102(16)
      abb102(16)=8.0_ki*abb102(16)
      abb102(12)=-spak2k7*abb102(12)
      abb102(56)=spak1k7*abb102(18)
      abb102(25)=spal6k7*abb102(25)
      abb102(54)=-spal5k7*abb102(54)
      abb102(12)=abb102(54)+abb102(25)+abb102(12)+abb102(56)
      abb102(12)=16.0_ki*spbk4k2*abb102(12)
      abb102(23)=spak2k4*abb102(23)
      abb102(25)=spak1k4*abb102(37)
      abb102(41)=-spak4l6*abb102(41)
      abb102(44)=spak4l5*abb102(44)
      abb102(23)=abb102(44)+abb102(41)+abb102(23)+abb102(25)
      abb102(23)=abb102(23)*abb102(55)
      abb102(22)=abb102(33)*abb102(22)
      abb102(25)=abb102(31)*abb102(26)
      abb102(19)=abb102(19)*abb102(20)
      abb102(19)=abb102(25)+abb102(19)+abb102(22)
      abb102(19)=abb102(19)*abb102(21)
      abb102(20)=abb102(32)*abb102(45)
      abb102(11)=abb102(11)*abb102(21)
      abb102(22)=-abb102(21)*spak4k7*abb102(40)
      abb102(25)=-abb102(40)*abb102(45)
      abb102(21)=abb102(36)*abb102(21)
      abb102(26)=16.0_ki*abb102(37)
      abb102(31)=-8.0_ki*abb102(37)
      abb102(32)=-spbk4k2*spak4k7*abb102(18)
      abb102(33)=-spak3k7*abb102(36)
      abb102(32)=abb102(32)+abb102(33)
      abb102(32)=8.0_ki*abb102(32)
      abb102(18)=8.0_ki*abb102(18)
      R2d102=0.0_ki
      rat2 = rat2 + R2d102
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='102' value='", &
          & R2d102, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd102h7
