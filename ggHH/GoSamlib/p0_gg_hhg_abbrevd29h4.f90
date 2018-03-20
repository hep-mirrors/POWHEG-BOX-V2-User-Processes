module     p0_gg_hhg_abbrevd29h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh4
   implicit none
   private
   complex(ki), dimension(62), public :: abb29
   complex(ki), public :: R2d29
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb29(1)=1.0_ki/(es34-es51-es12)
      abb29(2)=sqrt2**(-1)
      abb29(3)=spbk2k1**(-1)
      abb29(4)=spbk5k2**(-1)
      abb29(5)=sqrt(mT**2)
      abb29(6)=spak2l3**(-1)
      abb29(7)=spbl3k2**(-1)
      abb29(8)=spak2l4**(-1)
      abb29(9)=spbl4k2**(-1)
      abb29(10)=c1-c2
      abb29(11)=i_*abb29(2)
      abb29(12)=abb29(10)*abb29(11)*abb29(3)*abb29(1)
      abb29(13)=abb29(4)*gHT**2
      abb29(14)=abb29(13)*abb29(12)
      abb29(15)=es51-es34
      abb29(16)=abb29(15)+es12
      abb29(17)=-8.0_ki/3.0_ki*spak1k5*abb29(14)*abb29(16)
      abb29(18)=mH**2
      abb29(19)=abb29(5)**2
      abb29(20)=abb29(18)*abb29(19)
      abb29(21)=abb29(20)*es12
      abb29(22)=gHT*abb29(4)
      abb29(22)=abb29(22)**2
      abb29(12)=-abb29(22)*abb29(12)
      abb29(23)=abb29(21)*abb29(12)
      abb29(24)=abb29(20)*es34
      abb29(25)=abb29(24)*abb29(12)
      abb29(26)=abb29(23)-abb29(25)
      abb29(27)=abb29(20)*es51
      abb29(28)=abb29(27)*abb29(12)
      abb29(26)=abb29(28)+2.0_ki*abb29(26)
      abb29(26)=abb29(26)*es51
      abb29(23)=-abb29(25)+2.0_ki*abb29(23)
      abb29(23)=abb29(23)*es34
      abb29(25)=es12**2
      abb29(28)=abb29(25)*abb29(12)
      abb29(29)=abb29(28)*abb29(20)
      abb29(23)=-abb29(26)+abb29(23)-abb29(29)
      abb29(26)=-abb29(8)*abb29(23)
      abb29(29)=abb29(15)*abb29(12)
      abb29(30)=abb29(19)*es12
      abb29(31)=-abb29(29)*abb29(30)
      abb29(32)=abb29(28)*abb29(19)
      abb29(31)=abb29(31)-abb29(32)
      abb29(33)=2.0_ki*spbl4k2
      abb29(33)=-abb29(31)*abb29(33)
      abb29(34)=abb29(19)*abb29(15)
      abb29(35)=abb29(34)+abb29(30)
      abb29(36)=abb29(14)*abb29(35)
      abb29(37)=abb29(36)*spal3k5
      abb29(38)=-spbl4l3*abb29(37)
      abb29(26)=abb29(38)+abb29(26)+abb29(33)
      abb29(26)=spak1l4*abb29(26)
      abb29(33)=spak1l4*spbl4k2
      abb29(38)=-abb29(23)*abb29(33)
      abb29(21)=abb29(21)*abb29(14)
      abb29(39)=abb29(15)*abb29(21)
      abb29(25)=abb29(25)*abb29(14)
      abb29(40)=abb29(25)*abb29(20)
      abb29(39)=abb29(39)+abb29(40)
      abb29(40)=spak1k5*abb29(39)
      abb29(38)=abb29(40)+abb29(38)
      abb29(40)=abb29(7)*abb29(6)
      abb29(38)=abb29(38)*abb29(40)
      abb29(41)=abb29(9)*abb29(8)
      abb29(39)=abb29(39)*abb29(41)
      abb29(10)=-abb29(1)*abb29(11)*abb29(10)
      abb29(11)=-abb29(22)*abb29(10)
      abb29(22)=abb29(35)*abb29(11)
      abb29(35)=spbk5l4*spak1l4
      abb29(42)=abb29(22)*abb29(35)
      abb29(39)=abb29(42)+abb29(39)
      abb29(42)=2.0_ki*spak1k5
      abb29(39)=abb29(42)*abb29(39)
      abb29(24)=abb29(24)-abb29(27)
      abb29(24)=abb29(14)*abb29(24)
      abb29(24)=abb29(24)-abb29(21)
      abb29(27)=spal3k5*spbl3k2
      abb29(43)=-abb29(41)*abb29(27)
      abb29(44)=spal4k5*abb29(8)
      abb29(43)=-abb29(44)+abb29(43)
      abb29(43)=spak1k2*abb29(43)
      abb29(45)=abb29(40)*spak2l4
      abb29(46)=abb29(45)*spak1k5
      abb29(47)=spbl4k2*abb29(46)
      abb29(43)=abb29(47)+abb29(43)
      abb29(43)=abb29(24)*abb29(43)
      abb29(20)=abb29(14)*abb29(20)
      abb29(47)=abb29(14)*abb29(5)**4
      abb29(47)=2.0_ki*abb29(47)
      abb29(20)=abb29(47)+abb29(20)
      abb29(20)=-abb29(20)*abb29(15)
      abb29(47)=-es12*abb29(47)
      abb29(20)=abb29(47)-abb29(21)+abb29(20)
      abb29(20)=spak1k5*abb29(20)
      abb29(21)=-spbl3k2*abb29(31)
      abb29(31)=spbk5l3*spak1k5
      abb29(47)=abb29(22)*abb29(31)
      abb29(21)=abb29(21)+abb29(47)
      abb29(21)=spak1l3*abb29(21)
      abb29(34)=-abb29(12)*abb29(34)
      abb29(30)=abb29(12)*abb29(30)
      abb29(34)=abb29(34)-abb29(30)
      abb29(47)=abb29(34)*spbl4k2
      abb29(48)=spak1k2*spbl3k2
      abb29(48)=-abb29(31)+abb29(48)
      abb29(48)=spal3l4*abb29(47)*abb29(48)
      abb29(20)=abb29(48)+abb29(21)+abb29(38)+abb29(20)+abb29(43)+abb29(39)+abb&
      &29(26)
      abb29(20)=2.0_ki*abb29(20)
      abb29(21)=3.0_ki*spak1k5
      abb29(26)=abb29(41)*abb29(21)
      abb29(38)=abb29(40)*abb29(42)
      abb29(26)=abb29(38)+abb29(26)
      abb29(26)=abb29(24)*abb29(26)
      abb29(38)=2.0_ki*abb29(47)
      abb29(39)=-spak1l4*abb29(38)
      abb29(43)=abb29(34)*spbl3k2
      abb29(48)=-spak1l3*abb29(43)
      abb29(26)=abb29(48)+abb29(39)+abb29(26)
      abb29(26)=4.0_ki*abb29(26)
      abb29(39)=abb29(18)*es12
      abb29(48)=abb29(14)*abb29(39)
      abb29(49)=abb29(15)*abb29(48)
      abb29(25)=abb29(25)*abb29(18)
      abb29(25)=abb29(49)+abb29(25)
      abb29(49)=abb29(40)+abb29(41)
      abb29(25)=abb29(25)*abb29(49)
      abb29(16)=abb29(11)*abb29(16)
      abb29(50)=abb29(16)*abb29(35)
      abb29(25)=abb29(50)-6.0_ki*abb29(36)+abb29(25)
      abb29(25)=spak1k5*abb29(25)
      abb29(50)=abb29(12)*es12
      abb29(51)=-abb29(50)*abb29(15)
      abb29(51)=abb29(51)-abb29(28)
      abb29(33)=-abb29(51)*abb29(33)
      abb29(52)=abb29(51)*spbl3k2
      abb29(53)=abb29(16)*abb29(31)
      abb29(52)=abb29(52)-abb29(53)
      abb29(53)=-spak1l3*abb29(52)
      abb29(25)=abb29(53)+abb29(33)+abb29(25)
      abb29(25)=2.0_ki*abb29(25)
      abb29(33)=-abb29(29)-abb29(50)
      abb29(50)=abb29(33)*spbl4k2
      abb29(53)=-spak1l4*abb29(50)
      abb29(54)=abb29(33)*spbl3k2
      abb29(55)=-spak1l3*abb29(54)
      abb29(53)=abb29(53)+abb29(55)
      abb29(53)=4.0_ki*abb29(53)
      abb29(55)=-2.0_ki*abb29(36)*spak1l4
      abb29(49)=abb29(49)*spak1k2
      abb29(24)=-abb29(24)*abb29(49)
      abb29(56)=spak1l3*spbk5l3
      abb29(57)=abb29(34)*abb29(56)
      abb29(58)=2.0_ki*abb29(34)
      abb29(58)=abb29(58)*abb29(35)
      abb29(24)=abb29(58)+abb29(24)+abb29(57)
      abb29(24)=2.0_ki*abb29(24)
      abb29(35)=abb29(35)+abb29(56)
      abb29(35)=abb29(33)*abb29(35)
      abb29(56)=abb29(18)*abb29(15)
      abb29(14)=-abb29(14)*abb29(56)
      abb29(14)=abb29(14)-abb29(48)
      abb29(48)=-abb29(14)*abb29(49)
      abb29(35)=abb29(48)+abb29(35)
      abb29(35)=2.0_ki*abb29(35)
      abb29(47)=-abb29(47)*abb29(42)
      abb29(48)=spak1k2*abb29(38)
      abb29(49)=-spbk5l4*abb29(34)*abb29(21)
      abb29(48)=abb29(48)+abb29(49)
      abb29(48)=2.0_ki*abb29(48)
      abb29(49)=-abb29(34)*abb29(31)
      abb29(57)=spak1k2*abb29(43)
      abb29(49)=abb29(49)+abb29(57)
      abb29(49)=4.0_ki*abb29(49)
      abb29(21)=-abb29(22)*abb29(21)
      abb29(22)=spal3k5*abb29(43)
      abb29(43)=spal4k5*abb29(38)
      abb29(21)=abb29(43)+abb29(21)+abb29(22)
      abb29(21)=2.0_ki*abb29(21)
      abb29(22)=-abb29(12)*abb29(56)
      abb29(12)=abb29(12)*abb29(39)
      abb29(22)=abb29(22)-abb29(12)
      abb29(43)=abb29(22)*abb29(41)
      abb29(27)=abb29(43)*abb29(27)
      abb29(44)=abb29(22)*abb29(44)
      abb29(27)=abb29(27)+abb29(44)
      abb29(27)=4.0_ki*abb29(27)
      abb29(44)=spal3k5*abb29(54)
      abb29(57)=spal4k5*abb29(50)
      abb29(58)=-spak1k5*abb29(16)
      abb29(44)=abb29(57)+abb29(58)+abb29(44)
      abb29(44)=2.0_ki*abb29(44)
      abb29(57)=-12.0_ki*abb29(34)
      abb29(58)=-4.0_ki*abb29(43)
      abb29(59)=4.0_ki*abb29(33)
      abb29(60)=-spbl4l3*spal3k5*abb29(33)
      abb29(61)=-spbl4k2*abb29(40)
      abb29(61)=-abb29(8)+abb29(61)
      abb29(61)=spak2k5*abb29(22)*abb29(61)
      abb29(60)=abb29(60)+abb29(61)
      abb29(60)=2.0_ki*abb29(60)
      abb29(61)=2.0_ki*abb29(33)
      abb29(62)=abb29(9)*spak1k5
      abb29(46)=-abb29(46)-abb29(62)
      abb29(56)=abb29(56)+abb29(39)
      abb29(10)=-abb29(46)*abb29(56)*abb29(13)*abb29(10)
      abb29(13)=spal3l4*abb29(52)
      abb29(36)=spal4k5*abb29(36)
      abb29(10)=-3.0_ki*abb29(36)+abb29(13)+abb29(10)
      abb29(10)=2.0_ki*abb29(10)
      abb29(13)=4.0_ki*spal3l4*abb29(54)
      abb29(36)=abb29(45)+abb29(9)
      abb29(14)=abb29(14)*abb29(36)
      abb29(36)=-spal3l4*spbk5l3*abb29(33)
      abb29(14)=abb29(36)+abb29(14)
      abb29(14)=2.0_ki*abb29(14)
      abb29(16)=-abb29(16)*abb29(42)
      abb29(36)=-2.0_ki*abb29(51)
      abb29(37)=-4.0_ki*abb29(37)
      abb29(40)=-2.0_ki*abb29(40)-3.0_ki*abb29(41)
      abb29(23)=abb29(23)*abb29(40)
      abb29(39)=-abb29(29)*abb29(39)
      abb29(28)=abb29(28)*abb29(18)
      abb29(39)=abb29(39)-abb29(28)
      abb29(39)=abb29(39)*abb29(41)
      abb29(34)=-abb29(39)-abb29(34)
      abb29(34)=spbl3k2*abb29(34)
      abb29(11)=abb29(56)*abb29(11)
      abb29(40)=abb29(11)*abb29(41)
      abb29(31)=abb29(31)*abb29(40)
      abb29(31)=abb29(34)+abb29(31)
      abb29(31)=spak2l3*abb29(31)
      abb29(12)=abb29(12)+3.0_ki*abb29(30)
      abb29(15)=abb29(12)*abb29(15)
      abb29(30)=spbk5l4*abb29(9)
      abb29(11)=spak1k5*abb29(11)*abb29(30)
      abb29(34)=-spak2l4*abb29(38)
      abb29(11)=abb29(34)+abb29(31)+abb29(11)+3.0_ki*abb29(32)+abb29(28)+abb29(&
      &15)+abb29(23)
      abb29(11)=2.0_ki*abb29(11)
      abb29(15)=abb29(18)+3.0_ki*abb29(19)
      abb29(15)=abb29(15)*abb29(29)
      abb29(18)=abb29(43)*spak2l3
      abb29(19)=spbl3k2*abb29(18)
      abb29(12)=-abb29(19)+abb29(12)+abb29(15)
      abb29(12)=-abb29(39)+2.0_ki*abb29(12)
      abb29(12)=4.0_ki*abb29(12)
      abb29(15)=-16.0_ki*abb29(43)
      abb29(19)=-spak2l3*abb29(54)
      abb29(23)=-spak2l4*abb29(50)
      abb29(19)=abb29(23)+abb29(19)-abb29(51)
      abb29(19)=2.0_ki*abb29(19)
      abb29(23)=-8.0_ki*abb29(33)
      abb29(22)=abb29(22)*abb29(30)
      abb29(18)=spbk5l3*abb29(18)
      abb29(18)=abb29(22)+abb29(18)
      abb29(18)=2.0_ki*abb29(18)
      abb29(22)=spbl4l3*spak2l3*abb29(61)
      abb29(28)=-abb29(42)*abb29(40)
      abb29(29)=-2.0_ki*abb29(43)
      R2d29=abb29(17)
      rat2 = rat2 + R2d29
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='29' value='", &
          & R2d29, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd29h4
