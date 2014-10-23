module     p0_dbaru_epnebbbarg_abbrevd124h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(34), public :: abb124
   complex(ki), public :: R2d124
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
      abb124(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb124(2)=1.0_ki/(-es71+es56-es567+es234)
      abb124(3)=NC**(-1)
      abb124(4)=sqrt2**(-1)
      abb124(5)=es56**(-1)
      abb124(6)=spbl5k2**(-1)
      abb124(7)=spbk7k2**(-1)
      abb124(8)=spbl6k2**(-1)
      abb124(9)=c1*abb124(3)
      abb124(10)=c4*abb124(3)**2
      abb124(9)=abb124(9)-abb124(10)
      abb124(10)=TR*gW
      abb124(9)=abb124(9)*abb124(10)**2*CVDU*i_*mB*abb124(5)*abb124(4)*abb124(2&
      &)*abb124(1)
      abb124(10)=-abb124(9)*spak1l5
      abb124(11)=-abb124(7)*abb124(10)
      abb124(12)=spbk3k2**2
      abb124(13)=-abb124(12)*abb124(11)
      abb124(14)=-abb124(9)*spak1l6
      abb124(15)=-abb124(7)*abb124(14)
      abb124(12)=-abb124(12)*abb124(15)
      abb124(16)=spbl6k2*abb124(6)
      abb124(17)=abb124(12)*abb124(16)
      abb124(17)=abb124(13)+abb124(17)
      abb124(17)=spal6k7*abb124(17)
      abb124(18)=spbl5k2*abb124(8)
      abb124(19)=abb124(13)*abb124(18)
      abb124(19)=abb124(12)+abb124(19)
      abb124(19)=spal5k7*abb124(19)
      abb124(12)=abb124(6)*abb124(12)
      abb124(13)=abb124(8)*abb124(13)
      abb124(12)=abb124(12)+abb124(13)
      abb124(13)=spak1k7*spbk2k1
      abb124(12)=abb124(12)*abb124(13)
      abb124(12)=abb124(12)+abb124(17)+abb124(19)
      abb124(12)=8.0_ki*spak3k4*abb124(12)
      abb124(9)=-spbk3k2*abb124(7)*abb124(9)
      abb124(17)=-spak1l5*abb124(9)
      abb124(19)=abb124(18)*abb124(17)
      abb124(9)=-spak1l6*abb124(9)
      abb124(19)=abb124(19)+abb124(9)
      abb124(20)=abb124(19)*spak4l5
      abb124(21)=abb124(16)*abb124(9)
      abb124(21)=abb124(21)+abb124(17)
      abb124(22)=abb124(21)*spak4l6
      abb124(23)=abb124(9)*abb124(6)
      abb124(24)=abb124(17)*abb124(8)
      abb124(25)=abb124(23)+abb124(24)
      abb124(26)=spak1k4*spbk2k1
      abb124(27)=abb124(26)*abb124(25)
      abb124(20)=-abb124(27)+abb124(20)+abb124(22)
      abb124(22)=16.0_ki*abb124(20)
      abb124(20)=8.0_ki*abb124(20)
      abb124(27)=abb124(15)*spbk7k3
      abb124(28)=abb124(27)*abb124(16)
      abb124(29)=abb124(11)*spbk7k3
      abb124(28)=abb124(28)+abb124(29)
      abb124(30)=spak4l6*abb124(28)
      abb124(29)=abb124(29)*abb124(18)
      abb124(27)=abb124(29)+abb124(27)
      abb124(29)=spak4l5*abb124(27)
      abb124(31)=abb124(15)*abb124(6)
      abb124(32)=abb124(11)*abb124(8)
      abb124(31)=abb124(31)+abb124(32)
      abb124(32)=abb124(31)*spbk7k3
      abb124(26)=-abb124(26)*abb124(32)
      abb124(26)=abb124(26)+abb124(30)+abb124(29)
      abb124(26)=16.0_ki*abb124(26)
      abb124(29)=8.0_ki*spak4k7
      abb124(30)=abb124(21)*abb124(29)
      abb124(33)=-abb124(14)*spak4k7
      abb124(34)=-abb124(6)*abb124(33)
      abb124(23)=-spak3k4*abb124(23)
      abb124(23)=abb124(34)+abb124(23)
      abb124(23)=spbl6k2*abb124(23)
      abb124(34)=-abb124(10)*spak4k7
      abb124(17)=-spak3k4*abb124(17)
      abb124(17)=abb124(23)-abb124(34)+abb124(17)
      abb124(17)=8.0_ki*abb124(17)
      abb124(23)=abb124(19)*abb124(29)
      abb124(29)=-abb124(8)*abb124(34)
      abb124(24)=-spak3k4*abb124(24)
      abb124(24)=abb124(29)+abb124(24)
      abb124(24)=spbl5k2*abb124(24)
      abb124(9)=-spak3k4*abb124(9)
      abb124(9)=abb124(24)-abb124(33)+abb124(9)
      abb124(9)=8.0_ki*abb124(9)
      abb124(16)=abb124(15)*abb124(16)
      abb124(16)=abb124(16)+abb124(11)
      abb124(16)=8.0_ki*abb124(16)
      abb124(11)=abb124(11)*abb124(18)
      abb124(11)=abb124(11)+abb124(15)
      abb124(11)=8.0_ki*abb124(11)
      abb124(15)=abb124(25)*abb124(13)
      abb124(18)=abb124(19)*spal5k7
      abb124(19)=abb124(21)*spal6k7
      abb124(15)=abb124(15)+abb124(18)+abb124(19)
      abb124(18)=16.0_ki*abb124(15)
      abb124(15)=8.0_ki*abb124(15)
      abb124(19)=spal6k7*abb124(28)
      abb124(21)=spal5k7*abb124(27)
      abb124(13)=abb124(13)*abb124(32)
      abb124(13)=abb124(13)+abb124(19)+abb124(21)
      abb124(13)=16.0_ki*abb124(13)
      abb124(19)=8.0_ki*spbk2k1
      abb124(21)=spak4k7*abb124(25)*abb124(19)
      abb124(10)=-abb124(10)*abb124(8)
      abb124(14)=-abb124(14)*abb124(6)
      abb124(10)=-abb124(14)-abb124(10)
      abb124(10)=spak4k7*abb124(10)
      abb124(14)=-spak3k4*abb124(25)
      abb124(10)=abb124(10)+abb124(14)
      abb124(10)=abb124(10)*abb124(19)
      abb124(14)=abb124(31)*abb124(19)
      R2d124=0.0_ki
      rat2 = rat2 + R2d124
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='124' value='", &
          & R2d124, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd124h4
