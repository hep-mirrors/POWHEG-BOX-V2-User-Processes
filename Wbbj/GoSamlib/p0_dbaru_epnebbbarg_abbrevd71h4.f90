module     p0_dbaru_epnebbbarg_abbrevd71h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(37), public :: abb71
   complex(ki), public :: R2d71
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
      abb71(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb71(2)=sqrt2**(-1)
      abb71(3)=es56**(-1)
      abb71(4)=spbl5k2**(-1)
      abb71(5)=spbk7k2**(-1)
      abb71(6)=spbl6k2**(-1)
      abb71(7)=TR*gW
      abb71(7)=abb71(7)**2*mB*i_*c2*CVDU*abb71(3)*abb71(2)*abb71(1)
      abb71(8)=abb71(7)*abb71(5)
      abb71(9)=spak3k4*spbk3k2**2
      abb71(10)=abb71(9)*abb71(8)
      abb71(11)=-spak1l5*abb71(10)
      abb71(12)=abb71(7)*abb71(4)
      abb71(13)=abb71(12)*abb71(5)
      abb71(14)=abb71(13)*spak1l6
      abb71(15)=abb71(14)*abb71(9)
      abb71(16)=-spbl6k2*abb71(15)
      abb71(11)=abb71(11)+abb71(16)
      abb71(11)=spal6k7*abb71(11)
      abb71(10)=-spak1l6*abb71(10)
      abb71(7)=abb71(7)*abb71(6)
      abb71(16)=abb71(7)*abb71(5)
      abb71(17)=abb71(16)*spak1l5
      abb71(18)=abb71(17)*abb71(9)
      abb71(19)=-spbl5k2*abb71(18)
      abb71(10)=abb71(10)+abb71(19)
      abb71(10)=spal5k7*abb71(10)
      abb71(10)=abb71(11)+abb71(10)
      abb71(10)=8.0_ki*abb71(10)
      abb71(11)=abb71(18)+abb71(15)
      abb71(11)=16.0_ki*abb71(11)
      abb71(15)=spbk3k2*abb71(8)
      abb71(18)=abb71(15)*spak4k7
      abb71(19)=abb71(18)*spak1l6
      abb71(20)=abb71(19)*abb71(4)
      abb71(21)=abb71(20)*spbl6k2
      abb71(22)=abb71(18)*spak1l5
      abb71(21)=abb71(21)+abb71(22)
      abb71(23)=16.0_ki*abb71(21)
      abb71(9)=abb71(9)*spak1k7
      abb71(24)=abb71(13)*abb71(9)
      abb71(21)=abb71(24)+abb71(21)
      abb71(21)=8.0_ki*abb71(21)
      abb71(7)=abb71(7)*spak4k7
      abb71(24)=abb71(15)*abb71(6)
      abb71(25)=abb71(24)*spak3k4
      abb71(26)=abb71(7)-abb71(25)
      abb71(26)=abb71(26)*spak1l5
      abb71(12)=abb71(12)*spak4k7
      abb71(15)=abb71(15)*abb71(4)
      abb71(27)=abb71(15)*spak3k4
      abb71(28)=abb71(12)-abb71(27)
      abb71(28)=abb71(28)*spak1l6
      abb71(26)=abb71(26)+abb71(28)
      abb71(28)=spbl6k3*abb71(26)
      abb71(22)=abb71(22)*abb71(6)
      abb71(20)=abb71(22)+abb71(20)
      abb71(29)=spbk7l6*abb71(20)
      abb71(28)=abb71(28)+abb71(29)
      abb71(28)=8.0_ki*abb71(28)
      abb71(29)=16.0_ki*spak1k4
      abb71(30)=abb71(15)*abb71(29)
      abb71(31)=8.0_ki*abb71(15)
      abb71(32)=spak1k4*abb71(31)
      abb71(33)=16.0_ki*spbk7k3
      abb71(34)=abb71(33)*abb71(13)
      abb71(35)=spak1k4*abb71(34)
      abb71(22)=abb71(22)*spbl5k2
      abb71(19)=abb71(22)+abb71(19)
      abb71(22)=16.0_ki*abb71(19)
      abb71(9)=abb71(16)*abb71(9)
      abb71(9)=abb71(9)+abb71(19)
      abb71(9)=8.0_ki*abb71(9)
      abb71(19)=spbl5k3*abb71(26)
      abb71(20)=spbk7l5*abb71(20)
      abb71(19)=abb71(19)+abb71(20)
      abb71(19)=8.0_ki*abb71(19)
      abb71(20)=abb71(24)*abb71(29)
      abb71(26)=8.0_ki*abb71(24)
      abb71(29)=spak1k4*abb71(26)
      abb71(33)=abb71(33)*abb71(16)
      abb71(36)=spak1k4*abb71(33)
      abb71(37)=spak1l5*abb71(8)
      abb71(14)=spbl6k2*abb71(14)
      abb71(14)=abb71(37)+abb71(14)
      abb71(14)=8.0_ki*abb71(14)
      abb71(8)=spak1l6*abb71(8)
      abb71(17)=spbl5k2*abb71(17)
      abb71(8)=abb71(8)+abb71(17)
      abb71(8)=8.0_ki*abb71(8)
      abb71(17)=16.0_ki*spak1k7
      abb71(15)=-abb71(15)*abb71(17)
      abb71(31)=-spak1k7*abb71(31)
      abb71(34)=-spak1k7*abb71(34)
      abb71(17)=-abb71(24)*abb71(17)
      abb71(24)=-spak1k7*abb71(26)
      abb71(26)=-spak1k7*abb71(33)
      abb71(18)=8.0_ki*abb71(18)
      abb71(33)=-abb71(4)*abb71(18)
      abb71(18)=-abb71(6)*abb71(18)
      abb71(12)=abb71(12)+abb71(27)
      abb71(12)=8.0_ki*abb71(12)
      abb71(7)=abb71(7)+abb71(25)
      abb71(7)=8.0_ki*abb71(7)
      abb71(13)=-8.0_ki*abb71(13)
      abb71(16)=-8.0_ki*abb71(16)
      R2d71=0.0_ki
      rat2 = rat2 + R2d71
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='71' value='", &
          & R2d71, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd71h4
