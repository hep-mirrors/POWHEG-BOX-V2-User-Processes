module     p0_dbaru_epnebbbarg_abbrevd12h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(46), public :: abb12
   complex(ki), public :: R2d12
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
      abb12(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb12(2)=NC**(-1)
      abb12(3)=sqrt2**(-1)
      abb12(4)=es56**(-1)
      abb12(5)=spak2l5**(-1)
      abb12(6)=spak2k7**(-1)
      abb12(7)=spak2l6**(-1)
      abb12(8)=es71**(-1)
      abb12(9)=c3*abb12(2)
      abb12(10)=c4*abb12(2)**2
      abb12(9)=abb12(9)-abb12(10)
      abb12(10)=abb12(4)*CVDU*i_*mB*abb12(3)*abb12(1)
      abb12(11)=abb12(10)*abb12(8)*spbk7k1
      abb12(12)=abb12(9)*abb12(11)*abb12(6)
      abb12(13)=TR*gW
      abb12(14)=abb12(13)*spak1k2
      abb12(14)=abb12(14)**2
      abb12(15)=-abb12(14)*abb12(12)
      abb12(16)=-abb12(5)*abb12(15)
      abb12(17)=abb12(16)*spbl6k3
      abb12(15)=-abb12(7)*abb12(15)
      abb12(18)=abb12(15)*spbl5k3
      abb12(17)=abb12(17)+abb12(18)
      abb12(18)=spak3k4*spbk3k2
      abb12(19)=abb12(17)*abb12(18)
      abb12(20)=abb12(16)*spbl6k2
      abb12(21)=abb12(15)*spbl5k2
      abb12(20)=abb12(20)+abb12(21)
      abb12(21)=spak2k4*spbk3k2
      abb12(22)=abb12(21)*abb12(20)
      abb12(19)=abb12(19)-abb12(22)
      abb12(23)=-es712*abb12(19)
      abb12(10)=abb12(9)*abb12(10)
      abb12(24)=-abb12(10)*abb12(6)*spbk7k1
      abb12(25)=abb12(24)*abb12(14)
      abb12(26)=-abb12(7)*abb12(25)
      abb12(27)=abb12(26)*spbl5k3
      abb12(25)=-abb12(5)*abb12(25)
      abb12(28)=abb12(25)*spbl6k3
      abb12(27)=abb12(27)+abb12(28)
      abb12(28)=abb12(27)*abb12(18)
      abb12(29)=abb12(21)*spbl6k2
      abb12(30)=-abb12(25)*abb12(29)
      abb12(31)=abb12(21)*spbl5k2
      abb12(32)=-abb12(26)*abb12(31)
      abb12(23)=abb12(23)+abb12(28)+abb12(30)+abb12(32)
      abb12(23)=8.0_ki*abb12(23)
      abb12(28)=16.0_ki*abb12(22)
      abb12(13)=abb12(13)**2
      abb12(30)=abb12(13)*spak1k2
      abb12(32)=abb12(11)*abb12(9)*abb12(30)
      abb12(33)=-abb12(5)*abb12(32)
      abb12(34)=abb12(33)*spbl6k2
      abb12(32)=-abb12(7)*abb12(32)
      abb12(35)=abb12(32)*spbl5k2
      abb12(34)=abb12(34)+abb12(35)
      abb12(35)=spbk7k3*abb12(34)
      abb12(36)=spbk3k1*abb12(20)
      abb12(35)=abb12(36)+abb12(35)
      abb12(35)=spak1k4*abb12(35)
      abb12(35)=abb12(22)+abb12(35)
      abb12(35)=16.0_ki*abb12(35)
      abb12(36)=abb12(30)*abb12(5)
      abb12(37)=abb12(36)*abb12(12)
      abb12(38)=abb12(37)*spak1k4
      abb12(39)=abb12(38)*spbl6k3
      abb12(30)=abb12(30)*abb12(7)
      abb12(40)=abb12(30)*abb12(12)
      abb12(41)=abb12(40)*spak1k4
      abb12(42)=abb12(41)*spbl5k3
      abb12(39)=abb12(39)+abb12(42)
      abb12(42)=32.0_ki*abb12(39)
      abb12(19)=16.0_ki*abb12(19)
      abb12(43)=-spbl6k3*abb12(36)
      abb12(44)=-spbl5k3*abb12(30)
      abb12(43)=abb12(43)+abb12(44)
      abb12(24)=spak1k4*abb12(24)*abb12(43)
      abb12(43)=-es712*abb12(39)
      abb12(44)=spbl6k2*abb12(38)
      abb12(45)=spbl5k2*abb12(41)
      abb12(44)=abb12(44)+abb12(45)
      abb12(45)=spbk4k3*spak2k4
      abb12(44)=abb12(44)*abb12(45)
      abb12(22)=abb12(44)+abb12(43)-abb12(22)+abb12(24)
      abb12(22)=8.0_ki*abb12(22)
      abb12(24)=-16.0_ki*abb12(39)
      abb12(39)=es234-es34
      abb12(43)=-es712-abb12(39)
      abb12(43)=abb12(20)*abb12(43)
      abb12(25)=spbl6k2*abb12(25)
      abb12(26)=spbl5k2*abb12(26)
      abb12(25)=abb12(25)+abb12(26)+abb12(43)
      abb12(25)=8.0_ki*abb12(25)
      abb12(26)=-spbk7l6*abb12(36)
      abb12(30)=-spbk7l5*abb12(30)
      abb12(26)=abb12(30)+abb12(26)
      abb12(10)=abb12(26)*abb12(6)*abb12(10)
      abb12(26)=spbl6k3*abb12(37)
      abb12(30)=spbl5k3*abb12(40)
      abb12(26)=abb12(26)+abb12(30)
      abb12(26)=spak1k3*abb12(26)
      abb12(30)=spbl6k4*abb12(38)
      abb12(36)=spbl5k4*abb12(41)
      abb12(10)=abb12(36)+abb12(30)+abb12(26)+abb12(10)
      abb12(10)=16.0_ki*abb12(10)
      abb12(26)=16.0_ki*abb12(20)
      abb12(30)=-spbk7l6*abb12(16)
      abb12(36)=-spbk7l5*abb12(15)
      abb12(30)=abb12(30)+abb12(36)
      abb12(30)=8.0_ki*abb12(30)
      abb12(36)=spbl6k2*abb12(5)
      abb12(43)=spbl5k2*abb12(7)
      abb12(36)=abb12(36)+abb12(43)
      abb12(9)=abb12(36)*abb12(9)*abb12(14)*abb12(11)
      abb12(11)=abb12(33)*spbl6k3
      abb12(14)=abb12(32)*spbl5k3
      abb12(11)=abb12(11)+abb12(14)
      abb12(14)=spak1k3*abb12(11)
      abb12(9)=abb12(14)+abb12(9)
      abb12(9)=spbk7k3*abb12(9)
      abb12(14)=es12+es23-es123+es712
      abb12(14)=abb12(17)*abb12(14)
      abb12(12)=-spbk3k1*abb12(36)*abb12(12)*abb12(13)*spak1k2**3
      abb12(13)=-abb12(20)*abb12(45)
      abb12(9)=abb12(13)+abb12(12)+abb12(14)+abb12(9)-abb12(27)
      abb12(9)=8.0_ki*abb12(9)
      abb12(12)=16.0_ki*abb12(17)
      abb12(13)=8.0_ki*abb12(17)
      abb12(14)=-spbl6k4*abb12(16)
      abb12(20)=-spbl5k4*abb12(15)
      abb12(14)=abb12(14)+abb12(20)
      abb12(14)=8.0_ki*abb12(14)
      abb12(20)=-spbk7k3*abb12(11)
      abb12(17)=-spbk3k1*abb12(17)
      abb12(17)=abb12(20)+abb12(17)
      abb12(17)=8.0_ki*spak1k4*abb12(17)
      abb12(20)=spak3k4*spbk3k2**2
      abb12(20)=8.0_ki*abb12(20)
      abb12(27)=abb12(16)*abb12(20)
      abb12(36)=16.0_ki*spbk3k2
      abb12(43)=abb12(38)*abb12(36)
      abb12(44)=8.0_ki*spbk3k2
      abb12(38)=abb12(38)*abb12(44)
      abb12(45)=-abb12(16)*abb12(36)
      abb12(20)=abb12(15)*abb12(20)
      abb12(46)=abb12(41)*abb12(36)
      abb12(41)=abb12(41)*abb12(44)
      abb12(36)=-abb12(15)*abb12(36)
      abb12(11)=-abb12(11)*abb12(18)
      abb12(29)=abb12(33)*abb12(29)
      abb12(31)=abb12(32)*abb12(31)
      abb12(11)=abb12(11)+abb12(29)+abb12(31)
      abb12(11)=8.0_ki*abb12(11)
      abb12(29)=-8.0_ki*abb12(34)
      abb12(31)=16.0_ki*abb12(21)
      abb12(32)=abb12(31)*abb12(37)
      abb12(33)=8.0_ki*abb12(37)
      abb12(34)=abb12(33)*abb12(21)
      abb12(39)=8.0_ki*abb12(39)
      abb12(37)=-abb12(37)*abb12(39)
      abb12(31)=abb12(31)*abb12(40)
      abb12(44)=8.0_ki*abb12(40)
      abb12(21)=abb12(44)*abb12(21)
      abb12(39)=-abb12(40)*abb12(39)
      abb12(40)=abb12(33)*abb12(18)
      abb12(18)=abb12(44)*abb12(18)
      abb12(16)=-spbl6k1*abb12(16)
      abb12(15)=-spbl5k1*abb12(15)
      abb12(15)=abb12(16)+abb12(15)
      abb12(15)=8.0_ki*abb12(15)
      R2d12=0.0_ki
      rat2 = rat2 + R2d12
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='12' value='", &
          & R2d12, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd12h3
