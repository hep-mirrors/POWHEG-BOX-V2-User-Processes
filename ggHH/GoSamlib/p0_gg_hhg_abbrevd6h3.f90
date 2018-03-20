module     p0_gg_hhg_abbrevd6h3
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh3
   implicit none
   private
   complex(ki), dimension(17), public :: abb6
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
      abb6(5)=spak1k2**(-1)
      abb6(6)=spak2k5**(-1)
      abb6(7)=abb6(1)*abb6(2)*abb6(3)*gHT*gHHH*i_
      abb6(8)=abb6(5)*spbk5k1*abb6(6)
      abb6(9)=abb6(7)*abb6(8)
      abb6(10)=4.0_ki*abb6(9)
      abb6(11)=c2-c1
      abb6(12)=abb6(11)*abb6(4)
      abb6(13)=-es34*abb6(12)
      abb6(13)=abb6(11)+abb6(13)
      abb6(14)=abb6(13)*abb6(10)
      abb6(15)=-es51+2.0_ki*es34
      abb6(15)=-abb6(15)*abb6(11)
      abb6(16)=abb6(13)*abb6(2)**2
      abb6(17)=es34**2*abb6(12)
      abb6(15)=2.0_ki*abb6(16)+abb6(17)+abb6(15)
      abb6(10)=abb6(15)*abb6(10)
      abb6(9)=8.0_ki*abb6(9)
      abb6(11)=abb6(11)*abb6(9)
      abb6(9)=-abb6(13)*abb6(9)
      abb6(7)=abb6(7)*abb6(12)
      abb6(12)=abb6(7)*spbk5k1**2
      abb6(12)=4.0_ki*abb6(12)
      abb6(13)=abb6(6)*abb6(12)
      abb6(7)=16.0_ki*abb6(7)
      abb6(8)=-abb6(8)*abb6(7)
      abb6(7)=-spbk5k1*abb6(6)**2*abb6(7)
      abb6(12)=abb6(5)*abb6(12)
      R2d6=abb6(14)
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd6h3
