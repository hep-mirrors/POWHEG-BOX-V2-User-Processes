module     p0_dbaru_epnebbbarg_abbrevd111h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(44), public :: abb111
   complex(ki), public :: R2d111
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
      abb111(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb111(2)=1.0_ki/(es34+es567-es12-es234)
      abb111(3)=sqrt2**(-1)
      abb111(4)=es56**(-1)
      abb111(5)=spak2l5**(-1)
      abb111(6)=spbk7k2**(-1)
      abb111(7)=spak2l6**(-1)
      abb111(8)=spbl5k2**(-1)
      abb111(9)=spbl6k2**(-1)
      abb111(10)=TR*gW
      abb111(10)=spak1k4*i_*c2*CVDU*abb111(4)*abb111(3)*abb111(10)**2*abb111(2)&
      &*abb111(1)
      abb111(11)=abb111(10)*abb111(6)*mB
      abb111(12)=abb111(11)*spbk3k1
      abb111(13)=abb111(12)*spak1k7
      abb111(11)=abb111(11)*spbk4k3
      abb111(14)=abb111(11)*spak4k7
      abb111(13)=abb111(13)+abb111(14)
      abb111(14)=abb111(13)*spak2l6
      abb111(15)=abb111(5)*spbl6k2**2
      abb111(16)=abb111(15)*abb111(14)
      abb111(17)=abb111(13)*spak2l5
      abb111(18)=spbl5k2**2
      abb111(19)=abb111(18)*abb111(7)
      abb111(20)=abb111(19)*abb111(17)
      abb111(21)=spbl5k2*spbl6k2
      abb111(22)=abb111(21)*abb111(13)
      abb111(16)=abb111(20)+abb111(16)+2.0_ki*abb111(22)
      abb111(20)=es71+es12-es712
      abb111(22)=8.0_ki*abb111(16)*abb111(20)
      abb111(23)=-16.0_ki*abb111(16)
      abb111(24)=abb111(7)*spbl5k2
      abb111(25)=abb111(24)*abb111(12)
      abb111(26)=abb111(5)*spbl6k2
      abb111(27)=abb111(26)*abb111(12)
      abb111(28)=abb111(25)+abb111(27)
      abb111(29)=abb111(28)*spak1k7
      abb111(30)=abb111(24)*abb111(11)
      abb111(31)=abb111(26)*abb111(11)
      abb111(32)=abb111(30)+abb111(31)
      abb111(33)=abb111(32)*spak4k7
      abb111(29)=abb111(29)+abb111(33)
      abb111(33)=2.0_ki*abb111(20)
      abb111(33)=abb111(29)*abb111(33)
      abb111(33)=abb111(33)-abb111(16)
      abb111(33)=8.0_ki*abb111(33)
      abb111(34)=16.0_ki*abb111(29)
      abb111(35)=abb111(30)*spbl6k2
      abb111(36)=abb111(15)*abb111(11)
      abb111(35)=abb111(35)+abb111(36)
      abb111(37)=spak4l6*abb111(35)
      abb111(38)=abb111(31)*spbl5k2
      abb111(39)=abb111(11)*abb111(7)
      abb111(18)=abb111(39)*abb111(18)
      abb111(38)=abb111(38)+abb111(18)
      abb111(40)=spak4l5*abb111(38)
      abb111(41)=abb111(25)*spbl6k2
      abb111(42)=abb111(15)*abb111(12)
      abb111(41)=abb111(41)+abb111(42)
      abb111(42)=spak1l6*abb111(41)
      abb111(43)=abb111(27)*spbl5k2
      abb111(44)=abb111(19)*abb111(12)
      abb111(43)=abb111(43)+abb111(44)
      abb111(44)=spak1l5*abb111(43)
      abb111(37)=abb111(44)+abb111(42)+abb111(40)+abb111(37)
      abb111(37)=spak2k7*abb111(37)
      abb111(35)=spak2k4*abb111(35)
      abb111(40)=-spak1k2*abb111(41)
      abb111(35)=abb111(35)+abb111(40)
      abb111(35)=spal6k7*abb111(35)
      abb111(38)=spak2k4*abb111(38)
      abb111(40)=-spak1k2*abb111(43)
      abb111(38)=abb111(38)+abb111(40)
      abb111(38)=spal5k7*abb111(38)
      abb111(35)=abb111(35)+abb111(38)
      abb111(20)=-3.0_ki*abb111(20)
      abb111(20)=abb111(29)*abb111(20)
      abb111(16)=abb111(37)+abb111(20)+abb111(16)+2.0_ki*abb111(35)
      abb111(16)=4.0_ki*abb111(16)
      abb111(20)=-spak2k4*abb111(36)
      abb111(29)=abb111(12)*spak1k2
      abb111(15)=abb111(15)*abb111(29)
      abb111(15)=abb111(20)+abb111(15)
      abb111(15)=spak2l6*abb111(15)
      abb111(18)=-spak2k4*abb111(18)
      abb111(19)=abb111(19)*abb111(29)
      abb111(18)=abb111(18)+abb111(19)
      abb111(18)=spak2l5*abb111(18)
      abb111(19)=-spbl5k2*abb111(13)
      abb111(14)=-abb111(26)*abb111(14)
      abb111(14)=abb111(14)+abb111(19)
      abb111(14)=spbk7l6*abb111(14)
      abb111(19)=-spbl6k2*abb111(13)
      abb111(17)=-abb111(24)*abb111(17)
      abb111(17)=abb111(17)+abb111(19)
      abb111(17)=spbk7l5*abb111(17)
      abb111(19)=-spak2k4*abb111(11)
      abb111(19)=abb111(19)+abb111(29)
      abb111(19)=abb111(21)*abb111(19)
      abb111(14)=abb111(17)+abb111(14)+abb111(18)+2.0_ki*abb111(19)+abb111(15)
      abb111(14)=8.0_ki*abb111(14)
      abb111(15)=abb111(28)*spak1k2
      abb111(17)=abb111(32)*spak2k4
      abb111(15)=abb111(15)-abb111(17)
      abb111(17)=16.0_ki*abb111(15)
      abb111(18)=spbk7l6*abb111(5)
      abb111(19)=spbk7l5*abb111(7)
      abb111(18)=abb111(19)+abb111(18)
      abb111(13)=abb111(13)*abb111(18)
      abb111(18)=abb111(6)*mB**3
      abb111(19)=abb111(10)*spbk4k3
      abb111(20)=abb111(18)*abb111(19)
      abb111(21)=abb111(20)*spak2k4
      abb111(10)=abb111(10)*spbk3k1
      abb111(18)=abb111(18)*abb111(10)
      abb111(24)=abb111(18)*spak1k2
      abb111(21)=abb111(21)-abb111(24)
      abb111(24)=-abb111(8)*spbl6k2*abb111(5)**2
      abb111(26)=-abb111(9)*spbl5k2*abb111(7)**2
      abb111(24)=abb111(26)+abb111(24)
      abb111(21)=abb111(21)*abb111(24)
      abb111(24)=spak1l6*abb111(7)
      abb111(26)=spak1l5*abb111(5)
      abb111(28)=-abb111(26)+abb111(24)
      abb111(28)=abb111(12)*abb111(28)
      abb111(32)=abb111(39)*spak4l6
      abb111(35)=abb111(11)*abb111(5)
      abb111(36)=abb111(35)*spak4l5
      abb111(28)=-abb111(36)+abb111(32)+abb111(28)
      abb111(28)=spbl6l5*abb111(28)
      abb111(37)=2.0_ki*abb111(5)
      abb111(20)=-abb111(20)*abb111(37)
      abb111(38)=abb111(11)*spbl5k2
      abb111(20)=-3.0_ki*abb111(38)+abb111(20)
      abb111(20)=abb111(7)*abb111(20)
      abb111(20)=-3.0_ki*abb111(31)+abb111(20)
      abb111(20)=spak2k4*abb111(20)
      abb111(18)=abb111(18)*abb111(37)
      abb111(37)=abb111(12)*spbl5k2
      abb111(18)=3.0_ki*abb111(37)+abb111(18)
      abb111(18)=abb111(7)*abb111(18)
      abb111(18)=3.0_ki*abb111(27)+abb111(18)
      abb111(18)=spak1k2*abb111(18)
      abb111(13)=abb111(20)+abb111(18)+abb111(28)+abb111(21)+abb111(13)
      abb111(13)=8.0_ki*abb111(13)
      abb111(15)=-8.0_ki*abb111(15)
      abb111(18)=spak2k4*abb111(39)
      abb111(20)=-abb111(7)*abb111(29)
      abb111(18)=abb111(18)+abb111(20)
      abb111(20)=16.0_ki*spbl6l5
      abb111(18)=abb111(18)*abb111(20)
      abb111(21)=-spak2k4*abb111(35)
      abb111(28)=abb111(5)*abb111(29)
      abb111(21)=abb111(21)+abb111(28)
      abb111(20)=abb111(21)*abb111(20)
      abb111(21)=spak2l6*abb111(31)
      abb111(21)=abb111(38)+abb111(21)
      abb111(21)=8.0_ki*abb111(21)
      abb111(28)=spak2l5*abb111(30)
      abb111(11)=spbl6k2*abb111(11)
      abb111(11)=abb111(11)+abb111(28)
      abb111(11)=8.0_ki*abb111(11)
      abb111(10)=abb111(10)*spak1k7
      abb111(19)=abb111(19)*spak4k7
      abb111(10)=abb111(10)+abb111(19)
      abb111(10)=abb111(10)*mB
      abb111(19)=-abb111(5)*abb111(10)
      abb111(28)=spak4l6*abb111(31)
      abb111(29)=spak1l6*abb111(27)
      abb111(26)=abb111(37)*abb111(26)
      abb111(31)=spbl5k2*abb111(36)
      abb111(19)=abb111(26)+abb111(29)+abb111(31)+3.0_ki*abb111(19)+abb111(28)
      abb111(19)=4.0_ki*abb111(19)
      abb111(24)=abb111(12)*abb111(24)
      abb111(24)=abb111(24)+abb111(32)
      abb111(24)=spbl6k2*abb111(24)
      abb111(10)=-abb111(7)*abb111(10)
      abb111(26)=spak4l5*abb111(30)
      abb111(28)=spak1l5*abb111(25)
      abb111(10)=abb111(28)+abb111(26)+3.0_ki*abb111(10)+abb111(24)
      abb111(10)=4.0_ki*abb111(10)
      abb111(24)=spak2l6*abb111(27)
      abb111(24)=abb111(37)+abb111(24)
      abb111(24)=8.0_ki*abb111(24)
      abb111(25)=spak2l5*abb111(25)
      abb111(12)=spbl6k2*abb111(12)
      abb111(12)=abb111(12)+abb111(25)
      abb111(12)=8.0_ki*abb111(12)
      R2d111=0.0_ki
      rat2 = rat2 + R2d111
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='111' value='", &
          & R2d111, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd111h7
