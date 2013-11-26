module     p1_dbarc_epnebbbarg_abbrevd305h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(23), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=spbl5k2**(-1)
      abb305(6)=spbl6k2**(-1)
      abb305(7)=CVDC*i_*spak1k4*abb305(2)*abb305(1)
      abb305(8)=TR*gW
      abb305(8)=abb305(8)**2
      abb305(9)=abb305(7)*abb305(8)*abb305(4)
      abb305(10)=c3+c1
      abb305(10)=abb305(9)*abb305(10)
      abb305(11)=spbk7k2*abb305(3)
      abb305(12)=abb305(11)*abb305(10)
      abb305(13)=spbe7k2*spbk3k1
      abb305(14)=abb305(12)*abb305(13)
      abb305(7)=abb305(7)*abb305(4)**2*abb305(8)*c2
      abb305(8)=spbk3k1*abb305(7)
      abb305(15)=abb305(11)*spbe7k2
      abb305(16)=abb305(8)*abb305(15)
      abb305(14)=abb305(14)-abb305(16)
      abb305(16)=spak1l6*spae7k7
      abb305(14)=abb305(14)*abb305(16)
      abb305(17)=spbe7k2*spbk4k3
      abb305(18)=abb305(12)*abb305(17)
      abb305(19)=spbk4k3*abb305(7)
      abb305(15)=abb305(19)*abb305(15)
      abb305(15)=abb305(18)-abb305(15)
      abb305(18)=spak4l6*spae7k7
      abb305(15)=abb305(15)*abb305(18)
      abb305(14)=abb305(14)+abb305(15)
      abb305(15)=abb305(5)*abb305(14)*mB**2
      abb305(14)=-spak2l5*abb305(14)
      abb305(14)=abb305(15)+abb305(14)
      abb305(14)=4.0_ki*abb305(14)
      abb305(15)=spbk4k3*abb305(12)
      abb305(20)=-abb305(11)*abb305(19)
      abb305(15)=abb305(20)+abb305(15)
      abb305(15)=abb305(15)*abb305(18)
      abb305(12)=spbk3k1*abb305(12)
      abb305(11)=-abb305(11)*abb305(8)
      abb305(11)=abb305(11)+abb305(12)
      abb305(11)=abb305(11)*abb305(16)
      abb305(11)=abb305(15)+abb305(11)
      abb305(11)=4.0_ki*abb305(11)
      abb305(10)=abb305(3)*abb305(10)
      abb305(12)=-spbk3k1*abb305(10)
      abb305(8)=abb305(8)*abb305(3)
      abb305(8)=abb305(8)+abb305(12)
      abb305(8)=abb305(8)*spak1l6
      abb305(10)=-spbk4k3*abb305(10)
      abb305(12)=abb305(19)*abb305(3)
      abb305(10)=abb305(12)+abb305(10)
      abb305(10)=abb305(10)*spak4l6
      abb305(8)=abb305(8)+abb305(10)
      abb305(10)=abb305(8)*spbk7e7
      abb305(10)=4.0_ki*abb305(10)
      abb305(12)=spal5k7*abb305(10)
      abb305(10)=-spal5e7*abb305(10)
      abb305(15)=abb305(6)*mB
      abb305(7)=abb305(7)*abb305(15)
      abb305(9)=abb305(9)*abb305(15)
      abb305(15)=abb305(9)*c3
      abb305(9)=abb305(9)*c1
      abb305(7)=-abb305(9)+abb305(7)-abb305(15)
      abb305(9)=spak4e7*abb305(7)*abb305(17)
      abb305(13)=spak1e7*abb305(7)*abb305(13)
      abb305(9)=abb305(9)+abb305(13)
      abb305(13)=4.0_ki*abb305(9)*abb305(3)**2
      abb305(15)=-spbk4k3*abb305(7)
      abb305(16)=abb305(15)*spbk7k2
      abb305(17)=spak4k7*abb305(16)
      abb305(7)=spbk3k1*abb305(7)
      abb305(18)=abb305(7)*spbk7k2
      abb305(19)=-spak1k7*abb305(18)
      abb305(8)=abb305(19)+abb305(17)-abb305(8)
      abb305(8)=8.0_ki*abb305(8)
      abb305(17)=8.0_ki*abb305(9)
      abb305(9)=-4.0_ki*abb305(9)
      abb305(19)=4.0_ki*spae7k7
      abb305(16)=-abb305(16)*abb305(19)
      abb305(20)=abb305(15)*spbk7e7
      abb305(21)=spak4k7*abb305(20)
      abb305(22)=abb305(7)*spbk7e7
      abb305(23)=-spak1k7*abb305(22)
      abb305(21)=abb305(21)+abb305(23)
      abb305(21)=4.0_ki*abb305(21)
      abb305(18)=abb305(18)*abb305(19)
      abb305(19)=-spak4e7*abb305(20)
      abb305(20)=spak1e7*abb305(22)
      abb305(19)=abb305(19)+abb305(20)
      abb305(19)=4.0_ki*abb305(19)
      abb305(15)=-8.0_ki*abb305(15)
      abb305(7)=8.0_ki*abb305(7)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd305h0
