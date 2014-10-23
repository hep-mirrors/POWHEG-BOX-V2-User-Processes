module     p0_dbaru_epnebbbarg_abbrevd82h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(62), public :: abb82
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
      abb82(5)=spak2l5**(-1)
      abb82(6)=spbk7k2**(-1)
      abb82(7)=spak2l6**(-1)
      abb82(8)=c1*abb82(2)
      abb82(9)=c4*abb82(2)**2
      abb82(8)=-c2+abb82(8)-abb82(9)
      abb82(9)=-abb82(8)*spak1k7
      abb82(10)=TR*gW
      abb82(10)=abb82(10)**2*CVDU*i_*mB*abb82(6)*abb82(4)*abb82(3)*abb82(1)
      abb82(11)=abb82(10)*abb82(5)
      abb82(12)=abb82(11)*spak1k4
      abb82(13)=abb82(12)*abb82(9)
      abb82(14)=abb82(13)*spbl6k2
      abb82(10)=abb82(10)*abb82(7)
      abb82(15)=abb82(10)*spak1k4
      abb82(16)=abb82(15)*abb82(9)
      abb82(17)=abb82(16)*spbl5k2
      abb82(14)=abb82(14)+abb82(17)
      abb82(17)=spbk4k3*spak2k4
      abb82(18)=abb82(17)*spbk2k1
      abb82(19)=-spbk3k1*es12
      abb82(19)=abb82(18)+abb82(19)
      abb82(19)=16.0_ki*abb82(14)*abb82(19)
      abb82(20)=abb82(10)*abb82(9)
      abb82(21)=abb82(20)*spbl5k3
      abb82(9)=abb82(11)*abb82(9)
      abb82(22)=abb82(9)*spbl6k3
      abb82(21)=abb82(21)+abb82(22)
      abb82(22)=spak3k4*spbk3k2*abb82(21)
      abb82(23)=abb82(13)*spbl6k3
      abb82(24)=abb82(16)*spbl5k3
      abb82(23)=abb82(23)+abb82(24)
      abb82(23)=abb82(23)*spbk2k1
      abb82(13)=abb82(13)*spbl6k1
      abb82(16)=abb82(16)*spbl5k1
      abb82(13)=abb82(13)+abb82(16)
      abb82(16)=spbk3k2*abb82(13)
      abb82(16)=-abb82(16)+abb82(22)-abb82(23)
      abb82(22)=32.0_ki*abb82(16)
      abb82(23)=abb82(20)*spbl5k2
      abb82(24)=abb82(9)*spbl6k2
      abb82(23)=abb82(23)+abb82(24)
      abb82(24)=spbk3k2*abb82(23)
      abb82(25)=abb82(24)*spak2k4
      abb82(26)=32.0_ki*abb82(25)
      abb82(27)=es712-es71
      abb82(28)=-abb82(16)*abb82(27)
      abb82(29)=spbk3k1*abb82(14)
      abb82(29)=abb82(29)+abb82(16)
      abb82(29)=es12*abb82(29)
      abb82(14)=-abb82(14)*abb82(18)
      abb82(14)=abb82(14)+abb82(29)+abb82(28)
      abb82(14)=8.0_ki*abb82(14)
      abb82(18)=16.0_ki*spak2k4
      abb82(24)=abb82(24)*abb82(18)
      abb82(16)=abb82(25)-abb82(16)
      abb82(16)=16.0_ki*abb82(16)
      abb82(25)=-8.0_ki*abb82(25)
      abb82(15)=-abb82(8)*abb82(15)
      abb82(28)=abb82(15)*spbl5k2
      abb82(12)=-abb82(8)*abb82(12)
      abb82(29)=abb82(12)*spbl6k2
      abb82(28)=abb82(28)+abb82(29)
      abb82(29)=spbk3k1*spak1k2
      abb82(17)=abb82(29)-abb82(17)
      abb82(17)=abb82(28)*abb82(17)
      abb82(28)=8.0_ki*es12*abb82(17)
      abb82(29)=abb82(15)*spbl5k1
      abb82(30)=abb82(12)*spbl6k1
      abb82(29)=abb82(29)+abb82(30)
      abb82(30)=abb82(29)*spak1k2
      abb82(10)=abb82(10)*abb82(8)
      abb82(31)=abb82(10)*spak1k2
      abb82(32)=abb82(31)*spbl5k3
      abb82(8)=abb82(11)*abb82(8)
      abb82(11)=abb82(8)*spak1k2
      abb82(33)=abb82(11)*spbl6k3
      abb82(32)=abb82(32)+abb82(33)
      abb82(33)=abb82(32)*spak3k4
      abb82(33)=abb82(30)+abb82(33)
      abb82(34)=spbk3k2*abb82(33)
      abb82(35)=abb82(15)*spbl5k3
      abb82(36)=abb82(12)*spbl6k3
      abb82(35)=abb82(35)+abb82(36)
      abb82(36)=abb82(35)*es12
      abb82(34)=abb82(36)+abb82(34)
      abb82(37)=-16.0_ki*abb82(34)
      abb82(38)=abb82(31)*spbl5k2
      abb82(39)=abb82(11)*spbl6k2
      abb82(38)=abb82(38)+abb82(39)
      abb82(39)=spbk3k2*abb82(38)
      abb82(40)=abb82(39)*abb82(18)
      abb82(21)=-spak3k4*abb82(21)
      abb82(13)=abb82(21)+abb82(13)
      abb82(13)=spbk7k3*abb82(13)
      abb82(21)=es71*abb82(35)
      abb82(41)=spbl6k1*abb82(8)
      abb82(42)=spbl5k1*abb82(10)
      abb82(41)=abb82(41)+abb82(42)
      abb82(41)=spbk4k3*abb82(41)*spak1k4**2
      abb82(13)=abb82(13)+abb82(41)+abb82(21)+abb82(34)
      abb82(13)=16.0_ki*abb82(13)
      abb82(21)=32.0_ki*abb82(35)
      abb82(41)=-abb82(35)*abb82(27)
      abb82(39)=abb82(39)*spak2k4
      abb82(17)=abb82(39)+abb82(36)+abb82(41)-abb82(17)
      abb82(17)=16.0_ki*abb82(17)
      abb82(34)=abb82(39)-abb82(34)
      abb82(34)=8.0_ki*abb82(34)
      abb82(36)=16.0_ki*abb82(35)
      abb82(33)=-spbk7k3*abb82(33)
      abb82(35)=spbk7k1*spak1k2*abb82(35)
      abb82(33)=abb82(33)+abb82(35)
      abb82(33)=8.0_ki*abb82(33)
      abb82(35)=16.0_ki*abb82(23)
      abb82(39)=es234-es34
      abb82(41)=abb82(39)+es12
      abb82(42)=-abb82(41)*abb82(35)
      abb82(43)=32.0_ki*abb82(23)
      abb82(39)=abb82(39)+abb82(27)
      abb82(23)=8.0_ki*abb82(23)*abb82(39)
      abb82(39)=8.0_ki*abb82(38)
      abb82(41)=-abb82(41)*abb82(39)
      abb82(44)=16.0_ki*abb82(38)
      abb82(45)=abb82(8)*spbl6k3
      abb82(46)=abb82(10)*spbl5k3
      abb82(45)=abb82(45)+abb82(46)
      abb82(46)=-spak1k3*abb82(45)
      abb82(47)=spbk7l6*abb82(9)
      abb82(48)=spbk7l5*abb82(20)
      abb82(49)=spbl6k4*abb82(12)
      abb82(50)=spbl5k4*abb82(15)
      abb82(38)=abb82(46)+abb82(50)+abb82(49)+abb82(48)+abb82(47)-abb82(38)
      abb82(38)=16.0_ki*abb82(38)
      abb82(46)=spbk7l6*abb82(11)
      abb82(47)=spbk7l5*abb82(31)
      abb82(46)=abb82(46)+abb82(47)
      abb82(46)=8.0_ki*abb82(46)
      abb82(30)=8.0_ki*abb82(30)
      abb82(47)=spbk4k3*abb82(30)
      abb82(48)=16.0_ki*abb82(32)
      abb82(32)=8.0_ki*abb82(32)
      abb82(49)=spbl6k4*abb82(11)
      abb82(50)=spbl5k4*abb82(31)
      abb82(49)=abb82(49)+abb82(50)
      abb82(49)=8.0_ki*abb82(49)
      abb82(50)=spak3k4*spbk3k2**2
      abb82(51)=16.0_ki*abb82(50)
      abb82(52)=abb82(9)*abb82(51)
      abb82(50)=8.0_ki*abb82(50)
      abb82(9)=-abb82(9)*abb82(50)
      abb82(53)=abb82(11)*abb82(50)
      abb82(54)=16.0_ki*abb82(12)
      abb82(55)=-spbk3k2*abb82(54)
      abb82(51)=abb82(20)*abb82(51)
      abb82(20)=-abb82(20)*abb82(50)
      abb82(50)=abb82(31)*abb82(50)
      abb82(56)=16.0_ki*abb82(15)
      abb82(57)=-spbk3k2*abb82(56)
      abb82(27)=abb82(27)-es12
      abb82(27)=8.0_ki*abb82(27)
      abb82(58)=-abb82(8)*abb82(27)
      abb82(59)=-abb82(10)*abb82(27)
      abb82(60)=abb82(8)*spbl6k2
      abb82(61)=abb82(10)*spbl5k2
      abb82(60)=abb82(60)+abb82(61)
      abb82(61)=8.0_ki*abb82(60)
      abb82(62)=abb82(61)*spak2k4
      abb82(45)=abb82(45)*spak3k4
      abb82(29)=abb82(45)+abb82(29)
      abb82(27)=abb82(29)*abb82(27)
      abb82(18)=abb82(60)*abb82(18)
      abb82(29)=spak2k3*abb82(61)
      abb82(45)=spak3k4*spbk3k2
      abb82(60)=abb82(8)*abb82(45)
      abb82(12)=-spbk2k1*abb82(12)
      abb82(12)=abb82(60)+abb82(12)
      abb82(12)=8.0_ki*abb82(12)
      abb82(45)=abb82(10)*abb82(45)
      abb82(15)=-spbk2k1*abb82(15)
      abb82(15)=abb82(45)+abb82(15)
      abb82(15)=8.0_ki*abb82(15)
      abb82(30)=spbk3k1*abb82(30)
      abb82(11)=-spbl6k1*abb82(11)
      abb82(31)=-spbl5k1*abb82(31)
      abb82(11)=abb82(11)+abb82(31)
      abb82(11)=8.0_ki*abb82(11)
      abb82(31)=spbk3k1*abb82(54)
      abb82(8)=-8.0_ki*abb82(8)
      abb82(45)=spbk3k1*abb82(56)
      abb82(10)=-8.0_ki*abb82(10)
      R2d82=0.0_ki
      rat2 = rat2 + R2d82
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='82' value='", &
          & R2d82, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd82h7
