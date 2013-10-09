module     p1_dbarc_epnebbbarg_abbrevd2h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(16), public :: abb2
   complex(ki), public :: R2d2
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
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=1.0_ki/(es34+es567-es12-es234)
      abb2(3)=es56**(-1)
      abb2(4)=spbl5k2**(-1)
      abb2(5)=spak2l6**(-1)
      abb2(6)=-c1+2.0_ki*c3
      abb2(7)=abb2(6)*NC
      abb2(8)=c4-c2
      abb2(7)=abb2(7)-abb2(8)
      abb2(9)=spbk3k1*abb2(7)*spbl6k2*spak1l5
      abb2(10)=spbk4k3*abb2(7)*spak4l5*spbl6k2
      abb2(9)=abb2(9)+abb2(10)
      abb2(10)=gW*TR
      abb2(10)=abb2(3)*abb2(1)*abb2(2)*CVDC*spak1k4*i_*abb2(10)**2
      abb2(9)=4.0_ki*abb2(9)*abb2(10)
      abb2(11)=spbk3k1*spak1l5*abb2(7)
      abb2(7)=spbk4k3*spak4l5*abb2(7)
      abb2(7)=abb2(11)+abb2(7)
      abb2(7)=spbe7l6*abb2(7)
      abb2(11)=NC*spbe7k2
      abb2(6)=abb2(6)*abb2(11)
      abb2(12)=abb2(8)*spbe7k2
      abb2(6)=abb2(6)-abb2(12)
      abb2(12)=mB**2*abb2(4)*abb2(5)
      abb2(13)=-spbk3k1*abb2(6)*abb2(12)*spak1k2
      abb2(6)=spbk4k3*abb2(6)*abb2(12)*spak2k4
      abb2(6)=abb2(7)+abb2(13)+abb2(6)
      abb2(7)=2.0_ki*abb2(10)
      abb2(6)=abb2(6)*abb2(7)
      abb2(10)=-c3+2.0_ki*c1
      abb2(12)=-spak1e7*abb2(10)
      abb2(13)=-abb2(12)*abb2(11)
      abb2(14)=-spak1e7*abb2(8)
      abb2(15)=spbe7k2*abb2(14)
      abb2(13)=abb2(15)+abb2(13)
      abb2(13)=spbk3k1*abb2(13)
      abb2(10)=-spak4e7*abb2(10)
      abb2(11)=-abb2(10)*abb2(11)
      abb2(15)=-spak4e7*abb2(8)
      abb2(16)=spbe7k2*abb2(15)
      abb2(11)=abb2(16)+abb2(11)
      abb2(11)=spbk4k3*abb2(11)
      abb2(11)=abb2(13)+abb2(11)
      abb2(11)=abb2(11)*abb2(7)
      abb2(12)=NC*abb2(12)
      abb2(12)=abb2(12)-abb2(14)
      abb2(12)=spbk3k1*abb2(12)
      abb2(10)=NC*abb2(10)
      abb2(10)=abb2(10)-abb2(15)
      abb2(10)=spbk4k3*abb2(10)
      abb2(10)=abb2(12)+abb2(10)
      abb2(7)=abb2(7)*spbe7l6
      abb2(10)=abb2(10)*abb2(7)
      abb2(12)=c1+c3
      abb2(12)=NC*abb2(12)
      abb2(8)=abb2(12)-2.0_ki*abb2(8)
      abb2(7)=abb2(7)*spal5e7*abb2(8)
      abb2(8)=spbk4k3*abb2(7)
      abb2(7)=spbk3k1*abb2(7)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd2h2
