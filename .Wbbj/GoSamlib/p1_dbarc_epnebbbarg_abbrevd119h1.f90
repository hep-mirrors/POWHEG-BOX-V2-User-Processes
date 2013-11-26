module     p1_dbarc_epnebbbarg_abbrevd119h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(22), public :: abb119
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
      abb119(5)=spak2l5**(-1)
      abb119(6)=spbl5k2**(-1)
      abb119(7)=sqrt(mB**2)
      abb119(8)=abb119(4)**2
      abb119(8)=abb119(8)+1.0_ki
      abb119(9)=TR*gW
      abb119(9)=CVDC*i_*spak1k4*abb119(3)*abb119(2)*abb119(1)*abb119(9)**2
      abb119(10)=abb119(9)*spbe7l5
      abb119(11)=abb119(10)*abb119(8)
      abb119(12)=spbk3k1*c2
      abb119(13)=abb119(11)*abb119(12)
      abb119(14)=c1*abb119(4)
      abb119(15)=2.0_ki*abb119(14)
      abb119(10)=abb119(15)*abb119(10)
      abb119(15)=abb119(10)*spbk3k1
      abb119(13)=abb119(13)-abb119(15)
      abb119(15)=abb119(13)*spak1l6
      abb119(16)=spbk4k3*c2
      abb119(11)=abb119(11)*abb119(16)
      abb119(10)=abb119(10)*spbk4k3
      abb119(10)=abb119(11)-abb119(10)
      abb119(11)=abb119(10)*spak4l6
      abb119(11)=abb119(15)+abb119(11)
      abb119(15)=spal5e7*abb119(11)
      abb119(17)=abb119(15)*spbl5k2
      abb119(18)=spae7k7*abb119(11)
      abb119(19)=abb119(18)*spbk7k2
      abb119(17)=abb119(17)-abb119(19)
      abb119(19)=-4.0_ki*spak2l6*spbl6k2*abb119(17)
      abb119(17)=8.0_ki*abb119(17)
      abb119(14)=abb119(14)*abb119(9)
      abb119(14)=2.0_ki*abb119(14)
      abb119(20)=abb119(14)*spbk4k3
      abb119(8)=abb119(9)*abb119(8)
      abb119(9)=abb119(8)*abb119(16)
      abb119(9)=abb119(20)-abb119(9)
      abb119(16)=spak4k7*abb119(9)
      abb119(14)=abb119(14)*spbk3k1
      abb119(8)=abb119(8)*abb119(12)
      abb119(8)=abb119(14)-abb119(8)
      abb119(12)=spak1k7*abb119(8)
      abb119(12)=abb119(12)+abb119(16)
      abb119(12)=spbk7e7*abb119(12)
      abb119(14)=-spak4l6*abb119(9)
      abb119(16)=-spak1l6*abb119(8)
      abb119(14)=abb119(14)+abb119(16)
      abb119(14)=spbe7l6*abb119(14)
      abb119(16)=spak4l5*abb119(10)
      abb119(20)=spak1l5*abb119(13)
      abb119(12)=abb119(14)+abb119(20)+abb119(16)+abb119(12)
      abb119(14)=spak2e7*abb119(5)
      abb119(16)=mB*abb119(14)*abb119(7)
      abb119(12)=abb119(16)*abb119(12)
      abb119(20)=spak2k4*abb119(10)
      abb119(21)=-spak1k2*abb119(13)
      abb119(20)=abb119(21)+abb119(20)
      abb119(21)=spbk7k2*spae7k7
      abb119(22)=spbl5k2*spal5e7
      abb119(21)=abb119(21)-abb119(22)
      abb119(20)=abb119(21)*abb119(20)
      abb119(21)=-spak4e7*abb119(10)
      abb119(22)=-spak1e7*abb119(13)
      abb119(21)=abb119(22)+abb119(21)
      abb119(21)=abb119(21)*abb119(7)**2
      abb119(14)=abb119(6)*abb119(14)*mB**2
      abb119(11)=-spbl6k2*abb119(11)*abb119(14)
      abb119(18)=-spbk7l6*abb119(18)
      abb119(15)=-spbl6l5*abb119(15)
      abb119(11)=abb119(15)+abb119(18)+abb119(11)+abb119(21)+abb119(12)+abb119(&
      &20)
      abb119(11)=4.0_ki*abb119(11)
      abb119(12)=4.0_ki*abb119(16)
      abb119(9)=abb119(9)*abb119(12)
      abb119(10)=4.0_ki*abb119(10)
      abb119(15)=spae7k7*abb119(10)
      abb119(16)=-spal5e7*abb119(10)
      abb119(10)=-abb119(14)*abb119(10)
      abb119(8)=abb119(8)*abb119(12)
      abb119(12)=4.0_ki*abb119(13)
      abb119(13)=spae7k7*abb119(12)
      abb119(18)=-spal5e7*abb119(12)
      abb119(12)=-abb119(14)*abb119(12)
      R2d119=0.0_ki
      rat2 = rat2 + R2d119
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='119' value='", &
          & R2d119, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd119h1
