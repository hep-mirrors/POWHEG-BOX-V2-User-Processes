module     p8_cbarc_epnemumnmubarg_abbrevd591h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(29), public :: abb591
   complex(ki), public :: R2d591
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
      abb591(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb591(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb591(3)=1.0_ki/(-es71+es56-es567+es234)
      abb591(4)=NC**(-1)
      abb591(5)=sqrt2**(-1)
      abb591(6)=spbk7k2**(-1)
      abb591(7)=spbk6k5*spak4k7
      abb591(8)=abb591(7)*spak4k5
      abb591(9)=spbk6k1*spak4k7
      abb591(10)=abb591(9)*spak1k4
      abb591(8)=abb591(8)+abb591(10)
      abb591(10)=-spbk4k2*abb591(8)
      abb591(11)=spbk6k1*spak1k4
      abb591(12)=spbk6k5*spak4k5
      abb591(11)=abb591(11)+abb591(12)
      abb591(12)=-spbk3k2*spak3k7*abb591(11)
      abb591(10)=abb591(12)+abb591(10)
      abb591(12)=abb591(6)*abb591(5)*abb591(4)*abb591(3)*gW**4*abb591(1)*abb591&
      &(2)*spak1k5*c1*TR*i_
      abb591(13)=8.0_ki*abb591(12)
      abb591(14)=abb591(13)*spbk3k2
      abb591(10)=abb591(10)*abb591(14)
      abb591(15)=16.0_ki*spbk3k2
      abb591(15)=abb591(15)*abb591(12)
      abb591(16)=abb591(11)*abb591(15)
      abb591(17)=abb591(13)*spak3k4*spbk3k2**2
      abb591(18)=-abb591(7)*abb591(17)
      abb591(19)=spbk6k5*spak3k7
      abb591(20)=-abb591(17)*abb591(19)
      abb591(21)=abb591(14)*spak3k4
      abb591(22)=-spbk6k5*abb591(21)
      abb591(23)=abb591(7)*abb591(15)
      abb591(24)=abb591(7)*abb591(14)
      abb591(11)=-spbk4k2*abb591(11)
      abb591(25)=-spbk6k1*spak1k3
      abb591(26)=-spbk6k5*spak3k5
      abb591(25)=abb591(25)+abb591(26)
      abb591(25)=spbk3k2*abb591(25)
      abb591(11)=abb591(25)+abb591(11)
      abb591(12)=16.0_ki*abb591(12)
      abb591(11)=abb591(11)*abb591(12)
      abb591(25)=spbk4k2*abb591(7)
      abb591(19)=spbk3k2*abb591(19)
      abb591(19)=abb591(25)+abb591(19)
      abb591(19)=abb591(19)*abb591(13)
      abb591(25)=abb591(13)*spbk6k5
      abb591(26)=-spak1k3*abb591(9)
      abb591(7)=-spak3k5*abb591(7)
      abb591(7)=abb591(26)+abb591(7)
      abb591(26)=abb591(14)*spbk4k3
      abb591(7)=abb591(7)*abb591(26)
      abb591(27)=spbk6k1*spak1k7
      abb591(28)=spbk6k5*spak5k7
      abb591(27)=abb591(27)-abb591(28)
      abb591(28)=abb591(27)*abb591(15)
      abb591(29)=abb591(27)*abb591(14)
      abb591(12)=abb591(12)*spbk4k2*abb591(27)
      abb591(8)=abb591(8)*abb591(26)
      abb591(26)=abb591(9)*abb591(17)
      abb591(27)=spbk6k1*spak3k7
      abb591(17)=abb591(27)*abb591(17)
      abb591(21)=spbk6k1*abb591(21)
      abb591(15)=abb591(9)*abb591(15)
      abb591(14)=-abb591(9)*abb591(14)
      abb591(9)=-spbk4k2*abb591(9)
      abb591(27)=-spbk3k2*abb591(27)
      abb591(9)=abb591(9)+abb591(27)
      abb591(9)=abb591(9)*abb591(13)
      abb591(13)=abb591(13)*spbk6k1
      R2d591=0.0_ki
      rat2 = rat2 + R2d591
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='591' value='", &
          & R2d591, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd591h5
