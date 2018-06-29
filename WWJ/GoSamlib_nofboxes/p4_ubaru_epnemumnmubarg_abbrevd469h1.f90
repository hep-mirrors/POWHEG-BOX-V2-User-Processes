module     p4_ubaru_epnemumnmubarg_abbrevd469h1
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(41), public :: abb469
   complex(ki), public :: R2d469
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
      abb469(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb469(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb469(3)=1.0_ki/(-es71+es56-es567+es234)
      abb469(4)=NC**(-1)
      abb469(5)=sqrt2**(-1)
      abb469(6)=es234**(-1)
      abb469(7)=spak2k7**(-1)
      abb469(8)=1.0_ki/(-es71+es712-es12)
      abb469(9)=spbk6k5*spbk7k3
      abb469(10)=abb469(9)*spak4k5
      abb469(11)=abb469(4)-NC
      abb469(11)=abb469(11)*c1*gW**4*abb469(3)**2*i_*TR*abb469(7)*abb469(5)*abb&
      &469(2)*abb469(1)
      abb469(12)=abb469(11)*spak1k5
      abb469(13)=-abb469(8)*abb469(12)
      abb469(14)=abb469(10)*abb469(13)
      abb469(15)=spbk6k1*spbk7k3
      abb469(16)=abb469(15)*spak1k4
      abb469(17)=abb469(16)*abb469(13)
      abb469(18)=abb469(14)+abb469(17)
      abb469(19)=es12-es712
      abb469(20)=-abb469(18)*abb469(19)
      abb469(21)=abb469(13)*es71
      abb469(10)=abb469(21)*abb469(10)
      abb469(16)=abb469(21)*abb469(16)
      abb469(22)=abb469(10)+abb469(16)
      abb469(20)=abb469(20)-abb469(22)
      abb469(23)=spbk3k2*abb469(6)
      abb469(24)=abb469(23)*spak3k4
      abb469(25)=-abb469(24)*abb469(12)
      abb469(26)=abb469(25)*abb469(15)
      abb469(27)=abb469(23)*spak2k4
      abb469(28)=abb469(12)*abb469(27)
      abb469(29)=-spbk7k2*abb469(28)
      abb469(30)=abb469(29)*spbk6k1
      abb469(26)=abb469(26)-abb469(30)
      abb469(30)=abb469(26)*spak1k2
      abb469(31)=abb469(25)*abb469(9)
      abb469(29)=abb469(29)*spbk6k5
      abb469(29)=abb469(31)-abb469(29)
      abb469(31)=abb469(29)*spak2k5
      abb469(32)=-abb469(31)+abb469(20)-abb469(30)
      abb469(33)=es567*abb469(32)
      abb469(34)=-es234-es56
      abb469(20)=abb469(20)*abb469(34)
      abb469(34)=es56*abb469(29)
      abb469(35)=-abb469(12)*es71
      abb469(36)=abb469(27)*spbk6k5
      abb469(37)=abb469(36)*abb469(35)
      abb469(38)=abb469(12)*spbk3k2
      abb469(39)=-abb469(38)*spak2k4
      abb469(40)=-spbk6k5*abb469(39)
      abb469(37)=abb469(40)+abb469(37)
      abb469(37)=spbk7k2*abb469(37)
      abb469(23)=abb469(35)*abb469(23)
      abb469(23)=abb469(38)+abb469(23)
      abb469(38)=-spak3k4*abb469(9)*abb469(23)
      abb469(34)=abb469(34)+abb469(37)+abb469(38)
      abb469(34)=spak2k5*abb469(34)
      abb469(37)=es56*abb469(26)
      abb469(38)=abb469(27)*spbk6k1
      abb469(40)=abb469(38)*abb469(35)
      abb469(39)=-spbk6k1*abb469(39)
      abb469(39)=abb469(39)+abb469(40)
      abb469(39)=spbk7k2*abb469(39)
      abb469(23)=-spak3k4*abb469(15)*abb469(23)
      abb469(23)=abb469(37)+abb469(39)+abb469(23)
      abb469(23)=spak1k2*abb469(23)
      abb469(22)=-abb469(22)*abb469(19)
      abb469(18)=-abb469(18)*es71**2
      abb469(18)=abb469(33)+abb469(23)+abb469(34)+abb469(18)+abb469(20)+abb469(&
      &22)
      abb469(18)=8.0_ki*abb469(18)
      abb469(20)=es56+es671-es67
      abb469(22)=abb469(20)*abb469(13)*spbk7k2
      abb469(23)=spak2k4*abb469(22)
      abb469(33)=spbk7k2*spak2k4
      abb469(34)=-abb469(21)*abb469(33)
      abb469(23)=abb469(34)+abb469(23)
      abb469(23)=spbk6k3*abb469(23)
      abb469(11)=-abb469(11)*spak1k5**2
      abb469(34)=-abb469(8)*abb469(11)
      abb469(37)=abb469(34)*spbk6k1
      abb469(39)=spbk5k3*abb469(37)
      abb469(34)=abb469(34)*spbk6k5
      abb469(40)=spbk3k1*abb469(34)
      abb469(39)=abb469(40)+abb469(39)
      abb469(33)=abb469(33)*abb469(39)
      abb469(23)=abb469(23)+abb469(33)
      abb469(23)=32.0_ki*abb469(23)
      abb469(32)=-32.0_ki*abb469(32)
      abb469(10)=abb469(31)+abb469(10)
      abb469(16)=abb469(30)+abb469(16)
      abb469(30)=abb469(14)+2.0_ki*abb469(17)
      abb469(30)=abb469(30)*abb469(19)
      abb469(30)=abb469(30)+2.0_ki*abb469(16)+abb469(10)
      abb469(30)=16.0_ki*abb469(30)
      abb469(31)=abb469(20)-es71
      abb469(28)=-abb469(31)*spbk7k6*abb469(28)
      abb469(33)=abb469(11)*spbk7k5
      abb469(39)=abb469(33)*abb469(38)
      abb469(40)=abb469(11)*spbk7k1
      abb469(41)=abb469(40)*abb469(36)
      abb469(28)=abb469(28)-abb469(39)+abb469(41)
      abb469(28)=32.0_ki*abb469(28)
      abb469(14)=abb469(17)+2.0_ki*abb469(14)
      abb469(14)=-abb469(14)*abb469(19)
      abb469(10)=abb469(14)-abb469(16)-2.0_ki*abb469(10)
      abb469(10)=16.0_ki*abb469(10)
      abb469(14)=-spak2k6*abb469(29)
      abb469(13)=-abb469(13)*abb469(19)
      abb469(16)=abb469(13)-abb469(21)
      abb469(9)=abb469(16)*abb469(9)
      abb469(17)=spak4k6*abb469(9)
      abb469(14)=abb469(17)+abb469(14)
      abb469(14)=8.0_ki*abb469(14)
      abb469(17)=-spak1k2*abb469(29)
      abb469(9)=spak1k4*abb469(9)
      abb469(9)=abb469(17)+abb469(9)
      abb469(9)=8.0_ki*abb469(9)
      abb469(17)=abb469(21)-abb469(12)
      abb469(13)=abb469(13)-abb469(17)
      abb469(13)=-abb469(20)*abb469(13)
      abb469(29)=-abb469(21)*abb469(19)
      abb469(17)=-es71*abb469(17)
      abb469(13)=abb469(13)+abb469(17)+abb469(29)
      abb469(13)=spbk7k6*abb469(13)
      abb469(12)=abb469(12)*abb469(20)
      abb469(12)=abb469(12)+abb469(35)
      abb469(17)=-abb469(12)*spbk7k6*abb469(6)
      abb469(20)=abb469(40)*spbk6k5
      abb469(29)=abb469(33)*spbk6k1
      abb469(20)=abb469(20)-abb469(29)
      abb469(20)=abb469(20)*abb469(6)
      abb469(17)=abb469(20)+abb469(17)
      abb469(20)=-es34*abb469(17)
      abb469(19)=abb469(19)+es71
      abb469(29)=abb469(37)*abb469(19)
      abb469(33)=abb469(11)*spbk6k1
      abb469(29)=-abb469(33)+abb469(29)
      abb469(29)=spbk7k5*abb469(29)
      abb469(19)=-abb469(34)*abb469(19)
      abb469(35)=abb469(11)*spbk6k5
      abb469(19)=abb469(35)+abb469(19)
      abb469(19)=spbk7k1*abb469(19)
      abb469(13)=abb469(20)+abb469(19)+abb469(29)+abb469(13)
      abb469(13)=16.0_ki*abb469(13)
      abb469(17)=16.0_ki*spbk4k3*spak2k4*abb469(17)
      abb469(19)=abb469(25)*abb469(31)
      abb469(20)=-spbk7k2*abb469(21)
      abb469(20)=abb469(20)+abb469(22)
      abb469(20)=spak4k7*abb469(20)
      abb469(19)=abb469(19)+abb469(20)
      abb469(19)=spbk6k3*abb469(19)
      abb469(20)=-abb469(24)*abb469(33)
      abb469(21)=spak4k7*spbk7k2
      abb469(22)=abb469(37)*abb469(21)
      abb469(20)=abb469(20)+abb469(22)
      abb469(20)=spbk5k3*abb469(20)
      abb469(22)=-abb469(24)*abb469(35)
      abb469(21)=abb469(34)*abb469(21)
      abb469(21)=abb469(22)+abb469(21)
      abb469(21)=spbk3k1*abb469(21)
      abb469(22)=spbk5k2*abb469(38)
      abb469(24)=spbk2k1*abb469(36)
      abb469(22)=abb469(24)+abb469(22)
      abb469(11)=abb469(11)*abb469(22)
      abb469(12)=spbk6k2*abb469(27)*abb469(12)
      abb469(11)=abb469(21)+abb469(20)+abb469(12)+abb469(19)+abb469(11)
      abb469(11)=16.0_ki*abb469(11)
      abb469(12)=spak2k6*abb469(26)
      abb469(15)=abb469(16)*abb469(15)
      abb469(16)=-spak4k6*abb469(15)
      abb469(12)=abb469(16)+abb469(12)
      abb469(12)=8.0_ki*abb469(12)
      abb469(16)=spak2k5*abb469(26)
      abb469(15)=-spak4k5*abb469(15)
      abb469(15)=abb469(16)+abb469(15)
      abb469(15)=8.0_ki*abb469(15)
      R2d469=0.0_ki
      rat2 = rat2 + R2d469
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='469' value='", &
          & R2d469, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd469h1
