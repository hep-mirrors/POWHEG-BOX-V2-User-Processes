module     p12_sbars_epnemumnmubarg_abbrevd61h1
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(34), public :: abb61
   complex(ki), public :: R2d61
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb61(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb61(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb61(3)=1.0_ki/(es34+es567-es12-es234)
      abb61(4)=1.0_ki/(es71+es34+es56-es712-es234)
      abb61(5)=NC**(-1)
      abb61(6)=sqrt2**(-1)
      abb61(7)=spak2k7**(-1)
      abb61(8)=1.0_ki/(-es71+es712-es12)
      abb61(9)=abb61(5)-NC
      abb61(9)=abb61(9)*abb61(7)*c1*gW**4*i_*TR*abb61(6)*abb61(3)*abb61(2)*abb6&
      &1(1)
      abb61(10)=spbk6k2*abb61(4)
      abb61(11)=abb61(9)*abb61(10)*spak2k5
      abb61(12)=abb61(11)*spbk7k2
      abb61(13)=spbk3k1*spak1k4
      abb61(14)=abb61(12)*abb61(13)
      abb61(15)=abb61(9)*spbk7k6
      abb61(10)=abb61(10)*spak5k6
      abb61(16)=spak1k4*abb61(10)
      abb61(17)=-abb61(16)*abb61(15)*spbk3k1
      abb61(14)=abb61(14)-abb61(17)
      abb61(14)=abb61(14)*spak1k2
      abb61(17)=es712-es12
      abb61(18)=abb61(9)*abb61(8)
      abb61(19)=-spbk7k6*abb61(18)
      abb61(20)=spbk4k3*spak1k4
      abb61(21)=-abb61(17)*abb61(19)*abb61(20)
      abb61(22)=abb61(19)*es71
      abb61(23)=abb61(22)*abb61(20)
      abb61(21)=abb61(23)+abb61(21)
      abb61(23)=abb61(21)*spak4k5
      abb61(15)=-abb61(15)*abb61(10)
      abb61(12)=abb61(15)-abb61(12)
      abb61(15)=-abb61(20)*abb61(12)
      abb61(20)=abb61(15)*spak2k4
      abb61(24)=es712*spak1k5
      abb61(25)=es12*spak1k5
      abb61(26)=abb61(25)-abb61(24)
      abb61(26)=abb61(26)*abb61(19)
      abb61(27)=abb61(22)*spak1k5
      abb61(26)=-abb61(26)-abb61(27)
      abb61(13)=abb61(13)*abb61(26)
      abb61(13)=-abb61(14)-abb61(23)+abb61(20)+abb61(13)
      abb61(14)=-4.0_ki*abb61(13)
      abb61(20)=16.0_ki*abb61(13)
      abb61(13)=8.0_ki*abb61(13)
      abb61(23)=abb61(12)*spak1k2
      abb61(24)=abb61(24)*abb61(19)
      abb61(26)=abb61(25)*abb61(19)
      abb61(24)=-abb61(23)-abb61(24)+abb61(27)+abb61(26)
      abb61(27)=es567-es234
      abb61(27)=abb61(24)*abb61(27)
      abb61(28)=abb61(12)*spak2k4
      abb61(17)=-abb61(19)*abb61(17)
      abb61(17)=abb61(17)+abb61(22)
      abb61(29)=abb61(17)*spak4k5
      abb61(28)=abb61(29)+abb61(28)
      abb61(29)=-spak1k3*spbk4k3*abb61(28)
      abb61(30)=es12*abb61(23)
      abb61(21)=spak3k5*abb61(21)
      abb61(15)=-spak2k3*abb61(15)
      abb61(22)=-abb61(25)*abb61(22)
      abb61(25)=es712*abb61(26)
      abb61(19)=-es12**2*abb61(19)*spak1k5
      abb61(15)=abb61(15)+abb61(21)+abb61(30)+abb61(25)+abb61(19)+abb61(22)+abb&
      &61(27)+abb61(29)
      abb61(15)=8.0_ki*abb61(15)
      abb61(19)=spbk6k3*spak1k3
      abb61(21)=-abb61(19)*abb61(18)
      abb61(22)=-abb61(18)*spak1k4
      abb61(25)=abb61(22)*spbk6k4
      abb61(21)=abb61(21)+abb61(25)
      abb61(21)=abb61(21)*spbk7k2
      abb61(25)=-32.0_ki*spak2k5*abb61(21)
      abb61(26)=spbk7k3*spak1k3
      abb61(27)=abb61(26)*abb61(11)
      abb61(29)=abb61(11)*spak1k4
      abb61(30)=abb61(29)*spbk7k4
      abb61(27)=abb61(27)+abb61(30)
      abb61(27)=32.0_ki*abb61(27)
      abb61(30)=32.0_ki*abb61(24)
      abb61(24)=16.0_ki*abb61(24)
      abb61(31)=abb61(9)*abb61(4)
      abb61(32)=abb61(31)*abb61(26)
      abb61(33)=spak1k4*abb61(9)*spbk7k4
      abb61(34)=abb61(4)*abb61(33)
      abb61(32)=abb61(32)+abb61(34)
      abb61(34)=es234-es34
      abb61(32)=abb61(32)*abb61(34)
      abb61(31)=-abb61(18)-abb61(31)
      abb61(34)=es71-es712
      abb61(31)=abb61(31)*abb61(34)
      abb61(34)=spak1k4*abb61(31)
      abb61(22)=es12*abb61(22)
      abb61(22)=abb61(22)+abb61(34)
      abb61(22)=spbk7k4*abb61(22)
      abb61(18)=-es12*abb61(18)
      abb61(18)=abb61(18)+abb61(31)
      abb61(18)=abb61(18)*abb61(26)
      abb61(18)=abb61(22)+abb61(18)+abb61(32)
      abb61(18)=16.0_ki*abb61(18)
      abb61(22)=abb61(9)*abb61(26)
      abb61(22)=abb61(33)+abb61(22)
      abb61(22)=16.0_ki*spbk6k5*abb61(22)*spak2k5*abb61(4)
      abb61(10)=-abb61(10)*abb61(19)
      abb61(16)=-spbk6k4*abb61(16)
      abb61(10)=abb61(16)+abb61(10)
      abb61(9)=abb61(9)*abb61(10)
      abb61(10)=-spak5k7*abb61(21)
      abb61(16)=spbk4k2*abb61(29)
      abb61(11)=spbk3k2*spak1k3*abb61(11)
      abb61(9)=abb61(11)+abb61(16)+abb61(10)+abb61(9)
      abb61(9)=16.0_ki*abb61(9)
      abb61(10)=8.0_ki*abb61(28)
      abb61(11)=-es34*abb61(28)
      abb61(16)=-abb61(17)*spak1k5
      abb61(16)=abb61(23)+abb61(16)
      abb61(16)=spak3k4*spbk3k1*abb61(16)
      abb61(11)=abb61(11)+abb61(16)
      abb61(11)=8.0_ki*abb61(11)
      abb61(12)=spak2k3*abb61(12)
      abb61(16)=spak3k5*abb61(17)
      abb61(12)=abb61(16)+abb61(12)
      abb61(12)=8.0_ki*abb61(12)
      R2d61=abb61(14)
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd61h1
