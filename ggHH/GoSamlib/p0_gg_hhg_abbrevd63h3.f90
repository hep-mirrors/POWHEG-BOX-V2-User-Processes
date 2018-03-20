module     p0_gg_hhg_abbrevd63h3
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh3
   implicit none
   private
   complex(ki), dimension(70), public :: abb63
   complex(ki), public :: R2d63
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
      abb63(1)=sqrt(mT**2)
      abb63(2)=sqrt2**(-1)
      abb63(3)=spak1k2**(-1)
      abb63(4)=spak2k5**(-1)
      abb63(5)=spak2l4**(-1)
      abb63(6)=spbl4k2**(-1)
      abb63(7)=c1-c2
      abb63(8)=i_*abb63(2)
      abb63(9)=abb63(8)*abb63(3)
      abb63(10)=abb63(7)*abb63(9)*abb63(4)
      abb63(11)=abb63(1)*gHT
      abb63(12)=abb63(11)**2
      abb63(13)=abb63(12)*abb63(10)
      abb63(14)=spbl4k2*spbk5k1
      abb63(15)=abb63(13)*abb63(14)
      abb63(16)=abb63(15)*spak2l4
      abb63(17)=gHT**2
      abb63(10)=-abb63(17)*abb63(10)
      abb63(18)=abb63(1)**4
      abb63(19)=-abb63(18)*abb63(10)
      abb63(20)=abb63(19)*spbk5k1
      abb63(21)=mH**2
      abb63(22)=abb63(21)*spbk5k1
      abb63(23)=abb63(22)*abb63(13)
      abb63(24)=es12*spbk5k1
      abb63(25)=abb63(13)*abb63(24)
      abb63(20)=-abb63(16)+abb63(25)-abb63(20)+abb63(23)
      abb63(26)=es51-es34
      abb63(20)=abb63(26)*abb63(20)
      abb63(27)=spal4k5*spbk5k1
      abb63(28)=abb63(27)*abb63(26)
      abb63(29)=2.0_ki*spal4k5
      abb63(30)=abb63(29)*abb63(14)
      abb63(31)=-spak2l4*abb63(30)
      abb63(32)=abb63(24)*spal4k5
      abb63(28)=abb63(31)+abb63(32)+abb63(28)
      abb63(31)=-abb63(8)*abb63(7)
      abb63(11)=abb63(11)*abb63(4)
      abb63(11)=abb63(11)**2
      abb63(33)=-abb63(11)*abb63(31)
      abb63(34)=abb63(33)*spbl4k1
      abb63(28)=abb63(28)*abb63(34)
      abb63(16)=abb63(16)-abb63(25)
      abb63(35)=spbk5l4*spal4k5
      abb63(36)=abb63(16)*abb63(35)
      abb63(37)=abb63(25)*abb63(21)
      abb63(38)=abb63(19)*abb63(24)
      abb63(20)=abb63(36)+abb63(28)+abb63(38)-abb63(37)+abb63(20)
      abb63(20)=2.0_ki*abb63(20)
      abb63(28)=-4.0_ki*abb63(16)
      abb63(36)=2.0_ki*abb63(13)
      abb63(38)=-spbk5l4*abb63(36)
      abb63(34)=abb63(38)+4.0_ki*abb63(34)
      abb63(34)=abb63(27)*abb63(34)
      abb63(23)=-abb63(23)*abb63(26)
      abb63(23)=abb63(37)+abb63(23)
      abb63(37)=abb63(6)*abb63(5)
      abb63(23)=abb63(23)*abb63(37)
      abb63(38)=abb63(13)*spbk5k1
      abb63(39)=2.0_ki*abb63(38)
      abb63(40)=abb63(39)*abb63(26)
      abb63(16)=abb63(23)+abb63(40)+abb63(34)-abb63(16)
      abb63(16)=4.0_ki*abb63(16)
      abb63(23)=16.0_ki*abb63(38)
      abb63(34)=abb63(10)*abb63(21)
      abb63(40)=abb63(37)*abb63(34)*abb63(24)
      abb63(41)=abb63(10)*abb63(24)
      abb63(38)=abb63(40)-abb63(38)-abb63(41)
      abb63(38)=abb63(26)*abb63(38)
      abb63(42)=abb63(17)*abb63(4)**2
      abb63(31)=-abb63(42)*abb63(31)
      abb63(43)=spbl4k1*spal4k5
      abb63(44)=abb63(43)*abb63(31)
      abb63(45)=abb63(24)*abb63(44)
      abb63(46)=abb63(41)*abb63(35)
      abb63(25)=abb63(46)+abb63(45)+2.0_ki*abb63(25)+abb63(38)
      abb63(25)=2.0_ki*abb63(25)
      abb63(38)=-4.0_ki*abb63(41)
      abb63(40)=-abb63(41)+abb63(40)
      abb63(40)=4.0_ki*abb63(40)
      abb63(41)=-2.0_ki*abb63(41)
      abb63(45)=2.0_ki*spbk5k1
      abb63(46)=abb63(45)*abb63(26)
      abb63(47)=spak2l4*abb63(14)
      abb63(46)=-3.0_ki*abb63(47)+abb63(24)+abb63(46)
      abb63(46)=2.0_ki*abb63(33)*abb63(46)
      abb63(33)=24.0_ki*spbk5k1*abb63(33)
      abb63(47)=2.0_ki*abb63(31)
      abb63(48)=abb63(24)*abb63(47)
      abb63(8)=abb63(8)*abb63(4)
      abb63(17)=abb63(17)*abb63(7)*abb63(8)
      abb63(49)=abb63(26)-abb63(35)
      abb63(50)=abb63(17)*abb63(49)
      abb63(8)=abb63(8)*abb63(7)*abb63(12)
      abb63(12)=spak1k2*abb63(44)
      abb63(8)=abb63(12)+abb63(8)+abb63(50)
      abb63(8)=abb63(14)*abb63(8)
      abb63(12)=abb63(5)*abb63(17)*abb63(22)
      abb63(50)=-abb63(26)*abb63(12)
      abb63(8)=abb63(50)+abb63(8)
      abb63(8)=2.0_ki*abb63(8)
      abb63(17)=abb63(17)*abb63(14)
      abb63(50)=4.0_ki*abb63(17)
      abb63(12)=abb63(17)-abb63(12)
      abb63(12)=4.0_ki*abb63(12)
      abb63(17)=2.0_ki*abb63(17)
      abb63(51)=spak1k2*abb63(14)*abb63(47)
      abb63(52)=abb63(21)-abb63(26)
      abb63(52)=abb63(13)*abb63(52)
      abb63(19)=-abb63(19)+abb63(52)
      abb63(19)=spbk2k1*abb63(19)
      abb63(7)=-abb63(9)*abb63(7)
      abb63(9)=-abb63(11)*abb63(7)
      abb63(11)=abb63(9)*es12
      abb63(52)=abb63(9)*es34
      abb63(53)=abb63(11)-abb63(52)
      abb63(54)=abb63(9)*es51
      abb63(55)=abb63(53)+abb63(54)
      abb63(56)=spak2l4*spbl4k2
      abb63(57)=abb63(9)*abb63(56)
      abb63(58)=abb63(57)-abb63(55)
      abb63(58)=abb63(58)*abb63(43)
      abb63(59)=abb63(13)*spbk2k1
      abb63(60)=abb63(35)*abb63(59)
      abb63(19)=abb63(60)+abb63(19)+abb63(58)
      abb63(19)=2.0_ki*abb63(19)
      abb63(58)=-4.0_ki*abb63(59)
      abb63(60)=abb63(37)*abb63(21)
      abb63(61)=-1.0_ki-abb63(60)
      abb63(59)=abb63(59)*abb63(61)
      abb63(61)=abb63(29)*abb63(9)
      abb63(62)=-spbl4k1*abb63(61)
      abb63(59)=abb63(62)+abb63(59)
      abb63(59)=4.0_ki*abb63(59)
      abb63(62)=abb63(10)*abb63(26)
      abb63(63)=-abb63(34)*abb63(26)
      abb63(64)=abb63(63)*abb63(37)
      abb63(62)=abb63(64)+abb63(36)+abb63(62)
      abb63(62)=spbk2k1*abb63(62)
      abb63(7)=-abb63(42)*abb63(7)
      abb63(42)=abb63(7)*es12
      abb63(43)=-abb63(42)*abb63(43)
      abb63(64)=abb63(10)*spbk2k1
      abb63(65)=-abb63(35)*abb63(64)
      abb63(43)=abb63(65)+abb63(43)+abb63(62)
      abb63(43)=2.0_ki*abb63(43)
      abb63(62)=4.0_ki*abb63(64)
      abb63(65)=-spbk2k1*abb63(34)*abb63(37)
      abb63(65)=abb63(64)+abb63(65)
      abb63(65)=4.0_ki*abb63(65)
      abb63(64)=2.0_ki*abb63(64)
      abb63(66)=abb63(57)+abb63(52)
      abb63(67)=2.0_ki*abb63(54)
      abb63(66)=-abb63(67)-abb63(11)+2.0_ki*abb63(66)
      abb63(66)=2.0_ki*abb63(66)
      abb63(68)=-2.0_ki*abb63(42)
      abb63(13)=-abb63(44)-abb63(13)
      abb63(13)=spbl4k2*abb63(13)
      abb63(44)=abb63(10)*spbl4k2
      abb63(49)=abb63(44)*abb63(49)
      abb63(63)=abb63(5)*abb63(63)
      abb63(13)=abb63(63)+abb63(49)+abb63(13)
      abb63(13)=2.0_ki*abb63(13)
      abb63(49)=4.0_ki*abb63(44)
      abb63(34)=abb63(34)*abb63(5)
      abb63(63)=abb63(44)-abb63(34)
      abb63(63)=4.0_ki*abb63(63)
      abb63(44)=2.0_ki*abb63(44)
      abb63(47)=-spbl4k2*abb63(47)
      abb63(52)=abb63(54)-abb63(52)
      abb63(52)=abb63(27)*abb63(52)
      abb63(32)=-abb63(9)*abb63(32)
      abb63(32)=abb63(32)+abb63(52)
      abb63(32)=2.0_ki*abb63(32)
      abb63(52)=abb63(7)*abb63(29)
      abb63(24)=-abb63(24)*abb63(52)
      abb63(30)=-abb63(31)*abb63(30)
      abb63(31)=spbk2k1*abb63(61)
      abb63(54)=spbk2k1*abb63(52)
      abb63(69)=abb63(52)*spbl4k2
      abb63(70)=abb63(9)*abb63(21)
      abb63(18)=-abb63(18)*abb63(7)
      abb63(70)=abb63(70)+abb63(18)
      abb63(70)=-abb63(70)*abb63(26)
      abb63(53)=abb63(67)+abb63(53)
      abb63(56)=abb63(53)*abb63(56)
      abb63(18)=-es12*abb63(18)
      abb63(11)=-abb63(21)*abb63(11)
      abb63(35)=-abb63(35)*abb63(57)
      abb63(15)=spak1l4*abb63(15)
      abb63(11)=abb63(15)+abb63(35)+abb63(56)+abb63(18)+abb63(11)+abb63(70)
      abb63(11)=2.0_ki*abb63(11)
      abb63(15)=8.0_ki*abb63(57)
      abb63(18)=abb63(55)*abb63(60)
      abb63(35)=spbk5l4*abb63(61)
      abb63(22)=abb63(22)*abb63(10)
      abb63(56)=spak1l4*abb63(5)*abb63(22)
      abb63(18)=abb63(56)+abb63(35)-2.0_ki*abb63(53)+abb63(18)
      abb63(18)=4.0_ki*abb63(18)
      abb63(14)=abb63(14)*spak1l4
      abb63(35)=-abb63(10)*abb63(14)
      abb63(35)=-2.0_ki*abb63(55)+abb63(35)
      abb63(35)=2.0_ki*abb63(35)
      abb63(26)=abb63(26)*abb63(7)
      abb63(26)=abb63(26)+abb63(42)
      abb63(37)=4.0_ki*abb63(37)
      abb63(21)=-abb63(37)*abb63(21)*abb63(26)
      abb63(26)=2.0_ki*abb63(26)
      abb63(36)=-spbl4k2*abb63(36)
      abb63(34)=-4.0_ki*abb63(34)
      abb63(42)=-16.0_ki*abb63(9)
      abb63(14)=-abb63(7)*abb63(14)
      abb63(9)=-spbk5k2*abb63(9)
      abb63(9)=abb63(14)+abb63(9)
      abb63(9)=abb63(9)*abb63(29)
      abb63(14)=-spbk5k2*abb63(52)
      abb63(22)=-abb63(22)*abb63(37)
      abb63(10)=abb63(10)*abb63(45)
      abb63(7)=2.0_ki*abb63(7)*abb63(27)
      R2d63=0.0_ki
      rat2 = rat2 + R2d63
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='63' value='", &
          & R2d63, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd63h3
