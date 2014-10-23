module     p0_dbaru_epnebbbarg_abbrevd90h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(47), public :: abb90
   complex(ki), public :: R2d90
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
      abb90(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb90(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb90(3)=NC**(-1)
      abb90(4)=sqrt2**(-1)
      abb90(5)=es71**(-1)
      abb90(6)=spbl6k2**(-1)
      abb90(7)=spak2k7**(-1)
      abb90(8)=spak2l6**(-1)
      abb90(9)=sqrt(mB**2)
      abb90(10)=spak2l5**(-1)
      abb90(11)=spbl5k2**(-1)
      abb90(12)=1.0_ki/(es34+es567-es12-es234)
      abb90(13)=mB**2
      abb90(14)=spak2k4*spbk4k3
      abb90(15)=abb90(13)*abb90(14)
      abb90(16)=TR*gW
      abb90(16)=abb90(16)**2*CVDU*i_*spak1k4*abb90(7)*abb90(4)*abb90(2)*abb90(1)
      abb90(17)=abb90(16)*c3
      abb90(18)=abb90(17)*abb90(3)
      abb90(19)=spbk7k2*abb90(12)
      abb90(20)=abb90(18)*abb90(19)
      abb90(21)=abb90(20)*abb90(15)
      abb90(22)=abb90(18)*spak1k2
      abb90(23)=abb90(19)*spbk3k1
      abb90(24)=abb90(22)*abb90(23)
      abb90(25)=-abb90(13)*abb90(24)
      abb90(21)=abb90(21)+abb90(25)
      abb90(16)=abb90(16)*abb90(3)**2
      abb90(25)=spak1k2*abb90(16)
      abb90(26)=abb90(25)*abb90(23)
      abb90(27)=abb90(26)*abb90(13)
      abb90(16)=abb90(12)*abb90(16)
      abb90(28)=abb90(16)*spbk7k2
      abb90(29)=-abb90(28)*abb90(15)
      abb90(29)=abb90(29)+abb90(27)
      abb90(29)=c4*abb90(29)
      abb90(30)=abb90(19)*abb90(17)
      abb90(15)=-abb90(30)*abb90(15)
      abb90(31)=abb90(30)*spbk3k1
      abb90(32)=abb90(31)*spak1k2
      abb90(33)=abb90(13)*abb90(32)
      abb90(15)=abb90(15)+abb90(33)
      abb90(15)=NC*abb90(15)
      abb90(33)=abb90(17)*NC
      abb90(34)=-abb90(33)+2.0_ki*abb90(18)
      abb90(35)=spbk7k1*abb90(5)
      abb90(34)=abb90(34)*abb90(35)*spak1k2
      abb90(36)=c4*abb90(25)*abb90(35)
      abb90(34)=-abb90(36)+abb90(34)
      abb90(37)=abb90(34)*spbk3k2
      abb90(38)=-abb90(13)*abb90(37)
      abb90(15)=abb90(38)+abb90(15)+2.0_ki*abb90(21)+abb90(29)
      abb90(21)=abb90(11)*abb90(10)
      abb90(15)=abb90(21)*abb90(15)
      abb90(29)=-abb90(14)*abb90(20)
      abb90(29)=abb90(29)+abb90(24)
      abb90(38)=abb90(14)*abb90(28)
      abb90(38)=abb90(38)-abb90(26)
      abb90(38)=c4*abb90(38)
      abb90(39)=abb90(14)*abb90(30)
      abb90(39)=abb90(39)-abb90(32)
      abb90(39)=NC*abb90(39)
      abb90(15)=abb90(15)+abb90(37)+abb90(39)+2.0_ki*abb90(29)+abb90(38)
      abb90(15)=spak2l6*abb90(9)*abb90(15)
      abb90(29)=mB**3
      abb90(38)=abb90(29)*abb90(6)**2
      abb90(39)=abb90(26)*abb90(38)
      abb90(40)=abb90(38)*abb90(14)
      abb90(41)=abb90(40)*abb90(28)
      abb90(39)=abb90(39)-abb90(41)
      abb90(39)=abb90(39)*c4
      abb90(41)=abb90(40)*abb90(30)
      abb90(32)=abb90(32)*abb90(38)
      abb90(32)=abb90(41)-abb90(32)
      abb90(32)=abb90(32)*NC
      abb90(40)=abb90(40)*abb90(20)
      abb90(24)=abb90(24)*abb90(38)
      abb90(24)=abb90(40)-abb90(24)
      abb90(37)=abb90(38)*abb90(37)
      abb90(24)=-abb90(37)-abb90(32)+abb90(39)+2.0_ki*abb90(24)
      abb90(24)=abb90(24)*abb90(8)
      abb90(32)=abb90(18)*mB
      abb90(37)=abb90(14)*abb90(6)
      abb90(19)=abb90(19)*abb90(32)*abb90(37)
      abb90(38)=spak1k2*abb90(6)
      abb90(39)=abb90(18)*abb90(38)
      abb90(40)=abb90(39)*abb90(23)
      abb90(41)=abb90(40)*mB
      abb90(19)=abb90(19)-abb90(41)
      abb90(41)=abb90(6)*mB
      abb90(42)=abb90(41)*abb90(25)
      abb90(23)=abb90(42)*abb90(23)
      abb90(43)=abb90(37)*mB
      abb90(44)=abb90(43)*abb90(28)
      abb90(23)=abb90(23)-abb90(44)
      abb90(23)=abb90(23)*c4
      abb90(44)=abb90(43)*abb90(30)
      abb90(31)=abb90(31)*abb90(38)
      abb90(45)=abb90(31)*mB
      abb90(44)=abb90(44)-abb90(45)
      abb90(44)=abb90(44)*NC
      abb90(38)=abb90(38)*abb90(17)
      abb90(45)=abb90(38)*NC
      abb90(45)=-abb90(45)+2.0_ki*abb90(39)
      abb90(46)=-abb90(45)*abb90(35)*mB
      abb90(41)=abb90(36)*abb90(41)
      abb90(41)=abb90(41)+abb90(46)
      abb90(46)=abb90(41)*spbk3k2
      abb90(19)=abb90(24)-abb90(46)-2.0_ki*abb90(19)-abb90(23)+abb90(44)
      abb90(23)=spak2l5*spbl5k2*abb90(19)
      abb90(24)=abb90(37)*abb90(29)
      abb90(44)=abb90(24)*abb90(30)
      abb90(46)=abb90(31)*abb90(29)
      abb90(44)=abb90(44)-abb90(46)
      abb90(44)=abb90(44)*NC
      abb90(46)=abb90(24)*abb90(28)
      abb90(47)=abb90(29)*abb90(6)
      abb90(26)=abb90(47)*abb90(26)
      abb90(26)=abb90(46)-abb90(26)
      abb90(26)=abb90(26)*c4
      abb90(24)=abb90(24)*abb90(20)
      abb90(46)=abb90(40)*abb90(29)
      abb90(24)=abb90(24)-abb90(46)
      abb90(24)=-abb90(26)-abb90(44)+2.0_ki*abb90(24)
      abb90(26)=spbk3k1*abb90(12)
      abb90(42)=abb90(42)*abb90(26)
      abb90(43)=abb90(16)*abb90(43)
      abb90(42)=abb90(42)-abb90(43)
      abb90(42)=abb90(42)*c4
      abb90(43)=abb90(26)*mB
      abb90(38)=abb90(43)*abb90(38)
      abb90(44)=abb90(37)*abb90(12)
      abb90(17)=abb90(44)*abb90(17)*mB
      abb90(17)=abb90(38)-abb90(17)
      abb90(17)=abb90(17)*NC
      abb90(38)=abb90(43)*abb90(39)
      abb90(32)=abb90(44)*abb90(32)
      abb90(32)=abb90(38)-abb90(32)
      abb90(17)=-abb90(17)-abb90(42)+2.0_ki*abb90(32)
      abb90(32)=abb90(17)*spbk7l6
      abb90(38)=abb90(41)*spbl6k3
      abb90(32)=abb90(32)+abb90(38)
      abb90(38)=spbl5k2*abb90(32)
      abb90(39)=abb90(14)*abb90(12)
      abb90(18)=abb90(18)*abb90(39)
      abb90(22)=-abb90(26)*abb90(22)
      abb90(18)=abb90(18)+abb90(22)
      abb90(14)=-abb90(14)*abb90(16)
      abb90(16)=abb90(25)*abb90(26)
      abb90(14)=abb90(14)+abb90(16)
      abb90(14)=c4*abb90(14)
      abb90(16)=spak1k2*abb90(26)
      abb90(16)=-abb90(39)+abb90(16)
      abb90(16)=abb90(16)*abb90(33)
      abb90(14)=abb90(16)+2.0_ki*abb90(18)+abb90(14)
      abb90(14)=spbk7l5*abb90(14)
      abb90(16)=spbl5k3*abb90(34)
      abb90(14)=abb90(16)+abb90(14)
      abb90(14)=abb90(9)*abb90(14)
      abb90(14)=abb90(38)+abb90(14)
      abb90(14)=spal5l6*abb90(14)
      abb90(16)=abb90(13)*abb90(37)
      abb90(18)=abb90(20)*abb90(16)
      abb90(20)=-abb90(13)*abb90(40)
      abb90(18)=abb90(18)+abb90(20)
      abb90(20)=-abb90(28)*abb90(16)
      abb90(22)=abb90(6)*abb90(27)
      abb90(20)=abb90(20)+abb90(22)
      abb90(20)=c4*abb90(20)
      abb90(16)=-abb90(30)*abb90(16)
      abb90(22)=abb90(13)*abb90(31)
      abb90(16)=abb90(16)+abb90(22)
      abb90(16)=NC*abb90(16)
      abb90(16)=abb90(16)+2.0_ki*abb90(18)+abb90(20)
      abb90(16)=abb90(9)*abb90(16)
      abb90(18)=abb90(45)*abb90(35)
      abb90(20)=abb90(29)*abb90(18)
      abb90(22)=abb90(47)*abb90(36)
      abb90(20)=abb90(20)-abb90(22)
      abb90(22)=abb90(6)*abb90(36)
      abb90(18)=abb90(22)-abb90(18)
      abb90(13)=abb90(9)*abb90(13)*abb90(18)
      abb90(13)=abb90(13)-abb90(20)
      abb90(13)=spbk3k2*abb90(13)
      abb90(13)=abb90(23)+abb90(15)+abb90(13)+abb90(16)+abb90(14)+abb90(24)
      abb90(13)=8.0_ki*abb90(13)
      abb90(14)=-spbk3k2*abb90(20)
      abb90(14)=abb90(14)+abb90(24)
      abb90(14)=abb90(14)*abb90(21)
      abb90(14)=abb90(14)+abb90(19)
      abb90(14)=16.0_ki*abb90(14)
      abb90(15)=-8.0_ki*abb90(32)
      abb90(16)=-spbk7l5*abb90(17)
      abb90(17)=-spbl5k3*abb90(41)
      abb90(16)=abb90(16)+abb90(17)
      abb90(16)=8.0_ki*abb90(16)
      R2d90=0.0_ki
      rat2 = rat2 + R2d90
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='90' value='", &
          & R2d90, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd90h0
