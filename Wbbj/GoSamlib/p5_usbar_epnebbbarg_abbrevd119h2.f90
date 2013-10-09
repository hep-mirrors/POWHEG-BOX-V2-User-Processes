module     p5_usbar_epnebbbarg_abbrevd119h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(42), public :: abb119
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
      abb119(5)=sqrt(mB**2)
      abb119(6)=spbl5k2**(-1)
      abb119(7)=spak2l5**(-1)
      abb119(8)=abb119(3)*i_*CVSU*abb119(2)*abb119(1)
      abb119(9)=TR*gW
      abb119(9)=abb119(9)**2
      abb119(10)=abb119(8)*abb119(9)*spbk3k1
      abb119(11)=-NC+2.0_ki*abb119(4)
      abb119(12)=abb119(11)*c1
      abb119(13)=-abb119(12)*abb119(10)*spal5e7
      abb119(14)=c2*abb119(4)**2
      abb119(15)=abb119(14)*spal5e7
      abb119(16)=abb119(10)*abb119(15)
      abb119(16)=abb119(13)+abb119(16)
      abb119(17)=abb119(16)*spbk7e7
      abb119(18)=spbl6k3*spak3k4
      abb119(19)=spbl6k1*spak1k4
      abb119(18)=abb119(18)-abb119(19)
      abb119(19)=-spak2l6*abb119(18)
      abb119(20)=abb119(19)*abb119(17)
      abb119(21)=-spak2k7*abb119(20)
      abb119(22)=abb119(16)*spbe7l5
      abb119(23)=abb119(19)*abb119(22)
      abb119(24)=spak2l5*abb119(23)
      abb119(21)=abb119(21)+abb119(24)
      abb119(21)=4.0_ki*spbl6k2*abb119(21)
      abb119(24)=spbe7k2*abb119(6)
      abb119(25)=mB*abb119(5)
      abb119(26)=abb119(25)*abb119(24)
      abb119(27)=-abb119(26)*abb119(13)
      abb119(10)=abb119(24)*abb119(10)
      abb119(28)=abb119(25)*abb119(10)
      abb119(29)=abb119(28)*abb119(14)
      abb119(30)=abb119(29)*spal5e7
      abb119(27)=abb119(27)-abb119(30)
      abb119(30)=abb119(27)*spbl6l5
      abb119(12)=-abb119(28)*abb119(12)
      abb119(12)=abb119(12)+abb119(29)
      abb119(28)=spbk7l6*spae7k7
      abb119(29)=abb119(28)*abb119(12)
      abb119(29)=abb119(30)-abb119(29)
      abb119(30)=-spak2k4*abb119(29)
      abb119(31)=abb119(5)**2
      abb119(16)=-abb119(31)*abb119(16)
      abb119(32)=spbe7l6*spak2k4
      abb119(33)=abb119(32)*abb119(16)
      abb119(30)=abb119(30)-abb119(33)
      abb119(30)=8.0_ki*abb119(30)
      abb119(33)=abb119(22)*spak2l5
      abb119(34)=abb119(17)*spak2k7
      abb119(33)=abb119(33)-abb119(34)
      abb119(34)=-8.0_ki*abb119(18)*abb119(33)
      abb119(35)=4.0_ki*abb119(12)
      abb119(35)=abb119(19)*abb119(35)
      abb119(18)=4.0_ki*abb119(18)
      abb119(36)=abb119(16)*abb119(18)
      abb119(20)=-4.0_ki*abb119(20)
      abb119(23)=4.0_ki*abb119(23)
      abb119(37)=abb119(8)*abb119(24)
      abb119(25)=abb119(37)*abb119(25)
      abb119(38)=abb119(9)*spal5e7
      abb119(39)=abb119(14)*abb119(38)
      abb119(40)=abb119(25)*abb119(39)
      abb119(41)=abb119(8)*c1
      abb119(38)=-abb119(11)*abb119(41)*abb119(38)
      abb119(42)=abb119(38)*abb119(26)
      abb119(40)=abb119(40)+abb119(42)
      abb119(40)=abb119(40)*spbl6l5
      abb119(11)=-abb119(11)*abb119(26)*abb119(41)
      abb119(14)=abb119(25)*abb119(14)
      abb119(11)=abb119(11)+abb119(14)
      abb119(9)=abb119(9)*abb119(11)
      abb119(11)=abb119(9)*abb119(28)
      abb119(11)=abb119(40)+abb119(11)
      abb119(11)=spak2k4*abb119(11)
      abb119(8)=abb119(39)*abb119(8)
      abb119(8)=abb119(8)+abb119(38)
      abb119(14)=abb119(32)*abb119(8)*abb119(31)
      abb119(11)=abb119(14)+abb119(11)
      abb119(14)=spbk4k1*abb119(11)
      abb119(16)=abb119(16)*spbe7l6
      abb119(16)=abb119(29)+abb119(16)
      abb119(25)=-spak2k3*abb119(16)
      abb119(14)=abb119(14)+abb119(25)
      abb119(14)=4.0_ki*abb119(14)
      abb119(11)=-spbk4k3*abb119(11)
      abb119(16)=-spak1k2*abb119(16)
      abb119(11)=abb119(11)+abb119(16)
      abb119(11)=4.0_ki*abb119(11)
      abb119(16)=-spae7k7*abb119(12)*abb119(18)
      abb119(25)=-spbk3k2*spak3k4
      abb119(26)=-spbk2k1*spak1k4
      abb119(25)=abb119(26)+abb119(25)
      abb119(25)=abb119(33)*abb119(25)
      abb119(26)=mB**2
      abb119(24)=abb119(26)*abb119(24)
      abb119(13)=-abb119(24)*abb119(13)
      abb119(10)=abb119(10)*abb119(26)*abb119(15)
      abb119(10)=abb119(13)-abb119(10)
      abb119(10)=abb119(10)*abb119(7)
      abb119(13)=-abb119(19)*abb119(10)
      abb119(13)=abb119(13)+abb119(25)
      abb119(13)=4.0_ki*abb119(13)
      abb119(15)=abb119(10)*spak2k4
      abb119(19)=abb119(22)*spak4l5
      abb119(25)=abb119(17)*spak4k7
      abb119(28)=abb119(12)*spak4e7
      abb119(15)=-abb119(25)+abb119(19)+abb119(28)+abb119(15)
      abb119(15)=8.0_ki*abb119(15)
      abb119(19)=4.0_ki*spak3k4
      abb119(25)=abb119(19)*abb119(12)
      abb119(28)=4.0_ki*spak1k4
      abb119(29)=abb119(28)*abb119(12)
      abb119(31)=abb119(19)*abb119(17)
      abb119(32)=abb119(28)*abb119(17)
      abb119(19)=abb119(19)*abb119(22)
      abb119(28)=abb119(28)*abb119(22)
      abb119(26)=abb119(26)*abb119(37)*abb119(39)
      abb119(24)=abb119(38)*abb119(24)
      abb119(24)=abb119(26)+abb119(24)
      abb119(24)=abb119(24)*abb119(7)*spak2k4
      abb119(26)=spak4k7*spbk7e7
      abb119(33)=spak4l5*spbe7l5
      abb119(26)=abb119(26)-abb119(33)
      abb119(8)=abb119(26)*abb119(8)
      abb119(9)=abb119(9)*spak4e7
      abb119(8)=abb119(24)+abb119(8)-abb119(9)
      abb119(9)=spbk4k1*abb119(8)
      abb119(24)=-spak2k3*abb119(10)
      abb119(26)=-spak3e7*abb119(12)
      abb119(33)=spak3k7*abb119(17)
      abb119(37)=-spak3l5*abb119(22)
      abb119(9)=abb119(37)+abb119(33)+abb119(26)+abb119(24)+abb119(9)
      abb119(9)=4.0_ki*abb119(9)
      abb119(8)=-spbk4k3*abb119(8)
      abb119(10)=-spak1k2*abb119(10)
      abb119(12)=spak1e7*abb119(12)
      abb119(17)=-spak1k7*abb119(17)
      abb119(22)=spak1l5*abb119(22)
      abb119(8)=abb119(22)+abb119(17)+abb119(12)+abb119(10)+abb119(8)
      abb119(8)=4.0_ki*abb119(8)
      abb119(10)=-abb119(27)*abb119(18)
      R2d119=0.0_ki
      rat2 = rat2 + R2d119
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='119' value='", &
          & R2d119, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd119h2
