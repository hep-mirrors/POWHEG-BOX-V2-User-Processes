module     p0_gg_hhg_abbrevd13h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(37), public :: abb13
   complex(ki), public :: R2d13
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb13(1)=sqrt(mT**2)
      abb13(2)=sqrt2**(-1)
      abb13(3)=es12**(-1)
      abb13(4)=spbk5k2**(-1)
      abb13(5)=spak2k5**(-1)
      abb13(6)=spbl3k2**(-1)
      abb13(7)=spak2l3**(-1)
      abb13(8)=spak1k2**(-1)
      abb13(9)=spak2l4**(-1)
      abb13(10)=spbl4k2**(-1)
      abb13(11)=c1-c2
      abb13(12)=spbk5k1**2
      abb13(13)=abb13(3)*abb13(4)
      abb13(14)=abb13(11)*abb13(12)*abb13(13)
      abb13(15)=gHT**2*i_*abb13(2)
      abb13(16)=abb13(15)*abb13(14)
      abb13(17)=abb13(16)*spak2l3
      abb13(13)=abb13(15)*abb13(13)*abb13(5)
      abb13(18)=abb13(11)*abb13(13)
      abb13(19)=-spbk5k1*abb13(18)
      abb13(20)=abb13(19)*spak2l3
      abb13(21)=-spak2l4*abb13(20)
      abb13(22)=abb13(21)*spbl4k1
      abb13(23)=spak2l3**2
      abb13(24)=-abb13(23)*abb13(19)
      abb13(25)=2.0_ki*spbl3k1
      abb13(26)=abb13(24)*abb13(25)
      abb13(17)=-abb13(17)+abb13(22)-abb13(26)
      abb13(22)=abb13(1)**2
      abb13(26)=abb13(22)*spbk5l3
      abb13(27)=-abb13(26)*abb13(17)
      abb13(28)=abb13(15)*spak2l4
      abb13(14)=-abb13(28)*abb13(14)
      abb13(21)=abb13(21)*spbl3k1
      abb13(14)=abb13(14)-abb13(21)
      abb13(21)=abb13(14)*spbk5l4
      abb13(13)=spak2l4*abb13(12)*abb13(13)
      abb13(29)=abb13(11)*spak2l3
      abb13(30)=-spbl4l3*abb13(13)*abb13(29)
      abb13(30)=abb13(30)+abb13(21)
      abb13(30)=abb13(22)*abb13(30)
      abb13(27)=abb13(27)+abb13(30)
      abb13(27)=4.0_ki*abb13(27)
      abb13(17)=-spbk5l3*abb13(17)
      abb13(17)=abb13(21)+abb13(17)
      abb13(17)=4.0_ki*abb13(17)
      abb13(21)=4.0_ki*spbk5l3
      abb13(24)=-spbl4k1*abb13(24)*abb13(21)
      abb13(14)=abb13(14)*abb13(21)
      abb13(30)=abb13(19)*spak2l4
      abb13(31)=-abb13(30)*spbl4k1
      abb13(32)=-4.0_ki*abb13(20)
      abb13(33)=-spbl3k1*abb13(32)
      abb13(33)=abb13(31)-3.0_ki*abb13(16)+abb13(33)
      abb13(33)=4.0_ki*abb13(22)*abb13(33)
      abb13(25)=abb13(20)*abb13(25)
      abb13(16)=abb13(31)+abb13(25)-abb13(16)
      abb13(16)=4.0_ki*abb13(16)
      abb13(25)=spbl4k1*abb13(32)
      abb13(28)=abb13(11)*abb13(28)
      abb13(31)=abb13(5)*abb13(4)
      abb13(34)=-abb13(12)*abb13(31)*abb13(28)
      abb13(13)=-abb13(13)*abb13(11)
      abb13(35)=es51-es34
      abb13(35)=abb13(13)*abb13(35)
      abb13(34)=abb13(34)+abb13(35)
      abb13(34)=abb13(7)*abb13(34)
      abb13(28)=abb13(28)*abb13(3)*abb13(5)*spbk5k1
      abb13(35)=-spbl3k1*abb13(28)
      abb13(34)=abb13(35)+abb13(34)
      abb13(35)=mH**2
      abb13(36)=abb13(35)*abb13(6)
      abb13(34)=abb13(36)*abb13(34)
      abb13(37)=2.0_ki*abb13(22)
      abb13(13)=-abb13(13)*abb13(37)
      abb13(13)=abb13(13)+abb13(34)
      abb13(13)=4.0_ki*abb13(13)
      abb13(12)=abb13(37)*abb13(12)*spak2l3*abb13(18)
      abb13(15)=abb13(31)*abb13(15)*spbk5k1*abb13(8)*abb13(9)*abb13(35)*abb13(1&
      &0)
      abb13(11)=-spbk5l3*abb13(23)*abb13(11)*abb13(15)
      abb13(11)=abb13(12)+abb13(11)
      abb13(11)=4.0_ki*abb13(11)
      abb13(12)=4.0_ki*abb13(29)*abb13(15)
      abb13(15)=abb13(26)*abb13(32)
      abb13(18)=-abb13(30)*spbk5l4
      abb13(23)=-abb13(22)*abb13(18)
      abb13(15)=abb13(15)+abb13(23)
      abb13(15)=4.0_ki*abb13(15)
      abb13(20)=-spbk5l3*abb13(20)
      abb13(18)=2.0_ki*abb13(20)-abb13(18)
      abb13(18)=4.0_ki*abb13(18)
      abb13(20)=abb13(30)*abb13(21)
      abb13(21)=24.0_ki*abb13(19)*abb13(22)
      abb13(19)=8.0_ki*abb13(19)
      abb13(22)=-4.0_ki*abb13(7)*abb13(28)*abb13(36)
      R2d13=0.0_ki
      rat2 = rat2 + R2d13
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='13' value='", &
          & R2d13, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd13h1_qp
