module     p0_dbaru_epnebbbar_abbrevd27h2
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(52), public :: abb27
   complex(ki), public :: R2d27
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_color, only: TR
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      implicit none
      abb27(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb27(2)=sqrt(mB**2)
      abb27(3)=NC**(-1)
      abb27(4)=spbl5k2**(-1)
      abb27(5)=spak2l6**(-1)
      abb27(6)=spbl6k2**(-1)
      abb27(7)=spak2l5**(-1)
      abb27(8)=i_*CVDU
      abb27(9)=abb27(8)*abb27(1)
      abb27(10)=TR*gW
      abb27(10)=abb27(10)**2
      abb27(11)=abb27(10)*c2*abb27(9)
      abb27(12)=abb27(11)*spbk3k2
      abb27(13)=abb27(12)*NC
      abb27(14)=2.0_ki*abb27(3)
      abb27(12)=abb27(14)*abb27(12)
      abb27(15)=abb27(13)-abb27(12)
      abb27(16)=-abb27(15)*abb27(5)
      abb27(17)=c1*abb27(3)**2
      abb27(9)=spbk3k2*abb27(9)
      abb27(18)=abb27(9)*abb27(17)
      abb27(19)=abb27(18)*abb27(10)*abb27(5)
      abb27(16)=abb27(16)-abb27(19)
      abb27(20)=mB**3
      abb27(21)=abb27(2)*spak1k2
      abb27(22)=abb27(20)*abb27(21)
      abb27(16)=abb27(22)*abb27(16)
      abb27(23)=spbl6k2*abb27(4)
      abb27(24)=-abb27(16)*abb27(23)
      abb27(21)=abb27(21)*mB
      abb27(25)=abb27(21)*abb27(5)
      abb27(26)=-abb27(25)*abb27(15)
      abb27(21)=abb27(19)*abb27(21)
      abb27(21)=abb27(26)-abb27(21)
      abb27(26)=abb27(21)*spak2l5*spbl6k2
      abb27(24)=abb27(24)+abb27(26)
      abb27(24)=spak4l6*abb27(24)
      abb27(26)=abb27(13)*abb27(5)
      abb27(19)=abb27(19)+abb27(26)
      abb27(26)=abb27(12)*abb27(5)
      abb27(26)=abb27(26)-abb27(19)
      abb27(27)=abb27(26)*abb27(4)
      abb27(20)=abb27(20)*abb27(2)
      abb27(28)=abb27(20)*abb27(27)
      abb27(29)=abb27(2)*mB
      abb27(26)=-spak2l5*abb27(29)*abb27(26)
      abb27(26)=abb27(28)+abb27(26)
      abb27(26)=es12*spak1k4*abb27(26)
      abb27(24)=abb27(24)+abb27(26)
      abb27(24)=4.0_ki*abb27(24)
      abb27(26)=8.0_ki*spak4l5
      abb27(28)=abb27(21)*abb27(26)
      abb27(22)=-abb27(15)*abb27(22)
      abb27(30)=abb27(10)*spak1k2
      abb27(18)=abb27(18)*abb27(30)
      abb27(20)=abb27(18)*abb27(20)
      abb27(20)=abb27(22)-abb27(20)
      abb27(20)=abb27(20)*abb27(5)**2
      abb27(22)=abb27(20)*abb27(6)
      abb27(31)=abb27(26)*abb27(22)
      abb27(32)=mB**2
      abb27(13)=abb27(13)*abb27(32)
      abb27(12)=abb27(12)*abb27(32)
      abb27(13)=abb27(13)-abb27(12)
      abb27(10)=abb27(10)*abb27(17)
      abb27(9)=abb27(10)*abb27(9)
      abb27(33)=abb27(9)*abb27(32)
      abb27(33)=abb27(13)+abb27(33)
      abb27(34)=abb27(33)*spak1k4
      abb27(35)=-abb27(23)*abb27(34)
      abb27(9)=abb27(15)+abb27(9)
      abb27(36)=abb27(9)*spak1k4
      abb27(37)=abb27(36)*spak2l5
      abb27(38)=spbl6k2*abb27(37)
      abb27(35)=abb27(35)+abb27(38)
      abb27(35)=8.0_ki*abb27(35)
      abb27(38)=4.0_ki*spak4l5
      abb27(39)=abb27(21)*abb27(38)
      abb27(40)=abb27(8)*abb27(5)
      abb27(17)=abb27(29)*abb27(17)*abb27(1)*abb27(30)*abb27(40)
      abb27(14)=-NC+abb27(14)
      abb27(11)=abb27(11)*abb27(14)
      abb27(14)=-abb27(25)*abb27(11)
      abb27(14)=abb27(14)+abb27(17)
      abb27(17)=spbl6k3*abb27(14)*abb27(38)
      abb27(25)=4.0_ki*abb27(21)
      abb27(29)=-spak4l6*abb27(25)
      abb27(30)=-8.0_ki*abb27(36)
      abb27(41)=abb27(38)*spbl5k2
      abb27(42)=abb27(14)*abb27(41)
      abb27(43)=abb27(14)*spak4l5
      abb27(44)=-spbl5k3*abb27(43)
      abb27(45)=spak2k4*abb27(6)
      abb27(20)=abb27(20)*abb27(45)
      abb27(20)=abb27(20)+abb27(44)
      abb27(20)=4.0_ki*abb27(20)
      abb27(10)=abb27(10)*abb27(1)
      abb27(8)=abb27(10)*abb27(8)
      abb27(44)=abb27(11)-abb27(8)
      abb27(46)=abb27(44)*spbl6k3
      abb27(47)=abb27(46)*spak1k4
      abb27(47)=8.0_ki*abb27(47)
      abb27(48)=abb27(44)*spak1k4
      abb27(49)=-4.0_ki*spbl5k3*abb27(48)
      abb27(25)=-spak1k4*abb27(25)
      abb27(19)=abb27(32)*abb27(19)
      abb27(12)=abb27(12)*abb27(5)
      abb27(12)=abb27(19)-abb27(12)
      abb27(19)=abb27(12)*abb27(6)
      abb27(15)=-abb27(19)-abb27(15)
      abb27(15)=spak1k2*abb27(15)
      abb27(13)=spak1k2*abb27(13)
      abb27(50)=abb27(32)*abb27(18)
      abb27(13)=abb27(50)+abb27(13)
      abb27(50)=abb27(7)*abb27(4)
      abb27(13)=abb27(13)*abb27(50)
      abb27(51)=spak1l5*spbl5k3*abb27(44)
      abb27(52)=-spak1l6*abb27(46)
      abb27(13)=abb27(52)+abb27(51)+abb27(13)-abb27(18)+abb27(15)
      abb27(13)=4.0_ki*abb27(13)
      abb27(15)=-4.0_ki*abb27(14)
      abb27(18)=-spak1l5*spbk3k1
      abb27(51)=spal5l6*spbl6k3
      abb27(18)=abb27(51)+abb27(18)
      abb27(14)=abb27(14)*abb27(18)
      abb27(18)=-abb27(22)-abb27(21)
      abb27(18)=spak2l5*abb27(18)
      abb27(16)=abb27(4)*abb27(16)
      abb27(14)=abb27(16)+abb27(18)+abb27(14)
      abb27(14)=4.0_ki*abb27(14)
      abb27(16)=spak1k4*abb27(19)
      abb27(18)=-abb27(50)*abb27(34)
      abb27(16)=abb27(18)+abb27(36)+abb27(16)
      abb27(16)=4.0_ki*abb27(16)
      abb27(18)=-abb27(4)*abb27(34)
      abb27(18)=abb27(18)+abb27(37)
      abb27(18)=4.0_ki*spbk2k1*abb27(18)
      abb27(19)=-abb27(9)*abb27(26)
      abb27(21)=-abb27(33)*abb27(50)
      abb27(21)=abb27(9)+abb27(21)
      abb27(21)=8.0_ki*spak4l5*abb27(21)
      abb27(9)=-abb27(9)*abb27(38)
      abb27(22)=abb27(41)*abb27(44)
      abb27(33)=abb27(12)*abb27(45)
      abb27(34)=spak4l6*abb27(46)
      abb27(37)=spbk3k1*abb27(48)
      abb27(34)=abb27(37)-abb27(33)+abb27(34)
      abb27(34)=4.0_ki*abb27(34)
      abb27(36)=4.0_ki*abb27(36)
      abb27(37)=abb27(44)*spbl6k2
      abb27(41)=-abb27(37)*abb27(26)
      abb27(11)=-abb27(32)*abb27(11)
      abb27(8)=abb27(8)*abb27(32)
      abb27(8)=abb27(11)+abb27(8)
      abb27(46)=abb27(8)*abb27(50)*spbl6k2
      abb27(46)=abb27(46)+abb27(37)
      abb27(26)=abb27(46)*abb27(26)
      abb27(38)=-abb27(38)*abb27(37)
      abb27(46)=spak2k4*abb27(46)
      abb27(48)=spbl6l5*spak4l5*abb27(44)
      abb27(46)=abb27(48)+abb27(46)
      abb27(46)=4.0_ki*abb27(46)
      abb27(27)=-mB**4*abb27(27)
      abb27(12)=-spak2l5*abb27(12)
      abb27(12)=abb27(27)+abb27(12)
      abb27(12)=spak2k4*abb27(12)
      abb27(27)=spbk3k1*abb27(43)
      abb27(12)=abb27(12)+abb27(27)
      abb27(12)=4.0_ki*abb27(12)
      abb27(27)=4.0_ki*abb27(33)
      abb27(10)=abb27(32)*abb27(40)*abb27(10)
      abb27(11)=abb27(5)*abb27(11)
      abb27(10)=abb27(10)+abb27(11)
      abb27(10)=4.0_ki*spbl6k3*abb27(10)*abb27(45)
      abb27(8)=-abb27(8)*abb27(23)
      abb27(11)=-spak2l5*abb27(37)
      abb27(8)=abb27(8)+abb27(11)
      abb27(8)=4.0_ki*abb27(8)
      abb27(11)=4.0_ki*abb27(44)
      R2d27=0.0_ki
      rat2 = rat2 + R2d27
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='27' value='", &
          & R2d27, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd27h2
