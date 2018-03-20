module     p0_gg_hhg_abbrevd25h0_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(0), public :: abb25
   complex(ki), public :: R2d25
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
      R2d25=0.0_ki
      rat2 = rat2 + R2d25
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='25' value='", &
          & R2d25, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd25h0_qp
