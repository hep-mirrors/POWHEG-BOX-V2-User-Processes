module     p12_sbars_epnemumnmubarg_abbrevd285h5
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(26), public :: abb285
   complex(ki), public :: R2d285
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
      abb285(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb285(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb285(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb285(4)=NC**(-1)
      abb285(5)=sqrt2**(-1)
      abb285(6)=es71**(-1)
      abb285(7)=spbk7k2**(-1)
      abb285(8)=NC-abb285(4)
      abb285(9)=spak1k7*c1*gW**4*i_*TR*abb285(5)*abb285(3)*abb285(2)*abb285(1)
      abb285(10)=abb285(8)*spbk6k2*abb285(9)*abb285(6)
      abb285(11)=spbk6k3*spak5k6
      abb285(12)=spbk3k2*spak2k5
      abb285(11)=abb285(11)-abb285(12)
      abb285(12)=-abb285(11)*abb285(10)
      abb285(13)=abb285(12)*spak4k7
      abb285(14)=abb285(7)*abb285(10)
      abb285(15)=abb285(14)*spbk2k1
      abb285(11)=abb285(11)*abb285(15)
      abb285(16)=abb285(11)*spak1k4
      abb285(13)=abb285(13)+abb285(16)
      abb285(16)=4.0_ki*abb285(13)
      abb285(17)=16.0_ki*abb285(13)
      abb285(13)=-8.0_ki*abb285(13)
      abb285(18)=8.0_ki*spak3k4
      abb285(19)=abb285(12)*abb285(18)
      abb285(20)=-abb285(10)*spak4k7
      abb285(21)=-spak5k6*abb285(20)
      abb285(22)=spak5k6*abb285(15)
      abb285(23)=-spak1k4*abb285(22)
      abb285(21)=abb285(21)+abb285(23)
      abb285(21)=spbk6k4*abb285(21)
      abb285(12)=-spak3k7*abb285(12)
      abb285(20)=spak2k5*abb285(20)
      abb285(23)=spak2k5*abb285(15)
      abb285(24)=spak1k4*abb285(23)
      abb285(20)=abb285(20)+abb285(24)
      abb285(20)=spbk4k2*abb285(20)
      abb285(24)=-spak1k3*abb285(11)
      abb285(12)=abb285(24)+abb285(20)+abb285(21)+abb285(12)
      abb285(12)=8.0_ki*abb285(12)
      abb285(20)=spak1k5*spbk2k1
      abb285(21)=abb285(14)*abb285(20)
      abb285(24)=-abb285(10)*spak5k7
      abb285(21)=abb285(21)+abb285(24)
      abb285(21)=32.0_ki*abb285(21)
      abb285(24)=8.0_ki*abb285(10)
      abb285(25)=spak5k6*abb285(24)
      abb285(24)=spak2k5*abb285(24)
      abb285(26)=spak5k7*abb285(9)*abb285(8)*abb285(6)
      abb285(8)=abb285(8)*abb285(9)*abb285(7)
      abb285(9)=-abb285(20)*abb285(6)*abb285(8)
      abb285(9)=abb285(26)+abb285(9)
      abb285(20)=spbk5k2*abb285(9)
      abb285(10)=spak6k7*abb285(10)
      abb285(15)=-spak1k6*abb285(15)
      abb285(10)=abb285(15)+abb285(20)+abb285(10)
      abb285(10)=16.0_ki*abb285(10)
      abb285(9)=spbk6k5*abb285(9)
      abb285(8)=-spbk6k2*abb285(8)
      abb285(14)=es712*abb285(14)
      abb285(8)=abb285(14)+abb285(9)+abb285(8)
      abb285(8)=16.0_ki*abb285(8)
      abb285(9)=8.0_ki*abb285(22)
      abb285(11)=-abb285(11)*abb285(18)
      abb285(14)=8.0_ki*abb285(23)
      R2d285=abb285(16)
      rat2 = rat2 + R2d285
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='285' value='", &
          & R2d285, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd285h5
