module     p0_dbaru_epnebbbarg_abbrevd16h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(41), public :: abb16
   complex(ki), public :: R2d16
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
      abb16(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb16(2)=sqrt2**(-1)
      abb16(3)=es56**(-1)
      abb16(4)=es71**(-1)
      abb16(5)=spak2k7**(-1)
      abb16(6)=spak2l5**(-1)
      abb16(7)=spbl6k2**(-1)
      abb16(8)=spak2l6**(-1)
      abb16(9)=spbl5k2**(-1)
      abb16(10)=NC*c3
      abb16(10)=abb16(10)-c4
      abb16(11)=TR*gW
      abb16(11)=abb16(5)*abb16(11)**2*CVDU*i_*spbk7k1*abb16(4)*abb16(3)*abb16(2&
      &)*abb16(1)
      abb16(12)=-abb16(11)*abb16(10)
      abb16(13)=spbk3k2*spak1k2
      abb16(13)=-abb16(12)*abb16(13)**2
      abb16(14)=mB**2
      abb16(15)=abb16(14)*abb16(7)*abb16(6)
      abb16(16)=abb16(15)*spak3k4
      abb16(17)=abb16(13)*abb16(16)
      abb16(10)=abb16(10)*abb16(11)*spak1k2
      abb16(11)=spbk3k2*abb16(10)
      abb16(18)=spbl5k3*spak3k4
      abb16(19)=abb16(18)*abb16(11)
      abb16(20)=abb16(19)*spak1l6
      abb16(17)=abb16(17)+abb16(20)
      abb16(20)=16.0_ki*abb16(17)
      abb16(21)=abb16(8)*abb16(7)
      abb16(22)=-abb16(14)*abb16(21)
      abb16(22)=abb16(22)-1.0_ki
      abb16(12)=abb16(12)*spak1k2**2
      abb16(23)=-spbk3k2*abb16(12)
      abb16(22)=abb16(22)*abb16(23)*spbl5k2
      abb16(24)=-spak1l5*spbl5k3
      abb16(25)=spbk4k3*spak1k4
      abb16(24)=abb16(25)+abb16(24)
      abb16(25)=-abb16(10)*spbl5k2
      abb16(24)=abb16(25)*abb16(24)
      abb16(26)=3.0_ki*abb16(6)
      abb16(27)=-abb16(23)*abb16(14)*abb16(26)
      abb16(28)=abb16(25)*spak1l6
      abb16(29)=-spbl6k3*abb16(28)
      abb16(30)=spak1l6*spbl5k3
      abb16(31)=-abb16(30)*abb16(10)
      abb16(32)=spbl6k2*abb16(31)
      abb16(22)=2.0_ki*abb16(32)+abb16(29)+abb16(24)+abb16(27)+abb16(22)
      abb16(22)=spak4l6*abb16(22)
      abb16(24)=abb16(23)*abb16(15)
      abb16(27)=-spbl5k2*abb16(24)
      abb16(29)=abb16(30)*abb16(25)
      abb16(27)=abb16(27)+abb16(29)
      abb16(27)=spak4l5*abb16(27)
      abb16(29)=abb16(11)*spak1k4
      abb16(30)=spak2l6*spbl5k2
      abb16(32)=abb16(29)*abb16(30)
      abb16(27)=abb16(32)+abb16(27)
      abb16(17)=abb16(22)-abb16(17)+2.0_ki*abb16(27)
      abb16(17)=4.0_ki*abb16(17)
      abb16(22)=16.0_ki*abb16(15)
      abb16(27)=abb16(29)*abb16(22)
      abb16(32)=abb16(9)*abb16(6)
      abb16(32)=abb16(32)+abb16(21)
      abb16(32)=abb16(32)*abb16(14)*spak3k4
      abb16(33)=-spak3k4-abb16(32)
      abb16(13)=abb16(13)*abb16(33)
      abb16(33)=abb16(11)*spak3k4
      abb16(34)=spbl6k3*spak1l6*abb16(33)
      abb16(19)=spak1l5*abb16(19)
      abb16(13)=abb16(19)+abb16(34)+abb16(13)
      abb16(13)=4.0_ki*abb16(13)
      abb16(19)=8.0_ki*abb16(29)
      abb16(29)=-4.0_ki*abb16(29)
      abb16(32)=-spbl5k3*abb16(32)
      abb16(32)=-abb16(18)+abb16(32)
      abb16(32)=abb16(23)*abb16(32)
      abb16(23)=abb16(23)*abb16(16)
      abb16(34)=-abb16(10)*spak1l6
      abb16(35)=abb16(18)*abb16(34)
      abb16(23)=-2.0_ki*abb16(23)+abb16(35)
      abb16(23)=spbl6k3*abb16(23)
      abb16(35)=spak3k4*spbl5k3**2
      abb16(36)=spak1l5*abb16(10)*abb16(35)
      abb16(23)=abb16(36)+abb16(23)+abb16(32)
      abb16(23)=4.0_ki*abb16(23)
      abb16(32)=-abb16(10)*spak1k4
      abb16(36)=abb16(32)*spbl5k3
      abb16(37)=8.0_ki*abb16(36)
      abb16(36)=-4.0_ki*abb16(36)
      abb16(18)=-abb16(18)*abb16(24)
      abb16(35)=abb16(34)*abb16(35)
      abb16(18)=abb16(18)+abb16(35)
      abb16(18)=8.0_ki*abb16(18)
      abb16(35)=16.0_ki*abb16(28)
      abb16(28)=-4.0_ki*abb16(28)
      abb16(38)=spak1l5*abb16(25)
      abb16(39)=spbl6k2*abb16(34)
      abb16(40)=spak1k3*abb16(11)
      abb16(41)=-spbk4k2*abb16(32)
      abb16(38)=abb16(41)+abb16(40)+abb16(38)+abb16(39)
      abb16(38)=4.0_ki*abb16(38)
      abb16(21)=-spbl5k2*abb16(21)
      abb16(21)=abb16(21)-abb16(26)
      abb16(14)=abb16(14)*abb16(21)
      abb16(14)=-spbl5k2+abb16(14)
      abb16(14)=-abb16(12)*abb16(14)
      abb16(21)=spak1k3*abb16(10)*spbl5k3
      abb16(26)=spbl6l5*abb16(34)
      abb16(32)=-spbl5k4*abb16(32)
      abb16(14)=abb16(32)-3.0_ki*abb16(26)+abb16(21)+abb16(14)
      abb16(14)=4.0_ki*abb16(14)
      abb16(12)=8.0_ki*spbl5k2*abb16(12)*abb16(15)
      abb16(15)=-abb16(24)+abb16(31)
      abb16(15)=4.0_ki*abb16(15)
      abb16(21)=8.0_ki*abb16(33)
      abb16(24)=-abb16(30)*abb16(21)
      abb16(11)=-16.0_ki*abb16(11)*abb16(16)
      abb16(16)=8.0_ki*spak2l6*abb16(25)
      abb16(22)=-abb16(10)*abb16(22)
      abb16(10)=8.0_ki*abb16(10)
      R2d16=0.0_ki
      rat2 = rat2 + R2d16
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='16' value='", &
          & R2d16, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd16h1
