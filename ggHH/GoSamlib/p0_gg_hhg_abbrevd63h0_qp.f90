module     p0_gg_hhg_abbrevd63h0_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(56), public :: abb63
   complex(ki), public :: R2d63
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
      abb63(1)=sqrt(mT**2)
      abb63(2)=sqrt2**(-1)
      abb63(3)=spbk2k1**(-1)
      abb63(4)=spak2k5**(-1)
      abb63(5)=spbk5k2**(-1)
      abb63(6)=spbl4k2**(-1)
      abb63(7)=spak2l4**(-1)
      abb63(8)=abb63(2)*i_*abb63(3)
      abb63(9)=c1-c2
      abb63(10)=abb63(9)*abb63(4)*abb63(8)
      abb63(11)=abb63(1)*gHT
      abb63(11)=-abb63(11)**2*abb63(10)
      abb63(12)=abb63(11)*abb63(5)
      abb63(13)=-abb63(12)*spak1l4
      abb63(14)=spbk5l4**2
      abb63(15)=2.0_ki*spak2l4
      abb63(16)=abb63(14)*abb63(13)*abb63(15)
      abb63(17)=abb63(11)*spak1k2
      abb63(18)=mH**2
      abb63(19)=abb63(18)*abb63(6)
      abb63(20)=abb63(19)*spbk5l4
      abb63(21)=-abb63(20)*abb63(17)
      abb63(22)=spak1k2**2
      abb63(23)=-abb63(22)*abb63(11)
      abb63(24)=abb63(23)*spbk5k1
      abb63(16)=abb63(16)-abb63(24)+2.0_ki*abb63(21)
      abb63(16)=es12*abb63(16)
      abb63(14)=abb63(14)*spak2l4
      abb63(25)=abb63(14)*abb63(13)
      abb63(21)=abb63(25)+abb63(21)
      abb63(25)=es51-es34
      abb63(21)=abb63(21)*abb63(25)
      abb63(26)=spak2l4*spbk5l4
      abb63(27)=abb63(26)*spak1l4
      abb63(28)=abb63(17)*abb63(27)
      abb63(29)=abb63(23)*spbk5k2
      abb63(30)=-abb63(19)*abb63(29)
      abb63(28)=abb63(30)+abb63(28)
      abb63(28)=spbl4k1*abb63(28)
      abb63(30)=gHT**2
      abb63(31)=abb63(30)*abb63(10)
      abb63(32)=-abb63(22)*abb63(31)
      abb63(33)=abb63(1)**4
      abb63(34)=-abb63(33)*abb63(32)
      abb63(35)=-abb63(23)*abb63(18)
      abb63(34)=2.0_ki*abb63(34)+abb63(35)
      abb63(34)=spbk5k1*abb63(34)
      abb63(35)=spbk5k1*spak2l4
      abb63(23)=abb63(23)*abb63(35)
      abb63(36)=-spak1k2*abb63(12)
      abb63(37)=abb63(36)*spbk5k1
      abb63(38)=-abb63(37)*abb63(27)
      abb63(23)=abb63(23)+abb63(38)
      abb63(23)=spbl4k2*abb63(23)
      abb63(38)=-spak1k2*abb63(31)
      abb63(33)=abb63(38)*abb63(33)
      abb63(39)=abb63(33)*abb63(26)
      abb63(16)=abb63(23)+2.0_ki*abb63(39)+abb63(34)+abb63(28)+abb63(16)+abb63(&
      &21)
      abb63(16)=2.0_ki*abb63(16)
      abb63(21)=abb63(12)*abb63(14)
      abb63(23)=2.0_ki*spbk5l4
      abb63(28)=abb63(23)*abb63(37)
      abb63(21)=abb63(21)+abb63(28)
      abb63(21)=spak1l4*abb63(21)
      abb63(28)=abb63(19)*abb63(7)
      abb63(34)=abb63(28)-1.0_ki
      abb63(39)=abb63(24)*abb63(34)
      abb63(21)=abb63(21)+abb63(39)
      abb63(21)=4.0_ki*abb63(21)
      abb63(39)=abb63(17)*abb63(26)
      abb63(24)=abb63(39)+abb63(24)
      abb63(32)=abb63(32)*spbk5k1
      abb63(39)=abb63(28)*es12
      abb63(40)=abb63(39)-es12
      abb63(41)=-abb63(32)*abb63(40)
      abb63(30)=abb63(30)*abb63(5)
      abb63(10)=abb63(10)*abb63(30)
      abb63(42)=-spak1k2*abb63(10)
      abb63(43)=abb63(42)*spbk5k1
      abb63(44)=spak1l4*spbk5l4
      abb63(45)=abb63(43)*abb63(44)
      abb63(46)=-es12*abb63(45)
      abb63(24)=abb63(46)+2.0_ki*abb63(24)+abb63(41)
      abb63(24)=2.0_ki*abb63(24)
      abb63(32)=abb63(32)*abb63(34)
      abb63(32)=abb63(45)+abb63(32)
      abb63(32)=4.0_ki*abb63(32)
      abb63(41)=abb63(36)*spbk5l4
      abb63(45)=-es12*abb63(41)
      abb63(46)=spbl4k2*abb63(36)*abb63(26)
      abb63(45)=abb63(45)+abb63(46)
      abb63(45)=2.0_ki*abb63(45)
      abb63(41)=4.0_ki*abb63(41)
      abb63(46)=abb63(23)*abb63(42)
      abb63(47)=es12*abb63(46)
      abb63(48)=-4.0_ki*spbk5l4*abb63(42)
      abb63(49)=abb63(36)*abb63(14)
      abb63(22)=spbk5k1*spbk5l4*abb63(22)*abb63(12)
      abb63(22)=abb63(49)+abb63(22)
      abb63(22)=2.0_ki*abb63(22)
      abb63(49)=-abb63(28)*abb63(17)
      abb63(50)=abb63(13)*spbk5l4
      abb63(51)=abb63(49)+abb63(50)
      abb63(51)=abb63(51)*abb63(25)
      abb63(52)=-spbl4k2*spak2l4
      abb63(18)=abb63(52)+2.0_ki*abb63(39)+es12+abb63(18)
      abb63(18)=-abb63(17)*abb63(18)
      abb63(50)=es12*abb63(50)
      abb63(18)=3.0_ki*abb63(50)+4.0_ki*abb63(33)+abb63(18)+abb63(51)
      abb63(18)=2.0_ki*abb63(18)
      abb63(13)=-abb63(13)*abb63(23)
      abb63(13)=-abb63(49)+abb63(13)-abb63(17)
      abb63(13)=4.0_ki*abb63(13)
      abb63(33)=abb63(38)*abb63(40)
      abb63(33)=-4.0_ki*abb63(17)+abb63(33)
      abb63(33)=2.0_ki*abb63(33)
      abb63(40)=4.0_ki*abb63(38)
      abb63(34)=-abb63(34)*abb63(40)
      abb63(27)=-abb63(11)*abb63(27)
      abb63(49)=-spbk5k2*abb63(17)*abb63(19)
      abb63(27)=abb63(27)+abb63(49)
      abb63(27)=2.0_ki*abb63(27)
      abb63(44)=-abb63(17)*abb63(44)
      abb63(29)=abb63(28)*abb63(29)
      abb63(29)=abb63(44)+abb63(29)
      abb63(29)=2.0_ki*abb63(29)
      abb63(44)=-abb63(12)*abb63(26)
      abb63(49)=3.0_ki*abb63(44)-abb63(37)
      abb63(49)=es12*abb63(49)
      abb63(50)=spbk5l4*spak2l4**2
      abb63(51)=-abb63(12)*abb63(50)
      abb63(52)=2.0_ki*abb63(35)
      abb63(36)=-abb63(36)*abb63(52)
      abb63(36)=abb63(51)+abb63(36)
      abb63(36)=spbl4k2*abb63(36)
      abb63(51)=abb63(44)*abb63(25)
      abb63(53)=spbl4k1*spak2l4
      abb63(54)=abb63(17)*abb63(53)
      abb63(36)=abb63(54)+abb63(36)+abb63(49)+abb63(51)
      abb63(36)=2.0_ki*abb63(36)
      abb63(49)=-abb63(10)*abb63(25)
      abb63(51)=abb63(10)*es12
      abb63(54)=abb63(49)-abb63(51)
      abb63(20)=-abb63(20)*abb63(54)
      abb63(55)=abb63(38)*abb63(19)
      abb63(56)=spbl4k1*abb63(55)
      abb63(20)=abb63(56)-4.0_ki*abb63(44)+5.0_ki*abb63(37)+abb63(20)
      abb63(20)=4.0_ki*abb63(20)
      abb63(37)=abb63(10)*abb63(26)
      abb63(44)=-abb63(37)-abb63(43)
      abb63(44)=es12*abb63(44)
      abb63(56)=-abb63(37)*abb63(25)
      abb63(53)=-abb63(38)*abb63(53)
      abb63(44)=abb63(53)+abb63(44)+abb63(56)
      abb63(44)=2.0_ki*abb63(44)
      abb63(43)=4.0_ki*abb63(43)
      abb63(8)=-abb63(9)*abb63(8)*abb63(30)
      abb63(9)=-abb63(8)*abb63(14)
      abb63(14)=spbl4k1*abb63(42)*abb63(26)
      abb63(9)=abb63(9)+abb63(14)
      abb63(9)=2.0_ki*abb63(9)
      abb63(14)=spbl4k2*abb63(15)
      abb63(14)=abb63(14)+5.0_ki*es12+abb63(25)
      abb63(14)=-2.0_ki*abb63(12)*abb63(14)
      abb63(25)=-abb63(28)*abb63(49)
      abb63(26)=abb63(10)*abb63(39)
      abb63(25)=abb63(26)+abb63(25)
      abb63(25)=4.0_ki*abb63(25)
      abb63(26)=2.0_ki*abb63(54)
      abb63(8)=-abb63(8)*abb63(23)
      abb63(23)=abb63(11)*abb63(15)
      abb63(19)=abb63(31)*abb63(19)
      abb63(30)=4.0_ki*abb63(19)
      abb63(15)=-abb63(31)*abb63(15)
      abb63(39)=2.0_ki*abb63(37)
      abb63(42)=-2.0_ki*abb63(17)
      abb63(28)=-abb63(28)*abb63(40)
      abb63(40)=2.0_ki*abb63(38)
      abb63(49)=abb63(37)*spak1l4
      abb63(49)=abb63(49)-abb63(55)
      abb63(49)=spbk5k1*abb63(49)
      abb63(38)=abb63(38)*abb63(35)
      abb63(38)=abb63(38)+abb63(49)
      abb63(49)=es12*abb63(38)
      abb63(11)=abb63(11)*abb63(50)
      abb63(17)=-abb63(17)*abb63(35)
      abb63(11)=abb63(11)+abb63(17)+abb63(49)
      abb63(11)=2.0_ki*abb63(11)
      abb63(17)=-4.0_ki*abb63(38)
      abb63(38)=-es12*abb63(39)
      abb63(37)=4.0_ki*abb63(37)
      abb63(31)=abb63(31)*spak2l4
      abb63(19)=abb63(31)-abb63(19)
      abb63(31)=es12*abb63(19)
      abb63(31)=abb63(23)+abb63(31)
      abb63(31)=2.0_ki*abb63(31)
      abb63(19)=-4.0_ki*abb63(19)
      abb63(49)=abb63(51)*abb63(52)
      abb63(10)=-4.0_ki*abb63(10)*abb63(35)
      abb63(12)=16.0_ki*abb63(12)
      R2d63=0.0_ki
      rat2 = rat2 + R2d63
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='63' value='", &
          & R2d63, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd63h0_qp
