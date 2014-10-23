module     p0_dbaru_epnebbbarg_abbrevd8h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(29), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=sqrt(mB**2)
      abb8(3)=sqrt2**(-1)
      abb8(4)=es234**(-1)
      abb8(5)=es567**(-1)
      abb8(6)=spak2k7**(-1)
      abb8(7)=1.0_ki/(es34+es567-es12-es234)
      abb8(8)=spak2l6**(-1)
      abb8(9)=spak2l5**(-1)
      abb8(10)=i_*CVDU*abb8(6)*abb8(5)*abb8(3)*abb8(1)
      abb8(11)=TR*gW
      abb8(11)=abb8(11)**2
      abb8(12)=abb8(10)*abb8(11)*spak1k2
      abb8(13)=spak1k4*abb8(7)
      abb8(14)=abb8(12)*abb8(13)*spbk3k1
      abb8(15)=abb8(14)*abb8(2)
      abb8(16)=spbk4k3*spak2k4
      abb8(17)=abb8(16)*abb8(11)*abb8(2)
      abb8(18)=abb8(7)*abb8(10)*spak1k4
      abb8(19)=abb8(17)*abb8(18)
      abb8(12)=abb8(12)*spbk3k2
      abb8(20)=abb8(2)*abb8(4)
      abb8(21)=abb8(20)*abb8(12)
      abb8(22)=spak2k4*abb8(21)
      abb8(19)=-abb8(22)+abb8(15)-abb8(19)
      abb8(22)=c2-c4
      abb8(23)=-2.0_ki*abb8(22)
      abb8(24)=abb8(23)*abb8(19)*spbk7k2
      abb8(21)=spak3k4*abb8(21)
      abb8(25)=abb8(21)*abb8(23)
      abb8(26)=abb8(21)*NC
      abb8(27)=abb8(26)*c1
      abb8(28)=c3*abb8(26)
      abb8(25)=abb8(27)+abb8(28)+abb8(25)
      abb8(25)=spbk7k3*abb8(25)
      abb8(10)=abb8(13)*abb8(10)*NC
      abb8(13)=abb8(17)*abb8(10)
      abb8(15)=NC*abb8(15)
      abb8(13)=abb8(15)-abb8(13)
      abb8(15)=abb8(13)*spbk7k2
      abb8(17)=abb8(20)*abb8(12)*NC
      abb8(20)=spbk7k2*spak2k4
      abb8(28)=abb8(20)*abb8(17)
      abb8(15)=abb8(28)-abb8(15)
      abb8(28)=c1+c3
      abb8(15)=-abb8(15)*abb8(28)
      abb8(15)=abb8(25)+abb8(24)+abb8(15)
      abb8(15)=2.0_ki*abb8(15)
      abb8(15)=spbl6l5*abb8(15)
      abb8(19)=abb8(22)*abb8(19)
      abb8(17)=spak2k4*abb8(17)
      abb8(13)=abb8(13)-abb8(17)
      abb8(17)=-c3+2.0_ki*c1
      abb8(24)=abb8(13)*abb8(17)
      abb8(24)=abb8(24)-abb8(19)
      abb8(24)=spbl5k2*abb8(24)
      abb8(21)=-abb8(21)*abb8(22)
      abb8(25)=abb8(26)*abb8(17)
      abb8(25)=abb8(25)+abb8(21)
      abb8(25)=spbl5k3*abb8(25)
      abb8(24)=abb8(25)+abb8(24)
      abb8(24)=spbk7l6*abb8(24)
      abb8(25)=2.0_ki*c3
      abb8(29)=abb8(25)-c1
      abb8(13)=-abb8(29)*abb8(13)
      abb8(13)=abb8(19)+abb8(13)
      abb8(13)=spbl6k2*spbk7l5*abb8(13)
      abb8(19)=-abb8(26)*abb8(25)
      abb8(19)=abb8(27)+abb8(19)-abb8(21)
      abb8(19)=spbl6k3*spbk7l5*abb8(19)
      abb8(13)=abb8(19)+abb8(13)+abb8(15)+abb8(24)
      abb8(13)=4.0_ki*abb8(13)
      abb8(11)=abb8(16)*abb8(11)*mB
      abb8(10)=abb8(11)*abb8(10)
      abb8(14)=mB*abb8(14)
      abb8(15)=abb8(14)*NC
      abb8(15)=abb8(10)-abb8(15)
      abb8(16)=spbk7l5*abb8(8)
      abb8(15)=abb8(15)*abb8(16)
      abb8(12)=abb8(12)*abb8(4)*mB
      abb8(19)=abb8(12)*abb8(8)
      abb8(21)=spak2k4*abb8(19)*spbk7l5
      abb8(24)=abb8(21)*NC
      abb8(15)=abb8(15)+abb8(24)
      abb8(15)=-abb8(15)*abb8(29)
      abb8(11)=abb8(11)*abb8(18)
      abb8(18)=abb8(11)-abb8(14)
      abb8(18)=abb8(18)*abb8(16)
      abb8(18)=abb8(18)+abb8(21)
      abb8(18)=abb8(18)*abb8(22)
      abb8(15)=abb8(18)+abb8(15)
      abb8(15)=8.0_ki*abb8(15)
      abb8(18)=abb8(12)*abb8(9)
      abb8(21)=abb8(18)*spak2k4
      abb8(24)=abb8(14)*abb8(9)
      abb8(21)=abb8(21)-abb8(24)
      abb8(25)=NC*abb8(21)
      abb8(26)=abb8(10)*abb8(9)
      abb8(25)=abb8(26)+abb8(25)
      abb8(25)=abb8(25)*abb8(17)
      abb8(27)=abb8(11)*abb8(9)
      abb8(21)=abb8(27)+abb8(21)
      abb8(21)=-abb8(21)*abb8(22)
      abb8(21)=abb8(21)+abb8(25)
      abb8(21)=spbl6k2*abb8(21)
      abb8(17)=-NC*abb8(17)
      abb8(17)=abb8(17)+abb8(22)
      abb8(12)=abb8(12)*spak3k4
      abb8(25)=abb8(12)*abb8(9)
      abb8(17)=spbl6k3*abb8(25)*abb8(17)
      abb8(17)=abb8(21)+abb8(17)
      abb8(17)=4.0_ki*abb8(17)
      abb8(18)=abb8(18)*abb8(20)
      abb8(21)=abb8(24)*spbk7k2
      abb8(18)=abb8(18)-abb8(21)
      abb8(21)=NC*abb8(18)
      abb8(24)=abb8(26)*spbk7k2
      abb8(21)=abb8(24)+abb8(21)
      abb8(21)=abb8(21)*abb8(29)
      abb8(24)=abb8(27)*spbk7k2
      abb8(18)=abb8(24)+abb8(18)
      abb8(18)=-abb8(18)*abb8(22)
      abb8(24)=-NC*abb8(29)
      abb8(24)=abb8(24)+abb8(22)
      abb8(24)=spbk7k3*abb8(25)*abb8(24)
      abb8(18)=abb8(24)+abb8(21)+abb8(18)
      abb8(18)=4.0_ki*abb8(18)
      abb8(19)=abb8(19)*abb8(20)
      abb8(20)=abb8(8)*spbk7k2
      abb8(14)=abb8(14)*abb8(20)
      abb8(14)=abb8(19)-abb8(14)
      abb8(19)=NC*abb8(14)
      abb8(10)=abb8(10)*abb8(20)
      abb8(10)=abb8(10)+abb8(19)
      abb8(10)=abb8(10)*abb8(28)
      abb8(11)=abb8(11)*abb8(20)
      abb8(11)=abb8(11)+abb8(14)
      abb8(11)=abb8(11)*abb8(23)
      abb8(14)=-abb8(12)*abb8(23)
      abb8(19)=abb8(12)*NC
      abb8(20)=-abb8(19)*abb8(28)
      abb8(14)=abb8(20)+abb8(14)
      abb8(14)=spbk7k3*abb8(8)*abb8(14)
      abb8(10)=abb8(14)+abb8(11)+abb8(10)
      abb8(10)=4.0_ki*abb8(10)
      abb8(11)=-abb8(12)*abb8(22)
      abb8(12)=abb8(19)*abb8(29)
      abb8(11)=abb8(12)+abb8(11)
      abb8(11)=4.0_ki*abb8(16)*abb8(11)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd8h3
