module     p12_sbars_epnemumnmubarg_abbrevd61h5
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(23), public :: abb61
   complex(ki), public :: R2d61
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
      abb61(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb61(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb61(3)=1.0_ki/(es34+es567-es12-es234)
      abb61(4)=1.0_ki/(es71+es34+es56-es712-es234)
      abb61(5)=NC**(-1)
      abb61(6)=sqrt2**(-1)
      abb61(7)=spbk7k2**(-1)
      abb61(8)=spbk4k3*spak4k7
      abb61(9)=spbk3k1*spak1k7
      abb61(10)=abb61(9)+abb61(8)
      abb61(11)=NC-abb61(5)
      abb61(12)=abb61(6)*abb61(7)*c1*gW**4*i_*TR*abb61(4)*abb61(3)*abb61(2)*abb&
      &61(1)
      abb61(13)=abb61(11)*abb61(12)*spak5k6
      abb61(14)=spbk6k2**2*abb61(13)
      abb61(10)=abb61(14)*spak1k4*abb61(10)
      abb61(15)=4.0_ki*abb61(10)
      abb61(16)=16.0_ki*abb61(10)
      abb61(10)=-8.0_ki*abb61(10)
      abb61(17)=-es234-es12+es567
      abb61(17)=spak1k7*abb61(17)
      abb61(8)=-spak1k3*abb61(8)
      abb61(18)=spak3k7*spbk4k3*spak1k4
      abb61(8)=abb61(8)+abb61(18)+abb61(17)
      abb61(17)=8.0_ki*abb61(14)
      abb61(8)=abb61(8)*abb61(17)
      abb61(18)=spbk4k2*spak1k4
      abb61(19)=spbk3k2*spak1k3
      abb61(18)=abb61(18)+abb61(19)
      abb61(19)=spak5k7*abb61(18)
      abb61(11)=-abb61(12)*abb61(11)
      abb61(12)=-spbk6k2*abb61(11)
      abb61(20)=abb61(19)*abb61(12)
      abb61(20)=32.0_ki*abb61(20)
      abb61(14)=abb61(14)*spak1k7
      abb61(21)=32.0_ki*abb61(14)
      abb61(14)=16.0_ki*abb61(14)
      abb61(22)=spbk6k4*spak1k4
      abb61(23)=spbk6k3*spak1k3
      abb61(22)=abb61(23)+abb61(22)
      abb61(13)=abb61(22)*spbk6k2*abb61(13)
      abb61(12)=abb61(18)*abb61(12)
      abb61(18)=-spak2k5*abb61(12)
      abb61(13)=abb61(18)+abb61(13)
      abb61(13)=16.0_ki*abb61(13)
      abb61(18)=-spak6k7*abb61(12)
      abb61(11)=abb61(11)*abb61(19)
      abb61(19)=spbk5k2*abb61(11)
      abb61(18)=abb61(18)+abb61(19)
      abb61(18)=16.0_ki*abb61(18)
      abb61(11)=spbk6k5*abb61(11)
      abb61(12)=spak2k7*abb61(12)
      abb61(11)=abb61(11)+abb61(12)
      abb61(11)=16.0_ki*abb61(11)
      abb61(12)=spak4k7*abb61(17)
      abb61(9)=-spak3k4*abb61(9)
      abb61(19)=-es34*spak4k7
      abb61(9)=abb61(9)+abb61(19)
      abb61(9)=abb61(9)*abb61(17)
      abb61(17)=spak3k7*abb61(17)
      R2d61=abb61(15)
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd61h5
