module     p0_dbaru_epnebbbarg_abbrevd308h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(29), public :: abb308
   complex(ki), public :: R2d308
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
      abb308(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb308(2)=1.0_ki/(es34+es567-es12-es234)
      abb308(3)=NC**(-1)
      abb308(4)=sqrt2**(-1)
      abb308(5)=spbk7k2**(-1)
      abb308(6)=sqrt(mB**2)
      abb308(7)=spak2l5**(-1)
      abb308(8)=spbk3k1*spbl5k2
      abb308(9)=TR*gW
      abb308(9)=abb308(9)**2*CVDU*i_*spak1k4*abb308(5)*abb308(4)*abb308(2)*abb3&
      &08(1)
      abb308(10)=abb308(8)*abb308(9)
      abb308(11)=abb308(10)*spak1l6
      abb308(12)=abb308(9)*spbk4k3
      abb308(13)=abb308(12)*spak4l6
      abb308(14)=spbl5k2*abb308(13)
      abb308(11)=abb308(11)+abb308(14)
      abb308(15)=c2-c4
      abb308(11)=-abb308(11)*abb308(15)
      abb308(16)=abb308(9)*abb308(3)
      abb308(8)=abb308(16)*abb308(8)
      abb308(17)=spak1l6*abb308(8)
      abb308(14)=abb308(14)*abb308(3)
      abb308(14)=abb308(14)+abb308(17)
      abb308(17)=abb308(14)*c3
      abb308(14)=abb308(14)*c1
      abb308(11)=-abb308(14)+abb308(11)+abb308(17)
      abb308(14)=-abb308(11)*spal6k7*spbl6k2
      abb308(17)=es71+es12-es712
      abb308(18)=4.0_ki*abb308(17)
      abb308(19)=-abb308(14)*abb308(18)
      abb308(20)=8.0_ki*abb308(14)
      abb308(14)=4.0_ki*abb308(14)
      abb308(21)=spak2l6*spbl6k2
      abb308(17)=2.0_ki*abb308(21)-abb308(17)
      abb308(17)=4.0_ki*abb308(11)*abb308(17)
      abb308(21)=8.0_ki*abb308(11)
      abb308(22)=16.0_ki*abb308(11)
      abb308(11)=-4.0_ki*abb308(11)
      abb308(10)=abb308(10)*abb308(15)
      abb308(23)=c1-c3
      abb308(8)=abb308(8)*abb308(23)
      abb308(8)=abb308(8)+abb308(10)
      abb308(10)=abb308(8)*spak1k7
      abb308(24)=abb308(12)*abb308(3)
      abb308(25)=-abb308(23)*abb308(24)*spbl5k2
      abb308(12)=abb308(15)*abb308(12)
      abb308(26)=-spbl5k2*abb308(12)
      abb308(25)=abb308(26)+abb308(25)
      abb308(26)=abb308(25)*spak4k7
      abb308(10)=abb308(10)-abb308(26)
      abb308(18)=-abb308(10)*abb308(18)
      abb308(26)=8.0_ki*abb308(10)
      abb308(10)=4.0_ki*abb308(10)
      abb308(27)=-abb308(24)*abb308(23)
      abb308(12)=-abb308(12)+abb308(27)
      abb308(27)=abb308(6)*mB*abb308(7)
      abb308(28)=abb308(12)*abb308(27)
      abb308(25)=abb308(28)+abb308(25)
      abb308(25)=spak2k4*abb308(25)
      abb308(16)=abb308(16)*spbk3k1
      abb308(28)=abb308(16)*abb308(23)
      abb308(9)=abb308(9)*spbk3k1
      abb308(29)=abb308(9)*abb308(15)
      abb308(28)=abb308(29)+abb308(28)
      abb308(27)=abb308(28)*abb308(27)
      abb308(8)=abb308(27)+abb308(8)
      abb308(8)=spak1k2*abb308(8)
      abb308(24)=abb308(24)*spak4l6
      abb308(16)=abb308(16)*spak1l6
      abb308(16)=abb308(24)+abb308(16)
      abb308(16)=-abb308(16)*abb308(23)
      abb308(9)=spak1l6*abb308(9)
      abb308(9)=abb308(13)+abb308(9)
      abb308(9)=-abb308(9)*abb308(15)
      abb308(9)=abb308(9)+abb308(16)
      abb308(9)=spbl6l5*abb308(9)
      abb308(8)=abb308(8)+abb308(9)+abb308(25)
      abb308(8)=8.0_ki*abb308(8)
      abb308(9)=8.0_ki*abb308(12)
      abb308(12)=-8.0_ki*abb308(28)
      R2d308=0.0_ki
      rat2 = rat2 + R2d308
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='308' value='", &
          & R2d308, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd308h5
