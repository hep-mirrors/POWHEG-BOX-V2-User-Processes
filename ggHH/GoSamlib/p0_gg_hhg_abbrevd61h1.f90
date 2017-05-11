module     p0_gg_hhg_abbrevd61h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(68), public :: abb61
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
      abb61(4)=spbk5k2**(-1)
      abb61(5)=spak2l3**(-1)
      abb61(6)=spbl3k2**(-1)
      abb61(7)=spak1k2**(-1)
      abb61(8)=spak2l4**(-1)
      abb61(9)=spbl4k2**(-1)
      abb61(10)=gHT**2*i_*abb61(3)
      abb61(11)=abb61(10)*c2
      abb61(12)=abb61(4)*abb61(2)
      abb61(13)=abb61(11)*abb61(12)
      abb61(14)=spbk5k1**2
      abb61(15)=abb61(13)*abb61(14)
      abb61(12)=abb61(10)*abb61(12)*c1
      abb61(14)=abb61(14)*abb61(12)
      abb61(16)=abb61(15)-abb61(14)
      abb61(17)=abb61(16)*spak1k2
      abb61(18)=spbl4k1*spak2l4
      abb61(19)=abb61(1)**2
      abb61(20)=-abb61(19)*abb61(18)
      abb61(21)=abb61(19)*spak2l3
      abb61(22)=abb61(21)*spbl3k1
      abb61(20)=abb61(20)-2.0_ki*abb61(22)
      abb61(20)=abb61(17)*abb61(20)
      abb61(23)=spbl4l3*spak2l3
      abb61(24)=abb61(23)*spak2l4
      abb61(25)=abb61(24)*abb61(16)
      abb61(26)=-abb61(19)*abb61(25)
      abb61(20)=abb61(26)+abb61(20)
      abb61(20)=2.0_ki*abb61(20)
      abb61(26)=abb61(14)*spak1k2
      abb61(27)=4.0_ki*abb61(26)
      abb61(28)=abb61(27)*spbl3k1*spak2l3
      abb61(27)=-abb61(18)*abb61(27)
      abb61(29)=abb61(26)*spbl3k1
      abb61(30)=mH**2
      abb61(31)=abb61(30)*abb61(6)
      abb61(32)=-abb61(31)*abb61(29)
      abb61(33)=abb61(31)*abb61(5)
      abb61(34)=abb61(33)*spak2l4
      abb61(35)=abb61(34)*spbl4k1
      abb61(26)=-abb61(26)*abb61(35)
      abb61(26)=abb61(32)+abb61(26)
      abb61(26)=4.0_ki*abb61(26)
      abb61(24)=-4.0_ki*abb61(15)*abb61(24)
      abb61(32)=-abb61(18)*abb61(17)
      abb61(25)=abb61(25)+abb61(32)
      abb61(25)=2.0_ki*abb61(25)
      abb61(32)=abb61(13)*spbk5k1
      abb61(36)=abb61(12)*spbk5k1
      abb61(37)=abb61(32)-abb61(36)
      abb61(38)=abb61(37)*abb61(19)
      abb61(39)=abb61(7)*spak2l4
      abb61(40)=abb61(23)*abb61(39)
      abb61(41)=abb61(40)*abb61(38)
      abb61(42)=2.0_ki*abb61(32)
      abb61(43)=abb61(42)-abb61(36)
      abb61(22)=abb61(43)*abb61(22)
      abb61(22)=abb61(41)+abb61(22)
      abb61(22)=2.0_ki*abb61(22)
      abb61(41)=abb61(36)*spbl3k1
      abb61(44)=abb61(41)*spak2l3
      abb61(45)=-4.0_ki*abb61(44)
      abb61(46)=4.0_ki*abb61(18)
      abb61(46)=abb61(36)*abb61(46)
      abb61(47)=abb61(31)*abb61(41)
      abb61(35)=abb61(36)*abb61(35)
      abb61(35)=abb61(47)+abb61(35)
      abb61(35)=4.0_ki*abb61(35)
      abb61(32)=4.0_ki*abb61(32)
      abb61(47)=abb61(40)*abb61(32)
      abb61(18)=2.0_ki*abb61(18)-abb61(40)
      abb61(18)=abb61(37)*abb61(18)
      abb61(18)=-abb61(44)+abb61(18)
      abb61(18)=2.0_ki*abb61(18)
      abb61(44)=abb61(39)*abb61(13)
      abb61(48)=2.0_ki*abb61(44)
      abb61(49)=abb61(48)*spbl4k1
      abb61(50)=abb61(19)*abb61(49)
      abb61(29)=spal3l4*abb61(29)
      abb61(51)=es12*abb61(14)*abb61(34)
      abb61(29)=abb61(29)+abb61(51)
      abb61(29)=2.0_ki*abb61(29)
      abb61(51)=-es12*abb61(33)
      abb61(51)=abb61(51)-abb61(19)
      abb61(51)=abb61(39)*abb61(36)*abb61(51)
      abb61(41)=-spal3l4*abb61(41)
      abb61(41)=abb61(41)+abb61(51)
      abb61(41)=2.0_ki*abb61(41)
      abb61(51)=2.0_ki*abb61(36)
      abb61(52)=abb61(39)*abb61(51)
      abb61(14)=2.0_ki*abb61(14)
      abb61(53)=abb61(31)*es12
      abb61(21)=-abb61(21)+abb61(53)
      abb61(21)=abb61(21)*abb61(14)
      abb61(14)=spak2l3*abb61(14)
      abb61(53)=-abb61(7)*abb61(51)*abb61(53)
      abb61(54)=3.0_ki*abb61(37)
      abb61(55)=spbk5l4*spak2l4
      abb61(56)=-abb61(54)*abb61(55)
      abb61(32)=5.0_ki*abb61(36)-abb61(32)
      abb61(57)=spbk5l3*spak2l3
      abb61(32)=abb61(32)*abb61(57)
      abb61(32)=abb61(32)+abb61(56)
      abb61(32)=abb61(19)*abb61(32)
      abb61(56)=abb61(34)*spbl4k2
      abb61(58)=spak1k2*abb61(56)
      abb61(59)=spak1l3*spbl4l3
      abb61(60)=spak2l4*abb61(59)
      abb61(58)=abb61(60)+abb61(58)
      abb61(58)=abb61(15)*abb61(58)
      abb61(16)=abb61(16)*abb61(19)
      abb61(15)=abb61(30)*abb61(15)
      abb61(15)=abb61(15)+3.0_ki*abb61(16)
      abb61(15)=spak1k2*abb61(15)
      abb61(15)=abb61(15)+abb61(58)+abb61(32)
      abb61(15)=2.0_ki*abb61(15)
      abb61(16)=abb61(57)*abb61(36)
      abb61(32)=8.0_ki*abb61(16)
      abb61(58)=-abb61(51)*abb61(55)
      abb61(58)=-abb61(17)+abb61(58)
      abb61(58)=4.0_ki*abb61(58)
      abb61(60)=abb61(8)*abb61(30)*abb61(9)
      abb61(61)=abb61(60)*abb61(57)
      abb61(62)=abb61(31)*spbk5l3
      abb61(63)=abb61(61)-abb61(62)
      abb61(63)=abb61(36)*abb61(63)
      abb61(64)=-abb61(33)*abb61(17)
      abb61(65)=-spbk5l4*abb61(34)*abb61(51)
      abb61(63)=abb61(64)+abb61(65)+abb61(63)
      abb61(63)=4.0_ki*abb61(63)
      abb61(37)=-abb61(37)*abb61(55)
      abb61(16)=-abb61(16)+abb61(17)+abb61(37)
      abb61(16)=2.0_ki*abb61(16)
      abb61(17)=-abb61(23)*abb61(51)
      abb61(37)=2.0_ki*abb61(12)
      abb61(51)=-abb61(37)+3.0_ki*abb61(13)
      abb61(55)=abb61(39)*spbk5l4
      abb61(51)=abb61(51)*abb61(55)
      abb61(64)=abb61(13)-abb61(12)
      abb61(64)=abb61(64)*abb61(7)
      abb61(65)=4.0_ki*abb61(64)
      abb61(66)=abb61(57)*abb61(65)
      abb61(51)=abb61(66)+abb61(51)
      abb61(51)=abb61(19)*abb61(51)
      abb61(39)=-abb61(39)*abb61(59)
      abb61(39)=abb61(39)-abb61(56)
      abb61(39)=abb61(42)*abb61(39)
      abb61(56)=abb61(13)*spal3l4
      abb61(59)=abb61(56)*spbk5l4
      abb61(60)=abb61(60)*spak2l3
      abb61(11)=abb61(11)*abb61(2)
      abb61(66)=abb61(60)*abb61(11)
      abb61(59)=abb61(59)-abb61(66)
      abb61(66)=-abb61(31)*abb61(11)
      abb61(66)=abb61(66)+abb61(59)
      abb61(66)=spbl3k1*abb61(66)
      abb61(43)=-abb61(43)*abb61(30)
      abb61(44)=abb61(44)*abb61(33)
      abb61(67)=spbk5l4*abb61(44)
      abb61(68)=abb61(7)*abb61(13)*abb61(62)
      abb61(67)=abb61(67)+abb61(68)
      abb61(67)=es12*abb61(67)
      abb61(60)=abb61(60)*spbl3k2
      abb61(68)=abb61(36)*abb61(60)
      abb61(38)=abb61(68)+abb61(67)+abb61(43)-9.0_ki*abb61(38)+abb61(66)+abb61(&
      &39)+abb61(51)
      abb61(38)=2.0_ki*abb61(38)
      abb61(12)=abb61(12)*abb61(7)
      abb61(39)=-8.0_ki*abb61(57)*abb61(12)
      abb61(43)=abb61(37)*abb61(55)
      abb61(43)=abb61(54)+abb61(43)
      abb61(43)=4.0_ki*abb61(43)
      abb61(13)=abb61(37)-abb61(13)
      abb61(13)=abb61(13)*abb61(55)
      abb61(13)=abb61(13)+abb61(54)
      abb61(37)=abb61(33)*abb61(13)
      abb61(51)=-abb61(64)*abb61(62)
      abb61(54)=-abb61(12)*abb61(61)
      abb61(37)=abb61(54)+abb61(51)+abb61(37)
      abb61(37)=4.0_ki*abb61(37)
      abb61(13)=-2.0_ki*abb61(13)
      abb61(23)=2.0_ki*abb61(23)*abb61(12)
      abb61(48)=spbl4l3*abb61(48)
      abb61(19)=abb61(30)+6.0_ki*abb61(19)
      abb61(19)=abb61(64)*abb61(19)
      abb61(30)=spbl4k2*abb61(44)
      abb61(44)=-abb61(12)*abb61(60)
      abb61(19)=abb61(44)+abb61(30)+abb61(19)
      abb61(19)=2.0_ki*abb61(19)
      abb61(30)=8.0_ki*abb61(64)
      abb61(33)=-abb61(33)*abb61(30)
      abb61(10)=abb61(10)*c1*abb61(2)
      abb61(44)=spbk5k1*abb61(10)
      abb61(51)=abb61(34)*abb61(44)
      abb61(54)=spal3l4*spbk5l3
      abb61(36)=abb61(36)*abb61(54)
      abb61(36)=abb61(51)+abb61(36)
      abb61(36)=2.0_ki*abb61(36)
      abb61(51)=-abb61(7)*abb61(10)*abb61(34)
      abb61(12)=-abb61(12)*abb61(54)
      abb61(12)=abb61(51)+abb61(12)
      abb61(12)=2.0_ki*abb61(12)
      abb61(44)=2.0_ki*abb61(31)*abb61(44)
      abb61(10)=-abb61(10)+abb61(11)
      abb61(10)=abb61(10)*abb61(31)
      abb61(10)=abb61(10)-abb61(59)
      abb61(10)=2.0_ki*abb61(7)*abb61(10)
      abb61(31)=abb61(34)*abb61(11)
      abb61(34)=spbk5l3*abb61(56)
      abb61(31)=abb61(34)+abb61(31)
      abb61(31)=spbk5l4*abb61(31)
      abb61(11)=-abb61(11)*abb61(61)
      abb61(11)=abb61(11)+abb61(31)
      abb61(11)=2.0_ki*abb61(11)
      abb61(31)=abb61(42)*abb61(40)
      R2d61=0.0_ki
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd61h1
