module     pb_gg_hh_abbrevd10h0
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_globalsh0
   implicit none
   private
   complex(ki), dimension(49), public :: abb10
   complex(ki), public :: R2d10
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use pb_gg_hh_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use pb_gg_hh_kinematics
      use pb_gg_hh_model
      use pb_gg_hh_color, only: TR
      use pb_gg_hh_globalsl1, only: epspow
      implicit none
      abb10(1)=spbk2k1**(-1)
      abb10(2)=sqrt(mT**2)
      abb10(3)=spak2l3**(-1)
      abb10(4)=spbl3k2**(-1)
      abb10(5)=spak2l4**(-1)
      abb10(6)=spbl4k2**(-1)
      abb10(7)=abb10(1)*gHT
      abb10(7)=abb10(7)**2
      abb10(8)=c1*i_
      abb10(9)=abb10(7)*abb10(8)
      abb10(10)=abb10(9)*es12
      abb10(11)=10.0_ki/3.0_ki*abb10(10)
      abb10(12)=spak2l3*spbl3k2
      abb10(13)=abb10(5)*abb10(6)
      abb10(14)=abb10(12)*abb10(13)
      abb10(15)=spak2l4*spbl4k2
      abb10(16)=abb10(3)*abb10(4)
      abb10(17)=abb10(15)*abb10(16)
      abb10(14)=abb10(14)+abb10(17)
      abb10(17)=mH**2
      abb10(14)=abb10(14)*abb10(17)
      abb10(18)=2.0_ki*abb10(16)+abb10(13)
      abb10(19)=abb10(17)*es12
      abb10(18)=abb10(18)*abb10(19)
      abb10(20)=abb10(2)**2
      abb10(21)=2.0_ki*abb10(20)
      abb10(22)=spak1l3*spbl3k1
      abb10(23)=spbl4k1*spak1l4
      abb10(18)=abb10(18)-abb10(21)-abb10(14)+abb10(23)+2.0_ki*abb10(22)
      abb10(18)=es12*abb10(18)
      abb10(24)=abb10(12)*abb10(23)
      abb10(25)=abb10(15)*abb10(22)
      abb10(24)=abb10(24)+abb10(25)
      abb10(18)=-abb10(24)+abb10(18)
      abb10(25)=2.0_ki*abb10(8)
      abb10(7)=abb10(25)*abb10(7)
      abb10(18)=abb10(7)*abb10(20)*abb10(18)
      abb10(26)=abb10(19)*abb10(16)
      abb10(27)=abb10(22)+abb10(26)
      abb10(27)=es12*abb10(27)*abb10(7)
      abb10(28)=-abb10(16)*abb10(23)
      abb10(29)=abb10(13)*abb10(22)
      abb10(30)=abb10(16)-abb10(13)
      abb10(31)=-abb10(30)*abb10(21)
      abb10(28)=abb10(31)+abb10(28)+abb10(29)
      abb10(28)=abb10(28)*abb10(19)
      abb10(29)=abb10(22)-abb10(23)
      abb10(31)=abb10(29)*abb10(20)
      abb10(28)=abb10(31)+abb10(28)
      abb10(28)=abb10(28)*abb10(7)
      abb10(14)=abb10(14)+4.0_ki*abb10(20)
      abb10(31)=-es12*abb10(14)
      abb10(12)=abb10(15)-abb10(12)
      abb10(15)=-abb10(12)*abb10(20)
      abb10(15)=abb10(31)+abb10(15)-abb10(24)
      abb10(15)=abb10(15)*abb10(7)
      abb10(26)=-8.0_ki*abb10(9)*abb10(26)
      abb10(31)=abb10(19)*abb10(13)
      abb10(31)=abb10(31)+abb10(23)
      abb10(14)=abb10(31)+abb10(14)
      abb10(14)=es12*abb10(14)
      abb10(14)=abb10(14)+abb10(24)
      abb10(14)=abb10(14)*abb10(7)
      abb10(10)=4.0_ki*abb10(10)
      abb10(24)=abb10(30)*abb10(19)
      abb10(24)=2.0_ki*abb10(24)-abb10(29)
      abb10(24)=abb10(24)*abb10(7)
      abb10(12)=abb10(12)+4.0_ki*es12
      abb10(12)=abb10(12)*abb10(7)
      abb10(29)=abb10(7)*spak1k2
      abb10(30)=spbl4k1*abb10(29)*abb10(20)
      abb10(32)=spak1k2*abb10(9)
      abb10(33)=-spbl4k1*abb10(32)
      abb10(34)=abb10(32)*abb10(20)
      abb10(35)=-spbl4k2*abb10(34)
      abb10(36)=abb10(29)*spbl3k1
      abb10(37)=-abb10(20)*abb10(36)
      abb10(32)=spbl3k1*abb10(32)
      abb10(34)=spbl3k2*abb10(34)
      abb10(29)=spbl3k2*abb10(29)
      abb10(38)=gHT**2
      abb10(8)=abb10(8)*abb10(38)
      abb10(39)=abb10(8)*abb10(1)
      abb10(40)=spak1l4*abb10(20)*abb10(39)
      abb10(31)=-abb10(20)-abb10(31)
      abb10(31)=abb10(39)*spak1l3*abb10(31)
      abb10(25)=abb10(25)*abb10(38)*abb10(1)
      abb10(38)=-spak1l3*abb10(25)
      abb10(41)=spak1l4*spbl4k2
      abb10(42)=abb10(16)*abb10(41)
      abb10(43)=spak1l3*spbl3k2
      abb10(44)=-abb10(13)*abb10(43)
      abb10(42)=abb10(42)+abb10(44)
      abb10(42)=abb10(42)*abb10(19)
      abb10(41)=abb10(41)-abb10(43)
      abb10(44)=abb10(41)*abb10(21)
      abb10(42)=abb10(44)+abb10(42)
      abb10(42)=abb10(42)*abb10(39)
      abb10(8)=spak1l3*spak1l4*spbl4l3*abb10(8)
      abb10(8)=abb10(8)+abb10(42)
      abb10(8)=abb10(1)*abb10(8)
      abb10(42)=4.0_ki*abb10(9)
      abb10(42)=-abb10(43)*abb10(42)
      abb10(41)=-abb10(41)*abb10(7)
      abb10(43)=-spak2l4*abb10(20)*abb10(25)
      abb10(44)=spak2l4*abb10(39)
      abb10(13)=abb10(13)*spak2l3
      abb10(45)=abb10(19)*abb10(13)
      abb10(23)=abb10(23)*spak2l3
      abb10(21)=spak2l3*abb10(21)
      abb10(21)=abb10(45)+abb10(23)+abb10(21)
      abb10(21)=abb10(21)*abb10(39)
      abb10(45)=spak2l3*abb10(25)
      abb10(39)=-spak2l3*abb10(39)
      abb10(46)=spbl4k1*spak2l4
      abb10(47)=abb10(22)*abb10(46)
      abb10(48)=-spak2l3*spbl3k1
      abb10(46)=abb10(46)+abb10(48)
      abb10(20)=8.0_ki*abb10(20)
      abb10(46)=abb10(46)*abb10(20)
      abb10(16)=abb10(16)*spak2l4
      abb10(48)=spbl4k1*abb10(16)
      abb10(49)=spbl3k1*abb10(13)
      abb10(48)=abb10(48)+abb10(49)
      abb10(19)=abb10(48)*abb10(19)
      abb10(23)=spbl3k1*abb10(23)
      abb10(19)=abb10(19)+abb10(46)+abb10(23)+abb10(47)
      abb10(9)=abb10(19)*abb10(9)
      abb10(19)=-spak2l3*spbl4k1*abb10(7)
      abb10(23)=-spak2l4*abb10(7)*spbl3k1
      abb10(17)=abb10(25)*abb10(17)
      abb10(16)=-abb10(16)*abb10(17)
      abb10(13)=-abb10(13)*abb10(17)
      abb10(17)=abb10(22)+abb10(20)
      abb10(7)=abb10(17)*abb10(7)
      R2d10=abb10(11)
      rat2 = rat2 + R2d10
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='10' value='", &
          & R2d10, "'/>"
      end if
   end subroutine
end module pb_gg_hh_abbrevd10h0
