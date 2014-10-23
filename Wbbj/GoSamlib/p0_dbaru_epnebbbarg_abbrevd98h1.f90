module     p0_dbaru_epnebbbarg_abbrevd98h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(34), public :: abb98
   complex(ki), public :: R2d98
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
      abb98(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb98(2)=1.0_ki/(es34+es567-es12-es234)
      abb98(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb98(4)=NC**(-1)
      abb98(5)=sqrt2**(-1)
      abb98(6)=spak2k7**(-1)
      abb98(7)=spak2l5**(-1)
      abb98(8)=spbl5k2**(-1)
      abb98(9)=sqrt(mB**2)
      abb98(10)=spbl6k2**(-1)
      abb98(11)=2.0_ki*abb98(4)
      abb98(12)=abb98(11)-NC
      abb98(13)=abb98(12)*c1
      abb98(14)=c2*abb98(4)**2
      abb98(15)=abb98(14)-abb98(13)
      abb98(16)=TR*gW
      abb98(16)=abb98(16)**2*CVDU*i_*spak1k4*abb98(5)*abb98(3)*abb98(2)*abb98(1)
      abb98(15)=abb98(15)*abb98(16)*abb98(6)*spbk7l5
      abb98(17)=-spbk3k1*abb98(15)
      abb98(18)=abb98(17)*spak1l6
      abb98(15)=-spbk4k3*abb98(15)
      abb98(19)=abb98(15)*spak4l6
      abb98(18)=abb98(18)+abb98(19)
      abb98(19)=abb98(18)*es71
      abb98(20)=spak1l6*spak2l5
      abb98(21)=abb98(17)*abb98(20)
      abb98(22)=spak4l6*spak2l5
      abb98(23)=abb98(15)*abb98(22)
      abb98(21)=abb98(21)+abb98(23)
      abb98(23)=abb98(21)*spbl5k2
      abb98(24)=2.0_ki*abb98(23)+abb98(19)
      abb98(24)=es71*abb98(24)
      abb98(19)=-abb98(23)-abb98(19)
      abb98(25)=es712*abb98(18)
      abb98(19)=2.0_ki*abb98(19)+abb98(25)
      abb98(19)=es712*abb98(19)
      abb98(25)=es712-es71
      abb98(26)=-abb98(18)*abb98(25)
      abb98(26)=abb98(23)+abb98(26)
      abb98(27)=es12*abb98(18)
      abb98(26)=2.0_ki*abb98(26)+abb98(27)
      abb98(26)=es12*abb98(26)
      abb98(27)=spbl5k2*spak2l5
      abb98(28)=abb98(18)*abb98(27)**2
      abb98(19)=abb98(26)+abb98(19)+abb98(28)+abb98(24)
      abb98(19)=8.0_ki*abb98(19)
      abb98(24)=abb98(25)-es12
      abb98(25)=abb98(18)*abb98(24)
      abb98(26)=16.0_ki*abb98(25)
      abb98(23)=-16.0_ki*abb98(23)
      abb98(28)=spak1k7*spbk7k2
      abb98(29)=spak1l5*spbl5k2
      abb98(28)=abb98(29)+abb98(28)
      abb98(28)=abb98(17)*abb98(28)
      abb98(29)=spak4k7*spbk7k2
      abb98(30)=spak4l5*spbl5k2
      abb98(29)=abb98(30)+abb98(29)
      abb98(29)=abb98(15)*abb98(29)
      abb98(28)=abb98(29)+abb98(28)
      abb98(29)=abb98(10)*abb98(9)
      abb98(30)=abb98(29)*mB
      abb98(28)=abb98(30)*abb98(28)
      abb98(31)=mB**2
      abb98(32)=abb98(9)**2
      abb98(32)=-abb98(31)+abb98(32)
      abb98(18)=abb98(18)*abb98(32)
      abb98(25)=abb98(8)*abb98(7)*abb98(31)*abb98(25)
      abb98(18)=abb98(25)+abb98(28)+abb98(18)
      abb98(18)=16.0_ki*abb98(18)
      abb98(21)=-8.0_ki*spbk7k2*abb98(21)
      abb98(25)=spbk7l5**2
      abb98(13)=abb98(25)*abb98(6)*abb98(13)
      abb98(28)=abb98(16)*spbk4k3
      abb98(31)=abb98(28)*abb98(13)
      abb98(32)=abb98(25)*abb98(14)
      abb98(33)=abb98(32)*abb98(28)
      abb98(34)=-abb98(6)*abb98(33)
      abb98(31)=abb98(34)+abb98(31)
      abb98(22)=abb98(31)*abb98(22)
      abb98(31)=abb98(16)*spbk3k1
      abb98(13)=abb98(31)*abb98(13)
      abb98(32)=abb98(32)*abb98(31)
      abb98(34)=-abb98(6)*abb98(32)
      abb98(13)=abb98(34)+abb98(13)
      abb98(13)=abb98(13)*abb98(20)
      abb98(13)=abb98(22)+abb98(13)
      abb98(13)=8.0_ki*abb98(13)
      abb98(20)=-abb98(27)+abb98(24)
      abb98(22)=abb98(20)*abb98(15)
      abb98(24)=-spak2k4*abb98(22)
      abb98(27)=abb98(20)*abb98(17)
      abb98(34)=spak1k2*abb98(27)
      abb98(24)=abb98(24)+abb98(34)
      abb98(24)=8.0_ki*abb98(24)
      abb98(34)=c1*spbk7l5
      abb98(11)=abb98(11)*abb98(34)
      abb98(34)=abb98(34)*NC
      abb98(14)=abb98(14)*spbk7l5
      abb98(11)=abb98(34)+abb98(14)-abb98(11)
      abb98(14)=-abb98(28)*abb98(11)
      abb98(28)=-spak4l6*abb98(14)
      abb98(11)=-abb98(31)*abb98(11)
      abb98(31)=-spak1l6*abb98(11)
      abb98(28)=abb98(28)+abb98(31)
      abb98(28)=8.0_ki*spbl5k2*abb98(28)
      abb98(12)=abb98(12)*abb98(25)*abb98(16)*c1
      abb98(16)=-spbk4k3*abb98(12)
      abb98(16)=abb98(33)+abb98(16)
      abb98(16)=spak4l6*abb98(16)
      abb98(12)=-spbk3k1*abb98(12)
      abb98(12)=abb98(32)+abb98(12)
      abb98(12)=spak1l6*abb98(12)
      abb98(12)=abb98(16)+abb98(12)
      abb98(12)=8.0_ki*abb98(12)
      abb98(14)=16.0_ki*abb98(14)
      abb98(16)=16.0_ki*spak2l5
      abb98(25)=abb98(16)*abb98(15)
      abb98(20)=abb98(29)*abb98(20)*mB
      abb98(29)=abb98(15)*abb98(20)
      abb98(22)=spak2l6*abb98(22)
      abb98(22)=abb98(29)+abb98(22)
      abb98(22)=8.0_ki*abb98(22)
      abb98(29)=16.0_ki*abb98(30)
      abb98(15)=-abb98(15)*abb98(29)
      abb98(11)=16.0_ki*abb98(11)
      abb98(16)=abb98(16)*abb98(17)
      abb98(20)=abb98(17)*abb98(20)
      abb98(27)=spak2l6*abb98(27)
      abb98(20)=abb98(20)+abb98(27)
      abb98(20)=8.0_ki*abb98(20)
      abb98(17)=-abb98(17)*abb98(29)
      R2d98=0.0_ki
      rat2 = rat2 + R2d98
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='98' value='", &
          & R2d98, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd98h1
