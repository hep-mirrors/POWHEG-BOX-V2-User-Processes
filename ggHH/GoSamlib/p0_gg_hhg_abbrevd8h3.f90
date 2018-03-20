module     p0_gg_hhg_abbrevd8h3
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh3
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
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb8(1)=1.0_ki/(es34-es51-es12)
      abb8(2)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb8(3)=sqrt(mT**2)
      abb8(4)=sqrt2**(-1)
      abb8(5)=spak1k2**(-1)
      abb8(6)=spak2k5**(-1)
      abb8(7)=c1-c2
      abb8(8)=es51+es12-es34
      abb8(7)=gHT*abb8(4)*abb8(5)*gHHH*i_*abb8(8)*abb8(7)
      abb8(8)=abb8(3)*abb8(1)*abb8(2)
      abb8(9)=abb8(8)*abb8(7)
      abb8(10)=abb8(6)*spbk5k1
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
end module p0_gg_hhg_abbrevd8h3
