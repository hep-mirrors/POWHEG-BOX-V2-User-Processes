module     p0_dbaru_epnebbbarg_abbrevd308h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(43), public :: abb308
   complex(ki), public :: R2d308
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
      abb308(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb308(2)=1.0_ki/(es34+es567-es12-es234)
      abb308(3)=NC**(-1)
      abb308(4)=sqrt2**(-1)
      abb308(5)=spbk7k2**(-1)
      abb308(6)=spak2l6**(-1)
      abb308(7)=spbl5k2**(-1)
      abb308(8)=sqrt(mB**2)
      abb308(9)=TR*gW
      abb308(9)=CVDU*i_*spak1k4*abb308(4)*abb308(2)*abb308(1)*abb308(9)**2
      abb308(10)=abb308(9)*abb308(3)
      abb308(11)=spbk3k1*abb308(5)
      abb308(12)=abb308(10)*abb308(11)
      abb308(13)=spak1l5*abb308(12)
      abb308(14)=abb308(9)*spbk4k3
      abb308(15)=abb308(14)*abb308(5)
      abb308(16)=abb308(15)*spak4l5
      abb308(17)=abb308(16)*abb308(3)
      abb308(13)=abb308(17)+abb308(13)
      abb308(17)=c1-c3
      abb308(18)=-spal6k7*abb308(17)
      abb308(19)=spbl6k2**2
      abb308(20)=abb308(18)*abb308(19)*abb308(13)
      abb308(11)=abb308(11)*abb308(9)
      abb308(21)=abb308(11)*spak1l5
      abb308(16)=abb308(21)+abb308(16)
      abb308(21)=c2-c4
      abb308(22)=abb308(21)*abb308(16)
      abb308(23)=-spal6k7*abb308(19)*abb308(22)
      abb308(20)=abb308(23)+abb308(20)
      abb308(23)=4.0_ki*abb308(20)
      abb308(24)=es71+es12-es712
      abb308(25)=abb308(24)*abb308(23)
      abb308(20)=8.0_ki*abb308(20)
      abb308(26)=abb308(15)*abb308(3)
      abb308(27)=abb308(26)*spbl6k2
      abb308(28)=-abb308(27)*abb308(17)
      abb308(29)=abb308(15)*spbl6k2
      abb308(30)=-abb308(29)*abb308(21)
      abb308(28)=abb308(30)+abb308(28)
      abb308(30)=abb308(28)*spbk7l6
      abb308(31)=spal5l6*abb308(30)
      abb308(32)=mB**2
      abb308(33)=abb308(32)*abb308(6)
      abb308(34)=-abb308(33)*abb308(21)
      abb308(33)=-abb308(33)*abb308(17)
      abb308(35)=abb308(33)*abb308(3)
      abb308(35)=-abb308(34)-abb308(35)
      abb308(14)=abb308(14)*abb308(35)
      abb308(35)=spak2l5*abb308(14)
      abb308(31)=abb308(31)+abb308(35)
      abb308(31)=spak4k7*abb308(31)
      abb308(35)=-abb308(17)*abb308(26)*abb308(19)
      abb308(36)=abb308(15)*abb308(21)*abb308(19)
      abb308(35)=abb308(35)-abb308(36)
      abb308(36)=-spal5l6*abb308(35)
      abb308(14)=-spal5k7*abb308(14)
      abb308(14)=abb308(14)+abb308(36)
      abb308(14)=spak2k4*abb308(14)
      abb308(36)=abb308(11)*spbl6k2
      abb308(37)=-abb308(36)*abb308(21)
      abb308(38)=abb308(12)*spbl6k2
      abb308(39)=-abb308(38)*abb308(17)
      abb308(37)=abb308(39)+abb308(37)
      abb308(39)=abb308(37)*spbk7l6
      abb308(40)=spal5l6*abb308(39)
      abb308(9)=-abb308(9)*abb308(34)
      abb308(10)=abb308(33)*abb308(10)
      abb308(9)=abb308(9)-abb308(10)
      abb308(9)=abb308(9)*spbk3k1
      abb308(10)=spak2l5*abb308(9)
      abb308(10)=abb308(40)+abb308(10)
      abb308(10)=spak1k7*abb308(10)
      abb308(9)=spal5k7*abb308(9)
      abb308(40)=abb308(11)*abb308(21)
      abb308(41)=abb308(17)*abb308(12)
      abb308(40)=abb308(41)+abb308(40)
      abb308(19)=abb308(40)*abb308(19)
      abb308(40)=-spal5l6*abb308(19)
      abb308(9)=abb308(9)+abb308(40)
      abb308(9)=spak1k2*abb308(9)
      abb308(40)=spbl6k2*abb308(16)
      abb308(41)=-abb308(40)*abb308(21)
      abb308(42)=spal6k7*abb308(41)
      abb308(43)=spbl6k2*abb308(13)
      abb308(18)=abb308(43)*abb308(18)
      abb308(18)=abb308(18)+abb308(42)
      abb308(18)=spbk7l6*abb308(18)
      abb308(9)=abb308(9)+abb308(18)+abb308(31)+abb308(14)+abb308(10)
      abb308(10)=2.0_ki*abb308(6)
      abb308(10)=abb308(10)*abb308(32)
      abb308(14)=abb308(16)*abb308(10)
      abb308(16)=abb308(14)-abb308(40)
      abb308(16)=-abb308(16)*abb308(21)
      abb308(10)=abb308(13)*abb308(10)
      abb308(18)=abb308(10)-abb308(43)
      abb308(18)=-abb308(18)*abb308(17)
      abb308(16)=abb308(18)+abb308(16)
      abb308(16)=abb308(16)*abb308(24)
      abb308(18)=spak2l5*abb308(35)
      abb308(24)=-spal5k7*abb308(30)
      abb308(18)=abb308(24)+abb308(18)
      abb308(24)=2.0_ki*spak4l6
      abb308(18)=abb308(18)*abb308(24)
      abb308(30)=-spal5k7*abb308(39)
      abb308(19)=-spak2l5*abb308(19)
      abb308(19)=abb308(30)+abb308(19)
      abb308(30)=2.0_ki*spak1l6
      abb308(19)=abb308(19)*abb308(30)
      abb308(9)=abb308(19)+abb308(18)+abb308(16)+2.0_ki*abb308(9)
      abb308(9)=4.0_ki*abb308(9)
      abb308(16)=abb308(43)*abb308(17)
      abb308(16)=-abb308(41)+abb308(16)
      abb308(18)=8.0_ki*abb308(16)
      abb308(19)=-16.0_ki*abb308(16)
      abb308(31)=-abb308(38)*abb308(33)
      abb308(32)=-abb308(36)*abb308(34)
      abb308(31)=abb308(32)+abb308(31)
      abb308(30)=abb308(31)*abb308(30)
      abb308(29)=-abb308(29)*abb308(34)
      abb308(27)=-abb308(27)*abb308(33)
      abb308(27)=abb308(27)+abb308(29)
      abb308(24)=abb308(27)*abb308(24)
      abb308(24)=abb308(30)+abb308(24)
      abb308(24)=abb308(7)*abb308(24)
      abb308(10)=abb308(10)+abb308(43)
      abb308(10)=-abb308(10)*abb308(17)
      abb308(14)=abb308(14)+abb308(40)
      abb308(14)=-abb308(14)*abb308(21)
      abb308(13)=abb308(17)*abb308(13)
      abb308(13)=abb308(13)+abb308(22)
      abb308(13)=abb308(8)*abb308(6)*mB*abb308(13)
      abb308(10)=2.0_ki*abb308(13)+abb308(24)+abb308(14)+abb308(10)
      abb308(10)=8.0_ki*abb308(10)
      abb308(13)=-12.0_ki*abb308(16)
      abb308(14)=abb308(8)*abb308(7)
      abb308(14)=8.0_ki*abb308(14)
      abb308(14)=abb308(14)*mB
      abb308(16)=abb308(28)*abb308(14)
      abb308(15)=-abb308(15)*abb308(34)
      abb308(17)=-abb308(26)*abb308(33)
      abb308(15)=abb308(17)+abb308(15)
      abb308(17)=16.0_ki*abb308(7)
      abb308(15)=abb308(15)*abb308(17)
      abb308(14)=abb308(37)*abb308(14)
      abb308(11)=-abb308(11)*abb308(34)
      abb308(12)=-abb308(12)*abb308(33)
      abb308(11)=abb308(12)+abb308(11)
      abb308(11)=abb308(11)*abb308(17)
      R2d308=0.0_ki
      rat2 = rat2 + R2d308
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='308' value='", &
          & R2d308, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd308h6
