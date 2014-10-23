module     p0_dbaru_epnebbbarg_abbrevd91h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(43), public :: abb91
   complex(ki), public :: R2d91
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
      abb91(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb91(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb91(3)=NC**(-1)
      abb91(4)=sqrt2**(-1)
      abb91(5)=es71**(-1)
      abb91(6)=spak2k7**(-1)
      abb91(7)=spak2l5**(-1)
      abb91(8)=1.0_ki/(es34+es567-es12-es234)
      abb91(9)=spbl6k2**(-1)
      abb91(10)=spbl5k2**(-1)
      abb91(11)=spak2l6**(-1)
      abb91(12)=sqrt(mB**2)
      abb91(13)=spak2k4*spbk4k3
      abb91(14)=spbk3k1*spak1k2
      abb91(13)=abb91(13)-abb91(14)
      abb91(14)=spbk7k2*abb91(8)
      abb91(15)=mB**2
      abb91(16)=abb91(14)*abb91(15)
      abb91(17)=abb91(13)*abb91(16)
      abb91(18)=2.0_ki*c3
      abb91(19)=TR*gW
      abb91(19)=abb91(19)**2*CVDU*i_*spak1k4*abb91(6)*abb91(4)*abb91(2)*abb91(1)
      abb91(20)=abb91(19)*abb91(3)
      abb91(21)=abb91(18)*abb91(20)*abb91(17)
      abb91(22)=abb91(3)**2
      abb91(22)=abb91(22)+1.0_ki
      abb91(19)=abb91(19)*abb91(22)
      abb91(22)=abb91(19)*c4
      abb91(23)=abb91(13)*abb91(22)
      abb91(16)=-abb91(16)*abb91(23)
      abb91(21)=abb91(21)+abb91(16)
      abb91(24)=spak2l6**2
      abb91(25)=abb91(7)*abb91(24)*abb91(21)
      abb91(26)=spbk7k1*abb91(5)
      abb91(19)=abb91(19)*abb91(26)*c4*spak1k2
      abb91(27)=spbl5k2*abb91(19)
      abb91(26)=spak1k2*abb91(18)*abb91(26)
      abb91(28)=abb91(20)*spbl5k2
      abb91(29)=abb91(26)*abb91(28)
      abb91(29)=abb91(27)-abb91(29)
      abb91(30)=abb91(26)*abb91(20)*abb91(15)
      abb91(31)=abb91(19)*abb91(15)
      abb91(31)=abb91(30)-abb91(31)
      abb91(32)=-abb91(7)*abb91(31)
      abb91(32)=abb91(32)-abb91(29)
      abb91(32)=spbk3k2*abb91(24)*abb91(32)
      abb91(14)=-abb91(14)*abb91(13)
      abb91(33)=abb91(22)*spbl5k2
      abb91(34)=-abb91(33)*abb91(14)*abb91(24)
      abb91(35)=abb91(14)*abb91(18)
      abb91(24)=abb91(24)*abb91(28)*abb91(35)
      abb91(13)=abb91(13)*abb91(8)
      abb91(36)=abb91(33)*spak2l6
      abb91(37)=abb91(36)*abb91(13)
      abb91(38)=-abb91(13)*abb91(18)
      abb91(39)=abb91(28)*spak2l6
      abb91(40)=abb91(39)*abb91(38)
      abb91(37)=abb91(37)+abb91(40)
      abb91(40)=spal5l6*spbk7l5
      abb91(41)=-abb91(37)*abb91(40)
      abb91(42)=abb91(39)*abb91(26)
      abb91(27)=abb91(27)*spak2l6
      abb91(27)=abb91(42)-abb91(27)
      abb91(42)=spbl5k3*spal5l6
      abb91(43)=abb91(27)*abb91(42)
      abb91(24)=abb91(43)+abb91(41)+abb91(32)+abb91(25)+abb91(24)+abb91(34)
      abb91(24)=spbl6k2*abb91(24)
      abb91(25)=-abb91(36)*abb91(17)
      abb91(32)=-abb91(17)*abb91(18)
      abb91(34)=-abb91(39)*abb91(32)
      abb91(41)=abb91(15)*spbk3k2
      abb91(43)=-abb91(27)*abb91(41)
      abb91(24)=abb91(43)+abb91(34)+abb91(25)+abb91(24)
      abb91(24)=8.0_ki*abb91(24)
      abb91(25)=abb91(29)*abb91(41)
      abb91(34)=abb91(28)*abb91(32)
      abb91(17)=-abb91(17)*abb91(33)
      abb91(17)=abb91(17)+abb91(25)-abb91(34)
      abb91(17)=abb91(17)*abb91(9)
      abb91(25)=spak2l6*abb91(30)
      abb91(30)=spak2l6*abb91(19)
      abb91(15)=abb91(30)*abb91(15)
      abb91(15)=abb91(25)-abb91(15)
      abb91(15)=abb91(15)*abb91(7)
      abb91(25)=abb91(15)-abb91(27)
      abb91(25)=abb91(25)*spbk3k2
      abb91(34)=abb91(20)*spak2l6
      abb91(32)=-abb91(34)*abb91(32)
      abb91(16)=-spak2l6*abb91(16)
      abb91(16)=abb91(32)-abb91(16)
      abb91(16)=abb91(16)*abb91(7)
      abb91(32)=-abb91(36)*abb91(14)
      abb91(33)=abb91(33)*abb91(13)
      abb91(28)=-abb91(28)*abb91(38)
      abb91(28)=abb91(28)-abb91(33)
      abb91(33)=abb91(28)*abb91(40)
      abb91(36)=abb91(29)*abb91(42)
      abb91(39)=abb91(39)*abb91(35)
      abb91(17)=abb91(17)+abb91(39)-abb91(25)+abb91(32)+abb91(33)+abb91(16)-abb&
      &91(36)
      abb91(17)=16.0_ki*abb91(17)
      abb91(25)=abb91(31)*spbk3k2
      abb91(21)=-abb91(25)+abb91(21)
      abb91(25)=abb91(10)*abb91(7)*abb91(21)
      abb91(21)=abb91(21)*abb91(9)
      abb91(31)=abb91(11)*abb91(21)
      abb91(14)=abb91(14)*abb91(22)
      abb91(22)=abb91(26)*abb91(20)
      abb91(19)=abb91(22)-abb91(19)
      abb91(22)=spbk3k2*abb91(19)
      abb91(32)=abb91(20)*abb91(35)
      abb91(22)=abb91(31)+abb91(25)+abb91(22)+abb91(32)-abb91(14)
      abb91(22)=16.0_ki*abb91(22)
      abb91(13)=abb91(18)*abb91(20)*abb91(13)
      abb91(18)=abb91(8)*abb91(23)
      abb91(20)=abb91(13)-abb91(18)
      abb91(23)=abb91(20)*abb91(40)
      abb91(15)=-spbk3k2*abb91(15)
      abb91(15)=abb91(16)+abb91(15)
      abb91(15)=abb91(10)*abb91(15)
      abb91(14)=-spak2l6*abb91(14)
      abb91(16)=abb91(34)*abb91(26)
      abb91(16)=-abb91(30)+abb91(16)
      abb91(16)=spbk3k2*abb91(16)
      abb91(25)=abb91(19)*abb91(42)
      abb91(31)=abb91(34)*abb91(35)
      abb91(14)=abb91(15)+abb91(25)+abb91(23)+abb91(21)+abb91(16)+abb91(31)+abb&
      &91(14)
      abb91(14)=spbl6l5*abb91(14)
      abb91(15)=-mB*abb91(18)
      abb91(13)=mB*abb91(13)
      abb91(13)=abb91(13)+abb91(15)
      abb91(13)=spbk7l5*abb91(13)
      abb91(16)=abb91(19)*spbl5k3
      abb91(18)=mB*abb91(16)
      abb91(13)=abb91(13)+abb91(18)
      abb91(13)=abb91(12)*abb91(13)
      abb91(15)=spak2l6*abb91(15)
      abb91(18)=abb91(34)*mB
      abb91(21)=-abb91(18)*abb91(38)
      abb91(15)=abb91(21)+abb91(15)
      abb91(21)=abb91(12)*abb91(7)
      abb91(15)=abb91(15)*abb91(21)
      abb91(15)=abb91(15)-abb91(37)
      abb91(15)=spbk7l6*abb91(15)
      abb91(23)=-mB*abb91(30)
      abb91(18)=abb91(26)*abb91(18)
      abb91(18)=abb91(23)+abb91(18)
      abb91(18)=abb91(18)*abb91(21)
      abb91(18)=abb91(18)+abb91(27)
      abb91(18)=spbl6k3*abb91(18)
      abb91(21)=spbk7l5*abb91(28)
      abb91(23)=-spbl5k3*abb91(29)
      abb91(21)=abb91(21)+abb91(23)
      abb91(21)=spak2l5*abb91(21)
      abb91(13)=abb91(21)+abb91(18)+abb91(15)+abb91(13)+abb91(14)
      abb91(13)=8.0_ki*abb91(13)
      abb91(14)=spbk7l6*abb91(20)
      abb91(15)=spbl6k3*abb91(19)
      abb91(14)=abb91(14)+abb91(15)
      abb91(14)=8.0_ki*abb91(14)
      abb91(15)=spbk7l5*abb91(20)
      abb91(15)=abb91(15)+abb91(16)
      abb91(15)=8.0_ki*abb91(15)
      R2d91=0.0_ki
      rat2 = rat2 + R2d91
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='91' value='", &
          & R2d91, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd91h1
