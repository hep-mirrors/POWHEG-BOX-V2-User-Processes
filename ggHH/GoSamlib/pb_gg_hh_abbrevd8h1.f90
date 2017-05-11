module     pb_gg_hh_abbrevd8h1
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_globalsh1
   implicit none
   private
   complex(ki), dimension(16), public :: abb8
   complex(ki), public :: R2d8
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use pb_gg_hh_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use pb_gg_hh_kinematics
      use pb_gg_hh_model
      use pb_gg_hh_color, only: TR
      use pb_gg_hh_globalsl1, only: epspow
      implicit none
      abb8(1)=spak1k2**(-1)
      abb8(2)=spbk2k1**(-1)
      abb8(3)=sqrt(mT**2)
      abb8(4)=spak2l4**(-1)
      abb8(5)=spbl4k2**(-1)
      abb8(6)=abb8(1)*abb8(2)
      abb8(7)=abb8(6)*spak2l4
      abb8(8)=2.0_ki*abb8(7)
      abb8(9)=gHT**2*c1*i_
      abb8(10)=abb8(9)*spbl4k1
      abb8(8)=abb8(8)*abb8(10)
      abb8(11)=abb8(3)**2
      abb8(12)=es12+2.0_ki*abb8(11)
      abb8(12)=abb8(12)*abb8(8)
      abb8(7)=-4.0_ki*abb8(7)*abb8(10)
      abb8(10)=-abb8(2)*abb8(10)
      abb8(13)=-abb8(1)*spak2l4*abb8(9)
      abb8(14)=mH**2*abb8(4)*abb8(5)
      abb8(15)=-es12*abb8(14)
      abb8(11)=abb8(15)+6.0_ki*abb8(11)
      abb8(15)=-spbl4k1*spak1l4
      abb8(16)=spak2l4*spbl4k2
      abb8(11)=abb8(16)+2.0_ki*abb8(11)+abb8(15)
      abb8(6)=abb8(9)*abb8(6)
      abb8(9)=abb8(11)*abb8(6)
      abb8(11)=8.0_ki*abb8(6)
      abb8(14)=abb8(11)*abb8(14)
      abb8(6)=4.0_ki*abb8(6)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module pb_gg_hh_abbrevd8h1
