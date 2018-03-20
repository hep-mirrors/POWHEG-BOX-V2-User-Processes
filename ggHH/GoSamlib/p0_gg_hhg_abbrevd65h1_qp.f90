module     p0_gg_hhg_abbrevd65h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(45), public :: abb65
   complex(ki), public :: R2d65
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
      abb65(1)=sqrt(mT**2)
      abb65(2)=sqrt2**(-1)
      abb65(3)=spak2k5**(-1)
      abb65(4)=spbk5k2**(-1)
      abb65(5)=spak1k2**(-1)
      abb65(6)=spak2l4**(-1)
      abb65(7)=spbl4k2**(-1)
      abb65(8)=spak2l3**(-1)
      abb65(9)=spbl3k2**(-1)
      abb65(10)=spbk5k1**2
      abb65(11)=gHT**2*abb65(2)*abb65(3)
      abb65(12)=abb65(11)*i_*abb65(4)
      abb65(13)=2.0_ki*abb65(12)
      abb65(14)=abb65(10)*abb65(13)
      abb65(15)=c2-c1
      abb65(16)=abb65(15)*abb65(14)
      abb65(17)=spak1k2*spbl3k1
      abb65(18)=spak2l4*spbl4l3
      abb65(17)=abb65(17)-abb65(18)
      abb65(19)=abb65(1)**2
      abb65(20)=abb65(19)*spak2l3
      abb65(17)=abb65(17)*abb65(20)
      abb65(21)=abb65(19)*spak2l4
      abb65(22)=2.0_ki*abb65(21)
      abb65(23)=abb65(22)*spbl4k1
      abb65(24)=abb65(23)*spak1k2
      abb65(17)=abb65(17)+abb65(24)
      abb65(17)=-abb65(17)*abb65(16)
      abb65(24)=spak2l3*spak1k2
      abb65(25)=abb65(24)*spbl3k1
      abb65(26)=spak2l4*spbl4k1
      abb65(27)=abb65(26)*spak1k2
      abb65(25)=abb65(25)+abb65(27)
      abb65(25)=-abb65(25)*abb65(16)
      abb65(16)=-abb65(24)*spbl4l3*abb65(16)
      abb65(18)=abb65(5)*abb65(18)*abb65(20)
      abb65(24)=abb65(20)*spbl3k1
      abb65(23)=abb65(24)+abb65(23)
      abb65(18)=-abb65(18)+2.0_ki*abb65(23)
      abb65(24)=abb65(13)*spbk5k1
      abb65(27)=abb65(15)*abb65(24)
      abb65(18)=abb65(18)*abb65(27)
      abb65(28)=abb65(12)*spbk5k1
      abb65(28)=4.0_ki*abb65(28)
      abb65(29)=abb65(15)*abb65(28)
      abb65(30)=spak2l3*spbl3k1
      abb65(26)=abb65(30)+abb65(26)
      abb65(30)=abb65(26)*abb65(29)
      abb65(31)=spak2l3*spbl4l3
      abb65(32)=abb65(31)*abb65(29)
      abb65(33)=-abb65(5)*abb65(15)
      abb65(34)=abb65(33)*abb65(13)
      abb65(23)=abb65(23)*abb65(34)
      abb65(26)=abb65(26)*abb65(34)
      abb65(31)=abb65(31)*abb65(34)
      abb65(35)=4.0_ki*abb65(12)
      abb65(10)=abb65(15)*abb65(10)*abb65(35)
      abb65(36)=-abb65(21)*abb65(10)
      abb65(37)=abb65(15)*spak1k2
      abb65(14)=-abb65(37)*abb65(14)
      abb65(38)=abb65(33)*abb65(28)
      abb65(21)=-abb65(21)*abb65(38)
      abb65(10)=-abb65(20)*abb65(10)
      abb65(38)=-abb65(20)*abb65(38)
      abb65(20)=abb65(20)*spbk5l3
      abb65(22)=abb65(22)*spbk5l4
      abb65(20)=abb65(20)+abb65(22)
      abb65(22)=-abb65(20)*abb65(15)
      abb65(39)=mH**2
      abb65(40)=abb65(39)*abb65(7)
      abb65(41)=abb65(40)*abb65(6)
      abb65(42)=abb65(41)*spak2l3
      abb65(43)=abb65(42)*spbl3k2
      abb65(43)=abb65(43)+abb65(39)
      abb65(44)=abb65(43)+3.0_ki*abb65(19)
      abb65(45)=abb65(15)*spbk5k1
      abb65(44)=abb65(44)*spak1k2*abb65(45)
      abb65(22)=abb65(44)+abb65(22)
      abb65(22)=abb65(22)*abb65(24)
      abb65(40)=abb65(40)*spbk5l4
      abb65(42)=abb65(42)*spbk5l3
      abb65(40)=abb65(40)+abb65(42)
      abb65(42)=abb65(40)*abb65(15)
      abb65(37)=abb65(37)*spbk5k1
      abb65(44)=-abb65(41)*abb65(37)
      abb65(42)=abb65(44)+abb65(42)
      abb65(28)=abb65(42)*abb65(28)
      abb65(42)=spak2l4*spbk5l4
      abb65(44)=spak2l3*spbk5l3
      abb65(42)=abb65(42)+abb65(44)
      abb65(44)=-abb65(42)*abb65(15)
      abb65(37)=abb65(37)+abb65(44)
      abb65(24)=abb65(37)*abb65(24)
      abb65(20)=-abb65(20)*abb65(33)
      abb65(37)=9.0_ki*abb65(19)+2.0_ki*abb65(43)
      abb65(37)=-abb65(37)*abb65(45)
      abb65(20)=abb65(37)+abb65(20)
      abb65(20)=abb65(20)*abb65(13)
      abb65(37)=abb65(40)*abb65(33)
      abb65(40)=3.0_ki*spbk5k1
      abb65(40)=abb65(15)*abb65(40)
      abb65(44)=abb65(41)*abb65(40)
      abb65(37)=abb65(44)+abb65(37)
      abb65(37)=abb65(37)*abb65(35)
      abb65(42)=-abb65(42)*abb65(33)
      abb65(40)=-abb65(40)+abb65(42)
      abb65(13)=abb65(40)*abb65(13)
      abb65(19)=abb65(43)+6.0_ki*abb65(19)
      abb65(19)=-abb65(19)*abb65(34)
      abb65(12)=8.0_ki*abb65(12)*abb65(41)*abb65(33)
      abb65(35)=-abb65(33)*abb65(35)
      abb65(40)=abb65(9)*spak2l4*abb65(8)
      abb65(40)=abb65(40)+abb65(7)
      abb65(39)=abb65(40)*abb65(39)
      abb65(40)=abb65(4)*spbk5l3*spal3l4
      abb65(39)=abb65(40)+abb65(39)
      abb65(11)=2.0_ki*abb65(11)
      abb65(11)=abb65(11)*i_
      abb65(15)=-abb65(11)*spbk5k1*abb65(15)*abb65(39)
      abb65(11)=-abb65(11)*abb65(33)*abb65(39)
      R2d65=0.0_ki
      rat2 = rat2 + R2d65
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='65' value='", &
          & R2d65, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd65h1_qp
