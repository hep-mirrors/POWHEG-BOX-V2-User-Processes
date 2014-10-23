module     p0_dbaru_epnebbbarg_abbrevd100h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(40), public :: abb100
   complex(ki), public :: R2d100
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
      abb100(1)=1.0_ki/(-mB**2+es67)
      abb100(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb100(3)=1.0_ki/(es34+es567-es12-es234)
      abb100(4)=NC**(-1)
      abb100(5)=sqrt2**(-1)
      abb100(6)=spak2k7**(-1)
      abb100(7)=spak2l6**(-1)
      abb100(8)=spbl6k2**(-1)
      abb100(9)=sqrt(mB**2)
      abb100(10)=spbl5k2**(-1)
      abb100(11)=-es12+es712-es71
      abb100(12)=spak2l6*spbl6k2
      abb100(13)=-abb100(12)+abb100(11)
      abb100(14)=abb100(13)*spbk7k2
      abb100(15)=abb100(4)**2
      abb100(15)=abb100(15)+1.0_ki
      abb100(16)=TR*gW
      abb100(16)=abb100(16)**2*CVDU*i_*spak1k4*abb100(5)*abb100(3)*abb100(2)*ab&
      &b100(1)
      abb100(17)=abb100(16)*spbk7l6*abb100(6)
      abb100(18)=abb100(17)*abb100(15)
      abb100(19)=spbk4k3*c2
      abb100(20)=abb100(18)*abb100(19)
      abb100(17)=abb100(17)*c3*abb100(4)
      abb100(17)=2.0_ki*abb100(17)
      abb100(21)=abb100(17)*spbk4k3
      abb100(20)=abb100(21)-abb100(20)
      abb100(21)=abb100(14)*abb100(20)
      abb100(22)=-spak4k7*abb100(21)
      abb100(23)=-spbl6k2*abb100(11)
      abb100(24)=spak2l6*spbl6k2**2
      abb100(23)=abb100(24)+abb100(23)
      abb100(24)=abb100(23)*abb100(20)
      abb100(25)=spak4l6*abb100(24)
      abb100(26)=spbk3k1*c2
      abb100(18)=abb100(18)*abb100(26)
      abb100(17)=abb100(17)*spbk3k1
      abb100(17)=abb100(17)-abb100(18)
      abb100(14)=abb100(14)*abb100(17)
      abb100(18)=-spak1k7*abb100(14)
      abb100(23)=abb100(23)*abb100(17)
      abb100(27)=spak1l6*abb100(23)
      abb100(18)=abb100(27)+abb100(18)+abb100(25)+abb100(22)
      abb100(18)=spak2l5*abb100(18)
      abb100(21)=spal5k7*abb100(21)
      abb100(22)=-spal5l6*abb100(24)
      abb100(21)=abb100(21)+abb100(22)
      abb100(21)=spak2k4*abb100(21)
      abb100(14)=-spal5k7*abb100(14)
      abb100(22)=spal5l6*abb100(23)
      abb100(14)=abb100(14)+abb100(22)
      abb100(14)=spak1k2*abb100(14)
      abb100(14)=abb100(21)+abb100(14)+abb100(18)
      abb100(14)=8.0_ki*abb100(14)
      abb100(18)=abb100(20)*spak4l5
      abb100(21)=abb100(17)*spak1l5
      abb100(18)=abb100(18)+abb100(21)
      abb100(21)=abb100(11)*abb100(18)
      abb100(22)=16.0_ki*abb100(21)
      abb100(12)=abb100(18)*abb100(12)
      abb100(23)=-16.0_ki*abb100(12)
      abb100(24)=spak4k7*spbk7k2
      abb100(25)=spak4l6*spbl6k2
      abb100(24)=abb100(25)+abb100(24)
      abb100(24)=abb100(20)*abb100(24)
      abb100(25)=spak1k7*spbk7k2
      abb100(27)=spak1l6*spbl6k2
      abb100(25)=abb100(27)+abb100(25)
      abb100(25)=abb100(17)*abb100(25)
      abb100(24)=abb100(25)+abb100(24)
      abb100(25)=abb100(9)*mB
      abb100(27)=abb100(25)*abb100(10)
      abb100(24)=abb100(27)*abb100(24)
      abb100(28)=abb100(9)**2
      abb100(28)=abb100(28)+abb100(11)
      abb100(28)=abb100(18)*abb100(28)
      abb100(29)=mB**2
      abb100(30)=abb100(29)*spak1l5
      abb100(31)=abb100(30)*abb100(17)
      abb100(29)=abb100(29)*spak4l5
      abb100(32)=abb100(29)*abb100(20)
      abb100(31)=abb100(31)+abb100(32)
      abb100(32)=abb100(8)*abb100(7)
      abb100(33)=abb100(32)*abb100(31)
      abb100(11)=abb100(11)*abb100(33)
      abb100(11)=abb100(11)-abb100(12)+abb100(24)-abb100(31)+abb100(28)
      abb100(11)=16.0_ki*abb100(11)
      abb100(24)=32.0_ki*abb100(18)
      abb100(28)=32.0_ki*abb100(33)
      abb100(12)=abb100(12)-abb100(21)
      abb100(12)=8.0_ki*abb100(12)
      abb100(18)=8.0_ki*abb100(18)
      abb100(21)=-abb100(18)*spak2l6*spbk7k2
      abb100(15)=abb100(16)*abb100(15)
      abb100(31)=abb100(6)*abb100(15)
      abb100(33)=spbk7l6**2
      abb100(34)=abb100(31)*abb100(33)
      abb100(35)=-abb100(34)*abb100(19)
      abb100(36)=2.0_ki*abb100(4)
      abb100(16)=abb100(36)*abb100(16)*c3
      abb100(36)=abb100(16)*abb100(6)
      abb100(37)=abb100(36)*spbk4k3
      abb100(38)=abb100(33)*abb100(37)
      abb100(35)=abb100(35)+abb100(38)
      abb100(35)=spak4l5*abb100(35)
      abb100(34)=-abb100(34)*abb100(26)
      abb100(36)=abb100(36)*spbk3k1
      abb100(38)=abb100(33)*abb100(36)
      abb100(34)=abb100(34)+abb100(38)
      abb100(34)=spak1l5*abb100(34)
      abb100(34)=abb100(35)+abb100(34)
      abb100(34)=8.0_ki*spak2l6*abb100(34)
      abb100(35)=abb100(15)*spbk7l6
      abb100(38)=abb100(35)*abb100(19)
      abb100(39)=abb100(16)*spbk4k3
      abb100(40)=-spbk7l6*abb100(39)
      abb100(38)=abb100(38)+abb100(40)
      abb100(38)=spak4l5*abb100(38)
      abb100(35)=abb100(35)*abb100(26)
      abb100(16)=abb100(16)*spbk3k1
      abb100(40)=-spbk7l6*abb100(16)
      abb100(35)=abb100(35)+abb100(40)
      abb100(35)=spak1l5*abb100(35)
      abb100(35)=abb100(38)+abb100(35)
      abb100(35)=8.0_ki*spbl6k2*abb100(35)
      abb100(15)=abb100(15)*abb100(33)
      abb100(38)=abb100(15)*abb100(19)
      abb100(39)=-abb100(33)*abb100(39)
      abb100(38)=abb100(38)+abb100(39)
      abb100(38)=spak4l5*abb100(38)
      abb100(15)=abb100(15)*abb100(26)
      abb100(16)=-abb100(33)*abb100(16)
      abb100(15)=abb100(15)+abb100(16)
      abb100(15)=spak1l5*abb100(15)
      abb100(15)=abb100(38)+abb100(15)
      abb100(15)=8.0_ki*abb100(15)
      abb100(16)=8.0_ki*abb100(10)
      abb100(13)=abb100(16)*abb100(13)*abb100(25)
      abb100(16)=abb100(20)*abb100(13)
      abb100(20)=abb100(31)*abb100(26)
      abb100(20)=abb100(20)-abb100(36)
      abb100(25)=abb100(20)*abb100(30)
      abb100(19)=abb100(31)*abb100(19)
      abb100(19)=abb100(19)-abb100(37)
      abb100(26)=abb100(19)*abb100(29)
      abb100(25)=abb100(25)+abb100(26)
      abb100(25)=16.0_ki*abb100(25)
      abb100(26)=-abb100(7)*abb100(25)
      abb100(27)=8.0_ki*abb100(27)
      abb100(19)=abb100(19)*abb100(27)
      abb100(29)=-spbl6k2*abb100(19)
      abb100(25)=spbk7k2*abb100(32)*abb100(25)
      abb100(19)=spbk7k2*abb100(19)
      abb100(13)=abb100(17)*abb100(13)
      abb100(17)=abb100(20)*abb100(27)
      abb100(20)=-spbl6k2*abb100(17)
      abb100(17)=spbk7k2*abb100(17)
      R2d100=0.0_ki
      rat2 = rat2 + R2d100
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='100' value='", &
          & R2d100, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd100h2
