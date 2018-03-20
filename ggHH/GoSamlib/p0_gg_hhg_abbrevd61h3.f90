module     p0_gg_hhg_abbrevd61h3
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh3
   implicit none
   private
   complex(ki), dimension(72), public :: abb61
   complex(ki), public :: R2d61
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb61(1)=sqrt(mT**2)
      abb61(2)=sqrt2**(-1)
      abb61(3)=spak2k5**(-1)
      abb61(4)=spak1k2**(-1)
      abb61(5)=spak2l4**(-1)
      abb61(6)=spbl4k2**(-1)
      abb61(7)=spak2l3**(-1)
      abb61(8)=spbl3k2**(-1)
      abb61(9)=c1-c2
      abb61(10)=abb61(3)*gHT**2
      abb61(11)=i_*abb61(2)
      abb61(12)=abb61(11)*abb61(4)
      abb61(13)=abb61(12)*abb61(9)*abb61(10)
      abb61(14)=abb61(1)**4
      abb61(15)=-abb61(14)*abb61(13)
      abb61(16)=abb61(15)*spbk5k1
      abb61(17)=abb61(1)**2
      abb61(18)=-abb61(17)*abb61(13)
      abb61(19)=mH**2
      abb61(20)=abb61(19)*spbk5k1
      abb61(21)=abb61(18)*abb61(20)
      abb61(22)=abb61(16)+abb61(21)
      abb61(23)=abb61(20)*es34
      abb61(24)=abb61(23)*abb61(18)
      abb61(25)=abb61(21)*es51
      abb61(24)=abb61(24)-abb61(25)
      abb61(25)=abb61(6)*abb61(5)
      abb61(26)=abb61(24)*abb61(25)
      abb61(27)=abb61(8)*abb61(7)
      abb61(28)=2.0_ki*abb61(27)
      abb61(29)=abb61(24)*abb61(28)
      abb61(29)=abb61(26)+abb61(29)-abb61(22)
      abb61(29)=es12*abb61(29)
      abb61(30)=es34-es51
      abb61(22)=-abb61(22)*abb61(30)
      abb61(31)=2.0_ki*abb61(16)-abb61(26)
      abb61(32)=spak2l3*spbl3k2
      abb61(31)=abb61(31)*abb61(32)
      abb61(16)=spbl4k2*abb61(16)
      abb61(33)=abb61(27)*spbl4k2
      abb61(34)=-es12*abb61(21)*abb61(33)
      abb61(16)=abb61(16)+abb61(34)
      abb61(16)=spak2l4*abb61(16)
      abb61(34)=spbl3k1*spal3k5
      abb61(35)=spbl4k1*spal4k5
      abb61(36)=abb61(35)+2.0_ki*abb61(34)
      abb61(11)=-abb61(11)*abb61(9)
      abb61(37)=gHT*abb61(3)
      abb61(37)=abb61(37)**2
      abb61(38)=abb61(11)*abb61(37)
      abb61(39)=-abb61(17)*abb61(38)
      abb61(40)=-spbk5k1*abb61(30)
      abb61(41)=-abb61(39)*abb61(40)
      abb61(42)=-abb61(41)*abb61(36)
      abb61(9)=abb61(9)*abb61(37)*abb61(12)
      abb61(12)=-abb61(17)*abb61(9)
      abb61(37)=-abb61(12)*abb61(40)
      abb61(43)=abb61(37)*spak2l3
      abb61(44)=spbl4l3*spal4k5
      abb61(45)=abb61(44)*abb61(43)
      abb61(10)=-abb61(10)*abb61(11)
      abb61(11)=-spbk5k1*abb61(17)*abb61(10)
      abb61(17)=abb61(11)*spbl3k1
      abb61(46)=spal3l4*spbl4k2
      abb61(47)=-abb61(46)*abb61(17)
      abb61(16)=abb61(47)+abb61(45)+abb61(16)+abb61(31)+abb61(29)+abb61(22)+abb&
      &61(42)
      abb61(16)=2.0_ki*abb61(16)
      abb61(22)=abb61(39)*abb61(36)
      abb61(29)=abb61(12)*spak2l3
      abb61(31)=-abb61(44)*abb61(29)
      abb61(22)=abb61(31)+abb61(22)
      abb61(22)=spbk5k1*abb61(22)
      abb61(31)=3.0_ki*abb61(27)
      abb61(24)=abb61(24)*abb61(31)
      abb61(42)=abb61(21)*abb61(27)
      abb61(45)=abb61(21)*abb61(25)
      abb61(42)=abb61(42)+abb61(45)
      abb61(47)=-es12*abb61(42)
      abb61(45)=abb61(32)*abb61(45)
      abb61(48)=abb61(33)*spak2l4
      abb61(21)=-abb61(21)*abb61(48)
      abb61(21)=abb61(21)+abb61(45)+abb61(47)+abb61(24)+2.0_ki*abb61(26)+abb61(&
      &22)
      abb61(21)=4.0_ki*abb61(21)
      abb61(22)=-16.0_ki*abb61(42)
      abb61(24)=abb61(25)+abb61(27)
      abb61(26)=abb61(13)*abb61(24)
      abb61(42)=abb61(20)*es51
      abb61(23)=abb61(42)-abb61(23)
      abb61(42)=abb61(23)*abb61(26)
      abb61(45)=abb61(18)*spbk5k1
      abb61(42)=-3.0_ki*abb61(45)+abb61(42)
      abb61(42)=es12*abb61(42)
      abb61(47)=spak2l4*spbl4k2
      abb61(49)=abb61(47)+abb61(32)
      abb61(50)=abb61(45)*abb61(49)
      abb61(34)=abb61(34)+abb61(35)
      abb61(35)=abb61(38)*abb61(40)
      abb61(51)=-abb61(35)*abb61(34)
      abb61(40)=abb61(18)*abb61(40)
      abb61(40)=3.0_ki*abb61(40)+abb61(42)+abb61(51)+abb61(50)
      abb61(40)=2.0_ki*abb61(40)
      abb61(42)=-abb61(38)*spbk5k1
      abb61(50)=abb61(42)*abb61(34)
      abb61(26)=es12*abb61(20)*abb61(26)
      abb61(26)=abb61(26)+abb61(50)
      abb61(26)=4.0_ki*abb61(26)
      abb61(43)=2.0_ki*abb61(43)
      abb61(29)=-4.0_ki*spbk5k1*abb61(29)
      abb61(41)=-6.0_ki*abb61(41)
      abb61(39)=12.0_ki*spbk5k1*abb61(39)
      abb61(50)=2.0_ki*abb61(35)
      abb61(51)=4.0_ki*abb61(42)
      abb61(52)=4.0_ki*spbl4k2
      abb61(53)=-abb61(11)*abb61(52)
      abb61(17)=2.0_ki*abb61(17)
      abb61(54)=abb61(23)*abb61(10)
      abb61(55)=abb61(7)*abb61(54)
      abb61(54)=abb61(54)*abb61(25)
      abb61(11)=-3.0_ki*abb61(11)+abb61(54)
      abb61(11)=spbl3k2*abb61(11)
      abb61(35)=abb61(35)*abb61(44)
      abb61(11)=abb61(35)+abb61(55)+abb61(11)
      abb61(11)=2.0_ki*abb61(11)
      abb61(35)=abb61(25)*spbl3k2
      abb61(35)=abb61(35)+abb61(7)
      abb61(10)=abb61(10)*abb61(20)*abb61(35)
      abb61(42)=-abb61(44)*abb61(42)
      abb61(10)=abb61(42)+abb61(10)
      abb61(10)=4.0_ki*abb61(10)
      abb61(42)=-abb61(25)-abb61(28)
      abb61(54)=abb61(19)*es34
      abb61(55)=abb61(19)*es51
      abb61(56)=abb61(54)-abb61(55)
      abb61(42)=abb61(42)*abb61(56)*abb61(18)
      abb61(57)=abb61(18)*abb61(19)
      abb61(58)=abb61(48)+1.0_ki
      abb61(59)=abb61(57)*abb61(58)
      abb61(15)=-abb61(15)+abb61(42)+abb61(59)
      abb61(15)=spbk2k1*abb61(15)
      abb61(42)=abb61(12)*es34
      abb61(59)=abb61(12)*es51
      abb61(42)=abb61(42)-abb61(59)
      abb61(60)=-abb61(42)*abb61(36)
      abb61(61)=abb61(18)*spbl3k1
      abb61(62)=abb61(46)*abb61(61)
      abb61(15)=abb61(62)+abb61(60)+abb61(15)
      abb61(15)=2.0_ki*abb61(15)
      abb61(36)=abb61(12)*abb61(36)
      abb61(60)=abb61(24)*spbk2k1
      abb61(57)=abb61(57)*abb61(60)
      abb61(36)=abb61(57)+abb61(36)
      abb61(36)=4.0_ki*abb61(36)
      abb61(57)=-abb61(9)*es34
      abb61(62)=-abb61(9)*es51
      abb61(57)=abb61(57)-abb61(62)
      abb61(63)=-abb61(57)*abb61(34)
      abb61(64)=-abb61(13)*abb61(56)
      abb61(24)=-abb61(64)*abb61(24)
      abb61(24)=2.0_ki*abb61(18)+abb61(24)
      abb61(24)=spbk2k1*abb61(24)
      abb61(24)=abb61(24)+abb61(63)
      abb61(24)=2.0_ki*abb61(24)
      abb61(34)=-abb61(9)*abb61(34)
      abb61(63)=abb61(13)*abb61(19)
      abb61(60)=-abb61(63)*abb61(60)
      abb61(34)=abb61(60)+abb61(34)
      abb61(34)=4.0_ki*abb61(34)
      abb61(13)=2.0_ki*spbk2k1*abb61(13)
      abb61(60)=-6.0_ki*abb61(42)
      abb61(65)=2.0_ki*abb61(57)
      abb61(52)=abb61(18)*abb61(52)
      abb61(61)=-2.0_ki*abb61(61)
      abb61(66)=-abb61(64)*abb61(25)
      abb61(18)=3.0_ki*abb61(18)+abb61(66)
      abb61(18)=spbl3k2*abb61(18)
      abb61(66)=abb61(57)*abb61(44)
      abb61(64)=-abb61(7)*abb61(64)
      abb61(18)=abb61(66)+abb61(64)+abb61(18)
      abb61(18)=2.0_ki*abb61(18)
      abb61(35)=-abb61(63)*abb61(35)
      abb61(63)=abb61(9)*abb61(44)
      abb61(35)=abb61(63)+abb61(35)
      abb61(35)=4.0_ki*abb61(35)
      abb61(63)=4.0_ki*abb61(9)
      abb61(64)=4.0_ki*spal4k5
      abb61(66)=abb61(37)*abb61(64)
      abb61(67)=abb61(12)*spbk5k1
      abb61(68)=-8.0_ki*spal4k5*abb61(67)
      abb61(69)=3.0_ki*spal3k5
      abb61(37)=abb61(37)*abb61(69)
      abb61(70)=-abb61(45)*abb61(46)
      abb61(37)=abb61(37)+abb61(70)
      abb61(37)=2.0_ki*abb61(37)
      abb61(67)=-12.0_ki*spal3k5*abb61(67)
      abb61(45)=2.0_ki*abb61(45)
      abb61(14)=abb61(14)*abb61(9)
      abb61(70)=abb61(12)*abb61(19)
      abb61(14)=-abb61(70)+3.0_ki*abb61(14)
      abb61(30)=es12-abb61(30)
      abb61(14)=abb61(14)*abb61(30)
      abb61(30)=abb61(70)*es12
      abb61(56)=-abb61(12)*abb61(56)
      abb61(30)=abb61(30)+abb61(56)
      abb61(56)=-abb61(25)*abb61(30)
      abb61(56)=-2.0_ki*abb61(59)+abb61(56)
      abb61(56)=abb61(56)*abb61(32)
      abb61(23)=abb61(38)*abb61(23)
      abb61(70)=spal3k5*abb61(7)
      abb61(33)=abb61(33)*spal4k5
      abb61(33)=abb61(70)+abb61(33)
      abb61(70)=abb61(23)*abb61(33)
      abb61(59)=-abb61(59)*abb61(47)
      abb61(71)=abb61(12)*spbk5k2
      abb61(72)=abb61(71)*spak2l3
      abb61(44)=abb61(44)*abb61(72)
      abb61(14)=abb61(44)+abb61(59)+abb61(56)+abb61(70)+abb61(14)
      abb61(14)=2.0_ki*abb61(14)
      abb61(32)=-2.0_ki*abb61(32)-abb61(47)
      abb61(32)=4.0_ki*abb61(12)*abb61(32)
      abb61(25)=abb61(31)+2.0_ki*abb61(25)
      abb61(25)=abb61(25)*abb61(30)
      abb61(19)=-abb61(9)*abb61(19)
      abb61(30)=3.0_ki*abb61(12)+abb61(19)
      abb61(30)=es51*abb61(30)
      abb61(20)=-abb61(38)*abb61(20)
      abb61(31)=-abb61(20)*abb61(33)
      abb61(38)=-abb61(55)*abb61(9)
      abb61(44)=abb61(38)*abb61(48)
      abb61(25)=abb61(44)+abb61(30)+abb61(31)+abb61(25)
      abb61(25)=4.0_ki*abb61(25)
      abb61(30)=8.0_ki*abb61(19)*abb61(58)
      abb61(31)=-8.0_ki*abb61(27)*abb61(38)
      abb61(44)=abb61(19)*abb61(27)
      abb61(47)=-16.0_ki*abb61(44)
      abb61(48)=es12*abb61(12)
      abb61(42)=abb61(48)-abb61(42)
      abb61(48)=-abb61(62)*abb61(49)
      abb61(42)=2.0_ki*abb61(42)+abb61(48)
      abb61(42)=2.0_ki*abb61(42)
      abb61(48)=abb61(49)*abb61(63)
      abb61(49)=4.0_ki*abb61(62)
      abb61(55)=-es12*abb61(9)
      abb61(55)=abb61(55)-abb61(57)
      abb61(55)=2.0_ki*abb61(55)
      abb61(56)=2.0_ki*abb61(72)
      abb61(23)=abb61(23)*abb61(28)
      abb61(20)=-4.0_ki*abb61(27)*abb61(20)
      abb61(9)=-abb61(54)*abb61(9)
      abb61(9)=abb61(9)-abb61(38)
      abb61(28)=2.0_ki*abb61(9)*abb61(33)
      abb61(19)=-4.0_ki*abb61(19)*abb61(33)
      abb61(9)=abb61(9)*abb61(27)
      abb61(9)=6.0_ki*abb61(12)+abb61(9)
      abb61(9)=2.0_ki*abb61(9)
      abb61(12)=-4.0_ki*abb61(44)
      abb61(27)=abb61(71)*abb61(64)
      abb61(33)=abb61(62)*abb61(46)
      abb61(38)=abb61(71)*abb61(69)
      abb61(33)=abb61(33)+abb61(38)
      abb61(33)=2.0_ki*abb61(33)
      abb61(38)=-abb61(46)*abb61(63)
      abb61(44)=-2.0_ki*abb61(62)
      R2d61=0.0_ki
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd61h3
