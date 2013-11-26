module     p1_dbarc_epnebbbarg_abbrevd107h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(57), public :: abb107
   complex(ki), public :: R2d107
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
      abb107(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb107(2)=sqrt(mB**2)
      abb107(3)=NC**(-1)
      abb107(4)=es234**(-1)
      abb107(5)=es71**(-1)
      abb107(6)=spak2l5**(-1)
      abb107(7)=spbl5k2**(-1)
      abb107(8)=spbl6k2**(-1)
      abb107(9)=abb107(2)*spak3k4
      abb107(10)=mB*spbk3k2
      abb107(11)=abb107(9)*abb107(10)**2
      abb107(12)=2.0_ki*c3
      abb107(13)=abb107(12)*abb107(7)
      abb107(14)=TR*gW
      abb107(14)=CVDC*i_*spak1e7*abb107(5)*abb107(4)*abb107(1)*abb107(14)**2
      abb107(15)=abb107(14)*abb107(3)
      abb107(16)=abb107(13)*abb107(15)
      abb107(17)=abb107(16)*spbe7k1
      abb107(18)=abb107(11)*abb107(17)
      abb107(19)=abb107(3)**2
      abb107(19)=abb107(19)+1.0_ki
      abb107(20)=abb107(14)*abb107(19)
      abb107(21)=abb107(20)*abb107(11)
      abb107(22)=spbe7k1*c4
      abb107(23)=abb107(22)*abb107(7)
      abb107(24)=abb107(21)*abb107(23)
      abb107(18)=abb107(18)-abb107(24)
      abb107(24)=abb107(18)*abb107(8)
      abb107(25)=-spbk7k2*abb107(24)
      abb107(26)=abb107(16)*spbk7e7
      abb107(27)=abb107(11)*abb107(26)
      abb107(28)=spbk7e7*c4
      abb107(29)=abb107(28)*abb107(7)
      abb107(30)=abb107(21)*abb107(29)
      abb107(27)=abb107(27)-abb107(30)
      abb107(30)=abb107(27)*abb107(8)
      abb107(31)=spbk2k1*abb107(30)
      abb107(25)=abb107(25)+abb107(31)
      abb107(25)=spak1k7*abb107(25)
      abb107(27)=-spal5k7*abb107(27)
      abb107(18)=spak1l5*abb107(18)
      abb107(18)=abb107(27)+abb107(18)
      abb107(18)=spak2l6*abb107(6)*abb107(18)
      abb107(27)=abb107(3)*spbk3k2
      abb107(31)=abb107(9)*abb107(27)
      abb107(32)=abb107(12)*abb107(31)
      abb107(33)=abb107(14)*spbe7k1
      abb107(34)=abb107(32)*abb107(33)
      abb107(35)=spbk3k2*abb107(20)
      abb107(9)=abb107(35)*abb107(9)
      abb107(36)=abb107(9)*abb107(22)
      abb107(34)=abb107(34)-abb107(36)
      abb107(34)=abb107(34)*spak1l5
      abb107(37)=abb107(14)*spbk7e7
      abb107(32)=abb107(32)*abb107(37)
      abb107(9)=abb107(9)*abb107(28)
      abb107(32)=abb107(32)-abb107(9)
      abb107(32)=abb107(32)*spal5k7
      abb107(32)=abb107(34)-abb107(32)
      abb107(34)=spbk7k3*spal6k7
      abb107(38)=-spbl5k3*spal5l6
      abb107(39)=-spbk3k1*spak1l6
      abb107(34)=abb107(39)+abb107(38)+abb107(34)
      abb107(32)=abb107(32)*abb107(34)
      abb107(34)=abb107(12)*abb107(2)
      abb107(38)=abb107(34)*abb107(27)
      abb107(39)=abb107(38)*abb107(33)
      abb107(35)=abb107(35)*abb107(2)
      abb107(40)=abb107(35)*abb107(22)
      abb107(39)=abb107(39)-abb107(40)
      abb107(39)=abb107(39)*spak1l5
      abb107(38)=abb107(38)*abb107(37)
      abb107(35)=abb107(35)*abb107(28)
      abb107(38)=abb107(38)-abb107(35)
      abb107(38)=abb107(38)*spal5k7
      abb107(38)=abb107(39)-abb107(38)
      abb107(39)=-spbk7k2*spal6k7
      abb107(41)=spbk2k1*spak1l6
      abb107(42)=spbl5k2*spal5l6
      abb107(39)=abb107(42)+abb107(41)+abb107(39)
      abb107(39)=abb107(39)*abb107(38)*spak2k4
      abb107(41)=-abb107(28)*abb107(21)
      abb107(42)=abb107(15)*abb107(12)
      abb107(11)=abb107(42)*abb107(11)
      abb107(43)=spbk7e7*abb107(11)
      abb107(41)=abb107(41)+abb107(43)
      abb107(43)=spal5k7*abb107(8)
      abb107(41)=abb107(41)*abb107(43)
      abb107(21)=abb107(22)*abb107(21)
      abb107(11)=-spbe7k1*abb107(11)
      abb107(11)=abb107(21)+abb107(11)
      abb107(21)=spak1l5*abb107(8)
      abb107(11)=abb107(11)*abb107(21)
      abb107(11)=abb107(18)+abb107(25)+abb107(41)+abb107(11)+abb107(39)+abb107(&
      &32)
      abb107(11)=4.0_ki*abb107(11)
      abb107(18)=abb107(38)*spak4l6
      abb107(25)=16.0_ki*abb107(18)
      abb107(32)=spbk3k2**2
      abb107(39)=abb107(32)*mB**3
      abb107(41)=abb107(20)*abb107(39)
      abb107(44)=-abb107(41)*abb107(29)
      abb107(26)=abb107(26)*abb107(39)
      abb107(26)=abb107(44)+abb107(26)
      abb107(26)=abb107(43)*abb107(26)
      abb107(41)=abb107(41)*abb107(23)
      abb107(17)=-abb107(17)*abb107(39)
      abb107(17)=abb107(41)+abb107(17)
      abb107(17)=abb107(21)*abb107(17)
      abb107(17)=abb107(26)+abb107(17)
      abb107(17)=abb107(6)*spak3k4*abb107(17)
      abb107(17)=2.0_ki*abb107(18)+abb107(17)
      abb107(17)=8.0_ki*abb107(17)
      abb107(18)=mB*abb107(20)
      abb107(26)=abb107(32)*spak3k4
      abb107(39)=abb107(18)*abb107(26)
      abb107(41)=-abb107(28)*abb107(39)
      abb107(44)=abb107(12)*spak3k4
      abb107(32)=mB*abb107(44)*abb107(32)
      abb107(45)=abb107(15)*spbk7e7
      abb107(46)=abb107(45)*abb107(32)
      abb107(41)=abb107(41)+abb107(46)
      abb107(41)=abb107(41)*abb107(43)
      abb107(46)=abb107(22)*abb107(39)
      abb107(15)=abb107(15)*spbe7k1
      abb107(32)=-abb107(15)*abb107(32)
      abb107(32)=abb107(46)+abb107(32)
      abb107(32)=abb107(32)*abb107(21)
      abb107(46)=-abb107(29)*abb107(39)
      abb107(16)=abb107(16)*mB
      abb107(47)=abb107(16)*spbk7e7
      abb107(48)=abb107(47)*abb107(26)
      abb107(46)=abb107(46)+abb107(48)
      abb107(46)=spal6k7*abb107(46)
      abb107(39)=abb107(23)*abb107(39)
      abb107(16)=abb107(16)*spbe7k1
      abb107(26)=-abb107(16)*abb107(26)
      abb107(26)=abb107(39)+abb107(26)
      abb107(26)=spak1l6*abb107(26)
      abb107(26)=abb107(26)+abb107(46)+abb107(41)+abb107(32)
      abb107(26)=4.0_ki*abb107(26)
      abb107(10)=abb107(10)*abb107(14)
      abb107(14)=abb107(10)*abb107(3)
      abb107(32)=abb107(14)*spbe7k1
      abb107(39)=abb107(44)*abb107(32)
      abb107(10)=abb107(10)*abb107(19)
      abb107(19)=abb107(10)*abb107(22)
      abb107(41)=abb107(19)*spak3k4
      abb107(39)=abb107(39)-abb107(41)
      abb107(46)=abb107(39)*abb107(21)
      abb107(48)=abb107(14)*spbk7e7
      abb107(44)=abb107(44)*abb107(48)
      abb107(49)=abb107(10)*abb107(28)
      abb107(50)=abb107(49)*spak3k4
      abb107(44)=abb107(44)-abb107(50)
      abb107(51)=abb107(44)*abb107(43)
      abb107(46)=abb107(46)-abb107(51)
      abb107(13)=abb107(13)*abb107(14)
      abb107(14)=abb107(13)*spbk7e7
      abb107(10)=abb107(10)*abb107(7)
      abb107(51)=abb107(10)*abb107(28)
      abb107(14)=abb107(14)-abb107(51)
      abb107(51)=-spak3k4*abb107(14)
      abb107(52)=abb107(51)*spal6k7
      abb107(13)=abb107(13)*spbe7k1
      abb107(10)=abb107(10)*abb107(22)
      abb107(10)=abb107(13)-abb107(10)
      abb107(13)=-spak3k4*abb107(10)
      abb107(53)=abb107(13)*spak1l6
      abb107(52)=abb107(46)+abb107(52)-abb107(53)
      abb107(52)=4.0_ki*abb107(52)
      abb107(53)=-spbk7k2*abb107(52)
      abb107(54)=abb107(14)*spal6k7
      abb107(55)=abb107(10)*spak1l6
      abb107(54)=abb107(54)-abb107(55)
      abb107(55)=abb107(54)*spak2k4
      abb107(56)=-spbk7k2*abb107(55)
      abb107(57)=spbk7k3*abb107(46)
      abb107(30)=abb107(57)-abb107(30)+abb107(56)
      abb107(30)=4.0_ki*abb107(30)
      abb107(56)=-spak3k4*abb107(48)
      abb107(57)=abb107(37)*abb107(31)
      abb107(56)=abb107(56)+abb107(57)
      abb107(56)=abb107(56)*abb107(12)
      abb107(9)=abb107(56)+abb107(50)-abb107(9)
      abb107(9)=spal5k7*abb107(9)
      abb107(50)=spak3k4*abb107(32)
      abb107(31)=-abb107(33)*abb107(31)
      abb107(31)=abb107(50)+abb107(31)
      abb107(31)=abb107(31)*abb107(12)
      abb107(31)=abb107(31)-abb107(41)+abb107(36)
      abb107(31)=spak1l5*abb107(31)
      abb107(13)=-spbk7k2*abb107(13)
      abb107(36)=spbk2k1*abb107(51)
      abb107(13)=abb107(13)+abb107(36)
      abb107(13)=spak1k7*abb107(13)
      abb107(9)=abb107(13)+abb107(9)+abb107(31)
      abb107(9)=4.0_ki*abb107(9)
      abb107(13)=abb107(27)*abb107(2)
      abb107(27)=-abb107(37)*abb107(13)
      abb107(27)=abb107(48)+abb107(27)
      abb107(27)=abb107(27)*abb107(12)
      abb107(27)=abb107(27)-abb107(49)+abb107(35)
      abb107(27)=spal5k7*abb107(27)
      abb107(13)=abb107(33)*abb107(13)
      abb107(13)=-abb107(32)+abb107(13)
      abb107(13)=abb107(13)*abb107(12)
      abb107(13)=abb107(13)+abb107(19)-abb107(40)
      abb107(13)=spak1l5*abb107(13)
      abb107(31)=-spbk7k2*abb107(10)
      abb107(33)=spbk2k1*abb107(14)
      abb107(31)=abb107(31)+abb107(33)
      abb107(31)=spak1k7*abb107(31)
      abb107(13)=abb107(31)+abb107(27)+abb107(13)
      abb107(13)=4.0_ki*spak2k4*abb107(13)
      abb107(27)=abb107(14)*spak4k7
      abb107(31)=abb107(10)*spak1k4
      abb107(27)=abb107(27)-abb107(31)
      abb107(27)=8.0_ki*abb107(27)
      abb107(31)=-spbl5k2*abb107(46)
      abb107(33)=spal6k7*abb107(44)
      abb107(35)=-spak1l6*abb107(39)
      abb107(31)=abb107(31)+abb107(33)+abb107(35)
      abb107(31)=4.0_ki*abb107(31)
      abb107(33)=abb107(48)*abb107(12)
      abb107(33)=abb107(33)-abb107(49)
      abb107(35)=-spal6k7*abb107(33)
      abb107(12)=abb107(32)*abb107(12)
      abb107(12)=abb107(12)-abb107(19)
      abb107(19)=spak1l6*abb107(12)
      abb107(19)=abb107(35)+abb107(19)
      abb107(19)=spak2k4*abb107(19)
      abb107(32)=spbl5k3*abb107(46)
      abb107(19)=abb107(32)+abb107(19)
      abb107(19)=4.0_ki*abb107(19)
      abb107(15)=abb107(15)*abb107(34)
      abb107(20)=abb107(20)*abb107(2)
      abb107(32)=abb107(20)*abb107(22)
      abb107(15)=abb107(15)-abb107(32)
      abb107(15)=abb107(15)*spak1l5
      abb107(32)=abb107(45)*abb107(34)
      abb107(20)=abb107(20)*abb107(28)
      abb107(20)=abb107(32)-abb107(20)
      abb107(20)=abb107(20)*spal5k7
      abb107(15)=abb107(15)-abb107(20)
      abb107(15)=abb107(15)*spak4l6
      abb107(20)=spbk4k2*abb107(15)
      abb107(32)=spak3l6*abb107(38)
      abb107(20)=abb107(20)+abb107(32)
      abb107(20)=8.0_ki*abb107(20)
      abb107(29)=abb107(18)*abb107(29)
      abb107(29)=abb107(29)-abb107(47)
      abb107(32)=abb107(29)*spak4k7
      abb107(23)=abb107(18)*abb107(23)
      abb107(16)=abb107(23)-abb107(16)
      abb107(23)=abb107(16)*spak1k4
      abb107(23)=abb107(32)-abb107(23)
      abb107(32)=-spbk4k2*abb107(23)
      abb107(34)=spak3k7*abb107(14)
      abb107(35)=-spak1k3*abb107(10)
      abb107(32)=abb107(35)+abb107(34)+abb107(32)
      abb107(32)=4.0_ki*abb107(32)
      abb107(15)=-spbk4k3*abb107(15)
      abb107(34)=-spak2l6*abb107(38)
      abb107(15)=abb107(15)+abb107(34)
      abb107(15)=8.0_ki*abb107(15)
      abb107(12)=abb107(12)*abb107(21)
      abb107(33)=abb107(33)*abb107(43)
      abb107(12)=abb107(12)-abb107(33)+abb107(54)
      abb107(33)=8.0_ki*abb107(12)
      abb107(23)=spbk4k3*abb107(23)
      abb107(14)=-spak2k7*abb107(14)
      abb107(10)=spak1k2*abb107(10)
      abb107(10)=abb107(10)+abb107(14)+abb107(23)
      abb107(10)=4.0_ki*abb107(10)
      abb107(14)=abb107(18)*abb107(22)
      abb107(22)=abb107(42)*mB
      abb107(23)=abb107(22)*spbe7k1
      abb107(14)=abb107(14)-abb107(23)
      abb107(14)=abb107(14)*abb107(21)
      abb107(18)=abb107(18)*abb107(28)
      abb107(21)=abb107(22)*spbk7e7
      abb107(18)=abb107(18)-abb107(21)
      abb107(18)=abb107(18)*abb107(43)
      abb107(21)=abb107(29)*spal6k7
      abb107(16)=abb107(16)*spak1l6
      abb107(14)=abb107(21)-abb107(16)+abb107(14)-abb107(18)
      abb107(14)=4.0_ki*abb107(14)
      abb107(16)=spbk4k2*abb107(14)
      abb107(14)=-spbk4k3*abb107(14)
      abb107(12)=-4.0_ki*abb107(12)
      abb107(18)=-spbk2k1*abb107(52)
      abb107(21)=-spbk2k1*abb107(55)
      abb107(22)=spbk3k1*abb107(46)
      abb107(21)=abb107(22)-abb107(24)+abb107(21)
      abb107(21)=4.0_ki*abb107(21)
      R2d107=0.0_ki
      rat2 = rat2 + R2d107
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='107' value='", &
          & R2d107, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd107h0
