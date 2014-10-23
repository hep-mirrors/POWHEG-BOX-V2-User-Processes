module     p0_dbaru_epnebbbarg_abbrevd303h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(35), public :: abb303
   complex(ki), public :: R2d303
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
      abb303(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb303(2)=1.0_ki/(es34+es567-es12-es234)
      abb303(3)=NC**(-1)
      abb303(4)=sqrt2**(-1)
      abb303(5)=spbl5k2**(-1)
      abb303(6)=spbk7k2**(-1)
      abb303(7)=spak2l5**(-1)
      abb303(8)=sqrt(mB**2)
      abb303(9)=spak2l6**(-1)
      abb303(10)=TR*gW
      abb303(10)=CVDU*i_*spak1k4*abb303(4)*abb303(2)*abb303(1)*abb303(10)**2
      abb303(11)=abb303(10)*spbk4k3
      abb303(12)=abb303(11)*c1
      abb303(13)=abb303(11)*c3
      abb303(14)=abb303(13)-abb303(12)
      abb303(15)=spbl6k2*abb303(3)
      abb303(16)=mB**2
      abb303(17)=abb303(15)*abb303(16)
      abb303(14)=abb303(17)*abb303(14)
      abb303(18)=NC*spbl6k2
      abb303(19)=abb303(18)*abb303(16)
      abb303(20)=-abb303(13)*abb303(19)
      abb303(14)=abb303(20)+abb303(14)
      abb303(14)=spak4k7*abb303(14)
      abb303(20)=abb303(10)*spbk3k1
      abb303(21)=abb303(20)*c1
      abb303(22)=abb303(20)*c3
      abb303(23)=abb303(22)-abb303(21)
      abb303(17)=abb303(17)*abb303(23)
      abb303(19)=-abb303(22)*abb303(19)
      abb303(17)=abb303(19)+abb303(17)
      abb303(17)=spak1k7*abb303(17)
      abb303(14)=abb303(14)+abb303(17)
      abb303(14)=abb303(5)*abb303(14)
      abb303(17)=abb303(18)-abb303(15)
      abb303(18)=abb303(13)*abb303(17)
      abb303(19)=abb303(15)*c1
      abb303(23)=abb303(11)*abb303(19)
      abb303(18)=abb303(23)+abb303(18)
      abb303(18)=spak4k7*abb303(18)
      abb303(17)=abb303(22)*abb303(17)
      abb303(19)=abb303(20)*abb303(19)
      abb303(17)=abb303(19)+abb303(17)
      abb303(17)=spak1k7*abb303(17)
      abb303(17)=abb303(18)+abb303(17)
      abb303(17)=spak2l5*abb303(17)
      abb303(18)=c1*abb303(3)*abb303(6)
      abb303(11)=abb303(18)*abb303(11)
      abb303(10)=abb303(10)*c3*abb303(6)
      abb303(19)=abb303(10)*spbk4k3
      abb303(23)=abb303(19)*abb303(3)
      abb303(24)=abb303(10)*NC
      abb303(25)=abb303(24)*spbk4k3
      abb303(23)=-abb303(11)+abb303(23)-abb303(25)
      abb303(26)=spbl6k2**2
      abb303(27)=abb303(5)*abb303(26)*abb303(16)
      abb303(26)=abb303(26)*spak2l5
      abb303(26)=abb303(26)-abb303(27)
      abb303(27)=-abb303(23)*abb303(26)
      abb303(28)=-spak4l6*abb303(27)
      abb303(18)=abb303(18)*abb303(20)
      abb303(10)=abb303(10)*spbk3k1
      abb303(20)=abb303(10)*abb303(3)
      abb303(24)=abb303(24)*spbk3k1
      abb303(20)=-abb303(24)+abb303(20)-abb303(18)
      abb303(26)=-abb303(20)*abb303(26)
      abb303(29)=-spak1l6*abb303(26)
      abb303(14)=abb303(29)+abb303(28)+abb303(14)+abb303(17)
      abb303(14)=4.0_ki*abb303(14)
      abb303(11)=-abb303(25)-abb303(11)
      abb303(11)=spbl6k2*abb303(11)
      abb303(17)=abb303(15)*abb303(19)
      abb303(11)=abb303(17)+abb303(11)
      abb303(17)=abb303(11)*spak4l5
      abb303(18)=-abb303(18)-abb303(24)
      abb303(18)=spbl6k2*abb303(18)
      abb303(10)=abb303(15)*abb303(10)
      abb303(10)=abb303(10)+abb303(18)
      abb303(15)=abb303(10)*spak1l5
      abb303(15)=abb303(17)+abb303(15)
      abb303(17)=8.0_ki*abb303(15)
      abb303(18)=abb303(11)*abb303(16)
      abb303(19)=spak4l5*abb303(18)
      abb303(24)=abb303(10)*abb303(16)
      abb303(25)=spak1l5*abb303(24)
      abb303(19)=abb303(19)+abb303(25)
      abb303(25)=abb303(7)*abb303(5)
      abb303(19)=abb303(19)*abb303(25)
      abb303(19)=abb303(19)-abb303(15)
      abb303(19)=8.0_ki*abb303(19)
      abb303(15)=4.0_ki*abb303(15)
      abb303(28)=abb303(23)*spak4l5
      abb303(29)=abb303(20)*spak1l5
      abb303(28)=abb303(28)+abb303(29)
      abb303(29)=-spbl5k2*abb303(28)
      abb303(30)=NC-abb303(3)
      abb303(13)=abb303(30)*abb303(13)
      abb303(12)=abb303(12)*abb303(3)
      abb303(12)=abb303(12)+abb303(13)
      abb303(12)=abb303(12)*spak4k7
      abb303(13)=abb303(30)*abb303(22)
      abb303(21)=abb303(21)*abb303(3)
      abb303(13)=abb303(13)+abb303(21)
      abb303(13)=abb303(13)*spak1k7
      abb303(12)=abb303(12)+abb303(13)
      abb303(13)=-spak4l6*abb303(11)
      abb303(21)=-spak1l6*abb303(10)
      abb303(13)=abb303(29)+abb303(21)+abb303(13)-abb303(12)
      abb303(13)=4.0_ki*abb303(13)
      abb303(21)=-spak4k7*abb303(8)
      abb303(22)=abb303(8)*abb303(9)
      abb303(29)=2.0_ki*abb303(22)
      abb303(30)=abb303(29)*spal6k7
      abb303(31)=spak2k4*abb303(30)
      abb303(21)=abb303(31)+abb303(21)
      abb303(21)=abb303(21)*abb303(23)
      abb303(31)=-spak1k7*abb303(8)
      abb303(30)=-spak1k2*abb303(30)
      abb303(30)=abb303(30)+abb303(31)
      abb303(30)=abb303(30)*abb303(20)
      abb303(21)=abb303(30)+abb303(21)
      abb303(21)=abb303(21)*mB*spbl6k2
      abb303(30)=-mB*abb303(23)
      abb303(31)=abb303(30)*abb303(22)
      abb303(32)=abb303(31)*spak4k7
      abb303(33)=-mB*abb303(20)
      abb303(22)=abb303(33)*abb303(22)
      abb303(34)=abb303(22)*spak1k7
      abb303(32)=abb303(32)+abb303(34)
      abb303(34)=es71+es12-es712
      abb303(34)=2.0_ki*abb303(34)
      abb303(32)=abb303(32)*abb303(34)
      abb303(21)=abb303(32)+abb303(21)
      abb303(21)=4.0_ki*abb303(21)
      abb303(32)=abb303(11)*spak4k7
      abb303(34)=abb303(10)*spak1k7
      abb303(32)=abb303(32)+abb303(34)
      abb303(34)=-16.0_ki*abb303(32)
      abb303(16)=abb303(16)*abb303(9)
      abb303(35)=abb303(23)*abb303(16)
      abb303(31)=-abb303(35)-abb303(31)
      abb303(31)=spak4k7*abb303(31)
      abb303(16)=abb303(20)*abb303(16)
      abb303(22)=-abb303(16)-abb303(22)
      abb303(22)=spak1k7*abb303(22)
      abb303(22)=abb303(31)+abb303(22)
      abb303(22)=8.0_ki*abb303(22)
      abb303(31)=4.0_ki*abb303(32)
      abb303(12)=-8.0_ki*abb303(12)
      abb303(30)=-abb303(30)*abb303(29)
      abb303(30)=abb303(30)+abb303(35)-abb303(11)
      abb303(30)=spak2k4*abb303(30)
      abb303(29)=abb303(33)*abb303(29)
      abb303(16)=abb303(29)-abb303(16)+abb303(10)
      abb303(16)=spak1k2*abb303(16)
      abb303(29)=spak2k4*abb303(18)
      abb303(32)=-spak1k2*abb303(24)
      abb303(29)=abb303(29)+abb303(32)
      abb303(25)=abb303(29)*abb303(25)
      abb303(29)=-spak4k7*abb303(23)
      abb303(32)=-spak1k7*abb303(20)
      abb303(29)=abb303(29)+abb303(32)
      abb303(29)=spbk7l6*abb303(29)
      abb303(28)=-spbl6l5*abb303(28)
      abb303(16)=abb303(28)+abb303(29)+abb303(25)+abb303(30)+abb303(16)
      abb303(16)=4.0_ki*abb303(16)
      abb303(25)=8.0_ki*spal6k7
      abb303(27)=-abb303(27)*abb303(25)
      abb303(18)=-abb303(5)*abb303(18)
      abb303(28)=spak2l5*abb303(11)
      abb303(18)=abb303(18)+abb303(28)
      abb303(18)=8.0_ki*abb303(18)
      abb303(11)=-abb303(11)*abb303(25)
      abb303(23)=-8.0_ki*abb303(23)
      abb303(26)=-abb303(26)*abb303(25)
      abb303(24)=-abb303(5)*abb303(24)
      abb303(28)=spak2l5*abb303(10)
      abb303(24)=abb303(24)+abb303(28)
      abb303(24)=8.0_ki*abb303(24)
      abb303(10)=-abb303(10)*abb303(25)
      abb303(20)=-8.0_ki*abb303(20)
      R2d303=0.0_ki
      rat2 = rat2 + R2d303
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='303' value='", &
          & R2d303, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd303h6
