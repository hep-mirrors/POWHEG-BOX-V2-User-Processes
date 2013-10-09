module     p0_dbaru_epnebbbarg_abbrevd333h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(60), public :: abb333
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
      abb333(7)=spak2l6**(-1)
      abb333(8)=spbl6k2**(-1)
      abb333(9)=sqrt(mB**2)
      abb333(10)=1.0_ki/(es34+es567-es12-es234)
      abb333(11)=c3*abb333(3)
      abb333(12)=abb333(3)**2
      abb333(13)=abb333(12)*c2
      abb333(11)=abb333(11)-abb333(13)
      abb333(13)=abb333(5)*i_*CVDU*abb333(2)*abb333(1)
      abb333(14)=TR*gW
      abb333(14)=abb333(14)**2
      abb333(15)=abb333(13)*abb333(14)*abb333(4)
      abb333(16)=abb333(15)*spak1l5
      abb333(17)=abb333(16)*spbk3k2
      abb333(18)=-abb333(17)*abb333(11)
      abb333(19)=abb333(18)*spak3k4
      abb333(20)=abb333(19)*spbl6k3
      abb333(21)=abb333(20)*spal6e7
      abb333(22)=-abb333(15)*abb333(11)
      abb333(23)=spbk3k2**2
      abb333(24)=abb333(23)*abb333(9)
      abb333(25)=abb333(6)*spak3k4
      abb333(26)=-abb333(25)*abb333(24)*abb333(22)*mB
      abb333(27)=abb333(26)*spak1e7
      abb333(21)=abb333(21)+abb333(27)
      abb333(27)=spbe7l6*abb333(21)
      abb333(28)=abb333(12)*abb333(13)
      abb333(29)=abb333(28)*c2
      abb333(13)=abb333(13)*abb333(3)
      abb333(30)=abb333(13)*c3
      abb333(29)=abb333(29)-abb333(30)
      abb333(30)=spak1k4*abb333(10)
      abb333(31)=spak4l5*abb333(30)*spbk4k3
      abb333(32)=-abb333(31)*abb333(14)*abb333(29)
      abb333(30)=abb333(30)*spbk3k1
      abb333(33)=abb333(14)*spak1l5
      abb333(29)=-abb333(30)*abb333(33)*abb333(29)
      abb333(29)=abb333(32)+abb333(29)
      abb333(32)=abb333(18)*spak2k4
      abb333(32)=abb333(32)+abb333(29)
      abb333(34)=abb333(32)*spbk7k2
      abb333(19)=abb333(19)*spbk7k3
      abb333(19)=abb333(34)-abb333(19)
      abb333(34)=spae7k7*spbe7l6
      abb333(35)=abb333(34)*abb333(19)
      abb333(36)=abb333(11)*abb333(15)*abb333(7)
      abb333(37)=mB*spbk3k2
      abb333(38)=abb333(37)**2
      abb333(39)=-abb333(38)*abb333(36)
      abb333(40)=abb333(39)*abb333(25)
      abb333(41)=abb333(40)*spak1k7
      abb333(42)=spak2e7*spbk7e7
      abb333(43)=abb333(41)*abb333(42)
      abb333(35)=-abb333(43)+abb333(35)
      abb333(43)=-abb333(16)*abb333(11)
      abb333(44)=-abb333(8)*spak3k4*abb333(38)*abb333(43)*abb333(7)
      abb333(40)=abb333(40)*spak1l6
      abb333(45)=abb333(44)+abb333(40)
      abb333(46)=spak2e7*spbe7l6
      abb333(47)=abb333(45)*abb333(46)
      abb333(48)=spal6e7*spbl6k2*spbe7l6
      abb333(49)=abb333(32)*abb333(48)
      abb333(43)=abb333(43)*abb333(37)
      abb333(50)=abb333(7)*abb333(9)
      abb333(51)=-abb333(50)*abb333(43)
      abb333(52)=abb333(51)*spak3k4
      abb333(53)=abb333(52)*spbe7k3
      abb333(54)=abb333(53)*spak2e7
      abb333(27)=abb333(35)+abb333(47)-abb333(49)-abb333(54)+abb333(27)
      abb333(47)=2.0_ki*abb333(27)
      abb333(49)=abb333(9)**2
      abb333(54)=abb333(49)*abb333(29)
      abb333(18)=-abb333(49)*abb333(18)
      abb333(55)=abb333(18)*spak2k4
      abb333(54)=-abb333(55)+abb333(54)
      abb333(55)=abb333(25)*spak1k2
      abb333(56)=abb333(55)*abb333(8)
      abb333(57)=mB**3
      abb333(24)=-abb333(56)*abb333(57)*abb333(24)*abb333(36)
      abb333(36)=abb333(54)-abb333(24)
      abb333(58)=spbk7l6*spae7k7
      abb333(36)=spbe7k2*abb333(36)*abb333(58)
      abb333(59)=abb333(49)*abb333(44)
      abb333(39)=abb333(39)*abb333(49)
      abb333(49)=spak1l6*abb333(39)*abb333(25)
      abb333(49)=abb333(49)+abb333(59)
      abb333(46)=abb333(46)*abb333(49)
      abb333(48)=-abb333(54)*abb333(48)
      abb333(29)=-abb333(29)*abb333(50)*mB
      abb333(49)=abb333(51)*spak2k4
      abb333(29)=abb333(49)+abb333(29)
      abb333(49)=-spbl6k2*abb333(29)
      abb333(51)=spbl6k3*abb333(52)
      abb333(49)=abb333(51)+abb333(49)
      abb333(49)=spal6k7*abb333(42)*abb333(49)
      abb333(24)=spbk7k2*abb333(34)*abb333(24)
      abb333(51)=spbk7e7*spbl6k2
      abb333(54)=spal6e7*abb333(51)*abb333(29)
      abb333(59)=spbl6k3*spal6e7
      abb333(60)=-spbk7e7*abb333(52)*abb333(59)
      abb333(54)=abb333(54)+abb333(60)
      abb333(54)=spak2k7*abb333(54)
      abb333(60)=abb333(9)**3
      abb333(43)=spak2e7*spak3k4*abb333(60)*abb333(7)*abb333(43)
      abb333(18)=abb333(18)*spak3k4
      abb333(58)=abb333(18)*abb333(58)
      abb333(43)=abb333(43)+abb333(58)
      abb333(43)=spbe7k3*abb333(43)
      abb333(22)=abb333(22)*abb333(23)
      abb333(58)=-spbe7l6*abb333(60)*mB*abb333(22)
      abb333(39)=-spak2k7*spbk7e7*abb333(39)
      abb333(39)=abb333(58)+abb333(39)
      abb333(25)=spak1e7*abb333(25)*abb333(39)
      abb333(18)=-spbe7l6*abb333(59)*abb333(18)
      abb333(18)=abb333(25)+abb333(43)+abb333(54)+abb333(36)+abb333(24)+abb333(&
      &49)+abb333(18)+abb333(48)+abb333(46)
      abb333(18)=4.0_ki*abb333(18)
      abb333(24)=c2*abb333(9)
      abb333(25)=abb333(24)*abb333(28)
      abb333(28)=c3*abb333(9)
      abb333(13)=abb333(28)*abb333(13)
      abb333(13)=abb333(25)-abb333(13)
      abb333(25)=abb333(9)+mB
      abb333(14)=abb333(31)*abb333(13)*abb333(25)*abb333(14)
      abb333(13)=abb333(30)*abb333(13)*abb333(25)*abb333(33)
      abb333(17)=abb333(17)*abb333(9)
      abb333(16)=abb333(16)*abb333(37)
      abb333(16)=abb333(17)+abb333(16)
      abb333(12)=abb333(24)*abb333(12)
      abb333(17)=abb333(28)*abb333(3)
      abb333(12)=abb333(17)-abb333(12)
      abb333(12)=abb333(16)*abb333(12)
      abb333(16)=spak2k4*abb333(12)
      abb333(13)=abb333(13)+abb333(14)+abb333(16)
      abb333(13)=spbl6k2*abb333(13)
      abb333(14)=abb333(57)*abb333(23)
      abb333(16)=abb333(38)*abb333(9)
      abb333(14)=abb333(14)+abb333(16)
      abb333(11)=-abb333(55)*abb333(50)*abb333(11)*abb333(15)*abb333(14)
      abb333(14)=es12-es712+es71
      abb333(14)=abb333(29)*abb333(14)
      abb333(12)=-spbl6k3*spak3k4*abb333(12)
      abb333(15)=abb333(52)*spbk7k3
      abb333(16)=-spak2k7*abb333(15)
      abb333(17)=abb333(26)*spak1k7
      abb333(23)=spbk7l6*abb333(17)
      abb333(11)=abb333(23)+abb333(16)+abb333(11)+abb333(12)+abb333(14)+abb333(&
      &13)
      abb333(11)=16.0_ki*abb333(11)
      abb333(12)=8.0_ki*abb333(35)
      abb333(13)=abb333(32)*spbl6k2
      abb333(13)=abb333(13)-abb333(20)
      abb333(14)=-16.0_ki*abb333(13)
      abb333(16)=-abb333(56)*mB**4*abb333(7)**2*abb333(22)
      abb333(22)=abb333(29)-abb333(16)
      abb333(23)=16.0_ki*abb333(22)
      abb333(24)=-4.0_ki*abb333(27)
      abb333(25)=-spak2k7*abb333(44)
      abb333(17)=-abb333(17)+abb333(25)
      abb333(17)=spbk7e7*abb333(17)
      abb333(25)=abb333(32)*abb333(51)
      abb333(20)=-spbk7e7*abb333(20)
      abb333(20)=abb333(20)+abb333(25)
      abb333(20)=spal6k7*abb333(20)
      abb333(17)=abb333(20)+abb333(17)
      abb333(17)=4.0_ki*abb333(17)
      abb333(20)=-spbk7k2*abb333(29)
      abb333(16)=spbk7k2*abb333(16)
      abb333(27)=-spbk7l6*abb333(40)
      abb333(15)=abb333(20)+abb333(15)+abb333(27)+abb333(16)
      abb333(15)=4.0_ki*spae7k7*abb333(15)
      abb333(16)=spbk7e7*abb333(21)
      abb333(20)=abb333(44)-abb333(40)
      abb333(21)=abb333(42)*abb333(20)
      abb333(25)=-spal6e7*abb333(25)
      abb333(16)=abb333(25)+abb333(21)+abb333(16)
      abb333(16)=4.0_ki*abb333(16)
      abb333(19)=-8.0_ki*abb333(19)
      abb333(21)=4.0_ki*abb333(42)
      abb333(25)=abb333(52)*abb333(21)
      abb333(21)=-abb333(22)*abb333(21)
      abb333(27)=4.0_ki*abb333(34)
      abb333(13)=abb333(13)*abb333(27)
      abb333(22)=spbe7k2*abb333(22)
      abb333(22)=-abb333(53)+abb333(22)
      abb333(22)=spae7k7*abb333(22)
      abb333(20)=-abb333(34)*abb333(20)
      abb333(20)=abb333(20)+abb333(22)
      abb333(20)=4.0_ki*abb333(20)
      abb333(22)=8.0_ki*abb333(41)
      abb333(28)=8.0_ki*abb333(45)
      abb333(29)=-8.0_ki*abb333(52)
      abb333(27)=-abb333(26)*abb333(27)
      abb333(26)=8.0_ki*abb333(26)
      R2d333=abb333(47)
      rat2 = rat2 + R2d333
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='333' value='", &
          & R2d333, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd333h2
