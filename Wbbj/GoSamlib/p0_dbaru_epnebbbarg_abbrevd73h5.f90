module     p0_dbaru_epnebbbarg_abbrevd73h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(54), public :: abb73
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
      abb73(3)=NC**(-1)
      abb73(4)=sqrt2**(-1)
      abb73(5)=spbk7k2**(-1)
      abb73(6)=spak2l5**(-1)
      abb73(7)=sqrt(mB**2)
      abb73(8)=abb73(3)**2
      abb73(8)=abb73(8)+1.0_ki
      abb73(9)=TR*gW
      abb73(9)=abb73(5)*i_*CVDU*abb73(4)*abb73(2)*abb73(1)*abb73(9)**2
      abb73(8)=abb73(8)*abb73(9)
      abb73(10)=spbk3k2**2
      abb73(11)=abb73(10)*abb73(8)
      abb73(12)=abb73(6)*mB**2
      abb73(13)=c2*abb73(12)
      abb73(14)=abb73(11)*abb73(13)
      abb73(15)=abb73(7)*mB
      abb73(16)=abb73(15)*abb73(6)
      abb73(17)=abb73(16)*c2
      abb73(18)=abb73(11)*abb73(17)
      abb73(14)=abb73(14)-abb73(18)
      abb73(19)=spak1l6*spak2k7
      abb73(20)=abb73(14)*abb73(19)
      abb73(21)=abb73(9)*abb73(3)
      abb73(22)=abb73(21)*abb73(16)
      abb73(12)=abb73(9)*abb73(12)
      abb73(23)=abb73(12)*abb73(3)
      abb73(22)=abb73(22)-abb73(23)
      abb73(23)=abb73(10)*abb73(22)
      abb73(24)=2.0_ki*c1
      abb73(25)=abb73(19)*abb73(24)
      abb73(26)=abb73(23)*abb73(25)
      abb73(20)=abb73(20)+abb73(26)
      abb73(20)=abb73(20)*spak3k4
      abb73(26)=abb73(3)*spbk3k2
      abb73(9)=abb73(26)*abb73(9)
      abb73(27)=abb73(9)*abb73(24)
      abb73(28)=spbl5k2**2
      abb73(29)=abb73(28)*spak1l6
      abb73(30)=abb73(29)*abb73(27)
      abb73(31)=spbk3k2*abb73(8)
      abb73(32)=abb73(29)*c2
      abb73(33)=abb73(32)*abb73(31)
      abb73(30)=abb73(30)-abb73(33)
      abb73(33)=spak2k4*spal5k7
      abb73(30)=abb73(30)*abb73(33)
      abb73(20)=abb73(30)-abb73(20)
      abb73(30)=abb73(27)*spbl5k2
      abb73(34)=spbl5k2*c2
      abb73(35)=abb73(31)*abb73(34)
      abb73(30)=abb73(30)-abb73(35)
      abb73(36)=-spak1l6*abb73(30)
      abb73(37)=spbl5k3*spal5k7
      abb73(38)=abb73(37)*spak3k4
      abb73(39)=abb73(36)*abb73(38)
      abb73(39)=abb73(20)+abb73(39)
      abb73(40)=spbl6k2*abb73(39)
      abb73(21)=abb73(21)*abb73(24)
      abb73(41)=abb73(16)*abb73(21)
      abb73(42)=abb73(41)*abb73(10)
      abb73(18)=abb73(42)-abb73(18)
      abb73(42)=es71+es12-es712
      abb73(43)=spak1k7*spak3k4
      abb73(44)=-abb73(43)*abb73(42)
      abb73(45)=spbl5k2*spak2k7
      abb73(46)=abb73(45)*spak1l5
      abb73(47)=-spak3k4*abb73(46)
      abb73(44)=abb73(47)+abb73(44)
      abb73(18)=abb73(18)*abb73(44)
      abb73(11)=-abb73(11)*abb73(34)
      abb73(44)=spbl5k2*abb73(21)
      abb73(10)=abb73(10)*abb73(44)
      abb73(10)=abb73(11)+abb73(10)
      abb73(11)=abb73(7)**2
      abb73(10)=abb73(43)*abb73(11)*abb73(10)
      abb73(10)=abb73(10)+abb73(40)+abb73(18)
      abb73(18)=8.0_ki*spak2l6
      abb73(10)=abb73(10)*abb73(18)
      abb73(39)=-16.0_ki*abb73(39)
      abb73(40)=abb73(31)*abb73(17)
      abb73(47)=abb73(27)*abb73(16)
      abb73(47)=abb73(40)-abb73(47)
      abb73(48)=abb73(42)*abb73(47)
      abb73(49)=-abb73(11)*abb73(30)
      abb73(50)=abb73(48)-abb73(49)
      abb73(51)=-abb73(50)*spak4l6*spak1k7
      abb73(52)=-abb73(45)*abb73(47)
      abb73(53)=abb73(52)*spak1l5
      abb73(54)=abb73(53)*spak4l6
      abb73(51)=abb73(54)+abb73(51)
      abb73(54)=abb73(13)*abb73(31)
      abb73(40)=abb73(54)-abb73(40)
      abb73(54)=abb73(40)*abb73(19)
      abb73(12)=abb73(12)*abb73(26)
      abb73(9)=abb73(9)*abb73(16)
      abb73(9)=abb73(12)-abb73(9)
      abb73(12)=abb73(9)*abb73(25)
      abb73(12)=abb73(54)-abb73(12)
      abb73(16)=spbl6k2*spak4l6
      abb73(26)=abb73(12)*abb73(16)
      abb73(36)=-spak3k4*abb73(36)
      abb73(34)=abb73(8)*abb73(34)
      abb73(34)=abb73(34)-abb73(44)
      abb73(44)=-spak1l6*abb73(34)
      abb73(54)=abb73(44)*abb73(16)
      abb73(36)=abb73(36)+abb73(54)
      abb73(36)=abb73(36)*abb73(37)
      abb73(20)=abb73(36)+abb73(26)-abb73(20)+abb73(51)
      abb73(20)=16.0_ki*abb73(20)
      abb73(26)=abb73(44)*abb73(37)
      abb73(26)=abb73(26)+abb73(12)
      abb73(16)=-abb73(16)*abb73(26)
      abb73(16)=abb73(16)-abb73(51)
      abb73(16)=8.0_ki*abb73(16)
      abb73(36)=-abb73(43)*abb73(50)
      abb73(43)=spak3k4*abb73(53)
      abb73(36)=abb73(43)+abb73(36)
      abb73(36)=8.0_ki*abb73(36)
      abb73(14)=-spak2k7*abb73(14)
      abb73(24)=abb73(24)*spak2k7
      abb73(23)=-abb73(23)*abb73(24)
      abb73(14)=abb73(14)+abb73(23)
      abb73(14)=spak3k4*abb73(14)
      abb73(23)=abb73(28)*c2
      abb73(31)=-abb73(31)*abb73(23)
      abb73(43)=abb73(28)*abb73(27)
      abb73(31)=abb73(31)+abb73(43)
      abb73(31)=abb73(31)*abb73(33)
      abb73(30)=-abb73(30)*abb73(38)
      abb73(43)=spak4k7*abb73(48)
      abb73(48)=spak4l5*abb73(52)
      abb73(14)=2.0_ki*abb73(43)-2.0_ki*abb73(48)+abb73(30)+abb73(14)+abb73(31)
      abb73(14)=spak1k2*abb73(14)
      abb73(30)=spbl6k2*abb73(26)
      abb73(31)=spak1k7*abb73(49)
      abb73(30)=-abb73(53)+abb73(31)+abb73(30)
      abb73(30)=spak2k4*abb73(30)
      abb73(12)=spak3k4*abb73(12)
      abb73(31)=abb73(32)*abb73(8)
      abb73(29)=abb73(21)*abb73(29)
      abb73(29)=abb73(31)-abb73(29)
      abb73(31)=abb73(29)*abb73(33)
      abb73(32)=abb73(44)*abb73(38)
      abb73(12)=abb73(32)+abb73(12)+abb73(31)
      abb73(12)=spbl6k3*abb73(12)
      abb73(31)=2.0_ki*spak1k4
      abb73(32)=-abb73(31)*spak2k7
      abb73(43)=spak2k4*spak1k7
      abb73(32)=abb73(32)+abb73(43)
      abb73(32)=abb73(42)*abb73(47)*abb73(32)
      abb73(35)=-spak2k7*abb73(35)
      abb73(27)=abb73(27)*abb73(45)
      abb73(27)=abb73(35)+abb73(27)
      abb73(15)=abb73(31)*abb73(15)*abb73(27)
      abb73(12)=abb73(12)+abb73(15)+abb73(30)+abb73(32)+abb73(14)
      abb73(12)=8.0_ki*abb73(12)
      abb73(14)=abb73(40)*spak2k7
      abb73(9)=abb73(9)*abb73(24)
      abb73(9)=abb73(14)-abb73(9)
      abb73(14)=abb73(34)*abb73(37)
      abb73(14)=abb73(14)-abb73(9)
      abb73(15)=abb73(14)*spak1k4
      abb73(27)=-16.0_ki*abb73(15)
      abb73(15)=8.0_ki*abb73(15)
      abb73(29)=abb73(29)*spal5k7
      abb73(18)=spbl6k2*abb73(29)*abb73(18)
      abb73(29)=16.0_ki*abb73(29)
      abb73(21)=abb73(21)*abb73(28)
      abb73(23)=abb73(23)*abb73(8)
      abb73(21)=abb73(21)-abb73(23)
      abb73(23)=-spak1k2*abb73(21)
      abb73(28)=spbl6l5*abb73(44)
      abb73(23)=abb73(28)+abb73(23)
      abb73(23)=spal5k7*abb73(23)
      abb73(17)=abb73(8)*abb73(17)
      abb73(28)=abb73(17)-abb73(41)
      abb73(30)=abb73(28)*abb73(42)
      abb73(11)=-abb73(11)*abb73(34)
      abb73(11)=abb73(11)+abb73(30)
      abb73(11)=spak1k7*abb73(11)
      abb73(8)=abb73(13)*abb73(8)
      abb73(8)=abb73(8)-abb73(17)
      abb73(13)=-abb73(8)*abb73(19)
      abb73(17)=-abb73(22)*abb73(25)
      abb73(13)=abb73(13)+abb73(17)
      abb73(13)=spbl6k2*abb73(13)
      abb73(17)=abb73(28)*abb73(46)
      abb73(11)=abb73(17)+abb73(13)+abb73(11)+abb73(23)
      abb73(11)=8.0_ki*abb73(11)
      abb73(13)=-16.0_ki*abb73(26)
      abb73(17)=8.0_ki*abb73(26)
      abb73(9)=-spak3k4*abb73(9)
      abb73(19)=abb73(21)*abb73(33)
      abb73(21)=abb73(34)*abb73(38)
      abb73(9)=abb73(21)+abb73(9)+abb73(19)
      abb73(9)=8.0_ki*abb73(9)
      abb73(14)=8.0_ki*spak2k4*abb73(14)
      abb73(19)=8.0_ki*spal5k7*abb73(34)
      abb73(8)=spak2k7*abb73(8)
      abb73(21)=abb73(22)*abb73(24)
      abb73(8)=abb73(8)+abb73(21)
      abb73(8)=8.0_ki*abb73(8)
      R2d73=0.0_ki
      rat2 = rat2 + R2d73
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='73' value='", &
          & R2d73, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd73h5
