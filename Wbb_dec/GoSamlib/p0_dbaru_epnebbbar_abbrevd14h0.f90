module     p0_dbaru_epnebbbar_abbrevd14h0
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(35), public :: abb14
   complex(ki), public :: R2d14
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
      abb14(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb14(2)=NC**(-1)
      abb14(3)=es234**(-1)
      abb14(4)=es56**(-1)
      abb14(5)=spbl5k2**(-1)
      abb14(6)=spbl6k2**(-1)
      abb14(7)=sqrt(mB**2)
      abb14(8)=spak2l5**(-1)
      abb14(9)=spak2l6**(-1)
      abb14(10)=1.0_ki/(es34+es56-es12-es234)
      abb14(11)=spak3k4*abb14(3)
      abb14(12)=c1*abb14(2)
      abb14(12)=abb14(12)-c2
      abb14(13)=-abb14(12)*spbk3k2**2
      abb14(14)=abb14(11)*abb14(13)
      abb14(15)=abb14(4)*gW**2
      abb14(16)=gW*abb14(4)
      abb14(16)=abb14(16)**2
      abb14(17)=mB**2*abb14(16)
      abb14(15)=-2.0_ki*abb14(17)+1.0_ki/3.0_ki*abb14(15)
      abb14(17)=spak1l6*abb14(5)
      abb14(18)=spak1l5*abb14(6)
      abb14(19)=abb14(17)+abb14(18)
      abb14(20)=i_*TR**2
      abb14(21)=CVDU*abb14(1)
      abb14(15)=-4.0_ki*abb14(19)*mB*abb14(20)*abb14(14)*abb14(21)*abb14(15)
      abb14(16)=abb14(20)*abb14(16)
      abb14(20)=abb14(21)*mB
      abb14(22)=abb14(16)*abb14(20)
      abb14(11)=abb14(22)*abb14(11)
      abb14(13)=-abb14(11)*abb14(13)
      abb14(19)=abb14(13)*abb14(19)
      abb14(23)=8.0_ki*abb14(19)
      abb14(24)=-abb14(7)**2*abb14(23)
      abb14(19)=16.0_ki*abb14(19)
      abb14(14)=-mB**3*abb14(21)*abb14(16)*abb14(14)
      abb14(21)=abb14(5)**2
      abb14(25)=abb14(21)*abb14(14)
      abb14(26)=spak1l6*abb14(25)
      abb14(27)=abb14(18)*abb14(14)*abb14(5)
      abb14(26)=abb14(26)+abb14(27)
      abb14(26)=abb14(8)*abb14(26)
      abb14(27)=abb14(14)*abb14(6)
      abb14(28)=abb14(17)*abb14(27)
      abb14(29)=abb14(6)**2
      abb14(30)=abb14(29)*abb14(14)
      abb14(31)=spak1l5*abb14(30)
      abb14(28)=abb14(28)+abb14(31)
      abb14(28)=abb14(9)*abb14(28)
      abb14(26)=abb14(26)+abb14(28)
      abb14(26)=16.0_ki*abb14(26)
      abb14(28)=abb14(12)*spbk3k2
      abb14(11)=-abb14(11)*abb14(28)
      abb14(31)=4.0_ki*abb14(11)
      abb14(32)=abb14(17)*spbl6k2
      abb14(33)=spak1l5+abb14(32)
      abb14(33)=abb14(33)*abb14(31)
      abb14(25)=-abb14(8)*abb14(25)
      abb14(27)=abb14(27)*abb14(5)
      abb14(34)=-abb14(9)*abb14(27)
      abb14(25)=abb14(25)+abb14(34)
      abb14(34)=2.0_ki*spak1k2
      abb14(25)=abb14(25)*abb14(34)
      abb14(16)=spak2k4*abb14(28)*abb14(16)*abb14(20)*abb14(3)
      abb14(12)=-spak1k4*abb14(10)*abb14(22)*abb14(12)
      abb14(20)=abb14(12)*spbk3k1
      abb14(16)=abb14(16)+abb14(20)
      abb14(20)=2.0_ki*abb14(11)
      abb14(22)=abb14(20)*spbl5k3
      abb14(28)=-abb14(5)*abb14(22)
      abb14(28)=abb14(28)-abb14(16)
      abb14(28)=spak1l5*abb14(28)
      abb14(32)=-abb14(16)*abb14(32)
      abb14(12)=abb14(12)*spbk4k3
      abb14(35)=-spak4l6*spbl6k2*abb14(5)
      abb14(35)=-spak4l5+abb14(35)
      abb14(35)=abb14(12)*abb14(35)
      abb14(20)=abb14(20)*spbl6k3
      abb14(17)=-abb14(17)*abb14(20)
      abb14(17)=abb14(17)+abb14(25)+abb14(32)+abb14(28)+abb14(35)
      abb14(17)=4.0_ki*abb14(17)
      abb14(25)=abb14(18)*spbl5k2
      abb14(28)=spak1l6+abb14(25)
      abb14(28)=abb14(28)*abb14(31)
      abb14(31)=-abb14(8)*abb14(27)
      abb14(30)=-abb14(9)*abb14(30)
      abb14(30)=abb14(31)+abb14(30)
      abb14(30)=abb14(30)*abb14(34)
      abb14(20)=-abb14(6)*abb14(20)
      abb14(20)=abb14(20)-abb14(16)
      abb14(20)=spak1l6*abb14(20)
      abb14(25)=-abb14(16)*abb14(25)
      abb14(31)=-spak4l5*spbl5k2*abb14(6)
      abb14(31)=abb14(31)-spak4l6
      abb14(31)=abb14(12)*abb14(31)
      abb14(18)=-abb14(18)*abb14(22)
      abb14(18)=abb14(18)+abb14(30)+abb14(25)+abb14(20)+abb14(31)
      abb14(18)=4.0_ki*abb14(18)
      abb14(12)=8.0_ki*abb14(12)
      abb14(20)=-abb14(5)*abb14(12)
      abb14(12)=-abb14(6)*abb14(12)
      abb14(13)=abb14(13)*spal5l6
      abb14(13)=4.0_ki*abb14(13)
      abb14(22)=abb14(6)*abb14(13)
      abb14(13)=-abb14(5)*abb14(13)
      abb14(11)=8.0_ki*abb14(11)
      abb14(25)=-abb14(5)*abb14(11)
      abb14(11)=-abb14(6)*abb14(11)
      abb14(21)=-spak2l6*abb14(21)*abb14(8)
      abb14(29)=-spak2l5*abb14(29)*abb14(9)
      abb14(21)=abb14(29)+abb14(21)
      abb14(14)=abb14(14)*abb14(21)
      abb14(14)=-2.0_ki*abb14(27)+abb14(14)
      abb14(14)=4.0_ki*abb14(14)
      abb14(16)=8.0_ki*abb14(16)
      abb14(21)=-abb14(5)*abb14(16)
      abb14(16)=-abb14(6)*abb14(16)
      R2d14=abb14(15)
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd14h0
