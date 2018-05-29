module     p12_sbars_epnemumnmubarg_abbrevd599h5
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(21), public :: abb599
   complex(ki), public :: R2d599
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
      abb599(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb599(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb599(3)=1.0_ki/(es34+es567-es12-es234)
      abb599(4)=NC**(-1)
      abb599(5)=sqrt2**(-1)
      abb599(6)=spbk7k2**(-1)
      abb599(7)=spbk3k1*spak1k7
      abb599(8)=spbk4k3*spak4k7
      abb599(7)=abb599(7)+abb599(8)
      abb599(8)=8.0_ki*abb599(6)
      abb599(9)=abb599(5)*abb599(4)*abb599(3)*gW**4*abb599(1)*abb599(2)*spak1k4&
      &*c1*TR*i_
      abb599(8)=abb599(8)*abb599(9)
      abb599(10)=-spbk6k2**2*abb599(8)*spak5k6*abb599(7)
      abb599(11)=abb599(6)*spbk6k2
      abb599(12)=abb599(11)*abb599(9)
      abb599(13)=16.0_ki*abb599(12)
      abb599(14)=spbk3k1*spak1k5
      abb599(15)=spbk4k3*spak4k5
      abb599(14)=abb599(14)+abb599(15)
      abb599(15)=abb599(14)*abb599(13)
      abb599(12)=8.0_ki*abb599(12)
      abb599(16)=abb599(14)*abb599(12)
      abb599(17)=16.0_ki*abb599(9)
      abb599(17)=spbk7k6*abb599(17)*abb599(6)
      abb599(14)=abb599(14)*abb599(17)
      abb599(13)=-abb599(7)*abb599(13)
      abb599(18)=-abb599(7)*abb599(12)
      abb599(7)=-abb599(7)*abb599(17)
      abb599(17)=spbk4k3*spak5k7
      abb599(19)=-abb599(12)*abb599(17)
      abb599(11)=abb599(11)*spak5k6
      abb599(20)=-spbk4k3*abb599(11)
      abb599(17)=abb599(17)+abb599(20)
      abb599(9)=8.0_ki*abb599(9)
      abb599(17)=abb599(17)*abb599(9)
      abb599(20)=-spbk4k3*abb599(8)
      abb599(21)=spbk3k1*spak5k7
      abb599(12)=-abb599(12)*abb599(21)
      abb599(11)=-spbk3k1*abb599(11)
      abb599(11)=abb599(21)+abb599(11)
      abb599(9)=abb599(11)*abb599(9)
      abb599(8)=-spbk3k1*abb599(8)
      R2d599=0.0_ki
      rat2 = rat2 + R2d599
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='599' value='", &
          & R2d599, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd599h5
