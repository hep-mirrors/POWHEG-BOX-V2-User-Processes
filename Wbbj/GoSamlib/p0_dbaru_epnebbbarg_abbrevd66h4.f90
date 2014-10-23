module     p0_dbaru_epnebbbarg_abbrevd66h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(56), public :: abb66
   complex(ki), public :: R2d66
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
      abb66(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb66(2)=NC**(-1)
      abb66(3)=sqrt2**(-1)
      abb66(4)=es56**(-1)
      abb66(5)=spbl5k2**(-1)
      abb66(6)=spbk7k2**(-1)
      abb66(7)=spbl6k2**(-1)
      abb66(8)=c3*abb66(2)
      abb66(9)=c4*abb66(2)**2
      abb66(10)=-abb66(8)+abb66(9)+c2
      abb66(11)=spbk3k2**2
      abb66(12)=TR*gW
      abb66(12)=abb66(12)**2*CVDU*i_*mB*abb66(6)*abb66(4)*abb66(3)*abb66(1)
      abb66(13)=abb66(12)*abb66(7)
      abb66(14)=abb66(11)*abb66(13)
      abb66(15)=abb66(14)*abb66(10)
      abb66(16)=spbl5k2*spal5k7
      abb66(17)=-abb66(15)*abb66(16)
      abb66(18)=abb66(10)*abb66(12)
      abb66(19)=-abb66(18)*abb66(11)
      abb66(20)=spal6k7*abb66(19)
      abb66(17)=abb66(17)+abb66(20)
      abb66(17)=spak1l5*abb66(17)
      abb66(20)=abb66(12)*abb66(5)
      abb66(11)=abb66(11)*abb66(20)
      abb66(21)=-spak1l6*abb66(10)*abb66(11)
      abb66(22)=spbl6k2*spal6k7
      abb66(23)=abb66(22)*abb66(21)
      abb66(19)=spal5k7*spak1l6*abb66(19)
      abb66(17)=abb66(23)+abb66(19)+abb66(17)
      abb66(19)=8.0_ki*spak3k4
      abb66(17)=abb66(17)*abb66(19)
      abb66(15)=abb66(15)*spak1l5
      abb66(15)=abb66(15)-abb66(21)
      abb66(15)=abb66(15)*spak3k4
      abb66(15)=16.0_ki*abb66(15)
      abb66(21)=spak1k7*abb66(10)
      abb66(11)=-abb66(11)*abb66(21)
      abb66(23)=16.0_ki*spak3k4
      abb66(24)=abb66(11)*abb66(23)
      abb66(25)=c2*spak1k4
      abb66(9)=abb66(9)*spak1k4
      abb66(8)=abb66(8)*spak1k4
      abb66(26)=-abb66(8)+abb66(25)+abb66(9)
      abb66(12)=abb66(12)*spbk3k2
      abb66(27)=abb66(12)*abb66(5)
      abb66(28)=-abb66(27)*abb66(26)
      abb66(29)=abb66(28)*abb66(22)
      abb66(30)=-abb66(10)*abb66(12)
      abb66(31)=spak1k4*abb66(30)
      abb66(32)=spal5k7*abb66(31)
      abb66(29)=abb66(32)+abb66(29)
      abb66(29)=16.0_ki*abb66(29)
      abb66(11)=abb66(11)*abb66(19)
      abb66(32)=-abb66(20)*abb66(26)
      abb66(33)=abb66(32)*spbk2k1
      abb66(34)=spbl5k3*abb66(33)
      abb66(35)=spbl5k1*abb66(28)
      abb66(34)=abb66(34)+abb66(35)
      abb66(34)=2.0_ki*abb66(34)
      abb66(34)=spak1l5*abb66(34)
      abb66(35)=abb66(27)*abb66(10)
      abb66(36)=abb66(35)*spak3k4
      abb66(37)=abb66(36)-abb66(33)
      abb66(38)=-spak1l6*abb66(37)
      abb66(39)=abb66(13)*abb66(26)
      abb66(40)=abb66(39)*spbk2k1
      abb66(12)=abb66(12)*abb66(7)
      abb66(41)=abb66(12)*abb66(10)
      abb66(42)=abb66(41)*spak3k4
      abb66(43)=-abb66(42)+abb66(40)
      abb66(43)=spak1l5*abb66(43)
      abb66(38)=abb66(38)+abb66(43)
      abb66(38)=spbl6k3*abb66(38)
      abb66(43)=abb66(28)*spak1l6
      abb66(26)=-abb66(12)*abb66(26)
      abb66(44)=abb66(26)*spak1l5
      abb66(43)=abb66(43)-abb66(44)
      abb66(44)=spbl6k1*abb66(43)
      abb66(45)=abb66(20)*abb66(10)
      abb66(46)=spbk4k3*spbk2k1
      abb66(47)=abb66(46)*spak1k4**2
      abb66(48)=abb66(45)*abb66(47)
      abb66(34)=abb66(48)+abb66(44)+abb66(38)+abb66(34)
      abb66(34)=8.0_ki*abb66(34)
      abb66(38)=16.0_ki*abb66(28)
      abb66(44)=32.0_ki*abb66(28)
      abb66(28)=-8.0_ki*abb66(28)
      abb66(8)=-abb66(25)+abb66(8)-abb66(9)
      abb66(8)=spak1k7*abb66(8)
      abb66(9)=-abb66(20)*abb66(8)
      abb66(25)=abb66(9)*spbk2k1
      abb66(48)=-abb66(27)*abb66(21)
      abb66(49)=abb66(48)*spak3k4
      abb66(25)=abb66(49)-abb66(25)
      abb66(49)=-spbl6k3*abb66(25)
      abb66(27)=abb66(8)*abb66(27)
      abb66(50)=-spbl6k1*abb66(27)
      abb66(49)=abb66(49)+abb66(50)
      abb66(49)=8.0_ki*abb66(49)
      abb66(14)=-abb66(14)*abb66(21)
      abb66(23)=abb66(14)*abb66(23)
      abb66(50)=abb66(26)*abb66(16)
      abb66(31)=spal6k7*abb66(31)
      abb66(31)=abb66(31)+abb66(50)
      abb66(31)=16.0_ki*abb66(31)
      abb66(14)=abb66(14)*abb66(19)
      abb66(19)=spbl6k3*abb66(40)
      abb66(50)=spbl6k1*abb66(26)
      abb66(19)=abb66(19)-abb66(50)
      abb66(19)=-2.0_ki*abb66(19)
      abb66(19)=spak1l6*abb66(19)
      abb66(33)=-abb66(36)-abb66(33)
      abb66(33)=spak1l6*abb66(33)
      abb66(36)=abb66(42)+abb66(40)
      abb66(40)=-spak1l5*abb66(36)
      abb66(33)=abb66(33)+abb66(40)
      abb66(33)=spbl5k3*abb66(33)
      abb66(40)=-spbl5k1*abb66(43)
      abb66(10)=abb66(13)*abb66(10)
      abb66(42)=abb66(10)*abb66(47)
      abb66(19)=abb66(42)+abb66(40)+abb66(33)+abb66(19)
      abb66(19)=8.0_ki*abb66(19)
      abb66(33)=16.0_ki*abb66(26)
      abb66(40)=32.0_ki*abb66(26)
      abb66(26)=-8.0_ki*abb66(26)
      abb66(42)=-abb66(13)*abb66(8)
      abb66(43)=abb66(42)*spbk2k1
      abb66(47)=-abb66(12)*abb66(21)
      abb66(50)=abb66(47)*spak3k4
      abb66(43)=abb66(50)-abb66(43)
      abb66(50)=-spbl6k3*abb66(43)
      abb66(25)=-spbl5k3*abb66(25)
      abb66(8)=abb66(8)*abb66(12)
      abb66(12)=-spbl6k1*abb66(8)
      abb66(27)=-spbl5k1*abb66(27)
      abb66(12)=abb66(27)+abb66(12)+abb66(50)+abb66(25)
      abb66(12)=8.0_ki*abb66(12)
      abb66(25)=-spbl5k3*abb66(43)
      abb66(8)=-spbl5k1*abb66(8)
      abb66(8)=abb66(25)+abb66(8)
      abb66(8)=8.0_ki*abb66(8)
      abb66(25)=spbk4k2*abb66(32)
      abb66(27)=spak1l5*abb66(18)
      abb66(43)=spbl6k2*spak1l6*abb66(45)
      abb66(35)=-spak1k3*abb66(35)
      abb66(25)=abb66(35)+abb66(25)+abb66(27)+abb66(43)
      abb66(25)=8.0_ki*abb66(25)
      abb66(20)=abb66(21)*abb66(20)
      abb66(27)=8.0_ki*abb66(20)
      abb66(35)=-spbl6k2*abb66(27)
      abb66(43)=-spbk4k2*abb66(39)
      abb66(50)=spak1l6*abb66(18)
      abb66(51)=spbl5k2*spak1l5*abb66(10)
      abb66(41)=-spak1k3*abb66(41)
      abb66(41)=abb66(41)+abb66(43)+abb66(50)+abb66(51)
      abb66(41)=8.0_ki*abb66(41)
      abb66(43)=-16.0_ki*spak1k7*abb66(18)
      abb66(13)=abb66(21)*abb66(13)
      abb66(21)=8.0_ki*abb66(13)
      abb66(50)=-spbl5k2*abb66(21)
      abb66(46)=8.0_ki*abb66(46)
      abb66(51)=-abb66(9)*abb66(46)
      abb66(52)=16.0_ki*abb66(48)
      abb66(48)=8.0_ki*abb66(48)
      abb66(46)=-abb66(42)*abb66(46)
      abb66(53)=16.0_ki*abb66(47)
      abb66(47)=8.0_ki*abb66(47)
      abb66(27)=spbk4k2*abb66(27)
      abb66(21)=spbk4k2*abb66(21)
      abb66(30)=spak3k4*abb66(30)
      abb66(54)=-spbk2k1*spak1k4*abb66(18)
      abb66(30)=abb66(30)+abb66(54)
      abb66(54)=spal5k7*abb66(30)
      abb66(55)=-abb66(37)*abb66(22)
      abb66(54)=abb66(54)+abb66(55)
      abb66(54)=8.0_ki*abb66(54)
      abb66(37)=-8.0_ki*abb66(37)
      abb66(30)=spal6k7*abb66(30)
      abb66(55)=-abb66(36)*abb66(16)
      abb66(30)=abb66(30)+abb66(55)
      abb66(30)=8.0_ki*abb66(30)
      abb66(36)=-8.0_ki*abb66(36)
      abb66(55)=8.0_ki*spbk2k1
      abb66(55)=abb66(55)*spbk3k1
      abb66(9)=-abb66(9)*abb66(55)
      abb66(56)=16.0_ki*spbk3k1
      abb66(32)=-abb66(32)*abb66(56)
      abb66(42)=-abb66(42)*abb66(55)
      abb66(39)=abb66(39)*abb66(56)
      abb66(20)=spbk2k1*abb66(20)
      abb66(55)=spal5k7*abb66(18)
      abb66(22)=abb66(45)*abb66(22)
      abb66(20)=abb66(22)+abb66(20)+abb66(55)
      abb66(20)=8.0_ki*abb66(20)
      abb66(22)=-8.0_ki*abb66(45)
      abb66(13)=spbk2k1*abb66(13)
      abb66(18)=spal6k7*abb66(18)
      abb66(16)=abb66(10)*abb66(16)
      abb66(13)=abb66(16)+abb66(13)+abb66(18)
      abb66(13)=8.0_ki*abb66(13)
      abb66(10)=-8.0_ki*abb66(10)
      R2d66=0.0_ki
      rat2 = rat2 + R2d66
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='66' value='", &
          & R2d66, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd66h4
