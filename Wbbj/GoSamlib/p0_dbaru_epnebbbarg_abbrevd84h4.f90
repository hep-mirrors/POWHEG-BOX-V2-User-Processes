module     p0_dbaru_epnebbbarg_abbrevd84h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(42), public :: abb84
   complex(ki), public :: R2d84
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
      abb84(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb84(2)=sqrt2**(-1)
      abb84(3)=es56**(-1)
      abb84(4)=spbl5k2**(-1)
      abb84(5)=spbl6k2**(-1)
      abb84(6)=spbk7k2**(-1)
      abb84(7)=TR*gW
      abb84(7)=abb84(1)*mB*i_*c2*CVDU*abb84(3)*abb84(2)*abb84(7)**2
      abb84(8)=abb84(4)*abb84(7)
      abb84(9)=abb84(8)*spal6k7
      abb84(10)=abb84(5)*abb84(7)
      abb84(11)=abb84(10)*spal5k7
      abb84(9)=abb84(9)+abb84(11)
      abb84(11)=spak1k7*spak3k4
      abb84(12)=spbk3k2**2
      abb84(13)=abb84(11)*abb84(12)
      abb84(14)=abb84(13)*abb84(9)
      abb84(14)=8.0_ki*abb84(14)
      abb84(15)=-spak2l6*abb84(8)
      abb84(16)=-spak2l5*abb84(10)
      abb84(15)=abb84(15)+abb84(16)
      abb84(15)=4.0_ki*abb84(13)*abb84(15)
      abb84(7)=abb84(6)*abb84(7)
      abb84(16)=abb84(7)*abb84(5)
      abb84(17)=abb84(16)*spak1l5
      abb84(7)=abb84(7)*abb84(4)
      abb84(18)=abb84(7)*spak1l6
      abb84(17)=abb84(17)+abb84(18)
      abb84(12)=abb84(17)*abb84(12)*spak3k4
      abb84(18)=16.0_ki*abb84(12)
      abb84(19)=16.0_ki*abb84(9)*spak1k4*spbk3k2
      abb84(12)=8.0_ki*abb84(12)
      abb84(20)=abb84(7)*spbk3k2
      abb84(21)=abb84(20)*spak3k4
      abb84(22)=abb84(7)*spak1k4
      abb84(23)=abb84(22)*spbk2k1
      abb84(21)=abb84(21)+abb84(23)
      abb84(24)=spak1l6*abb84(21)
      abb84(25)=abb84(16)*spbk3k2
      abb84(26)=abb84(25)*spak3k4
      abb84(27)=abb84(16)*spak1k4
      abb84(28)=abb84(27)*spbk2k1
      abb84(26)=abb84(26)+abb84(28)
      abb84(29)=spak1l5*abb84(26)
      abb84(24)=abb84(24)+abb84(29)
      abb84(24)=spbk7k3*abb84(24)
      abb84(29)=abb84(20)*spak1l6
      abb84(30)=abb84(25)*spak1l5
      abb84(29)=abb84(29)+abb84(30)
      abb84(30)=spbk7k1*spak1k4*abb84(29)
      abb84(24)=abb84(24)+abb84(30)
      abb84(24)=8.0_ki*abb84(24)
      abb84(30)=abb84(13)*abb84(7)
      abb84(31)=es71+es12-es712
      abb84(31)=4.0_ki*abb84(31)
      abb84(32)=abb84(30)*abb84(31)
      abb84(30)=-16.0_ki*abb84(30)
      abb84(33)=-abb84(11)*abb84(20)
      abb84(34)=-spak1k7*abb84(23)
      abb84(33)=abb84(33)+abb84(34)
      abb84(33)=spbk7k3*abb84(33)
      abb84(34)=spbk2k1*spbk4k3*spak1k4**2
      abb84(35)=abb84(7)*abb84(34)
      abb84(36)=abb84(20)*spak1k4
      abb84(37)=es71*abb84(36)
      abb84(33)=abb84(37)+abb84(33)+abb84(35)
      abb84(33)=8.0_ki*abb84(33)
      abb84(35)=16.0_ki*abb84(36)
      abb84(37)=32.0_ki*abb84(36)
      abb84(36)=8.0_ki*abb84(36)
      abb84(13)=abb84(13)*abb84(16)
      abb84(31)=abb84(13)*abb84(31)
      abb84(13)=-16.0_ki*abb84(13)
      abb84(11)=-abb84(11)*abb84(25)
      abb84(38)=-spak1k7*abb84(28)
      abb84(11)=abb84(11)+abb84(38)
      abb84(11)=spbk7k3*abb84(11)
      abb84(34)=abb84(16)*abb84(34)
      abb84(38)=abb84(25)*spak1k4
      abb84(39)=es71*abb84(38)
      abb84(11)=abb84(39)+abb84(11)+abb84(34)
      abb84(11)=8.0_ki*abb84(11)
      abb84(34)=16.0_ki*abb84(38)
      abb84(39)=32.0_ki*abb84(38)
      abb84(38)=8.0_ki*abb84(38)
      abb84(40)=spak1l6*abb84(8)
      abb84(41)=spak1l5*abb84(10)
      abb84(40)=abb84(40)+abb84(41)
      abb84(40)=8.0_ki*abb84(40)
      abb84(8)=-spak1k7*abb84(8)
      abb84(41)=spbk4k2*abb84(22)
      abb84(20)=spak1k3*abb84(20)
      abb84(8)=abb84(20)+abb84(8)+abb84(41)
      abb84(8)=8.0_ki*abb84(8)
      abb84(10)=-spak1k7*abb84(10)
      abb84(20)=spbk4k2*abb84(27)
      abb84(25)=spak1k3*abb84(25)
      abb84(10)=abb84(25)+abb84(10)+abb84(20)
      abb84(10)=8.0_ki*abb84(10)
      abb84(20)=abb84(28)*spak1l5
      abb84(23)=abb84(23)*spak1l6
      abb84(20)=abb84(20)+abb84(23)
      abb84(20)=8.0_ki*abb84(20)
      abb84(23)=-spbk4k3*abb84(20)
      abb84(25)=16.0_ki*abb84(29)
      abb84(28)=8.0_ki*abb84(29)
      abb84(29)=-8.0_ki*spbk4k2*abb84(17)
      abb84(41)=spak3k4*spbk3k2
      abb84(42)=spbk2k1*spak1k4
      abb84(41)=abb84(41)+abb84(42)
      abb84(41)=8.0_ki*abb84(41)*abb84(9)
      abb84(21)=8.0_ki*abb84(21)
      abb84(26)=8.0_ki*abb84(26)
      abb84(20)=-spbk3k1*abb84(20)
      abb84(42)=16.0_ki*spbk3k1
      abb84(22)=-abb84(22)*abb84(42)
      abb84(27)=-abb84(27)*abb84(42)
      abb84(17)=-spbk2k1*abb84(17)
      abb84(9)=abb84(17)+abb84(9)
      abb84(9)=8.0_ki*abb84(9)
      abb84(7)=-8.0_ki*abb84(7)
      abb84(16)=-8.0_ki*abb84(16)
      R2d84=0.0_ki
      rat2 = rat2 + R2d84
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='84' value='", &
          & R2d84, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd84h4
