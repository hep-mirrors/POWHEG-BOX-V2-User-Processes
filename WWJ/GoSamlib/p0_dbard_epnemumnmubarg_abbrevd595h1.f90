module     p0_dbard_epnemumnmubarg_abbrevd595h1
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(32), public :: abb595
   complex(ki), public :: R2d595
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbard_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_color, only: TR
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb595(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb595(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb595(3)=1.0_ki/(es34+es567-es12-es234)
      abb595(4)=sqrt2**(-1)
      abb595(5)=spak2k7**(-1)
      abb595(6)=abb595(5)*spak1k4*c1*NC*gW**4*i_*TR*abb595(4)*abb595(3)*abb595(&
      &2)*abb595(1)
      abb595(7)=abb595(6)*spbk3k1
      abb595(8)=abb595(7)*spak1k2
      abb595(6)=abb595(6)*spbk4k3
      abb595(9)=abb595(6)*spak2k4
      abb595(8)=abb595(8)-abb595(9)
      abb595(9)=abb595(8)*spbk6k2
      abb595(10)=spak2k5*spbk7k2
      abb595(11)=-abb595(9)*abb595(10)
      abb595(12)=spak5k6*spbk7k6
      abb595(13)=-abb595(9)*abb595(12)
      abb595(14)=abb595(11)+abb595(13)
      abb595(15)=es71+es12-es712
      abb595(15)=8.0_ki*abb595(15)
      abb595(16)=-abb595(14)*abb595(15)
      abb595(17)=16.0_ki*abb595(14)
      abb595(18)=spbk7k6**2
      abb595(19)=abb595(18)*spak5k6
      abb595(20)=abb595(6)*abb595(19)
      abb595(21)=spak2k5*spbk7k6
      abb595(22)=abb595(6)*spbk7k2
      abb595(23)=abb595(22)*abb595(21)
      abb595(20)=abb595(20)+abb595(23)
      abb595(20)=spak4k7*abb595(20)
      abb595(19)=abb595(7)*abb595(19)
      abb595(23)=abb595(7)*spbk7k2
      abb595(24)=abb595(23)*abb595(21)
      abb595(19)=abb595(19)+abb595(24)
      abb595(19)=spak1k7*abb595(19)
      abb595(24)=abb595(8)*spbk7k2
      abb595(25)=2.0_ki*spak5k7
      abb595(25)=-abb595(25)*abb595(24)*spbk7k6
      abb595(14)=-abb595(25)+abb595(19)+abb595(20)+abb595(14)
      abb595(14)=8.0_ki*abb595(14)
      abb595(19)=abb595(6)*spbk7k6
      abb595(20)=abb595(19)*spak4k5
      abb595(26)=abb595(7)*spbk7k6
      abb595(27)=abb595(26)*spak1k5
      abb595(20)=abb595(20)+abb595(27)
      abb595(27)=16.0_ki*abb595(20)
      abb595(28)=abb595(22)*spak4k7
      abb595(29)=abb595(23)*spak1k7
      abb595(28)=abb595(28)+abb595(29)
      abb595(21)=-abb595(21)*abb595(28)
      abb595(22)=-spak4k5*abb595(22)
      abb595(23)=-spak1k5*abb595(23)
      abb595(22)=abb595(22)+abb595(23)
      abb595(22)=spbk6k5*spak2k5*abb595(22)
      abb595(11)=abb595(22)+abb595(25)-abb595(13)-2.0_ki*abb595(11)+abb595(21)
      abb595(11)=4.0_ki*abb595(11)
      abb595(13)=-8.0_ki*abb595(20)
      abb595(20)=8.0_ki*spak5k6
      abb595(18)=-abb595(20)*abb595(18)*abb595(8)
      abb595(15)=-abb595(24)*abb595(15)
      abb595(21)=16.0_ki*abb595(24)
      abb595(22)=abb595(7)*spak1k5
      abb595(23)=abb595(6)*spak4k5
      abb595(22)=abb595(22)+abb595(23)
      abb595(23)=spbk7k5*abb595(22)
      abb595(19)=spak4k6*abb595(19)
      abb595(25)=spak1k6*abb595(26)
      abb595(19)=abb595(25)+abb595(23)+abb595(19)
      abb595(19)=8.0_ki*abb595(19)
      abb595(23)=-4.0_ki*abb595(24)
      abb595(24)=abb595(8)*spbk7k6
      abb595(25)=-8.0_ki*abb595(24)
      abb595(24)=4.0_ki*abb595(24)
      abb595(26)=abb595(6)*spbk6k2
      abb595(29)=spak4k7*abb595(26)
      abb595(30)=abb595(7)*spbk6k2
      abb595(31)=spak1k7*abb595(30)
      abb595(29)=abb595(31)+abb595(29)
      abb595(10)=abb595(12)+abb595(10)
      abb595(10)=abb595(10)*abb595(29)
      abb595(8)=-spbk6k2**2*abb595(8)*spak5k6
      abb595(8)=2.0_ki*abb595(8)+abb595(10)
      abb595(8)=4.0_ki*abb595(8)
      abb595(10)=abb595(26)*spak4k5
      abb595(12)=abb595(30)*spak1k5
      abb595(10)=abb595(10)+abb595(12)
      abb595(12)=8.0_ki*abb595(10)
      abb595(29)=24.0_ki*abb595(10)
      abb595(10)=4.0_ki*abb595(10)
      abb595(22)=spbk5k2*abb595(22)
      abb595(31)=spak4k6*abb595(26)
      abb595(32)=spak1k6*abb595(30)
      abb595(22)=abb595(32)+abb595(22)+abb595(31)-abb595(28)
      abb595(22)=4.0_ki*abb595(22)
      abb595(9)=-16.0_ki*abb595(9)
      abb595(28)=-abb595(26)*abb595(20)
      abb595(31)=8.0_ki*spak2k5
      abb595(26)=-abb595(26)*abb595(31)
      abb595(6)=-8.0_ki*abb595(6)
      abb595(20)=-abb595(30)*abb595(20)
      abb595(30)=-abb595(30)*abb595(31)
      abb595(7)=-8.0_ki*abb595(7)
      R2d595=0.0_ki
      rat2 = rat2 + R2d595
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='595' value='", &
          & R2d595, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd595h1
