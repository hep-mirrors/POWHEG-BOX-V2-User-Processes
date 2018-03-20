module     p0_gg_hhg_abbrevd63h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(41), public :: abb63
   complex(ki), public :: R2d63
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
      abb63(1)=sqrt(mT**2)
      abb63(2)=sqrt2**(-1)
      abb63(3)=spak1k2**(-1)
      abb63(4)=spbk5k2**(-1)
      abb63(5)=spak2k5**(-1)
      abb63(6)=spbl4k2**(-1)
      abb63(7)=spak2l4**(-1)
      abb63(8)=gHT**2*i_*abb63(2)
      abb63(9)=abb63(8)*c1
      abb63(10)=abb63(4)*abb63(9)
      abb63(11)=abb63(8)*c2
      abb63(12)=abb63(11)*abb63(4)
      abb63(10)=abb63(10)-abb63(12)
      abb63(13)=spbk5k1**2
      abb63(14)=abb63(13)*abb63(10)
      abb63(15)=spbk5l4*spak2l4
      abb63(16)=abb63(14)*abb63(15)
      abb63(12)=abb63(12)*spbk5k1
      abb63(17)=abb63(8)*spbk5k1
      abb63(18)=abb63(17)*c1
      abb63(19)=abb63(18)*abb63(4)
      abb63(12)=abb63(12)-abb63(19)
      abb63(19)=abb63(12)*abb63(3)
      abb63(20)=abb63(15)**2
      abb63(21)=-abb63(20)*abb63(19)
      abb63(21)=abb63(16)+abb63(21)
      abb63(22)=abb63(1)**2
      abb63(21)=abb63(21)*abb63(22)
      abb63(23)=abb63(5)*abb63(4)
      abb63(24)=abb63(23)*c1
      abb63(17)=abb63(17)*abb63(24)
      abb63(23)=abb63(11)*abb63(23)
      abb63(25)=spbk5k1*abb63(23)
      abb63(17)=abb63(17)-abb63(25)
      abb63(25)=2.0_ki*abb63(17)
      abb63(26)=spbk5l4*spak2l4**2
      abb63(27)=abb63(22)*spbl4k1
      abb63(28)=-abb63(25)*abb63(27)*abb63(26)
      abb63(21)=abb63(21)+abb63(28)
      abb63(21)=2.0_ki*abb63(21)
      abb63(8)=abb63(24)*abb63(8)
      abb63(8)=abb63(23)-abb63(8)
      abb63(13)=-abb63(13)*abb63(8)
      abb63(23)=abb63(13)*spak2l4
      abb63(24)=spak1k2*spbl4k1
      abb63(28)=-abb63(23)*abb63(24)
      abb63(16)=abb63(16)+abb63(28)
      abb63(16)=2.0_ki*abb63(16)
      abb63(28)=abb63(17)*abb63(15)
      abb63(24)=abb63(28)*abb63(24)
      abb63(29)=spbk5l4**2
      abb63(30)=spak2l4*abb63(12)*abb63(29)
      abb63(24)=abb63(30)+abb63(24)
      abb63(24)=2.0_ki*abb63(24)
      abb63(30)=abb63(17)*spak2l4
      abb63(31)=abb63(8)*abb63(3)
      abb63(26)=-abb63(31)*abb63(26)
      abb63(26)=-4.0_ki*abb63(30)+abb63(26)
      abb63(26)=abb63(26)*abb63(27)
      abb63(32)=2.0_ki*abb63(3)
      abb63(33)=abb63(12)*abb63(32)
      abb63(34)=-abb63(15)*abb63(33)
      abb63(34)=abb63(34)+abb63(14)
      abb63(34)=abb63(34)*abb63(22)
      abb63(26)=abb63(34)+abb63(26)
      abb63(26)=2.0_ki*abb63(26)
      abb63(30)=spbl4k1*abb63(30)
      abb63(34)=abb63(15)*abb63(3)
      abb63(35)=abb63(12)*abb63(34)
      abb63(14)=abb63(30)+abb63(35)+abb63(14)
      abb63(14)=2.0_ki*abb63(14)
      abb63(30)=abb63(3)*spak2l4
      abb63(29)=abb63(10)*abb63(29)*abb63(30)
      abb63(35)=spbl4k1*abb63(8)*abb63(15)
      abb63(12)=spbk5l4*abb63(12)
      abb63(12)=abb63(35)+abb63(12)+abb63(29)
      abb63(12)=2.0_ki*abb63(12)
      abb63(8)=2.0_ki*abb63(8)
      abb63(27)=-abb63(30)*abb63(27)*abb63(8)
      abb63(19)=-abb63(22)*abb63(19)
      abb63(19)=abb63(19)+abb63(27)
      abb63(19)=2.0_ki*abb63(19)
      abb63(10)=spbk5l4*abb63(10)*abb63(32)
      abb63(27)=4.0_ki*abb63(22)*abb63(23)
      abb63(23)=2.0_ki*abb63(23)
      abb63(29)=-abb63(15)*abb63(25)
      abb63(32)=abb63(25)*abb63(30)
      abb63(35)=-abb63(22)*abb63(32)
      abb63(15)=abb63(31)*abb63(15)
      abb63(15)=2.0_ki*abb63(15)
      abb63(20)=abb63(20)*abb63(31)
      abb63(20)=4.0_ki*abb63(28)+abb63(20)
      abb63(20)=abb63(20)*abb63(22)
      abb63(28)=abb63(6)*mH**2
      abb63(36)=abb63(28)*spbk5l4
      abb63(37)=-es34+es12+es51
      abb63(38)=-abb63(37)*abb63(17)*abb63(36)
      abb63(39)=abb63(13)*abb63(22)
      abb63(18)=abb63(18)*abb63(5)
      abb63(11)=abb63(11)*abb63(5)
      abb63(40)=abb63(11)*spbk5k1
      abb63(18)=abb63(18)-abb63(40)
      abb63(40)=abb63(18)*abb63(28)
      abb63(41)=spbl4k1*abb63(40)
      abb63(39)=-abb63(39)+abb63(41)
      abb63(39)=spak1k2*abb63(39)
      abb63(20)=abb63(20)+abb63(39)+abb63(38)
      abb63(20)=2.0_ki*abb63(20)
      abb63(13)=2.0_ki*abb63(13)*spak1k2
      abb63(38)=-spak1k2*abb63(25)*spbk5l4
      abb63(39)=abb63(28)*abb63(7)
      abb63(41)=abb63(39)*abb63(17)
      abb63(36)=abb63(31)*abb63(36)
      abb63(36)=abb63(41)+abb63(36)
      abb63(36)=-abb63(36)*abb63(37)
      abb63(41)=3.0_ki*abb63(17)+abb63(15)
      abb63(41)=abb63(41)*abb63(22)
      abb63(9)=abb63(5)*abb63(9)
      abb63(9)=abb63(9)-abb63(11)
      abb63(11)=-spbl4k1*abb63(9)*abb63(28)
      abb63(11)=3.0_ki*abb63(41)+abb63(11)+abb63(36)
      abb63(11)=2.0_ki*abb63(11)
      abb63(8)=-spbk5l4*abb63(8)
      abb63(36)=-abb63(39)*abb63(37)
      abb63(22)=8.0_ki*abb63(22)+abb63(36)
      abb63(22)=2.0_ki*abb63(31)*abb63(22)
      abb63(17)=-spak1l4*abb63(17)*abb63(34)
      abb63(31)=spak2l4*abb63(18)
      abb63(17)=abb63(17)+abb63(31)-2.0_ki*abb63(40)
      abb63(17)=2.0_ki*abb63(17)
      abb63(28)=abb63(28)*abb63(3)
      abb63(28)=-abb63(30)+2.0_ki*abb63(28)
      abb63(28)=2.0_ki*abb63(9)*abb63(28)
      abb63(30)=2.0_ki*abb63(39)
      abb63(18)=-spak1k2*abb63(18)*abb63(30)
      abb63(9)=abb63(9)*abb63(30)
      R2d63=0.0_ki
      rat2 = rat2 + R2d63
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='63' value='", &
          & R2d63, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd63h1
