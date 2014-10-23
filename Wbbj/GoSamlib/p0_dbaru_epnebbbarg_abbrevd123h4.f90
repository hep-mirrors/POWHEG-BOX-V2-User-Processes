module     p0_dbaru_epnebbbarg_abbrevd123h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(37), public :: abb123
   complex(ki), public :: R2d123
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
      abb123(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb123(2)=1.0_ki/(-es71+es56-es567+es234)
      abb123(3)=sqrt2**(-1)
      abb123(4)=es56**(-1)
      abb123(5)=spbl5k2**(-1)
      abb123(6)=spbk7k2**(-1)
      abb123(7)=spbl6k2**(-1)
      abb123(8)=spal5k7*spak3k4
      abb123(9)=spbl5k2*abb123(7)
      abb123(10)=abb123(8)*abb123(9)
      abb123(11)=spal6k7*spak3k4
      abb123(10)=abb123(10)+abb123(11)
      abb123(12)=NC*c1
      abb123(12)=abb123(12)-c4
      abb123(13)=TR*gW
      abb123(13)=abb123(13)**2*CVDU*i_*mB*abb123(4)*abb123(3)*abb123(2)*abb123(&
      &1)
      abb123(14)=abb123(12)*abb123(13)
      abb123(15)=-abb123(6)*abb123(14)
      abb123(16)=-spak1l5*abb123(15)
      abb123(17)=spbk3k2**2
      abb123(18)=-abb123(17)*abb123(16)
      abb123(19)=abb123(18)*abb123(10)
      abb123(20)=spbl6k2*abb123(5)
      abb123(11)=abb123(11)*abb123(20)
      abb123(8)=abb123(11)+abb123(8)
      abb123(11)=-spak1l6*abb123(15)
      abb123(15)=-abb123(17)*abb123(11)
      abb123(17)=abb123(15)*abb123(8)
      abb123(18)=abb123(18)*spak3k4
      abb123(21)=abb123(18)*abb123(7)
      abb123(22)=abb123(5)*spak3k4
      abb123(23)=abb123(22)*abb123(15)
      abb123(21)=abb123(21)+abb123(23)
      abb123(23)=spak1k7*spbk2k1
      abb123(24)=abb123(21)*abb123(23)
      abb123(17)=abb123(24)+abb123(17)+abb123(19)
      abb123(19)=-es712+es12+es71
      abb123(19)=8.0_ki*abb123(17)*abb123(19)
      abb123(24)=-16.0_ki*abb123(17)
      abb123(12)=abb123(12)*abb123(13)*spbk3k2
      abb123(13)=spak1l5*abb123(12)
      abb123(25)=abb123(13)*abb123(7)
      abb123(12)=spak1l6*abb123(12)
      abb123(26)=abb123(12)*abb123(5)
      abb123(25)=abb123(25)+abb123(26)
      abb123(25)=abb123(25)*abb123(23)
      abb123(26)=abb123(9)*spal5k7
      abb123(26)=abb123(26)+spal6k7
      abb123(13)=abb123(13)*abb123(26)
      abb123(27)=abb123(20)*spal6k7
      abb123(27)=abb123(27)+spal5k7
      abb123(12)=abb123(12)*abb123(27)
      abb123(12)=abb123(25)+abb123(12)+abb123(13)
      abb123(13)=2.0_ki*spak4k7
      abb123(13)=abb123(13)*abb123(12)
      abb123(13)=abb123(13)-abb123(17)
      abb123(17)=8.0_ki*abb123(13)
      abb123(13)=-4.0_ki*abb123(13)
      abb123(25)=-spbk3k2*abb123(16)
      abb123(10)=-abb123(25)*abb123(10)
      abb123(28)=-spbk3k2*abb123(11)
      abb123(8)=-abb123(28)*abb123(8)
      abb123(29)=abb123(25)*abb123(7)
      abb123(30)=spak3k4*abb123(29)
      abb123(22)=abb123(22)*abb123(28)
      abb123(22)=abb123(30)+abb123(22)
      abb123(30)=-abb123(22)*abb123(23)
      abb123(8)=abb123(30)+abb123(8)+abb123(10)
      abb123(8)=spbk7k3*abb123(8)
      abb123(10)=spak2k4*abb123(12)
      abb123(12)=es12*abb123(21)
      abb123(21)=abb123(20)*spak3k4
      abb123(30)=-abb123(15)*abb123(21)
      abb123(30)=-abb123(18)+abb123(30)
      abb123(30)=spak2l6*abb123(30)
      abb123(15)=abb123(15)*spak3k4
      abb123(18)=-abb123(9)*abb123(18)
      abb123(15)=-abb123(15)+abb123(18)
      abb123(15)=spak2l5*abb123(15)
      abb123(8)=abb123(15)+abb123(30)+abb123(8)+abb123(10)+abb123(12)
      abb123(8)=8.0_ki*abb123(8)
      abb123(10)=abb123(28)*abb123(20)
      abb123(10)=abb123(10)+abb123(25)
      abb123(12)=abb123(10)*spak4l6
      abb123(15)=abb123(25)*abb123(9)
      abb123(15)=abb123(15)+abb123(28)
      abb123(18)=abb123(15)*spak4l5
      abb123(30)=abb123(28)*abb123(5)
      abb123(29)=abb123(29)+abb123(30)
      abb123(30)=abb123(29)*spbk2k1
      abb123(31)=abb123(30)*spak1k4
      abb123(12)=-abb123(31)+abb123(12)+abb123(18)
      abb123(18)=-16.0_ki*abb123(12)
      abb123(12)=-8.0_ki*abb123(12)
      abb123(31)=abb123(25)*spak3k4
      abb123(21)=abb123(28)*abb123(21)
      abb123(21)=abb123(31)+abb123(21)
      abb123(21)=8.0_ki*abb123(21)
      abb123(31)=8.0_ki*spak2k4
      abb123(32)=-abb123(10)*abb123(31)
      abb123(33)=8.0_ki*spak3k4*abb123(15)
      abb123(34)=-abb123(15)*abb123(31)
      abb123(35)=-spak1l6*abb123(14)
      abb123(36)=abb123(5)*abb123(35)
      abb123(14)=-spak1l5*abb123(14)
      abb123(37)=abb123(7)*abb123(14)
      abb123(36)=abb123(36)+abb123(37)
      abb123(36)=abb123(36)*abb123(23)
      abb123(35)=abb123(35)*abb123(27)
      abb123(14)=abb123(14)*abb123(26)
      abb123(14)=abb123(36)+abb123(14)+abb123(35)
      abb123(14)=8.0_ki*abb123(14)
      abb123(20)=abb123(11)*abb123(20)
      abb123(20)=abb123(20)+abb123(16)
      abb123(20)=8.0_ki*abb123(20)
      abb123(9)=abb123(16)*abb123(9)
      abb123(9)=abb123(9)+abb123(11)
      abb123(9)=8.0_ki*abb123(9)
      abb123(23)=abb123(29)*abb123(23)
      abb123(27)=abb123(27)*abb123(28)
      abb123(25)=abb123(26)*abb123(25)
      abb123(23)=abb123(23)+abb123(27)+abb123(25)
      abb123(25)=8.0_ki*abb123(23)
      abb123(23)=-4.0_ki*abb123(23)
      abb123(26)=-es12*abb123(29)
      abb123(10)=spak2l6*abb123(10)
      abb123(15)=spak2l5*abb123(15)
      abb123(10)=abb123(15)+abb123(26)+abb123(10)
      abb123(10)=16.0_ki*abb123(10)
      abb123(15)=8.0_ki*spbk2k1
      abb123(22)=abb123(22)*abb123(15)
      abb123(26)=-abb123(30)*abb123(31)
      abb123(11)=abb123(5)*abb123(11)
      abb123(16)=abb123(7)*abb123(16)
      abb123(11)=abb123(11)+abb123(16)
      abb123(11)=abb123(11)*abb123(15)
      R2d123=0.0_ki
      rat2 = rat2 + R2d123
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='123' value='", &
          & R2d123, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd123h4
