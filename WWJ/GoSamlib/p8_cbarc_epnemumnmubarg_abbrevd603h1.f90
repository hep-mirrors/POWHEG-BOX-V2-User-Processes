module     p8_cbarc_epnemumnmubarg_abbrevd603h1
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(34), public :: abb603
   complex(ki), public :: R2d603
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
      abb603(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb603(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb603(3)=1.0_ki/(-es71+es56-es567+es234)
      abb603(4)=sqrt2**(-1)
      abb603(5)=spak2k7**(-1)
      abb603(6)=abb603(5)*spak1k5*c1*NC*gW**4*i_*TR*abb603(4)*abb603(3)*abb603(&
      &2)*abb603(1)
      abb603(7)=abb603(6)*spbk6k1
      abb603(8)=abb603(7)*spak1k2
      abb603(6)=abb603(6)*spbk6k5
      abb603(9)=abb603(6)*spak2k5
      abb603(8)=abb603(8)+abb603(9)
      abb603(9)=abb603(8)*spbk3k2
      abb603(10)=spak2k4*spbk7k2
      abb603(11)=abb603(9)*abb603(10)
      abb603(12)=spak3k4*spbk7k3
      abb603(13)=abb603(9)*abb603(12)
      abb603(14)=abb603(11)-abb603(13)
      abb603(15)=es71+es12-es712
      abb603(15)=8.0_ki*abb603(15)
      abb603(16)=abb603(14)*abb603(15)
      abb603(17)=-16.0_ki*abb603(14)
      abb603(18)=spbk7k3**2
      abb603(19)=abb603(18)*spak3k4
      abb603(20)=abb603(6)*abb603(19)
      abb603(21)=spak2k4*spbk7k3
      abb603(22)=abb603(6)*spbk7k2
      abb603(23)=-abb603(22)*abb603(21)
      abb603(20)=abb603(20)+abb603(23)
      abb603(20)=spak5k7*abb603(20)
      abb603(19)=-abb603(7)*abb603(19)
      abb603(23)=abb603(7)*spbk7k2
      abb603(24)=abb603(23)*abb603(21)
      abb603(19)=abb603(19)+abb603(24)
      abb603(19)=spak1k7*abb603(19)
      abb603(24)=abb603(8)*spbk7k2
      abb603(25)=2.0_ki*spak4k7
      abb603(25)=abb603(25)*abb603(24)*spbk7k3
      abb603(14)=abb603(25)+abb603(19)+abb603(20)-abb603(14)
      abb603(14)=8.0_ki*abb603(14)
      abb603(19)=abb603(6)*spbk7k3
      abb603(20)=abb603(19)*spak4k5
      abb603(26)=abb603(7)*spbk7k3
      abb603(27)=abb603(26)*spak1k4
      abb603(20)=abb603(20)+abb603(27)
      abb603(27)=16.0_ki*abb603(20)
      abb603(28)=abb603(22)*spak5k7
      abb603(29)=abb603(23)*spak1k7
      abb603(28)=abb603(28)-abb603(29)
      abb603(21)=abb603(21)*abb603(28)
      abb603(22)=spak4k5*abb603(22)
      abb603(23)=spak1k4*abb603(23)
      abb603(22)=abb603(22)+abb603(23)
      abb603(22)=spbk4k3*spak2k4*abb603(22)
      abb603(11)=abb603(22)-abb603(25)-abb603(13)+2.0_ki*abb603(11)+abb603(21)
      abb603(11)=4.0_ki*abb603(11)
      abb603(13)=-8.0_ki*abb603(20)
      abb603(20)=8.0_ki*spak3k4
      abb603(18)=abb603(20)*abb603(18)*abb603(8)
      abb603(15)=-abb603(24)*abb603(15)
      abb603(21)=16.0_ki*abb603(24)
      abb603(22)=abb603(7)*spak1k4
      abb603(23)=abb603(6)*spak4k5
      abb603(22)=abb603(22)+abb603(23)
      abb603(23)=spbk7k4*abb603(22)
      abb603(19)=spak3k5*abb603(19)
      abb603(25)=spak1k3*abb603(26)
      abb603(19)=abb603(25)+abb603(23)+abb603(19)
      abb603(19)=8.0_ki*abb603(19)
      abb603(23)=-4.0_ki*abb603(24)
      abb603(24)=abb603(8)*spbk7k3
      abb603(25)=-8.0_ki*abb603(24)
      abb603(24)=4.0_ki*abb603(24)
      abb603(26)=abb603(6)*spbk3k2
      abb603(29)=spak5k7*abb603(26)
      abb603(30)=abb603(7)*spbk3k2
      abb603(31)=-spak1k7*abb603(30)
      abb603(29)=abb603(31)+abb603(29)
      abb603(10)=abb603(12)-abb603(10)
      abb603(10)=abb603(10)*abb603(29)
      abb603(8)=spbk3k2**2*abb603(8)*spak3k4
      abb603(8)=2.0_ki*abb603(8)+abb603(10)
      abb603(8)=4.0_ki*abb603(8)
      abb603(10)=abb603(26)*spak4k5
      abb603(12)=abb603(30)*spak1k4
      abb603(10)=abb603(10)+abb603(12)
      abb603(12)=8.0_ki*abb603(10)
      abb603(29)=24.0_ki*abb603(10)
      abb603(10)=4.0_ki*abb603(10)
      abb603(31)=-abb603(26)*abb603(20)
      abb603(32)=8.0_ki*spak2k4
      abb603(33)=abb603(26)*abb603(32)
      abb603(22)=spbk4k2*abb603(22)
      abb603(26)=spak3k5*abb603(26)
      abb603(34)=spak1k3*abb603(30)
      abb603(22)=abb603(34)+abb603(22)+abb603(26)+abb603(28)
      abb603(22)=4.0_ki*abb603(22)
      abb603(6)=8.0_ki*abb603(6)
      abb603(9)=-16.0_ki*abb603(9)
      abb603(20)=abb603(30)*abb603(20)
      abb603(26)=-abb603(30)*abb603(32)
      abb603(7)=-8.0_ki*abb603(7)
      R2d603=0.0_ki
      rat2 = rat2 + R2d603
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='603' value='", &
          & R2d603, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd603h1
