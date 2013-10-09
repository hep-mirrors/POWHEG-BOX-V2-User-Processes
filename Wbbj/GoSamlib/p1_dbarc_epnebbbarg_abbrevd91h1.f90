module     p1_dbarc_epnebbbarg_abbrevd91h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(55), public :: abb91
   complex(ki), public :: R2d91
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb91(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb91(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb91(3)=NC**(-1)
      abb91(4)=es71**(-1)
      abb91(5)=spak2l5**(-1)
      abb91(6)=1.0_ki/(es34+es567-es12-es234)
      abb91(7)=spbl6k2**(-1)
      abb91(8)=spbl5k2**(-1)
      abb91(9)=spak2l6**(-1)
      abb91(10)=sqrt(mB**2)
      abb91(11)=c3*abb91(3)
      abb91(12)=2.0_ki*abb91(11)
      abb91(13)=TR*gW
      abb91(13)=abb91(13)**2*i_*CVDC*abb91(2)*abb91(1)
      abb91(14)=abb91(13)*spak1k4*spak1e7
      abb91(12)=abb91(12)*abb91(14)
      abb91(15)=mB**2
      abb91(16)=abb91(15)*abb91(6)
      abb91(17)=abb91(16)*abb91(12)
      abb91(18)=abb91(3)**2
      abb91(18)=abb91(18)+1.0_ki
      abb91(14)=abb91(14)*abb91(18)
      abb91(19)=abb91(14)*abb91(15)
      abb91(20)=abb91(6)*c4
      abb91(21)=abb91(19)*abb91(20)
      abb91(17)=abb91(17)-abb91(21)
      abb91(21)=spbk3k1*spbe7k2
      abb91(17)=abb91(17)*abb91(21)
      abb91(22)=abb91(15)*abb91(4)
      abb91(23)=abb91(22)*abb91(12)
      abb91(24)=abb91(4)*c4
      abb91(25)=abb91(19)*abb91(24)
      abb91(23)=abb91(23)-abb91(25)
      abb91(25)=spbe7k1*spbk3k2
      abb91(23)=abb91(23)*abb91(25)
      abb91(11)=abb91(11)*abb91(13)
      abb91(11)=2.0_ki*abb91(11)
      abb91(26)=abb91(11)*spak1k4
      abb91(27)=abb91(26)*abb91(16)
      abb91(13)=abb91(13)*abb91(18)
      abb91(18)=spak1k4*abb91(13)
      abb91(28)=abb91(18)*abb91(20)
      abb91(29)=abb91(28)*abb91(15)
      abb91(27)=abb91(27)-abb91(29)
      abb91(29)=spbk4k3*spak4e7
      abb91(30)=abb91(29)*spbe7k2
      abb91(27)=abb91(27)*abb91(30)
      abb91(11)=abb91(11)*spak1e7
      abb91(31)=abb91(11)*abb91(22)
      abb91(13)=spak1e7*abb91(13)
      abb91(32)=abb91(13)*abb91(24)
      abb91(33)=abb91(32)*abb91(15)
      abb91(31)=abb91(31)-abb91(33)
      abb91(33)=spak4k7*spbk7e7
      abb91(34)=abb91(33)*spbk3k2
      abb91(31)=abb91(31)*abb91(34)
      abb91(17)=abb91(17)+abb91(23)+abb91(27)-abb91(31)
      abb91(23)=spak2l6**2
      abb91(27)=-abb91(5)*abb91(23)*abb91(17)
      abb91(31)=spbl5k2*abb91(6)
      abb91(35)=abb91(26)*abb91(31)
      abb91(36)=abb91(20)*spbl5k2
      abb91(18)=abb91(18)*abb91(36)
      abb91(18)=abb91(35)-abb91(18)
      abb91(35)=abb91(18)*abb91(30)
      abb91(37)=spbl5k2*abb91(4)
      abb91(38)=abb91(11)*abb91(37)
      abb91(39)=abb91(24)*spbl5k2
      abb91(13)=abb91(13)*abb91(39)
      abb91(13)=abb91(38)-abb91(13)
      abb91(38)=abb91(13)*abb91(34)
      abb91(35)=abb91(35)-abb91(38)
      abb91(38)=abb91(39)*abb91(14)
      abb91(40)=abb91(37)*abb91(12)
      abb91(38)=abb91(38)-abb91(40)
      abb91(41)=-abb91(25)*abb91(38)
      abb91(42)=abb91(36)*abb91(14)
      abb91(43)=abb91(31)*abb91(12)
      abb91(42)=abb91(42)-abb91(43)
      abb91(44)=-abb91(21)*abb91(42)
      abb91(41)=abb91(44)+abb91(41)+abb91(35)
      abb91(23)=abb91(23)*abb91(41)
      abb91(41)=abb91(14)*spak2l6
      abb91(44)=abb91(41)*abb91(36)
      abb91(45)=abb91(12)*spak2l6
      abb91(31)=abb91(45)*abb91(31)
      abb91(44)=abb91(44)-abb91(31)
      abb91(46)=abb91(44)*spbk3k1
      abb91(47)=-spak2l6*abb91(18)
      abb91(48)=abb91(47)*abb91(29)
      abb91(46)=abb91(46)+abb91(48)
      abb91(48)=spbe7l5*spal5l6
      abb91(49)=abb91(46)*abb91(48)
      abb91(50)=abb91(41)*abb91(39)
      abb91(37)=abb91(45)*abb91(37)
      abb91(50)=abb91(50)-abb91(37)
      abb91(51)=abb91(50)*spbe7k1
      abb91(52)=-spak2l6*abb91(13)
      abb91(53)=abb91(52)*abb91(33)
      abb91(51)=abb91(51)-abb91(53)
      abb91(53)=spbl5k3*spal5l6
      abb91(54)=-abb91(51)*abb91(53)
      abb91(23)=abb91(54)+abb91(49)+abb91(27)+abb91(23)
      abb91(23)=spbl6k2*abb91(23)
      abb91(27)=abb91(15)*spak2l6
      abb91(49)=-abb91(27)*abb91(35)
      abb91(54)=abb91(19)*spak2l6
      abb91(55)=abb91(39)*abb91(54)
      abb91(37)=-abb91(15)*abb91(37)
      abb91(37)=abb91(55)+abb91(37)
      abb91(37)=abb91(37)*abb91(25)
      abb91(55)=abb91(36)*abb91(54)
      abb91(31)=-abb91(15)*abb91(31)
      abb91(31)=abb91(55)+abb91(31)
      abb91(31)=abb91(31)*abb91(21)
      abb91(23)=abb91(23)+abb91(31)+abb91(37)+abb91(49)
      abb91(23)=4.0_ki*abb91(23)
      abb91(31)=abb91(45)*abb91(16)
      abb91(37)=abb91(54)*abb91(20)
      abb91(31)=abb91(31)-abb91(37)
      abb91(31)=abb91(31)*abb91(21)
      abb91(37)=abb91(45)*abb91(22)
      abb91(49)=abb91(54)*abb91(24)
      abb91(37)=abb91(37)-abb91(49)
      abb91(37)=abb91(37)*abb91(25)
      abb91(49)=abb91(28)*abb91(27)
      abb91(54)=abb91(26)*spak2l6
      abb91(16)=abb91(54)*abb91(16)
      abb91(16)=abb91(49)-abb91(16)
      abb91(16)=abb91(16)*abb91(30)
      abb91(27)=abb91(32)*abb91(27)
      abb91(49)=abb91(11)*spak2l6
      abb91(22)=abb91(49)*abb91(22)
      abb91(22)=abb91(27)-abb91(22)
      abb91(22)=abb91(22)*abb91(34)
      abb91(16)=abb91(22)-abb91(16)+abb91(31)+abb91(37)
      abb91(16)=abb91(16)*abb91(5)
      abb91(22)=-abb91(15)*abb91(35)
      abb91(27)=abb91(19)*abb91(39)
      abb91(31)=abb91(40)*abb91(15)
      abb91(27)=abb91(27)-abb91(31)
      abb91(27)=abb91(27)*abb91(25)
      abb91(19)=abb91(19)*abb91(36)
      abb91(15)=abb91(43)*abb91(15)
      abb91(15)=abb91(19)-abb91(15)
      abb91(15)=abb91(15)*abb91(21)
      abb91(15)=abb91(27)+abb91(15)+abb91(22)
      abb91(15)=abb91(15)*abb91(7)
      abb91(13)=abb91(13)*abb91(33)
      abb91(19)=abb91(38)*spbe7k1
      abb91(13)=abb91(13)+abb91(19)
      abb91(19)=abb91(13)*abb91(53)
      abb91(22)=abb91(42)*spbk3k1
      abb91(18)=abb91(18)*abb91(29)
      abb91(18)=abb91(22)-abb91(18)
      abb91(22)=abb91(18)*abb91(48)
      abb91(27)=abb91(50)*abb91(25)
      abb91(31)=abb91(44)*abb91(21)
      abb91(35)=abb91(47)*abb91(30)
      abb91(36)=abb91(52)*abb91(34)
      abb91(15)=abb91(15)-abb91(31)+abb91(22)-abb91(35)+abb91(36)-abb91(19)-abb&
      &91(16)-abb91(27)
      abb91(15)=8.0_ki*abb91(15)
      abb91(19)=-abb91(8)*abb91(5)
      abb91(22)=-abb91(9)*abb91(7)
      abb91(19)=abb91(22)+abb91(19)
      abb91(19)=abb91(17)*abb91(19)
      abb91(22)=abb91(12)*abb91(4)
      abb91(27)=abb91(14)*abb91(24)
      abb91(22)=abb91(22)-abb91(27)
      abb91(27)=abb91(22)*abb91(25)
      abb91(11)=abb91(11)*abb91(4)
      abb91(11)=abb91(11)-abb91(32)
      abb91(31)=-abb91(11)*abb91(34)
      abb91(26)=abb91(26)*abb91(6)
      abb91(26)=abb91(26)-abb91(28)
      abb91(35)=abb91(26)*abb91(30)
      abb91(12)=abb91(12)*abb91(6)
      abb91(14)=abb91(14)*abb91(20)
      abb91(12)=abb91(12)-abb91(14)
      abb91(14)=abb91(12)*abb91(21)
      abb91(14)=abb91(14)+abb91(35)+abb91(27)+abb91(31)+abb91(19)
      abb91(14)=8.0_ki*abb91(14)
      abb91(17)=-abb91(7)*abb91(17)
      abb91(16)=-abb91(8)*abb91(16)
      abb91(12)=abb91(12)*spbk3k1
      abb91(19)=abb91(26)*abb91(29)
      abb91(12)=abb91(12)+abb91(19)
      abb91(19)=-abb91(12)*abb91(48)
      abb91(22)=abb91(22)*spbe7k1
      abb91(11)=abb91(11)*abb91(33)
      abb91(11)=abb91(22)-abb91(11)
      abb91(22)=abb91(11)*abb91(53)
      abb91(24)=abb91(41)*abb91(24)
      abb91(26)=abb91(45)*abb91(4)
      abb91(24)=abb91(24)-abb91(26)
      abb91(25)=-abb91(24)*abb91(25)
      abb91(26)=abb91(32)*spak2l6
      abb91(27)=abb91(49)*abb91(4)
      abb91(26)=abb91(26)-abb91(27)
      abb91(27)=abb91(26)*abb91(34)
      abb91(28)=abb91(28)*spak2l6
      abb91(31)=abb91(54)*abb91(6)
      abb91(28)=abb91(28)-abb91(31)
      abb91(30)=-abb91(28)*abb91(30)
      abb91(20)=abb91(41)*abb91(20)
      abb91(31)=abb91(45)*abb91(6)
      abb91(20)=abb91(20)-abb91(31)
      abb91(21)=-abb91(20)*abb91(21)
      abb91(16)=abb91(16)+abb91(22)+abb91(19)+abb91(17)+abb91(21)+abb91(30)+abb&
      &91(25)+abb91(27)
      abb91(16)=spbl6l5*abb91(16)
      abb91(17)=-spbe7l5*mB*abb91(12)
      abb91(19)=spbl5k3*mB*abb91(11)
      abb91(17)=abb91(17)+abb91(19)
      abb91(17)=abb91(10)*abb91(17)
      abb91(19)=abb91(29)*abb91(28)
      abb91(20)=spbk3k1*abb91(20)
      abb91(19)=abb91(19)+abb91(20)
      abb91(20)=abb91(10)*abb91(5)
      abb91(19)=abb91(20)*mB*abb91(19)
      abb91(19)=abb91(19)+abb91(46)
      abb91(19)=spbe7l6*abb91(19)
      abb91(21)=-spbe7k1*abb91(24)
      abb91(22)=abb91(33)*abb91(26)
      abb91(21)=abb91(21)+abb91(22)
      abb91(20)=abb91(20)*mB*abb91(21)
      abb91(20)=abb91(20)-abb91(51)
      abb91(20)=spbl6k3*abb91(20)
      abb91(18)=spbe7l5*abb91(18)
      abb91(13)=-spbl5k3*abb91(13)
      abb91(13)=abb91(18)+abb91(13)
      abb91(13)=spak2l5*abb91(13)
      abb91(13)=abb91(13)+abb91(20)+abb91(19)+abb91(17)+abb91(16)
      abb91(13)=4.0_ki*abb91(13)
      abb91(16)=-spbe7l6*abb91(12)
      abb91(17)=spbl6k3*abb91(11)
      abb91(16)=abb91(16)+abb91(17)
      abb91(16)=4.0_ki*abb91(16)
      abb91(12)=-spbe7l5*abb91(12)
      abb91(11)=spbl5k3*abb91(11)
      abb91(11)=abb91(12)+abb91(11)
      abb91(11)=4.0_ki*abb91(11)
      R2d91=0.0_ki
      rat2 = rat2 + R2d91
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='91' value='", &
          & R2d91, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd91h1
