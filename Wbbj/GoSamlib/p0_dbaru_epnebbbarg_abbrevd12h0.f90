module     p0_dbaru_epnebbbarg_abbrevd12h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(42), public :: abb12
   complex(ki), public :: R2d12
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
      abb12(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb12(2)=NC**(-1)
      abb12(3)=sqrt2**(-1)
      abb12(4)=es56**(-1)
      abb12(5)=es71**(-1)
      abb12(6)=spbl5k2**(-1)
      abb12(7)=spak2k7**(-1)
      abb12(8)=spbl6k2**(-1)
      abb12(9)=TR*gW
      abb12(9)=abb12(9)**2*CVDU*i_*mB*abb12(7)*abb12(4)*abb12(3)*abb12(1)
      abb12(10)=abb12(9)*spbk7k1*abb12(5)
      abb12(11)=abb12(10)*c3
      abb12(12)=spak1k2*abb12(2)
      abb12(13)=abb12(11)*abb12(12)
      abb12(14)=abb12(10)*c4
      abb12(15)=abb12(2)**2
      abb12(16)=abb12(14)*abb12(15)
      abb12(17)=abb12(16)*spak1k2
      abb12(13)=abb12(13)-abb12(17)
      abb12(17)=-abb12(8)*abb12(13)
      abb12(18)=spbk3k2**2
      abb12(19)=-abb12(18)*abb12(17)
      abb12(20)=abb12(19)*spak1l5
      abb12(13)=-abb12(6)*abb12(13)
      abb12(18)=-abb12(18)*abb12(13)
      abb12(21)=abb12(18)*spak1l6
      abb12(20)=abb12(20)+abb12(21)
      abb12(21)=-es12*abb12(20)
      abb12(22)=abb12(16)*abb12(6)
      abb12(11)=abb12(11)*abb12(2)
      abb12(23)=abb12(6)*abb12(11)
      abb12(24)=abb12(22)-abb12(23)
      abb12(25)=spbk3k2*spak1k2
      abb12(26)=abb12(25)**2
      abb12(27)=-abb12(26)*abb12(24)
      abb12(28)=spal6k7*spbk7k2
      abb12(29)=abb12(27)*abb12(28)
      abb12(16)=abb12(16)*abb12(8)
      abb12(11)=abb12(8)*abb12(11)
      abb12(30)=abb12(11)-abb12(16)
      abb12(26)=abb12(30)*abb12(26)
      abb12(31)=spal5k7*spbk7k2
      abb12(32)=abb12(26)*abb12(31)
      abb12(21)=abb12(32)+abb12(21)+abb12(29)
      abb12(29)=8.0_ki*spak3k4
      abb12(21)=abb12(21)*abb12(29)
      abb12(20)=16.0_ki*spak3k4*abb12(20)
      abb12(22)=spbk3k2*abb12(22)
      abb12(23)=abb12(23)*spbk3k2
      abb12(22)=abb12(22)-abb12(23)
      abb12(22)=spak1l6*abb12(22)
      abb12(16)=spbk3k2*abb12(16)
      abb12(11)=abb12(11)*spbk3k2
      abb12(16)=abb12(16)-abb12(11)
      abb12(16)=spak1l5*abb12(16)
      abb12(16)=abb12(22)+abb12(16)
      abb12(16)=es12*spak1k4*abb12(16)
      abb12(22)=c3*abb12(2)
      abb12(15)=abb12(15)*c4
      abb12(15)=abb12(22)-abb12(15)
      abb12(10)=-abb12(15)*abb12(25)*abb12(10)
      abb12(22)=-abb12(6)*abb12(10)
      abb12(25)=abb12(22)*spak1k4
      abb12(32)=abb12(25)*abb12(28)
      abb12(10)=-abb12(8)*abb12(10)
      abb12(33)=abb12(10)*spak1k4
      abb12(34)=abb12(33)*abb12(31)
      abb12(16)=abb12(34)+abb12(16)+abb12(32)
      abb12(16)=8.0_ki*abb12(16)
      abb12(27)=-abb12(27)*abb12(29)
      abb12(32)=16.0_ki*abb12(25)
      abb12(26)=-abb12(26)*abb12(29)
      abb12(34)=16.0_ki*abb12(33)
      abb12(35)=abb12(13)*spak1l6
      abb12(36)=abb12(17)*spak1l5
      abb12(35)=abb12(35)+abb12(36)
      abb12(35)=8.0_ki*abb12(35)
      abb12(36)=-spbk7k2*abb12(35)
      abb12(37)=abb12(13)*spbk4k2
      abb12(38)=-spak1k4*abb12(37)
      abb12(39)=spak1k3*abb12(22)
      abb12(9)=spbk7k2*abb12(15)*abb12(9)*spak1k2
      abb12(15)=abb12(6)*abb12(9)
      abb12(15)=abb12(39)+abb12(15)+abb12(38)
      abb12(15)=8.0_ki*abb12(15)
      abb12(38)=abb12(17)*spbk4k2
      abb12(39)=-spak1k4*abb12(38)
      abb12(40)=spak1k3*abb12(10)
      abb12(9)=abb12(8)*abb12(9)
      abb12(9)=abb12(40)+abb12(9)+abb12(39)
      abb12(9)=8.0_ki*abb12(9)
      abb12(39)=abb12(22)*spak1l6
      abb12(40)=abb12(10)*spak1l5
      abb12(39)=abb12(39)+abb12(40)
      abb12(40)=es23-es123+2.0_ki*es12
      abb12(40)=abb12(39)*abb12(40)
      abb12(41)=-spal6k7*abb12(22)
      abb12(42)=-spal5k7*abb12(10)
      abb12(41)=abb12(41)+abb12(42)
      abb12(41)=spak1k3*spbk7k3*abb12(41)
      abb12(42)=spak1k2**2
      abb12(23)=abb12(23)*abb12(42)
      abb12(12)=abb12(12)**2*abb12(14)*spbk3k2
      abb12(14)=abb12(12)*abb12(6)
      abb12(14)=abb12(23)-abb12(14)
      abb12(23)=-abb12(14)*abb12(28)
      abb12(11)=abb12(11)*abb12(42)
      abb12(12)=abb12(12)*abb12(8)
      abb12(11)=abb12(11)-abb12(12)
      abb12(12)=-abb12(11)*abb12(31)
      abb12(12)=abb12(41)+abb12(12)+abb12(23)+abb12(40)
      abb12(12)=8.0_ki*abb12(12)
      abb12(23)=16.0_ki*abb12(39)
      abb12(28)=8.0_ki*abb12(39)
      abb12(14)=16.0_ki*abb12(14)
      abb12(11)=16.0_ki*abb12(11)
      abb12(31)=spbk4k2*abb12(35)
      abb12(25)=spal6k7*abb12(25)
      abb12(33)=spal5k7*abb12(33)
      abb12(25)=abb12(25)+abb12(33)
      abb12(25)=spbk7k3*abb12(25)
      abb12(33)=-spbk3k1*spak1k4*abb12(39)
      abb12(25)=abb12(25)+abb12(33)
      abb12(25)=8.0_ki*abb12(25)
      abb12(18)=spal6k7*abb12(18)
      abb12(19)=spal5k7*abb12(19)
      abb12(18)=abb12(18)+abb12(19)
      abb12(18)=abb12(18)*abb12(29)
      abb12(19)=-abb12(22)*abb12(29)
      abb12(29)=-abb12(10)*abb12(29)
      abb12(33)=abb12(22)*spak4l6
      abb12(35)=abb12(10)*spak4l5
      abb12(33)=abb12(33)+abb12(35)
      abb12(35)=16.0_ki*abb12(33)
      abb12(33)=-8.0_ki*abb12(33)
      abb12(39)=8.0_ki*spak2k4
      abb12(40)=abb12(22)*abb12(39)
      abb12(39)=abb12(10)*abb12(39)
      abb12(24)=-spak1l6*abb12(24)
      abb12(30)=spak1l5*abb12(30)
      abb12(24)=abb12(24)+abb12(30)
      abb12(24)=es12*abb12(24)
      abb12(30)=-spak4l6*abb12(37)
      abb12(37)=-spak4l5*abb12(38)
      abb12(22)=spak3l6*abb12(22)
      abb12(10)=spak3l5*abb12(10)
      abb12(10)=abb12(10)+abb12(22)+abb12(37)+abb12(24)+abb12(30)
      abb12(10)=8.0_ki*abb12(10)
      abb12(13)=-8.0_ki*abb12(13)
      abb12(17)=-8.0_ki*abb12(17)
      R2d12=0.0_ki
      rat2 = rat2 + R2d12
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='12' value='", &
          & R2d12, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd12h0
