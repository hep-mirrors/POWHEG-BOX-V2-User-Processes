module     p0_gg_hhg_abbrevd45h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(21), public :: abb45
   complex(ki), public :: R2d45
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
      abb45(1)=sqrt(mT**2)
      abb45(2)=sqrt2**(-1)
      abb45(3)=spak1k2**(-1)
      abb45(4)=spbk5k2**(-1)
      abb45(5)=spak2k5**(-1)
      abb45(6)=spak2l3**(-1)
      abb45(7)=spbl3k2**(-1)
      abb45(8)=abb45(1)**2
      abb45(9)=abb45(8)*spak2l3
      abb45(10)=abb45(9)*spbl3k1
      abb45(11)=c1-c2
      abb45(11)=abb45(11)*gHT**2*i_*abb45(2)
      abb45(12)=abb45(11)*abb45(5)
      abb45(13)=abb45(4)*abb45(12)
      abb45(14)=-abb45(13)*abb45(10)
      abb45(15)=abb45(3)*abb45(4)
      abb45(16)=abb45(11)*abb45(15)
      abb45(9)=abb45(9)*spbk5l3
      abb45(17)=abb45(16)*abb45(9)
      abb45(14)=abb45(17)+abb45(14)
      abb45(14)=spbk5k1*abb45(14)
      abb45(11)=abb45(8)*spbk5k1**2*abb45(11)*abb45(4)
      abb45(11)=2.0_ki*abb45(11)+abb45(14)
      abb45(11)=2.0_ki*abb45(11)
      abb45(14)=abb45(16)*spbk5k1
      abb45(17)=-abb45(8)*abb45(14)
      abb45(15)=-abb45(15)*abb45(12)
      abb45(10)=abb45(15)*abb45(10)
      abb45(10)=abb45(17)+abb45(10)
      abb45(10)=2.0_ki*abb45(10)
      abb45(14)=-4.0_ki*abb45(14)
      abb45(17)=2.0_ki*spbk5k1
      abb45(18)=abb45(16)*abb45(17)
      abb45(16)=2.0_ki*spbk5l3*abb45(16)
      abb45(19)=2.0_ki*abb45(15)
      abb45(9)=-abb45(15)*abb45(9)
      abb45(12)=abb45(12)*spak2l3
      abb45(20)=spbl3k1*abb45(12)
      abb45(9)=abb45(20)+abb45(9)
      abb45(9)=2.0_ki*abb45(9)
      abb45(17)=abb45(13)*abb45(17)
      abb45(13)=2.0_ki*spbl3k1*abb45(13)
      abb45(20)=mH**2*abb45(15)*abb45(7)*abb45(6)
      abb45(21)=-2.0_ki*es12-es51+es34
      abb45(21)=abb45(21)*abb45(20)
      abb45(8)=abb45(15)*abb45(8)
      abb45(8)=6.0_ki*abb45(8)+abb45(21)
      abb45(8)=2.0_ki*abb45(8)
      abb45(20)=8.0_ki*abb45(20)
      abb45(15)=4.0_ki*abb45(15)
      abb45(12)=-2.0_ki*abb45(3)*abb45(12)
      R2d45=0.0_ki
      rat2 = rat2 + R2d45
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='45' value='", &
          & R2d45, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd45h1
