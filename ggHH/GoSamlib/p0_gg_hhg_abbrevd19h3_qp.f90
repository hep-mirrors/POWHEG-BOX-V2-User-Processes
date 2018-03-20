module     p0_gg_hhg_abbrevd19h3_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh3_qp
   implicit none
   private
   complex(ki), dimension(39), public :: abb19
   complex(ki), public :: R2d19
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
      abb19(1)=sqrt2**(-1)
      abb19(2)=es51**(-1)
      abb19(3)=spak1k2**(-1)
      abb19(4)=spak2k5**(-1)
      abb19(5)=sqrt(mT**2)
      abb19(6)=spak2l3**(-1)
      abb19(7)=spbl3k2**(-1)
      abb19(8)=spak2l4**(-1)
      abb19(9)=spbl4k2**(-1)
      abb19(10)=gHT**2*i_*spbk5k1
      abb19(11)=abb19(3)*abb19(1)
      abb19(12)=abb19(10)*abb19(11)*abb19(4)
      abb19(13)=abb19(12)*abb19(2)
      abb19(14)=c1-c2
      abb19(15)=-abb19(13)*abb19(14)
      abb19(16)=abb19(15)*es34
      abb19(17)=abb19(14)*abb19(12)
      abb19(16)=abb19(16)+abb19(17)
      abb19(17)=20.0_ki/3.0_ki*abb19(16)
      abb19(18)=abb19(5)**2
      abb19(19)=abb19(14)*abb19(18)
      abb19(12)=-abb19(12)*abb19(19)
      abb19(13)=abb19(13)*abb19(19)
      abb19(20)=abb19(13)*es34
      abb19(12)=abb19(12)+abb19(20)
      abb19(20)=mH**2
      abb19(21)=abb19(20)*abb19(7)*abb19(6)
      abb19(22)=abb19(21)-1.0_ki
      abb19(23)=spbl4k2*spak2l4
      abb19(22)=abb19(12)*abb19(23)*abb19(22)
      abb19(20)=abb19(8)*abb19(20)*abb19(9)
      abb19(24)=abb19(20)-2.0_ki
      abb19(25)=-abb19(12)*abb19(24)
      abb19(26)=spbl3k2*spak2l3
      abb19(27)=-abb19(25)*abb19(26)
      abb19(28)=abb19(26)*abb19(13)
      abb19(29)=-spbk5l4*abb19(28)
      abb19(30)=abb19(1)*abb19(10)*abb19(2)
      abb19(31)=abb19(4)**2
      abb19(32)=abb19(30)*abb19(31)
      abb19(33)=abb19(32)*abb19(19)
      abb19(26)=abb19(26)*abb19(33)
      abb19(34)=spbl4k1*abb19(26)
      abb19(29)=abb19(29)+abb19(34)
      abb19(29)=spal4k5*abb19(29)
      abb19(34)=abb19(23)*abb19(13)
      abb19(35)=-spbk5l3*abb19(34)
      abb19(36)=abb19(33)*abb19(23)
      abb19(37)=spbl3k1*abb19(36)
      abb19(35)=abb19(35)+abb19(37)
      abb19(35)=spal3k5*abb19(35)
      abb19(37)=-abb19(16)*abb19(5)**4
      abb19(22)=abb19(35)+abb19(29)+abb19(27)+2.0_ki*abb19(37)+abb19(22)
      abb19(22)=4.0_ki*abb19(22)
      abb19(27)=abb19(34)-abb19(28)
      abb19(27)=16.0_ki*abb19(27)
      abb19(28)=abb19(33)*spbl4k1
      abb19(29)=spbk5l4*abb19(13)
      abb19(28)=abb19(29)-abb19(28)
      abb19(28)=spal4k5*abb19(28)
      abb19(29)=-spbk5l3*abb19(13)
      abb19(34)=spbl3k1*abb19(33)
      abb19(29)=abb19(29)+abb19(34)
      abb19(29)=spal3k5*abb19(29)
      abb19(28)=abb19(28)+abb19(29)
      abb19(29)=abb19(16)*abb19(23)
      abb19(34)=abb19(12)-abb19(29)
      abb19(34)=abb19(34)*abb19(21)
      abb19(25)=abb19(34)+abb19(25)+2.0_ki*abb19(28)
      abb19(25)=8.0_ki*abb19(25)
      abb19(28)=-16.0_ki*abb19(16)*abb19(21)
      abb19(12)=-4.0_ki*abb19(12)+abb19(29)
      abb19(12)=4.0_ki*abb19(12)
      abb19(16)=8.0_ki*abb19(16)
      abb19(24)=abb19(21)-abb19(24)
      abb19(24)=abb19(24)*abb19(16)
      abb19(10)=-abb19(10)*abb19(14)
      abb19(29)=-abb19(31)*abb19(10)
      abb19(31)=abb19(11)*abb19(2)
      abb19(34)=-es34*abb19(31)*abb19(29)
      abb19(11)=-abb19(11)*abb19(29)
      abb19(11)=abb19(34)-abb19(11)
      abb19(29)=abb19(18)*abb19(11)
      abb19(34)=4.0_ki*spak2l4
      abb19(35)=-abb19(29)*abb19(34)
      abb19(37)=abb19(11)*spak2l4
      abb19(21)=8.0_ki*abb19(21)*abb19(37)
      abb19(37)=-4.0_ki*abb19(37)
      abb19(38)=4.0_ki*spak2l3
      abb19(29)=abb19(29)*abb19(38)
      abb19(20)=-1.0_ki+abb19(20)
      abb19(20)=8.0_ki*abb19(11)*spak2l3*abb19(20)
      abb19(11)=4.0_ki*abb19(11)
      abb19(11)=spak2l3*abb19(11)
      abb19(26)=abb19(36)-abb19(26)
      abb19(26)=8.0_ki*abb19(26)
      abb19(10)=-abb19(31)*abb19(10)
      abb19(31)=abb19(10)*spbk5l4
      abb19(36)=-abb19(18)*abb19(31)
      abb19(30)=abb19(30)*abb19(4)
      abb19(19)=-abb19(19)*abb19(30)
      abb19(39)=-spbl4k1*abb19(19)
      abb19(36)=abb19(36)+abb19(39)
      abb19(36)=4.0_ki*abb19(36)
      abb19(30)=-abb19(30)*abb19(14)
      abb19(39)=-spbl4k1*abb19(30)
      abb19(31)=-abb19(31)+abb19(39)
      abb19(31)=4.0_ki*abb19(31)
      abb19(39)=-spbk5l4*abb19(15)
      abb19(14)=abb19(14)*abb19(32)
      abb19(32)=-spbl4k1*abb19(14)
      abb19(32)=abb19(39)+abb19(32)
      abb19(32)=abb19(32)*abb19(38)
      abb19(10)=abb19(10)*spbk5l3
      abb19(18)=-abb19(23)+abb19(18)
      abb19(18)=abb19(18)*abb19(10)
      abb19(23)=-abb19(30)*abb19(23)
      abb19(19)=abb19(23)+abb19(19)
      abb19(19)=spbl3k1*abb19(19)
      abb19(18)=abb19(18)+abb19(19)
      abb19(18)=4.0_ki*abb19(18)
      abb19(19)=abb19(30)*spbl3k1
      abb19(10)=abb19(10)+abb19(19)
      abb19(19)=-8.0_ki*abb19(10)
      abb19(10)=4.0_ki*abb19(10)
      abb19(15)=-spbk5l3*abb19(15)
      abb19(14)=-spbl3k1*abb19(14)
      abb19(14)=abb19(15)+abb19(14)
      abb19(14)=abb19(14)*abb19(34)
      abb19(13)=32.0_ki*abb19(13)
      abb19(15)=32.0_ki*abb19(33)
      R2d19=abb19(17)
      rat2 = rat2 + R2d19
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='19' value='", &
          & R2d19, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd19h3_qp
