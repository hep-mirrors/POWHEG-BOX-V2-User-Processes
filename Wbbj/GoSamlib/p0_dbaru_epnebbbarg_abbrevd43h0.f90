module     p0_dbaru_epnebbbarg_abbrevd43h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(37), public :: abb43
   complex(ki), public :: R2d43
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
      abb43(1)=1.0_ki/(-es71+es712-es12)
      abb43(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb43(3)=1.0_ki/(-es71+es56-es567+es234)
      abb43(4)=NC**(-1)
      abb43(5)=sqrt2**(-1)
      abb43(6)=es56**(-1)
      abb43(7)=spbl5k2**(-1)
      abb43(8)=spak2k7**(-1)
      abb43(9)=spbl6k2**(-1)
      abb43(10)=es71+es12
      abb43(11)=abb43(10)-es712
      abb43(12)=-abb43(11)*NC
      abb43(13)=TR*gW
      abb43(13)=abb43(6)*abb43(8)*abb43(13)**2*CVDU*i_*mB*abb43(5)*abb43(3)*abb&
      &43(2)*abb43(1)
      abb43(14)=abb43(13)*c1
      abb43(15)=spbk7k3*abb43(14)
      abb43(16)=abb43(15)*spak1l5
      abb43(17)=abb43(16)*abb43(9)
      abb43(18)=abb43(17)*abb43(12)
      abb43(19)=abb43(4)**2
      abb43(19)=abb43(19)-1.0_ki
      abb43(13)=abb43(19)*abb43(13)
      abb43(19)=spbk7k3*abb43(13)
      abb43(20)=c4*spak1l5
      abb43(21)=abb43(19)*abb43(20)
      abb43(22)=abb43(16)*abb43(4)
      abb43(21)=abb43(21)-abb43(22)
      abb43(22)=-abb43(11)*abb43(21)
      abb43(23)=abb43(9)*abb43(22)
      abb43(18)=abb43(18)+abb43(23)
      abb43(18)=abb43(18)*spbl5k2
      abb43(15)=abb43(15)*spak1l6
      abb43(23)=abb43(15)*abb43(12)
      abb43(24)=c4*spak1l6
      abb43(19)=abb43(19)*abb43(24)
      abb43(25)=abb43(15)*abb43(4)
      abb43(19)=abb43(19)-abb43(25)
      abb43(25)=abb43(19)*abb43(11)
      abb43(18)=abb43(18)+abb43(23)-abb43(25)
      abb43(23)=abb43(18)*spak4l5
      abb43(25)=-abb43(7)*abb43(10)
      abb43(26)=es712*abb43(7)
      abb43(25)=abb43(26)+abb43(25)
      abb43(25)=abb43(19)*abb43(25)
      abb43(15)=abb43(15)*abb43(7)
      abb43(27)=abb43(15)*abb43(12)
      abb43(25)=abb43(27)+abb43(25)
      abb43(25)=abb43(25)*spbl6k2
      abb43(16)=abb43(16)*abb43(12)
      abb43(16)=abb43(25)+abb43(16)+abb43(22)
      abb43(22)=abb43(16)*spak4l6
      abb43(21)=abb43(21)*abb43(9)
      abb43(19)=abb43(19)*abb43(7)
      abb43(19)=abb43(21)+abb43(19)
      abb43(21)=spbk2k1*abb43(11)
      abb43(19)=abb43(21)*abb43(19)
      abb43(15)=abb43(17)+abb43(15)
      abb43(17)=abb43(21)*NC
      abb43(15)=abb43(15)*abb43(17)
      abb43(15)=abb43(15)+abb43(19)
      abb43(19)=abb43(15)*spak1k4
      abb43(19)=abb43(19)+abb43(23)+abb43(22)
      abb43(22)=-4.0_ki*abb43(19)
      abb43(19)=8.0_ki*abb43(19)
      abb43(23)=8.0_ki*spak3k4
      abb43(16)=abb43(16)*abb43(23)
      abb43(18)=abb43(18)*abb43(23)
      abb43(24)=abb43(13)*abb43(24)
      abb43(25)=spak1l6*abb43(14)
      abb43(27)=abb43(25)*abb43(4)
      abb43(24)=abb43(27)-abb43(24)
      abb43(27)=abb43(24)*abb43(7)
      abb43(13)=abb43(13)*abb43(20)
      abb43(14)=spak1l5*abb43(14)
      abb43(20)=abb43(14)*abb43(4)
      abb43(13)=abb43(20)-abb43(13)
      abb43(20)=abb43(13)*abb43(9)
      abb43(28)=abb43(27)+abb43(20)
      abb43(29)=abb43(25)*abb43(7)
      abb43(30)=abb43(14)*abb43(9)
      abb43(31)=abb43(29)+abb43(30)
      abb43(32)=abb43(31)*NC
      abb43(32)=abb43(32)-abb43(28)
      abb43(33)=-es12*abb43(32)
      abb43(34)=abb43(29)*NC
      abb43(34)=abb43(34)-abb43(27)
      abb43(34)=abb43(34)*spbl6k2
      abb43(35)=abb43(14)*NC
      abb43(34)=abb43(34)+abb43(35)-abb43(13)
      abb43(35)=spak2l6*abb43(34)
      abb43(36)=abb43(30)*NC
      abb43(36)=abb43(36)-abb43(20)
      abb43(36)=abb43(36)*spbl5k2
      abb43(37)=abb43(25)*NC
      abb43(36)=abb43(36)+abb43(37)-abb43(24)
      abb43(37)=spak2l5*abb43(36)
      abb43(33)=abb43(37)+abb43(33)+abb43(35)
      abb43(33)=32.0_ki*spbk7k2*abb43(33)
      abb43(10)=abb43(27)*abb43(10)
      abb43(26)=-abb43(24)*abb43(26)
      abb43(27)=abb43(29)*abb43(12)
      abb43(10)=abb43(27)+abb43(26)+abb43(10)
      abb43(10)=spbl6k2*abb43(10)
      abb43(13)=abb43(13)*abb43(11)
      abb43(14)=abb43(14)*abb43(12)
      abb43(10)=abb43(10)+abb43(14)+abb43(13)
      abb43(10)=8.0_ki*abb43(10)
      abb43(13)=abb43(20)*abb43(11)
      abb43(14)=abb43(30)*abb43(12)
      abb43(13)=abb43(14)+abb43(13)
      abb43(13)=spbl5k2*abb43(13)
      abb43(11)=abb43(24)*abb43(11)
      abb43(12)=abb43(25)*abb43(12)
      abb43(11)=abb43(13)+abb43(12)+abb43(11)
      abb43(11)=8.0_ki*abb43(11)
      abb43(12)=spal6k7*abb43(34)
      abb43(13)=spal5k7*abb43(36)
      abb43(14)=spak1k7*spbk2k1*abb43(32)
      abb43(12)=abb43(14)+abb43(12)+abb43(13)
      abb43(12)=16.0_ki*spbk7k2*abb43(12)
      abb43(13)=abb43(28)*abb43(21)
      abb43(14)=-abb43(31)*abb43(17)
      abb43(13)=abb43(14)+abb43(13)
      abb43(13)=8.0_ki*abb43(13)
      abb43(14)=-abb43(15)*abb43(23)
      R2d43=abb43(22)
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd43h0
