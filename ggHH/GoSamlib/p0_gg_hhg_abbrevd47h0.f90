module     p0_gg_hhg_abbrevd47h0
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh0
   implicit none
   private
   complex(ki), dimension(46), public :: abb47
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
      abb47(3)=spbk2k1**(-1)
      abb47(4)=spak2k5**(-1)
      abb47(5)=spbk5k2**(-1)
      abb47(6)=spak2l4**(-1)
      abb47(7)=spbl4k2**(-1)
      abb47(8)=spak2l3**(-1)
      abb47(9)=spbl3k2**(-1)
      abb47(10)=mH**2
      abb47(11)=abb47(6)*abb47(10)*abb47(7)
      abb47(12)=abb47(11)*es12
      abb47(13)=spbl4k2*spak2l4
      abb47(14)=-abb47(13)+abb47(12)
      abb47(15)=abb47(2)*i_*abb47(4)
      abb47(16)=abb47(3)*abb47(15)
      abb47(17)=abb47(1)*gHT
      abb47(17)=abb47(16)*abb47(17)**2
      abb47(18)=abb47(17)*spak1k2
      abb47(19)=c1-c2
      abb47(20)=abb47(19)*spak2l3
      abb47(21)=abb47(18)*abb47(20)
      abb47(22)=abb47(21)*spbk5l3
      abb47(14)=abb47(22)*abb47(14)
      abb47(23)=gHT**2
      abb47(16)=abb47(16)*abb47(23)
      abb47(24)=spak1k2*abb47(16)
      abb47(25)=spbk5l3*abb47(24)*abb47(20)
      abb47(26)=abb47(1)**4
      abb47(27)=-abb47(26)*abb47(25)
      abb47(28)=es12*abb47(22)
      abb47(27)=abb47(27)+abb47(28)
      abb47(17)=-abb47(17)*abb47(19)
      abb47(28)=-spak2l3*abb47(17)
      abb47(29)=spbk5l3*abb47(5)
      abb47(30)=abb47(28)*abb47(29)
      abb47(31)=spak1l4*spbk5l4
      abb47(32)=abb47(30)*abb47(31)
      abb47(33)=es12*abb47(32)
      abb47(14)=2.0_ki*abb47(27)+abb47(33)+abb47(14)
      abb47(14)=2.0_ki*abb47(14)
      abb47(27)=-abb47(22)+abb47(32)
      abb47(27)=4.0_ki*abb47(27)
      abb47(22)=4.0_ki*abb47(22)
      abb47(32)=-8.0_ki*abb47(25)
      abb47(25)=4.0_ki*abb47(25)
      abb47(33)=abb47(21)*abb47(29)
      abb47(33)=2.0_ki*abb47(33)
      abb47(34)=-spbk5l4*abb47(33)
      abb47(18)=-abb47(18)*abb47(19)
      abb47(35)=abb47(18)*abb47(29)
      abb47(36)=-2.0_ki*es12+abb47(13)
      abb47(36)=2.0_ki*abb47(35)*abb47(36)
      abb47(35)=4.0_ki*abb47(35)
      abb47(24)=-abb47(24)*abb47(19)
      abb47(37)=abb47(24)*abb47(29)
      abb47(38)=8.0_ki*abb47(37)
      abb47(37)=-4.0_ki*abb47(37)
      abb47(39)=abb47(17)*abb47(5)
      abb47(40)=abb47(39)*abb47(31)
      abb47(10)=abb47(8)*abb47(10)*abb47(9)
      abb47(41)=abb47(10)*abb47(18)
      abb47(42)=-abb47(40)-abb47(41)
      abb47(42)=es12*abb47(42)
      abb47(26)=abb47(26)*abb47(24)
      abb47(12)=-abb47(18)*abb47(12)
      abb47(12)=abb47(12)+2.0_ki*abb47(26)+abb47(42)
      abb47(26)=abb47(13)*abb47(41)
      abb47(12)=2.0_ki*abb47(12)+abb47(26)
      abb47(12)=2.0_ki*abb47(12)
      abb47(26)=abb47(41)-2.0_ki*abb47(40)
      abb47(26)=4.0_ki*abb47(26)
      abb47(40)=8.0_ki*abb47(18)
      abb47(24)=abb47(24)*abb47(10)
      abb47(41)=8.0_ki*abb47(24)
      abb47(24)=-4.0_ki*abb47(24)
      abb47(18)=abb47(18)*abb47(5)
      abb47(18)=4.0_ki*abb47(18)
      abb47(42)=spbk5l4*abb47(18)
      abb47(43)=-abb47(28)*abb47(31)
      abb47(21)=-spbk5k2*abb47(21)*abb47(11)
      abb47(21)=abb47(43)+abb47(21)
      abb47(21)=2.0_ki*abb47(21)
      abb47(13)=abb47(13)-es12
      abb47(43)=-2.0_ki*abb47(30)*abb47(13)
      abb47(30)=-16.0_ki*abb47(30)
      abb47(13)=4.0_ki*abb47(39)*abb47(13)
      abb47(15)=-abb47(19)*abb47(23)*spak2l3*abb47(15)
      abb47(23)=-abb47(5)*abb47(15)*abb47(31)
      abb47(20)=-abb47(16)*abb47(20)
      abb47(11)=abb47(11)*abb47(20)
      abb47(31)=-es12*abb47(11)
      abb47(23)=abb47(31)+abb47(23)+abb47(28)
      abb47(23)=2.0_ki*abb47(23)
      abb47(11)=4.0_ki*abb47(11)
      abb47(31)=2.0_ki*abb47(20)
      abb47(44)=abb47(31)*abb47(5)
      abb47(45)=spbk5l4*abb47(44)
      abb47(46)=2.0_ki*abb47(5)
      abb47(15)=abb47(15)*abb47(46)
      abb47(28)=2.0_ki*spak2l4*spbk5l3*abb47(28)
      abb47(46)=4.0_ki*spak2l4
      abb47(20)=spbk5l3*abb47(20)*abb47(46)
      abb47(16)=-abb47(46)*abb47(19)*abb47(16)
      abb47(19)=abb47(29)*abb47(16)
      abb47(17)=-abb47(17)*abb47(46)
      abb47(10)=abb47(10)*abb47(16)
      abb47(16)=spbk5k1*abb47(33)
      abb47(18)=-spbk5k1*abb47(18)
      abb47(29)=16.0_ki*abb47(39)
      abb47(33)=-spbk5k1*abb47(44)
      R2d47=0.0_ki
      rat2 = rat2 + R2d47
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='47' value='", &
          & R2d47, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd47h0
