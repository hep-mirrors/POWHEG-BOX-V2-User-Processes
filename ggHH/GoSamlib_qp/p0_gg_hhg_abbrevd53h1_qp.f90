module p0_gg_hhg_abbrevd53h1_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(50), public :: abb53
   complex(ki), public :: R2d53
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
      abb53(1)=sqrt(mT**2)
      abb53(2)=sqrt2**(-1)
      abb53(3)=spbk5k2**(-1)
      abb53(4)=spak2k5**(-1)
      abb53(5)=spak1k2**(-1)
      abb53(6)=spak2l4**(-1)
      abb53(7)=spbl4k2**(-1)
      abb53(8)=c1*spak2l4
      abb53(9)=abb53(8)*spbk5l4
      abb53(10)=spak2l4*spbk5l4
      abb53(11)=abb53(10)*c2
      abb53(9)=abb53(9)-abb53(11)
      abb53(12)=spbk5k1**2
      abb53(9)=abb53(9)*abb53(12)
      abb53(13)=abb53(8)*spbl4k1
      abb53(14)=abb53(13)*spak1k2
      abb53(15)=spak2l4*c2
      abb53(16)=abb53(15)*spbl4k1
      abb53(17)=abb53(16)*spak1k2
      abb53(18)=abb53(14)-abb53(17)
      abb53(19)=abb53(12)*abb53(4)
      abb53(18)=abb53(18)*abb53(19)
      abb53(9)=abb53(9)-abb53(18)
      abb53(18)=gHT**2*abb53(2)*i_
      abb53(20)=2.0_ki*abb53(18)
      abb53(21)=abb53(20)*abb53(3)
      abb53(22)=abb53(1)**2
      abb53(23)=abb53(21)*abb53(22)*abb53(9)
      abb53(24)=abb53(12)*abb53(8)
      abb53(25)=-spbk5l4*abb53(24)
      abb53(14)=abb53(14)*abb53(19)
      abb53(14)=abb53(25)+abb53(14)
      abb53(19)=4.0_ki*abb53(18)
      abb53(19)=abb53(19)*abb53(3)
      abb53(14)=abb53(14)*abb53(19)
      abb53(9)=-abb53(9)*abb53(21)
      abb53(25)=abb53(4)*spbk5k1
      abb53(26)=-es12-abb53(22)
      abb53(26)=abb53(26)*abb53(13)*abb53(25)
      abb53(27)=c1-c2
      abb53(28)=abb53(27)*spbk5k1
      abb53(29)=abb53(22)*abb53(28)
      abb53(8)=abb53(8)*abb53(5)
      abb53(30)=abb53(8)*spbk5l4
      abb53(31)=es12*abb53(30)
      abb53(29)=abb53(31)+2.0_ki*abb53(29)
      abb53(29)=spbk5k1*abb53(29)
      abb53(26)=abb53(29)+abb53(26)
      abb53(26)=abb53(26)*abb53(21)
      abb53(29)=abb53(3)*abb53(4)
      abb53(18)=abb53(18)*abb53(29)
      abb53(31)=4.0_ki*abb53(18)
      abb53(32)=abb53(31)*spbk5k1
      abb53(33)=abb53(13)*abb53(32)
      abb53(12)=abb53(19)*abb53(12)
      abb53(34)=-c1*abb53(12)
      abb53(35)=mH**2*abb53(6)*abb53(7)
      abb53(36)=abb53(35)-1.0_ki
      abb53(37)=abb53(36)*c1
      abb53(12)=-abb53(37)*abb53(12)
      abb53(38)=c2*abb53(5)
      abb53(10)=abb53(38)*abb53(10)
      abb53(39)=-spbk5k1*abb53(10)
      abb53(16)=abb53(16)-abb53(13)
      abb53(40)=abb53(16)*abb53(25)
      abb53(39)=abb53(39)+abb53(40)
      abb53(19)=abb53(39)*abb53(19)
      abb53(39)=2.0_ki*abb53(18)
      abb53(40)=abb53(39)*spbk5k1
      abb53(41)=abb53(13)*abb53(40)
      abb53(42)=c1*abb53(5)
      abb53(43)=spbk5k1*abb53(42)*es12*abb53(36)
      abb53(44)=c1*spbl4k1*spal4k5*abb53(25)
      abb53(43)=abb53(43)+abb53(44)
      abb53(43)=abb53(43)*abb53(21)
      abb53(44)=abb53(24)*abb53(39)
      abb53(45)=abb53(22)*abb53(44)
      abb53(24)=-abb53(31)*abb53(24)
      abb53(46)=es12*abb53(8)*abb53(40)
      abb53(47)=es34-es51
      abb53(48)=abb53(47)-es12
      abb53(49)=-abb53(22)-abb53(48)
      abb53(49)=abb53(49)*abb53(11)
      abb53(27)=spak1k2*abb53(27)
      abb53(50)=spbk5k1*abb53(22)*abb53(27)
      abb53(49)=abb53(49)+abb53(50)
      abb53(50)=abb53(29)*spbk5k1
      abb53(49)=abb53(49)*abb53(50)
      abb53(17)=-abb53(25)*abb53(17)
      abb53(17)=abb53(17)+abb53(49)
      abb53(17)=abb53(17)*abb53(20)
      abb53(25)=abb53(27)*spbk5k1
      abb53(11)=abb53(25)-abb53(11)
      abb53(25)=-abb53(11)*abb53(32)
      abb53(11)=-abb53(11)*abb53(40)
      abb53(27)=spbl4k1*spak1l4
      abb53(27)=abb53(27)+5.0_ki*abb53(22)
      abb53(40)=abb53(47)*abb53(35)
      abb53(47)=-abb53(40)-abb53(27)
      abb53(47)=c2*abb53(47)
      abb53(49)=es12*abb53(35)
      abb53(27)=abb53(49)+abb53(48)+abb53(27)
      abb53(27)=c1*abb53(27)
      abb53(15)=spbl4k2*abb53(15)
      abb53(15)=abb53(27)+abb53(47)+abb53(15)
      abb53(15)=spbk5k1*abb53(15)
      abb53(27)=abb53(10)-abb53(30)
      abb53(47)=abb53(48)+2.0_ki*abb53(22)
      abb53(47)=abb53(47)*abb53(27)
      abb53(15)=abb53(15)+abb53(47)
      abb53(15)=abb53(4)*abb53(15)
      abb53(47)=abb53(38)*spbk5l4
      abb53(49)=spbk5k1*spak1l4*abb53(47)
      abb53(15)=abb53(49)+abb53(15)
      abb53(15)=abb53(3)*abb53(15)
      abb53(16)=abb53(4)*abb53(16)
      abb53(15)=abb53(16)+abb53(15)
      abb53(15)=abb53(15)*abb53(20)
      abb53(16)=abb53(31)*abb53(30)
      abb53(49)=c2-3.0_ki*c1
      abb53(32)=abb53(49)*abb53(32)
      abb53(49)=-3.0_ki+2.0_ki*abb53(35)
      abb53(49)=c2*abb53(49)
      abb53(37)=abb53(49)-3.0_ki*abb53(37)
      abb53(37)=spbk5k1*abb53(37)
      abb53(10)=-abb53(10)+abb53(37)
      abb53(10)=abb53(10)*abb53(31)
      abb53(18)=8.0_ki*abb53(18)
      abb53(30)=-abb53(30)*abb53(18)
      abb53(27)=-2.0_ki*abb53(27)+3.0_ki*abb53(28)
      abb53(27)=abb53(27)*abb53(39)
      abb53(28)=abb53(4)*c2*spbl4k1
      abb53(28)=-abb53(47)+abb53(28)
      abb53(21)=abb53(28)*abb53(21)
      abb53(22)=6.0_ki*abb53(22)
      abb53(28)=-spak2l4*spbl4k2
      abb53(28)=abb53(28)+abb53(40)+abb53(22)
      abb53(28)=abb53(38)*abb53(28)
      abb53(37)=-abb53(48)*abb53(35)
      abb53(40)=spbk5l4*spal4k5
      abb53(22)=abb53(40)+abb53(37)-abb53(22)
      abb53(22)=abb53(22)*abb53(42)
      abb53(22)=abb53(22)+abb53(28)
      abb53(22)=abb53(22)*abb53(39)
      abb53(28)=abb53(42)-abb53(38)
      abb53(18)=abb53(28)*abb53(18)
      abb53(36)=abb53(36)*abb53(18)
      abb53(28)=-abb53(28)*abb53(31)
      abb53(31)=abb53(50)*abb53(38)*spak1l4
      abb53(8)=abb53(4)*abb53(8)
      abb53(8)=abb53(8)+abb53(31)
      abb53(8)=abb53(8)*abb53(20)
      abb53(29)=abb53(29)*abb53(42)*spbk5l4*spak1l4
      abb53(31)=abb53(4)*c1*abb53(35)
      abb53(29)=abb53(31)+abb53(29)
      abb53(20)=abb53(29)*abb53(20)
      abb53(13)=-abb53(5)*abb53(13)*abb53(39)
      R2d53=0.0_ki
      rat2 = rat2 + R2d53
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='53' value='", &
          & R2d53, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd53h1_qp
