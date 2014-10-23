module     p0_dbaru_epnebbbarg_abbrevd77h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(53), public :: abb77
   complex(ki), public :: R2d77
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
      abb77(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb77(2)=sqrt(mB**2)
      abb77(3)=NC**(-1)
      abb77(4)=sqrt2**(-1)
      abb77(5)=es71**(-1)
      abb77(6)=spbl6k2**(-1)
      abb77(7)=spak2k7**(-1)
      abb77(8)=spbl5k2**(-1)
      abb77(9)=spak2l6**(-1)
      abb77(10)=spak2l5**(-1)
      abb77(11)=2.0_ki*c3
      abb77(12)=abb77(11)*abb77(3)
      abb77(13)=TR*gW
      abb77(13)=abb77(13)**2*abb77(7)*i_*CVDU*abb77(4)*abb77(1)
      abb77(14)=spbk7k1*abb77(5)*abb77(13)
      abb77(15)=abb77(14)*spbk3k2
      abb77(16)=spak1k2*abb77(15)
      abb77(17)=abb77(12)*abb77(16)
      abb77(18)=abb77(17)*abb77(2)
      abb77(19)=abb77(3)**2
      abb77(20)=abb77(19)+1.0_ki
      abb77(16)=abb77(16)*abb77(20)
      abb77(21)=abb77(2)*c4
      abb77(22)=abb77(16)*abb77(21)
      abb77(18)=abb77(18)-abb77(22)
      abb77(22)=abb77(18)*spak1l5
      abb77(23)=spbk7k2*spak4k7
      abb77(24)=-abb77(22)*abb77(23)
      abb77(25)=abb77(14)*abb77(3)
      abb77(26)=abb77(25)*spbk3k2
      abb77(27)=abb77(11)*abb77(2)
      abb77(28)=abb77(26)*abb77(27)
      abb77(19)=abb77(19)*abb77(14)
      abb77(29)=abb77(19)*spbk3k2
      abb77(29)=abb77(29)+abb77(15)
      abb77(30)=-abb77(29)*abb77(21)
      abb77(30)=abb77(30)+abb77(28)
      abb77(31)=es12*spak1k4
      abb77(30)=spak1l5*abb77(30)*abb77(31)
      abb77(24)=abb77(24)+abb77(30)
      abb77(24)=spak2l6*abb77(24)
      abb77(30)=mB**2
      abb77(32)=-abb77(30)*abb77(18)
      abb77(33)=abb77(6)*spak1l5
      abb77(34)=abb77(33)*abb77(32)
      abb77(35)=-spak2l6*abb77(22)
      abb77(35)=-abb77(34)+abb77(35)
      abb77(35)=spbl5k2*spak4l5*abb77(35)
      abb77(34)=-abb77(23)*abb77(34)
      abb77(36)=abb77(30)*abb77(21)
      abb77(37)=abb77(29)*abb77(36)
      abb77(28)=-abb77(30)*abb77(28)
      abb77(28)=abb77(37)+abb77(28)
      abb77(28)=abb77(28)*abb77(31)*abb77(33)
      abb77(24)=abb77(35)+abb77(24)+abb77(34)+abb77(28)
      abb77(24)=8.0_ki*abb77(24)
      abb77(28)=16.0_ki*spak4l6
      abb77(28)=-abb77(22)*abb77(28)
      abb77(33)=mB**3
      abb77(34)=abb77(33)*abb77(17)
      abb77(35)=abb77(33)*c4
      abb77(37)=abb77(16)*abb77(35)
      abb77(37)=abb77(37)-abb77(34)
      abb77(38)=abb77(9)*abb77(6)
      abb77(37)=abb77(37)*abb77(38)
      abb77(39)=mB*c4
      abb77(40)=-abb77(16)*abb77(39)
      abb77(41)=mB*abb77(17)
      abb77(37)=abb77(37)+abb77(40)+abb77(41)
      abb77(37)=spak4l5*abb77(37)
      abb77(34)=abb77(34)*abb77(8)
      abb77(40)=abb77(8)*abb77(35)
      abb77(41)=abb77(40)*abb77(16)
      abb77(34)=abb77(34)-abb77(41)
      abb77(41)=abb77(34)*abb77(38)
      abb77(42)=abb77(8)*mB
      abb77(17)=abb77(17)*abb77(42)
      abb77(43)=abb77(42)*c4
      abb77(16)=abb77(43)*abb77(16)
      abb77(16)=abb77(17)-abb77(16)
      abb77(17)=abb77(41)-abb77(16)
      abb77(41)=-abb77(17)*abb77(23)
      abb77(44)=abb77(29)*abb77(43)
      abb77(42)=abb77(42)*abb77(11)
      abb77(45)=-abb77(26)*abb77(42)
      abb77(44)=abb77(44)+abb77(45)
      abb77(44)=spak1k4*abb77(44)
      abb77(29)=-abb77(29)*abb77(40)
      abb77(45)=abb77(11)*abb77(33)*abb77(8)
      abb77(46)=abb77(26)*abb77(45)
      abb77(29)=abb77(29)+abb77(46)
      abb77(46)=abb77(38)*spak1k4
      abb77(29)=abb77(29)*abb77(46)
      abb77(29)=abb77(44)+abb77(29)
      abb77(29)=es12*abb77(29)
      abb77(29)=abb77(29)+abb77(37)+abb77(41)
      abb77(29)=spak1l6*abb77(29)
      abb77(37)=spak1l5*abb77(32)*abb77(38)
      abb77(37)=abb77(22)+abb77(37)
      abb77(37)=spak4l6*abb77(37)
      abb77(29)=abb77(37)+abb77(29)
      abb77(29)=16.0_ki*abb77(29)
      abb77(22)=8.0_ki*abb77(22)
      abb77(37)=-spak4l6*abb77(22)
      abb77(41)=spak4k7*abb77(22)
      abb77(44)=spak4l5*abb77(22)
      abb77(19)=abb77(19)+abb77(14)
      abb77(47)=spak1k2*abb77(19)
      abb77(48)=abb77(47)*abb77(21)
      abb77(49)=abb77(3)*spak1k2
      abb77(14)=abb77(49)*abb77(14)
      abb77(50)=abb77(14)*abb77(27)
      abb77(48)=abb77(48)-abb77(50)
      abb77(50)=8.0_ki*spak1l5
      abb77(50)=abb77(48)*abb77(50)
      abb77(51)=-spbl6k2*spak4l6*abb77(50)
      abb77(49)=abb77(49)**2
      abb77(52)=spak1k2**2
      abb77(49)=abb77(52)+abb77(49)
      abb77(15)=abb77(15)*abb77(49)
      abb77(36)=abb77(15)*abb77(36)
      abb77(26)=abb77(26)*abb77(52)
      abb77(49)=abb77(26)*abb77(11)
      abb77(52)=abb77(2)*abb77(30)
      abb77(33)=abb77(33)+abb77(52)
      abb77(33)=abb77(33)*abb77(49)
      abb77(35)=-abb77(15)*abb77(35)
      abb77(33)=abb77(33)+abb77(35)-abb77(36)
      abb77(33)=abb77(33)*abb77(38)
      abb77(35)=spbl6k3*spak1l6
      abb77(52)=-spbl5k3*spak1l5
      abb77(35)=abb77(52)+abb77(35)
      abb77(35)=abb77(48)*abb77(35)
      abb77(52)=abb77(39)+abb77(21)
      abb77(52)=abb77(15)*abb77(52)
      abb77(53)=-mB-abb77(2)
      abb77(49)=abb77(53)*abb77(49)
      abb77(20)=abb77(21)*abb77(20)
      abb77(12)=-abb77(12)*abb77(2)
      abb77(12)=abb77(20)+abb77(12)
      abb77(12)=spbk7k3*abb77(12)*spak1k2*abb77(13)
      abb77(12)=abb77(12)+abb77(33)+abb77(35)+abb77(49)+abb77(52)
      abb77(12)=spak4l5*abb77(12)
      abb77(13)=-spal5k7*spbk7k3
      abb77(20)=spal5l6*spbl6k3
      abb77(21)=spbk3k1*spak1l5
      abb77(13)=abb77(21)+abb77(20)+abb77(13)
      abb77(13)=abb77(48)*abb77(13)
      abb77(20)=-abb77(8)*abb77(32)
      abb77(13)=abb77(20)+abb77(13)
      abb77(13)=spak1k4*abb77(13)
      abb77(21)=-abb77(26)*abb77(42)
      abb77(33)=abb77(26)*abb77(45)
      abb77(35)=-abb77(15)*abb77(40)
      abb77(33)=abb77(35)+abb77(33)
      abb77(33)=abb77(33)*abb77(38)
      abb77(15)=abb77(15)*abb77(43)
      abb77(15)=abb77(33)+abb77(15)+abb77(21)
      abb77(15)=abb77(15)*abb77(23)
      abb77(21)=abb77(34)*abb77(46)
      abb77(33)=abb77(16)*spak1k4
      abb77(21)=abb77(21)-abb77(33)
      abb77(34)=-es12*abb77(21)
      abb77(26)=-abb77(26)*abb77(30)*abb77(27)
      abb77(26)=abb77(36)+abb77(26)
      abb77(26)=spak4l5*abb77(8)*abb77(26)
      abb77(20)=-spak2k4*spak1l5*abb77(20)
      abb77(20)=abb77(26)+abb77(20)
      abb77(20)=abb77(10)*abb77(20)
      abb77(18)=spak1k4*abb77(18)
      abb77(26)=abb77(32)*abb77(46)
      abb77(18)=abb77(18)+abb77(26)
      abb77(18)=spak2l5*abb77(18)
      abb77(12)=abb77(18)+abb77(20)+abb77(34)+abb77(15)+abb77(12)+abb77(13)
      abb77(12)=8.0_ki*abb77(12)
      abb77(13)=-16.0_ki*abb77(33)
      abb77(15)=-16.0_ki*abb77(21)
      abb77(18)=-8.0_ki*abb77(33)
      abb77(20)=spak1k4*abb77(22)
      abb77(21)=abb77(16)*spak1l6
      abb77(22)=16.0_ki*abb77(21)
      abb77(26)=16.0_ki*spak1l6
      abb77(26)=abb77(17)*abb77(26)
      abb77(21)=8.0_ki*abb77(21)
      abb77(16)=16.0_ki*abb77(16)
      abb77(16)=-spak4l6*abb77(16)
      abb77(27)=abb77(47)*abb77(39)
      abb77(11)=-mB*abb77(11)*abb77(14)
      abb77(11)=abb77(27)+abb77(11)
      abb77(11)=spak4l5*abb77(11)
      abb77(14)=abb77(42)*abb77(14)
      abb77(27)=abb77(47)*abb77(43)
      abb77(14)=abb77(27)-abb77(14)
      abb77(23)=abb77(14)*abb77(23)
      abb77(19)=-abb77(19)*abb77(43)
      abb77(25)=abb77(25)*abb77(42)
      abb77(19)=abb77(19)+abb77(25)
      abb77(19)=abb77(19)*abb77(31)
      abb77(11)=abb77(19)+abb77(11)+abb77(23)
      abb77(11)=8.0_ki*abb77(11)
      abb77(17)=8.0_ki*spak2k4*abb77(17)
      abb77(14)=-8.0_ki*abb77(14)
      R2d77=0.0_ki
      rat2 = rat2 + R2d77
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='77' value='", &
          & R2d77, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd77h0
