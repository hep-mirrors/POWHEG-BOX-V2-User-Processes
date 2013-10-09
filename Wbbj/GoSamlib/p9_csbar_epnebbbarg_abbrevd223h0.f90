module     p9_csbar_epnebbbarg_abbrevd223h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(57), public :: abb223
   complex(ki), public :: R2d223
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb223(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb223(2)=1.0_ki/(es34+es567-es12-es234)
      abb223(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb223(4)=NC**(-1)
      abb223(5)=es56**(-1)
      abb223(6)=spbl5k2**(-1)
      abb223(7)=spbl6k2**(-1)
      abb223(8)=TR*gW
      abb223(8)=abb223(8)**2*CVSC*i_*mB*abb223(5)*abb223(3)*abb223(2)*abb223(1)
      abb223(9)=abb223(8)*spbk3k1
      abb223(10)=abb223(9)*c4
      abb223(11)=abb223(10)*spak2l5
      abb223(12)=spbl5k2*abb223(7)
      abb223(13)=abb223(11)*abb223(12)
      abb223(10)=abb223(10)*spak2l6
      abb223(13)=abb223(13)+abb223(10)
      abb223(13)=abb223(13)*abb223(4)
      abb223(14)=abb223(9)*spak2l5
      abb223(15)=abb223(14)*c1
      abb223(16)=abb223(15)*abb223(12)
      abb223(9)=abb223(9)*spak2l6
      abb223(17)=abb223(9)*c1
      abb223(13)=-abb223(13)+abb223(16)+abb223(17)
      abb223(16)=abb223(13)*abb223(4)
      abb223(18)=NC*c1
      abb223(14)=abb223(14)*abb223(18)
      abb223(14)=abb223(14)-abb223(11)
      abb223(19)=abb223(14)*abb223(12)
      abb223(9)=abb223(9)*abb223(18)
      abb223(9)=abb223(9)-abb223(10)
      abb223(18)=abb223(19)+abb223(9)
      abb223(19)=abb223(16)-abb223(18)
      abb223(20)=abb223(19)*spal5e7
      abb223(21)=spbl6k2*abb223(6)
      abb223(10)=abb223(10)*abb223(21)
      abb223(10)=abb223(10)+abb223(11)
      abb223(10)=abb223(10)*abb223(4)
      abb223(11)=abb223(17)*abb223(21)
      abb223(10)=abb223(10)-abb223(11)-abb223(15)
      abb223(11)=abb223(10)*abb223(4)
      abb223(9)=abb223(9)*abb223(21)
      abb223(9)=abb223(9)+abb223(14)
      abb223(14)=abb223(11)+abb223(9)
      abb223(15)=abb223(14)*spal6e7
      abb223(15)=abb223(20)-abb223(15)
      abb223(17)=spak1k4*spbe7k1
      abb223(15)=abb223(15)*abb223(17)
      abb223(20)=spal5e7*spbe7k3
      abb223(22)=abb223(19)*abb223(20)
      abb223(23)=spal6e7*spbe7k3
      abb223(24)=abb223(14)*abb223(23)
      abb223(22)=abb223(22)-abb223(24)
      abb223(22)=abb223(22)*spak3k4
      abb223(15)=abb223(15)-abb223(22)
      abb223(22)=2.0_ki*abb223(15)
      abb223(24)=abb223(18)*spal5e7
      abb223(25)=abb223(9)*spal6e7
      abb223(24)=abb223(24)+abb223(25)
      abb223(25)=abb223(24)*spbe7k4
      abb223(26)=abb223(25)*spak1k4
      abb223(27)=2.0_ki*spak4k7
      abb223(28)=-abb223(27)*abb223(26)
      abb223(29)=abb223(18)*spal5k7
      abb223(30)=abb223(9)*spal6k7
      abb223(29)=abb223(29)+abb223(30)
      abb223(30)=spak3k4*spbe7k3
      abb223(30)=abb223(30)-abb223(17)
      abb223(31)=abb223(30)*abb223(29)
      abb223(32)=spak1e7*abb223(31)
      abb223(33)=abb223(20)*abb223(18)
      abb223(34)=abb223(23)*abb223(9)
      abb223(33)=abb223(33)+abb223(34)
      abb223(34)=2.0_ki*spak3k7
      abb223(34)=-spak1k4*abb223(33)*abb223(34)
      abb223(28)=abb223(34)+abb223(28)+abb223(32)
      abb223(28)=spbk7k1*abb223(28)
      abb223(32)=spak4k7*abb223(25)
      abb223(34)=-spak1k7*spbe7k1*abb223(24)
      abb223(32)=abb223(34)+abb223(32)
      abb223(34)=2.0_ki*spak3k4
      abb223(32)=abb223(34)*abb223(32)
      abb223(31)=-spak3e7*abb223(31)
      abb223(31)=abb223(31)+abb223(32)
      abb223(31)=spbk7k3*abb223(31)
      abb223(32)=spak4e7*spbe7k3
      abb223(34)=abb223(32)*abb223(9)
      abb223(35)=-spak3k4*abb223(34)
      abb223(36)=abb223(9)*spak4e7
      abb223(37)=abb223(17)*abb223(36)
      abb223(35)=abb223(35)+abb223(37)
      abb223(35)=spal6k7*abb223(35)
      abb223(37)=abb223(32)*abb223(18)
      abb223(38)=-spak3k4*abb223(37)
      abb223(39)=abb223(18)*spak4e7
      abb223(40)=abb223(17)*abb223(39)
      abb223(38)=abb223(38)+abb223(40)
      abb223(38)=spal5k7*abb223(38)
      abb223(35)=abb223(35)+abb223(38)
      abb223(35)=spbk7k4*abb223(35)
      abb223(33)=abb223(33)*spak3k4
      abb223(38)=-es123+es12+es456-es712
      abb223(38)=2.0_ki*abb223(38)
      abb223(38)=abb223(33)*abb223(38)
      abb223(24)=abb223(24)*abb223(17)
      abb223(40)=es71*abb223(24)
      abb223(28)=-2.0_ki*abb223(40)+abb223(35)+abb223(38)+abb223(28)+abb223(31)
      abb223(28)=2.0_ki*abb223(28)
      abb223(31)=spbk7k3*spak3k4
      abb223(35)=-spbk7k1*spak1k4
      abb223(31)=abb223(35)+abb223(31)
      abb223(29)=abb223(29)*abb223(31)
      abb223(31)=abb223(8)*c1
      abb223(35)=abb223(31)*NC
      abb223(38)=abb223(35)*spak2l6
      abb223(8)=abb223(8)*c4
      abb223(40)=abb223(8)*spak2l6
      abb223(38)=abb223(38)-abb223(40)
      abb223(41)=spbk3k1**2
      abb223(42)=-abb223(41)*abb223(38)
      abb223(43)=abb223(42)*abb223(21)
      abb223(35)=abb223(35)*spak2l5
      abb223(8)=abb223(8)*spak2l5
      abb223(35)=abb223(35)-abb223(8)
      abb223(41)=-abb223(41)*abb223(35)
      abb223(43)=abb223(43)+abb223(41)
      abb223(44)=spak1l6*abb223(43)
      abb223(41)=abb223(41)*abb223(12)
      abb223(41)=abb223(41)+abb223(42)
      abb223(42)=spak1l5*abb223(41)
      abb223(42)=abb223(42)+abb223(44)
      abb223(42)=spak3k4*abb223(42)
      abb223(43)=-spak3l6*abb223(43)
      abb223(41)=-spak3l5*abb223(41)
      abb223(41)=abb223(41)+abb223(43)
      abb223(41)=spak1k4*abb223(41)
      abb223(43)=abb223(18)*spak4l5
      abb223(44)=abb223(9)*spak4l6
      abb223(43)=abb223(43)+abb223(44)
      abb223(44)=es23-es123
      abb223(45)=es234-es567
      abb223(46)=-es34+abb223(45)-abb223(44)
      abb223(46)=abb223(43)*abb223(46)
      abb223(29)=abb223(46)+abb223(41)+abb223(42)+abb223(29)
      abb223(29)=4.0_ki*abb223(29)
      abb223(24)=abb223(24)-abb223(33)
      abb223(33)=8.0_ki*abb223(24)
      abb223(41)=spal5e7*spbk7e7
      abb223(19)=abb223(19)*abb223(41)
      abb223(42)=spal6e7*spbk7e7
      abb223(14)=abb223(14)*abb223(42)
      abb223(14)=abb223(19)-abb223(14)
      abb223(19)=abb223(14)*spak4k7
      abb223(19)=abb223(19)+abb223(24)
      abb223(24)=2.0_ki*abb223(4)
      abb223(13)=abb223(13)*abb223(24)
      abb223(13)=abb223(13)+abb223(18)
      abb223(46)=spak4e7*spbk7e7
      abb223(47)=abb223(46)*spal5k7
      abb223(48)=abb223(13)*abb223(47)
      abb223(10)=abb223(10)*abb223(24)
      abb223(10)=abb223(10)-abb223(9)
      abb223(46)=abb223(46)*spal6k7
      abb223(49)=abb223(10)*abb223(46)
      abb223(50)=spak1l6*spbe7k1
      abb223(51)=spak4l6*spbe7k4
      abb223(52)=-abb223(50)+abb223(51)
      abb223(36)=abb223(36)*abb223(52)
      abb223(52)=spak1l5*spbe7k1
      abb223(53)=spak4l5*spbe7k4
      abb223(54)=-abb223(52)+abb223(53)
      abb223(39)=abb223(39)*abb223(54)
      abb223(34)=abb223(34)*spak3l6
      abb223(37)=abb223(37)*spak3l5
      abb223(19)=2.0_ki*abb223(19)-abb223(48)+abb223(49)+abb223(34)+abb223(37)+&
      &abb223(39)+abb223(36)
      abb223(19)=4.0_ki*abb223(19)
      abb223(34)=abb223(16)+abb223(18)
      abb223(36)=abb223(34)*spak4l5
      abb223(37)=abb223(11)-abb223(9)
      abb223(39)=abb223(37)*spak4l6
      abb223(36)=abb223(36)-abb223(39)
      abb223(36)=32.0_ki*abb223(36)
      abb223(15)=-4.0_ki*abb223(15)
      abb223(39)=4.0_ki*spae7k7
      abb223(30)=abb223(39)*abb223(30)
      abb223(11)=abb223(11)*abb223(30)
      abb223(39)=8.0_ki*abb223(37)
      abb223(48)=-spak3k4*abb223(39)
      abb223(39)=spak1k4*abb223(39)
      abb223(16)=-abb223(16)*abb223(30)
      abb223(30)=8.0_ki*abb223(34)
      abb223(49)=spak3k4*abb223(30)
      abb223(30)=-spak1k4*abb223(30)
      abb223(54)=abb223(8)*abb223(12)
      abb223(54)=abb223(54)+abb223(40)
      abb223(54)=abb223(54)*abb223(4)
      abb223(55)=abb223(31)*spak2l5
      abb223(56)=abb223(55)*abb223(12)
      abb223(31)=abb223(31)*spak2l6
      abb223(54)=abb223(54)-abb223(56)-abb223(31)
      abb223(56)=abb223(54)*abb223(4)
      abb223(12)=abb223(35)*abb223(12)
      abb223(12)=abb223(12)+abb223(38)
      abb223(57)=abb223(56)+abb223(12)
      abb223(41)=abb223(57)*abb223(41)
      abb223(40)=abb223(40)*abb223(21)
      abb223(8)=abb223(40)+abb223(8)
      abb223(8)=abb223(8)*abb223(4)
      abb223(31)=abb223(31)*abb223(21)
      abb223(8)=abb223(8)-abb223(31)-abb223(55)
      abb223(31)=abb223(8)*abb223(4)
      abb223(21)=abb223(38)*abb223(21)
      abb223(21)=abb223(21)+abb223(35)
      abb223(35)=abb223(31)+abb223(21)
      abb223(35)=abb223(35)*abb223(42)
      abb223(35)=abb223(41)+abb223(35)
      abb223(27)=abb223(35)*abb223(27)
      abb223(35)=abb223(54)*abb223(24)
      abb223(35)=abb223(35)-abb223(12)
      abb223(35)=abb223(35)*abb223(47)
      abb223(8)=abb223(8)*abb223(24)
      abb223(8)=abb223(8)-abb223(21)
      abb223(8)=abb223(8)*abb223(46)
      abb223(24)=abb223(12)*spak4e7
      abb223(38)=abb223(24)*abb223(53)
      abb223(40)=abb223(21)*spak4e7
      abb223(41)=abb223(40)*abb223(51)
      abb223(8)=-abb223(27)+abb223(38)+abb223(41)+abb223(35)+abb223(8)
      abb223(23)=abb223(21)*abb223(23)
      abb223(20)=abb223(12)*abb223(20)
      abb223(20)=abb223(23)+abb223(20)
      abb223(23)=-spak3k4*abb223(20)
      abb223(23)=abb223(23)+abb223(8)
      abb223(23)=spbk4k1*abb223(23)
      abb223(13)=abb223(13)*spal5k7
      abb223(10)=abb223(10)*spal6k7
      abb223(10)=abb223(10)-abb223(13)
      abb223(10)=spbk7e7*abb223(10)
      abb223(13)=abb223(43)*spbe7k4
      abb223(10)=abb223(13)+abb223(10)
      abb223(13)=spak3e7*abb223(10)
      abb223(14)=2.0_ki*abb223(14)
      abb223(27)=spak3k7*abb223(14)
      abb223(35)=abb223(21)*spal6e7
      abb223(38)=abb223(12)*spal5e7
      abb223(35)=abb223(35)+abb223(38)
      abb223(38)=es12+abb223(45)
      abb223(38)=abb223(35)*spbe7k1*abb223(38)
      abb223(25)=spak3k4*abb223(25)
      abb223(41)=abb223(32)*abb223(21)
      abb223(42)=spbk4k1*abb223(41)
      abb223(43)=abb223(9)*spak3e7
      abb223(45)=spbe7k3*abb223(43)
      abb223(42)=abb223(42)+abb223(45)
      abb223(42)=spak3l6*abb223(42)
      abb223(32)=abb223(32)*abb223(12)
      abb223(45)=spbk4k1*abb223(32)
      abb223(46)=abb223(18)*spak3e7
      abb223(47)=spbe7k3*abb223(46)
      abb223(45)=abb223(45)+abb223(47)
      abb223(45)=spak3l5*abb223(45)
      abb223(47)=-spbk4k1*abb223(40)
      abb223(43)=abb223(47)-abb223(43)
      abb223(43)=abb223(43)*abb223(50)
      abb223(47)=-spbk4k1*abb223(24)
      abb223(46)=abb223(47)-abb223(46)
      abb223(46)=abb223(46)*abb223(52)
      abb223(13)=abb223(27)+abb223(46)+abb223(43)+abb223(45)+abb223(42)+abb223(&
      &13)+abb223(25)+abb223(23)+abb223(38)
      abb223(13)=2.0_ki*abb223(13)
      abb223(12)=abb223(56)-abb223(12)
      abb223(12)=abb223(12)*spak4l5
      abb223(21)=abb223(31)-abb223(21)
      abb223(21)=abb223(21)*spak4l6
      abb223(12)=abb223(12)+abb223(21)
      abb223(21)=spbk4k1*abb223(12)
      abb223(23)=spak3l6*abb223(37)
      abb223(25)=-spak3l5*abb223(34)
      abb223(21)=abb223(25)+abb223(21)+abb223(23)
      abb223(21)=16.0_ki*abb223(21)
      abb223(17)=-abb223(35)*abb223(17)
      abb223(8)=abb223(17)-abb223(8)
      abb223(8)=spbk4k3*abb223(8)
      abb223(10)=-spak1e7*abb223(10)
      abb223(14)=-spak1k7*abb223(14)
      abb223(17)=es34-es12-abb223(44)
      abb223(17)=abb223(20)*abb223(17)
      abb223(20)=-spbk4k3*abb223(41)
      abb223(9)=abb223(9)*spak1e7
      abb223(23)=-spbe7k3*abb223(9)
      abb223(20)=abb223(20)+abb223(23)
      abb223(20)=spak3l6*abb223(20)
      abb223(23)=-spbk4k3*abb223(32)
      abb223(18)=abb223(18)*spak1e7
      abb223(25)=-spbe7k3*abb223(18)
      abb223(23)=abb223(23)+abb223(25)
      abb223(23)=spak3l5*abb223(23)
      abb223(25)=spbk4k3*abb223(40)
      abb223(9)=abb223(25)+abb223(9)
      abb223(9)=abb223(9)*abb223(50)
      abb223(24)=spbk4k3*abb223(24)
      abb223(18)=abb223(24)+abb223(18)
      abb223(18)=abb223(18)*abb223(52)
      abb223(8)=abb223(14)+abb223(18)+abb223(9)+abb223(23)+abb223(20)+abb223(10&
      &)-abb223(26)+abb223(8)+abb223(17)
      abb223(8)=2.0_ki*abb223(8)
      abb223(9)=-spbk4k3*abb223(12)
      abb223(10)=-spak1l6*abb223(37)
      abb223(12)=spak1l5*abb223(34)
      abb223(9)=abb223(12)+abb223(9)+abb223(10)
      abb223(9)=16.0_ki*abb223(9)
      R2d223=abb223(22)
      rat2 = rat2 + R2d223
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='223' value='", &
          & R2d223, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd223h0
