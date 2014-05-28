module     p3_usbar_epnebbbar_abbrevd27h2
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(64), public :: abb27
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
      abb27(4)=spbl5k2**(-1)
      abb27(5)=spak2l6**(-1)
      abb27(6)=spbl6k2**(-1)
      abb27(7)=TR*gW
      abb27(7)=abb27(7)**2*abb27(1)*i_*CVSU
      abb27(8)=abb27(7)*abb27(3)**2
      abb27(9)=abb27(8)+abb27(7)
      abb27(10)=mB*abb27(9)
      abb27(11)=spak2l5*c1
      abb27(12)=abb27(10)*abb27(11)
      abb27(13)=abb27(12)*abb27(2)
      abb27(14)=abb27(3)*mB
      abb27(15)=abb27(7)*abb27(14)
      abb27(16)=2.0_ki*c2
      abb27(17)=abb27(16)*abb27(15)
      abb27(18)=abb27(17)*abb27(2)
      abb27(19)=abb27(18)*spak2l5
      abb27(13)=abb27(13)-abb27(19)
      abb27(19)=spbl5k1*abb27(13)
      abb27(20)=abb27(10)*abb27(2)
      abb27(21)=abb27(20)*c1
      abb27(22)=abb27(21)-abb27(18)
      abb27(23)=-spak2l6*abb27(22)*spbl6k1
      abb27(19)=abb27(23)+abb27(19)
      abb27(23)=spbl6k3*spak4l5
      abb27(19)=abb27(23)*abb27(19)
      abb27(24)=mB**3
      abb27(25)=abb27(24)*abb27(9)
      abb27(26)=abb27(4)*c1
      abb27(27)=abb27(25)*abb27(26)
      abb27(27)=abb27(12)-abb27(27)
      abb27(28)=abb27(2)*spak2k4
      abb27(27)=abb27(28)*abb27(27)
      abb27(29)=abb27(28)*abb27(4)
      abb27(30)=abb27(7)*abb27(3)
      abb27(31)=abb27(24)*abb27(30)*abb27(29)
      abb27(32)=abb27(7)*spak2l5
      abb27(33)=abb27(32)*abb27(14)
      abb27(34)=-abb27(28)*abb27(33)
      abb27(31)=abb27(34)+abb27(31)
      abb27(31)=abb27(31)*abb27(16)
      abb27(27)=abb27(31)+abb27(27)
      abb27(27)=spbk2k1*spbl6k3*abb27(27)
      abb27(31)=spak4l5*spbk3k1
      abb27(22)=abb27(22)*abb27(31)
      abb27(34)=spbl6k1*abb27(22)
      abb27(35)=abb27(17)*spak2l5
      abb27(36)=abb27(2)*abb27(5)
      abb27(37)=abb27(35)*abb27(36)
      abb27(38)=abb27(12)*abb27(36)
      abb27(37)=abb27(37)-abb27(38)
      abb27(39)=abb27(37)*abb27(31)
      abb27(40)=spbl5k1*abb27(39)
      abb27(34)=abb27(34)+abb27(40)
      abb27(34)=spak1k2*abb27(34)
      abb27(40)=abb27(28)*abb27(5)
      abb27(41)=abb27(40)*abb27(24)
      abb27(42)=abb27(41)*abb27(30)
      abb27(43)=abb27(42)*abb27(4)
      abb27(33)=abb27(33)*abb27(40)
      abb27(43)=abb27(43)-abb27(33)
      abb27(43)=abb27(43)*abb27(16)
      abb27(44)=abb27(25)*abb27(40)
      abb27(45)=abb27(44)*abb27(26)
      abb27(12)=abb27(12)*abb27(40)
      abb27(43)=abb27(43)-abb27(45)+abb27(12)
      abb27(43)=abb27(43)*spbk3k1
      abb27(46)=-es12*abb27(43)
      abb27(19)=abb27(46)+abb27(34)+abb27(27)+abb27(19)
      abb27(19)=4.0_ki*abb27(19)
      abb27(27)=abb27(28)*abb27(10)*abb27(26)
      abb27(29)=abb27(29)*abb27(17)
      abb27(27)=abb27(27)-abb27(29)
      abb27(29)=spbl6k1*spbk3k2
      abb27(27)=abb27(27)*abb27(29)
      abb27(34)=abb27(35)*abb27(40)
      abb27(34)=abb27(34)-abb27(12)
      abb27(34)=abb27(34)*spbk3k1
      abb27(27)=abb27(27)+abb27(34)
      abb27(35)=mB**2
      abb27(8)=abb27(8)*abb27(35)
      abb27(35)=abb27(35)*abb27(7)
      abb27(8)=abb27(8)+abb27(35)
      abb27(46)=abb27(8)*abb27(26)
      abb27(47)=abb27(46)*spak2k4
      abb27(35)=abb27(35)*abb27(3)
      abb27(48)=abb27(35)*abb27(4)
      abb27(49)=abb27(48)*spak2k4
      abb27(50)=spak2k4*abb27(30)*spak2l5
      abb27(49)=abb27(49)-abb27(50)
      abb27(49)=abb27(49)*abb27(16)
      abb27(51)=abb27(9)*abb27(11)
      abb27(52)=abb27(51)*spak2k4
      abb27(47)=abb27(49)-abb27(47)+abb27(52)
      abb27(49)=abb27(47)*spbk2k1
      abb27(53)=-spbl6k3*abb27(49)
      abb27(54)=abb27(16)*spak2l5
      abb27(55)=abb27(54)*abb27(30)
      abb27(51)=abb27(55)-abb27(51)
      abb27(56)=abb27(23)*abb27(51)
      abb27(57)=spbl5k1*abb27(56)
      abb27(53)=abb27(57)+abb27(53)+abb27(27)
      abb27(53)=8.0_ki*abb27(53)
      abb27(24)=abb27(24)*abb27(55)
      abb27(25)=abb27(11)*abb27(25)
      abb27(24)=abb27(24)-abb27(25)
      abb27(24)=abb27(24)*abb27(28)*abb27(5)**2
      abb27(25)=spbk3k1*abb27(24)
      abb27(55)=abb27(30)*abb27(16)
      abb27(41)=-abb27(4)*abb27(55)*abb27(41)
      abb27(41)=abb27(45)+abb27(41)
      abb27(41)=abb27(41)*abb27(29)
      abb27(25)=abb27(25)+abb27(41)
      abb27(25)=abb27(6)*abb27(25)
      abb27(25)=-abb27(43)+abb27(25)
      abb27(25)=8.0_ki*abb27(25)
      abb27(41)=abb27(47)*spbl6k2
      abb27(43)=-spbk3k1*abb27(41)
      abb27(45)=abb27(31)*abb27(51)
      abb27(47)=spbl6l5*abb27(45)
      abb27(27)=abb27(47)+abb27(43)-abb27(27)
      abb27(27)=8.0_ki*abb27(27)
      abb27(43)=abb27(8)*c1
      abb27(47)=spak2k4*abb27(43)
      abb27(10)=abb27(10)*c1
      abb27(57)=-abb27(28)*abb27(10)
      abb27(47)=abb27(47)+abb27(57)
      abb27(47)=abb27(4)*abb27(47)
      abb27(57)=-spak2k4*abb27(35)
      abb27(15)=abb27(28)*abb27(15)
      abb27(15)=abb27(57)+abb27(15)
      abb27(15)=abb27(4)*abb27(15)
      abb27(15)=abb27(50)+abb27(15)
      abb27(15)=abb27(15)*abb27(16)
      abb27(28)=spak2k4*abb27(5)
      abb27(50)=abb27(28)*abb27(8)*abb27(11)
      abb27(57)=abb27(35)*abb27(28)
      abb27(58)=abb27(54)*abb27(57)
      abb27(58)=-abb27(50)+abb27(58)
      abb27(58)=abb27(6)*abb27(58)
      abb27(15)=abb27(58)+abb27(15)-abb27(52)+abb27(47)
      abb27(15)=abb27(29)*abb27(15)
      abb27(47)=spal5l6*spbl6k3
      abb27(52)=spak1l5*spbk3k1
      abb27(47)=abb27(47)-abb27(52)
      abb27(52)=-abb27(47)*spak2k4
      abb27(31)=abb27(31)*spak1k2
      abb27(58)=-spak2l6*abb27(23)
      abb27(52)=abb27(52)+abb27(58)+abb27(31)
      abb27(58)=abb27(9)*c1
      abb27(55)=abb27(58)-abb27(55)
      abb27(52)=abb27(55)*abb27(52)
      abb27(55)=-spbl5k3*spak4l5*abb27(51)
      abb27(52)=abb27(55)+abb27(52)
      abb27(52)=spbl6k1*abb27(52)
      abb27(15)=-abb27(34)+abb27(52)+abb27(15)
      abb27(15)=4.0_ki*abb27(15)
      abb27(34)=-spbl6k3*abb27(41)
      abb27(41)=spbl6l5*abb27(56)
      abb27(34)=abb27(34)+abb27(41)
      abb27(34)=4.0_ki*abb27(34)
      abb27(41)=8.0_ki*abb27(51)
      abb27(52)=abb27(41)*spbk3k1
      abb27(8)=abb27(8)*abb27(5)
      abb27(11)=abb27(8)*abb27(11)
      abb27(55)=abb27(35)*abb27(5)
      abb27(54)=abb27(55)*abb27(54)
      abb27(54)=abb27(54)-abb27(11)
      abb27(54)=abb27(54)*abb27(6)
      abb27(56)=8.0_ki*abb27(54)
      abb27(58)=-spbk3k1*abb27(56)
      abb27(51)=4.0_ki*abb27(51)
      abb27(59)=spbk3k1*abb27(51)
      abb27(20)=abb27(20)*abb27(26)
      abb27(18)=abb27(18)*abb27(4)
      abb27(18)=abb27(20)-abb27(18)
      abb27(20)=-spak2l6*spbl6k2
      abb27(20)=abb27(20)+es12
      abb27(20)=abb27(18)*abb27(20)
      abb27(13)=abb27(13)+abb27(20)
      abb27(13)=4.0_ki*spbl6k1*abb27(13)
      abb27(20)=abb27(41)*spbl6k1
      abb27(41)=abb27(41)*spbl6k3
      abb27(56)=-spbl6k3*abb27(56)
      abb27(51)=spbl6k3*abb27(51)
      abb27(60)=abb27(28)*mB**4
      abb27(9)=abb27(9)*abb27(60)
      abb27(61)=-abb27(9)-abb27(44)
      abb27(61)=abb27(61)*abb27(26)
      abb27(30)=abb27(30)*abb27(60)
      abb27(60)=abb27(30)+abb27(42)
      abb27(60)=abb27(4)*abb27(60)
      abb27(57)=abb27(57)*spak2l5
      abb27(60)=-abb27(57)+abb27(60)
      abb27(60)=abb27(60)*abb27(16)
      abb27(60)=abb27(60)+abb27(50)+abb27(61)
      abb27(61)=abb27(6)*spbk3k2
      abb27(60)=spbk2k1*abb27(60)*abb27(61)
      abb27(62)=abb27(54)*spbk3k2
      abb27(63)=-spbl5k1*spak4l5*abb27(62)
      abb27(29)=abb27(18)*abb27(29)
      abb27(64)=spak4l6*abb27(29)
      abb27(22)=abb27(64)+abb27(63)+abb27(22)+abb27(60)
      abb27(22)=4.0_ki*abb27(22)
      abb27(18)=abb27(54)+abb27(18)
      abb27(18)=4.0_ki*spbk2k1*abb27(18)
      abb27(39)=4.0_ki*abb27(39)
      abb27(54)=-spbk2k1*abb27(6)*abb27(24)
      abb27(60)=spak4l6*spbl6k1*abb27(37)
      abb27(54)=abb27(54)+abb27(60)
      abb27(54)=4.0_ki*abb27(54)
      abb27(30)=abb27(30)+2.0_ki*abb27(42)
      abb27(30)=abb27(4)*abb27(30)
      abb27(30)=abb27(30)-abb27(57)-abb27(33)
      abb27(30)=abb27(30)*abb27(16)
      abb27(9)=-abb27(9)-2.0_ki*abb27(44)
      abb27(9)=abb27(9)*abb27(26)
      abb27(9)=abb27(30)+abb27(9)+abb27(50)+abb27(12)
      abb27(9)=spbk3k2*abb27(9)
      abb27(12)=-spbl6l5*abb27(62)
      abb27(30)=spbl5k3*abb27(37)
      abb27(12)=abb27(30)+abb27(12)
      abb27(12)=spak4l5*abb27(12)
      abb27(14)=abb27(14)*abb27(2)
      abb27(7)=abb27(14)*abb27(7)
      abb27(30)=-abb27(35)-2.0_ki*abb27(7)
      abb27(30)=abb27(30)*abb27(16)
      abb27(30)=abb27(30)+abb27(43)+2.0_ki*abb27(21)
      abb27(23)=abb27(30)*abb27(23)
      abb27(30)=abb27(8)*c1
      abb27(33)=abb27(5)*abb27(7)
      abb27(33)=abb27(55)+abb27(33)
      abb27(33)=abb27(33)*abb27(16)
      abb27(36)=-abb27(36)*abb27(10)
      abb27(33)=abb27(33)-abb27(30)+abb27(36)
      abb27(31)=abb27(33)*abb27(31)
      abb27(10)=abb27(10)-abb27(17)
      abb27(10)=abb27(47)*abb27(10)*abb27(40)
      abb27(17)=-abb27(24)*abb27(61)
      abb27(24)=spak1k4*abb27(29)
      abb27(9)=abb27(24)+abb27(31)+abb27(17)+abb27(9)+abb27(23)+abb27(12)+abb27&
      &(10)
      abb27(9)=4.0_ki*abb27(9)
      abb27(10)=abb27(16)*abb27(48)
      abb27(10)=abb27(10)-abb27(46)
      abb27(10)=abb27(28)*abb27(10)
      abb27(12)=abb27(10)*spbk3k2
      abb27(12)=8.0_ki*abb27(12)
      abb27(17)=4.0_ki*spbk3k2
      abb27(10)=-abb27(10)*abb27(17)
      abb27(7)=-abb27(35)-abb27(7)
      abb27(7)=abb27(7)*abb27(16)
      abb27(7)=abb27(7)+abb27(43)+abb27(21)
      abb27(7)=spbl6k2*abb27(4)*abb27(7)
      abb27(21)=spak2l5*abb27(55)
      abb27(14)=abb27(5)*abb27(32)*abb27(14)
      abb27(14)=abb27(21)+abb27(14)
      abb27(14)=abb27(14)*abb27(16)
      abb27(8)=abb27(8)*abb27(26)
      abb27(16)=abb27(55)*abb27(16)
      abb27(21)=abb27(16)*abb27(4)
      abb27(8)=abb27(8)-abb27(21)
      abb27(21)=-es12*abb27(8)
      abb27(7)=abb27(21)+abb27(7)+abb27(14)-abb27(11)-abb27(38)
      abb27(7)=4.0_ki*abb27(7)
      abb27(11)=-8.0_ki*abb27(8)
      abb27(8)=abb27(17)*abb27(8)
      abb27(14)=-spak4l6*abb27(8)
      abb27(16)=-abb27(30)+abb27(16)
      abb27(16)=4.0_ki*spak4l5*abb27(16)
      abb27(8)=-spak1k4*abb27(8)
      abb27(17)=-spbk3k1*abb27(49)
      abb27(21)=spbl5k1*abb27(45)
      abb27(17)=abb27(17)+abb27(21)
      abb27(17)=4.0_ki*abb27(17)
      R2d27=0.0_ki
      rat2 = rat2 + R2d27
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='27' value='", &
          & R2d27, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd27h2