module     p0_gg_hhg_abbrevd57h0
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh0
   implicit none
   private
   complex(ki), dimension(65), public :: abb57
   complex(ki), public :: R2d57
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
      abb57(1)=sqrt(mT**2)
      abb57(2)=sqrt2**(-1)
      abb57(3)=spbk2k1**(-1)
      abb57(4)=spak2k5**(-1)
      abb57(5)=spbk5k2**(-1)
      abb57(6)=spbl3k2**(-1)
      abb57(7)=spak2l4**(-1)
      abb57(8)=spbl4k2**(-1)
      abb57(9)=spak2l3**(-1)
      abb57(10)=c1-c2
      abb57(11)=abb57(2)*gHT**2*i_*abb57(4)
      abb57(12)=abb57(3)*abb57(11)
      abb57(13)=abb57(10)*abb57(12)*abb57(1)**2
      abb57(14)=mH**2
      abb57(15)=abb57(14)*spak1k2
      abb57(16)=abb57(15)*abb57(6)
      abb57(17)=abb57(16)*spbk5l3*abb57(13)
      abb57(18)=2.0_ki*es12
      abb57(19)=spbl4k2*spak2l4
      abb57(19)=abb57(18)-abb57(19)
      abb57(20)=-abb57(19)*abb57(17)
      abb57(21)=abb57(8)*abb57(7)
      abb57(15)=abb57(15)*abb57(21)
      abb57(22)=abb57(15)*es12
      abb57(23)=spak2l3*spbk5l3
      abb57(24)=abb57(23)*abb57(13)
      abb57(25)=-abb57(24)*abb57(22)
      abb57(26)=spak2l3**2
      abb57(27)=abb57(26)*spbk5l3
      abb57(28)=-abb57(13)*abb57(27)
      abb57(29)=-abb57(28)*abb57(15)
      abb57(30)=-abb57(5)*abb57(13)
      abb57(31)=abb57(30)*abb57(27)
      abb57(32)=spak1l4*spbk5l4
      abb57(33)=-abb57(31)*abb57(32)
      abb57(29)=abb57(29)+abb57(33)
      abb57(29)=spbl3k2*abb57(29)
      abb57(33)=abb57(19)*spak1l3
      abb57(34)=abb57(30)*spak2l3
      abb57(35)=spbk5l3**2
      abb57(36)=-abb57(35)*abb57(34)
      abb57(37)=-abb57(36)*abb57(33)
      abb57(12)=-abb57(12)*abb57(10)
      abb57(38)=-abb57(23)*abb57(12)
      abb57(39)=2.0_ki*spak1k2
      abb57(40)=abb57(39)*abb57(1)**4
      abb57(41)=abb57(38)*abb57(40)
      abb57(23)=-abb57(23)*abb57(30)
      abb57(42)=abb57(32)*es12
      abb57(43)=-abb57(23)*abb57(42)
      abb57(20)=abb57(37)+abb57(29)+abb57(43)+abb57(41)+abb57(25)+abb57(20)
      abb57(20)=2.0_ki*abb57(20)
      abb57(25)=-abb57(24)*abb57(15)
      abb57(29)=2.0_ki*abb57(32)
      abb57(37)=-abb57(23)*abb57(29)
      abb57(41)=2.0_ki*spak1l3
      abb57(43)=abb57(36)*abb57(41)
      abb57(17)=abb57(43)+abb57(37)+abb57(25)+abb57(17)
      abb57(17)=4.0_ki*abb57(17)
      abb57(25)=4.0_ki*spak1k2
      abb57(37)=abb57(24)*abb57(25)
      abb57(43)=abb57(12)*spbk5l3
      abb57(44)=-abb57(43)*abb57(16)
      abb57(45)=8.0_ki*abb57(44)
      abb57(46)=-abb57(38)*abb57(22)
      abb57(47)=abb57(5)*spak2l3
      abb57(48)=abb57(47)*abb57(43)
      abb57(49)=abb57(48)*abb57(42)
      abb57(46)=abb57(49)+abb57(37)+abb57(46)
      abb57(46)=2.0_ki*abb57(46)
      abb57(49)=abb57(38)*abb57(15)
      abb57(44)=abb57(49)-abb57(44)
      abb57(44)=4.0_ki*abb57(44)
      abb57(49)=abb57(38)*abb57(25)
      abb57(50)=abb57(39)*spbk5l4
      abb57(51)=abb57(23)*abb57(50)
      abb57(52)=-abb57(48)*abb57(50)
      abb57(36)=-abb57(36)*abb57(39)
      abb57(47)=-abb57(47)*abb57(12)
      abb57(35)=-abb57(35)*abb57(47)
      abb57(53)=-abb57(35)*abb57(25)
      abb57(54)=abb57(35)*abb57(39)
      abb57(16)=abb57(16)*abb57(9)
      abb57(55)=-abb57(16)*abb57(13)
      abb57(19)=abb57(55)*abb57(19)
      abb57(56)=-abb57(13)*abb57(22)
      abb57(57)=-abb57(13)*spak2l3
      abb57(58)=-abb57(57)*abb57(15)
      abb57(59)=-abb57(34)*abb57(32)
      abb57(58)=abb57(58)+abb57(59)
      abb57(58)=spbl3k2*abb57(58)
      abb57(59)=-spbk5l3*abb57(30)
      abb57(33)=-abb57(59)*abb57(33)
      abb57(40)=-abb57(12)*abb57(40)
      abb57(60)=abb57(30)*abb57(42)
      abb57(19)=abb57(33)+abb57(58)+abb57(60)+abb57(40)+abb57(56)+abb57(19)
      abb57(19)=2.0_ki*abb57(19)
      abb57(33)=-abb57(13)*abb57(15)
      abb57(29)=abb57(30)*abb57(29)
      abb57(40)=abb57(59)*abb57(41)
      abb57(29)=abb57(40)-abb57(55)+abb57(33)+abb57(29)
      abb57(29)=4.0_ki*abb57(29)
      abb57(33)=-abb57(13)*abb57(25)
      abb57(40)=-8.0_ki*abb57(12)*abb57(16)
      abb57(22)=abb57(12)*abb57(22)
      abb57(41)=abb57(12)*abb57(5)
      abb57(42)=abb57(41)*abb57(42)
      abb57(22)=abb57(42)+abb57(33)+abb57(22)
      abb57(22)=2.0_ki*abb57(22)
      abb57(15)=-abb57(15)+abb57(16)
      abb57(15)=4.0_ki*abb57(12)*abb57(15)
      abb57(16)=abb57(12)*abb57(25)
      abb57(42)=-abb57(30)*abb57(50)
      abb57(50)=-abb57(41)*abb57(50)
      abb57(55)=-abb57(59)*abb57(39)
      abb57(56)=-spbk5l3*abb57(41)
      abb57(25)=abb57(56)*abb57(25)
      abb57(58)=-abb57(56)*abb57(39)
      abb57(59)=2.0_ki*spak2l4
      abb57(60)=abb57(59)*spbl4k2
      abb57(60)=-abb57(60)+3.0_ki*es12
      abb57(61)=-abb57(23)*abb57(60)
      abb57(62)=2.0_ki*spbl3k2
      abb57(31)=abb57(31)*abb57(62)
      abb57(31)=abb57(31)+abb57(61)
      abb57(31)=2.0_ki*abb57(31)
      abb57(61)=32.0_ki*abb57(23)
      abb57(63)=-abb57(48)*abb57(18)
      abb57(60)=abb57(30)*abb57(60)
      abb57(34)=abb57(34)*abb57(62)
      abb57(34)=abb57(34)+abb57(60)
      abb57(34)=2.0_ki*abb57(34)
      abb57(18)=-abb57(41)*abb57(18)
      abb57(24)=-abb57(24)*abb57(59)
      abb57(60)=spak2l4*abb57(14)*abb57(6)
      abb57(60)=4.0_ki*abb57(60)
      abb57(43)=-abb57(43)*abb57(60)
      abb57(38)=-abb57(38)*abb57(59)
      abb57(35)=-abb57(35)*abb57(59)
      abb57(13)=-abb57(13)*abb57(59)
      abb57(60)=-abb57(9)*abb57(12)*abb57(60)
      abb57(62)=abb57(12)*abb57(59)
      abb57(59)=abb57(56)*abb57(59)
      abb57(14)=abb57(14)*abb57(21)
      abb57(21)=abb57(14)*es12
      abb57(64)=-abb57(27)*abb57(12)
      abb57(65)=-abb57(64)*abb57(21)
      abb57(10)=abb57(10)*abb57(5)*abb57(11)
      abb57(11)=-abb57(27)*abb57(10)
      abb57(27)=abb57(11)*abb57(32)
      abb57(27)=abb57(27)+abb57(65)-abb57(28)
      abb57(27)=2.0_ki*abb57(27)
      abb57(14)=4.0_ki*abb57(14)
      abb57(28)=abb57(64)*abb57(14)
      abb57(64)=2.0_ki*abb57(64)
      abb57(26)=abb57(56)*abb57(26)
      abb57(26)=2.0_ki*abb57(26)
      abb57(56)=spbk5l4*abb57(26)
      abb57(12)=-spak2l3*abb57(12)
      abb57(21)=-abb57(12)*abb57(21)
      abb57(10)=-spak2l3*abb57(10)
      abb57(32)=abb57(10)*abb57(32)
      abb57(21)=abb57(32)+abb57(21)-abb57(57)
      abb57(21)=2.0_ki*abb57(21)
      abb57(14)=abb57(12)*abb57(14)
      abb57(12)=2.0_ki*abb57(12)
      abb57(32)=2.0_ki*abb57(47)
      abb57(47)=spbk5l4*abb57(32)
      abb57(11)=-2.0_ki*abb57(11)
      abb57(10)=-2.0_ki*abb57(10)
      abb57(39)=abb57(39)*spbk5k1
      abb57(23)=-abb57(23)*abb57(39)
      abb57(48)=abb57(48)*abb57(39)
      abb57(57)=abb57(30)*abb57(39)
      abb57(39)=abb57(41)*abb57(39)
      abb57(30)=-16.0_ki*abb57(30)
      abb57(26)=-spbk5k1*abb57(26)
      abb57(32)=-spbk5k1*abb57(32)
      R2d57=0.0_ki
      rat2 = rat2 + R2d57
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='57' value='", &
          & R2d57, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd57h0
