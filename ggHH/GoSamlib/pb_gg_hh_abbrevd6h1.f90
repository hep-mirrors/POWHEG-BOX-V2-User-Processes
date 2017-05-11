module     pb_gg_hh_abbrevd6h1
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_globalsh1
   implicit none
   private
   complex(ki), dimension(16), public :: abb6
   complex(ki), public :: R2d6
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
      abb6(1)=spak1k2**(-1)
      abb6(2)=spbk2k1**(-1)
      abb6(3)=sqrt(mT**2)
      abb6(4)=spak2l3**(-1)
      abb6(5)=spbl3k2**(-1)
      abb6(6)=abb6(1)*abb6(2)
      abb6(7)=abb6(6)*spak2l3
      abb6(8)=2.0_ki*abb6(7)
      abb6(9)=gHT**2*c1*i_
      abb6(10)=abb6(9)*spbl3k1
      abb6(8)=abb6(8)*abb6(10)
      abb6(11)=abb6(3)**2
      abb6(12)=es12+2.0_ki*abb6(11)
      abb6(12)=abb6(12)*abb6(8)
      abb6(7)=-4.0_ki*abb6(7)*abb6(10)
      abb6(10)=-abb6(2)*abb6(10)
      abb6(13)=-abb6(1)*spak2l3*abb6(9)
      abb6(14)=mH**2*abb6(4)*abb6(5)
      abb6(15)=-es12*abb6(14)
      abb6(11)=abb6(15)+6.0_ki*abb6(11)
      abb6(15)=-spbl3k1*spak1l3
      abb6(16)=spak2l3*spbl3k2
      abb6(11)=abb6(16)+2.0_ki*abb6(11)+abb6(15)
      abb6(6)=abb6(9)*abb6(6)
      abb6(9)=abb6(11)*abb6(6)
      abb6(11)=8.0_ki*abb6(6)
      abb6(14)=abb6(11)*abb6(14)
      abb6(6)=4.0_ki*abb6(6)
      R2d6=0.0_ki
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module pb_gg_hh_abbrevd6h1
