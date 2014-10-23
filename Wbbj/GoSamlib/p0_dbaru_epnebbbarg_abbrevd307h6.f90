module     p0_dbaru_epnebbbarg_abbrevd307h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(39), public :: abb307
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
      abb307(3)=sqrt(mB**2)
      abb307(4)=NC**(-1)
      abb307(5)=sqrt2**(-1)
      abb307(6)=spbl5k2**(-1)
      abb307(7)=spbk7k2**(-1)
      abb307(8)=spak2l6**(-1)
      abb307(9)=spbl6k2**2
      abb307(10)=TR*gW
      abb307(10)=CVDU*i_*spak1k4*abb307(5)*abb307(2)*abb307(1)*abb307(10)**2
      abb307(11)=abb307(10)*abb307(7)
      abb307(12)=abb307(11)*spbk4k3
      abb307(13)=abb307(9)*abb307(12)
      abb307(14)=c1+c3
      abb307(15)=abb307(4)*abb307(14)
      abb307(16)=-c4+abb307(15)
      abb307(17)=abb307(16)*abb307(13)
      abb307(18)=abb307(4)*spbl6k2
      abb307(18)=c2*abb307(18)**2
      abb307(19)=abb307(18)*abb307(12)
      abb307(17)=abb307(17)-abb307(19)
      abb307(20)=abb307(3)**2
      abb307(21)=abb307(20)*abb307(17)
      abb307(22)=-spak4l6*abb307(21)
      abb307(23)=abb307(11)*spbk3k1
      abb307(24)=abb307(9)*abb307(23)
      abb307(16)=abb307(16)*abb307(24)
      abb307(25)=abb307(18)*abb307(23)
      abb307(16)=abb307(16)-abb307(25)
      abb307(20)=abb307(20)*abb307(16)
      abb307(26)=-spak1l6*abb307(20)
      abb307(22)=abb307(26)+abb307(22)
      abb307(22)=spal5k7*abb307(22)
      abb307(21)=spak4k7*abb307(21)
      abb307(20)=spak1k7*abb307(20)
      abb307(20)=abb307(21)+abb307(20)
      abb307(20)=spal5l6*abb307(20)
      abb307(21)=mB*abb307(4)
      abb307(26)=abb307(21)*abb307(3)
      abb307(27)=abb307(14)*abb307(26)*abb307(9)
      abb307(9)=abb307(9)*c4
      abb307(9)=abb307(18)+abb307(9)
      abb307(18)=abb307(3)*mB
      abb307(9)=abb307(9)*abb307(18)
      abb307(9)=abb307(9)-abb307(27)
      abb307(27)=abb307(10)*abb307(6)
      abb307(28)=spak1k7*abb307(27)*spbk3k1
      abb307(27)=spak4k7*abb307(27)*spbk4k3
      abb307(27)=abb307(28)+abb307(27)
      abb307(9)=spal6k7*abb307(9)*abb307(27)
      abb307(9)=abb307(9)+abb307(20)+abb307(22)
      abb307(9)=8.0_ki*abb307(9)
      abb307(20)=abb307(8)*mB**2
      abb307(22)=abb307(6)*abb307(20)
      abb307(28)=abb307(14)*abb307(22)*abb307(4)
      abb307(29)=abb307(4)**2
      abb307(30)=abb307(29)*c2
      abb307(31)=abb307(30)+c4
      abb307(32)=abb307(31)*abb307(22)
      abb307(32)=abb307(28)-abb307(32)
      abb307(10)=abb307(10)*spbl6k2
      abb307(33)=spak1k7*abb307(10)*spbk3k1
      abb307(10)=spak4k7*abb307(10)*spbk4k3
      abb307(10)=abb307(33)+abb307(10)
      abb307(33)=-16.0_ki*spal6k7*abb307(32)*abb307(10)
      abb307(34)=spak4l6*abb307(17)
      abb307(35)=spak1l6*abb307(16)
      abb307(34)=abb307(35)+abb307(34)
      abb307(34)=spal5k7*abb307(34)
      abb307(17)=-spak4k7*abb307(17)
      abb307(16)=-spak1k7*abb307(16)
      abb307(16)=abb307(17)+abb307(16)
      abb307(16)=spal5l6*abb307(16)
      abb307(16)=abb307(16)+abb307(34)
      abb307(16)=8.0_ki*abb307(16)
      abb307(11)=abb307(11)*spbl6k2
      abb307(17)=abb307(11)*spbk4k3
      abb307(34)=abb307(29)*abb307(17)
      abb307(35)=-c2*abb307(34)
      abb307(36)=-c4*abb307(17)
      abb307(35)=abb307(35)+abb307(36)
      abb307(36)=abb307(3)+mB
      abb307(35)=abb307(36)*abb307(35)
      abb307(36)=abb307(17)*abb307(21)
      abb307(37)=abb307(17)*abb307(4)
      abb307(38)=abb307(37)*abb307(3)
      abb307(36)=abb307(36)+abb307(38)
      abb307(36)=abb307(36)*abb307(14)
      abb307(35)=abb307(36)+abb307(35)
      abb307(35)=spak4l5*abb307(35)
      abb307(11)=abb307(11)*spbk3k1
      abb307(36)=abb307(11)*mB
      abb307(38)=abb307(11)*abb307(3)
      abb307(36)=abb307(36)+abb307(38)
      abb307(36)=-abb307(36)*abb307(31)
      abb307(39)=abb307(11)*abb307(21)
      abb307(38)=abb307(38)*abb307(4)
      abb307(38)=abb307(39)+abb307(38)
      abb307(38)=abb307(38)*abb307(14)
      abb307(36)=abb307(38)+abb307(36)
      abb307(36)=spak1l5*abb307(36)
      abb307(35)=abb307(36)+abb307(35)
      abb307(35)=abb307(3)*abb307(35)
      abb307(36)=abb307(3)*abb307(6)
      abb307(21)=abb307(14)*abb307(36)*abb307(21)
      abb307(36)=abb307(36)*mB
      abb307(38)=abb307(36)*c4
      abb307(21)=abb307(21)-abb307(38)
      abb307(30)=abb307(36)*abb307(30)
      abb307(30)=abb307(30)-abb307(21)
      abb307(10)=-abb307(30)*abb307(10)
      abb307(13)=-abb307(13)*abb307(21)
      abb307(19)=abb307(36)*abb307(19)
      abb307(13)=abb307(19)+abb307(13)
      abb307(13)=spak4l6*abb307(13)
      abb307(19)=-abb307(24)*abb307(21)
      abb307(21)=abb307(36)*abb307(25)
      abb307(19)=abb307(21)+abb307(19)
      abb307(19)=spak1l6*abb307(19)
      abb307(10)=abb307(19)+abb307(13)+abb307(10)+abb307(35)
      abb307(10)=8.0_ki*abb307(10)
      abb307(13)=spak4l5*abb307(17)
      abb307(19)=spak1l5*abb307(11)
      abb307(13)=abb307(13)+abb307(19)
      abb307(15)=abb307(31)-abb307(15)
      abb307(13)=abb307(15)*abb307(13)
      abb307(15)=-16.0_ki*abb307(13)
      abb307(19)=abb307(4)*abb307(20)
      abb307(21)=abb307(19)*abb307(12)
      abb307(24)=abb307(12)*abb307(8)
      abb307(25)=abb307(24)*abb307(26)
      abb307(21)=-abb307(37)+abb307(21)+abb307(25)
      abb307(21)=abb307(21)*abb307(14)
      abb307(25)=abb307(20)*abb307(12)
      abb307(24)=abb307(24)*abb307(18)
      abb307(24)=abb307(25)+abb307(24)
      abb307(25)=abb307(17)-abb307(24)
      abb307(25)=c4*abb307(25)
      abb307(24)=-abb307(29)*abb307(24)
      abb307(24)=abb307(34)+abb307(24)
      abb307(24)=c2*abb307(24)
      abb307(21)=abb307(24)+abb307(25)+abb307(21)
      abb307(21)=spak4l5*abb307(21)
      abb307(24)=abb307(20)*abb307(23)
      abb307(25)=abb307(23)*abb307(8)
      abb307(18)=abb307(25)*abb307(18)
      abb307(18)=-abb307(11)+abb307(24)+abb307(18)
      abb307(18)=-abb307(18)*abb307(31)
      abb307(24)=abb307(19)*abb307(23)
      abb307(25)=abb307(25)*abb307(26)
      abb307(26)=abb307(11)*abb307(4)
      abb307(24)=-abb307(25)+abb307(26)-abb307(24)
      abb307(24)=-abb307(24)*abb307(14)
      abb307(18)=abb307(24)+abb307(18)
      abb307(18)=spak1l5*abb307(18)
      abb307(14)=abb307(14)*abb307(19)
      abb307(19)=abb307(31)*abb307(20)
      abb307(14)=abb307(14)-abb307(19)
      abb307(14)=abb307(14)*abb307(27)
      abb307(19)=-abb307(31)*abb307(17)*abb307(22)
      abb307(20)=abb307(17)*abb307(28)
      abb307(19)=abb307(20)+abb307(19)
      abb307(20)=-spak4l6*abb307(19)
      abb307(22)=abb307(11)*abb307(32)
      abb307(24)=-spak1l6*abb307(22)
      abb307(14)=abb307(24)+abb307(20)+abb307(18)+abb307(21)+abb307(14)
      abb307(14)=16.0_ki*abb307(14)
      abb307(13)=-8.0_ki*abb307(13)
      abb307(18)=abb307(22)*spak1k7
      abb307(20)=abb307(19)*spak4k7
      abb307(18)=abb307(18)+abb307(20)
      abb307(20)=es12+es71-es712
      abb307(18)=8.0_ki*abb307(18)*abb307(20)
      abb307(19)=-spak2k4*abb307(19)
      abb307(20)=spak1k2*abb307(22)
      abb307(19)=abb307(19)+abb307(20)
      abb307(19)=8.0_ki*abb307(19)
      abb307(20)=8.0_ki*abb307(30)
      abb307(17)=abb307(17)*abb307(20)
      abb307(21)=-16.0_ki*abb307(32)
      abb307(12)=abb307(12)*abb307(21)
      abb307(11)=abb307(11)*abb307(20)
      abb307(20)=abb307(23)*abb307(21)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd307h6
