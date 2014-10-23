module     p0_dbaru_epnebbbarg_abbrevd8h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(40), public :: abb8
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
      abb8(6)=spbk7k2**(-1)
      abb8(7)=spak2l5**(-1)
      abb8(8)=spak2l6**(-1)
      abb8(9)=1.0_ki/(es34+es567-es12-es234)
      abb8(10)=spbk3k2**2
      abb8(11)=abb8(10)*spak3k4
      abb8(12)=spak2k7*abb8(7)
      abb8(13)=i_*CVDU*abb8(6)*abb8(5)*abb8(3)*abb8(1)
      abb8(14)=abb8(13)*NC
      abb8(15)=TR*gW
      abb8(15)=abb8(15)**2
      abb8(16)=abb8(15)*abb8(4)
      abb8(17)=spak1k2*abb8(12)*abb8(14)*abb8(16)*abb8(8)*mB**2*abb8(11)
      abb8(16)=abb8(16)*spak1k7
      abb8(18)=abb8(16)*abb8(14)
      abb8(19)=spbl5k2*spbk3k2
      abb8(20)=spak2k4*abb8(18)*abb8(19)*spbl6k2
      abb8(17)=abb8(17)+abb8(20)
      abb8(20)=c1-c3
      abb8(17)=abb8(20)*abb8(17)
      abb8(21)=spak1k4*abb8(9)
      abb8(22)=abb8(21)*spbl5k2
      abb8(14)=abb8(15)*abb8(22)*abb8(14)*spbl6k2
      abb8(23)=-spbk3k1*spak1k7*abb8(20)
      abb8(24)=abb8(14)*abb8(23)
      abb8(17)=abb8(24)+abb8(17)
      abb8(24)=c2-c4
      abb8(16)=-abb8(24)*abb8(16)*abb8(13)*spak3k4
      abb8(25)=-spbk3k2*abb8(16)
      abb8(18)=abb8(18)*spak3k4
      abb8(26)=spbk3k2*abb8(18)
      abb8(27)=-c3+2.0_ki*c1
      abb8(28)=-abb8(26)*abb8(27)
      abb8(25)=abb8(28)+abb8(25)
      abb8(25)=spbl5k3*spbl6k2*abb8(25)
      abb8(19)=abb8(19)*abb8(16)
      abb8(28)=2.0_ki*c3
      abb8(29)=abb8(28)-c1
      abb8(26)=abb8(29)*abb8(26)*spbl5k2
      abb8(19)=abb8(26)+abb8(19)
      abb8(19)=spbl6k3*abb8(19)
      abb8(26)=-c3-c1
      abb8(18)=abb8(26)*abb8(18)
      abb8(16)=abb8(18)-2.0_ki*abb8(16)
      abb8(10)=spbl6l5*abb8(10)*abb8(16)
      abb8(16)=spak4k7*spbk4k3
      abb8(16)=3.0_ki*abb8(16)
      abb8(16)=abb8(20)*abb8(16)
      abb8(14)=-abb8(14)*abb8(16)
      abb8(10)=3.0_ki*abb8(17)+abb8(14)+2.0_ki*abb8(10)+abb8(19)+abb8(25)
      abb8(10)=4.0_ki*abb8(2)*abb8(10)
      abb8(14)=spak1k7*NC
      abb8(17)=abb8(14)*c3
      abb8(18)=abb8(14)*c1
      abb8(19)=abb8(17)-abb8(18)
      abb8(13)=abb8(13)*abb8(15)*mB
      abb8(15)=abb8(13)*abb8(4)
      abb8(20)=abb8(15)*spbk3k2
      abb8(25)=abb8(20)*abb8(8)
      abb8(26)=abb8(25)*spbl5k2
      abb8(19)=spak2k4*abb8(26)*abb8(19)
      abb8(22)=abb8(22)*abb8(13)*abb8(8)
      abb8(30)=abb8(22)*NC
      abb8(23)=-abb8(30)*abb8(23)
      abb8(19)=abb8(19)+abb8(23)
      abb8(23)=-spak1k7*abb8(24)
      abb8(31)=-abb8(17)+2.0_ki*abb8(18)+abb8(23)
      abb8(25)=abb8(25)*spak3k4
      abb8(31)=spbl5k3*abb8(25)*abb8(31)
      abb8(16)=abb8(30)*abb8(16)
      abb8(16)=abb8(16)+3.0_ki*abb8(19)+abb8(31)
      abb8(16)=8.0_ki*abb8(16)
      abb8(19)=c3*NC
      abb8(31)=c1*NC
      abb8(19)=-abb8(19)+2.0_ki*abb8(31)
      abb8(19)=abb8(19)*spak1k2
      abb8(32)=-spak1k2*abb8(24)
      abb8(19)=abb8(19)+abb8(32)
      abb8(11)=abb8(15)*abb8(11)
      abb8(15)=abb8(11)*abb8(7)
      abb8(33)=-4.0_ki*abb8(15)*abb8(19)
      abb8(13)=abb8(21)*abb8(13)
      abb8(21)=spbl6k2*abb8(7)
      abb8(34)=abb8(13)*abb8(21)
      abb8(22)=abb8(34)+abb8(22)
      abb8(34)=abb8(24)*abb8(22)
      abb8(13)=NC*abb8(13)
      abb8(35)=abb8(13)*abb8(21)
      abb8(35)=abb8(35)+abb8(30)
      abb8(35)=-abb8(35)*abb8(27)
      abb8(36)=-abb8(35)-abb8(34)
      abb8(36)=spbk4k3*abb8(36)
      abb8(37)=abb8(21)*abb8(20)
      abb8(37)=abb8(37)+abb8(26)
      abb8(37)=abb8(37)*abb8(32)
      abb8(38)=abb8(20)*NC
      abb8(39)=abb8(21)*abb8(38)
      abb8(40)=abb8(26)*NC
      abb8(39)=abb8(39)+abb8(40)
      abb8(27)=spak1k2*abb8(39)*abb8(27)
      abb8(27)=abb8(36)+abb8(27)+abb8(37)
      abb8(27)=spak2k4*abb8(27)
      abb8(22)=-abb8(22)*abb8(32)
      abb8(32)=spak1k2*abb8(35)
      abb8(22)=abb8(32)+abb8(22)
      abb8(22)=spbk3k1*abb8(22)
      abb8(25)=-spbl5k3*abb8(25)*abb8(19)
      abb8(32)=abb8(20)*spak3k4
      abb8(19)=-spbl6k3*abb8(19)*abb8(32)*abb8(7)
      abb8(19)=abb8(19)+abb8(25)+abb8(22)+abb8(27)
      abb8(19)=4.0_ki*abb8(19)
      abb8(22)=abb8(30)*spak2k7
      abb8(21)=abb8(21)*spak2k7
      abb8(13)=abb8(13)*abb8(21)
      abb8(13)=abb8(22)+abb8(13)
      abb8(13)=-abb8(13)*abb8(29)
      abb8(22)=-spak2k7*abb8(34)
      abb8(13)=abb8(13)-abb8(22)
      abb8(22)=-4.0_ki*spbk4k3*abb8(13)
      abb8(17)=abb8(17)+abb8(18)+2.0_ki*abb8(23)
      abb8(17)=4.0_ki*abb8(17)
      abb8(15)=abb8(15)*abb8(17)
      abb8(17)=abb8(11)*abb8(8)*abb8(17)
      abb8(14)=-abb8(14)*abb8(28)
      abb8(14)=abb8(14)+abb8(18)-abb8(23)
      abb8(14)=4.0_ki*abb8(14)*abb8(26)*spak3k4
      abb8(18)=-NC*abb8(28)
      abb8(18)=abb8(18)+abb8(31)+abb8(24)
      abb8(11)=4.0_ki*abb8(11)
      abb8(11)=abb8(12)*abb8(18)*abb8(11)
      abb8(12)=abb8(21)*abb8(32)
      abb8(18)=abb8(26)*spak2k7
      abb8(23)=abb8(18)*spak3k4
      abb8(12)=abb8(12)+abb8(23)
      abb8(23)=abb8(29)*NC
      abb8(23)=-abb8(24)+abb8(23)
      abb8(12)=4.0_ki*abb8(12)*abb8(23)
      abb8(20)=abb8(21)*abb8(20)
      abb8(20)=abb8(20)+abb8(18)
      abb8(20)=abb8(20)*abb8(24)
      abb8(21)=abb8(21)*abb8(38)
      abb8(18)=abb8(18)*NC
      abb8(18)=abb8(21)+abb8(18)
      abb8(18)=-abb8(18)*abb8(29)
      abb8(18)=abb8(18)+abb8(20)
      abb8(18)=spak2k4*abb8(18)
      abb8(13)=-spbk3k1*abb8(13)
      abb8(13)=abb8(13)+abb8(18)
      abb8(13)=4.0_ki*abb8(13)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd8h7
