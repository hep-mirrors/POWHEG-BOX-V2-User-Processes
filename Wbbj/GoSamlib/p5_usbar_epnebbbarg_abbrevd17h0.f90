module     p5_usbar_epnebbbarg_abbrevd17h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(59), public :: abb17
   complex(ki), public :: R2d17
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
      abb17(1)=1.0_ki/(-es71+es712-es12)
      abb17(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb17(3)=es56**(-1)
      abb17(4)=spbl5k2**(-1)
      abb17(5)=spbl6k2**(-1)
      abb17(6)=spak2l5**(-1)
      abb17(7)=spak2l6**(-1)
      abb17(8)=abb17(5)*spal5k7
      abb17(9)=abb17(4)*spal6k7
      abb17(10)=abb17(8)+abb17(9)
      abb17(11)=c3*NC
      abb17(11)=abb17(11)-c4
      abb17(12)=-spbk3k2*abb17(11)
      abb17(13)=spak3k4*spbk3k1
      abb17(14)=-abb17(13)*abb17(12)
      abb17(15)=i_*spbk7e7*spak2e7
      abb17(16)=gW*TR
      abb17(16)=abb17(15)*abb17(16)**2
      abb17(17)=CVSU*abb17(3)*abb17(1)*abb17(2)
      abb17(18)=mB*abb17(17)
      abb17(19)=abb17(18)*abb17(16)
      abb17(20)=8.0_ki*abb17(19)
      abb17(21)=abb17(20)*abb17(14)*abb17(10)
      abb17(22)=abb17(5)**2
      abb17(23)=spal5k7*abb17(7)
      abb17(24)=abb17(22)*abb17(23)
      abb17(25)=-abb17(14)*abb17(24)
      abb17(26)=spal5k7*abb17(6)
      abb17(27)=spal6k7*abb17(7)
      abb17(26)=abb17(26)+abb17(27)
      abb17(27)=abb17(26)*abb17(5)
      abb17(28)=spal6k7*abb17(6)
      abb17(29)=abb17(28)*abb17(4)
      abb17(27)=abb17(29)+abb17(27)
      abb17(29)=-abb17(4)*abb17(14)*abb17(27)
      abb17(25)=abb17(25)+abb17(29)
      abb17(16)=mB**3*abb17(16)*abb17(17)
      abb17(17)=8.0_ki*abb17(16)
      abb17(25)=abb17(25)*abb17(17)
      abb17(29)=spak4k7*spbk4k3
      abb17(30)=spal5k7*spbl5k3
      abb17(31)=spal6k7*spbl6k3
      abb17(29)=-abb17(31)+abb17(29)-abb17(30)
      abb17(29)=abb17(29)*spbk2k1
      abb17(32)=spak4l5*abb17(29)
      abb17(33)=spak4l5*spak1k7
      abb17(34)=2.0_ki*spak4k7
      abb17(35)=abb17(34)*spak1l5
      abb17(33)=abb17(33)-abb17(35)
      abb17(35)=spbk3k1*spbk2k1
      abb17(33)=abb17(33)*abb17(35)
      abb17(36)=spak4l5*spbl5k1
      abb17(37)=spak4l6*spbl6k1
      abb17(36)=abb17(36)+abb17(37)
      abb17(36)=abb17(13)+2.0_ki*abb17(36)
      abb17(36)=abb17(36)*spbk3k2
      abb17(37)=spal5k7*abb17(36)
      abb17(32)=abb17(32)+abb17(33)-abb17(37)
      abb17(33)=abb17(11)*abb17(5)
      abb17(32)=abb17(32)*abb17(33)
      abb17(29)=spak4l6*abb17(29)
      abb17(37)=spak4l6*spak1k7
      abb17(34)=abb17(34)*spak1l6
      abb17(34)=abb17(37)-abb17(34)
      abb17(34)=abb17(34)*abb17(35)
      abb17(35)=spal6k7*abb17(36)
      abb17(29)=abb17(29)+abb17(34)-abb17(35)
      abb17(34)=abb17(11)*abb17(4)
      abb17(29)=abb17(29)*abb17(34)
      abb17(29)=abb17(32)+abb17(29)
      abb17(15)=abb17(15)*TR**2
      abb17(29)=abb17(29)*abb17(15)
      abb17(32)=2.0_ki*spak2k4
      abb17(23)=abb17(32)*abb17(23)
      abb17(35)=abb17(7)*spak2k7
      abb17(36)=abb17(35)*spak4l5
      abb17(23)=abb17(36)+abb17(23)
      abb17(36)=-spbk2k1*abb17(12)
      abb17(23)=abb17(22)*abb17(23)*abb17(36)
      abb17(26)=abb17(26)*abb17(32)
      abb17(37)=abb17(6)*spak2k7
      abb17(38)=abb17(37)*spak4l5
      abb17(39)=abb17(35)*spak4l6
      abb17(26)=abb17(26)+abb17(38)+abb17(39)
      abb17(26)=abb17(5)*abb17(26)
      abb17(28)=abb17(32)*abb17(28)
      abb17(32)=abb17(37)*spak4l6
      abb17(28)=abb17(32)+abb17(28)
      abb17(28)=abb17(4)*abb17(28)
      abb17(26)=abb17(26)+abb17(28)
      abb17(26)=abb17(4)*abb17(36)*abb17(26)
      abb17(23)=abb17(23)+abb17(26)
      abb17(26)=abb17(15)*mB**2
      abb17(23)=abb17(23)*abb17(26)
      abb17(23)=abb17(29)+abb17(23)
      abb17(18)=2.0_ki*abb17(18)
      abb17(18)=abb17(18)*gW**2
      abb17(23)=abb17(23)*abb17(18)
      abb17(28)=-spbk2k1*abb17(11)
      abb17(29)=abb17(4)*abb17(28)*spak1l6
      abb17(32)=abb17(5)*abb17(28)*spak1l5
      abb17(29)=abb17(29)+abb17(32)
      abb17(32)=4.0_ki*abb17(19)
      abb17(36)=abb17(32)*abb17(13)*abb17(29)
      abb17(13)=-abb17(13)*abb17(11)
      abb17(38)=spbk3k1*spak1k7
      abb17(39)=abb17(38)-abb17(30)
      abb17(40)=abb17(39)-abb17(31)
      abb17(40)=-abb17(40)*abb17(13)
      abb17(41)=abb17(15)*abb17(4)
      abb17(42)=abb17(40)*abb17(41)
      abb17(43)=abb17(14)*abb17(35)
      abb17(44)=abb17(5)*abb17(43)
      abb17(14)=abb17(14)*abb17(37)
      abb17(45)=abb17(4)*abb17(14)
      abb17(44)=abb17(44)+abb17(45)
      abb17(45)=abb17(26)*abb17(4)
      abb17(44)=abb17(44)*abb17(45)
      abb17(42)=abb17(42)+abb17(44)
      abb17(42)=abb17(42)*abb17(18)
      abb17(44)=abb17(32)*abb17(4)
      abb17(46)=-abb17(11)*spbk3k1*spak4k7
      abb17(47)=abb17(46)*abb17(44)
      abb17(48)=abb17(19)*abb17(4)
      abb17(49)=2.0_ki*abb17(46)
      abb17(50)=-abb17(48)*abb17(49)
      abb17(51)=-abb17(13)*abb17(44)
      abb17(52)=-spak3k4*abb17(12)
      abb17(8)=-spbl6k3*abb17(52)*abb17(8)
      abb17(39)=abb17(39)+abb17(31)
      abb17(39)=-abb17(39)*abb17(52)*abb17(4)
      abb17(8)=2.0_ki*abb17(8)+abb17(39)
      abb17(8)=abb17(8)*abb17(15)
      abb17(39)=-abb17(11)*spak3k4*spbk3k2**2
      abb17(53)=abb17(39)*abb17(35)
      abb17(54)=abb17(5)*abb17(53)
      abb17(55)=abb17(39)*abb17(37)
      abb17(56)=abb17(4)*abb17(55)
      abb17(54)=abb17(54)+abb17(56)
      abb17(54)=abb17(54)*abb17(45)
      abb17(8)=abb17(8)+abb17(54)
      abb17(8)=abb17(8)*abb17(18)
      abb17(54)=-spak4k7*abb17(12)
      abb17(56)=abb17(54)*abb17(44)
      abb17(57)=2.0_ki*abb17(54)
      abb17(48)=abb17(48)*abb17(57)
      abb17(58)=abb17(15)*abb17(5)
      abb17(40)=abb17(40)*abb17(58)
      abb17(43)=abb17(43)*abb17(22)
      abb17(59)=abb17(4)*abb17(5)
      abb17(14)=abb17(14)*abb17(59)
      abb17(14)=abb17(43)+abb17(14)
      abb17(14)=abb17(14)*abb17(26)
      abb17(14)=abb17(40)+abb17(14)
      abb17(14)=abb17(14)*abb17(18)
      abb17(40)=abb17(32)*abb17(5)
      abb17(43)=abb17(46)*abb17(40)
      abb17(46)=abb17(19)*abb17(5)
      abb17(49)=-abb17(46)*abb17(49)
      abb17(13)=-abb17(13)*abb17(40)
      abb17(30)=-abb17(31)+abb17(38)+abb17(30)
      abb17(30)=-abb17(30)*abb17(52)*abb17(5)
      abb17(9)=-spbl5k3*abb17(52)*abb17(9)
      abb17(9)=abb17(30)+2.0_ki*abb17(9)
      abb17(9)=abb17(9)*abb17(15)
      abb17(15)=abb17(53)*abb17(22)
      abb17(30)=abb17(55)*abb17(59)
      abb17(15)=abb17(15)+abb17(30)
      abb17(15)=abb17(15)*abb17(26)
      abb17(9)=abb17(9)+abb17(15)
      abb17(9)=abb17(9)*abb17(18)
      abb17(15)=abb17(54)*abb17(40)
      abb17(30)=abb17(46)*abb17(57)
      abb17(31)=-abb17(28)*abb17(10)
      abb17(20)=abb17(31)*abb17(20)
      abb17(38)=abb17(28)*abb17(24)
      abb17(46)=abb17(4)*abb17(28)*abb17(27)
      abb17(38)=abb17(38)+abb17(46)
      abb17(17)=abb17(38)*abb17(17)
      abb17(19)=2.0_ki*abb17(19)
      abb17(31)=-abb17(31)*abb17(19)
      abb17(29)=abb17(29)*abb17(32)
      abb17(32)=spak4k7*spbk4k1
      abb17(38)=spal5k7*spbl5k1
      abb17(46)=spal6k7*spbl6k1
      abb17(52)=spbk3k1*spak3k7
      abb17(32)=-abb17(32)+abb17(38)+abb17(46)-abb17(52)
      abb17(32)=-abb17(32)*abb17(11)
      abb17(38)=-abb17(32)*abb17(41)
      abb17(35)=abb17(28)*abb17(35)
      abb17(41)=-abb17(5)*abb17(35)
      abb17(28)=abb17(28)*abb17(37)
      abb17(37)=-abb17(4)*abb17(28)
      abb17(37)=abb17(41)+abb17(37)
      abb17(37)=abb17(37)*abb17(45)
      abb17(37)=abb17(38)+abb17(37)
      abb17(37)=abb17(37)*abb17(18)
      abb17(38)=abb17(11)*abb17(44)
      abb17(41)=spak4k7*spbk4k2
      abb17(44)=spbk2k1*spak1k7
      abb17(45)=spbk3k2*spak3k7
      abb17(41)=abb17(45)+abb17(41)+abb17(44)
      abb17(44)=spal6k7*spbl6k2
      abb17(44)=-abb17(41)+3.0_ki*abb17(44)
      abb17(34)=-abb17(44)*abb17(34)
      abb17(44)=-spal5k7*abb17(11)
      abb17(34)=3.0_ki*abb17(44)+abb17(34)
      abb17(34)=abb17(34)*abb17(19)
      abb17(32)=-abb17(32)*abb17(58)
      abb17(22)=-abb17(35)*abb17(22)
      abb17(28)=-abb17(28)*abb17(59)
      abb17(22)=abb17(22)+abb17(28)
      abb17(22)=abb17(22)*abb17(26)
      abb17(22)=abb17(32)+abb17(22)
      abb17(18)=abb17(22)*abb17(18)
      abb17(22)=abb17(11)*abb17(40)
      abb17(26)=spal5k7*spbl5k2
      abb17(26)=-abb17(41)+3.0_ki*abb17(26)
      abb17(26)=-abb17(26)*abb17(33)
      abb17(11)=-spal6k7*abb17(11)
      abb17(11)=3.0_ki*abb17(11)+abb17(26)
      abb17(11)=abb17(11)*abb17(19)
      abb17(10)=abb17(19)*abb17(12)*abb17(10)
      abb17(12)=-abb17(39)*abb17(24)
      abb17(19)=-abb17(4)*abb17(39)*abb17(27)
      abb17(12)=abb17(12)+abb17(19)
      abb17(12)=4.0_ki*abb17(12)*abb17(16)
      R2d17=0.0_ki
      rat2 = rat2 + R2d17
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='17' value='", &
          & R2d17, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd17h0