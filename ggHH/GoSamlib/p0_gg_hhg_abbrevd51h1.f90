module     p0_gg_hhg_abbrevd51h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(50), public :: abb51
   complex(ki), public :: R2d51
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
      abb51(1)=sqrt(mT**2)
      abb51(2)=sqrt2**(-1)
      abb51(3)=spbk5k2**(-1)
      abb51(4)=spak2k5**(-1)
      abb51(5)=spak1k2**(-1)
      abb51(6)=spak2l3**(-1)
      abb51(7)=spbl3k2**(-1)
      abb51(8)=c1*spak2l3
      abb51(9)=abb51(8)*spbk5l3
      abb51(10)=spak2l3*spbk5l3
      abb51(11)=abb51(10)*c2
      abb51(9)=abb51(9)-abb51(11)
      abb51(12)=spbk5k1**2
      abb51(9)=abb51(9)*abb51(12)
      abb51(13)=abb51(8)*spbl3k1
      abb51(14)=abb51(13)*spak1k2
      abb51(15)=spak2l3*c2
      abb51(16)=abb51(15)*spbl3k1
      abb51(17)=abb51(16)*spak1k2
      abb51(18)=abb51(14)-abb51(17)
      abb51(19)=abb51(12)*abb51(4)
      abb51(18)=abb51(18)*abb51(19)
      abb51(9)=abb51(9)-abb51(18)
      abb51(18)=gHT**2*abb51(2)*i_
      abb51(20)=2.0_ki*abb51(18)
      abb51(21)=abb51(20)*abb51(3)
      abb51(22)=abb51(1)**2
      abb51(23)=abb51(21)*abb51(22)*abb51(9)
      abb51(24)=abb51(12)*abb51(8)
      abb51(25)=-spbk5l3*abb51(24)
      abb51(14)=abb51(14)*abb51(19)
      abb51(14)=abb51(25)+abb51(14)
      abb51(19)=4.0_ki*abb51(18)
      abb51(19)=abb51(19)*abb51(3)
      abb51(14)=abb51(14)*abb51(19)
      abb51(9)=-abb51(9)*abb51(21)
      abb51(25)=abb51(4)*spbk5k1
      abb51(26)=-es12-abb51(22)
      abb51(26)=abb51(26)*abb51(13)*abb51(25)
      abb51(27)=c1-c2
      abb51(28)=abb51(27)*spbk5k1
      abb51(29)=abb51(22)*abb51(28)
      abb51(8)=abb51(8)*abb51(5)
      abb51(30)=abb51(8)*spbk5l3
      abb51(31)=es12*abb51(30)
      abb51(29)=abb51(31)+2.0_ki*abb51(29)
      abb51(29)=spbk5k1*abb51(29)
      abb51(26)=abb51(29)+abb51(26)
      abb51(26)=abb51(26)*abb51(21)
      abb51(29)=abb51(3)*abb51(4)
      abb51(18)=abb51(18)*abb51(29)
      abb51(31)=4.0_ki*abb51(18)
      abb51(32)=abb51(31)*spbk5k1
      abb51(33)=abb51(13)*abb51(32)
      abb51(12)=abb51(19)*abb51(12)
      abb51(34)=-c1*abb51(12)
      abb51(35)=mH**2*abb51(6)*abb51(7)
      abb51(36)=abb51(35)-1.0_ki
      abb51(37)=abb51(36)*c1
      abb51(12)=-abb51(37)*abb51(12)
      abb51(38)=c2*abb51(5)
      abb51(10)=abb51(38)*abb51(10)
      abb51(39)=-spbk5k1*abb51(10)
      abb51(16)=abb51(16)-abb51(13)
      abb51(40)=abb51(16)*abb51(25)
      abb51(39)=abb51(39)+abb51(40)
      abb51(19)=abb51(39)*abb51(19)
      abb51(39)=2.0_ki*abb51(18)
      abb51(40)=abb51(39)*spbk5k1
      abb51(41)=abb51(13)*abb51(40)
      abb51(42)=c1*abb51(5)
      abb51(43)=spbk5k1*abb51(42)*es12*abb51(36)
      abb51(44)=c1*spbl3k1*spal3k5*abb51(25)
      abb51(43)=abb51(43)+abb51(44)
      abb51(43)=abb51(43)*abb51(21)
      abb51(44)=abb51(24)*abb51(39)
      abb51(45)=abb51(22)*abb51(44)
      abb51(24)=-abb51(31)*abb51(24)
      abb51(46)=es12*abb51(8)*abb51(40)
      abb51(47)=es34-es51
      abb51(48)=abb51(47)-es12
      abb51(49)=-abb51(22)-abb51(48)
      abb51(49)=abb51(49)*abb51(11)
      abb51(27)=spak1k2*abb51(27)
      abb51(50)=spbk5k1*abb51(22)*abb51(27)
      abb51(49)=abb51(49)+abb51(50)
      abb51(50)=abb51(29)*spbk5k1
      abb51(49)=abb51(49)*abb51(50)
      abb51(17)=-abb51(25)*abb51(17)
      abb51(17)=abb51(17)+abb51(49)
      abb51(17)=abb51(17)*abb51(20)
      abb51(25)=abb51(27)*spbk5k1
      abb51(11)=abb51(25)-abb51(11)
      abb51(25)=-abb51(11)*abb51(32)
      abb51(11)=-abb51(11)*abb51(40)
      abb51(27)=spbl3k1*spak1l3
      abb51(27)=abb51(27)+5.0_ki*abb51(22)
      abb51(40)=abb51(47)*abb51(35)
      abb51(47)=-abb51(40)-abb51(27)
      abb51(47)=c2*abb51(47)
      abb51(49)=es12*abb51(35)
      abb51(27)=abb51(49)+abb51(48)+abb51(27)
      abb51(27)=c1*abb51(27)
      abb51(15)=spbl3k2*abb51(15)
      abb51(15)=abb51(27)+abb51(47)+abb51(15)
      abb51(15)=spbk5k1*abb51(15)
      abb51(27)=abb51(10)-abb51(30)
      abb51(47)=abb51(48)+2.0_ki*abb51(22)
      abb51(47)=abb51(47)*abb51(27)
      abb51(15)=abb51(15)+abb51(47)
      abb51(15)=abb51(4)*abb51(15)
      abb51(47)=abb51(38)*spbk5l3
      abb51(49)=spbk5k1*spak1l3*abb51(47)
      abb51(15)=abb51(49)+abb51(15)
      abb51(15)=abb51(3)*abb51(15)
      abb51(16)=abb51(4)*abb51(16)
      abb51(15)=abb51(16)+abb51(15)
      abb51(15)=abb51(15)*abb51(20)
      abb51(16)=abb51(31)*abb51(30)
      abb51(49)=c2-3.0_ki*c1
      abb51(32)=abb51(49)*abb51(32)
      abb51(49)=-3.0_ki+2.0_ki*abb51(35)
      abb51(49)=c2*abb51(49)
      abb51(37)=abb51(49)-3.0_ki*abb51(37)
      abb51(37)=spbk5k1*abb51(37)
      abb51(10)=-abb51(10)+abb51(37)
      abb51(10)=abb51(10)*abb51(31)
      abb51(18)=8.0_ki*abb51(18)
      abb51(30)=-abb51(30)*abb51(18)
      abb51(27)=-2.0_ki*abb51(27)+3.0_ki*abb51(28)
      abb51(27)=abb51(27)*abb51(39)
      abb51(28)=abb51(4)*c2*spbl3k1
      abb51(28)=-abb51(47)+abb51(28)
      abb51(21)=abb51(28)*abb51(21)
      abb51(22)=6.0_ki*abb51(22)
      abb51(28)=-spak2l3*spbl3k2
      abb51(28)=abb51(28)+abb51(40)+abb51(22)
      abb51(28)=abb51(38)*abb51(28)
      abb51(37)=-abb51(48)*abb51(35)
      abb51(40)=spbk5l3*spal3k5
      abb51(22)=abb51(40)+abb51(37)-abb51(22)
      abb51(22)=abb51(22)*abb51(42)
      abb51(22)=abb51(22)+abb51(28)
      abb51(22)=abb51(22)*abb51(39)
      abb51(28)=abb51(42)-abb51(38)
      abb51(18)=abb51(28)*abb51(18)
      abb51(36)=abb51(36)*abb51(18)
      abb51(28)=-abb51(28)*abb51(31)
      abb51(31)=abb51(50)*abb51(38)*spak1l3
      abb51(8)=abb51(4)*abb51(8)
      abb51(8)=abb51(8)+abb51(31)
      abb51(8)=abb51(8)*abb51(20)
      abb51(29)=abb51(29)*abb51(42)*spbk5l3*spak1l3
      abb51(31)=abb51(4)*c1*abb51(35)
      abb51(29)=abb51(31)+abb51(29)
      abb51(20)=abb51(29)*abb51(20)
      abb51(13)=-abb51(5)*abb51(13)*abb51(39)
      R2d51=0.0_ki
      rat2 = rat2 + R2d51
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='51' value='", &
          & R2d51, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd51h1
