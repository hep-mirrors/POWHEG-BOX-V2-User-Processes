module     p0_dbaru_epnebbbarg_abbrevd119h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(29), public :: abb119
   complex(ki), public :: R2d119
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
      abb119(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb119(2)=1.0_ki/(es34+es567-es12-es234)
      abb119(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb119(4)=NC**(-1)
      abb119(5)=sqrt2**(-1)
      abb119(6)=spbk7k2**(-1)
      abb119(7)=spak2l6**(-1)
      abb119(8)=sqrt(mB**2)
      abb119(9)=abb119(4)*spbl6k2
      abb119(10)=abb119(9)**2
      abb119(11)=spbl6k2**2
      abb119(10)=abb119(10)+abb119(11)
      abb119(12)=TR*gW
      abb119(12)=CVDU*abb119(12)**2*spal5k7*i_*spak1k4*abb119(5)*abb119(3)*abb1&
      &19(2)*abb119(1)
      abb119(13)=abb119(12)*abb119(6)
      abb119(14)=abb119(13)*abb119(10)
      abb119(15)=spbk3k1*c2
      abb119(16)=abb119(14)*abb119(15)
      abb119(17)=2.0_ki*c1
      abb119(17)=abb119(17)*abb119(13)
      abb119(18)=abb119(17)*abb119(4)
      abb119(19)=abb119(18)*abb119(11)
      abb119(20)=abb119(19)*spbk3k1
      abb119(16)=abb119(16)-abb119(20)
      abb119(16)=abb119(16)*spak1l6
      abb119(21)=spbk4k3*c2
      abb119(22)=abb119(14)*abb119(21)
      abb119(19)=abb119(19)*spbk4k3
      abb119(22)=abb119(22)-abb119(19)
      abb119(22)=abb119(22)*spak4l6
      abb119(16)=abb119(16)+abb119(22)
      abb119(22)=es12-es712+es71
      abb119(16)=abb119(16)*abb119(22)
      abb119(22)=abb119(21)*spbl5k2
      abb119(23)=abb119(14)*abb119(22)
      abb119(19)=abb119(19)*spbl5k2
      abb119(19)=abb119(23)-abb119(19)
      abb119(23)=spak4l6*abb119(19)
      abb119(24)=abb119(15)*spbl5k2
      abb119(14)=abb119(24)*abb119(14)
      abb119(20)=abb119(20)*spbl5k2
      abb119(14)=abb119(14)-abb119(20)
      abb119(20)=spak1l6*abb119(14)
      abb119(20)=abb119(23)+abb119(20)
      abb119(20)=spak2l5*abb119(20)
      abb119(10)=abb119(10)*abb119(12)
      abb119(23)=abb119(10)*abb119(21)
      abb119(25)=abb119(12)*c1
      abb119(25)=2.0_ki*abb119(25)
      abb119(26)=abb119(25)*abb119(4)
      abb119(11)=abb119(11)*abb119(26)
      abb119(27)=-spbk4k3*abb119(11)
      abb119(23)=abb119(23)+abb119(27)
      abb119(23)=spal6k7*abb119(23)
      abb119(19)=-spal5l6*abb119(19)
      abb119(19)=abb119(23)+abb119(19)
      abb119(19)=spak2k4*abb119(19)
      abb119(10)=-abb119(10)*abb119(15)
      abb119(11)=spbk3k1*abb119(11)
      abb119(10)=abb119(10)+abb119(11)
      abb119(10)=spal6k7*abb119(10)
      abb119(11)=spal5l6*abb119(14)
      abb119(10)=abb119(10)+abb119(11)
      abb119(10)=spak1k2*abb119(10)
      abb119(10)=abb119(10)+abb119(20)+abb119(19)+abb119(16)
      abb119(10)=8.0_ki*abb119(10)
      abb119(11)=abb119(4)**2
      abb119(11)=abb119(11)+1.0_ki
      abb119(13)=abb119(11)*abb119(13)
      abb119(14)=spbl6k2*abb119(13)
      abb119(16)=abb119(22)*abb119(14)
      abb119(17)=abb119(17)*abb119(9)
      abb119(19)=spbl5k2*abb119(17)
      abb119(20)=abb119(19)*spbk4k3
      abb119(16)=abb119(16)-abb119(20)
      abb119(20)=abb119(16)*spak4l5
      abb119(23)=abb119(24)*abb119(14)
      abb119(19)=abb119(19)*spbk3k1
      abb119(19)=abb119(23)-abb119(19)
      abb119(23)=abb119(19)*spak1l5
      abb119(11)=abb119(11)*abb119(12)
      abb119(12)=spbl6k2*abb119(11)
      abb119(27)=abb119(12)*abb119(15)
      abb119(9)=abb119(25)*abb119(9)
      abb119(25)=abb119(9)*spbk3k1
      abb119(25)=abb119(27)-abb119(25)
      abb119(27)=abb119(25)*spak1k7
      abb119(12)=abb119(12)*abb119(21)
      abb119(9)=abb119(9)*spbk4k3
      abb119(9)=abb119(12)-abb119(9)
      abb119(12)=abb119(9)*spak4k7
      abb119(12)=abb119(20)+abb119(23)+abb119(27)+abb119(12)
      abb119(12)=16.0_ki*abb119(12)
      abb119(20)=spbk4k3*abb119(17)
      abb119(23)=abb119(14)*abb119(21)
      abb119(20)=abb119(20)-abb119(23)
      abb119(23)=spak4l6*abb119(20)
      abb119(17)=spbk3k1*abb119(17)
      abb119(14)=abb119(14)*abb119(15)
      abb119(14)=abb119(17)-abb119(14)
      abb119(17)=spak1l6*abb119(14)
      abb119(17)=abb119(17)+abb119(23)
      abb119(23)=abb119(7)*abb119(8)*mB
      abb119(17)=abb119(23)*abb119(17)
      abb119(27)=abb119(7)*mB**2
      abb119(27)=abb119(27)-abb119(23)
      abb119(28)=abb119(11)*abb119(21)
      abb119(29)=spbk4k3*abb119(26)
      abb119(28)=abb119(29)-abb119(28)
      abb119(28)=-abb119(28)*abb119(27)
      abb119(9)=abb119(9)+abb119(28)
      abb119(9)=spak4k7*abb119(9)
      abb119(28)=abb119(18)*spbl5k2
      abb119(29)=abb119(28)*spbk4k3
      abb119(22)=abb119(13)*abb119(22)
      abb119(22)=abb119(29)-abb119(22)
      abb119(22)=-abb119(22)*abb119(27)
      abb119(16)=abb119(16)+abb119(22)
      abb119(16)=spak4l5*abb119(16)
      abb119(11)=abb119(11)*abb119(15)
      abb119(22)=spbk3k1*abb119(26)
      abb119(11)=abb119(22)-abb119(11)
      abb119(11)=-abb119(11)*abb119(27)
      abb119(11)=abb119(25)+abb119(11)
      abb119(11)=spak1k7*abb119(11)
      abb119(22)=abb119(28)*spbk3k1
      abb119(24)=abb119(13)*abb119(24)
      abb119(22)=abb119(22)-abb119(24)
      abb119(22)=-abb119(22)*abb119(27)
      abb119(19)=abb119(19)+abb119(22)
      abb119(19)=spak1l5*abb119(19)
      abb119(9)=abb119(19)+abb119(11)+abb119(16)+abb119(9)+abb119(17)
      abb119(9)=16.0_ki*abb119(9)
      abb119(11)=abb119(8)**2
      abb119(11)=8.0_ki*abb119(11)
      abb119(16)=-abb119(20)*abb119(11)
      abb119(17)=abb119(18)*spbk4k3
      abb119(19)=-abb119(13)*abb119(21)
      abb119(17)=abb119(19)+abb119(17)
      abb119(19)=16.0_ki*abb119(23)
      abb119(17)=abb119(17)*abb119(19)
      abb119(11)=-abb119(14)*abb119(11)
      abb119(14)=abb119(18)*spbk3k1
      abb119(13)=-abb119(13)*abb119(15)
      abb119(13)=abb119(13)+abb119(14)
      abb119(13)=abb119(13)*abb119(19)
      R2d119=0.0_ki
      rat2 = rat2 + R2d119
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='119' value='", &
          & R2d119, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd119h6
