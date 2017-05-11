module p0_gg_hhg_abbrevd17h1_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(45), public :: abb17
   complex(ki), public :: R2d17
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb17(1)=sqrt(mT**2)
      abb17(2)=sqrt2**(-1)
      abb17(3)=es12**(-1)
      abb17(4)=spbk5k2**(-1)
      abb17(5)=spak2k5**(-1)
      abb17(6)=spak2l3**(-1)
      abb17(7)=spbl3k2**(-1)
      abb17(8)=spak2l4**(-1)
      abb17(9)=spbl4k2**(-1)
      abb17(10)=spak1k2**(-1)
      abb17(11)=c1-c2
      abb17(12)=gHT**2*i_*abb17(4)
      abb17(13)=abb17(3)*abb17(2)
      abb17(14)=abb17(11)*abb17(12)*abb17(13)*abb17(5)
      abb17(15)=spbk5k1*abb17(14)
      abb17(16)=spbk5l3*spak2l3
      abb17(17)=abb17(15)*abb17(16)
      abb17(18)=spbl4k1*spak2l4
      abb17(19)=abb17(18)*abb17(17)
      abb17(20)=spbk5l4*spak2l4
      abb17(21)=abb17(15)*abb17(20)
      abb17(22)=abb17(21)*spbl3k1
      abb17(23)=abb17(22)*spak2l3
      abb17(19)=abb17(19)+abb17(23)
      abb17(11)=-abb17(12)*abb17(11)
      abb17(12)=abb17(11)*abb17(13)
      abb17(13)=spbk5k1**2
      abb17(24)=-abb17(13)*abb17(12)
      abb17(25)=abb17(24)*abb17(16)
      abb17(26)=abb17(24)*abb17(20)
      abb17(27)=-abb17(19)-2.0_ki*abb17(25)-abb17(26)
      abb17(28)=abb17(1)**2
      abb17(27)=4.0_ki*abb17(28)*abb17(27)
      abb17(23)=4.0_ki*abb17(23)
      abb17(25)=-4.0_ki*abb17(25)
      abb17(29)=4.0_ki*abb17(26)
      abb17(30)=mH**2
      abb17(31)=abb17(8)*abb17(30)*abb17(9)
      abb17(32)=abb17(31)*abb17(16)
      abb17(33)=-abb17(24)*abb17(32)
      abb17(30)=abb17(30)*abb17(7)*abb17(6)
      abb17(34)=abb17(30)*abb17(26)
      abb17(33)=abb17(34)+abb17(33)
      abb17(33)=4.0_ki*abb17(33)
      abb17(19)=-abb17(26)+abb17(19)
      abb17(19)=4.0_ki*abb17(19)
      abb17(12)=-spbk5k1*abb17(12)
      abb17(26)=2.0_ki*abb17(12)
      abb17(16)=spbl4k1*abb17(16)*abb17(26)
      abb17(26)=abb17(15)*spbl3k1
      abb17(34)=abb17(26)*spak2l3
      abb17(18)=abb17(18)*abb17(15)
      abb17(18)=abb17(34)-abb17(18)
      abb17(24)=8.0_ki*abb17(24)
      abb17(34)=-abb17(24)+7.0_ki*abb17(18)
      abb17(34)=abb17(28)*abb17(34)
      abb17(35)=abb17(20)*abb17(30)
      abb17(35)=abb17(35)+abb17(32)
      abb17(11)=abb17(11)*spbk5k1*abb17(2)
      abb17(35)=-abb17(10)*abb17(11)*abb17(35)
      abb17(22)=spal3k5*abb17(22)
      abb17(22)=abb17(22)+abb17(35)+abb17(34)
      abb17(22)=2.0_ki*abb17(22)
      abb17(34)=-abb17(30)*abb17(24)
      abb17(18)=2.0_ki*abb17(18)
      abb17(13)=-abb17(13)*abb17(14)
      abb17(14)=4.0_ki*spak2l3
      abb17(35)=-abb17(13)*abb17(14)
      abb17(14)=spbl4k1*abb17(15)*abb17(14)
      abb17(36)=4.0_ki*spbl3k1*abb17(12)
      abb17(26)=4.0_ki*spak2l4*abb17(26)
      abb17(37)=4.0_ki*abb17(10)
      abb17(38)=-abb17(11)*abb17(30)*abb17(37)
      abb17(13)=2.0_ki*abb17(13)
      abb17(39)=abb17(13)*abb17(28)
      abb17(40)=-spak2l4*abb17(39)
      abb17(41)=abb17(13)*spak2l4
      abb17(11)=-abb17(5)*abb17(11)
      abb17(42)=abb17(11)*abb17(30)
      abb17(43)=spak2l4*abb17(37)*abb17(42)
      abb17(39)=spak2l3*abb17(39)
      abb17(13)=abb17(13)*spak2l3
      abb17(37)=spak2l3*abb17(11)*abb17(31)*abb17(37)
      abb17(44)=abb17(21)*abb17(30)
      abb17(31)=abb17(31)*abb17(17)
      abb17(31)=abb17(44)-abb17(31)
      abb17(44)=es51-es34
      abb17(31)=-abb17(31)*abb17(44)
      abb17(21)=abb17(17)-abb17(21)
      abb17(45)=-abb17(21)*abb17(28)
      abb17(32)=abb17(11)*abb17(32)
      abb17(20)=-abb17(20)*abb17(42)
      abb17(12)=abb17(12)*spbk5l3
      abb17(42)=-spal3l4*spbk5l4*abb17(12)
      abb17(20)=abb17(42)+abb17(32)+abb17(45)+abb17(20)+abb17(31)
      abb17(20)=2.0_ki*abb17(20)
      abb17(17)=4.0_ki*abb17(17)
      abb17(21)=2.0_ki*abb17(21)
      abb17(12)=2.0_ki*abb17(12)
      abb17(31)=abb17(15)*abb17(44)
      abb17(11)=abb17(11)+abb17(31)
      abb17(11)=abb17(30)*abb17(11)
      abb17(28)=abb17(15)*abb17(28)
      abb17(11)=-8.0_ki*abb17(28)+abb17(11)
      abb17(15)=spal3k5*spbk5l3*abb17(15)
      abb17(11)=2.0_ki*abb17(11)+abb17(15)
      abb17(11)=2.0_ki*abb17(11)
      R2d17=0.0_ki
      rat2 = rat2 + R2d17
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='17' value='", &
          & R2d17, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd17h1_qp
