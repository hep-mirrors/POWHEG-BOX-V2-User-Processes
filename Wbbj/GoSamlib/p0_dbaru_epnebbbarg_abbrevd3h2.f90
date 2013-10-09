module     p0_dbaru_epnebbbarg_abbrevd3h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
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
      abb3(5)=spak2l6**(-1)
      abb3(6)=TR*gW
      abb3(6)=abb3(6)**2*i_*CVDU*abb3(3)*abb3(1)
      abb3(7)=abb3(6)*NC
      abb3(8)=abb3(7)*c3
      abb3(7)=abb3(7)*c1
      abb3(9)=-abb3(7)+2.0_ki*abb3(8)
      abb3(10)=abb3(5)*abb3(4)
      abb3(11)=mB**2
      abb3(12)=abb3(10)*abb3(11)
      abb3(13)=-abb3(12)*abb3(9)
      abb3(14)=abb3(6)*abb3(10)
      abb3(15)=c2-c4
      abb3(16)=-abb3(14)*abb3(15)
      abb3(17)=abb3(11)*abb3(16)
      abb3(13)=abb3(13)+abb3(17)
      abb3(13)=spak1k2*abb3(2)*abb3(13)*spbk3k2**2
      abb3(17)=abb3(15)*abb3(6)
      abb3(17)=abb3(17)+abb3(9)
      abb3(18)=spbk3k2*abb3(2)
      abb3(19)=spak1l5*abb3(18)*abb3(17)
      abb3(20)=-spbl6k3*abb3(19)
      abb3(13)=abb3(13)+abb3(20)
      abb3(13)=spak3k4*abb3(13)
      abb3(19)=spbl6k2*spak2k4*abb3(19)
      abb3(13)=abb3(19)+abb3(13)
      abb3(13)=4.0_ki*abb3(13)
      abb3(19)=-spak4e7*abb3(9)
      abb3(11)=abb3(11)*spbe7k2
      abb3(10)=abb3(11)*abb3(10)
      abb3(20)=abb3(10)*abb3(18)
      abb3(21)=-abb3(20)*abb3(19)
      abb3(14)=abb3(14)*abb3(11)*abb3(18)
      abb3(22)=abb3(15)*abb3(14)*spak4e7
      abb3(21)=abb3(22)+abb3(21)
      abb3(21)=abb3(21)*spak1k2
      abb3(22)=abb3(18)*spbe7l6
      abb3(23)=abb3(22)*abb3(6)
      abb3(24)=abb3(23)*c4
      abb3(23)=abb3(23)*c2
      abb3(25)=abb3(24)-abb3(23)
      abb3(26)=abb3(7)*abb3(22)
      abb3(22)=abb3(8)*abb3(22)
      abb3(27)=-2.0_ki*abb3(22)+abb3(26)+abb3(25)
      abb3(27)=abb3(27)*spak1l5
      abb3(28)=spak4e7*abb3(27)
      abb3(25)=abb3(26)+abb3(22)-2.0_ki*abb3(25)
      abb3(29)=2.0_ki*spal5e7
      abb3(30)=abb3(29)*spak1k4
      abb3(31)=abb3(25)*abb3(30)
      abb3(22)=abb3(24)+abb3(22)-abb3(23)
      abb3(22)=spak1e7*abb3(22)
      abb3(23)=2.0_ki*spak1e7
      abb3(24)=abb3(23)*abb3(26)
      abb3(22)=-abb3(24)+abb3(22)
      abb3(24)=abb3(22)*spak4l5
      abb3(21)=abb3(31)-abb3(24)+abb3(21)+abb3(28)
      abb3(23)=abb3(23)*abb3(7)
      abb3(24)=abb3(15)*abb3(6)*spak1e7
      abb3(26)=abb3(8)*spak1e7
      abb3(23)=-abb3(24)+abb3(26)-abb3(23)
      abb3(24)=abb3(20)*abb3(23)*spak2k4
      abb3(24)=-abb3(24)+abb3(21)
      abb3(24)=4.0_ki*abb3(24)
      abb3(18)=abb3(23)*abb3(18)
      abb3(26)=spbe7k3*spak3k4
      abb3(12)=-abb3(26)*abb3(12)*abb3(18)
      abb3(12)=abb3(12)+abb3(21)
      abb3(12)=4.0_ki*abb3(12)
      abb3(21)=-spak2k4*spbe7k2
      abb3(21)=abb3(21)+abb3(26)
      abb3(18)=2.0_ki*abb3(18)*abb3(21)
      abb3(21)=abb3(10)*abb3(2)
      abb3(19)=abb3(19)*abb3(21)
      abb3(11)=-abb3(16)*abb3(2)*abb3(11)*spak4e7
      abb3(11)=abb3(19)-abb3(11)
      abb3(11)=abb3(11)*spak1k2
      abb3(6)=2.0_ki*abb3(6)
      abb3(6)=-abb3(15)*abb3(6)
      abb3(6)=-abb3(6)+abb3(8)+abb3(7)
      abb3(7)=spbe7l6*abb3(2)
      abb3(6)=abb3(30)*abb3(7)*abb3(6)
      abb3(8)=spak1l5*abb3(17)*abb3(7)*spak4e7
      abb3(7)=spak4l5*abb3(23)*abb3(7)
      abb3(6)=-abb3(6)+abb3(11)+abb3(8)+abb3(7)
      abb3(7)=-spbk4k2*abb3(6)
      abb3(8)=abb3(20)*abb3(9)
      abb3(9)=abb3(14)*abb3(15)
      abb3(8)=abb3(9)+abb3(8)
      abb3(8)=spak1k2*abb3(8)
      abb3(8)=abb3(27)+abb3(8)
      abb3(8)=spak3e7*abb3(8)
      abb3(9)=-spak3l5*abb3(22)
      abb3(11)=abb3(25)*abb3(29)
      abb3(14)=spak1k3*abb3(11)
      abb3(10)=abb3(10)*abb3(23)
      abb3(15)=abb3(23)*abb3(21)
      abb3(16)=-es34*abb3(15)
      abb3(7)=abb3(16)+abb3(14)+abb3(9)+abb3(8)+abb3(7)+abb3(10)
      abb3(7)=2.0_ki*abb3(7)
      abb3(8)=spak2k4*abb3(15)
      abb3(6)=abb3(8)+abb3(6)
      abb3(6)=spbk4k3*abb3(6)
      abb3(8)=-spak1k2*abb3(11)
      abb3(9)=-spak2e7*abb3(27)
      abb3(10)=spak2l5*abb3(22)
      abb3(6)=abb3(10)+abb3(9)+abb3(8)+abb3(6)
      abb3(6)=2.0_ki*abb3(6)
      abb3(8)=spak3k4*abb3(11)
      abb3(9)=-spak2k4*abb3(11)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd3h2
