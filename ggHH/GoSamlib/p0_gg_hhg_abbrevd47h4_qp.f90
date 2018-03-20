module     p0_gg_hhg_abbrevd47h4_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh4_qp
   implicit none
   private
   complex(ki), dimension(63), public :: abb47
   complex(ki), public :: R2d47
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
      abb47(1)=sqrt(mT**2)
      abb47(2)=sqrt2**(-1)
      abb47(3)=spbk2k1**(-1)
      abb47(4)=spbk5k2**(-1)
      abb47(5)=spak2l3**(-1)
      abb47(6)=spbl3k2**(-1)
      abb47(7)=spak2l4**(-1)
      abb47(8)=spbl4k2**(-1)
      abb47(9)=c1-c2
      abb47(10)=gHT*abb47(4)
      abb47(10)=abb47(10)**2
      abb47(11)=i_*abb47(2)
      abb47(12)=abb47(11)*abb47(3)
      abb47(13)=abb47(9)*abb47(10)*abb47(12)
      abb47(14)=abb47(1)**4
      abb47(15)=abb47(14)*abb47(13)
      abb47(16)=abb47(1)**2
      abb47(17)=abb47(16)*abb47(13)
      abb47(18)=abb47(17)*es12
      abb47(19)=2.0_ki*abb47(18)
      abb47(20)=abb47(15)-abb47(19)
      abb47(21)=spak1l4*spbl4k2
      abb47(22)=es51-es34
      abb47(23)=abb47(22)+es12
      abb47(20)=abb47(23)*abb47(20)*abb47(21)
      abb47(24)=abb47(18)*abb47(21)
      abb47(25)=abb47(24)*abb47(22)
      abb47(26)=abb47(21)*abb47(17)
      abb47(27)=es12**2*abb47(26)
      abb47(25)=abb47(27)+abb47(25)
      abb47(27)=abb47(6)*abb47(5)
      abb47(28)=mH**2
      abb47(29)=abb47(27)*abb47(28)
      abb47(25)=abb47(25)*abb47(29)
      abb47(12)=abb47(4)*abb47(12)*abb47(9)
      abb47(30)=-abb47(12)*gHT**2
      abb47(14)=-abb47(14)*abb47(30)
      abb47(31)=abb47(1)*gHT
      abb47(12)=-abb47(12)*abb47(31)**2
      abb47(31)=2.0_ki*es12
      abb47(32)=abb47(12)*abb47(31)
      abb47(32)=abb47(14)+abb47(32)
      abb47(33)=spak2l3*spbl3k2
      abb47(32)=abb47(32)*abb47(33)
      abb47(34)=abb47(14)*abb47(31)
      abb47(32)=abb47(32)+abb47(34)
      abb47(32)=spak1k5*abb47(32)
      abb47(34)=abb47(12)*abb47(33)
      abb47(35)=abb47(14)+abb47(34)
      abb47(36)=spal4k5*spbl4k2
      abb47(35)=spak1k2*abb47(35)*abb47(36)
      abb47(37)=spbk5l3*spal3k5
      abb47(38)=abb47(24)*abb47(37)
      abb47(20)=abb47(38)+abb47(25)+abb47(35)+abb47(20)+abb47(32)
      abb47(20)=2.0_ki*abb47(20)
      abb47(25)=-8.0_ki*abb47(24)
      abb47(32)=spak1k2*spbl4k2
      abb47(35)=spal4k5*abb47(12)*abb47(32)
      abb47(38)=abb47(12)*spak1k5
      abb47(31)=abb47(38)*abb47(31)
      abb47(31)=abb47(35)+abb47(31)
      abb47(35)=abb47(38)*abb47(33)
      abb47(24)=abb47(35)-abb47(24)
      abb47(39)=abb47(37)-abb47(22)
      abb47(39)=abb47(26)*abb47(39)
      abb47(39)=abb47(39)+abb47(24)-abb47(31)
      abb47(39)=4.0_ki*abb47(39)
      abb47(40)=-16.0_ki*abb47(26)
      abb47(41)=-8.0_ki*abb47(38)
      abb47(35)=4.0_ki*abb47(35)
      abb47(42)=abb47(33)*spak1k5
      abb47(43)=abb47(42)*abb47(30)
      abb47(38)=-abb47(38)-abb47(43)
      abb47(38)=8.0_ki*abb47(38)
      abb47(44)=abb47(30)*spak1k5
      abb47(45)=16.0_ki*abb47(44)
      abb47(26)=abb47(26)*abb47(22)
      abb47(24)=abb47(26)-abb47(24)-abb47(31)
      abb47(24)=2.0_ki*abb47(24)
      abb47(26)=4.0_ki*abb47(43)
      abb47(31)=8.0_ki*abb47(44)
      abb47(34)=2.0_ki*abb47(34)
      abb47(14)=-3.0_ki*abb47(14)-abb47(34)
      abb47(43)=2.0_ki*spak1k2
      abb47(14)=abb47(14)*abb47(43)
      abb47(44)=abb47(12)*spak1k2
      abb47(46)=8.0_ki*abb47(44)
      abb47(44)=-4.0_ki*abb47(44)
      abb47(43)=-abb47(30)*abb47(43)
      abb47(47)=abb47(32)*abb47(17)
      abb47(48)=abb47(47)*abb47(22)
      abb47(49)=abb47(32)*abb47(18)
      abb47(48)=abb47(49)+abb47(48)
      abb47(49)=abb47(18)*abb47(28)
      abb47(50)=abb47(17)*abb47(28)
      abb47(51)=-abb47(50)*abb47(22)
      abb47(51)=-abb47(49)+abb47(51)
      abb47(32)=abb47(27)*abb47(32)*abb47(51)
      abb47(51)=-abb47(47)*abb47(37)
      abb47(32)=abb47(51)+2.0_ki*abb47(48)+abb47(32)
      abb47(32)=2.0_ki*abb47(32)
      abb47(48)=8.0_ki*abb47(47)
      abb47(51)=-spak1k5*abb47(19)
      abb47(47)=-spal4k5*abb47(47)
      abb47(47)=abb47(51)+abb47(47)
      abb47(47)=2.0_ki*spbl3k2*abb47(47)
      abb47(51)=4.0_ki*spbl3k2
      abb47(52)=abb47(51)*abb47(17)
      abb47(53)=-spak1k5*abb47(52)
      abb47(54)=8.0_ki*spak1k5*spbl3k2*abb47(13)
      abb47(55)=-abb47(51)*abb47(13)
      abb47(56)=spak1k5*abb47(55)
      abb47(52)=spak1k2*abb47(52)
      abb47(57)=2.0_ki*spal3k5
      abb47(58)=abb47(57)*abb47(21)
      abb47(59)=abb47(12)*abb47(58)
      abb47(9)=-abb47(10)*abb47(11)*abb47(9)
      abb47(10)=-abb47(16)*abb47(9)
      abb47(11)=abb47(21)*spak2k5
      abb47(16)=-abb47(11)-2.0_ki*abb47(42)
      abb47(16)=abb47(10)*abb47(16)
      abb47(21)=abb47(33)*abb47(17)
      abb47(42)=-abb47(21)*abb47(36)
      abb47(16)=abb47(42)+abb47(16)
      abb47(16)=2.0_ki*abb47(16)
      abb47(10)=spak1k5*abb47(10)
      abb47(36)=abb47(17)*abb47(36)
      abb47(10)=2.0_ki*abb47(10)+abb47(36)
      abb47(11)=-abb47(9)*abb47(11)
      abb47(29)=abb47(29)-1.0_ki
      abb47(29)=abb47(11)*abb47(29)
      abb47(10)=2.0_ki*abb47(10)+abb47(29)
      abb47(10)=4.0_ki*abb47(10)
      abb47(11)=-2.0_ki*abb47(11)
      abb47(21)=4.0_ki*abb47(21)
      abb47(29)=2.0_ki*abb47(17)
      abb47(36)=spak2k5*spbl4k2
      abb47(42)=abb47(29)*abb47(36)
      abb47(60)=-abb47(36)*abb47(13)
      abb47(28)=-abb47(13)*abb47(28)
      abb47(27)=abb47(28)*abb47(27)*abb47(36)
      abb47(27)=-abb47(60)+abb47(27)
      abb47(27)=4.0_ki*abb47(27)
      abb47(36)=-2.0_ki*abb47(60)
      abb47(9)=-abb47(9)*abb47(58)
      abb47(57)=-spbl4k2*abb47(13)*abb47(57)
      abb47(34)=-spal4k5*abb47(34)
      abb47(58)=abb47(30)*abb47(33)
      abb47(58)=abb47(58)+abb47(12)
      abb47(58)=4.0_ki*spal4k5*abb47(58)
      abb47(30)=abb47(30)*spal4k5
      abb47(60)=-8.0_ki*abb47(30)
      abb47(30)=-4.0_ki*abb47(30)
      abb47(55)=spal4k5*abb47(55)
      abb47(61)=abb47(8)*abb47(7)
      abb47(62)=abb47(61)*abb47(33)
      abb47(63)=abb47(50)*abb47(62)
      abb47(63)=abb47(63)+abb47(15)
      abb47(63)=abb47(63)*abb47(22)
      abb47(15)=es12*abb47(15)
      abb47(62)=abb47(49)*abb47(62)
      abb47(15)=abb47(15)+abb47(62)+abb47(63)
      abb47(15)=2.0_ki*abb47(15)
      abb47(33)=abb47(28)*abb47(33)
      abb47(50)=abb47(33)-abb47(50)
      abb47(50)=abb47(50)*abb47(61)
      abb47(50)=abb47(50)-abb47(29)
      abb47(50)=abb47(50)*abb47(22)
      abb47(33)=es12*abb47(33)
      abb47(33)=-abb47(49)+abb47(33)
      abb47(33)=abb47(33)*abb47(61)
      abb47(29)=abb47(29)*abb47(37)
      abb47(19)=abb47(29)-abb47(19)+abb47(33)+abb47(50)
      abb47(19)=4.0_ki*abb47(19)
      abb47(28)=abb47(28)*abb47(61)
      abb47(29)=abb47(23)*abb47(28)
      abb47(33)=-8.0_ki*abb47(29)
      abb47(22)=-abb47(17)*abb47(22)
      abb47(18)=-abb47(18)+abb47(22)
      abb47(18)=4.0_ki*abb47(18)
      abb47(22)=-4.0_ki*abb47(29)
      abb47(13)=2.0_ki*abb47(13)*abb47(23)
      abb47(23)=spak2k5*abb47(28)*abb47(51)
      abb47(17)=-16.0_ki*abb47(17)
      abb47(12)=4.0_ki*spal3k5*abb47(12)
      R2d47=0.0_ki
      rat2 = rat2 + R2d47
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='47' value='", &
          & R2d47, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd47h4_qp
