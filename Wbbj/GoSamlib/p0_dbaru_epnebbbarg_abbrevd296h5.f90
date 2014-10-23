module     p0_dbaru_epnebbbarg_abbrevd296h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(45), public :: abb296
   complex(ki), public :: R2d296
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
      abb296(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb296(2)=NC**(-1)
      abb296(3)=sqrt2**(-1)
      abb296(4)=spbk7k2**(-1)
      abb296(5)=spak2l5**(-1)
      abb296(6)=spak2l6**(-1)
      abb296(7)=sqrt(mB**2)
      abb296(8)=spbl6k2**(-1)
      abb296(9)=c4*abb296(2)**2
      abb296(9)=abb296(9)+c2
      abb296(10)=mB**2
      abb296(11)=abb296(10)*spak2k4
      abb296(12)=TR*gW
      abb296(12)=abb296(12)**2*i_*CVDU*abb296(3)*abb296(1)
      abb296(13)=abb296(12)*spbk3k2*abb296(4)
      abb296(14)=abb296(13)*abb296(5)
      abb296(15)=-abb296(9)*spak1l6*abb296(11)*abb296(14)
      abb296(16)=c1+c3
      abb296(17)=spak1l6*abb296(16)
      abb296(18)=abb296(12)*abb296(2)
      abb296(19)=abb296(18)*abb296(17)
      abb296(20)=abb296(12)*spak1l6
      abb296(21)=-abb296(20)*abb296(9)
      abb296(19)=abb296(21)+abb296(19)
      abb296(21)=spbl5k3*spak4k7
      abb296(19)=abb296(19)*abb296(21)
      abb296(22)=abb296(14)*abb296(2)
      abb296(23)=abb296(17)*abb296(11)*abb296(22)
      abb296(15)=-abb296(19)+abb296(23)+abb296(15)
      abb296(19)=abb296(7)*mB
      abb296(23)=abb296(14)*abb296(19)
      abb296(24)=abb296(23)*abb296(9)
      abb296(25)=abb296(23)*abb296(2)
      abb296(26)=abb296(25)*c3
      abb296(27)=abb296(25)*c1
      abb296(24)=-abb296(27)+abb296(24)-abb296(26)
      abb296(26)=abb296(24)*spak1k2
      abb296(27)=abb296(26)*spak4l6
      abb296(28)=-abb296(27)-abb296(15)
      abb296(28)=spbl6k2*abb296(28)
      abb296(29)=abb296(24)*spak1k4
      abb296(30)=abb296(29)*es12
      abb296(26)=abb296(26)*spak4l5
      abb296(31)=abb296(26)*spbl5k2
      abb296(32)=abb296(19)*abb296(5)
      abb296(33)=abb296(16)*abb296(32)*abb296(18)
      abb296(34)=spbk3k2*abb296(33)
      abb296(35)=abb296(12)*abb296(5)
      abb296(36)=abb296(19)*abb296(35)
      abb296(37)=-abb296(9)*abb296(36)*spbk3k2
      abb296(34)=abb296(34)+abb296(37)
      abb296(37)=spak1k2*spak4k7
      abb296(34)=abb296(34)*abb296(37)
      abb296(38)=abb296(9)*abb296(13)
      abb296(39)=spak1l6*abb296(38)
      abb296(40)=abb296(13)*abb296(2)
      abb296(41)=abb296(40)*abb296(17)
      abb296(41)=abb296(39)-abb296(41)
      abb296(42)=abb296(41)*spbl6k2
      abb296(43)=spbl5k1*spak1k4
      abb296(44)=abb296(42)*abb296(43)
      abb296(45)=spbl6l5*spak4l6
      abb296(42)=abb296(42)*abb296(45)
      abb296(28)=-abb296(31)+abb296(30)-abb296(44)+abb296(42)+abb296(34)+abb296&
      &(28)
      abb296(30)=abb296(11)*abb296(39)
      abb296(31)=abb296(11)*abb296(40)
      abb296(34)=abb296(31)*abb296(17)
      abb296(30)=abb296(30)-abb296(34)
      abb296(34)=abb296(6)*spbl5k2
      abb296(39)=abb296(30)*abb296(34)
      abb296(39)=abb296(39)+abb296(28)
      abb296(39)=abb296(39)*spal6k7
      abb296(42)=16.0_ki*abb296(39)
      abb296(39)=8.0_ki*abb296(39)
      abb296(28)=spak2l6*abb296(28)
      abb296(44)=spbl5k2*abb296(30)
      abb296(28)=abb296(44)+abb296(28)
      abb296(28)=8.0_ki*abb296(28)
      abb296(34)=abb296(34)*abb296(8)
      abb296(30)=abb296(30)*abb296(34)
      abb296(43)=abb296(45)-abb296(43)
      abb296(41)=abb296(43)*abb296(41)
      abb296(15)=-abb296(15)+abb296(30)+abb296(41)
      abb296(27)=-abb296(27)+abb296(15)
      abb296(27)=16.0_ki*abb296(27)
      abb296(15)=-8.0_ki*abb296(15)
      abb296(26)=-8.0_ki*abb296(26)
      abb296(30)=-abb296(36)*abb296(9)
      abb296(30)=abb296(33)+abb296(30)
      abb296(30)=8.0_ki*abb296(30)*abb296(37)
      abb296(24)=-spak1k7*spak2k4*abb296(24)
      abb296(33)=abb296(29)*spak2k7
      abb296(20)=-abb296(9)*abb296(20)*abb296(4)
      abb296(37)=abb296(18)*abb296(4)
      abb296(17)=abb296(37)*abb296(17)
      abb296(17)=abb296(17)+abb296(20)
      abb296(20)=abb296(17)*spbl6k2
      abb296(41)=abb296(20)*abb296(21)
      abb296(33)=abb296(33)-abb296(41)
      abb296(24)=abb296(24)+abb296(33)
      abb296(41)=-es12+es712-es71
      abb296(41)=8.0_ki*abb296(41)
      abb296(44)=-abb296(24)*abb296(41)
      abb296(24)=16.0_ki*abb296(24)
      abb296(22)=abb296(22)*abb296(10)
      abb296(22)=abb296(22)+abb296(25)
      abb296(22)=-abb296(16)*abb296(22)*spak2k4
      abb296(14)=abb296(10)*abb296(14)
      abb296(14)=abb296(14)+abb296(23)
      abb296(14)=abb296(9)*abb296(14)*spak2k4
      abb296(23)=abb296(40)*abb296(16)
      abb296(23)=abb296(23)-abb296(38)
      abb296(23)=abb296(43)*abb296(23)
      abb296(18)=-abb296(18)*abb296(16)
      abb296(12)=abb296(9)*abb296(12)
      abb296(18)=abb296(12)+abb296(18)
      abb296(18)=abb296(18)*abb296(21)
      abb296(13)=-abb296(9)*abb296(13)*abb296(11)
      abb296(25)=abb296(31)*abb296(16)
      abb296(13)=abb296(25)+abb296(13)
      abb296(13)=abb296(13)*abb296(34)
      abb296(13)=abb296(23)+abb296(13)+abb296(18)-abb296(14)-abb296(22)
      abb296(14)=spak1k7*abb296(13)
      abb296(14)=abb296(33)+abb296(14)
      abb296(18)=-16.0_ki*abb296(14)
      abb296(14)=-8.0_ki*abb296(14)
      abb296(22)=abb296(9)*abb296(4)
      abb296(23)=abb296(36)*abb296(22)
      abb296(16)=abb296(16)*abb296(37)
      abb296(25)=abb296(32)*abb296(16)
      abb296(23)=abb296(23)-abb296(25)
      abb296(25)=abb296(23)*spak1k4
      abb296(31)=spbk3k1*abb296(25)
      abb296(13)=abb296(31)+abb296(13)
      abb296(13)=spak1k2*abb296(13)
      abb296(31)=spak2k4*abb296(20)
      abb296(12)=abb296(4)*abb296(12)
      abb296(12)=abb296(16)-abb296(12)
      abb296(19)=spak1k4*abb296(19)*abb296(12)
      abb296(33)=abb296(23)*spak2k4
      abb296(37)=spak1l5*abb296(33)
      abb296(19)=abb296(37)+abb296(31)+abb296(19)
      abb296(19)=spbl5k3*abb296(19)
      abb296(31)=abb296(34)*abb296(11)
      abb296(31)=abb296(31)+abb296(43)
      abb296(34)=-abb296(17)*abb296(31)
      abb296(37)=abb296(35)*abb296(10)
      abb296(36)=abb296(37)+abb296(36)
      abb296(9)=abb296(9)*abb296(36)*spak1l6*abb296(4)
      abb296(10)=abb296(10)*abb296(5)
      abb296(10)=abb296(10)+abb296(32)
      abb296(10)=-abb296(10)*spak1l6*abb296(16)
      abb296(9)=abb296(10)+abb296(9)
      abb296(9)=spak2k4*abb296(9)
      abb296(10)=-spak2l6*abb296(25)
      abb296(9)=abb296(10)+abb296(9)+abb296(34)
      abb296(9)=spbl6k3*abb296(9)
      abb296(10)=-spak1k7*abb296(33)
      abb296(25)=spak2k7*abb296(25)
      abb296(10)=abb296(10)+abb296(25)
      abb296(10)=spbk7k3*abb296(10)
      abb296(25)=-spbk7l6*abb296(17)*abb296(21)
      abb296(9)=abb296(25)+abb296(10)+abb296(9)+abb296(13)+abb296(19)
      abb296(9)=8.0_ki*abb296(9)
      abb296(10)=-8.0_ki*spak1k2*abb296(29)
      abb296(13)=16.0_ki*spbl5k2
      abb296(19)=-spal6k7*abb296(20)*abb296(13)
      abb296(25)=8.0_ki*spbl5k2
      abb296(20)=abb296(25)*abb296(20)
      abb296(29)=-spal6k7*abb296(20)
      abb296(20)=-spak2l6*abb296(20)
      abb296(32)=-abb296(17)*abb296(13)
      abb296(33)=abb296(17)*abb296(25)
      abb296(34)=abb296(12)*spak1k7
      abb296(13)=-abb296(13)*abb296(34)
      abb296(25)=-abb296(25)*abb296(34)
      abb296(34)=spbl5k2*abb296(12)
      abb296(23)=-abb296(23)+abb296(34)
      abb296(23)=spak1k2*abb296(23)
      abb296(17)=-spbl6l5*abb296(17)
      abb296(17)=abb296(17)+abb296(23)
      abb296(17)=8.0_ki*abb296(17)
      abb296(21)=abb296(12)*abb296(21)
      abb296(23)=8.0_ki*abb296(21)
      abb296(31)=-abb296(12)*abb296(31)
      abb296(16)=-abb296(5)*abb296(16)
      abb296(22)=abb296(35)*abb296(22)
      abb296(16)=abb296(22)+abb296(16)
      abb296(11)=abb296(11)*abb296(16)
      abb296(11)=abb296(11)+abb296(31)
      abb296(11)=8.0_ki*abb296(11)
      abb296(16)=abb296(21)*abb296(41)
      abb296(21)=16.0_ki*abb296(21)
      abb296(12)=8.0_ki*abb296(12)
      abb296(22)=spbl5k3*spak2k4*abb296(12)
      R2d296=0.0_ki
      rat2 = rat2 + R2d296
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='296' value='", &
          & R2d296, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd296h5
