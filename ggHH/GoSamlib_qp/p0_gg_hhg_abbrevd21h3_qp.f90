module p0_gg_hhg_abbrevd21h3_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh3_qp
   implicit none
   private
   complex(ki), dimension(60), public :: abb21
   complex(ki), public :: R2d21
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
      abb21(1)=sqrt2**(-1)
      abb21(2)=es51**(-1)
      abb21(3)=spak1k2**(-1)
      abb21(4)=spak2k5**(-1)
      abb21(5)=sqrt(mT**2)
      abb21(6)=spak2l3**(-1)
      abb21(7)=spbl3k2**(-1)
      abb21(8)=spak2l4**(-1)
      abb21(9)=spbl4k2**(-1)
      abb21(10)=c1-c2
      abb21(11)=gHT**2*i_*spbk5k1
      abb21(12)=abb21(3)*abb21(1)
      abb21(13)=abb21(10)*abb21(11)*abb21(12)*abb21(4)
      abb21(14)=-abb21(2)*abb21(13)
      abb21(15)=abb21(14)*es34
      abb21(15)=abb21(15)+abb21(13)
      abb21(16)=-16.0_ki/3.0_ki*abb21(15)
      abb21(17)=abb21(5)**2
      abb21(18)=abb21(13)*abb21(17)
      abb21(19)=mH**2
      abb21(20)=abb21(19)*spak2l4
      abb21(21)=-abb21(20)*abb21(18)
      abb21(22)=abb21(19)*es34
      abb21(23)=abb21(14)*abb21(22)
      abb21(24)=abb21(17)*spak2l4
      abb21(25)=-abb21(24)*abb21(23)
      abb21(21)=abb21(21)+abb21(25)
      abb21(25)=abb21(6)*abb21(7)
      abb21(21)=abb21(21)*abb21(25)
      abb21(26)=abb21(13)*abb21(24)
      abb21(27)=abb21(14)*spak2l4
      abb21(28)=abb21(17)*es34
      abb21(29)=abb21(28)*abb21(27)
      abb21(21)=abb21(21)+abb21(26)+abb21(29)
      abb21(21)=spbl4k2*abb21(21)
      abb21(26)=abb21(13)*abb21(19)
      abb21(29)=-abb21(26)-abb21(18)
      abb21(29)=abb21(29)*abb21(17)
      abb21(30)=abb21(14)*abb21(19)
      abb21(31)=abb21(14)*abb21(17)
      abb21(32)=-abb21(30)-abb21(31)
      abb21(32)=abb21(32)*abb21(28)
      abb21(29)=abb21(29)+abb21(32)
      abb21(32)=abb21(14)*abb21(28)
      abb21(32)=abb21(32)+abb21(18)
      abb21(33)=2.0_ki*abb21(32)
      abb21(34)=spbl3k2*spak2l3
      abb21(35)=abb21(34)*abb21(33)
      abb21(36)=abb21(23)+abb21(26)
      abb21(37)=abb21(17)*abb21(36)
      abb21(38)=abb21(9)*abb21(8)
      abb21(39)=abb21(38)*spak2l3
      abb21(40)=abb21(39)*spbl3k2
      abb21(41)=-abb21(37)*abb21(40)
      abb21(10)=-abb21(11)*abb21(10)
      abb21(11)=abb21(12)*abb21(2)
      abb21(42)=-abb21(11)*abb21(10)
      abb21(43)=spbk5l4*abb21(42)
      abb21(44)=abb21(2)*abb21(1)
      abb21(45)=-abb21(4)*abb21(10)*abb21(44)
      abb21(46)=spbl4k1*abb21(45)
      abb21(43)=abb21(43)-abb21(46)
      abb21(46)=spal3l4*spbl3k2
      abb21(43)=abb21(46)*abb21(43)
      abb21(47)=abb21(17)*abb21(43)
      abb21(10)=abb21(10)*abb21(4)**2
      abb21(12)=abb21(12)*abb21(10)
      abb21(48)=abb21(12)*abb21(24)
      abb21(11)=abb21(11)*abb21(10)
      abb21(28)=abb21(11)*abb21(28)
      abb21(49)=-spak2l4*abb21(28)
      abb21(48)=abb21(48)+abb21(49)
      abb21(49)=spal3k5*spbl4l3
      abb21(48)=abb21(48)*abb21(49)
      abb21(21)=abb21(48)+abb21(41)+abb21(35)+2.0_ki*abb21(29)+abb21(47)+abb21(&
      &21)
      abb21(21)=4.0_ki*abb21(21)
      abb21(29)=4.0_ki*spbl4k2
      abb21(35)=abb21(14)*abb21(24)*abb21(29)
      abb21(34)=-abb21(15)*abb21(34)
      abb21(33)=-abb21(33)+abb21(34)
      abb21(33)=4.0_ki*abb21(33)
      abb21(34)=abb21(13)*spak2l4
      abb21(41)=es34*spak2l4
      abb21(47)=abb21(14)*abb21(41)
      abb21(34)=abb21(34)+abb21(47)
      abb21(47)=spbl4k2*abb21(34)
      abb21(32)=-4.0_ki*abb21(32)+abb21(47)
      abb21(32)=4.0_ki*abb21(32)
      abb21(47)=2.0_ki*abb21(7)
      abb21(48)=-abb21(37)*abb21(47)
      abb21(13)=abb21(20)*abb21(13)
      abb21(23)=abb21(23)*spak2l4
      abb21(13)=abb21(13)+abb21(23)
      abb21(23)=spbl4k2*abb21(7)*abb21(13)
      abb21(23)=abb21(48)+abb21(23)
      abb21(23)=abb21(6)*abb21(23)
      abb21(48)=abb21(30)+3.0_ki*abb21(31)
      abb21(48)=es34*abb21(48)
      abb21(37)=-abb21(37)*abb21(38)
      abb21(18)=abb21(37)+abb21(23)+abb21(48)+abb21(26)+3.0_ki*abb21(18)
      abb21(23)=abb21(12)*spak2l4
      abb21(26)=abb21(11)*abb21(41)
      abb21(23)=abb21(23)-abb21(26)
      abb21(26)=abb21(23)*abb21(49)
      abb21(37)=spbk5l4*abb21(31)
      abb21(10)=-abb21(44)*abb21(10)
      abb21(41)=abb21(10)*spbl4k1
      abb21(44)=abb21(17)*abb21(41)
      abb21(37)=abb21(37)+abb21(44)
      abb21(37)=spal4k5*abb21(37)
      abb21(18)=-abb21(26)+2.0_ki*abb21(18)+abb21(37)
      abb21(18)=4.0_ki*abb21(18)
      abb21(37)=16.0_ki*abb21(15)
      abb21(44)=16.0_ki*abb21(25)
      abb21(48)=abb21(36)*abb21(44)
      abb21(13)=abb21(13)*abb21(25)
      abb21(13)=abb21(13)+abb21(34)
      abb21(13)=spbl4k2*abb21(13)
      abb21(34)=abb21(40)+2.0_ki
      abb21(34)=abb21(36)*abb21(34)
      abb21(13)=-abb21(26)+abb21(34)+abb21(13)-abb21(43)
      abb21(13)=4.0_ki*abb21(13)
      abb21(26)=-abb21(27)*abb21(29)
      abb21(29)=8.0_ki*abb21(15)
      abb21(34)=abb21(38)+2.0_ki*abb21(25)
      abb21(34)=abb21(36)*abb21(34)
      abb21(34)=abb21(15)+abb21(34)
      abb21(36)=abb21(14)*spbk5l4
      abb21(36)=abb21(36)+abb21(41)
      abb21(38)=-spal4k5*abb21(36)
      abb21(34)=2.0_ki*abb21(34)+abb21(38)
      abb21(34)=4.0_ki*abb21(34)
      abb21(38)=spbk5l3*abb21(31)
      abb21(41)=abb21(10)*spbl3k1
      abb21(43)=abb21(17)*abb21(41)
      abb21(38)=abb21(38)+abb21(43)
      abb21(23)=-spbl4l3*abb21(23)
      abb21(23)=abb21(23)+8.0_ki*abb21(38)
      abb21(23)=spak2l3*abb21(23)
      abb21(38)=6.0_ki*abb21(36)
      abb21(38)=abb21(24)*abb21(38)
      abb21(23)=abb21(23)+abb21(38)
      abb21(23)=2.0_ki*abb21(23)
      abb21(38)=abb21(14)*spbk5l3
      abb21(38)=abb21(38)+abb21(41)
      abb21(41)=-8.0_ki*spak2l3*abb21(38)
      abb21(43)=abb21(36)*spak2l4
      abb21(49)=8.0_ki*abb21(43)
      abb21(50)=spbk5l3*abb21(30)
      abb21(51)=abb21(10)*abb21(19)
      abb21(52)=spbl3k1*abb21(51)
      abb21(50)=abb21(52)+abb21(50)
      abb21(52)=abb21(47)-abb21(39)
      abb21(50)=abb21(52)*abb21(50)
      abb21(52)=abb21(25)*abb21(20)
      abb21(53)=abb21(52)*abb21(36)
      abb21(50)=3.0_ki*abb21(53)+abb21(50)
      abb21(50)=4.0_ki*abb21(50)
      abb21(43)=4.0_ki*abb21(43)
      abb21(53)=2.0_ki*spbl4k2
      abb21(54)=abb21(53)*abb21(10)
      abb21(24)=-abb21(24)*abb21(54)
      abb21(54)=spak2l4*abb21(54)
      abb21(42)=abb21(42)*abb21(53)
      abb21(55)=abb21(17)*abb21(42)
      abb21(56)=2.0_ki*spbl4l3
      abb21(57)=spak2l3*abb21(14)*abb21(56)
      abb21(45)=abb21(45)*abb21(53)
      abb21(53)=abb21(17)*abb21(45)
      abb21(58)=2.0_ki*abb21(10)
      abb21(58)=abb21(58)*spbl4l3
      abb21(59)=-spak2l3*abb21(58)
      abb21(27)=-abb21(27)*abb21(56)
      abb21(56)=spak2l4*abb21(58)
      abb21(31)=-abb21(30)-6.0_ki*abb21(31)
      abb21(52)=abb21(52)*spbl4k2
      abb21(58)=-abb21(14)*abb21(52)
      abb21(60)=-abb21(30)*abb21(40)
      abb21(31)=abb21(60)+2.0_ki*abb21(31)+abb21(58)
      abb21(31)=2.0_ki*abb21(31)
      abb21(58)=-16.0_ki*abb21(14)
      abb21(30)=-abb21(30)*abb21(44)
      abb21(14)=-8.0_ki*abb21(14)
      abb21(15)=-abb21(15)*abb21(46)
      abb21(46)=-abb21(12)*abb21(17)
      abb21(28)=abb21(46)+abb21(28)
      abb21(28)=spal4k5*abb21(28)
      abb21(15)=abb21(15)+abb21(28)
      abb21(15)=2.0_ki*abb21(15)
      abb21(28)=-es34*abb21(11)
      abb21(28)=abb21(28)+abb21(12)
      abb21(28)=2.0_ki*spal4k5*abb21(28)
      abb21(38)=-spal3l4*abb21(38)
      abb21(20)=-abb21(12)*abb21(20)
      abb21(11)=abb21(11)*abb21(22)
      abb21(22)=spak2l4*abb21(11)
      abb21(20)=abb21(20)+abb21(22)
      abb21(20)=abb21(20)*abb21(25)
      abb21(20)=abb21(20)+abb21(38)
      abb21(20)=2.0_ki*abb21(20)
      abb21(12)=abb21(12)*abb21(19)
      abb21(11)=abb21(12)-abb21(11)
      abb21(12)=-abb21(47)-abb21(39)
      abb21(11)=abb21(11)*abb21(12)
      abb21(12)=spal3l4*abb21(36)
      abb21(11)=abb21(12)+abb21(11)
      abb21(11)=2.0_ki*abb21(11)
      abb21(12)=abb21(10)*abb21(17)
      abb21(12)=abb21(51)+6.0_ki*abb21(12)
      abb21(17)=abb21(10)*abb21(52)
      abb21(19)=abb21(51)*abb21(40)
      abb21(12)=abb21(19)+2.0_ki*abb21(12)+abb21(17)
      abb21(12)=2.0_ki*abb21(12)
      abb21(17)=16.0_ki*abb21(10)
      abb21(19)=abb21(51)*abb21(44)
      abb21(10)=8.0_ki*abb21(10)
      R2d21=abb21(16)
      rat2 = rat2 + R2d21
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='21' value='", &
          & R2d21, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd21h3_qp
