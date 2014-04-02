module     p0_dbaru_epnebbbar_abbrevd1h1
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(51), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spak2l5**(-1)
      abb1(4)=spbl6k2**(-1)
      abb1(5)=spak2l6**(-1)
      abb1(6)=spbl5k2**(-1)
      abb1(7)=NC*c2
      abb1(7)=abb1(7)-c1
      abb1(8)=TR*gW
      abb1(7)=abb1(7)*abb1(8)**2*i_*CVDU*abb1(2)*abb1(1)
      abb1(8)=abb1(7)*spbk3k2**2
      abb1(9)=mB**2
      abb1(10)=abb1(9)*abb1(4)
      abb1(11)=abb1(10)*abb1(3)
      abb1(12)=abb1(11)*spak1k2
      abb1(13)=abb1(8)*abb1(12)
      abb1(14)=spbk3k2*abb1(7)
      abb1(15)=spbl5k3*spak1l6
      abb1(16)=abb1(14)*abb1(15)
      abb1(13)=abb1(13)+abb1(16)
      abb1(13)=abb1(13)*spak3k4
      abb1(16)=4.0_ki*abb1(13)
      abb1(17)=spak3l6*spbl5k3
      abb1(18)=spbl5k4*spak4l6
      abb1(19)=abb1(17)+abb1(18)
      abb1(20)=spbl5k1*spak1l6
      abb1(21)=spak2l6*spbl5k2
      abb1(21)=abb1(20)+abb1(19)-abb1(21)
      abb1(22)=abb1(14)*spak1k4
      abb1(23)=abb1(21)*abb1(22)
      abb1(9)=abb1(9)*abb1(3)
      abb1(24)=2.0_ki*abb1(9)
      abb1(25)=abb1(24)*abb1(14)
      abb1(26)=abb1(14)*spbl5k2
      abb1(25)=abb1(25)+abb1(26)
      abb1(27)=spak4l6*spak1k2
      abb1(28)=abb1(25)*abb1(27)
      abb1(29)=abb1(11)*abb1(14)
      abb1(30)=spak1k2*spbl5k2
      abb1(31)=abb1(29)*abb1(30)
      abb1(32)=-abb1(7)*spbl5k2
      abb1(33)=abb1(32)*abb1(15)
      abb1(31)=abb1(31)-abb1(33)
      abb1(33)=abb1(31)*spak4l5
      abb1(10)=abb1(5)*abb1(10)*spak1k2
      abb1(34)=spak4l6*spbl5k2
      abb1(35)=abb1(14)*abb1(10)*abb1(34)
      abb1(36)=abb1(29)*spak1k4
      abb1(37)=es234-es34
      abb1(38)=abb1(36)*abb1(37)
      abb1(39)=-abb1(34)*abb1(7)
      abb1(40)=spbl5k3*abb1(39)*spak1l5
      abb1(41)=-abb1(7)*abb1(15)
      abb1(42)=spak4l6*abb1(41)*spbl6k2
      abb1(43)=-abb1(7)*spak1k4
      abb1(15)=spbk2k1*abb1(43)*abb1(15)
      abb1(44)=-abb1(7)*spak1l6
      abb1(45)=abb1(44)*abb1(34)
      abb1(46)=abb1(45)*spbl6k3
      abb1(15)=-abb1(15)-abb1(42)+abb1(40)+abb1(23)+abb1(28)+abb1(33)+abb1(35)+&
      &abb1(46)+abb1(38)
      abb1(23)=spbk4k3*abb1(43)*abb1(34)
      abb1(28)=abb1(15)-abb1(23)
      abb1(28)=4.0_ki*abb1(28)
      abb1(33)=16.0_ki*abb1(36)
      abb1(13)=2.0_ki*abb1(23)-abb1(13)-abb1(15)
      abb1(13)=2.0_ki*abb1(13)
      abb1(15)=-8.0_ki*abb1(36)
      abb1(9)=abb1(9)*abb1(6)
      abb1(9)=abb1(9)+1.0_ki
      abb1(9)=abb1(9)*spak1k2
      abb1(9)=abb1(9)+abb1(10)
      abb1(8)=abb1(9)*abb1(8)*spak3k4
      abb1(23)=es34*abb1(22)
      abb1(34)=abb1(14)*spak3k4
      abb1(35)=abb1(34)*spbl5k3
      abb1(36)=-spak1l5*abb1(35)
      abb1(38)=-spbl6k3*spak1l6*abb1(34)
      abb1(8)=abb1(38)+abb1(36)+abb1(23)+abb1(8)
      abb1(8)=2.0_ki*abb1(8)
      abb1(23)=8.0_ki*abb1(22)
      abb1(22)=2.0_ki*abb1(22)
      abb1(36)=spbl5k3**2
      abb1(38)=-spak1l5*abb1(7)*abb1(36)
      abb1(40)=abb1(29)*spak1k2
      abb1(42)=spbl6k3*abb1(40)
      abb1(38)=abb1(42)+abb1(38)
      abb1(38)=spak3k4*abb1(38)
      abb1(9)=abb1(35)*abb1(9)
      abb1(35)=abb1(43)*spbl5k3
      abb1(42)=-es34*abb1(35)
      abb1(9)=abb1(42)+abb1(9)+abb1(38)
      abb1(9)=2.0_ki*abb1(9)
      abb1(35)=2.0_ki*abb1(35)
      abb1(36)=-abb1(36)*abb1(44)
      abb1(38)=spbl5k3*abb1(40)
      abb1(36)=abb1(36)+abb1(38)
      abb1(36)=2.0_ki*spak3k4*abb1(36)
      abb1(38)=abb1(43)*abb1(19)
      abb1(24)=-abb1(24)*abb1(7)
      abb1(24)=abb1(24)+abb1(32)
      abb1(27)=abb1(24)*abb1(27)
      abb1(27)=abb1(27)+abb1(38)
      abb1(27)=spbk4k2*abb1(27)
      abb1(25)=-spak1k2*abb1(25)
      abb1(38)=abb1(32)*spak1l6
      abb1(42)=-spbl6k3*abb1(38)
      abb1(25)=abb1(42)+abb1(25)
      abb1(25)=spak3l6*abb1(25)
      abb1(42)=abb1(29)*spak1k3
      abb1(46)=abb1(43)*spbk4k2
      abb1(47)=abb1(46)*abb1(11)
      abb1(42)=abb1(42)-abb1(47)
      abb1(47)=-abb1(42)*abb1(37)
      abb1(14)=abb1(14)*spak1k3
      abb1(48)=-abb1(19)*abb1(14)
      abb1(49)=-spak3l6*abb1(26)
      abb1(50)=spbk4k2*abb1(39)
      abb1(49)=abb1(49)+abb1(50)
      abb1(49)=abb1(49)*abb1(10)
      abb1(50)=spbl5k4*abb1(38)
      abb1(11)=-abb1(11)*abb1(7)
      abb1(30)=abb1(11)*abb1(30)
      abb1(51)=spbk4k2*abb1(30)
      abb1(50)=abb1(50)+abb1(51)
      abb1(50)=spak4l5*abb1(50)
      abb1(17)=-abb1(32)*abb1(17)
      abb1(51)=-spbl5k4*abb1(39)
      abb1(17)=abb1(17)+abb1(51)
      abb1(17)=spak1l5*abb1(17)
      abb1(51)=-spbl5k2*abb1(46)
      abb1(26)=spak1k3*abb1(26)
      abb1(26)=abb1(51)+abb1(26)
      abb1(26)=spak2l6*abb1(26)
      abb1(51)=spak3l6*abb1(41)
      abb1(18)=abb1(44)*abb1(18)
      abb1(18)=abb1(51)+abb1(18)
      abb1(18)=spbl6k2*abb1(18)
      abb1(14)=abb1(14)-abb1(46)
      abb1(20)=-abb1(14)*abb1(20)
      abb1(46)=spak3l6*spbl5k2*abb1(43)
      abb1(39)=-spak1k3*abb1(39)
      abb1(39)=abb1(46)+abb1(39)
      abb1(39)=spbk4k3*abb1(39)
      abb1(43)=abb1(43)*spbl5k4
      abb1(46)=spak1l6*abb1(43)
      abb1(51)=spak1k3*abb1(41)
      abb1(46)=abb1(46)+abb1(51)
      abb1(46)=spbk2k1*abb1(46)
      abb1(31)=-spak3l5*abb1(31)
      abb1(45)=-spbl6k4*abb1(45)
      abb1(17)=abb1(45)+abb1(31)+abb1(46)+abb1(39)+abb1(20)+abb1(18)+abb1(26)+a&
      &bb1(17)+abb1(50)+abb1(49)+abb1(48)+abb1(27)+abb1(47)+abb1(25)
      abb1(17)=2.0_ki*abb1(17)
      abb1(18)=4.0_ki*abb1(38)
      abb1(20)=-8.0_ki*abb1(42)
      abb1(25)=2.0_ki*abb1(38)
      abb1(26)=spak1l5*abb1(32)
      abb1(27)=spbl6k2*abb1(44)
      abb1(14)=abb1(27)+3.0_ki*abb1(14)+abb1(26)
      abb1(14)=2.0_ki*abb1(14)
      abb1(24)=spak1k2*abb1(24)
      abb1(26)=spak1k3*spbl5k3*abb1(7)
      abb1(10)=abb1(32)*abb1(10)
      abb1(27)=spbl6l5*abb1(44)
      abb1(10)=-2.0_ki*abb1(27)+abb1(10)+abb1(26)+abb1(24)-abb1(43)
      abb1(10)=2.0_ki*abb1(10)
      abb1(24)=2.0_ki*abb1(30)
      abb1(26)=abb1(40)-abb1(41)
      abb1(27)=4.0_ki*abb1(26)
      abb1(26)=2.0_ki*abb1(26)
      abb1(30)=-spbl5k4*abb1(44)
      abb1(12)=spbk4k2*abb1(7)*abb1(12)
      abb1(12)=abb1(30)+abb1(12)
      abb1(12)=2.0_ki*abb1(12)
      abb1(21)=-abb1(34)*abb1(21)
      abb1(29)=abb1(29)*spak3k4
      abb1(30)=es12-abb1(37)
      abb1(30)=abb1(29)*abb1(30)
      abb1(21)=abb1(21)+abb1(30)
      abb1(21)=2.0_ki*abb1(21)
      abb1(29)=-8.0_ki*abb1(29)
      abb1(30)=4.0_ki*abb1(34)
      abb1(31)=-spbk3k1*spak3k4*abb1(26)
      abb1(19)=abb1(7)*abb1(19)
      abb1(34)=-abb1(11)*abb1(37)
      abb1(32)=spak2l6*abb1(32)
      abb1(19)=abb1(32)+abb1(34)+abb1(19)
      abb1(19)=2.0_ki*abb1(19)
      abb1(11)=-8.0_ki*abb1(11)
      abb1(7)=-4.0_ki*abb1(7)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd1h1
