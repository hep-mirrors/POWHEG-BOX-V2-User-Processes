module     p1_dg_hhd_abbrevd4h1_qp
   use p1_dg_hhd_config, only: ki => ki_qp
   use p1_dg_hhd_kinematics_qp, only: epstensor
   use p1_dg_hhd_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(43), public :: abb4
   complex(ki), public :: R2d4
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dg_hhd_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_color_qp, only: TR
      use p1_dg_hhd_globalsl1_qp, only: epspow
      implicit none
      abb4(1)=sqrt2**(-1)
      abb4(2)=es51**(-1)
      abb4(3)=spak1k2**(-1)
      abb4(4)=sqrt(mT**2)
      abb4(5)=spak2l3**(-1)
      abb4(6)=spbl3k2**(-1)
      abb4(7)=spak2l4**(-1)
      abb4(8)=spbl4k2**(-1)
      abb4(9)=abb4(1)*abb4(2)*c1*TR*i_*gHT**2
      abb4(10)=abb4(9)*abb4(3)
      abb4(11)=spbk2k1*abb4(10)
      abb4(12)=20.0_ki/3.0_ki*abb4(11)*spak1k5
      abb4(13)=spal3k5*spbl3k2
      abb4(14)=abb4(13)*es12
      abb4(15)=abb4(7)*abb4(8)
      abb4(16)=abb4(15)*abb4(14)
      abb4(17)=spal4k5*spbl4k2
      abb4(18)=abb4(5)*abb4(6)
      abb4(19)=abb4(18)*es12
      abb4(20)=abb4(17)*abb4(19)
      abb4(16)=abb4(16)+abb4(20)
      abb4(20)=mH**2
      abb4(16)=abb4(16)*abb4(20)
      abb4(21)=abb4(4)**2
      abb4(22)=abb4(21)*spbk2k1
      abb4(23)=abb4(22)*spak1k5
      abb4(14)=abb4(23)+abb4(14)
      abb4(24)=spbl4k1*spak1l4
      abb4(25)=abb4(13)*abb4(24)
      abb4(26)=spbl3k1*spak1l3
      abb4(27)=abb4(26)-es12
      abb4(27)=abb4(27)*abb4(17)
      abb4(14)=abb4(16)+abb4(27)+abb4(25)-2.0_ki*abb4(14)
      abb4(16)=4.0_ki*abb4(3)
      abb4(16)=abb4(16)*abb4(9)
      abb4(25)=abb4(16)*abb4(21)
      abb4(14)=abb4(14)*abb4(25)
      abb4(27)=abb4(18)*abb4(20)
      abb4(28)=abb4(17)*es12
      abb4(29)=abb4(27)*abb4(28)
      abb4(30)=abb4(15)-abb4(18)
      abb4(30)=abb4(30)*abb4(20)
      abb4(30)=abb4(30)-1.0_ki
      abb4(30)=abb4(30)*spak1k5
      abb4(31)=-abb4(30)*abb4(22)
      abb4(29)=abb4(29)+abb4(31)
      abb4(31)=8.0_ki*abb4(10)
      abb4(29)=abb4(29)*abb4(31)
      abb4(10)=abb4(10)*abb4(21)
      abb4(13)=abb4(13)-abb4(17)
      abb4(13)=16.0_ki*abb4(13)*abb4(10)
      abb4(23)=-abb4(28)+4.0_ki*abb4(23)
      abb4(23)=abb4(23)*abb4(16)
      abb4(28)=8.0_ki*abb4(11)
      abb4(30)=-abb4(30)*abb4(28)
      abb4(32)=-spak1k5*abb4(28)
      abb4(33)=es12*abb4(15)
      abb4(19)=abb4(33)-abb4(19)
      abb4(19)=abb4(19)*abb4(20)
      abb4(19)=abb4(19)+abb4(24)-abb4(26)
      abb4(19)=-3.0_ki*es12+2.0_ki*abb4(19)
      abb4(19)=abb4(19)*abb4(25)
      abb4(24)=-abb4(31)*abb4(27)*es12
      abb4(25)=es12*abb4(16)
      abb4(26)=abb4(16)*spbl4k1
      abb4(31)=abb4(26)*spak1k5
      abb4(33)=-abb4(21)*abb4(31)
      abb4(21)=abb4(3)*spak1k5*abb4(21)
      abb4(17)=abb4(17)+abb4(21)
      abb4(9)=4.0_ki*abb4(9)
      abb4(9)=abb4(9)*spbl3k1
      abb4(17)=abb4(17)*abb4(9)
      abb4(21)=abb4(16)*spbl3k1
      abb4(34)=spak1k5*abb4(21)
      abb4(22)=abb4(22)*abb4(16)
      abb4(35)=-spal4k5*abb4(22)
      abb4(36)=spal4k5*abb4(27)*abb4(28)
      abb4(16)=abb4(16)*spbk2k1
      abb4(37)=-spal4k5*abb4(16)
      abb4(38)=spal4k5*abb4(21)
      abb4(39)=spal3k5*abb4(22)
      abb4(40)=abb4(20)*abb4(15)
      abb4(40)=-1.0_ki+abb4(40)
      abb4(28)=abb4(28)*spal3k5*abb4(40)
      abb4(40)=spal3k5*abb4(16)
      abb4(41)=spal3k5*abb4(26)
      abb4(15)=abb4(15)*spak2k5
      abb4(18)=abb4(18)*spak2k5
      abb4(42)=abb4(15)-abb4(18)
      abb4(42)=abb4(42)*abb4(20)
      abb4(42)=abb4(42)-spak2k5
      abb4(22)=-abb4(42)*abb4(22)
      abb4(43)=abb4(27)*abb4(15)
      abb4(18)=-abb4(18)+abb4(43)
      abb4(11)=16.0_ki*abb4(18)*abb4(20)*abb4(11)
      abb4(16)=-abb4(42)*abb4(16)
      abb4(10)=32.0_ki*abb4(10)
      abb4(18)=spak2k5*abb4(27)*abb4(26)
      abb4(15)=abb4(20)*abb4(15)
      abb4(15)=-spak2k5+abb4(15)
      abb4(15)=abb4(15)*abb4(21)
      R2d4=abb4(12)
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd4h1_qp
