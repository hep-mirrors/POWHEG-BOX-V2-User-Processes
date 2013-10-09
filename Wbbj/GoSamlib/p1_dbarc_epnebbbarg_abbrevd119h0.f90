module     p1_dbarc_epnebbbarg_abbrevd119h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(33), public :: abb119
   complex(ki), public :: R2d119
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
      abb119(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb119(2)=1.0_ki/(es34+es567-es12-es234)
      abb119(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb119(4)=NC**(-1)
      abb119(5)=spbl5k2**(-1)
      abb119(6)=sqrt(mB**2)
      abb119(7)=spak2l5**(-1)
      abb119(8)=TR*gW
      abb119(8)=CVDC*i_*spak1k4*abb119(3)*abb119(2)*abb119(1)*abb119(8)**2
      abb119(9)=abb119(8)*spal5e7*spbe7k2
      abb119(10)=abb119(9)*abb119(4)
      abb119(11)=abb119(10)*spbk4k3
      abb119(12)=abb119(11)*mB
      abb119(13)=abb119(11)*abb119(6)
      abb119(12)=abb119(12)-abb119(13)
      abb119(14)=2.0_ki*c1
      abb119(12)=abb119(12)*abb119(14)
      abb119(15)=abb119(4)**2
      abb119(15)=abb119(15)+1.0_ki
      abb119(9)=abb119(9)*abb119(15)
      abb119(16)=abb119(9)*mB
      abb119(17)=spbk4k3*c2
      abb119(18)=abb119(16)*abb119(17)
      abb119(19)=abb119(17)*abb119(6)
      abb119(20)=abb119(19)*abb119(9)
      abb119(12)=abb119(12)-abb119(18)+abb119(20)
      abb119(18)=abb119(12)*spak4l6
      abb119(15)=abb119(8)*abb119(15)
      abb119(21)=spbe7k2*abb119(15)
      abb119(22)=spbk3k1*c2
      abb119(23)=abb119(5)*mB
      abb119(24)=abb119(22)*abb119(23)
      abb119(25)=abb119(21)*abb119(24)
      abb119(8)=abb119(14)*abb119(8)*abb119(4)
      abb119(26)=abb119(23)*abb119(8)*spbe7k2
      abb119(27)=spbk3k1*abb119(26)
      abb119(25)=abb119(25)-abb119(27)
      abb119(27)=abb119(25)*spae7k7
      abb119(28)=spak1l6*abb119(27)
      abb119(17)=abb119(17)*abb119(23)
      abb119(21)=abb119(21)*abb119(17)
      abb119(26)=spbk4k3*abb119(26)
      abb119(21)=abb119(21)-abb119(26)
      abb119(26)=abb119(21)*spae7k7
      abb119(29)=spak4l6*abb119(26)
      abb119(28)=abb119(28)+abb119(29)
      abb119(29)=abb119(28)*spbk7k2
      abb119(30)=abb119(6)*spbk3k1
      abb119(31)=abb119(30)*abb119(10)
      abb119(10)=abb119(10)*spbk3k1
      abb119(32)=mB*abb119(10)
      abb119(32)=abb119(32)-abb119(31)
      abb119(32)=abb119(32)*abb119(14)
      abb119(16)=abb119(16)*abb119(22)
      abb119(22)=abb119(22)*abb119(6)
      abb119(33)=abb119(22)*abb119(9)
      abb119(16)=abb119(32)-abb119(16)+abb119(33)
      abb119(32)=abb119(16)*spak1l6
      abb119(18)=abb119(18)+abb119(29)+abb119(32)
      abb119(29)=-4.0_ki*spak2l6*spbl6k2*abb119(18)
      abb119(18)=8.0_ki*abb119(18)
      abb119(21)=spak4e7*abb119(21)
      abb119(25)=spak1e7*abb119(25)
      abb119(21)=abb119(25)+abb119(21)
      abb119(21)=abb119(21)*abb119(6)**2
      abb119(25)=-spbk7k2*abb119(26)
      abb119(12)=abb119(25)-abb119(12)
      abb119(12)=spak2k4*abb119(12)
      abb119(25)=spbk7k2*abb119(27)
      abb119(16)=abb119(25)+abb119(16)
      abb119(16)=spak1k2*abb119(16)
      abb119(25)=abb119(5)*mB**2
      abb119(20)=-abb119(20)*abb119(25)
      abb119(32)=abb119(25)*abb119(14)
      abb119(13)=abb119(13)*abb119(32)
      abb119(13)=abb119(20)+abb119(13)
      abb119(13)=spak2k4*abb119(13)
      abb119(20)=-abb119(31)*abb119(32)
      abb119(25)=abb119(33)*abb119(25)
      abb119(20)=abb119(25)+abb119(20)
      abb119(20)=spak1k2*abb119(20)
      abb119(13)=abb119(13)+abb119(20)
      abb119(13)=abb119(7)*abb119(13)
      abb119(15)=spal5e7*abb119(15)
      abb119(19)=abb119(15)*abb119(19)
      abb119(8)=abb119(8)*spal5e7
      abb119(20)=abb119(8)*abb119(6)*spbk4k3
      abb119(19)=abb119(19)-abb119(20)
      abb119(20)=spak4l6*abb119(19)
      abb119(15)=abb119(15)*abb119(22)
      abb119(8)=abb119(8)*abb119(30)
      abb119(8)=abb119(15)-abb119(8)
      abb119(15)=spak1l6*abb119(8)
      abb119(15)=abb119(20)+abb119(15)
      abb119(15)=spbe7l6*abb119(15)
      abb119(20)=spbk7l6*abb119(28)
      abb119(17)=abb119(17)*abb119(9)
      abb119(14)=abb119(14)*abb119(23)
      abb119(11)=abb119(11)*abb119(14)
      abb119(11)=abb119(11)-abb119(17)
      abb119(17)=-spak4l6*abb119(11)
      abb119(9)=abb119(24)*abb119(9)
      abb119(10)=abb119(14)*abb119(10)
      abb119(9)=abb119(10)-abb119(9)
      abb119(10)=-spak1l6*abb119(9)
      abb119(10)=abb119(17)+abb119(10)
      abb119(10)=spbl6l5*abb119(10)
      abb119(14)=-spak4k7*spbk7e7
      abb119(17)=spak4l5*spbe7l5
      abb119(14)=abb119(17)+abb119(14)
      abb119(14)=abb119(19)*abb119(14)
      abb119(17)=-spak1k7*spbk7e7
      abb119(22)=spak1l5*spbe7l5
      abb119(17)=abb119(22)+abb119(17)
      abb119(17)=abb119(8)*abb119(17)
      abb119(10)=abb119(10)+abb119(20)+abb119(15)+abb119(13)+abb119(12)+abb119(&
      &16)+abb119(17)+abb119(14)+abb119(21)
      abb119(10)=4.0_ki*abb119(10)
      abb119(12)=-4.0_ki*abb119(19)
      abb119(13)=-4.0_ki*abb119(26)
      abb119(11)=-4.0_ki*abb119(11)
      abb119(8)=-4.0_ki*abb119(8)
      abb119(14)=-4.0_ki*abb119(27)
      abb119(9)=-4.0_ki*abb119(9)
      R2d119=0.0_ki
      rat2 = rat2 + R2d119
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='119' value='", &
          & R2d119, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd119h0
