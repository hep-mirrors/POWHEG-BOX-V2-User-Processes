module     p0_dbaru_epnebbbarg_abbrevd3h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(31), public :: abb3
   complex(ki), public :: R2d3
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
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=sqrt2**(-1)
      abb3(3)=es234**(-1)
      abb3(4)=es56**(-1)
      abb3(5)=spak2l5**(-1)
      abb3(6)=spbk7k2**(-1)
      abb3(7)=spak2l6**(-1)
      abb3(8)=spbl6k2*abb3(5)
      abb3(9)=spbl5k2*abb3(7)
      abb3(8)=abb3(8)+abb3(9)
      abb3(9)=TR*gW
      abb3(9)=abb3(9)**2*CVDU*i_*mB*abb3(6)*abb3(4)*abb3(2)*abb3(1)
      abb3(10)=abb3(9)*spbk3k2*abb3(3)
      abb3(11)=abb3(10)*NC
      abb3(12)=abb3(11)*abb3(8)
      abb3(13)=2.0_ki*c1
      abb3(14)=abb3(13)-c3
      abb3(15)=abb3(12)*abb3(14)
      abb3(8)=abb3(10)*abb3(8)
      abb3(16)=abb3(8)*c2
      abb3(17)=abb3(8)*c4
      abb3(15)=abb3(16)-abb3(17)+abb3(15)
      abb3(16)=spak2k4*spak1k7
      abb3(15)=abb3(15)*abb3(16)
      abb3(18)=c3*spak1k2
      abb3(19)=c1*spak1k2
      abb3(18)=-abb3(19)+2.0_ki*abb3(18)
      abb3(20)=-abb3(12)*abb3(18)
      abb3(21)=c2*spak1k2
      abb3(22)=abb3(21)*abb3(8)
      abb3(23)=abb3(17)*spak1k2
      abb3(20)=-abb3(22)+abb3(23)+abb3(20)
      abb3(22)=abb3(20)*spak4k7
      abb3(8)=abb3(8)*spak2k7
      abb3(23)=abb3(8)*c2
      abb3(17)=abb3(17)*spak2k7
      abb3(23)=abb3(23)-abb3(17)
      abb3(12)=abb3(12)*spak2k7
      abb3(24)=c3+c1
      abb3(25)=abb3(12)*abb3(24)
      abb3(23)=abb3(25)+2.0_ki*abb3(23)
      abb3(25)=2.0_ki*spak1k4
      abb3(26)=abb3(23)*abb3(25)
      abb3(15)=abb3(22)+abb3(26)-abb3(15)
      abb3(15)=8.0_ki*abb3(15)
      abb3(22)=-spak2k4*abb3(20)
      abb3(11)=abb3(18)*abb3(11)
      abb3(26)=c4*spak1k2
      abb3(26)=abb3(26)-abb3(21)
      abb3(10)=abb3(26)*abb3(10)
      abb3(10)=abb3(11)-abb3(10)
      abb3(11)=-spbl6k3*abb3(5)
      abb3(27)=-spbl5k3*abb3(7)
      abb3(11)=abb3(27)+abb3(11)
      abb3(10)=spak3k4*abb3(10)*abb3(11)
      abb3(10)=abb3(22)+abb3(10)
      abb3(10)=4.0_ki*abb3(10)
      abb3(11)=abb3(9)*abb3(7)
      abb3(22)=abb3(11)*spbl5k2
      abb3(9)=abb3(9)*abb3(5)
      abb3(27)=abb3(9)*spbl6k2
      abb3(22)=abb3(22)+abb3(27)
      abb3(27)=abb3(22)*NC
      abb3(28)=abb3(3)*abb3(27)
      abb3(18)=abb3(18)*abb3(28)
      abb3(29)=abb3(22)*abb3(3)
      abb3(26)=abb3(26)*abb3(29)
      abb3(18)=abb3(18)-abb3(26)
      abb3(18)=abb3(18)*spak4k7
      abb3(26)=c2-c4
      abb3(29)=-abb3(29)*abb3(26)
      abb3(24)=abb3(28)*abb3(24)
      abb3(24)=-abb3(24)+2.0_ki*abb3(29)
      abb3(24)=abb3(25)*spak2k7*abb3(24)
      abb3(18)=abb3(24)+abb3(18)
      abb3(24)=spbk4k2*abb3(18)
      abb3(20)=-spak3k7*abb3(20)
      abb3(22)=-abb3(22)*abb3(26)
      abb3(25)=c3*abb3(27)
      abb3(22)=abb3(25)+abb3(22)
      abb3(22)=spak1k7*abb3(22)
      abb3(25)=spak1k3*abb3(23)
      abb3(30)=-c3*abb3(28)
      abb3(30)=abb3(30)-abb3(29)
      abb3(30)=spak1k7*abb3(30)
      abb3(13)=abb3(13)*spak1k7
      abb3(31)=abb3(28)*abb3(13)
      abb3(30)=abb3(31)+abb3(30)
      abb3(30)=es34*abb3(30)
      abb3(13)=-abb3(27)*abb3(13)
      abb3(13)=abb3(30)-2.0_ki*abb3(25)+abb3(20)+abb3(24)+abb3(13)+abb3(22)
      abb3(13)=4.0_ki*abb3(13)
      abb3(17)=-spak1k2*abb3(17)
      abb3(8)=abb3(21)*abb3(8)
      abb3(12)=abb3(19)*abb3(12)
      abb3(8)=abb3(12)+abb3(17)+abb3(8)
      abb3(12)=-abb3(28)*abb3(14)
      abb3(12)=abb3(12)+abb3(29)
      abb3(12)=abb3(16)*abb3(12)
      abb3(12)=abb3(12)-abb3(18)
      abb3(12)=spbk4k3*abb3(12)
      abb3(8)=3.0_ki*abb3(8)+abb3(12)
      abb3(8)=4.0_ki*abb3(8)
      abb3(12)=abb3(14)*NC
      abb3(12)=abb3(12)+abb3(26)
      abb3(14)=4.0_ki*spak3k4
      abb3(12)=abb3(12)*abb3(14)*abb3(3)*spak1k7*spbk3k2**2
      abb3(9)=abb3(9)*abb3(12)
      abb3(11)=abb3(11)*abb3(12)
      abb3(12)=-abb3(23)*abb3(14)
      abb3(14)=4.0_ki*spak2k4*abb3(23)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd3h7
