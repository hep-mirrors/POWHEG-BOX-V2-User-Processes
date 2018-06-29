module     p12_sbars_epnemumnmubarg_abbrevd595h5
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(22), public :: abb595
   complex(ki), public :: R2d595
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
      abb595(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb595(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb595(3)=1.0_ki/(es34+es567-es12-es234)
      abb595(4)=sqrt2**(-1)
      abb595(5)=spbk7k2**(-1)
      abb595(6)=spbk3k1*spak1k7
      abb595(7)=spbk4k3*spak4k7
      abb595(6)=abb595(6)+abb595(7)
      abb595(7)=spak5k6*abb595(6)
      abb595(8)=abb595(7)*spbk6k2**2
      abb595(9)=es12+es71-es712
      abb595(10)=spak1k4*abb595(4)*abb595(3)*gW**4*abb595(1)*abb595(2)*c1*NC*TR&
      &*i_
      abb595(11)=8.0_ki*abb595(10)
      abb595(12)=abb595(11)*abb595(5)
      abb595(9)=-abb595(12)*abb595(9)*abb595(8)
      abb595(8)=16.0_ki*abb595(10)*abb595(5)*abb595(8)
      abb595(13)=abb595(6)*spak5k7
      abb595(14)=spbk6k2*abb595(5)
      abb595(15)=abb595(7)*abb595(14)
      abb595(13)=-abb595(15)+2.0_ki*abb595(13)
      abb595(15)=abb595(11)*spbk6k2
      abb595(16)=-abb595(13)*abb595(15)
      abb595(13)=4.0_ki*abb595(13)*abb595(10)*spbk6k2
      abb595(17)=-spak2k5*abb595(6)
      abb595(7)=spbk7k6*abb595(7)*abb595(5)
      abb595(18)=spbk3k1*spak1k2
      abb595(19)=spbk4k3*spak2k4
      abb595(18)=abb595(18)-abb595(19)
      abb595(19)=-abb595(14)*spak5k6*abb595(18)
      abb595(7)=abb595(19)+abb595(7)+abb595(17)
      abb595(7)=abb595(7)*abb595(15)
      abb595(15)=spbk3k1*spak1k5
      abb595(17)=spbk4k3*spak4k5
      abb595(15)=abb595(15)+abb595(17)
      abb595(10)=abb595(14)*abb595(10)
      abb595(17)=16.0_ki*abb595(10)
      abb595(19)=abb595(15)*abb595(17)
      abb595(14)=abb595(11)*abb595(14)
      abb595(15)=abb595(15)*abb595(14)
      abb595(11)=abb595(6)*abb595(11)
      abb595(20)=abb595(6)*abb595(14)
      abb595(6)=-4.0_ki*abb595(6)*abb595(10)
      abb595(10)=-abb595(18)*abb595(17)
      abb595(17)=abb595(14)*spbk4k3
      abb595(18)=-spak5k6*abb595(17)
      abb595(17)=-spak2k5*abb595(17)
      abb595(21)=-spbk4k3*abb595(12)
      abb595(14)=abb595(14)*spbk3k1
      abb595(22)=-spak5k6*abb595(14)
      abb595(14)=-spak2k5*abb595(14)
      abb595(12)=-spbk3k1*abb595(12)
      R2d595=0.0_ki
      rat2 = rat2 + R2d595
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='595' value='", &
          & R2d595, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd595h5
