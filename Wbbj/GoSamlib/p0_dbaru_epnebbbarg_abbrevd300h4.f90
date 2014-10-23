module     p0_dbaru_epnebbbarg_abbrevd300h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(48), public :: abb300
   complex(ki), public :: R2d300
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
      abb300(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb300(2)=NC**(-1)
      abb300(3)=sqrt2**(-1)
      abb300(4)=spbl5k2**(-1)
      abb300(5)=spbl6k2**(-1)
      abb300(6)=sqrt(mB**2)
      abb300(7)=spbk7k2**(-1)
      abb300(8)=spak2l5**(-1)
      abb300(9)=spak2l6**(-1)
      abb300(10)=c2*abb300(2)**2
      abb300(11)=abb300(10)*abb300(7)
      abb300(12)=TR*gW
      abb300(12)=abb300(12)**2*i_*CVDU*abb300(3)*abb300(1)
      abb300(13)=abb300(12)*spbk3k2
      abb300(14)=abb300(11)*abb300(13)
      abb300(15)=abb300(7)*abb300(2)
      abb300(16)=abb300(13)*abb300(15)
      abb300(17)=abb300(16)*c3
      abb300(16)=abb300(16)*c1
      abb300(18)=-abb300(17)+abb300(14)-abb300(16)
      abb300(19)=abb300(6)*spak1l6
      abb300(18)=abb300(19)*abb300(18)
      abb300(20)=mB**2
      abb300(21)=abb300(18)*abb300(20)
      abb300(22)=abb300(21)*abb300(4)
      abb300(23)=spak2l5*abb300(18)
      abb300(23)=-abb300(22)+abb300(23)
      abb300(23)=spbl6k2*abb300(23)
      abb300(24)=c1+c3
      abb300(25)=abb300(2)*abb300(13)*abb300(24)
      abb300(26)=abb300(10)*abb300(13)
      abb300(25)=abb300(25)-abb300(26)
      abb300(26)=mB**3
      abb300(27)=abb300(26)*abb300(4)
      abb300(28)=-spak2l5*mB
      abb300(27)=abb300(27)+abb300(28)
      abb300(27)=spak1k7*abb300(25)*abb300(27)
      abb300(23)=abb300(23)+abb300(27)
      abb300(23)=spak4l6*abb300(23)
      abb300(27)=abb300(26)*abb300(5)
      abb300(28)=abb300(27)*abb300(25)
      abb300(29)=abb300(28)*spak1k7
      abb300(30)=-abb300(29)+abb300(21)
      abb300(30)=abb300(4)*abb300(30)
      abb300(31)=abb300(5)*mB
      abb300(13)=abb300(31)*abb300(13)
      abb300(32)=-abb300(24)*abb300(13)*abb300(2)
      abb300(33)=abb300(13)*abb300(10)
      abb300(32)=abb300(33)+abb300(32)
      abb300(33)=abb300(32)*spak1k7
      abb300(34)=abb300(33)+abb300(18)
      abb300(35)=-spak2l5*abb300(34)
      abb300(30)=abb300(30)+abb300(35)
      abb300(30)=spbk2k1*spak1k4*abb300(30)
      abb300(35)=abb300(4)*abb300(29)
      abb300(36)=spak2l5*abb300(33)
      abb300(35)=abb300(35)+abb300(36)
      abb300(35)=spbk7k2*abb300(35)
      abb300(20)=abb300(4)*abb300(20)
      abb300(20)=abb300(20)-spak2l5
      abb300(20)=abb300(20)*abb300(25)*abb300(19)
      abb300(20)=abb300(35)+abb300(20)
      abb300(20)=spak4k7*abb300(20)
      abb300(20)=abb300(30)+abb300(23)+abb300(20)
      abb300(20)=8.0_ki*abb300(20)
      abb300(23)=16.0_ki*spak4l5
      abb300(25)=-abb300(34)*abb300(23)
      abb300(21)=-abb300(9)*abb300(5)*abb300(21)
      abb300(30)=abb300(8)*abb300(4)
      abb300(29)=abb300(29)*abb300(30)
      abb300(29)=abb300(21)+abb300(29)+abb300(33)
      abb300(23)=abb300(29)*abb300(23)
      abb300(33)=8.0_ki*spak4l5
      abb300(35)=abb300(34)*abb300(33)
      abb300(36)=abb300(24)*abb300(15)*abb300(12)
      abb300(37)=abb300(11)*abb300(12)
      abb300(36)=abb300(36)-abb300(37)
      abb300(19)=abb300(19)*abb300(36)
      abb300(37)=abb300(33)*abb300(19)
      abb300(38)=-spbk7k3*abb300(37)
      abb300(39)=-spbl6k3*abb300(37)
      abb300(14)=-abb300(16)+abb300(14)-abb300(17)
      abb300(40)=abb300(14)*mB
      abb300(41)=spak4l6*abb300(40)
      abb300(16)=-abb300(17)-abb300(16)
      abb300(16)=abb300(31)*abb300(16)
      abb300(13)=abb300(11)*abb300(13)
      abb300(13)=abb300(13)+abb300(16)
      abb300(16)=abb300(13)*spak1k4
      abb300(17)=-spbk2k1*abb300(16)
      abb300(31)=abb300(13)*spak4l5
      abb300(42)=spbl5k2*abb300(31)
      abb300(17)=abb300(42)+abb300(17)+abb300(41)
      abb300(17)=spak1k7*abb300(17)
      abb300(34)=spak4k7*abb300(34)
      abb300(17)=abb300(34)+abb300(17)
      abb300(17)=8.0_ki*abb300(17)
      abb300(34)=8.0_ki*spak4l6
      abb300(34)=abb300(18)*abb300(34)
      abb300(37)=-spbl5k2*abb300(37)
      abb300(41)=c3*abb300(2)
      abb300(42)=abb300(2)*c1
      abb300(10)=abb300(42)+abb300(41)-abb300(10)
      abb300(12)=abb300(5)*abb300(12)*mB
      abb300(10)=abb300(12)*abb300(10)
      abb300(41)=-spak4k7*abb300(10)
      abb300(36)=-spak4l6*mB*abb300(36)
      abb300(15)=-abb300(24)*abb300(12)*abb300(15)
      abb300(11)=abb300(12)*abb300(11)
      abb300(11)=abb300(11)+abb300(15)
      abb300(12)=abb300(11)*spak1k4
      abb300(15)=-spbk2k1*abb300(12)
      abb300(15)=abb300(15)+abb300(41)+abb300(36)
      abb300(24)=spbk7k3*spak1k7
      abb300(15)=abb300(15)*abb300(24)
      abb300(29)=spak2k4*abb300(29)
      abb300(36)=abb300(19)*spak4l5
      abb300(41)=spbl5k3*abb300(36)
      abb300(42)=spbk7l5*spak1k7*abb300(31)
      abb300(15)=abb300(42)+abb300(41)+abb300(15)+abb300(29)
      abb300(15)=8.0_ki*abb300(15)
      abb300(26)=abb300(14)*abb300(26)
      abb300(29)=abb300(9)*abb300(5)**2*abb300(26)
      abb300(14)=-abb300(27)*abb300(14)
      abb300(27)=abb300(14)*abb300(30)
      abb300(30)=abb300(29)+abb300(27)
      abb300(41)=spak1k4*abb300(30)
      abb300(41)=abb300(16)+abb300(41)
      abb300(41)=16.0_ki*abb300(41)
      abb300(42)=8.0_ki*abb300(12)
      abb300(43)=-spbk7k3*abb300(42)
      abb300(44)=-spbl6k3*abb300(42)
      abb300(42)=spbl5k3*abb300(42)
      abb300(45)=8.0_ki*spak1k4
      abb300(46)=abb300(18)*abb300(45)
      abb300(10)=-spak1k7*abb300(10)
      abb300(10)=abb300(10)-abb300(19)
      abb300(10)=8.0_ki*abb300(10)
      abb300(18)=-abb300(21)+abb300(18)
      abb300(18)=spak2l5*abb300(18)
      abb300(21)=spak1l5*spbk3k1
      abb300(47)=-spal5k7*spbk7k3
      abb300(48)=-spal5l6*spbl6k3
      abb300(21)=abb300(48)+abb300(47)+abb300(21)
      abb300(19)=abb300(19)*abb300(21)
      abb300(18)=-abb300(22)+abb300(19)+abb300(18)
      abb300(18)=8.0_ki*abb300(18)
      abb300(19)=-abb300(13)-abb300(30)
      abb300(19)=spak1k2*abb300(19)
      abb300(21)=spbl6k3*spak1l6
      abb300(22)=-spak1l5*spbl5k3
      abb300(21)=abb300(21)+abb300(22)+abb300(24)
      abb300(21)=abb300(11)*abb300(21)
      abb300(19)=abb300(19)+abb300(21)
      abb300(19)=8.0_ki*abb300(19)
      abb300(21)=-abb300(4)*abb300(26)
      abb300(22)=spak2l5*abb300(40)
      abb300(21)=abb300(21)+abb300(22)
      abb300(21)=spak4l6*abb300(21)
      abb300(22)=abb300(4)*abb300(28)
      abb300(24)=spak2l5*abb300(32)
      abb300(22)=abb300(22)+abb300(24)
      abb300(22)=spak4k7*abb300(22)
      abb300(14)=-abb300(4)*abb300(14)*spak1k4
      abb300(16)=-spak2l5*abb300(16)
      abb300(14)=abb300(14)+abb300(16)
      abb300(14)=spbk2k1*abb300(14)
      abb300(16)=-spbk3k1*abb300(36)
      abb300(14)=abb300(16)+abb300(14)+abb300(22)+abb300(21)
      abb300(14)=8.0_ki*abb300(14)
      abb300(16)=-16.0_ki*abb300(31)
      abb300(21)=spak4l5*abb300(27)
      abb300(21)=abb300(31)+abb300(21)
      abb300(21)=16.0_ki*abb300(21)
      abb300(22)=abb300(13)*abb300(33)
      abb300(24)=8.0_ki*abb300(13)
      abb300(26)=spak4k7*abb300(24)
      abb300(24)=spak4l6*abb300(24)
      abb300(27)=spbl5k2*abb300(11)*abb300(33)
      abb300(28)=-spak2k4*abb300(29)
      abb300(12)=-spbk3k1*abb300(12)
      abb300(12)=abb300(28)+abb300(12)
      abb300(12)=8.0_ki*abb300(12)
      abb300(13)=abb300(13)*abb300(45)
      abb300(11)=8.0_ki*abb300(11)
      R2d300=0.0_ki
      rat2 = rat2 + R2d300
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='300' value='", &
          & R2d300, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd300h4
