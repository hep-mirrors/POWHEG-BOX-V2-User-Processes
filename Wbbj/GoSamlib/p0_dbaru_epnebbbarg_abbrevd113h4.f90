module     p0_dbaru_epnebbbarg_abbrevd113h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(40), public :: abb113
   complex(ki), public :: R2d113
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
      abb113(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb113(2)=1.0_ki/(es34+es567-es12-es234)
      abb113(3)=sqrt2**(-1)
      abb113(4)=es56**(-1)
      abb113(5)=spbl5k2**(-1)
      abb113(6)=spbl6k2**(-1)
      abb113(7)=NC**(-1)
      abb113(8)=spbk7k2**(-1)
      abb113(9)=NC*c1
      abb113(10)=abb113(9)-c4
      abb113(11)=TR*gW
      abb113(11)=CVDU*abb113(11)**2*mB*i_*spak1k4*abb113(4)*abb113(3)*abb113(2)&
      &*abb113(1)
      abb113(12)=abb113(11)*spbk4k3
      abb113(13)=abb113(12)*abb113(5)
      abb113(14)=abb113(13)*abb113(10)
      abb113(15)=abb113(13)*c2
      abb113(16)=abb113(14)+abb113(15)
      abb113(17)=spak4l6*abb113(16)
      abb113(11)=abb113(11)*spbk3k1
      abb113(18)=abb113(11)*abb113(5)
      abb113(19)=abb113(18)*abb113(10)
      abb113(20)=abb113(18)*c2
      abb113(21)=abb113(19)+abb113(20)
      abb113(22)=spak1l6*abb113(21)
      abb113(17)=abb113(17)+abb113(22)
      abb113(17)=spbl6k2*abb113(17)
      abb113(9)=-c4+abb113(9)+c2
      abb113(22)=abb113(12)*abb113(9)
      abb113(23)=spak4l5*abb113(22)
      abb113(9)=abb113(11)*abb113(9)
      abb113(24)=spak1l5*abb113(9)
      abb113(17)=abb113(17)+abb113(24)+abb113(23)
      abb113(17)=spal6k7*abb113(17)
      abb113(12)=abb113(12)*abb113(6)
      abb113(23)=abb113(12)*abb113(10)
      abb113(24)=abb113(12)*c2
      abb113(25)=abb113(23)+abb113(24)
      abb113(26)=spak4l5*abb113(25)
      abb113(11)=abb113(11)*abb113(6)
      abb113(27)=abb113(11)*abb113(10)
      abb113(28)=abb113(11)*c2
      abb113(29)=abb113(27)+abb113(28)
      abb113(30)=spak1l5*abb113(29)
      abb113(26)=abb113(26)+abb113(30)
      abb113(26)=spbl5k2*abb113(26)
      abb113(30)=spak4l6*abb113(22)
      abb113(31)=spak1l6*abb113(9)
      abb113(26)=abb113(26)+abb113(31)+abb113(30)
      abb113(26)=spal5k7*abb113(26)
      abb113(16)=spal6k7*abb113(16)
      abb113(25)=spal5k7*abb113(25)
      abb113(16)=abb113(16)+abb113(25)
      abb113(16)=spak4k7*abb113(16)
      abb113(21)=spal6k7*abb113(21)
      abb113(25)=spal5k7*abb113(29)
      abb113(21)=abb113(21)+abb113(25)
      abb113(21)=spak1k7*abb113(21)
      abb113(16)=abb113(16)+abb113(21)
      abb113(16)=spbk7k2*abb113(16)
      abb113(16)=abb113(16)+abb113(26)+abb113(17)
      abb113(16)=8.0_ki*abb113(16)
      abb113(17)=abb113(7)*c4
      abb113(17)=abb113(17)-c1
      abb113(21)=-abb113(13)*abb113(17)
      abb113(25)=abb113(21)*abb113(7)
      abb113(26)=-abb113(25)+abb113(15)
      abb113(26)=spak4l6*abb113(26)
      abb113(29)=-abb113(12)*abb113(17)
      abb113(30)=abb113(29)*abb113(7)
      abb113(31)=-abb113(30)+abb113(24)
      abb113(31)=spak4l5*abb113(31)
      abb113(32)=-abb113(18)*abb113(17)
      abb113(33)=abb113(32)*abb113(7)
      abb113(34)=-abb113(33)+abb113(20)
      abb113(34)=spak1l6*abb113(34)
      abb113(35)=-abb113(11)*abb113(17)
      abb113(36)=abb113(35)*abb113(7)
      abb113(37)=-abb113(36)+abb113(28)
      abb113(37)=spak1l5*abb113(37)
      abb113(26)=abb113(37)+abb113(34)+abb113(26)+abb113(31)
      abb113(26)=16.0_ki*abb113(26)
      abb113(31)=2.0_ki*abb113(7)
      abb113(21)=abb113(21)*abb113(31)
      abb113(21)=-abb113(15)+abb113(21)+abb113(14)
      abb113(21)=spak4k7*abb113(21)
      abb113(32)=abb113(32)*abb113(31)
      abb113(32)=-abb113(20)+abb113(32)+abb113(19)
      abb113(32)=spak1k7*abb113(32)
      abb113(10)=abb113(8)*abb113(10)
      abb113(34)=-abb113(13)*abb113(10)
      abb113(13)=abb113(13)*abb113(8)
      abb113(37)=c2*abb113(13)
      abb113(37)=abb113(37)-abb113(34)
      abb113(37)=spak4l6*abb113(37)
      abb113(38)=-abb113(18)*abb113(10)
      abb113(18)=abb113(18)*abb113(8)
      abb113(39)=c2*abb113(18)
      abb113(39)=abb113(39)-abb113(38)
      abb113(39)=spak1l6*abb113(39)
      abb113(37)=abb113(37)+abb113(39)
      abb113(37)=spbl6k2*abb113(37)
      abb113(22)=-abb113(8)*abb113(22)
      abb113(39)=-spak4l5*abb113(22)
      abb113(9)=abb113(8)*abb113(9)
      abb113(40)=spak1l5*abb113(9)
      abb113(21)=abb113(37)+abb113(40)+abb113(39)+abb113(21)+abb113(32)
      abb113(21)=8.0_ki*abb113(21)
      abb113(29)=abb113(29)*abb113(31)
      abb113(29)=-abb113(24)+abb113(29)+abb113(23)
      abb113(29)=spak4k7*abb113(29)
      abb113(31)=abb113(35)*abb113(31)
      abb113(31)=-abb113(28)+abb113(31)+abb113(27)
      abb113(31)=spak1k7*abb113(31)
      abb113(12)=-abb113(12)*abb113(10)
      abb113(32)=abb113(8)*abb113(24)
      abb113(32)=abb113(32)-abb113(12)
      abb113(32)=spak4l5*abb113(32)
      abb113(10)=-abb113(11)*abb113(10)
      abb113(11)=abb113(11)*abb113(8)
      abb113(35)=c2*abb113(11)
      abb113(35)=abb113(35)-abb113(10)
      abb113(35)=spak1l5*abb113(35)
      abb113(32)=abb113(32)+abb113(35)
      abb113(32)=spbl5k2*abb113(32)
      abb113(22)=-spak4l6*abb113(22)
      abb113(9)=spak1l6*abb113(9)
      abb113(9)=abb113(32)+abb113(9)+abb113(22)+abb113(29)+abb113(31)
      abb113(9)=8.0_ki*abb113(9)
      abb113(14)=2.0_ki*abb113(15)-abb113(25)+abb113(14)
      abb113(14)=spal6k7*abb113(14)
      abb113(15)=2.0_ki*abb113(24)-abb113(30)+abb113(23)
      abb113(15)=spal5k7*abb113(15)
      abb113(14)=abb113(14)+abb113(15)
      abb113(14)=8.0_ki*abb113(14)
      abb113(15)=abb113(17)*abb113(7)
      abb113(13)=-abb113(13)*abb113(15)
      abb113(13)=abb113(13)-abb113(34)
      abb113(13)=8.0_ki*abb113(13)
      abb113(17)=abb113(8)*abb113(30)
      abb113(12)=abb113(17)-abb113(12)
      abb113(12)=8.0_ki*abb113(12)
      abb113(17)=2.0_ki*abb113(20)-abb113(33)+abb113(19)
      abb113(17)=spal6k7*abb113(17)
      abb113(19)=2.0_ki*abb113(28)-abb113(36)+abb113(27)
      abb113(19)=spal5k7*abb113(19)
      abb113(17)=abb113(17)+abb113(19)
      abb113(17)=8.0_ki*abb113(17)
      abb113(18)=-abb113(18)*abb113(15)
      abb113(18)=abb113(18)-abb113(38)
      abb113(18)=8.0_ki*abb113(18)
      abb113(11)=-abb113(11)*abb113(15)
      abb113(10)=abb113(11)-abb113(10)
      abb113(10)=8.0_ki*abb113(10)
      R2d113=0.0_ki
      rat2 = rat2 + R2d113
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='113' value='", &
          & R2d113, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd113h4
