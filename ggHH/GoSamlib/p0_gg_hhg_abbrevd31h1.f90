module     p0_gg_hhg_abbrevd31h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(10), public :: abb31
   complex(ki), public :: R2d31
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb31(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb31(2)=sqrt(mT**2)
      abb31(3)=sqrt2**(-1)
      abb31(4)=spbk5k2**(-1)
      abb31(5)=spak2k5**(-1)
      abb31(6)=spak1k2**(-1)
      abb31(7)=c2-c1
      abb31(8)=abb31(3)*abb31(1)*abb31(2)*abb31(4)*gHT*gHHH*i_
      abb31(9)=-2.0_ki*spbk5k1**2*abb31(7)*abb31(8)
      abb31(10)=8.0_ki*abb31(5)
      abb31(7)=abb31(7)*abb31(10)*abb31(8)
      abb31(8)=-spbk5k1*abb31(7)
      abb31(7)=abb31(6)*abb31(7)
      R2d31=0.0_ki
      rat2 = rat2 + R2d31
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='31' value='", &
          & R2d31, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd31h1
