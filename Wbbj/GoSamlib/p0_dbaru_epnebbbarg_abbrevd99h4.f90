module     p0_dbaru_epnebbbarg_abbrevd99h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(56), public :: abb99
   complex(ki), public :: R2d99
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
      abb99(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb99(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb99(3)=NC**(-1)
      abb99(4)=sqrt2**(-1)
      abb99(5)=es234**(-1)
      abb99(6)=spbl6k2**(-1)
      abb99(7)=spbk7k2**(-1)
      abb99(8)=spak2l5**(-1)
      abb99(9)=spbl5k2**(-1)
      abb99(10)=sqrt(mB**2)
      abb99(11)=TR*gW
      abb99(11)=abb99(11)**2*CVDU*i_*spal5k7*abb99(5)*abb99(4)*abb99(2)*abb99(1)
      abb99(12)=abb99(11)*abb99(3)
      abb99(13)=abb99(6)*mB
      abb99(14)=abb99(13)*abb99(12)
      abb99(15)=spak1l5*abb99(7)
      abb99(16)=abb99(15)*spbl5k2
      abb99(17)=abb99(14)*abb99(16)
      abb99(18)=spbk3k2**2
      abb99(19)=abb99(17)*abb99(18)
      abb99(20)=abb99(14)*spak1k7
      abb99(21)=abb99(20)*abb99(18)
      abb99(19)=abb99(19)+abb99(21)
      abb99(22)=2.0_ki*c1
      abb99(19)=abb99(19)*abb99(22)
      abb99(23)=abb99(3)**2
      abb99(24)=abb99(23)*abb99(11)
      abb99(25)=abb99(18)*abb99(24)
      abb99(26)=abb99(18)*abb99(11)
      abb99(25)=abb99(25)+abb99(26)
      abb99(27)=abb99(13)*c2
      abb99(28)=abb99(16)*abb99(27)
      abb99(29)=abb99(25)*abb99(28)
      abb99(30)=abb99(27)*spak1k7
      abb99(31)=abb99(25)*abb99(30)
      abb99(19)=-abb99(19)+abb99(29)+abb99(31)
      abb99(29)=-es71*abb99(19)
      abb99(32)=abb99(25)*abb99(27)
      abb99(33)=abb99(7)*spbl5k2*spak1l5**2
      abb99(34)=abb99(33)*abb99(32)
      abb99(31)=spak1l5*abb99(31)
      abb99(18)=abb99(14)*abb99(18)
      abb99(33)=-abb99(18)*abb99(33)
      abb99(21)=-spak1l5*abb99(21)
      abb99(21)=abb99(33)+abb99(21)
      abb99(21)=abb99(21)*abb99(22)
      abb99(21)=abb99(21)+abb99(34)+abb99(31)
      abb99(21)=spbl5k1*abb99(21)
      abb99(31)=spbk3k2*abb99(12)
      abb99(33)=abb99(31)*abb99(22)
      abb99(34)=abb99(10)*abb99(7)
      abb99(35)=abb99(33)*abb99(34)
      abb99(23)=abb99(23)+1.0_ki
      abb99(23)=abb99(23)*abb99(11)*spbk3k2
      abb99(36)=abb99(34)*c2
      abb99(37)=abb99(36)*abb99(23)
      abb99(35)=abb99(35)-abb99(37)
      abb99(37)=spbk7k3*spak1k7*abb99(35)
      abb99(38)=abb99(10)*c2
      abb99(39)=-abb99(23)*abb99(15)*abb99(38)
      abb99(40)=abb99(31)*abb99(15)
      abb99(41)=abb99(22)*abb99(10)
      abb99(42)=abb99(41)*abb99(40)
      abb99(39)=abb99(39)+abb99(42)
      abb99(39)=spbl5k3*abb99(39)
      abb99(37)=abb99(39)+abb99(37)
      abb99(37)=spbk2k1*abb99(37)
      abb99(39)=abb99(16)*c2
      abb99(42)=spak1k7*c2
      abb99(39)=abb99(39)+abb99(42)
      abb99(39)=abb99(39)*abb99(10)
      abb99(43)=abb99(23)*abb99(39)
      abb99(16)=abb99(16)+spak1k7
      abb99(16)=abb99(16)*abb99(41)
      abb99(44)=abb99(31)*abb99(16)
      abb99(43)=abb99(44)-abb99(43)
      abb99(44)=-spbk3k1*abb99(43)
      abb99(37)=abb99(44)+abb99(37)
      abb99(37)=spak1l6*abb99(37)
      abb99(44)=abb99(6)*mB**3
      abb99(45)=abb99(44)*abb99(25)
      abb99(46)=abb99(45)*c2
      abb99(47)=abb99(22)*abb99(3)
      abb99(48)=abb99(47)*abb99(26)
      abb99(44)=abb99(44)*abb99(48)
      abb99(46)=abb99(46)-abb99(44)
      abb99(46)=abb99(8)*abb99(46)*abb99(15)
      abb99(49)=es12*abb99(46)
      abb99(21)=abb99(21)+abb99(29)+abb99(49)+abb99(37)
      abb99(21)=spak3k4*abb99(21)
      abb99(29)=abb99(45)*abb99(42)
      abb99(37)=abb99(44)*spak1k7
      abb99(29)=abb99(37)-abb99(29)
      abb99(37)=abb99(25)*abb99(36)
      abb99(42)=abb99(48)*abb99(34)
      abb99(37)=abb99(37)-abb99(42)
      abb99(42)=abb99(37)*mB**2
      abb99(44)=spak1l6*abb99(42)
      abb99(44)=-abb99(29)+abb99(44)
      abb99(45)=spak3k4*abb99(9)*abb99(8)
      abb99(44)=es12*abb99(44)*abb99(45)
      abb99(21)=abb99(44)+abb99(21)
      abb99(21)=8.0_ki*abb99(21)
      abb99(44)=spbl5k2**2
      abb99(48)=abb99(13)*abb99(44)*abb99(40)
      abb99(49)=abb99(13)*spak1k7
      abb99(31)=abb99(49)*abb99(31)
      abb99(50)=abb99(31)*spbl5k2
      abb99(48)=abb99(50)+abb99(48)
      abb99(48)=abb99(48)*abb99(22)
      abb99(44)=abb99(44)*abb99(15)
      abb99(50)=abb99(23)*abb99(27)
      abb99(51)=abb99(44)*abb99(50)
      abb99(52)=abb99(23)*abb99(30)
      abb99(53)=abb99(52)*spbl5k2
      abb99(48)=abb99(48)-abb99(53)-abb99(51)
      abb99(51)=abb99(48)*spak4l5
      abb99(53)=abb99(43)*spak4l6
      abb99(49)=abb99(33)*abb99(49)
      abb99(49)=abb99(49)-abb99(52)
      abb99(54)=spbk7k2*spak4k7
      abb99(55)=abb99(49)*abb99(54)
      abb99(13)=abb99(13)*spbl5k2
      abb99(33)=spak1l5*abb99(33)*abb99(13)
      abb99(56)=spak1l5*spbl5k2
      abb99(50)=abb99(56)*abb99(50)
      abb99(33)=abb99(33)-abb99(50)
      abb99(50)=abb99(33)*spak4k7
      abb99(50)=abb99(50)+abb99(51)+abb99(53)+abb99(55)
      abb99(51)=16.0_ki*abb99(50)
      abb99(46)=-spak3k4*abb99(46)
      abb99(29)=abb99(29)*abb99(45)
      abb99(29)=abb99(29)+abb99(46)+abb99(50)
      abb99(29)=16.0_ki*abb99(29)
      abb99(46)=spak1l6*abb99(37)
      abb99(19)=abb99(19)+abb99(46)
      abb99(46)=8.0_ki*spak3k4
      abb99(19)=abb99(19)*abb99(46)
      abb99(49)=abb99(49)*spbk7k2
      abb99(33)=abb99(49)+abb99(33)
      abb99(49)=spak2k4*abb99(33)
      abb99(13)=abb99(40)*abb99(13)
      abb99(13)=abb99(13)+abb99(31)
      abb99(13)=abb99(13)*abb99(22)
      abb99(23)=abb99(28)*abb99(23)
      abb99(13)=abb99(13)-abb99(23)-abb99(52)
      abb99(23)=abb99(13)*spak3k4
      abb99(31)=-spbk7k3*abb99(23)
      abb99(31)=abb99(49)+abb99(31)
      abb99(31)=8.0_ki*abb99(31)
      abb99(37)=-abb99(46)*spak1k7*abb99(37)
      abb99(25)=-abb99(25)*abb99(38)
      abb99(26)=abb99(26)*abb99(41)*abb99(3)
      abb99(25)=abb99(25)+abb99(26)
      abb99(15)=abb99(46)*abb99(15)*abb99(25)
      abb99(25)=-abb99(43)*abb99(46)
      abb99(26)=spak2k4*abb99(43)
      abb99(38)=-spak1k2*abb99(42)*abb99(45)
      abb99(26)=abb99(26)+abb99(38)
      abb99(26)=8.0_ki*abb99(26)
      abb99(38)=abb99(35)*spak1k4
      abb99(38)=16.0_ki*abb99(38)
      abb99(40)=spak2k4*abb99(48)
      abb99(41)=-spbl5k3*abb99(23)
      abb99(40)=abb99(40)+abb99(41)
      abb99(40)=8.0_ki*abb99(40)
      abb99(41)=abb99(44)*abb99(14)
      abb99(42)=abb99(20)*spbl5k2
      abb99(41)=abb99(41)+abb99(42)
      abb99(41)=abb99(41)*abb99(22)
      abb99(24)=abb99(24)+abb99(11)
      abb99(27)=abb99(24)*abb99(27)
      abb99(42)=abb99(27)*abb99(44)
      abb99(30)=abb99(24)*abb99(30)
      abb99(44)=abb99(30)*spbl5k2
      abb99(41)=abb99(41)-abb99(44)-abb99(42)
      abb99(41)=abb99(41)*spak4l5
      abb99(39)=abb99(24)*abb99(39)
      abb99(12)=abb99(12)*abb99(16)
      abb99(12)=abb99(12)-abb99(39)
      abb99(12)=abb99(12)*spak4l6
      abb99(14)=abb99(14)*abb99(22)
      abb99(14)=abb99(14)-abb99(27)
      abb99(14)=spak4k7*abb99(14)*abb99(56)
      abb99(16)=abb99(20)*abb99(22)
      abb99(16)=abb99(16)-abb99(30)
      abb99(16)=abb99(16)*abb99(54)
      abb99(12)=abb99(16)+abb99(12)+abb99(41)+abb99(14)
      abb99(14)=spbk4k2*abb99(12)
      abb99(16)=spak3k7*abb99(33)
      abb99(27)=spak3l5*abb99(48)
      abb99(33)=spak3l6*abb99(43)
      abb99(14)=abb99(27)+abb99(33)+abb99(16)+abb99(14)
      abb99(14)=8.0_ki*abb99(14)
      abb99(11)=abb99(11)*abb99(47)*abb99(34)
      abb99(16)=abb99(36)*abb99(24)
      abb99(11)=abb99(16)-abb99(11)
      abb99(16)=abb99(11)*spak1k4
      abb99(27)=spbk4k2*abb99(16)
      abb99(33)=-spak1k3*abb99(35)
      abb99(27)=abb99(27)+abb99(33)
      abb99(27)=8.0_ki*abb99(27)
      abb99(12)=-spbk4k3*abb99(12)
      abb99(33)=es712-es71-es12
      abb99(33)=abb99(13)*abb99(33)
      abb99(34)=-spak2l5*abb99(48)
      abb99(36)=-spak2l6*abb99(43)
      abb99(12)=abb99(34)+abb99(36)+abb99(33)+abb99(12)
      abb99(12)=8.0_ki*abb99(12)
      abb99(33)=abb99(35)*spak1l6
      abb99(13)=abb99(33)-abb99(13)
      abb99(34)=16.0_ki*abb99(13)
      abb99(16)=-spbk4k3*abb99(16)
      abb99(35)=spak1k2*abb99(35)
      abb99(16)=abb99(16)+abb99(35)
      abb99(16)=8.0_ki*abb99(16)
      abb99(17)=abb99(17)+abb99(20)
      abb99(17)=abb99(17)*abb99(22)
      abb99(20)=abb99(28)*abb99(24)
      abb99(11)=abb99(11)*spak1l6
      abb99(11)=abb99(17)-abb99(20)+abb99(11)-abb99(30)
      abb99(11)=8.0_ki*abb99(11)
      abb99(17)=-spbk4k2*abb99(11)
      abb99(11)=spbk4k3*abb99(11)
      abb99(13)=8.0_ki*abb99(13)
      abb99(20)=-spak3k4*abb99(33)
      abb99(20)=-abb99(23)+abb99(20)
      abb99(20)=8.0_ki*spbk2k1*abb99(20)
      abb99(23)=spbk3k1*abb99(23)
      abb99(18)=-abb99(18)*abb99(22)
      abb99(18)=abb99(32)+abb99(18)
      abb99(18)=spak3k4*abb99(10)**2*abb99(7)*abb99(18)
      abb99(22)=spbk2k1*spak2k4*abb99(33)
      abb99(18)=abb99(23)+abb99(18)+abb99(22)
      abb99(18)=8.0_ki*abb99(18)
      R2d99=0.0_ki
      rat2 = rat2 + R2d99
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='99' value='", &
          & R2d99, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd99h4
