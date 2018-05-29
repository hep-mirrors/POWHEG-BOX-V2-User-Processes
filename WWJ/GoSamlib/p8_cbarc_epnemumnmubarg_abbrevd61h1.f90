module     p8_cbarc_epnemumnmubarg_abbrevd61h1
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(30), public :: abb61
   complex(ki), public :: R2d61
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb61(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb61(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb61(3)=1.0_ki/(-es71+es56-es567+es234)
      abb61(4)=NC**(-1)
      abb61(5)=sqrt2**(-1)
      abb61(6)=es234**(-1)
      abb61(7)=spak2k7**(-1)
      abb61(8)=1.0_ki/(-es71+es712-es12)
      abb61(9)=abb61(4)-NC
      abb61(9)=abb61(9)*abb61(7)*c1*gW**4*i_*TR*abb61(5)*abb61(3)*abb61(2)*abb6&
      &1(1)
      abb61(10)=abb61(9)*spak2k4
      abb61(11)=spbk3k2*abb61(6)
      abb61(12)=abb61(11)*abb61(10)
      abb61(13)=abb61(12)*spbk7k2
      abb61(14)=abb61(9)*spbk7k3
      abb61(15)=abb61(11)*spak3k4
      abb61(16)=-abb61(14)*abb61(15)
      abb61(13)=abb61(13)+abb61(16)
      abb61(16)=abb61(13)*spak1k2
      abb61(17)=spbk6k1*spak1k5
      abb61(18)=abb61(17)*abb61(16)
      abb61(19)=es12-es712
      abb61(20)=-es71-abb61(19)
      abb61(21)=abb61(9)*abb61(8)
      abb61(22)=-spbk7k3*abb61(21)
      abb61(23)=spbk6k5*spak1k5
      abb61(24)=-abb61(20)*abb61(22)*abb61(23)
      abb61(25)=abb61(24)*spak4k5
      abb61(23)=abb61(23)*abb61(13)
      abb61(26)=abb61(23)*spak2k5
      abb61(27)=-abb61(22)*abb61(19)
      abb61(28)=abb61(22)*es71
      abb61(28)=abb61(27)-abb61(28)
      abb61(17)=-abb61(28)*abb61(17)*spak1k4
      abb61(17)=abb61(25)+abb61(18)+abb61(26)+abb61(17)
      abb61(18)=4.0_ki*abb61(17)
      abb61(25)=16.0_ki*abb61(17)
      abb61(17)=-8.0_ki*abb61(17)
      abb61(26)=abb61(13)*spak2k5
      abb61(29)=-abb61(28)*spak4k5
      abb61(26)=abb61(29)+abb61(26)
      abb61(29)=-spak1k6*spbk6k5*abb61(26)
      abb61(30)=-es71*abb61(12)
      abb61(10)=spbk3k2*abb61(10)
      abb61(10)=abb61(10)+abb61(30)
      abb61(10)=spbk7k2*abb61(10)
      abb61(11)=-es71*abb61(11)
      abb61(11)=spbk3k2+abb61(11)
      abb61(11)=-spak3k4*abb61(14)*abb61(11)
      abb61(10)=abb61(10)+abb61(11)
      abb61(10)=spak1k2*abb61(10)
      abb61(11)=spak4k6*abb61(24)
      abb61(14)=spak1k4*abb61(19)
      abb61(19)=es71*spak1k4
      abb61(14)=abb61(14)+abb61(19)
      abb61(14)=abb61(22)*abb61(14)
      abb61(16)=abb61(16)+abb61(14)
      abb61(24)=-es567*abb61(16)
      abb61(23)=spak2k6*abb61(23)
      abb61(19)=abb61(19)*abb61(27)
      abb61(14)=es234*abb61(14)
      abb61(22)=-spak1k4*abb61(22)*es71**2
      abb61(10)=abb61(14)+abb61(23)+abb61(24)+abb61(11)+abb61(22)+abb61(10)+abb&
      &61(19)+abb61(29)
      abb61(10)=8.0_ki*abb61(10)
      abb61(11)=spbk6k3*spak1k6
      abb61(14)=-abb61(11)*abb61(21)
      abb61(19)=-abb61(21)*spak1k5
      abb61(22)=abb61(19)*spbk5k3
      abb61(14)=abb61(14)+abb61(22)
      abb61(14)=abb61(14)*spbk7k2
      abb61(22)=32.0_ki*spak2k4*abb61(14)
      abb61(23)=32.0_ki*abb61(16)
      abb61(24)=spbk7k5*spak1k5
      abb61(27)=spbk7k6*spak1k6
      abb61(24)=abb61(24)+abb61(27)
      abb61(29)=abb61(12)*abb61(24)
      abb61(29)=32.0_ki*abb61(29)
      abb61(30)=16.0_ki*abb61(16)
      abb61(21)=abb61(21)*abb61(20)
      abb61(21)=-abb61(9)+abb61(21)
      abb61(21)=abb61(21)*abb61(27)
      abb61(19)=-abb61(19)*abb61(20)
      abb61(20)=-spak1k5*abb61(9)
      abb61(19)=abb61(20)+abb61(19)
      abb61(19)=spbk7k5*abb61(19)
      abb61(20)=abb61(6)*abb61(9)*abb61(24)
      abb61(24)=es34*abb61(20)
      abb61(19)=abb61(24)+abb61(21)+abb61(19)
      abb61(19)=16.0_ki*abb61(19)
      abb61(20)=-16.0_ki*spbk4k3*spak2k4*abb61(20)
      abb61(21)=-spbk5k3*spak1k5
      abb61(11)=-abb61(11)+abb61(21)
      abb61(9)=abb61(15)*abb61(9)*abb61(11)
      abb61(11)=spbk6k2*spak1k6
      abb61(15)=spbk5k2*spak1k5
      abb61(11)=abb61(15)+abb61(11)
      abb61(11)=abb61(12)*abb61(11)
      abb61(12)=spak4k7*abb61(14)
      abb61(9)=abb61(12)+abb61(11)+abb61(9)
      abb61(9)=16.0_ki*abb61(9)
      abb61(11)=spak5k6*spbk6k1*abb61(16)
      abb61(12)=es56*abb61(26)
      abb61(11)=abb61(11)+abb61(12)
      abb61(11)=8.0_ki*abb61(11)
      abb61(12)=-spak2k6*abb61(13)
      abb61(13)=spak4k6*abb61(28)
      abb61(12)=abb61(13)+abb61(12)
      abb61(12)=8.0_ki*abb61(12)
      abb61(13)=-8.0_ki*abb61(26)
      R2d61=abb61(18)
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd61h1
