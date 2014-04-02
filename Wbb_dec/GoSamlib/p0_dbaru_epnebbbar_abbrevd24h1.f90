module     p0_dbaru_epnebbbar_abbrevd24h1
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(24), public :: abb24
   complex(ki), public :: R2d24
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
      abb24(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb24(2)=1.0_ki/(es34+es56-es12-es234)
      abb24(3)=NC**(-1)
      abb24(4)=es56**(-1)
      abb24(5)=spak2l5**(-1)
      abb24(6)=spbl6k2**(-1)
      abb24(7)=spak2l6**(-1)
      abb24(8)=NC-abb24(3)
      abb24(9)=TR*gW
      abb24(9)=abb24(9)**2
      abb24(10)=abb24(9)*spak1k4**2
      abb24(11)=spbl5k2*abb24(10)
      abb24(12)=abb24(2)**2*i_*CVDU*abb24(4)*abb24(1)
      abb24(13)=abb24(12)*c2
      abb24(14)=abb24(8)*abb24(11)*abb24(13)
      abb24(15)=abb24(3)**2
      abb24(15)=abb24(15)-1.0_ki
      abb24(15)=abb24(15)*c1
      abb24(16)=abb24(15)*abb24(12)
      abb24(11)=abb24(11)*abb24(16)
      abb24(11)=abb24(11)+abb24(14)
      abb24(14)=abb24(11)*spbk3k1
      abb24(17)=spak2l6*abb24(14)
      abb24(13)=abb24(8)*abb24(13)*abb24(10)
      abb24(10)=abb24(10)*abb24(16)
      abb24(10)=abb24(10)+abb24(13)
      abb24(10)=abb24(10)*abb24(5)
      abb24(13)=mB**2
      abb24(16)=abb24(13)*spak2l6
      abb24(18)=abb24(16)*spbk3k1
      abb24(19)=-abb24(18)*abb24(10)
      abb24(20)=abb24(11)*abb24(6)
      abb24(21)=abb24(13)*spbk3k1
      abb24(22)=-abb24(21)*abb24(20)
      abb24(17)=abb24(22)+abb24(19)+abb24(17)
      abb24(17)=spbk4k2*abb24(17)
      abb24(11)=abb24(11)*spbk4k3
      abb24(19)=-spak2l6*abb24(11)
      abb24(22)=abb24(16)*spbk4k3
      abb24(10)=abb24(22)*abb24(10)
      abb24(23)=abb24(13)*spbk4k3
      abb24(20)=abb24(23)*abb24(20)
      abb24(10)=abb24(20)+abb24(10)+abb24(19)
      abb24(10)=spbk2k1*abb24(10)
      abb24(9)=abb24(12)*abb24(9)*spak1k4
      abb24(12)=abb24(9)*c2
      abb24(8)=abb24(8)*spbl5k2*abb24(12)
      abb24(9)=abb24(15)*abb24(9)
      abb24(15)=spbl5k2*abb24(9)
      abb24(8)=abb24(15)+abb24(8)
      abb24(13)=abb24(6)*abb24(13)
      abb24(13)=-spak2l6+abb24(13)
      abb24(13)=abb24(8)*abb24(13)
      abb24(15)=abb24(3)*abb24(12)
      abb24(9)=abb24(9)-abb24(15)
      abb24(15)=abb24(9)*abb24(16)
      abb24(12)=NC*abb24(12)
      abb24(16)=abb24(12)*abb24(16)
      abb24(15)=abb24(15)+abb24(16)
      abb24(15)=abb24(15)*abb24(5)
      abb24(13)=abb24(15)+abb24(13)
      abb24(13)=abb24(13)*spbk3k2
      abb24(15)=abb24(8)*spbl5k3*spal5l6
      abb24(13)=abb24(13)-abb24(15)
      abb24(15)=-es12-es23+es34+es123
      abb24(13)=abb24(13)*abb24(15)
      abb24(14)=spbl5k4*abb24(14)
      abb24(11)=spbl5k1*abb24(11)
      abb24(11)=abb24(11)+abb24(14)
      abb24(11)=spal5l6*abb24(11)
      abb24(10)=abb24(10)+abb24(17)+abb24(11)+abb24(13)
      abb24(10)=4.0_ki*abb24(10)
      abb24(11)=spbk4k3*abb24(8)
      abb24(13)=abb24(11)*spak4l6
      abb24(14)=spbk3k1*abb24(8)
      abb24(15)=abb24(14)*spak1l6
      abb24(13)=abb24(13)+abb24(15)
      abb24(13)=16.0_ki*abb24(13)
      abb24(12)=abb24(9)+abb24(12)
      abb24(15)=abb24(12)*abb24(5)
      abb24(17)=abb24(23)*abb24(15)
      abb24(17)=abb24(17)-abb24(11)
      abb24(19)=-spak4l6*abb24(17)
      abb24(15)=abb24(21)*abb24(15)
      abb24(15)=abb24(14)-abb24(15)
      abb24(20)=spak1l6*abb24(15)
      abb24(23)=abb24(23)*abb24(8)
      abb24(24)=-spak4l6*abb24(23)
      abb24(8)=abb24(21)*abb24(8)
      abb24(21)=-spak1l6*abb24(8)
      abb24(21)=abb24(24)+abb24(21)
      abb24(21)=abb24(7)*abb24(6)*abb24(21)
      abb24(19)=abb24(21)+abb24(19)+abb24(20)
      abb24(19)=16.0_ki*abb24(19)
      abb24(20)=spak1l6*spbk3k1
      abb24(21)=spak4l6*spbk4k3
      abb24(20)=abb24(20)+abb24(21)
      abb24(12)=abb24(12)*abb24(20)
      abb24(20)=spbl6k2*abb24(12)
      abb24(21)=spak4l5*abb24(11)
      abb24(24)=spak1l5*abb24(14)
      abb24(20)=abb24(24)+abb24(20)+abb24(21)
      abb24(20)=8.0_ki*abb24(20)
      abb24(21)=abb24(23)*abb24(6)
      abb24(23)=-abb24(7)*abb24(21)
      abb24(17)=abb24(23)-abb24(17)
      abb24(17)=spak2k4*abb24(17)
      abb24(8)=abb24(8)*abb24(6)
      abb24(23)=abb24(7)*abb24(8)
      abb24(15)=abb24(23)-abb24(15)
      abb24(15)=spak1k2*abb24(15)
      abb24(12)=-spbl6l5*abb24(12)
      abb24(12)=abb24(12)+abb24(17)+abb24(15)
      abb24(12)=8.0_ki*abb24(12)
      abb24(15)=4.0_ki*spal5l6
      abb24(17)=abb24(11)*abb24(15)
      abb24(11)=-spak2l6*abb24(11)
      abb24(22)=abb24(9)*abb24(22)
      abb24(23)=spbk4k3*abb24(16)
      abb24(22)=abb24(22)+abb24(23)
      abb24(22)=abb24(5)*abb24(22)
      abb24(11)=abb24(21)+abb24(22)+abb24(11)
      abb24(11)=4.0_ki*abb24(11)
      abb24(15)=abb24(14)*abb24(15)
      abb24(14)=-spak2l6*abb24(14)
      abb24(9)=abb24(9)*abb24(18)
      abb24(16)=spbk3k1*abb24(16)
      abb24(9)=abb24(9)+abb24(16)
      abb24(9)=abb24(5)*abb24(9)
      abb24(8)=abb24(8)+abb24(9)+abb24(14)
      abb24(8)=4.0_ki*abb24(8)
      R2d24=0.0_ki
      rat2 = rat2 + R2d24
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='24' value='", &
          & R2d24, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd24h1
