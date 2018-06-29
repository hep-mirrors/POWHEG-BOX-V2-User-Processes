module     p8_cbarc_epnemumnmubarg_abbrevd607h1
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(31), public :: abb607
   complex(ki), public :: R2d607
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
      abb607(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb607(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb607(3)=1.0_ki/(-es71+es56-es567+es234)
      abb607(4)=NC**(-1)
      abb607(5)=sqrt2**(-1)
      abb607(6)=spak2k7**(-1)
      abb607(7)=spbk6k1*spak1k7
      abb607(8)=spbk6k5*spak5k7
      abb607(7)=abb607(7)-abb607(8)
      abb607(8)=spak3k4*spbk7k3**2
      abb607(9)=abb607(6)*abb607(5)*abb607(4)*abb607(3)*gW**4*abb607(1)*abb607(&
      &2)*spak1k5*c1*TR*i_
      abb607(10)=16.0_ki*abb607(9)
      abb607(10)=-abb607(10)*abb607(7)*abb607(8)
      abb607(11)=spbk6k1*spak1k4
      abb607(12)=spbk6k5*spak4k5
      abb607(11)=abb607(11)+abb607(12)
      abb607(12)=abb607(9)*spbk7k3
      abb607(13)=-32.0_ki*abb607(11)*abb607(12)
      abb607(14)=spbk6k1*spak1k2
      abb607(15)=spbk6k5*spak2k5
      abb607(14)=abb607(14)+abb607(15)
      abb607(15)=spak4k7*spbk7k2
      abb607(16)=spak3k4*spbk3k2
      abb607(17)=abb607(15)-abb607(16)
      abb607(18)=8.0_ki*abb607(9)
      abb607(19)=abb607(18)*spbk7k3
      abb607(17)=abb607(19)*abb607(17)*abb607(14)
      abb607(12)=16.0_ki*abb607(12)
      abb607(11)=abb607(11)*abb607(12)
      abb607(20)=abb607(14)*abb607(18)
      abb607(8)=abb607(20)*abb607(8)
      abb607(21)=es12+es71-es712
      abb607(22)=abb607(21)*spbk7k3
      abb607(23)=abb607(18)*spbk6k5
      abb607(24)=abb607(22)*abb607(23)
      abb607(25)=spak4k7*abb607(24)
      abb607(24)=-spak3k4*abb607(24)
      abb607(26)=spbk7k2*spak2k4
      abb607(27)=16.0_ki*abb607(26)
      abb607(9)=abb607(27)*abb607(9)
      abb607(27)=-spbk6k5*abb607(9)
      abb607(28)=-abb607(23)*abb607(26)
      abb607(20)=spbk7k2*abb607(20)
      abb607(29)=abb607(21)*abb607(23)
      abb607(30)=abb607(14)*abb607(12)
      abb607(14)=abb607(14)*abb607(19)
      abb607(19)=spak4k7*spbk3k2
      abb607(31)=abb607(23)*abb607(19)
      abb607(15)=abb607(15)+abb607(16)
      abb607(16)=-abb607(15)*abb607(23)
      abb607(7)=-abb607(7)*abb607(12)
      abb607(12)=abb607(18)*spbk6k1
      abb607(18)=abb607(22)*abb607(12)
      abb607(22)=-spak4k7*abb607(18)
      abb607(21)=abb607(21)*abb607(12)
      abb607(19)=-abb607(12)*abb607(19)
      abb607(18)=spak3k4*abb607(18)
      abb607(9)=spbk6k1*abb607(9)
      abb607(26)=abb607(12)*abb607(26)
      abb607(15)=abb607(15)*abb607(12)
      R2d607=0.0_ki
      rat2 = rat2 + R2d607
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='607' value='", &
          & R2d607, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd607h1
