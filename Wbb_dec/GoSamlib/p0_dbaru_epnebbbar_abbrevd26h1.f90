module     p0_dbaru_epnebbbar_abbrevd26h1
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(34), public :: abb26
   complex(ki), public :: R2d26
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
      abb26(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb26(2)=sqrt(mB**2)
      abb26(3)=NC**(-1)
      abb26(4)=spak2l5**(-1)
      abb26(5)=spbl6k2**(-1)
      abb26(6)=spak2l6**(-1)
      abb26(7)=abb26(4)*spbk3k2
      abb26(8)=abb26(7)*abb26(2)
      abb26(9)=abb26(3)*c1
      abb26(10)=abb26(8)*abb26(9)
      abb26(11)=2.0_ki*abb26(8)
      abb26(11)=abb26(11)*c2
      abb26(10)=abb26(11)-abb26(10)
      abb26(11)=spak1k2*spbl5k2
      abb26(12)=abb26(11)*spak4l5
      abb26(13)=abb26(12)*spak2l6
      abb26(14)=spak1k4*spak2l6
      abb26(15)=abb26(14)*es12
      abb26(13)=abb26(13)-abb26(15)
      abb26(15)=-abb26(3)*abb26(13)*abb26(10)
      abb26(16)=spak1k4*es12
      abb26(12)=abb26(12)-abb26(16)
      abb26(12)=abb26(5)*abb26(12)
      abb26(10)=abb26(3)*abb26(12)*abb26(10)
      abb26(16)=abb26(8)*c1
      abb26(12)=-abb26(12)*abb26(16)
      abb26(10)=abb26(12)+abb26(10)
      abb26(12)=mB**2
      abb26(10)=abb26(10)*abb26(12)
      abb26(13)=abb26(13)*abb26(16)
      abb26(10)=abb26(10)+abb26(13)+abb26(15)
      abb26(13)=4.0_ki*i_
      abb26(15)=gW*TR
      abb26(15)=abb26(15)**2*abb26(1)*CVDU
      abb26(13)=abb26(13)*abb26(15)
      abb26(16)=abb26(13)*mB
      abb26(10)=abb26(10)*abb26(16)
      abb26(17)=-abb26(9)+2.0_ki*c2
      abb26(18)=abb26(17)*abb26(3)
      abb26(18)=abb26(18)-c1
      abb26(8)=spak1k2*abb26(8)
      abb26(19)=abb26(8)*spak4l6
      abb26(20)=-abb26(19)*abb26(18)
      abb26(15)=abb26(15)*i_
      abb26(15)=8.0_ki*abb26(15)
      abb26(21)=-mB*abb26(20)*abb26(15)
      abb26(22)=abb26(5)*abb26(6)
      abb26(23)=abb26(22)*spak1l6
      abb26(7)=abb26(7)*spak2k4
      abb26(24)=-mB*abb26(18)*abb26(23)*abb26(7)
      abb26(25)=-abb26(3)*abb26(22)*abb26(17)
      abb26(26)=abb26(22)*c1
      abb26(25)=abb26(25)+abb26(26)
      abb26(19)=-abb26(19)*abb26(25)
      abb26(19)=abb26(24)+abb26(19)
      abb26(19)=mB*abb26(19)
      abb26(24)=spak1k4*spbl5k1
      abb26(26)=abb26(24)*spbk3k2
      abb26(27)=abb26(26)*abb26(23)
      abb26(28)=abb26(7)*spak1l6
      abb26(27)=abb26(28)+abb26(27)
      abb26(28)=-c1*abb26(27)
      abb26(27)=abb26(3)*abb26(27)*abb26(17)
      abb26(19)=abb26(19)+abb26(28)+abb26(27)
      abb26(19)=mB*abb26(19)
      abb26(19)=abb26(19)+abb26(20)
      abb26(19)=mB*abb26(19)
      abb26(26)=-abb26(18)*abb26(26)*spak1l6
      abb26(19)=abb26(19)+abb26(26)
      abb26(19)=abb26(19)*abb26(15)
      abb26(20)=abb26(20)*abb26(16)
      abb26(26)=-abb26(16)*abb26(18)*abb26(8)*spak4l5
      abb26(27)=spak1k2*abb26(4)*abb26(2)
      abb26(28)=-abb26(16)*abb26(18)*spbl6k2*abb26(27)*spak4l6
      abb26(29)=spak2k4*spak1l6
      abb26(14)=-abb26(14)+abb26(29)
      abb26(14)=spbl6k3*abb26(14)
      abb26(29)=spbk3k2*spak1k2
      abb26(30)=spak2k4*abb26(29)
      abb26(31)=spbk3k1*spak1k2*spak1k4
      abb26(32)=spbl5k3*spak2k4
      abb26(33)=abb26(32)*spak1l5
      abb26(14)=abb26(30)-abb26(31)-abb26(33)+abb26(14)
      abb26(14)=abb26(2)*abb26(14)
      abb26(30)=-abb26(4)*c2*abb26(14)
      abb26(31)=spak1k4*spbl5k3
      abb26(33)=abb26(31)*abb26(2)
      abb26(34)=-c2*abb26(33)
      abb26(30)=abb26(34)+abb26(30)
      abb26(14)=abb26(14)*abb26(4)
      abb26(14)=abb26(14)+abb26(33)
      abb26(9)=abb26(14)*abb26(9)
      abb26(9)=2.0_ki*abb26(30)+abb26(9)
      abb26(9)=abb26(3)*abb26(9)
      abb26(14)=c1*abb26(14)
      abb26(30)=-abb26(25)*abb26(8)*spak2k4
      abb26(7)=abb26(7)*spak1k2
      abb26(33)=-mB*abb26(7)*abb26(25)
      abb26(30)=abb26(33)+abb26(30)
      abb26(30)=mB*abb26(30)
      abb26(29)=abb26(24)*abb26(29)
      abb26(22)=abb26(29)*abb26(22)
      abb26(7)=abb26(22)+abb26(7)
      abb26(22)=c1*abb26(7)
      abb26(7)=-abb26(3)*abb26(7)*abb26(17)
      abb26(7)=abb26(30)+abb26(22)+abb26(7)
      abb26(7)=mB*abb26(7)
      abb26(7)=abb26(7)+abb26(14)+abb26(9)
      abb26(7)=mB*abb26(7)
      abb26(9)=abb26(29)*abb26(18)
      abb26(7)=abb26(7)+abb26(9)
      abb26(7)=abb26(7)*abb26(13)
      abb26(9)=-abb26(31)*abb26(18)
      abb26(14)=abb26(9)*abb26(15)
      abb26(22)=abb26(12)*abb26(31)*abb26(25)
      abb26(22)=abb26(22)-abb26(9)
      abb26(22)=abb26(22)*abb26(15)
      abb26(9)=-abb26(9)*abb26(13)
      abb26(8)=-abb26(16)*abb26(18)*abb26(8)*spak1k4
      abb26(16)=-abb26(3)*abb26(23)*abb26(17)
      abb26(17)=abb26(23)*c1
      abb26(16)=abb26(16)+abb26(17)
      abb26(17)=abb26(12)*spbl5k2*abb26(16)
      abb26(23)=abb26(18)*spak1l6*spbl5k2
      abb26(17)=abb26(17)+abb26(23)
      abb26(17)=abb26(17)*abb26(15)
      abb26(23)=-abb26(27)*abb26(18)
      abb26(27)=-mB*abb26(11)*abb26(25)
      abb26(23)=abb26(27)+abb26(23)
      abb26(23)=mB*abb26(23)
      abb26(11)=-abb26(11)*abb26(18)
      abb26(11)=abb26(23)+abb26(11)
      abb26(11)=abb26(11)*abb26(13)
      abb26(23)=-abb26(18)*spbl5k3*spak1l6
      abb26(27)=-abb26(23)*abb26(15)
      abb26(16)=-abb26(12)*spbl5k3*abb26(16)
      abb26(16)=abb26(16)+abb26(23)
      abb26(16)=abb26(16)*abb26(15)
      abb26(23)=abb26(23)*abb26(13)
      abb26(15)=-abb26(15)*abb26(18)*spbl5k3*spak4l6
      abb26(24)=-abb26(24)*abb26(18)
      abb26(29)=abb26(12)*abb26(18)*abb26(4)*spak2k4
      abb26(24)=abb26(29)+abb26(24)
      abb26(24)=abb26(24)*abb26(13)
      abb26(12)=-abb26(12)*abb26(32)*abb26(25)
      abb26(25)=-abb26(32)*abb26(18)
      abb26(12)=abb26(12)+abb26(25)
      abb26(12)=abb26(12)*abb26(13)
      abb26(13)=abb26(18)*abb26(13)
      R2d26=0.0_ki
      rat2 = rat2 + R2d26
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='26' value='", &
          & R2d26, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd26h1
