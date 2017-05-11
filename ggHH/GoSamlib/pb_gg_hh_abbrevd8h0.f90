module     pb_gg_hh_abbrevd8h0
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_globalsh0
   implicit none
   private
   complex(ki), dimension(33), public :: abb8
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
      abb8(1)=spbk2k1**(-1)
      abb8(2)=sqrt(mT**2)
      abb8(3)=spak2l4**(-1)
      abb8(4)=spbl4k2**(-1)
      abb8(5)=abb8(1)*gHT
      abb8(5)=abb8(5)**2
      abb8(6)=c1*i_
      abb8(7)=abb8(5)*abb8(6)
      abb8(8)=es12*abb8(7)
      abb8(9)=-8.0_ki/3.0_ki*abb8(8)
      abb8(10)=spbl4k1*spak1l4
      abb8(11)=spak2l4*spbl4k2
      abb8(12)=abb8(10)-abb8(11)
      abb8(13)=abb8(2)**2
      abb8(14)=2.0_ki*abb8(13)
      abb8(15)=mH**2*abb8(3)*abb8(4)
      abb8(16)=2.0_ki+abb8(15)
      abb8(16)=es12*abb8(16)
      abb8(16)=abb8(16)-abb8(14)+abb8(12)
      abb8(17)=2.0_ki*abb8(6)
      abb8(18)=abb8(17)*abb8(5)
      abb8(19)=abb8(18)*es12
      abb8(16)=abb8(19)*abb8(13)*abb8(16)
      abb8(20)=-abb8(14)+es12
      abb8(20)=abb8(20)*abb8(19)
      abb8(21)=abb8(13)*abb8(10)
      abb8(22)=abb8(15)+1.0_ki
      abb8(23)=-abb8(22)*abb8(14)
      abb8(23)=-abb8(10)+abb8(23)
      abb8(23)=es12*abb8(23)
      abb8(21)=abb8(21)+abb8(23)
      abb8(21)=abb8(21)*abb8(18)
      abb8(23)=abb8(13)*abb8(11)
      abb8(24)=-abb8(11)+4.0_ki*abb8(13)
      abb8(24)=es12*abb8(24)
      abb8(23)=abb8(23)+abb8(24)
      abb8(23)=abb8(23)*abb8(18)
      abb8(24)=4.0_ki*abb8(6)
      abb8(5)=abb8(24)*abb8(5)
      abb8(24)=2.0_ki*es12
      abb8(25)=abb8(10)-abb8(24)
      abb8(25)=abb8(25)*abb8(5)
      abb8(26)=abb8(11)*abb8(5)
      abb8(27)=-es12*abb8(15)
      abb8(27)=abb8(27)-abb8(12)
      abb8(19)=abb8(27)*abb8(19)
      abb8(27)=4.0_ki*abb8(8)
      abb8(22)=abb8(22)*abb8(24)
      abb8(10)=-abb8(10)+abb8(22)
      abb8(10)=abb8(10)*abb8(18)
      abb8(11)=-abb8(11)-4.0_ki*es12
      abb8(11)=abb8(11)*abb8(18)
      abb8(22)=abb8(7)*spak1k2
      abb8(28)=abb8(22)*spbl4k2
      abb8(29)=abb8(13)*abb8(28)
      abb8(30)=abb8(18)*spbl4k2*spak1k2
      abb8(31)=abb8(1)*gHT**2
      abb8(6)=abb8(6)*abb8(31)
      abb8(32)=abb8(6)*spak1l4
      abb8(33)=-abb8(13)*abb8(32)
      abb8(17)=-spak1l4*abb8(17)*abb8(31)
      abb8(8)=spbl4k2*spak1l4*abb8(8)
      abb8(14)=abb8(14)+es12
      abb8(31)=spak2l4*spbl4k1
      abb8(14)=abb8(7)*abb8(31)*abb8(14)
      abb8(18)=abb8(18)*abb8(31)
      abb8(22)=-spbl4k1*abb8(22)
      abb8(6)=-spak2l4*abb8(6)
      abb8(24)=-abb8(24)*abb8(15)
      abb8(12)=abb8(24)+12.0_ki*abb8(13)-abb8(12)
      abb8(12)=abb8(12)*abb8(7)
      abb8(7)=8.0_ki*abb8(7)
      abb8(13)=abb8(15)*abb8(7)
      R2d8=abb8(9)
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module pb_gg_hh_abbrevd8h0
