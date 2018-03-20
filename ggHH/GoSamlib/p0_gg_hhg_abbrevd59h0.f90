module     p0_gg_hhg_abbrevd59h0
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh0
   implicit none
   private
   complex(ki), dimension(56), public :: abb59
   complex(ki), public :: R2d59
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
      abb59(1)=sqrt(mT**2)
      abb59(2)=sqrt2**(-1)
      abb59(3)=spbk2k1**(-1)
      abb59(4)=spak2k5**(-1)
      abb59(5)=spbk5k2**(-1)
      abb59(6)=spbl3k2**(-1)
      abb59(7)=spak2l3**(-1)
      abb59(8)=abb59(2)*i_*abb59(3)
      abb59(9)=c1-c2
      abb59(10)=abb59(9)*abb59(4)*abb59(8)
      abb59(11)=abb59(1)*gHT
      abb59(11)=-abb59(11)**2*abb59(10)
      abb59(12)=abb59(11)*abb59(5)
      abb59(13)=-abb59(12)*spak1l3
      abb59(14)=spbk5l3**2
      abb59(15)=2.0_ki*spak2l3
      abb59(16)=abb59(14)*abb59(13)*abb59(15)
      abb59(17)=abb59(11)*spak1k2
      abb59(18)=mH**2
      abb59(19)=abb59(18)*abb59(6)
      abb59(20)=abb59(19)*spbk5l3
      abb59(21)=-abb59(20)*abb59(17)
      abb59(22)=spak1k2**2
      abb59(23)=-abb59(22)*abb59(11)
      abb59(24)=abb59(23)*spbk5k1
      abb59(16)=abb59(16)-abb59(24)+2.0_ki*abb59(21)
      abb59(16)=es12*abb59(16)
      abb59(14)=abb59(14)*spak2l3
      abb59(25)=abb59(14)*abb59(13)
      abb59(21)=abb59(25)+abb59(21)
      abb59(25)=es51-es34
      abb59(21)=abb59(21)*abb59(25)
      abb59(26)=spak2l3*spbk5l3
      abb59(27)=abb59(26)*spak1l3
      abb59(28)=abb59(17)*abb59(27)
      abb59(29)=abb59(23)*spbk5k2
      abb59(30)=-abb59(19)*abb59(29)
      abb59(28)=abb59(30)+abb59(28)
      abb59(28)=spbl3k1*abb59(28)
      abb59(30)=gHT**2
      abb59(31)=abb59(30)*abb59(10)
      abb59(32)=-abb59(22)*abb59(31)
      abb59(33)=abb59(1)**4
      abb59(34)=-abb59(33)*abb59(32)
      abb59(35)=-abb59(23)*abb59(18)
      abb59(34)=2.0_ki*abb59(34)+abb59(35)
      abb59(34)=spbk5k1*abb59(34)
      abb59(35)=spbk5k1*spak2l3
      abb59(23)=abb59(23)*abb59(35)
      abb59(36)=-spak1k2*abb59(12)
      abb59(37)=abb59(36)*spbk5k1
      abb59(38)=-abb59(37)*abb59(27)
      abb59(23)=abb59(23)+abb59(38)
      abb59(23)=spbl3k2*abb59(23)
      abb59(38)=-spak1k2*abb59(31)
      abb59(33)=abb59(38)*abb59(33)
      abb59(39)=abb59(33)*abb59(26)
      abb59(16)=abb59(23)+2.0_ki*abb59(39)+abb59(34)+abb59(28)+abb59(16)+abb59(&
      &21)
      abb59(16)=2.0_ki*abb59(16)
      abb59(21)=abb59(12)*abb59(14)
      abb59(23)=2.0_ki*spbk5l3
      abb59(28)=abb59(23)*abb59(37)
      abb59(21)=abb59(21)+abb59(28)
      abb59(21)=spak1l3*abb59(21)
      abb59(28)=abb59(19)*abb59(7)
      abb59(34)=abb59(28)-1.0_ki
      abb59(39)=abb59(24)*abb59(34)
      abb59(21)=abb59(21)+abb59(39)
      abb59(21)=4.0_ki*abb59(21)
      abb59(39)=abb59(17)*abb59(26)
      abb59(24)=abb59(39)+abb59(24)
      abb59(32)=abb59(32)*spbk5k1
      abb59(39)=abb59(28)*es12
      abb59(40)=abb59(39)-es12
      abb59(41)=-abb59(32)*abb59(40)
      abb59(30)=abb59(30)*abb59(5)
      abb59(10)=abb59(10)*abb59(30)
      abb59(42)=-spak1k2*abb59(10)
      abb59(43)=abb59(42)*spbk5k1
      abb59(44)=spak1l3*spbk5l3
      abb59(45)=abb59(43)*abb59(44)
      abb59(46)=-es12*abb59(45)
      abb59(24)=abb59(46)+2.0_ki*abb59(24)+abb59(41)
      abb59(24)=2.0_ki*abb59(24)
      abb59(32)=abb59(32)*abb59(34)
      abb59(32)=abb59(45)+abb59(32)
      abb59(32)=4.0_ki*abb59(32)
      abb59(41)=abb59(36)*spbk5l3
      abb59(45)=-es12*abb59(41)
      abb59(46)=spbl3k2*abb59(36)*abb59(26)
      abb59(45)=abb59(45)+abb59(46)
      abb59(45)=2.0_ki*abb59(45)
      abb59(41)=4.0_ki*abb59(41)
      abb59(46)=abb59(23)*abb59(42)
      abb59(47)=es12*abb59(46)
      abb59(48)=-4.0_ki*spbk5l3*abb59(42)
      abb59(49)=abb59(36)*abb59(14)
      abb59(22)=spbk5k1*spbk5l3*abb59(22)*abb59(12)
      abb59(22)=abb59(49)+abb59(22)
      abb59(22)=2.0_ki*abb59(22)
      abb59(49)=-abb59(28)*abb59(17)
      abb59(50)=abb59(13)*spbk5l3
      abb59(51)=abb59(49)+abb59(50)
      abb59(51)=abb59(51)*abb59(25)
      abb59(52)=-spbl3k2*spak2l3
      abb59(18)=abb59(52)+2.0_ki*abb59(39)+es12+abb59(18)
      abb59(18)=-abb59(17)*abb59(18)
      abb59(50)=es12*abb59(50)
      abb59(18)=3.0_ki*abb59(50)+4.0_ki*abb59(33)+abb59(18)+abb59(51)
      abb59(18)=2.0_ki*abb59(18)
      abb59(13)=-abb59(13)*abb59(23)
      abb59(13)=-abb59(49)+abb59(13)-abb59(17)
      abb59(13)=4.0_ki*abb59(13)
      abb59(33)=abb59(38)*abb59(40)
      abb59(33)=-4.0_ki*abb59(17)+abb59(33)
      abb59(33)=2.0_ki*abb59(33)
      abb59(40)=4.0_ki*abb59(38)
      abb59(34)=-abb59(34)*abb59(40)
      abb59(27)=-abb59(11)*abb59(27)
      abb59(49)=-spbk5k2*abb59(17)*abb59(19)
      abb59(27)=abb59(27)+abb59(49)
      abb59(27)=2.0_ki*abb59(27)
      abb59(44)=-abb59(17)*abb59(44)
      abb59(29)=abb59(28)*abb59(29)
      abb59(29)=abb59(44)+abb59(29)
      abb59(29)=2.0_ki*abb59(29)
      abb59(44)=-abb59(12)*abb59(26)
      abb59(49)=3.0_ki*abb59(44)-abb59(37)
      abb59(49)=es12*abb59(49)
      abb59(50)=spbk5l3*spak2l3**2
      abb59(51)=-abb59(12)*abb59(50)
      abb59(52)=2.0_ki*abb59(35)
      abb59(36)=-abb59(36)*abb59(52)
      abb59(36)=abb59(51)+abb59(36)
      abb59(36)=spbl3k2*abb59(36)
      abb59(51)=abb59(44)*abb59(25)
      abb59(53)=spbl3k1*spak2l3
      abb59(54)=abb59(17)*abb59(53)
      abb59(36)=abb59(54)+abb59(36)+abb59(49)+abb59(51)
      abb59(36)=2.0_ki*abb59(36)
      abb59(49)=-abb59(10)*abb59(25)
      abb59(51)=abb59(10)*es12
      abb59(54)=abb59(49)-abb59(51)
      abb59(20)=-abb59(20)*abb59(54)
      abb59(55)=abb59(38)*abb59(19)
      abb59(56)=spbl3k1*abb59(55)
      abb59(20)=abb59(56)-4.0_ki*abb59(44)+5.0_ki*abb59(37)+abb59(20)
      abb59(20)=4.0_ki*abb59(20)
      abb59(37)=abb59(10)*abb59(26)
      abb59(44)=-abb59(37)-abb59(43)
      abb59(44)=es12*abb59(44)
      abb59(56)=-abb59(37)*abb59(25)
      abb59(53)=-abb59(38)*abb59(53)
      abb59(44)=abb59(53)+abb59(44)+abb59(56)
      abb59(44)=2.0_ki*abb59(44)
      abb59(43)=4.0_ki*abb59(43)
      abb59(8)=-abb59(9)*abb59(8)*abb59(30)
      abb59(9)=-abb59(8)*abb59(14)
      abb59(14)=spbl3k1*abb59(42)*abb59(26)
      abb59(9)=abb59(9)+abb59(14)
      abb59(9)=2.0_ki*abb59(9)
      abb59(14)=spbl3k2*abb59(15)
      abb59(14)=abb59(14)+5.0_ki*es12+abb59(25)
      abb59(14)=-2.0_ki*abb59(12)*abb59(14)
      abb59(25)=-abb59(28)*abb59(49)
      abb59(26)=abb59(10)*abb59(39)
      abb59(25)=abb59(26)+abb59(25)
      abb59(25)=4.0_ki*abb59(25)
      abb59(26)=2.0_ki*abb59(54)
      abb59(8)=-abb59(8)*abb59(23)
      abb59(23)=abb59(11)*abb59(15)
      abb59(19)=abb59(31)*abb59(19)
      abb59(30)=4.0_ki*abb59(19)
      abb59(15)=-abb59(31)*abb59(15)
      abb59(39)=2.0_ki*abb59(37)
      abb59(42)=-2.0_ki*abb59(17)
      abb59(28)=-abb59(28)*abb59(40)
      abb59(40)=2.0_ki*abb59(38)
      abb59(49)=abb59(37)*spak1l3
      abb59(49)=abb59(49)-abb59(55)
      abb59(49)=spbk5k1*abb59(49)
      abb59(38)=abb59(38)*abb59(35)
      abb59(38)=abb59(38)+abb59(49)
      abb59(49)=es12*abb59(38)
      abb59(11)=abb59(11)*abb59(50)
      abb59(17)=-abb59(17)*abb59(35)
      abb59(11)=abb59(11)+abb59(17)+abb59(49)
      abb59(11)=2.0_ki*abb59(11)
      abb59(17)=-4.0_ki*abb59(38)
      abb59(38)=-es12*abb59(39)
      abb59(37)=4.0_ki*abb59(37)
      abb59(31)=abb59(31)*spak2l3
      abb59(19)=abb59(31)-abb59(19)
      abb59(31)=es12*abb59(19)
      abb59(31)=abb59(23)+abb59(31)
      abb59(31)=2.0_ki*abb59(31)
      abb59(19)=-4.0_ki*abb59(19)
      abb59(49)=abb59(51)*abb59(52)
      abb59(10)=-4.0_ki*abb59(10)*abb59(35)
      abb59(12)=16.0_ki*abb59(12)
      R2d59=0.0_ki
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd59h0
