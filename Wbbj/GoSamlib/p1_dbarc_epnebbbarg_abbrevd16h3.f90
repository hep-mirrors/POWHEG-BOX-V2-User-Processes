module     p1_dbarc_epnebbbarg_abbrevd16h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(49), public :: abb16
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
      abb16(4)=spak2l5**(-1)
      abb16(5)=spak2l6**(-1)
      abb16(6)=spbl5k2**(-1)
      abb16(7)=spbl6k2**(-1)
      abb16(8)=NC*c3
      abb16(8)=abb16(8)-c4
      abb16(9)=TR*gW
      abb16(9)=CVDC*i_*spak1e7*abb16(3)*abb16(2)*abb16(1)*abb16(9)**2
      abb16(10)=-abb16(8)*abb16(9)*mB
      abb16(11)=spbk7e7*abb16(5)
      abb16(12)=-abb16(11)*abb16(10)
      abb16(13)=abb16(12)*spbl5k3
      abb16(14)=spak3k4*spbk3k2
      abb16(15)=abb16(13)*abb16(14)
      abb16(16)=abb16(10)*abb16(4)
      abb16(17)=-spbk7e7*abb16(16)
      abb16(18)=abb16(14)*spbl6k3
      abb16(19)=abb16(18)*abb16(17)
      abb16(20)=abb16(15)+abb16(19)
      abb16(20)=abb16(20)*spak2k7
      abb16(21)=spbe7k1*abb16(5)
      abb16(10)=-abb16(21)*abb16(10)
      abb16(22)=abb16(10)*spbl5k3
      abb16(23)=abb16(22)*abb16(14)
      abb16(16)=-spbe7k1*abb16(16)
      abb16(24)=abb16(18)*abb16(16)
      abb16(25)=abb16(23)+abb16(24)
      abb16(25)=abb16(25)*spak1k2
      abb16(20)=abb16(20)-abb16(25)
      abb16(25)=8.0_ki*abb16(20)
      abb16(26)=abb16(17)*spbl6k3
      abb16(27)=abb16(26)*spak3k4
      abb16(28)=abb16(13)*spak3k4
      abb16(27)=abb16(27)+abb16(28)
      abb16(29)=-spal5k7*abb16(27)
      abb16(30)=abb16(16)*spbl6k3
      abb16(31)=abb16(30)*spak3k4
      abb16(32)=abb16(22)*spak3k4
      abb16(31)=abb16(31)+abb16(32)
      abb16(33)=spak1l5*abb16(31)
      abb16(29)=abb16(33)+abb16(29)
      abb16(29)=spbl5k3*abb16(29)
      abb16(8)=abb16(8)*abb16(9)*mB**3
      abb16(9)=-abb16(8)*abb16(4)**2
      abb16(33)=-spbk7e7*abb16(9)
      abb16(34)=abb16(33)*abb16(18)
      abb16(35)=-abb16(4)*abb16(8)
      abb16(11)=-abb16(11)*abb16(35)
      abb16(36)=abb16(14)*spbl5k3
      abb16(37)=abb16(11)*abb16(36)
      abb16(34)=abb16(34)+abb16(37)
      abb16(34)=spak2k7*abb16(34)
      abb16(9)=-spbe7k1*abb16(9)
      abb16(37)=-abb16(9)*abb16(18)
      abb16(21)=-abb16(21)*abb16(35)
      abb16(35)=-abb16(21)*abb16(36)
      abb16(35)=abb16(37)+abb16(35)
      abb16(35)=spak1k2*abb16(35)
      abb16(34)=abb16(34)+abb16(35)
      abb16(34)=abb16(6)*abb16(34)
      abb16(35)=abb16(11)*abb16(18)
      abb16(8)=-abb16(8)*abb16(5)**2
      abb16(37)=-spbk7e7*abb16(8)
      abb16(38)=abb16(37)*abb16(36)
      abb16(35)=abb16(35)+abb16(38)
      abb16(35)=spak2k7*abb16(35)
      abb16(38)=-abb16(21)*abb16(18)
      abb16(8)=-spbe7k1*abb16(8)
      abb16(39)=-abb16(8)*abb16(36)
      abb16(38)=abb16(38)+abb16(39)
      abb16(38)=spak1k2*abb16(38)
      abb16(35)=abb16(35)+abb16(38)
      abb16(35)=abb16(7)*abb16(35)
      abb16(38)=spak3k4*spbl6k3**2
      abb16(39)=abb16(38)*abb16(17)
      abb16(28)=abb16(28)*spbl6k3
      abb16(28)=abb16(39)+abb16(28)
      abb16(39)=-spal6k7*abb16(28)
      abb16(38)=abb16(38)*abb16(16)
      abb16(32)=abb16(32)*spbl6k3
      abb16(32)=abb16(38)+abb16(32)
      abb16(38)=spak1l6*abb16(32)
      abb16(29)=abb16(38)+abb16(39)+abb16(35)+abb16(34)+abb16(20)+abb16(29)
      abb16(29)=4.0_ki*abb16(29)
      abb16(34)=abb16(30)+abb16(22)
      abb16(35)=abb16(34)*spak1k4
      abb16(38)=abb16(26)+abb16(13)
      abb16(39)=abb16(38)*spak4k7
      abb16(35)=abb16(35)-abb16(39)
      abb16(39)=8.0_ki*abb16(35)
      abb16(40)=abb16(10)*spak1k2
      abb16(41)=abb16(12)*spak2k7
      abb16(40)=abb16(40)-abb16(41)
      abb16(41)=abb16(40)*spbl5k2
      abb16(42)=abb16(16)*spak1k2
      abb16(43)=abb16(17)*spak2k7
      abb16(42)=abb16(42)-abb16(43)
      abb16(43)=abb16(42)*spbl6k2
      abb16(41)=abb16(41)+abb16(43)
      abb16(43)=abb16(9)*spak1k2
      abb16(33)=abb16(33)*spak2k7
      abb16(43)=abb16(43)-abb16(33)
      abb16(43)=abb16(43)*abb16(6)*spbl6k2
      abb16(44)=abb16(8)*spak1k2
      abb16(37)=abb16(37)*spak2k7
      abb16(44)=abb16(44)-abb16(37)
      abb16(44)=abb16(44)*abb16(7)*spbl5k2
      abb16(21)=abb16(21)*spak1k2
      abb16(11)=abb16(11)*spak2k7
      abb16(11)=abb16(21)-abb16(11)
      abb16(21)=2.0_ki*abb16(11)+abb16(41)+abb16(43)+abb16(44)
      abb16(43)=spbk3k2*abb16(21)
      abb16(44)=abb16(12)*spbl5k2
      abb16(45)=abb16(17)*spbl6k2
      abb16(46)=-abb16(45)-abb16(44)
      abb16(46)=spak4k7*abb16(46)
      abb16(47)=abb16(10)*spbl5k2
      abb16(48)=abb16(16)*spbl6k2
      abb16(49)=abb16(48)+abb16(47)
      abb16(49)=spak1k4*abb16(49)
      abb16(46)=abb16(46)+abb16(49)
      abb16(46)=spbk4k3*abb16(46)
      abb16(26)=spbl6k2*abb16(26)
      abb16(44)=spbl6k3*abb16(44)
      abb16(26)=abb16(26)+abb16(44)
      abb16(26)=spal6k7*abb16(26)
      abb16(44)=spbl5k3*abb16(45)
      abb16(13)=spbl5k2*abb16(13)
      abb16(13)=abb16(44)+abb16(13)
      abb16(13)=spal5k7*abb16(13)
      abb16(30)=-spbl6k2*abb16(30)
      abb16(44)=-spbl6k3*abb16(47)
      abb16(30)=abb16(30)+abb16(44)
      abb16(30)=spak1l6*abb16(30)
      abb16(44)=-spbl5k3*abb16(48)
      abb16(22)=-spbl5k2*abb16(22)
      abb16(22)=abb16(44)+abb16(22)
      abb16(22)=spak1l5*abb16(22)
      abb16(13)=abb16(46)+abb16(22)+abb16(30)+abb16(13)+abb16(26)+abb16(43)
      abb16(13)=spak2k4*abb16(13)
      abb16(22)=abb16(34)*spak1k2
      abb16(26)=abb16(38)*spak2k7
      abb16(22)=abb16(22)-abb16(26)
      abb16(26)=spak4l6*spbl6k2
      abb16(30)=spak4l5*spbl5k2
      abb16(26)=abb16(26)+abb16(30)
      abb16(26)=-2.0_ki*abb16(26)
      abb16(26)=abb16(22)*abb16(26)
      abb16(13)=abb16(20)+abb16(26)+abb16(13)
      abb16(13)=2.0_ki*abb16(13)
      abb16(20)=4.0_ki*abb16(35)
      abb16(26)=spak2k7*abb16(28)
      abb16(28)=-spak1k2*abb16(32)
      abb16(26)=abb16(26)+abb16(28)
      abb16(26)=4.0_ki*abb16(26)
      abb16(27)=spak2k7*abb16(27)
      abb16(28)=-spak1k2*abb16(31)
      abb16(27)=abb16(27)+abb16(28)
      abb16(27)=4.0_ki*spbl5k3*abb16(27)
      abb16(28)=8.0_ki*abb16(41)
      abb16(30)=abb16(16)*spak1l5
      abb16(31)=abb16(17)*spal5k7
      abb16(30)=abb16(30)-abb16(31)
      abb16(31)=abb16(10)*spak1l6
      abb16(32)=abb16(12)*spal6k7
      abb16(31)=abb16(31)-abb16(32)
      abb16(32)=abb16(31)-abb16(30)
      abb16(32)=spbl6l5*abb16(32)
      abb16(35)=-spak3k7*abb16(38)
      abb16(34)=spak1k3*abb16(34)
      abb16(38)=abb16(16)*spak1k4
      abb16(43)=abb16(17)*spak4k7
      abb16(38)=abb16(38)-abb16(43)
      abb16(43)=spbl6k4*abb16(38)
      abb16(44)=abb16(10)*spak1k4
      abb16(45)=abb16(12)*spak4k7
      abb16(44)=abb16(44)-abb16(45)
      abb16(45)=spbl5k4*abb16(44)
      abb16(21)=abb16(45)+abb16(43)+abb16(34)+abb16(35)+abb16(32)-abb16(21)
      abb16(21)=4.0_ki*abb16(21)
      abb16(32)=2.0_ki*abb16(41)
      abb16(34)=4.0_ki*spbl6l5
      abb16(35)=abb16(40)*abb16(34)
      abb16(34)=-abb16(42)*abb16(34)
      abb16(22)=-2.0_ki*abb16(22)
      abb16(30)=abb16(36)*abb16(30)
      abb16(36)=spak3k4*spbk3k2**2
      abb16(41)=-abb16(36)*abb16(42)
      abb16(33)=abb16(36)*abb16(33)
      abb16(42)=abb16(36)*spak1k2
      abb16(9)=-abb16(9)*abb16(42)
      abb16(9)=abb16(33)+abb16(9)
      abb16(9)=abb16(6)*abb16(9)
      abb16(11)=-abb16(36)*abb16(11)
      abb16(33)=abb16(7)*abb16(11)
      abb16(19)=-spal6k7*abb16(19)
      abb16(24)=spak1l6*abb16(24)
      abb16(9)=abb16(24)+abb16(19)+abb16(33)+abb16(9)+abb16(41)+abb16(30)
      abb16(9)=2.0_ki*abb16(9)
      abb16(19)=spak1k4*spbk3k2
      abb16(24)=abb16(19)*abb16(16)
      abb16(30)=spak4k7*spbk3k2
      abb16(33)=abb16(30)*abb16(17)
      abb16(24)=abb16(24)-abb16(33)
      abb16(33)=4.0_ki*abb16(24)
      abb16(24)=-2.0_ki*abb16(24)
      abb16(14)=4.0_ki*abb16(14)
      abb16(41)=abb16(17)*abb16(14)
      abb16(43)=spak1l6*spbl6k2
      abb16(45)=spak1l5*spbl5k2
      abb16(46)=spak1k3*spbk3k2
      abb16(43)=-abb16(46)+abb16(43)+abb16(45)
      abb16(45)=-abb16(16)*abb16(43)
      abb16(46)=spal6k7*spbl6k2
      abb16(47)=spal5k7*spbl5k2
      abb16(48)=spak3k7*spbk3k2
      abb16(46)=-abb16(48)+abb16(46)+abb16(47)
      abb16(47)=abb16(17)*abb16(46)
      abb16(38)=spbk4k2*abb16(38)
      abb16(38)=abb16(38)+abb16(47)+abb16(45)
      abb16(38)=2.0_ki*abb16(38)
      abb16(17)=4.0_ki*abb16(17)
      abb16(18)=abb16(18)*abb16(31)
      abb16(31)=-abb16(36)*abb16(40)
      abb16(11)=abb16(6)*abb16(11)
      abb16(36)=abb16(36)*abb16(37)
      abb16(8)=-abb16(8)*abb16(42)
      abb16(8)=abb16(36)+abb16(8)
      abb16(8)=abb16(7)*abb16(8)
      abb16(15)=-spal5k7*abb16(15)
      abb16(23)=spak1l5*abb16(23)
      abb16(8)=abb16(23)+abb16(15)+abb16(8)+abb16(11)+abb16(31)+abb16(18)
      abb16(8)=2.0_ki*abb16(8)
      abb16(11)=abb16(19)*abb16(10)
      abb16(15)=abb16(30)*abb16(12)
      abb16(11)=abb16(11)-abb16(15)
      abb16(15)=4.0_ki*abb16(11)
      abb16(11)=-2.0_ki*abb16(11)
      abb16(18)=abb16(12)*abb16(14)
      abb16(19)=-abb16(10)*abb16(43)
      abb16(23)=abb16(12)*abb16(46)
      abb16(30)=spbk4k2*abb16(44)
      abb16(19)=abb16(30)+abb16(23)+abb16(19)
      abb16(19)=2.0_ki*abb16(19)
      abb16(12)=4.0_ki*abb16(12)
      abb16(23)=abb16(16)*abb16(14)
      abb16(14)=abb16(10)*abb16(14)
      abb16(16)=4.0_ki*abb16(16)
      abb16(10)=4.0_ki*abb16(10)
      R2d16=0.0_ki
      rat2 = rat2 + R2d16
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='16' value='", &
          & R2d16, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd16h3