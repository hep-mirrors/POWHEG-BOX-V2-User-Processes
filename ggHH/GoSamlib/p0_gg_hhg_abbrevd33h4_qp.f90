module     p0_gg_hhg_abbrevd33h4_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh4_qp
   implicit none
   private
   complex(ki), dimension(20), public :: abb33
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
      abb33(4)=spbk2k1**(-1)
      abb33(5)=spbk5k2**(-1)
      abb33(6)=c1-c2
      abb33(7)=abb33(1)*i_*gHHH*gHT*abb33(3)
      abb33(8)=abb33(4)*abb33(7)
      abb33(9)=abb33(8)*abb33(6)*abb33(2)**3
      abb33(10)=abb33(5)*abb33(9)
      abb33(8)=abb33(6)*abb33(8)*abb33(2)
      abb33(11)=-abb33(5)*abb33(8)
      abb33(12)=abb33(11)*es12
      abb33(13)=abb33(10)+abb33(12)
      abb33(14)=es51-es34
      abb33(13)=-abb33(13)*abb33(14)
      abb33(15)=-abb33(11)*es12**2
      abb33(13)=abb33(15)+abb33(13)
      abb33(15)=2.0_ki*spak1k5
      abb33(13)=abb33(13)*abb33(15)
      abb33(15)=4.0_ki*spak1k5
      abb33(12)=abb33(15)*abb33(12)
      abb33(14)=abb33(14)+es12
      abb33(16)=abb33(14)*abb33(11)
      abb33(17)=abb33(16)*abb33(15)
      abb33(18)=-8.0_ki*spak1k5*abb33(11)
      abb33(10)=2.0_ki*abb33(10)-abb33(16)
      abb33(10)=2.0_ki*spak1k2*abb33(10)
      abb33(16)=4.0_ki*spak1k2
      abb33(11)=abb33(16)*abb33(11)
      abb33(16)=abb33(5)**2
      abb33(6)=abb33(2)*abb33(7)*abb33(6)*abb33(16)
      abb33(7)=2.0_ki*abb33(14)
      abb33(19)=-spak1k5*abb33(6)*abb33(7)
      abb33(15)=abb33(6)*abb33(15)
      abb33(8)=-abb33(16)*abb33(8)
      abb33(14)=abb33(14)*abb33(8)
      abb33(20)=2.0_ki*abb33(14)
      abb33(9)=-abb33(16)*abb33(9)
      abb33(16)=abb33(8)*es12
      abb33(9)=-abb33(16)+2.0_ki*abb33(9)
      abb33(7)=abb33(9)*abb33(7)
      abb33(9)=4.0_ki*es12
      abb33(9)=abb33(8)*abb33(9)
      abb33(16)=8.0_ki*abb33(14)
      abb33(14)=-4.0_ki*abb33(14)
      abb33(8)=-8.0_ki*abb33(8)
      abb33(6)=2.0_ki*abb33(6)
      abb33(6)=-spak2k5*abb33(6)
      R2d33=0.0_ki
      rat2 = rat2 + R2d33
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='33' value='", &
          & R2d33, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd33h4_qp
