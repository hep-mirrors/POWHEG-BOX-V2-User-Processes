module     p0_gg_hhg_abbrevd65h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh4
   implicit none
   private
   complex(ki), dimension(72), public :: abb65
   complex(ki), public :: R2d65
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
      abb65(1)=sqrt(mT**2)
      abb65(2)=sqrt2**(-1)
      abb65(3)=spbk5k2**(-1)
      abb65(4)=spbk2k1**(-1)
      abb65(5)=spak2l3**(-1)
      abb65(6)=spbl3k2**(-1)
      abb65(7)=spak2l4**(-1)
      abb65(8)=spbl4k2**(-1)
      abb65(9)=c1-c2
      abb65(10)=abb65(3)*gHT**2
      abb65(11)=i_*abb65(2)
      abb65(12)=abb65(11)*abb65(4)
      abb65(13)=abb65(12)*abb65(9)*abb65(10)
      abb65(14)=abb65(1)**4
      abb65(15)=-abb65(14)*abb65(13)
      abb65(16)=abb65(15)*spak1k5
      abb65(17)=abb65(1)**2
      abb65(18)=-abb65(17)*abb65(13)
      abb65(19)=mH**2
      abb65(20)=abb65(19)*spak1k5
      abb65(21)=abb65(18)*abb65(20)
      abb65(22)=abb65(16)+abb65(21)
      abb65(23)=abb65(20)*es34
      abb65(24)=abb65(23)*abb65(18)
      abb65(25)=abb65(21)*es51
      abb65(24)=abb65(24)-abb65(25)
      abb65(25)=abb65(6)*abb65(5)
      abb65(26)=abb65(24)*abb65(25)
      abb65(27)=abb65(7)*abb65(8)
      abb65(28)=2.0_ki*abb65(27)
      abb65(29)=abb65(24)*abb65(28)
      abb65(29)=abb65(26)+abb65(29)-abb65(22)
      abb65(29)=es12*abb65(29)
      abb65(30)=es34-es51
      abb65(22)=-abb65(22)*abb65(30)
      abb65(31)=2.0_ki*abb65(16)-abb65(26)
      abb65(32)=spak2l4*spbl4k2
      abb65(31)=abb65(31)*abb65(32)
      abb65(16)=spak2l3*abb65(16)
      abb65(33)=abb65(27)*spak2l3
      abb65(34)=-es12*abb65(21)*abb65(33)
      abb65(16)=abb65(16)+abb65(34)
      abb65(16)=spbl3k2*abb65(16)
      abb65(34)=spak1l4*spbk5l4
      abb65(35)=spak1l3*spbk5l3
      abb65(36)=abb65(35)+2.0_ki*abb65(34)
      abb65(11)=-abb65(11)*abb65(9)
      abb65(37)=gHT*abb65(3)
      abb65(37)=abb65(37)**2
      abb65(38)=abb65(11)*abb65(37)
      abb65(39)=-abb65(17)*abb65(38)
      abb65(40)=-spak1k5*abb65(30)
      abb65(41)=-abb65(39)*abb65(40)
      abb65(42)=-abb65(41)*abb65(36)
      abb65(9)=abb65(9)*abb65(37)*abb65(12)
      abb65(12)=-abb65(17)*abb65(9)
      abb65(37)=-abb65(12)*abb65(40)
      abb65(43)=abb65(37)*spbl4k2
      abb65(44)=spal3l4*spbk5l3
      abb65(45)=-abb65(44)*abb65(43)
      abb65(10)=-abb65(10)*abb65(11)
      abb65(11)=-spak1k5*abb65(17)*abb65(10)
      abb65(17)=abb65(11)*spak1l4
      abb65(46)=spbl4l3*spak2l3
      abb65(47)=abb65(46)*abb65(17)
      abb65(16)=abb65(47)+abb65(45)+abb65(16)+abb65(31)+abb65(29)+abb65(22)+abb&
      &65(42)
      abb65(16)=2.0_ki*abb65(16)
      abb65(22)=abb65(39)*abb65(36)
      abb65(29)=abb65(12)*spbl4k2
      abb65(31)=abb65(44)*abb65(29)
      abb65(22)=abb65(31)+abb65(22)
      abb65(22)=spak1k5*abb65(22)
      abb65(31)=3.0_ki*abb65(27)
      abb65(24)=abb65(24)*abb65(31)
      abb65(42)=abb65(21)*abb65(27)
      abb65(45)=abb65(21)*abb65(25)
      abb65(42)=abb65(42)+abb65(45)
      abb65(47)=-es12*abb65(42)
      abb65(45)=abb65(32)*abb65(45)
      abb65(48)=abb65(33)*spbl3k2
      abb65(21)=-abb65(21)*abb65(48)
      abb65(21)=abb65(21)+abb65(45)+abb65(47)+abb65(24)+2.0_ki*abb65(26)+abb65(&
      &22)
      abb65(21)=4.0_ki*abb65(21)
      abb65(22)=-16.0_ki*abb65(42)
      abb65(24)=abb65(25)+abb65(27)
      abb65(26)=abb65(13)*abb65(24)
      abb65(42)=abb65(20)*es51
      abb65(23)=abb65(42)-abb65(23)
      abb65(42)=abb65(23)*abb65(26)
      abb65(45)=abb65(18)*spak1k5
      abb65(42)=-3.0_ki*abb65(45)+abb65(42)
      abb65(42)=es12*abb65(42)
      abb65(47)=spbl3k2*spak2l3
      abb65(49)=abb65(47)+abb65(32)
      abb65(50)=abb65(45)*abb65(49)
      abb65(34)=abb65(34)+abb65(35)
      abb65(35)=abb65(38)*abb65(40)
      abb65(51)=-abb65(35)*abb65(34)
      abb65(40)=abb65(18)*abb65(40)
      abb65(40)=3.0_ki*abb65(40)+abb65(42)+abb65(51)+abb65(50)
      abb65(40)=2.0_ki*abb65(40)
      abb65(42)=-abb65(38)*spak1k5
      abb65(50)=abb65(42)*abb65(34)
      abb65(26)=es12*abb65(20)*abb65(26)
      abb65(26)=abb65(26)+abb65(50)
      abb65(26)=4.0_ki*abb65(26)
      abb65(50)=-abb65(25)-abb65(28)
      abb65(51)=abb65(19)*es34
      abb65(52)=abb65(19)*es51
      abb65(53)=abb65(51)-abb65(52)
      abb65(50)=abb65(50)*abb65(53)*abb65(18)
      abb65(54)=abb65(18)*abb65(19)
      abb65(55)=abb65(48)+1.0_ki
      abb65(56)=abb65(54)*abb65(55)
      abb65(15)=-abb65(15)+abb65(50)+abb65(56)
      abb65(15)=spak1k2*abb65(15)
      abb65(50)=abb65(12)*es34
      abb65(56)=abb65(12)*es51
      abb65(50)=abb65(50)-abb65(56)
      abb65(57)=-abb65(50)*abb65(36)
      abb65(58)=abb65(18)*spak1l4
      abb65(59)=-abb65(46)*abb65(58)
      abb65(15)=abb65(59)+abb65(57)+abb65(15)
      abb65(15)=2.0_ki*abb65(15)
      abb65(36)=abb65(12)*abb65(36)
      abb65(57)=abb65(24)*spak1k2
      abb65(54)=abb65(54)*abb65(57)
      abb65(36)=abb65(54)+abb65(36)
      abb65(36)=4.0_ki*abb65(36)
      abb65(54)=-abb65(9)*es34
      abb65(59)=-abb65(9)*es51
      abb65(54)=abb65(54)-abb65(59)
      abb65(60)=-abb65(54)*abb65(34)
      abb65(61)=-abb65(13)*abb65(53)
      abb65(24)=-abb65(61)*abb65(24)
      abb65(24)=2.0_ki*abb65(18)+abb65(24)
      abb65(24)=spak1k2*abb65(24)
      abb65(24)=abb65(24)+abb65(60)
      abb65(24)=2.0_ki*abb65(24)
      abb65(34)=-abb65(9)*abb65(34)
      abb65(60)=abb65(13)*abb65(19)
      abb65(57)=-abb65(60)*abb65(57)
      abb65(34)=abb65(57)+abb65(34)
      abb65(34)=4.0_ki*abb65(34)
      abb65(13)=2.0_ki*spak1k2*abb65(13)
      abb65(43)=2.0_ki*abb65(43)
      abb65(29)=-4.0_ki*spak1k5*abb65(29)
      abb65(57)=3.0_ki*spbk5l4
      abb65(62)=abb65(37)*abb65(57)
      abb65(63)=abb65(45)*abb65(46)
      abb65(62)=abb65(62)+abb65(63)
      abb65(62)=2.0_ki*abb65(62)
      abb65(63)=abb65(12)*spak1k5
      abb65(64)=-12.0_ki*spbk5l4*abb65(63)
      abb65(65)=4.0_ki*spbk5l3
      abb65(37)=abb65(37)*abb65(65)
      abb65(63)=-8.0_ki*spbk5l3*abb65(63)
      abb65(17)=2.0_ki*abb65(17)
      abb65(58)=-2.0_ki*abb65(58)
      abb65(45)=2.0_ki*abb65(45)
      abb65(41)=-6.0_ki*abb65(41)
      abb65(39)=12.0_ki*spak1k5*abb65(39)
      abb65(66)=2.0_ki*abb65(35)
      abb65(67)=4.0_ki*abb65(42)
      abb65(68)=-6.0_ki*abb65(50)
      abb65(69)=2.0_ki*abb65(54)
      abb65(70)=abb65(23)*abb65(10)
      abb65(71)=abb65(8)*abb65(70)
      abb65(70)=abb65(70)*abb65(25)
      abb65(70)=-3.0_ki*abb65(11)+abb65(70)
      abb65(70)=spak2l4*abb65(70)
      abb65(35)=-abb65(35)*abb65(44)
      abb65(35)=abb65(35)+abb65(71)+abb65(70)
      abb65(35)=2.0_ki*abb65(35)
      abb65(70)=abb65(25)*spak2l4
      abb65(70)=abb65(70)+abb65(8)
      abb65(10)=abb65(10)*abb65(20)*abb65(70)
      abb65(42)=abb65(44)*abb65(42)
      abb65(10)=abb65(42)+abb65(10)
      abb65(10)=4.0_ki*abb65(10)
      abb65(42)=-abb65(61)*abb65(25)
      abb65(42)=3.0_ki*abb65(18)+abb65(42)
      abb65(42)=spak2l4*abb65(42)
      abb65(71)=-abb65(54)*abb65(44)
      abb65(61)=-abb65(8)*abb65(61)
      abb65(42)=abb65(71)+abb65(61)+abb65(42)
      abb65(42)=2.0_ki*abb65(42)
      abb65(60)=-abb65(60)*abb65(70)
      abb65(61)=-abb65(9)*abb65(44)
      abb65(60)=abb65(61)+abb65(60)
      abb65(60)=4.0_ki*abb65(60)
      abb65(61)=4.0_ki*abb65(9)
      abb65(70)=4.0_ki*spak2l3
      abb65(11)=-abb65(11)*abb65(70)
      abb65(18)=abb65(18)*abb65(70)
      abb65(14)=abb65(14)*abb65(9)
      abb65(70)=abb65(12)*abb65(19)
      abb65(14)=-abb65(70)+3.0_ki*abb65(14)
      abb65(30)=es12-abb65(30)
      abb65(14)=abb65(14)*abb65(30)
      abb65(30)=abb65(70)*es12
      abb65(53)=-abb65(12)*abb65(53)
      abb65(30)=abb65(30)+abb65(53)
      abb65(53)=-abb65(25)*abb65(30)
      abb65(53)=-2.0_ki*abb65(56)+abb65(53)
      abb65(53)=abb65(53)*abb65(32)
      abb65(23)=abb65(38)*abb65(23)
      abb65(70)=spbk5l4*abb65(8)
      abb65(33)=abb65(33)*spbk5l3
      abb65(33)=abb65(70)+abb65(33)
      abb65(70)=abb65(23)*abb65(33)
      abb65(56)=-abb65(56)*abb65(47)
      abb65(71)=abb65(12)*spak2k5
      abb65(72)=abb65(71)*spbl4k2
      abb65(44)=-abb65(44)*abb65(72)
      abb65(14)=abb65(44)+abb65(56)+abb65(53)+abb65(70)+abb65(14)
      abb65(14)=2.0_ki*abb65(14)
      abb65(32)=-2.0_ki*abb65(32)-abb65(47)
      abb65(32)=4.0_ki*abb65(12)*abb65(32)
      abb65(25)=abb65(31)+2.0_ki*abb65(25)
      abb65(25)=abb65(25)*abb65(30)
      abb65(19)=-abb65(9)*abb65(19)
      abb65(30)=3.0_ki*abb65(12)+abb65(19)
      abb65(30)=es51*abb65(30)
      abb65(20)=-abb65(38)*abb65(20)
      abb65(31)=-abb65(20)*abb65(33)
      abb65(38)=-abb65(52)*abb65(9)
      abb65(44)=abb65(38)*abb65(48)
      abb65(25)=abb65(44)+abb65(30)+abb65(31)+abb65(25)
      abb65(25)=4.0_ki*abb65(25)
      abb65(30)=8.0_ki*abb65(19)*abb65(55)
      abb65(31)=-8.0_ki*abb65(27)*abb65(38)
      abb65(44)=abb65(19)*abb65(27)
      abb65(47)=-16.0_ki*abb65(44)
      abb65(48)=es12*abb65(12)
      abb65(48)=abb65(48)-abb65(50)
      abb65(50)=-abb65(59)*abb65(49)
      abb65(48)=2.0_ki*abb65(48)+abb65(50)
      abb65(48)=2.0_ki*abb65(48)
      abb65(49)=abb65(49)*abb65(61)
      abb65(50)=4.0_ki*abb65(59)
      abb65(52)=-es12*abb65(9)
      abb65(52)=abb65(52)-abb65(54)
      abb65(52)=2.0_ki*abb65(52)
      abb65(9)=-abb65(51)*abb65(9)
      abb65(9)=abb65(9)-abb65(38)
      abb65(38)=2.0_ki*abb65(9)*abb65(33)
      abb65(19)=-4.0_ki*abb65(19)*abb65(33)
      abb65(33)=2.0_ki*abb65(72)
      abb65(51)=-abb65(59)*abb65(46)
      abb65(53)=abb65(71)*abb65(57)
      abb65(51)=abb65(51)+abb65(53)
      abb65(51)=2.0_ki*abb65(51)
      abb65(46)=abb65(46)*abb65(61)
      abb65(53)=abb65(71)*abb65(65)
      abb65(23)=abb65(23)*abb65(28)
      abb65(20)=-4.0_ki*abb65(27)*abb65(20)
      abb65(9)=abb65(9)*abb65(27)
      abb65(9)=6.0_ki*abb65(12)+abb65(9)
      abb65(9)=2.0_ki*abb65(9)
      abb65(12)=-4.0_ki*abb65(44)
      abb65(27)=-2.0_ki*abb65(59)
      R2d65=0.0_ki
      rat2 = rat2 + R2d65
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='65' value='", &
          & R2d65, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd65h4
