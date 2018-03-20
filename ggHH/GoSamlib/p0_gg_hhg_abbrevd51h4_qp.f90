module     p0_gg_hhg_abbrevd51h4_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh4_qp
   implicit none
   private
   complex(ki), dimension(53), public :: abb51
   complex(ki), public :: R2d51
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
      abb51(1)=sqrt(mT**2)
      abb51(2)=sqrt2**(-1)
      abb51(3)=spbk2k1**(-1)
      abb51(4)=spbk5k2**(-1)
      abb51(5)=spak2l3**(-1)
      abb51(6)=spbl3k2**(-1)
      abb51(7)=es51-es34
      abb51(8)=abb51(5)*abb51(6)*mH**2
      abb51(9)=abb51(7)*abb51(8)
      abb51(10)=spal3k5*spbk5l3
      abb51(11)=-abb51(10)-abb51(9)
      abb51(12)=c1-c2
      abb51(13)=i_*abb51(2)
      abb51(14)=-abb51(3)*abb51(12)*abb51(13)
      abb51(15)=abb51(1)*gHT
      abb51(15)=abb51(15)**2
      abb51(16)=abb51(15)*abb51(4)
      abb51(17)=abb51(14)*abb51(16)
      abb51(18)=-spak1k5*abb51(17)
      abb51(19)=abb51(18)*es12
      abb51(11)=abb51(19)*abb51(11)
      abb51(20)=abb51(4)*gHT**2
      abb51(21)=abb51(14)*spak1k5*abb51(20)
      abb51(22)=abb51(1)**4
      abb51(23)=-abb51(22)*abb51(21)
      abb51(24)=-abb51(23)+2.0_ki*abb51(19)
      abb51(24)=abb51(24)*abb51(7)
      abb51(25)=abb51(12)*abb51(13)*spak1k5
      abb51(26)=abb51(4)*gHT
      abb51(26)=abb51(26)**2
      abb51(27)=abb51(26)*abb51(25)
      abb51(28)=abb51(1)**2
      abb51(29)=-abb51(28)*abb51(27)
      abb51(30)=spak1l3*spbk5l3
      abb51(31)=abb51(30)*abb51(29)
      abb51(32)=-abb51(31)+abb51(23)
      abb51(32)=es12*abb51(32)
      abb51(23)=-abb51(19)+abb51(23)
      abb51(33)=spbl3k2*spak2l3
      abb51(23)=abb51(23)*abb51(33)
      abb51(11)=abb51(23)+abb51(32)+abb51(24)+abb51(11)
      abb51(11)=2.0_ki*abb51(11)
      abb51(23)=8.0_ki*abb51(19)
      abb51(24)=abb51(7)-abb51(33)
      abb51(32)=abb51(8)-3.0_ki
      abb51(34)=-es12*abb51(32)
      abb51(34)=-abb51(10)+abb51(24)+abb51(34)
      abb51(34)=abb51(18)*abb51(34)
      abb51(31)=-abb51(31)+abb51(34)
      abb51(31)=4.0_ki*abb51(31)
      abb51(34)=16.0_ki*abb51(18)
      abb51(35)=-abb51(18)*abb51(7)
      abb51(19)=3.0_ki*abb51(19)+abb51(35)
      abb51(19)=2.0_ki*abb51(19)
      abb51(9)=-abb51(17)*abb51(9)
      abb51(35)=-2.0_ki*abb51(17)
      abb51(36)=-abb51(35)*abb51(7)
      abb51(37)=-abb51(20)*abb51(14)
      abb51(38)=-abb51(22)*abb51(37)
      abb51(9)=abb51(9)+3.0_ki*abb51(38)+abb51(36)
      abb51(9)=spak1k2*abb51(9)
      abb51(17)=abb51(17)*spak1k2
      abb51(33)=abb51(10)+abb51(33)
      abb51(33)=-abb51(17)*abb51(33)
      abb51(36)=-abb51(26)*abb51(14)
      abb51(28)=-abb51(28)*abb51(36)
      abb51(30)=abb51(28)*abb51(30)*es12
      abb51(9)=abb51(30)+abb51(9)+abb51(33)
      abb51(9)=2.0_ki*abb51(9)
      abb51(30)=8.0_ki*abb51(17)
      abb51(17)=4.0_ki*abb51(17)
      abb51(32)=-abb51(32)*abb51(17)
      abb51(33)=2.0_ki*spak1k2
      abb51(38)=abb51(37)*abb51(33)
      abb51(39)=-spak1k5*abb51(28)
      abb51(40)=2.0_ki*es12
      abb51(41)=abb51(39)*abb51(40)
      abb51(42)=-spbl3k2*abb51(41)
      abb51(39)=4.0_ki*abb51(39)
      abb51(43)=-spbl3k2*abb51(39)
      abb51(33)=abb51(33)*abb51(28)
      abb51(44)=-spbl3k2*abb51(33)
      abb51(41)=-spbk5l3*abb51(41)
      abb51(39)=-spbk5l3*abb51(39)
      abb51(33)=-spbk5l3*abb51(33)
      abb51(14)=-spal3k5*abb51(15)*abb51(14)*spak1k5
      abb51(15)=-spak1l3*abb51(16)*abb51(25)
      abb51(14)=abb51(14)+abb51(15)
      abb51(14)=2.0_ki*abb51(14)
      abb51(15)=2.0_ki*abb51(18)
      abb51(16)=abb51(24)+abb51(40)
      abb51(16)=2.0_ki*abb51(16)
      abb51(24)=-abb51(29)*abb51(16)
      abb51(40)=-abb51(27)*abb51(7)
      abb51(8)=abb51(8)-1.0_ki
      abb51(45)=abb51(40)*abb51(8)
      abb51(29)=-5.0_ki*abb51(29)+abb51(45)
      abb51(29)=4.0_ki*abb51(29)
      abb51(45)=abb51(27)*abb51(8)
      abb51(46)=-8.0_ki*abb51(45)
      abb51(40)=-2.0_ki*abb51(40)
      abb51(47)=4.0_ki*abb51(27)
      abb51(16)=abb51(28)*abb51(16)
      abb51(48)=abb51(36)*es34
      abb51(49)=abb51(36)*es51
      abb51(50)=abb51(48)-abb51(49)
      abb51(51)=-4.0_ki*abb51(50)*abb51(8)
      abb51(8)=-abb51(36)*abb51(8)
      abb51(52)=-8.0_ki*abb51(8)
      abb51(53)=2.0_ki*abb51(50)
      abb51(20)=-spal3k5*abb51(20)*abb51(25)
      abb51(25)=spbk2k1*spak1l3*abb51(27)
      abb51(20)=abb51(20)+abb51(25)
      abb51(20)=2.0_ki*abb51(20)
      abb51(12)=-spak1l3*abb51(13)*abb51(12)*abb51(26)
      abb51(13)=spal3k5*abb51(37)
      abb51(12)=abb51(13)+abb51(12)
      abb51(12)=2.0_ki*abb51(12)
      abb51(13)=-2.0_ki*abb51(27)
      abb51(25)=2.0_ki*abb51(36)
      abb51(7)=abb51(7)+es12
      abb51(22)=-abb51(7)*abb51(22)*abb51(36)
      abb51(26)=spbl3k1*spak2l3
      abb51(27)=abb51(18)*abb51(26)
      abb51(22)=abb51(27)+abb51(22)
      abb51(22)=2.0_ki*abb51(22)
      abb51(10)=-abb51(10)+2.0_ki*es51+es12-es34
      abb51(10)=abb51(28)*abb51(10)
      abb51(26)=abb51(21)*abb51(26)
      abb51(10)=abb51(26)+abb51(10)
      abb51(10)=4.0_ki*abb51(10)
      abb51(7)=-4.0_ki*abb51(28)*abb51(7)
      abb51(26)=abb51(36)*es12
      abb51(27)=-2.0_ki*abb51(49)-abb51(26)+abb51(48)
      abb51(27)=4.0_ki*abb51(27)
      abb51(26)=-abb51(26)+abb51(50)
      abb51(26)=2.0_ki*abb51(26)
      abb51(48)=-spak2l3*abb51(35)
      abb51(37)=4.0_ki*spak2l3*abb51(37)
      abb51(36)=4.0_ki*abb51(36)
      abb51(49)=-spbl3k1*spak1k5*abb51(36)
      abb51(45)=-4.0_ki*abb51(45)
      abb51(28)=12.0_ki*abb51(28)
      abb51(8)=-4.0_ki*abb51(8)
      abb51(35)=-spal3k5*abb51(35)
      abb51(18)=-4.0_ki*abb51(18)
      abb51(21)=-4.0_ki*abb51(21)
      R2d51=0.0_ki
      rat2 = rat2 + R2d51
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='51' value='", &
          & R2d51, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd51h4_qp
