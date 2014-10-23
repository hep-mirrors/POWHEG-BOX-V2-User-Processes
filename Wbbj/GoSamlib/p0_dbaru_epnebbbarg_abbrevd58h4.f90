module     p0_dbaru_epnebbbarg_abbrevd58h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(27), public :: abb58
   complex(ki), public :: R2d58
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
      abb58(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb58(2)=NC**(-1)
      abb58(3)=sqrt2**(-1)
      abb58(4)=es234**(-1)
      abb58(5)=es56**(-1)
      abb58(6)=es71**(-1)
      abb58(7)=spbl5k2**(-1)
      abb58(8)=spbl6k2**(-1)
      abb58(9)=spbk7k2**(-1)
      abb58(10)=CVDU*mB*i_*spak3k4*abb58(5)*abb58(4)*abb58(3)*abb58(1)
      abb58(11)=TR*gW
      abb58(12)=abb58(10)*abb58(11)**2
      abb58(13)=spak1k7*abb58(6)
      abb58(14)=spbk3k2**2*abb58(12)*abb58(13)
      abb58(15)=NC-abb58(2)
      abb58(15)=abb58(15)*c3
      abb58(16)=-abb58(14)*abb58(15)
      abb58(17)=abb58(7)*abb58(16)
      abb58(18)=abb58(2)**2
      abb58(18)=abb58(18)-1.0_ki
      abb58(14)=abb58(14)*abb58(18)
      abb58(19)=c4*abb58(7)
      abb58(20)=-abb58(14)*abb58(19)
      abb58(17)=abb58(20)+abb58(17)
      abb58(17)=spal6k7*abb58(17)
      abb58(20)=abb58(8)*abb58(16)
      abb58(21)=c4*abb58(8)
      abb58(22)=-abb58(14)*abb58(21)
      abb58(20)=abb58(22)+abb58(20)
      abb58(20)=spal5k7*abb58(20)
      abb58(22)=spbk2k1*abb58(9)
      abb58(23)=abb58(22)*abb58(7)
      abb58(24)=-abb58(23)*abb58(16)
      abb58(25)=abb58(23)*c4
      abb58(26)=abb58(14)*abb58(25)
      abb58(24)=abb58(26)+abb58(24)
      abb58(24)=spak1l6*abb58(24)
      abb58(22)=abb58(22)*abb58(8)
      abb58(16)=-abb58(22)*abb58(16)
      abb58(26)=abb58(22)*c4
      abb58(14)=abb58(14)*abb58(26)
      abb58(14)=abb58(14)+abb58(16)
      abb58(14)=spak1l5*abb58(14)
      abb58(14)=abb58(14)+abb58(24)+abb58(17)+abb58(20)
      abb58(14)=8.0_ki*abb58(14)
      abb58(11)=abb58(11)*spbk3k2*abb58(6)
      abb58(10)=spak1k7*abb58(10)*abb58(11)**2
      abb58(11)=-abb58(15)*abb58(10)
      abb58(16)=-abb58(23)*abb58(11)
      abb58(10)=abb58(18)*abb58(10)
      abb58(17)=abb58(25)*abb58(10)
      abb58(16)=abb58(16)+abb58(17)
      abb58(17)=abb58(16)*spak1l6
      abb58(20)=-abb58(22)*abb58(11)
      abb58(24)=abb58(26)*abb58(10)
      abb58(20)=abb58(20)+abb58(24)
      abb58(24)=abb58(20)*spak1l5
      abb58(17)=abb58(17)+abb58(24)
      abb58(24)=-abb58(8)*abb58(11)
      abb58(27)=abb58(21)*abb58(10)
      abb58(24)=abb58(24)+abb58(27)
      abb58(27)=abb58(24)*spal5k7
      abb58(11)=-abb58(7)*abb58(11)
      abb58(10)=abb58(19)*abb58(10)
      abb58(10)=abb58(11)+abb58(10)
      abb58(11)=abb58(10)*spal6k7
      abb58(11)=abb58(27)+abb58(11)
      abb58(27)=-abb58(11)+2.0_ki*abb58(17)
      abb58(27)=16.0_ki*abb58(27)
      abb58(11)=2.0_ki*abb58(11)-abb58(17)
      abb58(11)=16.0_ki*abb58(11)
      abb58(10)=spak1l6*abb58(10)
      abb58(17)=spak1l5*abb58(24)
      abb58(10)=abb58(10)+abb58(17)
      abb58(10)=8.0_ki*abb58(10)
      abb58(12)=spbk3k2*abb58(12)*abb58(13)**2
      abb58(13)=-abb58(15)*abb58(12)
      abb58(15)=-abb58(23)*abb58(13)
      abb58(12)=abb58(18)*abb58(12)
      abb58(17)=abb58(12)*abb58(25)
      abb58(15)=abb58(17)+abb58(15)
      abb58(15)=spbk7k3*abb58(15)
      abb58(17)=abb58(7)*abb58(13)
      abb58(18)=-abb58(12)*abb58(19)
      abb58(17)=abb58(18)+abb58(17)
      abb58(17)=spbk3k1*abb58(17)
      abb58(15)=abb58(15)+abb58(17)
      abb58(15)=16.0_ki*abb58(15)
      abb58(17)=-abb58(22)*abb58(13)
      abb58(18)=abb58(12)*abb58(26)
      abb58(17)=abb58(18)+abb58(17)
      abb58(17)=spbk7k3*abb58(17)
      abb58(13)=abb58(8)*abb58(13)
      abb58(12)=-abb58(12)*abb58(21)
      abb58(12)=abb58(12)+abb58(13)
      abb58(12)=spbk3k1*abb58(12)
      abb58(12)=abb58(17)+abb58(12)
      abb58(12)=16.0_ki*abb58(12)
      abb58(13)=spal6k7*abb58(16)
      abb58(16)=spal5k7*abb58(20)
      abb58(13)=abb58(13)+abb58(16)
      abb58(13)=8.0_ki*abb58(13)
      R2d58=0.0_ki
      rat2 = rat2 + R2d58
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='58' value='", &
          & R2d58, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd58h4
