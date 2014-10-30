module     p0_dbaru_epnebbbarg_abbrevd128h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(49), public :: abb128
   complex(ki), public :: R2d128
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
      abb128(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb128(2)=NC**(-1)
      abb128(3)=sqrt2**(-1)
      abb128(4)=es567**(-1)
      abb128(5)=es56**(-1)
      abb128(6)=spbl5k2**(-1)
      abb128(7)=spbl6k2**(-1)
      abb128(8)=spbk7k2**(-1)
      abb128(9)=1.0_ki/(mB**2-es67-es56+es567)
      abb128(10)=sqrt(mB**2)
      abb128(11)=1.0_ki/(-mB**2+es67)
      abb128(12)=abb128(6)*spal6k7
      abb128(13)=abb128(7)*spal5k7
      abb128(12)=abb128(12)+abb128(13)
      abb128(14)=abb128(4)*i_*CVDU*abb128(3)*abb128(1)
      abb128(15)=TR*gW
      abb128(15)=abb128(15)**2
      abb128(16)=abb128(14)*abb128(15)*mB
      abb128(17)=abb128(16)*abb128(5)
      abb128(18)=c1-c3
      abb128(18)=abb128(2)*abb128(17)*abb128(18)
      abb128(19)=spbk3k2**2
      abb128(20)=-abb128(19)*abb128(18)
      abb128(21)=-abb128(20)*abb128(12)
      abb128(22)=abb128(11)*abb128(6)
      abb128(23)=abb128(22)*abb128(16)*spal6k7
      abb128(24)=abb128(2)*abb128(23)*c3
      abb128(25)=spal5k7*abb128(9)*abb128(7)
      abb128(26)=abb128(16)*abb128(25)
      abb128(27)=c1*abb128(2)
      abb128(28)=abb128(27)*abb128(26)
      abb128(24)=abb128(24)-abb128(28)
      abb128(28)=-abb128(19)*abb128(24)
      abb128(23)=abb128(23)-abb128(26)
      abb128(23)=abb128(23)*c2
      abb128(26)=spbk3k2*abb128(2)
      abb128(29)=abb128(26)**2
      abb128(30)=-abb128(29)*abb128(23)
      abb128(21)=abb128(28)-abb128(30)+abb128(21)
      abb128(28)=abb128(21)*spak1k7
      abb128(30)=abb128(16)*abb128(8)
      abb128(31)=abb128(22)*abb128(30)
      abb128(32)=abb128(31)*spal6k7
      abb128(29)=abb128(29)*c2
      abb128(33)=abb128(29)*abb128(32)
      abb128(34)=c3*spal6k7
      abb128(31)=abb128(31)*abb128(34)
      abb128(35)=abb128(31)*abb128(2)
      abb128(36)=abb128(35)*abb128(19)
      abb128(37)=spal6k7*abb128(8)
      abb128(38)=-abb128(37)*abb128(20)
      abb128(39)=abb128(38)*abb128(6)
      abb128(33)=abb128(39)+abb128(33)-abb128(36)
      abb128(33)=abb128(33)*spbl6k2
      abb128(36)=abb128(14)*abb128(8)
      abb128(39)=abb128(36)*abb128(9)*spal5k7
      abb128(40)=abb128(15)*abb128(2)
      abb128(41)=abb128(40)*c1
      abb128(42)=abb128(39)*abb128(41)
      abb128(43)=abb128(42)*abb128(19)
      abb128(44)=abb128(29)*abb128(15)
      abb128(45)=abb128(44)*abb128(39)
      abb128(43)=abb128(43)-abb128(45)
      abb128(43)=abb128(43)*abb128(10)
      abb128(45)=spal5k7*abb128(8)
      abb128(20)=-abb128(45)*abb128(20)
      abb128(33)=abb128(33)+abb128(43)+abb128(20)
      abb128(43)=abb128(33)*spak1l6
      abb128(30)=abb128(25)*abb128(30)
      abb128(29)=abb128(29)*abb128(30)
      abb128(27)=abb128(27)*abb128(30)
      abb128(46)=abb128(27)*abb128(19)
      abb128(20)=abb128(20)*abb128(7)
      abb128(20)=-abb128(20)+abb128(29)-abb128(46)
      abb128(20)=abb128(20)*spbl5k2
      abb128(29)=abb128(40)*abb128(34)*abb128(11)
      abb128(40)=abb128(36)*abb128(29)
      abb128(19)=abb128(40)*abb128(19)
      abb128(36)=spal6k7*abb128(36)*abb128(11)
      abb128(44)=abb128(44)*abb128(36)
      abb128(19)=abb128(19)-abb128(44)
      abb128(19)=abb128(19)*abb128(10)
      abb128(19)=-abb128(38)+abb128(20)+abb128(19)
      abb128(20)=abb128(19)*spak1l5
      abb128(20)=abb128(28)+abb128(43)-abb128(20)
      abb128(28)=8.0_ki*spak3k4
      abb128(38)=-es12*abb128(20)*abb128(28)
      abb128(20)=16.0_ki*spak3k4*abb128(20)
      abb128(17)=abb128(17)*abb128(26)
      abb128(43)=abb128(17)*c3
      abb128(44)=abb128(17)*c1
      abb128(43)=abb128(43)-abb128(44)
      abb128(13)=abb128(43)*abb128(13)
      abb128(46)=abb128(44)*spal6k7
      abb128(17)=abb128(34)*abb128(17)
      abb128(46)=abb128(46)-abb128(17)
      abb128(46)=abb128(46)*abb128(6)
      abb128(47)=abb128(2)**2
      abb128(23)=abb128(23)*abb128(47)
      abb128(48)=-spbk3k2*abb128(23)
      abb128(22)=abb128(22)*abb128(34)
      abb128(25)=abb128(25)*c1
      abb128(22)=abb128(22)-abb128(25)
      abb128(16)=abb128(22)*abb128(26)*abb128(16)
      abb128(13)=-abb128(16)-abb128(13)+abb128(46)-abb128(48)
      abb128(16)=abb128(13)*spak1k7
      abb128(22)=abb128(16)*spak1k4
      abb128(25)=-abb128(45)*abb128(43)
      abb128(34)=abb128(25)*abb128(7)
      abb128(43)=abb128(30)*abb128(26)*c1
      abb128(46)=abb128(47)*c2
      abb128(30)=abb128(46)*abb128(30)
      abb128(47)=abb128(30)*spbk3k2
      abb128(34)=-abb128(47)+abb128(34)+abb128(43)
      abb128(34)=abb128(34)*spbl5k2
      abb128(14)=abb128(14)*spbk3k2
      abb128(29)=abb128(8)*abb128(14)*abb128(29)
      abb128(15)=abb128(46)*abb128(15)
      abb128(43)=abb128(15)*abb128(14)
      abb128(47)=abb128(11)*abb128(43)*abb128(37)
      abb128(29)=abb128(29)-abb128(47)
      abb128(29)=abb128(29)*abb128(10)
      abb128(44)=abb128(44)*abb128(37)
      abb128(17)=abb128(17)*abb128(8)
      abb128(17)=abb128(44)-abb128(17)
      abb128(29)=abb128(17)+abb128(34)-abb128(29)
      abb128(34)=-spak1k4*abb128(29)
      abb128(44)=abb128(34)*spak1l5
      abb128(17)=abb128(17)*abb128(6)
      abb128(32)=abb128(32)*abb128(46)
      abb128(46)=abb128(32)*spbk3k2
      abb128(26)=abb128(31)*abb128(26)
      abb128(17)=-abb128(26)+abb128(17)+abb128(46)
      abb128(17)=abb128(17)*spbl6k2
      abb128(14)=abb128(41)*abb128(14)
      abb128(14)=abb128(43)-abb128(14)
      abb128(14)=abb128(10)*abb128(45)*abb128(9)*abb128(14)
      abb128(14)=abb128(25)+abb128(17)-abb128(14)
      abb128(17)=-spak1k4*abb128(14)
      abb128(25)=abb128(17)*spak1l6
      abb128(22)=-abb128(25)+abb128(22)-abb128(44)
      abb128(22)=8.0_ki*abb128(22)
      abb128(25)=-spbk2k1*abb128(22)
      abb128(26)=abb128(28)*spak1k2
      abb128(21)=-abb128(21)*abb128(26)
      abb128(31)=16.0_ki*abb128(13)
      abb128(41)=abb128(31)*spak1k4
      abb128(33)=-abb128(33)*abb128(26)
      abb128(17)=16.0_ki*abb128(17)
      abb128(19)=abb128(19)*abb128(26)
      abb128(26)=16.0_ki*abb128(34)
      abb128(34)=spak1k3*abb128(13)
      abb128(12)=-abb128(18)*abb128(12)
      abb128(12)=abb128(24)-abb128(23)+abb128(12)
      abb128(23)=spbk4k2*spak1k4
      abb128(24)=-abb128(12)*abb128(23)
      abb128(24)=abb128(24)+abb128(34)
      abb128(24)=8.0_ki*abb128(24)
      abb128(34)=spak1k3*abb128(14)
      abb128(37)=-abb128(37)*abb128(18)
      abb128(43)=abb128(37)*abb128(6)
      abb128(32)=-abb128(32)+abb128(43)+abb128(35)
      abb128(32)=abb128(32)*spbl6k2
      abb128(35)=abb128(39)*abb128(15)
      abb128(35)=abb128(35)-abb128(42)
      abb128(35)=abb128(35)*abb128(10)
      abb128(18)=-abb128(45)*abb128(18)
      abb128(32)=abb128(18)+abb128(32)+abb128(35)
      abb128(35)=-abb128(32)*abb128(23)
      abb128(34)=abb128(35)+abb128(34)
      abb128(34)=8.0_ki*abb128(34)
      abb128(35)=spak1k3*abb128(29)
      abb128(18)=abb128(18)*abb128(7)
      abb128(18)=abb128(30)+abb128(18)-abb128(27)
      abb128(18)=abb128(18)*spbl5k2
      abb128(15)=abb128(36)*abb128(15)
      abb128(15)=abb128(15)-abb128(40)
      abb128(15)=abb128(15)*abb128(10)
      abb128(15)=abb128(37)+abb128(18)-abb128(15)
      abb128(18)=-abb128(15)*abb128(23)
      abb128(18)=abb128(18)+abb128(35)
      abb128(18)=8.0_ki*abb128(18)
      abb128(23)=abb128(29)*spak1l5
      abb128(27)=abb128(14)*spak1l6
      abb128(16)=abb128(16)+abb128(23)+abb128(27)
      abb128(23)=8.0_ki*abb128(16)
      abb128(27)=es23+2.0_ki*es12-es123
      abb128(27)=abb128(27)*abb128(23)
      abb128(16)=16.0_ki*abb128(16)
      abb128(30)=spak1k2*abb128(31)
      abb128(31)=16.0_ki*spak1k2
      abb128(35)=abb128(14)*abb128(31)
      abb128(31)=abb128(29)*abb128(31)
      abb128(36)=abb128(12)*spak1k7
      abb128(37)=abb128(15)*spak1l5
      abb128(39)=abb128(32)*spak1l6
      abb128(36)=abb128(39)+abb128(36)+abb128(37)
      abb128(37)=8.0_ki*spbk4k2*abb128(36)
      abb128(22)=-spbk3k1*abb128(22)
      abb128(39)=-abb128(13)*abb128(28)
      abb128(40)=-abb128(14)*abb128(28)
      abb128(28)=-abb128(29)*abb128(28)
      abb128(42)=abb128(13)*spak4k7
      abb128(43)=abb128(29)*spak4l5
      abb128(44)=abb128(14)*spak4l6
      abb128(42)=abb128(42)+abb128(43)+abb128(44)
      abb128(43)=16.0_ki*abb128(42)
      abb128(42)=-8.0_ki*abb128(42)
      abb128(44)=8.0_ki*spak2k4
      abb128(45)=abb128(13)*abb128(44)
      abb128(46)=abb128(14)*abb128(44)
      abb128(44)=abb128(29)*abb128(44)
      abb128(47)=-spak4k7*abb128(12)
      abb128(48)=-spak4l6*abb128(32)
      abb128(49)=-spak4l5*abb128(15)
      abb128(47)=abb128(49)+abb128(48)+abb128(47)
      abb128(47)=spbk4k2*abb128(47)
      abb128(36)=-spbk2k1*abb128(36)
      abb128(13)=spak3k7*abb128(13)
      abb128(14)=spak3l6*abb128(14)
      abb128(29)=spak3l5*abb128(29)
      abb128(13)=abb128(29)+abb128(14)+abb128(13)+abb128(36)+abb128(47)
      abb128(13)=8.0_ki*abb128(13)
      abb128(12)=-8.0_ki*abb128(12)
      abb128(14)=-8.0_ki*abb128(32)
      abb128(15)=-8.0_ki*abb128(15)
      R2d128=0.0_ki
      rat2 = rat2 + R2d128
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='128' value='", &
          & R2d128, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd128h4