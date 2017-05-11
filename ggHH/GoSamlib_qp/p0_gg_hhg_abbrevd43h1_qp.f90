module p0_gg_hhg_abbrevd43h1_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(68), public :: abb43
   complex(ki), public :: R2d43
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
      abb43(1)=sqrt(mT**2)
      abb43(2)=sqrt2**(-1)
      abb43(3)=spak2k5**(-1)
      abb43(4)=spbk5k2**(-1)
      abb43(5)=spak1k2**(-1)
      abb43(6)=spak2l3**(-1)
      abb43(7)=spbl3k2**(-1)
      abb43(8)=spak2l4**(-1)
      abb43(9)=spbl4k2**(-1)
      abb43(10)=gHT**2*i_*abb43(3)
      abb43(11)=abb43(10)*spak2l4
      abb43(12)=abb43(4)*abb43(2)
      abb43(13)=abb43(11)*abb43(12)
      abb43(14)=c2*spak2l3
      abb43(15)=abb43(13)*abb43(14)
      abb43(16)=abb43(10)*c1
      abb43(17)=abb43(16)*abb43(12)
      abb43(18)=abb43(17)*spak2l4
      abb43(19)=abb43(18)*spak2l3
      abb43(15)=abb43(15)-abb43(19)
      abb43(19)=spbk5l4*spbk5k1
      abb43(15)=abb43(15)*abb43(19)*spbl3k1
      abb43(20)=abb43(1)**2
      abb43(21)=2.0_ki*abb43(20)
      abb43(22)=abb43(21)*abb43(15)
      abb43(23)=abb43(18)*abb43(19)
      abb43(24)=spbl3k1*spak2l3
      abb43(25)=4.0_ki*abb43(24)*abb43(23)
      abb43(15)=-2.0_ki*abb43(15)
      abb43(26)=c2*abb43(10)*spak2l3
      abb43(27)=abb43(12)*abb43(26)
      abb43(28)=-spak2l3*abb43(17)
      abb43(28)=abb43(28)+abb43(27)
      abb43(29)=2.0_ki*spbk5k1
      abb43(28)=abb43(28)*abb43(29)
      abb43(10)=abb43(10)*abb43(12)
      abb43(12)=abb43(5)*abb43(10)
      abb43(30)=abb43(12)*spak2l3
      abb43(31)=c2*spak2l4
      abb43(32)=abb43(31)*abb43(30)
      abb43(33)=c1*spak2l4
      abb43(34)=abb43(30)*abb43(33)
      abb43(35)=abb43(32)-abb43(34)
      abb43(36)=spbk5l4*abb43(35)
      abb43(28)=abb43(28)+abb43(36)
      abb43(28)=spbl3k1*abb43(28)
      abb43(32)=spbl4l3*spbk5k1*abb43(32)
      abb43(36)=spbl4k1*abb43(34)*spbk5l3
      abb43(32)=abb43(32)-abb43(36)
      abb43(13)=abb43(13)*c2
      abb43(18)=-2.0_ki*abb43(18)-abb43(13)
      abb43(37)=spbl4k1*spbk5k1
      abb43(18)=abb43(18)*abb43(37)
      abb43(18)=abb43(28)+abb43(18)+abb43(32)
      abb43(18)=abb43(20)*abb43(18)
      abb43(28)=spbl3k1*spbk5l4
      abb43(38)=-es12*abb43(34)*abb43(28)
      abb43(18)=abb43(38)+abb43(18)
      abb43(18)=2.0_ki*abb43(18)
      abb43(38)=abb43(17)*spbk5k1
      abb43(39)=abb43(24)*abb43(38)
      abb43(40)=4.0_ki*abb43(39)
      abb43(41)=abb43(17)*spbl4k1
      abb43(42)=spbk5k1*spak2l4
      abb43(43)=abb43(41)*abb43(42)
      abb43(44)=-4.0_ki*abb43(43)
      abb43(45)=mH**2
      abb43(46)=abb43(45)*abb43(9)*abb43(8)
      abb43(47)=1.0_ki+abb43(46)
      abb43(39)=abb43(39)*abb43(47)
      abb43(45)=abb43(6)*abb43(45)*abb43(7)
      abb43(43)=-abb43(45)*abb43(43)
      abb43(39)=abb43(43)+abb43(39)
      abb43(39)=4.0_ki*abb43(39)
      abb43(36)=-4.0_ki*abb43(36)
      abb43(35)=-abb43(35)*abb43(28)
      abb43(37)=-abb43(13)*abb43(37)
      abb43(32)=abb43(35)+abb43(37)-abb43(32)
      abb43(32)=2.0_ki*abb43(32)
      abb43(27)=-2.0_ki*abb43(28)*abb43(27)
      abb43(35)=abb43(30)*c1
      abb43(37)=abb43(35)*spbl3k1
      abb43(43)=abb43(46)*abb43(35)
      abb43(47)=-spbl3k1*abb43(43)
      abb43(33)=abb43(33)*abb43(12)
      abb43(48)=abb43(33)*spbl4k1
      abb43(49)=abb43(48)*abb43(45)
      abb43(47)=abb43(49)-abb43(37)+abb43(47)
      abb43(47)=es12*abb43(47)
      abb43(49)=abb43(12)*c2
      abb43(50)=abb43(49)*spak2l4
      abb43(51)=2.0_ki*abb43(50)
      abb43(52)=abb43(33)-abb43(51)
      abb43(52)=spbl4k1*abb43(52)*abb43(20)
      abb43(37)=-abb43(21)*abb43(37)
      abb43(53)=spal3l4*spbl3k1
      abb43(41)=abb43(41)*abb43(53)
      abb43(37)=abb43(41)+abb43(47)+abb43(37)+abb43(52)
      abb43(37)=2.0_ki*abb43(37)
      abb43(41)=abb43(30)*c2
      abb43(47)=-4.0_ki*spbl3k1*abb43(41)
      abb43(52)=4.0_ki*abb43(48)
      abb43(54)=2.0_ki*abb43(48)
      abb43(10)=c2*abb43(10)
      abb43(55)=abb43(10)*spbl4k1
      abb43(56)=-spbl4l3*abb43(41)
      abb43(56)=-abb43(55)+abb43(56)
      abb43(56)=2.0_ki*abb43(56)
      abb43(57)=-2.0_ki*spbl4l3*abb43(33)
      abb43(58)=abb43(13)*spbk5k1**2
      abb43(59)=6.0_ki*abb43(20)*abb43(58)
      abb43(58)=2.0_ki*abb43(58)
      abb43(42)=abb43(42)*abb43(49)
      abb43(60)=abb43(42)*abb43(21)
      abb43(61)=4.0_ki*abb43(42)
      abb43(62)=abb43(45)*abb43(61)
      abb43(63)=-8.0_ki*abb43(42)
      abb43(42)=2.0_ki*abb43(42)
      abb43(50)=-spbk2k1*abb43(45)*abb43(50)
      abb43(53)=-abb43(49)*abb43(53)
      abb43(50)=abb43(50)+abb43(53)
      abb43(50)=2.0_ki*abb43(50)
      abb43(53)=abb43(19)*abb43(34)
      abb43(64)=abb43(21)*abb43(53)
      abb43(65)=-4.0_ki*abb43(53)
      abb43(53)=-2.0_ki*abb43(53)
      abb43(66)=abb43(20)*abb43(35)*abb43(29)
      abb43(34)=spbk2k1*spbk5l4*abb43(34)
      abb43(34)=abb43(66)+abb43(34)
      abb43(34)=2.0_ki*abb43(34)
      abb43(66)=abb43(35)*spbk5k1
      abb43(67)=-4.0_ki*abb43(66)
      abb43(68)=-spbk5k1*abb43(43)
      abb43(66)=-abb43(66)+abb43(68)
      abb43(66)=4.0_ki*abb43(66)
      abb43(43)=abb43(35)+abb43(43)
      abb43(43)=spbk2k1*abb43(43)
      abb43(12)=abb43(12)*c1
      abb43(68)=-spal3l4*abb43(12)*spbl4k1
      abb43(43)=abb43(43)+abb43(68)
      abb43(43)=2.0_ki*abb43(43)
      abb43(13)=abb43(13)*abb43(19)
      abb43(19)=abb43(30)*spbk5l3
      abb43(30)=abb43(19)*abb43(31)
      abb43(31)=abb43(30)*spbk5l4
      abb43(68)=-abb43(31)-3.0_ki*abb43(13)
      abb43(68)=abb43(20)*abb43(68)
      abb43(11)=abb43(14)*abb43(11)
      abb43(14)=-abb43(2)*abb43(28)*abb43(11)
      abb43(14)=abb43(14)+abb43(68)
      abb43(14)=2.0_ki*abb43(14)
      abb43(23)=-abb43(23)+abb43(31)
      abb43(23)=4.0_ki*abb43(23)
      abb43(13)=-abb43(13)+abb43(31)
      abb43(13)=2.0_ki*abb43(13)
      abb43(28)=abb43(17)-abb43(10)
      abb43(28)=spbk5k1*abb43(28)
      abb43(31)=-3.0_ki*abb43(33)+abb43(51)
      abb43(31)=spbk5l4*abb43(31)
      abb43(28)=4.0_ki*abb43(28)+abb43(31)
      abb43(28)=abb43(28)*abb43(20)
      abb43(31)=abb43(35)-2.0_ki*abb43(41)
      abb43(21)=abb43(31)*abb43(21)
      abb43(31)=spak1l3*abb43(48)
      abb43(21)=abb43(31)+abb43(21)
      abb43(21)=spbk5l3*abb43(21)
      abb43(31)=spbl4k1*abb43(45)*spak2l4
      abb43(24)=abb43(31)-abb43(24)
      abb43(31)=abb43(16)*abb43(2)
      abb43(24)=abb43(31)*abb43(24)
      abb43(26)=-spbl3k1*abb43(2)*abb43(46)*abb43(26)
      abb43(35)=abb43(33)*spbk5l4
      abb43(48)=es12*abb43(35)
      abb43(51)=abb43(5)*abb43(2)
      abb43(11)=-spbl4l3*abb43(51)*abb43(11)
      abb43(30)=spbl4k2*abb43(30)
      abb43(11)=abb43(30)+abb43(11)+abb43(48)+abb43(26)+abb43(28)+abb43(21)+abb&
      &43(24)
      abb43(11)=2.0_ki*abb43(11)
      abb43(10)=-abb43(17)-abb43(10)
      abb43(10)=spbk5k1*abb43(10)
      abb43(17)=abb43(19)*c2
      abb43(10)=abb43(10)+abb43(17)
      abb43(10)=4.0_ki*abb43(10)
      abb43(19)=-4.0_ki*abb43(35)
      abb43(17)=-abb43(38)+abb43(17)
      abb43(17)=abb43(17)*abb43(46)
      abb43(21)=-abb43(45)*abb43(35)
      abb43(17)=abb43(17)+abb43(21)
      abb43(17)=4.0_ki*abb43(17)
      abb43(21)=-2.0_ki*abb43(35)
      abb43(24)=2.0_ki*abb43(55)
      abb43(26)=es12*abb43(12)
      abb43(28)=spbl3k2*abb43(41)
      abb43(26)=abb43(28)+abb43(26)
      abb43(26)=abb43(46)*abb43(26)
      abb43(28)=-abb43(12)+abb43(49)
      abb43(20)=abb43(28)*abb43(20)
      abb43(12)=abb43(12)*spak1l4
      abb43(28)=spbl4k1*abb43(12)
      abb43(30)=-spbl4k2*abb43(33)*abb43(45)
      abb43(20)=abb43(30)+abb43(28)+8.0_ki*abb43(20)+abb43(26)
      abb43(20)=2.0_ki*abb43(20)
      abb43(26)=spak1l4*abb43(49)*abb43(29)
      abb43(16)=2.0_ki*spak2l3*abb43(51)*abb43(16)
      abb43(28)=2.0_ki*spak2l4
      abb43(28)=spbk5l4*abb43(31)*abb43(28)
      abb43(29)=abb43(46)*abb43(31)
      abb43(12)=spbk5l4*abb43(12)
      abb43(12)=abb43(29)+abb43(12)
      abb43(12)=2.0_ki*abb43(12)
      R2d43=0.0_ki
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd43h1_qp
