module     p0_dbaru_epnebbbarg_abbrevd73h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(52), public :: abb73
   complex(ki), public :: R2d73
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
      abb73(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb73(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb73(3)=sqrt(mB**2)
      abb73(4)=NC**(-1)
      abb73(5)=sqrt2**(-1)
      abb73(6)=spak2k7**(-1)
      abb73(7)=spak2l6**(-1)
      abb73(8)=spbl6k2**(-1)
      abb73(9)=abb73(4)**2
      abb73(9)=abb73(9)+1.0_ki
      abb73(10)=TR*gW
      abb73(10)=CVDU*i_*spbk7l5*abb73(5)*abb73(2)*abb73(1)*abb73(10)**2
      abb73(11)=abb73(10)*abb73(6)
      abb73(12)=abb73(11)*abb73(9)
      abb73(13)=abb73(3)*c2
      abb73(14)=abb73(13)*spak1k2
      abb73(15)=abb73(14)*abb73(12)
      abb73(16)=2.0_ki*c1
      abb73(16)=abb73(16)*abb73(4)
      abb73(17)=abb73(11)*abb73(16)
      abb73(18)=spak1k2*abb73(3)
      abb73(19)=abb73(18)*abb73(17)
      abb73(15)=abb73(15)-abb73(19)
      abb73(19)=-spbk3k2*spak2k4*abb73(15)
      abb73(20)=spbl6k2**2
      abb73(21)=abb73(20)*abb73(19)
      abb73(22)=abb73(15)*spbl6k2
      abb73(23)=spak3k4*spbk3k2
      abb73(24)=spbl6k3*abb73(23)*abb73(22)
      abb73(21)=abb73(21)+abb73(24)
      abb73(21)=spak2l6*abb73(21)
      abb73(19)=spbl6k2*abb73(19)
      abb73(24)=spbl5k2*spak2l5
      abb73(24)=-abb73(24)-es12+es712-es71
      abb73(25)=-abb73(19)*abb73(24)
      abb73(9)=abb73(10)*abb73(9)
      abb73(14)=abb73(9)*abb73(14)
      abb73(10)=abb73(10)*abb73(16)
      abb73(18)=-abb73(18)*abb73(10)
      abb73(14)=abb73(14)+abb73(18)
      abb73(18)=spbk7k3*spbl6k2
      abb73(14)=abb73(14)*abb73(23)*abb73(18)
      abb73(26)=spbl5k3*spak2l5
      abb73(27)=abb73(23)*abb73(26)
      abb73(28)=abb73(22)*abb73(27)
      abb73(14)=abb73(21)+abb73(14)+abb73(28)+abb73(25)
      abb73(14)=8.0_ki*abb73(14)
      abb73(21)=abb73(15)*spbl6k3
      abb73(25)=-abb73(23)*abb73(21)
      abb73(25)=-abb73(19)+abb73(25)
      abb73(25)=16.0_ki*abb73(25)
      abb73(28)=mB*abb73(7)
      abb73(29)=abb73(10)*abb73(28)
      abb73(30)=abb73(28)*c2
      abb73(31)=abb73(9)*abb73(30)
      abb73(31)=abb73(29)-abb73(31)
      abb73(32)=abb73(31)*spbk7k3
      abb73(33)=abb73(32)*spak1l6
      abb73(34)=abb73(12)*abb73(30)
      abb73(35)=abb73(17)*abb73(28)
      abb73(34)=abb73(34)-abb73(35)
      abb73(36)=abb73(34)*spak1l6
      abb73(37)=-abb73(26)*abb73(36)
      abb73(37)=abb73(37)+abb73(33)
      abb73(37)=spak3k4*abb73(37)
      abb73(35)=abb73(35)*spak2k4
      abb73(30)=abb73(30)*spak2k4
      abb73(38)=abb73(30)*abb73(12)
      abb73(35)=abb73(35)-abb73(38)
      abb73(38)=abb73(35)*spak1l6
      abb73(39)=abb73(24)*abb73(38)
      abb73(40)=-abb73(8)*abb73(7)*mB**2
      abb73(40)=1.0_ki+abb73(40)
      abb73(40)=abb73(15)*abb73(40)
      abb73(41)=-abb73(23)*abb73(40)
      abb73(42)=spak2k4*abb73(3)
      abb73(43)=abb73(42)*abb73(17)
      abb73(44)=abb73(13)*spak2k4
      abb73(45)=abb73(44)*abb73(12)
      abb73(43)=abb73(43)-abb73(45)
      abb73(45)=abb73(43)*spbl6k2
      abb73(46)=-spak1l6*abb73(45)
      abb73(17)=abb73(17)*abb73(3)
      abb73(47)=abb73(12)*abb73(13)
      abb73(17)=abb73(17)-abb73(47)
      abb73(48)=abb73(17)*spbl6k2
      abb73(49)=abb73(48)*spak2l6
      abb73(50)=spak1k4*abb73(49)
      abb73(37)=abb73(50)+abb73(46)+abb73(39)+abb73(41)+abb73(37)
      abb73(37)=spbl6k3*abb73(37)
      abb73(41)=abb73(48)*abb73(26)
      abb73(46)=abb73(10)*abb73(3)
      abb73(13)=abb73(9)*abb73(13)
      abb73(13)=abb73(46)-abb73(13)
      abb73(46)=abb73(13)*abb73(18)
      abb73(41)=abb73(41)+abb73(46)
      abb73(46)=spak1k4*abb73(41)
      abb73(37)=abb73(46)-abb73(19)+abb73(37)
      abb73(37)=16.0_ki*abb73(37)
      abb73(46)=abb73(34)*abb73(26)
      abb73(46)=abb73(32)-abb73(46)
      abb73(48)=abb73(46)*spak1k4
      abb73(50)=32.0_ki*abb73(48)
      abb73(51)=abb73(43)*spbl6k3
      abb73(52)=spbl6k2*abb73(51)
      abb73(30)=abb73(30)*abb73(9)
      abb73(29)=spak2k4*abb73(29)
      abb73(29)=abb73(30)-abb73(29)
      abb73(18)=-abb73(29)*abb73(18)
      abb73(18)=abb73(18)+abb73(52)
      abb73(18)=spak1l6*abb73(18)
      abb73(30)=-spbl6k3*abb73(49)
      abb73(30)=abb73(30)-abb73(41)
      abb73(30)=spak1k4*abb73(30)
      abb73(41)=abb73(28)*abb73(3)
      abb73(49)=abb73(3)**2
      abb73(52)=abb73(49)*abb73(7)
      abb73(41)=abb73(41)-abb73(52)
      abb73(11)=abb73(16)*abb73(11)*abb73(41)
      abb73(16)=abb73(47)*abb73(28)
      abb73(12)=c2*abb73(52)*abb73(12)
      abb73(11)=-abb73(11)+abb73(16)-abb73(12)
      abb73(11)=abb73(11)*spak1k2*mB
      abb73(12)=spbk3k2*spak2k4*abb73(11)
      abb73(16)=spbl6k2*abb73(26)*abb73(38)
      abb73(12)=abb73(16)+abb73(12)+2.0_ki*abb73(19)+abb73(30)+abb73(18)
      abb73(12)=8.0_ki*abb73(12)
      abb73(16)=-16.0_ki*abb73(48)
      abb73(18)=8.0_ki*abb73(15)
      abb73(18)=-spak3k4*spbl6k3**2*abb73(18)
      abb73(19)=abb73(15)*spbk3k2
      abb73(28)=16.0_ki*abb73(19)
      abb73(19)=-8.0_ki*abb73(19)
      abb73(30)=-abb73(22)*abb73(24)
      abb73(15)=spak2l6*abb73(15)*abb73(20)
      abb73(15)=abb73(15)+abb73(30)
      abb73(15)=8.0_ki*abb73(15)
      abb73(20)=16.0_ki*abb73(22)
      abb73(30)=-spbk7l6*spak1l6*abb73(31)
      abb73(38)=spbl6l5*spak2l5
      abb73(41)=-abb73(36)*abb73(38)
      abb73(11)=abb73(41)+abb73(30)-abb73(22)-abb73(11)
      abb73(11)=16.0_ki*abb73(11)
      abb73(22)=spak1k2*abb73(32)
      abb73(30)=-spak1k2*abb73(34)
      abb73(32)=abb73(30)*abb73(26)
      abb73(21)=abb73(22)+abb73(32)-abb73(21)
      abb73(22)=-16.0_ki*abb73(21)
      abb73(21)=8.0_ki*abb73(21)
      abb73(32)=-spak3k4*abb73(40)*spbk3k2**2
      abb73(39)=spbk3k2*abb73(39)
      abb73(33)=abb73(23)*abb73(33)
      abb73(40)=-abb73(36)*abb73(27)
      abb73(32)=abb73(40)+abb73(33)+abb73(39)+abb73(32)
      abb73(32)=8.0_ki*abb73(32)
      abb73(33)=8.0_ki*abb73(24)
      abb73(36)=abb73(36)*abb73(33)
      abb73(30)=8.0_ki*abb73(23)*abb73(49)*abb73(30)
      abb73(39)=-abb73(43)*abb73(24)*spbk3k2
      abb73(23)=-spbk7k3*abb73(13)*abb73(23)
      abb73(27)=-abb73(17)*abb73(27)
      abb73(23)=abb73(23)+abb73(27)+abb73(39)
      abb73(23)=8.0_ki*abb73(23)
      abb73(27)=abb73(17)*abb73(33)
      abb73(9)=abb73(9)*abb73(44)
      abb73(10)=-abb73(42)*abb73(10)
      abb73(9)=abb73(9)+abb73(10)
      abb73(9)=spbl6k2*abb73(9)
      abb73(10)=spak3k4*spbl6k3
      abb73(33)=-abb73(13)*abb73(10)
      abb73(9)=abb73(9)+abb73(33)
      abb73(9)=spbk7k3*abb73(9)
      abb73(10)=-abb73(17)*abb73(10)
      abb73(10)=-abb73(45)+abb73(10)
      abb73(10)=abb73(10)*abb73(26)
      abb73(33)=-abb73(51)*abb73(24)
      abb73(9)=abb73(9)+abb73(10)+abb73(33)
      abb73(9)=8.0_ki*abb73(9)
      abb73(10)=spbk7k3*abb73(29)
      abb73(26)=-abb73(35)*abb73(26)
      abb73(10)=abb73(10)+abb73(26)
      abb73(10)=16.0_ki*abb73(10)
      abb73(13)=spbk7l6*abb73(13)
      abb73(17)=-abb73(17)*abb73(38)
      abb73(13)=abb73(13)+abb73(17)
      abb73(13)=8.0_ki*abb73(13)
      abb73(17)=-8.0_ki*abb73(31)
      abb73(26)=8.0_ki*spak2l5*abb73(34)
      abb73(29)=-spak3k4*abb73(46)
      abb73(24)=-abb73(35)*abb73(24)
      abb73(24)=abb73(24)+abb73(29)
      abb73(24)=8.0_ki*abb73(24)
      R2d73=0.0_ki
      rat2 = rat2 + R2d73
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='73' value='", &
          & R2d73, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd73h3
