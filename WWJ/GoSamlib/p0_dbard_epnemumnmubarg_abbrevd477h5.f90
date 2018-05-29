module     p0_dbard_epnemumnmubarg_abbrevd477h5
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(50), public :: abb477
   complex(ki), public :: R2d477
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
      abb477(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb477(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb477(3)=NC**(-1)
      abb477(4)=sqrt2**(-1)
      abb477(5)=spbk7k2**(-1)
      abb477(6)=spbk4k3*spak4k5
      abb477(7)=-spak5k7*spbk7k3
      abb477(6)=abb477(6)+abb477(7)
      abb477(7)=gW**4*i_*TR*c1*abb477(4)*abb477(3)*abb477(2)
      abb477(8)=spbk6k2*abb477(7)*spak1k2
      abb477(9)=spak4k7*abb477(1)
      abb477(6)=8.0_ki*abb477(6)*abb477(8)*abb477(9)
      abb477(10)=abb477(7)*abb477(5)*abb477(1)
      abb477(11)=abb477(10)*spbk6k2
      abb477(12)=abb477(11)*spak4k7
      abb477(13)=abb477(12)*spbk7k3
      abb477(14)=abb477(13)*spak1k5
      abb477(15)=abb477(11)*spak4k5
      abb477(16)=abb477(15)*spak1k2
      abb477(17)=abb477(16)*spbk3k2
      abb477(14)=abb477(14)+abb477(17)
      abb477(18)=16.0_ki*abb477(14)
      abb477(17)=16.0_ki*abb477(17)
      abb477(7)=abb477(9)*abb477(7)
      abb477(9)=spbk6k3*spak1k5
      abb477(19)=abb477(7)*abb477(9)
      abb477(20)=abb477(10)*spak1k5
      abb477(21)=abb477(20)*spbk6k3
      abb477(22)=abb477(21)*spak3k4
      abb477(23)=abb477(10)*spak4k7
      abb477(24)=abb477(23)*spbk7k6
      abb477(25)=abb477(24)*spak1k5
      abb477(22)=abb477(22)+abb477(25)
      abb477(26)=spbk3k2*abb477(22)
      abb477(19)=abb477(19)+abb477(26)
      abb477(26)=16.0_ki*abb477(19)
      abb477(14)=-abb477(14)-abb477(19)
      abb477(14)=8.0_ki*abb477(14)
      abb477(19)=8.0_ki*abb477(25)
      abb477(25)=spbk7k3*abb477(19)
      abb477(27)=8.0_ki*abb477(10)
      abb477(28)=spbk3k2**2*abb477(27)*spak3k4*spak1k2
      abb477(29)=abb477(10)*spbk3k2
      abb477(30)=16.0_ki*abb477(29)
      abb477(31)=-spak1k4*abb477(30)
      abb477(32)=abb477(27)*spak1k4
      abb477(33)=spbk3k2*abb477(32)
      abb477(34)=16.0_ki*abb477(10)
      abb477(35)=abb477(34)*spak1k4
      abb477(36)=-spbk7k3*abb477(35)
      abb477(12)=abb477(12)*spbk4k3
      abb477(37)=abb477(12)*spak1k4
      abb477(38)=abb477(13)*spak1k7
      abb477(37)=abb477(37)+abb477(38)
      abb477(38)=-16.0_ki*abb477(37)
      abb477(37)=8.0_ki*abb477(37)
      abb477(39)=spak1k7*spbk7k3
      abb477(40)=spak1k2*spbk3k2
      abb477(41)=-spbk4k3*spak1k4
      abb477(40)=-abb477(39)+abb477(41)+abb477(40)
      abb477(24)=abb477(24)*abb477(40)
      abb477(29)=abb477(29)*spak3k4
      abb477(40)=abb477(29)+abb477(7)
      abb477(40)=abb477(40)*spak1k2*spbk6k3
      abb477(24)=abb477(24)+abb477(40)
      abb477(24)=8.0_ki*abb477(24)
      abb477(35)=abb477(35)*spbk6k3
      abb477(32)=-spbk6k3*abb477(32)
      abb477(8)=abb477(1)*abb477(8)*spak5k7
      abb477(40)=abb477(11)*spak1k2
      abb477(41)=-spak3k5*spbk3k2*abb477(40)
      abb477(16)=-spbk4k2*abb477(16)
      abb477(8)=abb477(16)+abb477(8)+abb477(41)
      abb477(8)=8.0_ki*abb477(8)
      abb477(16)=-16.0_ki*spak1k5*abb477(11)
      abb477(11)=8.0_ki*abb477(11)
      abb477(41)=spak1k5*abb477(11)
      abb477(20)=8.0_ki*abb477(20)
      abb477(42)=-spbk7k6*abb477(20)
      abb477(43)=spak1k7*spbk7k6
      abb477(44)=-spbk6k4*spak1k4
      abb477(45)=-spak1k3*spbk6k3
      abb477(43)=abb477(45)+abb477(44)+abb477(43)
      abb477(10)=abb477(10)*abb477(43)
      abb477(10)=-abb477(40)+abb477(10)
      abb477(10)=8.0_ki*abb477(10)
      abb477(40)=abb477(12)*spak1k5
      abb477(43)=16.0_ki*abb477(40)
      abb477(40)=-8.0_ki*abb477(40)
      abb477(19)=spbk4k3*abb477(19)
      abb477(44)=16.0_ki*abb477(21)
      abb477(21)=8.0_ki*abb477(21)
      abb477(30)=spak1k7*abb477(30)
      abb477(45)=-spak1k7*abb477(27)*spbk3k2
      abb477(34)=abb477(34)*abb477(39)
      abb477(39)=spbk6k4*abb477(20)
      abb477(12)=abb477(12)*spak4k5
      abb477(13)=abb477(13)*spak5k7
      abb477(12)=abb477(12)-abb477(13)
      abb477(9)=abb477(23)*abb477(9)
      abb477(13)=spbk2k1*abb477(9)
      abb477(13)=abb477(13)+abb477(12)
      abb477(13)=8.0_ki*abb477(13)
      abb477(23)=abb477(23)*spbk3k2
      abb477(46)=8.0_ki*abb477(23)
      abb477(47)=spak5k7*abb477(11)
      abb477(48)=-spbk2k1*abb477(20)
      abb477(49)=8.0_ki*abb477(15)
      abb477(50)=8.0_ki*spbk2k1*abb477(22)
      abb477(15)=16.0_ki*abb477(15)
      abb477(7)=-abb477(7)+abb477(29)
      abb477(7)=8.0_ki*abb477(7)
      abb477(11)=-spak3k5*abb477(11)
      abb477(29)=-16.0_ki*abb477(12)
      abb477(12)=8.0_ki*abb477(12)
      abb477(22)=-spbk3k1*abb477(22)
      abb477(9)=-spbk7k1*abb477(9)
      abb477(9)=abb477(22)+abb477(9)
      abb477(9)=8.0_ki*abb477(9)
      abb477(22)=-16.0_ki*abb477(23)
      abb477(20)=spbk6k1*abb477(20)
      R2d477=0.0_ki
      rat2 = rat2 + R2d477
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='477' value='", &
          & R2d477, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd477h5
