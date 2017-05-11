module p0_gg_hhg_abbrevd15h1_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(51), public :: abb15
   complex(ki), public :: R2d15
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
      abb15(1)=sqrt(mT**2)
      abb15(2)=sqrt2**(-1)
      abb15(3)=es12**(-1)
      abb15(4)=spbk5k2**(-1)
      abb15(5)=spak2k5**(-1)
      abb15(6)=spak2l4**(-1)
      abb15(7)=spbl4k2**(-1)
      abb15(8)=spak2l3**(-1)
      abb15(9)=spbl3k2**(-1)
      abb15(10)=spak1k2**(-1)
      abb15(11)=c1-c2
      abb15(12)=spbk5k1**2
      abb15(13)=abb15(3)*abb15(4)
      abb15(14)=abb15(11)*abb15(12)*abb15(13)
      abb15(15)=gHT**2*i_*abb15(2)
      abb15(16)=abb15(15)*spak2l3
      abb15(17)=-abb15(16)*abb15(14)
      abb15(13)=abb15(15)*abb15(13)*abb15(5)
      abb15(18)=abb15(13)*spbk5k1
      abb15(19)=abb15(11)*spak2l3
      abb15(20)=abb15(18)*abb15(19)
      abb15(21)=abb15(20)*spbl4k1
      abb15(22)=spak2l4*abb15(21)
      abb15(22)=abb15(22)-abb15(17)
      abb15(22)=abb15(22)*spbk5l3
      abb15(12)=abb15(11)*abb15(12)
      abb15(13)=abb15(12)*abb15(13)
      abb15(23)=-spak2l3*abb15(13)
      abb15(24)=abb15(23)*spbl4l3
      abb15(25)=abb15(24)*spak2l4
      abb15(26)=abb15(20)*spbl3k1
      abb15(27)=spbk5l4*spak2l4
      abb15(28)=abb15(26)*abb15(27)
      abb15(22)=abb15(22)+abb15(28)+abb15(25)
      abb15(14)=abb15(15)*abb15(14)
      abb15(28)=abb15(14)*abb15(27)
      abb15(18)=-abb15(18)*abb15(11)
      abb15(29)=abb15(18)*spbl4k1
      abb15(30)=spbk5l4*spak2l4**2
      abb15(31)=abb15(30)*abb15(29)
      abb15(28)=-abb15(28)+2.0_ki*abb15(31)
      abb15(32)=abb15(28)+abb15(22)
      abb15(32)=4.0_ki*abb15(32)
      abb15(33)=abb15(1)**2
      abb15(34)=-abb15(33)*abb15(32)
      abb15(25)=-4.0_ki*abb15(25)
      abb15(22)=-4.0_ki*abb15(22)
      abb15(28)=4.0_ki*abb15(28)
      abb15(35)=abb15(20)*spbk5l3
      abb15(36)=-spbl4k1*abb15(35)
      abb15(37)=-spbk5l4*abb15(26)
      abb15(36)=abb15(37)+abb15(36)-abb15(24)
      abb15(37)=mH**2
      abb15(38)=abb15(37)*abb15(7)
      abb15(36)=abb15(38)*abb15(36)
      abb15(39)=abb15(38)*abb15(6)
      abb15(17)=abb15(17)*abb15(39)
      abb15(40)=spbk5l3*abb15(17)
      abb15(41)=abb15(8)*abb15(37)*abb15(9)
      abb15(31)=abb15(41)*abb15(31)
      abb15(31)=abb15(31)+abb15(40)+abb15(36)
      abb15(31)=4.0_ki*abb15(31)
      abb15(36)=2.0_ki*spbl4l3
      abb15(40)=abb15(36)*abb15(20)
      abb15(42)=-abb15(27)*abb15(40)
      abb15(43)=abb15(18)*abb15(30)
      abb15(44)=-abb15(36)*abb15(43)
      abb15(45)=abb15(29)*spak2l4
      abb15(46)=-3.0_ki*abb15(14)+5.0_ki*abb15(45)
      abb15(46)=abb15(46)*abb15(33)
      abb15(37)=-abb15(37)+5.0_ki*abb15(33)
      abb15(37)=abb15(37)*abb15(26)
      abb15(21)=-abb15(38)*abb15(21)
      abb15(17)=abb15(21)+abb15(17)
      abb15(17)=spbl3k2*abb15(17)
      abb15(21)=-spal4k5*abb15(24)
      abb15(15)=abb15(15)*spbk5k1
      abb15(24)=abb15(5)*abb15(4)
      abb15(47)=abb15(10)*abb15(15)*abb15(24)
      abb15(48)=-abb15(19)*abb15(47)
      abb15(49)=abb15(38)*spbl4l3
      abb15(50)=abb15(49)*abb15(48)
      abb15(17)=abb15(21)+abb15(17)+abb15(50)+2.0_ki*abb15(46)+abb15(37)
      abb15(17)=2.0_ki*abb15(17)
      abb15(21)=4.0_ki*abb15(26)
      abb15(37)=-8.0_ki*abb15(45)
      abb15(46)=-4.0_ki*abb15(41)*abb15(45)
      abb15(45)=3.0_ki*abb15(45)-abb15(14)
      abb15(26)=2.0_ki*abb15(45)+3.0_ki*abb15(26)
      abb15(26)=2.0_ki*abb15(26)
      abb15(45)=abb15(18)*spak2l4
      abb15(36)=abb15(45)*abb15(36)
      abb15(15)=abb15(19)*abb15(3)*abb15(15)*abb15(5)
      abb15(19)=abb15(15)*abb15(38)
      abb15(38)=abb15(27)*abb15(18)
      abb15(50)=spal3l4*abb15(38)
      abb15(50)=abb15(50)+abb15(19)
      abb15(50)=spbl3k1*abb15(50)
      abb15(13)=-spak2l4*abb15(13)
      abb15(51)=abb15(33)*abb15(13)
      abb15(11)=abb15(41)*abb15(11)*abb15(47)
      abb15(30)=-abb15(30)*abb15(11)
      abb15(30)=abb15(30)-6.0_ki*abb15(51)+abb15(50)
      abb15(30)=2.0_ki*abb15(30)
      abb15(13)=-4.0_ki*abb15(13)
      abb15(11)=spak2l4*abb15(11)
      abb15(47)=-spal3l4*spbl3k1*abb15(18)
      abb15(11)=abb15(47)+abb15(11)
      abb15(11)=2.0_ki*abb15(11)
      abb15(47)=es51-es34
      abb15(47)=abb15(23)*abb15(47)
      abb15(12)=-abb15(16)*abb15(24)*abb15(12)
      abb15(12)=abb15(12)+abb15(47)
      abb15(12)=abb15(39)*abb15(12)
      abb15(16)=-abb15(23)*abb15(33)
      abb15(14)=spbk5l4*abb15(14)
      abb15(24)=-abb15(27)*abb15(29)
      abb15(14)=abb15(14)+abb15(24)
      abb15(14)=spal3l4*abb15(14)
      abb15(19)=-spbl4k1*abb15(19)
      abb15(12)=abb15(14)+abb15(19)+abb15(16)+abb15(12)
      abb15(12)=2.0_ki*abb15(12)
      abb15(14)=4.0_ki*abb15(23)
      abb15(16)=4.0_ki*abb15(39)
      abb15(16)=abb15(23)*abb15(16)
      abb15(19)=2.0_ki*abb15(23)
      abb15(23)=spal3l4*abb15(29)
      abb15(24)=-abb15(39)*abb15(48)
      abb15(23)=abb15(23)+abb15(24)
      abb15(23)=2.0_ki*abb15(23)
      abb15(24)=-6.0_ki*abb15(38)+abb15(35)
      abb15(24)=abb15(33)*abb15(24)
      abb15(15)=-abb15(15)*abb15(49)
      abb15(27)=abb15(41)*spbl4k2
      abb15(29)=-abb15(27)*abb15(43)
      abb15(15)=abb15(29)+abb15(15)+abb15(24)
      abb15(15)=2.0_ki*abb15(15)
      abb15(24)=4.0_ki*abb15(35)
      abb15(29)=-abb15(39)*abb15(24)
      abb15(35)=-2.0_ki*abb15(38)-abb15(35)
      abb15(35)=2.0_ki*abb15(35)
      abb15(33)=abb15(18)*abb15(33)
      abb15(20)=-spbl3k2*abb15(20)*abb15(39)
      abb15(27)=abb15(45)*abb15(27)
      abb15(20)=abb15(27)+12.0_ki*abb15(33)+abb15(20)
      abb15(20)=2.0_ki*abb15(20)
      abb15(18)=8.0_ki*abb15(18)
      R2d15=0.0_ki
      rat2 = rat2 + R2d15
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='15' value='", &
          & R2d15, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd15h1_qp
