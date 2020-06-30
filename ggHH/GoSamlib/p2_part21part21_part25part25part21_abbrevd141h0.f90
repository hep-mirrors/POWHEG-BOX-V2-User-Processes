module     p2_part21part21_part25part25part21_abbrevd141h0
   use p2_part21part21_part25part25part21_config, only: ki
   use p2_part21part21_part25part25part21_kinematics, only: epstensor
   use p2_part21part21_part25part25part21_globalsh0
   implicit none
   private
   complex(ki), dimension(54), public :: abb141
   complex(ki), public :: R2d141
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p2_part21part21_part25part25part21_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p2_part21part21_part25part25part21_kinematics
      use p2_part21part21_part25part25part21_model
      use p2_part21part21_part25part25part21_color, only: TR
      use p2_part21part21_part25part25part21_globalsl1, only: epspow
      implicit none
      abb141(1)=1.0_ki/(es34-es51-es12)
      abb141(2)=sqrt(mdlMT**2)
      abb141(3)=spak2l3**(-1)
      abb141(4)=spbl3k2**(-1)
      abb141(5)=spak2l4**(-1)
      abb141(6)=spbl4k2**(-1)
      abb141(7)=spbe5e2*abb141(1)*mdlGC6*spae2e5*i_
      abb141(8)=mdlGC45*mdlGC7
      abb141(8)=abb141(8)**2
      abb141(9)=abb141(7)*abb141(8)
      abb141(10)=c2-c1
      abb141(11)=abb141(10)*abb141(9)
      abb141(12)=spbk5e1*spae1k5
      abb141(13)=2.0_ki/3.0_ki*abb141(12)*abb141(11)
      abb141(14)=spbl3k2*spal3k5
      abb141(15)=spae1k2*spbk5e1
      abb141(16)=abb141(14)*abb141(15)
      abb141(17)=spak2l3*spbk5l3
      abb141(18)=spbk2e1*spae1k5
      abb141(19)=abb141(17)*abb141(18)
      abb141(16)=abb141(16)+abb141(19)
      abb141(19)=spbk5k2*spae1k2
      abb141(20)=spbk1e1*spak1k5
      abb141(21)=abb141(19)*abb141(20)
      abb141(22)=spak2k5*spbk2e1
      abb141(23)=spae1k1*spbk5k1
      abb141(24)=abb141(22)*abb141(23)
      abb141(21)=abb141(21)+abb141(24)
      abb141(16)=-abb141(21)+1.0_ki/2.0_ki*abb141(16)
      abb141(16)=abb141(16)*abb141(6)
      abb141(24)=spbk5e1*spae1l4
      abb141(25)=abb141(24)*spak2k5
      abb141(26)=abb141(15)*spal4k5
      abb141(25)=abb141(25)-abb141(26)
      abb141(16)=abb141(16)-1.0_ki/2.0_ki*abb141(25)
      abb141(16)=abb141(16)*abb141(5)
      abb141(25)=spbk5k2*spae1k5
      abb141(26)=spbl4e1*spak2l4
      abb141(27)=abb141(25)*abb141(26)
      abb141(28)=spak2k5*spbk5e1
      abb141(29)=spae1l4*spbl4k2
      abb141(30)=abb141(28)*abb141(29)
      abb141(27)=abb141(27)+abb141(30)
      abb141(30)=abb141(3)*abb141(4)
      abb141(27)=abb141(27)*abb141(30)
      abb141(31)=abb141(30)*abb141(21)
      abb141(32)=abb141(25)*spbl4e1
      abb141(33)=abb141(18)*spbk5l4
      abb141(32)=abb141(32)-abb141(33)
      abb141(32)=abb141(32)*abb141(6)
      abb141(27)=abb141(31)+abb141(32)+abb141(27)
      abb141(16)=abb141(16)-1.0_ki/2.0_ki*abb141(27)
      abb141(27)=mdlMh**2
      abb141(16)=abb141(16)*abb141(27)
      abb141(32)=spal3k5*spbl4l3
      abb141(33)=abb141(32)*abb141(24)
      abb141(34)=spae1k5*spbl4e1
      abb141(35)=spbk5l3*spal3l4
      abb141(36)=abb141(34)*abb141(35)
      abb141(37)=spak2l3*spbl4l3
      abb141(38)=spbk2e1*spae1l4
      abb141(39)=abb141(37)*abb141(38)
      abb141(40)=spae1k2*spbl3k2
      abb141(41)=spal3l4*abb141(40)*spbl4e1
      abb141(33)=-abb141(41)+abb141(33)+abb141(36)-abb141(39)
      abb141(36)=1.0_ki/2.0_ki*spbl3e1
      abb141(39)=spak2l3*spbk2k1
      abb141(36)=abb141(36)*abb141(39)
      abb141(41)=spal3k5*spbl3e1
      abb141(42)=spbl4e1*spal4k5
      abb141(43)=abb141(42)+1.0_ki/2.0_ki*abb141(41)
      abb141(44)=abb141(43)*spbk5k1
      abb141(45)=abb141(26)*spbk2k1
      abb141(36)=-abb141(36)+abb141(44)-abb141(45)
      abb141(36)=abb141(36)*spae1k1
      abb141(44)=1.0_ki/2.0_ki*spae1l3
      abb141(46)=spbl3k2*spak1k2
      abb141(47)=abb141(44)*abb141(46)
      abb141(48)=spbk5l3*spae1l3
      abb141(49)=spae1l4*spbk5l4
      abb141(50)=abb141(49)+1.0_ki/2.0_ki*abb141(48)
      abb141(51)=abb141(50)*spak1k5
      abb141(52)=abb141(29)*spak1k2
      abb141(47)=-abb141(47)+abb141(51)-abb141(52)
      abb141(47)=abb141(47)*spbk1e1
      abb141(51)=abb141(2)**2
      abb141(53)=abb141(12)*abb141(51)
      abb141(16)=abb141(16)-abb141(36)-1.0_ki/2.0_ki*abb141(33)-abb141(47)-abb1&
      &41(53)
      abb141(33)=-abb141(51)*abb141(10)
      abb141(36)=abb141(33)*abb141(9)
      abb141(16)=abb141(16)*abb141(36)
      abb141(47)=abb141(5)*abb141(6)
      abb141(21)=abb141(21)*abb141(47)
      abb141(21)=abb141(21)+abb141(31)
      abb141(21)=abb141(21)*abb141(27)
      abb141(31)=abb141(48)+abb141(49)
      abb141(48)=abb141(31)*spak1k5
      abb141(49)=abb141(46)*spae1l3
      abb141(48)=-abb141(49)+abb141(48)-abb141(52)
      abb141(48)=abb141(48)*spbk1e1
      abb141(41)=abb141(41)+abb141(42)
      abb141(42)=abb141(41)*spbk5k1
      abb141(49)=abb141(39)*spbl3e1
      abb141(42)=-abb141(49)+abb141(42)-abb141(45)
      abb141(42)=abb141(42)*spae1k1
      abb141(21)=abb141(21)+abb141(48)+abb141(42)
      abb141(42)=3.0_ki*abb141(51)
      abb141(12)=abb141(12)*abb141(42)
      abb141(12)=abb141(12)+1.0_ki/2.0_ki*abb141(21)
      abb141(12)=abb141(12)*abb141(11)
      abb141(21)=abb141(22)*abb141(47)
      abb141(22)=abb141(22)*abb141(30)
      abb141(45)=abb141(21)+1.0_ki/2.0_ki*abb141(22)
      abb141(45)=abb141(45)*abb141(27)
      abb141(43)=abb141(45)+abb141(43)+3.0_ki/2.0_ki*abb141(20)
      abb141(43)=abb141(43)*abb141(36)
      abb141(21)=abb141(21)+abb141(22)
      abb141(21)=abb141(21)*abb141(27)
      abb141(21)=abb141(21)+abb141(41)+abb141(20)
      abb141(8)=1.0_ki/2.0_ki*abb141(8)
      abb141(7)=abb141(8)*abb141(7)
      abb141(8)=abb141(10)*abb141(7)
      abb141(21)=-abb141(21)*abb141(8)
      abb141(22)=abb141(19)*abb141(47)
      abb141(19)=abb141(19)*abb141(30)
      abb141(41)=abb141(22)+1.0_ki/2.0_ki*abb141(19)
      abb141(41)=abb141(41)*abb141(27)
      abb141(41)=abb141(41)+abb141(50)+3.0_ki/2.0_ki*abb141(23)
      abb141(41)=abb141(41)*abb141(36)
      abb141(19)=abb141(22)+abb141(19)
      abb141(19)=abb141(19)*abb141(27)
      abb141(19)=abb141(19)+abb141(31)+abb141(23)
      abb141(19)=-abb141(19)*abb141(8)
      abb141(22)=-3.0_ki*abb141(36)
      abb141(31)=spbk5e1*spal4k5
      abb141(45)=spbk2e1*spak2l4
      abb141(31)=abb141(31)-abb141(45)
      abb141(31)=abb141(31)*abb141(42)
      abb141(45)=abb141(46)*spal3l4
      abb141(48)=abb141(35)*spak1k5
      abb141(45)=abb141(45)-abb141(48)
      abb141(45)=abb141(45)*spbk1e1
      abb141(48)=abb141(30)*spak2l4
      abb141(49)=abb141(20)*abb141(48)
      abb141(50)=abb141(20)*abb141(6)
      abb141(49)=abb141(50)+abb141(49)
      abb141(49)=abb141(27)*spbk5k2*abb141(49)
      abb141(31)=abb141(31)+abb141(45)-abb141(49)
      abb141(31)=abb141(31)*abb141(8)
      abb141(45)=abb141(6)+abb141(48)
      abb141(45)=abb141(27)*spbk5k2*abb141(45)
      abb141(35)=abb141(45)+abb141(35)
      abb141(35)=abb141(35)*abb141(8)
      abb141(45)=abb141(5)*spak2k5
      abb141(48)=abb141(30)*spak2k5
      abb141(49)=abb141(48)*spbl4k2
      abb141(45)=abb141(45)+abb141(49)
      abb141(49)=abb141(27)*abb141(23)*abb141(45)
      abb141(52)=spae1k5*spbk5l4
      abb141(53)=spae1k2*spbl4k2
      abb141(52)=abb141(52)-abb141(53)
      abb141(52)=abb141(52)*abb141(42)
      abb141(53)=abb141(39)*spbl4l3
      abb141(54)=abb141(32)*spbk5k1
      abb141(53)=abb141(53)-abb141(54)
      abb141(53)=abb141(53)*spae1k1
      abb141(49)=abb141(53)+abb141(52)-abb141(49)
      abb141(49)=abb141(49)*abb141(8)
      abb141(45)=abb141(45)*abb141(27)
      abb141(32)=abb141(45)+abb141(32)
      abb141(32)=abb141(32)*abb141(8)
      abb141(45)=spbk5e1*spal3k5
      abb141(52)=spbk2e1*spak2l3
      abb141(45)=abb141(45)-abb141(52)
      abb141(45)=-abb141(45)*abb141(36)
      abb141(52)=spae1k5*spbk5l3
      abb141(40)=abb141(52)-abb141(40)
      abb141(36)=-abb141(40)*abb141(36)
      abb141(40)=3.0_ki/2.0_ki*abb141(47)
      abb141(28)=abb141(40)*abb141(28)
      abb141(48)=abb141(48)*spbk5e1
      abb141(28)=abb141(48)+abb141(28)
      abb141(28)=abb141(28)*abb141(27)
      abb141(48)=spak2l3*spbl3e1
      abb141(52)=spbk1e1*spak1k2
      abb141(28)=-abb141(28)-abb141(26)-1.0_ki/2.0_ki*abb141(48)+3.0_ki/2.0_ki*&
      &abb141(52)
      abb141(28)=abb141(28)*abb141(51)
      abb141(46)=abb141(46)*spak2l3
      abb141(53)=abb141(17)*spak1k5
      abb141(46)=abb141(46)-abb141(53)
      abb141(46)=abb141(46)*abb141(47)*spbk1e1
      abb141(50)=abb141(50)*spbk5l4
      abb141(46)=abb141(46)-abb141(50)+abb141(52)
      abb141(50)=1.0_ki/2.0_ki*abb141(27)
      abb141(46)=abb141(46)*abb141(50)
      abb141(28)=abb141(28)+abb141(46)
      abb141(28)=-abb141(28)*abb141(11)
      abb141(46)=abb141(47)*abb141(27)
      abb141(10)=-abb141(46)*abb141(10)
      abb141(9)=abb141(10)*abb141(9)
      abb141(53)=abb141(52)*abb141(9)
      abb141(26)=-abb141(52)+abb141(48)+abb141(26)
      abb141(26)=abb141(26)*abb141(8)
      abb141(48)=abb141(8)*abb141(27)
      abb141(17)=abb141(17)*abb141(47)
      abb141(54)=abb141(6)*spbk5l4
      abb141(17)=abb141(54)+abb141(17)
      abb141(17)=-abb141(17)*abb141(48)
      abb141(37)=-abb141(37)*abb141(8)
      abb141(30)=abb141(30)+abb141(40)
      abb141(25)=abb141(27)*abb141(25)*abb141(30)
      abb141(30)=abb141(44)*spbl3k2
      abb141(40)=spae1k1*spbk2k1
      abb141(25)=abb141(29)+abb141(25)+abb141(30)-3.0_ki/2.0_ki*abb141(40)
      abb141(25)=abb141(25)*abb141(51)
      abb141(30)=abb141(39)*spbl3k2
      abb141(39)=abb141(14)*spbk5k1
      abb141(30)=abb141(30)-abb141(39)
      abb141(30)=abb141(30)*abb141(6)*spae1k1
      abb141(39)=abb141(23)*spal4k5
      abb141(30)=abb141(30)-abb141(39)
      abb141(30)=abb141(30)*abb141(5)
      abb141(30)=abb141(30)+abb141(40)
      abb141(30)=abb141(30)*abb141(50)
      abb141(25)=abb141(30)-abb141(25)
      abb141(25)=-abb141(25)*abb141(11)
      abb141(30)=abb141(40)*abb141(9)
      abb141(39)=spbl3k2*spae1l3
      abb141(29)=abb141(39)+abb141(29)-abb141(40)
      abb141(29)=abb141(29)*abb141(8)
      abb141(14)=abb141(14)*abb141(6)
      abb141(14)=abb141(14)+spal4k5
      abb141(14)=-abb141(5)*abb141(14)*abb141(48)
      abb141(39)=-spbl3k2*spal3l4*abb141(8)
      abb141(44)=spak2l3*abb141(47)*spbl3k2
      abb141(44)=abb141(44)+1.0_ki
      abb141(27)=abb141(44)*abb141(27)
      abb141(27)=abb141(27)+abb141(42)
      abb141(27)=abb141(27)*abb141(11)
      abb141(9)=-2.0_ki*abb141(9)
      abb141(42)=abb141(33)*abb141(7)
      abb141(24)=-abb141(24)*abb141(42)
      abb141(44)=-abb141(23)*abb141(8)
      abb141(33)=abb141(7)*abb141(33)*abb141(46)
      abb141(15)=-abb141(15)*abb141(33)
      abb141(7)=abb141(10)*abb141(7)
      abb141(10)=abb141(23)*abb141(7)
      abb141(23)=-abb141(34)*abb141(42)
      abb141(34)=-abb141(20)*abb141(8)
      abb141(46)=-spae1k2*spbl4e1*abb141(42)
      abb141(47)=-abb141(52)*abb141(8)
      abb141(18)=-abb141(18)*abb141(33)
      abb141(20)=abb141(20)*abb141(7)
      abb141(33)=-abb141(38)*abb141(42)
      abb141(38)=-abb141(40)*abb141(8)
      R2d141=abb141(13)
      rat2 = rat2 + R2d141
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='141' value='", &
          & R2d141, "'/>"
      end if
   end subroutine
end module p2_part21part21_part25part25part21_abbrevd141h0
