module     p0_gg_hhg_abbrevd61h0
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh0
   implicit none
   private
   complex(ki), dimension(66), public :: abb61
   complex(ki), public :: R2d61
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
      abb61(1)=sqrt(mT**2)
      abb61(2)=sqrt2**(-1)
      abb61(3)=spbk2k1**(-1)
      abb61(4)=spak2k5**(-1)
      abb61(5)=spak2l3**(-1)
      abb61(6)=spbl3k2**(-1)
      abb61(7)=spbk5k2**(-1)
      abb61(8)=spak2l4**(-1)
      abb61(9)=spbl4k2**(-1)
      abb61(10)=c2-c1
      abb61(11)=abb61(1)**2
      abb61(12)=-abb61(11)*abb61(10)
      abb61(13)=spbk5l3*spak1l3
      abb61(14)=spbk5l4*spak1l4
      abb61(15)=abb61(14)+2.0_ki*abb61(13)
      abb61(15)=-abb61(15)*abb61(12)
      abb61(16)=abb61(15)*es12
      abb61(17)=abb61(7)*spbk5k1
      abb61(18)=abb61(16)*abb61(17)
      abb61(19)=abb61(8)*abb61(9)
      abb61(20)=abb61(6)*abb61(5)
      abb61(21)=abb61(19)+2.0_ki*abb61(20)
      abb61(22)=abb61(21)*es12
      abb61(23)=spak2l4*spbl4k2
      abb61(24)=abb61(23)*abb61(20)
      abb61(25)=abb61(19)*spak2l3
      abb61(26)=abb61(25)*spbl3k2
      abb61(22)=abb61(24)-abb61(22)+abb61(26)+2.0_ki
      abb61(26)=mH**2
      abb61(22)=abb61(22)*abb61(26)
      abb61(22)=abb61(22)+2.0_ki*abb61(11)
      abb61(22)=abb61(12)*abb61(22)
      abb61(27)=spbk5k1*abb61(22)
      abb61(28)=abb61(12)*spbl3k2
      abb61(29)=spbk5l4*spal3l4
      abb61(30)=-abb61(29)*abb61(28)
      abb61(31)=abb61(30)*abb61(17)
      abb61(27)=abb61(27)+abb61(31)
      abb61(27)=spak1k2*abb61(27)
      abb61(31)=abb61(12)*spak1l3
      abb61(32)=spak2l4*spbl4l3
      abb61(33)=abb61(32)*abb61(31)
      abb61(34)=spbk5k1*abb61(33)
      abb61(18)=abb61(27)+abb61(34)+abb61(18)
      abb61(27)=abb61(2)*abb61(3)*abb61(4)*i_
      abb61(34)=gHT**2
      abb61(35)=abb61(27)*abb61(34)
      abb61(36)=spak1k2*abb61(35)
      abb61(37)=2.0_ki*abb61(36)
      abb61(18)=abb61(18)*abb61(37)
      abb61(38)=-abb61(15)*abb61(17)
      abb61(21)=abb61(12)*abb61(21)*abb61(26)
      abb61(39)=spak1k2*spbk5k1
      abb61(40)=-abb61(21)*abb61(39)
      abb61(38)=abb61(38)+abb61(40)
      abb61(36)=4.0_ki*abb61(36)
      abb61(38)=abb61(38)*abb61(36)
      abb61(40)=abb61(10)*abb61(39)
      abb61(19)=abb61(19)+abb61(20)
      abb61(41)=abb61(26)*es12
      abb61(42)=abb61(19)*abb61(41)
      abb61(43)=6.0_ki*abb61(11)
      abb61(44)=abb61(42)-abb61(43)
      abb61(44)=abb61(44)*abb61(40)
      abb61(13)=abb61(13)+abb61(14)
      abb61(14)=-es12*abb61(10)
      abb61(45)=abb61(14)*abb61(13)
      abb61(46)=-abb61(45)*abb61(17)
      abb61(44)=abb61(46)+abb61(44)
      abb61(44)=abb61(44)*abb61(37)
      abb61(46)=-abb61(26)*abb61(10)
      abb61(19)=abb61(46)*abb61(19)
      abb61(47)=abb61(19)*abb61(39)
      abb61(13)=abb61(10)*abb61(13)
      abb61(48)=-abb61(13)*abb61(17)
      abb61(47)=abb61(48)+abb61(47)
      abb61(47)=abb61(47)*abb61(36)
      abb61(48)=abb61(7)*abb61(35)
      abb61(49)=4.0_ki*abb61(48)
      abb61(50)=abb61(49)*abb61(12)*spbk5l4
      abb61(51)=spbk5k1*spak1k2**2
      abb61(52)=-abb61(51)*abb61(50)
      abb61(53)=2.0_ki*abb61(48)
      abb61(28)=abb61(53)*abb61(28)
      abb61(54)=-abb61(51)*abb61(28)
      abb61(55)=6.0_ki*abb61(48)
      abb61(55)=abb61(55)*abb61(12)*spbk5l3
      abb61(51)=-abb61(51)*abb61(55)
      abb61(16)=-abb61(7)*abb61(16)
      abb61(30)=-abb61(7)*abb61(30)
      abb61(22)=abb61(30)-abb61(22)
      abb61(22)=spak1k2*abb61(22)
      abb61(16)=abb61(22)+abb61(16)-abb61(33)
      abb61(22)=2.0_ki*abb61(27)
      abb61(22)=abb61(22)*abb61(34)
      abb61(16)=abb61(16)*abb61(22)
      abb61(15)=abb61(7)*abb61(15)
      abb61(21)=spak1k2*abb61(21)
      abb61(15)=abb61(15)+abb61(21)
      abb61(21)=4.0_ki*abb61(35)
      abb61(15)=abb61(15)*abb61(21)
      abb61(27)=abb61(7)*abb61(45)
      abb61(30)=-spak1k2*abb61(42)*abb61(10)
      abb61(27)=abb61(27)+abb61(30)
      abb61(27)=abb61(27)*abb61(22)
      abb61(19)=-spak1k2*abb61(19)
      abb61(13)=abb61(7)*abb61(13)
      abb61(13)=abb61(13)+abb61(19)
      abb61(13)=abb61(13)*abb61(21)
      abb61(19)=-abb61(10)*abb61(36)
      abb61(30)=spak1k2*abb61(50)
      abb61(28)=spak1k2*abb61(28)
      abb61(33)=spak1k2*abb61(55)
      abb61(34)=-spbk5k1*abb61(31)*abb61(37)
      abb61(31)=abb61(31)*abb61(22)
      abb61(35)=spak2l3*spbl3k2
      abb61(42)=abb61(23)+2.0_ki*abb61(35)+3.0_ki*es12
      abb61(42)=abb61(12)*abb61(42)
      abb61(45)=abb61(53)*abb61(39)
      abb61(50)=-abb61(42)*abb61(45)
      abb61(55)=abb61(39)*abb61(48)
      abb61(56)=4.0_ki*abb61(55)
      abb61(57)=abb61(10)*abb61(56)
      abb61(24)=abb61(24)+1.0_ki
      abb61(26)=abb61(24)*abb61(26)
      abb61(26)=abb61(26)+abb61(43)
      abb61(26)=-abb61(26)*abb61(57)
      abb61(58)=-abb61(20)*abb61(46)
      abb61(59)=8.0_ki*abb61(58)
      abb61(60)=abb61(55)*abb61(59)
      abb61(23)=es12+abb61(35)+abb61(23)
      abb61(23)=abb61(10)*abb61(23)
      abb61(35)=abb61(23)*abb61(45)
      abb61(55)=8.0_ki*abb61(55)
      abb61(55)=-abb61(10)*abb61(55)
      abb61(32)=abb61(10)*abb61(32)
      abb61(61)=-abb61(32)*abb61(45)
      abb61(42)=abb61(42)*abb61(53)
      abb61(24)=-abb61(49)*abb61(24)*abb61(46)
      abb61(48)=-abb61(48)*abb61(59)
      abb61(23)=-abb61(23)*abb61(53)
      abb61(32)=abb61(32)*abb61(53)
      abb61(59)=abb61(10)*abb61(45)
      abb61(62)=abb61(10)*abb61(53)
      abb61(12)=abb61(12)*spak2l4
      abb61(63)=spbk5k1*abb61(12)*abb61(36)
      abb61(12)=-abb61(12)*abb61(21)
      abb61(25)=abb61(25)+abb61(6)
      abb61(64)=abb61(25)*abb61(41)
      abb61(11)=abb61(11)*spak2l3
      abb61(11)=-abb61(64)+3.0_ki*abb61(11)
      abb61(11)=abb61(10)*abb61(11)
      abb61(64)=-spbk5k1*abb61(11)
      abb61(65)=abb61(14)*abb61(29)
      abb61(66)=abb61(65)*abb61(17)
      abb61(64)=abb61(64)+abb61(66)
      abb61(37)=abb61(64)*abb61(37)
      abb61(25)=abb61(46)*abb61(25)
      abb61(64)=spbk5k1*abb61(25)
      abb61(29)=abb61(10)*abb61(29)
      abb61(17)=abb61(29)*abb61(17)
      abb61(17)=abb61(64)+abb61(17)
      abb61(17)=abb61(17)*abb61(36)
      abb61(36)=abb61(14)*abb61(45)
      abb61(64)=-abb61(7)*abb61(65)
      abb61(11)=abb61(64)+abb61(11)
      abb61(11)=abb61(11)*abb61(22)
      abb61(29)=-abb61(7)*abb61(29)
      abb61(25)=abb61(29)-abb61(25)
      abb61(25)=abb61(25)*abb61(21)
      abb61(14)=-abb61(14)*abb61(53)
      abb61(29)=abb61(10)*abb61(49)
      abb61(53)=spak2l4*abb61(5)*spbk5l4
      abb61(53)=abb61(53)+spbk5l3
      abb61(53)=abb61(53)*abb61(6)
      abb61(10)=-abb61(10)*abb61(53)*abb61(41)
      abb61(45)=abb61(10)*abb61(45)
      abb61(46)=abb61(46)*abb61(53)
      abb61(53)=-abb61(46)*abb61(56)
      abb61(20)=abb61(41)*abb61(20)
      abb61(40)=-abb61(20)*abb61(40)
      abb61(10)=-abb61(10)+abb61(40)
      abb61(10)=abb61(22)*abb61(7)*abb61(10)
      abb61(22)=abb61(58)*abb61(39)
      abb61(22)=abb61(46)+abb61(22)
      abb61(21)=abb61(21)*abb61(7)*abb61(22)
      abb61(20)=abb61(20)+abb61(43)
      abb61(20)=abb61(20)*abb61(62)
      abb61(22)=-abb61(58)*abb61(49)
      R2d61=0.0_ki
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd61h0
