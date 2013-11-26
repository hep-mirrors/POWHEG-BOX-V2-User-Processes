module     p0_dbaru_epnebbbarg_abbrevd98h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(44), public :: abb98
   complex(ki), public :: R2d98
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
      abb98(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb98(2)=1.0_ki/(es34+es567-es12-es234)
      abb98(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb98(4)=NC**(-1)
      abb98(5)=spak2l5**(-1)
      abb98(6)=spbl5k2**(-1)
      abb98(7)=sqrt(mB**2)
      abb98(8)=spbl6k2**(-1)
      abb98(9)=c2*abb98(4)**2
      abb98(10)=abb98(9)*spbe7l5
      abb98(11)=TR*gW
      abb98(11)=CVDU*i_*spak1k4*abb98(3)*abb98(2)*abb98(1)*abb98(11)**2
      abb98(12)=abb98(11)*spbk4k3
      abb98(13)=abb98(10)*abb98(12)
      abb98(14)=2.0_ki*abb98(4)
      abb98(15)=abb98(11)*c1*spbe7l5
      abb98(16)=abb98(14)*abb98(15)
      abb98(17)=abb98(16)*spbk4k3
      abb98(15)=abb98(15)*NC
      abb98(18)=abb98(15)*spbk4k3
      abb98(13)=abb98(18)+abb98(13)-abb98(17)
      abb98(17)=-spbk7k2*abb98(13)
      abb98(18)=abb98(17)*spae7k7
      abb98(19)=spbl5k2*abb98(13)
      abb98(20)=abb98(19)*spal5e7
      abb98(21)=abb98(18)+abb98(20)
      abb98(22)=abb98(21)*spak4l6
      abb98(11)=abb98(11)*spbk3k1
      abb98(10)=abb98(10)*abb98(11)
      abb98(16)=abb98(16)*spbk3k1
      abb98(15)=abb98(15)*spbk3k1
      abb98(10)=abb98(15)+abb98(10)-abb98(16)
      abb98(15)=-spbk7k2*abb98(10)
      abb98(16)=abb98(15)*spae7k7
      abb98(23)=spbl5k2*abb98(10)
      abb98(24)=abb98(23)*spal5e7
      abb98(25)=abb98(16)+abb98(24)
      abb98(26)=abb98(25)*spak1l6
      abb98(22)=abb98(22)+abb98(26)
      abb98(26)=es12-es712+es71
      abb98(22)=abb98(22)*abb98(26)
      abb98(26)=spae7k7*spbk7k2
      abb98(27)=-abb98(19)*abb98(26)
      abb98(28)=spal5e7*spbl5k2**2
      abb98(29)=abb98(13)*abb98(28)
      abb98(27)=abb98(27)+abb98(29)
      abb98(27)=spak4l6*abb98(27)
      abb98(26)=-abb98(23)*abb98(26)
      abb98(28)=abb98(10)*abb98(28)
      abb98(26)=abb98(26)+abb98(28)
      abb98(26)=spak1l6*abb98(26)
      abb98(26)=abb98(27)+abb98(26)
      abb98(26)=spak2l5*abb98(26)
      abb98(22)=abb98(26)+abb98(22)
      abb98(22)=4.0_ki*abb98(22)
      abb98(18)=-spak4l6*abb98(18)
      abb98(16)=-spak1l6*abb98(16)
      abb98(16)=abb98(18)+abb98(16)
      abb98(16)=8.0_ki*abb98(16)
      abb98(18)=-spak4l6*abb98(20)
      abb98(20)=-spak1l6*abb98(24)
      abb98(18)=abb98(18)+abb98(20)
      abb98(18)=8.0_ki*abb98(18)
      abb98(20)=mB**2
      abb98(24)=abb98(20)*spbk7k2
      abb98(26)=abb98(13)*abb98(24)
      abb98(27)=spak4l6*spae7k7
      abb98(28)=abb98(26)*abb98(27)
      abb98(29)=abb98(10)*abb98(24)
      abb98(30)=spak1l6*spae7k7
      abb98(31)=abb98(29)*abb98(30)
      abb98(28)=abb98(28)+abb98(31)
      abb98(28)=abb98(6)*abb98(28)
      abb98(31)=abb98(13)*abb98(20)
      abb98(32)=spak4l6*spal5e7
      abb98(33)=-abb98(31)*abb98(32)
      abb98(34)=abb98(10)*abb98(20)
      abb98(35)=spak1l6*spal5e7
      abb98(36)=-abb98(34)*abb98(35)
      abb98(28)=abb98(28)+abb98(33)+abb98(36)
      abb98(28)=8.0_ki*abb98(5)*abb98(28)
      abb98(14)=NC-abb98(14)
      abb98(14)=c1*abb98(14)
      abb98(9)=abb98(14)+abb98(9)
      abb98(12)=-abb98(12)*abb98(9)
      abb98(14)=abb98(12)*spak4l6
      abb98(9)=-abb98(11)*abb98(9)
      abb98(11)=abb98(9)*spak1l6
      abb98(11)=abb98(14)+abb98(11)
      abb98(14)=spak2e7*abb98(5)
      abb98(33)=abb98(14)*abb98(7)
      abb98(36)=4.0_ki*abb98(33)
      abb98(37)=spbk7k2*mB
      abb98(38)=abb98(36)*abb98(37)*abb98(11)
      abb98(39)=spbl5k2*mB
      abb98(11)=abb98(36)*abb98(39)*abb98(11)
      abb98(36)=abb98(13)*abb98(37)
      abb98(40)=-spak4k7*abb98(36)
      abb98(41)=abb98(13)*abb98(39)
      abb98(42)=-spak4l5*abb98(41)
      abb98(37)=abb98(10)*abb98(37)
      abb98(43)=-spak1k7*abb98(37)
      abb98(39)=abb98(10)*abb98(39)
      abb98(44)=-spak1l5*abb98(39)
      abb98(40)=abb98(44)+abb98(43)+abb98(42)+abb98(40)
      abb98(42)=abb98(7)*abb98(8)
      abb98(40)=abb98(42)*abb98(40)
      abb98(43)=abb98(10)*spak1l6
      abb98(44)=-spak4l6*abb98(13)
      abb98(44)=abb98(44)-abb98(43)
      abb98(44)=abb98(44)*abb98(7)**2
      abb98(40)=abb98(40)+abb98(44)
      abb98(40)=4.0_ki*abb98(40)
      abb98(17)=abb98(17)*abb98(32)
      abb98(15)=abb98(15)*abb98(35)
      abb98(15)=abb98(17)+abb98(15)
      abb98(15)=4.0_ki*abb98(15)
      abb98(17)=abb98(20)*spbl5k2
      abb98(35)=abb98(17)*spak4l5
      abb98(44)=spak4k7*abb98(24)
      abb98(44)=abb98(35)+abb98(44)
      abb98(44)=abb98(12)*abb98(44)
      abb98(17)=abb98(17)*spak1l5
      abb98(24)=spak1k7*abb98(24)
      abb98(24)=abb98(17)+abb98(24)
      abb98(24)=abb98(9)*abb98(24)
      abb98(24)=abb98(24)+abb98(44)
      abb98(14)=abb98(14)*abb98(8)
      abb98(44)=abb98(14)*spbk7e7
      abb98(24)=abb98(44)*abb98(24)
      abb98(32)=abb98(13)*abb98(32)
      abb98(43)=spal5e7*abb98(43)
      abb98(32)=abb98(32)+abb98(43)
      abb98(32)=spbk7l5*abb98(32)
      abb98(24)=abb98(32)+abb98(24)
      abb98(24)=4.0_ki*abb98(24)
      abb98(32)=spak2k4*abb98(21)
      abb98(43)=-spak1k2*abb98(25)
      abb98(32)=abb98(32)+abb98(43)
      abb98(32)=4.0_ki*abb98(32)
      abb98(33)=8.0_ki*abb98(33)
      abb98(33)=abb98(33)*mB
      abb98(43)=abb98(12)*abb98(33)
      abb98(33)=abb98(9)*abb98(33)
      abb98(19)=abb98(19)*abb98(27)
      abb98(23)=abb98(23)*abb98(30)
      abb98(19)=abb98(19)+abb98(23)
      abb98(19)=4.0_ki*abb98(19)
      abb98(23)=spak4k7*abb98(26)
      abb98(26)=abb98(13)*abb98(35)
      abb98(29)=spak1k7*abb98(29)
      abb98(17)=abb98(10)*abb98(17)
      abb98(17)=abb98(17)+abb98(29)+abb98(26)+abb98(23)
      abb98(17)=abb98(14)*abb98(17)
      abb98(23)=abb98(13)*abb98(27)
      abb98(26)=abb98(10)*abb98(30)
      abb98(23)=abb98(23)+abb98(26)
      abb98(23)=spbk7l5*abb98(23)
      abb98(17)=abb98(23)+abb98(17)
      abb98(17)=4.0_ki*abb98(17)
      abb98(23)=8.0_ki*spae7k7
      abb98(23)=abb98(13)*abb98(23)
      abb98(26)=8.0_ki*spal5e7
      abb98(26)=abb98(13)*abb98(26)
      abb98(27)=spae7k7*abb98(36)
      abb98(29)=-spal5e7*abb98(41)
      abb98(27)=abb98(27)+abb98(29)
      abb98(27)=abb98(27)*abb98(42)
      abb98(21)=-spak2l6*abb98(21)
      abb98(21)=abb98(27)+abb98(21)
      abb98(21)=4.0_ki*abb98(21)
      abb98(27)=4.0_ki*abb98(42)
      abb98(27)=abb98(27)*mB
      abb98(13)=abb98(13)*abb98(27)
      abb98(29)=4.0_ki*abb98(44)
      abb98(20)=abb98(29)*abb98(20)
      abb98(12)=-abb98(12)*abb98(20)
      abb98(14)=4.0_ki*abb98(14)
      abb98(29)=-abb98(31)*abb98(14)
      abb98(30)=8.0_ki*abb98(10)
      abb98(31)=abb98(30)*spae7k7
      abb98(30)=abb98(30)*spal5e7
      abb98(35)=spae7k7*abb98(37)
      abb98(36)=-spal5e7*abb98(39)
      abb98(35)=abb98(35)+abb98(36)
      abb98(35)=abb98(35)*abb98(42)
      abb98(25)=-spak2l6*abb98(25)
      abb98(25)=abb98(35)+abb98(25)
      abb98(25)=4.0_ki*abb98(25)
      abb98(10)=abb98(10)*abb98(27)
      abb98(9)=-abb98(9)*abb98(20)
      abb98(14)=-abb98(34)*abb98(14)
      R2d98=0.0_ki
      rat2 = rat2 + R2d98
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='98' value='", &
          & R2d98, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd98h1
