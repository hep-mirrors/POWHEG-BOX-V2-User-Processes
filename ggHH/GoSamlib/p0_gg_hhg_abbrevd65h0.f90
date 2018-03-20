module     p0_gg_hhg_abbrevd65h0
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh0
   implicit none
   private
   complex(ki), dimension(65), public :: abb65
   complex(ki), public :: R2d65
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
      abb65(1)=sqrt(mT**2)
      abb65(2)=sqrt2**(-1)
      abb65(3)=spbk2k1**(-1)
      abb65(4)=spak2k5**(-1)
      abb65(5)=spak2l3**(-1)
      abb65(6)=spbl3k2**(-1)
      abb65(7)=spbk5k2**(-1)
      abb65(8)=spak2l4**(-1)
      abb65(9)=spbl4k2**(-1)
      abb65(10)=c2-c1
      abb65(11)=abb65(1)**2
      abb65(12)=-abb65(11)*abb65(10)
      abb65(13)=spbk5l4*spak1l4
      abb65(14)=spbk5l3*spak1l3
      abb65(15)=abb65(14)+2.0_ki*abb65(13)
      abb65(15)=-abb65(15)*abb65(12)
      abb65(16)=abb65(15)*es12
      abb65(17)=abb65(7)*spbk5k1
      abb65(18)=abb65(16)*abb65(17)
      abb65(19)=abb65(5)*abb65(6)
      abb65(20)=abb65(9)*abb65(8)
      abb65(21)=abb65(19)+2.0_ki*abb65(20)
      abb65(22)=abb65(21)*es12
      abb65(23)=spak2l3*spbl3k2
      abb65(24)=abb65(23)*abb65(20)
      abb65(25)=abb65(19)*spak2l4
      abb65(26)=abb65(25)*spbl4k2
      abb65(22)=abb65(24)-abb65(22)+abb65(26)+2.0_ki
      abb65(26)=mH**2
      abb65(22)=abb65(22)*abb65(26)
      abb65(22)=abb65(22)+2.0_ki*abb65(11)
      abb65(22)=abb65(12)*abb65(22)
      abb65(27)=spbk5k1*abb65(22)
      abb65(28)=abb65(12)*spbl4k2
      abb65(29)=spbk5l3*spal3l4
      abb65(30)=-abb65(29)*abb65(28)
      abb65(31)=-abb65(30)*abb65(17)
      abb65(27)=abb65(27)+abb65(31)
      abb65(27)=spak1k2*abb65(27)
      abb65(31)=abb65(12)*spak1l4
      abb65(32)=spak2l3*spbl4l3
      abb65(33)=abb65(32)*abb65(31)
      abb65(34)=-spbk5k1*abb65(33)
      abb65(18)=abb65(27)+abb65(34)+abb65(18)
      abb65(27)=abb65(2)*abb65(3)*abb65(4)*i_
      abb65(34)=gHT**2
      abb65(35)=abb65(27)*abb65(34)
      abb65(36)=spak1k2*abb65(35)
      abb65(37)=2.0_ki*abb65(36)
      abb65(18)=abb65(18)*abb65(37)
      abb65(38)=-abb65(15)*abb65(17)
      abb65(21)=abb65(12)*abb65(21)*abb65(26)
      abb65(39)=spak1k2*spbk5k1
      abb65(40)=-abb65(21)*abb65(39)
      abb65(38)=abb65(38)+abb65(40)
      abb65(36)=4.0_ki*abb65(36)
      abb65(38)=abb65(38)*abb65(36)
      abb65(40)=abb65(10)*abb65(39)
      abb65(19)=abb65(19)+abb65(20)
      abb65(41)=abb65(26)*es12
      abb65(42)=abb65(19)*abb65(41)
      abb65(43)=6.0_ki*abb65(11)
      abb65(44)=abb65(42)-abb65(43)
      abb65(44)=abb65(44)*abb65(40)
      abb65(13)=abb65(13)+abb65(14)
      abb65(14)=-es12*abb65(10)
      abb65(45)=abb65(14)*abb65(13)
      abb65(46)=-abb65(45)*abb65(17)
      abb65(44)=abb65(46)+abb65(44)
      abb65(44)=abb65(44)*abb65(37)
      abb65(46)=-abb65(26)*abb65(10)
      abb65(19)=abb65(46)*abb65(19)
      abb65(47)=abb65(19)*abb65(39)
      abb65(13)=abb65(10)*abb65(13)
      abb65(48)=-abb65(13)*abb65(17)
      abb65(47)=abb65(48)+abb65(47)
      abb65(47)=abb65(47)*abb65(36)
      abb65(48)=abb65(7)*abb65(35)
      abb65(49)=2.0_ki*abb65(48)
      abb65(28)=abb65(49)*abb65(28)
      abb65(50)=spbk5k1*spak1k2**2
      abb65(51)=-abb65(50)*abb65(28)
      abb65(52)=6.0_ki*abb65(48)
      abb65(52)=abb65(52)*abb65(12)*spbk5l4
      abb65(53)=-abb65(50)*abb65(52)
      abb65(54)=4.0_ki*abb65(48)
      abb65(55)=abb65(54)*abb65(12)*spbk5l3
      abb65(50)=-abb65(50)*abb65(55)
      abb65(16)=-abb65(7)*abb65(16)
      abb65(30)=abb65(7)*abb65(30)
      abb65(22)=abb65(30)-abb65(22)
      abb65(22)=spak1k2*abb65(22)
      abb65(16)=abb65(22)+abb65(16)+abb65(33)
      abb65(22)=2.0_ki*abb65(27)
      abb65(22)=abb65(22)*abb65(34)
      abb65(16)=abb65(16)*abb65(22)
      abb65(15)=abb65(7)*abb65(15)
      abb65(21)=spak1k2*abb65(21)
      abb65(15)=abb65(15)+abb65(21)
      abb65(21)=4.0_ki*abb65(35)
      abb65(15)=abb65(15)*abb65(21)
      abb65(27)=abb65(7)*abb65(45)
      abb65(30)=-spak1k2*abb65(42)*abb65(10)
      abb65(27)=abb65(27)+abb65(30)
      abb65(27)=abb65(27)*abb65(22)
      abb65(19)=-spak1k2*abb65(19)
      abb65(13)=abb65(7)*abb65(13)
      abb65(13)=abb65(13)+abb65(19)
      abb65(13)=abb65(13)*abb65(21)
      abb65(19)=-abb65(10)*abb65(36)
      abb65(28)=spak1k2*abb65(28)
      abb65(30)=spak1k2*abb65(52)
      abb65(33)=spak1k2*abb65(55)
      abb65(34)=-spbk5k1*abb65(31)*abb65(37)
      abb65(31)=abb65(31)*abb65(22)
      abb65(35)=spak2l4*spbl4k2
      abb65(42)=abb65(23)+2.0_ki*abb65(35)+3.0_ki*es12
      abb65(42)=abb65(12)*abb65(42)
      abb65(45)=abb65(49)*abb65(39)
      abb65(52)=-abb65(42)*abb65(45)
      abb65(55)=abb65(39)*abb65(48)
      abb65(56)=4.0_ki*abb65(55)
      abb65(57)=abb65(10)*abb65(56)
      abb65(24)=abb65(24)+1.0_ki
      abb65(26)=abb65(24)*abb65(26)
      abb65(26)=abb65(26)+abb65(43)
      abb65(26)=-abb65(26)*abb65(57)
      abb65(58)=-abb65(20)*abb65(46)
      abb65(59)=8.0_ki*abb65(58)
      abb65(60)=abb65(55)*abb65(59)
      abb65(23)=es12+abb65(35)+abb65(23)
      abb65(23)=abb65(10)*abb65(23)
      abb65(35)=abb65(23)*abb65(45)
      abb65(55)=8.0_ki*abb65(55)
      abb65(55)=-abb65(10)*abb65(55)
      abb65(32)=abb65(10)*abb65(32)
      abb65(61)=abb65(32)*abb65(45)
      abb65(42)=abb65(42)*abb65(49)
      abb65(24)=-abb65(54)*abb65(24)*abb65(46)
      abb65(48)=-abb65(48)*abb65(59)
      abb65(23)=-abb65(23)*abb65(49)
      abb65(32)=-abb65(32)*abb65(49)
      abb65(59)=abb65(10)*abb65(45)
      abb65(62)=abb65(10)*abb65(49)
      abb65(25)=abb65(25)+abb65(9)
      abb65(63)=abb65(25)*abb65(41)
      abb65(11)=abb65(11)*spak2l4
      abb65(11)=-abb65(63)+3.0_ki*abb65(11)
      abb65(11)=abb65(10)*abb65(11)
      abb65(63)=-spbk5k1*abb65(11)
      abb65(64)=abb65(14)*abb65(29)
      abb65(65)=-abb65(64)*abb65(17)
      abb65(63)=abb65(63)+abb65(65)
      abb65(37)=abb65(63)*abb65(37)
      abb65(25)=abb65(46)*abb65(25)
      abb65(63)=spbk5k1*abb65(25)
      abb65(29)=abb65(10)*abb65(29)
      abb65(17)=-abb65(29)*abb65(17)
      abb65(17)=abb65(63)+abb65(17)
      abb65(17)=abb65(17)*abb65(36)
      abb65(63)=abb65(14)*abb65(45)
      abb65(64)=abb65(7)*abb65(64)
      abb65(11)=abb65(64)+abb65(11)
      abb65(11)=abb65(11)*abb65(22)
      abb65(29)=abb65(7)*abb65(29)
      abb65(25)=abb65(29)-abb65(25)
      abb65(25)=abb65(25)*abb65(21)
      abb65(14)=-abb65(14)*abb65(49)
      abb65(29)=abb65(10)*abb65(54)
      abb65(12)=abb65(12)*spak2l3
      abb65(36)=spbk5k1*abb65(12)*abb65(36)
      abb65(12)=-abb65(12)*abb65(21)
      abb65(49)=spak2l3*abb65(8)*spbk5l3
      abb65(49)=abb65(49)+spbk5l4
      abb65(49)=abb65(49)*abb65(9)
      abb65(10)=-abb65(10)*abb65(49)*abb65(41)
      abb65(45)=abb65(10)*abb65(45)
      abb65(46)=abb65(46)*abb65(49)
      abb65(49)=-abb65(46)*abb65(56)
      abb65(20)=abb65(41)*abb65(20)
      abb65(40)=-abb65(20)*abb65(40)
      abb65(10)=-abb65(10)+abb65(40)
      abb65(10)=abb65(22)*abb65(7)*abb65(10)
      abb65(22)=abb65(58)*abb65(39)
      abb65(22)=abb65(46)+abb65(22)
      abb65(21)=abb65(21)*abb65(7)*abb65(22)
      abb65(20)=abb65(20)+abb65(43)
      abb65(20)=abb65(20)*abb65(62)
      abb65(22)=-abb65(58)*abb65(54)
      R2d65=0.0_ki
      rat2 = rat2 + R2d65
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='65' value='", &
          & R2d65, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd65h0
