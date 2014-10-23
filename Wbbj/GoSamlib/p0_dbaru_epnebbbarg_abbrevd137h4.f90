module     p0_dbaru_epnebbbarg_abbrevd137h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(31), public :: abb137
   complex(ki), public :: R2d137
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
      abb137(1)=1.0_ki/(-es71+es712-es12)
      abb137(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb137(3)=1.0_ki/(-es71+es56-es567+es234)
      abb137(4)=sqrt2**(-1)
      abb137(5)=es56**(-1)
      abb137(6)=spbl5k2**(-1)
      abb137(7)=spbk7k2**(-1)
      abb137(8)=spbl6k2**(-1)
      abb137(9)=NC**(-1)
      abb137(10)=1.0_ki/(es34+es567-es12-es234)
      abb137(11)=spak4l5*spbl5k2
      abb137(12)=abb137(11)*abb137(8)
      abb137(12)=abb137(12)+spak4l6
      abb137(13)=es12+es71-es712
      abb137(14)=abb137(13)*NC
      abb137(15)=-abb137(14)*abb137(12)
      abb137(16)=NC*spbk2k1
      abb137(17)=abb137(16)*abb137(13)
      abb137(18)=spak1k4*abb137(8)
      abb137(19)=abb137(18)*abb137(17)
      abb137(15)=abb137(19)+abb137(15)
      abb137(15)=spak1l5*abb137(15)
      abb137(19)=spak4l6*spbl6k2
      abb137(20)=abb137(19)*abb137(6)
      abb137(20)=abb137(20)+spak4l5
      abb137(14)=-abb137(14)*abb137(20)
      abb137(21)=spak1k4*abb137(6)
      abb137(17)=abb137(21)*abb137(17)
      abb137(14)=abb137(17)+abb137(14)
      abb137(14)=spak1l6*abb137(14)
      abb137(14)=abb137(15)+abb137(14)
      abb137(14)=c1*abb137(14)
      abb137(15)=-spbk2k1*abb137(18)
      abb137(12)=abb137(15)+abb137(12)
      abb137(12)=spak1l5*abb137(12)
      abb137(15)=-spbk2k1*abb137(21)
      abb137(15)=abb137(15)+abb137(20)
      abb137(15)=spak1l6*abb137(15)
      abb137(12)=abb137(12)+abb137(15)
      abb137(12)=c4*abb137(13)*abb137(12)
      abb137(12)=abb137(14)+abb137(12)
      abb137(13)=gW*TR
      abb137(13)=abb137(4)*abb137(13)**2*abb137(1)*abb137(2)*abb137(5)*CVDU*mB*&
      &i_
      abb137(14)=abb137(3)*abb137(7)
      abb137(15)=abb137(13)*abb137(14)*spbk3k2
      abb137(12)=8.0_ki*abb137(12)*abb137(15)
      abb137(17)=NC+abb137(9)
      abb137(20)=abb137(17)*abb137(8)
      abb137(22)=abb137(11)*abb137(20)
      abb137(23)=abb137(9)*spbk2k1
      abb137(16)=abb137(23)+abb137(16)
      abb137(23)=-abb137(16)*abb137(18)
      abb137(24)=spak4l6*abb137(17)
      abb137(22)=abb137(23)+abb137(22)+abb137(24)
      abb137(22)=spak1l5*abb137(22)
      abb137(23)=abb137(17)*abb137(6)
      abb137(24)=abb137(19)*abb137(23)
      abb137(16)=-abb137(16)*abb137(21)
      abb137(25)=spak4l5*abb137(17)
      abb137(16)=abb137(16)+abb137(24)+abb137(25)
      abb137(16)=spak1l6*abb137(16)
      abb137(16)=abb137(22)+abb137(16)
      abb137(16)=c1*abb137(16)
      abb137(22)=abb137(9)**2
      abb137(22)=abb137(22)+1.0_ki
      abb137(24)=abb137(22)*abb137(8)
      abb137(25)=-abb137(11)*abb137(24)
      abb137(26)=spbk2k1*abb137(22)
      abb137(27)=abb137(26)*abb137(18)
      abb137(28)=-spak4l6*abb137(22)
      abb137(25)=abb137(27)+abb137(25)+abb137(28)
      abb137(25)=spak1l5*abb137(25)
      abb137(27)=abb137(22)*abb137(6)
      abb137(28)=-abb137(19)*abb137(27)
      abb137(26)=abb137(26)*abb137(21)
      abb137(29)=-spak4l5*abb137(22)
      abb137(26)=abb137(26)+abb137(28)+abb137(29)
      abb137(26)=spak1l6*abb137(26)
      abb137(25)=abb137(25)+abb137(26)
      abb137(25)=c4*abb137(25)
      abb137(16)=abb137(16)+abb137(25)
      abb137(15)=16.0_ki*abb137(16)*abb137(15)
      abb137(16)=spak4l6*spbk7k3
      abb137(25)=abb137(16)*abb137(17)
      abb137(11)=abb137(11)*spbk7k3
      abb137(26)=abb137(11)*abb137(20)
      abb137(28)=spbk2k1*spbk7k3
      abb137(29)=abb137(17)*abb137(28)
      abb137(30)=-abb137(29)*abb137(18)
      abb137(25)=abb137(30)+abb137(26)+abb137(25)
      abb137(25)=spak1l5*abb137(25)
      abb137(26)=spak4l5*spbk7k3
      abb137(30)=abb137(26)*abb137(17)
      abb137(19)=abb137(19)*spbk7k3
      abb137(31)=abb137(19)*abb137(23)
      abb137(29)=-abb137(29)*abb137(21)
      abb137(29)=abb137(29)+abb137(31)+abb137(30)
      abb137(29)=spak1l6*abb137(29)
      abb137(25)=abb137(25)+abb137(29)
      abb137(25)=c1*abb137(25)
      abb137(16)=-abb137(16)*abb137(22)
      abb137(11)=-abb137(11)*abb137(24)
      abb137(28)=abb137(22)*abb137(28)
      abb137(29)=abb137(28)*abb137(18)
      abb137(11)=abb137(29)+abb137(11)+abb137(16)
      abb137(11)=spak1l5*abb137(11)
      abb137(16)=-abb137(26)*abb137(22)
      abb137(19)=-abb137(19)*abb137(27)
      abb137(26)=abb137(28)*abb137(21)
      abb137(16)=abb137(26)+abb137(19)+abb137(16)
      abb137(16)=spak1l6*abb137(16)
      abb137(11)=abb137(11)+abb137(16)
      abb137(11)=c4*abb137(11)
      abb137(11)=abb137(25)+abb137(11)
      abb137(11)=abb137(11)*abb137(14)
      abb137(14)=abb137(10)*spbk4k3
      abb137(16)=abb137(14)*spak4l5
      abb137(19)=-abb137(16)*abb137(20)
      abb137(14)=abb137(14)*spak4l6
      abb137(20)=-abb137(14)*abb137(23)
      abb137(19)=abb137(19)+abb137(20)
      abb137(19)=spak1k4*abb137(19)
      abb137(20)=abb137(21)*spak1l6
      abb137(18)=abb137(18)*spak1l5
      abb137(18)=abb137(20)+abb137(18)
      abb137(18)=abb137(18)*abb137(10)*spbk3k1
      abb137(17)=-abb137(17)*abb137(18)
      abb137(17)=abb137(19)+abb137(17)
      abb137(17)=c1*abb137(17)
      abb137(16)=abb137(16)*abb137(24)
      abb137(14)=abb137(14)*abb137(27)
      abb137(14)=abb137(16)+abb137(14)
      abb137(14)=spak1k4*abb137(14)
      abb137(16)=abb137(22)*abb137(18)
      abb137(14)=abb137(14)+abb137(16)
      abb137(14)=c4*abb137(14)
      abb137(11)=abb137(11)+abb137(17)+abb137(14)
      abb137(13)=8.0_ki*abb137(13)
      abb137(11)=abb137(11)*abb137(13)
      R2d137=0.0_ki
      rat2 = rat2 + R2d137
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='137' value='", &
          & R2d137, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd137h4
