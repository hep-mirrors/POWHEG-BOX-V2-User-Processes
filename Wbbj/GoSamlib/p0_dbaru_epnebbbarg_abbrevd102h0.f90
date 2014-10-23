module     p0_dbaru_epnebbbarg_abbrevd102h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(54), public :: abb102
   complex(ki), public :: R2d102
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
      abb102(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb102(2)=1.0_ki/(-es71+es56-es567+es234)
      abb102(3)=NC**(-1)
      abb102(4)=sqrt2**(-1)
      abb102(5)=es56**(-1)
      abb102(6)=spbl5k2**(-1)
      abb102(7)=spak2k7**(-1)
      abb102(8)=spbl6k2**(-1)
      abb102(9)=c1*abb102(3)
      abb102(10)=c4*abb102(3)**2
      abb102(9)=abb102(9)-abb102(10)
      abb102(10)=TR*gW
      abb102(10)=abb102(10)**2*CVDU*i_*mB*abb102(5)*abb102(4)*abb102(2)*abb102(&
      &1)
      abb102(11)=abb102(10)*abb102(7)
      abb102(12)=abb102(9)*abb102(11)*spbk7k3
      abb102(13)=-spak1l6*abb102(12)
      abb102(14)=spbl6k2*abb102(6)
      abb102(15)=abb102(13)*abb102(14)
      abb102(12)=-spak1l5*abb102(12)
      abb102(15)=abb102(15)+abb102(12)
      abb102(16)=abb102(15)*spak4l6
      abb102(17)=spbl5k2*abb102(8)
      abb102(18)=abb102(12)*abb102(17)
      abb102(18)=abb102(18)+abb102(13)
      abb102(19)=abb102(18)*spak4l5
      abb102(13)=abb102(13)*abb102(6)
      abb102(12)=abb102(12)*abb102(8)
      abb102(12)=abb102(13)+abb102(12)
      abb102(13)=spak1k4*spbk2k1
      abb102(20)=abb102(12)*abb102(13)
      abb102(16)=-abb102(20)+abb102(16)+abb102(19)
      abb102(19)=32.0_ki*abb102(16)
      abb102(21)=-es12+es712-es71
      abb102(22)=es234-es34
      abb102(23)=-abb102(22)-abb102(21)
      abb102(23)=abb102(16)*abb102(23)
      abb102(11)=-abb102(11)*abb102(9)
      abb102(24)=-spak1l6*abb102(11)
      abb102(25)=abb102(24)*abb102(14)
      abb102(11)=-spak1l5*abb102(11)
      abb102(25)=abb102(25)+abb102(11)
      abb102(26)=abb102(25)*spak2k4
      abb102(27)=spak4l6*abb102(26)
      abb102(28)=abb102(11)*abb102(17)
      abb102(28)=abb102(28)+abb102(24)
      abb102(29)=abb102(28)*spak2k4
      abb102(30)=spak4l5*abb102(29)
      abb102(24)=abb102(24)*abb102(6)
      abb102(11)=abb102(11)*abb102(8)
      abb102(11)=abb102(24)+abb102(11)
      abb102(24)=abb102(11)*abb102(13)
      abb102(31)=-spak2k4*abb102(24)
      abb102(27)=abb102(31)+abb102(27)+abb102(30)
      abb102(27)=spbk7k2*spbk4k3*abb102(27)
      abb102(23)=abb102(27)+abb102(23)
      abb102(23)=8.0_ki*abb102(23)
      abb102(16)=-16.0_ki*abb102(16)
      abb102(9)=-abb102(10)*abb102(9)
      abb102(10)=abb102(9)*spbk7k3
      abb102(27)=-spak1l5*abb102(10)
      abb102(30)=abb102(27)*spbk3k2
      abb102(10)=-spak1l6*abb102(10)
      abb102(31)=abb102(10)*spbk3k2
      abb102(32)=-abb102(14)*abb102(31)
      abb102(32)=-abb102(30)+abb102(32)
      abb102(33)=8.0_ki*spak3k4
      abb102(32)=abb102(32)*abb102(33)
      abb102(34)=spbk3k2*spak2k4
      abb102(35)=abb102(34)*abb102(25)
      abb102(36)=16.0_ki*abb102(35)
      abb102(35)=-8.0_ki*abb102(35)
      abb102(37)=abb102(33)*abb102(34)
      abb102(38)=abb102(15)*abb102(37)
      abb102(39)=abb102(33)*es23
      abb102(40)=-abb102(15)*abb102(39)
      abb102(30)=-abb102(17)*abb102(30)
      abb102(30)=-abb102(31)+abb102(30)
      abb102(30)=abb102(30)*abb102(33)
      abb102(31)=abb102(34)*abb102(28)
      abb102(41)=16.0_ki*abb102(31)
      abb102(31)=-8.0_ki*abb102(31)
      abb102(42)=abb102(18)*abb102(37)
      abb102(43)=-abb102(18)*abb102(39)
      abb102(44)=spak4l6*abb102(25)
      abb102(45)=spak4l5*abb102(28)
      abb102(44)=-abb102(24)+abb102(44)+abb102(45)
      abb102(44)=spbk7k4*abb102(44)
      abb102(45)=-spak3l6*abb102(15)
      abb102(46)=-spak3l5*abb102(18)
      abb102(47)=abb102(12)*spbk2k1
      abb102(48)=spak1k3*abb102(47)
      abb102(44)=abb102(48)+abb102(46)+abb102(44)+abb102(45)
      abb102(44)=32.0_ki*abb102(44)
      abb102(21)=abb102(21)-abb102(22)
      abb102(21)=8.0_ki*abb102(21)
      abb102(22)=-abb102(25)*abb102(21)
      abb102(45)=8.0_ki*spbk7k2
      abb102(26)=abb102(26)*abb102(45)
      abb102(46)=abb102(45)*spak2k3
      abb102(48)=abb102(25)*abb102(46)
      abb102(49)=-abb102(28)*abb102(21)
      abb102(29)=abb102(29)*abb102(45)
      abb102(45)=abb102(28)*abb102(46)
      abb102(9)=abb102(9)*spbk7k3**2
      abb102(46)=spak1l6*abb102(9)
      abb102(14)=abb102(46)*abb102(14)
      abb102(9)=-spak1l5*abb102(9)
      abb102(14)=abb102(14)-abb102(9)
      abb102(50)=abb102(15)*spak2k4
      abb102(51)=spbk4k3*abb102(50)
      abb102(51)=abb102(51)+abb102(14)
      abb102(51)=spak3l6*abb102(51)
      abb102(17)=abb102(9)*abb102(17)
      abb102(17)=abb102(17)-abb102(46)
      abb102(52)=abb102(18)*spak2k4
      abb102(53)=spbk4k3*abb102(52)
      abb102(53)=abb102(53)-abb102(17)
      abb102(53)=spak3l5*abb102(53)
      abb102(9)=abb102(9)*abb102(8)
      abb102(46)=abb102(46)*abb102(6)
      abb102(9)=abb102(9)-abb102(46)
      abb102(46)=spbk2k1*abb102(9)
      abb102(54)=-spbk4k3*spak2k4*abb102(47)
      abb102(46)=abb102(46)+abb102(54)
      abb102(46)=spak1k3*abb102(46)
      abb102(46)=abb102(46)+abb102(51)+abb102(53)
      abb102(46)=8.0_ki*abb102(46)
      abb102(12)=abb102(12)*es12
      abb102(15)=abb102(15)*spak2l6
      abb102(18)=abb102(18)*spak2l5
      abb102(12)=-abb102(18)+abb102(12)-abb102(15)
      abb102(15)=16.0_ki*abb102(12)
      abb102(12)=-8.0_ki*abb102(12)
      abb102(18)=es12*abb102(11)
      abb102(51)=-spak2l6*abb102(25)
      abb102(53)=-spak2l5*abb102(28)
      abb102(18)=abb102(53)+abb102(18)+abb102(51)
      abb102(18)=16.0_ki*spbk7k4*abb102(18)
      abb102(50)=-spak4l6*abb102(50)
      abb102(51)=-spak4l5*abb102(52)
      abb102(20)=spak2k4*abb102(20)
      abb102(20)=abb102(20)+abb102(50)+abb102(51)
      abb102(20)=spbk4k3*abb102(20)
      abb102(14)=-spak4l6*abb102(14)
      abb102(17)=spak4l5*abb102(17)
      abb102(9)=-abb102(9)*abb102(13)
      abb102(9)=abb102(20)+abb102(9)+abb102(14)+abb102(17)
      abb102(9)=8.0_ki*abb102(9)
      abb102(13)=abb102(25)*spbk3k2
      abb102(14)=-spak4l6*abb102(13)
      abb102(17)=abb102(28)*spbk3k2
      abb102(20)=-spak4l5*abb102(17)
      abb102(24)=spbk3k2*abb102(24)
      abb102(14)=abb102(24)+abb102(14)+abb102(20)
      abb102(14)=8.0_ki*abb102(14)
      abb102(13)=-abb102(13)*abb102(33)
      abb102(17)=-abb102(17)*abb102(33)
      abb102(20)=8.0_ki*abb102(25)
      abb102(24)=8.0_ki*abb102(28)
      abb102(10)=-abb102(6)*abb102(10)
      abb102(25)=-abb102(8)*abb102(27)
      abb102(10)=abb102(10)+abb102(25)
      abb102(25)=abb102(33)*spbk3k2
      abb102(10)=spbk2k1*abb102(10)*abb102(25)
      abb102(27)=abb102(11)*spbk2k1
      abb102(28)=abb102(27)*abb102(34)
      abb102(28)=16.0_ki*abb102(28)
      abb102(33)=8.0_ki*spbk2k1
      abb102(11)=abb102(11)*abb102(33)
      abb102(33)=-abb102(34)*abb102(11)
      abb102(21)=-abb102(27)*abb102(21)
      abb102(34)=abb102(47)*abb102(37)
      abb102(37)=abb102(11)*spbk7k2
      abb102(50)=spak2k4*abb102(37)
      abb102(39)=-abb102(47)*abb102(39)
      abb102(37)=spak2k3*abb102(37)
      abb102(25)=-abb102(27)*abb102(25)
      R2d102=0.0_ki
      rat2 = rat2 + R2d102
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='102' value='", &
          & R2d102, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd102h0
