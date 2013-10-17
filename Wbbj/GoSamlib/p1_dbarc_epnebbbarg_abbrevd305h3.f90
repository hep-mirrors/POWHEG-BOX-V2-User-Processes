module     p1_dbarc_epnebbbarg_abbrevd305h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(64), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=spak2l5**(-1)
      abb305(6)=spak2l6**(-1)
      abb305(7)=c1+c3
      abb305(8)=mB**2
      abb305(9)=TR*gW
      abb305(9)=abb305(9)**2
      abb305(10)=abb305(9)*abb305(4)
      abb305(11)=abb305(7)*abb305(5)*abb305(8)*abb305(10)
      abb305(12)=c2*abb305(4)**2
      abb305(13)=abb305(12)*abb305(5)
      abb305(14)=abb305(9)*abb305(8)*abb305(13)
      abb305(11)=abb305(11)-abb305(14)
      abb305(14)=CVDC*i_*spak1k4*abb305(2)*abb305(1)
      abb305(15)=abb305(14)*spbk4k3
      abb305(16)=-abb305(3)*abb305(15)*abb305(11)
      abb305(17)=-abb305(7)*abb305(15)*abb305(10)
      abb305(18)=abb305(12)*abb305(9)
      abb305(15)=abb305(18)*abb305(15)
      abb305(15)=abb305(15)+abb305(17)
      abb305(17)=spbl5k2*abb305(3)
      abb305(19)=abb305(15)*abb305(17)
      abb305(16)=abb305(16)-abb305(19)
      abb305(19)=spak4k7*spbk7e7
      abb305(20)=abb305(16)*abb305(19)
      abb305(21)=abb305(14)*spbk3k1
      abb305(11)=-abb305(3)*abb305(21)*abb305(11)
      abb305(22)=-abb305(7)*abb305(21)*abb305(10)
      abb305(21)=abb305(18)*abb305(21)
      abb305(21)=abb305(21)+abb305(22)
      abb305(22)=abb305(21)*abb305(17)
      abb305(11)=abb305(11)-abb305(22)
      abb305(22)=spak1k7*spbk7e7
      abb305(23)=abb305(11)*abb305(22)
      abb305(20)=abb305(20)+abb305(23)
      abb305(20)=spak2e7*spbl6k2*abb305(20)
      abb305(23)=abb305(21)*spbl6l5
      abb305(24)=spbk7e7*abb305(3)
      abb305(25)=abb305(24)*spak1k7
      abb305(26)=abb305(25)*abb305(23)
      abb305(27)=abb305(15)*spbl6l5
      abb305(28)=abb305(24)*spak4k7
      abb305(29)=abb305(28)*abb305(27)
      abb305(26)=abb305(26)+abb305(29)
      abb305(29)=spbl5k2*abb305(26)
      abb305(9)=abb305(14)*abb305(9)*mB
      abb305(30)=abb305(9)*abb305(4)
      abb305(31)=abb305(30)*abb305(6)
      abb305(32)=spbk3k1*abb305(7)
      abb305(33)=abb305(31)*abb305(32)
      abb305(34)=abb305(12)*abb305(9)*abb305(6)
      abb305(35)=abb305(34)*spbk3k1
      abb305(33)=abb305(33)-abb305(35)
      abb305(35)=abb305(33)*spbl5k2
      abb305(36)=abb305(35)*spak1k2
      abb305(37)=spbk4k3*abb305(7)
      abb305(31)=abb305(31)*abb305(37)
      abb305(34)=abb305(34)*spbk4k3
      abb305(31)=abb305(31)-abb305(34)
      abb305(34)=abb305(31)*spbl5k2
      abb305(38)=abb305(34)*spak2k4
      abb305(36)=abb305(36)-abb305(38)
      abb305(38)=abb305(36)*spbe7l5
      abb305(39)=abb305(3)**2
      abb305(40)=abb305(39)*abb305(38)
      abb305(29)=abb305(40)+abb305(29)
      abb305(29)=spal5e7*abb305(29)
      abb305(7)=abb305(30)*abb305(7)
      abb305(30)=spbk4k3*abb305(7)
      abb305(40)=abb305(9)*spbk4k3
      abb305(41)=abb305(12)*abb305(40)
      abb305(30)=abb305(30)-abb305(41)
      abb305(41)=spak4e7*abb305(30)
      abb305(42)=spbk3k1*abb305(7)
      abb305(9)=abb305(9)*spbk3k1
      abb305(12)=abb305(12)*abb305(9)
      abb305(12)=abb305(42)-abb305(12)
      abb305(42)=spak1e7*abb305(12)
      abb305(41)=abb305(41)+abb305(42)
      abb305(41)=abb305(41)*spbl6l5*spbe7k2
      abb305(42)=-abb305(39)*abb305(41)
      abb305(14)=abb305(14)*abb305(6)
      abb305(43)=abb305(10)*abb305(8)*abb305(14)
      abb305(44)=abb305(37)*abb305(43)
      abb305(45)=abb305(18)*abb305(8)
      abb305(46)=abb305(14)*abb305(45)
      abb305(47)=abb305(46)*spbk4k3
      abb305(44)=abb305(44)-abb305(47)
      abb305(44)=abb305(44)*spak2k4
      abb305(43)=abb305(32)*abb305(43)
      abb305(46)=abb305(46)*spbk3k1
      abb305(43)=abb305(43)-abb305(46)
      abb305(43)=abb305(43)*spak1k2
      abb305(43)=abb305(44)-abb305(43)
      abb305(44)=spae7k7*abb305(3)
      abb305(46)=spbk7l5*spbe7k2
      abb305(47)=abb305(46)*abb305(43)*abb305(44)
      abb305(20)=abb305(47)+abb305(29)+abb305(42)+abb305(20)
      abb305(20)=4.0_ki*abb305(20)
      abb305(29)=mB**3
      abb305(14)=abb305(14)*abb305(5)
      abb305(18)=abb305(29)*abb305(18)*abb305(14)
      abb305(42)=abb305(18)*spbk3k1
      abb305(10)=abb305(14)*abb305(10)
      abb305(29)=abb305(29)*abb305(10)
      abb305(47)=abb305(29)*abb305(32)
      abb305(42)=-abb305(35)-abb305(42)+abb305(47)
      abb305(47)=abb305(42)*spak1k2
      abb305(18)=abb305(18)*spbk4k3
      abb305(29)=abb305(29)*abb305(37)
      abb305(18)=-abb305(34)-abb305(18)+abb305(29)
      abb305(29)=abb305(18)*spak2k4
      abb305(29)=abb305(47)-abb305(29)
      abb305(47)=-es12+es712-es71
      abb305(29)=abb305(29)*abb305(47)
      abb305(47)=spak4l5*abb305(27)
      abb305(48)=spak1l5*abb305(23)
      abb305(43)=abb305(48)+abb305(47)-abb305(43)
      abb305(17)=abb305(17)*abb305(43)
      abb305(16)=-spak2k4*abb305(16)
      abb305(11)=spak1k2*abb305(11)
      abb305(11)=abb305(16)+abb305(11)
      abb305(11)=spbl6k2*abb305(11)
      abb305(16)=spak4k7*abb305(30)
      abb305(43)=spak1k7*abb305(12)
      abb305(16)=abb305(16)+abb305(43)
      abb305(16)=spbk7k2*spbl6l5*abb305(16)
      abb305(36)=-spal5k7*spbk7l5*abb305(36)
      abb305(11)=abb305(36)+abb305(16)+abb305(11)+abb305(17)+abb305(29)
      abb305(11)=8.0_ki*abb305(11)
      abb305(16)=spal5e7*abb305(38)
      abb305(16)=abb305(16)-abb305(41)
      abb305(17)=8.0_ki*abb305(16)
      abb305(29)=abb305(18)*abb305(19)
      abb305(36)=abb305(42)*abb305(22)
      abb305(29)=abb305(29)+abb305(36)
      abb305(29)=spak2e7*abb305(29)
      abb305(36)=-abb305(7)*abb305(5)*spbk4k3
      abb305(38)=abb305(13)*abb305(40)
      abb305(36)=abb305(38)+abb305(36)
      abb305(38)=abb305(36)*spak4e7
      abb305(7)=-abb305(7)*abb305(5)*spbk3k1
      abb305(9)=abb305(13)*abb305(9)
      abb305(7)=abb305(9)+abb305(7)
      abb305(9)=abb305(7)*spak1e7
      abb305(9)=abb305(38)+abb305(9)
      abb305(13)=abb305(9)*spbe7l6
      abb305(38)=-abb305(39)*abb305(13)
      abb305(29)=abb305(38)+abb305(29)
      abb305(29)=8.0_ki*abb305(29)
      abb305(8)=abb305(10)*abb305(8)
      abb305(10)=abb305(8)*abb305(37)
      abb305(14)=abb305(14)*abb305(45)
      abb305(37)=abb305(14)*spbk4k3
      abb305(10)=abb305(10)-abb305(37)
      abb305(37)=-abb305(3)*abb305(10)
      abb305(37)=abb305(37)-abb305(18)
      abb305(37)=spak2k4*abb305(37)
      abb305(8)=abb305(8)*abb305(32)
      abb305(14)=abb305(14)*spbk3k1
      abb305(8)=abb305(8)-abb305(14)
      abb305(14)=abb305(8)*abb305(3)
      abb305(14)=abb305(14)+abb305(42)
      abb305(14)=spak1k2*abb305(14)
      abb305(32)=abb305(36)*spak4k7
      abb305(38)=abb305(7)*spak1k7
      abb305(32)=abb305(32)+abb305(38)
      abb305(38)=spbk7l6*abb305(32)
      abb305(14)=abb305(38)+abb305(37)+abb305(14)
      abb305(14)=16.0_ki*abb305(14)
      abb305(37)=-16.0_ki*abb305(13)
      abb305(16)=-4.0_ki*abb305(16)
      abb305(13)=8.0_ki*abb305(13)
      abb305(38)=abb305(36)*abb305(19)
      abb305(40)=abb305(7)*abb305(22)
      abb305(38)=abb305(38)+abb305(40)
      abb305(38)=8.0_ki*abb305(38)
      abb305(28)=abb305(15)*abb305(28)
      abb305(25)=abb305(21)*abb305(25)
      abb305(25)=abb305(25)+abb305(28)
      abb305(25)=spbl6k2*abb305(25)
      abb305(28)=abb305(31)*spak2k4
      abb305(40)=abb305(33)*spak1k2
      abb305(28)=abb305(28)-abb305(40)
      abb305(40)=abb305(28)*abb305(39)
      abb305(41)=-spbe7k2*abb305(40)
      abb305(25)=abb305(41)+abb305(25)
      abb305(25)=4.0_ki*abb305(25)
      abb305(41)=8.0_ki*abb305(28)
      abb305(43)=-spbe7k2*abb305(41)
      abb305(45)=abb305(22)*abb305(33)
      abb305(47)=abb305(19)*abb305(31)
      abb305(45)=abb305(45)+abb305(47)
      abb305(47)=8.0_ki*abb305(45)
      abb305(28)=4.0_ki*abb305(28)
      abb305(48)=spbe7k2*abb305(28)
      abb305(49)=spbk7l6*spae7k7
      abb305(50)=abb305(49)*abb305(36)
      abb305(51)=-8.0_ki*abb305(50)
      abb305(40)=spbe7l5*abb305(40)
      abb305(8)=abb305(8)*spak1k2
      abb305(10)=abb305(10)*spak2k4
      abb305(8)=abb305(8)-abb305(10)
      abb305(10)=abb305(24)*abb305(8)
      abb305(24)=-spak2k7*abb305(10)
      abb305(24)=abb305(24)+abb305(40)-abb305(26)
      abb305(24)=4.0_ki*abb305(24)
      abb305(26)=spbe7l5*abb305(41)
      abb305(28)=-spbe7l5*abb305(28)
      abb305(40)=spbl6k2*abb305(9)
      abb305(39)=-abb305(39)*abb305(40)
      abb305(8)=spbk7k2*abb305(8)*abb305(44)
      abb305(8)=abb305(8)+abb305(39)
      abb305(8)=4.0_ki*abb305(8)
      abb305(39)=-8.0_ki*abb305(40)
      abb305(40)=4.0_ki*abb305(40)
      abb305(44)=abb305(49)*abb305(7)
      abb305(52)=-8.0_ki*abb305(44)
      abb305(9)=-8.0_ki*spbk7e7*abb305(9)
      abb305(53)=spbk7k2*abb305(41)
      abb305(10)=4.0_ki*spak2e7*abb305(10)
      abb305(41)=-spbk7l5*abb305(41)
      abb305(54)=4.0_ki*spae7k7
      abb305(46)=abb305(46)*abb305(54)
      abb305(55)=-abb305(30)*abb305(46)
      abb305(56)=8.0_ki*spbl5k2
      abb305(57)=abb305(30)*abb305(56)
      abb305(54)=abb305(54)*spbk7k2
      abb305(58)=-abb305(36)*abb305(54)
      abb305(59)=spak2k7*spbk7e7
      abb305(60)=abb305(59)*spal5e7
      abb305(61)=-abb305(34)*abb305(60)
      abb305(49)=abb305(49)*spbe7k2
      abb305(62)=abb305(30)*abb305(49)
      abb305(61)=abb305(61)+abb305(62)
      abb305(61)=4.0_ki*abb305(61)
      abb305(15)=-abb305(3)*abb305(15)
      abb305(15)=abb305(15)-abb305(30)
      abb305(15)=spbl6k2*abb305(15)
      abb305(30)=-spak2l5*abb305(34)
      abb305(15)=abb305(15)+abb305(30)
      abb305(15)=8.0_ki*abb305(15)
      abb305(30)=-32.0_ki*abb305(31)
      abb305(59)=4.0_ki*abb305(59)
      abb305(62)=abb305(59)*abb305(31)
      abb305(63)=abb305(59)*spak2e7
      abb305(18)=-abb305(18)*abb305(63)
      abb305(64)=8.0_ki*abb305(3)
      abb305(27)=abb305(27)*abb305(64)
      abb305(50)=4.0_ki*abb305(50)
      abb305(32)=8.0_ki*spbl6k2*abb305(32)
      abb305(36)=8.0_ki*abb305(36)
      abb305(19)=abb305(34)*abb305(19)
      abb305(22)=abb305(35)*abb305(22)
      abb305(19)=abb305(19)+abb305(22)
      abb305(19)=4.0_ki*spal5e7*abb305(19)
      abb305(22)=spak4l5*abb305(34)
      abb305(34)=spak1l5*abb305(35)
      abb305(22)=abb305(22)+abb305(34)
      abb305(22)=8.0_ki*abb305(22)
      abb305(34)=-4.0_ki*abb305(45)
      abb305(31)=16.0_ki*abb305(31)
      abb305(45)=-abb305(12)*abb305(46)
      abb305(46)=abb305(12)*abb305(56)
      abb305(54)=-abb305(7)*abb305(54)
      abb305(56)=-abb305(35)*abb305(60)
      abb305(49)=abb305(12)*abb305(49)
      abb305(49)=abb305(56)+abb305(49)
      abb305(49)=4.0_ki*abb305(49)
      abb305(21)=-abb305(3)*abb305(21)
      abb305(12)=abb305(21)-abb305(12)
      abb305(12)=spbl6k2*abb305(12)
      abb305(21)=-spak2l5*abb305(35)
      abb305(12)=abb305(12)+abb305(21)
      abb305(12)=8.0_ki*abb305(12)
      abb305(21)=-32.0_ki*abb305(33)
      abb305(35)=abb305(59)*abb305(33)
      abb305(42)=-abb305(42)*abb305(63)
      abb305(23)=abb305(23)*abb305(64)
      abb305(44)=4.0_ki*abb305(44)
      abb305(7)=8.0_ki*abb305(7)
      abb305(33)=16.0_ki*abb305(33)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd305h3