module     p0_gg_hhg_abbrevd6h0
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh0
   implicit none
   private
   complex(ki), dimension(21), public :: abb6
   complex(ki), public :: R2d6
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
      abb6(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb6(2)=sqrt(mT**2)
      abb6(3)=sqrt2**(-1)
      abb6(4)=es51**(-1)
      abb6(5)=spbk2k1**(-1)
      abb6(6)=spak2k5**(-1)
      abb6(7)=spbk5k2**(-1)
      abb6(8)=c2-c1
      abb6(9)=abb6(3)*abb6(5)*abb6(6)*gHT*gHHH*i_
      abb6(10)=abb6(8)*abb6(9)
      abb6(11)=abb6(10)*spak1k2**2
      abb6(12)=abb6(1)*abb6(2)
      abb6(13)=abb6(12)*abb6(4)
      abb6(14)=abb6(11)*abb6(13)*spbk5k1
      abb6(15)=-2.0_ki*abb6(14)
      abb6(16)=-abb6(2)**2
      abb6(16)=es12+abb6(16)
      abb6(12)=4.0_ki*abb6(12)
      abb6(17)=abb6(4)*spbk5k1
      abb6(11)=abb6(12)*abb6(17)*abb6(11)*abb6(16)
      abb6(16)=8.0_ki*abb6(14)
      abb6(14)=12.0_ki*abb6(14)
      abb6(12)=abb6(12)*spak1k2
      abb6(18)=abb6(10)*abb6(12)
      abb6(10)=abb6(10)*abb6(13)*spak1k2
      abb6(19)=16.0_ki*abb6(10)
      abb6(13)=abb6(13)*abb6(9)
      abb6(13)=16.0_ki*abb6(13)
      abb6(20)=-abb6(13)*spak1k5*abb6(8)
      abb6(8)=-abb6(7)*abb6(8)
      abb6(21)=es12-es34
      abb6(17)=-abb6(17)*abb6(21)*abb6(8)
      abb6(8)=abb6(8)*spbk5k1
      abb6(17)=-abb6(8)+abb6(17)
      abb6(9)=abb6(17)*abb6(9)*abb6(12)
      abb6(10)=8.0_ki*abb6(10)
      abb6(8)=spak1k2*abb6(13)*abb6(8)
      R2d6=abb6(15)
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd6h0
