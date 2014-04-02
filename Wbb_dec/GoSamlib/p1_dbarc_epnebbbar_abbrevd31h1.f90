module     p1_dbarc_epnebbbar_abbrevd31h1
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(55), public :: abb31
   complex(ki), public :: R2d31
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
      abb31(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb31(2)=NC**(-1)
      abb31(3)=es234**(-1)
      abb31(4)=spak2l5**(-1)
      abb31(5)=spbl6k2**(-1)
      abb31(6)=spak2l6**(-1)
      abb31(7)=sqrt(mB**2)
      abb31(8)=abb31(1)*i_*CVDC
      abb31(9)=TR*gW
      abb31(9)=abb31(9)**2
      abb31(10)=abb31(9)*abb31(3)*abb31(8)
      abb31(11)=abb31(10)*spak1l6
      abb31(12)=abb31(2)**2
      abb31(13)=abb31(12)*c1
      abb31(14)=abb31(13)*spbk3k2
      abb31(15)=abb31(14)*abb31(11)
      abb31(16)=spbk3k2*abb31(10)*c2
      abb31(17)=2.0_ki*abb31(2)
      abb31(18)=abb31(17)*abb31(16)
      abb31(19)=abb31(18)*spak1l6
      abb31(16)=abb31(16)*NC
      abb31(20)=abb31(16)*spak1l6
      abb31(15)=abb31(20)+abb31(15)-abb31(19)
      abb31(19)=mB**2
      abb31(20)=abb31(19)*abb31(4)
      abb31(21)=spak2k4*abb31(20)*abb31(15)
      abb31(22)=abb31(19)*abb31(5)
      abb31(23)=abb31(22)*abb31(15)
      abb31(24)=abb31(6)*spbl5k2
      abb31(25)=abb31(24)*spak2k4
      abb31(26)=abb31(23)*abb31(25)
      abb31(21)=abb31(21)-abb31(26)
      abb31(26)=abb31(4)*mB
      abb31(27)=abb31(26)*abb31(15)
      abb31(28)=abb31(7)*spak2k4
      abb31(29)=abb31(28)*abb31(27)
      abb31(17)=abb31(17)-NC
      abb31(30)=-c2*abb31(17)
      abb31(31)=abb31(30)+abb31(13)
      abb31(32)=abb31(10)*abb31(4)
      abb31(33)=spbk3k2**2
      abb31(34)=abb31(33)*abb31(32)
      abb31(35)=spak1k2*spak3k4
      abb31(36)=abb31(6)*abb31(35)*abb31(31)*abb31(34)*abb31(5)**2*mB**4
      abb31(36)=abb31(36)-abb31(29)
      abb31(37)=spbl5k3*spak3k4
      abb31(23)=-abb31(6)*abb31(23)*abb31(37)
      abb31(38)=spbl6k3*spak3k4
      abb31(39)=abb31(22)*abb31(4)
      abb31(40)=abb31(38)*abb31(39)*abb31(15)
      abb31(23)=abb31(40)+abb31(23)-abb31(21)-abb31(36)
      abb31(23)=es12*abb31(23)
      abb31(27)=abb31(27)*abb31(7)
      abb31(40)=abb31(35)*spbk3k1
      abb31(41)=-abb31(40)*abb31(27)
      abb31(16)=abb31(16)-abb31(18)
      abb31(12)=abb31(12)*abb31(10)*c1
      abb31(18)=spbk3k2*abb31(12)
      abb31(18)=abb31(18)+abb31(16)
      abb31(42)=spbl5k2*spak2k4
      abb31(37)=abb31(37)-abb31(42)
      abb31(42)=-spbl6k1*abb31(37)*abb31(18)*spak1l6**2
      abb31(23)=abb31(41)+abb31(42)+abb31(23)
      abb31(23)=4.0_ki*abb31(23)
      abb31(41)=abb31(15)*spbl6l5
      abb31(42)=abb31(41)*spak4l6
      abb31(43)=abb31(5)*mB
      abb31(44)=abb31(43)*abb31(16)
      abb31(43)=abb31(10)*abb31(43)
      abb31(45)=abb31(43)*abb31(14)
      abb31(44)=abb31(45)+abb31(44)
      abb31(45)=spbl5k2*abb31(7)
      abb31(46)=abb31(45)*spak1k4
      abb31(47)=abb31(44)*abb31(46)
      abb31(21)=-abb31(21)+abb31(42)-abb31(47)
      abb31(29)=abb31(21)+2.0_ki*abb31(29)
      abb31(29)=8.0_ki*abb31(29)
      abb31(21)=abb31(21)-abb31(36)
      abb31(21)=8.0_ki*abb31(21)
      abb31(36)=-abb31(15)*abb31(37)
      abb31(37)=abb31(13)*abb31(22)
      abb31(34)=-abb31(37)*abb31(34)
      abb31(42)=abb31(22)*abb31(32)
      abb31(47)=-abb31(42)*abb31(30)
      abb31(48)=abb31(33)*abb31(47)
      abb31(34)=abb31(34)+abb31(48)
      abb31(34)=abb31(34)*abb31(35)
      abb31(34)=abb31(34)+abb31(36)
      abb31(34)=8.0_ki*abb31(34)
      abb31(35)=spbl6k2*spak2k4
      abb31(35)=-abb31(38)+abb31(35)
      abb31(15)=4.0_ki*abb31(15)*abb31(35)
      abb31(35)=8.0_ki*abb31(18)
      abb31(36)=abb31(35)*spak1k4
      abb31(11)=-abb31(11)*abb31(31)
      abb31(38)=abb31(11)*abb31(20)
      abb31(48)=abb31(11)*abb31(26)
      abb31(49)=2.0_ki*abb31(7)
      abb31(50)=-abb31(48)*abb31(49)
      abb31(51)=abb31(11)*abb31(22)
      abb31(52)=-abb31(51)*abb31(24)
      abb31(50)=abb31(52)+abb31(50)+abb31(38)
      abb31(50)=es34*abb31(50)
      abb31(31)=abb31(31)*abb31(43)
      abb31(43)=abb31(46)*abb31(31)
      abb31(46)=spak4l6*abb31(11)*spbl6l5
      abb31(43)=abb31(43)+abb31(46)
      abb31(46)=-spbk4k2*abb31(43)
      abb31(52)=spak3l6*abb31(41)
      abb31(17)=abb31(17)*c2*abb31(8)
      abb31(53)=-abb31(9)*spak1l6*abb31(17)
      abb31(26)=-abb31(26)*abb31(53)
      abb31(13)=abb31(13)*spak1l6*abb31(8)
      abb31(54)=abb31(9)*abb31(4)
      abb31(55)=-mB*abb31(13)*abb31(54)
      abb31(26)=abb31(55)+abb31(26)
      abb31(26)=abb31(26)*abb31(49)
      abb31(49)=-abb31(22)*abb31(53)
      abb31(13)=abb31(13)*abb31(19)
      abb31(9)=-abb31(13)*abb31(9)*abb31(5)
      abb31(9)=abb31(9)+abb31(49)
      abb31(9)=abb31(9)*abb31(24)
      abb31(19)=abb31(44)*abb31(45)
      abb31(24)=-spak1k3*abb31(19)
      abb31(20)=abb31(20)*abb31(53)
      abb31(13)=abb31(54)*abb31(13)
      abb31(9)=abb31(24)+abb31(52)+abb31(50)+abb31(46)+abb31(9)+abb31(26)+abb31&
      &(13)+abb31(20)
      abb31(9)=4.0_ki*abb31(9)
      abb31(10)=abb31(10)*abb31(30)
      abb31(10)=abb31(12)+abb31(10)
      abb31(12)=abb31(10)*spbk4k2
      abb31(13)=spak1k4*abb31(12)
      abb31(20)=spak1k3*abb31(18)
      abb31(13)=abb31(13)+abb31(20)
      abb31(13)=4.0_ki*abb31(13)
      abb31(20)=-spak2k4*abb31(38)
      abb31(24)=abb31(48)*abb31(28)
      abb31(25)=abb31(51)*abb31(25)
      abb31(20)=abb31(25)+abb31(20)+2.0_ki*abb31(24)+abb31(43)
      abb31(20)=spbk4k3*abb31(20)
      abb31(24)=-spak2l6*abb31(41)
      abb31(19)=spak1k2*abb31(19)
      abb31(19)=abb31(24)+abb31(19)+abb31(20)
      abb31(19)=4.0_ki*abb31(19)
      abb31(10)=abb31(10)*spbk4k3
      abb31(20)=-spak1k4*abb31(10)
      abb31(24)=-spak1k2*abb31(18)
      abb31(20)=abb31(20)+abb31(24)
      abb31(20)=4.0_ki*abb31(20)
      abb31(24)=4.0_ki*spak3k4
      abb31(25)=abb31(24)*abb31(33)
      abb31(11)=abb31(39)*abb31(11)*abb31(25)
      abb31(26)=-abb31(6)*abb31(51)*abb31(25)
      abb31(27)=abb31(24)*abb31(27)
      abb31(25)=-abb31(7)*abb31(25)*abb31(31)
      abb31(28)=abb31(35)*spak4l6
      abb31(30)=abb31(18)*abb31(24)
      abb31(31)=4.0_ki*spak2k4
      abb31(33)=abb31(31)*abb31(18)
      abb31(12)=spak4l6*abb31(12)
      abb31(35)=spak3l6*abb31(18)
      abb31(12)=abb31(12)+abb31(35)
      abb31(12)=4.0_ki*abb31(12)
      abb31(10)=-spak4l6*abb31(10)
      abb31(18)=-spak2l6*abb31(18)
      abb31(10)=abb31(10)+abb31(18)
      abb31(10)=4.0_ki*abb31(10)
      abb31(16)=abb31(39)*abb31(16)
      abb31(14)=abb31(42)*abb31(14)
      abb31(14)=abb31(14)+abb31(16)
      abb31(16)=8.0_ki*spak3k4*abb31(14)
      abb31(18)=abb31(14)*spak2k4
      abb31(35)=-es12*abb31(18)
      abb31(38)=abb31(14)*abb31(40)
      abb31(35)=abb31(35)+abb31(38)
      abb31(35)=4.0_ki*abb31(35)
      abb31(18)=8.0_ki*abb31(18)
      abb31(17)=-abb31(22)*abb31(17)
      abb31(8)=abb31(37)*abb31(8)
      abb31(8)=abb31(8)+abb31(17)
      abb31(8)=abb31(54)*abb31(8)
      abb31(17)=abb31(37)*abb31(32)
      abb31(17)=abb31(17)-abb31(47)
      abb31(22)=-es34*abb31(17)
      abb31(8)=abb31(22)+abb31(8)
      abb31(8)=4.0_ki*abb31(8)
      abb31(17)=spbk4k3*abb31(17)*abb31(31)
      abb31(14)=-abb31(14)*abb31(24)
      R2d31=0.0_ki
      rat2 = rat2 + R2d31
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='31' value='", &
          & R2d31, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd31h1
