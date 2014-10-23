module     p0_dbaru_epnebbbarg_abbrevd306h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(31), public :: abb306
   complex(ki), public :: R2d306
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
      abb306(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb306(2)=1.0_ki/(es34+es567-es12-es234)
      abb306(3)=NC**(-1)
      abb306(4)=sqrt2**(-1)
      abb306(5)=spbk7k2**(-1)
      abb306(6)=spak2l5**(-1)
      abb306(7)=spbl6k2**(-1)
      abb306(8)=sqrt(mB**2)
      abb306(9)=TR*gW
      abb306(9)=abb306(9)**2*CVDU*i_*spak1k4*abb306(5)*abb306(4)*abb306(2)*abb3&
      &06(1)
      abb306(10)=abb306(9)*c1
      abb306(11)=abb306(10)*NC
      abb306(9)=c3*abb306(9)*abb306(3)
      abb306(9)=abb306(11)+abb306(9)
      abb306(11)=spbk4k3*abb306(9)
      abb306(12)=spbl5k2**2
      abb306(13)=abb306(12)*abb306(11)
      abb306(14)=abb306(12)*abb306(3)
      abb306(15)=abb306(10)*spbk4k3
      abb306(16)=abb306(14)*abb306(15)
      abb306(13)=abb306(13)-abb306(16)
      abb306(13)=abb306(13)*spak4l6
      abb306(16)=spbk3k1*abb306(9)
      abb306(12)=abb306(12)*abb306(16)
      abb306(10)=abb306(10)*spbk3k1
      abb306(14)=abb306(14)*abb306(10)
      abb306(12)=-abb306(14)+abb306(12)
      abb306(12)=abb306(12)*spak1l6
      abb306(12)=abb306(13)+abb306(12)
      abb306(13)=spal5k7*abb306(12)
      abb306(14)=es71+es12-es712
      abb306(14)=4.0_ki*abb306(14)
      abb306(17)=-abb306(13)*abb306(14)
      abb306(18)=8.0_ki*abb306(13)
      abb306(13)=4.0_ki*abb306(13)
      abb306(12)=-8.0_ki*spak2l5*abb306(12)
      abb306(9)=spbl5k2*abb306(9)
      abb306(19)=spbk4k3*abb306(9)
      abb306(20)=abb306(3)*spbl5k2
      abb306(21)=abb306(15)*abb306(20)
      abb306(19)=abb306(19)-abb306(21)
      abb306(21)=-spak4l6*abb306(19)
      abb306(9)=spbk3k1*abb306(9)
      abb306(20)=abb306(10)*abb306(20)
      abb306(9)=abb306(9)-abb306(20)
      abb306(20)=-spak1l6*abb306(9)
      abb306(20)=abb306(21)+abb306(20)
      abb306(20)=16.0_ki*abb306(20)
      abb306(21)=spak4l5*abb306(19)
      abb306(22)=spak1l5*abb306(9)
      abb306(21)=abb306(22)+abb306(21)
      abb306(22)=mB**2
      abb306(23)=abb306(22)*abb306(7)
      abb306(21)=abb306(23)*abb306(21)
      abb306(10)=abb306(10)*abb306(3)
      abb306(10)=abb306(10)-abb306(16)
      abb306(16)=abb306(10)*spak1l6
      abb306(15)=abb306(15)*abb306(3)
      abb306(11)=abb306(15)-abb306(11)
      abb306(15)=abb306(11)*spak4l6
      abb306(15)=abb306(16)+abb306(15)
      abb306(16)=abb306(8)*mB
      abb306(22)=-abb306(16)+abb306(22)
      abb306(15)=abb306(15)*abb306(22)
      abb306(15)=abb306(21)+abb306(15)
      abb306(15)=16.0_ki*abb306(6)*abb306(15)
      abb306(21)=abb306(9)*spak1k7
      abb306(22)=abb306(19)*spak4k7
      abb306(21)=abb306(21)+abb306(22)
      abb306(22)=abb306(21)*abb306(14)
      abb306(24)=8.0_ki*abb306(21)
      abb306(21)=4.0_ki*abb306(21)
      abb306(25)=spak2k4*abb306(19)
      abb306(26)=-spak1k2*abb306(9)
      abb306(25)=abb306(25)+abb306(26)
      abb306(25)=8.0_ki*abb306(25)
      abb306(11)=16.0_ki*abb306(11)
      abb306(26)=abb306(19)*spal6k7
      abb306(27)=-abb306(26)*abb306(14)
      abb306(28)=8.0_ki*abb306(26)
      abb306(26)=4.0_ki*abb306(26)
      abb306(16)=abb306(16)*abb306(7)
      abb306(16)=abb306(16)+spak2l6
      abb306(19)=-8.0_ki*abb306(19)*abb306(16)
      abb306(23)=abb306(23)*abb306(6)
      abb306(29)=-abb306(11)*abb306(23)
      abb306(10)=16.0_ki*abb306(10)
      abb306(30)=abb306(9)*spal6k7
      abb306(14)=-abb306(30)*abb306(14)
      abb306(31)=8.0_ki*abb306(30)
      abb306(30)=4.0_ki*abb306(30)
      abb306(9)=-8.0_ki*abb306(9)*abb306(16)
      abb306(16)=-abb306(10)*abb306(23)
      R2d306=0.0_ki
      rat2 = rat2 + R2d306
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='306' value='", &
          & R2d306, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd306h5
