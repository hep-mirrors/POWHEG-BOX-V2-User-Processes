module     p0_dbaru_epnebbbarg_abbrevd304h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(36), public :: abb304
   complex(ki), public :: R2d304
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
      abb304(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb304(2)=1.0_ki/(es34+es567-es12-es234)
      abb304(3)=NC**(-1)
      abb304(4)=sqrt2**(-1)
      abb304(5)=spak2l6**(-1)
      abb304(6)=spbl6k2**(-1)
      abb304(7)=spbk7k2**(-1)
      abb304(8)=sqrt(mB**2)
      abb304(9)=spak2l5**(-1)
      abb304(10)=mB**2
      abb304(11)=abb304(5)*abb304(10)*abb304(6)
      abb304(11)=abb304(11)-1.0_ki
      abb304(12)=spbl5k2**2
      abb304(13)=abb304(11)*abb304(12)
      abb304(14)=c1-c3
      abb304(15)=TR*gW
      abb304(15)=CVDU*i_*spak1k4*abb304(4)*abb304(2)*abb304(1)*abb304(15)**2
      abb304(16)=abb304(15)*spbk3k1
      abb304(17)=abb304(16)*abb304(7)
      abb304(18)=abb304(14)*abb304(13)*abb304(17)*abb304(3)
      abb304(19)=c2-c4
      abb304(20)=abb304(19)*abb304(11)
      abb304(12)=-abb304(12)*abb304(17)*abb304(20)
      abb304(12)=abb304(12)+abb304(18)
      abb304(18)=abb304(12)*spak1l5
      abb304(21)=abb304(14)*abb304(3)
      abb304(21)=abb304(21)-abb304(19)
      abb304(22)=abb304(15)*spbk4k3
      abb304(23)=abb304(22)*abb304(7)
      abb304(13)=-abb304(13)*abb304(23)*abb304(21)
      abb304(24)=abb304(13)*spak4l5
      abb304(18)=abb304(24)-abb304(18)
      abb304(24)=spbl5k2*abb304(11)
      abb304(21)=spak4k7*abb304(21)*abb304(22)*abb304(24)
      abb304(16)=-abb304(16)*abb304(24)
      abb304(22)=-abb304(14)*abb304(3)*abb304(16)
      abb304(16)=abb304(16)*abb304(19)
      abb304(16)=abb304(16)+abb304(22)
      abb304(16)=spak1k7*abb304(16)
      abb304(16)=abb304(18)+abb304(21)+abb304(16)
      abb304(16)=spal6k7*abb304(16)
      abb304(21)=spak1l6*abb304(12)
      abb304(22)=-spak4l6*abb304(13)
      abb304(21)=abb304(21)+abb304(22)
      abb304(22)=2.0_ki*spal5k7
      abb304(21)=abb304(22)*abb304(21)
      abb304(16)=abb304(16)+abb304(21)
      abb304(16)=8.0_ki*abb304(16)
      abb304(15)=abb304(15)*spbl5k2*abb304(7)
      abb304(21)=abb304(15)*spbk4k3
      abb304(24)=abb304(19)*abb304(21)
      abb304(25)=abb304(21)*abb304(3)
      abb304(26)=-abb304(25)*abb304(14)
      abb304(24)=abb304(26)+abb304(24)
      abb304(26)=spak4l6*abb304(24)
      abb304(15)=abb304(15)*spbk3k1
      abb304(27)=abb304(15)*abb304(3)
      abb304(28)=abb304(27)*abb304(14)
      abb304(29)=abb304(19)*abb304(15)
      abb304(28)=-abb304(29)+abb304(28)
      abb304(29)=-spak1l6*abb304(28)
      abb304(26)=abb304(26)+abb304(29)
      abb304(26)=8.0_ki*abb304(26)
      abb304(25)=abb304(14)*abb304(25)*abb304(11)
      abb304(21)=-abb304(21)*abb304(20)
      abb304(21)=abb304(21)+abb304(25)
      abb304(25)=-spak4l6*abb304(21)
      abb304(11)=abb304(14)*abb304(27)*abb304(11)
      abb304(14)=-abb304(15)*abb304(20)
      abb304(11)=abb304(14)+abb304(11)
      abb304(14)=-spak1l6*abb304(11)
      abb304(14)=abb304(25)+abb304(14)
      abb304(14)=16.0_ki*abb304(14)
      abb304(15)=abb304(24)*spak4k7
      abb304(20)=abb304(28)*spak1k7
      abb304(15)=abb304(15)-abb304(20)
      abb304(20)=-4.0_ki*abb304(15)
      abb304(25)=spak4l5*abb304(24)
      abb304(27)=-spak1l5*abb304(28)
      abb304(25)=abb304(25)+abb304(27)
      abb304(25)=4.0_ki*abb304(25)
      abb304(27)=c3*abb304(3)
      abb304(29)=c1*abb304(3)
      abb304(19)=-abb304(29)+abb304(19)+abb304(27)
      abb304(17)=abb304(19)*abb304(17)
      abb304(27)=-mB*abb304(17)
      abb304(29)=abb304(27)*spak1k7
      abb304(19)=abb304(19)*abb304(23)
      abb304(23)=-mB*abb304(19)
      abb304(30)=abb304(23)*spak4k7
      abb304(29)=abb304(29)+abb304(30)
      abb304(30)=abb304(8)*abb304(9)
      abb304(31)=2.0_ki*abb304(30)
      abb304(32)=abb304(29)*abb304(31)
      abb304(33)=abb304(11)*spak1k7
      abb304(34)=abb304(21)*spak4k7
      abb304(33)=abb304(33)+abb304(34)
      abb304(32)=abb304(32)-abb304(33)
      abb304(34)=es12-es712+es71
      abb304(32)=abb304(32)*abb304(34)
      abb304(34)=abb304(24)*mB
      abb304(35)=abb304(34)*abb304(30)
      abb304(13)=abb304(35)-abb304(13)
      abb304(13)=spak2k4*abb304(13)
      abb304(35)=abb304(28)*mB
      abb304(36)=abb304(35)*abb304(30)
      abb304(12)=abb304(36)-abb304(12)
      abb304(12)=spak1k2*abb304(12)
      abb304(12)=abb304(12)+abb304(13)
      abb304(12)=abb304(22)*abb304(12)
      abb304(13)=-spak4k7*abb304(34)
      abb304(22)=spak1k7*abb304(35)
      abb304(13)=abb304(13)+abb304(22)
      abb304(13)=abb304(8)*abb304(13)
      abb304(18)=-spak2k7*abb304(18)
      abb304(12)=abb304(18)+abb304(13)+abb304(12)+abb304(32)
      abb304(12)=4.0_ki*abb304(12)
      abb304(13)=8.0_ki*abb304(15)
      abb304(15)=abb304(10)*abb304(19)
      abb304(18)=spak4k7*abb304(15)
      abb304(10)=abb304(10)*abb304(17)
      abb304(22)=spak1k7*abb304(10)
      abb304(18)=abb304(18)+abb304(22)
      abb304(18)=abb304(9)*abb304(18)
      abb304(22)=abb304(29)*abb304(30)
      abb304(18)=abb304(22)+abb304(18)+abb304(33)
      abb304(18)=8.0_ki*abb304(18)
      abb304(15)=-abb304(9)*abb304(15)
      abb304(22)=abb304(23)*abb304(31)
      abb304(15)=abb304(22)+abb304(15)-abb304(21)
      abb304(15)=spak2k4*abb304(15)
      abb304(10)=abb304(9)*abb304(10)
      abb304(22)=-abb304(27)*abb304(31)
      abb304(10)=abb304(22)+abb304(10)+abb304(11)
      abb304(10)=spak1k2*abb304(10)
      abb304(22)=-spak4k7*abb304(19)
      abb304(23)=-spak1k7*abb304(17)
      abb304(22)=abb304(22)+abb304(23)
      abb304(22)=spbk7l5*abb304(22)
      abb304(10)=2.0_ki*abb304(22)+abb304(15)+abb304(10)
      abb304(10)=4.0_ki*abb304(10)
      abb304(15)=8.0_ki*spal6k7
      abb304(22)=abb304(24)*abb304(15)
      abb304(21)=-abb304(21)*abb304(15)
      abb304(23)=4.0_ki*spal6k7
      abb304(27)=-abb304(24)*abb304(23)
      abb304(29)=8.0_ki*spal5k7
      abb304(24)=abb304(24)*abb304(29)
      abb304(19)=-8.0_ki*abb304(19)
      abb304(30)=-abb304(28)*abb304(15)
      abb304(11)=-abb304(11)*abb304(15)
      abb304(15)=abb304(28)*abb304(23)
      abb304(23)=-abb304(28)*abb304(29)
      abb304(17)=-8.0_ki*abb304(17)
      R2d304=0.0_ki
      rat2 = rat2 + R2d304
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='304' value='", &
          & R2d304, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd304h5
