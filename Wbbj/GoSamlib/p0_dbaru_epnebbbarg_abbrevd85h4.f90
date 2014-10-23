module     p0_dbaru_epnebbbarg_abbrevd85h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(56), public :: abb85
   complex(ki), public :: R2d85
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
      abb85(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb85(2)=sqrt2**(-1)
      abb85(3)=es56**(-1)
      abb85(4)=spbl5k2**(-1)
      abb85(5)=spbl6k2**(-1)
      abb85(6)=spbk7k2**(-1)
      abb85(7)=spal5k7*abb85(5)
      abb85(8)=spal6k7*abb85(4)
      abb85(9)=abb85(7)+abb85(8)
      abb85(10)=TR*gW
      abb85(10)=i_*c2*mB*CVDU*abb85(3)*abb85(2)*abb85(1)*abb85(10)**2
      abb85(11)=abb85(10)*spak1k7
      abb85(9)=abb85(9)*abb85(11)
      abb85(12)=spak3k4*spbk3k2**2
      abb85(13)=abb85(12)*abb85(9)
      abb85(14)=abb85(12)*spak1k7
      abb85(15)=abb85(10)*abb85(6)
      abb85(16)=abb85(15)*abb85(4)
      abb85(17)=abb85(14)*abb85(16)
      abb85(18)=spak1l6*spbk2k1
      abb85(19)=abb85(17)*abb85(18)
      abb85(20)=abb85(15)*abb85(5)
      abb85(14)=abb85(14)*abb85(20)
      abb85(21)=spak1l5*spbk2k1
      abb85(22)=abb85(14)*abb85(21)
      abb85(13)=abb85(13)-abb85(19)-abb85(22)
      abb85(19)=-es12+es712-es71
      abb85(19)=8.0_ki*abb85(19)
      abb85(22)=abb85(13)*abb85(19)
      abb85(23)=-16.0_ki*abb85(13)
      abb85(24)=spbk2k1*spak1k7
      abb85(25)=spak1l6*abb85(4)
      abb85(26)=abb85(10)*spbk3k2
      abb85(27)=abb85(26)*abb85(24)*abb85(25)
      abb85(28)=abb85(5)*spak1k7
      abb85(29)=abb85(28)*abb85(26)
      abb85(30)=abb85(29)*spal5k7
      abb85(8)=abb85(8)*abb85(26)
      abb85(31)=abb85(8)*spak1k7
      abb85(30)=abb85(30)+abb85(31)
      abb85(31)=abb85(30)*spbk7k2
      abb85(32)=abb85(29)*abb85(21)
      abb85(27)=-abb85(31)+abb85(27)+abb85(32)
      abb85(31)=2.0_ki*spak4k7
      abb85(32)=abb85(27)*abb85(31)
      abb85(13)=abb85(32)-abb85(13)
      abb85(32)=8.0_ki*abb85(13)
      abb85(13)=4.0_ki*abb85(13)
      abb85(7)=abb85(7)*abb85(26)
      abb85(7)=abb85(7)+abb85(8)
      abb85(8)=abb85(15)*spbk3k2
      abb85(15)=abb85(8)*abb85(5)
      abb85(33)=abb85(21)*abb85(15)
      abb85(34)=abb85(8)*abb85(4)
      abb85(35)=abb85(18)*abb85(34)
      abb85(33)=-abb85(7)+abb85(33)+abb85(35)
      abb85(35)=spbk7k3*spak3k4*spak1k7
      abb85(36)=abb85(33)*abb85(35)
      abb85(27)=spak2k4*abb85(27)
      abb85(37)=abb85(12)*abb85(16)
      abb85(38)=abb85(37)*spak1l6
      abb85(39)=abb85(12)*abb85(20)
      abb85(40)=abb85(39)*spak1l5
      abb85(38)=abb85(38)+abb85(40)
      abb85(40)=-es12*abb85(38)
      abb85(41)=abb85(10)*abb85(4)
      abb85(42)=spal6k7*abb85(41)
      abb85(10)=abb85(10)*abb85(5)
      abb85(43)=spal5k7*abb85(10)
      abb85(42)=abb85(42)+abb85(43)
      abb85(12)=spak1k2*abb85(12)*abb85(42)
      abb85(12)=abb85(12)+abb85(27)+abb85(36)+abb85(40)
      abb85(12)=8.0_ki*abb85(12)
      abb85(27)=-16.0_ki*abb85(38)
      abb85(36)=8.0_ki*spak1k4
      abb85(33)=-abb85(33)*abb85(36)
      abb85(38)=abb85(17)*abb85(19)
      abb85(40)=-16.0_ki*abb85(17)
      abb85(26)=spak1k7*abb85(26)*abb85(4)
      abb85(42)=abb85(26)*abb85(31)
      abb85(17)=abb85(42)+abb85(17)
      abb85(42)=-8.0_ki*abb85(17)
      abb85(17)=-4.0_ki*abb85(17)
      abb85(43)=-abb85(34)*abb85(35)
      abb85(44)=spak1k2*abb85(37)
      abb85(26)=-spak2k4*abb85(26)
      abb85(26)=abb85(44)+abb85(43)+abb85(26)
      abb85(26)=8.0_ki*abb85(26)
      abb85(43)=16.0_ki*spak1k4
      abb85(44)=abb85(43)*abb85(34)
      abb85(19)=abb85(14)*abb85(19)
      abb85(45)=-16.0_ki*abb85(14)
      abb85(31)=abb85(31)*abb85(29)
      abb85(14)=abb85(31)+abb85(14)
      abb85(31)=-8.0_ki*abb85(14)
      abb85(14)=-4.0_ki*abb85(14)
      abb85(35)=-abb85(15)*abb85(35)
      abb85(29)=-spak2k4*abb85(29)
      abb85(46)=spak1k2*abb85(39)
      abb85(29)=abb85(46)+abb85(35)+abb85(29)
      abb85(29)=8.0_ki*abb85(29)
      abb85(35)=abb85(43)*abb85(15)
      abb85(25)=spbk2k1*abb85(11)*abb85(25)
      abb85(43)=abb85(11)*abb85(5)
      abb85(46)=abb85(21)*abb85(43)
      abb85(9)=-spbk7k2*abb85(9)
      abb85(9)=abb85(9)+abb85(25)+abb85(46)
      abb85(9)=8.0_ki*abb85(9)
      abb85(25)=spak1l6*abb85(41)
      abb85(10)=spak1l5*abb85(10)
      abb85(10)=abb85(25)+abb85(10)
      abb85(10)=8.0_ki*abb85(10)
      abb85(25)=spbk4k2*spak1k4
      abb85(41)=abb85(16)*abb85(25)
      abb85(11)=abb85(4)*abb85(11)
      abb85(46)=spak1k3*abb85(34)
      abb85(11)=abb85(46)-2.0_ki*abb85(11)+abb85(41)
      abb85(11)=8.0_ki*abb85(11)
      abb85(25)=abb85(20)*abb85(25)
      abb85(41)=spak1k3*abb85(15)
      abb85(25)=abb85(41)-2.0_ki*abb85(43)+abb85(25)
      abb85(25)=8.0_ki*abb85(25)
      abb85(41)=abb85(34)*spak1l6
      abb85(24)=abb85(41)*abb85(24)
      abb85(8)=abb85(28)*abb85(8)
      abb85(28)=abb85(8)*abb85(21)
      abb85(24)=-abb85(30)+abb85(24)+abb85(28)
      abb85(28)=8.0_ki*abb85(24)
      abb85(24)=4.0_ki*abb85(24)
      abb85(7)=spak1k2*abb85(7)
      abb85(30)=abb85(15)*spak1l5
      abb85(30)=abb85(30)+abb85(41)
      abb85(41)=-es23+es123-2.0_ki*es12
      abb85(41)=abb85(30)*abb85(41)
      abb85(43)=abb85(34)*spal6k7
      abb85(46)=abb85(15)*spal5k7
      abb85(43)=abb85(43)+abb85(46)
      abb85(43)=abb85(43)*spbk7k3
      abb85(46)=spak1k3*abb85(43)
      abb85(7)=abb85(46)+abb85(7)+abb85(41)
      abb85(7)=8.0_ki*abb85(7)
      abb85(41)=16.0_ki*abb85(30)
      abb85(46)=8.0_ki*abb85(30)
      abb85(47)=8.0_ki*abb85(34)
      abb85(48)=-spak1k7*abb85(47)
      abb85(49)=-4.0_ki*spak1k7*abb85(34)
      abb85(50)=16.0_ki*spak1k2
      abb85(51)=abb85(34)*abb85(50)
      abb85(52)=-8.0_ki*abb85(8)
      abb85(8)=-4.0_ki*abb85(8)
      abb85(50)=abb85(15)*abb85(50)
      abb85(53)=-spak1l6*abb85(16)
      abb85(54)=-spak1l5*abb85(20)
      abb85(53)=abb85(53)+abb85(54)
      abb85(53)=8.0_ki*spbk4k2*abb85(53)
      abb85(30)=spbk3k1*abb85(30)
      abb85(30)=-abb85(43)+abb85(30)
      abb85(30)=abb85(30)*abb85(36)
      abb85(36)=-spal6k7*abb85(37)
      abb85(37)=-spal5k7*abb85(39)
      abb85(36)=abb85(36)+abb85(37)
      abb85(36)=8.0_ki*abb85(36)
      abb85(37)=-spak3k4*abb85(47)
      abb85(39)=8.0_ki*abb85(15)
      abb85(43)=-spak3k4*abb85(39)
      abb85(54)=abb85(34)*spak4l6
      abb85(55)=abb85(15)*spak4l5
      abb85(54)=abb85(54)+abb85(55)
      abb85(55)=16.0_ki*abb85(54)
      abb85(54)=8.0_ki*abb85(54)
      abb85(47)=spak2k4*abb85(47)
      abb85(39)=spak2k4*abb85(39)
      abb85(56)=spak4l5*spbk4k2
      abb85(21)=abb85(56)+abb85(21)
      abb85(21)=abb85(20)*abb85(21)
      abb85(56)=spak4l6*spbk4k2
      abb85(18)=abb85(56)+abb85(18)
      abb85(18)=abb85(16)*abb85(18)
      abb85(34)=spak3l6*abb85(34)
      abb85(15)=spak3l5*abb85(15)
      abb85(15)=abb85(15)+abb85(34)+abb85(18)+abb85(21)
      abb85(15)=8.0_ki*abb85(15)
      abb85(16)=-8.0_ki*abb85(16)
      abb85(18)=-8.0_ki*abb85(20)
      R2d85=0.0_ki
      rat2 = rat2 + R2d85
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='85' value='", &
          & R2d85, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd85h4
