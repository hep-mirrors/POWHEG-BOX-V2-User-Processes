module     p0_dbaru_epnebbbarg_abbrevd333h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(58), public :: abb333
   complex(ki), public :: R2d333
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
      abb333(1)=1.0_ki/(-mB**2+es67)
      abb333(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb333(3)=NC**(-1)
      abb333(4)=es234**(-1)
      abb333(5)=es567**(-1)
      abb333(6)=spbl5k2**(-1)
      abb333(7)=spbl6k2**(-1)
      abb333(8)=spak2l6**(-1)
      abb333(9)=sqrt(mB**2)
      abb333(10)=1.0_ki/(es34+es567-es12-es234)
      abb333(11)=c3*abb333(3)
      abb333(12)=c2*abb333(3)**2
      abb333(11)=abb333(11)-abb333(12)
      abb333(12)=abb333(5)*i_*CVDU*abb333(2)*abb333(1)
      abb333(13)=abb333(11)*abb333(12)
      abb333(14)=-abb333(13)*abb333(9)
      abb333(15)=TR*gW
      abb333(15)=abb333(15)**2
      abb333(16)=-abb333(15)*abb333(14)
      abb333(13)=mB*abb333(13)
      abb333(17)=-abb333(15)*abb333(13)
      abb333(18)=abb333(16)+abb333(17)
      abb333(19)=spal6e7*spbe7k2
      abb333(20)=spak1k4*abb333(10)
      abb333(21)=abb333(19)*abb333(20)
      abb333(22)=abb333(18)*abb333(21)
      abb333(23)=spbk7k2*abb333(7)
      abb333(24)=spae7k7*spbe7k2
      abb333(25)=abb333(23)*abb333(24)
      abb333(26)=abb333(25)*abb333(20)
      abb333(27)=abb333(26)*abb333(17)
      abb333(22)=abb333(22)-abb333(27)
      abb333(28)=spbk4k3*spak4l5
      abb333(22)=abb333(22)*abb333(28)
      abb333(29)=abb333(15)*spak1l5
      abb333(14)=-abb333(29)*abb333(14)
      abb333(13)=-abb333(29)*abb333(13)
      abb333(29)=abb333(14)+abb333(13)
      abb333(21)=abb333(29)*abb333(21)
      abb333(26)=abb333(26)*abb333(13)
      abb333(21)=abb333(21)-abb333(26)
      abb333(21)=abb333(21)*spbk3k1
      abb333(12)=abb333(12)*abb333(15)*abb333(4)
      abb333(15)=abb333(11)*abb333(12)*spak1l5
      abb333(30)=-spbk3k2*abb333(15)
      abb333(31)=abb333(30)*abb333(9)
      abb333(32)=spbk3k2*mB
      abb333(33)=-abb333(32)*abb333(15)
      abb333(34)=abb333(31)-abb333(33)
      abb333(35)=abb333(34)*abb333(19)
      abb333(25)=abb333(25)*abb333(33)
      abb333(35)=abb333(35)+abb333(25)
      abb333(35)=abb333(35)*spak2k4
      abb333(11)=-abb333(12)*abb333(11)
      abb333(12)=spbk3k2**2
      abb333(36)=abb333(8)*abb333(12)*mB**3
      abb333(37)=abb333(7)*spak3k4
      abb333(38)=abb333(37)*abb333(6)
      abb333(39)=-abb333(38)*spak1k2*abb333(11)*abb333(36)
      abb333(40)=abb333(33)*abb333(37)
      abb333(41)=abb333(40)*spbl6k3
      abb333(42)=abb333(39)+abb333(41)
      abb333(19)=abb333(19)*abb333(42)
      abb333(19)=abb333(22)+abb333(21)+abb333(35)+abb333(19)
      abb333(21)=abb333(31)*spak3k4
      abb333(22)=abb333(21)*spbe7k3
      abb333(12)=abb333(12)*mB
      abb333(35)=-abb333(12)*abb333(11)
      abb333(43)=abb333(6)*spak3k4
      abb333(44)=abb333(35)*abb333(43)
      abb333(45)=abb333(44)*spak1l6
      abb333(46)=abb333(45)*spbe7l6
      abb333(22)=abb333(22)-abb333(46)
      abb333(46)=-spal6e7*abb333(22)
      abb333(47)=abb333(44)*spak1k7
      abb333(48)=spbk7e7*spal6e7
      abb333(49)=abb333(47)*abb333(48)
      abb333(50)=abb333(40)*spbk7k3
      abb333(51)=abb333(50)*abb333(24)
      abb333(49)=abb333(49)+abb333(51)
      abb333(32)=abb333(32)**2
      abb333(11)=-abb333(32)*abb333(11)
      abb333(38)=abb333(11)*abb333(38)
      abb333(51)=abb333(9)*abb333(38)
      abb333(52)=abb333(51)*spak1e7
      abb333(53)=abb333(52)*spbe7k2
      abb333(46)=abb333(53)-abb333(49)+abb333(46)+abb333(19)
      abb333(53)=-2.0_ki*abb333(46)
      abb333(54)=abb333(9)**2
      abb333(19)=-abb333(54)*abb333(19)
      abb333(44)=abb333(44)*abb333(54)
      abb333(55)=-spal6e7*abb333(44)
      abb333(56)=spbk7k2*spae7k7
      abb333(57)=-abb333(56)*abb333(51)
      abb333(55)=abb333(55)+abb333(57)
      abb333(55)=spbe7l6*abb333(55)
      abb333(57)=abb333(51)*abb333(24)
      abb333(58)=spbk7l6*abb333(57)
      abb333(55)=abb333(58)+abb333(55)
      abb333(55)=spak1l6*abb333(55)
      abb333(58)=abb333(9)**3
      abb333(30)=spal6e7*abb333(58)*abb333(30)*spak3k4
      abb333(40)=abb333(54)*abb333(56)*abb333(40)
      abb333(30)=abb333(30)+abb333(40)
      abb333(30)=spbe7k3*abb333(30)
      abb333(38)=-spbe7k2*abb333(58)*abb333(38)
      abb333(40)=spal6k7*spbk7e7
      abb333(44)=abb333(44)*abb333(40)
      abb333(38)=abb333(38)+abb333(44)
      abb333(38)=spak1e7*abb333(38)
      abb333(32)=-abb333(32)*abb333(15)
      abb333(44)=-spak2e7*abb333(40)
      abb333(54)=spak2k7*abb333(48)
      abb333(44)=abb333(54)+abb333(44)
      abb333(37)=abb333(37)*abb333(9)
      abb333(44)=abb333(37)*abb333(8)*abb333(32)*abb333(44)
      abb333(19)=abb333(38)+abb333(30)+abb333(44)+abb333(55)+abb333(19)
      abb333(19)=4.0_ki*abb333(19)
      abb333(30)=abb333(31)*spak2k4
      abb333(38)=abb333(28)*abb333(20)
      abb333(44)=abb333(16)*abb333(38)
      abb333(20)=abb333(20)*spbk3k1
      abb333(54)=abb333(14)*abb333(20)
      abb333(30)=abb333(30)+abb333(54)+abb333(44)
      abb333(44)=-spbk7k2*abb333(30)
      abb333(54)=abb333(21)*spbk7k3
      abb333(44)=abb333(54)+abb333(44)
      abb333(44)=spal6k7*abb333(44)
      abb333(12)=-abb333(9)*abb333(12)*abb333(15)
      abb333(12)=abb333(12)+abb333(32)
      abb333(12)=abb333(12)*abb333(37)
      abb333(32)=-abb333(9)*abb333(35)
      abb333(11)=abb333(32)-abb333(11)
      abb333(11)=spak1l6*abb333(9)*abb333(11)*abb333(43)
      abb333(32)=abb333(51)*spak1k7
      abb333(35)=-spbk7k2*abb333(32)
      abb333(11)=abb333(35)+abb333(12)+abb333(11)+abb333(44)
      abb333(11)=16.0_ki*abb333(11)
      abb333(12)=abb333(28)*abb333(27)
      abb333(25)=-spak2k4*abb333(25)
      abb333(26)=spbk3k1*abb333(26)
      abb333(12)=abb333(26)+abb333(12)+abb333(25)+abb333(49)
      abb333(12)=8.0_ki*abb333(12)
      abb333(25)=-16.0_ki*abb333(45)
      abb333(15)=-spak3k4*abb333(7)**2*abb333(15)*abb333(36)
      abb333(26)=16.0_ki*abb333(15)
      abb333(27)=4.0_ki*abb333(46)
      abb333(28)=spbk7l6*abb333(45)
      abb333(28)=abb333(28)-abb333(54)
      abb333(28)=spae7k7*abb333(28)
      abb333(30)=abb333(39)+abb333(30)
      abb333(30)=abb333(56)*abb333(30)
      abb333(28)=abb333(30)+abb333(28)
      abb333(28)=4.0_ki*abb333(28)
      abb333(30)=spal6k7*abb333(41)
      abb333(35)=-spak2k7*abb333(15)
      abb333(30)=abb333(35)+abb333(32)+abb333(30)
      abb333(30)=spbk7e7*abb333(30)
      abb333(32)=abb333(33)*spak2k4
      abb333(35)=abb333(38)*abb333(17)
      abb333(36)=abb333(20)*abb333(13)
      abb333(32)=-abb333(36)+abb333(32)-abb333(35)
      abb333(35)=-abb333(32)*abb333(40)
      abb333(30)=abb333(35)+abb333(30)
      abb333(30)=4.0_ki*abb333(30)
      abb333(35)=4.0_ki*abb333(48)
      abb333(36)=abb333(45)*abb333(35)
      abb333(35)=-abb333(21)*abb333(35)
      abb333(31)=abb333(31)+abb333(33)
      abb333(31)=abb333(31)*spak2k4
      abb333(16)=abb333(16)-abb333(17)
      abb333(16)=abb333(16)*abb333(38)
      abb333(13)=abb333(14)-abb333(13)
      abb333(13)=abb333(13)*abb333(20)
      abb333(13)=abb333(16)+abb333(13)+abb333(31)+abb333(39)-abb333(41)
      abb333(14)=abb333(48)*abb333(13)
      abb333(16)=spak2e7*abb333(15)
      abb333(16)=abb333(16)-abb333(52)
      abb333(16)=spbk7e7*abb333(16)
      abb333(14)=abb333(14)+abb333(16)
      abb333(14)=4.0_ki*abb333(14)
      abb333(16)=abb333(23)*abb333(32)
      abb333(16)=-abb333(50)+abb333(16)
      abb333(16)=8.0_ki*abb333(16)
      abb333(13)=-abb333(24)*abb333(13)
      abb333(17)=spae7k7*abb333(22)
      abb333(13)=abb333(13)+abb333(17)
      abb333(13)=4.0_ki*abb333(13)
      abb333(17)=-8.0_ki*abb333(47)
      abb333(21)=8.0_ki*abb333(21)
      abb333(22)=-spak2k4*abb333(34)
      abb333(18)=-abb333(18)*abb333(38)
      abb333(20)=-abb333(29)*abb333(20)
      abb333(18)=abb333(20)+abb333(18)+abb333(22)-abb333(42)
      abb333(18)=8.0_ki*abb333(18)
      abb333(20)=4.0_ki*abb333(24)
      abb333(15)=-abb333(15)*abb333(20)
      abb333(20)=4.0_ki*abb333(57)
      abb333(22)=-8.0_ki*abb333(51)
      R2d333=abb333(53)
      rat2 = rat2 + R2d333
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='333' value='", &
          & R2d333, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd333h0
