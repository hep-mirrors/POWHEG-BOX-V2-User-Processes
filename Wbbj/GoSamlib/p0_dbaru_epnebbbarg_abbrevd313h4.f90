module     p0_dbaru_epnebbbarg_abbrevd313h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(61), public :: abb313
   complex(ki), public :: R2d313
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
      abb313(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb313(2)=sqrt(mB**2)
      abb313(3)=NC**(-1)
      abb313(4)=sqrt2**(-1)
      abb313(5)=es234**(-1)
      abb313(6)=spbl6k2**(-1)
      abb313(7)=spbl5k2**(-1)
      abb313(8)=spbk7k2**(-1)
      abb313(9)=spak2l5**(-1)
      abb313(10)=c3*abb313(3)
      abb313(11)=c1*abb313(3)
      abb313(12)=c4-abb313(11)-abb313(10)
      abb313(13)=abb313(5)*i_*CVDU*abb313(4)*abb313(1)
      abb313(14)=TR*gW
      abb313(14)=abb313(14)**2
      abb313(15)=abb313(13)*abb313(14)*mB
      abb313(16)=abb313(15)*abb313(8)
      abb313(17)=abb313(16)*spak3k4
      abb313(18)=spbk3k2**2
      abb313(19)=abb313(18)*abb313(17)
      abb313(12)=abb313(19)*abb313(12)
      abb313(20)=abb313(3)*spbk3k2
      abb313(21)=c2*abb313(20)**2
      abb313(22)=abb313(17)*abb313(21)
      abb313(22)=-abb313(22)-abb313(12)
      abb313(23)=spal5l6*spak1k7
      abb313(24)=abb313(22)*abb313(23)
      abb313(10)=abb313(10)+abb313(11)-c4
      abb313(11)=abb313(6)*spak1l5
      abb313(19)=-abb313(10)*abb313(19)*abb313(11)
      abb313(25)=abb313(17)*abb313(11)
      abb313(26)=abb313(21)*abb313(25)
      abb313(19)=abb313(19)+abb313(26)
      abb313(26)=abb313(19)*spal5k7
      abb313(27)=abb313(26)*spbl5k2
      abb313(24)=abb313(24)-abb313(27)
      abb313(27)=abb313(2)**2
      abb313(28)=abb313(27)*abb313(24)
      abb313(29)=c1+c3
      abb313(30)=spbk3k2*mB
      abb313(30)=spak3k4*abb313(30)**2
      abb313(31)=abb313(13)*abb313(3)
      abb313(32)=abb313(29)*abb313(30)*abb313(31)
      abb313(33)=spak1k7**2
      abb313(34)=abb313(33)*abb313(7)
      abb313(35)=abb313(34)*abb313(32)
      abb313(36)=abb313(13)*abb313(7)
      abb313(37)=abb313(30)*abb313(36)
      abb313(38)=c2*abb313(3)**2
      abb313(39)=abb313(38)+c4
      abb313(40)=abb313(37)*abb313(39)
      abb313(33)=-abb313(33)*abb313(40)
      abb313(33)=abb313(35)+abb313(33)
      abb313(35)=abb313(14)*abb313(6)
      abb313(33)=abb313(35)*abb313(33)
      abb313(41)=abb313(19)*spak1k7
      abb313(42)=-abb313(2)*abb313(41)
      abb313(33)=abb313(42)+abb313(33)
      abb313(33)=abb313(2)*abb313(33)
      abb313(42)=spak1k7*abb313(7)
      abb313(12)=abb313(42)*abb313(12)
      abb313(43)=abb313(17)*abb313(42)
      abb313(44)=abb313(21)*abb313(43)
      abb313(12)=abb313(44)+abb313(12)
      abb313(44)=abb313(12)*spak1l6
      abb313(45)=-abb313(27)*abb313(44)
      abb313(33)=abb313(33)+abb313(45)
      abb313(33)=spbk2k1*abb313(33)
      abb313(45)=-abb313(39)*abb313(13)*abb313(30)
      abb313(45)=abb313(45)+abb313(32)
      abb313(45)=spal5k7*abb313(2)*abb313(35)*spak1k7*abb313(45)
      abb313(28)=abb313(33)+abb313(45)+abb313(28)
      abb313(28)=8.0_ki*abb313(28)
      abb313(33)=abb313(41)+abb313(44)
      abb313(33)=abb313(33)*spbk2k1
      abb313(24)=abb313(33)-abb313(24)
      abb313(33)=-16.0_ki*abb313(24)
      abb313(41)=abb313(15)*abb313(42)
      abb313(44)=-abb313(41)*abb313(10)
      abb313(45)=-abb313(18)*abb313(44)
      abb313(46)=-abb313(41)*abb313(21)
      abb313(45)=abb313(46)+abb313(45)
      abb313(45)=spal6k7*spak3k4*abb313(45)
      abb313(24)=abb313(45)+abb313(24)
      abb313(24)=8.0_ki*abb313(24)
      abb313(37)=spak1k7*abb313(37)*abb313(14)
      abb313(45)=abb313(14)*abb313(8)
      abb313(46)=abb313(45)*spak1l5
      abb313(13)=abb313(46)*abb313(13)
      abb313(30)=abb313(13)*abb313(30)
      abb313(30)=abb313(37)+abb313(30)
      abb313(30)=abb313(30)*abb313(39)
      abb313(14)=abb313(42)*abb313(14)
      abb313(14)=abb313(14)+abb313(46)
      abb313(14)=-abb313(14)*abb313(32)
      abb313(14)=abb313(14)+abb313(30)
      abb313(14)=abb313(6)*abb313(14)
      abb313(10)=abb313(10)-abb313(38)
      abb313(30)=abb313(10)*spak3k4
      abb313(37)=spbk3k2*abb313(13)
      abb313(47)=abb313(37)*abb313(30)
      abb313(48)=-spbl5k3*spal5l6
      abb313(49)=-spbk3k1*spak1l6
      abb313(48)=abb313(49)+abb313(48)
      abb313(48)=abb313(47)*abb313(48)
      abb313(49)=abb313(2)*abb313(19)
      abb313(37)=-abb313(37)*abb313(10)
      abb313(50)=-spbl5k2*spal5l6*spak2k4*abb313(37)
      abb313(32)=abb313(32)*abb313(7)
      abb313(32)=abb313(32)-abb313(40)
      abb313(40)=spak2l6*abb313(9)*abb313(46)*abb313(32)
      abb313(14)=abb313(40)+abb313(50)+abb313(48)+abb313(49)+abb313(14)
      abb313(14)=abb313(2)*abb313(14)
      abb313(40)=abb313(15)*spbk3k2
      abb313(48)=abb313(10)*abb313(40)
      abb313(49)=abb313(42)*abb313(48)
      abb313(50)=abb313(37)*abb313(2)
      abb313(51)=-abb313(50)-abb313(49)
      abb313(52)=spak2k4*spbk2k1
      abb313(51)=spak1l6*abb313(51)*abb313(52)
      abb313(53)=abb313(20)*abb313(29)
      abb313(54)=spbk3k2*abb313(39)
      abb313(53)=abb313(54)-abb313(53)
      abb313(43)=-spbk2k1*spak1l6*abb313(43)*abb313(53)
      abb313(17)=abb313(17)*abb313(53)
      abb313(23)=-abb313(17)*abb313(23)
      abb313(23)=abb313(43)+abb313(23)
      abb313(23)=spbk7k3*abb313(23)
      abb313(43)=mB**3
      abb313(21)=abb313(36)*abb313(43)*abb313(21)
      abb313(35)=spak3k4*abb313(35)
      abb313(55)=abb313(21)*abb313(35)
      abb313(18)=abb313(43)*abb313(18)
      abb313(35)=abb313(35)*abb313(18)
      abb313(36)=abb313(36)*c4
      abb313(43)=abb313(36)*abb313(35)
      abb313(43)=abb313(55)+abb313(43)
      abb313(55)=-spak1k7*abb313(43)
      abb313(35)=abb313(35)*abb313(31)
      abb313(56)=abb313(35)*abb313(29)*abb313(42)
      abb313(57)=abb313(40)*spak1k7
      abb313(58)=spak2k4*abb313(10)*abb313(57)
      abb313(59)=-spal5l6*abb313(58)
      abb313(60)=-es71*abb313(19)
      abb313(61)=abb313(29)*abb313(7)
      abb313(35)=abb313(35)*abb313(61)
      abb313(35)=abb313(35)-abb313(43)
      abb313(35)=spak1k2*abb313(9)*spal5k7*abb313(35)
      abb313(26)=-spbk7l5*abb313(26)
      abb313(14)=abb313(26)+abb313(35)+abb313(60)+abb313(23)+abb313(59)+abb313(&
      &51)+abb313(14)+abb313(56)+abb313(55)
      abb313(14)=8.0_ki*abb313(14)
      abb313(19)=16.0_ki*abb313(19)
      abb313(23)=2.0_ki*abb313(2)
      abb313(26)=abb313(23)*abb313(37)
      abb313(26)=abb313(26)+abb313(49)
      abb313(35)=abb313(26)*spak4l6
      abb313(37)=abb313(11)*abb313(48)
      abb313(43)=abb313(37)*spak4k7
      abb313(35)=abb313(35)-abb313(43)
      abb313(43)=16.0_ki*abb313(35)
      abb313(48)=-abb313(61)*abb313(31)
      abb313(36)=abb313(36)+abb313(48)
      abb313(18)=abb313(18)*abb313(36)
      abb313(18)=abb313(21)+abb313(18)
      abb313(18)=abb313(9)*abb313(45)*abb313(18)*abb313(11)*spak3k4
      abb313(18)=abb313(18)-abb313(35)
      abb313(18)=16.0_ki*abb313(18)
      abb313(21)=-8.0_ki*spak1l6*abb313(7)*abb313(22)
      abb313(22)=spak2k4*abb313(37)
      abb313(25)=-abb313(25)*abb313(53)
      abb313(35)=-spbk7k3*abb313(25)
      abb313(22)=abb313(22)+abb313(35)
      abb313(22)=8.0_ki*abb313(22)
      abb313(35)=8.0_ki*abb313(12)
      abb313(34)=abb313(34)*abb313(40)
      abb313(36)=-spbk2k1*abb313(34)*abb313(30)
      abb313(30)=abb313(57)*abb313(30)
      abb313(40)=-spal5k7*abb313(30)
      abb313(36)=abb313(36)+abb313(40)
      abb313(36)=8.0_ki*abb313(36)
      abb313(40)=-spak1l5*abb313(17)
      abb313(47)=-abb313(2)*abb313(47)
      abb313(40)=abb313(47)+abb313(40)
      abb313(40)=8.0_ki*abb313(40)
      abb313(27)=abb313(12)*abb313(27)
      abb313(34)=abb313(52)*abb313(10)*abb313(34)
      abb313(47)=spal5k7*abb313(58)
      abb313(27)=abb313(47)+abb313(27)+abb313(34)
      abb313(27)=8.0_ki*abb313(27)
      abb313(12)=16.0_ki*abb313(12)
      abb313(34)=16.0_ki*abb313(49)
      abb313(47)=abb313(34)*spak4k7
      abb313(20)=abb313(29)*abb313(20)*abb313(16)
      abb313(48)=abb313(54)*abb313(16)
      abb313(48)=abb313(20)-abb313(48)
      abb313(51)=-spak1l5*abb313(48)
      abb313(50)=-abb313(50)+abb313(51)
      abb313(50)=8.0_ki*spak2k4*abb313(50)
      abb313(51)=abb313(7)*abb313(20)
      abb313(55)=abb313(16)*abb313(7)
      abb313(56)=abb313(55)*abb313(54)
      abb313(51)=abb313(51)-abb313(56)
      abb313(56)=abb313(51)*spak1k4
      abb313(56)=16.0_ki*abb313(56)
      abb313(57)=8.0_ki*spal6k7
      abb313(30)=abb313(30)*abb313(57)
      abb313(17)=abb313(17)*spak1l6
      abb313(59)=-spbl5k2*abb313(25)
      abb313(59)=abb313(17)+abb313(59)
      abb313(59)=8.0_ki*abb313(59)
      abb313(58)=-abb313(57)*abb313(58)
      abb313(48)=spak2k4*spak1l6*abb313(48)
      abb313(60)=spbl5k3*abb313(25)
      abb313(48)=abb313(48)+abb313(60)
      abb313(48)=8.0_ki*abb313(48)
      abb313(31)=abb313(29)*abb313(46)*abb313(31)
      abb313(13)=abb313(39)*abb313(13)
      abb313(13)=abb313(31)-abb313(13)
      abb313(13)=abb313(13)*abb313(23)
      abb313(23)=abb313(41)*abb313(38)
      abb313(23)=abb313(23)+abb313(44)
      abb313(13)=abb313(13)+abb313(23)
      abb313(13)=abb313(13)*spak4l6
      abb313(29)=abb313(29)*abb313(3)
      abb313(29)=abb313(39)-abb313(29)
      abb313(15)=spak4k7*abb313(15)*abb313(11)*abb313(29)
      abb313(13)=abb313(13)-abb313(15)
      abb313(15)=spbk4k2*abb313(13)
      abb313(29)=-spak3l6*abb313(26)
      abb313(31)=spak3k7*abb313(37)
      abb313(15)=abb313(29)+abb313(15)+abb313(31)
      abb313(15)=8.0_ki*abb313(15)
      abb313(29)=abb313(23)*spak4k7
      abb313(31)=-spbk4k2*abb313(29)
      abb313(37)=spak3k7*abb313(49)
      abb313(31)=abb313(31)+abb313(37)
      abb313(31)=8.0_ki*abb313(31)
      abb313(37)=abb313(10)*abb313(55)
      abb313(38)=abb313(37)*spak1k4
      abb313(39)=-spbk4k2*abb313(38)
      abb313(41)=-spak1k3*abb313(51)
      abb313(39)=abb313(39)+abb313(41)
      abb313(39)=8.0_ki*abb313(39)
      abb313(34)=abb313(34)*spal6k7
      abb313(13)=-spbk4k3*abb313(13)
      abb313(26)=spak2l6*abb313(26)
      abb313(11)=abb313(11)*abb313(16)
      abb313(41)=abb313(11)*abb313(53)
      abb313(44)=es71+es12-es712
      abb313(46)=abb313(41)*abb313(44)
      abb313(13)=abb313(13)+abb313(26)+abb313(46)
      abb313(13)=8.0_ki*abb313(13)
      abb313(26)=abb313(51)*spak1l6
      abb313(41)=abb313(26)+abb313(41)
      abb313(46)=16.0_ki*abb313(41)
      abb313(16)=-abb313(54)*abb313(42)*abb313(16)
      abb313(20)=abb313(42)*abb313(20)
      abb313(16)=abb313(20)+abb313(16)
      abb313(16)=-abb313(16)*abb313(44)
      abb313(20)=spbk4k3*abb313(29)
      abb313(16)=abb313(20)+abb313(16)
      abb313(16)=8.0_ki*abb313(16)
      abb313(20)=spbk4k3*abb313(38)
      abb313(29)=spak1k2*abb313(51)
      abb313(20)=abb313(20)+abb313(29)
      abb313(20)=8.0_ki*abb313(20)
      abb313(23)=abb313(23)*abb313(57)
      abb313(29)=spbk4k2*abb313(23)
      abb313(10)=abb313(10)*abb313(11)
      abb313(11)=abb313(37)*spak1l6
      abb313(10)=abb313(10)-abb313(11)
      abb313(10)=8.0_ki*abb313(10)
      abb313(11)=-spbk4k2*abb313(10)
      abb313(23)=-spbk4k3*abb313(23)
      abb313(10)=spbk4k3*abb313(10)
      abb313(37)=abb313(49)*abb313(57)
      abb313(38)=8.0_ki*abb313(41)
      abb313(41)=spbk2k1*spak3k4*abb313(37)
      abb313(17)=abb313(7)*abb313(17)
      abb313(17)=abb313(17)-abb313(25)
      abb313(17)=8.0_ki*spbk2k1*abb313(17)
      abb313(42)=-abb313(52)*abb313(37)
      abb313(32)=-abb313(2)*abb313(45)*abb313(6)*abb313(32)
      abb313(26)=abb313(26)*abb313(52)
      abb313(25)=spbk3k1*abb313(25)
      abb313(25)=abb313(25)+abb313(32)+abb313(26)
      abb313(25)=8.0_ki*abb313(25)
      R2d313=0.0_ki
      rat2 = rat2 + R2d313
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='313' value='", &
          & R2d313, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd313h4
