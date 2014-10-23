module     p0_dbaru_epnebbbarg_abbrevd305h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(46), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=sqrt2**(-1)
      abb305(6)=spak2k7**(-1)
      abb305(7)=spbl6k2**(-1)
      abb305(8)=spak2l5**(-1)
      abb305(9)=c1+c3
      abb305(10)=TR*gW
      abb305(10)=abb305(10)**2*CVDU*i_*spak1k4*abb305(6)*abb305(5)*abb305(2)*ab&
      &b305(1)
      abb305(11)=abb305(10)*spbk3k1
      abb305(12)=mB*abb305(4)
      abb305(13)=abb305(9)*abb305(11)*abb305(12)
      abb305(14)=c2*abb305(4)**2
      abb305(11)=abb305(14)*abb305(11)
      abb305(15)=abb305(11)*mB
      abb305(15)=abb305(13)-abb305(15)
      abb305(16)=spak1l6*spbk7l5
      abb305(17)=-abb305(15)*abb305(16)
      abb305(18)=abb305(10)*spbk4k3
      abb305(12)=abb305(9)*abb305(18)*abb305(12)
      abb305(14)=abb305(14)*abb305(18)
      abb305(18)=abb305(14)*mB
      abb305(18)=abb305(12)-abb305(18)
      abb305(19)=spak4l6*spbk7l5
      abb305(20)=-abb305(18)*abb305(19)
      abb305(17)=abb305(17)+abb305(20)
      abb305(20)=es71+es12-es712
      abb305(17)=abb305(20)*abb305(3)*abb305(17)
      abb305(9)=abb305(9)*abb305(10)*abb305(4)
      abb305(10)=spbk3k1*abb305(9)
      abb305(21)=spbl5k2*abb305(10)
      abb305(22)=abb305(11)*spbl5k2
      abb305(21)=-abb305(22)+abb305(21)
      abb305(23)=abb305(21)*abb305(16)
      abb305(9)=spbk4k3*abb305(9)
      abb305(24)=spbl5k2*abb305(9)
      abb305(25)=abb305(14)*spbl5k2
      abb305(24)=abb305(24)-abb305(25)
      abb305(26)=abb305(24)*abb305(19)
      abb305(23)=abb305(23)+abb305(26)
      abb305(26)=abb305(23)*spak2l5
      abb305(27)=abb305(3)**2
      abb305(28)=-abb305(27)*abb305(26)
      abb305(9)=abb305(9)-abb305(14)
      abb305(14)=mB**2
      abb305(29)=abb305(14)*abb305(7)
      abb305(30)=abb305(29)*spbl5k2
      abb305(31)=-abb305(30)*abb305(9)
      abb305(32)=abb305(27)*spbk7k2
      abb305(33)=abb305(32)*spak2k4
      abb305(34)=-abb305(31)*abb305(33)
      abb305(10)=abb305(10)-abb305(11)
      abb305(11)=-abb305(30)*abb305(10)
      abb305(30)=abb305(32)*spak1k2
      abb305(35)=abb305(11)*abb305(30)
      abb305(17)=abb305(28)+abb305(35)+abb305(34)+abb305(17)
      abb305(17)=8.0_ki*abb305(17)
      abb305(28)=spak1k2*spbk7k2
      abb305(34)=abb305(11)*abb305(28)
      abb305(35)=spak2k4*spbk7k2
      abb305(36)=abb305(31)*abb305(35)
      abb305(26)=-abb305(26)+abb305(34)-abb305(36)
      abb305(34)=16.0_ki*abb305(26)
      abb305(16)=abb305(10)*abb305(16)
      abb305(19)=abb305(9)*abb305(19)
      abb305(16)=abb305(16)+abb305(19)
      abb305(19)=-abb305(27)*abb305(16)
      abb305(27)=abb305(29)*abb305(9)
      abb305(36)=abb305(27)*abb305(8)
      abb305(33)=abb305(36)*abb305(33)
      abb305(29)=-abb305(29)*abb305(10)
      abb305(37)=abb305(29)*abb305(8)
      abb305(30)=abb305(37)*abb305(30)
      abb305(19)=abb305(30)+abb305(33)+abb305(19)
      abb305(19)=16.0_ki*abb305(19)
      abb305(28)=abb305(28)*abb305(37)
      abb305(30)=abb305(35)*abb305(36)
      abb305(28)=-abb305(16)+abb305(28)+abb305(30)
      abb305(30)=32.0_ki*abb305(28)
      abb305(26)=-8.0_ki*abb305(26)
      abb305(28)=-16.0_ki*abb305(28)
      abb305(33)=16.0_ki*abb305(20)
      abb305(35)=-abb305(36)*abb305(33)
      abb305(38)=8.0_ki*abb305(27)
      abb305(39)=abb305(20)*spbk7k2
      abb305(38)=-abb305(39)*abb305(38)
      abb305(40)=abb305(20)*spbk7l5
      abb305(40)=8.0_ki*abb305(40)
      abb305(27)=abb305(27)*abb305(40)
      abb305(14)=abb305(14)*abb305(8)
      abb305(41)=-abb305(9)*abb305(14)
      abb305(41)=abb305(41)+abb305(24)
      abb305(42)=abb305(3)*abb305(8)
      abb305(43)=-abb305(18)*abb305(42)
      abb305(44)=abb305(41)-abb305(43)
      abb305(44)=abb305(44)*spak4l6
      abb305(14)=-abb305(10)*abb305(14)
      abb305(14)=abb305(14)+abb305(21)
      abb305(42)=-abb305(15)*abb305(42)
      abb305(45)=abb305(14)-abb305(42)
      abb305(45)=abb305(45)*spak1l6
      abb305(44)=abb305(44)+abb305(45)
      abb305(20)=abb305(44)*abb305(20)
      abb305(18)=-spak4l5*abb305(18)
      abb305(15)=-spak1l5*abb305(15)
      abb305(15)=abb305(15)+abb305(18)
      abb305(15)=abb305(15)*abb305(7)*spbl5k2**2
      abb305(18)=spbl5k2*abb305(12)
      abb305(25)=abb305(25)*mB
      abb305(18)=-abb305(25)+abb305(18)
      abb305(18)=spak4l6*abb305(18)
      abb305(44)=spbl5k2*abb305(13)
      abb305(22)=abb305(22)*mB
      abb305(44)=-abb305(22)+abb305(44)
      abb305(44)=spak1l6*abb305(44)
      abb305(15)=abb305(18)+abb305(44)+abb305(15)
      abb305(15)=abb305(3)*abb305(15)
      abb305(18)=-spak4k7*abb305(31)
      abb305(44)=-spak1k7*abb305(11)
      abb305(18)=abb305(44)+abb305(18)
      abb305(18)=spbk7k2*abb305(18)
      abb305(23)=-spal5k7*abb305(23)
      abb305(15)=abb305(23)+abb305(15)+abb305(18)+abb305(20)
      abb305(15)=8.0_ki*abb305(15)
      abb305(18)=spak4k7*abb305(36)
      abb305(20)=-spak1k7*abb305(37)
      abb305(18)=abb305(20)+abb305(18)
      abb305(18)=spbk7k2*abb305(18)
      abb305(20)=-spak4l6*abb305(43)
      abb305(23)=-spak1l6*abb305(42)
      abb305(18)=abb305(20)+abb305(23)+abb305(18)
      abb305(18)=16.0_ki*abb305(18)
      abb305(20)=abb305(10)*spak1l6
      abb305(23)=abb305(9)*spak4l6
      abb305(20)=abb305(20)+abb305(23)
      abb305(23)=spbk7k2*abb305(20)
      abb305(42)=8.0_ki*abb305(23)
      abb305(16)=8.0_ki*abb305(16)
      abb305(43)=spak4l5*abb305(24)
      abb305(44)=spak1l5*abb305(21)
      abb305(43)=abb305(43)+abb305(44)
      abb305(43)=8.0_ki*abb305(43)
      abb305(44)=spak2k4*abb305(41)
      abb305(45)=-spak1k2*abb305(14)
      abb305(44)=abb305(44)+abb305(45)
      abb305(44)=8.0_ki*abb305(44)
      abb305(45)=8.0_ki*spal5l6
      abb305(24)=abb305(24)*abb305(45)
      abb305(9)=16.0_ki*abb305(9)
      abb305(41)=-spak2l6*abb305(41)
      abb305(46)=spbl5k2*abb305(7)
      abb305(12)=-abb305(46)*abb305(12)
      abb305(25)=abb305(7)*abb305(25)
      abb305(12)=abb305(25)+abb305(12)
      abb305(12)=abb305(3)*abb305(12)
      abb305(12)=abb305(41)+abb305(12)+abb305(31)
      abb305(12)=8.0_ki*abb305(12)
      abb305(25)=16.0_ki*abb305(36)
      abb305(20)=8.0_ki*abb305(32)*abb305(20)
      abb305(23)=16.0_ki*abb305(23)
      abb305(31)=abb305(37)*abb305(33)
      abb305(32)=8.0_ki*abb305(29)
      abb305(32)=abb305(39)*abb305(32)
      abb305(21)=abb305(21)*abb305(45)
      abb305(10)=16.0_ki*abb305(10)
      abb305(29)=-abb305(29)*abb305(40)
      abb305(14)=-spak2l6*abb305(14)
      abb305(13)=-abb305(46)*abb305(13)
      abb305(22)=abb305(7)*abb305(22)
      abb305(13)=abb305(22)+abb305(13)
      abb305(13)=abb305(3)*abb305(13)
      abb305(11)=abb305(14)+abb305(13)+abb305(11)
      abb305(11)=8.0_ki*abb305(11)
      abb305(13)=16.0_ki*abb305(37)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd305h1
