module     p5_usbar_epnebbbarg_abbrevd315h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(66), public :: abb315
   complex(ki), public :: R2d315
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb315(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb315(2)=sqrt(mB**2)
      abb315(3)=NC**(-1)
      abb315(4)=es234**(-1)
      abb315(5)=spbl6k2**(-1)
      abb315(6)=spbl5k2**(-1)
      abb315(7)=spak2l6**(-1)
      abb315(8)=c4*spbk2k1
      abb315(9)=spbk2k1*abb315(3)
      abb315(10)=abb315(9)*c3
      abb315(9)=abb315(9)*c1
      abb315(11)=c2*abb315(3)**2
      abb315(12)=abb315(11)*spbk2k1
      abb315(8)=-abb315(8)+abb315(10)+abb315(9)-abb315(12)
      abb315(9)=abb315(2)**2
      abb315(10)=TR*gW
      abb315(10)=abb315(10)**2*i_*CVSU*abb315(4)*abb315(1)
      abb315(12)=abb315(10)*mB*spak2k4
      abb315(13)=abb315(12)*abb315(5)
      abb315(14)=abb315(13)*spbk4k3
      abb315(15)=abb315(9)*abb315(14)
      abb315(16)=-abb315(8)*abb315(15)
      abb315(17)=-spak4l6*abb315(16)
      abb315(13)=abb315(13)*spbk3k2
      abb315(18)=abb315(9)*abb315(13)
      abb315(19)=-abb315(8)*abb315(18)
      abb315(20)=-spak2l6*abb315(19)
      abb315(17)=abb315(20)+abb315(17)
      abb315(17)=spbe7l6*abb315(17)
      abb315(20)=abb315(9)*spbe7k1
      abb315(21)=abb315(20)*abb315(14)
      abb315(22)=-abb315(8)*abb315(21)
      abb315(23)=-spak1k4*abb315(22)
      abb315(24)=c3*abb315(3)
      abb315(25)=abb315(11)-abb315(24)
      abb315(26)=c1*abb315(3)
      abb315(27)=abb315(25)-abb315(26)+c4
      abb315(28)=abb315(20)*abb315(13)
      abb315(29)=-abb315(27)*abb315(28)
      abb315(30)=es12*abb315(29)
      abb315(17)=abb315(30)+abb315(23)+abb315(17)
      abb315(17)=spal5e7*abb315(17)
      abb315(16)=spak4e7*abb315(16)
      abb315(19)=spak2e7*abb315(19)
      abb315(16)=abb315(16)+abb315(19)
      abb315(19)=spal5l6*spbe7l6
      abb315(16)=abb315(16)*abb315(19)
      abb315(22)=spak4e7*abb315(22)
      abb315(23)=-abb315(8)*spak2e7
      abb315(28)=abb315(28)*abb315(23)
      abb315(22)=abb315(22)+abb315(28)
      abb315(22)=spak1l5*abb315(22)
      abb315(28)=mB**3
      abb315(30)=abb315(10)*spbk4k3
      abb315(31)=abb315(5)*spak2k4
      abb315(32)=abb315(28)*abb315(30)*abb315(31)**2*spal5e7*spbe7k2
      abb315(28)=spak2k4*abb315(28)*abb315(5)**2
      abb315(33)=abb315(30)*abb315(28)
      abb315(34)=spak4e7*spbe7k2
      abb315(35)=abb315(34)*spak2l5
      abb315(36)=-abb315(35)*abb315(33)
      abb315(36)=abb315(32)+abb315(36)
      abb315(36)=-abb315(7)*abb315(8)*abb315(9)*abb315(36)
      abb315(37)=c1+c3
      abb315(38)=abb315(10)*abb315(3)
      abb315(39)=abb315(38)*spbk3k2
      abb315(40)=abb315(37)*abb315(39)
      abb315(41)=spbe7k1*abb315(40)
      abb315(42)=abb315(11)*spbe7k1
      abb315(43)=c4*spbe7k1
      abb315(42)=abb315(42)+abb315(43)
      abb315(44)=abb315(10)*spbk3k2
      abb315(45)=abb315(42)*abb315(44)
      abb315(41)=abb315(41)-abb315(45)
      abb315(45)=mB**2
      abb315(31)=abb315(45)*abb315(31)*abb315(2)
      abb315(46)=-abb315(31)*abb315(41)*spak2l5
      abb315(24)=abb315(26)+abb315(24)
      abb315(24)=spbe7k1*abb315(24)
      abb315(24)=abb315(24)-abb315(42)
      abb315(24)=abb315(24)*spak4l5
      abb315(47)=abb315(31)*abb315(30)
      abb315(48)=-abb315(47)*abb315(24)
      abb315(46)=abb315(46)+abb315(48)
      abb315(48)=spbk7k2*spae7k7
      abb315(46)=abb315(46)*abb315(48)
      abb315(49)=abb315(2)*spak2k4
      abb315(50)=abb315(49)*abb315(44)
      abb315(42)=-abb315(50)*abb315(42)
      abb315(39)=abb315(39)*abb315(49)
      abb315(51)=abb315(39)*abb315(37)
      abb315(52)=spbe7k1*abb315(51)
      abb315(42)=abb315(42)+abb315(52)
      abb315(42)=spak2l5*abb315(42)
      abb315(52)=abb315(49)*abb315(30)
      abb315(53)=abb315(52)*abb315(24)
      abb315(42)=abb315(42)+abb315(53)
      abb315(53)=spbk7k1*spae7k7
      abb315(42)=abb315(42)*abb315(53)
      abb315(25)=-abb315(25)+abb315(26)
      abb315(26)=abb315(6)*abb315(12)*spbk2k1
      abb315(54)=abb315(26)*spbk3k2
      abb315(25)=abb315(54)*abb315(25)
      abb315(55)=abb315(54)*c4
      abb315(55)=-abb315(55)+abb315(25)
      abb315(56)=abb315(55)*spak2e7
      abb315(26)=abb315(27)*abb315(26)*spbk4k3
      abb315(57)=abb315(26)*spak4e7
      abb315(56)=abb315(56)-abb315(57)
      abb315(20)=-abb315(20)*abb315(56)
      abb315(20)=abb315(42)+abb315(20)
      abb315(20)=spak1l6*abb315(20)
      abb315(42)=abb315(49)*abb315(45)
      abb315(30)=-abb315(8)*abb315(6)*abb315(30)*abb315(42)
      abb315(45)=spak4k7*spbk7e7
      abb315(49)=abb315(30)*abb315(45)
      abb315(58)=abb315(6)*spbk3k2
      abb315(10)=abb315(10)*spbk2k1
      abb315(59)=-abb315(27)*abb315(58)*abb315(10)
      abb315(42)=abb315(59)*abb315(42)
      abb315(60)=spak2k7*spbk7e7
      abb315(61)=-abb315(42)*abb315(60)
      abb315(49)=abb315(49)+abb315(61)
      abb315(49)=spal6e7*abb315(49)
      abb315(58)=abb315(37)*abb315(58)
      abb315(38)=-abb315(38)*abb315(58)
      abb315(11)=abb315(11)+c4
      abb315(44)=abb315(11)*abb315(44)
      abb315(61)=abb315(44)*abb315(6)
      abb315(38)=abb315(61)+abb315(38)
      abb315(61)=spbk2k1**2
      abb315(38)=abb315(60)*abb315(61)*abb315(31)*abb315(38)
      abb315(62)=abb315(47)*abb315(6)
      abb315(61)=-abb315(27)*abb315(61)*abb315(62)
      abb315(63)=-abb315(61)*abb315(45)
      abb315(38)=abb315(63)+abb315(38)
      abb315(38)=spak1e7*abb315(38)
      abb315(16)=abb315(22)+abb315(16)+abb315(38)+abb315(49)+abb315(20)+abb315(&
      &36)+abb315(46)+abb315(17)
      abb315(16)=4.0_ki*abb315(16)
      abb315(17)=spak4l5*abb315(47)*abb315(8)
      abb315(20)=spak4l6*abb315(30)
      abb315(22)=-abb315(27)*spak2l5
      abb315(10)=abb315(22)*abb315(10)*spbk3k2
      abb315(30)=abb315(31)*abb315(10)
      abb315(36)=-spak2l6*abb315(42)
      abb315(38)=spak1k4*abb315(61)
      abb315(31)=abb315(31)*abb315(59)
      abb315(42)=es12*abb315(31)
      abb315(17)=abb315(42)+abb315(38)+abb315(36)+abb315(20)+abb315(30)+abb315(&
      &17)
      abb315(17)=8.0_ki*abb315(17)
      abb315(20)=abb315(28)*spak2l5
      abb315(30)=-abb315(41)*abb315(20)
      abb315(24)=-abb315(33)*abb315(24)
      abb315(24)=abb315(30)+abb315(24)
      abb315(30)=abb315(48)*abb315(7)
      abb315(24)=8.0_ki*abb315(24)*abb315(30)
      abb315(36)=-abb315(8)*abb315(33)
      abb315(38)=-spak4l5*abb315(36)
      abb315(10)=abb315(28)*abb315(10)
      abb315(10)=abb315(10)+abb315(38)
      abb315(10)=abb315(7)*abb315(10)
      abb315(10)=abb315(10)-abb315(31)
      abb315(10)=16.0_ki*abb315(10)
      abb315(28)=-abb315(27)*spak4l5
      abb315(38)=abb315(14)*abb315(28)
      abb315(41)=abb315(13)*abb315(22)
      abb315(38)=abb315(38)+abb315(41)
      abb315(41)=abb315(38)*spbe7k2
      abb315(42)=-abb315(53)*abb315(41)
      abb315(46)=abb315(55)*abb315(60)
      abb315(47)=abb315(26)*abb315(45)
      abb315(46)=abb315(46)-abb315(47)
      abb315(47)=-spal6e7*abb315(46)
      abb315(42)=abb315(42)+abb315(47)
      abb315(42)=8.0_ki*abb315(42)
      abb315(47)=-abb315(13)*abb315(8)
      abb315(48)=abb315(47)*spak2l5
      abb315(49)=-abb315(14)*abb315(8)
      abb315(59)=abb315(49)*spak4l5
      abb315(48)=abb315(48)+abb315(59)
      abb315(59)=spak4l6*abb315(26)
      abb315(55)=-spak2l6*abb315(55)
      abb315(55)=abb315(55)+abb315(59)+abb315(48)
      abb315(55)=16.0_ki*abb315(55)
      abb315(59)=spak2l6*spbe7l6
      abb315(59)=abb315(59)-abb315(60)
      abb315(59)=abb315(47)*abb315(59)
      abb315(61)=spak4l6*spbe7l6
      abb315(61)=abb315(61)-abb315(45)
      abb315(61)=abb315(49)*abb315(61)
      abb315(14)=abb315(14)*spbe7k1
      abb315(63)=-abb315(8)*abb315(14)
      abb315(64)=spak1k4*abb315(63)
      abb315(13)=abb315(13)*spbe7k1
      abb315(65)=-abb315(27)*abb315(13)
      abb315(66)=-es12*abb315(65)
      abb315(59)=abb315(66)+abb315(64)+abb315(61)+abb315(59)
      abb315(59)=spal5e7*abb315(59)
      abb315(47)=abb315(47)*spak2e7
      abb315(49)=abb315(49)*spak4e7
      abb315(47)=abb315(47)+abb315(49)
      abb315(49)=spal5k7*spbk7e7
      abb315(19)=-abb315(19)+abb315(49)
      abb315(19)=abb315(47)*abb315(19)
      abb315(32)=abb315(8)*abb315(32)
      abb315(35)=abb315(36)*abb315(35)
      abb315(32)=abb315(32)+abb315(35)
      abb315(32)=abb315(7)*abb315(32)
      abb315(35)=-spak4e7*abb315(63)
      abb315(13)=-abb315(13)*abb315(23)
      abb315(13)=abb315(35)+abb315(13)
      abb315(13)=spak1l5*abb315(13)
      abb315(23)=spbe7k1*abb315(25)
      abb315(25)=-abb315(54)*abb315(43)
      abb315(23)=abb315(25)+abb315(23)
      abb315(23)=spak2e7*abb315(23)
      abb315(25)=-spbe7k1*abb315(57)
      abb315(23)=abb315(25)+abb315(23)
      abb315(23)=spak1l6*abb315(23)
      abb315(13)=abb315(13)+abb315(23)+abb315(32)+abb315(59)+abb315(19)
      abb315(13)=4.0_ki*abb315(13)
      abb315(19)=-16.0_ki*abb315(48)
      abb315(23)=abb315(50)*abb315(11)
      abb315(23)=abb315(23)-abb315(51)
      abb315(25)=spak2l5*abb315(23)
      abb315(32)=-abb315(27)*abb315(52)
      abb315(35)=-spak4l5*abb315(32)
      abb315(25)=abb315(25)+abb315(35)
      abb315(25)=abb315(25)*abb315(53)
      abb315(35)=abb315(9)*abb315(56)
      abb315(25)=abb315(25)+abb315(35)
      abb315(25)=4.0_ki*abb315(25)
      abb315(35)=-4.0_ki*abb315(56)
      abb315(8)=-abb315(8)*abb315(62)
      abb315(36)=-abb315(8)*abb315(45)
      abb315(29)=spak2l5*abb315(29)
      abb315(21)=abb315(21)*abb315(28)
      abb315(31)=abb315(31)*abb315(60)
      abb315(21)=abb315(31)+abb315(36)+abb315(29)+abb315(21)
      abb315(21)=4.0_ki*abb315(21)
      abb315(14)=abb315(14)*abb315(28)
      abb315(29)=abb315(65)*spak2l5
      abb315(14)=abb315(14)+abb315(29)
      abb315(14)=4.0_ki*abb315(14)
      abb315(18)=-abb315(18)*abb315(22)
      abb315(15)=-abb315(15)*abb315(28)
      abb315(15)=abb315(18)+abb315(15)
      abb315(18)=4.0_ki*spbe7k2
      abb315(15)=abb315(15)*abb315(18)
      abb315(22)=abb315(38)*abb315(18)
      abb315(29)=spbk7l6*spae7k7
      abb315(31)=-abb315(14)*abb315(29)
      abb315(36)=8.0_ki*spbl6k1*abb315(38)
      abb315(38)=abb315(12)*spbk3k2
      abb315(43)=-abb315(11)*abb315(38)*abb315(6)
      abb315(47)=abb315(12)*abb315(3)
      abb315(48)=abb315(47)*abb315(58)
      abb315(43)=abb315(48)+abb315(43)
      abb315(48)=-abb315(43)*abb315(60)
      abb315(12)=abb315(12)*spbk4k3
      abb315(27)=-abb315(27)*abb315(12)*abb315(6)
      abb315(51)=-abb315(27)*abb315(45)
      abb315(48)=abb315(51)+abb315(48)
      abb315(48)=4.0_ki*abb315(48)
      abb315(45)=-abb315(32)*abb315(45)
      abb315(51)=abb315(23)*abb315(60)
      abb315(45)=abb315(51)+abb315(45)
      abb315(45)=spal5e7*abb315(45)
      abb315(32)=spak4e7*abb315(32)
      abb315(23)=-spak2e7*abb315(23)
      abb315(23)=abb315(32)+abb315(23)
      abb315(23)=abb315(23)*abb315(49)
      abb315(32)=spak1e7*abb315(46)
      abb315(29)=abb315(41)*abb315(29)
      abb315(34)=abb315(27)*abb315(34)
      abb315(9)=abb315(9)*abb315(34)
      abb315(9)=abb315(23)+abb315(29)+abb315(32)+abb315(9)+abb315(45)
      abb315(9)=4.0_ki*abb315(9)
      abb315(23)=abb315(50)+abb315(38)
      abb315(23)=abb315(23)*abb315(11)
      abb315(29)=abb315(47)*spbk3k2
      abb315(29)=abb315(29)+abb315(39)
      abb315(29)=-abb315(29)*abb315(37)
      abb315(23)=abb315(29)+abb315(23)
      abb315(23)=spak2l5*abb315(23)
      abb315(29)=-abb315(37)*abb315(3)
      abb315(11)=abb315(29)+abb315(11)
      abb315(12)=abb315(52)+abb315(12)
      abb315(11)=spak4l5*abb315(12)*abb315(11)
      abb315(12)=-es12*abb315(43)
      abb315(26)=spak1k4*abb315(26)
      abb315(11)=abb315(12)+abb315(26)+abb315(23)+abb315(11)
      abb315(11)=8.0_ki*abb315(11)
      abb315(12)=-4.0_ki*abb315(34)
      abb315(8)=8.0_ki*abb315(8)
      abb315(23)=8.0_ki*abb315(27)
      abb315(26)=abb315(40)-abb315(44)
      abb315(20)=abb315(26)*abb315(20)
      abb315(26)=abb315(33)*abb315(28)
      abb315(20)=abb315(20)+abb315(26)
      abb315(18)=abb315(20)*abb315(18)*abb315(30)
      abb315(20)=8.0_ki*abb315(43)
      abb315(26)=abb315(53)*abb315(14)
      R2d315=0.0_ki
      rat2 = rat2 + R2d315
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='315' value='", &
          & R2d315, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd315h0