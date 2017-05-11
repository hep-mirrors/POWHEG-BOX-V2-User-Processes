module     p0_gg_hhg_abbrevd47h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(69), public :: abb47
   complex(ki), public :: R2d47
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
      abb47(1)=sqrt(mT**2)
      abb47(2)=sqrt2**(-1)
      abb47(3)=spak2k5**(-1)
      abb47(4)=spbk5k2**(-1)
      abb47(5)=spak1k2**(-1)
      abb47(6)=spak2l4**(-1)
      abb47(7)=spbl4k2**(-1)
      abb47(8)=spak2l3**(-1)
      abb47(9)=spbl3k2**(-1)
      abb47(10)=spbk5l3*spbl4k1
      abb47(11)=spak2l4*c2
      abb47(12)=abb47(10)*abb47(11)
      abb47(13)=c1*spak2l4
      abb47(14)=abb47(10)*abb47(13)
      abb47(15)=abb47(12)-abb47(14)
      abb47(16)=i_*abb47(4)
      abb47(17)=2.0_ki*abb47(16)
      abb47(18)=gHT**2*abb47(2)*abb47(3)
      abb47(17)=abb47(17)*abb47(18)
      abb47(19)=abb47(15)*abb47(17)*spak2l3
      abb47(20)=abb47(1)**2
      abb47(21)=abb47(20)*spbk5k1
      abb47(22)=abb47(21)*abb47(19)
      abb47(19)=-spbk5k1*abb47(19)
      abb47(23)=abb47(13)*spbl4k1
      abb47(24)=abb47(11)*spbl4k1
      abb47(25)=abb47(24)-abb47(23)
      abb47(26)=c1*spbl3k1
      abb47(27)=c2*spbl3k1
      abb47(28)=-abb47(27)-2.0_ki*abb47(26)
      abb47(28)=spak2l3*abb47(28)
      abb47(25)=2.0_ki*abb47(25)+abb47(28)
      abb47(25)=abb47(21)*abb47(25)
      abb47(28)=abb47(5)*spak2l3
      abb47(29)=abb47(13)*abb47(28)
      abb47(30)=-abb47(20)*abb47(10)
      abb47(31)=spbl4l3*abb47(21)
      abb47(30)=abb47(30)+abb47(31)
      abb47(30)=abb47(30)*abb47(29)
      abb47(25)=abb47(30)+abb47(25)
      abb47(25)=abb47(25)*abb47(17)
      abb47(16)=abb47(18)*abb47(16)
      abb47(30)=4.0_ki*abb47(16)
      abb47(31)=abb47(30)*spbk5k1
      abb47(32)=-abb47(31)*abb47(24)
      abb47(33)=abb47(30)*abb47(13)
      abb47(34)=spbl4k1*abb47(33)*spbk5k1
      abb47(35)=abb47(33)*abb47(28)
      abb47(36)=-abb47(10)*abb47(35)
      abb47(37)=-spbk5k1*spbl4l3
      abb47(37)=abb47(10)+abb47(37)
      abb47(29)=abb47(37)*abb47(29)
      abb47(37)=c2*spbk5k1
      abb47(38)=abb47(37)*spak2l3
      abb47(39)=-spbl3k1*abb47(38)
      abb47(29)=abb47(39)+abb47(29)
      abb47(29)=abb47(29)*abb47(17)
      abb47(39)=2.0_ki*abb47(20)
      abb47(40)=-abb47(39)*abb47(27)
      abb47(26)=abb47(20)*abb47(26)
      abb47(26)=abb47(40)+abb47(26)
      abb47(26)=spak2l3*abb47(26)
      abb47(40)=-es12-abb47(39)
      abb47(40)=abb47(40)*abb47(23)
      abb47(26)=abb47(40)+abb47(26)
      abb47(40)=abb47(17)*abb47(5)
      abb47(26)=abb47(26)*abb47(40)
      abb47(41)=abb47(28)*c1
      abb47(42)=abb47(30)*abb47(41)*spbl3k1
      abb47(41)=abb47(41)*abb47(17)
      abb47(43)=abb47(41)*spbl3k1
      abb47(44)=-abb47(17)*abb47(27)
      abb47(33)=abb47(33)*abb47(5)
      abb47(45)=abb47(21)*abb47(33)
      abb47(33)=-spbk5k1*abb47(33)
      abb47(46)=spbk2k1*abb47(13)*abb47(40)
      abb47(47)=3.0_ki*abb47(20)
      abb47(48)=spak2l3*c2
      abb47(49)=abb47(48)*spbk5k1**2
      abb47(50)=abb47(49)*abb47(47)
      abb47(51)=abb47(11)*spbk5l4
      abb47(52)=abb47(51)*abb47(28)
      abb47(53)=abb47(21)*abb47(52)
      abb47(50)=abb47(50)+abb47(53)
      abb47(50)=abb47(50)*abb47(17)
      abb47(53)=abb47(49)*abb47(30)
      abb47(54)=mH**2
      abb47(55)=abb47(7)*abb47(54)*abb47(6)
      abb47(56)=abb47(55)*abb47(53)
      abb47(57)=abb47(31)*abb47(52)
      abb47(58)=-spbk5k1*abb47(52)
      abb47(49)=abb47(49)+abb47(58)
      abb47(49)=abb47(49)*abb47(17)
      abb47(58)=abb47(37)*abb47(28)
      abb47(59)=-es12*abb47(55)
      abb47(59)=abb47(59)+abb47(20)
      abb47(59)=abb47(59)*abb47(58)
      abb47(60)=spbl4k1*spal3l4*abb47(37)
      abb47(59)=abb47(60)+abb47(59)
      abb47(59)=abb47(59)*abb47(17)
      abb47(16)=8.0_ki*abb47(16)
      abb47(60)=-abb47(58)*abb47(16)
      abb47(61)=abb47(17)*abb47(58)
      abb47(15)=-spak2l3*abb47(15)
      abb47(62)=abb47(39)*abb47(51)
      abb47(63)=-spbk5l3*abb47(62)
      abb47(64)=abb47(13)*spbk5l3
      abb47(65)=abb47(64)*spbk5l4
      abb47(66)=abb47(20)*abb47(65)
      abb47(63)=abb47(63)+abb47(66)
      abb47(63)=abb47(63)*abb47(28)
      abb47(48)=spbk5l3*abb47(21)*abb47(48)
      abb47(48)=-3.0_ki*abb47(48)+abb47(63)
      abb47(48)=abb47(4)*abb47(48)
      abb47(15)=abb47(15)+abb47(48)
      abb47(48)=2.0_ki*i_
      abb47(18)=abb47(18)*abb47(48)
      abb47(15)=abb47(15)*abb47(18)
      abb47(48)=c1*spbk5l3
      abb47(63)=abb47(48)*spak2l3
      abb47(31)=abb47(31)*abb47(63)
      abb47(66)=abb47(55)-1.0_ki
      abb47(67)=abb47(66)*abb47(63)
      abb47(68)=spbk5k1*abb47(67)
      abb47(52)=spbk5l3*abb47(52)
      abb47(52)=abb47(68)+abb47(52)
      abb47(52)=abb47(52)*abb47(30)
      abb47(35)=abb47(35)*spbk5l3*spbk5l4
      abb47(68)=2.0_ki*abb47(51)
      abb47(69)=spbk5l3*abb47(68)
      abb47(65)=abb47(69)-abb47(65)
      abb47(65)=abb47(65)*abb47(28)
      abb47(38)=-spbk5l3*abb47(38)
      abb47(38)=abb47(38)+abb47(65)
      abb47(38)=abb47(38)*abb47(17)
      abb47(12)=-abb47(17)*abb47(12)
      abb47(65)=abb47(20)*abb47(13)*spbk5l4
      abb47(62)=-abb47(62)+abb47(65)
      abb47(65)=-es12*abb47(66)
      abb47(47)=-abb47(47)+abb47(65)
      abb47(47)=abb47(47)*abb47(48)
      abb47(39)=c2*abb47(39)*spbk5l3
      abb47(65)=spbl3k2*abb47(51)
      abb47(39)=abb47(47)+abb47(39)+abb47(65)
      abb47(39)=spak2l3*abb47(39)
      abb47(39)=2.0_ki*abb47(62)+abb47(39)
      abb47(39)=abb47(5)*abb47(39)
      abb47(21)=4.0_ki*abb47(21)
      abb47(10)=spal3l4*abb47(10)
      abb47(10)=abb47(10)+abb47(21)
      abb47(10)=c1*abb47(10)
      abb47(21)=-c2*abb47(21)
      abb47(10)=abb47(39)+abb47(21)+abb47(10)
      abb47(10)=abb47(4)*abb47(10)
      abb47(21)=abb47(9)*abb47(54)*abb47(8)
      abb47(24)=-abb47(21)*abb47(24)
      abb47(39)=abb47(21)-1.0_ki
      abb47(23)=abb47(39)*abb47(23)
      abb47(47)=abb47(11)*spbl4l3
      abb47(54)=abb47(28)*abb47(47)
      abb47(10)=abb47(10)+abb47(54)+abb47(24)+abb47(23)
      abb47(10)=abb47(10)*abb47(18)
      abb47(23)=abb47(48)*abb47(28)
      abb47(16)=-abb47(23)*abb47(16)
      abb47(24)=-c1*spbk5k1
      abb47(54)=abb47(5)*abb47(68)
      abb47(24)=abb47(54)-abb47(37)+abb47(24)
      abb47(24)=abb47(24)*abb47(30)
      abb47(51)=abb47(51)*abb47(21)
      abb47(54)=-abb47(55)*abb47(63)
      abb47(51)=abb47(51)+abb47(54)
      abb47(51)=abb47(5)*abb47(51)
      abb47(54)=abb47(21)*c1
      abb47(62)=-spbk5k1*abb47(54)
      abb47(51)=abb47(62)+abb47(51)
      abb47(30)=abb47(51)*abb47(30)
      abb47(51)=-abb47(17)*abb47(23)
      abb47(41)=spbl4l3*abb47(41)
      abb47(47)=abb47(5)*abb47(47)
      abb47(27)=abb47(27)+abb47(47)
      abb47(27)=abb47(27)*abb47(17)
      abb47(20)=8.0_ki*abb47(20)
      abb47(47)=spbl3k1*spak1l3
      abb47(62)=es12*abb47(21)
      abb47(63)=abb47(55)*spak2l3
      abb47(65)=-spbl3k2*abb47(63)
      abb47(47)=abb47(65)-abb47(20)+abb47(47)+abb47(62)
      abb47(47)=c1*abb47(47)
      abb47(11)=spbl4k2*abb47(11)*abb47(21)
      abb47(20)=c2*abb47(20)
      abb47(11)=abb47(20)+abb47(11)+abb47(47)
      abb47(11)=abb47(11)*abb47(40)
      abb47(20)=-abb47(64)*abb47(28)*abb47(18)
      abb47(13)=-abb47(5)*abb47(39)*abb47(13)
      abb47(21)=abb47(4)*abb47(5)
      abb47(39)=abb47(21)*abb47(48)
      abb47(40)=-spal3l4*abb47(39)
      abb47(13)=abb47(13)+abb47(40)
      abb47(13)=abb47(13)*abb47(18)
      abb47(37)=-abb47(37)*abb47(63)
      abb47(40)=spak1l4*abb47(4)*spbk5l4
      abb47(47)=-abb47(58)*abb47(40)
      abb47(37)=abb47(37)+abb47(47)
      abb47(37)=abb47(37)*abb47(18)
      abb47(47)=abb47(28)*abb47(55)
      abb47(48)=-spbk5l4*spal3l4
      abb47(55)=spbk5k1*spak1l3
      abb47(48)=abb47(48)+abb47(55)
      abb47(21)=abb47(48)*abb47(21)
      abb47(21)=abb47(47)+abb47(21)
      abb47(21)=abb47(18)*c2*abb47(21)
      abb47(23)=-abb47(23)*abb47(40)
      abb47(23)=-abb47(67)+abb47(23)
      abb47(23)=abb47(23)*abb47(18)
      abb47(39)=spak1l3*abb47(39)
      abb47(39)=abb47(54)+abb47(39)
      abb47(18)=abb47(39)*abb47(18)
      abb47(14)=abb47(28)*abb47(17)*abb47(14)
      R2d47=0.0_ki
      rat2 = rat2 + R2d47
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='47' value='", &
          & R2d47, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd47h1
