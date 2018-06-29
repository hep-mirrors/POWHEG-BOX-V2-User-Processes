module     p8_cbarc_epnemumnmubarg_abbrevd485h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(65), public :: abb485
   complex(ki), public :: R2d485
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb485(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb485(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb485(3)=sqrt2**(-1)
      abb485(4)=spbk7k2**(-1)
      abb485(5)=spak3k4*spbk6k3
      abb485(6)=NC*c1*abb485(3)*abb485(2)*gW**4*i_*TR
      abb485(7)=abb485(6)*spbk3k2
      abb485(8)=abb485(5)*abb485(7)
      abb485(9)=spbk2k1*spak1k5
      abb485(10)=abb485(4)*abb485(1)
      abb485(11)=abb485(10)*spak1k7
      abb485(12)=abb485(11)*abb485(8)*abb485(9)
      abb485(13)=abb485(10)*spbk6k2
      abb485(14)=abb485(13)*spbk3k2
      abb485(15)=abb485(6)*spak1k7
      abb485(16)=abb485(14)*abb485(15)
      abb485(17)=abb485(9)*abb485(16)
      abb485(18)=abb485(15)*abb485(1)
      abb485(19)=abb485(18)*spak5k7
      abb485(20)=abb485(19)*spbk6k2
      abb485(21)=abb485(20)*spbk3k2
      abb485(17)=abb485(17)-abb485(21)
      abb485(17)=abb485(17)*spak2k4
      abb485(21)=abb485(5)*abb485(19)*spbk3k2
      abb485(12)=-abb485(17)+abb485(12)-abb485(21)
      abb485(17)=-es12+es712-es71
      abb485(21)=8.0_ki*abb485(17)
      abb485(22)=abb485(12)*abb485(21)
      abb485(23)=-16.0_ki*abb485(12)
      abb485(24)=abb485(15)*spak4k5
      abb485(14)=abb485(24)*abb485(14)
      abb485(25)=abb485(17)*abb485(14)
      abb485(25)=16.0_ki*abb485(25)
      abb485(26)=32.0_ki*abb485(14)
      abb485(27)=spbk3k2*spak2k5
      abb485(28)=spbk4k3*spak4k5
      abb485(27)=abb485(28)+abb485(27)
      abb485(29)=2.0_ki*spak4k7
      abb485(30)=abb485(18)*spbk6k2
      abb485(27)=abb485(27)*abb485(29)*abb485(30)
      abb485(31)=abb485(9)*abb485(18)*spbk6k3
      abb485(32)=abb485(19)*spbk6k3
      abb485(33)=abb485(32)*spbk7k2
      abb485(31)=abb485(31)-abb485(33)
      abb485(33)=abb485(29)*abb485(31)
      abb485(34)=2.0_ki*abb485(14)
      abb485(34)=abb485(17)*abb485(34)
      abb485(12)=abb485(12)+abb485(34)+abb485(27)+abb485(33)
      abb485(27)=-8.0_ki*abb485(12)
      abb485(33)=16.0_ki*abb485(14)
      abb485(12)=-4.0_ki*abb485(12)
      abb485(34)=8.0_ki*abb485(14)
      abb485(14)=4.0_ki*abb485(14)
      abb485(35)=-abb485(30)*abb485(28)
      abb485(30)=abb485(30)*spak2k5
      abb485(36)=-spbk3k2*abb485(30)
      abb485(31)=abb485(35)+abb485(36)-abb485(31)
      abb485(31)=spak2k4*abb485(31)
      abb485(35)=abb485(7)*abb485(10)
      abb485(36)=abb485(35)*abb485(5)
      abb485(37)=abb485(7)*abb485(13)
      abb485(38)=abb485(37)*spak2k4
      abb485(36)=abb485(36)-abb485(38)
      abb485(38)=-spak1k5*abb485(36)
      abb485(39)=-es12*abb485(38)
      abb485(40)=abb485(6)*spak1k5
      abb485(41)=spbk2k1*abb485(40)*abb485(11)
      abb485(19)=abb485(41)-abb485(19)
      abb485(5)=-abb485(5)*abb485(19)
      abb485(15)=abb485(15)*abb485(13)
      abb485(9)=abb485(15)*abb485(9)
      abb485(9)=abb485(9)-abb485(20)
      abb485(20)=spak2k4*abb485(9)
      abb485(5)=abb485(20)+abb485(5)
      abb485(5)=spbk7k3*abb485(5)
      abb485(20)=spak2k4*spbk6k2*abb485(7)
      abb485(8)=-abb485(8)+abb485(20)
      abb485(20)=spak5k7*abb485(1)
      abb485(42)=abb485(20)*spak1k2
      abb485(8)=abb485(8)*abb485(42)
      abb485(5)=abb485(5)+abb485(39)+abb485(8)+abb485(31)
      abb485(5)=8.0_ki*abb485(5)
      abb485(8)=abb485(24)*abb485(13)
      abb485(24)=abb485(8)*spbk7k3
      abb485(31)=abb485(37)*spak1k2
      abb485(39)=abb485(31)*spak4k5
      abb485(24)=abb485(24)-abb485(39)
      abb485(43)=16.0_ki*abb485(24)
      abb485(13)=abb485(13)*abb485(6)
      abb485(44)=abb485(13)*spak5k7
      abb485(45)=-spak1k4*abb485(44)
      abb485(45)=abb485(8)+abb485(45)
      abb485(45)=spbk7k3*abb485(45)
      abb485(46)=abb485(13)*spak1k5
      abb485(47)=spbk3k1*spak1k4
      abb485(48)=abb485(46)*abb485(47)
      abb485(39)=abb485(48)-abb485(39)+abb485(45)
      abb485(39)=16.0_ki*abb485(39)
      abb485(38)=-16.0_ki*abb485(38)
      abb485(45)=abb485(6)*spbk6k3
      abb485(20)=-abb485(45)*abb485(20)
      abb485(40)=abb485(40)*abb485(10)
      abb485(48)=abb485(40)*spbk6k3
      abb485(49)=spbk2k1*abb485(48)
      abb485(37)=spak2k5*abb485(37)
      abb485(50)=abb485(13)*abb485(28)
      abb485(20)=abb485(50)+abb485(37)+abb485(20)+abb485(49)
      abb485(20)=spak1k4*abb485(20)
      abb485(20)=abb485(20)+abb485(24)
      abb485(20)=8.0_ki*abb485(20)
      abb485(24)=spbk3k2**2
      abb485(37)=abb485(11)*spak3k4
      abb485(49)=abb485(24)*abb485(37)*abb485(6)
      abb485(21)=abb485(49)*abb485(21)
      abb485(50)=-16.0_ki*abb485(49)
      abb485(51)=abb485(18)*spbk3k2
      abb485(29)=abb485(29)*abb485(51)
      abb485(29)=abb485(29)+abb485(49)
      abb485(49)=-8.0_ki*abb485(29)
      abb485(29)=-4.0_ki*abb485(29)
      abb485(52)=abb485(6)*abb485(10)
      abb485(24)=spak1k2*spak3k4*abb485(24)*abb485(52)
      abb485(37)=-spbk7k3*abb485(7)*abb485(37)
      abb485(51)=-spak2k4*abb485(51)
      abb485(24)=abb485(37)+abb485(51)+abb485(24)
      abb485(24)=8.0_ki*abb485(24)
      abb485(37)=16.0_ki*abb485(35)
      abb485(51)=-spak1k4*abb485(37)
      abb485(53)=8.0_ki*abb485(35)
      abb485(54)=spak1k4*abb485(53)
      abb485(55)=abb485(10)*spak1k4
      abb485(56)=abb485(55)*abb485(45)
      abb485(57)=16.0_ki*abb485(56)
      abb485(58)=-8.0_ki*abb485(56)
      abb485(59)=abb485(16)*spak3k5
      abb485(60)=abb485(8)*spbk4k2
      abb485(9)=abb485(9)+abb485(59)+abb485(60)
      abb485(17)=-8.0_ki*abb485(17)*abb485(9)
      abb485(59)=16.0_ki*abb485(9)
      abb485(60)=8.0_ki*abb485(9)
      abb485(9)=4.0_ki*abb485(9)
      abb485(15)=spbk7k3*abb485(15)
      abb485(15)=-abb485(31)+abb485(15)
      abb485(15)=spak3k5*abb485(15)
      abb485(61)=spbk6k2*abb485(6)*abb485(42)
      abb485(62)=-es12*abb485(46)
      abb485(13)=abb485(13)*spak1k2
      abb485(63)=spbk4k2*spak4k5
      abb485(64)=-abb485(13)*abb485(63)
      abb485(19)=spbk7k6*abb485(19)
      abb485(65)=spbk7k4*abb485(8)
      abb485(15)=abb485(65)+abb485(19)+abb485(64)-abb485(30)+abb485(15)+abb485(&
      &61)+abb485(62)
      abb485(15)=8.0_ki*abb485(15)
      abb485(19)=16.0_ki*abb485(46)
      abb485(30)=8.0_ki*abb485(40)
      abb485(40)=spbk7k6*abb485(30)
      abb485(18)=-8.0_ki*abb485(18)
      abb485(46)=-spbk7k6*abb485(11)
      abb485(55)=-spbk6k4*abb485(55)
      abb485(46)=abb485(55)+abb485(46)
      abb485(6)=abb485(6)*abb485(46)
      abb485(10)=abb485(10)*spak1k3
      abb485(46)=-abb485(45)*abb485(10)
      abb485(6)=abb485(46)+abb485(13)+abb485(6)
      abb485(6)=8.0_ki*abb485(6)
      abb485(16)=abb485(16)*spak2k5
      abb485(8)=abb485(8)*spbk4k3
      abb485(41)=abb485(41)*spbk6k3
      abb485(8)=abb485(8)+abb485(16)+abb485(41)-abb485(32)
      abb485(16)=-8.0_ki*abb485(8)
      abb485(8)=-4.0_ki*abb485(8)
      abb485(32)=spbk7k3*spak5k7
      abb485(41)=-spbk3k1*spak1k5
      abb485(28)=abb485(41)+abb485(28)+abb485(32)
      abb485(13)=abb485(13)*abb485(28)
      abb485(10)=-abb485(32)*abb485(10)
      abb485(10)=abb485(10)-abb485(42)
      abb485(10)=abb485(45)*abb485(10)
      abb485(28)=es23-es123+2.0_ki*es12
      abb485(28)=abb485(48)*abb485(28)
      abb485(31)=spak2k5*abb485(31)
      abb485(10)=abb485(31)+abb485(13)+abb485(28)+abb485(10)
      abb485(10)=8.0_ki*abb485(10)
      abb485(13)=16.0_ki*abb485(48)
      abb485(28)=8.0_ki*abb485(48)
      abb485(7)=abb485(7)*abb485(11)
      abb485(11)=-8.0_ki*abb485(7)
      abb485(7)=-4.0_ki*abb485(7)
      abb485(31)=spak1k2*abb485(37)
      abb485(41)=spbk6k4*abb485(30)
      abb485(32)=abb485(56)*abb485(32)
      abb485(42)=-abb485(48)*abb485(47)
      abb485(32)=abb485(32)+abb485(42)
      abb485(32)=8.0_ki*abb485(32)
      abb485(36)=8.0_ki*spak5k7*abb485(36)
      abb485(42)=-8.0_ki*abb485(44)
      abb485(37)=abb485(37)*spak4k5
      abb485(44)=spak4k5*abb485(53)
      abb485(35)=spak3k5*abb485(35)
      abb485(45)=abb485(52)*abb485(63)
      abb485(35)=abb485(35)+abb485(45)
      abb485(35)=8.0_ki*abb485(35)
      abb485(45)=-spak3k4*abb485(53)
      abb485(46)=spak2k4*abb485(53)
      abb485(30)=spbk6k1*abb485(30)
      abb485(47)=-8.0_ki*abb485(52)
      R2d485=0.0_ki
      rat2 = rat2 + R2d485
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='485' value='", &
          & R2d485, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd485h5
