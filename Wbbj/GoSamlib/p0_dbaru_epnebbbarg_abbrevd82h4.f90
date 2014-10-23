module     p0_dbaru_epnebbbarg_abbrevd82h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(45), public :: abb82
   complex(ki), public :: R2d82
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
      abb82(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb82(2)=NC**(-1)
      abb82(3)=sqrt2**(-1)
      abb82(4)=es56**(-1)
      abb82(5)=spbl5k2**(-1)
      abb82(6)=spbl6k2**(-1)
      abb82(7)=spbk7k2**(-1)
      abb82(8)=c1*abb82(2)
      abb82(9)=c4*abb82(2)**2
      abb82(10)=abb82(8)-abb82(9)
      abb82(11)=spbk3k2**2
      abb82(12)=-abb82(11)*abb82(10)
      abb82(13)=TR*gW
      abb82(13)=CVDU*i_*mB*abb82(4)*abb82(3)*abb82(1)*abb82(13)**2
      abb82(14)=abb82(13)*abb82(5)
      abb82(15)=abb82(14)*abb82(12)
      abb82(16)=abb82(14)*c2
      abb82(17)=abb82(11)*abb82(16)
      abb82(15)=abb82(17)+abb82(15)
      abb82(15)=spal6k7*abb82(15)
      abb82(17)=abb82(13)*abb82(6)
      abb82(12)=abb82(17)*abb82(12)
      abb82(18)=abb82(17)*c2
      abb82(19)=abb82(11)*abb82(18)
      abb82(12)=abb82(19)+abb82(12)
      abb82(12)=spal5k7*abb82(12)
      abb82(12)=abb82(15)+abb82(12)
      abb82(15)=spak1k7*spak3k4
      abb82(12)=8.0_ki*abb82(15)*abb82(12)
      abb82(19)=abb82(10)-c2
      abb82(13)=abb82(13)*abb82(7)
      abb82(20)=abb82(13)*abb82(6)
      abb82(21)=-abb82(19)*abb82(20)
      abb82(22)=abb82(11)*abb82(21)
      abb82(23)=abb82(22)*spak1l5
      abb82(24)=abb82(13)*abb82(5)
      abb82(25)=abb82(19)*abb82(24)
      abb82(11)=abb82(11)*abb82(25)
      abb82(26)=abb82(11)*spak1l6
      abb82(23)=abb82(23)-abb82(26)
      abb82(23)=abb82(23)*spak3k4
      abb82(26)=16.0_ki*abb82(23)
      abb82(8)=-abb82(8)+c2+abb82(9)
      abb82(8)=spak1k4*abb82(8)
      abb82(9)=abb82(14)*spbk3k2
      abb82(27)=spal6k7*abb82(9)
      abb82(28)=abb82(17)*spbk3k2
      abb82(29)=spal5k7*abb82(28)
      abb82(27)=abb82(27)+abb82(29)
      abb82(27)=16.0_ki*abb82(8)*abb82(27)
      abb82(23)=8.0_ki*abb82(23)
      abb82(13)=abb82(13)*spbk3k2
      abb82(29)=abb82(13)*abb82(5)
      abb82(30)=-abb82(29)*abb82(19)
      abb82(31)=abb82(30)*spak3k4
      abb82(24)=abb82(24)*abb82(8)
      abb82(32)=abb82(24)*spbk2k1
      abb82(31)=abb82(31)+abb82(32)
      abb82(33)=spak1l6*abb82(31)
      abb82(13)=abb82(13)*abb82(6)
      abb82(34)=-abb82(13)*abb82(19)
      abb82(35)=abb82(34)*spak3k4
      abb82(20)=abb82(20)*abb82(8)
      abb82(36)=abb82(20)*spbk2k1
      abb82(35)=abb82(35)+abb82(36)
      abb82(37)=spak1l5*abb82(35)
      abb82(33)=abb82(33)+abb82(37)
      abb82(33)=spbk7k3*abb82(33)
      abb82(29)=abb82(29)*abb82(8)
      abb82(37)=spak1l6*abb82(29)
      abb82(13)=-abb82(13)*abb82(8)
      abb82(38)=-spak1l5*abb82(13)
      abb82(37)=abb82(37)+abb82(38)
      abb82(37)=spbk7k1*abb82(37)
      abb82(33)=abb82(33)+abb82(37)
      abb82(33)=8.0_ki*abb82(33)
      abb82(15)=16.0_ki*abb82(15)
      abb82(11)=abb82(11)*abb82(15)
      abb82(37)=spbk7k3*spak1k7
      abb82(38)=-abb82(31)*abb82(37)
      abb82(39)=spak1k4**2*spbk4k3*spbk2k1
      abb82(40)=-abb82(25)*abb82(39)
      abb82(41)=es71*abb82(29)
      abb82(38)=abb82(41)+abb82(38)+abb82(40)
      abb82(38)=8.0_ki*abb82(38)
      abb82(40)=16.0_ki*abb82(29)
      abb82(41)=32.0_ki*abb82(29)
      abb82(29)=8.0_ki*abb82(29)
      abb82(15)=-abb82(22)*abb82(15)
      abb82(22)=-abb82(35)*abb82(37)
      abb82(37)=abb82(21)*abb82(39)
      abb82(39)=-es71*abb82(13)
      abb82(22)=abb82(39)+abb82(22)+abb82(37)
      abb82(22)=8.0_ki*abb82(22)
      abb82(37)=16.0_ki*abb82(13)
      abb82(39)=-32.0_ki*abb82(13)
      abb82(13)=-8.0_ki*abb82(13)
      abb82(42)=-abb82(14)*abb82(10)
      abb82(16)=abb82(42)+abb82(16)
      abb82(42)=spak1l6*abb82(16)
      abb82(10)=-abb82(17)*abb82(10)
      abb82(10)=abb82(10)+abb82(18)
      abb82(18)=spak1l5*abb82(10)
      abb82(18)=abb82(42)+abb82(18)
      abb82(18)=8.0_ki*abb82(18)
      abb82(42)=-spak1k7*abb82(16)
      abb82(43)=spbk4k2*abb82(24)
      abb82(44)=spak1k3*abb82(30)
      abb82(42)=abb82(44)+abb82(42)+abb82(43)
      abb82(42)=8.0_ki*abb82(42)
      abb82(43)=-spak1k7*abb82(10)
      abb82(44)=spbk4k2*abb82(20)
      abb82(45)=spak1k3*abb82(34)
      abb82(43)=abb82(45)+abb82(43)+abb82(44)
      abb82(43)=8.0_ki*abb82(43)
      abb82(36)=abb82(36)*spak1l5
      abb82(32)=abb82(32)*spak1l6
      abb82(32)=abb82(36)+abb82(32)
      abb82(32)=8.0_ki*abb82(32)
      abb82(36)=-spbk4k3*abb82(32)
      abb82(30)=abb82(30)*spak1l6
      abb82(34)=abb82(34)*spak1l5
      abb82(30)=abb82(30)+abb82(34)
      abb82(34)=16.0_ki*abb82(30)
      abb82(30)=8.0_ki*abb82(30)
      abb82(44)=-abb82(25)*spak1l6
      abb82(45)=abb82(21)*spak1l5
      abb82(44)=abb82(44)+abb82(45)
      abb82(45)=-8.0_ki*spbk4k2*abb82(44)
      abb82(19)=abb82(19)*spak3k4
      abb82(9)=-abb82(9)*abb82(19)
      abb82(8)=abb82(8)*spbk2k1
      abb82(14)=abb82(14)*abb82(8)
      abb82(9)=abb82(9)+abb82(14)
      abb82(9)=spal6k7*abb82(9)
      abb82(14)=-abb82(28)*abb82(19)
      abb82(8)=abb82(17)*abb82(8)
      abb82(8)=abb82(14)+abb82(8)
      abb82(8)=spal5k7*abb82(8)
      abb82(8)=abb82(9)+abb82(8)
      abb82(8)=8.0_ki*abb82(8)
      abb82(9)=8.0_ki*abb82(31)
      abb82(14)=8.0_ki*abb82(35)
      abb82(17)=-spbk3k1*abb82(32)
      abb82(19)=16.0_ki*spbk3k1
      abb82(24)=-abb82(24)*abb82(19)
      abb82(19)=-abb82(20)*abb82(19)
      abb82(20)=-spbk2k1*abb82(44)
      abb82(16)=spal6k7*abb82(16)
      abb82(10)=spal5k7*abb82(10)
      abb82(10)=abb82(10)+abb82(16)+abb82(20)
      abb82(10)=8.0_ki*abb82(10)
      abb82(16)=8.0_ki*abb82(25)
      abb82(20)=-8.0_ki*abb82(21)
      R2d82=0.0_ki
      rat2 = rat2 + R2d82
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='82' value='", &
          & R2d82, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd82h4
