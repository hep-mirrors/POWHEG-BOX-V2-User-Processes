module     p0_dbaru_epnebbbarg_abbrevd139h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(40), public :: abb139
   complex(ki), public :: R2d139
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
      abb139(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb139(2)=NC**(-1)
      abb139(3)=sqrt2**(-1)
      abb139(4)=es234**(-1)
      abb139(5)=es56**(-1)
      abb139(6)=es71**(-1)
      abb139(7)=spbl5k2**(-1)
      abb139(8)=spbl6k2**(-1)
      abb139(9)=spbk7k2**(-1)
      abb139(10)=abb139(9)*spbk2k1
      abb139(11)=abb139(10)*spak1l5
      abb139(12)=abb139(11)-spal5k7
      abb139(13)=abb139(2)**2
      abb139(14)=abb139(12)*abb139(13)
      abb139(15)=abb139(14)-abb139(12)
      abb139(15)=abb139(15)*c4
      abb139(12)=abb139(12)*abb139(2)
      abb139(16)=NC*spal5k7
      abb139(12)=abb139(12)+abb139(16)
      abb139(17)=abb139(11)*NC
      abb139(18)=abb139(12)-abb139(17)
      abb139(18)=abb139(18)*c3
      abb139(15)=abb139(15)-abb139(18)
      abb139(15)=abb139(15)*abb139(8)
      abb139(18)=abb139(10)*spak1l6
      abb139(19)=abb139(18)-spal6k7
      abb139(20)=abb139(19)*abb139(13)
      abb139(21)=abb139(20)-abb139(19)
      abb139(21)=abb139(21)*c4
      abb139(19)=abb139(19)*abb139(2)
      abb139(22)=NC*spal6k7
      abb139(19)=abb139(19)+abb139(22)
      abb139(23)=abb139(18)*NC
      abb139(24)=abb139(19)-abb139(23)
      abb139(24)=abb139(24)*c3
      abb139(21)=abb139(21)-abb139(24)
      abb139(21)=abb139(21)*abb139(7)
      abb139(15)=abb139(15)+abb139(21)
      abb139(21)=spak3k4*spbk3k2**2
      abb139(24)=gW*TR
      abb139(24)=abb139(24)**2*abb139(4)*abb139(1)*abb139(3)*abb139(5)*CVDU*mB*&
      &i_
      abb139(25)=abb139(24)*abb139(6)
      abb139(26)=abb139(21)*abb139(25)
      abb139(27)=spak1k7*abb139(26)
      abb139(15)=abb139(15)*abb139(27)
      abb139(28)=4.0_ki*abb139(15)
      abb139(29)=-2.0_ki*abb139(16)+abb139(17)
      abb139(29)=c3*abb139(29)
      abb139(30)=2.0_ki*spal5k7-abb139(11)
      abb139(30)=c4*abb139(30)
      abb139(29)=abb139(29)+abb139(30)
      abb139(29)=abb139(8)*abb139(29)
      abb139(30)=-2.0_ki*abb139(22)+abb139(23)
      abb139(30)=c3*abb139(30)
      abb139(31)=2.0_ki*spal6k7-abb139(18)
      abb139(31)=c4*abb139(31)
      abb139(30)=abb139(30)+abb139(31)
      abb139(30)=abb139(7)*abb139(30)
      abb139(29)=abb139(29)+abb139(30)
      abb139(29)=4.0_ki*abb139(29)*abb139(24)*abb139(21)*spak1k7
      abb139(12)=-abb139(17)-abb139(12)
      abb139(12)=c3*abb139(12)
      abb139(11)=abb139(11)+spal5k7
      abb139(14)=abb139(14)+abb139(11)
      abb139(14)=c4*abb139(14)
      abb139(12)=abb139(12)+abb139(14)
      abb139(12)=abb139(8)*abb139(12)
      abb139(14)=-abb139(23)-abb139(19)
      abb139(14)=c3*abb139(14)
      abb139(18)=abb139(18)+spal6k7
      abb139(19)=abb139(20)+abb139(18)
      abb139(19)=c4*abb139(19)
      abb139(14)=abb139(14)+abb139(19)
      abb139(14)=abb139(7)*abb139(14)
      abb139(12)=abb139(12)+abb139(14)
      abb139(14)=16.0_ki*abb139(27)
      abb139(12)=abb139(12)*abb139(14)
      abb139(19)=c3*NC
      abb139(19)=c4-abb139(19)
      abb139(19)=spbk2k1*abb139(19)
      abb139(20)=abb139(19)*abb139(8)
      abb139(27)=-spak4l5*abb139(20)
      abb139(30)=abb139(19)*abb139(7)
      abb139(31)=-spak4l6*abb139(30)
      abb139(27)=abb139(27)+abb139(31)
      abb139(31)=abb139(25)*spbk3k2
      abb139(32)=32.0_ki*abb139(31)
      abb139(33)=spak1k7**2
      abb139(27)=abb139(27)*abb139(32)*abb139(33)
      abb139(17)=abb139(16)+abb139(17)
      abb139(17)=c3*abb139(17)
      abb139(11)=-c4*abb139(11)
      abb139(11)=abb139(17)+abb139(11)
      abb139(11)=abb139(8)*abb139(11)
      abb139(17)=abb139(22)+abb139(23)
      abb139(17)=c3*abb139(17)
      abb139(18)=-c4*abb139(18)
      abb139(17)=abb139(17)+abb139(18)
      abb139(17)=abb139(7)*abb139(17)
      abb139(11)=abb139(11)+abb139(17)
      abb139(11)=abb139(11)*abb139(14)
      abb139(14)=-8.0_ki*abb139(15)
      abb139(15)=abb139(2)+NC
      abb139(15)=abb139(15)*c3
      abb139(13)=abb139(13)+1.0_ki
      abb139(13)=abb139(13)*c4
      abb139(15)=abb139(15)-abb139(13)
      abb139(17)=abb139(8)*abb139(15)*abb139(9)*spak1l5
      abb139(18)=abb139(7)*abb139(15)*abb139(9)*spak1l6
      abb139(17)=abb139(17)+abb139(18)
      abb139(18)=abb139(21)*abb139(17)
      abb139(21)=-8.0_ki*abb139(24)*abb139(18)
      abb139(17)=32.0_ki*abb139(17)*abb139(26)
      abb139(23)=abb139(8)*spak4l5*abb139(15)
      abb139(24)=abb139(7)*spak4l6*abb139(15)
      abb139(23)=abb139(23)+abb139(24)
      abb139(23)=abb139(23)*abb139(32)*spak1k7
      abb139(24)=16.0_ki*abb139(25)
      abb139(18)=-abb139(24)*abb139(18)
      abb139(10)=abb139(10)*spbk7k3
      abb139(10)=abb139(10)+3.0_ki*spbk3k1
      abb139(25)=abb139(10)*c4
      abb139(10)=c3*NC*abb139(10)
      abb139(10)=abb139(25)-abb139(10)
      abb139(10)=abb139(10)*spak3k4
      abb139(19)=abb139(19)*spak2k4
      abb139(10)=abb139(10)-4.0_ki*abb139(19)
      abb139(19)=abb139(31)*abb139(33)
      abb139(19)=4.0_ki*abb139(19)
      abb139(10)=abb139(10)*abb139(19)
      abb139(19)=abb139(7)*abb139(10)
      abb139(25)=spak2k4*abb139(15)
      abb139(32)=-spak3k4*abb139(15)*abb139(9)*spbk7k3
      abb139(25)=abb139(32)+abb139(25)
      abb139(31)=abb139(31)*spak1k7
      abb139(31)=16.0_ki*abb139(31)
      abb139(25)=abb139(25)*abb139(31)
      abb139(31)=-abb139(7)*abb139(25)
      abb139(10)=abb139(8)*abb139(10)
      abb139(25)=-abb139(8)*abb139(25)
      abb139(32)=spak4l5*spbk4k2
      abb139(34)=-abb139(32)*abb139(20)
      abb139(35)=spak4l6*spbk4k2
      abb139(36)=-abb139(35)*abb139(30)
      abb139(34)=abb139(34)+abb139(36)
      abb139(34)=abb139(34)*abb139(33)
      abb139(36)=-spak3l5*abb139(20)
      abb139(37)=-spak3l6*abb139(30)
      abb139(36)=abb139(36)+abb139(37)
      abb139(37)=abb139(33)*spbk3k2
      abb139(36)=abb139(36)*abb139(37)
      abb139(34)=abb139(34)+abb139(36)
      abb139(34)=abb139(34)*abb139(24)
      abb139(36)=-abb139(8)*spak3l5*abb139(15)
      abb139(38)=-abb139(7)*spak3l6*abb139(15)
      abb139(36)=abb139(36)+abb139(38)
      abb139(36)=spbk3k2*abb139(36)
      abb139(32)=-abb139(8)*abb139(32)*abb139(15)
      abb139(35)=-abb139(7)*abb139(35)*abb139(15)
      abb139(32)=abb139(36)+abb139(32)+abb139(35)
      abb139(35)=abb139(24)*spak1k7
      abb139(32)=abb139(32)*abb139(35)
      abb139(36)=spak4l5*spbk4k3
      abb139(38)=abb139(36)*abb139(20)
      abb139(39)=spak4l6*spbk4k3
      abb139(40)=abb139(39)*abb139(30)
      abb139(38)=abb139(38)+abb139(40)
      abb139(33)=abb139(38)*abb139(33)
      abb139(20)=spak2l5*abb139(20)
      abb139(30)=spak2l6*abb139(30)
      abb139(20)=abb139(20)+abb139(30)
      abb139(20)=abb139(20)*abb139(37)
      abb139(20)=abb139(33)+abb139(20)
      abb139(20)=abb139(20)*abb139(24)
      abb139(24)=abb139(8)*spak2l5*abb139(15)
      abb139(30)=abb139(7)*spak2l6*abb139(15)
      abb139(24)=abb139(24)+abb139(30)
      abb139(24)=spbk3k2*abb139(24)
      abb139(30)=abb139(8)*abb139(36)*abb139(15)
      abb139(15)=abb139(7)*abb139(39)*abb139(15)
      abb139(15)=abb139(24)+abb139(30)+abb139(15)
      abb139(15)=abb139(15)*abb139(35)
      abb139(16)=abb139(9)*abb139(16)
      abb139(24)=abb139(9)*spal5k7
      abb139(30)=abb139(2)*abb139(24)
      abb139(16)=abb139(16)+abb139(30)
      abb139(16)=c3*abb139(16)
      abb139(24)=-abb139(24)*abb139(13)
      abb139(16)=abb139(16)+abb139(24)
      abb139(16)=abb139(8)*abb139(16)
      abb139(22)=abb139(9)*abb139(22)
      abb139(24)=abb139(9)*spal6k7
      abb139(30)=abb139(2)*abb139(24)
      abb139(22)=abb139(22)+abb139(30)
      abb139(22)=c3*abb139(22)
      abb139(13)=-abb139(24)*abb139(13)
      abb139(13)=abb139(22)+abb139(13)
      abb139(13)=abb139(7)*abb139(13)
      abb139(13)=abb139(16)+abb139(13)
      abb139(13)=8.0_ki*abb139(13)*abb139(26)
      R2d139=abb139(28)
      rat2 = rat2 + R2d139
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='139' value='", &
          & R2d139, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd139h4
