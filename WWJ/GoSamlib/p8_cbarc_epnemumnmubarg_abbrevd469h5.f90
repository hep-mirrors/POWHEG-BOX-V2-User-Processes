module     p8_cbarc_epnemumnmubarg_abbrevd469h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(26), public :: abb469
   complex(ki), public :: R2d469
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
      abb469(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb469(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb469(3)=1.0_ki/(-es71+es56-es567+es234)
      abb469(4)=NC**(-1)
      abb469(5)=sqrt2**(-1)
      abb469(6)=es234**(-1)
      abb469(7)=spbk7k2**(-1)
      abb469(8)=NC-abb469(4)
      abb469(9)=c1*gW**4*abb469(3)**2*i_*TR*abb469(7)*abb469(5)*abb469(2)*abb46&
      &9(1)
      abb469(10)=abb469(8)*abb469(9)*abb469(6)*spak1k5
      abb469(11)=spbk3k2**2
      abb469(12)=abb469(11)*abb469(10)
      abb469(13)=spbk6k5*spak3k4
      abb469(14)=abb469(12)*abb469(13)
      abb469(15)=es56-es71
      abb469(16)=abb469(14)*abb469(15)
      abb469(8)=-abb469(9)*abb469(8)
      abb469(9)=-abb469(8)*abb469(11)*spak1k5
      abb469(11)=abb469(9)*abb469(13)
      abb469(11)=abb469(11)+abb469(16)
      abb469(11)=spak5k7*abb469(11)
      abb469(16)=spbk6k1*spak3k4
      abb469(12)=abb469(12)*abb469(16)
      abb469(17)=-abb469(12)*abb469(15)
      abb469(9)=-abb469(9)*abb469(16)
      abb469(9)=abb469(9)+abb469(17)
      abb469(9)=spak1k7*abb469(9)
      abb469(17)=abb469(14)*spak5k7
      abb469(18)=abb469(12)*spak1k7
      abb469(19)=abb469(17)-abb469(18)
      abb469(20)=-es567*abb469(19)
      abb469(9)=abb469(20)+abb469(11)+abb469(9)
      abb469(9)=8.0_ki*abb469(9)
      abb469(11)=32.0_ki*abb469(19)
      abb469(19)=abb469(17)-2.0_ki*abb469(18)
      abb469(19)=16.0_ki*abb469(19)
      abb469(20)=spbk5k2*spbk6k1
      abb469(21)=spbk2k1*spbk6k5
      abb469(20)=abb469(20)+abb469(21)
      abb469(21)=spak4k7*abb469(20)
      abb469(8)=abb469(6)*abb469(8)*spak1k5**2
      abb469(22)=-spbk3k2*abb469(8)
      abb469(23)=abb469(22)*abb469(21)
      abb469(24)=-spbk3k2*abb469(10)
      abb469(15)=abb469(15)+es671-es67
      abb469(25)=-spak4k7*abb469(15)*spbk6k2
      abb469(26)=abb469(25)*abb469(24)
      abb469(23)=-abb469(26)+abb469(23)
      abb469(23)=32.0_ki*abb469(23)
      abb469(17)=-2.0_ki*abb469(17)+abb469(18)
      abb469(17)=16.0_ki*abb469(17)
      abb469(16)=-spbk5k3*abb469(16)
      abb469(13)=-spbk3k1*abb469(13)
      abb469(13)=abb469(13)+abb469(16)
      abb469(13)=abb469(22)*abb469(13)
      abb469(16)=abb469(22)*abb469(20)
      abb469(15)=abb469(15)*abb469(24)
      abb469(18)=spbk6k2*abb469(15)
      abb469(16)=abb469(16)+abb469(18)
      abb469(18)=spak2k4*abb469(16)
      abb469(15)=-spbk6k3*spak3k4*abb469(15)
      abb469(13)=abb469(18)+abb469(15)+abb469(13)
      abb469(13)=16.0_ki*abb469(13)
      abb469(14)=8.0_ki*abb469(14)
      abb469(15)=-spak6k7*abb469(14)
      abb469(14)=spak1k7*abb469(14)
      abb469(18)=spak3k7*abb469(16)
      abb469(8)=abb469(8)*abb469(21)
      abb469(10)=-abb469(25)*abb469(10)
      abb469(8)=abb469(10)+abb469(8)
      abb469(10)=-spbk4k2*abb469(8)
      abb469(10)=abb469(18)+abb469(10)
      abb469(10)=16.0_ki*abb469(10)
      abb469(8)=spbk4k3*abb469(8)
      abb469(16)=-spak2k7*abb469(16)
      abb469(8)=abb469(8)+abb469(16)
      abb469(8)=16.0_ki*abb469(8)
      abb469(12)=8.0_ki*abb469(12)
      abb469(16)=spak6k7*abb469(12)
      abb469(12)=spak5k7*abb469(12)
      R2d469=0.0_ki
      rat2 = rat2 + R2d469
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='469' value='", &
          & R2d469, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd469h5
