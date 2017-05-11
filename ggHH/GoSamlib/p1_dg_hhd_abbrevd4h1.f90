module     p1_dg_hhd_abbrevd4h1
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_globalsh1
   implicit none
   private
   complex(ki), dimension(58), public :: abb4
   complex(ki), public :: R2d4
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dg_hhd_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_model
      use p1_dg_hhd_color, only: TR
      use p1_dg_hhd_globalsl1, only: epspow
      implicit none
      abb4(1)=sqrt2**(-1)
      abb4(2)=es51**(-1)
      abb4(3)=spak1k2**(-1)
      abb4(4)=sqrt(mT**2)
      abb4(5)=spak2l3**(-1)
      abb4(6)=spbl3k2**(-1)
      abb4(7)=spak2l4**(-1)
      abb4(8)=spbl4k2**(-1)
      abb4(9)=abb4(3)*spbk2k1
      abb4(10)=abb4(1)*abb4(2)*c1*TR*i_*gHT**2
      abb4(11)=spak1k5*abb4(9)*abb4(10)
      abb4(12)=20.0_ki/3.0_ki*abb4(11)
      abb4(13)=abb4(5)*abb4(6)
      abb4(14)=abb4(13)*es12
      abb4(15)=spal4k5*spbl4k2
      abb4(16)=abb4(14)*abb4(15)
      abb4(17)=spbl3k2*spal3k5
      abb4(18)=abb4(17)*es12
      abb4(19)=abb4(7)*abb4(8)
      abb4(20)=abb4(18)*abb4(19)
      abb4(16)=abb4(16)+abb4(20)
      abb4(20)=mH**2
      abb4(16)=abb4(16)*abb4(20)
      abb4(21)=spbl3k1*spak1l3
      abb4(22)=abb4(21)-es12
      abb4(22)=abb4(22)*abb4(15)
      abb4(23)=spbl4k1*spak1l4
      abb4(24)=abb4(23)-2.0_ki*es12
      abb4(24)=abb4(24)*abb4(17)
      abb4(22)=abb4(16)+abb4(22)+abb4(24)
      abb4(24)=abb4(4)**2
      abb4(22)=abb4(22)*abb4(24)
      abb4(25)=spbk2k1*spak1k5*abb4(4)**4
      abb4(22)=abb4(22)-2.0_ki*abb4(25)
      abb4(25)=4.0_ki*abb4(3)
      abb4(25)=abb4(25)*abb4(10)
      abb4(22)=abb4(22)*abb4(25)
      abb4(18)=-abb4(25)*abb4(18)
      abb4(26)=abb4(13)*abb4(20)
      abb4(27)=abb4(26)*es12
      abb4(28)=2.0_ki*abb4(27)+abb4(21)
      abb4(28)=abb4(15)*abb4(28)
      abb4(29)=abb4(23)*abb4(17)
      abb4(30)=abb4(19)-abb4(13)
      abb4(31)=2.0_ki*abb4(20)
      abb4(32)=abb4(30)*abb4(31)
      abb4(32)=-3.0_ki+abb4(32)
      abb4(33)=abb4(24)*spbk2k1
      abb4(34)=abb4(33)*spak1k5
      abb4(32)=abb4(32)*abb4(34)
      abb4(28)=abb4(32)+abb4(29)+abb4(28)
      abb4(28)=abb4(28)*abb4(25)
      abb4(11)=8.0_ki*abb4(11)
      abb4(32)=-abb4(26)*abb4(11)
      abb4(35)=abb4(17)-abb4(15)
      abb4(35)=abb4(35)*abb4(25)
      abb4(36)=-abb4(24)*abb4(35)
      abb4(37)=abb4(21)+es12
      abb4(37)=-abb4(37)*abb4(15)
      abb4(16)=4.0_ki*abb4(34)-abb4(16)+abb4(37)-abb4(29)
      abb4(16)=abb4(16)*abb4(25)
      abb4(29)=abb4(30)*abb4(20)
      abb4(29)=5.0_ki-3.0_ki*abb4(29)
      abb4(30)=abb4(25)*spbk2k1
      abb4(29)=abb4(30)*spak1k5*abb4(29)
      abb4(34)=2.0_ki*abb4(10)
      abb4(9)=abb4(34)*abb4(9)
      abb4(37)=abb4(9)*abb4(24)
      abb4(38)=spak1l4*abb4(37)
      abb4(37)=-spak1l3*abb4(37)
      abb4(39)=-spak1l3*abb4(30)
      abb4(21)=abb4(23)-abb4(21)
      abb4(23)=-es12-abb4(21)
      abb4(40)=abb4(34)*abb4(3)
      abb4(23)=abb4(23)*abb4(24)*abb4(40)
      abb4(27)=-abb4(25)*abb4(27)
      abb4(41)=abb4(19)*es12
      abb4(14)=abb4(41)-abb4(14)
      abb4(14)=abb4(14)*abb4(20)
      abb4(14)=abb4(14)-es12+abb4(21)
      abb4(14)=abb4(14)*abb4(40)
      abb4(21)=spbl4k2*spak1l4
      abb4(41)=spbl3k2*spak1l3
      abb4(21)=abb4(21)-abb4(41)
      abb4(42)=2.0_ki*abb4(3)
      abb4(43)=abb4(21)*abb4(24)*abb4(42)
      abb4(44)=-spbl3k2*spbl4k2*spal3l4
      abb4(43)=abb4(44)+abb4(43)
      abb4(43)=abb4(43)*abb4(34)
      abb4(10)=-8.0_ki*abb4(3)*abb4(10)*abb4(41)
      abb4(21)=-abb4(21)*abb4(25)
      abb4(41)=abb4(25)*spbl4k1
      abb4(44)=abb4(24)*spak1k5
      abb4(45)=abb4(44)*abb4(41)
      abb4(46)=abb4(40)*spak1k5
      abb4(47)=-spbl4k1*abb4(46)
      abb4(48)=-spbl4k2*abb4(40)*abb4(44)
      abb4(42)=-spbl3k1*abb4(42)*abb4(44)
      abb4(49)=abb4(15)*spbl3k1
      abb4(42)=abb4(49)+abb4(42)
      abb4(42)=abb4(42)*abb4(34)
      abb4(50)=abb4(25)*spak1k5
      abb4(51)=-spbl3k1*abb4(50)
      abb4(46)=spbl3k1*abb4(46)
      abb4(44)=abb4(3)*abb4(44)
      abb4(15)=-abb4(15)+abb4(44)
      abb4(15)=abb4(34)*spbl3k2*abb4(15)
      abb4(34)=spbl3k2*abb4(50)
      abb4(44)=abb4(30)*abb4(24)
      abb4(50)=spal4k5*abb4(44)
      abb4(52)=-spal4k5*abb4(9)
      abb4(44)=-spal3k5*abb4(44)
      abb4(53)=abb4(30)*spal3k5
      abb4(54)=abb4(9)*spal3k5
      abb4(55)=spal3k5*spbl3k1
      abb4(56)=-spal4k5*spbl4k1
      abb4(55)=abb4(55)+abb4(56)
      abb4(24)=8.0_ki*abb4(24)
      abb4(55)=abb4(55)*abb4(24)
      abb4(56)=abb4(19)*spak2k5
      abb4(13)=abb4(13)*spak2k5
      abb4(57)=abb4(56)-abb4(13)
      abb4(57)=abb4(57)*abb4(20)
      abb4(58)=7.0_ki*spak2k5-6.0_ki*abb4(57)
      abb4(33)=abb4(58)*abb4(33)
      abb4(49)=-spak2l3*abb4(49)
      abb4(17)=-spak2l4*abb4(17)*spbl4k1
      abb4(17)=abb4(33)+abb4(55)+abb4(49)+abb4(17)
      abb4(17)=abb4(17)*abb4(40)
      abb4(33)=abb4(26)*abb4(56)
      abb4(13)=-3.0_ki*abb4(13)+4.0_ki*abb4(33)
      abb4(13)=abb4(13)*abb4(20)*abb4(30)
      abb4(20)=-spak2k5-abb4(57)
      abb4(20)=abb4(20)*abb4(9)
      abb4(9)=spak2l3*abb4(9)
      abb4(33)=spbl3k2*spak2l3
      abb4(24)=abb4(33)+abb4(24)
      abb4(24)=abb4(24)*abb4(25)
      abb4(33)=spal3k5*abb4(41)
      abb4(41)=spak2k5*abb4(26)*abb4(41)
      abb4(25)=spal4k5*abb4(25)*spbl3k1
      abb4(49)=abb4(56)*abb4(31)
      abb4(49)=-spak2k5+abb4(49)
      abb4(49)=abb4(40)*spbl3k1*abb4(49)
      abb4(40)=-spbl3k2*spak2k5*abb4(40)
      abb4(26)=abb4(26)*abb4(30)*spal4k5
      abb4(19)=abb4(19)*abb4(31)
      abb4(19)=-1.0_ki+abb4(19)
      abb4(19)=abb4(19)*abb4(54)
      R2d4=abb4(12)
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd4h1
