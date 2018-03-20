module     p0_gg_hhg_abbrevd53h4_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh4_qp
   implicit none
   private
   complex(ki), dimension(53), public :: abb53
   complex(ki), public :: R2d53
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
      abb53(1)=sqrt(mT**2)
      abb53(2)=sqrt2**(-1)
      abb53(3)=spbk2k1**(-1)
      abb53(4)=spbk5k2**(-1)
      abb53(5)=spak2l4**(-1)
      abb53(6)=spbl4k2**(-1)
      abb53(7)=es51-es34
      abb53(8)=abb53(5)*abb53(6)*mH**2
      abb53(9)=abb53(7)*abb53(8)
      abb53(10)=spal4k5*spbk5l4
      abb53(11)=-abb53(10)-abb53(9)
      abb53(12)=c1-c2
      abb53(13)=i_*abb53(2)
      abb53(14)=-abb53(3)*abb53(12)*abb53(13)
      abb53(15)=abb53(1)*gHT
      abb53(15)=abb53(15)**2
      abb53(16)=abb53(15)*abb53(4)
      abb53(17)=abb53(14)*abb53(16)
      abb53(18)=-spak1k5*abb53(17)
      abb53(19)=abb53(18)*es12
      abb53(11)=abb53(19)*abb53(11)
      abb53(20)=abb53(4)*gHT**2
      abb53(21)=abb53(14)*spak1k5*abb53(20)
      abb53(22)=abb53(1)**4
      abb53(23)=-abb53(22)*abb53(21)
      abb53(24)=-abb53(23)+2.0_ki*abb53(19)
      abb53(24)=abb53(24)*abb53(7)
      abb53(25)=abb53(12)*abb53(13)*spak1k5
      abb53(26)=abb53(4)*gHT
      abb53(26)=abb53(26)**2
      abb53(27)=abb53(26)*abb53(25)
      abb53(28)=abb53(1)**2
      abb53(29)=-abb53(28)*abb53(27)
      abb53(30)=spak1l4*spbk5l4
      abb53(31)=abb53(30)*abb53(29)
      abb53(32)=-abb53(31)+abb53(23)
      abb53(32)=es12*abb53(32)
      abb53(23)=-abb53(19)+abb53(23)
      abb53(33)=spbl4k2*spak2l4
      abb53(23)=abb53(23)*abb53(33)
      abb53(11)=abb53(23)+abb53(32)+abb53(24)+abb53(11)
      abb53(11)=2.0_ki*abb53(11)
      abb53(23)=8.0_ki*abb53(19)
      abb53(24)=abb53(7)-abb53(33)
      abb53(32)=abb53(8)-3.0_ki
      abb53(34)=-es12*abb53(32)
      abb53(34)=-abb53(10)+abb53(24)+abb53(34)
      abb53(34)=abb53(18)*abb53(34)
      abb53(31)=-abb53(31)+abb53(34)
      abb53(31)=4.0_ki*abb53(31)
      abb53(34)=16.0_ki*abb53(18)
      abb53(35)=-abb53(18)*abb53(7)
      abb53(19)=3.0_ki*abb53(19)+abb53(35)
      abb53(19)=2.0_ki*abb53(19)
      abb53(9)=-abb53(17)*abb53(9)
      abb53(35)=-2.0_ki*abb53(17)
      abb53(36)=-abb53(35)*abb53(7)
      abb53(37)=-abb53(20)*abb53(14)
      abb53(38)=-abb53(22)*abb53(37)
      abb53(9)=abb53(9)+3.0_ki*abb53(38)+abb53(36)
      abb53(9)=spak1k2*abb53(9)
      abb53(17)=abb53(17)*spak1k2
      abb53(33)=abb53(10)+abb53(33)
      abb53(33)=-abb53(17)*abb53(33)
      abb53(36)=-abb53(26)*abb53(14)
      abb53(28)=-abb53(28)*abb53(36)
      abb53(30)=abb53(28)*abb53(30)*es12
      abb53(9)=abb53(30)+abb53(9)+abb53(33)
      abb53(9)=2.0_ki*abb53(9)
      abb53(30)=8.0_ki*abb53(17)
      abb53(17)=4.0_ki*abb53(17)
      abb53(32)=-abb53(32)*abb53(17)
      abb53(33)=2.0_ki*spak1k2
      abb53(38)=abb53(37)*abb53(33)
      abb53(39)=-spak1k5*abb53(28)
      abb53(40)=2.0_ki*es12
      abb53(41)=abb53(39)*abb53(40)
      abb53(42)=-spbl4k2*abb53(41)
      abb53(39)=4.0_ki*abb53(39)
      abb53(43)=-spbl4k2*abb53(39)
      abb53(33)=abb53(33)*abb53(28)
      abb53(44)=-spbl4k2*abb53(33)
      abb53(41)=-spbk5l4*abb53(41)
      abb53(39)=-spbk5l4*abb53(39)
      abb53(33)=-spbk5l4*abb53(33)
      abb53(14)=-spal4k5*abb53(15)*abb53(14)*spak1k5
      abb53(15)=-spak1l4*abb53(16)*abb53(25)
      abb53(14)=abb53(14)+abb53(15)
      abb53(14)=2.0_ki*abb53(14)
      abb53(15)=2.0_ki*abb53(18)
      abb53(16)=abb53(24)+abb53(40)
      abb53(16)=2.0_ki*abb53(16)
      abb53(24)=-abb53(29)*abb53(16)
      abb53(40)=-abb53(27)*abb53(7)
      abb53(8)=abb53(8)-1.0_ki
      abb53(45)=abb53(40)*abb53(8)
      abb53(29)=-5.0_ki*abb53(29)+abb53(45)
      abb53(29)=4.0_ki*abb53(29)
      abb53(45)=abb53(27)*abb53(8)
      abb53(46)=-8.0_ki*abb53(45)
      abb53(40)=-2.0_ki*abb53(40)
      abb53(47)=4.0_ki*abb53(27)
      abb53(16)=abb53(28)*abb53(16)
      abb53(48)=abb53(36)*es34
      abb53(49)=abb53(36)*es51
      abb53(50)=abb53(48)-abb53(49)
      abb53(51)=-4.0_ki*abb53(50)*abb53(8)
      abb53(8)=-abb53(36)*abb53(8)
      abb53(52)=-8.0_ki*abb53(8)
      abb53(53)=2.0_ki*abb53(50)
      abb53(20)=-spal4k5*abb53(20)*abb53(25)
      abb53(25)=spbk2k1*spak1l4*abb53(27)
      abb53(20)=abb53(20)+abb53(25)
      abb53(20)=2.0_ki*abb53(20)
      abb53(12)=-spak1l4*abb53(13)*abb53(12)*abb53(26)
      abb53(13)=spal4k5*abb53(37)
      abb53(12)=abb53(13)+abb53(12)
      abb53(12)=2.0_ki*abb53(12)
      abb53(13)=-2.0_ki*abb53(27)
      abb53(25)=2.0_ki*abb53(36)
      abb53(7)=abb53(7)+es12
      abb53(22)=-abb53(7)*abb53(22)*abb53(36)
      abb53(26)=spbl4k1*spak2l4
      abb53(27)=abb53(18)*abb53(26)
      abb53(22)=abb53(27)+abb53(22)
      abb53(22)=2.0_ki*abb53(22)
      abb53(10)=-abb53(10)+2.0_ki*es51+es12-es34
      abb53(10)=abb53(28)*abb53(10)
      abb53(26)=abb53(21)*abb53(26)
      abb53(10)=abb53(26)+abb53(10)
      abb53(10)=4.0_ki*abb53(10)
      abb53(7)=-4.0_ki*abb53(28)*abb53(7)
      abb53(26)=abb53(36)*es12
      abb53(27)=-2.0_ki*abb53(49)-abb53(26)+abb53(48)
      abb53(27)=4.0_ki*abb53(27)
      abb53(26)=-abb53(26)+abb53(50)
      abb53(26)=2.0_ki*abb53(26)
      abb53(48)=-spak2l4*abb53(35)
      abb53(37)=4.0_ki*spak2l4*abb53(37)
      abb53(36)=4.0_ki*abb53(36)
      abb53(49)=-spbl4k1*spak1k5*abb53(36)
      abb53(45)=-4.0_ki*abb53(45)
      abb53(28)=12.0_ki*abb53(28)
      abb53(8)=-4.0_ki*abb53(8)
      abb53(35)=-spal4k5*abb53(35)
      abb53(18)=-4.0_ki*abb53(18)
      abb53(21)=-4.0_ki*abb53(21)
      R2d53=0.0_ki
      rat2 = rat2 + R2d53
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='53' value='", &
          & R2d53, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd53h4_qp
