module     p0_dbaru_epnebbbar_abbrevd3h3
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(40), public :: abb3
   complex(ki), public :: R2d3
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_color, only: TR
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      implicit none
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=NC**(-1)
      abb3(3)=es56**(-1)
      abb3(4)=spak2l5**(-1)
      abb3(5)=spak2l6**(-1)
      abb3(6)=c2*abb3(2)
      abb3(7)=c1*abb3(2)**2
      abb3(6)=abb3(6)-abb3(7)
      abb3(7)=TR*gW
      abb3(6)=abb3(6)*abb3(7)**2*CVDU*i_*mB*abb3(3)*abb3(1)
      abb3(7)=-spak1k2*abb3(6)
      abb3(8)=-abb3(4)*abb3(7)
      abb3(9)=abb3(8)*spbl6k3
      abb3(7)=-abb3(5)*abb3(7)
      abb3(10)=abb3(7)*spbl5k3
      abb3(9)=abb3(9)+abb3(10)
      abb3(10)=spak3k4*spbk3k2
      abb3(11)=abb3(9)*abb3(10)
      abb3(12)=abb3(8)*spbl6k2
      abb3(13)=abb3(7)*spbl5k2
      abb3(12)=abb3(12)+abb3(13)
      abb3(13)=spak2k4*spbk3k2
      abb3(14)=abb3(13)*abb3(12)
      abb3(11)=abb3(11)-abb3(14)
      abb3(15)=-4.0_ki*es12*abb3(11)
      abb3(16)=8.0_ki*abb3(14)
      abb3(17)=spbk3k1*spak1k4*abb3(12)
      abb3(17)=abb3(17)+abb3(14)
      abb3(17)=8.0_ki*abb3(17)
      abb3(18)=-abb3(4)*abb3(6)
      abb3(19)=spbl6k3*spak1k4
      abb3(20)=abb3(18)*abb3(19)
      abb3(6)=-abb3(5)*abb3(6)
      abb3(21)=spbl5k3*spak1k4
      abb3(22)=abb3(6)*abb3(21)
      abb3(20)=abb3(20)+abb3(22)
      abb3(22)=16.0_ki*abb3(20)
      abb3(11)=8.0_ki*abb3(11)
      abb3(23)=es12*abb3(20)
      abb3(24)=abb3(18)*spak1k4
      abb3(25)=-spbl6k2*abb3(24)
      abb3(26)=abb3(6)*spak1k4
      abb3(27)=-spbl5k2*abb3(26)
      abb3(25)=abb3(25)+abb3(27)
      abb3(27)=spbk4k3*spak2k4
      abb3(25)=abb3(25)*abb3(27)
      abb3(14)=abb3(25)+abb3(23)-abb3(14)
      abb3(14)=4.0_ki*abb3(14)
      abb3(20)=8.0_ki*abb3(20)
      abb3(23)=es234-es34
      abb3(25)=-es12-abb3(23)
      abb3(25)=4.0_ki*abb3(12)*abb3(25)
      abb3(28)=-spbl6k3*abb3(18)
      abb3(29)=-spbl5k3*abb3(6)
      abb3(28)=abb3(28)+abb3(29)
      abb3(28)=spak1k3*abb3(28)
      abb3(29)=-spbl6k4*abb3(24)
      abb3(30)=-spbl5k4*abb3(26)
      abb3(28)=abb3(28)+abb3(29)+abb3(30)
      abb3(28)=8.0_ki*abb3(28)
      abb3(29)=8.0_ki*abb3(12)
      abb3(30)=es23-es123+2.0_ki*es12
      abb3(30)=abb3(9)*abb3(30)
      abb3(31)=spbl6k2*abb3(18)
      abb3(32)=spbl5k2*abb3(6)
      abb3(31)=abb3(31)+abb3(32)
      abb3(31)=spbk3k1*abb3(31)*spak1k2**2
      abb3(12)=-abb3(12)*abb3(27)
      abb3(12)=abb3(12)+abb3(31)+abb3(30)
      abb3(12)=4.0_ki*abb3(12)
      abb3(27)=8.0_ki*abb3(9)
      abb3(9)=4.0_ki*abb3(9)
      abb3(30)=-spbl6k4*abb3(8)
      abb3(31)=-spbl5k4*abb3(7)
      abb3(30)=abb3(30)+abb3(31)
      abb3(30)=4.0_ki*abb3(30)
      abb3(19)=-abb3(8)*abb3(19)
      abb3(21)=-abb3(7)*abb3(21)
      abb3(19)=abb3(19)+abb3(21)
      abb3(19)=4.0_ki*spbk3k1*abb3(19)
      abb3(21)=spak3k4*spbk3k2**2
      abb3(21)=4.0_ki*abb3(21)
      abb3(31)=abb3(8)*abb3(21)
      abb3(32)=8.0_ki*spbk3k2
      abb3(24)=-abb3(24)*abb3(32)
      abb3(33)=4.0_ki*abb3(18)
      abb3(34)=spak1k4*spbk3k2
      abb3(35)=-abb3(33)*abb3(34)
      abb3(36)=-abb3(8)*abb3(32)
      abb3(21)=abb3(7)*abb3(21)
      abb3(26)=-abb3(26)*abb3(32)
      abb3(37)=4.0_ki*abb3(6)
      abb3(34)=-abb3(37)*abb3(34)
      abb3(32)=-abb3(7)*abb3(32)
      abb3(38)=8.0_ki*abb3(13)
      abb3(18)=abb3(38)*abb3(18)
      abb3(39)=abb3(33)*abb3(13)
      abb3(40)=abb3(23)*abb3(33)
      abb3(6)=abb3(38)*abb3(6)
      abb3(13)=abb3(37)*abb3(13)
      abb3(23)=abb3(23)*abb3(37)
      abb3(38)=-abb3(33)*abb3(10)
      abb3(10)=-abb3(37)*abb3(10)
      abb3(8)=-spbl6k1*abb3(8)
      abb3(7)=-spbl5k1*abb3(7)
      abb3(7)=abb3(8)+abb3(7)
      abb3(7)=4.0_ki*abb3(7)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd3h3
