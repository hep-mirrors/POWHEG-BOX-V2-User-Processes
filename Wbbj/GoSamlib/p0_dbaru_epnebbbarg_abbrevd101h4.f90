module     p0_dbaru_epnebbbarg_abbrevd101h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(63), public :: abb101
   complex(ki), public :: R2d101
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
      abb101(1)=1.0_ki/(-mB**2+es67)
      abb101(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb101(3)=NC**(-1)
      abb101(4)=sqrt2**(-1)
      abb101(5)=es234**(-1)
      abb101(6)=spbl5k2**(-1)
      abb101(7)=spbk7k2**(-1)
      abb101(8)=spak2l6**(-1)
      abb101(9)=spbl6k2**(-1)
      abb101(10)=sqrt(mB**2)
      abb101(11)=2.0_ki*abb101(3)
      abb101(12)=abb101(7)*c3
      abb101(13)=abb101(11)*abb101(12)
      abb101(14)=abb101(12)*NC
      abb101(15)=c2*abb101(3)**2
      abb101(16)=abb101(15)*abb101(7)
      abb101(13)=-abb101(13)+abb101(14)+abb101(16)
      abb101(14)=TR*gW
      abb101(14)=abb101(5)*i_*CVDU*abb101(4)*abb101(2)*abb101(1)*abb101(14)**2
      abb101(17)=abb101(14)*spal6k7
      abb101(18)=abb101(17)*abb101(6)*mB
      abb101(19)=abb101(18)*spbl6k2
      abb101(20)=abb101(13)*abb101(19)
      abb101(21)=spbk3k2**2
      abb101(22)=abb101(21)*abb101(20)
      abb101(23)=abb101(22)*spak1l6
      abb101(11)=abb101(11)-NC
      abb101(24)=-abb101(18)*abb101(11)
      abb101(25)=c3*abb101(24)
      abb101(26)=abb101(15)*abb101(18)
      abb101(25)=abb101(26)+abb101(25)
      abb101(26)=spak1k7*abb101(25)*abb101(21)
      abb101(23)=abb101(23)+abb101(26)
      abb101(27)=-es71*abb101(23)
      abb101(22)=abb101(22)*spak1l6**2
      abb101(26)=spak1l6*abb101(26)
      abb101(22)=abb101(22)+abb101(26)
      abb101(22)=spbl6k1*abb101(22)
      abb101(22)=abb101(22)+abb101(27)
      abb101(22)=spak3k4*abb101(22)
      abb101(26)=mB**3*abb101(21)*abb101(6)
      abb101(27)=abb101(26)*abb101(15)
      abb101(28)=abb101(27)*abb101(17)
      abb101(29)=abb101(17)*c3
      abb101(30)=abb101(26)*abb101(29)
      abb101(31)=abb101(11)*abb101(30)
      abb101(28)=abb101(28)-abb101(31)
      abb101(28)=abb101(28)*spak1k7
      abb101(31)=spak3k4*abb101(28)
      abb101(29)=abb101(11)*abb101(29)
      abb101(32)=abb101(10)*abb101(7)
      abb101(33)=abb101(29)*abb101(32)
      abb101(34)=abb101(15)*abb101(10)
      abb101(35)=abb101(17)*abb101(7)
      abb101(36)=abb101(34)*abb101(35)
      abb101(33)=abb101(33)-abb101(36)
      abb101(36)=-abb101(21)*abb101(33)
      abb101(37)=abb101(36)*mB**2
      abb101(38)=spak1l5*spak3k4
      abb101(39)=abb101(37)*abb101(38)
      abb101(31)=abb101(31)+abb101(39)
      abb101(31)=abb101(9)*abb101(8)*abb101(31)
      abb101(30)=-abb101(11)*abb101(30)*abb101(7)
      abb101(35)=abb101(27)*abb101(35)
      abb101(30)=abb101(35)+abb101(30)
      abb101(35)=abb101(8)*spak3k4
      abb101(39)=spak1l6*abb101(30)*abb101(35)
      abb101(31)=abb101(39)+abb101(31)
      abb101(31)=es12*abb101(31)
      abb101(40)=abb101(10)*spbk3k2
      abb101(41)=abb101(17)*abb101(40)
      abb101(42)=abb101(13)*abb101(41)
      abb101(43)=spak1l6*spbl6k2
      abb101(44)=-abb101(42)*abb101(43)
      abb101(45)=-abb101(11)*c3
      abb101(45)=abb101(45)+abb101(15)
      abb101(41)=spak1k7*abb101(41)*abb101(45)
      abb101(41)=abb101(44)-abb101(41)
      abb101(44)=abb101(38)*spbk3k1
      abb101(45)=-abb101(41)*abb101(44)
      abb101(46)=spbk7k3*spak1k7
      abb101(47)=spbl6k3*spak1l6
      abb101(46)=abb101(46)+abb101(47)
      abb101(46)=-spbk2k1*abb101(38)*abb101(42)*abb101(46)
      abb101(22)=abb101(46)+abb101(45)+abb101(31)+abb101(22)
      abb101(22)=8.0_ki*abb101(22)
      abb101(31)=c3*spbk3k2
      abb101(45)=abb101(31)*abb101(24)
      abb101(46)=abb101(18)*spbk3k2
      abb101(47)=abb101(46)*abb101(15)
      abb101(45)=abb101(47)+abb101(45)
      abb101(47)=abb101(45)*spak1k7
      abb101(48)=abb101(47)*spbk7k2
      abb101(49)=abb101(19)*abb101(11)
      abb101(31)=-abb101(31)*abb101(49)
      abb101(50)=abb101(19)*spbk3k2
      abb101(51)=abb101(50)*abb101(15)
      abb101(31)=abb101(51)+abb101(31)
      abb101(51)=abb101(31)*spak1l6
      abb101(48)=abb101(48)+abb101(51)
      abb101(51)=spak4k7*abb101(48)
      abb101(52)=abb101(41)*spak4l5
      abb101(53)=spbl6k2**2
      abb101(54)=-abb101(53)*abb101(46)*abb101(13)*spak1l6
      abb101(31)=abb101(31)*spak1k7
      abb101(31)=abb101(54)-abb101(31)
      abb101(54)=abb101(31)*spak4l6
      abb101(51)=-abb101(54)+abb101(51)-abb101(52)
      abb101(52)=16.0_ki*abb101(51)
      abb101(35)=abb101(35)*abb101(9)
      abb101(28)=-abb101(35)*abb101(28)
      abb101(28)=abb101(28)-abb101(39)-abb101(51)
      abb101(28)=16.0_ki*abb101(28)
      abb101(23)=-spak3k4*abb101(23)
      abb101(38)=-abb101(36)*abb101(38)
      abb101(23)=abb101(23)+abb101(38)
      abb101(23)=16.0_ki*abb101(23)
      abb101(38)=-abb101(13)*abb101(14)*abb101(40)
      abb101(39)=abb101(38)*spak1l6
      abb101(40)=spbk2k1*spak1l5
      abb101(51)=-abb101(39)*abb101(40)
      abb101(51)=abb101(51)-abb101(48)
      abb101(51)=spak2k4*abb101(51)
      abb101(50)=-abb101(50)*abb101(13)
      abb101(54)=abb101(50)*spak1l6
      abb101(47)=abb101(54)-abb101(47)
      abb101(54)=abb101(47)*spak3k4
      abb101(55)=-spbk7k3*abb101(54)
      abb101(56)=abb101(39)*abb101(44)
      abb101(51)=abb101(56)+abb101(55)+abb101(51)
      abb101(51)=8.0_ki*abb101(51)
      abb101(55)=abb101(45)*spak1k4
      abb101(56)=2.0_ki*spak4l5
      abb101(57)=abb101(39)*abb101(56)
      abb101(55)=abb101(55)-abb101(57)
      abb101(55)=16.0_ki*abb101(55)
      abb101(57)=spak2k4*abb101(31)
      abb101(54)=-spbl6k3*abb101(54)
      abb101(38)=abb101(38)*spak1k7
      abb101(40)=spak2k4*abb101(40)
      abb101(40)=abb101(40)-abb101(44)
      abb101(40)=abb101(38)*abb101(40)
      abb101(40)=abb101(57)+abb101(54)+abb101(40)
      abb101(40)=8.0_ki*abb101(40)
      abb101(44)=abb101(50)*spak1k4
      abb101(54)=abb101(38)*abb101(56)
      abb101(44)=abb101(44)-abb101(54)
      abb101(44)=16.0_ki*abb101(44)
      abb101(54)=8.0_ki*spak3k4
      abb101(36)=abb101(36)*abb101(54)
      abb101(57)=-spak1k7*abb101(36)
      abb101(36)=-spak1l6*abb101(36)
      abb101(58)=-abb101(41)*abb101(54)
      abb101(59)=abb101(39)*abb101(54)
      abb101(60)=-abb101(38)*abb101(54)
      abb101(61)=spak2k4*abb101(41)
      abb101(37)=-spak1k2*abb101(37)*abb101(35)
      abb101(37)=abb101(61)+abb101(37)
      abb101(37)=8.0_ki*abb101(37)
      abb101(61)=8.0_ki*spak2k4
      abb101(62)=-abb101(39)*abb101(61)
      abb101(63)=abb101(38)*abb101(61)
      abb101(29)=abb101(10)*abb101(29)
      abb101(17)=abb101(34)*abb101(17)
      abb101(17)=abb101(29)-abb101(17)
      abb101(17)=abb101(17)*spak1k7
      abb101(29)=-abb101(33)*abb101(43)
      abb101(17)=abb101(17)-abb101(29)
      abb101(17)=abb101(17)*spak4l5
      abb101(12)=abb101(24)*abb101(12)
      abb101(16)=abb101(16)*abb101(18)
      abb101(12)=abb101(12)+abb101(16)
      abb101(16)=spak1l6*abb101(53)*abb101(12)
      abb101(18)=-c3*abb101(49)
      abb101(15)=abb101(19)*abb101(15)
      abb101(15)=abb101(18)+abb101(15)
      abb101(18)=abb101(15)*spak1k7
      abb101(16)=abb101(16)+abb101(18)
      abb101(16)=abb101(16)*spak4l6
      abb101(15)=spak1l6*abb101(15)*spak4k7
      abb101(18)=abb101(25)*spak4k7
      abb101(19)=spak1k7*abb101(18)*spbk7k2
      abb101(15)=-abb101(19)+abb101(17)-abb101(16)-abb101(15)
      abb101(16)=spbk4k2*abb101(15)
      abb101(17)=spak3l5*abb101(41)
      abb101(19)=-spak3k7*abb101(48)
      abb101(24)=spak3l6*abb101(31)
      abb101(16)=abb101(24)+abb101(19)+abb101(17)+abb101(16)
      abb101(16)=8.0_ki*abb101(16)
      abb101(17)=abb101(14)*c3
      abb101(19)=-abb101(11)*abb101(32)*abb101(17)
      abb101(14)=abb101(14)*abb101(7)
      abb101(24)=abb101(34)*abb101(14)
      abb101(19)=abb101(24)+abb101(19)
      abb101(19)=abb101(19)*abb101(56)
      abb101(24)=abb101(19)*spak1l6
      abb101(25)=abb101(25)*spak1k4
      abb101(24)=abb101(24)+abb101(25)
      abb101(25)=spbk4k2*abb101(24)
      abb101(29)=2.0_ki*abb101(39)
      abb101(32)=-spak3l5*abb101(29)
      abb101(34)=spak1k3*abb101(45)
      abb101(25)=abb101(34)+abb101(32)+abb101(25)
      abb101(25)=8.0_ki*abb101(25)
      abb101(19)=abb101(19)*spak1k7
      abb101(32)=-abb101(20)*spak1k4
      abb101(19)=abb101(19)+abb101(32)
      abb101(32)=-spbk4k2*abb101(19)
      abb101(34)=2.0_ki*abb101(38)
      abb101(38)=spak3l5*abb101(34)
      abb101(39)=-spak1k3*abb101(50)
      abb101(32)=abb101(39)+abb101(38)+abb101(32)
      abb101(32)=8.0_ki*abb101(32)
      abb101(15)=-spbk4k3*abb101(15)
      abb101(38)=-es12+es712-es71
      abb101(39)=abb101(47)*abb101(38)
      abb101(41)=-spak2l5*abb101(41)
      abb101(31)=-spak2l6*abb101(31)
      abb101(15)=abb101(31)+abb101(41)+abb101(39)+abb101(15)
      abb101(15)=8.0_ki*abb101(15)
      abb101(24)=-spbk4k3*abb101(24)
      abb101(29)=spak2l5*abb101(29)
      abb101(31)=-spak1k2*abb101(45)
      abb101(24)=abb101(31)+abb101(29)+abb101(24)
      abb101(24)=8.0_ki*abb101(24)
      abb101(19)=spbk4k3*abb101(19)
      abb101(29)=-spak2l5*abb101(34)
      abb101(31)=spak1k2*abb101(50)
      abb101(19)=abb101(31)+abb101(29)+abb101(19)
      abb101(19)=8.0_ki*abb101(19)
      abb101(29)=-abb101(45)*abb101(54)
      abb101(31)=abb101(50)*abb101(54)
      abb101(34)=-abb101(42)*abb101(54)
      abb101(12)=-abb101(21)*abb101(12)
      abb101(21)=-abb101(54)*abb101(12)*abb101(10)**2
      abb101(12)=abb101(12)*spak3k4
      abb101(12)=16.0_ki*abb101(12)
      abb101(39)=abb101(45)*spak4k7
      abb101(41)=abb101(50)*spak4l6
      abb101(43)=-abb101(42)*spak4l5
      abb101(39)=-abb101(43)+abb101(39)-abb101(41)
      abb101(41)=16.0_ki*abb101(39)
      abb101(30)=abb101(30)*abb101(35)
      abb101(30)=abb101(30)+abb101(39)
      abb101(30)=16.0_ki*abb101(30)
      abb101(11)=abb101(11)*abb101(17)*abb101(26)*abb101(7)
      abb101(14)=abb101(27)*abb101(14)
      abb101(11)=abb101(14)-abb101(11)
      abb101(14)=abb101(9)*abb101(11)
      abb101(13)=abb101(46)*abb101(13)
      abb101(17)=spbk7k3*abb101(13)
      abb101(14)=abb101(14)+abb101(17)
      abb101(14)=abb101(14)*abb101(54)
      abb101(17)=abb101(13)*spbl6k3*spak3k4
      abb101(11)=-spak2k7*abb101(11)*abb101(35)
      abb101(11)=abb101(17)+abb101(11)
      abb101(11)=8.0_ki*abb101(11)
      abb101(17)=abb101(42)*abb101(61)
      abb101(26)=-abb101(33)*spak4l5
      abb101(20)=-abb101(20)*spak4l6
      abb101(18)=abb101(18)+abb101(26)-abb101(20)
      abb101(20)=spbk4k2*abb101(18)
      abb101(26)=spak3l5*abb101(42)
      abb101(27)=spak3k7*abb101(45)
      abb101(33)=-spak3l6*abb101(50)
      abb101(20)=abb101(33)+abb101(27)+abb101(20)+abb101(26)
      abb101(20)=8.0_ki*abb101(20)
      abb101(18)=-spbk4k3*abb101(18)
      abb101(13)=abb101(13)*abb101(38)
      abb101(26)=-spak2l5*abb101(42)
      abb101(27)=spak2l6*abb101(50)
      abb101(13)=abb101(27)+abb101(26)+abb101(18)+abb101(13)
      abb101(13)=8.0_ki*abb101(13)
      R2d101=0.0_ki
      rat2 = rat2 + R2d101
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='101' value='", &
          & R2d101, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd101h4
