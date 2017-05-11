module     pb_gg_hh_abbrevd10h1
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_globalsh1
   implicit none
   private
   complex(ki), dimension(23), public :: abb10
   complex(ki), public :: R2d10
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
      abb10(1)=sqrt(mT**2)
      abb10(2)=spak1k2**(-1)
      abb10(3)=spbk2k1**(-1)
      abb10(4)=spak2l3**(-1)
      abb10(5)=spbl3k2**(-1)
      abb10(6)=spak2l4**(-1)
      abb10(7)=spbl4k2**(-1)
      abb10(8)=gHT**2*i_*c1
      abb10(9)=abb10(3)*abb10(2)
      abb10(10)=abb10(8)*abb10(9)
      abb10(11)=spbl3k1*abb10(10)
      abb10(12)=abb10(11)*spak2l3
      abb10(13)=spbl4k1*abb10(12)
      abb10(14)=4.0_ki*spak2l4
      abb10(14)=abb10(14)*abb10(13)
      abb10(15)=abb10(1)**2
      abb10(16)=-abb10(15)*abb10(14)
      abb10(17)=abb10(11)*spak1l3
      abb10(18)=abb10(17)*spak2l4
      abb10(19)=spbl3k1*abb10(3)
      abb10(20)=spal3l4*abb10(19)*abb10(8)
      abb10(18)=abb10(20)+abb10(18)
      abb10(18)=spbl4k1*abb10(18)
      abb10(20)=abb10(8)*spak2l4
      abb10(9)=abb10(9)*spbl4k1
      abb10(21)=abb10(20)*abb10(9)
      abb10(12)=abb10(21)-abb10(12)
      abb10(15)=8.0_ki*abb10(15)
      abb10(12)=abb10(12)*abb10(15)
      abb10(13)=spak1l4*abb10(13)
      abb10(22)=mH**2
      abb10(22)=2.0_ki*abb10(22)
      abb10(23)=abb10(5)*abb10(22)*abb10(4)
      abb10(21)=es12*abb10(21)*abb10(23)
      abb10(12)=abb10(21)+abb10(13)+abb10(12)+abb10(18)
      abb10(13)=4.0_ki*abb10(11)
      abb10(13)=-spak2l3*abb10(13)
      abb10(18)=abb10(8)*spak2l3
      abb10(21)=2.0_ki*abb10(18)
      abb10(9)=-abb10(9)*abb10(21)
      abb10(11)=-2.0_ki*abb10(11)*spak2l4
      abb10(8)=2.0_ki*abb10(8)
      abb10(8)=-abb10(19)*abb10(8)
      abb10(19)=-abb10(2)*abb10(20)*abb10(23)
      abb10(18)=-abb10(7)*abb10(6)*abb10(18)*abb10(22)*abb10(2)
      abb10(10)=abb10(15)*abb10(10)
      abb10(10)=abb10(10)+abb10(17)
      abb10(10)=2.0_ki*abb10(10)
      R2d10=0.0_ki
      rat2 = rat2 + R2d10
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='10' value='", &
          & R2d10, "'/>"
      end if
   end subroutine
end module pb_gg_hh_abbrevd10h1
