module     p0_gg_hhg_abbrevd4h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh4
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
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb4(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb4(2)=sqrt(mT**2)
      abb4(3)=sqrt2**(-1)
      abb4(4)=spbk2k1**(-1)
      abb4(5)=spbk5k2**(-1)
      abb4(6)=es12**(-1)
      abb4(7)=i_*abb4(3)*abb4(4)*gHT*gHHH
      abb4(8)=abb4(1)*abb4(2)
      abb4(9)=abb4(8)*abb4(5)*abb4(7)
      abb4(10)=c2-c1
      abb4(11)=abb4(9)*abb4(10)*spak1k5
      abb4(12)=-2.0_ki*abb4(11)
      abb4(11)=4.0_ki*abb4(11)
      abb4(13)=-abb4(2)**2
      abb4(13)=abb4(13)+es34-es12
      abb4(13)=abb4(13)*abb4(11)
      abb4(10)=-abb4(10)*abb4(6)*spak1k2
      abb4(9)=abb4(10)*abb4(9)
      abb4(14)=-16.0_ki*abb4(9)
      abb4(7)=-16.0_ki*abb4(5)**2*spbk5k1*abb4(7)*abb4(10)*abb4(8)
      abb4(8)=8.0_ki*abb4(9)
      R2d4=abb4(12)
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd4h4
