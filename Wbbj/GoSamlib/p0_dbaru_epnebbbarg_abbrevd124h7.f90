module     p0_dbaru_epnebbbarg_abbrevd124h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
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
      abb124(6)=spak2l5**(-1)
      abb124(7)=spbl5k2**(-1)
      abb124(8)=spbk7k2**(-1)
      abb124(9)=spak2l6**(-1)
      abb124(10)=spbl6k2**(-1)
      abb124(11)=c1*abb124(3)
      abb124(12)=c4*abb124(3)**2
      abb124(11)=abb124(11)-abb124(12)
      abb124(12)=TR*gW
      abb124(12)=abb124(12)**2*CVDU*i_*spak1k2*abb124(5)*abb124(4)*abb124(2)*ab&
      &b124(1)
      abb124(13)=-abb124(12)*abb124(11)
      abb124(14)=mB**3
      abb124(15)=-abb124(14)*abb124(13)*abb124(8)
      abb124(16)=abb124(9)**2
      abb124(17)=-abb124(16)*abb124(15)
      abb124(18)=spbl5k2*abb124(10)
      abb124(19)=abb124(17)*abb124(18)*spak2k7
      abb124(20)=abb124(6)**2
      abb124(21)=-abb124(20)*abb124(15)
      abb124(22)=spbl6k2*abb124(7)
      abb124(23)=abb124(22)*spak2k7
      abb124(24)=abb124(21)*abb124(23)
      abb124(25)=abb124(9)*abb124(6)
      abb124(15)=-abb124(15)*abb124(25)
      abb124(26)=2.0_ki*spak2k7
      abb124(26)=abb124(15)*abb124(26)
      abb124(19)=abb124(26)+abb124(19)+abb124(24)
      abb124(24)=spbk3k2**2
      abb124(26)=abb124(24)*abb124(19)
      abb124(27)=-abb124(8)*abb124(13)*mB
      abb124(28)=-abb124(9)*abb124(27)
      abb124(29)=abb124(28)*abb124(24)
      abb124(30)=-spal6k7*abb124(29)
      abb124(27)=-abb124(6)*abb124(27)
      abb124(24)=abb124(27)*abb124(24)
      abb124(31)=spal5k7*abb124(24)
      abb124(30)=abb124(31)+abb124(30)
      abb124(30)=spbl6l5*abb124(30)
      abb124(24)=-spbl6k1*abb124(24)
      abb124(29)=-spbl5k1*abb124(29)
      abb124(24)=abb124(24)+abb124(29)
      abb124(24)=spak1k7*abb124(24)
      abb124(24)=abb124(24)+abb124(30)+abb124(26)
      abb124(24)=8.0_ki*spak3k4*abb124(24)
      abb124(11)=abb124(11)*abb124(12)*spbk3k2*abb124(8)
      abb124(12)=abb124(16)*abb124(14)
      abb124(16)=abb124(12)*abb124(11)
      abb124(26)=abb124(16)*abb124(18)
      abb124(25)=abb124(14)*abb124(25)
      abb124(29)=abb124(25)*abb124(11)
      abb124(26)=abb124(26)+2.0_ki*abb124(29)
      abb124(14)=abb124(20)*abb124(14)
      abb124(20)=abb124(14)*abb124(11)
      abb124(30)=abb124(20)*abb124(22)
      abb124(30)=abb124(30)+abb124(26)
      abb124(31)=abb124(30)*spak2k4
      abb124(11)=-mB*abb124(11)
      abb124(32)=-abb124(6)*abb124(11)
      abb124(33)=abb124(32)*spbl6k1
      abb124(11)=-abb124(9)*abb124(11)
      abb124(34)=abb124(11)*spbl5k1
      abb124(33)=abb124(33)+abb124(34)
      abb124(34)=abb124(33)*spak1k4
      abb124(35)=abb124(11)*spbl6l5
      abb124(36)=abb124(35)*spak4l6
      abb124(37)=abb124(32)*spbl6l5
      abb124(38)=abb124(37)*spak4l5
      abb124(31)=-abb124(31)-abb124(36)+abb124(38)+abb124(34)
      abb124(34)=16.0_ki*abb124(31)
      abb124(31)=8.0_ki*abb124(31)
      abb124(17)=abb124(17)*abb124(18)
      abb124(21)=abb124(21)*abb124(22)
      abb124(15)=2.0_ki*abb124(15)+abb124(17)+abb124(21)
      abb124(17)=spak2k4*spbk7k3*abb124(15)
      abb124(21)=abb124(28)*spbk7k3
      abb124(36)=abb124(21)*spbl5k1
      abb124(38)=abb124(27)*spbk7k3
      abb124(39)=abb124(38)*spbl6k1
      abb124(36)=abb124(36)+abb124(39)
      abb124(39)=-spak1k4*abb124(36)
      abb124(21)=abb124(21)*spbl6l5
      abb124(40)=spak4l6*abb124(21)
      abb124(38)=abb124(38)*spbl6l5
      abb124(41)=-spak4l5*abb124(38)
      abb124(17)=abb124(41)+abb124(40)+abb124(17)+abb124(39)
      abb124(17)=16.0_ki*abb124(17)
      abb124(39)=8.0_ki*spak4k7
      abb124(40)=-abb124(35)*abb124(39)
      abb124(13)=abb124(13)*spak4k7
      abb124(41)=abb124(13)*mB
      abb124(42)=abb124(9)*abb124(41)
      abb124(43)=-spbl6l5*abb124(42)
      abb124(44)=spak3k4*abb124(35)
      abb124(43)=abb124(43)+abb124(44)
      abb124(43)=8.0_ki*abb124(43)
      abb124(44)=abb124(37)*abb124(39)
      abb124(41)=abb124(6)*abb124(41)
      abb124(45)=spbl6l5*abb124(41)
      abb124(46)=-spak3k4*abb124(37)
      abb124(45)=abb124(45)+abb124(46)
      abb124(45)=8.0_ki*abb124(45)
      abb124(15)=-16.0_ki*abb124(15)
      abb124(46)=8.0_ki*spbl6l5
      abb124(47)=abb124(28)*abb124(46)
      abb124(46)=-abb124(27)*abb124(46)
      abb124(26)=-spak2k7*abb124(26)
      abb124(48)=abb124(33)*spak1k7
      abb124(23)=abb124(23)*abb124(20)
      abb124(35)=abb124(35)*spal6k7
      abb124(37)=abb124(37)*spal5k7
      abb124(23)=-abb124(37)+abb124(48)-abb124(23)+abb124(35)+abb124(26)
      abb124(26)=-16.0_ki*abb124(23)
      abb124(23)=-8.0_ki*abb124(23)
      abb124(19)=-spbk7k3*abb124(19)
      abb124(35)=spak1k7*abb124(36)
      abb124(21)=spal6k7*abb124(21)
      abb124(36)=-spal5k7*abb124(38)
      abb124(19)=abb124(36)+abb124(21)+abb124(35)+abb124(19)
      abb124(19)=16.0_ki*abb124(19)
      abb124(21)=abb124(30)*abb124(39)
      abb124(25)=abb124(25)*abb124(13)
      abb124(29)=-spak3k4*abb124(29)
      abb124(25)=abb124(25)+abb124(29)
      abb124(14)=abb124(14)*abb124(13)
      abb124(20)=-spak3k4*abb124(20)
      abb124(14)=abb124(14)+abb124(20)
      abb124(14)=abb124(14)*abb124(22)
      abb124(12)=abb124(12)*abb124(13)
      abb124(13)=-spak3k4*abb124(16)
      abb124(12)=abb124(12)+abb124(13)
      abb124(12)=abb124(12)*abb124(18)
      abb124(12)=abb124(12)+2.0_ki*abb124(25)+abb124(14)
      abb124(12)=8.0_ki*abb124(12)
      abb124(13)=-abb124(33)*abb124(39)
      abb124(14)=spak3k4*abb124(32)
      abb124(14)=-abb124(41)+abb124(14)
      abb124(14)=spbl6k1*abb124(14)
      abb124(11)=spak3k4*abb124(11)
      abb124(11)=-abb124(42)+abb124(11)
      abb124(11)=spbl5k1*abb124(11)
      abb124(11)=abb124(14)+abb124(11)
      abb124(11)=8.0_ki*abb124(11)
      abb124(14)=spbl6k1*abb124(27)
      abb124(16)=spbl5k1*abb124(28)
      abb124(14)=abb124(14)+abb124(16)
      abb124(14)=8.0_ki*abb124(14)
      R2d124=0.0_ki
      rat2 = rat2 + R2d124
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='124' value='", &
          & R2d124, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd124h7
