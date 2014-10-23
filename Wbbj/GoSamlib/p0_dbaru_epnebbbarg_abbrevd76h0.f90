module     p0_dbaru_epnebbbarg_abbrevd76h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(59), public :: abb76
   complex(ki), public :: R2d76
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
      abb76(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb76(2)=sqrt(mB**2)
      abb76(3)=NC**(-1)
      abb76(4)=sqrt2**(-1)
      abb76(5)=es71**(-1)
      abb76(6)=spbl5k2**(-1)
      abb76(7)=spak2k7**(-1)
      abb76(8)=spak2l6**(-1)
      abb76(9)=spbl6k2**(-1)
      abb76(10)=spak2l5**(-1)
      abb76(11)=abb76(7)*i_*CVDU*abb76(4)*abb76(1)
      abb76(12)=TR*gW
      abb76(12)=abb76(12)**2
      abb76(13)=abb76(11)*abb76(12)*spbk7k1*abb76(5)
      abb76(14)=abb76(13)*spbk3k2
      abb76(15)=c4*abb76(3)**2
      abb76(16)=abb76(15)*abb76(14)
      abb76(14)=abb76(14)*c3
      abb76(17)=abb76(14)*NC
      abb76(18)=2.0_ki*abb76(3)
      abb76(14)=abb76(14)*abb76(18)
      abb76(14)=-abb76(14)+abb76(16)+abb76(17)
      abb76(16)=abb76(14)*abb76(6)
      abb76(17)=mB**2
      abb76(19)=abb76(2)*spak1l6
      abb76(20)=abb76(17)*abb76(19)
      abb76(21)=-abb76(20)*abb76(16)
      abb76(22)=abb76(14)*spak2l5
      abb76(23)=abb76(19)*abb76(22)
      abb76(21)=abb76(21)+abb76(23)
      abb76(23)=es12*spak1k4
      abb76(21)=abb76(21)*abb76(23)
      abb76(24)=abb76(13)*c3*spak1k2
      abb76(18)=abb76(18)-NC
      abb76(25)=-abb76(18)*abb76(24)*spbk3k2
      abb76(20)=-abb76(20)*abb76(25)
      abb76(26)=abb76(13)*spak1l6
      abb76(27)=abb76(15)*spak1k2
      abb76(28)=spbk3k2*abb76(27)
      abb76(29)=abb76(28)*abb76(26)*abb76(2)
      abb76(17)=abb76(29)*abb76(17)
      abb76(17)=abb76(20)-abb76(17)
      abb76(20)=abb76(17)*abb76(6)
      abb76(30)=-abb76(19)*abb76(25)
      abb76(29)=abb76(30)-abb76(29)
      abb76(30)=abb76(29)*spak2l5
      abb76(20)=abb76(20)-abb76(30)
      abb76(30)=spbk7k2*spak4k7
      abb76(31)=-spbl6k2*spak4l6
      abb76(31)=abb76(31)-abb76(30)
      abb76(31)=abb76(20)*abb76(31)
      abb76(21)=abb76(21)+abb76(31)
      abb76(21)=8.0_ki*abb76(21)
      abb76(31)=16.0_ki*spak4l5
      abb76(32)=abb76(29)*abb76(31)
      abb76(17)=-abb76(9)*abb76(17)
      abb76(33)=abb76(17)*abb76(8)
      abb76(34)=-abb76(31)*abb76(33)
      abb76(35)=8.0_ki*spak4l5
      abb76(36)=abb76(29)*abb76(35)
      abb76(19)=-abb76(18)*abb76(19)*abb76(24)
      abb76(26)=abb76(26)*abb76(27)
      abb76(37)=abb76(26)*abb76(2)
      abb76(19)=abb76(19)+abb76(37)
      abb76(37)=abb76(35)*abb76(19)
      abb76(38)=spbk7k3*abb76(37)
      abb76(39)=spbl6k3*abb76(37)
      abb76(40)=8.0_ki*abb76(29)
      abb76(41)=-spak4k7*abb76(40)
      abb76(40)=-spak4l6*abb76(40)
      abb76(37)=spbl5k2*abb76(37)
      abb76(42)=abb76(19)*spak4l5
      abb76(43)=-spbl5k3*abb76(42)
      abb76(44)=spak2k4*abb76(8)
      abb76(17)=-abb76(17)*abb76(44)
      abb76(17)=abb76(43)+abb76(17)
      abb76(17)=8.0_ki*abb76(17)
      abb76(43)=mB**3
      abb76(45)=abb76(43)*abb76(9)
      abb76(46)=-abb76(45)*abb76(25)
      abb76(47)=abb76(13)*abb76(9)
      abb76(48)=abb76(28)*abb76(47)
      abb76(49)=abb76(48)*abb76(43)
      abb76(46)=abb76(46)-abb76(49)
      abb76(49)=abb76(10)*abb76(6)
      abb76(50)=abb76(46)*abb76(49)
      abb76(51)=abb76(9)*mB
      abb76(52)=-abb76(51)*abb76(25)
      abb76(48)=abb76(48)*mB
      abb76(48)=abb76(52)-abb76(48)
      abb76(50)=abb76(50)-abb76(48)
      abb76(13)=abb76(28)*abb76(13)
      abb76(13)=abb76(25)+abb76(13)
      abb76(25)=abb76(43)*abb76(9)**2
      abb76(28)=abb76(13)*abb76(25)
      abb76(52)=-abb76(8)*abb76(28)
      abb76(52)=abb76(52)-abb76(50)
      abb76(52)=16.0_ki*spak1k4*abb76(52)
      abb76(24)=-abb76(18)*abb76(51)*abb76(24)
      abb76(27)=mB*abb76(47)*abb76(27)
      abb76(27)=abb76(24)+abb76(27)
      abb76(47)=8.0_ki*spak1k4
      abb76(53)=abb76(47)*abb76(27)
      abb76(54)=spbk7k3*abb76(53)
      abb76(55)=spbl6k3*abb76(53)
      abb76(53)=-spbl5k3*abb76(53)
      abb76(29)=-abb76(29)*abb76(47)
      abb76(56)=-8.0_ki*abb76(19)
      abb76(57)=-spak1l5*spbk3k1
      abb76(58)=spal5k7*spbk7k3
      abb76(59)=spal5l6*spbl6k3
      abb76(57)=abb76(59)+abb76(58)+abb76(57)
      abb76(19)=abb76(19)*abb76(57)
      abb76(33)=spak2l5*abb76(33)
      abb76(19)=abb76(33)+abb76(19)+abb76(20)
      abb76(19)=8.0_ki*abb76(19)
      abb76(20)=abb76(49)*abb76(45)
      abb76(25)=-abb76(8)*abb76(25)
      abb76(20)=abb76(20)+abb76(25)-abb76(51)
      abb76(14)=-abb76(20)*abb76(14)*spak1k2**2
      abb76(18)=-abb76(18)*abb76(51)*c3
      abb76(15)=abb76(9)*abb76(15)*mB
      abb76(15)=abb76(15)+abb76(18)
      abb76(11)=spbk7k3*abb76(12)*spak1k2*abb76(11)*abb76(15)
      abb76(12)=-spak1l6*abb76(24)
      abb76(15)=-abb76(51)*abb76(26)
      abb76(12)=abb76(15)+abb76(12)
      abb76(12)=spbl6k3*abb76(12)
      abb76(15)=spak1l5*spbl5k3*abb76(27)
      abb76(11)=abb76(15)+abb76(12)+abb76(11)+abb76(14)
      abb76(11)=8.0_ki*abb76(11)
      abb76(12)=abb76(45)*abb76(16)
      abb76(14)=-abb76(51)*abb76(22)
      abb76(12)=abb76(12)+abb76(14)
      abb76(12)=abb76(12)*abb76(23)
      abb76(14)=-abb76(6)*abb76(43)*abb76(13)
      abb76(13)=spak2l5*mB*abb76(13)
      abb76(13)=abb76(14)+abb76(13)
      abb76(13)=spak4l6*abb76(13)
      abb76(14)=abb76(6)*abb76(46)
      abb76(15)=-spak2l5*abb76(48)
      abb76(14)=abb76(14)+abb76(15)
      abb76(14)=abb76(14)*abb76(30)
      abb76(15)=spbk3k1*abb76(42)
      abb76(12)=abb76(15)+abb76(12)+abb76(13)+abb76(14)
      abb76(12)=8.0_ki*abb76(12)
      abb76(13)=-abb76(48)*abb76(31)
      abb76(14)=-abb76(50)*abb76(31)
      abb76(15)=-abb76(48)*abb76(35)
      abb76(16)=8.0_ki*abb76(48)
      abb76(18)=spak4k7*abb76(16)
      abb76(16)=spak4l6*abb76(16)
      abb76(20)=-spbl5k2*abb76(27)*abb76(35)
      abb76(22)=spbk3k1*spak1k4*abb76(27)
      abb76(23)=abb76(28)*abb76(44)
      abb76(22)=abb76(22)+abb76(23)
      abb76(22)=8.0_ki*abb76(22)
      abb76(23)=abb76(48)*abb76(47)
      abb76(24)=8.0_ki*abb76(27)
      R2d76=0.0_ki
      rat2 = rat2 + R2d76
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='76' value='", &
          & R2d76, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd76h0
