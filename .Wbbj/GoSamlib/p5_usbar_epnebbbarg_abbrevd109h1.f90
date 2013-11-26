module     p5_usbar_epnebbbarg_abbrevd109h1
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(47), public :: abb109
   complex(ki), public :: R2d109
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb109(1)=1.0_ki/(-es71+es712-es12)
      abb109(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb109(3)=1.0_ki/(es34+es567-es12-es234)
      abb109(4)=sqrt(mB**2)
      abb109(5)=NC**(-1)
      abb109(6)=spak2l5**(-1)
      abb109(7)=spbl5k2**(-1)
      abb109(8)=spbl6k2**(-1)
      abb109(9)=spbk7k1*spak1k4
      abb109(10)=spbk7k3*spak3k4
      abb109(10)=-abb109(9)+abb109(10)
      abb109(10)=spal6k7*abb109(10)
      abb109(11)=spbl5k3*spak3k4
      abb109(12)=spbl5k1*spak1k4
      abb109(11)=abb109(11)-abb109(12)
      abb109(13)=-spal5l6*abb109(11)
      abb109(10)=abb109(13)+abb109(10)
      abb109(13)=TR*gW
      abb109(13)=abb109(13)**2*spbk7e7*i_*spak2e7*CVSU*abb109(3)*abb109(2)*abb1&
      &09(1)
      abb109(14)=abb109(13)*spbk3k1
      abb109(15)=2.0_ki*c3
      abb109(16)=abb109(5)*mB
      abb109(17)=abb109(14)*abb109(15)*abb109(16)
      abb109(18)=spak2k7*abb109(6)
      abb109(19)=abb109(18)*abb109(4)
      abb109(20)=abb109(19)*abb109(17)
      abb109(21)=abb109(5)**2
      abb109(21)=abb109(21)+1.0_ki
      abb109(22)=abb109(14)*abb109(21)
      abb109(23)=mB*abb109(22)
      abb109(24)=abb109(18)*c4
      abb109(25)=abb109(24)*abb109(4)
      abb109(26)=abb109(23)*abb109(25)
      abb109(20)=abb109(20)-abb109(26)
      abb109(10)=abb109(20)*abb109(10)
      abb109(27)=abb109(15)*abb109(5)
      abb109(28)=abb109(27)*abb109(14)
      abb109(29)=mB**3
      abb109(30)=abb109(18)*abb109(8)
      abb109(31)=abb109(30)*abb109(29)*abb109(28)
      abb109(32)=abb109(29)*abb109(22)
      abb109(33)=abb109(30)*c4
      abb109(34)=abb109(32)*abb109(33)
      abb109(31)=abb109(31)-abb109(34)
      abb109(31)=abb109(31)*abb109(4)
      abb109(34)=-spak3k4*abb109(31)
      abb109(35)=abb109(4)*abb109(8)
      abb109(17)=abb109(17)*abb109(35)
      abb109(36)=abb109(8)*c4
      abb109(37)=abb109(36)*abb109(4)
      abb109(23)=abb109(37)*abb109(23)
      abb109(17)=abb109(23)-abb109(17)
      abb109(23)=abb109(17)*spak2k7
      abb109(38)=spbl5k2*spak3k4
      abb109(39)=-abb109(23)*abb109(38)
      abb109(34)=abb109(34)+abb109(39)
      abb109(34)=spbk3k2*abb109(34)
      abb109(31)=-spak1k4*abb109(31)
      abb109(39)=spbl5k2*spak1k4
      abb109(23)=-abb109(23)*abb109(39)
      abb109(23)=abb109(31)+abb109(23)
      abb109(23)=spbk2k1*abb109(23)
      abb109(31)=spbk3k2*spak3k4
      abb109(40)=spbk2k1*spak1k4
      abb109(31)=abb109(31)+abb109(40)
      abb109(41)=-abb109(20)*abb109(31)
      abb109(42)=spak2k7*abb109(6)**2
      abb109(43)=abb109(42)*abb109(28)
      abb109(29)=abb109(43)*abb109(29)
      abb109(32)=c4*abb109(32)*abb109(42)
      abb109(29)=abb109(29)-abb109(32)
      abb109(31)=abb109(31)*abb109(7)
      abb109(29)=abb109(31)*abb109(4)*abb109(29)
      abb109(29)=abb109(29)+abb109(41)
      abb109(29)=spak2l6*abb109(29)
      abb109(10)=abb109(29)+abb109(34)+abb109(23)+abb109(10)
      abb109(10)=4.0_ki*abb109(10)
      abb109(23)=abb109(17)*spbl5k2
      abb109(29)=abb109(23)*spak4k7
      abb109(20)=2.0_ki*abb109(20)
      abb109(32)=abb109(20)*spak4l6
      abb109(29)=abb109(29)+abb109(32)
      abb109(29)=8.0_ki*abb109(29)
      abb109(32)=mB**2
      abb109(34)=abb109(14)*abb109(32)
      abb109(41)=abb109(34)*abb109(21)
      abb109(44)=abb109(41)*abb109(33)
      abb109(45)=abb109(34)*abb109(27)
      abb109(46)=abb109(45)*abb109(30)
      abb109(44)=abb109(44)-abb109(46)
      abb109(40)=abb109(40)*abb109(44)
      abb109(46)=abb109(44)*spak3k4
      abb109(47)=abb109(46)*spbk3k2
      abb109(40)=abb109(40)+abb109(47)
      abb109(42)=abb109(22)*abb109(42)*abb109(36)
      abb109(43)=abb109(8)*abb109(43)
      abb109(42)=abb109(42)-abb109(43)
      abb109(31)=abb109(31)*abb109(42)*mB**4
      abb109(31)=abb109(31)-abb109(40)
      abb109(31)=8.0_ki*abb109(31)
      abb109(22)=abb109(22)*c4
      abb109(22)=abb109(22)-abb109(28)
      abb109(28)=abb109(22)*spal6k7
      abb109(42)=abb109(28)*abb109(11)
      abb109(40)=abb109(42)+abb109(40)
      abb109(40)=4.0_ki*abb109(40)
      abb109(42)=abb109(41)*abb109(6)
      abb109(36)=abb109(42)*abb109(36)
      abb109(43)=abb109(45)*abb109(6)
      abb109(45)=abb109(43)*abb109(8)
      abb109(36)=abb109(36)-abb109(45)
      abb109(45)=es71+es12-es712
      abb109(36)=abb109(45)*abb109(36)
      abb109(45)=abb109(28)*spbk7l5
      abb109(36)=abb109(36)-abb109(45)
      abb109(36)=4.0_ki*abb109(36)
      abb109(45)=spak3k4*abb109(36)
      abb109(11)=-abb109(17)*abb109(11)
      abb109(17)=-spbk7k3*abb109(46)
      abb109(9)=abb109(44)*abb109(9)
      abb109(9)=abb109(9)+abb109(17)+abb109(11)
      abb109(9)=4.0_ki*abb109(9)
      abb109(11)=-spak1k4*abb109(36)
      abb109(17)=8.0_ki*abb109(22)
      abb109(17)=abb109(17)*spak4k7
      abb109(18)=abb109(5)*abb109(34)*abb109(18)
      abb109(19)=abb109(19)*abb109(16)
      abb109(14)=abb109(19)*abb109(14)
      abb109(14)=abb109(18)-abb109(14)
      abb109(14)=abb109(14)*abb109(15)
      abb109(18)=abb109(41)*abb109(24)
      abb109(14)=abb109(14)-abb109(18)+abb109(26)
      abb109(18)=spak3k4*abb109(14)
      abb109(24)=spak2k7*abb109(22)
      abb109(26)=abb109(24)*abb109(38)
      abb109(18)=abb109(18)+abb109(26)
      abb109(18)=4.0_ki*abb109(18)
      abb109(14)=-spak1k4*abb109(14)
      abb109(24)=-abb109(24)*abb109(39)
      abb109(14)=abb109(14)+abb109(24)
      abb109(14)=4.0_ki*abb109(14)
      abb109(24)=4.0_ki*spbl5k2*abb109(46)
      abb109(26)=-spbl5k3*abb109(46)
      abb109(12)=abb109(44)*abb109(12)
      abb109(12)=abb109(26)+abb109(12)
      abb109(12)=4.0_ki*abb109(12)
      abb109(26)=4.0_ki*abb109(44)
      abb109(34)=-abb109(39)*abb109(26)
      abb109(36)=8.0_ki*abb109(28)
      abb109(15)=abb109(15)*abb109(13)
      abb109(16)=abb109(15)*abb109(16)*abb109(35)
      abb109(35)=abb109(13)*abb109(21)
      abb109(41)=mB*abb109(35)
      abb109(37)=abb109(41)*abb109(37)
      abb109(16)=abb109(16)-abb109(37)
      abb109(16)=abb109(16)*spak4k7*spbl5k2
      abb109(19)=abb109(19)*abb109(15)
      abb109(25)=abb109(41)*abb109(25)
      abb109(19)=abb109(19)-abb109(25)
      abb109(25)=2.0_ki*spak4l6
      abb109(19)=abb109(19)*abb109(25)
      abb109(16)=abb109(16)-abb109(19)
      abb109(19)=-spbk4k1*abb109(16)
      abb109(25)=spak3k7*abb109(23)
      abb109(37)=spak3l6*abb109(20)
      abb109(19)=abb109(37)+abb109(19)+abb109(25)
      abb109(19)=4.0_ki*abb109(19)
      abb109(25)=abb109(35)*c4
      abb109(15)=abb109(15)*abb109(5)
      abb109(15)=abb109(25)-abb109(15)
      abb109(25)=abb109(15)*spbk4k1
      abb109(35)=-spak4k7*abb109(25)
      abb109(37)=-spak3k7*abb109(22)
      abb109(35)=abb109(35)+abb109(37)
      abb109(35)=4.0_ki*abb109(35)
      abb109(37)=4.0_ki*spal6k7
      abb109(25)=abb109(25)*abb109(37)
      abb109(41)=8.0_ki*abb109(44)
      abb109(21)=abb109(33)*abb109(21)
      abb109(27)=abb109(30)*abb109(27)
      abb109(21)=abb109(21)-abb109(27)
      abb109(13)=abb109(21)*abb109(32)*abb109(13)
      abb109(13)=4.0_ki*abb109(13)
      abb109(21)=spbk4k1*abb109(13)
      abb109(16)=spbk4k3*abb109(16)
      abb109(23)=-spak1k7*abb109(23)
      abb109(20)=-spak1l6*abb109(20)
      abb109(16)=abb109(20)+abb109(16)+abb109(23)
      abb109(16)=4.0_ki*abb109(16)
      abb109(15)=abb109(15)*spbk4k3
      abb109(20)=spak4k7*abb109(15)
      abb109(22)=spak1k7*abb109(22)
      abb109(20)=abb109(20)+abb109(22)
      abb109(20)=4.0_ki*abb109(20)
      abb109(15)=-abb109(15)*abb109(37)
      abb109(13)=-spbk4k3*abb109(13)
      abb109(22)=4.0_ki*abb109(28)
      abb109(23)=abb109(42)*c4
      abb109(23)=abb109(23)-abb109(43)
      abb109(23)=abb109(23)*spal6k7
      abb109(27)=spak3k4*abb109(23)
      abb109(30)=-abb109(28)*abb109(38)
      abb109(27)=abb109(27)+abb109(30)
      abb109(27)=4.0_ki*abb109(27)
      abb109(23)=-spak1k4*abb109(23)
      abb109(28)=abb109(28)*abb109(39)
      abb109(23)=abb109(23)+abb109(28)
      abb109(23)=4.0_ki*abb109(23)
      R2d109=0.0_ki
      rat2 = rat2 + R2d109
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='109' value='", &
          & R2d109, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd109h1
