module     p8_cbarc_epnemumnmubarg_abbrevd61h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(23), public :: abb61
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
      abb61(7)=spbk7k2**(-1)
      abb61(8)=spbk6k5*spak5k7
      abb61(9)=spbk6k1*spak1k7
      abb61(10)=abb61(8)-abb61(9)
      abb61(11)=abb61(7)*c1*gW**4*i_*TR*abb61(5)*abb61(3)*abb61(2)*abb61(1)
      abb61(12)=abb61(11)*spak3k4
      abb61(13)=NC-abb61(4)
      abb61(14)=abb61(13)*abb61(6)*abb61(12)
      abb61(15)=spbk3k2**2
      abb61(16)=-abb61(15)*abb61(14)
      abb61(10)=abb61(16)*spak1k5*abb61(10)
      abb61(17)=-4.0_ki*abb61(10)
      abb61(18)=16.0_ki*abb61(10)
      abb61(10)=8.0_ki*abb61(10)
      abb61(19)=-es567-es71
      abb61(19)=spak1k7*abb61(19)
      abb61(8)=spak1k6*abb61(8)
      abb61(20)=-spak6k7*spbk6k5*spak1k5
      abb61(8)=abb61(20)+abb61(8)+abb61(19)
      abb61(8)=abb61(16)*abb61(8)
      abb61(12)=-spak1k7*abb61(12)*abb61(13)*abb61(15)
      abb61(8)=abb61(12)+abb61(8)
      abb61(8)=8.0_ki*abb61(8)
      abb61(12)=abb61(16)*spak1k7
      abb61(15)=32.0_ki*abb61(12)
      abb61(19)=spbk6k2*spak1k6
      abb61(20)=spbk5k2*spak1k5
      abb61(19)=abb61(19)+abb61(20)
      abb61(20)=spak4k7*abb61(19)
      abb61(11)=abb61(6)*abb61(13)*abb61(11)
      abb61(13)=spbk3k2*abb61(11)
      abb61(21)=abb61(13)*abb61(20)
      abb61(21)=32.0_ki*abb61(21)
      abb61(12)=16.0_ki*abb61(12)
      abb61(22)=spbk6k3*spak1k6
      abb61(23)=spbk5k3*spak1k5
      abb61(22)=abb61(23)+abb61(22)
      abb61(14)=abb61(22)*spbk3k2*abb61(14)
      abb61(13)=abb61(13)*abb61(19)
      abb61(19)=-spak2k4*abb61(13)
      abb61(14)=abb61(19)+abb61(14)
      abb61(14)=16.0_ki*abb61(14)
      abb61(19)=-spak3k7*abb61(13)
      abb61(11)=abb61(20)*abb61(11)
      abb61(20)=-spbk4k2*abb61(11)
      abb61(19)=abb61(19)+abb61(20)
      abb61(19)=16.0_ki*abb61(19)
      abb61(11)=spbk4k3*abb61(11)
      abb61(13)=spak2k7*abb61(13)
      abb61(11)=abb61(11)+abb61(13)
      abb61(11)=16.0_ki*abb61(11)
      abb61(13)=8.0_ki*abb61(16)
      abb61(9)=spak5k6*abb61(9)
      abb61(16)=-es56*spak5k7
      abb61(9)=abb61(9)+abb61(16)
      abb61(9)=abb61(9)*abb61(13)
      abb61(16)=spak6k7*abb61(13)
      abb61(13)=spak5k7*abb61(13)
      R2d61=abb61(17)
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd61h5
