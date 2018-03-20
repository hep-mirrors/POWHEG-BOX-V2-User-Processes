module     p0_gg_hhg_abbrevd43h0_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(46), public :: abb43
   complex(ki), public :: R2d43
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
      abb43(1)=sqrt(mT**2)
      abb43(2)=sqrt2**(-1)
      abb43(3)=spbk2k1**(-1)
      abb43(4)=spak2k5**(-1)
      abb43(5)=spbk5k2**(-1)
      abb43(6)=spak2l3**(-1)
      abb43(7)=spbl3k2**(-1)
      abb43(8)=spak2l4**(-1)
      abb43(9)=spbl4k2**(-1)
      abb43(10)=mH**2
      abb43(11)=abb43(6)*abb43(10)*abb43(7)
      abb43(12)=abb43(11)*es12
      abb43(13)=spbl3k2*spak2l3
      abb43(14)=-abb43(13)+abb43(12)
      abb43(15)=abb43(2)*i_*abb43(4)
      abb43(16)=abb43(3)*abb43(15)
      abb43(17)=abb43(1)*gHT
      abb43(17)=abb43(16)*abb43(17)**2
      abb43(18)=abb43(17)*spak1k2
      abb43(19)=c1-c2
      abb43(20)=abb43(19)*spak2l4
      abb43(21)=abb43(18)*abb43(20)
      abb43(22)=abb43(21)*spbk5l4
      abb43(14)=abb43(22)*abb43(14)
      abb43(23)=gHT**2
      abb43(16)=abb43(16)*abb43(23)
      abb43(24)=spak1k2*abb43(16)
      abb43(25)=spbk5l4*abb43(24)*abb43(20)
      abb43(26)=abb43(1)**4
      abb43(27)=-abb43(26)*abb43(25)
      abb43(28)=es12*abb43(22)
      abb43(27)=abb43(27)+abb43(28)
      abb43(17)=-abb43(17)*abb43(19)
      abb43(28)=-spak2l4*abb43(17)
      abb43(29)=spbk5l4*abb43(5)
      abb43(30)=abb43(28)*abb43(29)
      abb43(31)=spak1l3*spbk5l3
      abb43(32)=abb43(30)*abb43(31)
      abb43(33)=es12*abb43(32)
      abb43(14)=2.0_ki*abb43(27)+abb43(33)+abb43(14)
      abb43(14)=2.0_ki*abb43(14)
      abb43(27)=-abb43(22)+abb43(32)
      abb43(27)=4.0_ki*abb43(27)
      abb43(22)=4.0_ki*abb43(22)
      abb43(32)=-8.0_ki*abb43(25)
      abb43(25)=4.0_ki*abb43(25)
      abb43(18)=-abb43(18)*abb43(19)
      abb43(33)=abb43(18)*abb43(29)
      abb43(34)=-2.0_ki*es12+abb43(13)
      abb43(34)=2.0_ki*abb43(33)*abb43(34)
      abb43(33)=4.0_ki*abb43(33)
      abb43(24)=-abb43(24)*abb43(19)
      abb43(35)=abb43(24)*abb43(29)
      abb43(36)=8.0_ki*abb43(35)
      abb43(35)=-4.0_ki*abb43(35)
      abb43(37)=abb43(21)*abb43(29)
      abb43(37)=2.0_ki*abb43(37)
      abb43(38)=-spbk5l3*abb43(37)
      abb43(39)=abb43(17)*abb43(5)
      abb43(40)=abb43(39)*abb43(31)
      abb43(10)=abb43(8)*abb43(10)*abb43(9)
      abb43(41)=abb43(10)*abb43(18)
      abb43(42)=-abb43(40)-abb43(41)
      abb43(42)=es12*abb43(42)
      abb43(26)=abb43(26)*abb43(24)
      abb43(12)=-abb43(18)*abb43(12)
      abb43(12)=abb43(12)+2.0_ki*abb43(26)+abb43(42)
      abb43(26)=abb43(13)*abb43(41)
      abb43(12)=2.0_ki*abb43(12)+abb43(26)
      abb43(12)=2.0_ki*abb43(12)
      abb43(26)=abb43(41)-2.0_ki*abb43(40)
      abb43(26)=4.0_ki*abb43(26)
      abb43(40)=8.0_ki*abb43(18)
      abb43(24)=abb43(24)*abb43(10)
      abb43(41)=8.0_ki*abb43(24)
      abb43(24)=-4.0_ki*abb43(24)
      abb43(18)=abb43(18)*abb43(5)
      abb43(18)=4.0_ki*abb43(18)
      abb43(42)=spbk5l3*abb43(18)
      abb43(43)=-abb43(28)*abb43(31)
      abb43(21)=-spbk5k2*abb43(21)*abb43(11)
      abb43(21)=abb43(43)+abb43(21)
      abb43(21)=2.0_ki*abb43(21)
      abb43(13)=abb43(13)-es12
      abb43(43)=-2.0_ki*abb43(30)*abb43(13)
      abb43(30)=-16.0_ki*abb43(30)
      abb43(13)=4.0_ki*abb43(39)*abb43(13)
      abb43(15)=-abb43(19)*abb43(23)*spak2l4*abb43(15)
      abb43(23)=-abb43(5)*abb43(15)*abb43(31)
      abb43(20)=-abb43(16)*abb43(20)
      abb43(11)=abb43(11)*abb43(20)
      abb43(31)=-es12*abb43(11)
      abb43(23)=abb43(31)+abb43(23)+abb43(28)
      abb43(23)=2.0_ki*abb43(23)
      abb43(11)=4.0_ki*abb43(11)
      abb43(31)=2.0_ki*abb43(20)
      abb43(44)=abb43(31)*abb43(5)
      abb43(45)=spbk5l3*abb43(44)
      abb43(46)=2.0_ki*abb43(5)
      abb43(15)=abb43(15)*abb43(46)
      abb43(28)=2.0_ki*spak2l3*spbk5l4*abb43(28)
      abb43(46)=4.0_ki*spak2l3
      abb43(20)=spbk5l4*abb43(20)*abb43(46)
      abb43(16)=-abb43(46)*abb43(19)*abb43(16)
      abb43(19)=abb43(29)*abb43(16)
      abb43(17)=-abb43(17)*abb43(46)
      abb43(10)=abb43(10)*abb43(16)
      abb43(16)=spbk5k1*abb43(37)
      abb43(18)=-spbk5k1*abb43(18)
      abb43(29)=16.0_ki*abb43(39)
      abb43(37)=-spbk5k1*abb43(44)
      R2d43=0.0_ki
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd43h0_qp
