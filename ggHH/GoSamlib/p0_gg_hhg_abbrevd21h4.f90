module     p0_gg_hhg_abbrevd21h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh4
   implicit none
   private
   complex(ki), dimension(47), public :: abb21
   complex(ki), public :: R2d21
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
      abb21(1)=sqrt2**(-1)
      abb21(2)=es51**(-1)
      abb21(3)=spbk2k1**(-1)
      abb21(4)=spbk5k2**(-1)
      abb21(5)=sqrt(mT**2)
      abb21(6)=spak2l3**(-1)
      abb21(7)=spbl3k2**(-1)
      abb21(8)=spak2l4**(-1)
      abb21(9)=spbl4k2**(-1)
      abb21(10)=c1-c2
      abb21(11)=gHT**2*i_*spak1k5
      abb21(12)=abb21(3)*abb21(1)
      abb21(13)=abb21(10)*abb21(11)*abb21(12)*abb21(4)
      abb21(14)=-abb21(2)*abb21(13)
      abb21(15)=abb21(14)*es34
      abb21(16)=abb21(15)+abb21(13)
      abb21(17)=-16.0_ki/3.0_ki*abb21(16)
      abb21(18)=mH**2
      abb21(19)=abb21(5)**2
      abb21(20)=abb21(18)*abb21(19)
      abb21(21)=-abb21(20)*abb21(13)
      abb21(22)=abb21(5)**4
      abb21(23)=-abb21(13)*abb21(22)
      abb21(22)=-abb21(22)-abb21(20)
      abb21(22)=abb21(22)*abb21(15)
      abb21(22)=abb21(22)+abb21(23)+abb21(21)
      abb21(15)=abb21(15)*abb21(20)
      abb21(15)=abb21(15)-abb21(21)
      abb21(20)=abb21(7)*abb21(6)
      abb21(21)=abb21(15)*abb21(20)
      abb21(23)=abb21(19)*es34
      abb21(24)=abb21(14)*abb21(23)
      abb21(25)=-abb21(13)*abb21(19)
      abb21(24)=abb21(24)-abb21(25)
      abb21(26)=abb21(24)-abb21(21)
      abb21(26)=spak2l4*spbl4k2*abb21(26)
      abb21(27)=spak2l3*spbl3k2
      abb21(28)=2.0_ki*abb21(27)
      abb21(24)=abb21(24)*abb21(28)
      abb21(29)=abb21(9)*abb21(8)
      abb21(15)=abb21(15)*abb21(29)
      abb21(30)=-abb21(27)*abb21(15)
      abb21(10)=-abb21(11)*abb21(10)
      abb21(11)=abb21(10)*abb21(4)**2
      abb21(31)=abb21(12)*abb21(11)
      abb21(32)=abb21(31)*abb21(19)
      abb21(12)=abb21(12)*abb21(2)
      abb21(33)=abb21(12)*abb21(11)
      abb21(23)=abb21(33)*abb21(23)
      abb21(23)=abb21(32)-abb21(23)
      abb21(32)=abb21(23)*spbk5l3
      abb21(34)=spal3l4*spbl4k2
      abb21(35)=abb21(34)*abb21(32)
      abb21(12)=-abb21(12)*abb21(10)
      abb21(36)=abb21(19)*spak2l3
      abb21(37)=abb21(12)*abb21(36)
      abb21(38)=spal4k5*abb21(37)
      abb21(39)=abb21(2)*abb21(1)
      abb21(10)=-abb21(4)*abb21(10)*abb21(39)
      abb21(36)=abb21(10)*abb21(36)
      abb21(40)=-spak1l4*abb21(36)
      abb21(38)=abb21(38)+abb21(40)
      abb21(38)=spbl4l3*abb21(38)
      abb21(22)=abb21(38)+abb21(35)+abb21(30)+abb21(24)+2.0_ki*abb21(22)+abb21(&
      &26)
      abb21(22)=4.0_ki*abb21(22)
      abb21(24)=abb21(14)*abb21(19)
      abb21(26)=spak2l4*spbl4k2
      abb21(28)=abb21(28)+abb21(26)
      abb21(30)=-8.0_ki*abb21(24)*abb21(28)
      abb21(35)=abb21(14)*abb21(18)
      abb21(38)=3.0_ki*abb21(24)+abb21(35)
      abb21(38)=es34*abb21(38)
      abb21(40)=abb21(18)*es34
      abb21(41)=abb21(14)*abb21(40)
      abb21(13)=-abb21(13)*abb21(18)
      abb21(41)=abb21(41)-abb21(13)
      abb21(42)=abb21(41)*abb21(20)
      abb21(43)=abb21(26)*abb21(42)
      abb21(44)=spal3k5*abb21(24)
      abb21(11)=-abb21(39)*abb21(11)
      abb21(39)=abb21(11)*abb21(19)
      abb21(45)=spak1l3*abb21(39)
      abb21(44)=abb21(44)+abb21(45)
      abb21(44)=-2.0_ki*abb21(44)
      abb21(44)=spbk5l3*abb21(44)
      abb21(45)=-spal4k5*abb21(24)
      abb21(46)=-spak1l4*abb21(39)
      abb21(45)=abb21(45)+abb21(46)
      abb21(45)=spbk5l4*abb21(45)
      abb21(13)=abb21(45)-abb21(15)+abb21(43)-2.0_ki*abb21(21)+abb21(38)-3.0_ki&
      &*abb21(25)-abb21(13)+abb21(44)
      abb21(13)=8.0_ki*abb21(13)
      abb21(15)=abb21(20)*abb21(18)
      abb21(20)=abb21(15)*abb21(14)
      abb21(21)=-abb21(26)*abb21(20)
      abb21(21)=-abb21(35)+abb21(21)
      abb21(21)=16.0_ki*abb21(21)
      abb21(25)=16.0_ki*abb21(42)
      abb21(35)=-32.0_ki*abb21(20)
      abb21(27)=abb21(27)+abb21(26)
      abb21(38)=4.0_ki*abb21(27)
      abb21(43)=abb21(16)*abb21(38)
      abb21(44)=8.0_ki*abb21(14)
      abb21(27)=-abb21(27)*abb21(44)
      abb21(41)=abb21(41)*abb21(29)
      abb21(45)=abb21(14)*spal3k5
      abb21(46)=abb21(11)*spak1l3
      abb21(45)=abb21(45)+abb21(46)
      abb21(46)=-spbk5l3*abb21(45)
      abb21(14)=abb21(14)*spal4k5
      abb21(47)=abb21(11)*spak1l4
      abb21(14)=abb21(47)+abb21(14)
      abb21(47)=-spbk5l4*abb21(14)
      abb21(41)=abb21(47)+abb21(41)+abb21(42)+abb21(16)+abb21(46)
      abb21(41)=8.0_ki*abb21(41)
      abb21(42)=8.0_ki*abb21(16)
      abb21(37)=-4.0_ki*abb21(37)
      abb21(46)=8.0_ki*spbl4k2*abb21(23)
      abb21(23)=12.0_ki*spbl3k2*abb21(23)
      abb21(31)=abb21(31)*abb21(18)
      abb21(33)=abb21(33)*abb21(40)
      abb21(31)=abb21(31)-abb21(33)
      abb21(29)=-spbl3k2*abb21(29)
      abb21(29)=-abb21(6)+abb21(29)
      abb21(29)=abb21(31)*abb21(29)
      abb21(14)=spbl4l3*abb21(14)
      abb21(14)=abb21(14)+abb21(29)
      abb21(14)=8.0_ki*abb21(14)
      abb21(29)=4.0_ki*abb21(32)
      abb21(20)=spal4k5*abb21(20)
      abb21(31)=abb21(15)*abb21(11)
      abb21(32)=spak1l4*abb21(31)
      abb21(20)=abb21(20)+abb21(32)
      abb21(20)=spbl4k2*abb21(20)
      abb21(32)=abb21(45)*abb21(18)*abb21(6)
      abb21(20)=abb21(32)+abb21(20)
      abb21(20)=8.0_ki*abb21(20)
      abb21(24)=-24.0_ki*abb21(24)
      abb21(15)=-abb21(15)*abb21(44)
      abb21(12)=abb21(12)*abb21(19)
      abb21(32)=-spal4k5*abb21(12)
      abb21(10)=abb21(10)*abb21(19)
      abb21(19)=spak1l4*abb21(10)
      abb21(19)=abb21(32)+abb21(19)
      abb21(19)=8.0_ki*abb21(19)
      abb21(32)=abb21(16)*abb21(34)
      abb21(12)=spal3k5*abb21(12)
      abb21(10)=spak1l3*abb21(10)
      abb21(10)=abb21(12)-abb21(10)
      abb21(10)=abb21(32)-3.0_ki*abb21(10)
      abb21(10)=4.0_ki*abb21(10)
      abb21(12)=-abb21(44)*abb21(34)
      abb21(16)=4.0_ki*abb21(16)
      abb21(28)=4.0_ki*abb21(39)*abb21(28)
      abb21(26)=abb21(26)*abb21(31)
      abb21(18)=abb21(11)*abb21(18)
      abb21(18)=abb21(18)+abb21(26)
      abb21(18)=8.0_ki*abb21(18)
      abb21(26)=16.0_ki*abb21(31)
      abb21(32)=abb21(11)*abb21(38)
      abb21(33)=4.0_ki*abb21(11)
      abb21(34)=abb21(34)*abb21(33)
      abb21(36)=-4.0_ki*abb21(36)
      abb21(11)=8.0_ki*abb21(11)
      abb21(38)=24.0_ki*abb21(39)
      abb21(31)=8.0_ki*abb21(31)
      R2d21=abb21(17)
      rat2 = rat2 + R2d21
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='21' value='", &
          & R2d21, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd21h4
