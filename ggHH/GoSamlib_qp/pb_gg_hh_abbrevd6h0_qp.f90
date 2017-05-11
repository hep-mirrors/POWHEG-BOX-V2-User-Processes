module pb_gg_hh_abbrevd6h0_qp
   use pb_gg_hh_config_qp, only: ki
   use pb_gg_hh_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(33), public :: abb6
   complex(ki), public :: R2d6
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use pb_gg_hh_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use pb_gg_hh_kinematics_qp
      use pb_gg_hh_model_qp
      use pb_gg_hh_color_qp, only: TR
      use pb_gg_hh_globalsl1_qp, only: epspow
      implicit none
      abb6(1)=spbk2k1**(-1)
      abb6(2)=sqrt(mT**2)
      abb6(3)=spak2l3**(-1)
      abb6(4)=spbl3k2**(-1)
      abb6(5)=abb6(1)*gHT
      abb6(5)=abb6(5)**2
      abb6(6)=c1*i_
      abb6(7)=abb6(5)*abb6(6)
      abb6(8)=es12*abb6(7)
      abb6(9)=-8.0_ki/3.0_ki*abb6(8)
      abb6(10)=spbl3k1*spak1l3
      abb6(11)=spak2l3*spbl3k2
      abb6(12)=abb6(10)-abb6(11)
      abb6(13)=abb6(2)**2
      abb6(14)=2.0_ki*abb6(13)
      abb6(15)=mH**2*abb6(3)*abb6(4)
      abb6(16)=2.0_ki+abb6(15)
      abb6(16)=es12*abb6(16)
      abb6(16)=abb6(16)-abb6(14)+abb6(12)
      abb6(17)=2.0_ki*abb6(6)
      abb6(18)=abb6(17)*abb6(5)
      abb6(19)=abb6(18)*es12
      abb6(16)=abb6(19)*abb6(13)*abb6(16)
      abb6(20)=-abb6(14)+es12
      abb6(20)=abb6(20)*abb6(19)
      abb6(21)=abb6(13)*abb6(10)
      abb6(22)=abb6(15)+1.0_ki
      abb6(23)=-abb6(22)*abb6(14)
      abb6(23)=-abb6(10)+abb6(23)
      abb6(23)=es12*abb6(23)
      abb6(21)=abb6(21)+abb6(23)
      abb6(21)=abb6(21)*abb6(18)
      abb6(23)=abb6(13)*abb6(11)
      abb6(24)=-abb6(11)+4.0_ki*abb6(13)
      abb6(24)=es12*abb6(24)
      abb6(23)=abb6(23)+abb6(24)
      abb6(23)=abb6(23)*abb6(18)
      abb6(24)=4.0_ki*abb6(6)
      abb6(5)=abb6(24)*abb6(5)
      abb6(24)=2.0_ki*es12
      abb6(25)=abb6(10)-abb6(24)
      abb6(25)=abb6(25)*abb6(5)
      abb6(26)=abb6(11)*abb6(5)
      abb6(27)=-es12*abb6(15)
      abb6(27)=abb6(27)-abb6(12)
      abb6(19)=abb6(27)*abb6(19)
      abb6(27)=4.0_ki*abb6(8)
      abb6(22)=abb6(22)*abb6(24)
      abb6(10)=-abb6(10)+abb6(22)
      abb6(10)=abb6(10)*abb6(18)
      abb6(11)=-abb6(11)-4.0_ki*es12
      abb6(11)=abb6(11)*abb6(18)
      abb6(22)=abb6(7)*spak1k2
      abb6(28)=abb6(22)*spbl3k2
      abb6(29)=abb6(13)*abb6(28)
      abb6(30)=abb6(18)*spbl3k2*spak1k2
      abb6(31)=abb6(1)*gHT**2
      abb6(6)=abb6(6)*abb6(31)
      abb6(32)=abb6(6)*spak1l3
      abb6(33)=-abb6(13)*abb6(32)
      abb6(17)=-spak1l3*abb6(17)*abb6(31)
      abb6(8)=spbl3k2*spak1l3*abb6(8)
      abb6(14)=abb6(14)+es12
      abb6(31)=spak2l3*spbl3k1
      abb6(14)=abb6(7)*abb6(31)*abb6(14)
      abb6(18)=abb6(18)*abb6(31)
      abb6(22)=-spbl3k1*abb6(22)
      abb6(6)=-spak2l3*abb6(6)
      abb6(24)=-abb6(24)*abb6(15)
      abb6(12)=abb6(24)+12.0_ki*abb6(13)-abb6(12)
      abb6(12)=abb6(12)*abb6(7)
      abb6(7)=8.0_ki*abb6(7)
      abb6(13)=abb6(15)*abb6(7)
      R2d6=abb6(9)
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module pb_gg_hh_abbrevd6h0_qp
