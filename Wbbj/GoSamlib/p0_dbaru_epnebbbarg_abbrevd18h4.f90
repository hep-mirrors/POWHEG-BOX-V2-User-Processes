module     p0_dbaru_epnebbbarg_abbrevd18h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(41), public :: abb18
   complex(ki), public :: R2d18
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
      abb18(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb18(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb18(3)=sqrt2**(-1)
      abb18(4)=es56**(-1)
      abb18(5)=es71**(-1)
      abb18(6)=spbl5k2**(-1)
      abb18(7)=spak2l5**(-1)
      abb18(8)=spak2l6**(-1)
      abb18(9)=spbl6k2**(-1)
      abb18(10)=spbk7k2**(-1)
      abb18(11)=NC**(-1)
      abb18(12)=1.0_ki/(es34+es567-es12-es234)
      abb18(13)=spak1k4*abb18(10)
      abb18(14)=abb18(13)*spbk2k1
      abb18(15)=abb18(14)*c3
      abb18(16)=c3*spak4k7
      abb18(15)=abb18(15)-abb18(16)
      abb18(17)=abb18(15)*NC
      abb18(18)=abb18(14)*c4
      abb18(19)=c4*spak4k7
      abb18(18)=abb18(18)-abb18(19)
      abb18(17)=abb18(17)-abb18(18)
      abb18(20)=TR*gW
      abb18(20)=abb18(4)*i_*CVDU*abb18(3)*abb18(2)*abb18(1)*abb18(20)**2
      abb18(21)=abb18(20)*abb18(5)*spak1k7
      abb18(22)=abb18(21)*mB
      abb18(23)=abb18(22)*abb18(17)
      abb18(24)=-spbl6k3*abb18(23)
      abb18(25)=abb18(22)*abb18(6)
      abb18(26)=-abb18(25)*abb18(15)
      abb18(27)=abb18(26)*NC
      abb18(25)=-abb18(25)*abb18(18)
      abb18(27)=abb18(27)-abb18(25)
      abb18(28)=-spbl6k2*spbl5k3*abb18(27)
      abb18(24)=abb18(24)+abb18(28)
      abb18(24)=spal5l6*abb18(24)
      abb18(21)=abb18(21)*spbk3k2
      abb18(14)=mB*abb18(14)*abb18(21)
      abb18(28)=abb18(21)*spak4k7*mB
      abb18(29)=abb18(28)-abb18(14)
      abb18(29)=c3*abb18(29)
      abb18(30)=-abb18(6)*abb18(29)
      abb18(31)=abb18(30)*NC
      abb18(32)=abb18(6)*c4
      abb18(33)=abb18(32)*abb18(14)
      abb18(28)=c4*abb18(28)
      abb18(34)=abb18(28)*abb18(6)
      abb18(33)=abb18(33)-abb18(34)
      abb18(31)=abb18(31)-abb18(33)
      abb18(21)=abb18(21)*mB**3
      abb18(34)=abb18(21)*abb18(6)**2
      abb18(35)=-abb18(34)*abb18(15)
      abb18(36)=abb18(35)*NC
      abb18(34)=-abb18(34)*abb18(18)
      abb18(36)=abb18(36)-abb18(34)
      abb18(37)=abb18(7)*abb18(36)
      abb18(37)=abb18(37)+abb18(31)
      abb18(37)=spak2l6*spbl6k2*abb18(37)
      abb18(38)=abb18(29)*NC
      abb18(39)=abb18(14)*c4
      abb18(38)=abb18(38)+abb18(39)-abb18(28)
      abb18(39)=abb18(21)*abb18(9)
      abb18(40)=abb18(39)*abb18(17)
      abb18(41)=-abb18(8)*abb18(40)
      abb18(41)=abb18(41)-abb18(38)
      abb18(41)=spak2l5*abb18(41)
      abb18(17)=abb18(17)*abb18(21)*abb18(6)
      abb18(24)=abb18(41)+abb18(37)-2.0_ki*abb18(17)+abb18(24)
      abb18(24)=8.0_ki*abb18(24)
      abb18(34)=abb18(11)*abb18(34)
      abb18(34)=abb18(34)-abb18(35)
      abb18(34)=abb18(11)*abb18(34)
      abb18(34)=abb18(34)-abb18(36)
      abb18(34)=abb18(7)*abb18(34)
      abb18(35)=abb18(39)*abb18(6)
      abb18(36)=-abb18(35)*abb18(18)
      abb18(37)=abb18(36)*abb18(11)
      abb18(35)=-abb18(35)*abb18(15)
      abb18(37)=abb18(37)-abb18(35)
      abb18(37)=abb18(37)*abb18(11)
      abb18(35)=abb18(35)*NC
      abb18(35)=abb18(37)-abb18(35)+abb18(36)
      abb18(36)=abb18(8)*abb18(35)
      abb18(33)=abb18(11)*abb18(33)
      abb18(30)=abb18(33)-abb18(30)
      abb18(30)=abb18(11)*abb18(30)
      abb18(30)=abb18(36)+abb18(34)+abb18(30)-abb18(31)
      abb18(30)=16.0_ki*abb18(30)
      abb18(13)=abb18(13)*abb18(20)*mB
      abb18(19)=abb18(13)*abb18(19)
      abb18(20)=abb18(19)*abb18(11)
      abb18(16)=abb18(13)*abb18(16)
      abb18(20)=abb18(20)-abb18(16)
      abb18(20)=abb18(20)*abb18(11)
      abb18(16)=abb18(16)*NC
      abb18(16)=abb18(20)-abb18(16)+abb18(19)
      abb18(19)=spbk4k3*abb18(12)
      abb18(20)=abb18(19)*abb18(6)*abb18(16)
      abb18(13)=abb18(13)*spak1k7
      abb18(31)=abb18(13)*c3
      abb18(33)=-abb18(6)*abb18(31)
      abb18(34)=abb18(13)*abb18(11)
      abb18(36)=abb18(32)*abb18(34)
      abb18(33)=abb18(33)+abb18(36)
      abb18(33)=abb18(11)*abb18(33)
      abb18(32)=abb18(32)*abb18(13)
      abb18(36)=abb18(31)*NC
      abb18(37)=-abb18(6)*abb18(36)
      abb18(32)=abb18(33)+abb18(32)+abb18(37)
      abb18(33)=spbk3k1*abb18(12)
      abb18(32)=abb18(32)*abb18(33)
      abb18(20)=abb18(32)+abb18(20)
      abb18(20)=spbl6k2*abb18(20)
      abb18(25)=abb18(25)*abb18(11)
      abb18(25)=abb18(25)-abb18(26)
      abb18(25)=abb18(25)*abb18(11)
      abb18(25)=abb18(25)-abb18(27)
      abb18(26)=-spbl6k3*abb18(25)
      abb18(20)=abb18(26)+abb18(20)
      abb18(20)=8.0_ki*abb18(20)
      abb18(23)=spbl5k3*abb18(23)
      abb18(22)=abb18(22)*abb18(9)
      abb18(26)=-abb18(22)*abb18(15)
      abb18(27)=abb18(26)*NC
      abb18(22)=-abb18(22)*abb18(18)
      abb18(27)=abb18(27)-abb18(22)
      abb18(32)=spbl5k2*spbl6k3*abb18(27)
      abb18(23)=abb18(23)+abb18(32)
      abb18(23)=spal5l6*abb18(23)
      abb18(17)=-abb18(7)*abb18(17)
      abb18(17)=abb18(17)-abb18(38)
      abb18(17)=spak2l6*abb18(17)
      abb18(29)=-abb18(9)*abb18(29)
      abb18(32)=abb18(29)*NC
      abb18(37)=abb18(9)*c4
      abb18(14)=abb18(37)*abb18(14)
      abb18(28)=abb18(28)*abb18(9)
      abb18(14)=abb18(14)-abb18(28)
      abb18(28)=abb18(32)-abb18(14)
      abb18(21)=abb18(21)*abb18(9)**2
      abb18(15)=-abb18(21)*abb18(15)
      abb18(32)=abb18(15)*NC
      abb18(18)=-abb18(21)*abb18(18)
      abb18(21)=abb18(32)-abb18(18)
      abb18(32)=abb18(8)*abb18(21)
      abb18(32)=abb18(32)+abb18(28)
      abb18(32)=spak2l5*spbl5k2*abb18(32)
      abb18(17)=abb18(32)+abb18(17)-2.0_ki*abb18(40)+abb18(23)
      abb18(17)=8.0_ki*abb18(17)
      abb18(23)=abb18(7)*abb18(35)
      abb18(18)=abb18(11)*abb18(18)
      abb18(15)=abb18(18)-abb18(15)
      abb18(15)=abb18(11)*abb18(15)
      abb18(15)=abb18(15)-abb18(21)
      abb18(15)=abb18(8)*abb18(15)
      abb18(14)=abb18(11)*abb18(14)
      abb18(14)=abb18(14)-abb18(29)
      abb18(14)=abb18(11)*abb18(14)
      abb18(14)=abb18(15)+abb18(23)+abb18(14)-abb18(28)
      abb18(14)=16.0_ki*abb18(14)
      abb18(15)=abb18(16)*abb18(19)
      abb18(18)=c4*abb18(34)
      abb18(18)=-abb18(31)+abb18(18)
      abb18(18)=abb18(11)*abb18(18)
      abb18(21)=c4*abb18(13)
      abb18(18)=abb18(18)+abb18(21)-abb18(36)
      abb18(18)=abb18(18)*abb18(33)
      abb18(15)=abb18(15)+abb18(18)
      abb18(18)=abb18(22)*abb18(11)
      abb18(18)=abb18(18)-abb18(26)
      abb18(18)=abb18(18)*abb18(11)
      abb18(18)=abb18(18)-abb18(27)
      abb18(21)=-spbl6k3*abb18(18)
      abb18(22)=-spbl5k3*abb18(25)
      abb18(15)=abb18(21)+abb18(22)+2.0_ki*abb18(15)
      abb18(15)=8.0_ki*abb18(15)
      abb18(16)=abb18(19)*abb18(9)*abb18(16)
      abb18(19)=-abb18(9)*abb18(31)
      abb18(21)=abb18(37)*abb18(34)
      abb18(19)=abb18(19)+abb18(21)
      abb18(19)=abb18(11)*abb18(19)
      abb18(13)=abb18(37)*abb18(13)
      abb18(21)=-abb18(9)*abb18(36)
      abb18(13)=abb18(19)+abb18(13)+abb18(21)
      abb18(13)=abb18(13)*abb18(33)
      abb18(13)=abb18(13)+abb18(16)
      abb18(13)=spbl5k2*abb18(13)
      abb18(16)=-spbl5k3*abb18(18)
      abb18(13)=abb18(16)+abb18(13)
      abb18(13)=8.0_ki*abb18(13)
      R2d18=0.0_ki
      rat2 = rat2 + R2d18
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='18' value='", &
          & R2d18, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd18h4
