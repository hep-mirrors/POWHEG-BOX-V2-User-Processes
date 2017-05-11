module p1_dg_hhd_abbrevd4h2_qp
   use p1_dg_hhd_config_qp, only: ki
   use p1_dg_hhd_globalsh2_qp
   implicit none
   private
   complex(ki), dimension(59), public :: abb4
   complex(ki), public :: R2d4
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dg_hhd_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_color_qp, only: TR
      use p1_dg_hhd_globalsl1_qp, only: epspow
      implicit none
      abb4(1)=sqrt2**(-1)
      abb4(2)=es51**(-1)
      abb4(3)=spbk2k1**(-1)
      abb4(4)=sqrt(mT**2)
      abb4(5)=spak2l3**(-1)
      abb4(6)=spbl3k2**(-1)
      abb4(7)=spak2l4**(-1)
      abb4(8)=spbl4k2**(-1)
      abb4(9)=abb4(3)*spak1k2
      abb4(10)=abb4(1)*abb4(2)*c1*TR*i_*gHT**2
      abb4(11)=spbk5k1*abb4(9)*abb4(10)
      abb4(12)=20.0_ki/3.0_ki*abb4(11)
      abb4(13)=abb4(5)*abb4(6)
      abb4(14)=abb4(13)*es12
      abb4(15)=spbk5l4*spak2l4
      abb4(16)=abb4(14)*abb4(15)
      abb4(17)=spak2l3*spbk5l3
      abb4(18)=abb4(17)*es12
      abb4(19)=abb4(7)*abb4(8)
      abb4(20)=abb4(18)*abb4(19)
      abb4(16)=abb4(16)+abb4(20)
      abb4(20)=mH**2
      abb4(16)=abb4(16)*abb4(20)
      abb4(21)=spak1l3*spbl3k1
      abb4(22)=abb4(21)-es12
      abb4(22)=abb4(22)*abb4(15)
      abb4(23)=spak1l4*spbl4k1
      abb4(24)=abb4(23)-2.0_ki*es12
      abb4(24)=abb4(24)*abb4(17)
      abb4(22)=abb4(16)+abb4(22)+abb4(24)
      abb4(24)=abb4(4)**2
      abb4(22)=abb4(22)*abb4(24)
      abb4(25)=spak1k2*spbk5k1*abb4(4)**4
      abb4(22)=abb4(22)-2.0_ki*abb4(25)
      abb4(25)=4.0_ki*abb4(3)
      abb4(25)=abb4(25)*abb4(10)
      abb4(22)=abb4(22)*abb4(25)
      abb4(18)=-abb4(25)*abb4(18)
      abb4(26)=abb4(13)*abb4(20)
      abb4(27)=abb4(26)*es12
      abb4(28)=2.0_ki*abb4(27)+abb4(21)
      abb4(28)=abb4(15)*abb4(28)
      abb4(29)=abb4(23)*abb4(17)
      abb4(30)=abb4(19)-abb4(13)
      abb4(31)=2.0_ki*abb4(20)
      abb4(32)=abb4(30)*abb4(31)
      abb4(32)=-3.0_ki+abb4(32)
      abb4(33)=abb4(24)*spak1k2
      abb4(34)=abb4(33)*spbk5k1
      abb4(32)=abb4(32)*abb4(34)
      abb4(28)=abb4(32)+abb4(29)+abb4(28)
      abb4(28)=abb4(28)*abb4(25)
      abb4(11)=8.0_ki*abb4(11)
      abb4(32)=-abb4(26)*abb4(11)
      abb4(35)=abb4(17)-abb4(15)
      abb4(35)=abb4(35)*abb4(25)
      abb4(36)=-abb4(24)*abb4(35)
      abb4(37)=abb4(21)+es12
      abb4(37)=-abb4(37)*abb4(15)
      abb4(16)=4.0_ki*abb4(34)-abb4(16)+abb4(37)-abb4(29)
      abb4(16)=abb4(16)*abb4(25)
      abb4(29)=abb4(30)*abb4(20)
      abb4(29)=5.0_ki-3.0_ki*abb4(29)
      abb4(30)=abb4(25)*spak1k2
      abb4(29)=abb4(30)*spbk5k1*abb4(29)
      abb4(34)=2.0_ki*abb4(10)
      abb4(9)=abb4(34)*abb4(9)
      abb4(37)=abb4(9)*abb4(24)
      abb4(38)=spbl4k1*abb4(37)
      abb4(39)=abb4(30)*abb4(24)
      abb4(40)=spbk5l4*abb4(39)
      abb4(41)=-spbk5l4*abb4(9)
      abb4(37)=-spbl3k1*abb4(37)
      abb4(42)=-spbl3k1*abb4(30)
      abb4(39)=-spbk5l3*abb4(39)
      abb4(43)=abb4(30)*spbk5l3
      abb4(44)=abb4(9)*spbk5l3
      abb4(21)=abb4(23)-abb4(21)
      abb4(23)=-es12-abb4(21)
      abb4(45)=abb4(34)*abb4(3)
      abb4(23)=abb4(23)*abb4(24)*abb4(45)
      abb4(27)=-abb4(25)*abb4(27)
      abb4(46)=abb4(19)*es12
      abb4(14)=abb4(46)-abb4(14)
      abb4(14)=abb4(14)*abb4(20)
      abb4(14)=abb4(14)-es12+abb4(21)
      abb4(14)=abb4(14)*abb4(45)
      abb4(21)=abb4(25)*spak1l4
      abb4(46)=abb4(24)*spbk5k1
      abb4(47)=abb4(46)*abb4(21)
      abb4(48)=abb4(45)*spbk5k1
      abb4(49)=-spak1l4*abb4(48)
      abb4(50)=2.0_ki*abb4(3)
      abb4(51)=-spak1l3*abb4(50)*abb4(46)
      abb4(52)=abb4(15)*spak1l3
      abb4(51)=abb4(52)+abb4(51)
      abb4(51)=abb4(51)*abb4(34)
      abb4(53)=abb4(25)*spbk5k1
      abb4(54)=-spak1l3*abb4(53)
      abb4(48)=spak1l3*abb4(48)
      abb4(55)=spbk5l3*spak1l3
      abb4(56)=-spbk5l4*spak1l4
      abb4(55)=abb4(55)+abb4(56)
      abb4(56)=8.0_ki*abb4(24)
      abb4(55)=abb4(55)*abb4(56)
      abb4(57)=abb4(19)*spbk5k2
      abb4(13)=abb4(13)*spbk5k2
      abb4(58)=abb4(57)-abb4(13)
      abb4(58)=abb4(58)*abb4(20)
      abb4(59)=7.0_ki*spbk5k2-6.0_ki*abb4(58)
      abb4(33)=abb4(59)*abb4(33)
      abb4(52)=-spbl3k2*abb4(52)
      abb4(17)=-spbl4k2*abb4(17)*spak1l4
      abb4(17)=abb4(33)+abb4(55)+abb4(52)+abb4(17)
      abb4(17)=abb4(17)*abb4(45)
      abb4(33)=abb4(26)*abb4(57)
      abb4(13)=-3.0_ki*abb4(13)+4.0_ki*abb4(33)
      abb4(13)=abb4(13)*abb4(20)*abb4(30)
      abb4(20)=-spbk5k2-abb4(58)
      abb4(20)=abb4(20)*abb4(9)
      abb4(33)=spbk5l4*abb4(25)*spak1l3
      abb4(30)=abb4(26)*abb4(30)*spbk5l4
      abb4(9)=spbl3k2*abb4(9)
      abb4(52)=spbk5l3*abb4(21)
      abb4(19)=abb4(19)*abb4(31)
      abb4(19)=-1.0_ki+abb4(19)
      abb4(19)=abb4(19)*abb4(44)
      abb4(21)=spbk5k2*abb4(26)*abb4(21)
      abb4(26)=abb4(57)*abb4(31)
      abb4(26)=-spbk5k2+abb4(26)
      abb4(26)=abb4(45)*spak1l3*abb4(26)
      abb4(31)=spak2l4*spbl4k1
      abb4(55)=spak2l3*spbl3k1
      abb4(31)=abb4(31)-abb4(55)
      abb4(24)=abb4(31)*abb4(24)*abb4(50)
      abb4(50)=-spak2l3*spak2l4*spbl4l3
      abb4(24)=abb4(50)+abb4(24)
      abb4(24)=abb4(24)*abb4(34)
      abb4(10)=-8.0_ki*abb4(3)*abb4(10)*abb4(55)
      abb4(31)=-abb4(31)*abb4(25)
      abb4(50)=spak2l3*spbl3k2
      abb4(50)=abb4(50)+abb4(56)
      abb4(25)=abb4(50)*abb4(25)
      abb4(50)=-spak2l4*abb4(45)*abb4(46)
      abb4(46)=abb4(3)*abb4(46)
      abb4(15)=-abb4(15)+abb4(46)
      abb4(15)=abb4(34)*spak2l3*abb4(15)
      abb4(34)=spak2l3*abb4(53)
      abb4(45)=-spak2l3*spbk5k2*abb4(45)
      R2d4=abb4(12)
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd4h2_qp
