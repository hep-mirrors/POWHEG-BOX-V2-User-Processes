module     p9_csbar_epnebbbarg_abbrevd307h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(39), public :: abb307
   complex(ki), public :: R2d307
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
      abb307(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb307(2)=1.0_ki/(es34+es567-es12-es234)
      abb307(3)=sqrt(mB**2)
      abb307(4)=NC**(-1)
      abb307(5)=spak2l6**(-1)
      abb307(6)=spak2l5**(-1)
      abb307(7)=-spbl5k3*spak3k4
      abb307(8)=spbl5k1*spak1k4
      abb307(7)=abb307(8)+abb307(7)
      abb307(8)=c1+c3
      abb307(9)=TR*gW
      abb307(9)=abb307(9)**2*i_*CVSC*abb307(2)*abb307(1)
      abb307(10)=abb307(9)*abb307(4)
      abb307(11)=abb307(10)*spak2e7
      abb307(12)=abb307(8)*abb307(11)
      abb307(9)=abb307(9)*c2*abb307(4)**2
      abb307(13)=spak2e7*abb307(9)
      abb307(14)=abb307(12)-abb307(13)
      abb307(15)=abb307(3)*spbk3k1
      abb307(14)=abb307(14)*abb307(15)*spbk7e7
      abb307(16)=abb307(5)*mB**2
      abb307(16)=abb307(16)-spbl6k2
      abb307(7)=4.0_ki*abb307(7)*spak2k7*abb307(14)*abb307(16)
      abb307(16)=abb307(6)*mB
      abb307(17)=abb307(16)*spbk3k1
      abb307(18)=abb307(8)*abb307(10)*abb307(17)
      abb307(17)=abb307(17)*abb307(9)
      abb307(17)=abb307(18)-abb307(17)
      abb307(18)=-spak2k4*abb307(17)
      abb307(19)=abb307(3)**2
      abb307(20)=abb307(19)*spak2e7
      abb307(21)=spbe7l6*abb307(18)*abb307(20)
      abb307(22)=spak4k7*spbl6l5
      abb307(23)=abb307(22)*abb307(14)
      abb307(21)=abb307(21)+abb307(23)
      abb307(21)=8.0_ki*abb307(21)
      abb307(10)=abb307(10)*abb307(8)
      abb307(23)=abb307(15)*abb307(10)
      abb307(24)=-spak2k4*abb307(23)
      abb307(25)=spak2k4*abb307(9)
      abb307(26)=abb307(25)*abb307(15)
      abb307(24)=abb307(26)+abb307(24)
      abb307(26)=16.0_ki*spbl6l5
      abb307(24)=abb307(24)*abb307(26)
      abb307(26)=8.0_ki*spbe7l6
      abb307(26)=abb307(26)*abb307(18)*spak2e7
      abb307(27)=8.0_ki*spak2k7
      abb307(27)=abb307(27)*abb307(18)*spbk7e7
      abb307(20)=-abb307(20)*abb307(17)
      abb307(28)=spbl6k3*spak3k4
      abb307(29)=spbl6k1*spak1k4
      abb307(28)=abb307(28)-abb307(29)
      abb307(29)=4.0_ki*abb307(28)
      abb307(30)=-abb307(20)*abb307(29)
      abb307(31)=-spak2e7*abb307(17)
      abb307(32)=abb307(31)*abb307(29)
      abb307(33)=spbk7e7*spak2e7
      abb307(34)=abb307(18)*abb307(33)
      abb307(34)=8.0_ki*abb307(34)
      abb307(29)=-abb307(14)*abb307(29)
      abb307(35)=abb307(16)*spak2k4
      abb307(12)=abb307(12)*abb307(35)
      abb307(36)=abb307(13)*abb307(35)
      abb307(12)=abb307(12)-abb307(36)
      abb307(19)=-spbe7l6*abb307(19)*abb307(12)
      abb307(8)=abb307(8)*abb307(11)*spbk7e7
      abb307(11)=abb307(13)*spbk7e7
      abb307(11)=abb307(11)-abb307(8)
      abb307(11)=abb307(22)*abb307(3)*abb307(11)
      abb307(11)=abb307(11)-abb307(19)
      abb307(13)=-spbk4k1*abb307(11)
      abb307(19)=abb307(20)*spbe7l6
      abb307(20)=spak2k3*abb307(19)
      abb307(14)=abb307(14)*spbl6l5
      abb307(22)=spak3k7*abb307(14)
      abb307(13)=abb307(22)+abb307(20)+abb307(13)
      abb307(13)=4.0_ki*abb307(13)
      abb307(9)=abb307(15)*abb307(9)
      abb307(9)=abb307(9)-abb307(23)
      abb307(15)=spak2k3*abb307(9)
      abb307(20)=abb307(10)*spak2k4
      abb307(20)=abb307(25)-abb307(20)
      abb307(20)=abb307(3)*abb307(20)
      abb307(22)=spbk4k1*abb307(20)
      abb307(15)=abb307(22)+abb307(15)
      abb307(22)=8.0_ki*spbl6l5
      abb307(15)=abb307(15)*abb307(22)
      abb307(23)=spbk4k1*abb307(12)
      abb307(37)=-spak2k3*abb307(31)
      abb307(23)=abb307(23)+abb307(37)
      abb307(37)=4.0_ki*spbe7l6
      abb307(23)=abb307(23)*abb307(37)
      abb307(10)=abb307(35)*abb307(10)
      abb307(16)=abb307(25)*abb307(16)
      abb307(10)=abb307(10)-abb307(16)
      abb307(16)=abb307(10)*spbk7e7
      abb307(25)=spbk4k1*abb307(16)
      abb307(38)=abb307(17)*spbk7e7
      abb307(39)=spak2k3*abb307(38)
      abb307(25)=abb307(25)+abb307(39)
      abb307(39)=4.0_ki*spak2k7
      abb307(25)=abb307(25)*abb307(39)
      abb307(36)=abb307(36)*spbk7e7
      abb307(8)=abb307(35)*abb307(8)
      abb307(8)=abb307(36)-abb307(8)
      abb307(35)=spbk4k1*abb307(8)
      abb307(33)=abb307(17)*abb307(33)
      abb307(36)=-spak2k3*abb307(33)
      abb307(35)=abb307(35)+abb307(36)
      abb307(35)=4.0_ki*abb307(35)
      abb307(11)=spbk4k3*abb307(11)
      abb307(19)=spak1k2*abb307(19)
      abb307(14)=-spak1k7*abb307(14)
      abb307(11)=abb307(14)+abb307(19)+abb307(11)
      abb307(11)=4.0_ki*abb307(11)
      abb307(14)=spak1k2*abb307(9)
      abb307(19)=-spbk4k3*abb307(20)
      abb307(14)=abb307(19)+abb307(14)
      abb307(14)=abb307(14)*abb307(22)
      abb307(12)=-spbk4k3*abb307(12)
      abb307(19)=-spak1k2*abb307(31)
      abb307(12)=abb307(12)+abb307(19)
      abb307(12)=abb307(12)*abb307(37)
      abb307(16)=-spbk4k3*abb307(16)
      abb307(19)=spak1k2*abb307(38)
      abb307(16)=abb307(16)+abb307(19)
      abb307(16)=abb307(16)*abb307(39)
      abb307(8)=-spbk4k3*abb307(8)
      abb307(19)=-spak1k2*abb307(33)
      abb307(8)=abb307(8)+abb307(19)
      abb307(8)=4.0_ki*abb307(8)
      abb307(19)=spae7k7*spbe7l6
      abb307(20)=abb307(18)*abb307(19)
      abb307(20)=8.0_ki*abb307(20)
      abb307(22)=abb307(10)*abb307(19)
      abb307(31)=spbk4k1*abb307(22)
      abb307(19)=abb307(17)*abb307(19)
      abb307(33)=spak2k3*abb307(19)
      abb307(31)=abb307(31)+abb307(33)
      abb307(31)=4.0_ki*abb307(31)
      abb307(22)=-spbk4k3*abb307(22)
      abb307(33)=spak1k2*abb307(19)
      abb307(22)=abb307(22)+abb307(33)
      abb307(22)=4.0_ki*abb307(22)
      abb307(18)=16.0_ki*abb307(18)
      abb307(33)=abb307(10)*spbk4k1
      abb307(36)=-spak2k3*abb307(17)
      abb307(33)=-abb307(33)+abb307(36)
      abb307(33)=8.0_ki*abb307(33)
      abb307(10)=abb307(10)*spbk4k3
      abb307(36)=-spak1k2*abb307(17)
      abb307(10)=abb307(10)+abb307(36)
      abb307(10)=8.0_ki*abb307(10)
      abb307(36)=-spbe7k3*spak3k4
      abb307(37)=spbe7k1*spak1k4
      abb307(36)=abb307(36)+abb307(37)
      abb307(17)=4.0_ki*abb307(36)*abb307(17)*spae7k7
      abb307(9)=8.0_ki*abb307(9)*abb307(28)
      abb307(19)=4.0_ki*abb307(19)
      abb307(28)=spak3k4*abb307(19)
      abb307(19)=-spak1k4*abb307(19)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd307h3
