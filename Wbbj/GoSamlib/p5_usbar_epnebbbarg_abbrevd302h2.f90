module     p5_usbar_epnebbbarg_abbrevd302h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(57), public :: abb302
   complex(ki), public :: R2d302
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
      abb302(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb302(2)=1.0_ki/(es34+es567-es12-es234)
      abb302(3)=NC**(-1)
      abb302(4)=sqrt(mB**2)
      abb302(5)=spbl5k2**(-1)
      abb302(6)=spbl6k3*spak3k4
      abb302(7)=spbl6k1*spak1k4
      abb302(6)=abb302(6)-abb302(7)
      abb302(7)=spal5k7*abb302(6)*spak2l6
      abb302(8)=spbk2k1*spak1k4
      abb302(9)=spbk3k2*spak3k4
      abb302(8)=abb302(8)+abb302(9)
      abb302(10)=spak2k7*abb302(8)
      abb302(11)=abb302(4)*mB*abb302(5)
      abb302(12)=abb302(11)*abb302(10)
      abb302(12)=abb302(7)+abb302(12)
      abb302(13)=c1+c3
      abb302(13)=abb302(13)*abb302(3)
      abb302(14)=TR*gW
      abb302(14)=abb302(14)**2*i_*CVSU*abb302(2)*abb302(1)
      abb302(15)=abb302(13)*abb302(14)
      abb302(16)=spbk3k1*abb302(15)
      abb302(17)=spak2e7*abb302(16)
      abb302(18)=c4*abb302(3)**2
      abb302(19)=abb302(14)*spak2e7
      abb302(20)=abb302(19)*abb302(18)
      abb302(21)=abb302(20)*spbk3k1
      abb302(17)=abb302(17)-abb302(21)
      abb302(21)=abb302(17)*spbk7e7
      abb302(12)=4.0_ki*abb302(12)*abb302(21)*spbl6k2
      abb302(14)=abb302(14)*abb302(18)
      abb302(18)=abb302(14)*spbk3k1
      abb302(16)=abb302(16)-abb302(18)
      abb302(18)=abb302(11)*abb302(16)
      abb302(10)=-abb302(18)*spbk7l6*abb302(10)
      abb302(22)=abb302(16)*spbk7l6
      abb302(7)=-abb302(22)*abb302(7)
      abb302(23)=abb302(16)*spak2l6
      abb302(24)=abb302(6)*abb302(23)
      abb302(25)=spak2l5*spbl6k2*abb302(24)
      abb302(7)=abb302(25)+abb302(7)+abb302(10)
      abb302(7)=8.0_ki*abb302(7)
      abb302(10)=abb302(17)*spak1k4
      abb302(25)=abb302(10)*spbk2k1
      abb302(26)=abb302(17)*spak3k4
      abb302(27)=abb302(26)*spbk3k2
      abb302(25)=abb302(25)+abb302(27)
      abb302(27)=abb302(25)*abb302(11)*spbe7l6
      abb302(28)=abb302(16)*spal5e7
      abb302(29)=-abb302(28)*abb302(6)
      abb302(30)=spak2l6*spbe7l6
      abb302(31)=-abb302(30)*abb302(29)
      abb302(27)=abb302(27)+abb302(31)
      abb302(32)=8.0_ki*abb302(27)
      abb302(33)=spae7k7*spbe7l6
      abb302(23)=abb302(33)*abb302(23)
      abb302(34)=spbk7l6*spak4l5
      abb302(35)=abb302(34)*abb302(23)
      abb302(36)=abb302(18)*abb302(33)
      abb302(37)=abb302(36)*spbk7k2
      abb302(38)=abb302(37)*spak2k4
      abb302(35)=abb302(35)+abb302(38)
      abb302(35)=8.0_ki*abb302(35)
      abb302(38)=spbl6k2*abb302(18)*spak2k4
      abb302(38)=16.0_ki*abb302(38)
      abb302(39)=abb302(17)*spbl6k2
      abb302(40)=spbe7k3*spak3k4
      abb302(41)=spbe7k1*spak1k4
      abb302(40)=abb302(40)-abb302(41)
      abb302(41)=abb302(40)*abb302(39)
      abb302(42)=-abb302(11)*abb302(41)
      abb302(43)=spbk7k3*spak3k4
      abb302(44)=spbk7k1*spak1k4
      abb302(43)=abb302(43)-abb302(44)
      abb302(36)=-abb302(36)*abb302(43)
      abb302(44)=abb302(21)*spal5k7
      abb302(45)=-abb302(6)*abb302(44)
      abb302(31)=abb302(45)-abb302(31)+abb302(36)+abb302(42)
      abb302(31)=8.0_ki*abb302(31)
      abb302(36)=abb302(18)*abb302(6)
      abb302(6)=-abb302(16)*abb302(6)
      abb302(42)=spak2l5*abb302(6)
      abb302(36)=abb302(42)+abb302(36)
      abb302(36)=16.0_ki*abb302(36)
      abb302(17)=abb302(17)*spbe7l6
      abb302(42)=spak4l5*abb302(17)
      abb302(42)=16.0_ki*abb302(42)
      abb302(27)=4.0_ki*abb302(27)
      abb302(45)=abb302(16)*spak4l5
      abb302(46)=spak2k7*spbk7e7
      abb302(47)=abb302(46)*abb302(45)
      abb302(47)=8.0_ki*abb302(47)
      abb302(48)=8.0_ki*abb302(29)
      abb302(22)=abb302(22)*spae7k7
      abb302(22)=abb302(22)-abb302(39)
      abb302(39)=-spak4l5*abb302(22)
      abb302(39)=8.0_ki*abb302(39)
      abb302(29)=-4.0_ki*abb302(29)
      abb302(49)=abb302(21)*spak4l5
      abb302(49)=8.0_ki*abb302(49)
      abb302(30)=-abb302(30)*abb302(25)
      abb302(41)=spak2l6*abb302(41)
      abb302(43)=abb302(23)*abb302(43)
      abb302(30)=abb302(43)+abb302(41)+abb302(30)
      abb302(30)=4.0_ki*abb302(30)
      abb302(24)=-8.0_ki*abb302(24)
      abb302(10)=abb302(10)*spbe7k1
      abb302(26)=abb302(26)*spbe7k3
      abb302(10)=abb302(10)-abb302(26)
      abb302(26)=8.0_ki*abb302(10)
      abb302(41)=abb302(16)*spak1k4
      abb302(43)=abb302(41)*spbk7k1
      abb302(50)=abb302(16)*spak3k4
      abb302(51)=abb302(50)*spbk7k3
      abb302(43)=abb302(43)-abb302(51)
      abb302(51)=abb302(43)*spae7k7
      abb302(25)=abb302(51)+abb302(25)
      abb302(25)=4.0_ki*abb302(25)
      abb302(14)=abb302(15)-abb302(14)
      abb302(15)=abb302(14)*spak4l5
      abb302(51)=abb302(15)*spbk4k1
      abb302(52)=spbk7l6*abb302(33)*spak2l6
      abb302(53)=-abb302(51)*abb302(52)
      abb302(23)=abb302(23)*spbk7l6
      abb302(54)=-spak3l5*abb302(23)
      abb302(11)=abb302(14)*abb302(11)*spak2k4
      abb302(55)=spbk4k1*abb302(11)
      abb302(33)=abb302(33)*spbk7k2
      abb302(56)=-abb302(33)*abb302(55)
      abb302(57)=-spak2k3*abb302(37)
      abb302(53)=abb302(57)+abb302(56)+abb302(53)+abb302(54)
      abb302(53)=4.0_ki*abb302(53)
      abb302(54)=spak2k3*abb302(18)
      abb302(54)=abb302(55)+abb302(54)
      abb302(55)=8.0_ki*spbl6k2
      abb302(54)=abb302(54)*abb302(55)
      abb302(13)=abb302(19)*abb302(13)
      abb302(13)=abb302(13)-abb302(20)
      abb302(13)=abb302(13)*spak4l5
      abb302(19)=abb302(13)*spbk4k1
      abb302(20)=spbe7l6*abb302(19)
      abb302(56)=spak3l5*abb302(17)
      abb302(20)=abb302(20)+abb302(56)
      abb302(20)=8.0_ki*abb302(20)
      abb302(56)=abb302(16)*spak3l5
      abb302(51)=abb302(56)+abb302(51)
      abb302(46)=4.0_ki*abb302(46)
      abb302(56)=abb302(51)*abb302(46)
      abb302(14)=spae7k7*abb302(34)*abb302(14)
      abb302(34)=abb302(13)*spbl6k2
      abb302(14)=abb302(14)-abb302(34)
      abb302(34)=-spbk4k1*abb302(14)
      abb302(57)=-spak3l5*abb302(22)
      abb302(34)=abb302(34)+abb302(57)
      abb302(34)=4.0_ki*abb302(34)
      abb302(19)=-spbk7e7*abb302(19)
      abb302(57)=-spak3l5*abb302(21)
      abb302(19)=abb302(19)+abb302(57)
      abb302(19)=4.0_ki*abb302(19)
      abb302(15)=abb302(15)*spbk4k3
      abb302(52)=abb302(15)*abb302(52)
      abb302(11)=spbk4k3*abb302(11)
      abb302(33)=abb302(33)*abb302(11)
      abb302(23)=spak1l5*abb302(23)
      abb302(37)=-spak1k2*abb302(37)
      abb302(23)=abb302(37)+abb302(23)+abb302(52)+abb302(33)
      abb302(23)=4.0_ki*abb302(23)
      abb302(18)=spak1k2*abb302(18)
      abb302(11)=-abb302(11)+abb302(18)
      abb302(11)=abb302(11)*abb302(55)
      abb302(13)=abb302(13)*spbk4k3
      abb302(18)=-spbe7l6*abb302(13)
      abb302(17)=-spak1l5*abb302(17)
      abb302(17)=abb302(18)+abb302(17)
      abb302(17)=8.0_ki*abb302(17)
      abb302(18)=abb302(16)*spak1l5
      abb302(15)=abb302(18)+abb302(15)
      abb302(18)=-abb302(15)*abb302(46)
      abb302(14)=spbk4k3*abb302(14)
      abb302(22)=spak1l5*abb302(22)
      abb302(14)=abb302(14)+abb302(22)
      abb302(14)=4.0_ki*abb302(14)
      abb302(13)=spbk7e7*abb302(13)
      abb302(21)=spak1l5*abb302(21)
      abb302(13)=abb302(13)+abb302(21)
      abb302(13)=4.0_ki*abb302(13)
      abb302(6)=8.0_ki*spal5k7*abb302(6)
      abb302(8)=-4.0_ki*abb302(8)*abb302(44)
      abb302(21)=-spal5k7*abb302(43)
      abb302(9)=-abb302(16)*abb302(9)
      abb302(16)=-spbk2k1*abb302(41)
      abb302(9)=abb302(9)+abb302(16)
      abb302(9)=spak2l5*abb302(9)
      abb302(9)=abb302(9)+abb302(21)
      abb302(9)=8.0_ki*abb302(9)
      abb302(16)=-abb302(28)*abb302(40)
      abb302(21)=8.0_ki*abb302(16)
      abb302(22)=16.0_ki*abb302(45)
      abb302(16)=4.0_ki*abb302(16)
      abb302(28)=8.0_ki*abb302(50)
      abb302(10)=-4.0_ki*abb302(10)
      abb302(33)=8.0_ki*abb302(41)
      abb302(37)=8.0_ki*abb302(51)
      abb302(15)=-8.0_ki*abb302(15)
      R2d302=0.0_ki
      rat2 = rat2 + R2d302
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='302' value='", &
          & R2d302, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd302h2
