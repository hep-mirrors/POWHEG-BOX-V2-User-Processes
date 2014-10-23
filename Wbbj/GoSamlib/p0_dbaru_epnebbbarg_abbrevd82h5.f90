module     p0_dbaru_epnebbbarg_abbrevd82h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(66), public :: abb82
   complex(ki), public :: R2d82
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb82(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb82(2)=NC**(-1)
      abb82(3)=sqrt2**(-1)
      abb82(4)=es56**(-1)
      abb82(5)=spbk7k2**(-1)
      abb82(6)=spak2l5**(-1)
      abb82(7)=spbl6k2**(-1)
      abb82(8)=c1*abb82(2)
      abb82(9)=c4*abb82(2)**2
      abb82(10)=-abb82(8)+abb82(9)+c2
      abb82(11)=abb82(4)*i_*CVDU*abb82(3)*abb82(1)
      abb82(12)=TR*gW
      abb82(12)=abb82(12)**2
      abb82(13)=abb82(11)*abb82(12)*abb82(5)
      abb82(10)=abb82(10)*abb82(13)*spak1k4
      abb82(14)=abb82(10)*spbk2k1
      abb82(15)=spak4l6*spbl5k2
      abb82(16)=abb82(15)*spak1k7
      abb82(17)=spbk4k3*abb82(16)
      abb82(18)=spbl5k2*spak1k7
      abb82(19)=spbk3k1*abb82(18)*spak1l6
      abb82(17)=abb82(17)+abb82(19)
      abb82(17)=abb82(14)*abb82(17)
      abb82(19)=-16.0_ki*abb82(17)
      abb82(8)=-c2+abb82(8)-abb82(9)
      abb82(9)=abb82(8)*abb82(13)
      abb82(13)=-abb82(9)*spbk3k2**2
      abb82(20)=mB**2*abb82(7)*abb82(6)
      abb82(21)=abb82(20)*spak3k4
      abb82(22)=abb82(13)*abb82(21)
      abb82(23)=abb82(22)*spak1k7
      abb82(24)=-32.0_ki*abb82(23)
      abb82(25)=-spbk3k2*abb82(9)
      abb82(26)=abb82(15)*abb82(25)
      abb82(27)=abb82(26)*spak1k7
      abb82(28)=32.0_ki*abb82(27)
      abb82(29)=es712-es71
      abb82(30)=abb82(29)-es12
      abb82(23)=-abb82(30)*abb82(23)
      abb82(31)=spak3k4*spbl5k3
      abb82(32)=-abb82(31)*abb82(12)
      abb82(33)=abb82(12)*spak1k4
      abb82(34)=spbl5k1*abb82(33)
      abb82(32)=abb82(34)+abb82(32)
      abb82(32)=abb82(32)*abb82(8)*abb82(11)*spbk3k2
      abb82(8)=abb82(11)*abb82(8)
      abb82(11)=abb82(8)*abb82(33)
      abb82(33)=abb82(11)*spbl5k3
      abb82(34)=spbk2k1*abb82(33)
      abb82(32)=abb82(34)+abb82(32)
      abb82(32)=spal6k7*spak1k7*abb82(32)
      abb82(17)=abb82(32)+abb82(23)+abb82(17)
      abb82(17)=8.0_ki*abb82(17)
      abb82(23)=16.0_ki*abb82(27)
      abb82(27)=8.0_ki*abb82(27)
      abb82(32)=abb82(15)*spbk4k3
      abb82(34)=spbk3k1*spbl5k2
      abb82(35)=spak1l6*abb82(34)
      abb82(35)=abb82(32)+abb82(35)
      abb82(35)=8.0_ki*abb82(35)*abb82(10)*es12
      abb82(36)=abb82(14)*spbl5k3
      abb82(37)=-spbk3k2*abb82(10)
      abb82(38)=abb82(37)*spbl5k1
      abb82(36)=abb82(36)-abb82(38)
      abb82(39)=abb82(31)*abb82(25)
      abb82(39)=abb82(39)-abb82(36)
      abb82(39)=abb82(39)*spak1l6
      abb82(40)=spak1k2*abb82(22)
      abb82(40)=abb82(40)+abb82(39)
      abb82(40)=16.0_ki*abb82(40)
      abb82(41)=abb82(26)*spak1k2
      abb82(42)=16.0_ki*abb82(41)
      abb82(43)=abb82(25)*spak1k7
      abb82(44)=-abb82(21)*abb82(43)
      abb82(45)=abb82(14)*abb82(20)
      abb82(46)=-spak1k7*abb82(45)
      abb82(44)=abb82(44)+abb82(46)
      abb82(44)=spbk7k3*abb82(44)
      abb82(46)=-spbk4k3*abb82(9)*spak1k4**2
      abb82(47)=spbk2k1*abb82(20)*abb82(46)
      abb82(48)=abb82(37)*abb82(20)
      abb82(49)=-es71*abb82(48)
      abb82(44)=abb82(49)+abb82(44)+abb82(47)
      abb82(44)=16.0_ki*abb82(44)
      abb82(47)=32.0_ki*abb82(48)
      abb82(49)=abb82(48)*abb82(30)
      abb82(32)=-abb82(10)*abb82(32)
      abb82(50)=abb82(10)*spak1l6
      abb82(34)=-abb82(50)*abb82(34)
      abb82(33)=-spal6k7*abb82(33)
      abb82(32)=abb82(34)+abb82(32)+abb82(33)+abb82(41)+abb82(49)
      abb82(32)=16.0_ki*abb82(32)
      abb82(33)=-64.0_ki*abb82(48)
      abb82(22)=abb82(22)+abb82(26)
      abb82(22)=spak1k2*abb82(22)
      abb82(22)=abb82(22)+abb82(39)
      abb82(22)=8.0_ki*abb82(22)
      abb82(26)=-16.0_ki*abb82(48)
      abb82(34)=abb82(10)*abb82(20)
      abb82(39)=abb82(34)*es12
      abb82(41)=abb82(50)*spbl5k1
      abb82(39)=abb82(39)-abb82(41)
      abb82(41)=-abb82(9)*spak1l6
      abb82(49)=abb82(41)*abb82(31)
      abb82(50)=abb82(25)*spak1k2
      abb82(51)=abb82(21)*abb82(50)
      abb82(49)=abb82(49)+abb82(51)+abb82(39)
      abb82(49)=spbk7k3*abb82(49)
      abb82(51)=abb82(10)*spbl5k3
      abb82(52)=spak1l6*abb82(51)
      abb82(48)=-spak1k2*abb82(48)
      abb82(48)=abb82(52)+abb82(48)
      abb82(48)=spbk7k1*abb82(48)
      abb82(48)=abb82(49)+abb82(48)
      abb82(48)=8.0_ki*abb82(48)
      abb82(13)=abb82(13)*spak3k4
      abb82(49)=spak1k7*abb82(13)
      abb82(52)=16.0_ki*abb82(49)
      abb82(49)=-8.0_ki*abb82(49)
      abb82(13)=-8.0_ki*spak1k2*abb82(13)
      abb82(37)=16.0_ki*abb82(37)
      abb82(36)=-spak1k7*abb82(36)
      abb82(43)=abb82(31)*abb82(43)
      abb82(36)=abb82(43)+abb82(36)
      abb82(43)=16.0_ki*abb82(36)
      abb82(36)=-8.0_ki*abb82(36)
      abb82(53)=abb82(9)*abb82(31)
      abb82(54)=spbl5k1*abb82(10)
      abb82(53)=abb82(53)+abb82(54)
      abb82(53)=spbk7k3*spak1k7*abb82(53)
      abb82(54)=es71+es12
      abb82(54)=abb82(51)*abb82(54)
      abb82(55)=-abb82(50)*abb82(31)
      abb82(38)=-spak1k2*abb82(38)
      abb82(46)=-spbl5k1*abb82(46)
      abb82(38)=abb82(46)+abb82(53)+abb82(55)+abb82(38)+abb82(54)
      abb82(38)=8.0_ki*abb82(38)
      abb82(46)=16.0_ki*abb82(51)
      abb82(51)=8.0_ki*abb82(51)
      abb82(53)=abb82(25)*spak3l6
      abb82(54)=abb82(41)*spbk2k1
      abb82(53)=abb82(53)+abb82(54)
      abb82(54)=-abb82(18)*abb82(53)
      abb82(16)=-abb82(16)*abb82(9)*spbk4k2
      abb82(54)=-abb82(16)+abb82(54)
      abb82(54)=16.0_ki*abb82(54)
      abb82(8)=-abb82(12)*abb82(8)
      abb82(12)=abb82(8)*spal6k7
      abb82(53)=-abb82(12)+abb82(53)
      abb82(53)=abb82(18)*abb82(53)
      abb82(16)=abb82(16)+abb82(53)
      abb82(16)=8.0_ki*abb82(16)
      abb82(53)=es12*abb82(41)
      abb82(55)=spak3l6*abb82(50)
      abb82(53)=abb82(55)+abb82(53)
      abb82(53)=spbl5k2*abb82(53)
      abb82(15)=-abb82(15)*abb82(9)
      abb82(55)=spbk4k2*spak1k2
      abb82(56)=abb82(15)*abb82(55)
      abb82(53)=abb82(56)+abb82(53)
      abb82(53)=8.0_ki*abb82(53)
      abb82(56)=16.0_ki*spbl5k2
      abb82(56)=abb82(41)*abb82(56)
      abb82(57)=spbk4k2*abb82(34)
      abb82(58)=spak1k3*abb82(25)*abb82(20)
      abb82(59)=abb82(8)*abb82(20)
      abb82(60)=-spak1k7*abb82(59)
      abb82(57)=abb82(58)+abb82(60)+abb82(57)
      abb82(57)=16.0_ki*abb82(57)
      abb82(58)=-8.0_ki*spbl5k2*abb82(41)
      abb82(60)=-spbk7l5*abb82(41)
      abb82(59)=spak1k2*abb82(59)
      abb82(59)=abb82(59)+abb82(60)
      abb82(59)=8.0_ki*abb82(59)
      abb82(60)=-16.0_ki*abb82(9)
      abb82(61)=abb82(60)*abb82(18)
      abb82(62)=-8.0_ki*abb82(9)
      abb82(18)=abb82(18)*abb82(62)
      abb82(63)=spak1k2*spbl5k2
      abb82(64)=spbk7l5*spak1k7
      abb82(65)=spak1k3*spbl5k3
      abb82(63)=abb82(65)+abb82(63)+abb82(64)
      abb82(63)=-abb82(9)*abb82(63)
      abb82(64)=spbl5k4*abb82(10)
      abb82(63)=abb82(64)+abb82(63)
      abb82(63)=8.0_ki*abb82(63)
      abb82(39)=8.0_ki*abb82(39)
      abb82(64)=-spbk4k3*abb82(39)
      abb82(50)=abb82(50)*abb82(20)
      abb82(65)=abb82(41)*spbl5k3
      abb82(50)=abb82(50)+abb82(65)
      abb82(65)=16.0_ki*abb82(50)
      abb82(50)=8.0_ki*abb82(50)
      abb82(9)=-abb82(9)*abb82(20)
      abb82(55)=-abb82(9)*abb82(55)
      abb82(66)=-spbl5k4*abb82(41)
      abb82(55)=abb82(55)+abb82(66)
      abb82(55)=8.0_ki*abb82(55)
      abb82(12)=-8.0_ki*abb82(12)
      abb82(66)=8.0_ki*abb82(15)
      abb82(21)=abb82(21)*abb82(25)
      abb82(21)=abb82(21)+abb82(45)
      abb82(30)=-abb82(21)*abb82(30)
      abb82(8)=abb82(8)*abb82(31)
      abb82(11)=spbl5k1*abb82(11)
      abb82(8)=abb82(8)+abb82(11)
      abb82(8)=spal6k7*abb82(8)
      abb82(8)=abb82(8)+abb82(30)
      abb82(8)=8.0_ki*abb82(8)
      abb82(11)=16.0_ki*abb82(15)
      abb82(15)=16.0_ki*abb82(21)
      abb82(21)=-spak3k4*abb82(25)
      abb82(14)=abb82(21)-abb82(14)
      abb82(14)=8.0_ki*abb82(14)
      abb82(21)=spak3l6*spbl5k2*abb82(62)
      abb82(25)=-spbk3k1*abb82(39)
      abb82(30)=-32.0_ki*spbk3k1*abb82(34)
      abb82(10)=16.0_ki*spbk3k1*abb82(10)
      abb82(9)=-abb82(9)*abb82(29)
      abb82(29)=spbl5k1*abb82(41)
      abb82(9)=abb82(29)+abb82(9)
      abb82(9)=8.0_ki*abb82(9)
      abb82(20)=-abb82(20)*abb82(60)
      R2d82=0.0_ki
      rat2 = rat2 + R2d82
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='82' value='", &
          & R2d82, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd82h5
