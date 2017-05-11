module     p0_gg_hhg_abbrevd13h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(50), public :: abb13
   complex(ki), public :: R2d13
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
      abb13(1)=sqrt(mT**2)
      abb13(2)=sqrt2**(-1)
      abb13(3)=es12**(-1)
      abb13(4)=spbk5k2**(-1)
      abb13(5)=spak2k5**(-1)
      abb13(6)=spak2l3**(-1)
      abb13(7)=spbl3k2**(-1)
      abb13(8)=spak2l4**(-1)
      abb13(9)=spbl4k2**(-1)
      abb13(10)=spak1k2**(-1)
      abb13(11)=c1-c2
      abb13(12)=spbk5k1**2
      abb13(13)=abb13(3)*abb13(4)
      abb13(14)=abb13(11)*abb13(12)*abb13(13)
      abb13(15)=gHT**2*i_*abb13(2)
      abb13(16)=abb13(15)*spak2l4
      abb13(17)=-abb13(16)*abb13(14)
      abb13(13)=abb13(15)*abb13(13)*abb13(5)
      abb13(18)=abb13(13)*spbk5k1
      abb13(19)=abb13(11)*spak2l4
      abb13(20)=abb13(18)*abb13(19)
      abb13(21)=abb13(20)*spbl3k1
      abb13(22)=spak2l3*abb13(21)
      abb13(22)=abb13(22)-abb13(17)
      abb13(22)=abb13(22)*spbk5l4
      abb13(12)=abb13(11)*abb13(12)
      abb13(13)=abb13(12)*abb13(13)
      abb13(23)=-spak2l4*abb13(13)
      abb13(24)=abb13(23)*spbl4l3
      abb13(25)=abb13(24)*spak2l3
      abb13(26)=abb13(20)*spbl4k1
      abb13(27)=spbk5l3*spak2l3
      abb13(28)=abb13(26)*abb13(27)
      abb13(22)=abb13(22)+abb13(28)-abb13(25)
      abb13(14)=abb13(15)*abb13(14)
      abb13(28)=abb13(14)*abb13(27)
      abb13(18)=-abb13(18)*abb13(11)
      abb13(29)=abb13(18)*spbl3k1
      abb13(30)=spbk5l3*spak2l3**2
      abb13(31)=abb13(30)*abb13(29)
      abb13(28)=-abb13(28)+2.0_ki*abb13(31)
      abb13(32)=abb13(28)+abb13(22)
      abb13(32)=4.0_ki*abb13(32)
      abb13(33)=abb13(1)**2
      abb13(34)=-abb13(33)*abb13(32)
      abb13(25)=4.0_ki*abb13(25)
      abb13(28)=4.0_ki*abb13(28)
      abb13(22)=-4.0_ki*abb13(22)
      abb13(35)=abb13(20)*spbk5l4
      abb13(36)=-spbl3k1*abb13(35)
      abb13(37)=-spbk5l3*abb13(26)
      abb13(36)=abb13(37)+abb13(36)+abb13(24)
      abb13(37)=mH**2
      abb13(38)=abb13(37)*abb13(7)
      abb13(36)=abb13(38)*abb13(36)
      abb13(39)=abb13(38)*abb13(6)
      abb13(17)=abb13(17)*abb13(39)
      abb13(40)=spbk5l4*abb13(17)
      abb13(41)=abb13(8)*abb13(37)*abb13(9)
      abb13(31)=abb13(41)*abb13(31)
      abb13(31)=abb13(31)+abb13(40)+abb13(36)
      abb13(31)=4.0_ki*abb13(31)
      abb13(36)=abb13(18)*abb13(30)
      abb13(40)=2.0_ki*spbl4l3
      abb13(42)=abb13(40)*abb13(36)
      abb13(43)=abb13(40)*abb13(20)
      abb13(44)=abb13(27)*abb13(43)
      abb13(45)=abb13(29)*spak2l3
      abb13(46)=-3.0_ki*abb13(14)+5.0_ki*abb13(45)
      abb13(46)=abb13(46)*abb13(33)
      abb13(37)=-abb13(37)+5.0_ki*abb13(33)
      abb13(37)=abb13(37)*abb13(26)
      abb13(21)=-abb13(38)*abb13(21)
      abb13(17)=abb13(21)+abb13(17)
      abb13(17)=spbl4k2*abb13(17)
      abb13(21)=spal3k5*abb13(24)
      abb13(15)=abb13(15)*spbk5k1
      abb13(24)=abb13(5)*abb13(4)
      abb13(47)=abb13(10)*abb13(15)*abb13(24)
      abb13(48)=-abb13(19)*abb13(47)
      abb13(49)=abb13(38)*spbl4l3
      abb13(50)=-abb13(49)*abb13(48)
      abb13(17)=abb13(21)+abb13(17)+abb13(50)+2.0_ki*abb13(46)+abb13(37)
      abb13(17)=2.0_ki*abb13(17)
      abb13(21)=-8.0_ki*abb13(45)
      abb13(37)=4.0_ki*abb13(26)
      abb13(46)=-4.0_ki*abb13(41)*abb13(45)
      abb13(45)=3.0_ki*abb13(45)-abb13(14)
      abb13(26)=2.0_ki*abb13(45)+3.0_ki*abb13(26)
      abb13(26)=2.0_ki*abb13(26)
      abb13(45)=abb13(18)*spak2l3
      abb13(40)=-abb13(45)*abb13(40)
      abb13(50)=es51-es34
      abb13(50)=abb13(23)*abb13(50)
      abb13(12)=-abb13(16)*abb13(24)*abb13(12)
      abb13(12)=abb13(12)+abb13(50)
      abb13(12)=abb13(39)*abb13(12)
      abb13(16)=-abb13(23)*abb13(33)
      abb13(14)=-spbk5l3*abb13(14)
      abb13(24)=abb13(27)*abb13(29)
      abb13(14)=abb13(14)+abb13(24)
      abb13(14)=spal3l4*abb13(14)
      abb13(15)=abb13(19)*abb13(3)*abb13(15)*abb13(5)
      abb13(19)=abb13(15)*abb13(38)
      abb13(24)=-spbl3k1*abb13(19)
      abb13(12)=abb13(14)+abb13(24)+abb13(16)+abb13(12)
      abb13(12)=2.0_ki*abb13(12)
      abb13(14)=4.0_ki*abb13(23)
      abb13(16)=4.0_ki*abb13(39)
      abb13(16)=abb13(23)*abb13(16)
      abb13(23)=2.0_ki*abb13(23)
      abb13(24)=-spal3l4*abb13(29)
      abb13(29)=-abb13(39)*abb13(48)
      abb13(24)=abb13(24)+abb13(29)
      abb13(24)=2.0_ki*abb13(24)
      abb13(27)=abb13(27)*abb13(18)
      abb13(29)=-spal3l4*abb13(27)
      abb13(19)=abb13(29)+abb13(19)
      abb13(19)=spbl4k1*abb13(19)
      abb13(13)=-spak2l3*abb13(13)
      abb13(29)=abb13(33)*abb13(13)
      abb13(11)=abb13(41)*abb13(11)*abb13(47)
      abb13(30)=-abb13(30)*abb13(11)
      abb13(19)=abb13(30)-6.0_ki*abb13(29)+abb13(19)
      abb13(19)=2.0_ki*abb13(19)
      abb13(13)=-4.0_ki*abb13(13)
      abb13(11)=spak2l3*abb13(11)
      abb13(29)=spal3l4*spbl4k1*abb13(18)
      abb13(11)=abb13(29)+abb13(11)
      abb13(11)=2.0_ki*abb13(11)
      abb13(29)=-6.0_ki*abb13(27)+abb13(35)
      abb13(29)=abb13(33)*abb13(29)
      abb13(15)=abb13(15)*abb13(49)
      abb13(30)=abb13(41)*spbl3k2
      abb13(36)=-abb13(30)*abb13(36)
      abb13(15)=abb13(36)+abb13(15)+abb13(29)
      abb13(15)=2.0_ki*abb13(15)
      abb13(29)=4.0_ki*abb13(35)
      abb13(36)=-abb13(39)*abb13(29)
      abb13(27)=-2.0_ki*abb13(27)-abb13(35)
      abb13(27)=2.0_ki*abb13(27)
      abb13(33)=abb13(18)*abb13(33)
      abb13(20)=-spbl4k2*abb13(20)*abb13(39)
      abb13(30)=abb13(45)*abb13(30)
      abb13(20)=abb13(30)+12.0_ki*abb13(33)+abb13(20)
      abb13(20)=2.0_ki*abb13(20)
      abb13(18)=8.0_ki*abb13(18)
      R2d13=0.0_ki
      rat2 = rat2 + R2d13
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='13' value='", &
          & R2d13, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd13h1
