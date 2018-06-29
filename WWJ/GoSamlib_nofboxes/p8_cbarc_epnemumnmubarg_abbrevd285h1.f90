module     p8_cbarc_epnemumnmubarg_abbrevd285h1
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(18), public :: abb285
   complex(ki), public :: R2d285
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
      abb285(1)=1.0_ki/(-es71+es712-es12)
      abb285(2)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb285(3)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb285(4)=1.0_ki/(-es71+es56-es567+es234)
      abb285(5)=NC**(-1)
      abb285(6)=sqrt2**(-1)
      abb285(7)=spak2k7**(-1)
      abb285(8)=NC-abb285(5)
      abb285(9)=es71+es12-es712
      abb285(10)=abb285(6)*abb285(7)*spak1k5*c1*gW**4*i_*TR*abb285(4)*abb285(3)&
      &*abb285(2)*abb285(1)
      abb285(11)=abb285(10)*spbk7k3
      abb285(12)=-abb285(9)*abb285(8)*abb285(11)*spbk6k1
      abb285(13)=abb285(12)*spak1k4
      abb285(11)=-abb285(9)*abb285(8)*abb285(11)*spbk6k5
      abb285(14)=abb285(11)*spak4k5
      abb285(13)=abb285(13)+abb285(14)
      abb285(14)=-4.0_ki*abb285(13)
      abb285(13)=8.0_ki*abb285(13)
      abb285(15)=8.0_ki*spak3k4
      abb285(11)=abb285(11)*abb285(15)
      abb285(8)=-abb285(10)*abb285(8)
      abb285(10)=-spbk6k5*abb285(8)
      abb285(16)=spak2k5*abb285(10)
      abb285(8)=-spbk6k1*abb285(8)
      abb285(17)=spak1k2*abb285(8)
      abb285(16)=abb285(16)+abb285(17)
      abb285(16)=32.0_ki*spbk7k2*abb285(16)
      abb285(9)=8.0_ki*abb285(9)
      abb285(17)=-abb285(10)*abb285(9)
      abb285(10)=spak5k7*abb285(10)
      abb285(18)=-spak1k7*abb285(8)
      abb285(10)=abb285(10)+abb285(18)
      abb285(10)=16.0_ki*spbk7k2*abb285(10)
      abb285(8)=abb285(8)*abb285(9)
      abb285(9)=-abb285(12)*abb285(15)
      R2d285=abb285(14)
      rat2 = rat2 + R2d285
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='285' value='", &
          & R2d285, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd285h1
