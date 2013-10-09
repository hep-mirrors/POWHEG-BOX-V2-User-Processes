module     p0_dbaru_epnebbbarg_abbrevd1h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(24), public :: abb1
   complex(ki), public :: R2d1
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spbl5k2**(-1)
      abb1(4)=spbl6k2**(-1)
      abb1(5)=spak1l6*abb1(3)
      abb1(6)=spak1l5*abb1(4)
      abb1(5)=abb1(5)+abb1(6)
      abb1(6)=c2-c4
      abb1(7)=CVDU*i_*mB*abb1(2)*abb1(1)
      abb1(8)=abb1(6)*abb1(7)*abb1(5)
      abb1(9)=-c1+2.0_ki*c3
      abb1(5)=abb1(7)*NC*abb1(9)*abb1(5)
      abb1(5)=abb1(8)+abb1(5)
      abb1(8)=TR*gW
      abb1(8)=abb1(8)**2
      abb1(10)=-4.0_ki*spak3k4*abb1(5)*abb1(8)*spbk3k2**2
      abb1(11)=2.0_ki*spbk3k2
      abb1(11)=-abb1(11)*abb1(6)
      abb1(7)=abb1(7)*abb1(8)*spbe7k2
      abb1(12)=abb1(7)*abb1(3)
      abb1(13)=abb1(12)*spak1k4
      abb1(14)=-abb1(13)*abb1(11)
      abb1(15)=c1+c3
      abb1(16)=NC*spbk3k2
      abb1(17)=abb1(15)*abb1(12)*abb1(16)
      abb1(18)=spak1k4*abb1(17)
      abb1(14)=abb1(18)+abb1(14)
      abb1(14)=abb1(14)*spal6e7
      abb1(7)=abb1(7)*abb1(4)
      abb1(18)=abb1(7)*spak1l5
      abb1(19)=abb1(12)*spak1l6
      abb1(18)=abb1(18)+abb1(19)
      abb1(19)=spak4e7*abb1(18)
      abb1(20)=-abb1(9)*abb1(16)*abb1(19)
      abb1(21)=abb1(7)*spak1k4
      abb1(22)=-abb1(21)*abb1(11)
      abb1(23)=abb1(7)*abb1(16)
      abb1(24)=abb1(15)*abb1(23)*spak1k4
      abb1(22)=abb1(22)+abb1(24)
      abb1(22)=abb1(22)*spal5e7
      abb1(24)=-abb1(19)*abb1(6)*spbk3k2
      abb1(14)=abb1(22)+abb1(14)+abb1(24)+abb1(20)
      abb1(20)=4.0_ki*abb1(14)
      abb1(14)=-2.0_ki*abb1(14)
      abb1(22)=2.0_ki*spak3k4
      abb1(5)=-spbe7k3*abb1(22)*abb1(5)*abb1(8)*spbk3k2
      abb1(8)=-spal6e7*abb1(13)
      abb1(13)=-spal5e7*abb1(21)
      abb1(8)=abb1(13)+abb1(8)
      abb1(13)=NC*abb1(15)
      abb1(13)=abb1(13)+2.0_ki*abb1(6)
      abb1(8)=abb1(13)*abb1(8)
      abb1(21)=abb1(9)*NC
      abb1(21)=abb1(6)+abb1(21)
      abb1(19)=abb1(19)*abb1(21)
      abb1(8)=abb1(19)+abb1(8)
      abb1(8)=spbk4k2*abb1(8)
      abb1(9)=abb1(9)*abb1(18)
      abb1(16)=abb1(16)*abb1(9)
      abb1(6)=abb1(6)*abb1(18)
      abb1(18)=spbk3k2*abb1(6)
      abb1(16)=abb1(18)+abb1(16)
      abb1(16)=spak3e7*abb1(16)
      abb1(18)=abb1(11)*abb1(12)
      abb1(17)=abb1(17)-abb1(18)
      abb1(17)=abb1(17)*spal6e7
      abb1(11)=abb1(11)*abb1(7)
      abb1(15)=abb1(15)*abb1(23)
      abb1(11)=abb1(15)-abb1(11)
      abb1(11)=abb1(11)*spal5e7
      abb1(11)=abb1(17)+abb1(11)
      abb1(15)=-spak1k3*abb1(11)
      abb1(8)=abb1(15)+abb1(8)+abb1(16)
      abb1(8)=2.0_ki*abb1(8)
      abb1(9)=NC*abb1(9)
      abb1(6)=abb1(6)+abb1(9)
      abb1(6)=2.0_ki*abb1(6)
      abb1(9)=-abb1(11)*abb1(22)
      abb1(11)=spal6e7*abb1(12)
      abb1(7)=spal5e7*abb1(7)
      abb1(7)=abb1(11)+abb1(7)
      abb1(7)=2.0_ki*abb1(13)*abb1(7)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd1h0
