module     p1_dbarc_epnebbbarg_abbrevd58h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(37), public :: abb58
   complex(ki), public :: R2d58
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
      abb58(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb58(2)=NC**(-1)
      abb58(3)=es234**(-1)
      abb58(4)=es56**(-1)
      abb58(5)=es71**(-1)
      abb58(6)=spbl5k2**(-1)
      abb58(7)=spbl6k2**(-1)
      abb58(8)=abb58(1)*spbk3k2**2
      abb58(9)=CVDC*mB*i_*spak1e7*abb58(4)*abb58(3)
      abb58(10)=TR*gW
      abb58(11)=abb58(9)*abb58(5)*abb58(8)*abb58(10)**2
      abb58(12)=abb58(2)**2
      abb58(12)=abb58(12)-1.0_ki
      abb58(13)=abb58(11)*abb58(12)
      abb58(14)=spbk7e7*abb58(6)
      abb58(15)=abb58(14)*c4
      abb58(16)=-abb58(13)*abb58(15)
      abb58(11)=c3*abb58(11)
      abb58(17)=abb58(11)*abb58(2)
      abb58(18)=abb58(14)*abb58(17)
      abb58(16)=abb58(16)+abb58(18)
      abb58(16)=spak3k4*abb58(16)
      abb58(18)=NC*spak3k4
      abb58(11)=abb58(11)*abb58(18)
      abb58(19)=-abb58(14)*abb58(11)
      abb58(16)=abb58(16)+abb58(19)
      abb58(16)=spal6k7*abb58(16)
      abb58(19)=spbk7e7*abb58(7)
      abb58(20)=abb58(19)*c4
      abb58(21)=-abb58(13)*abb58(20)
      abb58(22)=abb58(19)*abb58(17)
      abb58(21)=abb58(21)+abb58(22)
      abb58(21)=spak3k4*abb58(21)
      abb58(22)=-abb58(19)*abb58(11)
      abb58(21)=abb58(21)+abb58(22)
      abb58(21)=spal5k7*abb58(21)
      abb58(22)=spbe7k1*abb58(6)
      abb58(23)=abb58(22)*c4
      abb58(24)=abb58(13)*abb58(23)
      abb58(25)=-abb58(22)*abb58(17)
      abb58(24)=abb58(24)+abb58(25)
      abb58(24)=spak3k4*abb58(24)
      abb58(25)=abb58(22)*abb58(11)
      abb58(24)=abb58(24)+abb58(25)
      abb58(24)=spak1l6*abb58(24)
      abb58(25)=spbe7k1*abb58(7)
      abb58(26)=abb58(25)*c4
      abb58(13)=abb58(13)*abb58(26)
      abb58(17)=-abb58(25)*abb58(17)
      abb58(13)=abb58(13)+abb58(17)
      abb58(13)=spak3k4*abb58(13)
      abb58(11)=abb58(25)*abb58(11)
      abb58(11)=abb58(13)+abb58(11)
      abb58(11)=spak1l5*abb58(11)
      abb58(11)=abb58(11)+abb58(24)+abb58(16)+abb58(21)
      abb58(11)=4.0_ki*abb58(11)
      abb58(10)=abb58(10)*abb58(5)
      abb58(9)=abb58(9)*abb58(10)**2
      abb58(10)=c3*abb58(8)*abb58(9)
      abb58(13)=abb58(10)*abb58(2)
      abb58(16)=abb58(13)*abb58(25)
      abb58(17)=abb58(12)*abb58(9)
      abb58(8)=abb58(8)*abb58(17)
      abb58(21)=abb58(8)*abb58(26)
      abb58(16)=abb58(16)-abb58(21)
      abb58(16)=abb58(16)*spak3k4
      abb58(10)=abb58(18)*abb58(10)
      abb58(21)=abb58(10)*abb58(25)
      abb58(16)=abb58(16)-abb58(21)
      abb58(21)=abb58(16)*spak1l5
      abb58(24)=abb58(13)*abb58(22)
      abb58(27)=abb58(8)*abb58(23)
      abb58(24)=abb58(24)-abb58(27)
      abb58(24)=abb58(24)*spak3k4
      abb58(27)=abb58(10)*abb58(22)
      abb58(24)=abb58(24)-abb58(27)
      abb58(27)=abb58(24)*spak1l6
      abb58(21)=abb58(21)+abb58(27)
      abb58(27)=abb58(13)*abb58(19)
      abb58(28)=abb58(8)*abb58(20)
      abb58(27)=abb58(27)-abb58(28)
      abb58(27)=abb58(27)*spak3k4
      abb58(28)=abb58(10)*abb58(19)
      abb58(27)=abb58(27)-abb58(28)
      abb58(28)=abb58(27)*spal5k7
      abb58(13)=abb58(13)*abb58(14)
      abb58(8)=abb58(8)*abb58(15)
      abb58(8)=abb58(13)-abb58(8)
      abb58(8)=abb58(8)*spak3k4
      abb58(10)=abb58(10)*abb58(14)
      abb58(8)=abb58(8)-abb58(10)
      abb58(10)=abb58(8)*spal6k7
      abb58(10)=abb58(28)+abb58(10)
      abb58(13)=abb58(10)-2.0_ki*abb58(21)
      abb58(13)=8.0_ki*abb58(13)
      abb58(28)=spak1k7*abb58(1)
      abb58(29)=abb58(9)*abb58(28)*spbk3k2
      abb58(30)=abb58(29)*c3
      abb58(31)=abb58(30)*spbk2k1
      abb58(32)=abb58(31)*abb58(14)
      abb58(33)=abb58(30)*spbk7k2
      abb58(34)=abb58(33)*abb58(22)
      abb58(32)=abb58(32)-abb58(34)
      abb58(32)=abb58(32)*NC
      abb58(12)=c4*abb58(29)*abb58(12)
      abb58(29)=abb58(30)*abb58(2)
      abb58(12)=abb58(12)-abb58(29)
      abb58(29)=-abb58(22)*abb58(12)
      abb58(34)=abb58(29)*spbk7k2
      abb58(35)=-abb58(14)*abb58(12)
      abb58(36)=abb58(35)*spbk2k1
      abb58(32)=abb58(32)+abb58(34)-abb58(36)
      abb58(34)=abb58(32)*spak4l6
      abb58(31)=abb58(31)*abb58(19)
      abb58(33)=abb58(33)*abb58(25)
      abb58(31)=abb58(31)-abb58(33)
      abb58(31)=abb58(31)*NC
      abb58(33)=-abb58(25)*abb58(12)
      abb58(36)=abb58(33)*spbk7k2
      abb58(12)=-abb58(19)*abb58(12)
      abb58(37)=abb58(12)*spbk2k1
      abb58(31)=abb58(31)+abb58(36)-abb58(37)
      abb58(36)=abb58(31)*spak4l5
      abb58(34)=abb58(34)+abb58(36)
      abb58(34)=16.0_ki*abb58(34)
      abb58(10)=-2.0_ki*abb58(10)+abb58(21)
      abb58(10)=8.0_ki*abb58(10)
      abb58(8)=-spak1l6*abb58(8)
      abb58(21)=-spak1l5*abb58(27)
      abb58(8)=abb58(8)+abb58(21)
      abb58(8)=4.0_ki*abb58(8)
      abb58(21)=spak2k4*abb58(32)
      abb58(27)=-spak3k4*abb58(29)
      abb58(18)=abb58(18)*abb58(30)
      abb58(22)=abb58(22)*abb58(18)
      abb58(22)=abb58(27)+abb58(22)
      abb58(22)=spbk7k3*abb58(22)
      abb58(27)=spak3k4*abb58(35)
      abb58(14)=-abb58(14)*abb58(18)
      abb58(14)=abb58(27)+abb58(14)
      abb58(14)=spbk3k1*abb58(14)
      abb58(14)=abb58(14)+abb58(21)+abb58(22)
      abb58(14)=8.0_ki*abb58(14)
      abb58(21)=spak2k4*abb58(31)
      abb58(22)=-spak3k4*abb58(33)
      abb58(25)=abb58(25)*abb58(18)
      abb58(22)=abb58(22)+abb58(25)
      abb58(22)=spbk7k3*abb58(22)
      abb58(12)=spak3k4*abb58(12)
      abb58(18)=-abb58(19)*abb58(18)
      abb58(12)=abb58(12)+abb58(18)
      abb58(12)=spbk3k1*abb58(12)
      abb58(12)=abb58(12)+abb58(21)+abb58(22)
      abb58(12)=8.0_ki*abb58(12)
      abb58(17)=-abb58(28)*abb58(17)
      abb58(18)=abb58(17)*abb58(20)
      abb58(9)=abb58(9)*abb58(28)*c3
      abb58(19)=spbk7e7*abb58(9)
      abb58(20)=abb58(19)*abb58(2)
      abb58(21)=abb58(7)*abb58(20)
      abb58(18)=abb58(18)+abb58(21)
      abb58(18)=abb58(18)*spbk2k1
      abb58(21)=abb58(17)*abb58(26)
      abb58(9)=spbe7k1*abb58(9)
      abb58(22)=abb58(9)*abb58(2)
      abb58(25)=abb58(7)*abb58(22)
      abb58(21)=abb58(21)+abb58(25)
      abb58(21)=abb58(21)*spbk7k2
      abb58(19)=abb58(19)*spbk2k1
      abb58(9)=abb58(9)*spbk7k2
      abb58(9)=abb58(19)-abb58(9)
      abb58(9)=abb58(9)*NC
      abb58(19)=-abb58(7)*abb58(9)
      abb58(18)=abb58(19)+abb58(18)-abb58(21)
      abb58(18)=abb58(18)*spak4l5
      abb58(9)=abb58(6)*abb58(9)
      abb58(15)=abb58(17)*abb58(15)
      abb58(19)=abb58(6)*abb58(20)
      abb58(15)=abb58(15)+abb58(19)
      abb58(15)=abb58(15)*spbk2k1
      abb58(17)=abb58(17)*abb58(23)
      abb58(19)=abb58(6)*abb58(22)
      abb58(17)=abb58(17)+abb58(19)
      abb58(17)=abb58(17)*spbk7k2
      abb58(9)=abb58(17)+abb58(9)-abb58(15)
      abb58(9)=abb58(9)*spak4l6
      abb58(9)=abb58(18)-abb58(9)
      abb58(15)=-spbk4k2*abb58(9)
      abb58(17)=spak3l6*abb58(32)
      abb58(18)=spak3l5*abb58(31)
      abb58(15)=abb58(18)+abb58(15)+abb58(17)
      abb58(15)=8.0_ki*abb58(15)
      abb58(9)=spbk4k3*abb58(9)
      abb58(17)=-spak2l6*abb58(32)
      abb58(18)=-spak2l5*abb58(31)
      abb58(9)=abb58(18)+abb58(9)+abb58(17)
      abb58(9)=8.0_ki*abb58(9)
      abb58(17)=-spal6k7*abb58(24)
      abb58(16)=-spal5k7*abb58(16)
      abb58(16)=abb58(17)+abb58(16)
      abb58(16)=4.0_ki*abb58(16)
      R2d58=0.0_ki
      rat2 = rat2 + R2d58
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='58' value='", &
          & R2d58, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd58h0
