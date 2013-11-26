module     p0_dbaru_epnebbbarg_abbrevd3h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(31), public :: abb3
   complex(ki), public :: R2d3
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
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=es234**(-1)
      abb3(3)=es56**(-1)
      abb3(4)=spbl5k2**(-1)
      abb3(5)=spbl6k2**(-1)
      abb3(6)=c3*abb3(4)
      abb3(7)=c1*abb3(4)
      abb3(8)=abb3(7)-2.0_ki*abb3(6)
      abb3(9)=spbk3k2**2
      abb3(10)=TR*gW
      abb3(10)=CVDU*i_*mB*abb3(3)*abb3(2)*abb3(1)*abb3(10)**2
      abb3(11)=abb3(10)*NC
      abb3(12)=abb3(9)*abb3(11)
      abb3(8)=abb3(12)*abb3(8)
      abb3(13)=c2-c4
      abb3(9)=abb3(13)*abb3(9)
      abb3(14)=abb3(10)*abb3(4)
      abb3(15)=-abb3(14)*abb3(9)
      abb3(8)=abb3(15)+abb3(8)
      abb3(8)=spak1l6*abb3(8)
      abb3(15)=c3*abb3(5)
      abb3(16)=c1*abb3(5)
      abb3(17)=abb3(16)-2.0_ki*abb3(15)
      abb3(12)=abb3(12)*abb3(17)
      abb3(17)=abb3(10)*abb3(5)
      abb3(9)=-abb3(17)*abb3(9)
      abb3(9)=abb3(9)+abb3(12)
      abb3(9)=spak1l5*abb3(9)
      abb3(8)=abb3(8)+abb3(9)
      abb3(8)=4.0_ki*spak3k4*abb3(8)
      abb3(9)=-2.0_ki*c2+2.0_ki*c4
      abb3(10)=abb3(10)*spbk3k2*spbe7k2
      abb3(12)=abb3(10)*abb3(4)
      abb3(18)=-abb3(12)*abb3(9)
      abb3(19)=abb3(10)*NC
      abb3(20)=abb3(19)*c1
      abb3(21)=abb3(20)*abb3(4)
      abb3(19)=abb3(19)*c3
      abb3(22)=abb3(19)*abb3(4)
      abb3(18)=abb3(21)+abb3(22)+abb3(18)
      abb3(18)=abb3(18)*spal6e7
      abb3(10)=abb3(10)*abb3(5)
      abb3(23)=-abb3(10)*abb3(9)
      abb3(20)=abb3(20)*abb3(5)
      abb3(19)=abb3(19)*abb3(5)
      abb3(23)=abb3(20)+abb3(19)+abb3(23)
      abb3(23)=abb3(23)*spal5e7
      abb3(18)=abb3(18)+abb3(23)
      abb3(23)=spak1k4*abb3(18)
      abb3(24)=-abb3(10)*abb3(13)
      abb3(24)=abb3(20)+abb3(24)-2.0_ki*abb3(19)
      abb3(25)=spak1l5*spak4e7
      abb3(26)=abb3(24)*abb3(25)
      abb3(27)=-abb3(12)*abb3(13)
      abb3(27)=abb3(21)+abb3(27)-2.0_ki*abb3(22)
      abb3(28)=spak1l6*spak4e7
      abb3(29)=abb3(27)*abb3(28)
      abb3(30)=-spak1e7*abb3(13)
      abb3(12)=abb3(12)*abb3(30)
      abb3(31)=2.0_ki*spak1e7
      abb3(21)=abb3(21)*abb3(31)
      abb3(22)=abb3(22)*spak1e7
      abb3(12)=-abb3(21)+abb3(22)+abb3(12)
      abb3(21)=abb3(12)*spak4l6
      abb3(10)=-abb3(10)*abb3(30)
      abb3(20)=abb3(20)*abb3(31)
      abb3(19)=abb3(19)*spak1e7
      abb3(10)=abb3(20)+abb3(10)-abb3(19)
      abb3(19)=abb3(10)*spak4l5
      abb3(19)=-abb3(21)+abb3(19)+2.0_ki*abb3(23)+abb3(26)+abb3(29)
      abb3(19)=4.0_ki*abb3(19)
      abb3(20)=spak2k4*abb3(12)
      abb3(21)=abb3(7)*abb3(31)
      abb3(22)=-spak1e7*abb3(6)
      abb3(21)=abb3(21)+abb3(22)
      abb3(21)=abb3(11)*abb3(21)
      abb3(22)=-abb3(14)*abb3(30)
      abb3(21)=abb3(22)+abb3(21)
      abb3(22)=spbk3k2*spbe7k3*spak3k4
      abb3(21)=abb3(21)*abb3(22)
      abb3(20)=abb3(20)+abb3(21)
      abb3(20)=2.0_ki*abb3(20)
      abb3(21)=-spak2k4*abb3(10)
      abb3(23)=abb3(16)*abb3(31)
      abb3(26)=-spak1e7*abb3(15)
      abb3(23)=abb3(23)+abb3(26)
      abb3(23)=abb3(11)*abb3(23)
      abb3(26)=-abb3(17)*abb3(30)
      abb3(23)=abb3(26)+abb3(23)
      abb3(22)=abb3(23)*abb3(22)
      abb3(21)=abb3(21)+abb3(22)
      abb3(21)=2.0_ki*abb3(21)
      abb3(17)=abb3(17)*spbe7k2
      abb3(22)=abb3(9)*abb3(17)
      abb3(11)=abb3(11)*spbe7k2
      abb3(16)=abb3(11)*abb3(16)
      abb3(15)=abb3(11)*abb3(15)
      abb3(22)=-abb3(15)+abb3(22)-abb3(16)
      abb3(22)=abb3(22)*spal5e7
      abb3(14)=abb3(14)*spbe7k2
      abb3(9)=abb3(9)*abb3(14)
      abb3(7)=abb3(11)*abb3(7)
      abb3(6)=abb3(11)*abb3(6)
      abb3(9)=-abb3(6)+abb3(9)-abb3(7)
      abb3(9)=abb3(9)*spal6e7
      abb3(9)=abb3(22)+abb3(9)
      abb3(9)=abb3(9)*spak1k4
      abb3(11)=abb3(30)*abb3(17)
      abb3(22)=abb3(15)*spak1e7
      abb3(23)=abb3(16)*abb3(31)
      abb3(11)=-abb3(23)+abb3(11)+abb3(22)
      abb3(11)=abb3(11)*spak4l5
      abb3(17)=abb3(13)*abb3(17)
      abb3(15)=-abb3(16)+abb3(17)+2.0_ki*abb3(15)
      abb3(15)=abb3(15)*abb3(25)
      abb3(13)=abb3(13)*abb3(14)
      abb3(13)=-abb3(7)+abb3(13)+2.0_ki*abb3(6)
      abb3(13)=abb3(13)*abb3(28)
      abb3(14)=abb3(30)*abb3(14)
      abb3(6)=abb3(6)*spak1e7
      abb3(7)=abb3(7)*abb3(31)
      abb3(6)=abb3(14)+abb3(6)-abb3(7)
      abb3(6)=abb3(6)*spak4l6
      abb3(6)=abb3(11)+abb3(6)+abb3(15)+abb3(13)+2.0_ki*abb3(9)
      abb3(7)=spbk4k2*abb3(6)
      abb3(9)=-spak1l6*abb3(27)
      abb3(11)=-spak1l5*abb3(24)
      abb3(9)=abb3(9)+abb3(11)
      abb3(9)=spak3e7*abb3(9)
      abb3(11)=2.0_ki*abb3(18)
      abb3(13)=-spak1k3*abb3(11)
      abb3(14)=spak3l6*abb3(12)
      abb3(15)=-spak3l5*abb3(10)
      abb3(7)=abb3(15)+abb3(14)+abb3(13)+abb3(9)+abb3(7)
      abb3(7)=2.0_ki*abb3(7)
      abb3(6)=-spbk4k3*abb3(6)
      abb3(9)=spak1k2*abb3(11)
      abb3(12)=-spak2l6*abb3(12)
      abb3(10)=spak2l5*abb3(10)
      abb3(6)=abb3(10)+abb3(12)+abb3(9)+abb3(6)
      abb3(6)=2.0_ki*abb3(6)
      abb3(9)=-spak3k4*abb3(11)
      abb3(10)=spak2k4*abb3(11)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd3h0
