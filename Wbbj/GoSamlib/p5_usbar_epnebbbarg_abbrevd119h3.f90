module     p5_usbar_epnebbbarg_abbrevd119h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(36), public :: abb119
   complex(ki), public :: R2d119
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb119(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb119(2)=1.0_ki/(es34+es567-es12-es234)
      abb119(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb119(4)=NC**(-1)
      abb119(5)=spak2l5**(-1)
      abb119(6)=sqrt(mB**2)
      abb119(7)=spbl5k2**(-1)
      abb119(8)=abb119(3)*i_*CVSU*abb119(2)*abb119(1)
      abb119(9)=TR*gW
      abb119(9)=abb119(9)**2
      abb119(10)=abb119(8)*abb119(9)*spbk3k1
      abb119(11)=abb119(10)*spbe7l5
      abb119(12)=abb119(11)*abb119(6)
      abb119(13)=abb119(12)*c1
      abb119(14)=abb119(13)*spak2e7
      abb119(15)=abb119(11)*c1
      abb119(16)=mB*spak2e7
      abb119(17)=abb119(16)*abb119(15)
      abb119(14)=abb119(14)-abb119(17)
      abb119(14)=abb119(14)*NC
      abb119(16)=abb119(16)*abb119(11)
      abb119(18)=abb119(12)*spak2e7
      abb119(16)=abb119(16)-abb119(18)
      abb119(19)=abb119(4)**2
      abb119(16)=c2*abb119(19)*abb119(16)
      abb119(18)=abb119(18)*c1
      abb119(17)=abb119(17)-abb119(18)
      abb119(17)=abb119(4)*abb119(17)
      abb119(14)=abb119(14)-abb119(16)+2.0_ki*abb119(17)
      abb119(16)=spbl6k3*spak3k4
      abb119(17)=spbl6k1*spak1k4
      abb119(16)=abb119(16)-abb119(17)
      abb119(17)=-abb119(14)*abb119(16)
      abb119(18)=abb119(5)*spak2e7
      abb119(19)=abb119(19)*c2
      abb119(20)=abb119(19)*mB
      abb119(21)=abb119(20)*abb119(18)*abb119(10)
      abb119(22)=abb119(18)*mB
      abb119(10)=abb119(22)*abb119(10)*c1
      abb119(23)=abb119(10)*NC
      abb119(24)=2.0_ki*abb119(4)
      abb119(10)=abb119(10)*abb119(24)
      abb119(10)=-abb119(10)+abb119(23)+abb119(21)
      abb119(21)=abb119(10)*spbk7e7
      abb119(23)=-abb119(21)*abb119(16)
      abb119(25)=abb119(23)*spak2k7
      abb119(17)=abb119(25)+abb119(17)
      abb119(25)=4.0_ki*spak2l6
      abb119(26)=-abb119(25)*spbl6k2*abb119(17)
      abb119(27)=abb119(6)**2
      abb119(10)=-abb119(27)*abb119(10)
      abb119(28)=abb119(10)*spbe7l6
      abb119(29)=mB**2
      abb119(30)=abb119(29)*abb119(18)
      abb119(24)=abb119(24)-NC
      abb119(31)=-abb119(24)*abb119(12)*c1*abb119(30)
      abb119(12)=abb119(19)*abb119(12)
      abb119(32)=abb119(30)*abb119(12)
      abb119(31)=abb119(32)+abb119(31)
      abb119(32)=abb119(7)*spbl6k2
      abb119(33)=abb119(31)*abb119(32)
      abb119(13)=-abb119(13)*abb119(24)
      abb119(12)=abb119(13)+abb119(12)
      abb119(13)=spbk7l6*spae7k7
      abb119(34)=spbl6l5*spal5e7
      abb119(13)=abb119(13)+abb119(34)
      abb119(34)=abb119(13)*abb119(12)
      abb119(28)=abb119(33)+abb119(34)+abb119(28)
      abb119(33)=spak2k4*abb119(28)
      abb119(33)=8.0_ki*abb119(33)
      abb119(31)=-abb119(7)*abb119(31)*abb119(16)
      abb119(17)=abb119(31)-abb119(17)
      abb119(17)=8.0_ki*abb119(17)
      abb119(31)=-abb119(12)*abb119(16)
      abb119(34)=-abb119(31)*abb119(25)
      abb119(10)=4.0_ki*abb119(10)*abb119(16)
      abb119(23)=-abb119(23)*abb119(25)
      abb119(35)=abb119(24)*abb119(22)
      abb119(15)=-abb119(15)*abb119(35)
      abb119(11)=abb119(11)*abb119(19)*abb119(22)
      abb119(11)=abb119(15)+abb119(11)
      abb119(15)=-abb119(25)*abb119(11)*abb119(16)
      abb119(16)=-spak2k3*abb119(28)
      abb119(18)=abb119(8)*abb119(18)
      abb119(22)=abb119(9)*spbe7l5
      abb119(25)=abb119(22)*abb119(6)
      abb119(19)=abb119(25)*abb119(19)
      abb119(29)=abb119(29)*abb119(18)*abb119(19)
      abb119(36)=abb119(8)*c1
      abb119(24)=-abb119(24)*abb119(25)*abb119(36)
      abb119(25)=abb119(24)*abb119(30)
      abb119(25)=abb119(29)+abb119(25)
      abb119(25)=abb119(25)*abb119(32)
      abb119(29)=abb119(35)*abb119(36)
      abb119(18)=abb119(18)*abb119(20)
      abb119(18)=abb119(29)-abb119(18)
      abb119(9)=abb119(9)*abb119(18)
      abb119(20)=spbe7l6*abb119(9)*abb119(27)
      abb119(20)=abb119(25)+abb119(20)
      abb119(20)=spak2k4*abb119(20)
      abb119(8)=abb119(19)*abb119(8)
      abb119(8)=abb119(8)+abb119(24)
      abb119(13)=abb119(8)*abb119(13)*spak2k4
      abb119(13)=abb119(13)+abb119(20)
      abb119(19)=-spbk4k1*abb119(13)
      abb119(16)=abb119(19)+abb119(16)
      abb119(16)=4.0_ki*abb119(16)
      abb119(19)=-spak1k2*abb119(28)
      abb119(13)=spbk4k3*abb119(13)
      abb119(13)=abb119(13)+abb119(19)
      abb119(13)=4.0_ki*abb119(13)
      abb119(19)=4.0_ki*abb119(31)
      abb119(20)=-spae7k7*abb119(19)
      abb119(24)=abb119(21)*spak2k7
      abb119(14)=abb119(24)+abb119(14)
      abb119(24)=spbk3k2*spak3k4
      abb119(25)=spbk2k1*spak1k4
      abb119(24)=abb119(24)+abb119(25)
      abb119(14)=4.0_ki*abb119(14)*abb119(24)
      abb119(24)=abb119(21)*spak4k7
      abb119(25)=abb119(11)*spak4l5
      abb119(27)=abb119(12)*spak4e7
      abb119(24)=-abb119(25)+abb119(27)+abb119(24)
      abb119(24)=8.0_ki*abb119(24)
      abb119(25)=4.0_ki*spak3k4
      abb119(27)=abb119(25)*abb119(12)
      abb119(28)=4.0_ki*spak1k4
      abb119(29)=abb119(28)*abb119(12)
      abb119(30)=abb119(25)*abb119(21)
      abb119(31)=abb119(28)*abb119(21)
      abb119(25)=abb119(25)*abb119(11)
      abb119(28)=abb119(28)*abb119(11)
      abb119(18)=-spak4l5*abb119(22)*abb119(18)
      abb119(9)=spbk7e7*abb119(9)*spak4k7
      abb119(8)=abb119(8)*spak4e7
      abb119(8)=abb119(18)+abb119(9)-abb119(8)
      abb119(9)=-spbk4k1*abb119(8)
      abb119(18)=spak3k7*abb119(21)
      abb119(22)=-spak3l5*abb119(11)
      abb119(32)=spak3e7*abb119(12)
      abb119(9)=abb119(22)+abb119(18)+abb119(32)+abb119(9)
      abb119(9)=4.0_ki*abb119(9)
      abb119(8)=spbk4k3*abb119(8)
      abb119(18)=-spak1k7*abb119(21)
      abb119(11)=spak1l5*abb119(11)
      abb119(12)=-spak1e7*abb119(12)
      abb119(8)=abb119(11)+abb119(18)+abb119(12)+abb119(8)
      abb119(8)=4.0_ki*abb119(8)
      abb119(11)=spal5e7*abb119(19)
      R2d119=0.0_ki
      rat2 = rat2 + R2d119
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='119' value='", &
          & R2d119, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd119h3
