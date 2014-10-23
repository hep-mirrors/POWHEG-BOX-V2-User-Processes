module     p0_dbaru_epnebbbarg_abbrevd111h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(30), public :: abb111
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
      abb111(5)=spbk7k2**(-1)
      abb111(6)=spak2l5**(-1)
      abb111(7)=spbl6k2**(-1)
      abb111(8)=spak2l6**(-1)
      abb111(9)=TR*gW
      abb111(9)=CVDU*abb111(9)**2*spak1k4*i_*c2*abb111(4)*abb111(3)*abb111(2)*a&
      &bb111(1)
      abb111(10)=abb111(9)*spbk3k1
      abb111(11)=abb111(10)*spak1k7
      abb111(9)=abb111(9)*spbk4k3
      abb111(12)=abb111(9)*spak4k7
      abb111(11)=abb111(11)+abb111(12)
      abb111(12)=abb111(5)*spbl5k2**2
      abb111(13)=abb111(12)*spal5l6
      abb111(14)=abb111(13)*abb111(11)
      abb111(15)=-es12-es71+es712
      abb111(15)=8.0_ki*abb111(14)*abb111(15)
      abb111(16)=16.0_ki*abb111(14)
      abb111(17)=spbl5k2*abb111(11)
      abb111(18)=spal6k7*abb111(17)
      abb111(18)=2.0_ki*abb111(18)+abb111(14)
      abb111(18)=8.0_ki*abb111(18)
      abb111(19)=spbl5k2*abb111(5)
      abb111(20)=abb111(9)*abb111(19)
      abb111(21)=abb111(20)*spak4l6
      abb111(19)=abb111(10)*abb111(19)
      abb111(22)=abb111(19)*spak1l6
      abb111(21)=abb111(21)+abb111(22)
      abb111(22)=-spbl6k2*abb111(21)
      abb111(23)=spak4l5*abb111(9)
      abb111(24)=spak1l5*abb111(10)
      abb111(23)=abb111(24)+abb111(23)
      abb111(23)=abb111(12)*abb111(23)
      abb111(22)=abb111(22)-3.0_ki*abb111(17)+abb111(23)
      abb111(22)=spal6k7*abb111(22)
      abb111(23)=-spak4l6*abb111(9)
      abb111(24)=-spak1l6*abb111(10)
      abb111(23)=abb111(23)+abb111(24)
      abb111(12)=spal5k7*abb111(12)*abb111(23)
      abb111(12)=2.0_ki*abb111(12)+abb111(22)-abb111(14)
      abb111(12)=4.0_ki*abb111(12)
      abb111(14)=mB**2
      abb111(22)=abb111(14)*abb111(11)
      abb111(23)=abb111(6)*abb111(22)
      abb111(23)=abb111(23)+abb111(17)
      abb111(23)=spak2l6*abb111(23)
      abb111(24)=abb111(20)*spak4k7
      abb111(25)=abb111(19)*spak1k7
      abb111(24)=abb111(24)+abb111(25)
      abb111(25)=spbk7l5*spal5l6*abb111(24)
      abb111(26)=spak2k4*abb111(9)
      abb111(27)=-spak1k2*abb111(10)
      abb111(26)=abb111(27)+abb111(26)
      abb111(13)=abb111(13)*abb111(26)
      abb111(26)=abb111(14)*abb111(7)
      abb111(17)=abb111(17)*abb111(26)
      abb111(13)=abb111(25)+abb111(17)+abb111(23)+abb111(13)
      abb111(13)=8.0_ki*abb111(13)
      abb111(17)=16.0_ki*abb111(21)
      abb111(22)=abb111(7)*abb111(22)
      abb111(23)=abb111(26)*abb111(20)
      abb111(25)=-spak4l5*abb111(23)
      abb111(27)=abb111(26)*abb111(19)
      abb111(28)=-spak1l5*abb111(27)
      abb111(22)=abb111(28)+abb111(25)+abb111(22)
      abb111(22)=abb111(6)*abb111(22)
      abb111(25)=abb111(8)*abb111(26)
      abb111(25)=abb111(25)-1.0_ki
      abb111(25)=abb111(21)*abb111(25)
      abb111(22)=abb111(22)+abb111(25)
      abb111(22)=16.0_ki*abb111(22)
      abb111(21)=-8.0_ki*abb111(21)
      abb111(9)=abb111(9)*abb111(5)
      abb111(25)=abb111(9)*spak4l6
      abb111(10)=abb111(10)*abb111(5)
      abb111(26)=abb111(10)*spak1l6
      abb111(25)=abb111(25)+abb111(26)
      abb111(26)=spbl6k2*abb111(25)
      abb111(28)=spak4l5*abb111(20)
      abb111(29)=spak1l5*abb111(19)
      abb111(26)=abb111(29)+abb111(28)-3.0_ki*abb111(11)+abb111(26)
      abb111(26)=4.0_ki*abb111(26)
      abb111(24)=8.0_ki*abb111(24)
      abb111(14)=abb111(14)*abb111(6)
      abb111(9)=abb111(14)*abb111(9)
      abb111(28)=-5.0_ki*abb111(20)-3.0_ki*abb111(9)
      abb111(28)=spak2k4*abb111(28)
      abb111(10)=abb111(14)*abb111(10)
      abb111(14)=5.0_ki*abb111(19)+3.0_ki*abb111(10)
      abb111(14)=spak1k2*abb111(14)
      abb111(29)=abb111(27)*spak1k2
      abb111(30)=abb111(23)*spak2k4
      abb111(29)=abb111(29)-abb111(30)
      abb111(30)=-abb111(8)*abb111(29)
      abb111(11)=spbk7l5*abb111(5)*abb111(11)
      abb111(25)=spbl6l5*abb111(25)
      abb111(11)=-3.0_ki*abb111(25)+abb111(11)+abb111(30)+abb111(28)+abb111(14)
      abb111(11)=4.0_ki*abb111(11)
      abb111(14)=16.0_ki*abb111(6)*abb111(29)
      abb111(25)=8.0_ki*spal5l6
      abb111(28)=-abb111(20)*abb111(25)
      abb111(9)=2.0_ki*abb111(20)-abb111(9)
      abb111(9)=spak2l6*abb111(9)
      abb111(9)=-abb111(23)+abb111(9)
      abb111(9)=8.0_ki*abb111(9)
      abb111(20)=-abb111(19)*abb111(25)
      abb111(10)=2.0_ki*abb111(19)-abb111(10)
      abb111(10)=spak2l6*abb111(10)
      abb111(10)=-abb111(27)+abb111(10)
      abb111(10)=8.0_ki*abb111(10)
      R2d111=0.0_ki
      rat2 = rat2 + R2d111
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='111' value='", &
          & R2d111, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd111h5
