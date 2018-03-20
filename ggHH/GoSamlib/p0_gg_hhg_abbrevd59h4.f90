module     p0_gg_hhg_abbrevd59h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh4
   implicit none
   private
   complex(ki), dimension(70), public :: abb59
   complex(ki), public :: R2d59
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
      abb59(1)=sqrt(mT**2)
      abb59(2)=sqrt2**(-1)
      abb59(3)=spbk2k1**(-1)
      abb59(4)=spbk5k2**(-1)
      abb59(5)=spak2l3**(-1)
      abb59(6)=spbl3k2**(-1)
      abb59(7)=c1-c2
      abb59(8)=i_*abb59(2)
      abb59(9)=abb59(8)*abb59(3)
      abb59(10)=abb59(7)*abb59(9)*abb59(4)
      abb59(11)=abb59(1)*gHT
      abb59(12)=abb59(11)**2
      abb59(13)=abb59(12)*abb59(10)
      abb59(14)=spak2l3*spak1k5
      abb59(15)=abb59(13)*abb59(14)
      abb59(16)=abb59(15)*spbl3k2
      abb59(17)=gHT**2
      abb59(10)=-abb59(17)*abb59(10)
      abb59(18)=abb59(1)**4
      abb59(19)=-abb59(18)*abb59(10)
      abb59(20)=abb59(19)*spak1k5
      abb59(21)=mH**2
      abb59(22)=abb59(21)*spak1k5
      abb59(23)=abb59(22)*abb59(13)
      abb59(24)=es12*spak1k5
      abb59(25)=abb59(13)*abb59(24)
      abb59(20)=-abb59(16)+abb59(25)-abb59(20)+abb59(23)
      abb59(26)=es51-es34
      abb59(20)=abb59(26)*abb59(20)
      abb59(27)=spbk5l3*spak1k5
      abb59(28)=abb59(27)*abb59(26)
      abb59(29)=2.0_ki*spbk5l3
      abb59(30)=abb59(29)*abb59(14)
      abb59(31)=-spbl3k2*abb59(30)
      abb59(32)=abb59(24)*spbk5l3
      abb59(28)=abb59(31)+abb59(32)+abb59(28)
      abb59(31)=-abb59(8)*abb59(7)
      abb59(11)=abb59(11)*abb59(4)
      abb59(11)=abb59(11)**2
      abb59(33)=-abb59(11)*abb59(31)
      abb59(34)=abb59(33)*spak1l3
      abb59(28)=abb59(28)*abb59(34)
      abb59(16)=abb59(16)-abb59(25)
      abb59(35)=spal3k5*spbk5l3
      abb59(36)=abb59(16)*abb59(35)
      abb59(37)=abb59(25)*abb59(21)
      abb59(38)=abb59(19)*abb59(24)
      abb59(20)=abb59(36)+abb59(28)+abb59(38)-abb59(37)+abb59(20)
      abb59(20)=2.0_ki*abb59(20)
      abb59(28)=-4.0_ki*abb59(16)
      abb59(36)=2.0_ki*abb59(13)
      abb59(38)=-spal3k5*abb59(36)
      abb59(34)=abb59(38)+4.0_ki*abb59(34)
      abb59(34)=abb59(27)*abb59(34)
      abb59(23)=-abb59(23)*abb59(26)
      abb59(23)=abb59(37)+abb59(23)
      abb59(37)=abb59(5)*abb59(6)
      abb59(23)=abb59(23)*abb59(37)
      abb59(38)=abb59(13)*spak1k5
      abb59(39)=2.0_ki*abb59(38)
      abb59(40)=abb59(39)*abb59(26)
      abb59(16)=abb59(23)+abb59(40)+abb59(34)-abb59(16)
      abb59(16)=4.0_ki*abb59(16)
      abb59(23)=16.0_ki*abb59(38)
      abb59(34)=abb59(10)*abb59(21)
      abb59(40)=abb59(37)*abb59(34)*abb59(24)
      abb59(41)=abb59(10)*abb59(24)
      abb59(38)=abb59(40)-abb59(38)-abb59(41)
      abb59(38)=abb59(26)*abb59(38)
      abb59(42)=abb59(17)*abb59(4)**2
      abb59(31)=-abb59(42)*abb59(31)
      abb59(43)=spak1l3*spbk5l3
      abb59(44)=abb59(43)*abb59(31)
      abb59(45)=abb59(24)*abb59(44)
      abb59(46)=abb59(41)*abb59(35)
      abb59(25)=abb59(46)+abb59(45)+2.0_ki*abb59(25)+abb59(38)
      abb59(25)=2.0_ki*abb59(25)
      abb59(38)=-4.0_ki*abb59(41)
      abb59(40)=-abb59(41)+abb59(40)
      abb59(40)=4.0_ki*abb59(40)
      abb59(41)=-2.0_ki*abb59(41)
      abb59(45)=abb59(21)-abb59(26)
      abb59(45)=abb59(13)*abb59(45)
      abb59(19)=-abb59(19)+abb59(45)
      abb59(19)=spak1k2*abb59(19)
      abb59(9)=-abb59(9)*abb59(7)
      abb59(11)=-abb59(11)*abb59(9)
      abb59(45)=abb59(11)*es12
      abb59(46)=abb59(11)*es34
      abb59(47)=abb59(45)-abb59(46)
      abb59(48)=abb59(11)*es51
      abb59(49)=abb59(47)+abb59(48)
      abb59(50)=spbl3k2*spak2l3
      abb59(51)=abb59(11)*abb59(50)
      abb59(52)=abb59(51)-abb59(49)
      abb59(52)=abb59(52)*abb59(43)
      abb59(53)=abb59(13)*spak1k2
      abb59(54)=abb59(35)*abb59(53)
      abb59(19)=abb59(54)+abb59(19)+abb59(52)
      abb59(19)=2.0_ki*abb59(19)
      abb59(52)=-4.0_ki*abb59(53)
      abb59(54)=abb59(37)*abb59(21)
      abb59(55)=-1.0_ki-abb59(54)
      abb59(53)=abb59(53)*abb59(55)
      abb59(55)=abb59(29)*abb59(11)
      abb59(56)=-spak1l3*abb59(55)
      abb59(53)=abb59(56)+abb59(53)
      abb59(53)=4.0_ki*abb59(53)
      abb59(56)=abb59(10)*abb59(26)
      abb59(57)=-abb59(34)*abb59(26)
      abb59(58)=abb59(57)*abb59(37)
      abb59(56)=abb59(58)+abb59(36)+abb59(56)
      abb59(56)=spak1k2*abb59(56)
      abb59(9)=-abb59(42)*abb59(9)
      abb59(42)=abb59(9)*es12
      abb59(43)=-abb59(42)*abb59(43)
      abb59(58)=abb59(10)*spak1k2
      abb59(59)=-abb59(35)*abb59(58)
      abb59(43)=abb59(59)+abb59(43)+abb59(56)
      abb59(43)=2.0_ki*abb59(43)
      abb59(56)=4.0_ki*abb59(58)
      abb59(59)=-spak1k2*abb59(34)*abb59(37)
      abb59(59)=abb59(58)+abb59(59)
      abb59(59)=4.0_ki*abb59(59)
      abb59(58)=2.0_ki*abb59(58)
      abb59(60)=abb59(48)-abb59(46)
      abb59(60)=abb59(27)*abb59(60)
      abb59(32)=-abb59(11)*abb59(32)
      abb59(32)=abb59(32)+abb59(60)
      abb59(32)=2.0_ki*abb59(32)
      abb59(60)=abb59(9)*abb59(29)
      abb59(61)=-abb59(24)*abb59(60)
      abb59(62)=spak1k2*abb59(55)
      abb59(63)=spak1k2*abb59(60)
      abb59(64)=2.0_ki*spak1k5
      abb59(65)=abb59(64)*abb59(26)
      abb59(66)=spbl3k2*abb59(14)
      abb59(65)=-3.0_ki*abb59(66)+abb59(24)+abb59(65)
      abb59(65)=2.0_ki*abb59(33)*abb59(65)
      abb59(33)=24.0_ki*spak1k5*abb59(33)
      abb59(66)=2.0_ki*abb59(31)
      abb59(24)=abb59(24)*abb59(66)
      abb59(46)=abb59(51)+abb59(46)
      abb59(48)=2.0_ki*abb59(48)
      abb59(46)=-abb59(48)-abb59(45)+2.0_ki*abb59(46)
      abb59(46)=2.0_ki*abb59(46)
      abb59(67)=-2.0_ki*abb59(42)
      abb59(8)=abb59(8)*abb59(4)
      abb59(17)=abb59(17)*abb59(7)*abb59(8)
      abb59(68)=abb59(26)-abb59(35)
      abb59(69)=abb59(17)*abb59(68)
      abb59(7)=abb59(8)*abb59(7)*abb59(12)
      abb59(8)=spbk2k1*abb59(44)
      abb59(7)=abb59(8)+abb59(7)+abb59(69)
      abb59(7)=abb59(14)*abb59(7)
      abb59(8)=abb59(6)*abb59(17)*abb59(22)
      abb59(12)=-abb59(26)*abb59(8)
      abb59(7)=abb59(12)+abb59(7)
      abb59(7)=2.0_ki*abb59(7)
      abb59(12)=abb59(17)*abb59(14)
      abb59(17)=4.0_ki*abb59(12)
      abb59(8)=abb59(12)-abb59(8)
      abb59(8)=4.0_ki*abb59(8)
      abb59(12)=2.0_ki*abb59(12)
      abb59(13)=-abb59(44)-abb59(13)
      abb59(13)=spak2l3*abb59(13)
      abb59(44)=abb59(10)*spak2l3
      abb59(68)=abb59(44)*abb59(68)
      abb59(57)=abb59(6)*abb59(57)
      abb59(13)=abb59(57)+abb59(68)+abb59(13)
      abb59(13)=2.0_ki*abb59(13)
      abb59(57)=4.0_ki*abb59(44)
      abb59(34)=abb59(34)*abb59(6)
      abb59(68)=abb59(44)-abb59(34)
      abb59(68)=4.0_ki*abb59(68)
      abb59(44)=2.0_ki*abb59(44)
      abb59(30)=-abb59(31)*abb59(30)
      abb59(31)=abb59(60)*spak2l3
      abb59(69)=spbk2k1*abb59(14)*abb59(66)
      abb59(66)=-spak2l3*abb59(66)
      abb59(70)=abb59(11)*abb59(21)
      abb59(18)=-abb59(18)*abb59(9)
      abb59(70)=abb59(70)+abb59(18)
      abb59(70)=-abb59(70)*abb59(26)
      abb59(47)=abb59(48)+abb59(47)
      abb59(48)=abb59(47)*abb59(50)
      abb59(18)=-es12*abb59(18)
      abb59(45)=-abb59(21)*abb59(45)
      abb59(35)=-abb59(35)*abb59(51)
      abb59(15)=spbl3k1*abb59(15)
      abb59(15)=abb59(15)+abb59(35)+abb59(48)+abb59(18)+abb59(45)+abb59(70)
      abb59(15)=2.0_ki*abb59(15)
      abb59(18)=8.0_ki*abb59(51)
      abb59(35)=abb59(49)*abb59(54)
      abb59(45)=spal3k5*abb59(55)
      abb59(22)=abb59(22)*abb59(10)
      abb59(48)=spbl3k1*abb59(6)*abb59(22)
      abb59(35)=abb59(48)+abb59(45)-2.0_ki*abb59(47)+abb59(35)
      abb59(35)=4.0_ki*abb59(35)
      abb59(14)=abb59(14)*spbl3k1
      abb59(45)=-abb59(10)*abb59(14)
      abb59(45)=-2.0_ki*abb59(49)+abb59(45)
      abb59(45)=2.0_ki*abb59(45)
      abb59(26)=abb59(26)*abb59(9)
      abb59(26)=abb59(26)+abb59(42)
      abb59(37)=4.0_ki*abb59(37)
      abb59(21)=-abb59(37)*abb59(21)*abb59(26)
      abb59(26)=2.0_ki*abb59(26)
      abb59(36)=-spak2l3*abb59(36)
      abb59(34)=-4.0_ki*abb59(34)
      abb59(14)=-abb59(9)*abb59(14)
      abb59(42)=-spak2k5*abb59(11)
      abb59(14)=abb59(14)+abb59(42)
      abb59(14)=abb59(14)*abb59(29)
      abb59(29)=-spak2k5*abb59(60)
      abb59(11)=-16.0_ki*abb59(11)
      abb59(22)=-abb59(22)*abb59(37)
      abb59(10)=abb59(10)*abb59(64)
      abb59(9)=2.0_ki*abb59(9)*abb59(27)
      R2d59=0.0_ki
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd59h4
