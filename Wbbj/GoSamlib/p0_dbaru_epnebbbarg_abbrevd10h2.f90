module     p0_dbaru_epnebbbarg_abbrevd10h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(21), public :: abb10
   complex(ki), public :: R2d10
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
      abb10(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb10(2)=sqrt2**(-1)
      abb10(3)=es234**(-1)
      abb10(4)=es567**(-1)
      abb10(5)=es56**(-1)
      abb10(6)=spak2k7**(-1)
      abb10(7)=spbl5k2**(-1)
      abb10(8)=spak2l6**(-1)
      abb10(9)=1.0_ki/(es34+es567-es12-es234)
      abb10(10)=c1-c3
      abb10(11)=spak3k4*spbk7k3
      abb10(12)=abb10(6)*CVDU*i_*NC*abb10(5)*abb10(4)*abb10(2)*abb10(1)
      abb10(13)=-abb10(12)*abb10(10)*abb10(11)
      abb10(14)=abb10(12)*spbk7k2
      abb10(15)=-spak2k4*abb10(10)*abb10(14)
      abb10(13)=abb10(13)-abb10(15)
      abb10(15)=TR*gW
      abb10(16)=abb10(15)*mB
      abb10(16)=abb10(8)*abb10(16)**2
      abb10(17)=spbk3k2*abb10(3)
      abb10(13)=abb10(7)*abb10(16)*abb10(13)*abb10(17)*spak1k2
      abb10(18)=spbk4k3*spak2k4
      abb10(19)=-abb10(18)*abb10(10)
      abb10(20)=spbk3k1*abb10(10)*spak1k2
      abb10(19)=-abb10(19)-abb10(20)
      abb10(21)=abb10(9)*abb10(14)*spak1k4
      abb10(16)=abb10(19)*abb10(21)*abb10(16)*abb10(7)
      abb10(13)=abb10(16)+abb10(13)
      abb10(16)=es12-es712+es71
      abb10(13)=abb10(13)*abb10(16)
      abb10(15)=abb10(15)**2
      abb10(16)=abb10(10)*abb10(17)*abb10(15)
      abb10(11)=abb10(11)*abb10(12)
      abb10(12)=abb10(14)*spak2k4
      abb10(11)=abb10(12)-abb10(11)
      abb10(12)=-abb10(16)*spak1k2*abb10(11)
      abb10(14)=abb10(21)*abb10(15)
      abb10(10)=-abb10(14)*abb10(10)
      abb10(15)=abb10(10)*abb10(18)
      abb10(14)=abb10(14)*abb10(20)
      abb10(12)=abb10(14)+abb10(15)+abb10(12)
      abb10(12)=spal5k7*spbk7l6*abb10(12)
      abb10(11)=-abb10(16)*abb10(11)
      abb10(14)=-spbk3k1*abb10(10)
      abb10(11)=abb10(14)+abb10(11)
      abb10(11)=spak1k7*abb10(11)
      abb10(10)=-spak4k7*spbk4k3*abb10(10)
      abb10(10)=abb10(10)+abb10(11)
      abb10(10)=spak2l5*spbk7l6*abb10(10)
      abb10(10)=abb10(12)+abb10(10)+abb10(13)
      abb10(10)=9.0_ki*abb10(10)
      R2d10=0.0_ki
      rat2 = rat2 + R2d10
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='10' value='", &
          & R2d10, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd10h2
