module     p0_dbaru_epnebbbarg_abbrevd124h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(45), public :: abb124
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
      abb124(4)=sqrt2**(-1)
      abb124(5)=es56**(-1)
      abb124(6)=spak2l5**(-1)
      abb124(7)=spbl5k2**(-1)
      abb124(8)=spbk7k2**(-1)
      abb124(9)=spak2l6**(-1)
      abb124(10)=c4*abb124(3)**2
      abb124(11)=c1*abb124(3)
      abb124(12)=abb124(10)-abb124(11)
      abb124(13)=spbl6k2*abb124(7)
      abb124(14)=abb124(13)*abb124(6)
      abb124(15)=abb124(4)*abb124(5)*i_*CVDU*abb124(2)*abb124(1)
      abb124(16)=abb124(15)*abb124(8)
      abb124(17)=abb124(16)*spak1l5
      abb124(18)=TR*gW
      abb124(19)=abb124(18)*mB
      abb124(19)=abb124(19)**2
      abb124(20)=-abb124(14)*abb124(17)*abb124(12)*abb124(19)
      abb124(21)=abb124(19)*abb124(9)
      abb124(22)=abb124(21)*abb124(16)
      abb124(23)=abb124(11)*spak1l5
      abb124(24)=abb124(23)*abb124(22)
      abb124(20)=abb124(20)+abb124(24)
      abb124(24)=spbk3k2**2
      abb124(25)=-abb124(24)*abb124(20)
      abb124(26)=abb124(10)*abb124(22)
      abb124(27)=abb124(24)*abb124(26)
      abb124(28)=spak1l5*abb124(27)
      abb124(25)=abb124(28)+abb124(25)
      abb124(25)=spak2k7*abb124(25)
      abb124(22)=abb124(11)*abb124(22)
      abb124(28)=abb124(22)*abb124(24)
      abb124(27)=abb124(28)-abb124(27)
      abb124(28)=-spak1k2*abb124(27)
      abb124(18)=abb124(18)**2
      abb124(29)=abb124(12)*abb124(18)
      abb124(17)=abb124(17)*abb124(29)
      abb124(24)=abb124(17)*abb124(24)
      abb124(30)=spbl6l5*abb124(24)
      abb124(28)=abb124(28)+abb124(30)
      abb124(28)=spal5k7*abb124(28)
      abb124(30)=es12*abb124(7)
      abb124(31)=-abb124(27)*abb124(30)
      abb124(24)=-spbl6k1*abb124(24)
      abb124(24)=abb124(24)+abb124(31)
      abb124(24)=spak1k7*abb124(24)
      abb124(13)=abb124(13)*spak1k2
      abb124(27)=-spal6k7*abb124(27)*abb124(13)
      abb124(24)=abb124(27)+abb124(24)+abb124(28)+abb124(25)
      abb124(24)=8.0_ki*spak3k4*abb124(24)
      abb124(16)=abb124(16)*spbk3k2
      abb124(21)=abb124(16)*abb124(21)
      abb124(25)=abb124(21)*abb124(11)
      abb124(27)=abb124(21)*abb124(10)
      abb124(25)=abb124(25)-abb124(27)
      abb124(28)=abb124(13)*abb124(25)
      abb124(31)=abb124(28)*spak4l6
      abb124(21)=abb124(23)*abb124(21)
      abb124(27)=abb124(27)*spak1l5
      abb124(21)=abb124(21)-abb124(27)
      abb124(12)=abb124(12)*abb124(16)*spak1l5
      abb124(16)=abb124(19)*abb124(12)
      abb124(27)=abb124(16)*abb124(14)
      abb124(27)=abb124(27)-abb124(21)
      abb124(32)=abb124(27)*spak2k4
      abb124(33)=abb124(30)*abb124(25)
      abb124(12)=-abb124(18)*abb124(12)
      abb124(18)=abb124(12)*spbl6k1
      abb124(18)=abb124(33)-abb124(18)
      abb124(33)=abb124(18)*spak1k4
      abb124(34)=abb124(25)*spak1k2
      abb124(35)=abb124(12)*spbl6l5
      abb124(35)=abb124(35)+abb124(34)
      abb124(36)=abb124(35)*spak4l5
      abb124(31)=abb124(36)-abb124(33)+abb124(31)+abb124(32)
      abb124(32)=16.0_ki*abb124(31)
      abb124(31)=8.0_ki*abb124(31)
      abb124(33)=abb124(26)*spak1l5
      abb124(20)=-abb124(33)+abb124(20)
      abb124(33)=abb124(20)*spbk7k3
      abb124(36)=-spak2k4*abb124(33)
      abb124(22)=abb124(22)-abb124(26)
      abb124(26)=abb124(22)*spbk7k3
      abb124(37)=abb124(26)*spak1k2
      abb124(38)=abb124(17)*spbk7k3
      abb124(39)=abb124(38)*spbl6l5
      abb124(37)=abb124(37)-abb124(39)
      abb124(39)=spak4l5*abb124(37)
      abb124(40)=abb124(26)*abb124(30)
      abb124(38)=abb124(38)*spbl6k1
      abb124(38)=abb124(40)+abb124(38)
      abb124(40)=-spak1k4*abb124(38)
      abb124(26)=abb124(26)*abb124(13)
      abb124(41)=spak4l6*abb124(26)
      abb124(36)=abb124(41)+abb124(40)+abb124(39)+abb124(36)
      abb124(36)=16.0_ki*abb124(36)
      abb124(39)=8.0_ki*spak4k7
      abb124(40)=abb124(28)*abb124(39)
      abb124(19)=abb124(19)*abb124(15)
      abb124(41)=abb124(19)*abb124(9)
      abb124(11)=abb124(41)*abb124(11)
      abb124(42)=abb124(41)*abb124(10)
      abb124(11)=abb124(11)-abb124(42)
      abb124(11)=abb124(11)*spak4k7
      abb124(43)=-abb124(13)*abb124(11)
      abb124(44)=-spak3k4*abb124(28)
      abb124(43)=abb124(43)+abb124(44)
      abb124(43)=8.0_ki*abb124(43)
      abb124(44)=abb124(35)*abb124(39)
      abb124(45)=-spak1k2*abb124(11)
      abb124(34)=-spak3k4*abb124(34)
      abb124(15)=-spak4k7*abb124(29)*abb124(15)*spak1l5
      abb124(12)=abb124(12)*spak3k4
      abb124(12)=abb124(15)+abb124(12)
      abb124(15)=-spbl6l5*abb124(12)
      abb124(15)=abb124(15)+abb124(45)+abb124(34)
      abb124(15)=8.0_ki*abb124(15)
      abb124(20)=16.0_ki*abb124(20)
      abb124(13)=8.0_ki*abb124(22)*abb124(13)
      abb124(29)=spak1k2*abb124(22)
      abb124(34)=abb124(17)*spbl6l5
      abb124(29)=abb124(29)-abb124(34)
      abb124(29)=8.0_ki*abb124(29)
      abb124(28)=abb124(28)*spal6k7
      abb124(34)=abb124(27)*spak2k7
      abb124(45)=abb124(18)*spak1k7
      abb124(35)=abb124(35)*spal5k7
      abb124(28)=-abb124(35)-abb124(28)+abb124(34)-abb124(45)
      abb124(34)=-16.0_ki*abb124(28)
      abb124(28)=-8.0_ki*abb124(28)
      abb124(33)=spak2k7*abb124(33)
      abb124(35)=spal5k7*abb124(37)
      abb124(37)=spak1k7*abb124(38)
      abb124(26)=spal6k7*abb124(26)
      abb124(26)=abb124(26)+abb124(37)+abb124(35)+abb124(33)
      abb124(26)=16.0_ki*abb124(26)
      abb124(27)=-abb124(27)*abb124(39)
      abb124(33)=spak1l5*abb124(42)
      abb124(35)=-abb124(23)*abb124(41)
      abb124(33)=abb124(33)+abb124(35)
      abb124(33)=spak4k7*abb124(33)
      abb124(21)=-spak3k4*abb124(21)
      abb124(10)=spak1l5*abb124(10)
      abb124(10)=abb124(10)-abb124(23)
      abb124(10)=spak4k7*abb124(19)*abb124(10)
      abb124(16)=spak3k4*abb124(16)
      abb124(10)=abb124(10)+abb124(16)
      abb124(10)=abb124(10)*abb124(14)
      abb124(10)=abb124(10)+abb124(33)+abb124(21)
      abb124(10)=8.0_ki*abb124(10)
      abb124(14)=abb124(18)*abb124(39)
      abb124(16)=-spak3k4*abb124(25)
      abb124(11)=-abb124(11)+abb124(16)
      abb124(11)=abb124(11)*abb124(30)
      abb124(12)=spbl6k1*abb124(12)
      abb124(11)=abb124(12)+abb124(11)
      abb124(11)=8.0_ki*abb124(11)
      abb124(12)=abb124(22)*abb124(30)
      abb124(16)=abb124(17)*spbl6k1
      abb124(12)=abb124(16)+abb124(12)
      abb124(12)=8.0_ki*abb124(12)
      R2d124=0.0_ki
      rat2 = rat2 + R2d124
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='124' value='", &
          & R2d124, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd124h6
