module     p0_dbard_epnemumnmubarg_abbrevd469h1
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(35), public :: abb469
   complex(ki), public :: R2d469
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
      abb469(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb469(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb469(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb469(4)=NC**(-1)
      abb469(5)=sqrt2**(-1)
      abb469(6)=spak2k7**(-1)
      abb469(7)=es71**(-1)
      abb469(8)=1.0_ki/(es34+es567-es12-es234)
      abb469(9)=NC-abb469(4)
      abb469(10)=spak1k4*c1*gW**4*abb469(3)**2*i_*TR*abb469(6)*abb469(5)*abb469&
      &(2)*abb469(1)
      abb469(11)=abb469(9)*abb469(10)*abb469(8)
      abb469(12)=-spbk6k2*abb469(11)
      abb469(13)=spak2k4*spbk4k3
      abb469(14)=abb469(13)*spak2k5
      abb469(15)=abb469(14)*abb469(12)
      abb469(9)=abb469(9)*abb469(10)*spak1k2
      abb469(10)=abb469(9)*spbk6k2
      abb469(16)=-abb469(8)*abb469(10)
      abb469(17)=spbk3k1*spak2k5
      abb469(18)=abb469(17)*abb469(16)
      abb469(15)=abb469(15)-abb469(18)
      abb469(18)=abb469(15)*spbk7k2
      abb469(19)=-abb469(10)*spak2k5
      abb469(20)=abb469(7)*spbk7k1
      abb469(21)=abb469(20)*spbk3k2
      abb469(22)=abb469(19)*abb469(21)
      abb469(22)=abb469(18)-abb469(22)
      abb469(23)=spbk3k1*spak5k6
      abb469(16)=abb469(23)*abb469(16)
      abb469(24)=abb469(13)*spak5k6
      abb469(12)=abb469(24)*abb469(12)
      abb469(12)=abb469(16)-abb469(12)
      abb469(16)=abb469(12)*spbk7k6
      abb469(10)=-abb469(10)*spak5k6
      abb469(25)=abb469(20)*spbk6k3
      abb469(26)=abb469(10)*abb469(25)
      abb469(26)=abb469(16)-abb469(26)
      abb469(27)=abb469(26)-abb469(22)
      abb469(28)=es56-es712
      abb469(29)=es234-es34
      abb469(30)=-abb469(29)+abb469(28)
      abb469(30)=abb469(27)*abb469(30)
      abb469(16)=abb469(16)-abb469(18)
      abb469(16)=es71*abb469(16)
      abb469(18)=spbk6k3*spbk7k1
      abb469(31)=-abb469(18)*abb469(10)
      abb469(32)=spbk3k2*spbk7k1
      abb469(33)=abb469(32)*abb469(19)
      abb469(16)=abb469(16)+abb469(31)+abb469(33)+abb469(30)
      abb469(16)=8.0_ki*abb469(16)
      abb469(30)=abb469(26)-2.0_ki*abb469(22)
      abb469(30)=16.0_ki*abb469(30)
      abb469(27)=32.0_ki*abb469(27)
      abb469(22)=abb469(22)-2.0_ki*abb469(26)
      abb469(22)=16.0_ki*abb469(22)
      abb469(26)=spbk7k6*abb469(15)
      abb469(31)=abb469(25)*abb469(19)
      abb469(26)=abb469(26)+abb469(31)
      abb469(26)=8.0_ki*abb469(26)
      abb469(31)=abb469(8)*abb469(9)
      abb469(33)=abb469(31)*spbk3k1
      abb469(13)=-abb469(11)*abb469(13)
      abb469(13)=abb469(33)+abb469(13)
      abb469(33)=abb469(13)*spbk7k2
      abb469(34)=abb469(9)*abb469(21)
      abb469(35)=abb469(33)+abb469(34)
      abb469(29)=es712+abb469(29)
      abb469(29)=abb469(35)*abb469(29)
      abb469(33)=-es71*abb469(33)
      abb469(24)=-abb469(11)*abb469(24)
      abb469(23)=abb469(31)*abb469(23)
      abb469(23)=abb469(24)+abb469(23)
      abb469(23)=spbk7k6*abb469(23)
      abb469(24)=abb469(9)*abb469(25)
      abb469(25)=-spak5k6*abb469(24)
      abb469(23)=abb469(23)+abb469(25)
      abb469(23)=spbk5k2*abb469(23)
      abb469(25)=-abb469(9)*abb469(32)
      abb469(23)=abb469(23)+abb469(33)+abb469(25)+abb469(29)
      abb469(25)=spbk7k5*abb469(12)
      abb469(20)=abb469(20)*spbk5k3
      abb469(29)=-abb469(10)*abb469(20)
      abb469(23)=abb469(29)+abb469(25)+2.0_ki*abb469(23)
      abb469(23)=8.0_ki*abb469(23)
      abb469(13)=abb469(13)*spbk7k6
      abb469(24)=abb469(13)-abb469(24)
      abb469(25)=abb469(24)*abb469(28)
      abb469(13)=es71*abb469(13)
      abb469(11)=-abb469(11)*abb469(14)
      abb469(14)=abb469(31)*abb469(17)
      abb469(11)=abb469(11)+abb469(14)
      abb469(11)=spbk7k2*abb469(11)
      abb469(14)=spak2k5*abb469(34)
      abb469(11)=abb469(11)+abb469(14)
      abb469(11)=spbk6k5*abb469(11)
      abb469(9)=-abb469(9)*abb469(18)
      abb469(9)=abb469(11)+abb469(13)+abb469(9)+abb469(25)
      abb469(11)=2.0_ki*abb469(24)
      abb469(13)=es345-es671
      abb469(11)=abb469(11)*abb469(13)
      abb469(13)=-spbk7k5*abb469(15)
      abb469(14)=-abb469(19)*abb469(20)
      abb469(9)=abb469(14)+abb469(13)+abb469(11)+2.0_ki*abb469(9)
      abb469(9)=8.0_ki*abb469(9)
      abb469(11)=spbk7k2*abb469(12)
      abb469(10)=abb469(21)*abb469(10)
      abb469(10)=abb469(11)+abb469(10)
      abb469(10)=8.0_ki*abb469(10)
      R2d469=0.0_ki
      rat2 = rat2 + R2d469
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='469' value='", &
          & R2d469, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd469h1
