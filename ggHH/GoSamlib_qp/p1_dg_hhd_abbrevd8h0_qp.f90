module p1_dg_hhd_abbrevd8h0_qp
   use p1_dg_hhd_config_qp, only: ki
   use p1_dg_hhd_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(40), public :: abb8
   complex(ki), public :: R2d8
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dg_hhd_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_color_qp, only: TR
      use p1_dg_hhd_globalsl1_qp, only: epspow
      implicit none
      abb8(1)=sqrt(mT**2)
      abb8(2)=sqrt2**(-1)
      abb8(3)=es51**(-1)
      abb8(4)=spbk2k1**(-1)
      abb8(5)=spak2l3**(-1)
      abb8(6)=spbl3k2**(-1)
      abb8(7)=spak2l4**(-1)
      abb8(8)=spbl4k2**(-1)
      abb8(9)=spbl3k1*spak2l3
      abb8(10)=abb8(7)*abb8(8)
      abb8(11)=abb8(9)*abb8(10)
      abb8(12)=abb8(5)*abb8(6)
      abb8(13)=abb8(12)*spak2l4
      abb8(14)=abb8(13)*spbl4k1
      abb8(15)=abb8(14)-abb8(11)
      abb8(16)=mH**2
      abb8(17)=abb8(15)*abb8(16)
      abb8(18)=spbl4k1*spak2l4
      abb8(19)=-abb8(17)-2.0_ki*abb8(18)-abb8(9)
      abb8(20)=abb8(1)**2
      abb8(19)=spak2k5*abb8(20)*abb8(19)
      abb8(21)=spbl4k1*spal3l4
      abb8(22)=abb8(4)*spbl3k1
      abb8(23)=abb8(22)*spak2k5
      abb8(24)=abb8(21)*abb8(23)
      abb8(25)=-abb8(20)*abb8(24)
      abb8(19)=abb8(19)+abb8(25)
      abb8(25)=abb8(2)*abb8(3)*c1*TR*i_*gHT**2
      abb8(26)=4.0_ki*abb8(25)
      abb8(19)=abb8(19)*abb8(26)
      abb8(27)=abb8(26)*spak2k5
      abb8(28)=-abb8(9)*abb8(27)
      abb8(18)=abb8(18)*abb8(27)
      abb8(27)=abb8(16)*spak2k5
      abb8(15)=abb8(15)*abb8(27)
      abb8(15)=2.0_ki*abb8(15)+abb8(24)
      abb8(15)=abb8(15)*abb8(26)
      abb8(9)=-abb8(9)+abb8(17)
      abb8(9)=spak2k5*abb8(9)
      abb8(9)=abb8(9)+abb8(24)
      abb8(9)=abb8(9)*abb8(26)
      abb8(17)=2.0_ki*abb8(25)
      abb8(24)=spak2l3*abb8(17)*abb8(22)
      abb8(26)=-abb8(20)*abb8(24)
      abb8(29)=abb8(23)*abb8(20)
      abb8(30)=-spak2k5*spak2l4*spbl4l3
      abb8(29)=abb8(30)-abb8(29)
      abb8(29)=abb8(29)*abb8(17)
      abb8(23)=abb8(17)*abb8(23)
      abb8(30)=-4.0_ki*abb8(10)-3.0_ki*abb8(12)
      abb8(30)=abb8(20)*abb8(30)
      abb8(31)=-spbl4k2*abb8(13)
      abb8(30)=-1.0_ki+abb8(31)+abb8(30)
      abb8(30)=abb8(30)*abb8(16)
      abb8(30)=-3.0_ki*abb8(20)+abb8(30)
      abb8(31)=2.0_ki*spak2k5
      abb8(30)=abb8(30)*abb8(31)
      abb8(32)=spbl4k1*spal4k5
      abb8(33)=spbl3k1*spal3k5
      abb8(34)=-8.0_ki*abb8(32)-5.0_ki*abb8(33)
      abb8(34)=abb8(20)*abb8(34)
      abb8(35)=-spal3l4*spbl4k2*spak2k5*spbl3k1
      abb8(34)=abb8(35)+abb8(34)
      abb8(34)=abb8(4)*abb8(34)
      abb8(30)=abb8(30)+abb8(34)
      abb8(30)=abb8(30)*abb8(17)
      abb8(34)=abb8(12)*abb8(16)
      abb8(34)=abb8(34)+1.0_ki
      abb8(35)=-spak2k5*abb8(34)
      abb8(36)=abb8(22)*spal3k5
      abb8(35)=abb8(35)-abb8(36)
      abb8(37)=8.0_ki*abb8(25)
      abb8(35)=abb8(35)*abb8(37)
      abb8(38)=abb8(10)*abb8(16)
      abb8(39)=abb8(38)*spak2k5
      abb8(40)=abb8(4)*abb8(32)
      abb8(40)=abb8(39)+abb8(40)
      abb8(40)=abb8(40)*abb8(37)
      abb8(32)=abb8(12)*abb8(32)
      abb8(10)=-abb8(10)*abb8(33)
      abb8(10)=abb8(32)+abb8(10)
      abb8(10)=abb8(4)*abb8(10)*abb8(16)
      abb8(10)=-abb8(39)+abb8(10)
      abb8(10)=abb8(10)*abb8(37)
      abb8(31)=-abb8(34)*abb8(31)
      abb8(31)=abb8(31)-3.0_ki*abb8(36)
      abb8(31)=abb8(31)*abb8(17)
      abb8(32)=2.0_ki*abb8(8)
      abb8(13)=-abb8(13)-abb8(32)
      abb8(13)=abb8(13)*abb8(16)
      abb8(22)=-spal3l4*abb8(22)
      abb8(13)=abb8(13)+abb8(22)
      abb8(13)=abb8(13)*abb8(17)
      abb8(22)=-spak2l3*abb8(38)
      abb8(21)=abb8(4)*abb8(21)
      abb8(21)=abb8(22)+abb8(21)
      abb8(17)=abb8(21)*abb8(17)
      abb8(21)=spbl4k1*abb8(32)
      abb8(11)=abb8(11)+abb8(14)+abb8(21)
      abb8(14)=2.0_ki*abb8(4)
      abb8(14)=abb8(14)*abb8(25)
      abb8(16)=abb8(14)*abb8(16)
      abb8(11)=abb8(11)*abb8(16)
      abb8(21)=abb8(25)*abb8(4)
      abb8(20)=24.0_ki*abb8(20)*abb8(21)
      abb8(22)=16.0_ki*abb8(21)
      abb8(25)=abb8(38)*abb8(22)
      abb8(21)=8.0_ki*abb8(21)
      abb8(12)=abb8(12)*spbl4k2
      abb8(32)=abb8(12)+2.0_ki*abb8(7)
      abb8(27)=abb8(32)*abb8(27)
      abb8(32)=spal3k5*spbl4l3
      abb8(27)=abb8(32)+abb8(27)
      abb8(27)=abb8(27)*abb8(14)
      abb8(32)=spbl3k2*abb8(39)
      abb8(33)=-spal4k5*spbl4l3
      abb8(32)=abb8(33)+abb8(32)
      abb8(14)=abb8(32)*abb8(14)
      abb8(12)=-spal4k5*abb8(12)
      abb8(32)=-abb8(8)*spal3k5*spbl3k2
      abb8(32)=-2.0_ki*spal4k5+abb8(32)
      abb8(32)=abb8(7)*abb8(32)
      abb8(12)=abb8(12)+abb8(32)
      abb8(12)=abb8(12)*abb8(16)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd8h0_qp
