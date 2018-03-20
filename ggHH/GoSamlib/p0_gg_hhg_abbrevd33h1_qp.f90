module     p0_gg_hhg_abbrevd33h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(8), public :: abb33
   complex(ki), public :: R2d33
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb33(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb33(2)=sqrt(mT**2)
      abb33(3)=sqrt2**(-1)
      abb33(4)=spbk5k2**(-1)
      abb33(5)=spak1k2**(-1)
      abb33(6)=spak2k5**(-1)
      abb33(7)=c2-c1
      abb33(7)=i_*abb33(7)*gHT*gHHH*abb33(1)*abb33(2)*abb33(3)*abb33(4)
      abb33(8)=2.0_ki*spbk5k1**2*abb33(7)
      abb33(7)=-8.0_ki*abb33(5)*abb33(6)*abb33(7)
      R2d33=0.0_ki
      rat2 = rat2 + R2d33
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='33' value='", &
          & R2d33, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd33h1_qp
