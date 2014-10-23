module     p0_dbaru_epnebbbarg_abbrevd305h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(42), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=sqrt2**(-1)
      abb305(6)=spbl6k2**(-1)
      abb305(7)=spbk7k2**(-1)
      abb305(8)=spak2l5**(-1)
      abb305(9)=c1+c3
      abb305(10)=TR*gW
      abb305(10)=CVDU*i_*spak1k4*abb305(5)*abb305(2)*abb305(1)*abb305(10)**2
      abb305(11)=abb305(10)*spbk3k1
      abb305(12)=abb305(9)*abb305(11)*abb305(4)
      abb305(13)=c2*abb305(4)**2
      abb305(14)=abb305(13)*abb305(11)
      abb305(12)=-abb305(14)+abb305(12)
      abb305(15)=abb305(12)*spak1k7
      abb305(9)=abb305(9)*abb305(4)
      abb305(16)=abb305(10)*spbk4k3
      abb305(17)=abb305(16)*abb305(9)
      abb305(18)=abb305(13)*abb305(16)
      abb305(17)=abb305(17)-abb305(18)
      abb305(19)=abb305(17)*spak4k7
      abb305(15)=abb305(15)+abb305(19)
      abb305(19)=spbl5k2**2
      abb305(20)=abb305(19)*mB
      abb305(21)=-abb305(6)*abb305(3)*abb305(20)*abb305(15)
      abb305(13)=abb305(13)*abb305(7)
      abb305(22)=abb305(13)*abb305(16)
      abb305(10)=abb305(10)*abb305(7)*abb305(4)
      abb305(23)=abb305(10)*c1
      abb305(24)=abb305(23)*spbk4k3
      abb305(10)=abb305(10)*c3
      abb305(25)=abb305(10)*spbk4k3
      abb305(22)=-abb305(25)+abb305(22)-abb305(24)
      abb305(24)=abb305(22)*spak4l6
      abb305(13)=abb305(13)*abb305(11)
      abb305(23)=abb305(23)*spbk3k1
      abb305(10)=abb305(10)*spbk3k1
      abb305(10)=-abb305(10)+abb305(13)-abb305(23)
      abb305(13)=abb305(10)*spak1l6
      abb305(13)=abb305(24)+abb305(13)
      abb305(19)=-abb305(19)*abb305(13)
      abb305(23)=-abb305(19)*abb305(3)**2
      abb305(21)=abb305(23)+abb305(21)
      abb305(23)=8.0_ki*spal5k7
      abb305(21)=abb305(21)*abb305(23)
      abb305(19)=abb305(19)*spal5k7
      abb305(24)=-16.0_ki*abb305(19)
      abb305(19)=8.0_ki*abb305(19)
      abb305(25)=spak4l5*abb305(22)
      abb305(26)=spak1l5*abb305(10)
      abb305(25)=abb305(26)+abb305(25)
      abb305(20)=abb305(3)*abb305(20)*abb305(25)
      abb305(16)=abb305(9)*abb305(16)*spbl5k2
      abb305(25)=abb305(18)*spbl5k2
      abb305(25)=abb305(25)-abb305(16)
      abb305(26)=mB**2
      abb305(27)=-abb305(26)*abb305(25)
      abb305(16)=mB*abb305(16)
      abb305(28)=mB*spbl5k2
      abb305(18)=-abb305(18)*abb305(28)
      abb305(16)=abb305(18)+abb305(16)
      abb305(16)=abb305(3)*abb305(16)
      abb305(16)=abb305(16)+abb305(27)
      abb305(16)=spak4k7*abb305(16)
      abb305(9)=abb305(9)*abb305(11)*spbl5k2
      abb305(11)=abb305(14)*spbl5k2
      abb305(11)=abb305(11)-abb305(9)
      abb305(18)=-abb305(26)*abb305(11)
      abb305(9)=mB*abb305(9)
      abb305(14)=-abb305(14)*abb305(28)
      abb305(9)=abb305(14)+abb305(9)
      abb305(9)=abb305(3)*abb305(9)
      abb305(9)=abb305(9)+abb305(18)
      abb305(9)=spak1k7*abb305(9)
      abb305(9)=abb305(9)+abb305(16)+abb305(20)
      abb305(9)=abb305(6)*abb305(9)
      abb305(14)=-spbl5k2*abb305(22)
      abb305(16)=abb305(26)*abb305(8)
      abb305(18)=-abb305(22)*abb305(16)
      abb305(20)=abb305(18)-abb305(14)
      abb305(27)=abb305(20)*spak4l6
      abb305(28)=-spbl5k2*abb305(10)
      abb305(16)=-abb305(10)*abb305(16)
      abb305(29)=abb305(16)-abb305(28)
      abb305(30)=abb305(29)*spak1l6
      abb305(27)=abb305(27)+abb305(30)
      abb305(30)=es71+es12-es712
      abb305(27)=-abb305(27)*abb305(30)
      abb305(31)=abb305(14)*spak4l6
      abb305(32)=abb305(28)*spak1l6
      abb305(31)=abb305(31)+abb305(32)
      abb305(32)=abb305(3)*abb305(31)
      abb305(33)=abb305(14)*mB
      abb305(34)=spak4l6*abb305(33)
      abb305(35)=abb305(28)*mB
      abb305(36)=spak1l6*abb305(35)
      abb305(32)=abb305(32)+abb305(34)+abb305(36)
      abb305(32)=abb305(3)*abb305(32)
      abb305(34)=-spbk7l5*spal5k7*abb305(31)
      abb305(9)=abb305(34)+abb305(32)+abb305(9)+abb305(27)
      abb305(9)=8.0_ki*abb305(9)
      abb305(27)=16.0_ki*abb305(31)
      abb305(32)=abb305(6)*abb305(26)*abb305(15)
      abb305(34)=-abb305(3)*mB*abb305(13)
      abb305(32)=abb305(34)+abb305(32)
      abb305(32)=16.0_ki*abb305(8)*abb305(32)
      abb305(31)=-8.0_ki*abb305(31)
      abb305(34)=-spak4l6*abb305(17)
      abb305(36)=-spak1l6*abb305(12)
      abb305(34)=abb305(34)+abb305(36)
      abb305(34)=8.0_ki*abb305(34)
      abb305(13)=-8.0_ki*spbk7l5*abb305(13)
      abb305(36)=-spak4k7*abb305(25)
      abb305(37)=-spak1k7*abb305(11)
      abb305(36)=abb305(36)+abb305(37)
      abb305(23)=abb305(36)*abb305(23)
      abb305(36)=spak4l5*abb305(14)
      abb305(37)=spak1l5*abb305(28)
      abb305(36)=abb305(37)+abb305(36)-abb305(15)
      abb305(36)=8.0_ki*abb305(36)
      abb305(37)=abb305(20)*spak4k7
      abb305(38)=abb305(29)*spak1k7
      abb305(37)=abb305(37)+abb305(38)
      abb305(37)=8.0_ki*abb305(37)*abb305(30)
      abb305(15)=8.0_ki*abb305(15)
      abb305(38)=-spak2k4*abb305(20)
      abb305(39)=spak1k2*abb305(29)
      abb305(38)=abb305(38)+abb305(39)
      abb305(38)=8.0_ki*abb305(38)
      abb305(39)=8.0_ki*spal6k7
      abb305(40)=abb305(39)*spal5k7
      abb305(25)=abb305(25)*abb305(40)
      abb305(41)=spal6k7*abb305(17)
      abb305(42)=spal5l6*abb305(14)
      abb305(41)=abb305(41)+abb305(42)
      abb305(41)=8.0_ki*abb305(41)
      abb305(22)=16.0_ki*abb305(22)
      abb305(30)=abb305(30)*spal6k7
      abb305(30)=8.0_ki*abb305(30)
      abb305(42)=-abb305(20)*abb305(30)
      abb305(17)=-abb305(17)*abb305(39)
      abb305(14)=-abb305(26)*abb305(14)
      abb305(33)=-abb305(3)*abb305(33)
      abb305(14)=abb305(33)+abb305(14)
      abb305(14)=abb305(6)*abb305(14)
      abb305(20)=spak2l6*abb305(20)
      abb305(14)=abb305(14)+abb305(20)
      abb305(14)=8.0_ki*abb305(14)
      abb305(20)=16.0_ki*abb305(6)
      abb305(18)=-abb305(18)*abb305(20)
      abb305(11)=abb305(11)*abb305(40)
      abb305(33)=spal6k7*abb305(12)
      abb305(40)=spal5l6*abb305(28)
      abb305(33)=abb305(33)+abb305(40)
      abb305(33)=8.0_ki*abb305(33)
      abb305(10)=16.0_ki*abb305(10)
      abb305(30)=-abb305(29)*abb305(30)
      abb305(12)=-abb305(12)*abb305(39)
      abb305(26)=-abb305(26)*abb305(28)
      abb305(28)=-abb305(3)*abb305(35)
      abb305(26)=abb305(28)+abb305(26)
      abb305(26)=abb305(6)*abb305(26)
      abb305(28)=spak2l6*abb305(29)
      abb305(26)=abb305(26)+abb305(28)
      abb305(26)=8.0_ki*abb305(26)
      abb305(16)=-abb305(16)*abb305(20)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd305h5
