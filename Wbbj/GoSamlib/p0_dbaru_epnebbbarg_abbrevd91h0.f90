module     p0_dbaru_epnebbbarg_abbrevd91h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(40), public :: abb91
   complex(ki), public :: R2d91
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
      abb91(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb91(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb91(3)=NC**(-1)
      abb91(4)=es71**(-1)
      abb91(5)=spbl5k2**(-1)
      abb91(6)=spak2l5**(-1)
      abb91(7)=sqrt(mB**2)
      abb91(8)=spak2l6**(-1)
      abb91(9)=spbl6k2**(-1)
      abb91(10)=1.0_ki/(es34+es567-es12-es234)
      abb91(11)=abb91(3)**2
      abb91(11)=abb91(11)+1.0_ki
      abb91(12)=TR*gW
      abb91(12)=abb91(12)**2*i_*CVDU*abb91(2)*abb91(1)
      abb91(13)=abb91(12)*abb91(11)
      abb91(14)=spak1e7*abb91(13)
      abb91(15)=spbk3k2*abb91(4)
      abb91(16)=abb91(15)*c4
      abb91(17)=abb91(14)*abb91(16)
      abb91(18)=2.0_ki*abb91(3)
      abb91(18)=abb91(18)*abb91(12)*c3
      abb91(19)=abb91(18)*spak1e7
      abb91(20)=abb91(19)*abb91(15)
      abb91(17)=abb91(17)-abb91(20)
      abb91(20)=spak4k7*spbk7e7
      abb91(21)=mB**3
      abb91(22)=abb91(21)*abb91(5)**2
      abb91(23)=-abb91(20)*abb91(22)*abb91(17)
      abb91(13)=spak1k4*abb91(13)
      abb91(24)=spbe7k2*abb91(10)
      abb91(25)=abb91(24)*c4
      abb91(26)=abb91(13)*abb91(25)
      abb91(18)=abb91(18)*spak1k4
      abb91(27)=abb91(18)*abb91(24)
      abb91(26)=abb91(26)-abb91(27)
      abb91(27)=spbk4k3*spak4e7
      abb91(28)=-abb91(27)*abb91(22)*abb91(26)
      abb91(29)=c3*abb91(3)
      abb91(29)=2.0_ki*abb91(29)
      abb91(30)=abb91(12)*spak1k4*spak1e7
      abb91(31)=abb91(29)*abb91(30)
      abb91(32)=abb91(31)*abb91(24)
      abb91(33)=abb91(32)*abb91(22)
      abb91(34)=abb91(30)*abb91(11)
      abb91(35)=abb91(22)*abb91(34)
      abb91(36)=abb91(35)*abb91(25)
      abb91(33)=abb91(33)-abb91(36)
      abb91(33)=abb91(33)*spbk3k1
      abb91(36)=abb91(31)*abb91(15)
      abb91(22)=abb91(36)*abb91(22)
      abb91(35)=abb91(35)*abb91(16)
      abb91(22)=abb91(22)-abb91(35)
      abb91(22)=abb91(22)*spbe7k1
      abb91(22)=-abb91(23)+abb91(28)+abb91(33)+abb91(22)
      abb91(22)=abb91(22)*abb91(6)
      abb91(23)=abb91(5)*mB
      abb91(28)=abb91(30)*abb91(23)
      abb91(30)=abb91(28)*abb91(29)
      abb91(33)=abb91(30)*abb91(15)
      abb91(28)=abb91(28)*abb91(11)
      abb91(35)=abb91(28)*abb91(16)
      abb91(33)=abb91(33)-abb91(35)
      abb91(33)=abb91(33)*spbe7k1
      abb91(35)=abb91(30)*abb91(24)
      abb91(37)=abb91(28)*abb91(25)
      abb91(35)=abb91(35)-abb91(37)
      abb91(35)=abb91(35)*spbk3k1
      abb91(12)=abb91(23)*abb91(12)
      abb91(23)=abb91(12)*spak1e7
      abb91(37)=abb91(23)*abb91(29)
      abb91(15)=abb91(37)*abb91(15)
      abb91(23)=abb91(23)*abb91(11)
      abb91(38)=abb91(23)*abb91(16)
      abb91(15)=abb91(15)-abb91(38)
      abb91(15)=abb91(15)*abb91(20)
      abb91(12)=abb91(12)*spak1k4
      abb91(29)=abb91(12)*abb91(29)
      abb91(24)=abb91(29)*abb91(24)
      abb91(11)=abb91(12)*abb91(11)
      abb91(12)=abb91(11)*abb91(25)
      abb91(12)=abb91(24)-abb91(12)
      abb91(12)=abb91(12)*abb91(27)
      abb91(12)=abb91(22)-abb91(35)-abb91(33)+abb91(15)-abb91(12)
      abb91(15)=spak2l6*spbl6k2*abb91(12)
      abb91(22)=mB**2
      abb91(24)=abb91(34)*abb91(22)
      abb91(33)=-abb91(24)*abb91(16)
      abb91(35)=abb91(22)*abb91(36)
      abb91(33)=abb91(33)+abb91(35)
      abb91(33)=spbe7k1*abb91(33)
      abb91(35)=abb91(20)*abb91(22)*abb91(17)
      abb91(38)=-abb91(27)*abb91(22)*abb91(26)
      abb91(24)=-abb91(24)*abb91(25)
      abb91(39)=abb91(22)*abb91(32)
      abb91(24)=abb91(24)+abb91(39)
      abb91(24)=spbk3k1*abb91(24)
      abb91(24)=abb91(24)+abb91(38)+abb91(33)+abb91(35)
      abb91(33)=abb91(9)*abb91(8)
      abb91(24)=abb91(33)*abb91(24)
      abb91(35)=abb91(34)*abb91(16)
      abb91(35)=abb91(35)-abb91(36)
      abb91(35)=spbe7k1*abb91(35)
      abb91(38)=-abb91(17)*abb91(20)
      abb91(39)=abb91(26)*abb91(27)
      abb91(40)=abb91(34)*abb91(25)
      abb91(40)=abb91(40)-abb91(32)
      abb91(40)=spbk3k1*abb91(40)
      abb91(24)=abb91(24)+abb91(40)+abb91(39)+abb91(35)+abb91(38)
      abb91(24)=spak2l5*abb91(7)*abb91(24)
      abb91(35)=abb91(10)*c4
      abb91(13)=abb91(13)*abb91(35)
      abb91(18)=-abb91(10)*abb91(18)
      abb91(13)=abb91(13)+abb91(18)
      abb91(13)=abb91(13)*abb91(27)
      abb91(18)=abb91(34)*abb91(35)
      abb91(38)=-abb91(10)*abb91(31)
      abb91(18)=abb91(18)+abb91(38)
      abb91(18)=spbk3k1*abb91(18)
      abb91(13)=abb91(13)+abb91(18)
      abb91(13)=spbe7l6*abb91(13)
      abb91(18)=abb91(4)*c4
      abb91(38)=-abb91(34)*abb91(18)
      abb91(31)=abb91(4)*abb91(31)
      abb91(31)=abb91(38)+abb91(31)
      abb91(31)=spbe7k1*abb91(31)
      abb91(14)=abb91(14)*abb91(18)
      abb91(19)=-abb91(4)*abb91(19)
      abb91(14)=abb91(14)+abb91(19)
      abb91(14)=abb91(14)*abb91(20)
      abb91(14)=abb91(31)+abb91(14)
      abb91(14)=spbl6k3*abb91(14)
      abb91(13)=abb91(14)+abb91(13)
      abb91(13)=abb91(7)*abb91(13)
      abb91(14)=abb91(30)*abb91(4)
      abb91(19)=abb91(28)*abb91(18)
      abb91(14)=abb91(14)-abb91(19)
      abb91(14)=abb91(14)*spbe7k1
      abb91(18)=abb91(23)*abb91(18)
      abb91(19)=abb91(37)*abb91(4)
      abb91(18)=abb91(18)-abb91(19)
      abb91(18)=abb91(18)*abb91(20)
      abb91(14)=abb91(14)+abb91(18)
      abb91(18)=abb91(14)*spbl5k3
      abb91(19)=abb91(30)*abb91(10)
      abb91(23)=abb91(28)*abb91(35)
      abb91(19)=abb91(19)-abb91(23)
      abb91(19)=abb91(19)*spbk3k1
      abb91(11)=abb91(11)*abb91(35)
      abb91(23)=abb91(29)*abb91(10)
      abb91(11)=abb91(11)-abb91(23)
      abb91(11)=abb91(11)*abb91(27)
      abb91(11)=abb91(19)-abb91(11)
      abb91(19)=abb91(11)*spbe7l5
      abb91(18)=abb91(18)-abb91(19)
      abb91(19)=-spbl6k2*abb91(18)
      abb91(13)=abb91(19)+abb91(13)
      abb91(13)=spal5l6*abb91(13)
      abb91(19)=abb91(21)*abb91(5)
      abb91(21)=abb91(36)*abb91(19)
      abb91(23)=abb91(19)*abb91(34)
      abb91(28)=abb91(23)*abb91(16)
      abb91(21)=abb91(21)-abb91(28)
      abb91(22)=abb91(22)*abb91(5)
      abb91(28)=abb91(34)*abb91(22)
      abb91(16)=-abb91(28)*abb91(16)
      abb91(29)=abb91(22)*abb91(36)
      abb91(16)=abb91(16)+abb91(29)
      abb91(16)=abb91(7)*abb91(16)
      abb91(16)=abb91(16)+abb91(21)
      abb91(16)=spbe7k1*abb91(16)
      abb91(29)=-abb91(19)*abb91(17)
      abb91(17)=abb91(7)*abb91(22)*abb91(17)
      abb91(17)=abb91(17)-abb91(29)
      abb91(17)=abb91(17)*abb91(20)
      abb91(30)=-abb91(19)*abb91(26)
      abb91(26)=-abb91(7)*abb91(22)*abb91(26)
      abb91(26)=abb91(26)+abb91(30)
      abb91(26)=abb91(26)*abb91(27)
      abb91(19)=abb91(32)*abb91(19)
      abb91(23)=abb91(23)*abb91(25)
      abb91(19)=abb91(19)-abb91(23)
      abb91(23)=-abb91(28)*abb91(25)
      abb91(22)=abb91(22)*abb91(32)
      abb91(22)=abb91(23)+abb91(22)
      abb91(22)=abb91(7)*abb91(22)
      abb91(22)=abb91(22)+abb91(19)
      abb91(22)=spbk3k1*abb91(22)
      abb91(13)=abb91(24)+abb91(15)+abb91(22)+abb91(26)+abb91(16)+abb91(17)+abb&
      &91(13)
      abb91(13)=4.0_ki*abb91(13)
      abb91(15)=spbe7k1*abb91(21)
      abb91(16)=-abb91(29)*abb91(20)
      abb91(17)=abb91(30)*abb91(27)
      abb91(19)=spbk3k1*abb91(19)
      abb91(15)=abb91(19)+abb91(17)+abb91(15)+abb91(16)
      abb91(15)=abb91(15)*abb91(33)
      abb91(12)=abb91(15)+abb91(12)
      abb91(12)=8.0_ki*abb91(12)
      abb91(11)=spbe7l6*abb91(11)
      abb91(14)=-spbl6k3*abb91(14)
      abb91(11)=abb91(11)+abb91(14)
      abb91(11)=4.0_ki*abb91(11)
      abb91(14)=-4.0_ki*abb91(18)
      R2d91=0.0_ki
      rat2 = rat2 + R2d91
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='91' value='", &
          & R2d91, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd91h0
