module     p0_dbaru_epnebbbar_abbrevd4h1
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(33), public :: abb4
   complex(ki), public :: R2d4
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
      abb4(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb4(2)=1.0_ki/(es34+es56-es12-es234)
      abb4(3)=NC**(-1)
      abb4(4)=es56**(-1)
      abb4(5)=spak2l5**(-1)
      abb4(6)=spbl6k2**(-1)
      abb4(7)=spak2l6**(-1)
      abb4(8)=TR*gW
      abb4(8)=CVDU*i_*spak1k4*abb4(4)*abb4(2)*abb4(1)*abb4(8)**2
      abb4(9)=abb4(8)*spbl5k2
      abb4(10)=abb4(9)*c2
      abb4(11)=abb4(10)*NC
      abb4(12)=abb4(11)*spbk3k1
      abb4(9)=abb4(9)*c1
      abb4(13)=abb4(9)*spbk3k1
      abb4(12)=abb4(12)-abb4(13)
      abb4(13)=abb4(13)*abb4(3)
      abb4(14)=abb4(10)*spbk3k1
      abb4(13)=abb4(13)-abb4(14)
      abb4(14)=abb4(13)*abb4(3)
      abb4(15)=abb4(12)+abb4(14)
      abb4(16)=abb4(15)*spak1l6
      abb4(11)=abb4(11)*spbk4k3
      abb4(9)=abb4(9)*spbk4k3
      abb4(11)=abb4(11)-abb4(9)
      abb4(9)=abb4(9)*abb4(3)
      abb4(10)=abb4(10)*spbk4k3
      abb4(9)=abb4(9)-abb4(10)
      abb4(10)=abb4(9)*abb4(3)
      abb4(17)=abb4(11)+abb4(10)
      abb4(18)=abb4(17)*spak4l6
      abb4(16)=abb4(16)+abb4(18)
      abb4(18)=2.0_ki*abb4(16)
      abb4(19)=abb4(11)*spak4l6
      abb4(20)=abb4(12)*spak1l6
      abb4(19)=abb4(19)+abb4(20)
      abb4(20)=-spbl6k2*abb4(19)
      abb4(21)=abb4(8)*c2
      abb4(22)=abb4(21)*NC
      abb4(23)=spbk4k3*abb4(22)
      abb4(8)=abb4(8)*c1
      abb4(24)=abb4(8)*spbk4k3
      abb4(23)=abb4(23)-abb4(24)
      abb4(25)=spbl5k2**2
      abb4(26)=abb4(23)*abb4(25)
      abb4(27)=spak4l5*abb4(26)
      abb4(22)=spbk3k1*abb4(22)
      abb4(8)=abb4(8)*spbk3k1
      abb4(22)=abb4(22)-abb4(8)
      abb4(25)=abb4(22)*abb4(25)
      abb4(28)=spak1l5*abb4(25)
      abb4(20)=abb4(28)+abb4(20)+abb4(27)
      abb4(20)=spak2l6*abb4(20)
      abb4(26)=-spak4l6*abb4(26)
      abb4(25)=-spak1l6*abb4(25)
      abb4(25)=abb4(26)+abb4(25)
      abb4(25)=spak2l5*abb4(25)
      abb4(20)=2.0_ki*abb4(25)+abb4(20)
      abb4(20)=2.0_ki*abb4(20)
      abb4(25)=8.0_ki*abb4(19)
      abb4(26)=mB**2
      abb4(27)=abb4(26)*abb4(6)
      abb4(28)=abb4(27)*abb4(3)
      abb4(9)=abb4(9)*abb4(28)
      abb4(29)=spak4l5*abb4(9)
      abb4(13)=abb4(13)*abb4(28)
      abb4(28)=spak1l5*abb4(13)
      abb4(28)=abb4(28)+abb4(29)
      abb4(28)=abb4(5)*abb4(28)
      abb4(29)=-spak4l6*abb4(9)
      abb4(30)=-spak1l6*abb4(13)
      abb4(29)=abb4(29)+abb4(30)
      abb4(29)=abb4(7)*abb4(29)
      abb4(19)=abb4(29)+abb4(28)+abb4(19)
      abb4(19)=8.0_ki*abb4(19)
      abb4(16)=-4.0_ki*abb4(16)
      abb4(28)=abb4(22)*spak1l6
      abb4(29)=abb4(23)*spak4l6
      abb4(28)=abb4(28)+abb4(29)
      abb4(29)=-spbl6k2*abb4(28)
      abb4(30)=-spak4l5*abb4(11)
      abb4(31)=-spak1l5*abb4(12)
      abb4(29)=abb4(31)+abb4(29)+abb4(30)
      abb4(29)=2.0_ki*abb4(29)
      abb4(30)=3.0_ki*abb4(5)
      abb4(30)=abb4(30)*abb4(26)
      abb4(31)=abb4(23)*abb4(30)
      abb4(32)=-2.0_ki*abb4(10)+abb4(11)
      abb4(33)=abb4(27)*abb4(7)
      abb4(32)=abb4(32)*abb4(33)
      abb4(11)=abb4(32)+abb4(31)+abb4(11)
      abb4(11)=spak2k4*abb4(11)
      abb4(30)=-abb4(22)*abb4(30)
      abb4(31)=2.0_ki*abb4(14)-abb4(12)
      abb4(31)=abb4(31)*abb4(33)
      abb4(12)=abb4(31)+abb4(30)-abb4(12)
      abb4(12)=spak1k2*abb4(12)
      abb4(28)=spbl6l5*abb4(28)
      abb4(11)=3.0_ki*abb4(28)+abb4(11)+abb4(12)
      abb4(11)=2.0_ki*abb4(11)
      abb4(12)=spak2k4*abb4(17)
      abb4(15)=-spak1k2*abb4(15)
      abb4(12)=abb4(12)+abb4(15)
      abb4(12)=4.0_ki*abb4(5)*abb4(27)*abb4(12)
      abb4(15)=4.0_ki*spal5l6
      abb4(10)=abb4(10)*abb4(15)
      abb4(17)=abb4(21)*spbk4k3
      abb4(24)=abb4(24)*abb4(3)
      abb4(17)=abb4(17)-abb4(24)
      abb4(17)=abb4(17)*abb4(3)
      abb4(24)=abb4(5)*abb4(26)*spak2l6
      abb4(26)=-abb4(17)*abb4(24)
      abb4(9)=abb4(9)+abb4(26)
      abb4(9)=4.0_ki*abb4(9)
      abb4(17)=abb4(23)+abb4(17)
      abb4(23)=8.0_ki*abb4(5)
      abb4(23)=abb4(23)*abb4(27)
      abb4(26)=abb4(17)*abb4(23)
      abb4(17)=-4.0_ki*abb4(17)
      abb4(14)=abb4(14)*abb4(15)
      abb4(15)=abb4(21)*spbk3k1
      abb4(8)=abb4(8)*abb4(3)
      abb4(8)=abb4(15)-abb4(8)
      abb4(8)=abb4(8)*abb4(3)
      abb4(15)=-abb4(8)*abb4(24)
      abb4(13)=abb4(13)+abb4(15)
      abb4(13)=4.0_ki*abb4(13)
      abb4(8)=abb4(22)+abb4(8)
      abb4(15)=abb4(8)*abb4(23)
      abb4(8)=-4.0_ki*abb4(8)
      R2d4=abb4(18)
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd4h1
