module     p9_csbar_epnebbbarg_abbrevd23h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(62), public :: abb23
   complex(ki), public :: R2d23
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb23(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb23(2)=1.0_ki/(es34+es567-es12-es234)
      abb23(3)=NC**(-1)
      abb23(4)=es567**(-1)
      abb23(5)=es56**(-1)
      abb23(6)=spak2l5**(-1)
      abb23(7)=spak2l6**(-1)
      abb23(8)=1.0_ki/(mB**2-es67-es56+es567)
      abb23(9)=sqrt(mB**2)
      abb23(10)=1.0_ki/(-mB**2+es67)
      abb23(11)=1.0_ki/(-es71+es712-es12)
      abb23(12)=CVSC*i_*spak2e7*abb23(2)*abb23(1)
      abb23(13)=TR*gW
      abb23(13)=abb23(13)**2
      abb23(14)=abb23(12)*abb23(13)*mB
      abb23(15)=spbk3k1*abb23(14)*abb23(4)
      abb23(16)=abb23(15)*abb23(3)
      abb23(17)=abb23(16)*spak3k4
      abb23(18)=abb23(15)*NC
      abb23(19)=abb23(18)*spak3k4
      abb23(17)=abb23(17)-abb23(19)
      abb23(20)=spbe7l5*c1
      abb23(17)=abb23(17)*abb23(20)
      abb23(21)=spak2k7*spak3k4
      abb23(22)=abb23(21)*abb23(18)
      abb23(23)=abb23(3)*abb23(15)*spak2k7
      abb23(24)=abb23(23)*spak3k4
      abb23(22)=abb23(22)-abb23(24)
      abb23(24)=spbk7e7*abb23(6)
      abb23(25)=abb23(24)*c1
      abb23(22)=abb23(22)*abb23(25)
      abb23(17)=abb23(17)+abb23(22)
      abb23(22)=2.0_ki*abb23(8)
      abb23(17)=abb23(17)*abb23(22)
      abb23(26)=abb23(3)**2
      abb23(26)=abb23(26)-1.0_ki
      abb23(27)=abb23(15)*abb23(26)
      abb23(28)=abb23(27)*abb23(21)
      abb23(29)=abb23(28)*abb23(24)
      abb23(30)=abb23(27)*spak3k4
      abb23(31)=abb23(30)*spbe7l5
      abb23(29)=abb23(29)-abb23(31)
      abb23(31)=c2*abb23(8)
      abb23(32)=2.0_ki*abb23(31)
      abb23(29)=abb23(29)*abb23(32)
      abb23(33)=NC-abb23(3)
      abb23(34)=abb23(33)*c1
      abb23(35)=-c3*abb23(33)
      abb23(34)=-abb23(34)-abb23(35)
      abb23(36)=abb23(15)*spak3k4*abb23(5)
      abb23(34)=abb23(36)*abb23(34)
      abb23(37)=abb23(34)*spbe7l5
      abb23(17)=abb23(17)+abb23(29)-abb23(37)
      abb23(29)=abb23(17)*spbl6k3
      abb23(15)=abb23(15)*c3
      abb23(37)=spak2k7*abb23(3)
      abb23(38)=abb23(37)*abb23(15)
      abb23(39)=abb23(38)*spak3k4
      abb23(40)=c3*spak2k7
      abb23(41)=abb23(19)*abb23(40)
      abb23(39)=abb23(39)-abb23(41)
      abb23(41)=spbk7e7*abb23(7)
      abb23(39)=abb23(39)*abb23(41)
      abb23(42)=abb23(15)*abb23(3)
      abb23(43)=abb23(42)*spak3k4
      abb23(19)=abb23(19)*c3
      abb23(19)=abb23(43)-abb23(19)
      abb23(19)=abb23(19)*spbe7l6
      abb23(19)=abb23(39)-abb23(19)
      abb23(39)=2.0_ki*abb23(10)
      abb23(19)=abb23(19)*abb23(39)
      abb23(28)=abb23(28)*abb23(41)
      abb23(30)=abb23(30)*spbe7l6
      abb23(28)=abb23(28)-abb23(30)
      abb23(30)=c2*abb23(10)
      abb23(43)=2.0_ki*abb23(30)
      abb23(28)=abb23(28)*abb23(43)
      abb23(44)=abb23(34)*spbe7l6
      abb23(19)=abb23(19)-abb23(28)-abb23(44)
      abb23(28)=abb23(19)*spbl5k3
      abb23(44)=NC*spak2k7
      abb23(44)=abb23(37)-abb23(44)
      abb23(45)=c1-c3
      abb23(36)=-abb23(45)*abb23(36)*abb23(44)
      abb23(45)=spbe7l6*abb23(6)
      abb23(46)=spbe7l5*abb23(7)
      abb23(47)=abb23(45)+abb23(46)
      abb23(48)=abb23(36)*abb23(47)
      abb23(49)=abb23(48)*spbk7k3
      abb23(50)=spbk7l6*abb23(6)
      abb23(51)=spbk7l5*abb23(7)
      abb23(50)=abb23(50)+abb23(51)
      abb23(36)=abb23(36)*abb23(50)
      abb23(36)=2.0_ki*abb23(36)
      abb23(51)=abb23(36)*spbe7k3
      abb23(28)=abb23(51)-abb23(49)+abb23(29)+abb23(28)
      abb23(29)=abb23(18)*spak2k7
      abb23(29)=abb23(29)-abb23(23)
      abb23(29)=abb23(29)*abb23(25)
      abb23(49)=abb23(16)-abb23(18)
      abb23(49)=abb23(49)*abb23(20)
      abb23(29)=abb23(29)+abb23(49)
      abb23(29)=abb23(29)*abb23(22)
      abb23(49)=abb23(24)*spak2k7
      abb23(51)=abb23(49)-spbe7l5
      abb23(32)=abb23(51)*abb23(32)
      abb23(51)=abb23(27)*abb23(32)
      abb23(29)=abb23(29)+abb23(51)
      abb23(29)=abb23(29)*spak1k4
      abb23(16)=abb23(16)*abb23(5)
      abb23(51)=abb23(18)*abb23(5)
      abb23(16)=abb23(16)-abb23(51)
      abb23(16)=abb23(16)*c1
      abb23(52)=abb23(51)*c3
      abb23(15)=abb23(15)*abb23(5)
      abb23(53)=abb23(15)*abb23(3)
      abb23(16)=abb23(16)+abb23(52)-abb23(53)
      abb23(52)=abb23(16)*spak1k4
      abb23(53)=abb23(52)*spbe7l5
      abb23(29)=abb23(29)-abb23(53)
      abb23(29)=abb23(29)*spbl6k1
      abb23(53)=abb23(18)*c3
      abb23(42)=abb23(53)-abb23(42)
      abb23(42)=abb23(42)*spbe7l6
      abb23(18)=abb23(40)*abb23(18)
      abb23(18)=abb23(18)-abb23(38)
      abb23(18)=abb23(18)*abb23(41)
      abb23(18)=abb23(42)-abb23(18)
      abb23(18)=abb23(18)*abb23(39)
      abb23(38)=abb23(41)*spak2k7
      abb23(42)=abb23(38)-spbe7l6
      abb23(42)=abb23(42)*abb23(43)
      abb23(27)=abb23(27)*abb23(42)
      abb23(18)=abb23(18)-abb23(27)
      abb23(18)=abb23(18)*spak1k4
      abb23(27)=abb23(52)*spbe7l6
      abb23(18)=abb23(18)-abb23(27)
      abb23(18)=abb23(18)*spbl5k1
      abb23(27)=abb23(33)*abb23(8)*abb23(20)
      abb23(12)=abb23(12)*abb23(13)*abb23(4)
      abb23(13)=spbk3k1*abb23(12)
      abb23(43)=abb23(13)*spak3k4
      abb23(52)=-abb23(43)*abb23(27)
      abb23(53)=abb23(13)*abb23(26)
      abb23(54)=abb23(53)*spak3k4
      abb23(31)=abb23(31)*spbe7l5
      abb23(55)=abb23(31)*abb23(54)
      abb23(52)=abb23(52)-abb23(55)
      abb23(55)=abb23(52)*spbl6k3
      abb23(35)=abb23(35)*abb23(10)*spbe7l6
      abb23(43)=-abb23(43)*abb23(35)
      abb23(30)=abb23(30)*spbe7l6
      abb23(54)=abb23(30)*abb23(54)
      abb23(43)=abb23(43)+abb23(54)
      abb23(54)=abb23(43)*spbl5k3
      abb23(54)=abb23(55)+abb23(54)
      abb23(13)=abb23(13)*spak1k4
      abb23(55)=abb23(27)*abb23(13)
      abb23(53)=abb23(53)*spak1k4
      abb23(56)=abb23(53)*abb23(31)
      abb23(55)=abb23(55)+abb23(56)
      abb23(55)=abb23(55)*spbl6k1
      abb23(13)=abb23(35)*abb23(13)
      abb23(53)=abb23(53)*abb23(30)
      abb23(13)=abb23(13)-abb23(53)
      abb23(13)=abb23(13)*spbl5k1
      abb23(13)=abb23(54)+abb23(55)+abb23(13)
      abb23(53)=2.0_ki*abb23(9)
      abb23(13)=abb23(13)*abb23(53)
      abb23(55)=abb23(51)*spak2k7
      abb23(23)=abb23(5)*abb23(23)
      abb23(23)=abb23(55)-abb23(23)
      abb23(23)=abb23(23)*c1
      abb23(40)=abb23(51)*abb23(40)
      abb23(15)=abb23(15)*abb23(37)
      abb23(15)=abb23(23)-abb23(40)+abb23(15)
      abb23(23)=spbk7k1*abb23(47)
      abb23(37)=2.0_ki*spbe7k1
      abb23(40)=abb23(37)*abb23(50)
      abb23(23)=-abb23(23)+abb23(40)
      abb23(15)=abb23(15)*spak1k4*abb23(23)
      abb23(23)=spbl5k1*spak1k4
      abb23(40)=abb23(23)*abb23(38)
      abb23(51)=spbl6k1*spak1k4
      abb23(55)=abb23(51)*abb23(49)
      abb23(40)=abb23(40)+abb23(55)
      abb23(55)=abb23(26)*abb23(14)
      abb23(56)=abb23(5)*spbk3k1
      abb23(57)=abb23(56)*abb23(55)
      abb23(40)=abb23(40)*abb23(57)
      abb23(58)=abb23(41)*spbl5k3
      abb23(59)=abb23(24)*spbl6k3
      abb23(58)=abb23(58)+abb23(59)
      abb23(21)=abb23(57)*abb23(21)
      abb23(57)=abb23(21)*abb23(58)
      abb23(40)=abb23(40)-abb23(57)
      abb23(59)=2.0_ki*abb23(11)
      abb23(60)=abb23(59)*c4
      abb23(40)=abb23(40)*abb23(60)
      abb23(61)=abb23(16)*abb23(23)
      abb23(62)=abb23(34)*spbl5k3
      abb23(61)=abb23(62)-abb23(61)
      abb23(46)=abb23(46)*spak2l5
      abb23(61)=abb23(61)*abb23(46)
      abb23(16)=abb23(16)*abb23(51)
      abb23(62)=abb23(34)*spbl6k3
      abb23(16)=abb23(62)-abb23(16)
      abb23(45)=abb23(45)*spak2l6
      abb23(16)=abb23(16)*abb23(45)
      abb23(51)=-abb23(24)*abb23(51)
      abb23(23)=-abb23(41)*abb23(23)
      abb23(23)=abb23(51)+abb23(23)
      abb23(51)=abb23(14)*c3
      abb23(56)=abb23(44)*abb23(51)*abb23(56)
      abb23(23)=abb23(56)*abb23(23)
      abb23(56)=-spak3k4*abb23(56)
      abb23(62)=abb23(56)*abb23(58)
      abb23(23)=-abb23(62)+abb23(23)
      abb23(23)=abb23(23)*abb23(59)
      abb23(13)=abb23(13)+abb23(61)-abb23(23)-abb23(28)-abb23(40)+abb23(16)+abb&
      &23(29)+abb23(18)+abb23(15)
      abb23(15)=abb23(54)*abb23(53)
      abb23(16)=abb23(62)*abb23(59)
      abb23(18)=abb23(45)*abb23(34)
      abb23(23)=spbl6k3*abb23(18)
      abb23(29)=abb23(46)*abb23(34)
      abb23(34)=spbl5k3*abb23(29)
      abb23(40)=abb23(57)*abb23(60)
      abb23(15)=abb23(40)+abb23(34)+abb23(23)+abb23(16)+abb23(15)-abb23(28)
      abb23(15)=4.0_ki*abb23(15)
      abb23(16)=-2.0_ki*abb23(13)
      abb23(17)=abb23(18)-abb23(17)
      abb23(18)=abb23(52)*abb23(53)
      abb23(23)=abb23(56)*abb23(59)
      abb23(28)=abb23(24)*abb23(23)
      abb23(18)=abb23(28)+abb23(18)+abb23(17)
      abb23(18)=spbl6k4*abb23(18)
      abb23(19)=abb23(29)-abb23(19)
      abb23(28)=abb23(43)*abb23(53)
      abb23(23)=abb23(41)*abb23(23)
      abb23(23)=abb23(23)+abb23(28)+abb23(19)
      abb23(23)=spbl5k4*abb23(23)
      abb23(28)=spbl6k4*abb23(24)
      abb23(29)=spbl5k4*abb23(41)
      abb23(28)=abb23(28)+abb23(29)
      abb23(29)=2.0_ki*c4
      abb23(29)=abb23(29)*abb23(11)
      abb23(28)=abb23(21)*abb23(28)*abb23(29)
      abb23(34)=-spbe7k4*abb23(36)
      abb23(40)=spbk7k4*abb23(48)
      abb23(18)=abb23(40)+abb23(34)+abb23(28)+abb23(23)+abb23(18)
      abb23(18)=2.0_ki*abb23(18)
      abb23(23)=abb23(33)*abb23(14)*spak2k7
      abb23(25)=-abb23(25)*abb23(23)
      abb23(28)=-abb23(14)*abb23(33)
      abb23(20)=-abb23(20)*abb23(28)
      abb23(20)=abb23(25)+abb23(20)
      abb23(20)=abb23(22)*abb23(4)*abb23(20)
      abb23(22)=abb23(4)*abb23(55)
      abb23(25)=-abb23(22)*abb23(32)
      abb23(32)=abb23(5)*abb23(4)
      abb23(34)=abb23(32)*c1
      abb23(28)=-abb23(28)*abb23(34)
      abb23(32)=abb23(51)*abb23(32)
      abb23(40)=-abb23(32)*abb23(33)
      abb23(28)=abb23(28)+abb23(40)
      abb23(40)=abb23(28)*spbe7l5
      abb23(45)=abb23(45)*abb23(28)
      abb23(20)=-abb23(45)+abb23(20)+abb23(25)-abb23(40)
      abb23(25)=-spbl6k1*abb23(20)
      abb23(40)=-abb23(41)*abb23(44)
      abb23(33)=-spbe7l6*abb23(33)
      abb23(33)=abb23(33)+abb23(40)
      abb23(33)=abb23(39)*abb23(33)*abb23(51)*abb23(4)
      abb23(22)=-abb23(22)*abb23(42)
      abb23(39)=abb23(28)*spbe7l6
      abb23(28)=abb23(46)*abb23(28)
      abb23(22)=-abb23(28)+abb23(33)-abb23(22)-abb23(39)
      abb23(28)=-spbl5k1*abb23(22)
      abb23(27)=-abb23(12)*abb23(27)
      abb23(33)=abb23(12)*abb23(26)
      abb23(31)=abb23(33)*abb23(31)
      abb23(27)=abb23(27)-abb23(31)
      abb23(31)=-spbl6k1*abb23(27)
      abb23(12)=-abb23(12)*abb23(35)
      abb23(30)=abb23(33)*abb23(30)
      abb23(12)=abb23(12)+abb23(30)
      abb23(30)=-spbl5k1*abb23(12)
      abb23(30)=abb23(31)+abb23(30)
      abb23(30)=abb23(30)*abb23(53)
      abb23(14)=abb23(14)*abb23(5)
      abb23(31)=-abb23(59)*abb23(44)*abb23(14)*c3
      abb23(33)=abb23(41)*spbl5k1
      abb23(35)=abb23(24)*spbl6k1
      abb23(33)=abb23(33)+abb23(35)
      abb23(35)=-abb23(33)*abb23(31)
      abb23(14)=abb23(14)*abb23(26)
      abb23(26)=abb23(14)*abb23(49)
      abb23(39)=-spbl6k1*abb23(26)
      abb23(14)=abb23(14)*abb23(38)
      abb23(38)=-spbl5k1*abb23(14)
      abb23(38)=abb23(39)+abb23(38)
      abb23(38)=abb23(38)*abb23(60)
      abb23(32)=-abb23(32)*abb23(44)
      abb23(23)=-abb23(23)*abb23(34)
      abb23(23)=abb23(23)+abb23(32)
      abb23(32)=abb23(23)*abb23(50)
      abb23(34)=-abb23(32)*abb23(37)
      abb23(23)=abb23(23)*abb23(47)
      abb23(37)=spbk7k1*abb23(23)
      abb23(25)=abb23(37)+abb23(34)+abb23(38)+abb23(35)+abb23(30)+abb23(28)+abb&
      &23(25)
      abb23(25)=4.0_ki*abb23(25)
      abb23(28)=abb23(27)*abb23(53)
      abb23(24)=abb23(24)*abb23(31)
      abb23(24)=abb23(24)+abb23(28)+abb23(20)
      abb23(24)=spbl6k4*abb23(24)
      abb23(28)=abb23(12)*abb23(53)
      abb23(30)=abb23(41)*abb23(31)
      abb23(28)=abb23(30)+abb23(28)+abb23(22)
      abb23(28)=spbl5k4*abb23(28)
      abb23(30)=spbl6k4*abb23(26)
      abb23(34)=spbl5k4*abb23(14)
      abb23(30)=abb23(30)+abb23(34)
      abb23(29)=abb23(30)*abb23(29)
      abb23(30)=2.0_ki*abb23(32)
      abb23(32)=spbe7k4*abb23(30)
      abb23(34)=-spbk7k4*abb23(23)
      abb23(24)=abb23(34)+abb23(32)+abb23(29)+abb23(28)+abb23(24)
      abb23(24)=2.0_ki*abb23(24)
      abb23(20)=spbl6k3*abb23(20)
      abb23(22)=spbl5k3*abb23(22)
      abb23(27)=spbl6k3*abb23(27)
      abb23(12)=spbl5k3*abb23(12)
      abb23(12)=abb23(27)+abb23(12)
      abb23(12)=abb23(12)*abb23(53)
      abb23(27)=abb23(58)*abb23(31)
      abb23(26)=spbl6k3*abb23(26)
      abb23(14)=spbl5k3*abb23(14)
      abb23(14)=abb23(26)+abb23(14)
      abb23(14)=abb23(14)*abb23(60)
      abb23(26)=spbe7k3*abb23(30)
      abb23(23)=-spbk7k3*abb23(23)
      abb23(12)=abb23(23)+abb23(26)+abb23(14)+abb23(27)+abb23(12)+abb23(22)+abb&
      &23(20)
      abb23(12)=2.0_ki*abb23(12)
      abb23(14)=-spbl6k1*abb23(17)
      abb23(17)=-spbl5k1*abb23(19)
      abb23(19)=-spbl6k1*abb23(52)
      abb23(20)=-spbl5k1*abb23(43)
      abb23(19)=abb23(19)+abb23(20)
      abb23(19)=abb23(19)*abb23(53)
      abb23(20)=-abb23(56)*abb23(33)*abb23(59)
      abb23(21)=-abb23(60)*abb23(21)*abb23(33)
      abb23(22)=spbe7k1*abb23(36)
      abb23(23)=-spbk7k1*abb23(48)
      abb23(14)=abb23(23)+abb23(22)+abb23(21)+abb23(20)+abb23(19)+abb23(17)+abb&
      &23(14)
      abb23(14)=2.0_ki*abb23(14)
      R2d23=abb23(13)
      rat2 = rat2 + R2d23
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='23' value='", &
          & R2d23, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd23h3