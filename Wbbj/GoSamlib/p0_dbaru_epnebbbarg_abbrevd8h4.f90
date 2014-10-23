module     p0_dbaru_epnebbbarg_abbrevd8h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(19), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=sqrt(mB**2)
      abb8(3)=sqrt2**(-1)
      abb8(4)=es234**(-1)
      abb8(5)=es567**(-1)
      abb8(6)=spbk7k2**(-1)
      abb8(7)=spbl5k2**(-1)
      abb8(8)=spbl6k2**(-1)
      abb8(9)=-c3+2.0_ki*c1
      abb8(10)=spal6k7*spak1l5
      abb8(11)=abb8(10)*abb8(9)
      abb8(12)=spal5k7*spak1l6
      abb8(13)=-c1+2.0_ki*c3
      abb8(14)=-abb8(13)*abb8(12)
      abb8(15)=c3+c1
      abb8(16)=2.0_ki*spak1k7
      abb8(17)=abb8(16)*spal5l6*abb8(15)
      abb8(11)=abb8(17)+abb8(14)+abb8(11)
      abb8(11)=NC*abb8(11)
      abb8(10)=-abb8(12)+abb8(10)
      abb8(12)=c4-c2
      abb8(10)=abb8(12)*abb8(10)
      abb8(14)=abb8(12)*spak1k7
      abb8(17)=spal5l6*abb8(14)
      abb8(10)=abb8(11)+4.0_ki*abb8(17)+abb8(10)
      abb8(11)=TR*gW*spbk3k2
      abb8(11)=abb8(5)*abb8(4)*abb8(1)*abb8(3)*abb8(6)*CVDU*spak3k4*i_*abb8(11)&
      &**2
      abb8(10)=4.0_ki*abb8(11)*abb8(2)*abb8(10)
      abb8(17)=4.0_ki*mB
      abb8(11)=abb8(17)*abb8(11)
      abb8(17)=abb8(11)*abb8(7)
      abb8(9)=-NC*abb8(9)
      abb8(9)=-abb8(12)+abb8(9)
      abb8(9)=spak1l6*abb8(9)*abb8(17)
      abb8(18)=NC*spak1k7
      abb8(19)=-abb8(13)*abb8(18)
      abb8(14)=-abb8(14)+abb8(19)
      abb8(14)=abb8(14)*abb8(17)
      abb8(16)=-abb8(12)*abb8(16)
      abb8(15)=-abb8(15)*abb8(18)
      abb8(15)=abb8(16)+abb8(15)
      abb8(11)=abb8(11)*abb8(8)
      abb8(15)=abb8(15)*abb8(11)
      abb8(13)=NC*abb8(13)
      abb8(12)=abb8(12)+abb8(13)
      abb8(11)=spal5k7*abb8(12)*abb8(11)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd8h4
