module     p0_dbaru_epnebbbarg_abbrevd119h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(22), public :: abb119
   complex(ki), public :: R2d119
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
      abb119(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb119(2)=1.0_ki/(es34+es567-es12-es234)
      abb119(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb119(4)=NC**(-1)
      abb119(5)=sqrt2**(-1)
      abb119(6)=spak2k7**(-1)
      abb119(7)=sqrt(mB**2)
      abb119(8)=spak4l6*spbk4k3
      abb119(9)=spak1l6*spbk3k1
      abb119(8)=abb119(8)+abb119(9)
      abb119(9)=c2*abb119(8)
      abb119(10)=abb119(4)**2
      abb119(10)=abb119(10)+1.0_ki
      abb119(11)=TR*gW
      abb119(11)=CVDU*abb119(11)**2*spbk7l5*i_*spak1k4*abb119(5)*abb119(3)*abb1&
      &19(2)*abb119(1)
      abb119(10)=abb119(10)*abb119(11)
      abb119(12)=abb119(6)*abb119(10)
      abb119(13)=abb119(9)*abb119(12)
      abb119(14)=2.0_ki*c1
      abb119(8)=abb119(8)*abb119(14)
      abb119(11)=abb119(11)*abb119(4)
      abb119(15)=abb119(6)*abb119(11)
      abb119(16)=abb119(15)*abb119(8)
      abb119(13)=abb119(13)-abb119(16)
      abb119(16)=spbl5k2*spak2l5
      abb119(16)=-abb119(16)-es12+es712-es71
      abb119(17)=abb119(16)*abb119(13)
      abb119(18)=-8.0_ki*abb119(17)*spak2l6*spbl6k2
      abb119(17)=16.0_ki*abb119(17)
      abb119(19)=spbk3k1*c2
      abb119(20)=abb119(12)*abb119(19)
      abb119(15)=abb119(15)*abb119(14)
      abb119(21)=abb119(15)*spbk3k1
      abb119(20)=abb119(20)-abb119(21)
      abb119(21)=abb119(20)*spak1k2
      abb119(22)=spbk4k3*c2
      abb119(12)=abb119(12)*abb119(22)
      abb119(15)=abb119(15)*spbk4k3
      abb119(12)=abb119(12)-abb119(15)
      abb119(15)=abb119(12)*spak2k4
      abb119(15)=abb119(21)-abb119(15)
      abb119(21)=-abb119(7)**2
      abb119(16)=abb119(21)+abb119(16)
      abb119(15)=abb119(15)*abb119(16)
      abb119(9)=-abb119(10)*abb119(9)
      abb119(8)=abb119(11)*abb119(8)
      abb119(8)=abb119(8)+abb119(9)
      abb119(8)=spbk7l6*abb119(8)
      abb119(9)=spbl6l5*spak2l5*abb119(13)
      abb119(8)=abb119(9)+abb119(8)+abb119(15)
      abb119(8)=8.0_ki*abb119(8)
      abb119(9)=abb119(10)*abb119(22)
      abb119(11)=abb119(14)*abb119(11)
      abb119(13)=-spbk4k3*abb119(11)
      abb119(9)=abb119(9)+abb119(13)
      abb119(9)=8.0_ki*abb119(9)
      abb119(13)=8.0_ki*spak2l5
      abb119(12)=abb119(12)*abb119(13)
      abb119(10)=abb119(10)*abb119(19)
      abb119(11)=-spbk3k1*abb119(11)
      abb119(10)=abb119(10)+abb119(11)
      abb119(10)=8.0_ki*abb119(10)
      abb119(11)=abb119(20)*abb119(13)
      R2d119=0.0_ki
      rat2 = rat2 + R2d119
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='119' value='", &
          & R2d119, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd119h1
