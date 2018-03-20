module     p0_gg_hhg_abbrevd8h4_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh4_qp
   implicit none
   private
   complex(ki), dimension(13), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(es34-es51-es12)
      abb8(2)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb8(3)=sqrt(mT**2)
      abb8(4)=sqrt2**(-1)
      abb8(5)=spbk2k1**(-1)
      abb8(6)=spbk5k2**(-1)
      abb8(7)=c1-c2
      abb8(8)=es51+es12-es34
      abb8(7)=gHT*abb8(4)*abb8(5)*gHHH*i_*abb8(8)*abb8(7)
      abb8(8)=abb8(3)*abb8(1)*abb8(2)
      abb8(9)=abb8(8)*abb8(7)
      abb8(10)=abb8(6)*spak1k5
      abb8(11)=abb8(9)*abb8(10)
      abb8(12)=-2.0_ki*abb8(11)
      abb8(13)=-abb8(3)**2
      abb8(13)=es12+abb8(13)
      abb8(8)=4.0_ki*abb8(8)
      abb8(7)=abb8(8)*abb8(13)*abb8(7)*abb8(10)
      abb8(8)=-4.0_ki*abb8(11)
      abb8(9)=abb8(9)*abb8(6)**2
      abb8(10)=-8.0_ki*abb8(9)
      abb8(9)=-16.0_ki*abb8(9)
      R2d8=abb8(12)
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd8h4_qp
