module     p0_gg_hhg_abbrevd49h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh4
   implicit none
   private
   complex(ki), dimension(57), public :: abb49
   complex(ki), public :: R2d49
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
      abb49(1)=sqrt(mT**2)
      abb49(2)=sqrt2**(-1)
      abb49(3)=spbk2k1**(-1)
      abb49(4)=spbk5k2**(-1)
      abb49(5)=spak2l4**(-1)
      abb49(6)=spbl4k2**(-1)
      abb49(7)=c1-c2
      abb49(8)=i_*abb49(2)
      abb49(9)=abb49(8)*abb49(3)
      abb49(10)=-abb49(4)*abb49(9)*abb49(7)
      abb49(11)=gHT**2*abb49(10)
      abb49(12)=abb49(1)**4
      abb49(13)=-abb49(12)*abb49(11)
      abb49(14)=abb49(1)*gHT
      abb49(10)=-abb49(14)**2*abb49(10)
      abb49(14)=2.0_ki*es12
      abb49(15)=abb49(10)*abb49(14)
      abb49(16)=abb49(13)-abb49(15)
      abb49(17)=es51-es34
      abb49(16)=-abb49(16)*abb49(17)
      abb49(18)=abb49(15)+abb49(13)
      abb49(18)=es12*abb49(18)
      abb49(16)=abb49(18)+abb49(16)
      abb49(16)=spak1k5*abb49(16)
      abb49(18)=-abb49(10)*abb49(17)
      abb49(19)=abb49(10)*es12
      abb49(20)=abb49(18)-abb49(19)
      abb49(21)=abb49(13)-abb49(20)
      abb49(22)=spal4k5*spbl4k2
      abb49(21)=spak1k2*abb49(21)*abb49(22)
      abb49(23)=gHT*abb49(4)
      abb49(23)=abb49(23)**2
      abb49(9)=abb49(7)*abb49(23)*abb49(9)
      abb49(12)=abb49(12)*abb49(9)
      abb49(17)=-es12-abb49(17)
      abb49(24)=spak1l4*spbl4k2
      abb49(25)=-abb49(24)*abb49(12)*abb49(17)
      abb49(16)=abb49(25)+abb49(16)+abb49(21)
      abb49(16)=2.0_ki*abb49(16)
      abb49(21)=abb49(1)**2
      abb49(25)=-abb49(21)*abb49(9)
      abb49(26)=abb49(25)*es12
      abb49(27)=abb49(26)*abb49(24)
      abb49(28)=spak1k5*abb49(15)
      abb49(29)=abb49(10)*spak1k2
      abb49(30)=abb49(29)*abb49(22)
      abb49(27)=abb49(27)+abb49(28)+abb49(30)
      abb49(27)=4.0_ki*abb49(27)
      abb49(28)=abb49(25)*es34
      abb49(30)=abb49(28)-abb49(26)
      abb49(31)=abb49(25)*es51
      abb49(32)=abb49(30)-abb49(31)
      abb49(33)=-abb49(32)*abb49(24)
      abb49(34)=abb49(20)*spak1k5
      abb49(33)=-abb49(34)+abb49(33)
      abb49(33)=4.0_ki*abb49(33)
      abb49(34)=abb49(25)*abb49(24)
      abb49(10)=spak1k5*abb49(10)
      abb49(10)=abb49(10)+abb49(34)
      abb49(10)=8.0_ki*abb49(10)
      abb49(34)=4.0_ki*spak1k5
      abb49(35)=-abb49(20)*abb49(34)
      abb49(36)=-abb49(11)*abb49(17)
      abb49(37)=8.0_ki*spak1k5*abb49(36)
      abb49(38)=abb49(11)*spak1k5
      abb49(39)=16.0_ki*abb49(38)
      abb49(40)=2.0_ki*spak1k5
      abb49(41)=abb49(18)*abb49(40)
      abb49(42)=-abb49(36)*abb49(34)
      abb49(38)=-8.0_ki*abb49(38)
      abb49(43)=spak1l4*abb49(15)
      abb49(44)=abb49(5)*abb49(6)*mH**2
      abb49(19)=abb49(44)*abb49(19)
      abb49(13)=abb49(19)-3.0_ki*abb49(13)-abb49(15)+2.0_ki*abb49(18)
      abb49(15)=2.0_ki*spak1k2
      abb49(13)=abb49(13)*abb49(15)
      abb49(18)=-8.0_ki*abb49(29)
      abb49(19)=4.0_ki*abb49(29)
      abb49(45)=-abb49(44)*abb49(19)
      abb49(46)=-abb49(11)*abb49(15)
      abb49(15)=-spbl4k2*abb49(32)*abb49(15)
      abb49(29)=2.0_ki*abb49(29)
      abb49(47)=abb49(32)*abb49(22)
      abb49(7)=-abb49(23)*abb49(8)*abb49(7)
      abb49(8)=-abb49(21)*abb49(7)
      abb49(21)=abb49(40)*abb49(8)
      abb49(23)=-abb49(17)*abb49(21)
      abb49(8)=abb49(8)*spak2k5
      abb49(40)=-abb49(24)*abb49(8)
      abb49(23)=abb49(40)+abb49(23)+abb49(47)
      abb49(23)=2.0_ki*abb49(23)
      abb49(22)=-abb49(25)*abb49(22)
      abb49(24)=-abb49(7)*abb49(24)*spak2k5
      abb49(21)=abb49(24)+abb49(21)+abb49(22)
      abb49(21)=4.0_ki*abb49(21)
      abb49(22)=-abb49(7)*abb49(34)
      abb49(7)=-4.0_ki*spak1l4*abb49(7)
      abb49(24)=4.0_ki*abb49(32)
      abb49(34)=-abb49(9)*es12
      abb49(40)=4.0_ki*abb49(44)
      abb49(40)=-abb49(34)*abb49(40)
      abb49(47)=-abb49(44)*abb49(9)
      abb49(48)=8.0_ki*abb49(47)
      abb49(49)=-4.0_ki*abb49(9)
      abb49(50)=spak2k5*spbl4k2*abb49(49)
      abb49(20)=2.0_ki*spal4k5*abb49(20)
      abb49(36)=-4.0_ki*spal4k5*abb49(36)
      abb49(11)=-8.0_ki*spal4k5*abb49(11)
      abb49(51)=2.0_ki*abb49(32)
      abb49(52)=-abb49(9)*es51
      abb49(53)=-abb49(9)*es34
      abb49(54)=-abb49(53)+abb49(52)+abb49(34)
      abb49(55)=4.0_ki*abb49(54)
      abb49(56)=-8.0_ki*abb49(9)
      abb49(57)=abb49(25)*abb49(14)
      abb49(28)=-abb49(57)+abb49(28)
      abb49(28)=es34*abb49(28)
      abb49(30)=-2.0_ki*abb49(30)+abb49(31)
      abb49(30)=es51*abb49(30)
      abb49(31)=abb49(25)*es12**2
      abb49(28)=abb49(30)+abb49(31)+abb49(28)
      abb49(28)=abb49(28)*abb49(44)
      abb49(12)=abb49(57)+3.0_ki*abb49(12)
      abb49(12)=-abb49(12)*abb49(17)
      abb49(12)=abb49(28)+abb49(12)
      abb49(12)=2.0_ki*abb49(12)
      abb49(17)=8.0_ki*abb49(26)
      abb49(14)=-abb49(14)*abb49(9)
      abb49(14)=abb49(14)+abb49(25)
      abb49(26)=-abb49(52)+2.0_ki*abb49(53)-abb49(14)
      abb49(26)=es51*abb49(26)
      abb49(28)=-abb49(34)-abb49(25)
      abb49(28)=es12*abb49(28)
      abb49(14)=-abb49(53)+abb49(14)
      abb49(14)=es34*abb49(14)
      abb49(14)=abb49(26)+abb49(28)+abb49(14)
      abb49(14)=abb49(14)*abb49(44)
      abb49(14)=-3.0_ki*abb49(32)+abb49(14)
      abb49(14)=4.0_ki*abb49(14)
      abb49(26)=8.0_ki*abb49(54)
      abb49(28)=abb49(26)*abb49(44)
      abb49(30)=16.0_ki*abb49(47)
      abb49(9)=16.0_ki*abb49(9)
      abb49(31)=2.0_ki*abb49(54)
      abb49(25)=12.0_ki*abb49(25)
      abb49(8)=-4.0_ki*abb49(8)
      R2d49=0.0_ki
      rat2 = rat2 + R2d49
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='49' value='", &
          & R2d49, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd49h4
