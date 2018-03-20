module     p0_gg_hhg_abbrevd55h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(50), public :: abb55
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
      abb55(3)=spak1k2**(-1)
      abb55(4)=spak2k5**(-1)
      abb55(5)=spbk5k2**(-1)
      abb55(6)=spbl3k2**(-1)
      abb55(7)=spak2l3**(-1)
      abb55(8)=spak2l4**(-1)
      abb55(9)=spbl4k2**(-1)
      abb55(10)=c2-c1
      abb55(11)=-spbk5k1*abb55(10)
      abb55(12)=-spbl4k1*abb55(11)
      abb55(13)=abb55(1)**2
      abb55(14)=abb55(13)*spak2l4
      abb55(15)=abb55(14)*spbk5l3
      abb55(16)=abb55(12)*abb55(15)
      abb55(17)=abb55(11)*spbl3k1
      abb55(18)=abb55(13)*spak2l3
      abb55(19)=abb55(18)*spbk5l3
      abb55(20)=2.0_ki*abb55(19)
      abb55(21)=-abb55(17)*abb55(20)
      abb55(16)=abb55(16)+abb55(21)
      abb55(16)=spak2l3*abb55(16)
      abb55(21)=-spbk5l4*abb55(10)
      abb55(22)=abb55(21)*abb55(14)
      abb55(23)=spbl3k1*abb55(22)
      abb55(24)=-spbl4k1*abb55(10)
      abb55(25)=abb55(24)*abb55(15)
      abb55(26)=-abb55(23)-abb55(25)
      abb55(27)=spbk5l3*spak2l3**2
      abb55(26)=abb55(3)*abb55(26)*abb55(27)
      abb55(16)=abb55(16)+abb55(26)
      abb55(26)=2.0_ki*i_
      abb55(28)=abb55(26)*abb55(5)
      abb55(29)=gHT**2*abb55(2)*abb55(4)
      abb55(30)=abb55(28)*abb55(29)
      abb55(16)=abb55(16)*abb55(30)
      abb55(31)=abb55(12)*abb55(30)
      abb55(32)=spbk5l3*spak2l4
      abb55(33)=spak2l3*abb55(32)*abb55(31)
      abb55(34)=spbk5l3**2
      abb55(35)=spak2l4*abb55(34)*spak2l3*abb55(24)*abb55(30)
      abb55(36)=abb55(10)*spbl3k1
      abb55(37)=-abb55(36)*abb55(20)
      abb55(23)=abb55(37)-abb55(23)-3.0_ki*abb55(25)
      abb55(25)=abb55(3)*spak2l3
      abb55(23)=abb55(23)*abb55(25)
      abb55(12)=abb55(12)*abb55(14)
      abb55(17)=abb55(17)*abb55(18)
      abb55(12)=abb55(23)+abb55(12)-2.0_ki*abb55(17)
      abb55(12)=abb55(12)*abb55(30)
      abb55(17)=spak2l4*abb55(31)
      abb55(23)=abb55(24)*abb55(32)
      abb55(30)=abb55(30)*abb55(23)
      abb55(31)=-abb55(24)*abb55(14)
      abb55(36)=-abb55(36)*abb55(18)
      abb55(31)=abb55(31)+abb55(36)
      abb55(36)=i_*abb55(5)
      abb55(37)=4.0_ki*abb55(36)
      abb55(38)=abb55(29)*abb55(3)
      abb55(31)=abb55(31)*abb55(38)*abb55(37)
      abb55(39)=abb55(11)*abb55(38)
      abb55(40)=abb55(39)*abb55(28)
      abb55(41)=abb55(40)*spak2l3
      abb55(42)=abb55(15)*abb55(41)
      abb55(43)=abb55(32)*abb55(41)
      abb55(34)=abb55(34)*abb55(10)
      abb55(44)=abb55(38)*spak2l3
      abb55(45)=abb55(28)*spak2l4
      abb55(46)=abb55(45)*abb55(44)*abb55(34)
      abb55(14)=abb55(14)*abb55(40)
      abb55(45)=abb55(45)*abb55(39)
      abb55(28)=abb55(38)*abb55(28)
      abb55(47)=abb55(28)*abb55(10)*abb55(32)
      abb55(48)=abb55(27)*abb55(40)
      abb55(49)=-abb55(13)*abb55(48)
      abb55(37)=abb55(37)*abb55(39)
      abb55(39)=abb55(27)*abb55(37)
      abb55(28)=abb55(21)*abb55(28)
      abb55(50)=-abb55(27)*abb55(28)
      abb55(40)=-abb55(18)*abb55(40)
      abb55(37)=spak2l3*abb55(37)
      abb55(28)=-spak2l3*abb55(28)
      abb55(15)=abb55(21)*abb55(15)
      abb55(18)=abb55(18)*abb55(34)
      abb55(15)=abb55(15)+abb55(18)
      abb55(15)=abb55(15)*abb55(25)
      abb55(18)=abb55(11)*abb55(20)
      abb55(15)=abb55(18)+abb55(15)
      abb55(18)=2.0_ki*abb55(5)
      abb55(15)=abb55(15)*abb55(18)
      abb55(20)=mH**2
      abb55(21)=abb55(20)*abb55(6)
      abb55(23)=abb55(21)*abb55(23)
      abb55(15)=abb55(23)+abb55(15)
      abb55(23)=abb55(29)*abb55(26)
      abb55(15)=abb55(15)*abb55(23)
      abb55(19)=abb55(10)*abb55(19)
      abb55(19)=abb55(22)+5.0_ki*abb55(19)
      abb55(19)=abb55(3)*abb55(19)
      abb55(11)=abb55(11)*abb55(13)
      abb55(11)=2.0_ki*abb55(11)+abb55(19)
      abb55(11)=abb55(11)*abb55(18)
      abb55(18)=abb55(21)*abb55(7)
      abb55(19)=abb55(18)*abb55(24)*spak2l4
      abb55(11)=abb55(19)+abb55(11)
      abb55(11)=abb55(11)*abb55(23)
      abb55(13)=16.0_ki*abb55(10)*abb55(13)*abb55(36)*abb55(38)
      abb55(19)=abb55(38)*abb55(26)
      abb55(22)=abb55(10)*abb55(19)
      abb55(21)=abb55(22)*abb55(21)*abb55(32)
      abb55(18)=abb55(22)*abb55(18)*spak2l4
      abb55(10)=abb55(10)*abb55(9)*abb55(20)*abb55(8)
      abb55(19)=abb55(10)*abb55(27)*abb55(19)
      abb55(10)=abb55(10)*abb55(26)*abb55(44)
      R2d55=0.0_ki
      rat2 = rat2 + R2d55
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='55' value='", &
          & R2d55, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd55h1_qp
