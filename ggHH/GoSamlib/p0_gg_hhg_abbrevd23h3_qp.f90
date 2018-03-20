module     p0_gg_hhg_abbrevd23h3_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh3_qp
   implicit none
   private
   complex(ki), dimension(47), public :: abb23
   complex(ki), public :: R2d23
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
      abb23(1)=sqrt2**(-1)
      abb23(2)=es51**(-1)
      abb23(3)=spak1k2**(-1)
      abb23(4)=spak2k5**(-1)
      abb23(5)=sqrt(mT**2)
      abb23(6)=spak2l3**(-1)
      abb23(7)=spbl3k2**(-1)
      abb23(8)=spak2l4**(-1)
      abb23(9)=spbl4k2**(-1)
      abb23(10)=c1-c2
      abb23(11)=gHT**2*i_*spbk5k1
      abb23(12)=abb23(3)*abb23(1)
      abb23(13)=abb23(10)*abb23(11)*abb23(12)*abb23(4)
      abb23(14)=-abb23(2)*abb23(13)
      abb23(15)=abb23(14)*es34
      abb23(16)=abb23(15)+abb23(13)
      abb23(17)=-16.0_ki/3.0_ki*abb23(16)
      abb23(18)=abb23(5)**2
      abb23(19)=abb23(18)*es34
      abb23(20)=abb23(14)*abb23(19)
      abb23(21)=-abb23(13)*abb23(18)
      abb23(20)=abb23(20)-abb23(21)
      abb23(22)=spak2l4*spbl4k2
      abb23(23)=abb23(20)*abb23(22)
      abb23(24)=mH**2
      abb23(25)=abb23(24)*abb23(18)
      abb23(26)=-abb23(25)*abb23(13)
      abb23(27)=abb23(5)**4
      abb23(28)=-abb23(13)*abb23(27)
      abb23(27)=-abb23(27)-abb23(25)
      abb23(27)=abb23(27)*abb23(15)
      abb23(23)=abb23(23)+abb23(27)+abb23(28)+abb23(26)
      abb23(15)=abb23(15)*abb23(25)
      abb23(15)=abb23(15)-abb23(26)
      abb23(25)=abb23(8)*abb23(9)
      abb23(26)=abb23(15)*abb23(25)
      abb23(20)=abb23(20)-abb23(26)
      abb23(20)=spbl3k2*spak2l3*abb23(20)
      abb23(27)=abb23(7)*abb23(6)
      abb23(15)=abb23(15)*abb23(27)
      abb23(28)=-abb23(22)*abb23(15)
      abb23(10)=-abb23(11)*abb23(10)
      abb23(11)=abb23(10)*abb23(4)**2
      abb23(29)=abb23(12)*abb23(11)
      abb23(30)=abb23(29)*abb23(18)
      abb23(12)=abb23(12)*abb23(2)
      abb23(31)=abb23(12)*abb23(11)
      abb23(19)=abb23(31)*abb23(19)
      abb23(19)=abb23(30)-abb23(19)
      abb23(30)=abb23(19)*spal4k5
      abb23(32)=spbl4l3*spak2l3
      abb23(33)=-abb23(32)*abb23(30)
      abb23(12)=-abb23(12)*abb23(10)
      abb23(34)=abb23(18)*spbl4k2
      abb23(35)=abb23(12)*abb23(34)
      abb23(36)=-spbk5l3*abb23(35)
      abb23(37)=abb23(2)*abb23(1)
      abb23(10)=-abb23(4)*abb23(10)*abb23(37)
      abb23(34)=abb23(10)*abb23(34)
      abb23(38)=spbl3k1*abb23(34)
      abb23(36)=abb23(36)+abb23(38)
      abb23(36)=spal3l4*abb23(36)
      abb23(20)=abb23(36)+abb23(33)+abb23(28)+2.0_ki*abb23(23)+abb23(20)
      abb23(20)=4.0_ki*abb23(20)
      abb23(23)=abb23(14)*abb23(18)
      abb23(28)=spbl3k2*spak2l3
      abb23(33)=abb23(28)+2.0_ki*abb23(22)
      abb23(36)=-8.0_ki*abb23(23)*abb23(33)
      abb23(38)=abb23(14)*abb23(24)
      abb23(39)=3.0_ki*abb23(23)+abb23(38)
      abb23(39)=es34*abb23(39)
      abb23(40)=abb23(24)*es34
      abb23(41)=abb23(14)*abb23(40)
      abb23(13)=-abb23(13)*abb23(24)
      abb23(41)=abb23(41)-abb23(13)
      abb23(42)=abb23(41)*abb23(25)
      abb23(43)=abb23(28)*abb23(42)
      abb23(44)=spbk5l4*abb23(23)
      abb23(11)=-abb23(37)*abb23(11)
      abb23(37)=abb23(11)*abb23(18)
      abb23(45)=spbl4k1*abb23(37)
      abb23(44)=abb23(44)+abb23(45)
      abb23(44)=-2.0_ki*abb23(44)
      abb23(44)=spal4k5*abb23(44)
      abb23(45)=-spbk5l3*abb23(23)
      abb23(46)=-spbl3k1*abb23(37)
      abb23(45)=abb23(45)+abb23(46)
      abb23(45)=spal3k5*abb23(45)
      abb23(13)=abb23(45)-abb23(15)+abb23(43)-2.0_ki*abb23(26)+abb23(39)-3.0_ki&
      &*abb23(21)-abb23(13)+abb23(44)
      abb23(13)=8.0_ki*abb23(13)
      abb23(15)=abb23(25)*abb23(24)
      abb23(21)=abb23(15)*abb23(14)
      abb23(25)=-abb23(28)*abb23(21)
      abb23(25)=-abb23(38)+abb23(25)
      abb23(25)=16.0_ki*abb23(25)
      abb23(26)=16.0_ki*abb23(42)
      abb23(38)=-32.0_ki*abb23(21)
      abb23(22)=abb23(22)+abb23(28)
      abb23(39)=4.0_ki*abb23(22)
      abb23(43)=abb23(16)*abb23(39)
      abb23(44)=8.0_ki*abb23(14)
      abb23(22)=-abb23(22)*abb23(44)
      abb23(41)=abb23(41)*abb23(27)
      abb23(45)=abb23(14)*spbk5l4
      abb23(46)=abb23(11)*spbl4k1
      abb23(45)=abb23(45)+abb23(46)
      abb23(46)=-spal4k5*abb23(45)
      abb23(14)=abb23(14)*spbk5l3
      abb23(47)=abb23(11)*spbl3k1
      abb23(14)=abb23(47)+abb23(14)
      abb23(47)=-spal3k5*abb23(14)
      abb23(41)=abb23(47)+abb23(41)+abb23(42)+abb23(16)+abb23(46)
      abb23(41)=8.0_ki*abb23(41)
      abb23(42)=8.0_ki*abb23(16)
      abb23(46)=12.0_ki*spak2l4*abb23(19)
      abb23(29)=abb23(29)*abb23(24)
      abb23(31)=abb23(31)*abb23(40)
      abb23(29)=abb23(29)-abb23(31)
      abb23(27)=-spak2l4*abb23(27)
      abb23(27)=-abb23(9)+abb23(27)
      abb23(27)=abb23(29)*abb23(27)
      abb23(14)=-spal3l4*abb23(14)
      abb23(14)=abb23(14)+abb23(27)
      abb23(14)=8.0_ki*abb23(14)
      abb23(19)=8.0_ki*spak2l3*abb23(19)
      abb23(21)=spbk5l3*abb23(21)
      abb23(27)=abb23(15)*abb23(11)
      abb23(29)=spbl3k1*abb23(27)
      abb23(21)=abb23(21)+abb23(29)
      abb23(21)=spak2l3*abb23(21)
      abb23(29)=abb23(45)*abb23(24)*abb23(9)
      abb23(21)=abb23(29)+abb23(21)
      abb23(21)=8.0_ki*abb23(21)
      abb23(29)=4.0_ki*abb23(37)*abb23(33)
      abb23(28)=abb23(28)*abb23(27)
      abb23(24)=abb23(11)*abb23(24)
      abb23(24)=abb23(24)+abb23(28)
      abb23(24)=8.0_ki*abb23(24)
      abb23(28)=16.0_ki*abb23(27)
      abb23(31)=abb23(11)*abb23(39)
      abb23(33)=-4.0_ki*abb23(35)
      abb23(35)=-abb23(16)*abb23(32)
      abb23(12)=abb23(12)*abb23(18)
      abb23(39)=spbk5l4*abb23(12)
      abb23(10)=abb23(10)*abb23(18)
      abb23(18)=spbl4k1*abb23(10)
      abb23(18)=abb23(39)-abb23(18)
      abb23(18)=abb23(35)-3.0_ki*abb23(18)
      abb23(18)=4.0_ki*abb23(18)
      abb23(35)=abb23(44)*abb23(32)
      abb23(39)=4.0_ki*abb23(11)
      abb23(32)=-abb23(32)*abb23(39)
      abb23(34)=-4.0_ki*abb23(34)
      abb23(11)=8.0_ki*abb23(11)
      abb23(12)=-spbk5l3*abb23(12)
      abb23(10)=spbl3k1*abb23(10)
      abb23(10)=abb23(12)+abb23(10)
      abb23(10)=8.0_ki*abb23(10)
      abb23(12)=-24.0_ki*abb23(23)
      abb23(15)=-abb23(15)*abb23(44)
      abb23(23)=4.0_ki*abb23(30)
      abb23(16)=4.0_ki*abb23(16)
      abb23(30)=24.0_ki*abb23(37)
      abb23(27)=8.0_ki*abb23(27)
      R2d23=abb23(17)
      rat2 = rat2 + R2d23
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='23' value='", &
          & R2d23, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd23h3_qp
