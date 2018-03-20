module     p0_gg_hhg_abbrevd43h3
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh3
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
      abb43(3)=spak1k2**(-1)
      abb43(4)=spak2k5**(-1)
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
      abb43(21)=spbl3k1*spak2l3
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
      abb43(33)=spbl4k2*spak2l4
      abb43(32)=abb43(32)*abb43(33)
      abb43(34)=abb43(14)*abb43(31)
      abb43(32)=abb43(32)+abb43(34)
      abb43(32)=spbk5k1*abb43(32)
      abb43(34)=abb43(12)*abb43(33)
      abb43(35)=abb43(14)+abb43(34)
      abb43(36)=spbk5l3*spak2l3
      abb43(35)=spbk2k1*abb43(35)*abb43(36)
      abb43(37)=spal4k5*spbk5l4
      abb43(38)=abb43(24)*abb43(37)
      abb43(20)=abb43(38)+abb43(25)+abb43(35)+abb43(20)+abb43(32)
      abb43(20)=2.0_ki*abb43(20)
      abb43(25)=-8.0_ki*abb43(24)
      abb43(32)=spbk2k1*spak2l3
      abb43(35)=spbk5l3*abb43(12)*abb43(32)
      abb43(38)=abb43(12)*spbk5k1
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
      abb43(42)=abb43(33)*spbk5k1
      abb43(43)=abb43(42)*abb43(30)
      abb43(38)=-abb43(38)-abb43(43)
      abb43(38)=8.0_ki*abb43(38)
      abb43(44)=abb43(30)*spbk5k1
      abb43(45)=16.0_ki*abb43(44)
      abb43(26)=abb43(26)*abb43(22)
      abb43(24)=abb43(26)-abb43(24)-abb43(31)
      abb43(24)=2.0_ki*abb43(24)
      abb43(26)=4.0_ki*abb43(43)
      abb43(31)=8.0_ki*abb43(44)
      abb43(43)=-spbk5k1*abb43(19)
      abb43(44)=abb43(32)*abb43(17)
      abb43(46)=-spbk5l3*abb43(44)
      abb43(43)=abb43(43)+abb43(46)
      abb43(43)=2.0_ki*spak2l4*abb43(43)
      abb43(46)=4.0_ki*spak2l4
      abb43(47)=abb43(46)*abb43(17)
      abb43(48)=-spbk5k1*abb43(47)
      abb43(49)=8.0_ki*spbk5k1*spak2l4*abb43(13)
      abb43(50)=-abb43(46)*abb43(13)
      abb43(51)=spbk5k1*abb43(50)
      abb43(9)=-abb43(10)*abb43(11)*abb43(9)
      abb43(10)=-abb43(16)*abb43(9)
      abb43(11)=abb43(21)*spbk5k2
      abb43(16)=-abb43(11)-2.0_ki*abb43(42)
      abb43(16)=abb43(10)*abb43(16)
      abb43(42)=abb43(33)*abb43(17)
      abb43(52)=-abb43(42)*abb43(36)
      abb43(16)=abb43(52)+abb43(16)
      abb43(16)=2.0_ki*abb43(16)
      abb43(10)=spbk5k1*abb43(10)
      abb43(36)=abb43(17)*abb43(36)
      abb43(10)=2.0_ki*abb43(10)+abb43(36)
      abb43(11)=-abb43(9)*abb43(11)
      abb43(29)=abb43(29)-1.0_ki
      abb43(29)=abb43(11)*abb43(29)
      abb43(10)=2.0_ki*abb43(10)+abb43(29)
      abb43(10)=4.0_ki*abb43(10)
      abb43(11)=-2.0_ki*abb43(11)
      abb43(29)=2.0_ki*spbk5l4
      abb43(21)=abb43(29)*abb43(21)
      abb43(36)=abb43(12)*abb43(21)
      abb43(9)=-abb43(9)*abb43(21)
      abb43(21)=2.0_ki*abb43(34)
      abb43(34)=-spbk5l3*abb43(21)
      abb43(52)=abb43(30)*abb43(33)
      abb43(52)=abb43(52)+abb43(12)
      abb43(52)=4.0_ki*spbk5l3*abb43(52)
      abb43(53)=abb43(30)*spbk5l3
      abb43(54)=-8.0_ki*abb43(53)
      abb43(53)=-4.0_ki*abb43(53)
      abb43(50)=spbk5l3*abb43(50)
      abb43(14)=-3.0_ki*abb43(14)-abb43(21)
      abb43(21)=2.0_ki*spbk2k1
      abb43(14)=abb43(14)*abb43(21)
      abb43(55)=abb43(12)*spbk2k1
      abb43(56)=8.0_ki*abb43(55)
      abb43(55)=-4.0_ki*abb43(55)
      abb43(21)=-abb43(30)*abb43(21)
      abb43(30)=spbk2k1*abb43(47)
      abb43(42)=4.0_ki*abb43(42)
      abb43(47)=abb43(44)*abb43(22)
      abb43(57)=abb43(32)*abb43(18)
      abb43(47)=abb43(57)+abb43(47)
      abb43(57)=abb43(18)*abb43(28)
      abb43(58)=abb43(17)*abb43(28)
      abb43(59)=-abb43(58)*abb43(22)
      abb43(59)=-abb43(57)+abb43(59)
      abb43(32)=abb43(27)*abb43(32)*abb43(59)
      abb43(59)=-abb43(44)*abb43(37)
      abb43(32)=abb43(59)+2.0_ki*abb43(47)+abb43(32)
      abb43(32)=2.0_ki*abb43(32)
      abb43(44)=8.0_ki*abb43(44)
      abb43(47)=2.0_ki*abb43(17)
      abb43(59)=spbk5k2*spak2l3
      abb43(60)=abb43(47)*abb43(59)
      abb43(61)=-abb43(59)*abb43(13)
      abb43(28)=-abb43(13)*abb43(28)
      abb43(27)=abb43(28)*abb43(27)*abb43(59)
      abb43(27)=-abb43(61)+abb43(27)
      abb43(27)=4.0_ki*abb43(27)
      abb43(59)=-2.0_ki*abb43(61)
      abb43(29)=-spak2l3*abb43(13)*abb43(29)
      abb43(61)=abb43(8)*abb43(7)
      abb43(62)=abb43(61)*abb43(33)
      abb43(63)=abb43(58)*abb43(62)
      abb43(63)=abb43(63)+abb43(15)
      abb43(63)=abb43(63)*abb43(22)
      abb43(15)=es12*abb43(15)
      abb43(62)=abb43(57)*abb43(62)
      abb43(15)=abb43(15)+abb43(62)+abb43(63)
      abb43(15)=2.0_ki*abb43(15)
      abb43(33)=abb43(28)*abb43(33)
      abb43(58)=abb43(33)-abb43(58)
      abb43(58)=abb43(58)*abb43(61)
      abb43(58)=abb43(58)-abb43(47)
      abb43(58)=abb43(58)*abb43(22)
      abb43(33)=es12*abb43(33)
      abb43(33)=-abb43(57)+abb43(33)
      abb43(33)=abb43(33)*abb43(61)
      abb43(37)=abb43(47)*abb43(37)
      abb43(19)=abb43(37)-abb43(19)+abb43(33)+abb43(58)
      abb43(19)=4.0_ki*abb43(19)
      abb43(28)=abb43(28)*abb43(61)
      abb43(33)=abb43(23)*abb43(28)
      abb43(37)=-8.0_ki*abb43(33)
      abb43(22)=-abb43(17)*abb43(22)
      abb43(18)=-abb43(18)+abb43(22)
      abb43(18)=4.0_ki*abb43(18)
      abb43(22)=-4.0_ki*abb43(33)
      abb43(13)=2.0_ki*abb43(13)*abb43(23)
      abb43(23)=spbk5k2*abb43(28)*abb43(46)
      abb43(12)=4.0_ki*spbk5l4*abb43(12)
      abb43(17)=-16.0_ki*abb43(17)
      R2d43=0.0_ki
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd43h3
