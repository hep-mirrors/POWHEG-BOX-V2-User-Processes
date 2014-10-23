module     p0_dbaru_epnebbbarg_abbrevd124h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(48), public :: abb124
   complex(ki), public :: R2d124
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
      abb124(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb124(2)=1.0_ki/(-es71+es56-es567+es234)
      abb124(3)=NC**(-1)
      abb124(4)=sqrt2**(-1)
      abb124(5)=es56**(-1)
      abb124(6)=spbl5k2**(-1)
      abb124(7)=spak2k7**(-1)
      abb124(8)=spbl6k2**(-1)
      abb124(9)=c1*abb124(3)
      abb124(10)=c4*abb124(3)**2
      abb124(9)=abb124(9)-abb124(10)
      abb124(10)=TR*gW
      abb124(9)=abb124(9)*abb124(7)*abb124(10)**2*CVDU*i_*mB*abb124(5)*abb124(4&
      &)*abb124(2)*abb124(1)
      abb124(10)=spak1l5*abb124(9)
      abb124(11)=spbk7k3**2
      abb124(12)=-abb124(11)*abb124(10)
      abb124(13)=abb124(12)*spak3k4
      abb124(14)=spak1l6*abb124(9)
      abb124(11)=-abb124(11)*abb124(14)
      abb124(15)=spbl6k2*abb124(6)
      abb124(16)=abb124(15)*spak3k4
      abb124(17)=abb124(11)*abb124(16)
      abb124(13)=abb124(13)+abb124(17)
      abb124(17)=-spal6k7*abb124(13)
      abb124(18)=spbl5k2*abb124(8)
      abb124(19)=abb124(18)*spak3k4
      abb124(20)=abb124(12)*abb124(19)
      abb124(21)=abb124(11)*spak3k4
      abb124(20)=abb124(20)+abb124(21)
      abb124(21)=-spal5k7*abb124(20)
      abb124(12)=abb124(12)*abb124(8)
      abb124(11)=abb124(11)*abb124(6)
      abb124(11)=abb124(12)+abb124(11)
      abb124(12)=-spak1k7*abb124(11)*spbk2k1*spak3k4
      abb124(12)=abb124(12)+abb124(17)+abb124(21)
      abb124(12)=16.0_ki*abb124(12)
      abb124(9)=-spbk7k3*abb124(9)
      abb124(17)=-spak1l6*abb124(9)
      abb124(21)=abb124(17)*abb124(6)
      abb124(9)=-spak1l5*abb124(9)
      abb124(22)=abb124(9)*abb124(8)
      abb124(21)=abb124(21)+abb124(22)
      abb124(22)=abb124(21)*spbk2k1
      abb124(23)=abb124(22)*spak1k4
      abb124(24)=abb124(17)*abb124(15)
      abb124(24)=abb124(24)+abb124(9)
      abb124(25)=abb124(24)*spak4l6
      abb124(26)=abb124(9)*abb124(18)
      abb124(26)=abb124(26)+abb124(17)
      abb124(27)=abb124(26)*spak4l5
      abb124(23)=-abb124(27)+abb124(23)-abb124(25)
      abb124(25)=32.0_ki*abb124(23)
      abb124(27)=spbk7k2*spak4k7
      abb124(28)=abb124(27)*abb124(24)
      abb124(29)=abb124(9)*spak3k4
      abb124(30)=abb124(16)*abb124(17)
      abb124(29)=abb124(29)+abb124(30)
      abb124(31)=-spbk3k2*abb124(29)
      abb124(28)=abb124(31)+abb124(28)
      abb124(28)=spak2l6*abb124(28)
      abb124(31)=abb124(27)*abb124(26)
      abb124(32)=abb124(17)*spak3k4
      abb124(33)=abb124(19)*abb124(9)
      abb124(32)=abb124(32)+abb124(33)
      abb124(34)=-spbk3k2*abb124(32)
      abb124(31)=abb124(34)+abb124(31)
      abb124(31)=spak2l5*abb124(31)
      abb124(34)=abb124(21)*es12
      abb124(35)=-abb124(27)*abb124(34)
      abb124(36)=es12*spak3k4
      abb124(37)=spbk3k2*abb124(21)*abb124(36)
      abb124(28)=abb124(31)+abb124(28)+abb124(35)+abb124(37)
      abb124(28)=8.0_ki*abb124(28)
      abb124(23)=16.0_ki*abb124(23)
      abb124(11)=abb124(11)*abb124(36)
      abb124(13)=-spak2l6*abb124(13)
      abb124(20)=-spak2l5*abb124(20)
      abb124(11)=abb124(20)+abb124(11)+abb124(13)
      abb124(11)=8.0_ki*abb124(11)
      abb124(13)=abb124(9)*spak4k7
      abb124(20)=abb124(15)*spak4k7
      abb124(31)=abb124(20)*abb124(17)
      abb124(13)=abb124(13)+abb124(31)
      abb124(35)=es712-es71
      abb124(13)=-abb124(13)*abb124(35)
      abb124(37)=es12*spak4k7
      abb124(38)=abb124(9)*abb124(37)
      abb124(31)=es12*abb124(31)
      abb124(13)=abb124(38)+abb124(31)+abb124(13)
      abb124(13)=8.0_ki*abb124(13)
      abb124(29)=abb124(29)*abb124(35)
      abb124(9)=-abb124(9)*abb124(36)
      abb124(30)=-es12*abb124(30)
      abb124(9)=abb124(9)+abb124(30)+abb124(29)
      abb124(9)=8.0_ki*abb124(9)
      abb124(15)=abb124(14)*abb124(15)
      abb124(15)=abb124(15)+abb124(10)
      abb124(29)=spbk7k2*abb124(15)
      abb124(30)=16.0_ki*spak2k4
      abb124(31)=-abb124(29)*abb124(30)
      abb124(38)=8.0_ki*spak2k4
      abb124(39)=-abb124(29)*abb124(38)
      abb124(40)=-abb124(35)*spak4k7
      abb124(40)=abb124(37)+abb124(40)
      abb124(40)=8.0_ki*abb124(26)*abb124(40)
      abb124(32)=abb124(32)*abb124(35)
      abb124(17)=-abb124(17)*abb124(36)
      abb124(33)=-es12*abb124(33)
      abb124(17)=abb124(17)+abb124(33)+abb124(32)
      abb124(17)=8.0_ki*abb124(17)
      abb124(18)=abb124(10)*abb124(18)
      abb124(18)=abb124(18)+abb124(14)
      abb124(32)=spbk7k2*abb124(18)
      abb124(33)=-abb124(32)*abb124(30)
      abb124(41)=-abb124(32)*abb124(38)
      abb124(42)=abb124(14)*abb124(6)
      abb124(43)=abb124(10)*abb124(8)
      abb124(42)=abb124(42)+abb124(43)
      abb124(43)=-es12*abb124(42)*spbk7k2
      abb124(29)=spak2l6*abb124(29)
      abb124(32)=spak2l5*abb124(32)
      abb124(29)=abb124(32)+abb124(43)+abb124(29)
      abb124(29)=8.0_ki*abb124(29)
      abb124(32)=abb124(35)-es12
      abb124(32)=8.0_ki*abb124(32)
      abb124(43)=-abb124(15)*abb124(32)
      abb124(44)=-abb124(18)*abb124(32)
      abb124(45)=abb124(24)*spak2l6
      abb124(46)=abb124(26)*spak2l5
      abb124(34)=abb124(45)+abb124(46)-abb124(34)
      abb124(45)=16.0_ki*abb124(34)
      abb124(34)=8.0_ki*abb124(34)
      abb124(46)=spak4k7*abb124(10)
      abb124(20)=abb124(14)*abb124(20)
      abb124(20)=abb124(46)+abb124(20)
      abb124(46)=8.0_ki*spbk3k2
      abb124(20)=abb124(20)*abb124(46)
      abb124(47)=-abb124(27)*abb124(15)
      abb124(48)=-spak3k4*abb124(10)
      abb124(16)=-abb124(14)*abb124(16)
      abb124(16)=abb124(48)+abb124(16)
      abb124(16)=spbk3k2*abb124(16)
      abb124(16)=abb124(16)+abb124(47)
      abb124(16)=8.0_ki*abb124(16)
      abb124(47)=abb124(46)*spak4k7*abb124(18)
      abb124(48)=-abb124(27)*abb124(18)
      abb124(14)=-spak3k4*abb124(14)
      abb124(10)=-abb124(10)*abb124(19)
      abb124(10)=abb124(14)+abb124(10)
      abb124(10)=spbk3k2*abb124(10)
      abb124(10)=abb124(10)+abb124(48)
      abb124(10)=8.0_ki*abb124(10)
      abb124(14)=8.0_ki*abb124(15)
      abb124(15)=8.0_ki*abb124(18)
      abb124(18)=spal6k7*abb124(24)
      abb124(19)=spal5k7*abb124(26)
      abb124(24)=spak1k7*abb124(22)
      abb124(18)=abb124(24)+abb124(18)+abb124(19)
      abb124(18)=16.0_ki*abb124(18)
      abb124(19)=spak4k7*spbk2k1
      abb124(21)=-abb124(35)*abb124(19)*abb124(21)
      abb124(24)=abb124(37)*abb124(22)
      abb124(21)=abb124(24)+abb124(21)
      abb124(21)=8.0_ki*abb124(21)
      abb124(24)=abb124(42)*spbk2k1
      abb124(26)=-abb124(24)*abb124(32)
      abb124(19)=abb124(42)*abb124(19)*abb124(46)
      abb124(32)=spak3k4*abb124(35)
      abb124(32)=-abb124(36)+abb124(32)
      abb124(22)=8.0_ki*abb124(22)*abb124(32)
      abb124(32)=abb124(24)*spbk7k2
      abb124(30)=-abb124(30)*abb124(32)
      abb124(32)=-abb124(38)*abb124(32)
      abb124(24)=8.0_ki*abb124(24)
      abb124(35)=-spbk3k2*spak3k4
      abb124(27)=-abb124(27)+abb124(35)
      abb124(27)=abb124(27)*abb124(24)
      R2d124=0.0_ki
      rat2 = rat2 + R2d124
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='124' value='", &
          & R2d124, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd124h0
