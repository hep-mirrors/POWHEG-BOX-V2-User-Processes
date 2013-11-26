module     p0_dbaru_epnebbbarg_abbrevd302h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(29), public :: abb302
   complex(ki), public :: R2d302
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
      abb302(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb302(2)=1.0_ki/(es34+es567-es12-es234)
      abb302(3)=NC**(-1)
      abb302(4)=spbl5k2**(-1)
      abb302(5)=sqrt(mB**2)
      abb302(6)=c4*abb302(3)**2
      abb302(7)=c3*abb302(3)
      abb302(8)=c1*abb302(3)
      abb302(6)=-abb302(6)+abb302(7)+abb302(8)-c2
      abb302(7)=-abb302(6)*spbk3k1
      abb302(8)=CVDU*i_*spak1k4*abb302(2)*abb302(1)
      abb302(9)=TR*gW
      abb302(9)=abb302(9)**2
      abb302(10)=abb302(8)*abb302(9)
      abb302(11)=spbe7k2*abb302(10)
      abb302(12)=abb302(11)*abb302(5)
      abb302(13)=-abb302(7)*abb302(12)
      abb302(14)=abb302(13)*spak1l5
      abb302(12)=-abb302(6)*spbk4k3*abb302(12)
      abb302(15)=abb302(12)*spak4l5
      abb302(14)=abb302(14)-abb302(15)
      abb302(15)=spbk7k2*spae7k7
      abb302(16)=abb302(15)*abb302(14)
      abb302(17)=mB*abb302(4)
      abb302(11)=abb302(11)*abb302(17)
      abb302(18)=abb302(6)*abb302(11)*spbk3k1
      abb302(19)=abb302(15)*abb302(18)
      abb302(20)=abb302(19)*spak1l6
      abb302(15)=abb302(6)*abb302(15)
      abb302(11)=abb302(11)*spbk4k3
      abb302(21)=abb302(11)*abb302(15)
      abb302(22)=abb302(21)*spak4l6
      abb302(20)=abb302(20)+abb302(22)
      abb302(22)=spbl6k2*abb302(20)
      abb302(16)=abb302(22)+abb302(16)
      abb302(16)=4.0_ki*spak2l6*abb302(16)
      abb302(22)=-8.0_ki*abb302(20)
      abb302(11)=abb302(11)*abb302(6)
      abb302(23)=abb302(11)*spak4l6
      abb302(24)=-abb302(18)*spak1l6
      abb302(23)=abb302(23)-abb302(24)
      abb302(24)=abb302(23)*spbl6k2
      abb302(24)=abb302(24)+abb302(14)
      abb302(24)=abb302(24)*spal6e7
      abb302(20)=-abb302(24)-abb302(20)
      abb302(20)=8.0_ki*abb302(20)
      abb302(24)=4.0_ki*abb302(24)
      abb302(25)=-8.0_ki*abb302(23)
      abb302(23)=4.0_ki*abb302(23)
      abb302(14)=-4.0_ki*spae7k7*abb302(14)
      abb302(9)=abb302(9)*abb302(5)
      abb302(26)=abb302(8)*spbk4k3*abb302(6)*abb302(9)
      abb302(27)=abb302(26)*spbk7e7
      abb302(28)=spak4k7*abb302(27)
      abb302(7)=-abb302(9)*abb302(8)*abb302(7)
      abb302(8)=abb302(7)*spbk7e7
      abb302(9)=spak1k7*abb302(8)
      abb302(9)=abb302(9)+abb302(28)
      abb302(9)=spal5e7*abb302(9)
      abb302(10)=abb302(10)*abb302(17)
      abb302(15)=-abb302(15)*abb302(10)
      abb302(17)=-spbk4k3*abb302(15)
      abb302(28)=spak4l6*abb302(17)
      abb302(15)=-spbk3k1*abb302(15)
      abb302(29)=spak1l6*abb302(15)
      abb302(28)=abb302(28)+abb302(29)
      abb302(28)=spbe7l6*abb302(28)
      abb302(27)=-spak4e7*abb302(27)
      abb302(8)=-spak1e7*abb302(8)
      abb302(8)=abb302(27)+abb302(8)
      abb302(8)=spal5k7*abb302(8)
      abb302(27)=-spak4e7*abb302(12)
      abb302(29)=spak1e7*abb302(13)
      abb302(27)=abb302(27)+abb302(29)
      abb302(27)=spak2l5*abb302(27)
      abb302(29)=2.0_ki*spal5e7
      abb302(12)=abb302(12)*abb302(29)
      abb302(12)=abb302(12)-abb302(21)
      abb302(12)=spak2k4*abb302(12)
      abb302(13)=abb302(13)*abb302(29)
      abb302(13)=abb302(13)+abb302(19)
      abb302(13)=spak1k2*abb302(13)
      abb302(8)=abb302(13)+abb302(12)+2.0_ki*abb302(27)+abb302(28)+abb302(8)+ab&
      &b302(9)
      abb302(8)=4.0_ki*abb302(8)
      abb302(6)=-abb302(10)*abb302(6)
      abb302(9)=abb302(6)*spbk4k3
      abb302(10)=spak4l6*abb302(9)
      abb302(6)=abb302(6)*spbk3k1
      abb302(12)=spak1l6*abb302(6)
      abb302(10)=abb302(10)+abb302(12)
      abb302(10)=spbl6k2*abb302(10)
      abb302(12)=-spak4l5*abb302(26)
      abb302(7)=-spak1l5*abb302(7)
      abb302(7)=abb302(7)+abb302(10)+abb302(12)
      abb302(7)=8.0_ki*abb302(7)
      abb302(10)=abb302(11)*spak4e7
      abb302(11)=-abb302(18)*spak1e7
      abb302(10)=abb302(10)-abb302(11)
      abb302(11)=8.0_ki*abb302(10)
      abb302(10)=-4.0_ki*abb302(10)
      abb302(12)=4.0_ki*abb302(17)
      abb302(9)=-8.0_ki*abb302(9)
      abb302(13)=4.0_ki*abb302(15)
      abb302(6)=-8.0_ki*abb302(6)
      R2d302=0.0_ki
      rat2 = rat2 + R2d302
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='302' value='", &
          & R2d302, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd302h0
