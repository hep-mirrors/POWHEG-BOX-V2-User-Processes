module p0_gg_hhg_abbrevd33h0_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(16), public :: abb33
   complex(ki), public :: R2d33
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb33(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb33(2)=sqrt(mT**2)
      abb33(3)=sqrt2**(-1)
      abb33(4)=spbk2k1**(-1)
      abb33(5)=spak2k5**(-1)
      abb33(6)=spbk5k2**(-1)
      abb33(7)=abb33(3)*abb33(4)*abb33(5)*gHT*gHHH*i_
      abb33(8)=abb33(1)*abb33(2)
      abb33(9)=spak1k2*abb33(7)*abb33(8)
      abb33(10)=abb33(2)**2
      abb33(10)=es12-2.0_ki*abb33(10)
      abb33(11)=c2-c1
      abb33(10)=2.0_ki*abb33(11)*abb33(10)*abb33(9)
      abb33(12)=c1+c2
      abb33(12)=8.0_ki*abb33(12)*abb33(9)
      abb33(9)=4.0_ki*abb33(9)
      abb33(11)=abb33(11)*abb33(9)
      abb33(13)=c1*abb33(6)
      abb33(14)=c2*abb33(6)
      abb33(15)=abb33(13)+abb33(14)
      abb33(16)=4.0_ki*abb33(8)
      abb33(16)=abb33(7)*abb33(16)*es12*abb33(15)
      abb33(9)=-abb33(9)*spbk5k1*abb33(15)
      abb33(13)=abb33(13)-abb33(14)
      abb33(7)=8.0_ki*abb33(7)
      abb33(7)=abb33(13)*abb33(8)*abb33(7)
      R2d33=0.0_ki
      rat2 = rat2 + R2d33
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='33' value='", &
          & R2d33, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd33h0_qp
