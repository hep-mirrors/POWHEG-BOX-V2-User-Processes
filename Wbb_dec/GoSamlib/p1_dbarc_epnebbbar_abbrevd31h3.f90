module     p1_dbarc_epnebbbar_abbrevd31h3
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(71), public :: abb31
   complex(ki), public :: R2d31
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_color, only: TR
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      implicit none
      abb31(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb31(2)=NC**(-1)
      abb31(3)=es234**(-1)
      abb31(4)=spak2l5**(-1)
      abb31(5)=spak2l6**(-1)
      abb31(6)=spbl6k2**(-1)
      abb31(7)=sqrt(mB**2)
      abb31(8)=i_*CVDC
      abb31(9)=abb31(8)*abb31(1)
      abb31(10)=TR*gW
      abb31(10)=abb31(10)**2
      abb31(11)=abb31(10)*abb31(3)*abb31(9)
      abb31(12)=abb31(11)*spbk3k2
      abb31(13)=abb31(12)*c2
      abb31(14)=abb31(13)*NC
      abb31(15)=2.0_ki*abb31(2)
      abb31(13)=abb31(15)*abb31(13)
      abb31(16)=abb31(14)-abb31(13)
      abb31(17)=-spak1k2*abb31(16)
      abb31(18)=spak2k4*abb31(4)
      abb31(19)=abb31(18)*mB
      abb31(20)=abb31(17)*abb31(19)
      abb31(21)=c1*abb31(2)**2
      abb31(22)=abb31(21)*abb31(12)
      abb31(23)=mB*abb31(22)
      abb31(24)=abb31(23)*abb31(18)
      abb31(25)=abb31(24)*spak1k2
      abb31(20)=abb31(25)-abb31(20)
      abb31(20)=abb31(20)*spbl6k2
      abb31(25)=abb31(4)*mB
      abb31(26)=-abb31(25)*abb31(17)
      abb31(27)=abb31(23)*abb31(4)
      abb31(28)=abb31(27)*spak1k2
      abb31(26)=abb31(26)+abb31(28)
      abb31(28)=spbl6k3*spak3k4
      abb31(29)=abb31(26)*abb31(28)
      abb31(30)=abb31(5)*mB
      abb31(31)=abb31(30)*spak1k2
      abb31(32)=abb31(31)*abb31(16)
      abb31(33)=spak1k2*abb31(5)
      abb31(34)=abb31(23)*abb31(33)
      abb31(32)=abb31(34)+abb31(32)
      abb31(34)=abb31(32)*spak2k4
      abb31(35)=abb31(34)*spbl5k2
      abb31(20)=abb31(20)-abb31(29)+abb31(35)
      abb31(29)=spak1l6*abb31(20)
      abb31(15)=abb31(15)-NC
      abb31(35)=-abb31(15)*abb31(11)*c2
      abb31(36)=abb31(5)*abb31(35)
      abb31(37)=abb31(21)*abb31(5)
      abb31(38)=abb31(11)*abb31(37)
      abb31(36)=abb31(38)+abb31(36)
      abb31(39)=abb31(6)*spak3k4
      abb31(40)=mB**3
      abb31(41)=abb31(40)*abb31(4)
      abb31(42)=spak1k2*spbk3k2
      abb31(36)=abb31(39)*abb31(41)*abb31(36)*abb31(42)**2
      abb31(29)=abb31(36)+abb31(29)
      abb31(29)=spbl6k1*abb31(29)
      abb31(36)=abb31(18)*abb31(33)
      abb31(42)=mB**2
      abb31(43)=abb31(36)*abb31(42)
      abb31(44)=-abb31(43)*abb31(16)
      abb31(12)=abb31(12)*spak1k2
      abb31(45)=abb31(37)*abb31(12)
      abb31(46)=abb31(42)*abb31(18)
      abb31(47)=abb31(45)*abb31(46)
      abb31(44)=abb31(44)-abb31(47)
      abb31(47)=abb31(44)*abb31(7)
      abb31(48)=abb31(5)**2
      abb31(49)=abb31(48)*abb31(40)
      abb31(50)=abb31(49)*spak2k4
      abb31(51)=-abb31(50)*abb31(17)
      abb31(50)=abb31(50)*abb31(21)
      abb31(52)=abb31(50)*abb31(12)
      abb31(51)=abb31(51)+abb31(52)
      abb31(52)=spbl5k2*abb31(6)
      abb31(51)=abb31(51)*abb31(52)
      abb31(53)=-abb31(47)+abb31(51)
      abb31(53)=es12*abb31(53)
      abb31(54)=abb31(49)*abb31(17)
      abb31(55)=abb31(49)*abb31(21)
      abb31(56)=-abb31(12)*abb31(55)
      abb31(54)=abb31(56)+abb31(54)
      abb31(39)=es12*abb31(54)*abb31(39)
      abb31(54)=abb31(32)*spak3k4
      abb31(56)=-spbl6k1*spak1l6*abb31(54)
      abb31(39)=abb31(56)+abb31(39)
      abb31(39)=spbl5k3*abb31(39)
      abb31(22)=abb31(22)+abb31(16)
      abb31(56)=abb31(42)*abb31(4)
      abb31(57)=spbk3k1*spak3k4
      abb31(58)=-abb31(7)*abb31(57)*abb31(56)*spak1k2**2*abb31(5)*abb31(22)
      abb31(29)=abb31(58)+abb31(39)+abb31(29)+abb31(53)
      abb31(29)=4.0_ki*abb31(29)
      abb31(39)=spak4l6*spbl6l5
      abb31(53)=abb31(39)*abb31(32)
      abb31(58)=spbl6l5*abb31(7)
      abb31(59)=abb31(58)*spak1k4
      abb31(60)=abb31(22)*abb31(59)
      abb31(51)=abb31(51)+abb31(53)-abb31(60)
      abb31(53)=2.0_ki*abb31(7)
      abb31(44)=abb31(44)*abb31(53)
      abb31(60)=abb31(40)*abb31(45)*abb31(18)
      abb31(36)=abb31(36)*abb31(40)
      abb31(61)=abb31(16)*abb31(36)
      abb31(44)=abb31(44)+abb31(60)+abb31(61)-abb31(51)
      abb31(44)=8.0_ki*abb31(44)
      abb31(60)=abb31(41)*abb31(33)
      abb31(61)=-abb31(60)*abb31(16)
      abb31(62)=-abb31(41)*abb31(45)
      abb31(61)=abb31(62)+abb31(61)
      abb31(61)=abb31(6)*abb31(61)*abb31(28)
      abb31(47)=abb31(61)-abb31(47)+abb31(51)
      abb31(47)=8.0_ki*abb31(47)
      abb31(51)=-spbl5k3*abb31(54)
      abb31(20)=abb31(51)+abb31(20)
      abb31(20)=8.0_ki*abb31(20)
      abb31(51)=-abb31(32)*abb31(28)
      abb31(34)=spbl6k2*abb31(34)
      abb31(34)=abb31(51)+abb31(34)
      abb31(34)=4.0_ki*abb31(34)
      abb31(51)=-abb31(60)*abb31(35)
      abb31(54)=abb31(33)*abb31(56)
      abb31(60)=abb31(54)*abb31(35)
      abb31(61)=abb31(56)*spak1k2
      abb31(62)=abb31(38)*abb31(61)
      abb31(60)=abb31(62)+abb31(60)
      abb31(60)=abb31(60)*abb31(53)
      abb31(62)=abb31(11)*spak1k2
      abb31(63)=abb31(62)*abb31(55)
      abb31(64)=abb31(40)*spak1k2
      abb31(65)=-abb31(64)*abb31(35)
      abb31(48)=abb31(65)*abb31(48)
      abb31(63)=abb31(63)-abb31(48)
      abb31(63)=abb31(63)*abb31(52)
      abb31(66)=abb31(38)*abb31(64)
      abb31(67)=-abb31(4)*abb31(66)
      abb31(51)=abb31(63)+abb31(60)+abb31(67)+abb31(51)
      abb31(51)=es34*abb31(51)
      abb31(60)=c2*abb31(9)
      abb31(63)=-abb31(60)*abb31(15)
      abb31(67)=abb31(10)*abb31(5)
      abb31(61)=-abb31(63)*abb31(61)*abb31(67)
      abb31(68)=abb31(10)*spak1k2
      abb31(69)=abb31(68)*abb31(8)*abb31(5)
      abb31(70)=abb31(21)*abb31(1)
      abb31(71)=abb31(4)*abb31(70)
      abb31(42)=-abb31(42)*abb31(71)*abb31(69)
      abb31(42)=abb31(42)+abb31(61)
      abb31(42)=abb31(42)*abb31(53)
      abb31(61)=abb31(21)*abb31(11)
      abb31(61)=abb31(35)+abb31(61)
      abb31(59)=abb31(61)*abb31(59)
      abb31(31)=abb31(35)*abb31(31)
      abb31(11)=abb31(11)*mB
      abb31(61)=abb31(21)*abb31(11)
      abb31(33)=abb31(61)*abb31(33)
      abb31(31)=abb31(31)+abb31(33)
      abb31(31)=abb31(31)*abb31(39)
      abb31(31)=abb31(59)-abb31(31)
      abb31(33)=-spbk4k2*abb31(31)
      abb31(15)=abb31(15)*abb31(60)*abb31(4)
      abb31(39)=-abb31(64)*abb31(67)*abb31(15)
      abb31(41)=abb31(41)*abb31(70)*abb31(69)
      abb31(49)=-abb31(49)*abb31(63)
      abb31(9)=-abb31(55)*abb31(9)
      abb31(9)=abb31(9)+abb31(49)
      abb31(9)=abb31(52)*abb31(68)*abb31(9)
      abb31(49)=-spak1k3*abb31(22)*abb31(58)
      abb31(55)=spak3l6*spbl6l5*abb31(32)
      abb31(9)=abb31(55)+abb31(49)+abb31(33)+abb31(51)+abb31(9)+abb31(42)+abb31&
      &(41)+abb31(39)
      abb31(9)=4.0_ki*abb31(9)
      abb31(33)=-abb31(43)*abb31(35)
      abb31(38)=-spak1k2*abb31(46)*abb31(38)
      abb31(33)=abb31(38)+abb31(33)
      abb31(33)=abb31(33)*abb31(53)
      abb31(36)=abb31(36)*abb31(35)
      abb31(38)=-abb31(62)*abb31(50)
      abb31(39)=spak2k4*abb31(48)
      abb31(38)=abb31(38)+abb31(39)
      abb31(38)=abb31(38)*abb31(52)
      abb31(39)=abb31(18)*abb31(66)
      abb31(31)=abb31(38)+abb31(33)+abb31(39)+abb31(36)+abb31(31)
      abb31(31)=spbk4k3*abb31(31)
      abb31(33)=mB*abb31(17)
      abb31(12)=abb31(12)*abb31(21)
      abb31(12)=abb31(12)-abb31(17)
      abb31(12)=abb31(7)*abb31(12)
      abb31(17)=-spak1k2*abb31(23)
      abb31(12)=abb31(12)+abb31(17)+abb31(33)
      abb31(12)=spbl6l5*abb31(12)
      abb31(12)=abb31(12)+abb31(31)
      abb31(12)=4.0_ki*abb31(12)
      abb31(17)=-abb31(25)*abb31(16)
      abb31(17)=abb31(17)-abb31(27)
      abb31(27)=abb31(17)*abb31(28)
      abb31(31)=-abb31(19)*abb31(16)
      abb31(24)=abb31(31)-abb31(24)
      abb31(31)=-spbl6k2*abb31(24)
      abb31(27)=abb31(27)+abb31(31)
      abb31(27)=4.0_ki*spak1l6*abb31(27)
      abb31(21)=abb31(40)*abb31(62)*abb31(21)
      abb31(21)=abb31(21)-abb31(65)
      abb31(31)=4.0_ki*spak3k4
      abb31(33)=abb31(5)*spbk3k2
      abb31(21)=abb31(6)*abb31(31)*abb31(21)*abb31(33)**2
      abb31(23)=abb31(23)*abb31(5)
      abb31(13)=abb31(13)*abb31(30)
      abb31(14)=abb31(14)*abb31(30)
      abb31(13)=abb31(14)+abb31(23)-abb31(13)
      abb31(14)=abb31(13)*spak1k4
      abb31(14)=8.0_ki*abb31(14)
      abb31(23)=spak1k3*abb31(13)
      abb31(30)=abb31(30)*abb31(35)
      abb31(11)=abb31(37)*abb31(11)
      abb31(11)=abb31(11)+abb31(30)
      abb31(30)=abb31(11)*spak1k4
      abb31(33)=spbk4k2*abb31(30)
      abb31(23)=abb31(33)+abb31(23)
      abb31(23)=4.0_ki*abb31(23)
      abb31(30)=-spbk4k3*abb31(30)
      abb31(30)=abb31(30)-abb31(32)
      abb31(30)=4.0_ki*abb31(30)
      abb31(16)=abb31(54)*abb31(16)
      abb31(32)=abb31(45)*abb31(56)
      abb31(16)=abb31(32)+abb31(16)
      abb31(16)=abb31(7)*abb31(16)*abb31(31)
      abb31(32)=-es12*abb31(24)
      abb31(26)=-abb31(26)*abb31(57)
      abb31(26)=abb31(32)+abb31(26)
      abb31(26)=4.0_ki*abb31(26)
      abb31(32)=8.0_ki*abb31(24)
      abb31(8)=abb31(8)*mB
      abb31(33)=-abb31(10)*abb31(8)*abb31(71)
      abb31(25)=abb31(25)*abb31(35)
      abb31(36)=abb31(4)*abb31(61)
      abb31(25)=abb31(36)+abb31(25)
      abb31(25)=es34*abb31(25)
      abb31(10)=abb31(10)*mB
      abb31(15)=abb31(10)*abb31(15)
      abb31(15)=abb31(25)+abb31(33)+abb31(15)
      abb31(15)=4.0_ki*abb31(15)
      abb31(19)=-abb31(19)*abb31(35)
      abb31(18)=-abb31(18)*abb31(61)
      abb31(18)=abb31(18)+abb31(19)
      abb31(19)=4.0_ki*spbk4k3
      abb31(18)=abb31(18)*abb31(19)
      abb31(17)=abb31(17)*abb31(31)
      abb31(25)=-abb31(22)*abb31(28)
      abb31(22)=spbl6k2*spak2k4*abb31(22)
      abb31(22)=abb31(25)+abb31(22)
      abb31(22)=4.0_ki*abb31(7)*abb31(22)
      abb31(25)=spak2k4*abb31(13)
      abb31(28)=8.0_ki*abb31(25)
      abb31(33)=-16.0_ki*abb31(25)
      abb31(8)=abb31(8)*abb31(67)*abb31(70)
      abb31(35)=-es34*abb31(11)
      abb31(10)=abb31(10)*abb31(5)*abb31(63)
      abb31(8)=abb31(35)+abb31(8)+abb31(10)
      abb31(8)=4.0_ki*abb31(8)
      abb31(10)=abb31(19)*spak2k4*abb31(11)
      abb31(11)=abb31(13)*abb31(31)
      abb31(13)=-4.0_ki*abb31(24)
      abb31(19)=4.0_ki*abb31(25)
      R2d31=0.0_ki
      rat2 = rat2 + R2d31
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='31' value='", &
          & R2d31, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd31h3
