module     p0_dbaru_epnebbbarg_abbrevd302h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(48), public :: abb302
   complex(ki), public :: R2d302
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
      abb302(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb302(2)=1.0_ki/(es34+es567-es12-es234)
      abb302(3)=NC**(-1)
      abb302(4)=sqrt2**(-1)
      abb302(5)=spak2l5**(-1)
      abb302(6)=spak2k7**(-1)
      abb302(7)=sqrt(mB**2)
      abb302(8)=spak2l6**(-1)
      abb302(9)=spbl6k2**(-1)
      abb302(10)=spak2k4*spbk4k3
      abb302(11)=spak1k2*spbk3k1
      abb302(10)=abb302(10)-abb302(11)
      abb302(11)=TR*gW
      abb302(11)=CVDU*i_*spak1k4*abb302(4)*abb302(2)*abb302(1)*abb302(11)**2
      abb302(12)=abb302(11)*abb302(5)*abb302(6)
      abb302(13)=abb302(10)*abb302(12)*mB
      abb302(14)=abb302(3)*abb302(13)
      abb302(15)=c1+c3
      abb302(16)=abb302(15)*abb302(14)*spbk7l6
      abb302(17)=-abb302(13)*c2
      abb302(18)=abb302(17)*spbk7l6
      abb302(19)=abb302(3)**2
      abb302(20)=-abb302(19)*abb302(13)
      abb302(21)=c4*spbk7l6
      abb302(22)=abb302(21)*abb302(20)
      abb302(16)=abb302(16)+abb302(18)+abb302(22)
      abb302(18)=spak2l6*spbl6k2*abb302(16)
      abb302(22)=abb302(11)*spbk4k3
      abb302(23)=abb302(22)*abb302(6)
      abb302(24)=abb302(23)*spak2k4
      abb302(11)=abb302(11)*spbk3k1
      abb302(25)=abb302(11)*abb302(6)
      abb302(26)=abb302(25)*spak1k2
      abb302(24)=abb302(24)-abb302(26)
      abb302(26)=-abb302(15)*abb302(3)*abb302(24)
      abb302(27)=abb302(19)*c4
      abb302(28)=-abb302(24)*abb302(27)
      abb302(24)=abb302(24)*c2
      abb302(24)=abb302(24)+abb302(26)-abb302(28)
      abb302(26)=spbk7l5*abb302(7)
      abb302(28)=abb302(24)*abb302(26)*spbl6k2
      abb302(18)=abb302(18)-abb302(28)
      abb302(28)=es71+es12-es712
      abb302(29)=8.0_ki*abb302(28)*abb302(18)
      abb302(30)=abb302(28)*abb302(16)
      abb302(31)=-16.0_ki*abb302(30)
      abb302(10)=-abb302(12)*abb302(10)
      abb302(12)=-abb302(10)*mB**3
      abb302(32)=-abb302(8)*abb302(3)*abb302(12)
      abb302(33)=spbk7l6*abb302(15)
      abb302(34)=abb302(32)*abb302(33)
      abb302(12)=abb302(12)*abb302(8)
      abb302(35)=c2*spbk7l6
      abb302(36)=abb302(12)*abb302(35)
      abb302(19)=-abb302(19)*abb302(12)
      abb302(21)=abb302(19)*abb302(21)
      abb302(21)=-abb302(21)+abb302(36)+abb302(34)
      abb302(34)=abb302(28)*abb302(9)
      abb302(21)=-abb302(21)*abb302(34)
      abb302(36)=abb302(27)*spbk7l6
      abb302(36)=abb302(36)+abb302(35)
      abb302(37)=spbk7l5*abb302(8)
      abb302(38)=abb302(37)*mB
      abb302(39)=abb302(22)*abb302(38)
      abb302(40)=abb302(39)*abb302(36)
      abb302(41)=abb302(3)*mB
      abb302(37)=abb302(37)*abb302(41)
      abb302(42)=abb302(37)*abb302(22)
      abb302(43)=-abb302(42)*abb302(33)
      abb302(40)=abb302(43)+abb302(40)
      abb302(40)=spak4l6*abb302(40)
      abb302(38)=abb302(11)*abb302(38)
      abb302(36)=abb302(38)*abb302(36)
      abb302(37)=abb302(37)*abb302(11)
      abb302(33)=-abb302(37)*abb302(33)
      abb302(33)=abb302(33)+abb302(36)
      abb302(33)=spak1l6*abb302(33)
      abb302(21)=abb302(33)+abb302(40)+abb302(21)-abb302(30)+abb302(18)
      abb302(21)=16.0_ki*abb302(21)
      abb302(30)=-32.0_ki*abb302(16)
      abb302(18)=-8.0_ki*abb302(18)
      abb302(16)=16.0_ki*abb302(16)
      abb302(33)=-abb302(15)*abb302(41)*abb302(5)
      abb302(36)=abb302(27)+c2
      abb302(40)=abb302(36)*abb302(5)*mB
      abb302(33)=abb302(33)+abb302(40)
      abb302(40)=abb302(11)*spak1k2
      abb302(43)=abb302(22)*spak2k4
      abb302(40)=abb302(40)-abb302(43)
      abb302(33)=8.0_ki*spbk7l6**2*abb302(40)*abb302(33)
      abb302(40)=abb302(3)*abb302(15)
      abb302(43)=abb302(36)-abb302(40)
      abb302(44)=abb302(28)*abb302(43)
      abb302(45)=abb302(44)*abb302(26)
      abb302(45)=8.0_ki*abb302(45)
      abb302(46)=abb302(23)*abb302(45)
      abb302(27)=abb302(40)-abb302(27)
      abb302(27)=abb302(27)*spbk7l6
      abb302(27)=abb302(27)-abb302(35)
      abb302(26)=abb302(26)*abb302(27)
      abb302(26)=8.0_ki*abb302(26)
      abb302(27)=abb302(22)*abb302(26)
      abb302(10)=abb302(10)*abb302(7)*abb302(8)
      abb302(35)=abb302(10)*mB**2
      abb302(40)=-abb302(3)*abb302(35)
      abb302(47)=abb302(40)*abb302(15)
      abb302(10)=-abb302(41)**2*abb302(10)
      abb302(41)=abb302(10)*c4
      abb302(48)=-abb302(35)*c2
      abb302(41)=-abb302(48)+abb302(47)-abb302(41)
      abb302(41)=abb302(41)*abb302(28)
      abb302(47)=abb302(14)*abb302(15)
      abb302(48)=abb302(20)*c4
      abb302(17)=abb302(48)+abb302(17)+abb302(47)
      abb302(47)=spak2l6*abb302(17)*spbl6k2**2
      abb302(24)=-spbl5k2*spbl6k2*abb302(7)*abb302(24)
      abb302(24)=abb302(24)+abb302(47)+abb302(41)
      abb302(24)=8.0_ki*abb302(24)
      abb302(41)=abb302(17)*spbl6k2
      abb302(41)=16.0_ki*abb302(41)
      abb302(14)=abb302(14)*spbl6k2
      abb302(14)=-abb302(32)+abb302(14)-abb302(40)
      abb302(14)=-abb302(14)*abb302(15)
      abb302(20)=-spbl6k2*abb302(20)
      abb302(10)=abb302(20)-abb302(19)-abb302(10)
      abb302(10)=c4*abb302(10)
      abb302(13)=spbl6k2*abb302(13)
      abb302(13)=abb302(13)+abb302(12)+abb302(35)
      abb302(13)=c2*abb302(13)
      abb302(20)=abb302(8)*mB*abb302(6)
      abb302(35)=abb302(20)*abb302(11)
      abb302(40)=abb302(43)*abb302(35)
      abb302(47)=abb302(40)*spak1l6
      abb302(20)=abb302(20)*abb302(22)
      abb302(22)=abb302(43)*abb302(20)
      abb302(48)=abb302(22)*spak4l6
      abb302(47)=abb302(47)+abb302(48)
      abb302(48)=-spbl6l5*abb302(47)
      abb302(10)=abb302(48)+abb302(13)+abb302(10)+abb302(14)
      abb302(10)=16.0_ki*abb302(10)
      abb302(13)=abb302(43)*abb302(7)
      abb302(14)=abb302(23)*abb302(13)
      abb302(23)=8.0_ki*spbl5k2
      abb302(43)=abb302(14)*abb302(23)
      abb302(39)=abb302(39)*abb302(36)
      abb302(42)=-abb302(42)*abb302(15)
      abb302(14)=spbl6l5*abb302(14)
      abb302(14)=abb302(14)+abb302(42)+abb302(39)
      abb302(14)=8.0_ki*abb302(14)
      abb302(28)=abb302(17)*abb302(28)
      abb302(32)=abb302(32)*abb302(15)
      abb302(12)=abb302(12)*c2
      abb302(19)=abb302(19)*c4
      abb302(12)=-abb302(19)+abb302(12)+abb302(32)
      abb302(12)=abb302(12)*abb302(34)
      abb302(12)=abb302(28)+abb302(12)
      abb302(12)=spbk7k2*abb302(12)
      abb302(19)=-spak4l6*abb302(20)
      abb302(20)=-spak1l6*abb302(35)
      abb302(19)=abb302(20)+abb302(19)
      abb302(19)=abb302(44)*spbk7l5*abb302(19)
      abb302(12)=abb302(12)+abb302(19)
      abb302(12)=8.0_ki*abb302(12)
      abb302(17)=abb302(17)*spbk7k2
      abb302(19)=16.0_ki*abb302(17)
      abb302(17)=-8.0_ki*abb302(17)
      abb302(20)=-abb302(47)*abb302(23)
      abb302(22)=8.0_ki*abb302(22)
      abb302(28)=abb302(25)*abb302(45)
      abb302(13)=abb302(25)*abb302(13)
      abb302(23)=abb302(13)*abb302(23)
      abb302(11)=abb302(11)*abb302(26)
      abb302(25)=abb302(38)*abb302(36)
      abb302(15)=-abb302(37)*abb302(15)
      abb302(13)=spbl6l5*abb302(13)
      abb302(13)=abb302(13)+abb302(15)+abb302(25)
      abb302(13)=8.0_ki*abb302(13)
      abb302(15)=8.0_ki*abb302(40)
      R2d302=0.0_ki
      rat2 = rat2 + R2d302
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='302' value='", &
          & R2d302, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd302h3
