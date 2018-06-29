module     p0_dbard_epnemumnmubarg_abbrevd33h1
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(39), public :: abb33
   complex(ki), public :: R2d33
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
      abb33(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb33(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb33(3)=NC**(-1)
      abb33(4)=sqrt2**(-1)
      abb33(5)=es71**(-1)
      abb33(6)=spak2k7**(-1)
      abb33(7)=spak4k7*spbk6k3
      abb33(8)=abb33(7)*spbk7k2
      abb33(9)=spak5k6*spbk6k2
      abb33(10)=abb33(9)*abb33(8)
      abb33(11)=spbk3k2*spbk6k2
      abb33(12)=abb33(11)*spak2k5
      abb33(13)=spbk7k2*spak4k7
      abb33(14)=-abb33(13)*abb33(12)
      abb33(10)=abb33(10)+abb33(14)
      abb33(14)=c1*gW**4*i_*TR*abb33(6)*abb33(4)*abb33(2)*abb33(1)
      abb33(15)=abb33(14)*spbk7k1
      abb33(16)=NC-abb33(3)
      abb33(17)=abb33(16)*abb33(5)*abb33(15)
      abb33(18)=-spak1k2**2*abb33(17)
      abb33(10)=abb33(18)*abb33(10)
      abb33(19)=spak1k2*abb33(17)
      abb33(20)=spak1k4*spbk6k3
      abb33(21)=abb33(19)*abb33(20)
      abb33(22)=abb33(21)*abb33(9)
      abb33(12)=abb33(12)*abb33(19)
      abb33(23)=spak1k4*abb33(12)
      abb33(22)=abb33(22)-abb33(23)
      abb33(23)=es12*abb33(22)
      abb33(10)=abb33(23)+abb33(10)
      abb33(10)=8.0_ki*abb33(10)
      abb33(23)=abb33(18)*abb33(11)
      abb33(24)=spak4k5*abb33(23)
      abb33(25)=16.0_ki*abb33(24)
      abb33(26)=spak1k4*spbk3k2
      abb33(27)=abb33(26)*spbk6k1
      abb33(28)=spak4k7*spbk3k2
      abb33(29)=abb33(28)*spbk7k6
      abb33(27)=abb33(27)-abb33(29)
      abb33(29)=abb33(19)*spak1k5
      abb33(30)=-abb33(29)*abb33(27)
      abb33(30)=abb33(24)+abb33(30)
      abb33(30)=16.0_ki*abb33(30)
      abb33(22)=-16.0_ki*abb33(22)
      abb33(11)=abb33(11)*spak2k4
      abb33(31)=spbk6k5*spak4k5*spbk3k2
      abb33(8)=abb33(8)+abb33(11)+abb33(31)
      abb33(11)=abb33(19)*abb33(8)
      abb33(17)=-es12*abb33(20)*abb33(17)
      abb33(11)=abb33(17)+abb33(11)
      abb33(11)=spak1k5*abb33(11)
      abb33(11)=-abb33(24)+abb33(11)
      abb33(11)=8.0_ki*abb33(11)
      abb33(17)=abb33(7)*spbk7k6
      abb33(24)=abb33(29)*abb33(17)
      abb33(21)=-spbk6k1*spak1k5*abb33(21)
      abb33(21)=abb33(24)+abb33(21)
      abb33(21)=8.0_ki*abb33(21)
      abb33(24)=spbk5k2*spak4k5
      abb33(13)=abb33(24)+abb33(13)
      abb33(31)=abb33(18)*spbk3k2
      abb33(13)=abb33(31)*abb33(13)
      abb33(32)=es12*abb33(26)*abb33(19)
      abb33(23)=spak4k6*abb33(23)
      abb33(13)=abb33(23)+abb33(32)+abb33(13)
      abb33(13)=8.0_ki*abb33(13)
      abb33(23)=16.0_ki*abb33(19)
      abb33(26)=abb33(23)*abb33(26)
      abb33(32)=8.0_ki*abb33(19)
      abb33(33)=abb33(32)*spak1k4
      abb33(34)=spbk7k3*abb33(33)
      abb33(35)=abb33(32)*abb33(20)
      abb33(8)=-abb33(27)+abb33(8)
      abb33(8)=abb33(18)*abb33(8)
      abb33(27)=-es671+es67+es12
      abb33(27)=abb33(20)*abb33(27)
      abb33(17)=-spak1k6*abb33(17)
      abb33(17)=abb33(17)+abb33(27)
      abb33(17)=abb33(19)*abb33(17)
      abb33(16)=abb33(16)*spak1k2
      abb33(15)=abb33(20)*abb33(16)*abb33(15)
      abb33(8)=abb33(15)+abb33(17)+abb33(8)
      abb33(8)=8.0_ki*abb33(8)
      abb33(15)=abb33(23)*abb33(20)
      abb33(17)=-spbk5k3*abb33(33)
      abb33(20)=-8.0_ki*spak5k6*abb33(18)*spbk6k2**2
      abb33(27)=-abb33(23)*spak1k5*spbk6k2
      abb33(36)=abb33(32)*spbk6k2
      abb33(37)=-spak1k5*abb33(36)
      abb33(18)=16.0_ki*abb33(18)
      abb33(18)=-spbk6k2*abb33(18)
      abb33(38)=spak1k5*spbk6k3
      abb33(39)=abb33(23)*abb33(38)
      abb33(38)=-abb33(38)*abb33(32)
      abb33(14)=spbk7k3*abb33(14)*abb33(16)
      abb33(16)=spbk5k3*abb33(29)
      abb33(29)=spak1k6*spbk6k3*abb33(19)
      abb33(14)=abb33(29)+abb33(16)-abb33(31)+abb33(14)
      abb33(14)=8.0_ki*abb33(14)
      abb33(7)=-abb33(7)*abb33(9)*abb33(19)
      abb33(12)=spak4k7*abb33(12)
      abb33(7)=abb33(7)+abb33(12)
      abb33(7)=8.0_ki*abb33(7)
      abb33(12)=-abb33(32)*abb33(28)
      abb33(9)=abb33(9)*abb33(32)
      abb33(16)=spak4k5*spbk6k2
      abb33(19)=abb33(23)*abb33(16)
      abb33(16)=abb33(16)*abb33(32)
      abb33(23)=-spak4k6*spbk6k2
      abb33(23)=abb33(23)-abb33(24)
      abb33(23)=abb33(23)*abb33(32)
      abb33(24)=spbk3k1*abb33(33)
      abb33(28)=spak2k5*abb33(36)
      R2d33=0.0_ki
      rat2 = rat2 + R2d33
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='33' value='", &
          & R2d33, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd33h1
