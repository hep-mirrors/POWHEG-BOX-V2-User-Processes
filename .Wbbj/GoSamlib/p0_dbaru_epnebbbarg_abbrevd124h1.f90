module     p0_dbaru_epnebbbarg_abbrevd124h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(55), public :: abb124
   complex(ki), public :: R2d124
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
      abb124(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb124(2)=1.0_ki/(-es71+es56-es567+es234)
      abb124(3)=NC**(-1)
      abb124(4)=es56**(-1)
      abb124(5)=spak2l5**(-1)
      abb124(6)=spak2l6**(-1)
      abb124(7)=spbl6k2**(-1)
      abb124(8)=c1*abb124(3)
      abb124(9)=c4*abb124(3)**2
      abb124(8)=abb124(8)-abb124(9)
      abb124(9)=abb124(4)*i_*CVDU*abb124(2)*abb124(1)
      abb124(10)=TR*gW
      abb124(11)=abb124(10)*mB
      abb124(11)=abb124(8)*abb124(9)*abb124(11)**2
      abb124(12)=-abb124(5)*abb124(11)
      abb124(13)=abb124(12)*spak1k2
      abb124(14)=spbk7e7*spak4k7
      abb124(15)=spak3k4*spbe7k3
      abb124(15)=abb124(14)-abb124(15)
      abb124(16)=abb124(13)*abb124(15)
      abb124(8)=-abb124(10)**2*abb124(9)*abb124(8)*spak1l6
      abb124(9)=abb124(15)*abb124(8)
      abb124(10)=-spbl6l5*abb124(9)
      abb124(10)=abb124(16)+abb124(10)
      abb124(10)=spal6e7*abb124(10)
      abb124(9)=-spbl5k1*abb124(9)
      abb124(16)=es12*abb124(12)*abb124(7)
      abb124(17)=abb124(15)*abb124(16)
      abb124(9)=abb124(9)+abb124(17)
      abb124(9)=spak1e7*abb124(9)
      abb124(17)=spbl5k2*abb124(7)
      abb124(11)=abb124(6)*abb124(17)*spak1l6*abb124(11)
      abb124(12)=-spak1l6*abb124(12)
      abb124(11)=abb124(11)+abb124(12)
      abb124(12)=-spak2e7*abb124(15)*abb124(11)
      abb124(9)=abb124(12)+abb124(10)+abb124(9)
      abb124(9)=spbk3k2*abb124(9)
      abb124(10)=abb124(8)*spbl5k1
      abb124(10)=abb124(16)-abb124(10)
      abb124(12)=-spbe7k3*abb124(10)
      abb124(18)=abb124(12)*spak1e7
      abb124(19)=abb124(8)*spbl6l5
      abb124(19)=abb124(19)-abb124(13)
      abb124(20)=spbe7k3*abb124(19)
      abb124(21)=abb124(20)*spal6e7
      abb124(22)=spbe7k3*abb124(11)
      abb124(23)=abb124(22)*spak2e7
      abb124(18)=abb124(23)+abb124(18)+abb124(21)
      abb124(21)=-spbk7k2*spak4k7*abb124(18)
      abb124(17)=abb124(17)*abb124(13)
      abb124(15)=spbk3k2*abb124(17)*abb124(15)
      abb124(23)=abb124(17)*spbe7k3
      abb124(24)=spbk7k2*spak4k7
      abb124(25)=abb124(23)*abb124(24)
      abb124(15)=abb124(15)+abb124(25)
      abb124(15)=spal5e7*abb124(15)
      abb124(9)=abb124(15)+abb124(21)+abb124(9)
      abb124(9)=4.0_ki*abb124(9)
      abb124(15)=spak3k4*spbk7k3
      abb124(21)=abb124(15)*spbe7k3
      abb124(14)=abb124(14)*spbk7k3
      abb124(14)=abb124(21)+abb124(14)
      abb124(8)=abb124(8)*abb124(14)
      abb124(21)=abb124(8)*spbl6l5
      abb124(13)=abb124(14)*abb124(13)
      abb124(13)=abb124(21)-abb124(13)
      abb124(21)=spal6k7*abb124(13)
      abb124(25)=abb124(14)*abb124(11)
      abb124(26)=spak2k7*abb124(25)
      abb124(16)=abb124(14)*abb124(16)
      abb124(8)=abb124(8)*spbl5k1
      abb124(8)=abb124(16)-abb124(8)
      abb124(16)=-spak1k7*abb124(8)
      abb124(14)=abb124(14)*abb124(17)
      abb124(27)=-spal5k7*abb124(14)
      abb124(16)=abb124(27)+abb124(16)+abb124(21)+abb124(26)
      abb124(16)=4.0_ki*abb124(16)
      abb124(12)=abb124(12)*spak1k4
      abb124(20)=abb124(20)*spak4l6
      abb124(21)=abb124(22)*spak2k4
      abb124(22)=abb124(23)*spak4l5
      abb124(12)=-abb124(22)-abb124(12)+abb124(20)-abb124(21)
      abb124(20)=-8.0_ki*abb124(12)
      abb124(12)=-4.0_ki*abb124(12)
      abb124(13)=-spal6e7*abb124(13)
      abb124(8)=spak1e7*abb124(8)
      abb124(21)=-spak2e7*abb124(25)
      abb124(14)=spal5e7*abb124(14)
      abb124(8)=abb124(14)+abb124(21)+abb124(13)+abb124(8)
      abb124(8)=4.0_ki*abb124(8)
      abb124(13)=abb124(19)*spbk7k3
      abb124(14)=spak4l6*abb124(13)
      abb124(21)=abb124(11)*spbk7k3
      abb124(22)=-spak2k4*abb124(21)
      abb124(25)=abb124(10)*spbk7k3
      abb124(26)=spak1k4*abb124(25)
      abb124(27)=-spak4l5*abb124(17)*spbk7k3
      abb124(14)=abb124(27)+abb124(26)+abb124(14)+abb124(22)
      abb124(14)=16.0_ki*abb124(14)
      abb124(22)=spbe7k2*spak4k7*spbk7k3
      abb124(26)=4.0_ki*spae7k7
      abb124(27)=abb124(22)*abb124(26)
      abb124(28)=abb124(19)*abb124(27)
      abb124(29)=spbk3k2*spak4k7
      abb124(30)=8.0_ki*abb124(29)
      abb124(31)=abb124(19)*abb124(30)
      abb124(15)=abb124(15)*spbe7k2
      abb124(32)=abb124(15)*abb124(26)
      abb124(33)=-abb124(19)*abb124(32)
      abb124(34)=spbk3k2*spak3k4
      abb124(24)=abb124(24)+abb124(34)
      abb124(34)=-8.0_ki*abb124(19)*abb124(24)
      abb124(35)=-spbe7k2*abb124(19)
      abb124(36)=8.0_ki*spak4e7
      abb124(37)=-abb124(35)*abb124(36)
      abb124(38)=4.0_ki*spak4e7
      abb124(39)=-abb124(35)*abb124(38)
      abb124(40)=abb124(26)*abb124(17)
      abb124(22)=-abb124(22)*abb124(40)
      abb124(41)=8.0_ki*abb124(17)
      abb124(29)=-abb124(29)*abb124(41)
      abb124(15)=abb124(15)*abb124(40)
      abb124(40)=abb124(24)*abb124(41)
      abb124(42)=abb124(17)*spbe7k2
      abb124(43)=-abb124(42)*abb124(36)
      abb124(44)=-abb124(42)*abb124(38)
      abb124(45)=16.0_ki*abb124(11)
      abb124(46)=spal6e7*abb124(35)
      abb124(47)=-spbe7k2*abb124(10)
      abb124(48)=-spak1e7*abb124(47)
      abb124(49)=spal5e7*abb124(42)
      abb124(46)=abb124(49)+abb124(46)+abb124(48)
      abb124(46)=4.0_ki*abb124(46)
      abb124(48)=abb124(19)*spbk7e7
      abb124(49)=spal6k7*abb124(48)
      abb124(50)=abb124(11)*spbk7e7
      abb124(51)=spak2k7*abb124(50)
      abb124(52)=abb124(10)*spbk7e7
      abb124(53)=-spak1k7*abb124(52)
      abb124(54)=abb124(17)*spal5k7
      abb124(55)=-spbk7e7*abb124(54)
      abb124(49)=abb124(55)+abb124(53)+abb124(49)+abb124(51)
      abb124(49)=4.0_ki*abb124(49)
      abb124(48)=-spal6e7*abb124(48)
      abb124(51)=spak1e7*abb124(52)
      abb124(50)=-spak2e7*abb124(50)
      abb124(17)=spal5e7*abb124(17)*spbk7e7
      abb124(17)=abb124(17)+abb124(50)+abb124(48)+abb124(51)
      abb124(17)=4.0_ki*abb124(17)
      abb124(35)=-abb124(35)*abb124(26)
      abb124(19)=8.0_ki*abb124(19)
      abb124(42)=-abb124(26)*abb124(42)
      abb124(13)=spal6k7*abb124(13)
      abb124(21)=spak2k7*abb124(21)
      abb124(25)=-spak1k7*abb124(25)
      abb124(48)=-spbk7k3*abb124(54)
      abb124(13)=abb124(48)+abb124(25)+abb124(13)+abb124(21)
      abb124(13)=16.0_ki*abb124(13)
      abb124(21)=abb124(23)*spal5e7
      abb124(18)=-abb124(21)+abb124(18)
      abb124(21)=-8.0_ki*abb124(18)
      abb124(18)=-4.0_ki*abb124(18)
      abb124(23)=abb124(11)*abb124(27)
      abb124(25)=abb124(11)*abb124(30)
      abb124(48)=spbe7k2*abb124(11)
      abb124(50)=abb124(48)*abb124(26)
      abb124(51)=-abb124(11)*abb124(32)
      abb124(11)=-8.0_ki*abb124(11)*abb124(24)
      abb124(52)=abb124(48)*abb124(36)
      abb124(48)=abb124(48)*abb124(38)
      abb124(27)=-abb124(10)*abb124(27)
      abb124(30)=-abb124(10)*abb124(30)
      abb124(26)=abb124(47)*abb124(26)
      abb124(32)=abb124(10)*abb124(32)
      abb124(24)=8.0_ki*abb124(10)*abb124(24)
      abb124(36)=abb124(47)*abb124(36)
      abb124(38)=abb124(47)*abb124(38)
      abb124(10)=-8.0_ki*abb124(10)
      R2d124=0.0_ki
      rat2 = rat2 + R2d124
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='124' value='", &
          & R2d124, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd124h1
