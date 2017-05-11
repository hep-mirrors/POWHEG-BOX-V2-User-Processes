module     p0_gg_hhg_abbrevd21h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(48), public :: abb21
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
      abb21(1)=sqrt(mT**2)
      abb21(2)=sqrt2**(-1)
      abb21(3)=es51**(-1)
      abb21(4)=spak2k5**(-1)
      abb21(5)=spbk5k2**(-1)
      abb21(6)=spak1k2**(-1)
      abb21(7)=spak2l3**(-1)
      abb21(8)=spbl3k2**(-1)
      abb21(9)=spak2l4**(-1)
      abb21(10)=spbl4k2**(-1)
      abb21(11)=c2-c1
      abb21(12)=-spak2l4*abb21(11)
      abb21(13)=spak2l3*spbl4l3
      abb21(14)=-abb21(13)*abb21(12)
      abb21(15)=gHT**2*abb21(2)*i_
      abb21(16)=4.0_ki*abb21(15)
      abb21(17)=abb21(5)*abb21(3)
      abb21(18)=abb21(17)*abb21(4)
      abb21(19)=abb21(18)*spbk5k1**2
      abb21(16)=abb21(14)*abb21(16)*abb21(19)
      abb21(20)=abb21(1)**2
      abb21(21)=abb21(20)*abb21(16)
      abb21(22)=spak2l3*spbk5l3
      abb21(23)=spak2l4*spbk5l4
      abb21(24)=abb21(23)+2.0_ki*abb21(22)
      abb21(25)=-abb21(6)*abb21(11)
      abb21(24)=-abb21(25)*abb21(24)*abb21(20)
      abb21(26)=spbl4k1*spak2l4
      abb21(27)=spak2l3*spbl3k1
      abb21(26)=5.0_ki*abb21(26)+8.0_ki*abb21(27)
      abb21(26)=abb21(20)*abb21(26)
      abb21(28)=spak2l4*spbl4l3
      abb21(29)=es12*spak2l3*abb21(28)*abb21(6)
      abb21(26)=-abb21(29)+abb21(26)
      abb21(29)=abb21(11)*abb21(4)
      abb21(26)=-abb21(26)*abb21(29)
      abb21(24)=4.0_ki*abb21(24)+abb21(26)
      abb21(17)=abb21(15)*abb21(17)*spbk5k1
      abb21(26)=2.0_ki*abb21(17)
      abb21(24)=abb21(24)*abb21(26)
      abb21(22)=abb21(22)*abb21(25)
      abb21(27)=abb21(27)*abb21(29)
      abb21(22)=abb21(27)+abb21(22)
      abb21(27)=8.0_ki*abb21(17)
      abb21(22)=abb21(22)*abb21(27)
      abb21(23)=abb21(25)*abb21(23)
      abb21(30)=abb21(4)*abb21(12)*spbl4k1
      abb21(31)=abb21(30)-abb21(23)
      abb21(31)=abb21(31)*abb21(27)
      abb21(32)=abb21(10)*spak2l3*abb21(9)
      abb21(33)=2.0_ki*abb21(8)
      abb21(34)=abb21(32)-abb21(33)
      abb21(35)=mH**2
      abb21(34)=abb21(34)*abb21(35)
      abb21(36)=-spbk5l3*abb21(34)
      abb21(37)=abb21(7)*abb21(35)*abb21(8)
      abb21(38)=abb21(37)*spak2l4
      abb21(39)=3.0_ki*abb21(38)
      abb21(40)=abb21(39)*spbk5l4
      abb21(36)=abb21(36)+abb21(40)
      abb21(36)=-abb21(36)*abb21(25)
      abb21(34)=spbl3k1*abb21(34)
      abb21(39)=abb21(39)*spbl4k1
      abb21(34)=abb21(34)-abb21(39)
      abb21(34)=abb21(34)*abb21(29)
      abb21(34)=abb21(34)+abb21(36)
      abb21(34)=4.0_ki*abb21(34)*abb21(17)
      abb21(23)=-4.0_ki*abb21(23)+3.0_ki*abb21(30)
      abb21(23)=abb21(23)*abb21(26)
      abb21(30)=abb21(25)*abb21(26)
      abb21(36)=-abb21(13)*abb21(30)
      abb21(26)=abb21(26)*abb21(4)
      abb21(39)=abb21(11)*abb21(26)
      abb21(13)=abb21(13)*abb21(39)
      abb21(28)=abb21(28)*abb21(30)
      abb21(40)=abb21(26)*spbl4l3*abb21(12)
      abb21(41)=abb21(32)*spbl3k2
      abb21(41)=abb21(41)+2.0_ki
      abb21(41)=abb21(41)*abb21(35)
      abb21(42)=abb21(38)*spbl4k2
      abb21(41)=abb21(41)+abb21(42)+12.0_ki*abb21(20)
      abb21(30)=abb21(41)*abb21(30)
      abb21(42)=16.0_ki*abb21(17)
      abb21(42)=abb21(25)*abb21(42)
      abb21(43)=abb21(37)*abb21(42)
      abb21(27)=abb21(25)*abb21(27)
      abb21(15)=2.0_ki*abb21(15)
      abb21(19)=abb21(12)*abb21(19)*abb21(15)
      abb21(44)=abb21(20)*abb21(19)
      abb21(45)=abb21(25)*abb21(4)
      abb21(46)=abb21(38)*abb21(45)
      abb21(47)=abb21(6)*es34
      abb21(38)=abb21(38)*abb21(47)
      abb21(48)=spbl3k1*spal3l4
      abb21(38)=abb21(48)+abb21(38)
      abb21(38)=abb21(38)*abb21(29)
      abb21(25)=abb21(25)*spal3l4
      abb21(48)=spbk5l3*abb21(25)
      abb21(38)=abb21(38)+abb21(48)
      abb21(38)=abb21(3)*abb21(38)
      abb21(38)=abb21(46)+abb21(38)
      abb21(15)=abb21(15)*spbk5k1
      abb21(46)=abb21(15)*abb21(5)
      abb21(38)=abb21(38)*abb21(46)
      abb21(32)=abb21(32)+abb21(33)
      abb21(32)=abb21(32)*abb21(35)
      abb21(33)=abb21(45)*abb21(32)
      abb21(32)=abb21(32)*abb21(47)
      abb21(35)=spbl4k1*spal3l4
      abb21(32)=abb21(32)-abb21(35)
      abb21(29)=abb21(32)*abb21(29)
      abb21(25)=-spbk5l4*abb21(25)
      abb21(25)=abb21(29)+abb21(25)
      abb21(25)=abb21(3)*abb21(25)
      abb21(25)=abb21(33)+abb21(25)
      abb21(25)=abb21(25)*abb21(46)
      abb21(12)=abb21(12)*spbk5l4
      abb21(18)=abb21(18)*abb21(20)*abb21(12)
      abb21(14)=abb21(3)*abb21(4)*abb21(14)
      abb21(14)=abb21(14)+abb21(18)
      abb21(14)=abb21(14)*abb21(15)
      abb21(12)=-abb21(12)*abb21(26)
      abb21(15)=-abb21(41)*abb21(39)
      abb21(11)=abb21(11)*abb21(17)*abb21(4)
      abb21(17)=16.0_ki*abb21(11)
      abb21(18)=-abb21(37)*abb21(17)
      abb21(11)=-8.0_ki*abb21(11)
      R2d21=0.0_ki
      rat2 = rat2 + R2d21
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='21' value='", &
          & R2d21, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd21h1
