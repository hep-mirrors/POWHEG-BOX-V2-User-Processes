module     p0_dbaru_epnebbbarg_abbrevd121h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(39), public :: abb121
   complex(ki), public :: R2d121
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
      abb121(1)=1.0_ki/(-mB**2+es67)
      abb121(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb121(3)=1.0_ki/(es34+es567-es12-es234)
      abb121(4)=NC**(-1)
      abb121(5)=sqrt2**(-1)
      abb121(6)=spbk7k2**(-1)
      abb121(7)=spak2l5**(-1)
      abb121(8)=sqrt(mB**2)
      abb121(9)=spak2l6**(-1)
      abb121(10)=spbl6k2**(-1)
      abb121(11)=-NC+2.0_ki*abb121(4)
      abb121(12)=TR*gW
      abb121(12)=abb121(12)**2*CVDU*i_*spak1k4*abb121(5)*abb121(3)*abb121(2)*ab&
      &b121(1)
      abb121(13)=abb121(12)*abb121(6)*spal6k7
      abb121(14)=-abb121(11)*abb121(13)*c3
      abb121(15)=-spbk4k3*abb121(14)
      abb121(16)=spbl5k2**2
      abb121(17)=abb121(16)*abb121(15)
      abb121(18)=c2*abb121(4)**2
      abb121(19)=abb121(16)*abb121(18)
      abb121(20)=abb121(13)*spbk4k3
      abb121(21)=abb121(19)*abb121(20)
      abb121(17)=-abb121(21)+abb121(17)
      abb121(21)=abb121(17)*spak4l5
      abb121(14)=-spbk3k1*abb121(14)
      abb121(22)=abb121(16)*abb121(14)
      abb121(13)=abb121(13)*spbk3k1
      abb121(23)=abb121(19)*abb121(13)
      abb121(22)=-abb121(23)+abb121(22)
      abb121(23)=abb121(22)*spak1l5
      abb121(21)=abb121(21)+abb121(23)
      abb121(23)=spak2l6*spbl6k2
      abb121(23)=abb121(23)+es71+es12-es712
      abb121(21)=-abb121(21)*abb121(23)
      abb121(24)=abb121(12)*spbk4k3
      abb121(25)=c3*spal6k7
      abb121(26)=abb121(24)*abb121(25)
      abb121(27)=-abb121(26)*abb121(11)
      abb121(28)=abb121(16)*abb121(27)
      abb121(19)=abb121(19)*spal6k7
      abb121(29)=abb121(24)*abb121(19)
      abb121(28)=abb121(29)+abb121(28)
      abb121(28)=spak2k4*abb121(28)
      abb121(12)=abb121(12)*spbk3k1
      abb121(25)=abb121(12)*abb121(25)
      abb121(29)=-abb121(25)*abb121(11)
      abb121(16)=-abb121(16)*abb121(29)
      abb121(19)=-abb121(12)*abb121(19)
      abb121(16)=abb121(19)+abb121(16)
      abb121(16)=spak1k2*abb121(16)
      abb121(16)=abb121(28)+abb121(16)
      abb121(16)=spal5k7*abb121(16)
      abb121(17)=-spak2k4*abb121(17)
      abb121(19)=spak1k2*abb121(22)
      abb121(17)=abb121(17)+abb121(19)
      abb121(17)=spal5l6*spbl6k2*abb121(17)
      abb121(16)=abb121(17)+abb121(16)+abb121(21)
      abb121(16)=8.0_ki*abb121(16)
      abb121(17)=-spbl5k2*abb121(15)
      abb121(19)=abb121(18)*spbl5k2
      abb121(21)=abb121(19)*abb121(20)
      abb121(17)=abb121(21)+abb121(17)
      abb121(21)=spak4l6*abb121(17)
      abb121(22)=-spbl5k2*abb121(14)
      abb121(28)=abb121(19)*abb121(13)
      abb121(22)=abb121(28)+abb121(22)
      abb121(28)=spak1l6*abb121(22)
      abb121(21)=abb121(28)+abb121(21)
      abb121(21)=spbl6k2*abb121(21)
      abb121(28)=-spbl5k2*abb121(11)
      abb121(26)=abb121(28)*abb121(26)
      abb121(30)=abb121(19)*abb121(24)
      abb121(31)=abb121(30)*spal6k7
      abb121(26)=abb121(26)+abb121(31)
      abb121(31)=spak4k7*abb121(26)
      abb121(25)=abb121(28)*abb121(25)
      abb121(19)=abb121(19)*abb121(12)
      abb121(32)=abb121(19)*spal6k7
      abb121(25)=abb121(25)+abb121(32)
      abb121(32)=spak1k7*abb121(25)
      abb121(21)=abb121(32)+abb121(31)+abb121(21)
      abb121(21)=16.0_ki*abb121(21)
      abb121(31)=abb121(18)*spal6k7
      abb121(32)=abb121(31)*abb121(24)
      abb121(27)=abb121(32)+abb121(27)
      abb121(32)=spak4k7*abb121(27)
      abb121(20)=abb121(20)*abb121(18)
      abb121(15)=abb121(20)-abb121(15)
      abb121(20)=abb121(15)*spbl6k2
      abb121(33)=spak4l6*abb121(20)
      abb121(31)=abb121(31)*abb121(12)
      abb121(29)=abb121(31)+abb121(29)
      abb121(31)=spak1k7*abb121(29)
      abb121(13)=abb121(13)*abb121(18)
      abb121(13)=abb121(13)-abb121(14)
      abb121(14)=abb121(13)*spbl6k2
      abb121(34)=spak1l6*abb121(14)
      abb121(31)=abb121(34)+abb121(31)+abb121(33)+abb121(32)
      abb121(32)=mB**2
      abb121(33)=abb121(32)*abb121(7)
      abb121(34)=mB*abb121(8)*abb121(7)
      abb121(33)=abb121(33)-abb121(34)
      abb121(31)=abb121(33)*abb121(31)
      abb121(33)=-spak4l5*abb121(17)
      abb121(35)=-spak1l5*abb121(22)
      abb121(33)=abb121(33)+abb121(35)
      abb121(33)=abb121(34)*abb121(33)
      abb121(31)=abb121(33)+abb121(31)
      abb121(31)=16.0_ki*abb121(31)
      abb121(26)=-spak2k4*abb121(26)
      abb121(25)=spak1k2*abb121(25)
      abb121(25)=abb121(26)+abb121(25)
      abb121(25)=8.0_ki*abb121(25)
      abb121(26)=c3*abb121(6)
      abb121(33)=abb121(24)*abb121(26)
      abb121(35)=abb121(11)*abb121(33)
      abb121(18)=abb121(18)*abb121(6)
      abb121(24)=abb121(18)*abb121(24)
      abb121(24)=abb121(35)-abb121(24)
      abb121(35)=-spak4l6*abb121(24)
      abb121(26)=abb121(12)*abb121(26)
      abb121(11)=abb121(11)*abb121(26)
      abb121(12)=abb121(18)*abb121(12)
      abb121(11)=abb121(11)-abb121(12)
      abb121(12)=-spak1l6*abb121(11)
      abb121(12)=abb121(35)+abb121(12)
      abb121(18)=16.0_ki*abb121(34)
      abb121(12)=abb121(12)*abb121(18)
      abb121(34)=-spak2k4*abb121(17)
      abb121(35)=spak1k2*abb121(22)
      abb121(34)=abb121(34)+abb121(35)
      abb121(34)=8.0_ki*spbl6k2*abb121(34)
      abb121(24)=spak4k7*abb121(24)
      abb121(11)=spak1k7*abb121(11)
      abb121(11)=abb121(24)+abb121(11)
      abb121(11)=abb121(11)*abb121(18)
      abb121(18)=-16.0_ki*abb121(27)
      abb121(24)=-16.0_ki*abb121(20)
      abb121(35)=abb121(8)**2
      abb121(23)=abb121(35)+abb121(23)
      abb121(23)=8.0_ki*abb121(23)
      abb121(35)=abb121(17)*abb121(23)
      abb121(17)=16.0_ki*abb121(17)
      abb121(32)=abb121(32)*abb121(10)
      abb121(36)=abb121(32)*abb121(9)
      abb121(37)=abb121(36)*abb121(17)
      abb121(27)=8.0_ki*abb121(27)
      abb121(33)=abb121(28)*abb121(33)
      abb121(30)=abb121(30)*abb121(6)
      abb121(30)=abb121(33)+abb121(30)
      abb121(33)=abb121(30)*abb121(32)
      abb121(38)=spbk7l5*abb121(15)
      abb121(33)=abb121(33)+abb121(38)
      abb121(33)=8.0_ki*abb121(33)
      abb121(20)=8.0_ki*abb121(20)
      abb121(15)=spbl6l5*abb121(15)
      abb121(38)=abb121(36)*spak2k7
      abb121(30)=-abb121(30)*abb121(38)
      abb121(15)=abb121(15)+abb121(30)
      abb121(15)=8.0_ki*abb121(15)
      abb121(30)=-16.0_ki*abb121(29)
      abb121(39)=-16.0_ki*abb121(14)
      abb121(23)=abb121(22)*abb121(23)
      abb121(22)=16.0_ki*abb121(22)
      abb121(36)=abb121(36)*abb121(22)
      abb121(29)=8.0_ki*abb121(29)
      abb121(26)=abb121(28)*abb121(26)
      abb121(19)=abb121(19)*abb121(6)
      abb121(19)=abb121(26)+abb121(19)
      abb121(26)=abb121(19)*abb121(32)
      abb121(28)=spbk7l5*abb121(13)
      abb121(26)=abb121(26)+abb121(28)
      abb121(26)=8.0_ki*abb121(26)
      abb121(14)=8.0_ki*abb121(14)
      abb121(13)=spbl6l5*abb121(13)
      abb121(19)=-abb121(19)*abb121(38)
      abb121(13)=abb121(13)+abb121(19)
      abb121(13)=8.0_ki*abb121(13)
      R2d121=0.0_ki
      rat2 = rat2 + R2d121
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='121' value='", &
          & R2d121, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd121h5
