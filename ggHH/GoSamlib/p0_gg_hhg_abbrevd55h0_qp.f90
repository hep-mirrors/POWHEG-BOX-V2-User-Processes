module     p0_gg_hhg_abbrevd55h0_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(65), public :: abb55
   complex(ki), public :: R2d55
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb55(1)=sqrt(mT**2)
      abb55(2)=sqrt2**(-1)
      abb55(3)=spbk2k1**(-1)
      abb55(4)=spak2k5**(-1)
      abb55(5)=spbk5k2**(-1)
      abb55(6)=spbl3k2**(-1)
      abb55(7)=spak2l4**(-1)
      abb55(8)=spbl4k2**(-1)
      abb55(9)=spak2l3**(-1)
      abb55(10)=c1-c2
      abb55(11)=abb55(2)*gHT**2*i_*abb55(4)
      abb55(12)=abb55(3)*abb55(11)
      abb55(13)=abb55(10)*abb55(12)*abb55(1)**2
      abb55(14)=mH**2
      abb55(15)=abb55(14)*spak1k2
      abb55(16)=abb55(15)*abb55(6)
      abb55(17)=abb55(16)*spbk5l3*abb55(13)
      abb55(18)=2.0_ki*es12
      abb55(19)=spbl4k2*spak2l4
      abb55(19)=abb55(18)-abb55(19)
      abb55(20)=abb55(19)*abb55(17)
      abb55(21)=abb55(8)*abb55(7)
      abb55(15)=abb55(15)*abb55(21)
      abb55(22)=abb55(15)*es12
      abb55(23)=spak2l3*spbk5l3
      abb55(24)=abb55(23)*abb55(13)
      abb55(25)=abb55(24)*abb55(22)
      abb55(26)=spak2l3**2
      abb55(27)=abb55(26)*spbk5l3
      abb55(28)=-abb55(13)*abb55(27)
      abb55(29)=abb55(28)*abb55(15)
      abb55(30)=-abb55(5)*abb55(13)
      abb55(31)=abb55(30)*abb55(27)
      abb55(32)=spak1l4*spbk5l4
      abb55(33)=abb55(31)*abb55(32)
      abb55(29)=abb55(29)+abb55(33)
      abb55(29)=spbl3k2*abb55(29)
      abb55(33)=abb55(19)*spak1l3
      abb55(34)=abb55(30)*spak2l3
      abb55(35)=spbk5l3**2
      abb55(36)=-abb55(35)*abb55(34)
      abb55(37)=abb55(36)*abb55(33)
      abb55(12)=-abb55(12)*abb55(10)
      abb55(38)=-abb55(23)*abb55(12)
      abb55(39)=2.0_ki*spak1k2
      abb55(40)=abb55(39)*abb55(1)**4
      abb55(41)=-abb55(38)*abb55(40)
      abb55(23)=-abb55(23)*abb55(30)
      abb55(42)=abb55(32)*es12
      abb55(43)=abb55(23)*abb55(42)
      abb55(20)=abb55(37)+abb55(29)+abb55(43)+abb55(41)+abb55(25)+abb55(20)
      abb55(20)=2.0_ki*abb55(20)
      abb55(25)=abb55(24)*abb55(15)
      abb55(29)=2.0_ki*abb55(32)
      abb55(37)=abb55(23)*abb55(29)
      abb55(41)=2.0_ki*spak1l3
      abb55(43)=-abb55(36)*abb55(41)
      abb55(17)=abb55(43)+abb55(37)+abb55(25)-abb55(17)
      abb55(17)=4.0_ki*abb55(17)
      abb55(25)=4.0_ki*spak1k2
      abb55(37)=abb55(24)*abb55(25)
      abb55(43)=abb55(12)*spbk5l3
      abb55(44)=-abb55(43)*abb55(16)
      abb55(45)=-8.0_ki*abb55(44)
      abb55(46)=abb55(38)*abb55(22)
      abb55(47)=abb55(5)*spak2l3
      abb55(48)=abb55(47)*abb55(43)
      abb55(49)=-abb55(48)*abb55(42)
      abb55(46)=abb55(49)-abb55(37)+abb55(46)
      abb55(46)=2.0_ki*abb55(46)
      abb55(49)=-abb55(38)*abb55(15)
      abb55(44)=abb55(49)+abb55(44)
      abb55(44)=4.0_ki*abb55(44)
      abb55(49)=abb55(38)*abb55(25)
      abb55(50)=abb55(39)*spbk5l4
      abb55(51)=-abb55(23)*abb55(50)
      abb55(52)=abb55(48)*abb55(50)
      abb55(36)=abb55(36)*abb55(39)
      abb55(47)=-abb55(47)*abb55(12)
      abb55(35)=-abb55(35)*abb55(47)
      abb55(53)=abb55(35)*abb55(25)
      abb55(54)=-abb55(35)*abb55(39)
      abb55(16)=abb55(16)*abb55(9)
      abb55(55)=-abb55(16)*abb55(13)
      abb55(19)=-abb55(55)*abb55(19)
      abb55(56)=abb55(13)*abb55(22)
      abb55(57)=-abb55(13)*spak2l3
      abb55(58)=abb55(57)*abb55(15)
      abb55(59)=abb55(34)*abb55(32)
      abb55(58)=abb55(58)+abb55(59)
      abb55(58)=spbl3k2*abb55(58)
      abb55(59)=-spbk5l3*abb55(30)
      abb55(33)=abb55(59)*abb55(33)
      abb55(40)=abb55(12)*abb55(40)
      abb55(60)=-abb55(30)*abb55(42)
      abb55(19)=abb55(33)+abb55(58)+abb55(60)+abb55(40)+abb55(56)+abb55(19)
      abb55(19)=2.0_ki*abb55(19)
      abb55(33)=abb55(13)*abb55(15)
      abb55(29)=-abb55(30)*abb55(29)
      abb55(40)=-abb55(59)*abb55(41)
      abb55(29)=abb55(40)+abb55(55)+abb55(33)+abb55(29)
      abb55(29)=4.0_ki*abb55(29)
      abb55(33)=-abb55(13)*abb55(25)
      abb55(40)=8.0_ki*abb55(12)*abb55(16)
      abb55(22)=-abb55(12)*abb55(22)
      abb55(41)=abb55(12)*abb55(5)
      abb55(42)=-abb55(41)*abb55(42)
      abb55(22)=abb55(42)-abb55(33)+abb55(22)
      abb55(22)=2.0_ki*abb55(22)
      abb55(15)=abb55(15)-abb55(16)
      abb55(15)=4.0_ki*abb55(12)*abb55(15)
      abb55(16)=abb55(12)*abb55(25)
      abb55(42)=abb55(30)*abb55(50)
      abb55(50)=abb55(41)*abb55(50)
      abb55(55)=abb55(59)*abb55(39)
      abb55(56)=-spbk5l3*abb55(41)
      abb55(25)=-abb55(56)*abb55(25)
      abb55(58)=abb55(56)*abb55(39)
      abb55(59)=2.0_ki*spak2l4
      abb55(60)=abb55(59)*spbl4k2
      abb55(60)=-abb55(60)+3.0_ki*es12
      abb55(61)=abb55(23)*abb55(60)
      abb55(62)=2.0_ki*spbl3k2
      abb55(31)=-abb55(31)*abb55(62)
      abb55(31)=abb55(31)+abb55(61)
      abb55(31)=2.0_ki*abb55(31)
      abb55(61)=-32.0_ki*abb55(23)
      abb55(63)=abb55(48)*abb55(18)
      abb55(60)=-abb55(30)*abb55(60)
      abb55(34)=-abb55(34)*abb55(62)
      abb55(34)=abb55(34)+abb55(60)
      abb55(34)=2.0_ki*abb55(34)
      abb55(18)=abb55(41)*abb55(18)
      abb55(24)=abb55(24)*abb55(59)
      abb55(60)=spak2l4*abb55(14)*abb55(6)
      abb55(60)=4.0_ki*abb55(60)
      abb55(43)=abb55(43)*abb55(60)
      abb55(38)=abb55(38)*abb55(59)
      abb55(35)=abb55(35)*abb55(59)
      abb55(13)=abb55(13)*abb55(59)
      abb55(60)=abb55(9)*abb55(12)*abb55(60)
      abb55(62)=-abb55(12)*abb55(59)
      abb55(59)=-abb55(56)*abb55(59)
      abb55(14)=abb55(14)*abb55(21)
      abb55(21)=abb55(14)*es12
      abb55(64)=-abb55(27)*abb55(12)
      abb55(65)=abb55(64)*abb55(21)
      abb55(10)=abb55(10)*abb55(5)*abb55(11)
      abb55(11)=-abb55(27)*abb55(10)
      abb55(27)=-abb55(11)*abb55(32)
      abb55(27)=abb55(27)+abb55(65)+abb55(28)
      abb55(27)=2.0_ki*abb55(27)
      abb55(14)=4.0_ki*abb55(14)
      abb55(28)=-abb55(64)*abb55(14)
      abb55(64)=-2.0_ki*abb55(64)
      abb55(26)=abb55(56)*abb55(26)
      abb55(26)=2.0_ki*abb55(26)
      abb55(56)=-spbk5l4*abb55(26)
      abb55(12)=-spak2l3*abb55(12)
      abb55(21)=abb55(12)*abb55(21)
      abb55(10)=-spak2l3*abb55(10)
      abb55(32)=-abb55(10)*abb55(32)
      abb55(21)=abb55(32)+abb55(21)+abb55(57)
      abb55(21)=2.0_ki*abb55(21)
      abb55(14)=-abb55(12)*abb55(14)
      abb55(12)=-2.0_ki*abb55(12)
      abb55(32)=2.0_ki*abb55(47)
      abb55(47)=-spbk5l4*abb55(32)
      abb55(11)=2.0_ki*abb55(11)
      abb55(10)=2.0_ki*abb55(10)
      abb55(39)=abb55(39)*spbk5k1
      abb55(23)=abb55(23)*abb55(39)
      abb55(48)=-abb55(48)*abb55(39)
      abb55(57)=-abb55(30)*abb55(39)
      abb55(39)=-abb55(41)*abb55(39)
      abb55(30)=16.0_ki*abb55(30)
      abb55(26)=spbk5k1*abb55(26)
      abb55(32)=spbk5k1*abb55(32)
      R2d55=0.0_ki
      rat2 = rat2 + R2d55
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='55' value='", &
          & R2d55, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd55h0_qp
