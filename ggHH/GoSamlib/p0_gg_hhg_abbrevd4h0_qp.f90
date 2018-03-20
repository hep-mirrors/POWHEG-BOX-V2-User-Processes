module     p0_gg_hhg_abbrevd4h0_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(14), public :: abb4
   complex(ki), public :: R2d4
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
      abb4(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb4(2)=sqrt(mT**2)
      abb4(3)=sqrt2**(-1)
      abb4(4)=es12**(-1)
      abb4(5)=spbk2k1**(-1)
      abb4(6)=spak2k5**(-1)
      abb4(7)=spbk5k2**(-1)
      abb4(8)=c2-c1
      abb4(8)=abb4(8)*abb4(5)*abb4(4)*abb4(1)*abb4(3)*abb4(6)*gHT*gHHH*i_
      abb4(9)=abb4(8)*spbk5k1
      abb4(10)=spak1k2**2*abb4(9)
      abb4(11)=abb4(10)*abb4(2)
      abb4(12)=2.0_ki*abb4(11)
      abb4(10)=4.0_ki*abb4(2)**3*abb4(10)
      abb4(11)=-12.0_ki*abb4(11)
      abb4(13)=abb4(2)*spak1k2
      abb4(8)=abb4(8)*abb4(13)
      abb4(14)=16.0_ki*abb4(8)
      abb4(8)=-8.0_ki*abb4(8)
      abb4(13)=16.0_ki*abb4(13)
      abb4(9)=abb4(13)*abb4(7)*abb4(9)
      R2d4=abb4(12)
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd4h0_qp
