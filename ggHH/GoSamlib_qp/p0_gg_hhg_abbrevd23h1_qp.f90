module p0_gg_hhg_abbrevd23h1_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(45), public :: abb23
   complex(ki), public :: R2d23
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb23(1)=sqrt(mT**2)
      abb23(2)=sqrt2**(-1)
      abb23(3)=es51**(-1)
      abb23(4)=spak2k5**(-1)
      abb23(5)=spbk5k2**(-1)
      abb23(6)=spak1k2**(-1)
      abb23(7)=spak2l3**(-1)
      abb23(8)=spbl3k2**(-1)
      abb23(9)=spbl4k2**(-1)
      abb23(10)=spak2l4**(-1)
      abb23(11)=c2-c1
      abb23(12)=-spak2l3*abb23(11)
      abb23(13)=spak2l4*spbl4l3
      abb23(14)=-abb23(13)*abb23(12)
      abb23(15)=gHT**2*abb23(2)*i_
      abb23(16)=4.0_ki*abb23(15)
      abb23(17)=abb23(5)*abb23(3)
      abb23(18)=abb23(17)*abb23(4)
      abb23(19)=abb23(18)*spbk5k1**2
      abb23(16)=abb23(14)*abb23(16)*abb23(19)
      abb23(20)=abb23(1)**2
      abb23(21)=-abb23(20)*abb23(16)
      abb23(22)=spak2l4*spbk5l4
      abb23(23)=spak2l3*spbk5l3
      abb23(24)=abb23(23)+2.0_ki*abb23(22)
      abb23(25)=-abb23(6)*abb23(11)
      abb23(24)=-abb23(25)*abb23(24)*abb23(20)
      abb23(26)=spbl3k1*spak2l3
      abb23(27)=spak2l4*spbl4k1
      abb23(26)=5.0_ki*abb23(26)+8.0_ki*abb23(27)
      abb23(26)=abb23(20)*abb23(26)
      abb23(28)=spak2l3*spbl4l3
      abb23(29)=es12*spak2l4*abb23(28)*abb23(6)
      abb23(26)=abb23(29)+abb23(26)
      abb23(29)=abb23(11)*abb23(4)
      abb23(26)=-abb23(26)*abb23(29)
      abb23(24)=4.0_ki*abb23(24)+abb23(26)
      abb23(17)=abb23(15)*abb23(17)*spbk5k1
      abb23(26)=2.0_ki*abb23(17)
      abb23(24)=abb23(24)*abb23(26)
      abb23(30)=8.0_ki*abb23(17)
      abb23(23)=abb23(25)*abb23(23)
      abb23(31)=abb23(4)*abb23(12)*spbl3k1
      abb23(32)=abb23(31)-abb23(23)
      abb23(32)=abb23(32)*abb23(30)
      abb23(22)=abb23(22)*abb23(25)
      abb23(27)=abb23(27)*abb23(29)
      abb23(22)=abb23(27)+abb23(22)
      abb23(22)=abb23(22)*abb23(30)
      abb23(27)=abb23(8)*spak2l4*abb23(7)
      abb23(33)=2.0_ki*abb23(9)
      abb23(34)=abb23(27)-abb23(33)
      abb23(35)=mH**2
      abb23(34)=abb23(34)*abb23(35)
      abb23(36)=-spbk5l4*abb23(34)
      abb23(37)=abb23(10)*abb23(35)*abb23(9)
      abb23(38)=abb23(37)*spak2l3
      abb23(39)=3.0_ki*abb23(38)
      abb23(40)=abb23(39)*spbk5l3
      abb23(36)=abb23(36)+abb23(40)
      abb23(36)=-abb23(36)*abb23(25)
      abb23(34)=spbl4k1*abb23(34)
      abb23(39)=abb23(39)*spbl3k1
      abb23(34)=abb23(34)-abb23(39)
      abb23(34)=abb23(34)*abb23(29)
      abb23(34)=abb23(34)+abb23(36)
      abb23(34)=4.0_ki*abb23(34)*abb23(17)
      abb23(23)=-4.0_ki*abb23(23)+3.0_ki*abb23(31)
      abb23(23)=abb23(23)*abb23(26)
      abb23(31)=abb23(25)*abb23(26)
      abb23(28)=-abb23(28)*abb23(31)
      abb23(26)=abb23(26)*abb23(4)
      abb23(36)=-abb23(26)*spbl4l3*abb23(12)
      abb23(39)=abb23(13)*abb23(31)
      abb23(40)=abb23(11)*abb23(26)
      abb23(13)=-abb23(13)*abb23(40)
      abb23(41)=abb23(27)*spbl4k2
      abb23(41)=abb23(41)+2.0_ki
      abb23(41)=abb23(41)*abb23(35)
      abb23(42)=abb23(38)*spbl3k2
      abb23(41)=abb23(41)+abb23(42)+12.0_ki*abb23(20)
      abb23(31)=abb23(41)*abb23(31)
      abb23(42)=16.0_ki*abb23(17)
      abb23(42)=abb23(25)*abb23(42)
      abb23(43)=abb23(37)*abb23(42)
      abb23(30)=abb23(25)*abb23(30)
      abb23(27)=abb23(27)+abb23(33)
      abb23(27)=abb23(27)*abb23(35)
      abb23(33)=abb23(25)*abb23(4)
      abb23(35)=abb23(33)*abb23(27)
      abb23(44)=abb23(6)*es34
      abb23(27)=abb23(27)*abb23(44)
      abb23(45)=spbl3k1*spal3l4
      abb23(27)=abb23(45)+abb23(27)
      abb23(27)=abb23(27)*abb23(29)
      abb23(25)=abb23(25)*spal3l4
      abb23(45)=spbk5l3*abb23(25)
      abb23(27)=abb23(27)+abb23(45)
      abb23(27)=abb23(3)*abb23(27)
      abb23(27)=abb23(35)+abb23(27)
      abb23(15)=2.0_ki*abb23(15)
      abb23(35)=abb23(15)*spbk5k1
      abb23(45)=abb23(35)*abb23(5)
      abb23(27)=abb23(27)*abb23(45)
      abb23(15)=abb23(12)*abb23(19)*abb23(15)
      abb23(19)=abb23(20)*abb23(15)
      abb23(33)=abb23(38)*abb23(33)
      abb23(38)=abb23(38)*abb23(44)
      abb23(44)=spbl4k1*spal3l4
      abb23(38)=abb23(44)-abb23(38)
      abb23(29)=-abb23(38)*abb23(29)
      abb23(25)=-spbk5l4*abb23(25)
      abb23(25)=abb23(29)+abb23(25)
      abb23(25)=abb23(3)*abb23(25)
      abb23(25)=abb23(33)+abb23(25)
      abb23(25)=abb23(25)*abb23(45)
      abb23(12)=abb23(12)*spbk5l3
      abb23(18)=abb23(18)*abb23(20)*abb23(12)
      abb23(14)=-abb23(3)*abb23(4)*abb23(14)
      abb23(14)=abb23(14)+abb23(18)
      abb23(14)=abb23(14)*abb23(35)
      abb23(12)=-abb23(12)*abb23(26)
      abb23(18)=-abb23(41)*abb23(40)
      abb23(11)=abb23(11)*abb23(17)*abb23(4)
      abb23(17)=16.0_ki*abb23(11)
      abb23(20)=-abb23(37)*abb23(17)
      abb23(11)=-8.0_ki*abb23(11)
      R2d23=0.0_ki
      rat2 = rat2 + R2d23
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='23' value='", &
          & R2d23, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd23h1_qp
