module     p1_dbarc_epnebbbarg_abbrevd16h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(51), public :: abb16
   complex(ki), public :: R2d16
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
      abb16(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb16(2)=es56**(-1)
      abb16(3)=es71**(-1)
      abb16(4)=spbl5k2**(-1)
      abb16(5)=spak2l6**(-1)
      abb16(6)=spak2l5**(-1)
      abb16(7)=spbl6k2**(-1)
      abb16(8)=TR*gW
      abb16(8)=CVDC*i_*spak1e7*abb16(3)*abb16(2)*abb16(1)*abb16(8)**2
      abb16(9)=c3*abb16(8)*NC
      abb16(8)=abb16(8)*c4
      abb16(8)=abb16(9)-abb16(8)
      abb16(9)=-spbe7k1*abb16(8)
      abb16(10)=spbk3k2**2
      abb16(11)=-abb16(10)*abb16(9)
      abb16(12)=spak1k2*spak3k4
      abb16(13)=abb16(11)*abb16(12)
      abb16(14)=mB**2
      abb16(15)=abb16(14)*abb16(5)
      abb16(16)=abb16(15)*abb16(4)
      abb16(17)=abb16(13)*abb16(16)
      abb16(8)=spbk7e7*abb16(8)
      abb16(18)=-spbk3k2*abb16(8)
      abb16(19)=spbl6k3*spak3k4
      abb16(20)=abb16(19)*abb16(18)
      abb16(21)=abb16(20)*spal5k7
      abb16(22)=-spbk3k2*abb16(9)
      abb16(23)=abb16(19)*abb16(22)
      abb16(24)=abb16(23)*spak1l5
      abb16(10)=-abb16(10)*abb16(8)
      abb16(25)=abb16(16)*spak2k7
      abb16(26)=abb16(25)*spak3k4
      abb16(27)=abb16(10)*abb16(26)
      abb16(17)=abb16(27)+abb16(17)+abb16(21)+abb16(24)
      abb16(21)=8.0_ki*abb16(17)
      abb16(24)=abb16(9)*spbl6k2
      abb16(27)=abb16(24)*spak1l6
      abb16(28)=abb16(8)*spbl6k2
      abb16(29)=abb16(28)*spal6k7
      abb16(27)=abb16(27)+abb16(29)
      abb16(29)=-spbl6k3*abb16(27)
      abb16(30)=abb16(18)*spbl6k2
      abb16(31)=3.0_ki*abb16(15)
      abb16(32)=-abb16(18)*abb16(31)
      abb16(32)=-abb16(30)+abb16(32)
      abb16(32)=spak2k7*abb16(32)
      abb16(33)=abb16(22)*spak1k2
      abb16(34)=abb16(18)*spak2k7
      abb16(34)=-abb16(34)-abb16(33)
      abb16(14)=abb16(6)*abb16(14)*abb16(4)
      abb16(34)=spbl6k2*abb16(34)*abb16(14)
      abb16(35)=abb16(24)*spak1l5
      abb16(36)=abb16(28)*spal5k7
      abb16(35)=abb16(35)+abb16(36)
      abb16(36)=-spbl5k3*abb16(35)
      abb16(37)=abb16(8)*spal5k7
      abb16(38)=abb16(9)*spak1l5
      abb16(37)=abb16(37)+abb16(38)
      abb16(38)=abb16(37)*spbl6k3
      abb16(39)=spbl5k2*abb16(38)
      abb16(40)=spak4k7*abb16(28)
      abb16(41)=spak1k4*abb16(24)
      abb16(40)=abb16(40)+abb16(41)
      abb16(40)=spbk4k3*abb16(40)
      abb16(41)=-spbl6k2-abb16(31)
      abb16(41)=abb16(41)*abb16(33)
      abb16(29)=abb16(40)+2.0_ki*abb16(39)+abb16(36)+abb16(34)+abb16(29)+abb16(&
      &32)+abb16(41)
      abb16(29)=spak4l5*abb16(29)
      abb16(32)=spbl6k3*abb16(35)
      abb16(34)=-abb16(25)*abb16(30)
      abb16(33)=abb16(33)*abb16(16)
      abb16(36)=-spbl6k2*abb16(33)
      abb16(32)=abb16(34)+abb16(36)+abb16(32)
      abb16(32)=spak4l6*abb16(32)
      abb16(34)=abb16(22)*spak1k4
      abb16(36)=abb16(18)*spak4k7
      abb16(34)=abb16(34)+abb16(36)
      abb16(36)=spak2l5*spbl6k2*abb16(34)
      abb16(32)=abb16(36)+abb16(32)
      abb16(17)=-abb16(17)+2.0_ki*abb16(32)+abb16(29)
      abb16(17)=2.0_ki*abb16(17)
      abb16(29)=abb16(16)*abb16(18)
      abb16(32)=spak4k7*abb16(29)
      abb16(36)=abb16(16)*abb16(22)
      abb16(39)=spak1k4*abb16(36)
      abb16(32)=abb16(32)+abb16(39)
      abb16(32)=8.0_ki*abb16(32)
      abb16(39)=4.0_ki*spak2l5
      abb16(40)=abb16(39)*spak3k4
      abb16(30)=abb16(30)*abb16(40)
      abb16(41)=8.0_ki*spak3k4
      abb16(29)=abb16(29)*abb16(41)
      abb16(42)=spak3k4*spbl6k3**2
      abb16(43)=abb16(42)*abb16(37)
      abb16(44)=-abb16(20)*abb16(25)
      abb16(45)=abb16(23)*spak1k2
      abb16(46)=-abb16(16)*abb16(45)
      abb16(43)=abb16(44)+abb16(46)+abb16(43)
      abb16(43)=4.0_ki*abb16(43)
      abb16(44)=spal5k7*abb16(18)
      abb16(46)=spak1l5*abb16(22)
      abb16(44)=abb16(44)+abb16(46)
      abb16(44)=spbl5k3*abb16(44)
      abb16(10)=abb16(10)*spak2k7
      abb16(11)=-spak1k2*abb16(11)
      abb16(11)=-abb16(10)+abb16(11)
      abb16(15)=abb16(15)*abb16(7)
      abb16(11)=abb16(11)*abb16(15)
      abb16(11)=abb16(11)+abb16(44)
      abb16(11)=spak3k4*abb16(11)
      abb16(10)=abb16(10)*spak3k4
      abb16(10)=abb16(10)+abb16(13)
      abb16(13)=abb16(14)+1.0_ki
      abb16(10)=-abb16(10)*abb16(13)
      abb16(44)=spal6k7*abb16(20)
      abb16(23)=spak1l6*abb16(23)
      abb16(10)=abb16(23)+abb16(44)+abb16(10)+abb16(11)
      abb16(10)=2.0_ki*abb16(10)
      abb16(11)=4.0_ki*abb16(34)
      abb16(23)=-2.0_ki*abb16(34)
      abb16(34)=4.0_ki*spak3k4
      abb16(44)=-abb16(18)*abb16(34)
      abb16(19)=abb16(19)*abb16(37)
      abb16(26)=-abb16(18)*abb16(26)
      abb16(12)=-abb16(12)*abb16(36)
      abb16(12)=abb16(26)+abb16(12)
      abb16(12)=2.0_ki*abb16(12)+abb16(19)
      abb16(12)=spbl5k3*abb16(12)
      abb16(19)=abb16(20)*spak2k7
      abb16(19)=abb16(19)+abb16(45)
      abb16(13)=-abb16(15)-abb16(13)
      abb16(13)=abb16(19)*abb16(13)
      abb16(15)=-spal6k7*abb16(8)
      abb16(19)=-spak1l6*abb16(9)
      abb16(15)=abb16(19)+abb16(15)
      abb16(15)=abb16(42)*abb16(15)
      abb16(12)=abb16(12)+abb16(15)+abb16(13)
      abb16(12)=2.0_ki*abb16(12)
      abb16(13)=abb16(8)*spbl6k3
      abb16(15)=abb16(13)*spak4k7
      abb16(19)=abb16(9)*spak1k4
      abb16(20)=abb16(19)*spbl6k3
      abb16(15)=abb16(15)+abb16(20)
      abb16(20)=4.0_ki*abb16(15)
      abb16(15)=-2.0_ki*abb16(15)
      abb16(26)=8.0_ki*abb16(35)
      abb16(35)=-2.0_ki*abb16(35)
      abb16(42)=-abb16(28)*abb16(39)
      abb16(45)=8.0_ki*abb16(16)
      abb16(46)=-abb16(8)*abb16(45)
      abb16(47)=abb16(28)*abb16(25)
      abb16(48)=abb16(24)*spak1k2
      abb16(16)=abb16(16)*abb16(48)
      abb16(16)=abb16(47)+abb16(16)
      abb16(16)=4.0_ki*abb16(16)
      abb16(47)=spbl5k2*abb16(37)
      abb16(49)=abb16(8)*spak4k7
      abb16(19)=abb16(49)+abb16(19)
      abb16(49)=-spbk4k2*abb16(19)
      abb16(50)=spak3k7*abb16(18)
      abb16(51)=spak1k3*abb16(22)
      abb16(27)=abb16(51)+abb16(49)+abb16(50)+abb16(47)+abb16(27)
      abb16(27)=2.0_ki*abb16(27)
      abb16(47)=4.0_ki*abb16(8)
      abb16(8)=abb16(8)*abb16(31)
      abb16(8)=abb16(28)+abb16(8)
      abb16(8)=spak2k7*abb16(8)
      abb16(31)=abb16(9)*abb16(31)
      abb16(31)=abb16(24)+abb16(31)
      abb16(31)=spak1k2*abb16(31)
      abb16(28)=spak2k7*abb16(28)
      abb16(28)=abb16(28)+abb16(48)
      abb16(14)=abb16(28)*abb16(14)
      abb16(28)=spbl6l5*abb16(37)
      abb16(19)=-spbl6k4*abb16(19)
      abb16(13)=-spak3k7*abb16(13)
      abb16(37)=-spak1k3*spbl6k3*abb16(9)
      abb16(8)=abb16(37)+abb16(13)+abb16(19)+3.0_ki*abb16(28)+abb16(14)+abb16(8&
      &)+abb16(31)
      abb16(8)=2.0_ki*abb16(8)
      abb16(13)=-abb16(18)*abb16(25)
      abb16(13)=abb16(13)-abb16(33)+abb16(38)
      abb16(13)=2.0_ki*abb16(13)
      abb16(14)=-spbl6k2*abb16(22)*abb16(40)
      abb16(18)=-abb16(36)*abb16(41)
      abb16(19)=abb16(22)*abb16(34)
      abb16(22)=abb16(24)*abb16(39)
      abb16(24)=abb16(9)*abb16(45)
      abb16(9)=-4.0_ki*abb16(9)
      R2d16=0.0_ki
      rat2 = rat2 + R2d16
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='16' value='", &
          & R2d16, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd16h2
