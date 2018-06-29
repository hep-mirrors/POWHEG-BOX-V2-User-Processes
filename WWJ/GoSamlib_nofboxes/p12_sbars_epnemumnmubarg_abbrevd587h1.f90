module     p12_sbars_epnemumnmubarg_abbrevd587h1
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(36), public :: abb587
   complex(ki), public :: R2d587
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb587(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb587(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb587(3)=1.0_ki/(es34+es567-es12-es234)
      abb587(4)=NC**(-1)
      abb587(5)=sqrt2**(-1)
      abb587(6)=spak2k7**(-1)
      abb587(7)=spbk3k1*spak1k5
      abb587(8)=spbk4k3*spak4k5
      abb587(7)=abb587(7)+abb587(8)
      abb587(8)=abb587(5)*abb587(4)*abb587(3)*gW**4*abb587(1)*abb587(2)*spak1k4&
      &*c1*TR*i_
      abb587(9)=32.0_ki*abb587(8)
      abb587(10)=abb587(6)*spbk7k6
      abb587(11)=abb587(9)*abb587(7)*abb587(10)
      abb587(12)=abb587(7)*spak2k5*spbk6k5
      abb587(13)=-spbk7k2*abb587(12)
      abb587(14)=es34-es234
      abb587(15)=abb587(14)-es12
      abb587(15)=spbk7k6*abb587(15)*abb587(7)
      abb587(13)=abb587(15)+abb587(13)
      abb587(15)=8.0_ki*abb587(6)
      abb587(15)=abb587(15)*abb587(8)
      abb587(13)=abb587(13)*abb587(15)
      abb587(16)=16.0_ki*abb587(8)
      abb587(17)=abb587(16)*abb587(10)
      abb587(18)=abb587(7)*abb587(17)
      abb587(19)=spbk7k6**2
      abb587(20)=abb587(7)*abb587(19)
      abb587(12)=-abb587(10)*abb587(12)
      abb587(12)=abb587(20)+abb587(12)
      abb587(20)=8.0_ki*abb587(8)
      abb587(12)=abb587(12)*abb587(20)
      abb587(21)=spbk7k5*abb587(7)
      abb587(22)=spbk3k1*spak1k6
      abb587(23)=spbk4k3*spak4k6
      abb587(22)=abb587(22)+abb587(23)
      abb587(23)=spbk7k6*abb587(22)
      abb587(21)=abb587(23)+abb587(21)
      abb587(9)=abb587(6)*abb587(21)*abb587(9)
      abb587(21)=spbk3k1*spak1k2
      abb587(23)=spbk4k3*spak2k4
      abb587(21)=abb587(21)-abb587(23)
      abb587(17)=abb587(21)*abb587(17)
      abb587(19)=-abb587(22)*abb587(19)
      abb587(22)=spbk3k1*spak2k5
      abb587(23)=spak1k6*abb587(22)
      abb587(24)=spbk4k3*spak2k5
      abb587(25)=spak4k6*abb587(24)
      abb587(23)=abb587(23)+abb587(25)
      abb587(10)=abb587(10)*spbk6k5*abb587(23)
      abb587(10)=abb587(19)+abb587(10)
      abb587(10)=abb587(10)*abb587(20)
      abb587(19)=-abb587(21)*abb587(15)*spbk7k6
      abb587(16)=-abb587(6)*abb587(16)*spbk7k5*abb587(21)
      abb587(20)=spbk7k6*spak5k6
      abb587(8)=abb587(8)*spbk6k2
      abb587(21)=abb587(20)*abb587(8)
      abb587(21)=8.0_ki*abb587(21)
      abb587(23)=-spbk4k3*abb587(21)
      abb587(8)=abb587(8)*abb587(6)
      abb587(8)=16.0_ki*abb587(8)
      abb587(24)=abb587(8)*abb587(24)
      abb587(25)=abb587(15)*spbk4k3
      abb587(26)=spak2k5*spbk6k2
      abb587(27)=abb587(26)*abb587(25)
      abb587(28)=es71-es712
      abb587(14)=abb587(14)+es12+2.0_ki*abb587(28)
      abb587(29)=-abb587(14)*abb587(25)
      abb587(28)=es671-es345-abb587(28)
      abb587(28)=abb587(28)*abb587(20)
      abb587(30)=-abb587(25)*abb587(28)
      abb587(31)=abb587(25)*spbk7k2
      abb587(32)=-spak2k6*abb587(31)
      abb587(20)=abb587(26)*abb587(20)
      abb587(33)=-abb587(25)*abb587(20)
      abb587(31)=-spak2k5*abb587(31)
      abb587(7)=-abb587(15)*spbk6k2*abb587(7)
      abb587(34)=spak5k6*spbk6k2
      abb587(35)=-abb587(25)*abb587(34)
      abb587(21)=-spbk3k1*abb587(21)
      abb587(8)=abb587(8)*abb587(22)
      abb587(15)=abb587(15)*spbk3k1
      abb587(22)=abb587(26)*abb587(15)
      abb587(14)=-abb587(14)*abb587(15)
      abb587(26)=-abb587(15)*abb587(28)
      abb587(28)=abb587(15)*spbk7k2
      abb587(36)=-spak2k6*abb587(28)
      abb587(34)=-abb587(15)*abb587(34)
      abb587(20)=-abb587(15)*abb587(20)
      abb587(28)=-spak2k5*abb587(28)
      R2d587=0.0_ki
      rat2 = rat2 + R2d587
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='587' value='", &
          & R2d587, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd587h1
