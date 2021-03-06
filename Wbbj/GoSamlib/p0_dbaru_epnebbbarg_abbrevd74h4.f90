module     p0_dbaru_epnebbbarg_abbrevd74h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(60), public :: abb74
   complex(ki), public :: R2d74
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
      abb74(1)=1.0_ki/(-mB**2+es67)
      abb74(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb74(3)=NC**(-1)
      abb74(4)=sqrt2**(-1)
      abb74(5)=spbk7k2**(-1)
      abb74(6)=sqrt(mB**2)
      abb74(7)=spbl5k2**(-1)
      abb74(8)=abb74(4)*i_*CVDU*abb74(2)*abb74(1)
      abb74(9)=TR*gW
      abb74(9)=abb74(9)**2
      abb74(10)=abb74(8)*abb74(9)*spal6k7
      abb74(11)=abb74(10)*spak1l5
      abb74(12)=abb74(11)*abb74(3)
      abb74(13)=abb74(12)*abb74(6)
      abb74(14)=abb74(12)*mB
      abb74(13)=abb74(13)-abb74(14)
      abb74(15)=2.0_ki*c3
      abb74(16)=abb74(15)*spak1k4
      abb74(17)=abb74(13)*abb74(16)
      abb74(18)=abb74(3)**2
      abb74(18)=abb74(18)+1.0_ki
      abb74(19)=abb74(11)*abb74(18)
      abb74(20)=abb74(19)*c2
      abb74(21)=abb74(20)*abb74(6)
      abb74(22)=mB*abb74(20)
      abb74(21)=abb74(21)-abb74(22)
      abb74(23)=abb74(21)*spak1k4
      abb74(17)=abb74(17)-abb74(23)
      abb74(23)=spak4k7*abb74(17)
      abb74(24)=abb74(6)*abb74(5)
      abb74(25)=abb74(12)*abb74(24)
      abb74(26)=abb74(14)*abb74(5)
      abb74(25)=abb74(25)-abb74(26)
      abb74(26)=spbl6k2*abb74(25)*abb74(16)
      abb74(22)=abb74(22)*abb74(5)
      abb74(27)=abb74(24)*c2
      abb74(28)=abb74(27)*abb74(19)
      abb74(22)=abb74(22)-abb74(28)
      abb74(29)=spbl6k2*spak1k4
      abb74(30)=abb74(22)*abb74(29)
      abb74(26)=abb74(26)+abb74(30)
      abb74(30)=spak4l6*abb74(26)
      abb74(23)=abb74(23)+abb74(30)
      abb74(23)=spbk4k3*spbk2k1*abb74(23)
      abb74(30)=spak1k7*spbk2k1
      abb74(17)=abb74(17)*abb74(30)
      abb74(31)=spak1l6*spbk2k1
      abb74(26)=abb74(26)*abb74(31)
      abb74(17)=abb74(17)+abb74(26)
      abb74(17)=spbk3k1*abb74(17)
      abb74(17)=abb74(23)+abb74(17)
      abb74(17)=8.0_ki*abb74(17)
      abb74(12)=abb74(12)*spbk3k2
      abb74(23)=abb74(12)*abb74(6)
      abb74(14)=abb74(14)*spbk3k2
      abb74(23)=abb74(23)-abb74(14)
      abb74(23)=abb74(23)*abb74(15)
      abb74(26)=spbk3k2*c2
      abb74(32)=abb74(19)*abb74(26)
      abb74(33)=abb74(32)*mB
      abb74(34)=abb74(32)*abb74(6)
      abb74(23)=abb74(23)+abb74(33)-abb74(34)
      abb74(35)=abb74(23)*spak4k7
      abb74(12)=abb74(12)*abb74(24)
      abb74(14)=abb74(14)*abb74(5)
      abb74(12)=abb74(12)-abb74(14)
      abb74(14)=abb74(15)*spbl6k2
      abb74(12)=abb74(12)*abb74(14)
      abb74(36)=abb74(26)*abb74(24)
      abb74(37)=abb74(36)*abb74(19)
      abb74(33)=abb74(5)*abb74(33)
      abb74(33)=abb74(33)-abb74(37)
      abb74(33)=abb74(33)*spbl6k2
      abb74(12)=abb74(12)+abb74(33)
      abb74(33)=abb74(12)*spak4l6
      abb74(33)=abb74(35)+abb74(33)
      abb74(35)=16.0_ki*abb74(33)
      abb74(38)=abb74(10)*abb74(18)
      abb74(39)=abb74(38)*c2
      abb74(40)=abb74(15)*abb74(3)
      abb74(10)=abb74(10)*abb74(40)
      abb74(39)=abb74(39)-abb74(10)
      abb74(41)=abb74(7)*mB
      abb74(42)=-abb74(41)*abb74(39)
      abb74(43)=abb74(42)*spak1k7
      abb74(44)=abb74(41)*abb74(5)
      abb74(45)=abb74(44)*spbl6k2
      abb74(46)=-abb74(45)*abb74(39)
      abb74(47)=abb74(46)*spak1l6
      abb74(48)=abb74(40)*abb74(24)
      abb74(49)=abb74(48)*abb74(11)
      abb74(28)=abb74(49)-abb74(28)
      abb74(43)=abb74(28)+abb74(43)+abb74(47)
      abb74(47)=spbk3k2**2
      abb74(49)=spak3k4*abb74(47)*abb74(43)
      abb74(33)=abb74(49)+abb74(33)
      abb74(33)=8.0_ki*abb74(33)
      abb74(49)=abb74(40)*abb74(11)
      abb74(20)=abb74(20)-abb74(49)
      abb74(50)=8.0_ki*spak3k4
      abb74(20)=abb74(50)*abb74(47)*abb74(20)
      abb74(51)=abb74(41)*abb74(20)
      abb74(52)=spak1k4*c2
      abb74(19)=abb74(52)*abb74(19)
      abb74(53)=abb74(19)*abb74(6)
      abb74(54)=spak1k4*abb74(6)
      abb74(55)=abb74(54)*abb74(49)
      abb74(53)=abb74(53)-abb74(55)
      abb74(55)=-spbk2k1*abb74(53)
      abb74(11)=abb74(11)*spbk3k2
      abb74(40)=abb74(11)*abb74(40)
      abb74(56)=abb74(6)*abb74(40)
      abb74(56)=-abb74(34)+abb74(56)
      abb74(56)=spak3k4*abb74(56)
      abb74(55)=abb74(55)+abb74(56)
      abb74(55)=8.0_ki*abb74(55)
      abb74(56)=spbk2k1*spak1k4**2
      abb74(57)=-abb74(42)*abb74(56)
      abb74(8)=abb74(8)*abb74(9)*spak1l5
      abb74(9)=abb74(24)*abb74(3)*abb74(8)
      abb74(16)=abb74(9)*abb74(16)
      abb74(8)=abb74(18)*abb74(8)
      abb74(18)=abb74(8)*abb74(27)
      abb74(24)=abb74(18)*spak1k4
      abb74(16)=abb74(16)-abb74(24)
      abb74(24)=abb74(16)*spbk2k1
      abb74(27)=spak4l6*abb74(24)
      abb74(27)=abb74(57)+abb74(27)
      abb74(27)=spbk4k3*abb74(27)
      abb74(57)=abb74(16)*abb74(31)
      abb74(53)=2.0_ki*abb74(53)+abb74(57)
      abb74(53)=spbk3k1*abb74(53)
      abb74(57)=-abb74(41)*abb74(19)
      abb74(58)=abb74(41)*spak1k4
      abb74(59)=abb74(58)*abb74(49)
      abb74(57)=abb74(57)+abb74(59)
      abb74(57)=spbk2k1*abb74(57)
      abb74(32)=abb74(40)-abb74(32)
      abb74(59)=abb74(32)*spak3k4
      abb74(60)=-abb74(41)*abb74(59)
      abb74(57)=abb74(57)+abb74(60)
      abb74(57)=spbl5k3*abb74(57)
      abb74(32)=abb74(32)*spbl5k1
      abb74(60)=abb74(58)*abb74(32)
      abb74(27)=abb74(60)+abb74(57)+abb74(27)+abb74(53)
      abb74(27)=8.0_ki*abb74(27)
      abb74(53)=abb74(10)*spbk3k2
      abb74(26)=abb74(38)*abb74(26)
      abb74(26)=abb74(53)-abb74(26)
      abb74(53)=-abb74(58)*abb74(26)
      abb74(8)=abb74(8)*abb74(36)
      abb74(9)=abb74(9)*abb74(15)
      abb74(36)=spbk3k2*abb74(9)
      abb74(8)=abb74(36)-abb74(8)
      abb74(36)=abb74(8)*spak4l6
      abb74(36)=abb74(53)+abb74(36)
      abb74(53)=16.0_ki*abb74(36)
      abb74(36)=8.0_ki*abb74(36)
      abb74(34)=-spak1k4*abb74(34)
      abb74(40)=abb74(40)*abb74(54)
      abb74(34)=abb74(34)+abb74(40)
      abb74(34)=8.0_ki*abb74(34)
      abb74(20)=abb74(45)*abb74(20)
      abb74(11)=abb74(48)*abb74(11)
      abb74(11)=abb74(11)-abb74(37)
      abb74(37)=spak3k4*spbl6k2*abb74(11)
      abb74(40)=-abb74(29)*abb74(28)
      abb74(48)=-spbk2k1*abb74(40)
      abb74(37)=abb74(48)+abb74(37)
      abb74(37)=8.0_ki*abb74(37)
      abb74(48)=abb74(8)*spak3k4
      abb74(48)=abb74(48)+abb74(24)
      abb74(48)=8.0_ki*abb74(48)
      abb74(54)=-abb74(46)*abb74(56)
      abb74(24)=-spak4k7*abb74(24)
      abb74(24)=abb74(54)+abb74(24)
      abb74(24)=spbk4k3*abb74(24)
      abb74(16)=-abb74(16)*abb74(30)
      abb74(16)=2.0_ki*abb74(40)+abb74(16)
      abb74(16)=spbk3k1*abb74(16)
      abb74(19)=-abb74(45)*abb74(19)
      abb74(40)=abb74(45)*spak1k4
      abb74(49)=abb74(40)*abb74(49)
      abb74(19)=abb74(19)+abb74(49)
      abb74(19)=spbk2k1*abb74(19)
      abb74(49)=-abb74(45)*abb74(59)
      abb74(19)=abb74(19)+abb74(49)
      abb74(19)=spbl5k3*abb74(19)
      abb74(32)=abb74(40)*abb74(32)
      abb74(16)=abb74(32)+abb74(19)+abb74(24)+abb74(16)
      abb74(16)=8.0_ki*abb74(16)
      abb74(19)=-abb74(40)*abb74(26)
      abb74(24)=abb74(8)*spak4k7
      abb74(19)=abb74(19)-abb74(24)
      abb74(24)=16.0_ki*abb74(19)
      abb74(19)=8.0_ki*abb74(19)
      abb74(32)=-spak1k4*abb74(8)
      abb74(32)=8.0_ki*abb74(32)
      abb74(29)=8.0_ki*abb74(29)*abb74(11)
      abb74(13)=abb74(13)*abb74(15)
      abb74(13)=abb74(13)-abb74(21)
      abb74(15)=-spak4k7*abb74(13)
      abb74(14)=abb74(25)*abb74(14)
      abb74(21)=abb74(22)*spbl6k2
      abb74(14)=abb74(14)+abb74(21)
      abb74(21)=-spak4l6*abb74(14)
      abb74(15)=abb74(15)+abb74(21)
      abb74(15)=spbk4k2*abb74(15)
      abb74(21)=-abb74(13)*abb74(30)
      abb74(22)=-abb74(14)*abb74(31)
      abb74(23)=-spak3k7*abb74(23)
      abb74(12)=-spak3l6*abb74(12)
      abb74(12)=abb74(12)+abb74(23)+abb74(15)+abb74(21)+abb74(22)
      abb74(12)=8.0_ki*abb74(12)
      abb74(15)=abb74(58)*abb74(10)
      abb74(21)=abb74(52)*abb74(38)
      abb74(22)=abb74(21)*abb74(41)
      abb74(15)=abb74(15)-abb74(22)
      abb74(9)=abb74(9)-abb74(18)
      abb74(18)=-spak4l6*abb74(9)
      abb74(18)=abb74(18)+abb74(15)
      abb74(18)=spbk4k2*abb74(18)
      abb74(22)=-abb74(9)*abb74(31)
      abb74(23)=-spak3l6*abb74(8)
      abb74(25)=-abb74(41)*abb74(26)
      abb74(38)=-spak1k3*abb74(25)
      abb74(13)=abb74(38)+abb74(23)+abb74(18)+abb74(22)+abb74(13)
      abb74(13)=8.0_ki*abb74(13)
      abb74(18)=abb74(40)*abb74(10)
      abb74(22)=abb74(21)*abb74(45)
      abb74(18)=abb74(18)-abb74(22)
      abb74(22)=spak4k7*abb74(9)
      abb74(22)=abb74(22)+abb74(18)
      abb74(22)=spbk4k2*abb74(22)
      abb74(9)=abb74(9)*abb74(30)
      abb74(8)=spak3k7*abb74(8)
      abb74(23)=-abb74(45)*abb74(26)
      abb74(38)=-spak1k3*abb74(23)
      abb74(8)=abb74(38)+abb74(8)+abb74(22)+abb74(9)+abb74(14)
      abb74(8)=8.0_ki*abb74(8)
      abb74(9)=abb74(28)*spbk2k1
      abb74(14)=-spak1k4*abb74(9)
      abb74(18)=abb74(18)*abb74(31)
      abb74(15)=abb74(15)*abb74(30)
      abb74(14)=-abb74(15)+abb74(14)-abb74(18)
      abb74(14)=8.0_ki*abb74(14)
      abb74(15)=-spbk4k3*abb74(14)
      abb74(18)=abb74(25)*spak1k7
      abb74(22)=abb74(23)*spak1l6
      abb74(11)=abb74(18)+abb74(22)-abb74(11)
      abb74(18)=16.0_ki*abb74(11)
      abb74(11)=8.0_ki*abb74(11)
      abb74(22)=-8.0_ki*spbk4k2*abb74(43)
      abb74(23)=-abb74(50)*abb74(39)*abb74(47)*abb74(44)
      abb74(14)=-spbk3k1*abb74(14)
      abb74(21)=abb74(21)*abb74(44)
      abb74(25)=abb74(44)*spak1k4
      abb74(10)=abb74(25)*abb74(10)
      abb74(10)=abb74(21)-abb74(10)
      abb74(10)=abb74(10)*spbk2k1
      abb74(21)=-spak3k4*abb74(44)*abb74(26)
      abb74(10)=abb74(10)-abb74(21)
      abb74(21)=spbk7k3*abb74(10)
      abb74(25)=-abb74(25)*abb74(26)
      abb74(26)=spbk7k1*abb74(25)
      abb74(21)=abb74(21)+abb74(26)
      abb74(21)=8.0_ki*abb74(21)
      abb74(10)=spbl6k3*abb74(10)
      abb74(25)=spbl6k1*abb74(25)
      abb74(10)=abb74(10)+abb74(25)
      abb74(10)=8.0_ki*abb74(10)
      abb74(25)=-abb74(42)*abb74(30)
      abb74(26)=-abb74(46)*abb74(31)
      abb74(9)=abb74(26)-abb74(9)+abb74(25)
      abb74(9)=8.0_ki*abb74(9)
      abb74(25)=8.0_ki*abb74(42)
      abb74(26)=8.0_ki*abb74(46)
      R2d74=0.0_ki
      rat2 = rat2 + R2d74
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='74' value='", &
          & R2d74, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd74h4
