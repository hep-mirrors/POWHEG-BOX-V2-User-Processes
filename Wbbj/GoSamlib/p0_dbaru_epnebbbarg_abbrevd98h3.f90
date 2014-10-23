module     p0_dbaru_epnebbbarg_abbrevd98h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(42), public :: abb98
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
      abb98(6)=spak2l6**(-1)
      abb98(7)=spak2k7**(-1)
      abb98(8)=sqrt(mB**2)
      abb98(9)=spak2l5**(-1)
      abb98(10)=spbl5k2**(-1)
      abb98(11)=es712-es12
      abb98(12)=abb98(11)-es71
      abb98(13)=abb98(12)*spbl5k2
      abb98(14)=spak2l5*spbl5k2**2
      abb98(13)=-abb98(14)+2.0_ki*abb98(13)
      abb98(13)=abb98(13)*spak2l5
      abb98(14)=-es712+2.0_ki*es12
      abb98(14)=abb98(14)*es712
      abb98(11)=-es71+2.0_ki*abb98(11)
      abb98(11)=abb98(11)*es71
      abb98(15)=es12**2
      abb98(11)=-abb98(15)+abb98(13)+abb98(14)+abb98(11)
      abb98(13)=spbk3k1*spak1k2
      abb98(14)=spbk4k3*spak2k4
      abb98(13)=abb98(13)-abb98(14)
      abb98(14)=-c1*NC*abb98(13)
      abb98(15)=-abb98(11)*abb98(14)
      abb98(16)=-abb98(4)*c2*abb98(13)
      abb98(17)=2.0_ki*c1
      abb98(13)=abb98(13)*abb98(17)
      abb98(13)=abb98(16)+abb98(13)
      abb98(11)=-abb98(4)*abb98(11)*abb98(13)
      abb98(11)=abb98(15)+abb98(11)
      abb98(15)=abb98(6)*mB
      abb98(11)=abb98(11)*abb98(15)
      abb98(16)=spak2l5*spbl5k2
      abb98(18)=abb98(16)-abb98(12)
      abb98(19)=-abb98(8)*spbl6k2*abb98(18)
      abb98(20)=-abb98(19)*abb98(14)
      abb98(19)=-abb98(4)*abb98(19)*abb98(13)
      abb98(11)=abb98(11)+abb98(20)+abb98(19)
      abb98(19)=gW*TR
      abb98(19)=abb98(19)**2*abb98(3)*abb98(1)*abb98(2)*abb98(5)*CVDU*spak1k4*i_
      abb98(20)=abb98(19)*spbk7l5
      abb98(21)=abb98(20)*abb98(7)
      abb98(22)=8.0_ki*abb98(21)
      abb98(11)=abb98(11)*abb98(22)
      abb98(23)=abb98(4)*abb98(12)*abb98(13)
      abb98(24)=abb98(12)*abb98(14)
      abb98(23)=abb98(24)+abb98(23)
      abb98(24)=abb98(21)*abb98(15)
      abb98(25)=16.0_ki*abb98(24)
      abb98(23)=abb98(23)*abb98(25)
      abb98(26)=-abb98(4)*abb98(16)*abb98(13)
      abb98(16)=-abb98(16)*abb98(14)
      abb98(16)=abb98(16)+abb98(26)
      abb98(16)=abb98(16)*abb98(25)
      abb98(26)=abb98(8)**2
      abb98(18)=abb98(26)-abb98(18)
      abb98(26)=abb98(18)*abb98(14)
      abb98(18)=abb98(4)*abb98(18)*abb98(13)
      abb98(12)=-abb98(12)*abb98(9)*abb98(10)
      abb98(12)=1.0_ki+abb98(12)
      abb98(27)=-abb98(4)*abb98(12)*abb98(13)
      abb98(12)=-abb98(12)*abb98(14)
      abb98(12)=abb98(12)+abb98(27)
      abb98(12)=abb98(12)*mB**2
      abb98(12)=abb98(12)+abb98(26)+abb98(18)
      abb98(12)=abb98(12)*abb98(15)
      abb98(18)=spbl6l5*spak1l5
      abb98(26)=spbk7l6*spak1k7
      abb98(18)=abb98(18)-abb98(26)
      abb98(26)=spbk3k1*abb98(8)
      abb98(18)=abb98(18)*abb98(26)
      abb98(27)=spbl6l5*spak4l5
      abb98(28)=spbk7l6*spak4k7
      abb98(27)=abb98(27)-abb98(28)
      abb98(28)=spbk4k3*abb98(8)
      abb98(27)=abb98(27)*abb98(28)
      abb98(18)=abb98(18)+abb98(27)
      abb98(27)=c1*NC
      abb98(29)=-abb98(18)*abb98(27)
      abb98(30)=abb98(4)*c2
      abb98(17)=abb98(30)-abb98(17)
      abb98(18)=-abb98(4)*abb98(18)*abb98(17)
      abb98(12)=abb98(12)+abb98(29)+abb98(18)
      abb98(12)=16.0_ki*abb98(12)*abb98(21)
      abb98(18)=spak2l5*spbk7k2
      abb98(21)=-abb98(4)*abb98(18)*abb98(13)
      abb98(18)=-abb98(18)*abb98(14)
      abb98(18)=abb98(18)+abb98(21)
      abb98(18)=abb98(18)*abb98(15)*abb98(22)
      abb98(21)=abb98(4)*spak2l5*abb98(13)
      abb98(29)=spak2l5*abb98(14)
      abb98(21)=abb98(29)+abb98(21)
      abb98(19)=8.0_ki*abb98(19)
      abb98(19)=abb98(19)*abb98(15)*spbk7l5**2
      abb98(21)=abb98(21)*abb98(7)*abb98(19)
      abb98(29)=-abb98(4)*spbl5k2*abb98(13)
      abb98(30)=-spbl5k2*abb98(14)
      abb98(29)=abb98(30)+abb98(29)
      abb98(30)=8.0_ki*abb98(20)
      abb98(29)=abb98(29)*abb98(15)*abb98(30)
      abb98(13)=-abb98(4)*abb98(13)
      abb98(13)=-abb98(14)+abb98(13)
      abb98(13)=abb98(13)*abb98(19)
      abb98(14)=abb98(17)*abb98(4)
      abb98(14)=abb98(27)+abb98(14)
      abb98(19)=abb98(28)*spbl6k2
      abb98(31)=-abb98(30)*abb98(19)*abb98(14)
      abb98(32)=spbk4k3*abb98(14)
      abb98(15)=abb98(15)*abb98(20)
      abb98(20)=32.0_ki*abb98(15)
      abb98(33)=abb98(32)*abb98(20)
      abb98(34)=-abb98(4)*spak2l5*abb98(17)
      abb98(35)=abb98(27)*spak2l5
      abb98(34)=abb98(34)-abb98(35)
      abb98(35)=abb98(22)*abb98(19)*abb98(34)
      abb98(36)=-spbk4k3*abb98(34)
      abb98(24)=32.0_ki*abb98(24)
      abb98(37)=abb98(36)*abb98(24)
      abb98(38)=-abb98(14)*abb98(28)*spbk7l6
      abb98(39)=-abb98(7)*abb98(34)*abb98(28)*spbl6l5
      abb98(38)=abb98(39)+abb98(38)
      abb98(38)=abb98(38)*abb98(30)
      abb98(39)=abb98(26)*spbl6k2
      abb98(40)=abb98(39)*spak1k7
      abb98(41)=abb98(19)*spak4k7
      abb98(40)=abb98(40)+abb98(41)
      abb98(41)=abb98(4)*abb98(40)*abb98(17)
      abb98(40)=abb98(40)*abb98(27)
      abb98(40)=abb98(40)+abb98(41)
      abb98(40)=abb98(40)*abb98(22)
      abb98(15)=16.0_ki*abb98(15)
      abb98(32)=-abb98(32)*abb98(15)
      abb98(28)=-abb98(22)*abb98(28)*abb98(14)
      abb98(41)=abb98(39)*spak1l5
      abb98(19)=abb98(19)*spak4l5
      abb98(19)=abb98(41)+abb98(19)
      abb98(17)=abb98(4)*abb98(19)*abb98(17)
      abb98(19)=abb98(19)*abb98(27)
      abb98(17)=abb98(19)+abb98(17)
      abb98(17)=abb98(17)*abb98(22)
      abb98(19)=-abb98(36)*abb98(25)
      abb98(27)=-abb98(30)*abb98(39)*abb98(14)
      abb98(36)=spbk3k1*abb98(14)
      abb98(20)=abb98(36)*abb98(20)
      abb98(39)=abb98(22)*abb98(39)*abb98(34)
      abb98(41)=-spbk3k1*abb98(34)
      abb98(24)=abb98(41)*abb98(24)
      abb98(42)=-abb98(14)*abb98(26)*spbk7l6
      abb98(34)=-abb98(7)*abb98(34)*abb98(26)*spbl6l5
      abb98(34)=abb98(34)+abb98(42)
      abb98(30)=abb98(34)*abb98(30)
      abb98(15)=-abb98(36)*abb98(15)
      abb98(14)=-abb98(22)*abb98(26)*abb98(14)
      abb98(22)=-abb98(41)*abb98(25)
      R2d98=0.0_ki
      rat2 = rat2 + R2d98
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='98' value='", &
          & R2d98, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd98h3
