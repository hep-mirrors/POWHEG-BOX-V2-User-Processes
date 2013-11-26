module     p0_dbaru_epnebbbarg_abbrevd102h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(59), public :: abb102
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
      abb102(4)=es56**(-1)
      abb102(5)=spbl5k2**(-1)
      abb102(6)=spbl6k2**(-1)
      abb102(7)=c1*abb102(3)
      abb102(8)=c4*abb102(3)**2
      abb102(7)=abb102(7)-abb102(8)
      abb102(8)=TR*gW
      abb102(7)=abb102(7)*CVDU*i_*mB*abb102(4)*abb102(2)*abb102(1)*abb102(8)**2
      abb102(8)=-spbe7k3*abb102(7)
      abb102(9)=-spak1l5*abb102(8)
      abb102(10)=abb102(9)*spbk3k2
      abb102(8)=-spak1l6*abb102(8)
      abb102(11)=spbl6k2*abb102(5)
      abb102(12)=abb102(11)*spbk3k2
      abb102(13)=abb102(12)*abb102(8)
      abb102(10)=abb102(10)+abb102(13)
      abb102(13)=spak4l6*abb102(10)
      abb102(14)=abb102(8)*spbk3k2
      abb102(15)=spbl5k2*abb102(6)
      abb102(16)=abb102(15)*spbk3k2
      abb102(17)=abb102(16)*abb102(9)
      abb102(14)=abb102(14)+abb102(17)
      abb102(17)=spak4l5*abb102(14)
      abb102(18)=abb102(8)*abb102(5)
      abb102(19)=abb102(9)*abb102(6)
      abb102(18)=abb102(18)+abb102(19)
      abb102(19)=spak1k4*spbk2k1
      abb102(20)=abb102(18)*abb102(19)
      abb102(21)=-spbk3k2*abb102(20)
      abb102(13)=abb102(21)+abb102(13)+abb102(17)
      abb102(13)=spak3e7*abb102(13)
      abb102(17)=spak1l5*abb102(7)
      abb102(21)=abb102(17)*spak4e7
      abb102(7)=spak1l6*abb102(7)
      abb102(22)=abb102(11)*spak4e7
      abb102(23)=abb102(22)*abb102(7)
      abb102(21)=abb102(21)+abb102(23)
      abb102(23)=-spak4l6*abb102(21)
      abb102(24)=abb102(7)*spak4e7
      abb102(25)=abb102(15)*spak4e7
      abb102(26)=abb102(25)*abb102(17)
      abb102(24)=abb102(24)+abb102(26)
      abb102(26)=-spak4l5*abb102(24)
      abb102(27)=abb102(7)*abb102(5)
      abb102(28)=abb102(17)*abb102(6)
      abb102(27)=abb102(27)+abb102(28)
      abb102(19)=abb102(27)*abb102(19)
      abb102(28)=spak4e7*abb102(19)
      abb102(23)=abb102(28)+abb102(23)+abb102(26)
      abb102(23)=spbk4k3*spbe7k2*abb102(23)
      abb102(26)=abb102(8)*spak4e7
      abb102(25)=abb102(25)*abb102(9)
      abb102(25)=abb102(26)+abb102(25)
      abb102(26)=abb102(25)*spak4l5
      abb102(28)=abb102(9)*spak4e7
      abb102(22)=abb102(22)*abb102(8)
      abb102(22)=abb102(28)+abb102(22)
      abb102(28)=abb102(22)*spak4l6
      abb102(29)=abb102(20)*spak4e7
      abb102(26)=-abb102(29)+abb102(26)+abb102(28)
      abb102(28)=spbk4k2*abb102(26)
      abb102(29)=abb102(8)*abb102(11)
      abb102(29)=abb102(29)+abb102(9)
      abb102(30)=abb102(29)*spak4l6
      abb102(9)=abb102(9)*abb102(15)
      abb102(8)=abb102(9)+abb102(8)
      abb102(9)=abb102(8)*spak4l5
      abb102(9)=-abb102(20)+abb102(30)+abb102(9)
      abb102(20)=abb102(9)*spae7k7
      abb102(30)=-spbk7k2*abb102(20)
      abb102(13)=abb102(30)+abb102(28)+abb102(23)+abb102(13)
      abb102(13)=4.0_ki*abb102(13)
      abb102(23)=abb102(17)*spbk3k2
      abb102(12)=abb102(12)*abb102(7)
      abb102(12)=abb102(23)+abb102(12)
      abb102(23)=-spak4l6*abb102(12)
      abb102(28)=abb102(7)*spbk3k2
      abb102(16)=abb102(16)*abb102(17)
      abb102(16)=abb102(28)+abb102(16)
      abb102(28)=-spak4l5*abb102(16)
      abb102(30)=spbk3k2*abb102(19)
      abb102(23)=abb102(30)+abb102(23)+abb102(28)
      abb102(23)=8.0_ki*abb102(23)
      abb102(11)=abb102(7)*abb102(11)
      abb102(11)=abb102(11)+abb102(17)
      abb102(28)=spbk3k2*spak4e7
      abb102(30)=abb102(28)*abb102(11)
      abb102(31)=8.0_ki*abb102(30)
      abb102(30)=4.0_ki*abb102(30)
      abb102(15)=abb102(17)*abb102(15)
      abb102(7)=abb102(15)+abb102(7)
      abb102(15)=abb102(28)*abb102(7)
      abb102(17)=8.0_ki*abb102(15)
      abb102(15)=4.0_ki*abb102(15)
      abb102(32)=8.0_ki*abb102(9)
      abb102(9)=4.0_ki*abb102(9)
      abb102(33)=abb102(28)*spbk2k1
      abb102(34)=abb102(33)*abb102(27)
      abb102(35)=8.0_ki*abb102(34)
      abb102(34)=4.0_ki*abb102(34)
      abb102(36)=4.0_ki*spak3k4
      abb102(37)=abb102(36)*spae7k7
      abb102(38)=-abb102(10)*abb102(37)
      abb102(28)=abb102(36)*abb102(28)
      abb102(39)=abb102(29)*abb102(28)
      abb102(40)=abb102(36)*spak3e7
      abb102(10)=abb102(10)*abb102(40)
      abb102(41)=8.0_ki*spak3k4
      abb102(42)=-abb102(12)*abb102(41)
      abb102(37)=-abb102(14)*abb102(37)
      abb102(28)=abb102(8)*abb102(28)
      abb102(14)=abb102(14)*abb102(40)
      abb102(43)=-abb102(16)*abb102(41)
      abb102(12)=spak3e7*abb102(12)
      abb102(44)=spbk4k2*abb102(21)
      abb102(12)=abb102(12)+abb102(44)
      abb102(12)=4.0_ki*abb102(12)
      abb102(16)=spak3e7*abb102(16)
      abb102(44)=spbk4k2*abb102(24)
      abb102(16)=abb102(16)+abb102(44)
      abb102(16)=4.0_ki*abb102(16)
      abb102(44)=spak4l6*abb102(11)
      abb102(45)=spak4l5*abb102(7)
      abb102(19)=-abb102(19)+abb102(44)+abb102(45)
      abb102(19)=spbe7k4*abb102(19)
      abb102(44)=spak3l6*abb102(29)
      abb102(45)=spak3l5*abb102(8)
      abb102(46)=spak1k3*spbk2k1
      abb102(47)=-abb102(18)*abb102(46)
      abb102(19)=abb102(47)+abb102(45)+abb102(19)+abb102(44)
      abb102(44)=spal6k7*abb102(11)
      abb102(45)=spal5k7*abb102(7)
      abb102(47)=abb102(27)*spbk2k1
      abb102(48)=spak1k7*abb102(47)
      abb102(44)=abb102(48)+abb102(45)+abb102(44)
      abb102(44)=spbk7e7*abb102(44)
      abb102(19)=2.0_ki*abb102(19)+abb102(44)
      abb102(19)=4.0_ki*abb102(19)
      abb102(44)=spbk3k2*spbk2k1
      abb102(45)=abb102(44)*abb102(27)
      abb102(48)=spak3e7*abb102(45)
      abb102(49)=spbk4k2*spak4e7*abb102(47)
      abb102(48)=abb102(48)+abb102(49)
      abb102(48)=4.0_ki*abb102(48)
      abb102(49)=abb102(11)*spal6e7
      abb102(50)=abb102(7)*spal5e7
      abb102(51)=spak1e7*spbk2k1
      abb102(52)=abb102(51)*abb102(27)
      abb102(49)=abb102(52)+abb102(49)+abb102(50)
      abb102(50)=-4.0_ki*spbk7e7*abb102(49)
      abb102(52)=4.0_ki*spbe7k2
      abb102(53)=abb102(52)*spae7k7
      abb102(54)=abb102(11)*abb102(53)
      abb102(21)=-abb102(21)*abb102(52)
      abb102(55)=abb102(52)*spak3e7
      abb102(56)=-abb102(11)*abb102(55)
      abb102(11)=-8.0_ki*abb102(11)
      abb102(53)=abb102(7)*abb102(53)
      abb102(24)=-abb102(24)*abb102(52)
      abb102(55)=-abb102(7)*abb102(55)
      abb102(7)=-8.0_ki*abb102(7)
      abb102(22)=spbk4k3*abb102(22)
      abb102(57)=spbk7k3*spae7k7
      abb102(58)=-abb102(29)*abb102(57)
      abb102(22)=abb102(22)+abb102(58)
      abb102(22)=spak3l6*abb102(22)
      abb102(25)=spbk4k3*abb102(25)
      abb102(57)=-abb102(8)*abb102(57)
      abb102(25)=abb102(25)+abb102(57)
      abb102(25)=spak3l5*abb102(25)
      abb102(57)=-spbk4k3*spak4e7*abb102(18)
      abb102(58)=abb102(18)*spae7k7
      abb102(59)=spbk7k3*abb102(58)
      abb102(57)=abb102(57)+abb102(59)
      abb102(46)=abb102(57)*abb102(46)
      abb102(22)=abb102(46)+abb102(22)+abb102(25)
      abb102(22)=4.0_ki*abb102(22)
      abb102(25)=abb102(29)*spal6e7
      abb102(8)=abb102(8)*spal5e7
      abb102(29)=abb102(51)*abb102(18)
      abb102(8)=abb102(29)+abb102(25)+abb102(8)
      abb102(25)=8.0_ki*abb102(8)
      abb102(8)=4.0_ki*abb102(8)
      abb102(29)=8.0_ki*spbe7k4*abb102(49)
      abb102(26)=-spbk4k3*abb102(26)
      abb102(20)=spbk7k3*abb102(20)
      abb102(20)=abb102(26)+abb102(20)
      abb102(20)=4.0_ki*abb102(20)
      abb102(26)=-abb102(36)*abb102(44)*abb102(58)
      abb102(46)=abb102(47)*abb102(52)
      abb102(47)=spae7k7*abb102(46)
      abb102(33)=abb102(18)*abb102(36)*abb102(33)
      abb102(36)=-spak4e7*abb102(46)
      abb102(18)=abb102(18)*abb102(44)*abb102(40)
      abb102(40)=-abb102(41)*abb102(45)
      abb102(41)=-spak3e7*abb102(46)
      abb102(44)=8.0_ki*spbk2k1
      abb102(27)=-abb102(27)*abb102(44)
      R2d102=0.0_ki
      rat2 = rat2 + R2d102
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='102' value='", &
          & R2d102, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd102h0
