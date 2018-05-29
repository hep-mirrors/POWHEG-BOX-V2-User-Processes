module     p4_ubaru_epnemumnmubarg_abbrevd33h1
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(39), public :: abb33
   complex(ki), public :: R2d33
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p4_ubaru_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_color, only: TR
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb33(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb33(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb33(3)=NC**(-1)
      abb33(4)=sqrt2**(-1)
      abb33(5)=es71**(-1)
      abb33(6)=spak2k7**(-1)
      abb33(7)=spak5k7*spbk6k3
      abb33(8)=abb33(7)*spbk7k2
      abb33(9)=spak3k4*spbk3k2
      abb33(10)=abb33(9)*abb33(8)
      abb33(11)=spbk6k2*spbk3k2
      abb33(12)=abb33(11)*spak2k4
      abb33(13)=spbk7k2*spak5k7
      abb33(14)=-abb33(13)*abb33(12)
      abb33(10)=abb33(10)+abb33(14)
      abb33(14)=NC-abb33(3)
      abb33(15)=c1*gW**4*i_*TR*abb33(6)*abb33(4)*abb33(2)*abb33(1)
      abb33(16)=abb33(14)*abb33(15)*spbk7k1*abb33(5)
      abb33(17)=-spak1k2**2*abb33(16)
      abb33(10)=abb33(17)*abb33(10)
      abb33(18)=spak1k2*abb33(16)
      abb33(19)=spak1k5*spbk6k3
      abb33(20)=abb33(18)*abb33(19)
      abb33(21)=abb33(20)*abb33(9)
      abb33(12)=abb33(12)*abb33(18)
      abb33(22)=spak1k5*abb33(12)
      abb33(21)=abb33(21)-abb33(22)
      abb33(22)=es12*abb33(21)
      abb33(10)=abb33(22)+abb33(10)
      abb33(10)=8.0_ki*abb33(10)
      abb33(22)=abb33(17)*abb33(11)
      abb33(23)=spak4k5*abb33(22)
      abb33(24)=16.0_ki*abb33(23)
      abb33(25)=spak1k5*spbk6k2
      abb33(26)=abb33(25)*spbk3k1
      abb33(27)=spak5k7*spbk6k2
      abb33(28)=abb33(27)*spbk7k3
      abb33(26)=abb33(26)-abb33(28)
      abb33(28)=abb33(18)*spak1k4
      abb33(29)=-abb33(28)*abb33(26)
      abb33(29)=-abb33(23)+abb33(29)
      abb33(29)=16.0_ki*abb33(29)
      abb33(21)=-16.0_ki*abb33(21)
      abb33(11)=abb33(11)*spak2k5
      abb33(30)=spbk4k3*spak4k5*spbk6k2
      abb33(8)=-abb33(8)+abb33(11)+abb33(30)
      abb33(11)=abb33(18)*abb33(8)
      abb33(16)=es12*abb33(19)*abb33(16)
      abb33(11)=abb33(16)+abb33(11)
      abb33(11)=spak1k4*abb33(11)
      abb33(11)=abb33(23)+abb33(11)
      abb33(11)=8.0_ki*abb33(11)
      abb33(16)=8.0_ki*spak3k4*abb33(17)*spbk3k2**2
      abb33(23)=16.0_ki*abb33(18)
      abb33(30)=-abb33(23)*spak1k4*spbk3k2
      abb33(31)=8.0_ki*abb33(18)
      abb33(32)=abb33(31)*spbk3k2
      abb33(33)=-spak1k4*abb33(32)
      abb33(34)=spak1k4*spbk6k3
      abb33(35)=abb33(23)*abb33(34)
      abb33(34)=abb33(34)*abb33(31)
      abb33(36)=spbk4k2*spak4k5
      abb33(13)=-abb33(36)+abb33(13)
      abb33(37)=abb33(17)*spbk6k2
      abb33(13)=abb33(37)*abb33(13)
      abb33(38)=es12*abb33(25)*abb33(18)
      abb33(22)=-spak3k5*abb33(22)
      abb33(13)=abb33(22)+abb33(38)+abb33(13)
      abb33(13)=8.0_ki*abb33(13)
      abb33(22)=abb33(23)*abb33(25)
      abb33(25)=abb33(31)*spak1k5
      abb33(38)=spbk7k6*abb33(25)
      abb33(14)=spbk7k6*abb33(15)*abb33(14)*spak1k2
      abb33(15)=-spbk6k4*abb33(28)
      abb33(39)=-spak1k3*spbk6k3*abb33(18)
      abb33(14)=abb33(39)+abb33(15)-abb33(37)+abb33(14)
      abb33(14)=8.0_ki*abb33(14)
      abb33(8)=-abb33(26)+abb33(8)
      abb33(8)=abb33(17)*abb33(8)
      abb33(15)=-es23+es123-2.0_ki*es12
      abb33(15)=abb33(19)*abb33(15)
      abb33(26)=abb33(7)*spbk7k3
      abb33(37)=spak1k3*abb33(26)
      abb33(15)=abb33(37)+abb33(15)
      abb33(15)=abb33(18)*abb33(15)
      abb33(8)=abb33(15)+abb33(8)
      abb33(8)=8.0_ki*abb33(8)
      abb33(15)=abb33(23)*abb33(19)
      abb33(19)=abb33(31)*abb33(19)
      abb33(17)=16.0_ki*abb33(17)
      abb33(17)=-spbk3k2*abb33(17)
      abb33(37)=spbk6k4*abb33(25)
      abb33(26)=-abb33(28)*abb33(26)
      abb33(20)=spbk3k1*spak1k4*abb33(20)
      abb33(20)=abb33(26)+abb33(20)
      abb33(20)=8.0_ki*abb33(20)
      abb33(7)=-abb33(7)*abb33(9)*abb33(18)
      abb33(12)=spak5k7*abb33(12)
      abb33(7)=abb33(7)+abb33(12)
      abb33(7)=8.0_ki*abb33(7)
      abb33(12)=-abb33(31)*abb33(27)
      abb33(18)=spak4k5*spbk3k2
      abb33(23)=abb33(23)*abb33(18)
      abb33(18)=-abb33(18)*abb33(31)
      abb33(26)=spak3k5*spbk3k2
      abb33(26)=abb33(26)+abb33(36)
      abb33(26)=abb33(26)*abb33(31)
      abb33(9)=-abb33(9)*abb33(31)
      abb33(27)=spak2k4*abb33(32)
      abb33(25)=spbk6k1*abb33(25)
      R2d33=0.0_ki
      rat2 = rat2 + R2d33
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='33' value='", &
          & R2d33, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd33h1
