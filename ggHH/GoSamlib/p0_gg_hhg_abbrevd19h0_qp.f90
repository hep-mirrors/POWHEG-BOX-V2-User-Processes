module     p0_gg_hhg_abbrevd19h0_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(65), public :: abb19
   complex(ki), public :: R2d19
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
      abb19(1)=sqrt2**(-1)
      abb19(2)=es51**(-1)
      abb19(3)=spbk2k1**(-1)
      abb19(4)=spak2k5**(-1)
      abb19(5)=sqrt(mT**2)
      abb19(6)=spbk5k2**(-1)
      abb19(7)=spak2l3**(-1)
      abb19(8)=spbl3k2**(-1)
      abb19(9)=spak2l4**(-1)
      abb19(10)=spbl4k2**(-1)
      abb19(11)=gHT**2*abb19(1)*abb19(3)*abb19(4)*i_
      abb19(12)=abb19(11)*abb19(2)
      abb19(13)=spak1k2**2
      abb19(14)=abb19(12)*abb19(13)
      abb19(15)=c2-c1
      abb19(16)=-spbk5k1*abb19(15)
      abb19(17)=-10.0_ki/3.0_ki*abb19(16)*abb19(14)
      abb19(18)=es12-es34
      abb19(19)=spbk5l3*spal3k5
      abb19(20)=abb19(19)-abb19(18)
      abb19(20)=abb19(20)*spak2l4
      abb19(21)=spbk5l3*spak2l3
      abb19(22)=abb19(21)*spal4k5
      abb19(23)=spak2l3*spbl3k1
      abb19(24)=abb19(23)*spak1l4
      abb19(20)=abb19(20)+abb19(22)+abb19(24)
      abb19(20)=abb19(20)*spbk5l4
      abb19(22)=spak2l4*spbl4k2
      abb19(24)=spbk5l3*spak1l3
      abb19(25)=abb19(24)*abb19(22)
      abb19(26)=spbk5l4*spak1l4
      abb19(27)=spak2l3*spbl3k2
      abb19(28)=abb19(26)*abb19(27)
      abb19(25)=abb19(25)+abb19(28)
      abb19(28)=2.0_ki*spbk5k1
      abb19(29)=abb19(28)*abb19(6)
      abb19(25)=abb19(25)*abb19(29)
      abb19(30)=spbk5l4*spak2l4
      abb19(31)=abb19(18)*abb19(30)
      abb19(32)=abb19(7)*abb19(8)
      abb19(33)=abb19(31)*abb19(32)
      abb19(34)=-abb19(18)*abb19(21)
      abb19(35)=abb19(9)*abb19(10)
      abb19(36)=abb19(34)*abb19(35)
      abb19(33)=abb19(33)-abb19(36)
      abb19(36)=mH**2
      abb19(33)=abb19(33)*abb19(36)
      abb19(37)=spak2l4*spbl4k1
      abb19(38)=abb19(24)*abb19(37)
      abb19(20)=abb19(20)-abb19(25)+abb19(33)+abb19(38)+2.0_ki*abb19(34)
      abb19(25)=abb19(5)**2
      abb19(33)=-abb19(25)*abb19(15)
      abb19(34)=abb19(33)*abb19(2)
      abb19(20)=-abb19(20)*abb19(34)
      abb19(38)=abb19(22)*abb19(32)
      abb19(39)=abb19(27)*abb19(35)
      abb19(38)=abb19(38)+abb19(39)
      abb19(38)=abb19(38)*abb19(28)
      abb19(39)=abb19(23)*spbk5k2
      abb19(40)=abb19(39)*abb19(35)
      abb19(41)=abb19(37)*spbk5k2
      abb19(42)=abb19(41)*abb19(32)
      abb19(38)=abb19(38)-abb19(40)-abb19(42)
      abb19(38)=abb19(38)*abb19(36)
      abb19(40)=-abb19(25)+abb19(22)+2.0_ki*abb19(27)
      abb19(40)=abb19(40)*abb19(28)
      abb19(38)=abb19(41)+2.0_ki*abb19(39)+abb19(38)-abb19(40)
      abb19(39)=spak1k2*abb19(2)
      abb19(40)=abb19(33)*abb19(39)
      abb19(38)=abb19(38)*abb19(40)
      abb19(43)=abb19(30)*abb19(32)
      abb19(44)=abb19(21)*abb19(35)
      abb19(43)=abb19(43)+abb19(44)
      abb19(43)=abb19(43)*abb19(36)
      abb19(43)=abb19(43)-abb19(30)-2.0_ki*abb19(21)
      abb19(43)=-abb19(43)*abb19(33)
      abb19(20)=abb19(38)+abb19(20)+abb19(43)
      abb19(20)=spak1k2*abb19(20)
      abb19(38)=abb19(21)*spak1k5
      abb19(43)=-abb19(38)*abb19(30)*abb19(34)
      abb19(20)=4.0_ki*abb19(43)+abb19(20)
      abb19(43)=2.0_ki*abb19(11)
      abb19(20)=abb19(20)*abb19(43)
      abb19(21)=abb19(21)-abb19(30)
      abb19(44)=abb19(11)*abb19(39)
      abb19(45)=8.0_ki*abb19(44)
      abb19(21)=-abb19(45)*abb19(21)*abb19(33)
      abb19(46)=abb19(32)*abb19(36)
      abb19(47)=abb19(31)*abb19(46)
      abb19(24)=abb19(26)-abb19(24)
      abb19(26)=spbk5k1*abb19(6)
      abb19(48)=abb19(25)*abb19(24)*abb19(26)
      abb19(47)=abb19(47)+4.0_ki*abb19(48)
      abb19(48)=abb19(15)*abb19(2)
      abb19(47)=abb19(47)*abb19(48)
      abb19(28)=abb19(28)*abb19(22)
      abb19(49)=abb19(28)*abb19(32)
      abb19(42)=abb19(49)-abb19(42)
      abb19(42)=abb19(42)*abb19(36)
      abb19(49)=abb19(35)-abb19(32)
      abb19(49)=abb19(49)*abb19(36)
      abb19(50)=abb19(49)*spbk5k1
      abb19(51)=-3.0_ki*abb19(50)+5.0_ki*spbk5k1
      abb19(51)=abb19(51)*abb19(25)
      abb19(42)=abb19(51)+abb19(42)
      abb19(51)=abb19(15)*abb19(39)
      abb19(42)=-abb19(42)*abb19(51)
      abb19(52)=-abb19(46)*abb19(15)
      abb19(53)=-abb19(30)*abb19(52)
      abb19(42)=abb19(42)+abb19(47)+abb19(53)
      abb19(11)=abb19(11)*spak1k2
      abb19(11)=4.0_ki*abb19(11)
      abb19(42)=abb19(42)*abb19(11)
      abb19(47)=16.0_ki*abb19(14)*spbk5k1*abb19(52)
      abb19(28)=abb19(28)-abb19(41)
      abb19(25)=abb19(25)*spbk5k1
      abb19(41)=abb19(28)+12.0_ki*abb19(25)
      abb19(41)=abb19(41)*abb19(51)
      abb19(53)=-abb19(30)*abb19(15)
      abb19(31)=-abb19(31)*abb19(48)
      abb19(31)=abb19(41)+abb19(31)+abb19(53)
      abb19(41)=abb19(43)*spak1k2
      abb19(31)=abb19(31)*abb19(41)
      abb19(50)=-abb19(50)+3.0_ki*spbk5k1
      abb19(14)=4.0_ki*abb19(14)
      abb19(50)=abb19(14)*abb19(50)*abb19(15)
      abb19(53)=abb19(16)*abb19(14)
      abb19(54)=abb19(6)*spbk5l4
      abb19(55)=abb19(54)*abb19(18)
      abb19(56)=-abb19(55)*abb19(34)
      abb19(57)=-abb19(54)*abb19(33)
      abb19(58)=abb19(29)*spbl4k2
      abb19(58)=abb19(58)-spbl4k1
      abb19(59)=abb19(58)*abb19(40)
      abb19(56)=abb19(59)+abb19(56)+abb19(57)
      abb19(56)=abb19(56)*abb19(41)
      abb19(57)=-abb19(36)*abb19(15)
      abb19(59)=-abb19(57)*abb19(32)*abb19(58)*abb19(39)
      abb19(60)=abb19(55)*abb19(2)
      abb19(60)=abb19(60)+abb19(54)
      abb19(60)=abb19(52)*abb19(60)
      abb19(59)=abb19(59)+abb19(60)
      abb19(59)=abb19(59)*abb19(11)
      abb19(54)=abb19(54)*abb19(15)
      abb19(55)=abb19(55)*abb19(48)
      abb19(60)=-abb19(58)*abb19(51)
      abb19(54)=abb19(60)+abb19(55)+abb19(54)
      abb19(54)=abb19(54)*abb19(41)
      abb19(55)=abb19(6)*spbk5l3
      abb19(18)=abb19(55)*abb19(18)
      abb19(60)=abb19(18)*abb19(34)
      abb19(61)=abb19(55)*abb19(33)
      abb19(62)=abb19(29)*spbl3k2
      abb19(62)=abb19(62)-spbl3k1
      abb19(63)=-abb19(62)*abb19(40)
      abb19(60)=abb19(63)+abb19(60)+abb19(61)
      abb19(60)=abb19(60)*abb19(41)
      abb19(36)=abb19(35)*abb19(36)
      abb19(61)=abb19(36)-1.0_ki
      abb19(63)=-abb19(55)*abb19(15)*abb19(61)
      abb19(18)=abb19(48)*abb19(18)
      abb19(64)=-abb19(61)*abb19(18)
      abb19(61)=abb19(51)*abb19(62)*abb19(61)
      abb19(61)=abb19(61)+abb19(64)+abb19(63)
      abb19(61)=abb19(61)*abb19(11)
      abb19(55)=-abb19(55)*abb19(15)
      abb19(63)=abb19(62)*abb19(51)
      abb19(18)=abb19(63)-abb19(18)+abb19(55)
      abb19(18)=abb19(18)*abb19(41)
      abb19(55)=-4.0_ki+3.0_ki*abb19(49)
      abb19(55)=-abb19(55)*abb19(33)
      abb19(63)=spbk5l4*spal4k5
      abb19(19)=abb19(63)-abb19(19)
      abb19(63)=-4.0_ki*es12+3.0_ki*es34
      abb19(63)=abb19(63)*abb19(49)
      abb19(19)=5.0_ki*es12-4.0_ki*es34+abb19(63)-2.0_ki*abb19(19)
      abb19(19)=abb19(19)*abb19(34)
      abb19(19)=abb19(19)+abb19(55)
      abb19(19)=spak1k2*abb19(19)
      abb19(55)=abb19(30)*spak1k5
      abb19(38)=abb19(55)-abb19(38)
      abb19(34)=-abb19(38)*abb19(34)
      abb19(19)=8.0_ki*abb19(34)+abb19(19)
      abb19(19)=abb19(19)*abb19(43)
      abb19(34)=abb19(33)*abb19(44)
      abb19(38)=32.0_ki*abb19(34)
      abb19(44)=-es34+3.0_ki*es12
      abb19(44)=abb19(44)*abb19(32)
      abb19(35)=abb19(46)*abb19(35)
      abb19(35)=2.0_ki*abb19(35)
      abb19(46)=-es34+2.0_ki*es12
      abb19(55)=abb19(35)*abb19(46)
      abb19(44)=abb19(44)-abb19(55)
      abb19(44)=-abb19(2)*abb19(44)
      abb19(32)=abb19(44)+abb19(35)-abb19(32)
      abb19(11)=abb19(11)*abb19(57)*abb19(32)
      abb19(32)=abb19(49)*abb19(15)
      abb19(35)=-abb19(46)*abb19(49)
      abb19(35)=abb19(35)+es12
      abb19(35)=-abb19(35)*abb19(48)
      abb19(32)=abb19(35)+abb19(32)
      abb19(32)=abb19(32)*abb19(41)
      abb19(12)=32.0_ki*abb19(12)*spak1k5*abb19(33)
      abb19(35)=abb19(43)*abb19(39)
      abb19(44)=abb19(35)*spak1l4
      abb19(46)=spbk5k1*abb19(33)*abb19(44)
      abb19(44)=abb19(16)*abb19(44)
      abb19(55)=spbk5l3*spal4k5
      abb19(57)=abb19(62)*spak1l4
      abb19(55)=abb19(55)-abb19(57)
      abb19(55)=-abb19(55)*abb19(51)
      abb19(57)=2.0_ki*abb19(2)
      abb19(62)=abb19(15)*abb19(57)
      abb19(63)=spak2l4*spak1k5
      abb19(64)=-spbk5l3*abb19(62)*abb19(63)
      abb19(55)=abb19(64)+abb19(55)
      abb19(55)=abb19(55)*abb19(43)
      abb19(64)=es12*spak1l4
      abb19(63)=spbk5k2*abb19(63)
      abb19(63)=abb19(64)+2.0_ki*abb19(63)
      abb19(63)=abb19(2)*abb19(63)
      abb19(64)=abb19(39)*spbk5k2*spal4k5
      abb19(63)=abb19(63)+abb19(64)
      abb19(63)=abb19(43)*abb19(52)*abb19(63)
      abb19(15)=-spbk5k2*abb19(15)
      abb19(64)=spak2l3*spak1k5
      abb19(65)=-abb19(30)*abb19(15)*abb19(57)*abb19(64)
      abb19(25)=abb19(28)-abb19(25)
      abb19(25)=abb19(25)*spak1l3
      abb19(28)=spal3k5*abb19(30)*spbk5k2
      abb19(25)=abb19(28)-abb19(25)
      abb19(25)=abb19(25)*abb19(51)
      abb19(25)=abb19(65)+abb19(25)
      abb19(25)=abb19(25)*abb19(43)
      abb19(16)=abb19(16)*spak1l3
      abb19(28)=abb19(16)*abb19(45)
      abb19(16)=-abb19(16)*abb19(35)
      abb19(30)=spbk5l4*spal3k5
      abb19(45)=abb19(58)*spak1l3
      abb19(30)=abb19(30)-abb19(45)
      abb19(30)=-abb19(30)*abb19(51)
      abb19(45)=-abb19(64)*spbk5l4*abb19(62)
      abb19(30)=abb19(45)+abb19(30)
      abb19(30)=abb19(30)*abb19(43)
      abb19(45)=abb19(64)*spbk5k2
      abb19(51)=es12*spak1l3
      abb19(45)=abb19(51)+2.0_ki*abb19(45)
      abb19(45)=abb19(45)*abb19(36)
      abb19(45)=abb19(45)-abb19(51)
      abb19(45)=-abb19(45)*abb19(48)
      abb19(36)=abb19(39)*abb19(36)*spal3k5*abb19(15)
      abb19(36)=abb19(45)+abb19(36)
      abb19(36)=abb19(36)*abb19(43)
      abb19(24)=abb19(57)*abb19(24)*abb19(33)
      abb19(33)=-2.0_ki*abb19(49)+3.0_ki
      abb19(33)=-abb19(40)*spbk5k2*abb19(33)
      abb19(24)=abb19(24)+abb19(33)
      abb19(24)=abb19(24)*abb19(41)
      abb19(14)=-abb19(14)*spbk5k2*abb19(52)
      abb19(13)=abb19(2)*abb19(15)*abb19(13)*abb19(43)
      abb19(15)=-abb19(35)*spak1l3*abb19(15)
      abb19(22)=abb19(27)-abb19(22)
      abb19(22)=abb19(22)*abb19(29)
      abb19(22)=abb19(22)-abb19(23)+abb19(37)
      abb19(22)=-4.0_ki*abb19(22)*abb19(34)
      abb19(23)=-16.0_ki*abb19(34)
      abb19(26)=abb19(26)*abb19(38)
      R2d19=abb19(17)
      rat2 = rat2 + R2d19
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='19' value='", &
          & R2d19, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd19h0_qp
