module     p1_dg_hhd_abbrevd6h1
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_globalsh1
   implicit none
   private
   complex(ki), dimension(47), public :: abb6
   complex(ki), public :: R2d6
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dg_hhd_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_model
      use p1_dg_hhd_color, only: TR
      use p1_dg_hhd_globalsl1, only: epspow
      implicit none
      abb6(1)=sqrt2**(-1)
      abb6(2)=es51**(-1)
      abb6(3)=spak1k2**(-1)
      abb6(4)=sqrt(mT**2)
      abb6(5)=spak2l4**(-1)
      abb6(6)=spbl4k2**(-1)
      abb6(7)=spak2l3**(-1)
      abb6(8)=spbl3k2**(-1)
      abb6(9)=spbk2k1*spak1k5
      abb6(10)=abb6(1)*abb6(2)*c1*TR*i_*gHT**2
      abb6(11)=abb6(10)*abb6(3)
      abb6(12)=abb6(9)*abb6(11)
      abb6(13)=-16.0_ki/3.0_ki*abb6(12)
      abb6(14)=es12*spal3k5
      abb6(15)=abb6(14)*spbl3k2
      abb6(16)=spbl3k2*spal3l4
      abb6(17)=abb6(16)*spbl4k1
      abb6(18)=abb6(17)*spak1k5
      abb6(19)=spal4k5*spbl4k2
      abb6(20)=abb6(19)*es12
      abb6(21)=abb6(18)-2.0_ki*abb6(15)-abb6(20)
      abb6(22)=abb6(4)**2
      abb6(21)=abb6(21)*abb6(22)
      abb6(23)=abb6(20)*abb6(8)
      abb6(24)=abb6(23)+abb6(14)
      abb6(24)=abb6(24)*abb6(7)
      abb6(25)=abb6(22)*abb6(24)
      abb6(26)=abb6(5)*abb6(6)
      abb6(27)=abb6(26)*spbl3k2
      abb6(28)=abb6(27)*spak2l3
      abb6(28)=abb6(28)+1.0_ki
      abb6(29)=abb6(28)*spak1k5
      abb6(30)=abb6(7)+abb6(27)
      abb6(30)=abb6(30)*spak2k5*spak1l3
      abb6(29)=abb6(29)+abb6(30)
      abb6(30)=abb6(22)*spbk2k1
      abb6(31)=-abb6(29)*abb6(30)
      abb6(25)=abb6(25)+abb6(31)
      abb6(31)=mH**2
      abb6(25)=abb6(25)*abb6(31)
      abb6(32)=abb6(22)*spak1k5
      abb6(33)=2.0_ki*abb6(32)
      abb6(34)=spal4k5*spbl4l3
      abb6(35)=abb6(34)*spak1l3
      abb6(36)=abb6(35)-abb6(33)
      abb6(36)=abb6(36)*abb6(30)
      abb6(21)=abb6(25)+abb6(21)+abb6(36)
      abb6(25)=4.0_ki*abb6(11)
      abb6(21)=abb6(21)*abb6(25)
      abb6(36)=2.0_ki*abb6(22)
      abb6(37)=-abb6(9)*abb6(36)
      abb6(15)=abb6(15)+abb6(37)
      abb6(15)=abb6(15)*abb6(25)
      abb6(37)=abb6(22)*abb6(9)
      abb6(37)=-abb6(20)-4.0_ki*abb6(37)
      abb6(37)=abb6(37)*abb6(25)
      abb6(38)=abb6(7)*abb6(8)
      abb6(39)=abb6(26)+2.0_ki*abb6(38)
      abb6(33)=-abb6(39)*abb6(33)
      abb6(33)=abb6(33)+abb6(29)
      abb6(33)=spbk2k1*abb6(33)
      abb6(40)=abb6(27)*abb6(14)
      abb6(14)=-abb6(14)-2.0_ki*abb6(23)
      abb6(14)=abb6(7)*abb6(14)
      abb6(14)=abb6(33)+abb6(40)+abb6(14)
      abb6(14)=abb6(14)*abb6(31)
      abb6(23)=-abb6(35)+6.0_ki*abb6(32)
      abb6(23)=spbk2k1*abb6(23)
      abb6(14)=abb6(14)-abb6(18)+abb6(23)
      abb6(14)=abb6(14)*abb6(25)
      abb6(12)=16.0_ki*abb6(12)
      abb6(23)=abb6(38)*abb6(31)
      abb6(33)=abb6(12)*abb6(23)
      abb6(40)=abb6(25)*abb6(19)
      abb6(41)=abb6(22)*abb6(40)
      abb6(29)=spbk2k1*abb6(29)
      abb6(24)=-abb6(24)+abb6(29)
      abb6(24)=abb6(24)*abb6(31)
      abb6(29)=-spbk2k1*abb6(35)
      abb6(18)=abb6(24)+abb6(29)-abb6(20)-abb6(18)
      abb6(18)=abb6(18)*abb6(25)
      abb6(20)=8.0_ki*abb6(11)
      abb6(9)=abb6(20)*abb6(9)
      abb6(24)=abb6(39)*abb6(31)
      abb6(24)=1.0_ki+abb6(24)
      abb6(24)=abb6(24)*abb6(9)
      abb6(29)=2.0_ki*abb6(3)
      abb6(29)=abb6(29)*abb6(10)
      abb6(16)=-es12*abb6(16)
      abb6(30)=spak1l4*abb6(30)
      abb6(16)=abb6(16)+abb6(30)
      abb6(16)=abb6(16)*abb6(29)
      abb6(30)=abb6(29)*spak1l4
      abb6(35)=-spbk2k1*abb6(30)
      abb6(39)=-abb6(3)*spbl4k1*spak1l4*abb6(22)
      abb6(39)=abb6(17)+abb6(39)
      abb6(10)=2.0_ki*abb6(39)*abb6(10)
      abb6(30)=spbl4k1*abb6(30)
      abb6(39)=abb6(29)*spbl4k2
      abb6(32)=-abb6(32)*abb6(39)
      abb6(39)=spak1k5*abb6(39)
      abb6(42)=spal3k5*spbl3k1
      abb6(43)=spal4k5*spbl4k1
      abb6(44)=-4.0_ki*abb6(42)-3.0_ki*abb6(43)
      abb6(36)=abb6(44)*abb6(36)
      abb6(44)=spak2l3*abb6(34)
      abb6(45)=spak2k5*abb6(22)
      abb6(44)=abb6(44)-6.0_ki*abb6(45)
      abb6(44)=spbk2k1*abb6(44)
      abb6(45)=abb6(38)*spak2k5
      abb6(46)=abb6(26)*spak2k5
      abb6(47)=-3.0_ki*abb6(46)-4.0_ki*abb6(45)
      abb6(47)=abb6(47)*abb6(22)
      abb6(28)=-spak2k5*abb6(28)
      abb6(28)=abb6(28)+abb6(47)
      abb6(47)=abb6(31)*spbk2k1
      abb6(28)=abb6(28)*abb6(47)
      abb6(17)=spak2k5*abb6(17)
      abb6(17)=2.0_ki*abb6(28)+abb6(44)+abb6(17)+abb6(36)
      abb6(17)=abb6(17)*abb6(29)
      abb6(28)=abb6(47)*abb6(45)
      abb6(28)=abb6(42)+abb6(28)
      abb6(28)=abb6(28)*abb6(20)
      abb6(36)=abb6(46)*abb6(47)
      abb6(44)=spbk2k1*spak2k5
      abb6(36)=abb6(43)+abb6(44)+abb6(36)
      abb6(44)=-abb6(36)*abb6(20)
      abb6(42)=abb6(26)*abb6(42)
      abb6(43)=-abb6(38)*abb6(43)
      abb6(46)=-spbk2k1*abb6(45)
      abb6(42)=abb6(46)+abb6(42)+abb6(43)
      abb6(42)=abb6(42)*abb6(31)*abb6(20)
      abb6(25)=-abb6(36)*abb6(25)
      abb6(36)=abb6(38)*spak2l4
      abb6(38)=-abb6(47)*abb6(36)
      abb6(43)=-spal3l4*spbl3k1
      abb6(38)=abb6(43)+abb6(38)
      abb6(38)=abb6(38)*abb6(29)
      abb6(26)=abb6(26)*spak2l3
      abb6(26)=abb6(26)+2.0_ki*abb6(8)
      abb6(43)=-abb6(26)*abb6(47)
      abb6(46)=spbl4k1*spal3l4
      abb6(43)=abb6(46)+abb6(43)
      abb6(43)=abb6(43)*abb6(29)
      abb6(46)=abb6(29)*abb6(31)
      abb6(26)=spbl3k1*abb6(26)
      abb6(36)=spbl4k1*abb6(36)
      abb6(26)=abb6(36)+abb6(26)
      abb6(26)=abb6(26)*abb6(46)
      abb6(22)=24.0_ki*abb6(22)*abb6(11)
      abb6(11)=16.0_ki*abb6(11)
      abb6(23)=abb6(23)*abb6(11)
      abb6(36)=spbl4k2*abb6(31)*abb6(45)
      abb6(45)=spal3k5*spbl4l3
      abb6(36)=abb6(45)+abb6(36)
      abb6(36)=abb6(36)*abb6(29)
      abb6(45)=abb6(27)+2.0_ki*abb6(7)
      abb6(31)=abb6(31)*spak2k5*abb6(45)
      abb6(31)=-abb6(34)+abb6(31)
      abb6(29)=abb6(31)*abb6(29)
      abb6(27)=-spal3k5*abb6(27)
      abb6(19)=-abb6(8)*abb6(19)
      abb6(19)=-2.0_ki*spal3k5+abb6(19)
      abb6(19)=abb6(7)*abb6(19)
      abb6(19)=abb6(27)+abb6(19)
      abb6(19)=abb6(19)*abb6(46)
      R2d6=abb6(13)
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd6h1
