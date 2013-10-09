module     p1_dbarc_epnebbbarg_abbrevd108h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(50), public :: abb108
   complex(ki), public :: R2d108
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
      abb108(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb108(2)=sqrt(mB**2)
      abb108(3)=NC**(-1)
      abb108(4)=es234**(-1)
      abb108(5)=es71**(-1)
      abb108(6)=spbl5k2**(-1)
      abb108(7)=spak2l6**(-1)
      abb108(8)=spbl6k2**(-1)
      abb108(9)=2.0_ki*abb108(3)
      abb108(10)=TR*gW
      abb108(10)=CVDC*i_*spak1e7*abb108(5)*abb108(4)*abb108(1)*abb108(10)**2
      abb108(11)=abb108(10)*c3
      abb108(9)=abb108(9)*abb108(11)
      abb108(10)=abb108(10)*c4*abb108(3)**2
      abb108(11)=abb108(11)*NC
      abb108(9)=-abb108(9)+abb108(10)+abb108(11)
      abb108(10)=spbk7e7*abb108(9)
      abb108(11)=abb108(10)*spal6k7*abb108(2)
      abb108(9)=spbe7k1*abb108(9)
      abb108(12)=spak1l6*abb108(2)
      abb108(13)=abb108(9)*abb108(12)
      abb108(13)=abb108(11)-abb108(13)
      abb108(14)=mB*spbk3k2
      abb108(15)=abb108(14)**2
      abb108(16)=spak3k4*abb108(6)
      abb108(17)=abb108(13)*abb108(15)*abb108(16)
      abb108(18)=abb108(13)*spak3k4*spbk3k2
      abb108(19)=spbk7k3*spal5k7
      abb108(20)=spbl6k3*spal5l6
      abb108(21)=spbk3k1*spak1l5
      abb108(19)=-abb108(21)+abb108(19)+abb108(20)
      abb108(20)=-abb108(18)*abb108(19)
      abb108(21)=-spbk3k2*abb108(9)
      abb108(22)=abb108(21)*abb108(12)
      abb108(23)=spbk3k2*abb108(11)
      abb108(22)=abb108(22)+abb108(23)
      abb108(24)=abb108(22)*spak2k4
      abb108(25)=spbk7k2*spal5k7
      abb108(26)=spbk2k1*spak1l5
      abb108(25)=abb108(25)-abb108(26)
      abb108(26)=spbl6k2*spal5l6
      abb108(26)=abb108(26)+abb108(25)
      abb108(26)=abb108(24)*abb108(26)
      abb108(27)=abb108(8)*spak3k4
      abb108(13)=-abb108(7)*spak2l5*abb108(13)*abb108(15)*abb108(27)
      abb108(28)=abb108(27)*abb108(6)
      abb108(15)=abb108(28)*abb108(15)
      abb108(29)=abb108(9)*abb108(15)
      abb108(30)=-spbk7k2*abb108(29)
      abb108(15)=abb108(10)*abb108(15)
      abb108(31)=spbk2k1*abb108(15)
      abb108(30)=abb108(30)+abb108(31)
      abb108(30)=spak1k7*abb108(2)*abb108(30)
      abb108(13)=abb108(30)+abb108(13)+abb108(26)+abb108(20)+abb108(17)
      abb108(13)=4.0_ki*abb108(13)
      abb108(17)=spbk3k2**2
      abb108(20)=abb108(17)*mB
      abb108(16)=abb108(16)*abb108(20)
      abb108(26)=-abb108(16)*abb108(10)
      abb108(30)=abb108(26)*spal6k7
      abb108(20)=abb108(27)*abb108(20)
      abb108(31)=abb108(10)*abb108(20)
      abb108(32)=spal5k7*abb108(31)
      abb108(32)=-abb108(30)+abb108(32)
      abb108(32)=8.0_ki*abb108(32)
      abb108(16)=-abb108(16)*abb108(9)
      abb108(33)=abb108(16)*spak1l6
      abb108(30)=-abb108(30)+abb108(33)
      abb108(30)=8.0_ki*abb108(30)
      abb108(23)=abb108(23)*spak4l5
      abb108(12)=abb108(12)*spak4l5
      abb108(21)=abb108(12)*abb108(21)
      abb108(21)=abb108(23)+abb108(21)
      abb108(21)=16.0_ki*abb108(21)
      abb108(20)=abb108(9)*abb108(20)
      abb108(23)=spak1l5*abb108(20)
      abb108(23)=-abb108(33)+abb108(23)
      abb108(23)=8.0_ki*abb108(23)
      abb108(33)=4.0_ki*spal5l6
      abb108(34)=abb108(31)*abb108(33)
      abb108(35)=abb108(14)*abb108(8)
      abb108(36)=abb108(35)*abb108(10)
      abb108(37)=-abb108(36)*abb108(25)
      abb108(38)=abb108(14)*spal5l6
      abb108(39)=-abb108(10)*abb108(38)
      abb108(37)=abb108(39)+abb108(37)
      abb108(37)=spak2k4*abb108(37)
      abb108(27)=abb108(27)*abb108(14)
      abb108(39)=abb108(27)*abb108(10)
      abb108(40)=abb108(39)*abb108(19)
      abb108(17)=mB**3*abb108(28)*abb108(17)
      abb108(28)=abb108(10)*abb108(17)
      abb108(15)=-abb108(2)*abb108(15)
      abb108(15)=abb108(15)+abb108(40)-abb108(28)+abb108(37)
      abb108(15)=4.0_ki*abb108(15)
      abb108(14)=abb108(14)*abb108(6)
      abb108(37)=abb108(14)*abb108(10)
      abb108(40)=abb108(37)*spak4l6
      abb108(41)=abb108(36)*spak4l5
      abb108(40)=abb108(40)-abb108(41)
      abb108(40)=8.0_ki*abb108(40)
      abb108(41)=-spak1l6*abb108(26)
      abb108(31)=spak1l5*abb108(31)
      abb108(31)=abb108(41)+abb108(31)
      abb108(31)=4.0_ki*abb108(31)
      abb108(41)=4.0_ki*spak1k7
      abb108(42)=abb108(16)*abb108(41)
      abb108(43)=abb108(37)*spak3k4
      abb108(43)=4.0_ki*abb108(43)
      abb108(28)=spak2k7*abb108(28)
      abb108(17)=abb108(9)*abb108(17)
      abb108(44)=-spak1k2*abb108(17)
      abb108(28)=abb108(28)+abb108(44)
      abb108(28)=4.0_ki*abb108(7)*abb108(28)
      abb108(44)=abb108(37)*spak4k7
      abb108(14)=-abb108(14)*abb108(9)
      abb108(45)=abb108(14)*spak1k4
      abb108(44)=abb108(44)+abb108(45)
      abb108(44)=8.0_ki*abb108(44)
      abb108(26)=abb108(26)*abb108(41)
      abb108(18)=4.0_ki*abb108(18)
      abb108(39)=4.0_ki*abb108(39)
      abb108(24)=-4.0_ki*abb108(24)
      abb108(11)=spak4l5*abb108(11)
      abb108(12)=abb108(9)*abb108(12)
      abb108(11)=abb108(11)-abb108(12)
      abb108(12)=-spbk4k2*abb108(11)
      abb108(41)=-spak3l5*abb108(22)
      abb108(12)=abb108(12)+abb108(41)
      abb108(12)=8.0_ki*abb108(12)
      abb108(41)=abb108(8)*mB
      abb108(45)=abb108(41)*abb108(10)*spak4l5
      abb108(46)=abb108(6)*mB
      abb108(10)=-abb108(46)*abb108(10)
      abb108(47)=abb108(10)*spak4l6
      abb108(45)=abb108(45)+abb108(47)
      abb108(47)=spbk4k2*abb108(45)
      abb108(48)=spak3l5*abb108(36)
      abb108(49)=-spak3l6*abb108(37)
      abb108(47)=abb108(49)+abb108(47)+abb108(48)
      abb108(47)=4.0_ki*abb108(47)
      abb108(46)=-abb108(46)*abb108(9)
      abb108(48)=abb108(46)*spak1k4
      abb108(10)=abb108(10)*spak4k7
      abb108(10)=abb108(48)-abb108(10)
      abb108(48)=spbk4k2*abb108(10)
      abb108(49)=spak3k7*abb108(37)
      abb108(50)=spak1k3*abb108(14)
      abb108(48)=abb108(50)+abb108(49)+abb108(48)
      abb108(48)=4.0_ki*abb108(48)
      abb108(11)=spbk4k3*abb108(11)
      abb108(22)=spak2l5*abb108(22)
      abb108(11)=abb108(11)+abb108(22)
      abb108(11)=8.0_ki*abb108(11)
      abb108(22)=-spbk4k3*abb108(45)
      abb108(36)=-spak2l5*abb108(36)
      abb108(45)=spak2l6*abb108(37)
      abb108(22)=abb108(45)+abb108(22)+abb108(36)
      abb108(22)=4.0_ki*abb108(22)
      abb108(10)=-spbk4k3*abb108(10)
      abb108(36)=-spak2k7*abb108(37)
      abb108(37)=-spak1k2*abb108(14)
      abb108(10)=abb108(37)+abb108(36)+abb108(10)
      abb108(10)=4.0_ki*abb108(10)
      abb108(16)=-spal6k7*abb108(16)
      abb108(36)=spal5k7*abb108(20)
      abb108(16)=abb108(16)+abb108(36)
      abb108(16)=4.0_ki*abb108(16)
      abb108(20)=abb108(20)*abb108(33)
      abb108(33)=abb108(14)*spak3k4
      abb108(33)=4.0_ki*abb108(33)
      abb108(27)=abb108(27)*abb108(9)
      abb108(36)=4.0_ki*abb108(27)
      abb108(35)=abb108(35)*abb108(9)
      abb108(25)=-abb108(35)*abb108(25)
      abb108(37)=-abb108(9)*abb108(38)
      abb108(25)=abb108(37)+abb108(25)
      abb108(25)=spak2k4*abb108(25)
      abb108(19)=abb108(27)*abb108(19)
      abb108(27)=-abb108(2)*abb108(29)
      abb108(17)=abb108(27)+abb108(19)-abb108(17)+abb108(25)
      abb108(17)=4.0_ki*abb108(17)
      abb108(19)=abb108(14)*spak4l6
      abb108(25)=abb108(35)*spak4l5
      abb108(19)=abb108(19)+abb108(25)
      abb108(19)=8.0_ki*abb108(19)
      abb108(25)=abb108(46)*spak4l6
      abb108(9)=abb108(9)*abb108(41)*spak4l5
      abb108(9)=abb108(25)+abb108(9)
      abb108(25)=spbk4k2*abb108(9)
      abb108(27)=spak3l5*abb108(35)
      abb108(29)=spak3l6*abb108(14)
      abb108(25)=abb108(29)+abb108(25)+abb108(27)
      abb108(25)=4.0_ki*abb108(25)
      abb108(9)=-spbk4k3*abb108(9)
      abb108(27)=-spak2l5*abb108(35)
      abb108(14)=-spak2l6*abb108(14)
      abb108(9)=abb108(14)+abb108(9)+abb108(27)
      abb108(9)=4.0_ki*abb108(9)
      R2d108=0.0_ki
      rat2 = rat2 + R2d108
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='108' value='", &
          & R2d108, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd108h0
