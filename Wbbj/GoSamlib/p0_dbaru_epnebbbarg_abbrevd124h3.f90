module     p0_dbaru_epnebbbarg_abbrevd124h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(64), public :: abb124
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
      abb124(6)=spak2l5**(-1)
      abb124(7)=spbl5k2**(-1)
      abb124(8)=spak2l6**(-1)
      abb124(9)=spak2k7**(-1)
      abb124(10)=spbl6k2**(-1)
      abb124(11)=abb124(8)*abb124(6)
      abb124(12)=spbk7k3**2
      abb124(13)=-abb124(11)*abb124(12)
      abb124(14)=spbl6k2*abb124(7)
      abb124(15)=abb124(6)*spbk7k3
      abb124(16)=-abb124(14)*abb124(15)**2
      abb124(17)=spbl5k2*abb124(10)
      abb124(18)=abb124(8)*spbk7k3
      abb124(19)=-abb124(17)*abb124(18)**2
      abb124(13)=abb124(19)+2.0_ki*abb124(13)+abb124(16)
      abb124(16)=mB**3
      abb124(19)=abb124(3)**2
      abb124(20)=TR*gW
      abb124(20)=abb124(5)*i_*CVDU*abb124(4)*abb124(2)*abb124(1)*abb124(20)**2
      abb124(21)=abb124(20)*c4
      abb124(22)=abb124(16)*abb124(19)*abb124(21)*spak1k2
      abb124(23)=spak1k2*abb124(3)
      abb124(24)=abb124(16)*abb124(23)
      abb124(25)=abb124(20)*c1
      abb124(26)=abb124(24)*abb124(25)
      abb124(22)=abb124(22)-abb124(26)
      abb124(13)=abb124(22)*abb124(13)
      abb124(19)=abb124(19)*c4
      abb124(22)=c1*abb124(3)
      abb124(26)=abb124(22)-abb124(19)
      abb124(27)=abb124(20)*abb124(9)*spak1k2
      abb124(26)=abb124(26)*abb124(27)*mB
      abb124(28)=-abb124(6)*abb124(26)
      abb124(29)=abb124(28)*abb124(12)
      abb124(30)=spbl6k1*abb124(29)
      abb124(31)=-abb124(8)*abb124(26)
      abb124(32)=abb124(31)*abb124(12)
      abb124(33)=spbl5k1*abb124(32)
      abb124(30)=abb124(30)+abb124(33)
      abb124(30)=spak1k7*abb124(30)
      abb124(13)=abb124(30)+abb124(13)
      abb124(13)=spak3k4*abb124(13)
      abb124(30)=spal6k7*abb124(32)
      abb124(29)=-spal5k7*abb124(29)
      abb124(29)=abb124(29)+abb124(30)
      abb124(30)=spak3k4*spbl6l5
      abb124(29)=abb124(30)*abb124(29)
      abb124(13)=abb124(29)+abb124(13)
      abb124(13)=16.0_ki*abb124(13)
      abb124(29)=abb124(16)*abb124(22)*abb124(27)
      abb124(32)=abb124(6)**2
      abb124(33)=abb124(32)*abb124(29)
      abb124(34)=abb124(33)*spbk7k3
      abb124(16)=abb124(16)*abb124(19)
      abb124(19)=abb124(32)*abb124(16)
      abb124(35)=abb124(27)*spbk7k3
      abb124(36)=abb124(19)*abb124(35)
      abb124(34)=abb124(36)-abb124(34)
      abb124(34)=abb124(34)*abb124(14)
      abb124(36)=abb124(8)**2
      abb124(37)=abb124(36)*abb124(29)
      abb124(38)=abb124(37)*spbk7k3
      abb124(39)=abb124(36)*abb124(16)
      abb124(40)=abb124(39)*abb124(35)
      abb124(38)=abb124(40)-abb124(38)
      abb124(38)=abb124(38)*abb124(17)
      abb124(29)=abb124(29)*abb124(6)
      abb124(40)=abb124(29)*abb124(18)
      abb124(16)=abb124(8)*abb124(6)*abb124(16)
      abb124(35)=abb124(16)*abb124(35)
      abb124(35)=abb124(40)-abb124(35)
      abb124(34)=-2.0_ki*abb124(35)+abb124(34)+abb124(38)
      abb124(35)=spak2k4*abb124(34)
      abb124(18)=-abb124(18)*abb124(26)
      abb124(38)=abb124(18)*spbl5k1
      abb124(15)=-abb124(15)*abb124(26)
      abb124(26)=abb124(15)*spbl6k1
      abb124(26)=abb124(38)+abb124(26)
      abb124(38)=abb124(26)*spak1k4
      abb124(15)=abb124(15)*spbl6l5
      abb124(40)=abb124(15)*spak4l5
      abb124(18)=abb124(18)*spbl6l5
      abb124(41)=abb124(18)*spak4l6
      abb124(35)=-abb124(38)-abb124(40)+abb124(41)+abb124(35)
      abb124(38)=-32.0_ki*abb124(35)
      abb124(40)=spak1k2**2
      abb124(22)=abb124(22)*abb124(40)
      abb124(23)=abb124(23)**2
      abb124(41)=c4*abb124(23)
      abb124(22)=abb124(22)-abb124(41)
      abb124(41)=-spbl6k1*abb124(6)
      abb124(42)=-spbl5k1*abb124(8)
      abb124(41)=abb124(41)+abb124(42)
      abb124(20)=abb124(20)*spbk7k3
      abb124(42)=abb124(9)*mB
      abb124(22)=abb124(41)*abb124(22)*abb124(20)*abb124(42)
      abb124(41)=spbk3k2*spak3k4
      abb124(43)=-spbk7k2*spak4k7
      abb124(43)=abb124(43)+abb124(41)
      abb124(43)=8.0_ki*abb124(22)*abb124(43)
      abb124(35)=16.0_ki*abb124(35)
      abb124(21)=abb124(23)*abb124(21)
      abb124(23)=abb124(3)*abb124(40)*abb124(25)
      abb124(21)=abb124(21)-abb124(23)
      abb124(23)=spbl5k1*abb124(42)*abb124(8)
      abb124(25)=spbl6k1*abb124(42)*abb124(6)
      abb124(23)=abb124(23)+abb124(25)
      abb124(12)=-8.0_ki*spak3k4*abb124(23)*abb124(21)*abb124(12)
      abb124(25)=es71+es12-es712
      abb124(40)=spak4k7*abb124(25)
      abb124(42)=8.0_ki*abb124(40)
      abb124(44)=abb124(18)*abb124(42)
      abb124(45)=spak3k4*abb124(25)
      abb124(46)=8.0_ki*abb124(45)
      abb124(47)=-abb124(18)*abb124(46)
      abb124(48)=abb124(31)*spbl6l5
      abb124(49)=spak2k4*spbk7k2
      abb124(50)=16.0_ki*abb124(49)
      abb124(51)=-abb124(48)*abb124(50)
      abb124(52)=8.0_ki*abb124(49)
      abb124(53)=-abb124(48)*abb124(52)
      abb124(42)=-abb124(15)*abb124(42)
      abb124(46)=abb124(15)*abb124(46)
      abb124(54)=abb124(28)*spbl6l5
      abb124(55)=abb124(54)*abb124(50)
      abb124(56)=abb124(54)*abb124(52)
      abb124(21)=-8.0_ki*spbk7k2*abb124(21)*abb124(23)
      abb124(23)=8.0_ki*abb124(25)
      abb124(57)=abb124(48)*abb124(23)
      abb124(58)=-abb124(54)*abb124(23)
      abb124(59)=-16.0_ki*abb124(22)
      abb124(22)=-8.0_ki*abb124(22)
      abb124(40)=-8.0_ki*abb124(40)*abb124(34)
      abb124(60)=8.0_ki*spbk3k2
      abb124(61)=spak4k7*spbl6l5
      abb124(62)=abb124(60)*abb124(61)
      abb124(63)=abb124(31)*abb124(62)
      abb124(61)=abb124(61)*spbk7k2
      abb124(30)=abb124(30)*spbk3k2
      abb124(30)=abb124(61)+abb124(30)
      abb124(30)=8.0_ki*abb124(30)
      abb124(61)=-abb124(31)*abb124(30)
      abb124(62)=-abb124(28)*abb124(62)
      abb124(30)=abb124(28)*abb124(30)
      abb124(64)=abb124(39)*abb124(27)
      abb124(37)=abb124(64)-abb124(37)
      abb124(37)=abb124(37)*abb124(17)
      abb124(64)=abb124(19)*abb124(27)
      abb124(33)=abb124(64)-abb124(33)
      abb124(33)=abb124(33)*abb124(14)
      abb124(29)=abb124(29)*abb124(8)
      abb124(27)=abb124(27)*abb124(16)
      abb124(27)=abb124(27)-abb124(29)
      abb124(27)=abb124(33)+abb124(37)+2.0_ki*abb124(27)
      abb124(25)=-8.0_ki*abb124(25)*abb124(27)
      abb124(29)=-16.0_ki*abb124(27)
      abb124(33)=8.0_ki*abb124(48)
      abb124(37)=-8.0_ki*abb124(54)
      abb124(48)=abb124(20)*spak1k2
      abb124(16)=-abb124(16)*abb124(48)
      abb124(20)=c1*abb124(24)*abb124(20)
      abb124(11)=abb124(20)*abb124(11)
      abb124(11)=abb124(16)+abb124(11)
      abb124(16)=-abb124(19)*abb124(48)
      abb124(19)=abb124(32)*abb124(20)
      abb124(16)=abb124(16)+abb124(19)
      abb124(14)=abb124(16)*abb124(14)
      abb124(16)=-abb124(39)*abb124(48)
      abb124(19)=abb124(36)*abb124(20)
      abb124(16)=abb124(16)+abb124(19)
      abb124(16)=abb124(16)*abb124(17)
      abb124(17)=spak1k7*abb124(26)
      abb124(18)=spal6k7*abb124(18)
      abb124(15)=-spal5k7*abb124(15)
      abb124(11)=abb124(15)+abb124(18)+abb124(17)+abb124(16)+2.0_ki*abb124(11)+&
      &abb124(14)
      abb124(11)=16.0_ki*abb124(11)
      abb124(14)=abb124(27)*spak4k7
      abb124(15)=-abb124(14)*abb124(60)
      abb124(16)=8.0_ki*abb124(45)*abb124(34)
      abb124(17)=abb124(27)*abb124(49)
      abb124(18)=16.0_ki*abb124(17)
      abb124(17)=8.0_ki*abb124(17)
      abb124(14)=spbk7k2*abb124(14)
      abb124(19)=abb124(27)*abb124(41)
      abb124(14)=abb124(19)+abb124(14)
      abb124(14)=8.0_ki*abb124(14)
      abb124(19)=abb124(23)*abb124(26)
      abb124(20)=spak4k7*abb124(19)
      abb124(24)=abb124(28)*spbl6k1
      abb124(26)=abb124(31)*spbl5k1
      abb124(24)=abb124(24)+abb124(26)
      abb124(23)=abb124(24)*abb124(23)
      abb124(26)=abb124(24)*spak4k7
      abb124(27)=abb124(26)*abb124(60)
      abb124(19)=-spak3k4*abb124(19)
      abb124(28)=-abb124(24)*abb124(50)
      abb124(31)=-abb124(24)*abb124(52)
      abb124(26)=-spbk7k2*abb124(26)
      abb124(32)=-abb124(24)*abb124(41)
      abb124(26)=abb124(26)+abb124(32)
      abb124(26)=8.0_ki*abb124(26)
      abb124(24)=8.0_ki*abb124(24)
      R2d124=0.0_ki
      rat2 = rat2 + R2d124
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='124' value='", &
          & R2d124, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd124h3
