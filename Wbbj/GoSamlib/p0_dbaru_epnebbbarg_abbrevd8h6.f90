module     p0_dbaru_epnebbbarg_abbrevd8h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(30), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=sqrt(mB**2)
      abb8(3)=sqrt2**(-1)
      abb8(4)=es234**(-1)
      abb8(5)=es567**(-1)
      abb8(6)=spbl5k2**(-1)
      abb8(7)=spbk7k2**(-1)
      abb8(8)=spak2l6**(-1)
      abb8(9)=1.0_ki/(es34+es567-es12-es234)
      abb8(10)=c3+c1
      abb8(11)=abb8(2)*spak1k7
      abb8(12)=abb8(11)*spak2l5
      abb8(13)=-abb8(12)*abb8(10)
      abb8(14)=-c3+2.0_ki*c1
      abb8(15)=abb8(14)*spak1l5
      abb8(16)=abb8(2)*spak2k7
      abb8(17)=abb8(16)*abb8(15)
      abb8(13)=2.0_ki*abb8(13)+abb8(17)
      abb8(17)=mB*abb8(8)
      abb8(13)=abb8(13)*abb8(17)
      abb8(18)=abb8(2)*spak1k2*abb8(17)*spal5k7
      abb8(19)=-c1+2.0_ki*c3
      abb8(20)=-abb8(19)*abb8(18)
      abb8(21)=spbl6k2*mB
      abb8(21)=3.0_ki*abb8(21)
      abb8(11)=abb8(21)*abb8(11)*abb8(6)
      abb8(21)=c3*abb8(11)
      abb8(13)=abb8(21)+abb8(13)+abb8(20)
      abb8(13)=NC*abb8(13)
      abb8(20)=c4-c2
      abb8(12)=-abb8(12)*abb8(20)
      abb8(21)=abb8(20)*spak1l5
      abb8(16)=abb8(16)*abb8(21)
      abb8(12)=4.0_ki*abb8(12)+abb8(16)
      abb8(12)=abb8(12)*abb8(17)
      abb8(11)=abb8(11)-abb8(18)
      abb8(11)=abb8(20)*abb8(11)
      abb8(11)=abb8(13)+abb8(12)+abb8(11)
      abb8(12)=4.0_ki*i_
      abb8(13)=abb8(5)*abb8(1)*abb8(3)*abb8(7)*CVDU
      abb8(12)=abb8(12)*abb8(13)
      abb8(16)=abb8(4)*spak3k4
      abb8(17)=abb8(12)*abb8(16)
      abb8(18)=gW*TR
      abb8(22)=abb8(18)*spbk3k2
      abb8(22)=abb8(22)**2
      abb8(23)=abb8(17)*abb8(22)
      abb8(11)=abb8(11)*abb8(23)
      abb8(24)=abb8(19)*NC
      abb8(24)=abb8(24)+abb8(20)
      abb8(25)=abb8(8)*mB**2
      abb8(13)=-8.0_ki*i_*abb8(22)*abb8(13)*abb8(25)*abb8(16)*abb8(24)*spak1k7*&
      &abb8(6)
      abb8(16)=abb8(14)*NC*spak1l5
      abb8(21)=abb8(21)+abb8(16)
      abb8(22)=-abb8(21)*abb8(23)
      abb8(26)=abb8(9)*spak1k4
      abb8(27)=abb8(26)*spbk4k3
      abb8(28)=abb8(27)*spak4l5
      abb8(29)=-abb8(28)*abb8(14)
      abb8(26)=abb8(26)*spbk3k1
      abb8(15)=-abb8(26)*abb8(15)
      abb8(15)=abb8(15)+abb8(29)
      abb8(15)=NC*abb8(15)
      abb8(28)=-abb8(28)*abb8(20)
      abb8(29)=abb8(20)*abb8(26)
      abb8(30)=-spak1l5*abb8(29)
      abb8(15)=abb8(15)+abb8(30)+abb8(28)
      abb8(15)=spbl6k2*abb8(15)
      abb8(21)=-spbl6k3*abb8(21)
      abb8(14)=-NC*abb8(14)
      abb8(14)=-abb8(20)+abb8(14)
      abb8(14)=spbk3k2*abb8(25)*abb8(14)*abb8(6)*spak1k2
      abb8(14)=abb8(14)+abb8(21)
      abb8(14)=spak3k4*abb8(14)
      abb8(21)=abb8(20)*spak2k4
      abb8(25)=spak1l5*abb8(21)
      abb8(16)=spak2k4*abb8(16)
      abb8(16)=abb8(25)+abb8(16)
      abb8(16)=spbl6k2*abb8(16)
      abb8(14)=abb8(14)+abb8(16)
      abb8(16)=abb8(4)*spbk3k2
      abb8(14)=abb8(14)*abb8(16)
      abb8(14)=abb8(14)+abb8(15)
      abb8(15)=abb8(18)**2
      abb8(12)=abb8(12)*abb8(15)
      abb8(14)=abb8(14)*abb8(12)
      abb8(10)=NC*abb8(10)
      abb8(10)=2.0_ki*abb8(20)+abb8(10)
      abb8(10)=abb8(23)*spak1k7*abb8(10)
      abb8(18)=spbl6k2*spal5k7
      abb8(20)=abb8(20)*abb8(18)
      abb8(19)=abb8(19)*abb8(18)*NC
      abb8(20)=abb8(20)+abb8(19)
      abb8(25)=abb8(12)*abb8(27)*abb8(20)
      abb8(23)=-abb8(23)*spal5k7*abb8(24)
      abb8(15)=spbk3k2*abb8(20)*abb8(15)*abb8(17)
      abb8(17)=-abb8(21)*abb8(18)
      abb8(20)=-spak2k4*abb8(19)
      abb8(17)=abb8(17)+abb8(20)
      abb8(16)=abb8(17)*abb8(16)
      abb8(17)=abb8(29)*abb8(18)
      abb8(18)=abb8(26)*abb8(19)
      abb8(16)=abb8(16)+abb8(17)+abb8(18)
      abb8(12)=abb8(16)*abb8(12)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd8h6
