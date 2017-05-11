module p0_gg_hhg_abbrevd49h0_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(54), public :: abb49
   complex(ki), public :: R2d49
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
      abb49(1)=sqrt(mT**2)
      abb49(2)=sqrt2**(-1)
      abb49(3)=spbk2k1**(-1)
      abb49(4)=spak2k5**(-1)
      abb49(5)=spbk5k2**(-1)
      abb49(6)=spak2l4**(-1)
      abb49(7)=spbl4k2**(-1)
      abb49(8)=c2*spak1k2
      abb49(9)=abb49(1)**2
      abb49(10)=abb49(8)*abb49(9)
      abb49(11)=c1*spak1k2
      abb49(12)=abb49(11)*abb49(9)
      abb49(13)=abb49(10)-abb49(12)
      abb49(14)=2.0_ki*abb49(9)
      abb49(15)=spak2l4*spbl4k2
      abb49(16)=abb49(14)+abb49(15)
      abb49(17)=es34-es51
      abb49(18)=2.0_ki*es12
      abb49(19)=abb49(18)-abb49(17)
      abb49(20)=mH**2*abb49(6)*abb49(7)
      abb49(19)=abb49(19)*abb49(20)
      abb49(21)=-abb49(18)+abb49(16)-abb49(19)
      abb49(21)=abb49(21)*abb49(13)
      abb49(22)=spbk5l4*spak1l4
      abb49(18)=abb49(18)*abb49(22)
      abb49(23)=abb49(17)*abb49(22)
      abb49(18)=abb49(18)-abb49(23)
      abb49(24)=c2-c1
      abb49(18)=abb49(5)*abb49(24)*abb49(18)
      abb49(25)=-abb49(9)*abb49(18)
      abb49(21)=abb49(25)+abb49(21)
      abb49(25)=gHT**2*abb49(2)*i_
      abb49(26)=2.0_ki*abb49(25)
      abb49(27)=abb49(3)*abb49(4)
      abb49(28)=abb49(26)*abb49(27)
      abb49(21)=abb49(21)*abb49(28)
      abb49(29)=4.0_ki*abb49(27)
      abb49(29)=abb49(29)*abb49(25)
      abb49(10)=-abb49(29)*abb49(10)
      abb49(30)=-abb49(11)*abb49(14)
      abb49(31)=-es12*abb49(8)
      abb49(30)=abb49(30)+abb49(31)
      abb49(30)=abb49(30)*abb49(29)
      abb49(31)=abb49(20)+1.0_ki
      abb49(13)=abb49(31)*abb49(13)
      abb49(32)=c2*es12
      abb49(33)=abb49(9)*c1
      abb49(33)=abb49(33)+abb49(32)
      abb49(33)=abb49(5)*abb49(22)*abb49(33)
      abb49(13)=abb49(33)+abb49(13)
      abb49(13)=abb49(13)*abb49(29)
      abb49(33)=abb49(17)-es12
      abb49(34)=abb49(33)*abb49(20)
      abb49(16)=abb49(34)+abb49(16)
      abb49(16)=abb49(16)*abb49(8)
      abb49(35)=-es12*abb49(22)
      abb49(23)=abb49(23)+abb49(35)
      abb49(23)=abb49(5)*c2*abb49(23)
      abb49(16)=abb49(23)+6.0_ki*abb49(12)+abb49(16)
      abb49(16)=abb49(16)*abb49(29)
      abb49(23)=abb49(25)*abb49(27)
      abb49(23)=8.0_ki*abb49(23)
      abb49(35)=-abb49(8)*abb49(23)
      abb49(36)=-1.0_ki+abb49(20)
      abb49(36)=abb49(36)*abb49(11)
      abb49(37)=abb49(31)*abb49(8)
      abb49(22)=abb49(22)*abb49(5)
      abb49(38)=abb49(22)*c1
      abb49(36)=abb49(38)+abb49(36)+abb49(37)
      abb49(36)=abb49(36)*abb49(23)
      abb49(37)=abb49(11)-abb49(8)
      abb49(19)=abb49(19)-abb49(15)
      abb49(39)=-abb49(19)*abb49(37)
      abb49(18)=abb49(18)+abb49(39)
      abb49(18)=abb49(18)*abb49(28)
      abb49(39)=abb49(8)*abb49(29)
      abb49(40)=abb49(11)*abb49(23)
      abb49(31)=abb49(31)*abb49(37)
      abb49(31)=-abb49(38)+abb49(31)
      abb49(31)=abb49(31)*abb49(29)
      abb49(23)=-abb49(37)*abb49(23)
      abb49(37)=abb49(37)*abb49(29)
      abb49(27)=abb49(27)*abb49(5)
      abb49(25)=abb49(27)*abb49(25)
      abb49(41)=abb49(8)*spbl4k2
      abb49(42)=abb49(25)*abb49(14)*abb49(41)
      abb49(43)=4.0_ki*abb49(25)
      abb49(44)=abb49(43)*abb49(41)
      abb49(45)=2.0_ki*abb49(25)
      abb49(41)=-abb49(45)*abb49(41)
      abb49(46)=c2*spak1k5
      abb49(47)=abb49(9)*abb49(46)
      abb49(48)=abb49(5)*spak1l4*spbl4k2*abb49(32)
      abb49(47)=abb49(47)+abb49(48)
      abb49(47)=abb49(47)*abb49(28)
      abb49(48)=abb49(29)*abb49(46)
      abb49(46)=-abb49(28)*abb49(46)
      abb49(49)=c2*spak1l4
      abb49(50)=abb49(49)*abb49(28)
      abb49(51)=abb49(9)*abb49(50)
      abb49(29)=abb49(29)*abb49(49)
      abb49(52)=es12*abb49(34)
      abb49(17)=3.0_ki*es12-abb49(15)+abb49(17)
      abb49(17)=abb49(17)*abb49(9)
      abb49(17)=abb49(52)+abb49(17)
      abb49(17)=c1*abb49(17)
      abb49(52)=4.0_ki*abb49(9)
      abb49(53)=abb49(32)*abb49(52)
      abb49(17)=abb49(17)+abb49(53)
      abb49(17)=abb49(17)*abb49(27)
      abb49(17)=-abb49(38)+abb49(17)
      abb49(17)=abb49(17)*abb49(26)
      abb49(27)=c1*es12
      abb49(27)=abb49(27)+abb49(32)
      abb49(27)=abb49(27)*abb49(43)
      abb49(32)=abb49(20)*abb49(27)
      abb49(15)=abb49(33)-abb49(15)
      abb49(33)=c1*abb49(15)*abb49(43)
      abb49(53)=abb49(45)*c1
      abb49(15)=-abb49(15)*abb49(53)
      abb49(54)=spbk5l4*spak2l4
      abb49(14)=-abb49(14)*abb49(54)
      abb49(52)=-abb49(34)-abb49(52)
      abb49(52)=spak1k2*spbk5k1*abb49(52)
      abb49(14)=abb49(14)+abb49(52)
      abb49(14)=c2*abb49(14)
      abb49(12)=spbk5k1*abb49(12)
      abb49(12)=-4.0_ki*abb49(12)+abb49(14)
      abb49(12)=abb49(5)*abb49(12)
      abb49(8)=abb49(8)*spbl4k1
      abb49(14)=-spak2l4*abb49(8)
      abb49(12)=abb49(14)+abb49(12)
      abb49(12)=abb49(4)*abb49(12)
      abb49(14)=c2*spbk5k1*abb49(22)
      abb49(12)=abb49(14)+abb49(12)
      abb49(14)=abb49(26)*abb49(3)
      abb49(12)=abb49(12)*abb49(14)
      abb49(22)=abb49(43)*c2
      abb49(26)=abb49(22)*abb49(54)
      abb49(52)=-spak1k2*abb49(20)*spbk5k1
      abb49(52)=abb49(54)+abb49(52)
      abb49(22)=abb49(52)*abb49(22)
      abb49(52)=spbk5l4*c1
      abb49(8)=-abb49(4)*abb49(8)
      abb49(8)=abb49(52)+abb49(8)
      abb49(8)=abb49(14)*abb49(5)*abb49(8)
      abb49(9)=6.0_ki*abb49(9)
      abb49(14)=-spbk5l4*spal4k5
      abb49(14)=abb49(9)+abb49(14)-abb49(19)
      abb49(14)=c2*abb49(14)
      abb49(9)=-abb49(34)-abb49(9)
      abb49(9)=c1*abb49(9)
      abb49(9)=abb49(9)+abb49(14)
      abb49(9)=abb49(9)*abb49(45)
      abb49(14)=8.0_ki*abb49(25)
      abb49(14)=abb49(24)*abb49(14)
      abb49(19)=abb49(20)*abb49(14)
      abb49(24)=abb49(24)*abb49(43)
      abb49(25)=-c1*spak2l4
      abb49(34)=-abb49(5)*spbk5k1*abb49(49)
      abb49(25)=abb49(25)+abb49(34)
      abb49(25)=abb49(25)*abb49(28)
      abb49(11)=-abb49(20)*abb49(11)
      abb49(11)=abb49(11)-abb49(38)
      abb49(11)=abb49(11)*abb49(28)
      abb49(20)=abb49(53)*spak2l4*spbl4k1
      R2d49=0.0_ki
      rat2 = rat2 + R2d49
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='49' value='", &
          & R2d49, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd49h0_qp
