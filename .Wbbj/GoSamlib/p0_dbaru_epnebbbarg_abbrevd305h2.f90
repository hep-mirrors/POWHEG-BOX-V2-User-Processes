module     p0_dbaru_epnebbbarg_abbrevd305h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(36), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=spbl5k2**(-1)
      abb305(6)=spak2l6**(-1)
      abb305(7)=CVDU*i_*spak1k4*abb305(2)*abb305(1)
      abb305(8)=TR*gW
      abb305(8)=abb305(8)**2
      abb305(9)=abb305(7)*c2*abb305(8)*abb305(4)**2
      abb305(7)=abb305(7)*abb305(8)*abb305(4)
      abb305(8)=abb305(7)*c3
      abb305(7)=abb305(7)*c1
      abb305(7)=-abb305(8)+abb305(9)-abb305(7)
      abb305(8)=spbk3k1*abb305(7)
      abb305(9)=abb305(8)*spak2l5
      abb305(10)=spbe7k2*spbl6k2
      abb305(11)=abb305(10)*abb305(9)
      abb305(12)=abb305(8)*abb305(5)
      abb305(13)=mB**2
      abb305(14)=abb305(10)*abb305(13)
      abb305(15)=-abb305(14)*abb305(12)
      abb305(11)=abb305(11)+abb305(15)
      abb305(11)=abb305(11)*spak1e7
      abb305(7)=spbk4k3*abb305(7)
      abb305(15)=abb305(7)*spak2l5
      abb305(10)=abb305(10)*abb305(15)
      abb305(16)=abb305(7)*abb305(5)
      abb305(14)=-abb305(14)*abb305(16)
      abb305(10)=abb305(10)+abb305(14)
      abb305(10)=abb305(10)*spak4e7
      abb305(10)=abb305(11)+abb305(10)
      abb305(11)=abb305(3)**2
      abb305(14)=abb305(11)*abb305(10)
      abb305(17)=spbe7k2*mB**3
      abb305(18)=abb305(17)*abb305(16)
      abb305(19)=spbe7k2*mB
      abb305(20)=-abb305(19)*abb305(15)
      abb305(18)=abb305(18)+abb305(20)
      abb305(18)=spak2k4*abb305(18)
      abb305(17)=-abb305(17)*abb305(12)
      abb305(19)=abb305(19)*abb305(9)
      abb305(17)=abb305(17)+abb305(19)
      abb305(17)=spak1k2*abb305(17)
      abb305(17)=abb305(17)+abb305(18)
      abb305(18)=spbk7k2*spae7k7
      abb305(17)=abb305(6)*abb305(17)*abb305(18)*abb305(3)
      abb305(14)=abb305(17)+abb305(14)
      abb305(14)=4.0_ki*abb305(14)
      abb305(17)=abb305(13)*spbl6k2
      abb305(19)=abb305(17)*abb305(16)
      abb305(20)=-spbl6k2*abb305(7)
      abb305(21)=abb305(20)*spak2l5
      abb305(19)=abb305(19)+abb305(21)
      abb305(21)=spak4k7*abb305(19)
      abb305(22)=-spbl6k2*abb305(8)
      abb305(23)=abb305(22)*spak2l5
      abb305(17)=abb305(17)*abb305(12)
      abb305(17)=abb305(23)+abb305(17)
      abb305(23)=spak1k7*abb305(17)
      abb305(21)=abb305(21)+abb305(23)
      abb305(21)=8.0_ki*spbk7k2*abb305(21)
      abb305(23)=8.0_ki*abb305(10)
      abb305(10)=-4.0_ki*abb305(10)
      abb305(24)=-spak2k4*abb305(7)
      abb305(25)=-spak1k2*abb305(8)
      abb305(24)=abb305(24)-abb305(25)
      abb305(24)=mB*abb305(24)*abb305(6)*abb305(3)
      abb305(25)=-abb305(18)*abb305(24)
      abb305(26)=abb305(20)*spak4e7
      abb305(27)=abb305(22)*spak1e7
      abb305(26)=abb305(26)+abb305(27)
      abb305(27)=abb305(11)*abb305(26)
      abb305(25)=abb305(27)+abb305(25)
      abb305(25)=4.0_ki*abb305(25)
      abb305(27)=8.0_ki*abb305(26)
      abb305(26)=-4.0_ki*abb305(26)
      abb305(28)=abb305(24)*spbk7e7
      abb305(28)=4.0_ki*abb305(28)
      abb305(29)=spal5k7*abb305(28)
      abb305(28)=-spal5e7*abb305(28)
      abb305(20)=-spak4k7*abb305(20)
      abb305(22)=-spak1k7*abb305(22)
      abb305(20)=abb305(20)+abb305(22)
      abb305(20)=8.0_ki*abb305(20)
      abb305(22)=abb305(7)*spak4e7
      abb305(30)=abb305(8)*spak1e7
      abb305(22)=abb305(22)+abb305(30)
      abb305(30)=abb305(22)*spbe7l6
      abb305(31)=4.0_ki*abb305(30)
      abb305(11)=-abb305(11)*abb305(31)
      abb305(32)=abb305(7)*spak4k7
      abb305(33)=abb305(8)*spak1k7
      abb305(32)=abb305(32)+abb305(33)
      abb305(33)=spbk7l6*abb305(32)
      abb305(24)=abb305(33)-abb305(24)
      abb305(24)=8.0_ki*abb305(24)
      abb305(30)=-8.0_ki*abb305(30)
      abb305(33)=4.0_ki*spbk7e7
      abb305(32)=abb305(32)*abb305(33)
      abb305(34)=4.0_ki*spbk7l6
      abb305(34)=abb305(34)*spae7k7
      abb305(35)=abb305(7)*abb305(34)
      abb305(36)=abb305(8)*abb305(34)
      abb305(22)=-abb305(22)*abb305(33)
      abb305(13)=abb305(13)*spbe7k2
      abb305(16)=abb305(13)*abb305(16)
      abb305(15)=spbe7k2*abb305(15)
      abb305(15)=abb305(16)-abb305(15)
      abb305(16)=4.0_ki*abb305(18)
      abb305(18)=-abb305(15)*abb305(16)
      abb305(33)=-abb305(7)*abb305(16)
      abb305(15)=abb305(15)*abb305(34)
      abb305(19)=-8.0_ki*abb305(19)
      abb305(7)=-8.0_ki*abb305(7)
      abb305(9)=spbe7k2*abb305(9)
      abb305(12)=abb305(13)*abb305(12)
      abb305(9)=abb305(9)-abb305(12)
      abb305(12)=abb305(9)*abb305(16)
      abb305(13)=-abb305(8)*abb305(16)
      abb305(9)=-abb305(9)*abb305(34)
      abb305(16)=-8.0_ki*abb305(17)
      abb305(8)=-8.0_ki*abb305(8)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd305h2
