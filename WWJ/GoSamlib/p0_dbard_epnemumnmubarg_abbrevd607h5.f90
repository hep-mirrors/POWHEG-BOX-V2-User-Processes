module     p0_dbard_epnemumnmubarg_abbrevd607h5
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(35), public :: abb607
   complex(ki), public :: R2d607
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
      abb607(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb607(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb607(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb607(4)=NC**(-1)
      abb607(5)=sqrt2**(-1)
      abb607(6)=spbk7k2**(-1)
      abb607(7)=spak1k4*spbk4k3
      abb607(8)=spak1k7*spbk7k3
      abb607(7)=abb607(7)+abb607(8)
      abb607(9)=spak5k6*spak4k7
      abb607(10)=abb607(9)*abb607(7)
      abb607(11)=abb607(10)*spbk6k2**2
      abb607(12)=abb607(4)*abb607(3)*gW**4*abb607(1)*abb607(2)*abb607(5)*c1*TR*&
      &i_
      abb607(13)=16.0_ki*abb607(12)
      abb607(13)=abb607(13)*abb607(6)
      abb607(14)=-abb607(13)*abb607(11)
      abb607(15)=spak1k7*spak4k5
      abb607(16)=spak1k4*spak5k7
      abb607(15)=abb607(15)+abb607(16)
      abb607(16)=abb607(15)*spbk3k2
      abb607(17)=abb607(6)*spbk6k2
      abb607(18)=abb607(17)*abb607(12)
      abb607(19)=32.0_ki*abb607(18)
      abb607(20)=abb607(16)*abb607(19)
      abb607(12)=8.0_ki*abb607(12)
      abb607(21)=abb607(12)*abb607(6)
      abb607(11)=-abb607(21)*abb607(11)
      abb607(22)=16.0_ki*abb607(18)
      abb607(23)=abb607(16)*abb607(22)
      abb607(24)=spbk6k2*spak4k7*spak2k5
      abb607(7)=-abb607(7)*abb607(24)
      abb607(10)=-abb607(17)*spbk7k6*abb607(10)
      abb607(7)=abb607(7)+abb607(10)
      abb607(7)=abb607(7)*abb607(12)
      abb607(10)=spak5k6*spbk6k3
      abb607(25)=spbk3k2*spak2k5
      abb607(10)=abb607(10)-abb607(25)
      abb607(26)=-spak1k4*abb607(10)
      abb607(27)=abb607(26)*abb607(22)
      abb607(15)=spbk7k3*abb607(15)
      abb607(28)=abb607(15)*abb607(19)
      abb607(18)=8.0_ki*abb607(18)
      abb607(26)=abb607(26)*abb607(18)
      abb607(29)=spak1k7*spak4k6
      abb607(30)=spak1k4*spak6k7
      abb607(29)=abb607(29)+abb607(30)
      abb607(31)=spbk6k2*spbk3k2
      abb607(29)=abb607(29)*abb607(31)
      abb607(32)=spbk5k2*abb607(16)
      abb607(29)=abb607(29)+abb607(32)
      abb607(32)=-abb607(29)*abb607(13)
      abb607(29)=-abb607(29)*abb607(21)
      abb607(33)=-spbk5k2*abb607(15)
      abb607(34)=-spak4k6*abb607(8)
      abb607(30)=-spbk7k3*abb607(30)
      abb607(30)=abb607(34)+abb607(30)
      abb607(30)=spbk6k2*abb607(30)
      abb607(30)=abb607(30)+abb607(33)
      abb607(30)=abb607(30)*abb607(13)
      abb607(33)=spak1k7*spak2k4
      abb607(34)=spak1k4*spak2k7
      abb607(33)=abb607(33)-abb607(34)
      abb607(31)=abb607(33)*abb607(31)
      abb607(16)=spbk6k5*abb607(16)
      abb607(16)=abb607(31)+abb607(16)
      abb607(31)=-abb607(16)*abb607(13)
      abb607(16)=-abb607(16)*abb607(21)
      abb607(15)=-spbk6k5*abb607(15)
      abb607(8)=-spak2k4*abb607(8)
      abb607(21)=spbk7k3*abb607(34)
      abb607(8)=abb607(8)+abb607(21)
      abb607(8)=spbk6k2*abb607(8)
      abb607(8)=abb607(8)+abb607(15)
      abb607(8)=abb607(8)*abb607(13)
      abb607(10)=spak1k3*abb607(10)
      abb607(15)=-spak2k5*spbk4k2
      abb607(21)=spak5k6*spbk6k4
      abb607(15)=abb607(15)+abb607(21)
      abb607(15)=spak1k4*abb607(15)
      abb607(21)=-spak1k7*spak5k6*spbk7k6
      abb607(10)=abb607(15)+abb607(21)+abb607(10)
      abb607(10)=abb607(10)*abb607(17)
      abb607(15)=-spbk6k2*spak1k7*spak2k5
      abb607(10)=abb607(15)+abb607(10)
      abb607(10)=abb607(10)*abb607(12)
      abb607(15)=abb607(19)*spak1k5
      abb607(19)=-spbk5k2*spak1k5
      abb607(21)=-spbk6k2*spak1k6
      abb607(19)=abb607(19)+abb607(21)
      abb607(19)=abb607(19)*abb607(13)
      abb607(21)=-spbk6k5*spak1k5
      abb607(33)=spbk6k2*spak1k2
      abb607(21)=abb607(21)+abb607(33)
      abb607(13)=abb607(21)*abb607(13)
      abb607(21)=abb607(25)*spak4k7
      abb607(9)=abb607(9)*spbk6k3
      abb607(9)=abb607(21)-abb607(9)
      abb607(21)=abb607(9)*abb607(18)
      abb607(33)=spak5k6*abb607(18)
      abb607(34)=spbk6k3*spak3k4
      abb607(35)=spak4k7*spbk7k6
      abb607(34)=abb607(34)+abb607(35)
      abb607(34)=spak5k6*abb607(34)
      abb607(25)=-spak3k4*abb607(25)
      abb607(25)=abb607(34)+abb607(25)
      abb607(17)=abb607(25)*abb607(17)
      abb607(17)=abb607(24)+abb607(17)
      abb607(12)=abb607(17)*abb607(12)
      abb607(9)=abb607(9)*abb607(22)
      abb607(17)=spak2k5*abb607(18)
      R2d607=0.0_ki
      rat2 = rat2 + R2d607
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='607' value='", &
          & R2d607, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd607h5
