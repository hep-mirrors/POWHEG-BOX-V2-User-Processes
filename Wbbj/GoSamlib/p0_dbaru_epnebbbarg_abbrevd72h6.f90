module     p0_dbaru_epnebbbarg_abbrevd72h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(59), public :: abb72
   complex(ki), public :: R2d72
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
      abb72(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb72(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb72(3)=NC**(-1)
      abb72(4)=sqrt2**(-1)
      abb72(5)=spbk7k2**(-1)
      abb72(6)=sqrt(mB**2)
      abb72(7)=spak2l6**(-1)
      abb72(8)=-NC+2.0_ki*abb72(3)
      abb72(9)=TR*gW
      abb72(9)=CVDU*i_*spal5k7*abb72(4)*abb72(2)*abb72(1)*abb72(9)**2
      abb72(8)=abb72(8)*abb72(9)*c1
      abb72(9)=c2*abb72(9)*abb72(3)**2
      abb72(8)=abb72(8)-abb72(9)
      abb72(9)=spak1l6*spbl6k2
      abb72(10)=-abb72(8)*abb72(9)
      abb72(11)=abb72(10)*spak1k7
      abb72(12)=-abb72(8)*spbl5k2*abb72(5)
      abb72(13)=abb72(12)*abb72(9)
      abb72(14)=abb72(13)*spak1l5
      abb72(11)=abb72(11)+abb72(14)
      abb72(14)=spbk3k1*spak1k4
      abb72(15)=-abb72(14)*abb72(11)
      abb72(16)=abb72(12)*spak4l5
      abb72(17)=-abb72(8)*spak4k7
      abb72(18)=abb72(16)+abb72(17)
      abb72(9)=abb72(9)*abb72(18)
      abb72(19)=spbk4k3*spak1k4
      abb72(20)=-abb72(9)*abb72(19)
      abb72(15)=abb72(20)+abb72(15)
      abb72(15)=spbl6k1*abb72(15)
      abb72(20)=abb72(6)*mB*abb72(7)
      abb72(21)=abb72(17)*abb72(20)
      abb72(22)=-spak1k4*abb72(21)
      abb72(23)=abb72(16)*spak1k4
      abb72(24)=-abb72(20)*abb72(23)
      abb72(22)=abb72(22)+abb72(24)
      abb72(22)=spbk4k3*abb72(22)
      abb72(24)=-abb72(20)*abb72(8)
      abb72(25)=abb72(24)*spak1k7
      abb72(26)=-abb72(14)*abb72(25)
      abb72(27)=abb72(12)*spak1l5
      abb72(28)=abb72(27)*abb72(14)
      abb72(29)=-abb72(20)*abb72(28)
      abb72(22)=abb72(22)+abb72(26)+abb72(29)
      abb72(22)=es12*abb72(22)
      abb72(15)=abb72(22)+abb72(15)
      abb72(15)=8.0_ki*abb72(15)
      abb72(22)=abb72(9)*spbl6k3
      abb72(26)=abb72(20)*spbk3k2
      abb72(29)=abb72(26)*spak1k2
      abb72(30)=abb72(18)*abb72(29)
      abb72(22)=abb72(22)-abb72(30)
      abb72(30)=16.0_ki*abb72(22)
      abb72(31)=-abb72(8)*spak1k7
      abb72(32)=abb72(31)*abb72(14)
      abb72(28)=abb72(32)+abb72(28)
      abb72(32)=spbl6k2*abb72(28)
      abb72(33)=spbl6k2*abb72(18)
      abb72(19)=abb72(33)*abb72(19)
      abb72(19)=abb72(19)+abb72(32)-abb72(22)
      abb72(19)=16.0_ki*abb72(19)
      abb72(22)=8.0_ki*abb72(22)
      abb72(32)=-abb72(8)*spak1k4
      abb72(34)=abb72(32)*spbk2k1
      abb72(35)=-abb72(8)*spbk3k2
      abb72(36)=abb72(35)*spak3k4
      abb72(34)=abb72(34)+abb72(36)
      abb72(37)=spbl6k3*abb72(34)
      abb72(38)=abb72(35)*spak1k4
      abb72(39)=spbl6k1*abb72(38)
      abb72(37)=abb72(39)+abb72(37)
      abb72(39)=8.0_ki*spak1l6
      abb72(37)=abb72(37)*abb72(39)
      abb72(40)=-16.0_ki*abb72(38)
      abb72(41)=abb72(20)*spak1k2
      abb72(36)=-abb72(41)*abb72(36)
      abb72(42)=-es12*spak1k4*abb72(24)
      abb72(36)=abb72(36)+abb72(42)
      abb72(36)=8.0_ki*abb72(36)
      abb72(42)=-8.0_ki*abb72(8)
      abb72(43)=spak1l6*spak3k4*spbl6k3**2
      abb72(44)=abb72(43)*abb72(42)
      abb72(45)=16.0_ki*spbl6k3
      abb72(46)=-abb72(32)*abb72(45)
      abb72(38)=8.0_ki*abb72(38)
      abb72(47)=-abb72(41)*abb72(38)
      abb72(48)=abb72(12)*spbk3k2
      abb72(49)=spak3k4*spbl6k3
      abb72(50)=abb72(48)*abb72(49)
      abb72(51)=abb72(12)*spak1k4
      abb72(52)=abb72(51)*spbk2k1
      abb72(53)=spbl6k3*abb72(52)
      abb72(54)=abb72(51)*spbk3k2
      abb72(55)=spbl6k1*abb72(54)
      abb72(50)=abb72(55)+abb72(50)+abb72(53)
      abb72(39)=abb72(50)*abb72(39)
      abb72(50)=-16.0_ki*abb72(54)
      abb72(29)=abb72(12)*abb72(29)
      abb72(53)=-spak3k4*abb72(29)
      abb72(55)=-es12*abb72(20)*abb72(51)
      abb72(53)=abb72(53)+abb72(55)
      abb72(53)=8.0_ki*abb72(53)
      abb72(55)=8.0_ki*abb72(12)
      abb72(43)=abb72(55)*abb72(43)
      abb72(45)=-abb72(51)*abb72(45)
      abb72(56)=8.0_ki*spak1k2
      abb72(26)=-abb72(26)*abb72(51)*abb72(56)
      abb72(11)=spbl6k1*abb72(11)
      abb72(57)=abb72(20)*abb72(27)
      abb72(57)=abb72(25)+abb72(57)
      abb72(57)=es12*abb72(57)
      abb72(58)=abb72(35)*abb72(41)
      abb72(59)=-spbl6k3*abb72(10)
      abb72(58)=abb72(58)+abb72(59)
      abb72(58)=spak3k7*abb72(58)
      abb72(59)=-spbl6k3*abb72(13)
      abb72(29)=abb72(29)+abb72(59)
      abb72(29)=spak3l5*abb72(29)
      abb72(16)=abb72(16)*abb72(20)
      abb72(16)=abb72(16)+abb72(21)
      abb72(16)=abb72(16)*spak1k2
      abb72(20)=spbk4k2*abb72(16)
      abb72(9)=-spbl6k4*abb72(9)
      abb72(9)=abb72(9)+abb72(20)+abb72(29)+abb72(58)+abb72(57)+abb72(11)
      abb72(9)=8.0_ki*abb72(9)
      abb72(11)=abb72(27)+abb72(31)
      abb72(20)=-16.0_ki*spbl6k2*abb72(11)
      abb72(10)=-8.0_ki*abb72(10)
      abb72(21)=-abb72(24)*abb72(56)
      abb72(13)=-8.0_ki*abb72(13)
      abb72(24)=-abb72(41)*abb72(55)
      abb72(25)=spak1k2*abb72(25)
      abb72(27)=abb72(41)*abb72(27)
      abb72(25)=abb72(25)+abb72(27)
      abb72(27)=16.0_ki*spbk3k1
      abb72(25)=abb72(25)*abb72(27)
      abb72(17)=spak1k4*abb72(17)
      abb72(17)=abb72(17)+abb72(23)
      abb72(17)=spbk4k3*abb72(17)
      abb72(17)=abb72(17)+abb72(28)
      abb72(17)=8.0_ki*spbk2k1*abb72(17)
      abb72(23)=spbk3k2*abb72(18)
      abb72(28)=16.0_ki*abb72(23)
      abb72(23)=8.0_ki*abb72(23)
      abb72(29)=8.0_ki*abb72(34)
      abb72(14)=16.0_ki*abb72(14)
      abb72(31)=abb72(8)*abb72(14)
      abb72(34)=abb72(48)*spak3k4
      abb72(34)=abb72(34)+abb72(52)
      abb72(34)=8.0_ki*abb72(34)
      abb72(14)=-abb72(12)*abb72(14)
      abb72(41)=8.0_ki*abb72(54)
      abb72(11)=-spbk2k1*abb72(11)
      abb72(18)=-spbk4k2*abb72(18)
      abb72(35)=-spak3k7*abb72(35)
      abb72(48)=-spak3l5*abb72(48)
      abb72(11)=abb72(18)+abb72(48)+abb72(35)+abb72(11)
      abb72(11)=8.0_ki*abb72(11)
      abb72(18)=8.0_ki*abb72(33)
      abb72(33)=16.0_ki*abb72(33)
      abb72(35)=abb72(8)*abb72(49)
      abb72(32)=spbl6k1*abb72(32)
      abb72(32)=abb72(35)+abb72(32)
      abb72(32)=8.0_ki*abb72(32)
      abb72(35)=-abb72(12)*abb72(49)
      abb72(48)=spbl6k1*abb72(51)
      abb72(35)=abb72(35)+abb72(48)
      abb72(35)=8.0_ki*abb72(35)
      abb72(8)=-spak3k7*abb72(8)
      abb72(12)=spak3l5*abb72(12)
      abb72(8)=abb72(8)+abb72(12)
      abb72(8)=8.0_ki*spbl6k2*abb72(8)
      abb72(12)=-abb72(16)*abb72(27)
      R2d72=0.0_ki
      rat2 = rat2 + R2d72
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='72' value='", &
          & R2d72, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd72h6
