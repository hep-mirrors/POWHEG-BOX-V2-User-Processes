module p1_dg_hhd_abbrevd8h2_qp
   use p1_dg_hhd_config_qp, only: ki
   use p1_dg_hhd_globalsh2_qp
   implicit none
   private
   complex(ki), dimension(46), public :: abb8
   complex(ki), public :: R2d8
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dg_hhd_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_color_qp, only: TR
      use p1_dg_hhd_globalsl1_qp, only: epspow
      implicit none
      abb8(1)=sqrt2**(-1)
      abb8(2)=es51**(-1)
      abb8(3)=spbk2k1**(-1)
      abb8(4)=sqrt(mT**2)
      abb8(5)=spak2l3**(-1)
      abb8(6)=spbl3k2**(-1)
      abb8(7)=spbl4k2**(-1)
      abb8(8)=spak2l4**(-1)
      abb8(9)=spak1k2*spbk5k1
      abb8(10)=abb8(1)*abb8(2)*c1*TR*i_*gHT**2
      abb8(11)=abb8(10)*abb8(3)
      abb8(12)=abb8(9)*abb8(11)
      abb8(13)=-16.0_ki/3.0_ki*abb8(12)
      abb8(14)=es12*spbk5l4
      abb8(15)=abb8(14)*spak2l4
      abb8(16)=spak2l4*spbl4l3
      abb8(17)=abb8(16)*spak1l3
      abb8(18)=abb8(17)*spbk5k1
      abb8(19)=spbk5l3*spak2l3
      abb8(20)=abb8(19)*es12
      abb8(21)=-abb8(18)-2.0_ki*abb8(15)-abb8(20)
      abb8(22)=abb8(4)**2
      abb8(21)=abb8(21)*abb8(22)
      abb8(23)=abb8(20)*abb8(8)
      abb8(24)=abb8(23)+abb8(14)
      abb8(24)=abb8(24)*abb8(7)
      abb8(25)=abb8(22)*abb8(24)
      abb8(26)=abb8(5)*abb8(6)
      abb8(27)=abb8(26)*spak2l4
      abb8(28)=abb8(27)*spbl4k2
      abb8(28)=abb8(28)+1.0_ki
      abb8(29)=abb8(28)*spbk5k1
      abb8(30)=abb8(7)+abb8(27)
      abb8(30)=abb8(30)*spbk5k2*spbl4k1
      abb8(29)=abb8(29)+abb8(30)
      abb8(30)=abb8(22)*spak1k2
      abb8(31)=-abb8(29)*abb8(30)
      abb8(25)=abb8(25)+abb8(31)
      abb8(31)=mH**2
      abb8(25)=abb8(25)*abb8(31)
      abb8(32)=abb8(22)*spbk5k1
      abb8(33)=2.0_ki*abb8(32)
      abb8(34)=spbk5l3*spal3l4
      abb8(35)=abb8(34)*spbl4k1
      abb8(36)=-abb8(35)-abb8(33)
      abb8(36)=abb8(36)*abb8(30)
      abb8(21)=abb8(25)+abb8(21)+abb8(36)
      abb8(25)=4.0_ki*abb8(11)
      abb8(21)=abb8(21)*abb8(25)
      abb8(36)=abb8(22)*abb8(9)
      abb8(36)=-abb8(20)-4.0_ki*abb8(36)
      abb8(36)=abb8(36)*abb8(25)
      abb8(37)=2.0_ki*abb8(22)
      abb8(38)=-abb8(9)*abb8(37)
      abb8(15)=abb8(15)+abb8(38)
      abb8(15)=abb8(15)*abb8(25)
      abb8(38)=abb8(7)*abb8(8)
      abb8(39)=abb8(26)+2.0_ki*abb8(38)
      abb8(33)=-abb8(39)*abb8(33)
      abb8(33)=abb8(33)+abb8(29)
      abb8(33)=spak1k2*abb8(33)
      abb8(40)=abb8(27)*abb8(14)
      abb8(14)=-abb8(14)-2.0_ki*abb8(23)
      abb8(14)=abb8(7)*abb8(14)
      abb8(14)=abb8(33)+abb8(40)+abb8(14)
      abb8(14)=abb8(14)*abb8(31)
      abb8(23)=abb8(35)+6.0_ki*abb8(32)
      abb8(23)=spak1k2*abb8(23)
      abb8(14)=abb8(14)+abb8(18)+abb8(23)
      abb8(14)=abb8(14)*abb8(25)
      abb8(12)=16.0_ki*abb8(12)
      abb8(23)=abb8(38)*abb8(31)
      abb8(33)=abb8(12)*abb8(23)
      abb8(40)=abb8(25)*abb8(19)
      abb8(41)=abb8(22)*abb8(40)
      abb8(29)=spak1k2*abb8(29)
      abb8(24)=-abb8(24)+abb8(29)
      abb8(24)=abb8(24)*abb8(31)
      abb8(29)=spak1k2*abb8(35)
      abb8(18)=abb8(24)+abb8(29)-abb8(20)+abb8(18)
      abb8(18)=abb8(18)*abb8(25)
      abb8(20)=8.0_ki*abb8(11)
      abb8(9)=abb8(20)*abb8(9)
      abb8(24)=abb8(39)*abb8(31)
      abb8(24)=1.0_ki+abb8(24)
      abb8(24)=abb8(24)*abb8(9)
      abb8(29)=2.0_ki*abb8(3)
      abb8(29)=abb8(29)*abb8(10)
      abb8(16)=es12*abb8(16)
      abb8(30)=spbl3k1*abb8(30)
      abb8(16)=abb8(16)+abb8(30)
      abb8(16)=abb8(16)*abb8(29)
      abb8(30)=abb8(29)*spbl3k1
      abb8(35)=-spak1k2*abb8(30)
      abb8(39)=-abb8(3)*spak1l3*spbl3k1*abb8(22)
      abb8(39)=-abb8(17)+abb8(39)
      abb8(10)=2.0_ki*abb8(39)*abb8(10)
      abb8(30)=spak1l3*abb8(30)
      abb8(39)=spbk5l4*spak1l4
      abb8(42)=spbk5l3*spak1l3
      abb8(43)=-4.0_ki*abb8(39)-3.0_ki*abb8(42)
      abb8(37)=abb8(43)*abb8(37)
      abb8(43)=-spbl4k2*abb8(34)
      abb8(44)=spbk5k2*abb8(22)
      abb8(43)=abb8(43)-6.0_ki*abb8(44)
      abb8(43)=spak1k2*abb8(43)
      abb8(44)=abb8(38)*spbk5k2
      abb8(45)=abb8(26)*spbk5k2
      abb8(46)=-3.0_ki*abb8(45)-4.0_ki*abb8(44)
      abb8(46)=abb8(46)*abb8(22)
      abb8(28)=-spbk5k2*abb8(28)
      abb8(28)=abb8(28)+abb8(46)
      abb8(46)=abb8(31)*spak1k2
      abb8(28)=abb8(28)*abb8(46)
      abb8(17)=-spbk5k2*abb8(17)
      abb8(17)=2.0_ki*abb8(28)+abb8(43)+abb8(17)+abb8(37)
      abb8(17)=abb8(17)*abb8(29)
      abb8(28)=abb8(45)*abb8(46)
      abb8(37)=spak1k2*spbk5k2
      abb8(28)=abb8(42)+abb8(37)+abb8(28)
      abb8(37)=-abb8(28)*abb8(20)
      abb8(43)=abb8(46)*abb8(44)
      abb8(43)=abb8(39)+abb8(43)
      abb8(43)=abb8(43)*abb8(20)
      abb8(39)=abb8(26)*abb8(39)
      abb8(42)=-abb8(38)*abb8(42)
      abb8(45)=-spak1k2*abb8(44)
      abb8(39)=abb8(45)+abb8(39)+abb8(42)
      abb8(39)=abb8(39)*abb8(31)*abb8(20)
      abb8(25)=-abb8(28)*abb8(25)
      abb8(26)=abb8(26)*spbl4k2
      abb8(26)=abb8(26)+2.0_ki*abb8(8)
      abb8(28)=-abb8(26)*abb8(46)
      abb8(42)=spak1l3*spbl4l3
      abb8(28)=-abb8(42)+abb8(28)
      abb8(28)=abb8(28)*abb8(29)
      abb8(38)=abb8(38)*spbl3k2
      abb8(42)=-abb8(46)*abb8(38)
      abb8(45)=spbl4l3*spak1l4
      abb8(42)=abb8(45)+abb8(42)
      abb8(42)=abb8(42)*abb8(29)
      abb8(45)=abb8(29)*abb8(31)
      abb8(26)=spak1l4*abb8(26)
      abb8(38)=spak1l3*abb8(38)
      abb8(26)=abb8(38)+abb8(26)
      abb8(26)=abb8(26)*abb8(45)
      abb8(22)=24.0_ki*abb8(22)*abb8(11)
      abb8(11)=16.0_ki*abb8(11)
      abb8(23)=abb8(23)*abb8(11)
      abb8(38)=abb8(27)+2.0_ki*abb8(7)
      abb8(38)=abb8(31)*spbk5k2*abb8(38)
      abb8(34)=abb8(34)+abb8(38)
      abb8(34)=abb8(34)*abb8(29)
      abb8(38)=abb8(29)*spak2l3
      abb8(32)=-abb8(32)*abb8(38)
      abb8(38)=spbk5k1*abb8(38)
      abb8(31)=spak2l3*abb8(31)*abb8(44)
      abb8(44)=-spbk5l4*spal3l4
      abb8(31)=abb8(44)+abb8(31)
      abb8(29)=abb8(31)*abb8(29)
      abb8(27)=-spbk5l4*abb8(27)
      abb8(19)=-abb8(8)*abb8(19)
      abb8(19)=-2.0_ki*spbk5l4+abb8(19)
      abb8(19)=abb8(7)*abb8(19)
      abb8(19)=abb8(27)+abb8(19)
      abb8(19)=abb8(19)*abb8(45)
      R2d8=abb8(13)
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd8h2_qp
