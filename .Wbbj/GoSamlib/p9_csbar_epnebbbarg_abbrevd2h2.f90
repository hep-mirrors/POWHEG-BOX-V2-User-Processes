module     p9_csbar_epnebbbarg_abbrevd2h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(21), public :: abb2
   complex(ki), public :: R2d2
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=1.0_ki/(es34+es567-es12-es234)
      abb2(3)=es56**(-1)
      abb2(4)=spbl5k2**(-1)
      abb2(5)=spak2l6**(-1)
      abb2(6)=c1*spak2l5
      abb2(7)=2.0_ki*spak2l5
      abb2(8)=abb2(7)*c3
      abb2(6)=abb2(6)-abb2(8)
      abb2(9)=abb2(3)*i_*CVSC*abb2(2)*abb2(1)
      abb2(10)=TR*gW
      abb2(10)=abb2(10)**2
      abb2(11)=abb2(9)*abb2(10)*spbk3k1
      abb2(12)=abb2(11)*NC
      abb2(6)=abb2(6)*abb2(12)
      abb2(13)=c2-c4
      abb2(14)=abb2(13)*abb2(11)*spak2l5
      abb2(6)=abb2(6)-abb2(14)
      abb2(14)=-spbl6k3*spak3k4
      abb2(15)=spbl6k1*spak1k4
      abb2(14)=abb2(14)+abb2(15)
      abb2(6)=4.0_ki*abb2(6)*abb2(14)
      abb2(14)=abb2(11)*spbe7l6
      abb2(15)=abb2(13)*abb2(14)*spak2e7
      abb2(16)=abb2(14)*NC
      abb2(17)=abb2(16)*c3
      abb2(18)=abb2(17)*spak2e7
      abb2(16)=abb2(16)*c1
      abb2(19)=2.0_ki*spak2e7
      abb2(19)=abb2(19)*abb2(16)
      abb2(15)=abb2(19)-abb2(18)+abb2(15)
      abb2(18)=abb2(15)*spak4l5
      abb2(19)=-abb2(13)*abb2(14)*spak2l5
      abb2(20)=abb2(16)*spak2l5
      abb2(7)=abb2(7)*abb2(17)
      abb2(7)=abb2(20)-abb2(7)+abb2(19)
      abb2(19)=abb2(7)*spak4e7
      abb2(16)=abb2(16)+abb2(17)
      abb2(16)=spal5e7*abb2(16)
      abb2(14)=abb2(14)*spal5e7
      abb2(14)=2.0_ki*abb2(14)
      abb2(14)=-abb2(14)*abb2(13)
      abb2(14)=abb2(14)-abb2(16)
      abb2(16)=2.0_ki*spak2k4
      abb2(17)=abb2(16)*abb2(14)
      abb2(17)=-abb2(17)+abb2(18)+abb2(19)
      abb2(17)=4.0_ki*abb2(17)
      abb2(11)=-abb2(13)*abb2(11)*spak2e7
      abb2(18)=-c3+2.0_ki*c1
      abb2(18)=spak2e7*abb2(18)
      abb2(12)=-abb2(12)*abb2(18)
      abb2(11)=abb2(12)+abb2(11)
      abb2(12)=spbe7k3*spak3k4
      abb2(19)=spbe7k1*spak1k4
      abb2(12)=abb2(12)-abb2(19)
      abb2(11)=abb2(12)*abb2(11)
      abb2(12)=4.0_ki*abb2(5)*abb2(4)*abb2(11)*mB**2
      abb2(11)=-2.0_ki*abb2(11)
      abb2(10)=abb2(10)*spbe7l6
      abb2(13)=-abb2(10)*abb2(13)
      abb2(19)=2.0_ki*abb2(9)
      abb2(19)=abb2(13)*abb2(19)
      abb2(10)=abb2(10)*abb2(9)*NC
      abb2(20)=abb2(10)*c3
      abb2(21)=abb2(10)*c1
      abb2(19)=-abb2(21)+abb2(19)-abb2(20)
      abb2(16)=abb2(16)*abb2(19)*spal5e7
      abb2(9)=abb2(13)*abb2(9)
      abb2(13)=abb2(21)+abb2(9)
      abb2(13)=spak2l5*abb2(13)
      abb2(8)=abb2(8)*abb2(10)
      abb2(8)=-abb2(8)+abb2(13)
      abb2(8)=abb2(8)*spak4e7
      abb2(9)=spak2e7*abb2(9)
      abb2(10)=abb2(18)*abb2(10)
      abb2(9)=abb2(9)-abb2(10)
      abb2(9)=abb2(9)*spak4l5
      abb2(8)=-abb2(16)+abb2(8)-abb2(9)
      abb2(9)=-spbk4k1*abb2(8)
      abb2(10)=-spak3e7*abb2(7)
      abb2(13)=-spak3l5*abb2(15)
      abb2(14)=2.0_ki*abb2(14)
      abb2(16)=spak2k3*abb2(14)
      abb2(9)=abb2(16)+abb2(13)+abb2(9)+abb2(10)
      abb2(9)=2.0_ki*abb2(9)
      abb2(8)=spbk4k3*abb2(8)
      abb2(7)=spak1e7*abb2(7)
      abb2(10)=spak1l5*abb2(15)
      abb2(13)=spak1k2*abb2(14)
      abb2(7)=abb2(13)+abb2(10)+abb2(8)+abb2(7)
      abb2(7)=2.0_ki*abb2(7)
      abb2(8)=spak3k4*abb2(14)
      abb2(10)=-spak1k4*abb2(14)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd2h2
