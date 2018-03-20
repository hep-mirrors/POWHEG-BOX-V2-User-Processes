module     p0_gg_hhg_abbrevd43h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh4
   implicit none
   private
   complex(ki), dimension(63), public :: abb43
   complex(ki), public :: R2d43
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
      abb43(1)=sqrt(mT**2)
      abb43(2)=sqrt2**(-1)
      abb43(3)=spbk2k1**(-1)
      abb43(4)=spbk5k2**(-1)
      abb43(5)=spak2l4**(-1)
      abb43(6)=spbl4k2**(-1)
      abb43(7)=spak2l3**(-1)
      abb43(8)=spbl3k2**(-1)
      abb43(9)=c1-c2
      abb43(10)=gHT*abb43(4)
      abb43(10)=abb43(10)**2
      abb43(11)=i_*abb43(2)
      abb43(12)=abb43(11)*abb43(3)
      abb43(13)=abb43(9)*abb43(10)*abb43(12)
      abb43(14)=abb43(1)**4
      abb43(15)=abb43(14)*abb43(13)
      abb43(16)=abb43(1)**2
      abb43(17)=abb43(16)*abb43(13)
      abb43(18)=abb43(17)*es12
      abb43(19)=2.0_ki*abb43(18)
      abb43(20)=abb43(15)-abb43(19)
      abb43(21)=spak1l3*spbl3k2
      abb43(22)=es51-es34
      abb43(23)=abb43(22)+es12
      abb43(20)=abb43(23)*abb43(20)*abb43(21)
      abb43(24)=abb43(18)*abb43(21)
      abb43(25)=abb43(24)*abb43(22)
      abb43(26)=abb43(21)*abb43(17)
      abb43(27)=es12**2*abb43(26)
      abb43(25)=abb43(27)+abb43(25)
      abb43(27)=abb43(6)*abb43(5)
      abb43(28)=mH**2
      abb43(29)=abb43(27)*abb43(28)
      abb43(25)=abb43(25)*abb43(29)
      abb43(12)=abb43(4)*abb43(12)*abb43(9)
      abb43(30)=-abb43(12)*gHT**2
      abb43(14)=-abb43(14)*abb43(30)
      abb43(31)=abb43(1)*gHT
      abb43(12)=-abb43(12)*abb43(31)**2
      abb43(31)=2.0_ki*es12
      abb43(32)=abb43(12)*abb43(31)
      abb43(32)=abb43(14)+abb43(32)
      abb43(33)=spak2l4*spbl4k2
      abb43(32)=abb43(32)*abb43(33)
      abb43(34)=abb43(14)*abb43(31)
      abb43(32)=abb43(32)+abb43(34)
      abb43(32)=spak1k5*abb43(32)
      abb43(34)=abb43(12)*abb43(33)
      abb43(35)=abb43(14)+abb43(34)
      abb43(36)=spal3k5*spbl3k2
      abb43(35)=spak1k2*abb43(35)*abb43(36)
      abb43(37)=spbk5l4*spal4k5
      abb43(38)=abb43(24)*abb43(37)
      abb43(20)=abb43(38)+abb43(25)+abb43(35)+abb43(20)+abb43(32)
      abb43(20)=2.0_ki*abb43(20)
      abb43(25)=-8.0_ki*abb43(24)
      abb43(32)=spak1k2*spbl3k2
      abb43(35)=spal3k5*abb43(12)*abb43(32)
      abb43(38)=abb43(12)*spak1k5
      abb43(31)=abb43(38)*abb43(31)
      abb43(31)=abb43(35)+abb43(31)
      abb43(35)=abb43(38)*abb43(33)
      abb43(24)=abb43(35)-abb43(24)
      abb43(39)=abb43(37)-abb43(22)
      abb43(39)=abb43(26)*abb43(39)
      abb43(39)=abb43(39)+abb43(24)-abb43(31)
      abb43(39)=4.0_ki*abb43(39)
      abb43(40)=-16.0_ki*abb43(26)
      abb43(41)=-8.0_ki*abb43(38)
      abb43(35)=4.0_ki*abb43(35)
      abb43(42)=abb43(33)*spak1k5
      abb43(43)=abb43(42)*abb43(30)
      abb43(38)=-abb43(38)-abb43(43)
      abb43(38)=8.0_ki*abb43(38)
      abb43(44)=abb43(30)*spak1k5
      abb43(45)=16.0_ki*abb43(44)
      abb43(26)=abb43(26)*abb43(22)
      abb43(24)=abb43(26)-abb43(24)-abb43(31)
      abb43(24)=2.0_ki*abb43(24)
      abb43(26)=4.0_ki*abb43(43)
      abb43(31)=8.0_ki*abb43(44)
      abb43(34)=2.0_ki*abb43(34)
      abb43(14)=-3.0_ki*abb43(14)-abb43(34)
      abb43(43)=2.0_ki*spak1k2
      abb43(14)=abb43(14)*abb43(43)
      abb43(44)=abb43(12)*spak1k2
      abb43(46)=8.0_ki*abb43(44)
      abb43(44)=-4.0_ki*abb43(44)
      abb43(43)=-abb43(30)*abb43(43)
      abb43(47)=-spak1k5*abb43(19)
      abb43(48)=abb43(32)*abb43(17)
      abb43(49)=-spal3k5*abb43(48)
      abb43(47)=abb43(47)+abb43(49)
      abb43(47)=2.0_ki*spbl4k2*abb43(47)
      abb43(49)=4.0_ki*spbl4k2
      abb43(50)=abb43(49)*abb43(17)
      abb43(51)=-spak1k5*abb43(50)
      abb43(52)=8.0_ki*spak1k5*spbl4k2*abb43(13)
      abb43(53)=-abb43(49)*abb43(13)
      abb43(54)=spak1k5*abb43(53)
      abb43(50)=spak1k2*abb43(50)
      abb43(55)=abb43(48)*abb43(22)
      abb43(56)=abb43(32)*abb43(18)
      abb43(55)=abb43(56)+abb43(55)
      abb43(56)=abb43(18)*abb43(28)
      abb43(57)=abb43(17)*abb43(28)
      abb43(58)=-abb43(57)*abb43(22)
      abb43(58)=-abb43(56)+abb43(58)
      abb43(32)=abb43(27)*abb43(32)*abb43(58)
      abb43(58)=-abb43(48)*abb43(37)
      abb43(32)=abb43(58)+2.0_ki*abb43(55)+abb43(32)
      abb43(32)=2.0_ki*abb43(32)
      abb43(48)=8.0_ki*abb43(48)
      abb43(55)=2.0_ki*spal4k5
      abb43(58)=abb43(55)*abb43(21)
      abb43(59)=abb43(12)*abb43(58)
      abb43(9)=-abb43(10)*abb43(11)*abb43(9)
      abb43(10)=-abb43(16)*abb43(9)
      abb43(11)=abb43(21)*spak2k5
      abb43(16)=-abb43(11)-2.0_ki*abb43(42)
      abb43(16)=abb43(10)*abb43(16)
      abb43(21)=abb43(33)*abb43(17)
      abb43(42)=-abb43(21)*abb43(36)
      abb43(16)=abb43(42)+abb43(16)
      abb43(16)=2.0_ki*abb43(16)
      abb43(10)=spak1k5*abb43(10)
      abb43(36)=abb43(17)*abb43(36)
      abb43(10)=2.0_ki*abb43(10)+abb43(36)
      abb43(11)=-abb43(9)*abb43(11)
      abb43(29)=abb43(29)-1.0_ki
      abb43(29)=abb43(11)*abb43(29)
      abb43(10)=2.0_ki*abb43(10)+abb43(29)
      abb43(10)=4.0_ki*abb43(10)
      abb43(11)=-2.0_ki*abb43(11)
      abb43(21)=4.0_ki*abb43(21)
      abb43(29)=2.0_ki*abb43(17)
      abb43(36)=spak2k5*spbl3k2
      abb43(42)=abb43(29)*abb43(36)
      abb43(60)=-abb43(36)*abb43(13)
      abb43(28)=-abb43(13)*abb43(28)
      abb43(27)=abb43(28)*abb43(27)*abb43(36)
      abb43(27)=-abb43(60)+abb43(27)
      abb43(27)=4.0_ki*abb43(27)
      abb43(36)=-2.0_ki*abb43(60)
      abb43(9)=-abb43(9)*abb43(58)
      abb43(55)=-spbl3k2*abb43(13)*abb43(55)
      abb43(34)=-spal3k5*abb43(34)
      abb43(58)=abb43(30)*abb43(33)
      abb43(58)=abb43(58)+abb43(12)
      abb43(58)=4.0_ki*spal3k5*abb43(58)
      abb43(30)=abb43(30)*spal3k5
      abb43(60)=-8.0_ki*abb43(30)
      abb43(30)=-4.0_ki*abb43(30)
      abb43(53)=spal3k5*abb43(53)
      abb43(61)=abb43(8)*abb43(7)
      abb43(62)=abb43(61)*abb43(33)
      abb43(63)=abb43(57)*abb43(62)
      abb43(63)=abb43(63)+abb43(15)
      abb43(63)=abb43(63)*abb43(22)
      abb43(15)=es12*abb43(15)
      abb43(62)=abb43(56)*abb43(62)
      abb43(15)=abb43(15)+abb43(62)+abb43(63)
      abb43(15)=2.0_ki*abb43(15)
      abb43(33)=abb43(28)*abb43(33)
      abb43(57)=abb43(33)-abb43(57)
      abb43(57)=abb43(57)*abb43(61)
      abb43(57)=abb43(57)-abb43(29)
      abb43(57)=abb43(57)*abb43(22)
      abb43(33)=es12*abb43(33)
      abb43(33)=-abb43(56)+abb43(33)
      abb43(33)=abb43(33)*abb43(61)
      abb43(29)=abb43(29)*abb43(37)
      abb43(19)=abb43(29)-abb43(19)+abb43(33)+abb43(57)
      abb43(19)=4.0_ki*abb43(19)
      abb43(28)=abb43(28)*abb43(61)
      abb43(29)=abb43(23)*abb43(28)
      abb43(33)=-8.0_ki*abb43(29)
      abb43(22)=-abb43(17)*abb43(22)
      abb43(18)=-abb43(18)+abb43(22)
      abb43(18)=4.0_ki*abb43(18)
      abb43(22)=-4.0_ki*abb43(29)
      abb43(13)=2.0_ki*abb43(13)*abb43(23)
      abb43(23)=spak2k5*abb43(28)*abb43(49)
      abb43(17)=-16.0_ki*abb43(17)
      abb43(12)=4.0_ki*spal4k5*abb43(12)
      R2d43=0.0_ki
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd43h4
