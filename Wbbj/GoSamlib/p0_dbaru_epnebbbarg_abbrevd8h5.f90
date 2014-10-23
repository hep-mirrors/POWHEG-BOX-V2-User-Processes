module     p0_dbaru_epnebbbarg_abbrevd8h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(31), public :: abb8
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
      abb8(6)=spak2l5**(-1)
      abb8(7)=spbk7k2**(-1)
      abb8(8)=spbl6k2**(-1)
      abb8(9)=1.0_ki/(es34+es567-es12-es234)
      abb8(10)=c2-c4
      abb8(11)=c1*NC
      abb8(12)=c3*NC
      abb8(13)=abb8(12)+abb8(11)-2.0_ki*abb8(10)
      abb8(13)=abb8(13)*spak1k7
      abb8(14)=spak2l6*abb8(13)
      abb8(15)=-abb8(12)-abb8(10)+2.0_ki*abb8(11)
      abb8(16)=spak1k2*abb8(15)*spal6k7
      abb8(14)=abb8(16)+2.0_ki*abb8(14)
      abb8(16)=TR*gW
      abb8(16)=abb8(7)*i_*CVDU*abb8(5)*abb8(3)*abb8(1)*abb8(16)**2
      abb8(17)=abb8(16)*spak3k4*abb8(4)
      abb8(18)=abb8(17)*spbk3k2**2
      abb8(19)=abb8(18)*abb8(6)
      abb8(20)=abb8(19)*mB
      abb8(14)=abb8(20)*abb8(14)
      abb8(21)=abb8(10)+abb8(11)
      abb8(22)=abb8(20)*abb8(21)
      abb8(20)=2.0_ki*abb8(20)
      abb8(20)=-abb8(12)*abb8(20)
      abb8(20)=abb8(20)+abb8(22)
      abb8(20)=spak2k7*spak1l6*abb8(20)
      abb8(22)=-spbl5k2*abb8(10)
      abb8(23)=NC*spbl5k2
      abb8(24)=abb8(23)*c1
      abb8(25)=-abb8(24)-abb8(22)
      abb8(25)=abb8(8)*abb8(25)*mB*abb8(18)*spak1k7
      abb8(14)=3.0_ki*abb8(25)+abb8(20)+abb8(14)
      abb8(14)=4.0_ki*abb8(2)*abb8(14)
      abb8(19)=abb8(8)*abb8(19)*mB**2
      abb8(20)=-8.0_ki*abb8(13)*abb8(19)
      abb8(16)=abb8(16)*spbl5k2
      abb8(25)=abb8(9)*abb8(16)*spak1k4
      abb8(26)=-abb8(25)*abb8(10)
      abb8(27)=abb8(25)*abb8(12)
      abb8(11)=abb8(25)*abb8(11)
      abb8(26)=-abb8(27)+abb8(26)+2.0_ki*abb8(11)
      abb8(28)=-spbk3k1*abb8(26)
      abb8(16)=abb8(16)*spbk3k2*abb8(4)
      abb8(10)=-abb8(10)*abb8(16)
      abb8(16)=NC*abb8(16)
      abb8(29)=abb8(16)*c1
      abb8(16)=abb8(16)*c3
      abb8(30)=2.0_ki*abb8(29)-abb8(16)+abb8(10)
      abb8(30)=spak2k4*abb8(30)
      abb8(15)=abb8(15)*spbl5k3
      abb8(17)=abb8(17)*spbk3k2
      abb8(31)=-abb8(17)*abb8(15)
      abb8(28)=abb8(31)+abb8(30)+abb8(28)
      abb8(28)=spak1l6*abb8(28)
      abb8(26)=-spak4l6*spbk4k3*abb8(26)
      abb8(26)=abb8(26)+abb8(28)
      abb8(26)=4.0_ki*abb8(26)
      abb8(13)=4.0_ki*abb8(18)*abb8(13)
      abb8(18)=abb8(23)*c3
      abb8(18)=2.0_ki*abb8(18)+abb8(22)-abb8(24)
      abb8(18)=4.0_ki*abb8(18)
      abb8(22)=spak1k7*abb8(17)
      abb8(23)=-abb8(22)*abb8(18)
      abb8(11)=abb8(27)-abb8(11)
      abb8(24)=-spbk3k1*abb8(11)
      abb8(27)=-abb8(29)+abb8(16)
      abb8(27)=spak2k4*abb8(27)
      abb8(24)=abb8(27)+abb8(24)
      abb8(24)=spak1k7*abb8(24)
      abb8(11)=spak4k7*spbk4k3*abb8(11)
      abb8(11)=abb8(24)-abb8(11)
      abb8(15)=abb8(22)*abb8(15)
      abb8(11)=abb8(15)+3.0_ki*abb8(11)
      abb8(11)=4.0_ki*abb8(11)
      abb8(12)=2.0_ki*abb8(12)-abb8(21)
      abb8(15)=abb8(12)*abb8(25)*spal6k7
      abb8(21)=4.0_ki*spbk4k3*abb8(15)
      abb8(17)=abb8(17)*spal6k7*abb8(18)
      abb8(10)=abb8(29)-2.0_ki*abb8(16)-abb8(10)
      abb8(10)=spak2k4*spal6k7*abb8(10)
      abb8(15)=spbk3k1*abb8(15)
      abb8(12)=spak2k7*abb8(12)*abb8(19)
      abb8(10)=abb8(12)+abb8(10)+abb8(15)
      abb8(10)=4.0_ki*abb8(10)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd8h5
