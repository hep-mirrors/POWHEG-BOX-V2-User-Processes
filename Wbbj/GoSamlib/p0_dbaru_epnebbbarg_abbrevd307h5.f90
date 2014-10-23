module     p0_dbaru_epnebbbarg_abbrevd307h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(28), public :: abb307
   complex(ki), public :: R2d307
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
      abb307(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb307(2)=1.0_ki/(es34+es567-es12-es234)
      abb307(3)=NC**(-1)
      abb307(4)=sqrt2**(-1)
      abb307(5)=spak2l6**(-1)
      abb307(6)=spbl6k2**(-1)
      abb307(7)=spbk7k2**(-1)
      abb307(8)=sqrt(mB**2)
      abb307(9)=spak2l5**(-1)
      abb307(10)=TR*gW
      abb307(10)=CVDU*i_*spak1k4*abb307(4)*abb307(2)*abb307(1)*abb307(10)**2
      abb307(11)=abb307(10)*spbk4k3
      abb307(12)=abb307(11)*spbl5k2
      abb307(13)=mB**2*abb307(6)*abb307(5)
      abb307(14)=abb307(13)*abb307(3)
      abb307(15)=abb307(12)*abb307(14)
      abb307(16)=abb307(11)*abb307(3)
      abb307(17)=abb307(16)*spbl5k2
      abb307(15)=abb307(17)-abb307(15)
      abb307(15)=abb307(15)*spak4k7
      abb307(17)=abb307(10)*spbk3k1
      abb307(18)=abb307(17)*spbl5k2
      abb307(19)=abb307(18)*abb307(14)
      abb307(20)=abb307(17)*abb307(3)
      abb307(21)=abb307(20)*spbl5k2
      abb307(19)=abb307(21)-abb307(19)
      abb307(19)=abb307(19)*spak1k7
      abb307(15)=abb307(15)+abb307(19)
      abb307(19)=c1+c3
      abb307(15)=-abb307(15)*abb307(19)
      abb307(12)=abb307(12)*spak4k7
      abb307(18)=abb307(18)*spak1k7
      abb307(12)=abb307(12)+abb307(18)
      abb307(13)=abb307(13)-1.0_ki
      abb307(18)=abb307(3)**2
      abb307(21)=-c2*abb307(12)*abb307(18)*abb307(13)
      abb307(12)=-c4*abb307(13)*abb307(12)
      abb307(12)=abb307(21)+abb307(12)+abb307(15)
      abb307(12)=16.0_ki*spal6k7*abb307(12)
      abb307(14)=abb307(14)-abb307(3)
      abb307(10)=abb307(10)*spbl5k2*abb307(7)
      abb307(15)=abb307(10)*spbk4k3
      abb307(21)=abb307(15)*abb307(14)
      abb307(22)=abb307(19)*abb307(21)
      abb307(15)=abb307(15)*abb307(13)
      abb307(23)=abb307(18)*abb307(15)
      abb307(24)=abb307(23)*c2
      abb307(25)=abb307(15)*c4
      abb307(22)=-abb307(25)+abb307(22)-abb307(24)
      abb307(24)=spak4l6*abb307(22)
      abb307(10)=abb307(10)*spbk3k1
      abb307(14)=abb307(10)*abb307(14)
      abb307(25)=abb307(19)*abb307(14)
      abb307(10)=abb307(10)*abb307(13)
      abb307(13)=abb307(10)*c4
      abb307(26)=abb307(18)*abb307(10)
      abb307(27)=abb307(26)*c2
      abb307(13)=-abb307(27)+abb307(25)-abb307(13)
      abb307(25)=spak1l6*abb307(13)
      abb307(24)=abb307(24)+abb307(25)
      abb307(24)=16.0_ki*abb307(24)
      abb307(25)=abb307(16)*spak4k7
      abb307(27)=abb307(20)*spak1k7
      abb307(25)=abb307(25)+abb307(27)
      abb307(25)=-abb307(25)*abb307(19)
      abb307(27)=abb307(17)*spak1k7
      abb307(28)=abb307(11)*spak4k7
      abb307(27)=abb307(27)+abb307(28)
      abb307(28)=c4*abb307(27)
      abb307(27)=c2*abb307(18)*abb307(27)
      abb307(25)=abb307(27)+abb307(28)+abb307(25)
      abb307(25)=8.0_ki*abb307(25)
      abb307(14)=abb307(14)*spak1k7
      abb307(21)=abb307(21)*spak4k7
      abb307(14)=abb307(14)+abb307(21)
      abb307(14)=abb307(19)*abb307(14)
      abb307(21)=abb307(23)*spak4k7
      abb307(23)=abb307(26)*spak1k7
      abb307(21)=abb307(21)+abb307(23)
      abb307(21)=abb307(21)*c2
      abb307(10)=abb307(10)*spak1k7
      abb307(15)=abb307(15)*spak4k7
      abb307(10)=abb307(10)+abb307(15)
      abb307(10)=abb307(10)*c4
      abb307(10)=-abb307(14)+abb307(21)+abb307(10)
      abb307(14)=es12+es71-es712
      abb307(10)=8.0_ki*abb307(10)*abb307(14)
      abb307(14)=spak2k4*abb307(22)
      abb307(13)=-spak1k2*abb307(13)
      abb307(15)=abb307(19)*abb307(16)
      abb307(16)=abb307(18)*c2
      abb307(16)=abb307(16)+c4
      abb307(11)=abb307(16)*abb307(11)
      abb307(11)=abb307(15)-abb307(11)
      abb307(15)=-spak2k4*abb307(11)
      abb307(16)=abb307(16)*abb307(17)
      abb307(17)=abb307(19)*abb307(20)
      abb307(16)=abb307(16)-abb307(17)
      abb307(17)=-spak1k2*abb307(16)
      abb307(15)=abb307(15)+abb307(17)
      abb307(15)=abb307(9)*abb307(8)*abb307(15)*mB*abb307(7)
      abb307(13)=abb307(15)+abb307(14)+abb307(13)
      abb307(13)=8.0_ki*abb307(13)
      abb307(11)=8.0_ki*abb307(7)*abb307(11)
      abb307(14)=-8.0_ki*abb307(7)*abb307(16)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd307h5
