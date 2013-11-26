module     p1_dbarc_epnebbbarg_abbrevd307h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(37), public :: abb307
   complex(ki), public :: R2d307
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb307(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb307(2)=1.0_ki/(es34+es567-es12-es234)
      abb307(3)=sqrt(mB**2)
      abb307(4)=NC**(-1)
      abb307(5)=spak2l5**(-1)
      abb307(6)=spbl6k2**(-1)
      abb307(7)=spak2l6**(-1)
      abb307(8)=abb307(4)**2
      abb307(9)=abb307(8)*c2
      abb307(10)=c3*abb307(4)
      abb307(11)=c1*abb307(4)
      abb307(10)=-abb307(11)-abb307(10)+abb307(9)+c4
      abb307(11)=TR*gW
      abb307(11)=abb307(11)**2
      abb307(12)=abb307(11)*abb307(5)
      abb307(13)=mB**3*abb307(12)*spbe7k2*abb307(6)*abb307(10)*abb307(3)
      abb307(14)=CVDC*i_*spak1k4*abb307(2)*abb307(1)
      abb307(15)=abb307(14)*spbk4k3
      abb307(16)=abb307(15)*abb307(13)
      abb307(17)=abb307(10)*spbe7k2
      abb307(18)=abb307(17)*spak2l6
      abb307(19)=abb307(3)*mB
      abb307(12)=abb307(12)*abb307(19)
      abb307(20)=abb307(12)*abb307(15)
      abb307(21)=-abb307(20)*abb307(18)
      abb307(16)=abb307(16)+abb307(21)
      abb307(16)=spak2k4*abb307(16)
      abb307(21)=abb307(14)*spbk3k1
      abb307(13)=-abb307(21)*abb307(13)
      abb307(12)=abb307(12)*abb307(21)
      abb307(18)=abb307(12)*abb307(18)
      abb307(13)=abb307(13)+abb307(18)
      abb307(13)=spak1k2*abb307(13)
      abb307(13)=abb307(13)+abb307(16)
      abb307(16)=spbk7k2*spae7k7
      abb307(13)=abb307(16)*abb307(13)
      abb307(14)=abb307(14)*abb307(11)*spbl5k2
      abb307(18)=abb307(14)*spbk3k1
      abb307(22)=abb307(18)*spbe7k2
      abb307(23)=spak1e7*abb307(10)*abb307(22)
      abb307(14)=abb307(14)*spbk4k3
      abb307(24)=abb307(14)*spbe7k2
      abb307(25)=spak4e7*abb307(10)*abb307(24)
      abb307(23)=abb307(23)+abb307(25)
      abb307(19)=-abb307(23)*abb307(6)*abb307(19)**2
      abb307(25)=-abb307(10)*abb307(3)**2
      abb307(26)=abb307(25)*spak4e7
      abb307(24)=-abb307(24)*abb307(26)
      abb307(25)=abb307(25)*spak1e7
      abb307(22)=-abb307(22)*abb307(25)
      abb307(22)=abb307(24)+abb307(22)
      abb307(22)=spak2l6*abb307(22)
      abb307(13)=abb307(22)+abb307(13)+abb307(19)
      abb307(13)=4.0_ki*abb307(13)
      abb307(19)=spbk7e7*abb307(10)
      abb307(22)=abb307(19)*abb307(7)
      abb307(24)=abb307(6)*mB**2
      abb307(27)=abb307(24)*abb307(14)
      abb307(28)=abb307(27)*abb307(22)
      abb307(29)=abb307(14)*abb307(19)
      abb307(29)=-abb307(28)+abb307(29)
      abb307(29)=spak4k7*abb307(29)
      abb307(24)=abb307(24)*abb307(18)
      abb307(22)=abb307(24)*abb307(22)
      abb307(30)=abb307(18)*abb307(19)
      abb307(30)=-abb307(22)+abb307(30)
      abb307(30)=spak1k7*abb307(30)
      abb307(29)=abb307(29)+abb307(30)
      abb307(29)=8.0_ki*spal6e7*abb307(29)
      abb307(30)=abb307(10)*abb307(14)
      abb307(31)=-abb307(10)*abb307(7)
      abb307(32)=-abb307(27)*abb307(31)
      abb307(33)=-abb307(32)+abb307(30)
      abb307(33)=spak4l6*abb307(33)
      abb307(34)=abb307(10)*abb307(18)
      abb307(31)=-abb307(24)*abb307(31)
      abb307(35)=-abb307(31)+abb307(34)
      abb307(35)=spak1l6*abb307(35)
      abb307(33)=abb307(33)+abb307(35)
      abb307(33)=16.0_ki*abb307(33)
      abb307(27)=spak4e7*abb307(27)
      abb307(24)=spak1e7*abb307(24)
      abb307(24)=abb307(27)+abb307(24)
      abb307(17)=abb307(17)*abb307(24)
      abb307(23)=-spak2l6*abb307(23)
      abb307(17)=abb307(23)+abb307(17)
      abb307(17)=4.0_ki*abb307(17)
      abb307(23)=-spak2k4*abb307(20)
      abb307(24)=spak1k2*abb307(12)
      abb307(23)=abb307(24)+abb307(23)
      abb307(16)=-abb307(16)*abb307(10)*abb307(23)
      abb307(23)=abb307(14)*abb307(26)
      abb307(24)=abb307(18)*abb307(25)
      abb307(16)=abb307(23)+abb307(24)+abb307(16)
      abb307(16)=4.0_ki*abb307(16)
      abb307(23)=spak4e7*abb307(30)
      abb307(24)=spak1e7*abb307(34)
      abb307(23)=abb307(23)+abb307(24)
      abb307(23)=4.0_ki*abb307(23)
      abb307(15)=abb307(15)*abb307(11)
      abb307(24)=spak4k7*abb307(15)
      abb307(11)=abb307(21)*abb307(11)
      abb307(21)=spak1k7*abb307(11)
      abb307(21)=abb307(24)+abb307(21)
      abb307(21)=4.0_ki*abb307(19)*abb307(21)
      abb307(24)=abb307(14)*abb307(4)
      abb307(27)=abb307(24)*spbk7e7
      abb307(30)=spbk7e7*abb307(4)
      abb307(34)=abb307(20)*abb307(30)
      abb307(27)=abb307(27)+abb307(34)
      abb307(34)=c1+c3
      abb307(27)=abb307(27)*abb307(34)
      abb307(14)=abb307(20)+abb307(14)
      abb307(35)=abb307(14)*c4
      abb307(36)=-spbk7e7*abb307(35)
      abb307(8)=abb307(8)*spbk7e7
      abb307(37)=-abb307(8)*abb307(14)*c2
      abb307(27)=abb307(28)+abb307(37)+abb307(36)+abb307(27)
      abb307(27)=spak4k7*abb307(27)
      abb307(28)=abb307(18)*abb307(4)
      abb307(36)=abb307(28)*spbk7e7
      abb307(30)=abb307(12)*abb307(30)
      abb307(30)=abb307(36)+abb307(30)
      abb307(30)=abb307(30)*abb307(34)
      abb307(18)=abb307(12)+abb307(18)
      abb307(36)=abb307(18)*c4
      abb307(37)=-spbk7e7*abb307(36)
      abb307(8)=-abb307(8)*abb307(18)*c2
      abb307(8)=abb307(22)+abb307(8)+abb307(37)+abb307(30)
      abb307(8)=spak1k7*abb307(8)
      abb307(8)=abb307(27)+abb307(8)
      abb307(8)=spak2e7*abb307(8)
      abb307(22)=abb307(15)*abb307(26)
      abb307(25)=abb307(11)*abb307(25)
      abb307(22)=abb307(22)+abb307(25)
      abb307(22)=spbe7l5*abb307(22)
      abb307(25)=spak4e7*abb307(20)
      abb307(26)=spak1e7*abb307(12)
      abb307(25)=abb307(25)+abb307(26)
      abb307(19)=spak2k7*abb307(19)*abb307(25)
      abb307(8)=abb307(19)+abb307(22)+abb307(8)
      abb307(8)=4.0_ki*abb307(8)
      abb307(19)=abb307(20)*abb307(4)
      abb307(19)=abb307(19)+abb307(24)
      abb307(19)=-abb307(19)*abb307(34)
      abb307(14)=abb307(14)*abb307(9)
      abb307(14)=-abb307(32)+abb307(14)+abb307(35)+abb307(19)
      abb307(14)=spak2k4*abb307(14)
      abb307(12)=abb307(12)*abb307(4)
      abb307(12)=abb307(12)+abb307(28)
      abb307(12)=abb307(12)*abb307(34)
      abb307(9)=-abb307(18)*abb307(9)
      abb307(9)=abb307(31)+abb307(9)-abb307(36)+abb307(12)
      abb307(9)=spak1k2*abb307(9)
      abb307(9)=abb307(14)+abb307(9)
      abb307(9)=8.0_ki*abb307(9)
      abb307(12)=abb307(10)*abb307(15)
      abb307(14)=spak4e7*abb307(12)
      abb307(10)=abb307(10)*abb307(11)
      abb307(11)=spak1e7*abb307(10)
      abb307(11)=abb307(14)+abb307(11)
      abb307(11)=4.0_ki*spbe7l5*abb307(11)
      abb307(12)=-8.0_ki*abb307(12)
      abb307(10)=-8.0_ki*abb307(10)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd307h1
