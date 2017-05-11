module p0_gg_hhg_abbrevd63h1_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(87), public :: abb63
   complex(ki), public :: R2d63
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
      abb63(1)=sqrt(mT**2)
      abb63(2)=sqrt2**(-1)
      abb63(3)=spak1k2**(-1)
      abb63(4)=spbk5k2**(-1)
      abb63(5)=spak2k5**(-1)
      abb63(6)=spbl4k2**(-1)
      abb63(7)=spak2l4**(-1)
      abb63(8)=spbk5l4**2
      abb63(9)=abb63(3)*c2
      abb63(10)=abb63(8)*abb63(9)
      abb63(11)=c1*abb63(3)
      abb63(12)=abb63(8)*abb63(11)
      abb63(10)=abb63(10)-abb63(12)
      abb63(13)=spak2l4**2
      abb63(10)=abb63(10)*abb63(13)
      abb63(14)=c1*spbk5l4
      abb63(15)=spbk5l4*c2
      abb63(16)=abb63(14)-abb63(15)
      abb63(17)=spbk5k1*spak2l4
      abb63(16)=abb63(16)*abb63(17)
      abb63(18)=-abb63(10)+abb63(16)
      abb63(19)=abb63(1)**2
      abb63(18)=spbk5k1*abb63(19)*abb63(18)
      abb63(20)=abb63(5)*spbk5k1
      abb63(21)=abb63(13)*abb63(20)
      abb63(21)=2.0_ki*abb63(21)
      abb63(22)=abb63(15)*spbl4k1
      abb63(23)=c1*spbl4k1
      abb63(24)=abb63(23)*spbk5l4
      abb63(25)=abb63(22)-abb63(24)
      abb63(21)=abb63(21)*abb63(25)
      abb63(25)=abb63(19)*abb63(21)
      abb63(18)=abb63(18)+abb63(25)
      abb63(25)=gHT**2*abb63(2)*i_
      abb63(26)=2.0_ki*abb63(25)
      abb63(27)=abb63(26)*abb63(4)
      abb63(18)=abb63(18)*abb63(27)
      abb63(28)=abb63(4)*abb63(5)
      abb63(29)=abb63(25)*abb63(28)
      abb63(30)=4.0_ki*abb63(29)
      abb63(31)=abb63(30)*spbk5k1
      abb63(32)=abb63(31)*abb63(13)
      abb63(24)=abb63(24)*abb63(32)
      abb63(33)=spbk5k1**2
      abb63(25)=4.0_ki*abb63(25)
      abb63(25)=abb63(25)*abb63(4)
      abb63(34)=abb63(33)*abb63(25)
      abb63(35)=spak2l4*spbk5l4
      abb63(36)=abb63(35)*c1
      abb63(37)=-abb63(36)*abb63(34)
      abb63(38)=mH**2
      abb63(39)=abb63(38)*abb63(6)
      abb63(40)=abb63(14)*abb63(39)
      abb63(41)=abb63(23)*spak1k2
      abb63(42)=abb63(41)*spak2l4
      abb63(43)=abb63(5)*abb63(42)
      abb63(43)=-abb63(40)+abb63(43)
      abb63(34)=abb63(43)*abb63(34)
      abb63(10)=abb63(10)+abb63(16)
      abb63(10)=spbk5k1*abb63(10)
      abb63(10)=abb63(10)-abb63(21)
      abb63(10)=abb63(10)*abb63(27)
      abb63(16)=abb63(17)*c2
      abb63(21)=abb63(8)*abb63(16)
      abb63(43)=abb63(17)*abb63(5)
      abb63(44)=-spak1k2*abb63(22)*abb63(43)
      abb63(21)=abb63(21)+abb63(44)
      abb63(21)=abb63(21)*abb63(27)
      abb63(44)=abb63(11)*spbk5l4
      abb63(45)=abb63(44)*abb63(19)
      abb63(46)=abb63(9)*spbk5l4
      abb63(47)=abb63(46)*abb63(19)
      abb63(48)=-abb63(47)+abb63(45)
      abb63(49)=2.0_ki*spak2l4
      abb63(48)=abb63(48)*abb63(49)
      abb63(50)=abb63(44)*abb63(39)
      abb63(51)=abb63(50)*es12
      abb63(52)=abb63(19)*c2
      abb63(53)=abb63(19)*c1
      abb63(54)=-abb63(52)+abb63(53)
      abb63(54)=spbk5k1*abb63(54)
      abb63(48)=abb63(54)+abb63(51)+abb63(48)
      abb63(48)=spbk5k1*abb63(48)
      abb63(54)=5.0_ki*abb63(19)
      abb63(55)=c2*spbl4k1
      abb63(56)=abb63(55)*abb63(54)
      abb63(57)=spbk5l4*spbl4k1*spal4k5
      abb63(58)=3.0_ki*abb63(19)
      abb63(59)=-es12-abb63(58)
      abb63(59)=spbl4k1*abb63(59)
      abb63(59)=abb63(59)+abb63(57)
      abb63(59)=c1*abb63(59)
      abb63(56)=abb63(56)+abb63(59)
      abb63(56)=abb63(56)*abb63(17)
      abb63(59)=2.0_ki*abb63(13)
      abb63(60)=abb63(59)*spbl4k1
      abb63(61)=-abb63(47)*abb63(60)
      abb63(56)=abb63(61)+abb63(56)
      abb63(56)=abb63(5)*abb63(56)
      abb63(48)=abb63(48)+abb63(56)
      abb63(48)=abb63(48)*abb63(27)
      abb63(56)=abb63(44)*spbl4k1
      abb63(61)=-abb63(13)*abb63(56)
      abb63(62)=abb63(17)*abb63(23)
      abb63(61)=abb63(61)+abb63(62)
      abb63(61)=abb63(61)*abb63(30)
      abb63(62)=abb63(46)+abb63(44)
      abb63(63)=spak2l4*abb63(62)
      abb63(64)=-spbk5k1*c1
      abb63(63)=abb63(63)+abb63(64)
      abb63(63)=spbk5k1*abb63(63)
      abb63(64)=abb63(55)-abb63(23)
      abb63(65)=-abb63(64)*abb63(43)
      abb63(63)=abb63(63)+abb63(65)
      abb63(63)=abb63(63)*abb63(25)
      abb63(65)=abb63(39)*c1
      abb63(66)=abb63(65)*abb63(7)
      abb63(67)=-spbk5k1*abb63(66)
      abb63(67)=abb63(50)+abb63(67)
      abb63(68)=abb63(25)*spbk5k1
      abb63(67)=abb63(67)*abb63(68)
      abb63(69)=abb63(30)*abb63(17)
      abb63(70)=-abb63(23)*abb63(69)
      abb63(60)=abb63(46)*abb63(60)
      abb63(71)=-abb63(55)+2.0_ki*abb63(23)
      abb63(71)=abb63(71)*abb63(17)
      abb63(60)=abb63(60)+abb63(71)
      abb63(60)=abb63(5)*abb63(60)
      abb63(71)=abb63(46)-abb63(44)
      abb63(49)=abb63(71)*abb63(49)
      abb63(71)=c1-c2
      abb63(72)=abb63(71)*spbk5k1
      abb63(49)=abb63(49)+abb63(72)
      abb63(49)=spbk5k1*abb63(49)
      abb63(49)=abb63(49)+abb63(60)
      abb63(49)=abb63(49)*abb63(27)
      abb63(60)=2.0_ki*abb63(29)
      abb63(73)=abb63(60)*abb63(13)
      abb63(74)=-abb63(12)*abb63(73)
      abb63(75)=abb63(9)*spak2l4
      abb63(8)=-abb63(8)*abb63(75)
      abb63(22)=spak2l4*abb63(22)
      abb63(76)=abb63(55)*spak1k2
      abb63(77)=-spbk5k1*abb63(76)
      abb63(22)=abb63(22)+abb63(77)
      abb63(22)=abb63(5)*abb63(22)
      abb63(77)=spbk5k1*abb63(15)
      abb63(8)=abb63(22)+abb63(8)+abb63(77)
      abb63(8)=abb63(8)*abb63(27)
      abb63(22)=-abb63(19)*abb63(9)
      abb63(77)=abb63(39)*abb63(7)
      abb63(78)=es12*abb63(77)
      abb63(78)=abb63(19)+abb63(78)
      abb63(78)=abb63(78)*abb63(11)
      abb63(22)=abb63(22)+abb63(78)
      abb63(22)=spbk5k1*abb63(22)
      abb63(78)=-spbl4k1*abb63(9)*abb63(58)
      abb63(79)=2.0_ki*abb63(19)
      abb63(79)=spbl4k1*abb63(79)
      abb63(57)=abb63(79)-abb63(57)
      abb63(57)=abb63(57)*abb63(11)
      abb63(57)=abb63(78)+abb63(57)
      abb63(57)=spak2l4*abb63(57)
      abb63(78)=spbk5k1*spal4k5
      abb63(23)=abb63(23)*abb63(78)
      abb63(23)=abb63(57)+abb63(23)
      abb63(23)=abb63(5)*abb63(23)
      abb63(57)=-spbk2k1*abb63(50)
      abb63(22)=abb63(23)+abb63(57)+abb63(22)
      abb63(22)=abb63(22)*abb63(27)
      abb63(23)=abb63(30)*spak2l4
      abb63(57)=-spbl4k1*abb63(11)*abb63(23)
      abb63(79)=abb63(5)*spbl4k1
      abb63(80)=abb63(79)*abb63(75)
      abb63(81)=abb63(9)+abb63(11)
      abb63(81)=spbk5k1*abb63(81)
      abb63(81)=abb63(81)+abb63(80)
      abb63(25)=abb63(81)*abb63(25)
      abb63(68)=abb63(11)*abb63(77)*abb63(68)
      abb63(81)=abb63(9)-abb63(11)
      abb63(81)=spbk5k1*abb63(81)
      abb63(80)=abb63(81)+abb63(80)
      abb63(80)=abb63(80)*abb63(27)
      abb63(81)=abb63(44)*spak2l4
      abb63(82)=-abb63(60)*abb63(81)
      abb63(55)=abb63(5)*abb63(55)
      abb63(55)=-abb63(46)+abb63(55)
      abb63(55)=abb63(55)*abb63(27)
      abb63(83)=-spbk2k1*abb63(77)
      abb63(79)=-spal4k5*abb63(79)
      abb63(79)=abb63(83)+abb63(79)
      abb63(27)=abb63(27)*abb63(11)*abb63(79)
      abb63(45)=abb63(47)+abb63(45)
      abb63(45)=abb63(45)*abb63(13)
      abb63(79)=-c2*abb63(58)
      abb63(79)=abb63(79)+abb63(53)
      abb63(79)=abb63(79)*abb63(17)
      abb63(45)=abb63(45)+abb63(79)
      abb63(79)=abb63(60)*spbk5k1
      abb63(45)=abb63(45)*abb63(79)
      abb63(32)=abb63(32)*abb63(46)
      abb63(71)=-abb63(71)*abb63(33)*abb63(23)
      abb63(83)=c2*abb63(39)
      abb63(65)=abb63(83)-abb63(65)
      abb63(33)=abb63(65)*abb63(33)*abb63(30)
      abb63(62)=-abb63(62)*abb63(13)
      abb63(16)=abb63(62)-abb63(16)
      abb63(16)=abb63(16)*abb63(79)
      abb63(62)=abb63(39)*abb63(9)
      abb63(65)=abb63(39)*abb63(11)
      abb63(83)=-abb63(62)+abb63(65)
      abb63(83)=es12*abb63(83)
      abb63(84)=-spal4k5*abb63(15)
      abb63(52)=2.0_ki*abb63(52)+abb63(84)
      abb63(52)=abb63(3)*abb63(52)
      abb63(84)=-abb63(19)*abb63(11)
      abb63(52)=abb63(52)+abb63(84)
      abb63(52)=spak2l4*abb63(52)
      abb63(52)=abb63(52)+abb63(83)
      abb63(52)=abb63(52)*abb63(79)
      abb63(69)=abb63(69)*abb63(9)
      abb63(79)=-abb63(31)*abb63(62)
      abb63(17)=-abb63(11)*abb63(17)*abb63(60)
      abb63(62)=spbk2k1*abb63(62)
      abb63(78)=-abb63(9)*abb63(78)
      abb63(62)=abb63(62)+abb63(78)
      abb63(62)=abb63(62)*abb63(60)
      abb63(58)=-abb63(15)*abb63(58)
      abb63(78)=spbl4k1*spak1l4
      abb63(54)=abb63(54)+abb63(78)
      abb63(54)=abb63(54)*abb63(14)
      abb63(54)=abb63(58)+abb63(54)
      abb63(54)=spak2l4*abb63(54)
      abb63(58)=abb63(15)*abb63(39)
      abb63(83)=es34-es51
      abb63(84)=abb63(83)-es12
      abb63(85)=-abb63(84)*abb63(58)
      abb63(86)=c2*spak1k2
      abb63(87)=abb63(19)*abb63(86)
      abb63(53)=-spak1k2*abb63(53)
      abb63(53)=abb63(87)+abb63(53)
      abb63(53)=spbk5k1*abb63(53)
      abb63(53)=abb63(53)+abb63(85)+abb63(54)
      abb63(53)=spbk5k1*abb63(53)
      abb63(54)=abb63(59)*abb63(12)
      abb63(59)=-abb63(19)*abb63(54)
      abb63(53)=abb63(59)+abb63(53)
      abb63(53)=abb63(53)*abb63(28)
      abb63(41)=-abb63(76)+abb63(41)
      abb63(41)=abb63(39)*abb63(41)
      abb63(41)=-abb63(42)+abb63(41)
      abb63(20)=abb63(41)*abb63(20)
      abb63(20)=abb63(20)+abb63(53)
      abb63(20)=abb63(20)*abb63(26)
      abb63(13)=abb63(12)*abb63(13)
      abb63(41)=abb63(30)*abb63(13)
      abb63(14)=-abb63(15)+2.0_ki*abb63(14)
      abb63(14)=abb63(14)*spak2l4
      abb63(15)=c1*spak1k2
      abb63(15)=abb63(15)-abb63(86)
      abb63(15)=abb63(15)*spbk5k1
      abb63(14)=abb63(14)+abb63(15)
      abb63(15)=-abb63(14)*abb63(31)
      abb63(36)=abb63(36)-abb63(40)
      abb63(40)=abb63(86)*abb63(77)
      abb63(42)=-spak1k2*abb63(66)
      abb63(40)=abb63(40)+abb63(42)
      abb63(40)=spbk5k1*abb63(40)
      abb63(40)=abb63(40)+abb63(58)+2.0_ki*abb63(36)
      abb63(31)=abb63(40)*abb63(31)
      abb63(13)=-8.0_ki*abb63(29)*abb63(13)
      abb63(14)=spbk5k1*abb63(14)
      abb63(14)=abb63(54)+abb63(14)
      abb63(14)=abb63(14)*abb63(60)
      abb63(29)=-es12-6.0_ki*abb63(19)
      abb63(29)=abb63(29)*abb63(44)
      abb63(29)=5.0_ki*abb63(47)+abb63(29)
      abb63(29)=spak2l4*abb63(29)
      abb63(40)=abb63(6)*abb63(7)
      abb63(42)=abb63(40)*es12
      abb63(42)=abb63(42)-1.0_ki
      abb63(42)=abb63(42)*abb63(38)
      abb63(47)=spak2l4*spbl4k2
      abb63(42)=abb63(47)+abb63(42)+abb63(78)
      abb63(47)=9.0_ki*abb63(19)
      abb63(53)=abb63(47)+abb63(42)
      abb63(53)=c1*abb63(53)
      abb63(40)=abb63(83)*abb63(40)
      abb63(40)=abb63(40)-1.0_ki
      abb63(38)=abb63(40)*abb63(38)
      abb63(40)=-abb63(47)-abb63(38)
      abb63(40)=c2*abb63(40)
      abb63(40)=abb63(40)+abb63(53)
      abb63(40)=spbk5k1*abb63(40)
      abb63(47)=abb63(46)*abb63(39)
      abb63(53)=abb63(84)*abb63(47)
      abb63(29)=abb63(40)+abb63(29)+abb63(53)+abb63(51)
      abb63(29)=abb63(29)*abb63(28)
      abb63(39)=abb63(5)*abb63(39)*abb63(64)
      abb63(29)=abb63(39)+abb63(29)
      abb63(29)=abb63(29)*abb63(26)
      abb63(23)=abb63(23)*abb63(44)
      abb63(39)=-abb63(46)+2.0_ki*abb63(44)
      abb63(39)=spak2l4*abb63(39)
      abb63(39)=abb63(39)+abb63(72)
      abb63(39)=abb63(39)*abb63(30)
      abb63(40)=-c2*abb63(77)
      abb63(40)=abb63(40)+abb63(66)
      abb63(40)=spbk5k1*abb63(40)
      abb63(40)=abb63(40)-abb63(81)-abb63(47)+abb63(50)
      abb63(30)=abb63(40)*abb63(30)
      abb63(35)=abb63(9)*abb63(35)
      abb63(35)=abb63(35)-abb63(72)
      abb63(35)=abb63(35)*abb63(60)
      abb63(19)=8.0_ki*abb63(19)
      abb63(40)=-abb63(19)-abb63(42)
      abb63(11)=abb63(11)*abb63(40)
      abb63(19)=abb63(19)+abb63(38)
      abb63(9)=abb63(19)*abb63(9)
      abb63(9)=abb63(9)+abb63(11)
      abb63(9)=abb63(9)*abb63(60)
      abb63(11)=-c2*abb63(26)*abb63(43)
      abb63(19)=abb63(65)+abb63(75)
      abb63(19)=abb63(5)*abb63(19)*abb63(26)
      abb63(36)=-abb63(5)*abb63(36)
      abb63(12)=spak2l4*spak1l4*abb63(28)*abb63(12)
      abb63(12)=abb63(36)+abb63(12)
      abb63(12)=abb63(12)*abb63(26)
      abb63(26)=-abb63(73)*abb63(56)
      R2d63=0.0_ki
      rat2 = rat2 + R2d63
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='63' value='", &
          & R2d63, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd63h1_qp
