module     p0_dbaru_epnebbbarg_abbrevd69h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(59), public :: abb69
   complex(ki), public :: R2d69
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
      abb69(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb69(2)=sqrt2**(-1)
      abb69(3)=es56**(-1)
      abb69(4)=spbl5k2**(-1)
      abb69(5)=spbl6k2**(-1)
      abb69(6)=spbk7k2**(-1)
      abb69(7)=spal5k7*spak1l6
      abb69(8)=spal6k7*spak1l5
      abb69(7)=abb69(7)+abb69(8)
      abb69(8)=c1*NC
      abb69(8)=-abb69(8)+c4-c2
      abb69(7)=abb69(8)*abb69(7)
      abb69(9)=spak1l6*spbl6k2
      abb69(10)=abb69(9)*spal6k7
      abb69(11)=-abb69(4)*abb69(10)*abb69(8)
      abb69(12)=spak1l5*spbl5k2
      abb69(13)=abb69(12)*spal5k7
      abb69(14)=-abb69(5)*abb69(13)*abb69(8)
      abb69(11)=abb69(7)-abb69(11)-abb69(14)
      abb69(14)=abb69(6)*spak3k4
      abb69(15)=es12+es71-es712
      abb69(16)=abb69(14)*abb69(15)*abb69(11)
      abb69(17)=-spak1k7*abb69(8)
      abb69(18)=abb69(4)*spal6k7*abb69(17)
      abb69(19)=abb69(5)*spal5k7*abb69(17)
      abb69(18)=abb69(18)+abb69(19)
      abb69(19)=-spak3k4*abb69(15)*abb69(18)
      abb69(16)=abb69(19)+abb69(16)
      abb69(19)=spbk3k2**2
      abb69(20)=gW*TR
      abb69(20)=abb69(3)*abb69(1)*abb69(2)*CVDU*mB*i_*abb69(20)**2
      abb69(21)=8.0_ki*abb69(20)
      abb69(22)=abb69(19)*abb69(21)
      abb69(16)=abb69(16)*abb69(22)
      abb69(23)=-abb69(11)*abb69(14)
      abb69(24)=abb69(18)*spak3k4
      abb69(23)=abb69(23)+abb69(24)
      abb69(19)=16.0_ki*abb69(19)
      abb69(19)=abb69(19)*abb69(20)
      abb69(24)=abb69(23)*abb69(19)
      abb69(25)=spak1k7*spbk7k2
      abb69(26)=abb69(25)*spal6k7
      abb69(10)=abb69(26)+abb69(10)
      abb69(26)=-abb69(8)*abb69(4)
      abb69(27)=abb69(26)*abb69(10)
      abb69(25)=abb69(25)*spal5k7
      abb69(13)=abb69(25)+abb69(13)
      abb69(25)=-abb69(8)*abb69(5)
      abb69(28)=abb69(25)*abb69(13)
      abb69(27)=-abb69(7)+abb69(27)+abb69(28)
      abb69(28)=spak4k7*abb69(27)
      abb69(23)=abb69(23)*spbk3k2
      abb69(23)=abb69(23)+2.0_ki*abb69(28)
      abb69(20)=abb69(20)*spbk3k2
      abb69(28)=8.0_ki*abb69(20)
      abb69(29)=abb69(23)*abb69(28)
      abb69(30)=4.0_ki*abb69(20)
      abb69(23)=-abb69(23)*abb69(30)
      abb69(27)=spak2k4*abb69(27)
      abb69(31)=-abb69(14)*spbk7k3*abb69(11)
      abb69(32)=spak1l5*spak2l6
      abb69(33)=spak1l6*spak2l5
      abb69(32)=abb69(32)+abb69(33)
      abb69(32)=-abb69(32)*abb69(8)
      abb69(33)=abb69(25)*abb69(12)
      abb69(34)=spak2l5*abb69(33)
      abb69(35)=abb69(26)*abb69(9)
      abb69(36)=spak2l6*abb69(35)
      abb69(32)=abb69(36)+abb69(34)+abb69(32)
      abb69(32)=abb69(32)*abb69(14)
      abb69(34)=abb69(5)*spal5k7
      abb69(36)=abb69(4)*spal6k7
      abb69(34)=abb69(34)+abb69(36)
      abb69(36)=-spak1k2*abb69(8)
      abb69(37)=abb69(36)*abb69(34)
      abb69(38)=-spak3k4*abb69(37)
      abb69(32)=abb69(38)+abb69(32)
      abb69(32)=spbk3k2*abb69(32)
      abb69(38)=spak3k4*spbk7k3*abb69(18)
      abb69(27)=abb69(32)+abb69(31)+abb69(38)+abb69(27)
      abb69(27)=abb69(27)*abb69(28)
      abb69(19)=abb69(14)*abb69(19)
      abb69(31)=-spak1l6*abb69(8)
      abb69(32)=abb69(31)*abb69(4)
      abb69(38)=-spak1l5*abb69(8)
      abb69(39)=abb69(38)*abb69(5)
      abb69(40)=abb69(32)+abb69(39)
      abb69(41)=abb69(19)*abb69(40)
      abb69(42)=spak4l6*abb69(35)
      abb69(43)=spak4l5*abb69(33)
      abb69(44)=spak1l5*spak4l6
      abb69(45)=spak1l6*spak4l5
      abb69(44)=abb69(44)+abb69(45)
      abb69(44)=-abb69(8)*abb69(44)
      abb69(42)=abb69(44)+abb69(42)+abb69(43)
      abb69(42)=abb69(42)*abb69(6)
      abb69(43)=-spak1k4*abb69(8)
      abb69(44)=abb69(43)*abb69(34)
      abb69(45)=-abb69(42)-abb69(44)
      abb69(46)=spbk3k2*abb69(14)
      abb69(47)=abb69(40)*abb69(46)
      abb69(45)=4.0_ki*abb69(45)-abb69(47)
      abb69(45)=abb69(45)*abb69(30)
      abb69(42)=abb69(42)-abb69(44)
      abb69(42)=4.0_ki*abb69(42)+abb69(47)
      abb69(42)=2.0_ki*abb69(42)*abb69(20)
      abb69(15)=abb69(17)*abb69(15)*abb69(22)*abb69(14)
      abb69(22)=abb69(4)*abb69(15)
      abb69(44)=abb69(17)*abb69(4)
      abb69(47)=-abb69(44)*abb69(19)
      abb69(48)=abb69(44)*abb69(46)
      abb69(49)=spak4k7*abb69(17)
      abb69(49)=2.0_ki*abb69(49)
      abb69(50)=abb69(49)*abb69(4)
      abb69(48)=abb69(48)+abb69(50)
      abb69(50)=-abb69(48)*abb69(28)
      abb69(48)=abb69(48)*abb69(30)
      abb69(51)=-spak2k4*abb69(8)
      abb69(9)=-abb69(51)*abb69(9)*abb69(4)
      abb69(52)=spak1l6*spbl6k3
      abb69(53)=spak1k7*spbk7k3
      abb69(52)=abb69(52)+abb69(53)
      abb69(52)=-abb69(52)*abb69(26)
      abb69(39)=-spbl6k3*abb69(39)
      abb69(39)=abb69(39)+abb69(52)
      abb69(39)=spak3k4*abb69(39)
      abb69(52)=-spak2k4*abb69(38)
      abb69(9)=abb69(39)+abb69(9)+abb69(52)
      abb69(9)=abb69(6)*abb69(9)
      abb69(39)=abb69(36)*abb69(46)
      abb69(52)=abb69(17)*spak2k4
      abb69(39)=abb69(52)-abb69(39)
      abb69(52)=-abb69(4)*abb69(39)
      abb69(9)=abb69(9)+abb69(52)
      abb69(9)=abb69(9)*abb69(28)
      abb69(52)=abb69(20)*abb69(6)
      abb69(54)=16.0_ki*abb69(52)
      abb69(55)=abb69(43)*abb69(54)
      abb69(56)=abb69(4)*abb69(55)
      abb69(57)=abb69(28)*abb69(6)
      abb69(43)=abb69(43)*abb69(57)
      abb69(58)=abb69(4)*abb69(43)
      abb69(15)=abb69(5)*abb69(15)
      abb69(17)=abb69(17)*abb69(5)
      abb69(19)=-abb69(17)*abb69(19)
      abb69(46)=abb69(17)*abb69(46)
      abb69(49)=abb69(49)*abb69(5)
      abb69(46)=abb69(46)+abb69(49)
      abb69(49)=-abb69(46)*abb69(28)
      abb69(46)=abb69(46)*abb69(30)
      abb69(12)=-abb69(51)*abb69(12)*abb69(5)
      abb69(59)=spak1l5*spbl5k3
      abb69(53)=abb69(59)+abb69(53)
      abb69(53)=-abb69(53)*abb69(25)
      abb69(32)=-spbl5k3*abb69(32)
      abb69(32)=abb69(53)+abb69(32)
      abb69(32)=spak3k4*abb69(32)
      abb69(53)=-spak2k4*abb69(31)
      abb69(12)=abb69(32)+abb69(12)+abb69(53)
      abb69(12)=abb69(6)*abb69(12)
      abb69(32)=-abb69(5)*abb69(39)
      abb69(12)=abb69(12)+abb69(32)
      abb69(12)=abb69(12)*abb69(28)
      abb69(32)=abb69(5)*abb69(55)
      abb69(39)=abb69(5)*abb69(43)
      abb69(13)=abb69(13)*abb69(5)
      abb69(10)=abb69(10)*abb69(4)
      abb69(10)=abb69(10)+abb69(13)
      abb69(10)=abb69(8)*abb69(10)
      abb69(7)=abb69(7)+abb69(10)
      abb69(7)=abb69(7)*abb69(21)
      abb69(10)=abb69(35)+abb69(38)
      abb69(10)=abb69(6)*abb69(10)
      abb69(10)=abb69(44)+abb69(10)
      abb69(10)=abb69(10)*abb69(21)
      abb69(13)=abb69(33)+abb69(31)
      abb69(13)=abb69(6)*abb69(13)
      abb69(13)=abb69(17)+abb69(13)
      abb69(13)=abb69(13)*abb69(21)
      abb69(11)=-abb69(11)*abb69(6)
      abb69(11)=abb69(11)+abb69(18)
      abb69(18)=-abb69(11)*abb69(28)
      abb69(11)=abb69(11)*abb69(30)
      abb69(20)=16.0_ki*abb69(37)*abb69(20)
      abb69(30)=4.0_ki*abb69(52)
      abb69(31)=abb69(40)*abb69(30)
      abb69(33)=-2.0_ki*abb69(40)*abb69(52)
      abb69(35)=abb69(44)*abb69(57)
      abb69(37)=-abb69(44)*abb69(30)
      abb69(36)=abb69(36)*abb69(54)
      abb69(38)=-abb69(4)*abb69(36)
      abb69(40)=abb69(17)*abb69(57)
      abb69(17)=-abb69(17)*abb69(30)
      abb69(30)=-abb69(5)*abb69(36)
      abb69(26)=spal6k7*abb69(26)
      abb69(25)=spal5k7*abb69(25)
      abb69(25)=abb69(26)+abb69(25)
      abb69(26)=-spak3k4*abb69(25)*abb69(28)
      abb69(14)=-abb69(14)*abb69(8)*abb69(28)
      abb69(36)=abb69(4)*abb69(14)
      abb69(14)=abb69(5)*abb69(14)
      abb69(28)=abb69(28)*abb69(51)*abb69(34)
      abb69(34)=abb69(51)*abb69(57)
      abb69(43)=-abb69(4)*abb69(34)
      abb69(34)=-abb69(5)*abb69(34)
      abb69(25)=abb69(25)*abb69(21)
      abb69(8)=-abb69(6)*abb69(8)*abb69(21)
      abb69(21)=-abb69(4)*abb69(8)
      abb69(8)=-abb69(5)*abb69(8)
      R2d69=0.0_ki
      rat2 = rat2 + R2d69
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='69' value='", &
          & R2d69, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd69h4
