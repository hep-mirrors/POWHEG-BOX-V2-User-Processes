module     p0_dbaru_epnebbbarg_abbrevd110h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(42), public :: abb110
   complex(ki), public :: R2d110
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
      abb110(1)=1.0_ki/(-es71+es712-es12)
      abb110(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb110(3)=1.0_ki/(es34+es567-es12-es234)
      abb110(4)=sqrt(mB**2)
      abb110(5)=NC**(-1)
      abb110(6)=sqrt2**(-1)
      abb110(7)=spak2k7**(-1)
      abb110(8)=spak2l5**(-1)
      abb110(9)=spak2l6**(-1)
      abb110(10)=spbl6k2**(-1)
      abb110(11)=abb110(4)*spbk7l6
      abb110(12)=spak1k2*spbk3k1
      abb110(13)=abb110(11)*abb110(12)
      abb110(14)=spak2k4*spbk4k3
      abb110(15)=abb110(11)*abb110(14)
      abb110(13)=abb110(13)-abb110(15)
      abb110(16)=mB**2
      abb110(17)=2.0_ki*c1
      abb110(18)=-abb110(17)*abb110(16)*abb110(13)
      abb110(19)=TR*gW
      abb110(19)=abb110(7)*abb110(19)**2*CVDU*i_*spak1k4*abb110(6)*abb110(3)*ab&
      &b110(2)*abb110(1)
      abb110(20)=abb110(19)*abb110(5)
      abb110(21)=abb110(9)*abb110(20)
      abb110(22)=-abb110(21)*abb110(18)
      abb110(23)=abb110(5)**2
      abb110(23)=abb110(23)+1.0_ki
      abb110(19)=abb110(23)*abb110(19)
      abb110(23)=abb110(16)*abb110(19)
      abb110(24)=abb110(9)*c4
      abb110(15)=abb110(24)*abb110(15)*abb110(23)
      abb110(25)=abb110(23)*abb110(11)
      abb110(26)=abb110(24)*abb110(12)
      abb110(27)=abb110(25)*abb110(26)
      abb110(15)=abb110(22)+abb110(15)-abb110(27)
      abb110(22)=es71+es12-es712
      abb110(27)=abb110(22)*abb110(10)
      abb110(15)=abb110(15)*abb110(27)
      abb110(28)=abb110(14)-abb110(12)
      abb110(29)=abb110(19)*c4
      abb110(30)=abb110(29)*abb110(11)
      abb110(31)=-abb110(30)*abb110(28)
      abb110(32)=abb110(20)*abb110(17)
      abb110(13)=-abb110(13)*abb110(32)
      abb110(13)=abb110(31)+abb110(13)
      abb110(13)=abb110(13)*abb110(22)
      abb110(13)=abb110(15)+abb110(13)
      abb110(13)=spbl5k2*abb110(13)
      abb110(15)=spak4k7*spbk7l5
      abb110(31)=spak4l6*spbl6l5
      abb110(15)=abb110(31)+abb110(15)
      abb110(15)=-abb110(15)*spbk4k3
      abb110(31)=spak1k7*spbk7l5
      abb110(33)=spak1l6*spbl6l5
      abb110(31)=abb110(33)+abb110(31)
      abb110(31)=-abb110(31)*spbk3k1
      abb110(15)=abb110(31)+abb110(15)
      abb110(11)=abb110(32)*abb110(11)
      abb110(11)=abb110(11)-abb110(30)
      abb110(11)=abb110(15)*abb110(22)*abb110(11)
      abb110(15)=-abb110(8)*abb110(20)*abb110(18)
      abb110(18)=-abb110(28)*abb110(8)*c4
      abb110(25)=-abb110(25)*abb110(18)
      abb110(15)=abb110(15)+abb110(25)
      abb110(15)=-abb110(15)*abb110(22)
      abb110(11)=abb110(13)+abb110(15)+abb110(11)
      abb110(11)=8.0_ki*abb110(11)
      abb110(13)=mB*abb110(19)
      abb110(15)=abb110(13)*abb110(24)
      abb110(25)=-abb110(15)*abb110(28)
      abb110(30)=abb110(28)*abb110(17)
      abb110(20)=mB*abb110(20)
      abb110(31)=abb110(20)*abb110(9)
      abb110(33)=-abb110(31)*abb110(30)
      abb110(25)=abb110(33)-abb110(25)
      abb110(33)=abb110(22)*abb110(25)
      abb110(34)=abb110(33)*spbk7l5
      abb110(13)=abb110(18)*abb110(13)
      abb110(18)=abb110(30)*abb110(20)*abb110(8)
      abb110(13)=abb110(13)+abb110(18)
      abb110(18)=-abb110(22)*spbk7l6*abb110(13)
      abb110(20)=abb110(34)+abb110(18)
      abb110(29)=abb110(32)-abb110(29)
      abb110(30)=spbl6l5*spbk7k2
      abb110(28)=abb110(30)*abb110(29)*abb110(28)*abb110(4)
      abb110(28)=abb110(28)-abb110(20)
      abb110(28)=16.0_ki*abb110(28)
      abb110(18)=-16.0_ki*abb110(18)
      abb110(20)=-8.0_ki*abb110(20)
      abb110(32)=-8.0_ki*spbl6l5*abb110(33)
      abb110(33)=abb110(4)*spbk4k3
      abb110(34)=-abb110(33)*abb110(29)
      abb110(35)=8.0_ki*spbk7l5
      abb110(35)=abb110(22)*abb110(35)
      abb110(36)=abb110(34)*abb110(35)
      abb110(37)=abb110(21)*abb110(8)
      abb110(38)=mB**3
      abb110(39)=abb110(37)*abb110(38)
      abb110(40)=abb110(39)*spbk4k3
      abb110(16)=abb110(37)*abb110(16)
      abb110(37)=abb110(16)*abb110(33)
      abb110(37)=abb110(40)+abb110(37)
      abb110(37)=abb110(37)*spak2k4
      abb110(40)=abb110(39)*spbk3k1
      abb110(41)=abb110(4)*spbk3k1
      abb110(16)=abb110(16)*abb110(41)
      abb110(16)=abb110(40)+abb110(16)
      abb110(16)=abb110(16)*spak1k2
      abb110(16)=abb110(37)-abb110(16)
      abb110(16)=abb110(16)*abb110(17)
      abb110(19)=abb110(38)*abb110(19)
      abb110(37)=abb110(24)*abb110(8)
      abb110(40)=abb110(19)*abb110(37)
      abb110(42)=abb110(40)*spbk3k1
      abb110(23)=abb110(37)*abb110(23)
      abb110(37)=abb110(23)*abb110(41)
      abb110(37)=abb110(42)+abb110(37)
      abb110(37)=abb110(37)*spak1k2
      abb110(40)=abb110(40)*spbk4k3
      abb110(23)=abb110(23)*abb110(33)
      abb110(23)=abb110(40)+abb110(23)
      abb110(23)=abb110(23)*spak2k4
      abb110(16)=-abb110(23)+abb110(16)+abb110(37)
      abb110(16)=-abb110(16)*abb110(22)
      abb110(23)=abb110(31)*abb110(17)
      abb110(15)=abb110(23)-abb110(15)
      abb110(23)=-spbk4k3*abb110(15)
      abb110(31)=abb110(22)*abb110(23)
      abb110(33)=-spak4l6*abb110(31)
      abb110(15)=-spbk3k1*abb110(15)
      abb110(37)=abb110(22)*abb110(15)
      abb110(40)=-spak1l6*abb110(37)
      abb110(33)=abb110(40)+abb110(33)
      abb110(33)=spbl6l5*abb110(33)
      abb110(31)=-spbk7l5*abb110(31)
      abb110(34)=-abb110(34)*abb110(30)
      abb110(31)=abb110(31)+abb110(34)
      abb110(31)=spak4k7*abb110(31)
      abb110(34)=-spbk7l5*abb110(37)
      abb110(29)=-abb110(41)*abb110(29)
      abb110(30)=-abb110(29)*abb110(30)
      abb110(30)=abb110(34)+abb110(30)
      abb110(30)=spak1k7*abb110(30)
      abb110(22)=-abb110(22)*abb110(13)
      abb110(34)=-spbl6k2*abb110(22)
      abb110(16)=abb110(34)+abb110(30)+abb110(31)+abb110(33)+abb110(16)
      abb110(16)=8.0_ki*abb110(16)
      abb110(13)=-abb110(13)*spbk7k2
      abb110(30)=8.0_ki*abb110(13)
      abb110(31)=8.0_ki*spbk7k2
      abb110(25)=-abb110(25)*abb110(31)
      abb110(14)=abb110(14)*abb110(8)
      abb110(24)=abb110(24)*abb110(14)
      abb110(26)=abb110(8)*abb110(26)
      abb110(24)=-abb110(24)+abb110(26)
      abb110(19)=abb110(19)*abb110(24)
      abb110(14)=abb110(38)*abb110(14)*abb110(21)
      abb110(12)=abb110(39)*abb110(12)
      abb110(12)=abb110(14)-abb110(12)
      abb110(12)=abb110(12)*abb110(17)
      abb110(12)=abb110(12)+abb110(19)
      abb110(12)=abb110(12)*abb110(27)
      abb110(12)=abb110(22)+abb110(12)
      abb110(12)=abb110(12)*abb110(31)
      abb110(13)=-16.0_ki*abb110(13)
      abb110(14)=-spak4k7*abb110(23)
      abb110(15)=-spak1k7*abb110(15)
      abb110(14)=abb110(14)+abb110(15)
      abb110(14)=abb110(14)*abb110(31)
      abb110(15)=abb110(29)*abb110(35)
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd110h3
