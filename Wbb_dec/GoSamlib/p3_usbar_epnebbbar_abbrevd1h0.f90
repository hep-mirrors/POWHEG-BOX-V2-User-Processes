module     p3_usbar_epnebbbar_abbrevd1h0
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(44), public :: abb1
   complex(ki), public :: R2d1
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p3_usbar_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_color, only: TR
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      implicit none
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spbl5k2**(-1)
      abb1(4)=spbl6k2**(-1)
      abb1(5)=spak2l5**(-1)
      abb1(6)=spak2l6**(-1)
      abb1(7)=NC*c2
      abb1(7)=abb1(7)-c1
      abb1(8)=TR*gW
      abb1(8)=abb1(8)**2*i_*CVSU*abb1(2)*abb1(1)
      abb1(9)=abb1(7)*abb1(8)*mB
      abb1(10)=-abb1(4)*abb1(9)
      abb1(11)=spak3k4*spbk3k1
      abb1(12)=abb1(11)*spbk3k2
      abb1(13)=abb1(12)*spak2l5
      abb1(14)=abb1(13)*abb1(10)
      abb1(15)=-abb1(3)*abb1(9)
      abb1(16)=abb1(12)*spak2l6
      abb1(17)=abb1(16)*abb1(15)
      abb1(14)=abb1(14)+abb1(17)
      abb1(17)=4.0_ki*abb1(14)
      abb1(7)=abb1(8)*abb1(7)*mB**3
      abb1(8)=-abb1(7)*abb1(4)*abb1(3)
      abb1(8)=2.0_ki*abb1(8)
      abb1(18)=-abb1(12)*abb1(8)
      abb1(19)=-abb1(5)*abb1(7)*abb1(3)**2
      abb1(16)=-abb1(16)*abb1(19)
      abb1(7)=-abb1(6)*abb1(7)*abb1(4)**2
      abb1(13)=-abb1(13)*abb1(7)
      abb1(13)=abb1(13)+abb1(16)+abb1(18)-abb1(14)
      abb1(13)=4.0_ki*abb1(13)
      abb1(16)=spak2l6*spbk3k2
      abb1(18)=abb1(15)*abb1(16)
      abb1(20)=spak2l5*spbk3k2
      abb1(21)=abb1(10)*abb1(20)
      abb1(22)=abb1(18)+abb1(21)
      abb1(23)=spbk3k2*abb1(8)
      abb1(24)=abb1(16)*abb1(19)
      abb1(25)=abb1(20)*abb1(7)
      abb1(23)=abb1(25)+abb1(24)+abb1(23)+abb1(22)
      abb1(24)=spak2k4*spbk2k1
      abb1(23)=abb1(24)*abb1(23)
      abb1(25)=abb1(15)*spak2l6
      abb1(26)=-spak4l6*abb1(25)
      abb1(27)=abb1(10)*spak4l5
      abb1(28)=-spak2l6*abb1(27)
      abb1(26)=abb1(26)+abb1(28)
      abb1(26)=spbl6k3*abb1(26)
      abb1(28)=abb1(15)*spak4l6
      abb1(29)=-spak2l5*abb1(28)
      abb1(30)=abb1(10)*spak2l5
      abb1(31)=-spak4l5*abb1(30)
      abb1(29)=abb1(29)+abb1(31)
      abb1(29)=spbl5k3*abb1(29)
      abb1(26)=abb1(29)+abb1(26)
      abb1(26)=spbk2k1*abb1(26)
      abb1(29)=abb1(15)*spak3l6
      abb1(31)=abb1(10)*spak3l5
      abb1(29)=abb1(29)+abb1(31)
      abb1(31)=-spbk3k2*abb1(29)
      abb1(32)=abb1(15)*spak1l6
      abb1(33)=abb1(10)*spak1l5
      abb1(32)=abb1(32)+abb1(33)
      abb1(32)=spbk2k1*abb1(32)
      abb1(31)=abb1(32)+abb1(31)
      abb1(33)=spak2k4*spbk3k1
      abb1(34)=-abb1(33)*abb1(31)
      abb1(27)=abb1(28)+abb1(27)
      abb1(28)=-es34+es234+es12
      abb1(35)=es23-abb1(28)
      abb1(35)=abb1(35)*spbk3k1
      abb1(24)=spbk4k3*abb1(24)
      abb1(24)=abb1(24)+abb1(35)
      abb1(24)=abb1(27)*abb1(24)
      abb1(35)=-spbl6k1*spak4l6
      abb1(36)=-spbl5k1*spak4l5
      abb1(35)=abb1(36)+abb1(35)
      abb1(35)=abb1(22)*abb1(35)
      abb1(14)=-2.0_ki*abb1(14)+abb1(34)+abb1(23)+abb1(35)+abb1(24)+abb1(26)
      abb1(14)=2.0_ki*abb1(14)
      abb1(23)=spak3k4*spak1k2*spbk3k1**2
      abb1(24)=abb1(11)*spbl5k3
      abb1(26)=-spak2l5*abb1(24)
      abb1(26)=-abb1(23)+abb1(26)
      abb1(26)=abb1(15)*abb1(26)
      abb1(34)=abb1(11)*spbl6k3
      abb1(35)=-abb1(25)*abb1(34)
      abb1(26)=abb1(35)+abb1(26)
      abb1(26)=2.0_ki*abb1(26)
      abb1(35)=4.0_ki*abb1(15)
      abb1(36)=abb1(35)*abb1(33)
      abb1(37)=2.0_ki*abb1(15)
      abb1(38)=abb1(33)*abb1(37)
      abb1(39)=spbl5k3*spak3k4
      abb1(20)=abb1(20)*abb1(39)
      abb1(40)=abb1(12)*spak1k2
      abb1(20)=abb1(40)+abb1(20)
      abb1(20)=abb1(15)*abb1(20)
      abb1(41)=spbl6k3*spak3k4
      abb1(21)=-abb1(21)*abb1(41)
      abb1(20)=abb1(21)+abb1(20)
      abb1(20)=2.0_ki*abb1(20)
      abb1(21)=spak2k4*spbk3k2
      abb1(42)=abb1(35)*abb1(21)
      abb1(37)=abb1(21)*abb1(37)
      abb1(34)=-spak2l6*abb1(34)
      abb1(23)=-abb1(23)+abb1(34)
      abb1(23)=abb1(10)*abb1(23)
      abb1(24)=-abb1(30)*abb1(24)
      abb1(23)=abb1(24)+abb1(23)
      abb1(23)=2.0_ki*abb1(23)
      abb1(24)=4.0_ki*abb1(10)
      abb1(34)=abb1(24)*abb1(33)
      abb1(43)=2.0_ki*abb1(10)
      abb1(33)=abb1(33)*abb1(43)
      abb1(16)=abb1(16)*abb1(41)
      abb1(16)=abb1(40)+abb1(16)
      abb1(16)=abb1(10)*abb1(16)
      abb1(18)=-abb1(18)*abb1(39)
      abb1(16)=abb1(18)+abb1(16)
      abb1(16)=2.0_ki*abb1(16)
      abb1(18)=abb1(24)*abb1(21)
      abb1(21)=abb1(21)*abb1(43)
      abb1(25)=abb1(25)+abb1(30)
      abb1(30)=abb1(25)*spbk2k1
      abb1(39)=4.0_ki*abb1(30)
      abb1(7)=abb1(7)*spak2l5
      abb1(19)=abb1(19)*spak2l6
      abb1(7)=abb1(7)+abb1(19)+abb1(8)+abb1(25)
      abb1(8)=-4.0_ki*spbk2k1*abb1(7)
      abb1(19)=-2.0_ki*abb1(30)
      abb1(30)=spbl6k1*spak2l6
      abb1(40)=spbl5k1*spak2l5
      abb1(41)=spak2k3*spbk3k1
      abb1(43)=spbk4k1*spak2k4
      abb1(30)=-abb1(30)-abb1(40)+abb1(41)+abb1(43)
      abb1(30)=2.0_ki*abb1(30)
      abb1(40)=-abb1(15)*abb1(30)
      abb1(41)=2.0_ki*spak2l6
      abb1(43)=-spbl6k2*abb1(41)
      abb1(43)=abb1(43)-abb1(28)
      abb1(15)=abb1(15)*abb1(43)
      abb1(43)=2.0_ki*spak2l5
      abb1(44)=abb1(9)*abb1(43)
      abb1(15)=abb1(44)+abb1(15)
      abb1(15)=2.0_ki*abb1(15)
      abb1(30)=-abb1(10)*abb1(30)
      abb1(43)=-spbl5k2*abb1(43)
      abb1(28)=abb1(43)-abb1(28)
      abb1(10)=abb1(10)*abb1(28)
      abb1(9)=abb1(9)*abb1(41)
      abb1(9)=abb1(9)+abb1(10)
      abb1(9)=2.0_ki*abb1(9)
      abb1(10)=2.0_ki*abb1(22)
      abb1(22)=es34*abb1(10)
      abb1(25)=2.0_ki*spbk4k2*abb1(25)
      abb1(27)=abb1(27)*spbk4k2
      abb1(28)=-abb1(27)+abb1(32)
      abb1(28)=abb1(11)*abb1(28)
      abb1(12)=-abb1(12)*abb1(29)
      abb1(12)=abb1(12)+abb1(28)
      abb1(12)=2.0_ki*abb1(12)
      abb1(28)=-abb1(11)*abb1(35)
      abb1(11)=-abb1(11)*abb1(24)
      abb1(7)=2.0_ki*spak3k4*abb1(7)*spbk3k2**2
      abb1(27)=-abb1(27)+abb1(31)
      abb1(27)=2.0_ki*abb1(27)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd1h0
