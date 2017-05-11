module p0_gg_hhg_abbrevd45h0_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(54), public :: abb45
   complex(ki), public :: R2d45
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
      abb45(1)=sqrt(mT**2)
      abb45(2)=sqrt2**(-1)
      abb45(3)=spbk2k1**(-1)
      abb45(4)=spak2k5**(-1)
      abb45(5)=spbk5k2**(-1)
      abb45(6)=spak2l3**(-1)
      abb45(7)=spbl3k2**(-1)
      abb45(8)=c2*spak1k2
      abb45(9)=abb45(1)**2
      abb45(10)=abb45(8)*abb45(9)
      abb45(11)=c1*spak1k2
      abb45(12)=abb45(11)*abb45(9)
      abb45(13)=abb45(10)-abb45(12)
      abb45(14)=2.0_ki*abb45(9)
      abb45(15)=spak2l3*spbl3k2
      abb45(16)=abb45(14)+abb45(15)
      abb45(17)=es34-es51
      abb45(18)=2.0_ki*es12
      abb45(19)=abb45(18)-abb45(17)
      abb45(20)=mH**2*abb45(6)*abb45(7)
      abb45(19)=abb45(19)*abb45(20)
      abb45(21)=-abb45(18)+abb45(16)-abb45(19)
      abb45(21)=abb45(21)*abb45(13)
      abb45(22)=spbk5l3*spak1l3
      abb45(18)=abb45(18)*abb45(22)
      abb45(23)=abb45(17)*abb45(22)
      abb45(18)=abb45(18)-abb45(23)
      abb45(24)=c2-c1
      abb45(18)=abb45(5)*abb45(24)*abb45(18)
      abb45(25)=-abb45(9)*abb45(18)
      abb45(21)=abb45(25)+abb45(21)
      abb45(25)=gHT**2*abb45(2)*i_
      abb45(26)=2.0_ki*abb45(25)
      abb45(27)=abb45(3)*abb45(4)
      abb45(28)=abb45(26)*abb45(27)
      abb45(21)=abb45(21)*abb45(28)
      abb45(29)=4.0_ki*abb45(27)
      abb45(29)=abb45(29)*abb45(25)
      abb45(10)=-abb45(29)*abb45(10)
      abb45(30)=-abb45(11)*abb45(14)
      abb45(31)=-es12*abb45(8)
      abb45(30)=abb45(30)+abb45(31)
      abb45(30)=abb45(30)*abb45(29)
      abb45(31)=abb45(20)+1.0_ki
      abb45(13)=abb45(31)*abb45(13)
      abb45(32)=c2*es12
      abb45(33)=abb45(9)*c1
      abb45(33)=abb45(33)+abb45(32)
      abb45(33)=abb45(5)*abb45(22)*abb45(33)
      abb45(13)=abb45(33)+abb45(13)
      abb45(13)=abb45(13)*abb45(29)
      abb45(33)=abb45(17)-es12
      abb45(34)=abb45(33)*abb45(20)
      abb45(16)=abb45(34)+abb45(16)
      abb45(16)=abb45(16)*abb45(8)
      abb45(35)=-es12*abb45(22)
      abb45(23)=abb45(23)+abb45(35)
      abb45(23)=abb45(5)*c2*abb45(23)
      abb45(16)=abb45(23)+6.0_ki*abb45(12)+abb45(16)
      abb45(16)=abb45(16)*abb45(29)
      abb45(23)=abb45(25)*abb45(27)
      abb45(23)=8.0_ki*abb45(23)
      abb45(35)=-abb45(8)*abb45(23)
      abb45(36)=-1.0_ki+abb45(20)
      abb45(36)=abb45(36)*abb45(11)
      abb45(37)=abb45(31)*abb45(8)
      abb45(22)=abb45(22)*abb45(5)
      abb45(38)=abb45(22)*c1
      abb45(36)=abb45(38)+abb45(36)+abb45(37)
      abb45(36)=abb45(36)*abb45(23)
      abb45(37)=abb45(11)-abb45(8)
      abb45(19)=abb45(19)-abb45(15)
      abb45(39)=-abb45(19)*abb45(37)
      abb45(18)=abb45(18)+abb45(39)
      abb45(18)=abb45(18)*abb45(28)
      abb45(39)=abb45(8)*abb45(29)
      abb45(40)=abb45(11)*abb45(23)
      abb45(31)=abb45(31)*abb45(37)
      abb45(31)=-abb45(38)+abb45(31)
      abb45(31)=abb45(31)*abb45(29)
      abb45(23)=-abb45(37)*abb45(23)
      abb45(37)=abb45(37)*abb45(29)
      abb45(27)=abb45(27)*abb45(5)
      abb45(25)=abb45(27)*abb45(25)
      abb45(41)=abb45(8)*spbl3k2
      abb45(42)=abb45(25)*abb45(14)*abb45(41)
      abb45(43)=4.0_ki*abb45(25)
      abb45(44)=abb45(43)*abb45(41)
      abb45(45)=2.0_ki*abb45(25)
      abb45(41)=-abb45(45)*abb45(41)
      abb45(46)=c2*spak1k5
      abb45(47)=abb45(9)*abb45(46)
      abb45(48)=abb45(5)*spak1l3*spbl3k2*abb45(32)
      abb45(47)=abb45(47)+abb45(48)
      abb45(47)=abb45(47)*abb45(28)
      abb45(48)=abb45(29)*abb45(46)
      abb45(46)=-abb45(28)*abb45(46)
      abb45(49)=c2*spak1l3
      abb45(50)=abb45(49)*abb45(28)
      abb45(51)=abb45(9)*abb45(50)
      abb45(29)=abb45(29)*abb45(49)
      abb45(52)=es12*abb45(34)
      abb45(17)=3.0_ki*es12-abb45(15)+abb45(17)
      abb45(17)=abb45(17)*abb45(9)
      abb45(17)=abb45(52)+abb45(17)
      abb45(17)=c1*abb45(17)
      abb45(52)=4.0_ki*abb45(9)
      abb45(53)=abb45(32)*abb45(52)
      abb45(17)=abb45(17)+abb45(53)
      abb45(17)=abb45(17)*abb45(27)
      abb45(17)=-abb45(38)+abb45(17)
      abb45(17)=abb45(17)*abb45(26)
      abb45(27)=c1*es12
      abb45(27)=abb45(27)+abb45(32)
      abb45(27)=abb45(27)*abb45(43)
      abb45(32)=abb45(20)*abb45(27)
      abb45(15)=abb45(33)-abb45(15)
      abb45(33)=c1*abb45(15)*abb45(43)
      abb45(53)=abb45(45)*c1
      abb45(15)=-abb45(15)*abb45(53)
      abb45(54)=spbk5l3*spak2l3
      abb45(14)=-abb45(14)*abb45(54)
      abb45(52)=-abb45(34)-abb45(52)
      abb45(52)=spak1k2*spbk5k1*abb45(52)
      abb45(14)=abb45(14)+abb45(52)
      abb45(14)=c2*abb45(14)
      abb45(12)=spbk5k1*abb45(12)
      abb45(12)=-4.0_ki*abb45(12)+abb45(14)
      abb45(12)=abb45(5)*abb45(12)
      abb45(8)=abb45(8)*spbl3k1
      abb45(14)=-spak2l3*abb45(8)
      abb45(12)=abb45(14)+abb45(12)
      abb45(12)=abb45(4)*abb45(12)
      abb45(14)=c2*spbk5k1*abb45(22)
      abb45(12)=abb45(14)+abb45(12)
      abb45(14)=abb45(26)*abb45(3)
      abb45(12)=abb45(12)*abb45(14)
      abb45(22)=abb45(43)*c2
      abb45(26)=abb45(22)*abb45(54)
      abb45(52)=-spak1k2*abb45(20)*spbk5k1
      abb45(52)=abb45(54)+abb45(52)
      abb45(22)=abb45(52)*abb45(22)
      abb45(52)=spbk5l3*c1
      abb45(8)=-abb45(4)*abb45(8)
      abb45(8)=abb45(52)+abb45(8)
      abb45(8)=abb45(14)*abb45(5)*abb45(8)
      abb45(9)=6.0_ki*abb45(9)
      abb45(14)=-spbk5l3*spal3k5
      abb45(14)=abb45(9)+abb45(14)-abb45(19)
      abb45(14)=c2*abb45(14)
      abb45(9)=-abb45(34)-abb45(9)
      abb45(9)=c1*abb45(9)
      abb45(9)=abb45(9)+abb45(14)
      abb45(9)=abb45(9)*abb45(45)
      abb45(14)=8.0_ki*abb45(25)
      abb45(14)=abb45(24)*abb45(14)
      abb45(19)=abb45(20)*abb45(14)
      abb45(24)=abb45(24)*abb45(43)
      abb45(25)=-c1*spak2l3
      abb45(34)=-abb45(5)*spbk5k1*abb45(49)
      abb45(25)=abb45(25)+abb45(34)
      abb45(25)=abb45(25)*abb45(28)
      abb45(11)=-abb45(20)*abb45(11)
      abb45(11)=abb45(11)-abb45(38)
      abb45(11)=abb45(11)*abb45(28)
      abb45(20)=abb45(53)*spak2l3*spbl3k1
      R2d45=0.0_ki
      rat2 = rat2 + R2d45
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='45' value='", &
          & R2d45, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd45h0_qp
