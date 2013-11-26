module     p9_csbar_epnebbbarg_abbrevd8h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(54), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=sqrt(mB**2)
      abb8(3)=es234**(-1)
      abb8(4)=es567**(-1)
      abb8(5)=spbl5k2**(-1)
      abb8(6)=spak2l6**(-1)
      abb8(7)=1.0_ki/(es34+es567-es12-es234)
      abb8(8)=spbk3k1*abb8(7)
      abb8(9)=c2-c4
      abb8(10)=TR*gW
      abb8(10)=abb8(10)**2*i_*CVSC*abb8(4)*abb8(1)
      abb8(11)=-abb8(9)*abb8(10)*abb8(8)
      abb8(12)=2.0_ki*spbe7k1
      abb8(13)=-abb8(12)*abb8(11)
      abb8(14)=abb8(10)*NC
      abb8(8)=abb8(14)*abb8(8)
      abb8(15)=abb8(8)*c1
      abb8(16)=abb8(15)*spbe7k1
      abb8(8)=abb8(8)*c3
      abb8(17)=abb8(8)*spbe7k1
      abb8(13)=-abb8(17)+abb8(13)-abb8(16)
      abb8(13)=abb8(13)*spak1k4
      abb8(18)=abb8(10)*spak2k4*abb8(3)
      abb8(19)=abb8(18)*spbk3k2
      abb8(20)=spbe7k1*abb8(19)
      abb8(21)=abb8(20)*NC
      abb8(22)=abb8(21)*c1
      abb8(23)=c3*abb8(21)
      abb8(24)=abb8(22)+abb8(23)
      abb8(25)=abb8(13)+abb8(24)
      abb8(26)=spak2e7*abb8(5)
      abb8(27)=abb8(2)*mB
      abb8(28)=abb8(26)*abb8(27)
      abb8(29)=abb8(28)*abb8(25)
      abb8(30)=abb8(15)+abb8(8)
      abb8(31)=abb8(28)*abb8(30)
      abb8(32)=2.0_ki*abb8(28)
      abb8(33)=abb8(32)*abb8(11)
      abb8(31)=abb8(33)+abb8(31)
      abb8(33)=spbe7k3*spak3k4
      abb8(31)=abb8(31)*abb8(33)
      abb8(20)=-abb8(20)*abb8(9)
      abb8(32)=abb8(32)*abb8(20)
      abb8(18)=abb8(18)*spbk4k3
      abb8(34)=abb8(18)*spbe7k1
      abb8(35)=abb8(34)*NC
      abb8(36)=abb8(35)*c1
      abb8(37)=abb8(35)*c3
      abb8(38)=abb8(36)+abb8(37)
      abb8(34)=-abb8(34)*abb8(9)
      abb8(39)=-2.0_ki*abb8(34)-abb8(38)
      abb8(39)=abb8(39)*spak4e7
      abb8(40)=-abb8(27)*abb8(5)*abb8(39)
      abb8(29)=abb8(31)+abb8(40)+abb8(32)+abb8(29)
      abb8(29)=spbl6k2*abb8(29)
      abb8(31)=abb8(9)*abb8(18)*abb8(5)
      abb8(32)=-abb8(27)*abb8(31)
      abb8(40)=abb8(18)*NC
      abb8(41)=abb8(40)*abb8(5)
      abb8(42)=abb8(41)*abb8(27)
      abb8(43)=abb8(42)*c3
      abb8(44)=2.0_ki*c1
      abb8(45)=abb8(44)*abb8(42)
      abb8(45)=abb8(45)-abb8(43)+abb8(32)
      abb8(45)=spak4e7*abb8(45)
      abb8(46)=-abb8(9)*abb8(19)
      abb8(19)=NC*abb8(19)
      abb8(47)=abb8(19)*abb8(44)
      abb8(48)=abb8(19)*c3
      abb8(47)=-abb8(48)+abb8(46)+abb8(47)
      abb8(49)=abb8(28)*abb8(47)
      abb8(50)=abb8(11)+2.0_ki*abb8(15)
      abb8(51)=-abb8(8)+abb8(50)
      abb8(28)=abb8(51)*abb8(28)
      abb8(52)=-spak1k4*abb8(28)
      abb8(45)=abb8(45)+abb8(52)+abb8(49)
      abb8(45)=spbk2k1*abb8(45)
      abb8(49)=spak3k4*spbk3k2
      abb8(28)=-abb8(28)*abb8(49)
      abb8(28)=abb8(45)+abb8(28)
      abb8(28)=spbe7l6*abb8(28)
      abb8(45)=-spbe7k1*abb8(11)
      abb8(52)=abb8(17)-abb8(45)
      abb8(52)=spak1k4*abb8(52)
      abb8(53)=-abb8(8)-abb8(11)
      abb8(53)=abb8(33)*abb8(53)
      abb8(52)=abb8(53)+abb8(52)-abb8(23)-abb8(20)
      abb8(52)=3.0_ki*abb8(52)
      abb8(27)=abb8(27)*abb8(6)
      abb8(53)=abb8(27)*spak2e7
      abb8(52)=abb8(53)*abb8(52)
      abb8(54)=abb8(27)*abb8(39)
      abb8(52)=2.0_ki*abb8(54)+abb8(52)
      abb8(52)=spak2l5*abb8(52)
      abb8(42)=c1*abb8(42)
      abb8(32)=abb8(42)-2.0_ki*abb8(43)-abb8(32)
      abb8(42)=spbe7k2*spak4e7
      abb8(32)=spbl6k1*abb8(32)*abb8(42)
      abb8(43)=c3*abb8(12)
      abb8(54)=-c1*spbe7k1
      abb8(43)=abb8(54)+abb8(43)
      abb8(43)=abb8(14)*abb8(43)
      abb8(10)=abb8(9)*abb8(10)
      abb8(54)=-spbe7k1*abb8(10)
      abb8(43)=abb8(54)+abb8(43)
      abb8(54)=spak2k4**2*spbk4k3*abb8(3)
      abb8(27)=spal5e7*abb8(43)*abb8(54)*abb8(27)
      abb8(35)=abb8(35)*abb8(44)
      abb8(35)=-abb8(37)+abb8(35)+abb8(34)
      abb8(35)=abb8(35)*spak4l5
      abb8(43)=abb8(53)*abb8(35)
      abb8(27)=abb8(32)+abb8(43)+2.0_ki*abb8(29)+abb8(27)+abb8(52)+abb8(28)
      abb8(27)=2.0_ki*abb8(27)
      abb8(28)=-spak1k4*abb8(51)
      abb8(28)=abb8(28)+abb8(47)
      abb8(28)=spak2l5*abb8(28)
      abb8(9)=-abb8(18)*abb8(9)
      abb8(18)=abb8(40)*abb8(44)
      abb8(29)=abb8(40)*c3
      abb8(18)=abb8(18)-abb8(29)+abb8(9)
      abb8(18)=spak4l5*abb8(18)
      abb8(18)=abb8(18)+abb8(28)
      abb8(18)=spbl6k1*abb8(18)
      abb8(28)=abb8(44)-c3
      abb8(14)=abb8(14)*abb8(28)
      abb8(10)=-abb8(10)+abb8(14)
      abb8(14)=abb8(6)*mB**2
      abb8(10)=spbk2k1*abb8(54)*abb8(14)*abb8(5)*abb8(10)
      abb8(28)=abb8(51)*spak2l5
      abb8(32)=spbl6k3*spak3k4*abb8(28)
      abb8(10)=abb8(32)+abb8(10)+abb8(18)
      abb8(10)=4.0_ki*abb8(10)
      abb8(18)=abb8(14)*abb8(26)
      abb8(26)=2.0_ki*abb8(18)
      abb8(32)=-abb8(26)*abb8(11)
      abb8(43)=abb8(8)*abb8(18)
      abb8(51)=-abb8(18)*abb8(15)
      abb8(32)=abb8(51)-abb8(43)+abb8(32)
      abb8(32)=abb8(32)*abb8(33)
      abb8(25)=-abb8(18)*abb8(25)
      abb8(26)=-abb8(26)*abb8(20)
      abb8(38)=-abb8(14)*abb8(38)
      abb8(51)=2.0_ki*abb8(14)
      abb8(52)=-abb8(51)*abb8(34)
      abb8(38)=abb8(52)+abb8(38)
      abb8(38)=spak4e7*abb8(5)*abb8(38)
      abb8(25)=abb8(32)+abb8(38)+abb8(26)+abb8(25)
      abb8(25)=4.0_ki*abb8(25)
      abb8(26)=abb8(15)*abb8(12)
      abb8(17)=abb8(26)-abb8(17)-abb8(45)
      abb8(17)=spak1k4*abb8(17)
      abb8(21)=-abb8(44)*abb8(21)
      abb8(17)=abb8(17)+abb8(21)+abb8(23)-abb8(20)
      abb8(17)=spak2l5*abb8(17)
      abb8(21)=-abb8(33)*abb8(28)
      abb8(17)=-abb8(35)+abb8(17)+abb8(21)
      abb8(17)=2.0_ki*abb8(17)
      abb8(21)=abb8(50)*abb8(18)
      abb8(21)=abb8(21)-abb8(43)
      abb8(26)=-spak1k4*abb8(21)
      abb8(18)=abb8(18)*abb8(47)
      abb8(28)=abb8(44)*abb8(41)
      abb8(32)=abb8(41)*c3
      abb8(28)=abb8(28)-abb8(32)-abb8(31)
      abb8(28)=spak4e7*abb8(14)*abb8(28)
      abb8(18)=abb8(28)+abb8(26)+abb8(18)
      abb8(18)=spbk2k1*abb8(18)
      abb8(21)=-abb8(21)*abb8(49)
      abb8(18)=abb8(21)+abb8(18)
      abb8(18)=2.0_ki*abb8(18)
      abb8(21)=abb8(30)+2.0_ki*abb8(11)
      abb8(21)=abb8(33)*abb8(21)
      abb8(13)=abb8(21)+abb8(13)+abb8(24)+2.0_ki*abb8(20)
      abb8(13)=spak2e7*abb8(13)
      abb8(13)=-abb8(39)+abb8(13)
      abb8(13)=2.0_ki*abb8(13)
      abb8(21)=abb8(36)-2.0_ki*abb8(37)-abb8(34)
      abb8(24)=2.0_ki*spal5e7
      abb8(21)=abb8(21)*abb8(24)
      abb8(26)=-c1*abb8(40)
      abb8(9)=abb8(26)+2.0_ki*abb8(29)+abb8(9)
      abb8(26)=spbe7l6*spal5e7
      abb8(28)=2.0_ki*abb8(26)
      abb8(9)=abb8(9)*abb8(28)
      abb8(12)=abb8(8)*abb8(12)
      abb8(12)=-abb8(16)+abb8(12)-abb8(45)
      abb8(12)=spak1k4*abb8(12)
      abb8(8)=-abb8(15)+abb8(11)+2.0_ki*abb8(8)
      abb8(11)=-abb8(8)*abb8(33)
      abb8(11)=abb8(11)+abb8(12)+abb8(22)-2.0_ki*abb8(23)-abb8(20)
      abb8(11)=abb8(11)*abb8(24)
      abb8(12)=spak3k4*abb8(8)*abb8(28)
      abb8(8)=-spak1k4*abb8(8)
      abb8(15)=-c1*abb8(19)
      abb8(8)=abb8(8)+abb8(15)+2.0_ki*abb8(48)+abb8(46)
      abb8(8)=abb8(8)*abb8(26)
      abb8(15)=-c1*abb8(41)
      abb8(15)=abb8(15)-abb8(31)
      abb8(14)=abb8(14)*abb8(15)
      abb8(15)=abb8(51)*abb8(32)
      abb8(14)=abb8(15)+abb8(14)
      abb8(14)=abb8(14)*abb8(42)
      abb8(8)=abb8(8)+abb8(14)
      abb8(8)=2.0_ki*abb8(8)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd8h2
