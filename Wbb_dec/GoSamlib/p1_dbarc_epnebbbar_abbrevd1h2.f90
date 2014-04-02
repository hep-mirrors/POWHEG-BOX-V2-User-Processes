module     p1_dbarc_epnebbbar_abbrevd1h2
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(51), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spbl5k2**(-1)
      abb1(4)=spak2l6**(-1)
      abb1(5)=spak2l5**(-1)
      abb1(6)=spbl6k2**(-1)
      abb1(7)=NC*c2
      abb1(7)=abb1(7)-c1
      abb1(8)=TR*gW
      abb1(7)=abb1(7)*abb1(8)**2*i_*CVDC*abb1(2)*abb1(1)
      abb1(8)=spbk3k2*abb1(7)
      abb1(9)=spbl6k3*spak1l5
      abb1(10)=abb1(8)*abb1(9)
      abb1(11)=abb1(7)*spbk3k2**2
      abb1(12)=mB**2
      abb1(13)=abb1(12)*abb1(4)
      abb1(14)=abb1(13)*abb1(3)
      abb1(15)=spak1k2*abb1(14)
      abb1(16)=abb1(11)*abb1(15)
      abb1(10)=abb1(10)+abb1(16)
      abb1(10)=abb1(10)*spak3k4
      abb1(16)=4.0_ki*abb1(10)
      abb1(17)=spak3l5*spbl6k3
      abb1(18)=spbl6k4*spak4l5
      abb1(19)=abb1(17)+abb1(18)
      abb1(20)=spbl6k1*spak1l5
      abb1(21)=spak2l5*spbl6k2
      abb1(21)=-abb1(19)+abb1(21)-abb1(20)
      abb1(22)=abb1(8)*spak1k4
      abb1(23)=abb1(21)*abb1(22)
      abb1(24)=-abb1(7)*abb1(9)
      abb1(25)=abb1(24)*spbl6k2
      abb1(26)=abb1(8)*spbl6k2
      abb1(27)=abb1(26)*abb1(15)
      abb1(25)=abb1(25)-abb1(27)
      abb1(27)=abb1(25)*spak4l6
      abb1(28)=2.0_ki*abb1(13)
      abb1(29)=abb1(28)*abb1(8)
      abb1(29)=abb1(29)+abb1(26)
      abb1(30)=spak4l5*spak1k2
      abb1(31)=abb1(29)*abb1(30)
      abb1(12)=abb1(5)*abb1(12)*spak1k2*abb1(3)
      abb1(32)=spak4l5*spbl6k2
      abb1(33)=abb1(8)*abb1(12)*abb1(32)
      abb1(34)=abb1(22)*abb1(14)
      abb1(35)=es234-es34
      abb1(36)=-abb1(34)*abb1(35)
      abb1(37)=-abb1(32)*abb1(7)
      abb1(38)=spbl6k3*abb1(37)*spak1l6
      abb1(39)=spak4l5*abb1(24)*spbl5k2
      abb1(40)=-abb1(7)*spak1k4
      abb1(9)=spbk2k1*abb1(40)*abb1(9)
      abb1(41)=abb1(37)*spak1l5
      abb1(42)=abb1(41)*spbl5k3
      abb1(9)=-abb1(9)-abb1(39)+abb1(38)-abb1(36)-abb1(23)-abb1(27)+abb1(31)+ab&
      &b1(33)+abb1(42)
      abb1(23)=spbk4k3*abb1(40)*abb1(32)
      abb1(27)=abb1(9)-abb1(23)
      abb1(27)=4.0_ki*abb1(27)
      abb1(31)=16.0_ki*abb1(34)
      abb1(9)=2.0_ki*abb1(23)-abb1(10)-abb1(9)
      abb1(9)=2.0_ki*abb1(9)
      abb1(10)=-8.0_ki*abb1(34)
      abb1(23)=abb1(7)*spak1l5
      abb1(32)=spbl6k3**2
      abb1(33)=abb1(32)*abb1(23)
      abb1(34)=abb1(15)*abb1(8)
      abb1(36)=spbl6k3*abb1(34)
      abb1(33)=abb1(33)+abb1(36)
      abb1(33)=2.0_ki*spak3k4*abb1(33)
      abb1(13)=abb1(13)*abb1(6)
      abb1(13)=abb1(13)+1.0_ki
      abb1(13)=abb1(13)*spak1k2
      abb1(13)=abb1(13)+abb1(12)
      abb1(11)=abb1(11)*spak3k4*abb1(13)
      abb1(36)=es34*abb1(22)
      abb1(38)=abb1(8)*spak3k4
      abb1(39)=abb1(38)*spbl6k3
      abb1(42)=-spak1l6*abb1(39)
      abb1(43)=abb1(38)*spbl5k3
      abb1(44)=-spak1l5*abb1(43)
      abb1(11)=abb1(44)+abb1(42)+abb1(36)+abb1(11)
      abb1(11)=2.0_ki*abb1(11)
      abb1(36)=8.0_ki*abb1(22)
      abb1(22)=2.0_ki*abb1(22)
      abb1(13)=abb1(39)*abb1(13)
      abb1(39)=abb1(40)*spbl6k3
      abb1(42)=-es34*abb1(39)
      abb1(32)=-spak1l6*spak3k4*abb1(7)*abb1(32)
      abb1(43)=abb1(15)*abb1(43)
      abb1(13)=abb1(43)+abb1(32)+abb1(42)+abb1(13)
      abb1(13)=2.0_ki*abb1(13)
      abb1(32)=2.0_ki*abb1(39)
      abb1(39)=abb1(40)*abb1(19)
      abb1(42)=abb1(7)*spbl6k2
      abb1(28)=-abb1(28)*abb1(7)
      abb1(28)=abb1(28)-abb1(42)
      abb1(30)=abb1(28)*abb1(30)
      abb1(30)=abb1(30)+abb1(39)
      abb1(30)=spbk4k2*abb1(30)
      abb1(29)=-spak1k2*abb1(29)
      abb1(39)=-spbl6k2*abb1(23)
      abb1(43)=-spbl5k3*abb1(39)
      abb1(29)=abb1(43)+abb1(29)
      abb1(29)=spak3l5*abb1(29)
      abb1(43)=abb1(14)*abb1(8)
      abb1(44)=abb1(43)*spak1k3
      abb1(45)=abb1(40)*spbk4k2
      abb1(46)=abb1(45)*abb1(14)
      abb1(44)=abb1(44)-abb1(46)
      abb1(46)=-abb1(44)*abb1(35)
      abb1(8)=abb1(8)*spak1k3
      abb1(47)=-abb1(19)*abb1(8)
      abb1(48)=-spak3l5*abb1(26)
      abb1(49)=spbk4k2*abb1(37)
      abb1(48)=abb1(48)+abb1(49)
      abb1(48)=abb1(48)*abb1(12)
      abb1(49)=spbl6k4*abb1(39)
      abb1(50)=-abb1(42)*abb1(15)
      abb1(51)=spbk4k2*abb1(50)
      abb1(49)=abb1(49)+abb1(51)
      abb1(49)=spak4l6*abb1(49)
      abb1(17)=abb1(42)*abb1(17)
      abb1(51)=-spbl6k4*abb1(37)
      abb1(17)=abb1(17)+abb1(51)
      abb1(17)=spak1l6*abb1(17)
      abb1(51)=-spbl6k2*abb1(45)
      abb1(26)=spak1k3*abb1(26)
      abb1(26)=abb1(51)+abb1(26)
      abb1(26)=spak2l5*abb1(26)
      abb1(51)=spak3l5*abb1(24)
      abb1(18)=-abb1(18)*abb1(23)
      abb1(18)=abb1(51)+abb1(18)
      abb1(18)=spbl5k2*abb1(18)
      abb1(8)=abb1(8)-abb1(45)
      abb1(20)=-abb1(8)*abb1(20)
      abb1(45)=spak3l5*spbl6k2*abb1(40)
      abb1(37)=-spak1k3*abb1(37)
      abb1(37)=abb1(45)+abb1(37)
      abb1(37)=spbk4k3*abb1(37)
      abb1(40)=abb1(40)*spbl6k4
      abb1(45)=spak1l5*abb1(40)
      abb1(51)=spak1k3*abb1(24)
      abb1(45)=abb1(45)+abb1(51)
      abb1(45)=spbk2k1*abb1(45)
      abb1(25)=spak3l6*abb1(25)
      abb1(41)=-spbl5k4*abb1(41)
      abb1(17)=abb1(41)+abb1(25)+abb1(45)+abb1(37)+abb1(20)+abb1(18)+abb1(26)+a&
      &bb1(17)+abb1(49)+abb1(48)+abb1(47)+abb1(30)+abb1(46)+abb1(29)
      abb1(17)=2.0_ki*abb1(17)
      abb1(18)=4.0_ki*abb1(39)
      abb1(20)=-8.0_ki*abb1(44)
      abb1(25)=2.0_ki*abb1(39)
      abb1(26)=2.0_ki*abb1(50)
      abb1(29)=-spak1l6*abb1(42)
      abb1(30)=-spbl5k2*abb1(23)
      abb1(8)=abb1(30)+3.0_ki*abb1(8)+abb1(29)
      abb1(8)=2.0_ki*abb1(8)
      abb1(28)=spak1k2*abb1(28)
      abb1(29)=spak1k3*spbl6k3*abb1(7)
      abb1(12)=-abb1(42)*abb1(12)
      abb1(30)=-spbl6l5*abb1(23)
      abb1(12)=2.0_ki*abb1(30)+abb1(12)+abb1(29)+abb1(28)-abb1(40)
      abb1(12)=2.0_ki*abb1(12)
      abb1(24)=abb1(34)-abb1(24)
      abb1(28)=4.0_ki*abb1(24)
      abb1(24)=2.0_ki*abb1(24)
      abb1(23)=spbl6k4*abb1(23)
      abb1(15)=spbk4k2*abb1(7)*abb1(15)
      abb1(15)=abb1(23)+abb1(15)
      abb1(15)=2.0_ki*abb1(15)
      abb1(21)=abb1(38)*abb1(21)
      abb1(23)=abb1(43)*spak3k4
      abb1(29)=es12-abb1(35)
      abb1(29)=abb1(23)*abb1(29)
      abb1(21)=abb1(21)+abb1(29)
      abb1(21)=2.0_ki*abb1(21)
      abb1(23)=-8.0_ki*abb1(23)
      abb1(29)=4.0_ki*abb1(38)
      abb1(30)=-spbk3k1*spak3k4*abb1(24)
      abb1(34)=-abb1(14)*abb1(35)
      abb1(19)=-abb1(19)+abb1(34)
      abb1(19)=-abb1(7)*abb1(19)
      abb1(34)=-spak2l5*abb1(42)
      abb1(19)=abb1(34)+abb1(19)
      abb1(19)=2.0_ki*abb1(19)
      abb1(14)=8.0_ki*abb1(7)*abb1(14)
      abb1(7)=-4.0_ki*abb1(7)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd1h2
