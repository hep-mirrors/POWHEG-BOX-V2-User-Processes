module     p3_usbar_epnebbbar_abbrevd27h0
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(60), public :: abb27
   complex(ki), public :: R2d27
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p3_usbar_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_color, only: TR
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      implicit none
      abb27(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb27(2)=sqrt(mB**2)
      abb27(3)=NC**(-1)
      abb27(4)=spbl6k2**(-1)
      abb27(5)=spbl5k2**(-1)
      abb27(6)=spak2l6**(-1)
      abb27(7)=TR*gW
      abb27(7)=abb27(7)**2*abb27(1)*i_*CVSU
      abb27(8)=abb27(7)*abb27(3)**2
      abb27(9)=mB**2
      abb27(10)=abb27(8)*abb27(9)
      abb27(9)=abb27(9)*abb27(7)
      abb27(10)=abb27(10)+abb27(9)
      abb27(11)=abb27(2)*c1
      abb27(12)=abb27(10)*abb27(11)
      abb27(13)=spak2l5*abb27(4)
      abb27(14)=abb27(12)*abb27(13)
      abb27(15)=abb27(14)*spbk3k2
      abb27(8)=abb27(8)+abb27(7)
      abb27(16)=abb27(5)*spbk3k2
      abb27(17)=abb27(16)*mB**4
      abb27(18)=abb27(4)*c1
      abb27(19)=-abb27(18)*abb27(2)*abb27(8)*abb27(17)
      abb27(19)=abb27(15)+abb27(19)
      abb27(20)=spbk2k1*spak2k4
      abb27(19)=abb27(19)*abb27(20)
      abb27(21)=abb27(12)*abb27(5)
      abb27(11)=abb27(8)*abb27(11)
      abb27(22)=abb27(11)*spak2l5
      abb27(21)=abb27(21)-abb27(22)
      abb27(23)=abb27(21)*abb27(20)
      abb27(24)=abb27(2)*abb27(3)
      abb27(9)=abb27(24)*abb27(9)
      abb27(25)=abb27(9)*abb27(5)
      abb27(26)=abb27(7)*abb27(3)
      abb27(27)=abb27(26)*abb27(2)
      abb27(28)=abb27(27)*spak2l5
      abb27(25)=abb27(25)-abb27(28)
      abb27(29)=2.0_ki*c2
      abb27(30)=abb27(20)*abb27(29)
      abb27(31)=-abb27(25)*abb27(30)
      abb27(23)=abb27(23)+abb27(31)
      abb27(23)=spbk3k1*abb27(23)
      abb27(31)=abb27(29)*abb27(7)
      abb27(24)=abb27(24)*abb27(31)
      abb27(32)=spak2l5*abb27(24)
      abb27(32)=abb27(32)-abb27(22)
      abb27(33)=spak4l5*spbk3k1
      abb27(34)=abb27(32)*abb27(33)
      abb27(35)=spbl5k1*abb27(34)
      abb27(23)=abb27(23)+abb27(35)
      abb27(23)=spak1l6*abb27(23)
      abb27(35)=-spbk3k2*abb27(13)*abb27(9)
      abb27(17)=abb27(4)*abb27(27)*abb27(17)
      abb27(17)=abb27(35)+abb27(17)
      abb27(17)=abb27(17)*abb27(30)
      abb27(10)=abb27(2)*abb27(10)*abb27(18)
      abb27(35)=abb27(9)*abb27(29)
      abb27(36)=abb27(35)*abb27(4)
      abb27(36)=abb27(10)-abb27(36)
      abb27(37)=spbl6k3*spak4l5
      abb27(38)=abb27(37)*spak2l6
      abb27(39)=abb27(38)*spbk2k1
      abb27(40)=abb27(36)*abb27(39)
      abb27(41)=abb27(35)*abb27(13)
      abb27(42)=abb27(41)*spbk3k2
      abb27(15)=abb27(42)-abb27(15)
      abb27(42)=spbl5k1*spak4l5
      abb27(43)=-abb27(15)*abb27(42)
      abb27(44)=abb27(36)*abb27(33)
      abb27(45)=-es12*abb27(44)
      abb27(17)=abb27(23)+abb27(45)+abb27(43)+abb27(40)+abb27(19)+abb27(17)
      abb27(17)=4.0_ki*abb27(17)
      abb27(19)=-abb27(16)*abb27(36)
      abb27(23)=abb27(19)*abb27(20)
      abb27(40)=abb27(32)*spak4l6
      abb27(43)=abb27(40)*spbk3k1
      abb27(23)=abb27(23)-abb27(43)
      abb27(45)=8.0_ki*abb27(23)
      abb27(46)=abb27(4)**2
      abb27(47)=mB**5*abb27(46)*abb27(16)
      abb27(48)=c1*abb27(8)*abb27(47)
      abb27(49)=mB**3
      abb27(50)=abb27(49)*abb27(8)
      abb27(46)=abb27(46)*spak2l5
      abb27(51)=abb27(50)*abb27(46)
      abb27(52)=spbk3k2*c1
      abb27(53)=abb27(51)*abb27(52)
      abb27(48)=-abb27(53)+abb27(48)
      abb27(48)=abb27(48)*abb27(20)
      abb27(54)=abb27(49)*abb27(26)
      abb27(55)=abb27(54)*abb27(46)*spbk3k2
      abb27(26)=-abb27(26)*abb27(47)
      abb27(26)=abb27(55)+abb27(26)
      abb27(26)=abb27(26)*abb27(30)
      abb27(14)=abb27(41)-abb27(14)
      abb27(41)=-spak4l6*spbk3k1*abb27(14)
      abb27(47)=abb27(3)*abb27(49)*abb27(31)
      abb27(46)=abb27(47)*abb27(46)
      abb27(49)=abb27(46)*spbk3k2
      abb27(49)=abb27(49)-abb27(53)
      abb27(42)=abb27(49)*abb27(42)
      abb27(26)=abb27(42)+abb27(41)+abb27(48)+abb27(26)
      abb27(26)=abb27(6)*abb27(26)
      abb27(41)=spbl6k1*spak4l6*abb27(19)
      abb27(26)=abb27(41)-abb27(44)+abb27(26)
      abb27(26)=8.0_ki*abb27(26)
      abb27(8)=mB*abb27(8)
      abb27(41)=abb27(8)*c1
      abb27(42)=abb27(3)*mB
      abb27(31)=abb27(31)*abb27(42)
      abb27(44)=abb27(41)-abb27(31)
      abb27(48)=abb27(44)*spak2l6
      abb27(53)=abb27(8)*abb27(13)
      abb27(55)=c1*abb27(53)
      abb27(13)=abb27(31)*abb27(13)
      abb27(56)=abb27(55)-abb27(13)
      abb27(57)=-spbl5k2*abb27(56)
      abb27(57)=abb27(57)-abb27(48)
      abb27(57)=abb27(33)*abb27(57)
      abb27(23)=abb27(57)-abb27(23)
      abb27(23)=8.0_ki*abb27(23)
      abb27(49)=abb27(49)*abb27(6)
      abb27(50)=abb27(50)*abb27(18)
      abb27(57)=-abb27(50)+abb27(10)
      abb27(57)=abb27(57)*abb27(16)
      abb27(52)=abb27(52)*abb27(53)
      abb27(53)=-abb27(49)+abb27(52)+abb27(57)
      abb27(53)=abb27(20)*abb27(53)
      abb27(57)=spal5l6*spbl6k3
      abb27(58)=spak1l5*spbk3k1
      abb27(57)=abb27(57)-abb27(58)
      abb27(58)=-abb27(57)*abb27(20)
      abb27(59)=abb27(33)*es12
      abb27(39)=abb27(59)-abb27(39)+abb27(58)
      abb27(31)=abb27(31)*abb27(4)
      abb27(8)=abb27(8)*abb27(18)
      abb27(8)=abb27(31)-abb27(8)
      abb27(8)=abb27(8)*abb27(39)
      abb27(18)=abb27(54)*abb27(4)
      abb27(31)=abb27(9)*abb27(4)
      abb27(39)=abb27(18)-abb27(31)
      abb27(39)=abb27(39)*abb27(16)
      abb27(7)=abb27(7)*abb27(42)
      abb27(42)=abb27(7)*spak2l5
      abb27(54)=abb27(4)*abb27(42)
      abb27(58)=-spbk3k2*abb27(54)
      abb27(39)=abb27(58)+abb27(39)
      abb27(39)=abb27(39)*abb27(30)
      abb27(58)=-spbk2k1*abb27(56)
      abb27(59)=spbl5k3*spak4l5
      abb27(60)=abb27(58)*abb27(59)
      abb27(8)=abb27(60)+abb27(43)+abb27(39)+abb27(8)+abb27(53)
      abb27(8)=4.0_ki*abb27(8)
      abb27(34)=4.0_ki*abb27(34)
      abb27(39)=-abb27(6)*abb27(20)*abb27(14)
      abb27(40)=spbl6k1*abb27(40)
      abb27(39)=abb27(39)+abb27(40)
      abb27(39)=4.0_ki*abb27(39)
      abb27(40)=abb27(50)*abb27(5)
      abb27(40)=abb27(40)-abb27(55)
      abb27(20)=abb27(40)*abb27(20)
      abb27(40)=abb27(18)*abb27(5)
      abb27(40)=abb27(40)-abb27(54)
      abb27(30)=abb27(40)*abb27(30)
      abb27(20)=abb27(20)-abb27(30)
      abb27(30)=-spbl6k3*abb27(20)
      abb27(25)=-abb27(25)*abb27(29)
      abb27(21)=abb27(21)+abb27(25)
      abb27(21)=spbk3k1*spak2k4*abb27(21)
      abb27(25)=abb27(37)*abb27(56)
      abb27(37)=spbl5k1*abb27(25)
      abb27(21)=abb27(37)+abb27(21)+abb27(30)
      abb27(21)=4.0_ki*abb27(21)
      abb27(24)=abb27(24)-abb27(11)
      abb27(30)=-abb27(57)*abb27(24)
      abb27(37)=-abb27(16)*abb27(12)
      abb27(15)=-abb27(6)*abb27(15)
      abb27(40)=spbk3k2*abb27(22)
      abb27(9)=abb27(16)*abb27(9)
      abb27(43)=-spbk3k2*abb27(28)
      abb27(9)=abb27(43)+abb27(9)
      abb27(9)=abb27(9)*abb27(29)
      abb27(9)=abb27(15)+abb27(30)+abb27(9)+abb27(40)+abb27(37)
      abb27(9)=spak2k4*abb27(9)
      abb27(7)=abb27(7)+abb27(27)
      abb27(7)=abb27(7)*abb27(29)
      abb27(7)=abb27(7)-abb27(41)-abb27(11)
      abb27(7)=spak1k2*abb27(7)*abb27(33)
      abb27(11)=-abb27(24)*abb27(38)
      abb27(15)=-spbl5k2*abb27(25)
      abb27(24)=abb27(32)*abb27(59)
      abb27(7)=abb27(7)+abb27(24)+abb27(15)+abb27(11)+abb27(9)
      abb27(7)=4.0_ki*abb27(7)
      abb27(9)=abb27(16)*spak2k4
      abb27(11)=-abb27(9)*abb27(44)
      abb27(15)=8.0_ki*abb27(11)
      abb27(24)=abb27(47)*abb27(4)
      abb27(24)=abb27(24)-abb27(50)
      abb27(9)=-abb27(9)*abb27(24)
      abb27(25)=8.0_ki*abb27(6)
      abb27(27)=-abb27(9)*abb27(25)
      abb27(11)=-4.0_ki*abb27(11)
      abb27(14)=spbk2k1*abb27(14)
      abb27(12)=abb27(12)-abb27(35)
      abb27(30)=spbk2k1*abb27(5)
      abb27(32)=abb27(12)*abb27(30)*spak2l6
      abb27(35)=abb27(30)*abb27(36)
      abb27(36)=-es12*abb27(35)
      abb27(14)=abb27(36)+abb27(32)+abb27(14)
      abb27(14)=4.0_ki*abb27(14)
      abb27(32)=abb27(51)*c1
      abb27(32)=abb27(32)-abb27(46)
      abb27(36)=abb27(6)*spbk2k1*abb27(32)
      abb27(35)=abb27(36)-abb27(35)
      abb27(35)=8.0_ki*abb27(35)
      abb27(30)=-abb27(30)*abb27(48)
      abb27(30)=abb27(30)+abb27(58)
      abb27(30)=8.0_ki*abb27(30)
      abb27(36)=8.0_ki*abb27(58)
      abb27(37)=4.0_ki*spbl6k1*abb27(56)
      abb27(38)=abb27(44)*abb27(5)
      abb27(40)=-es12*abb27(38)
      abb27(41)=-spak2l5*abb27(41)
      abb27(28)=abb27(42)+abb27(28)
      abb27(28)=abb27(28)*abb27(29)
      abb27(22)=abb27(40)+abb27(28)+abb27(41)-abb27(22)
      abb27(22)=4.0_ki*abb27(22)
      abb27(28)=abb27(56)*spbk3k1
      abb27(40)=8.0_ki*abb27(28)
      abb27(25)=-spbk3k1*abb27(32)*abb27(25)
      abb27(28)=4.0_ki*abb27(28)
      abb27(32)=-abb27(16)*abb27(44)
      abb27(41)=abb27(32)*spak2l6
      abb27(13)=abb27(13)*spbk3k2
      abb27(13)=-abb27(52)+abb27(13)+abb27(41)
      abb27(41)=8.0_ki*abb27(13)
      abb27(24)=-abb27(16)*abb27(24)
      abb27(24)=-abb27(49)+abb27(24)
      abb27(24)=8.0_ki*abb27(24)
      abb27(13)=4.0_ki*abb27(13)
      abb27(18)=-abb27(18)-abb27(31)
      abb27(18)=abb27(18)*abb27(29)
      abb27(10)=abb27(18)+abb27(50)+abb27(10)
      abb27(10)=spbk3k2*abb27(10)
      abb27(18)=-spbl5k2*abb27(49)
      abb27(10)=abb27(18)+abb27(10)
      abb27(10)=spak4l5*abb27(10)
      abb27(12)=spak4l6*abb27(16)*abb27(12)
      abb27(16)=spak1k4*spbk2k1*abb27(19)
      abb27(10)=abb27(16)+abb27(12)+abb27(10)
      abb27(10)=4.0_ki*abb27(10)
      abb27(12)=8.0_ki*spak4l6*abb27(32)
      abb27(16)=-4.0_ki*spak4l5*abb27(44)
      abb27(9)=4.0_ki*abb27(6)*abb27(9)
      abb27(18)=4.0_ki*spak1k4*abb27(32)
      abb27(19)=-4.0_ki*abb27(38)
      abb27(20)=-spbk3k1*abb27(20)
      abb27(29)=abb27(56)*abb27(33)*spbl5k1
      abb27(20)=abb27(20)+abb27(29)
      abb27(20)=4.0_ki*abb27(20)
      R2d27=0.0_ki
      rat2 = rat2 + R2d27
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='27' value='", &
          & R2d27, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd27h0
