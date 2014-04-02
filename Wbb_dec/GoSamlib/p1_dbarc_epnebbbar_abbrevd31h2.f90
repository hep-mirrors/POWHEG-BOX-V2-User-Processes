module     p1_dbarc_epnebbbar_abbrevd31h2
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(46), public :: abb31
   complex(ki), public :: R2d31
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_color, only: TR
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      implicit none
      abb31(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb31(2)=NC**(-1)
      abb31(3)=es234**(-1)
      abb31(4)=spbl5k2**(-1)
      abb31(5)=spak2l6**(-1)
      abb31(6)=spbl6k2**(-1)
      abb31(7)=sqrt(mB**2)
      abb31(8)=-NC+2.0_ki*abb31(2)
      abb31(9)=c2*spbk3k2
      abb31(10)=TR*gW
      abb31(10)=i_*CVDC*abb31(10)**2
      abb31(11)=abb31(3)*abb31(1)*abb31(10)
      abb31(12)=-abb31(8)*abb31(9)*abb31(11)
      abb31(13)=c1*abb31(2)**2
      abb31(14)=abb31(13)*spbk3k2
      abb31(15)=abb31(14)*abb31(11)
      abb31(15)=abb31(15)+abb31(12)
      abb31(16)=abb31(15)*spak1l5
      abb31(17)=spbl6k3*spak3k4
      abb31(18)=abb31(17)*abb31(16)
      abb31(19)=abb31(16)*spak2k4
      abb31(20)=abb31(19)*spbl6k2
      abb31(21)=abb31(8)*c2
      abb31(21)=abb31(21)-abb31(13)
      abb31(22)=spbk3k2**2
      abb31(23)=-abb31(21)*abb31(22)
      abb31(24)=mB**2
      abb31(25)=abb31(24)*abb31(4)
      abb31(26)=abb31(11)*abb31(5)
      abb31(27)=abb31(26)*spak1k2
      abb31(28)=abb31(27)*abb31(25)
      abb31(29)=spak3k4*abb31(28)*abb31(23)
      abb31(18)=abb31(29)+abb31(18)-abb31(20)
      abb31(20)=-spak1l6*abb31(18)
      abb31(29)=-c2*abb31(27)*abb31(8)
      abb31(30)=abb31(13)*abb31(27)
      abb31(29)=abb31(29)+abb31(30)
      abb31(30)=abb31(6)*spak3k4
      abb31(22)=spak1l5*abb31(30)*abb31(24)*abb31(22)*abb31(29)
      abb31(20)=abb31(20)+abb31(22)
      abb31(20)=spbl6k1*abb31(20)
      abb31(22)=-abb31(8)*abb31(27)*abb31(9)
      abb31(27)=abb31(14)*abb31(27)
      abb31(27)=abb31(22)+abb31(27)
      abb31(31)=mB*abb31(27)
      abb31(32)=abb31(31)*abb31(7)
      abb31(33)=spbk3k1*spak3k4
      abb31(34)=-spak1l5*abb31(32)*abb31(33)
      abb31(35)=abb31(11)*abb31(4)
      abb31(23)=abb31(30)*abb31(5)**2*mB**4*abb31(35)*spak1k2*abb31(23)
      abb31(30)=-mB*abb31(8)
      abb31(36)=abb31(30)*abb31(9)
      abb31(37)=abb31(14)*mB
      abb31(36)=abb31(37)+abb31(36)
      abb31(36)=spak1l5*spak2k4*abb31(7)*abb31(26)*abb31(36)
      abb31(36)=abb31(36)-abb31(23)
      abb31(36)=es12*abb31(36)
      abb31(20)=abb31(36)+abb31(20)+abb31(34)
      abb31(20)=4.0_ki*abb31(20)
      abb31(34)=2.0_ki*abb31(7)
      abb31(31)=abb31(34)*abb31(31)
      abb31(27)=abb31(24)*abb31(27)
      abb31(31)=abb31(31)-abb31(27)
      abb31(36)=abb31(31)*spak4l5
      abb31(22)=-abb31(25)*abb31(22)
      abb31(37)=abb31(28)*abb31(14)
      abb31(22)=abb31(22)-abb31(37)
      abb31(37)=abb31(22)*spbl6k2
      abb31(38)=abb31(37)*spak4l6
      abb31(39)=-abb31(12)*abb31(4)*mB
      abb31(40)=abb31(35)*mB
      abb31(41)=abb31(40)*abb31(14)
      abb31(39)=abb31(39)-abb31(41)
      abb31(41)=spbl6k2*abb31(7)
      abb31(42)=abb31(41)*spak1k4
      abb31(43)=abb31(42)*abb31(39)
      abb31(36)=abb31(43)+abb31(36)-abb31(38)
      abb31(38)=8.0_ki*abb31(36)
      abb31(23)=-abb31(23)-abb31(36)
      abb31(23)=8.0_ki*abb31(23)
      abb31(8)=-abb31(9)*abb31(8)
      abb31(8)=abb31(14)+abb31(8)
      abb31(9)=abb31(25)*abb31(26)
      abb31(8)=abb31(9)*abb31(8)
      abb31(26)=abb31(8)*spak1k4
      abb31(26)=16.0_ki*abb31(26)
      abb31(18)=-8.0_ki*abb31(18)
      abb31(36)=spak2k4*abb31(37)
      abb31(43)=-abb31(22)*abb31(17)
      abb31(36)=abb31(36)+abb31(43)
      abb31(36)=4.0_ki*abb31(36)
      abb31(43)=4.0_ki*abb31(15)
      abb31(44)=spak2k4*spbl6k2
      abb31(44)=abb31(44)-abb31(17)
      abb31(44)=spak1l6*abb31(44)*abb31(43)
      abb31(45)=4.0_ki*spak3k4
      abb31(46)=abb31(45)*abb31(32)
      abb31(32)=-abb31(32)+abb31(27)
      abb31(32)=spak2k4*abb31(32)
      abb31(27)=-abb31(6)*abb31(27)*abb31(17)
      abb31(27)=abb31(32)+abb31(27)
      abb31(27)=4.0_ki*abb31(27)
      abb31(13)=abb31(40)*abb31(13)
      abb31(30)=abb31(30)*abb31(35)*c2
      abb31(13)=abb31(13)+abb31(30)
      abb31(13)=abb31(13)*abb31(42)
      abb31(30)=abb31(34)*mB
      abb31(30)=abb31(30)-abb31(24)
      abb31(29)=-spak4l5*abb31(29)*abb31(30)
      abb31(28)=-spak4l6*spbl6k2*abb31(21)*abb31(28)
      abb31(13)=-abb31(28)+abb31(13)+abb31(29)
      abb31(28)=spbk4k2*abb31(13)
      abb31(29)=-spak3l5*abb31(31)
      abb31(30)=-spak1k3*abb31(39)*abb31(41)
      abb31(32)=spak3l6*abb31(37)
      abb31(28)=abb31(32)+abb31(30)+abb31(29)+abb31(28)
      abb31(28)=4.0_ki*abb31(28)
      abb31(9)=abb31(9)*abb31(21)
      abb31(29)=spbk4k2*spak1k4*abb31(9)
      abb31(30)=-spak1k3*abb31(8)
      abb31(29)=abb31(29)+abb31(30)
      abb31(29)=8.0_ki*abb31(29)
      abb31(13)=-spbk4k3*abb31(13)
      abb31(12)=abb31(25)*abb31(12)
      abb31(14)=abb31(35)*abb31(14)*abb31(24)
      abb31(24)=abb31(7)*abb31(39)
      abb31(12)=abb31(24)+abb31(14)+abb31(12)
      abb31(12)=spbl6k2*spak1k2*abb31(12)
      abb31(14)=spak2l5*abb31(31)
      abb31(12)=abb31(14)+abb31(12)+abb31(13)
      abb31(12)=4.0_ki*abb31(12)
      abb31(13)=abb31(9)*spbk4k3
      abb31(14)=-spak1k4*abb31(13)
      abb31(14)=abb31(14)-abb31(22)
      abb31(14)=8.0_ki*abb31(14)
      abb31(16)=-abb31(16)*abb31(33)
      abb31(19)=spbk2k1*abb31(19)
      abb31(16)=abb31(16)+abb31(19)
      abb31(16)=4.0_ki*abb31(16)
      abb31(19)=abb31(15)*spak4l5
      abb31(19)=8.0_ki*abb31(19)
      abb31(22)=abb31(43)*spak3k4
      abb31(24)=abb31(43)*spak2k4
      abb31(30)=-spak3l5*abb31(15)
      abb31(11)=-spak4l5*abb31(21)*abb31(11)
      abb31(31)=-spbk4k2*abb31(11)
      abb31(30)=abb31(31)+abb31(30)
      abb31(30)=4.0_ki*abb31(30)
      abb31(15)=spak2l5*abb31(15)
      abb31(11)=spbk4k3*abb31(11)
      abb31(11)=abb31(11)+abb31(15)
      abb31(11)=4.0_ki*abb31(11)
      abb31(15)=8.0_ki*abb31(8)
      abb31(31)=spak3k4*abb31(15)
      abb31(32)=spak2k4*abb31(41)
      abb31(17)=-abb31(7)*abb31(17)
      abb31(17)=abb31(32)+abb31(17)
      abb31(17)=4.0_ki*abb31(39)*abb31(17)
      abb31(15)=abb31(15)*spak2k4
      abb31(10)=abb31(1)*abb31(25)*abb31(10)*abb31(5)*abb31(21)
      abb31(9)=-es34*abb31(9)
      abb31(9)=abb31(9)+abb31(10)
      abb31(9)=4.0_ki*abb31(9)
      abb31(10)=4.0_ki*spak2k4*abb31(13)
      abb31(8)=-abb31(8)*abb31(45)
      R2d31=0.0_ki
      rat2 = rat2 + R2d31
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='31' value='", &
          & R2d31, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd31h2
