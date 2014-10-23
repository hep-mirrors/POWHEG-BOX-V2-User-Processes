module     p0_dbaru_epnebbbarg_abbrevd119h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(39), public :: abb119
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
      abb119(6)=spak2k7**(-1)
      abb119(7)=spbl5k2**(-1)
      abb119(8)=sqrt(mB**2)
      abb119(9)=TR*gW
      abb119(9)=abb119(6)*abb119(9)**2*CVDU*i_*spak1k4*abb119(5)*abb119(3)*abb1&
      &19(2)*abb119(1)
      abb119(10)=abb119(9)*abb119(4)
      abb119(11)=2.0_ki*c1
      abb119(12)=abb119(10)*abb119(11)
      abb119(13)=spak2l5*spbk4k3
      abb119(14)=abb119(13)*abb119(12)
      abb119(15)=abb119(14)*spbk7k2
      abb119(16)=abb119(4)**2
      abb119(16)=abb119(16)+1.0_ki
      abb119(17)=abb119(9)*abb119(16)
      abb119(18)=spbk7k2*abb119(17)
      abb119(19)=spak2l5*c2
      abb119(20)=abb119(19)*spbk4k3
      abb119(21)=abb119(18)*abb119(20)
      abb119(15)=abb119(15)-abb119(21)
      abb119(15)=abb119(15)*spak4l6
      abb119(22)=spak2l5*spbk3k1
      abb119(23)=abb119(22)*abb119(12)
      abb119(24)=abb119(23)*spbk7k2
      abb119(25)=abb119(19)*spbk3k1
      abb119(26)=abb119(18)*abb119(25)
      abb119(24)=abb119(24)-abb119(26)
      abb119(24)=abb119(24)*spak1l6
      abb119(15)=abb119(15)+abb119(24)
      abb119(15)=abb119(15)*abb119(8)
      abb119(9)=abb119(9)*spbk7k2*mB
      abb119(16)=abb119(9)*abb119(16)
      abb119(24)=spbk4k3*abb119(7)
      abb119(27)=abb119(24)*c2
      abb119(28)=abb119(16)*abb119(27)
      abb119(9)=abb119(9)*abb119(11)*abb119(4)
      abb119(29)=abb119(9)*abb119(24)
      abb119(28)=abb119(28)-abb119(29)
      abb119(30)=abb119(28)*spak4l6
      abb119(31)=spbk3k1*abb119(7)
      abb119(32)=abb119(31)*c2
      abb119(33)=abb119(16)*abb119(32)
      abb119(34)=abb119(9)*abb119(31)
      abb119(33)=abb119(33)-abb119(34)
      abb119(35)=abb119(33)*spak1l6
      abb119(30)=abb119(30)+abb119(35)
      abb119(35)=es71+es12-es712
      abb119(30)=abb119(35)*abb119(30)
      abb119(36)=abb119(22)*abb119(9)
      abb119(37)=abb119(25)*abb119(16)
      abb119(36)=abb119(36)-abb119(37)
      abb119(37)=abb119(36)*spak1l6
      abb119(9)=abb119(13)*abb119(9)
      abb119(38)=abb119(20)*abb119(16)
      abb119(9)=abb119(9)-abb119(38)
      abb119(38)=abb119(9)*spak4l6
      abb119(15)=abb119(15)+abb119(30)-abb119(37)-abb119(38)
      abb119(30)=-8.0_ki*spak2l6*spbl6k2*abb119(15)
      abb119(15)=16.0_ki*abb119(15)
      abb119(37)=mB*abb119(17)
      abb119(38)=abb119(37)*abb119(27)
      abb119(12)=abb119(12)*mB
      abb119(39)=abb119(12)*abb119(24)
      abb119(38)=abb119(38)-abb119(39)
      abb119(39)=abb119(38)*spak4l6
      abb119(37)=abb119(37)*abb119(32)
      abb119(12)=abb119(12)*abb119(31)
      abb119(12)=abb119(37)-abb119(12)
      abb119(37)=abb119(12)*spak1l6
      abb119(37)=abb119(39)+abb119(37)
      abb119(37)=abb119(37)*abb119(35)
      abb119(20)=abb119(17)*abb119(20)
      abb119(14)=abb119(20)-abb119(14)
      abb119(20)=-spak4l6*abb119(14)
      abb119(17)=abb119(17)*abb119(25)
      abb119(17)=abb119(17)-abb119(23)
      abb119(23)=-spak1l6*abb119(17)
      abb119(20)=abb119(20)+abb119(23)
      abb119(20)=abb119(8)*abb119(20)
      abb119(20)=abb119(20)+abb119(37)
      abb119(20)=spbk7l6*abb119(20)
      abb119(10)=abb119(10)*spbk7k2
      abb119(23)=mB**2
      abb119(25)=abb119(10)*abb119(23)
      abb119(37)=-abb119(24)*abb119(25)
      abb119(13)=-abb119(13)*abb119(10)
      abb119(13)=abb119(37)+abb119(13)
      abb119(13)=abb119(13)*abb119(11)
      abb119(37)=-abb119(8)*abb119(28)
      abb119(18)=abb119(23)*abb119(18)
      abb119(23)=abb119(18)*abb119(27)
      abb119(13)=abb119(37)+abb119(13)+abb119(23)+abb119(21)
      abb119(13)=abb119(8)*abb119(13)
      abb119(21)=-abb119(28)*abb119(35)
      abb119(9)=abb119(13)+abb119(21)+abb119(9)
      abb119(9)=spak2k4*abb119(9)
      abb119(13)=abb119(31)*abb119(25)
      abb119(10)=abb119(22)*abb119(10)
      abb119(10)=abb119(13)+abb119(10)
      abb119(10)=abb119(10)*abb119(11)
      abb119(11)=abb119(8)*abb119(33)
      abb119(13)=-abb119(18)*abb119(32)
      abb119(10)=abb119(11)+abb119(10)+abb119(13)-abb119(26)
      abb119(10)=abb119(8)*abb119(10)
      abb119(11)=abb119(33)*abb119(35)
      abb119(10)=abb119(10)+abb119(11)-abb119(36)
      abb119(10)=spak1k2*abb119(10)
      abb119(11)=abb119(14)*abb119(8)
      abb119(13)=-spak4l5*abb119(11)
      abb119(14)=abb119(17)*abb119(8)
      abb119(17)=-spak1l5*abb119(14)
      abb119(13)=abb119(17)+abb119(13)
      abb119(13)=spbk7l5*abb119(13)
      abb119(17)=abb119(29)*spak2l5
      abb119(16)=abb119(16)*abb119(19)
      abb119(18)=abb119(16)*abb119(24)
      abb119(17)=abb119(17)-abb119(18)
      abb119(18)=spak4l6*abb119(17)
      abb119(19)=abb119(34)*spak2l5
      abb119(16)=abb119(16)*abb119(31)
      abb119(16)=abb119(19)-abb119(16)
      abb119(19)=spak1l6*abb119(16)
      abb119(18)=abb119(18)+abb119(19)
      abb119(18)=spbl6l5*abb119(18)
      abb119(9)=abb119(18)+abb119(10)+abb119(20)+abb119(9)+abb119(13)
      abb119(9)=8.0_ki*abb119(9)
      abb119(10)=-abb119(38)*abb119(35)
      abb119(10)=abb119(11)+abb119(10)
      abb119(10)=8.0_ki*abb119(10)
      abb119(11)=8.0_ki*abb119(17)
      abb119(12)=-abb119(12)*abb119(35)
      abb119(12)=abb119(14)+abb119(12)
      abb119(12)=8.0_ki*abb119(12)
      abb119(13)=8.0_ki*abb119(16)
      R2d119=0.0_ki
      rat2 = rat2 + R2d119
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='119' value='", &
          & R2d119, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd119h0
