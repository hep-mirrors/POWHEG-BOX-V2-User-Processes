module     p0_dbaru_epnebbbarg_abbrevd58h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(29), public :: abb58
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
      abb58(8)=spak2k7**(-1)
      abb58(9)=spbl6k2**(-1)
      abb58(10)=abb58(7)*abb58(2)
      abb58(11)=NC*abb58(7)
      abb58(12)=abb58(11)-abb58(10)
      abb58(13)=spbk3k2**2
      abb58(14)=TR*gW
      abb58(14)=abb58(8)*CVDU*abb58(14)**2*mB*i_*spak1k2*abb58(5)*abb58(4)*abb5&
      &8(3)*abb58(1)
      abb58(15)=abb58(14)*c3
      abb58(16)=abb58(6)*abb58(13)*abb58(15)
      abb58(12)=abb58(16)*abb58(12)
      abb58(17)=abb58(2)**2
      abb58(17)=abb58(17)-1.0_ki
      abb58(18)=abb58(17)*abb58(14)*abb58(6)
      abb58(13)=abb58(13)*abb58(18)
      abb58(19)=c4*abb58(7)
      abb58(20)=abb58(13)*abb58(19)
      abb58(12)=abb58(20)+abb58(12)
      abb58(12)=spak1l6*abb58(12)
      abb58(20)=abb58(9)*abb58(2)
      abb58(21)=NC*abb58(9)
      abb58(22)=abb58(21)-abb58(20)
      abb58(16)=abb58(16)*abb58(22)
      abb58(22)=c4*abb58(9)
      abb58(13)=abb58(13)*abb58(22)
      abb58(13)=abb58(13)+abb58(16)
      abb58(13)=spak1l5*abb58(13)
      abb58(12)=abb58(12)+abb58(13)
      abb58(13)=spbk7k1*spak3k4
      abb58(12)=8.0_ki*abb58(13)*abb58(12)
      abb58(16)=spbk3k2*abb58(6)
      abb58(23)=abb58(16)**2
      abb58(15)=abb58(23)*abb58(15)
      abb58(20)=abb58(20)*abb58(15)
      abb58(24)=abb58(17)*abb58(14)
      abb58(23)=abb58(23)*abb58(24)
      abb58(25)=abb58(23)*abb58(22)
      abb58(20)=abb58(20)-abb58(25)
      abb58(20)=abb58(20)*abb58(13)
      abb58(25)=abb58(15)*abb58(13)
      abb58(21)=abb58(25)*abb58(21)
      abb58(20)=abb58(20)-abb58(21)
      abb58(21)=abb58(20)*spak1l5
      abb58(10)=abb58(10)*abb58(15)
      abb58(15)=abb58(23)*abb58(19)
      abb58(10)=abb58(10)-abb58(15)
      abb58(10)=abb58(10)*abb58(13)
      abb58(11)=abb58(25)*abb58(11)
      abb58(10)=abb58(10)-abb58(11)
      abb58(11)=abb58(10)*spak1l6
      abb58(11)=abb58(21)+abb58(11)
      abb58(13)=-32.0_ki*abb58(11)
      abb58(15)=spbk7k2*abb58(14)*abb58(16)
      abb58(21)=abb58(2)-NC
      abb58(21)=abb58(21)*abb58(15)*c3
      abb58(23)=-abb58(9)*abb58(21)
      abb58(15)=abb58(15)*abb58(17)
      abb58(17)=abb58(15)*abb58(22)
      abb58(17)=abb58(17)+abb58(23)
      abb58(23)=abb58(17)*spak4l5
      abb58(21)=-abb58(7)*abb58(21)
      abb58(15)=abb58(15)*abb58(19)
      abb58(15)=abb58(15)+abb58(21)
      abb58(21)=abb58(15)*spak4l6
      abb58(21)=abb58(23)+abb58(21)
      abb58(21)=32.0_ki*abb58(21)
      abb58(11)=16.0_ki*abb58(11)
      abb58(23)=abb58(16)*abb58(24)
      abb58(24)=-abb58(23)*abb58(19)
      abb58(16)=abb58(16)*c3
      abb58(25)=abb58(16)*abb58(2)
      abb58(26)=abb58(14)*abb58(7)
      abb58(27)=abb58(26)*abb58(25)
      abb58(28)=abb58(14)*NC
      abb58(16)=abb58(28)*abb58(16)
      abb58(29)=-abb58(7)*abb58(16)
      abb58(24)=abb58(29)+abb58(24)+abb58(27)
      abb58(27)=spbk7k3*spak3k4
      abb58(24)=abb58(24)*abb58(27)
      abb58(29)=spak2k4*abb58(15)
      abb58(24)=abb58(24)+abb58(29)
      abb58(24)=16.0_ki*abb58(24)
      abb58(23)=-abb58(23)*abb58(22)
      abb58(14)=abb58(14)*abb58(9)
      abb58(25)=abb58(14)*abb58(25)
      abb58(16)=-abb58(9)*abb58(16)
      abb58(16)=abb58(16)+abb58(23)+abb58(25)
      abb58(16)=abb58(16)*abb58(27)
      abb58(23)=spak2k4*abb58(17)
      abb58(16)=abb58(16)+abb58(23)
      abb58(16)=16.0_ki*abb58(16)
      abb58(23)=abb58(6)*c3*spbk7k2
      abb58(25)=abb58(23)*abb58(28)
      abb58(27)=abb58(25)*abb58(9)
      abb58(23)=abb58(23)*abb58(2)
      abb58(14)=abb58(23)*abb58(14)
      abb58(18)=spbk7k2*abb58(18)
      abb58(22)=abb58(18)*abb58(22)
      abb58(14)=abb58(22)+abb58(27)-abb58(14)
      abb58(14)=abb58(14)*spak4l5
      abb58(22)=abb58(25)*abb58(7)
      abb58(23)=abb58(23)*abb58(26)
      abb58(18)=abb58(18)*abb58(19)
      abb58(18)=abb58(18)+abb58(22)-abb58(23)
      abb58(18)=abb58(18)*spak4l6
      abb58(14)=abb58(14)+abb58(18)
      abb58(18)=spbk4k2*abb58(14)
      abb58(19)=spak3l6*abb58(15)
      abb58(22)=spak3l5*abb58(17)
      abb58(18)=abb58(22)+abb58(18)+abb58(19)
      abb58(18)=16.0_ki*abb58(18)
      abb58(14)=-spbk4k3*abb58(14)
      abb58(15)=-spak2l6*abb58(15)
      abb58(17)=-spak2l5*abb58(17)
      abb58(14)=abb58(17)+abb58(14)+abb58(15)
      abb58(14)=16.0_ki*abb58(14)
      abb58(10)=-spal6k7*abb58(10)
      abb58(15)=-spal5k7*abb58(20)
      abb58(10)=abb58(10)+abb58(15)
      abb58(10)=8.0_ki*abb58(10)
      R2d58=0.0_ki
      rat2 = rat2 + R2d58
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='58' value='", &
          & R2d58, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd58h0
