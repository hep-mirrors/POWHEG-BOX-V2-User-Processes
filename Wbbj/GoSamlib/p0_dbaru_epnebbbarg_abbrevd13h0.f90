module     p0_dbaru_epnebbbarg_abbrevd13h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(47), public :: abb13
   complex(ki), public :: R2d13
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
      abb13(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb13(2)=NC**(-1)
      abb13(3)=sqrt2**(-1)
      abb13(4)=es56**(-1)
      abb13(5)=es71**(-1)
      abb13(6)=spak2l5**(-1)
      abb13(7)=spbl5k2**(-1)
      abb13(8)=spak2k7**(-1)
      abb13(9)=spak2l6**(-1)
      abb13(10)=spbl6k2**(-1)
      abb13(11)=c4*abb13(2)**2
      abb13(12)=TR*gW
      abb13(12)=abb13(8)*i_*CVDU*abb13(4)*abb13(3)*abb13(1)*abb13(12)**2
      abb13(13)=abb13(12)*spbk7k1*abb13(5)
      abb13(14)=abb13(13)*spbk3k2
      abb13(15)=abb13(11)*abb13(14)
      abb13(16)=c3*abb13(2)
      abb13(14)=abb13(16)*abb13(14)
      abb13(17)=abb13(15)-abb13(14)
      abb13(18)=-abb13(10)*abb13(17)
      abb13(19)=spak1l5*spak1k4
      abb13(20)=abb13(19)*abb13(18)
      abb13(21)=-abb13(7)*abb13(17)
      abb13(22)=spak1l6*spak1k4
      abb13(23)=abb13(22)*abb13(21)
      abb13(20)=abb13(20)+abb13(23)
      abb13(20)=es12*mB*abb13(20)
      abb13(23)=spak1k2*mB
      abb13(24)=-abb13(23)*abb13(18)
      abb13(25)=abb13(24)*spak1l5
      abb13(26)=-abb13(23)*abb13(21)
      abb13(27)=abb13(26)*spak1l6
      abb13(28)=abb13(25)+abb13(27)
      abb13(29)=spbk7k2*spak4k7
      abb13(30)=abb13(28)*abb13(29)
      abb13(20)=abb13(20)+abb13(30)
      abb13(30)=mB**3
      abb13(31)=-abb13(18)*abb13(30)*abb13(7)
      abb13(32)=-spak1k2*abb13(31)
      abb13(33)=abb13(32)*spak1l5
      abb13(15)=abb13(30)*abb13(15)
      abb13(34)=abb13(7)**2
      abb13(35)=abb13(34)*abb13(15)
      abb13(36)=abb13(35)*spak1k2
      abb13(34)=abb13(34)*abb13(14)
      abb13(37)=abb13(30)*spak1k2
      abb13(38)=abb13(34)*abb13(37)
      abb13(36)=abb13(36)-abb13(38)
      abb13(38)=abb13(36)*spak1l6
      abb13(33)=abb13(33)-abb13(38)
      abb13(38)=-abb13(33)*abb13(29)
      abb13(39)=abb13(30)*abb13(34)
      abb13(39)=-abb13(35)+abb13(39)
      abb13(39)=abb13(39)*abb13(22)
      abb13(40)=-abb13(31)*abb13(19)
      abb13(39)=abb13(39)+abb13(40)
      abb13(39)=es12*abb13(39)
      abb13(38)=abb13(38)+abb13(39)
      abb13(38)=abb13(6)*abb13(38)
      abb13(39)=abb13(32)*spak1l6
      abb13(40)=abb13(10)**2
      abb13(15)=abb13(40)*abb13(15)
      abb13(41)=abb13(15)*spak1k2
      abb13(14)=abb13(40)*abb13(14)
      abb13(37)=abb13(14)*abb13(37)
      abb13(37)=abb13(41)-abb13(37)
      abb13(40)=abb13(37)*spak1l5
      abb13(39)=abb13(39)-abb13(40)
      abb13(40)=-abb13(39)*abb13(29)
      abb13(22)=-abb13(31)*abb13(22)
      abb13(41)=abb13(30)*abb13(14)
      abb13(41)=-abb13(15)+abb13(41)
      abb13(19)=abb13(41)*abb13(19)
      abb13(19)=abb13(22)+abb13(19)
      abb13(19)=es12*abb13(19)
      abb13(19)=abb13(40)+abb13(19)
      abb13(19)=abb13(9)*abb13(19)
      abb13(19)=abb13(19)+abb13(38)-abb13(20)
      abb13(19)=16.0_ki*abb13(19)
      abb13(17)=-abb13(23)*abb13(17)
      abb13(22)=-spak1l5*abb13(17)
      abb13(27)=spbl6k2*abb13(27)
      abb13(22)=abb13(27)+abb13(22)
      abb13(22)=spak4l6*abb13(22)
      abb13(17)=-spak1l6*abb13(17)
      abb13(25)=spbl5k2*abb13(25)
      abb13(17)=abb13(25)+abb13(17)
      abb13(17)=spak4l5*abb13(17)
      abb13(17)=abb13(17)+abb13(22)+abb13(20)
      abb13(17)=8.0_ki*abb13(17)
      abb13(11)=abb13(16)-abb13(11)
      abb13(16)=es12*spak1k4
      abb13(20)=abb13(11)*abb13(16)*abb13(13)*mB
      abb13(22)=-abb13(7)*abb13(20)
      abb13(25)=abb13(11)*abb13(7)
      abb13(13)=abb13(23)*abb13(13)
      abb13(27)=abb13(13)*abb13(25)
      abb13(38)=abb13(27)*abb13(29)
      abb13(22)=abb13(22)+abb13(38)
      abb13(22)=abb13(22)*spbl5k3
      abb13(20)=-abb13(10)*abb13(20)
      abb13(38)=abb13(11)*abb13(10)
      abb13(40)=abb13(13)*abb13(38)
      abb13(41)=abb13(40)*abb13(29)
      abb13(20)=abb13(20)+abb13(41)
      abb13(20)=abb13(20)*spbl6k3
      abb13(20)=abb13(22)-abb13(20)
      abb13(22)=-spak1l5*abb13(20)
      abb13(41)=spak1k2**2
      abb13(30)=abb13(41)*abb13(30)
      abb13(34)=abb13(34)*abb13(30)
      abb13(35)=abb13(35)*abb13(41)
      abb13(34)=abb13(35)-abb13(34)
      abb13(35)=-abb13(34)*abb13(29)
      abb13(36)=abb13(36)*abb13(16)
      abb13(35)=abb13(35)+abb13(36)
      abb13(35)=abb13(6)*abb13(35)
      abb13(32)=abb13(32)*abb13(16)
      abb13(31)=-abb13(41)*abb13(31)
      abb13(36)=abb13(31)*abb13(29)
      abb13(32)=abb13(32)-abb13(36)
      abb13(36)=-abb13(9)*abb13(32)
      abb13(42)=abb13(41)*mB
      abb13(21)=abb13(21)*abb13(42)
      abb13(43)=-abb13(21)*abb13(29)
      abb13(44)=-abb13(26)*abb13(16)
      abb13(22)=abb13(36)+abb13(35)+abb13(43)+abb13(44)+abb13(22)
      abb13(22)=8.0_ki*abb13(22)
      abb13(35)=16.0_ki*spak1k4
      abb13(36)=abb13(35)*abb13(26)
      abb13(43)=8.0_ki*spak1k4
      abb13(44)=abb13(26)*abb13(43)
      abb13(45)=abb13(43)*abb13(27)
      abb13(46)=spbk7k3*abb13(45)
      abb13(47)=-spbl6k3*abb13(45)
      abb13(20)=spak1l6*abb13(20)
      abb13(32)=-abb13(6)*abb13(32)
      abb13(14)=abb13(14)*abb13(30)
      abb13(15)=abb13(15)*abb13(41)
      abb13(14)=abb13(15)-abb13(14)
      abb13(15)=-abb13(14)*abb13(29)
      abb13(30)=abb13(37)*abb13(16)
      abb13(15)=abb13(15)+abb13(30)
      abb13(15)=abb13(9)*abb13(15)
      abb13(18)=abb13(18)*abb13(42)
      abb13(29)=-abb13(18)*abb13(29)
      abb13(16)=-abb13(24)*abb13(16)
      abb13(15)=abb13(15)+abb13(32)+abb13(29)+abb13(16)+abb13(20)
      abb13(15)=8.0_ki*abb13(15)
      abb13(16)=abb13(35)*abb13(24)
      abb13(20)=abb13(24)*abb13(43)
      abb13(29)=abb13(43)*abb13(40)
      abb13(30)=spbk7k3*abb13(29)
      abb13(32)=-spbl6k3*abb13(40)
      abb13(35)=-spbl5k3*abb13(27)
      abb13(32)=abb13(32)+abb13(35)
      abb13(32)=abb13(32)*abb13(43)
      abb13(35)=-spbl5k3*abb13(29)
      abb13(37)=16.0_ki*abb13(28)
      abb13(33)=abb13(6)*abb13(33)
      abb13(39)=abb13(9)*abb13(39)
      abb13(33)=abb13(39)+abb13(33)+abb13(28)
      abb13(33)=16.0_ki*abb13(33)
      abb13(28)=-8.0_ki*abb13(28)
      abb13(39)=spbl6k3*spak1l6
      abb13(41)=spbl5k3*spak1l5
      abb13(39)=abb13(39)+abb13(41)
      abb13(41)=abb13(27)*abb13(39)
      abb13(34)=abb13(6)*abb13(34)
      abb13(42)=-abb13(9)*abb13(31)
      abb13(12)=spbk7k3*abb13(12)*abb13(23)
      abb13(23)=abb13(25)*abb13(12)
      abb13(21)=abb13(23)+abb13(42)+abb13(34)+abb13(21)+abb13(41)
      abb13(21)=8.0_ki*abb13(21)
      abb13(23)=abb13(40)*abb13(39)
      abb13(25)=-abb13(6)*abb13(31)
      abb13(14)=abb13(9)*abb13(14)
      abb13(12)=abb13(38)*abb13(12)
      abb13(12)=abb13(12)+abb13(14)+abb13(25)+abb13(18)+abb13(23)
      abb13(12)=8.0_ki*abb13(12)
      abb13(14)=8.0_ki*spak4k7
      abb13(18)=abb13(26)*abb13(14)
      abb13(14)=abb13(24)*abb13(14)
      abb13(11)=abb13(11)*abb13(13)
      abb13(13)=-spak4l5*abb13(11)
      abb13(23)=-spbl6k2*spak4l6*abb13(27)
      abb13(13)=abb13(13)+abb13(23)
      abb13(13)=8.0_ki*abb13(13)
      abb13(11)=-spak4l6*abb13(11)
      abb13(23)=-spbl5k2*spak4l5*abb13(40)
      abb13(11)=abb13(11)+abb13(23)
      abb13(11)=8.0_ki*abb13(11)
      abb13(23)=spbk3k1*abb13(45)
      abb13(24)=spbk3k1*abb13(29)
      abb13(25)=8.0_ki*abb13(27)
      abb13(26)=8.0_ki*abb13(40)
      R2d13=0.0_ki
      rat2 = rat2 + R2d13
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='13' value='", &
          & R2d13, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd13h0
