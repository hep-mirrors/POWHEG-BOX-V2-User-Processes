module     p1_dbarc_epnebbbarg_abbrevd90h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(40), public :: abb90
   complex(ki), public :: R2d90
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb90(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb90(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb90(3)=NC**(-1)
      abb90(4)=es71**(-1)
      abb90(5)=spbl6k2**(-1)
      abb90(6)=spak2l6**(-1)
      abb90(7)=sqrt(mB**2)
      abb90(8)=spak2l5**(-1)
      abb90(9)=spbl5k2**(-1)
      abb90(10)=1.0_ki/(es34+es567-es12-es234)
      abb90(11)=abb90(4)*spak1e7
      abb90(12)=TR*gW
      abb90(12)=abb90(12)**2*i_*CVDC*abb90(2)*abb90(1)
      abb90(13)=abb90(12)*abb90(11)
      abb90(14)=abb90(13)*spbk3k2
      abb90(15)=-NC+2.0_ki*abb90(3)
      abb90(16)=-c3*abb90(15)
      abb90(17)=-abb90(14)*abb90(16)
      abb90(18)=c4*abb90(3)**2
      abb90(19)=abb90(14)*abb90(18)
      abb90(19)=abb90(19)-abb90(17)
      abb90(20)=spak4k7*spbk7e7
      abb90(21)=abb90(19)*abb90(20)
      abb90(12)=abb90(12)*spak1k4
      abb90(22)=abb90(12)*abb90(10)
      abb90(23)=abb90(22)*spbe7k2
      abb90(24)=c3*spak1e7
      abb90(25)=-abb90(15)*abb90(23)*abb90(24)
      abb90(26)=abb90(18)*abb90(23)
      abb90(27)=abb90(26)*spak1e7
      abb90(25)=abb90(27)+abb90(25)
      abb90(27)=abb90(25)*spbk3k1
      abb90(28)=abb90(16)*abb90(23)
      abb90(26)=abb90(28)+abb90(26)
      abb90(28)=spbk4k3*spak4e7
      abb90(29)=-abb90(26)*abb90(28)
      abb90(21)=abb90(29)+abb90(21)-abb90(27)
      abb90(27)=abb90(11)*spbk3k2
      abb90(29)=abb90(12)*c3
      abb90(30)=abb90(15)*abb90(27)*abb90(29)
      abb90(31)=abb90(18)*abb90(12)
      abb90(32)=abb90(31)*abb90(27)
      abb90(32)=abb90(32)-abb90(30)
      abb90(32)=abb90(32)*spbe7k1
      abb90(32)=abb90(21)-abb90(32)
      abb90(33)=abb90(9)*abb90(8)
      abb90(34)=mB**2
      abb90(35)=-abb90(33)*abb90(34)*abb90(32)
      abb90(32)=abb90(35)+abb90(32)
      abb90(32)=spak2l6*abb90(7)*abb90(32)
      abb90(35)=abb90(5)*mB
      abb90(21)=abb90(35)*abb90(21)
      abb90(36)=abb90(5)**2
      abb90(37)=mB**3
      abb90(38)=abb90(36)*abb90(37)
      abb90(17)=abb90(17)*abb90(38)
      abb90(39)=abb90(18)*abb90(37)
      abb90(40)=abb90(39)*abb90(36)
      abb90(14)=abb90(14)*abb90(40)
      abb90(14)=abb90(17)-abb90(14)
      abb90(14)=abb90(14)*abb90(20)
      abb90(17)=abb90(12)*abb90(27)*abb90(40)
      abb90(30)=abb90(38)*abb90(30)
      abb90(17)=abb90(17)-abb90(30)
      abb90(17)=abb90(17)*spbe7k1
      abb90(24)=-abb90(24)*abb90(15)
      abb90(30)=abb90(18)*spak1e7
      abb90(24)=abb90(24)+abb90(30)
      abb90(30)=abb90(24)*spbk3k1
      abb90(18)=abb90(16)+abb90(18)
      abb90(38)=abb90(18)*abb90(28)
      abb90(30)=abb90(30)+abb90(38)
      abb90(23)=abb90(23)*abb90(37)
      abb90(36)=abb90(30)*abb90(23)*abb90(36)
      abb90(14)=abb90(14)+abb90(17)+abb90(36)
      abb90(14)=abb90(14)*abb90(6)
      abb90(12)=abb90(12)*abb90(5)
      abb90(17)=abb90(27)*abb90(12)
      abb90(27)=abb90(18)*abb90(17)
      abb90(36)=abb90(27)*spbe7k1*mB
      abb90(14)=abb90(14)-abb90(36)+abb90(21)
      abb90(21)=spak2l5*spbl5k2*abb90(14)
      abb90(15)=abb90(29)*abb90(15)
      abb90(15)=-abb90(31)+abb90(15)
      abb90(11)=abb90(11)*spbe7k1
      abb90(15)=abb90(15)*abb90(11)
      abb90(13)=abb90(20)*abb90(13)
      abb90(29)=abb90(18)*abb90(13)
      abb90(15)=abb90(15)+abb90(29)
      abb90(15)=spbl5k3*abb90(15)
      abb90(29)=spbe7l5*abb90(22)*abb90(30)
      abb90(15)=abb90(15)+abb90(29)
      abb90(15)=abb90(7)*abb90(15)
      abb90(22)=abb90(30)*abb90(35)*abb90(22)
      abb90(29)=abb90(22)*spbe7l6
      abb90(11)=-mB*abb90(12)*abb90(11)
      abb90(12)=-abb90(35)*abb90(13)
      abb90(11)=abb90(11)-abb90(12)
      abb90(11)=-abb90(18)*abb90(11)
      abb90(12)=abb90(11)*spbl6k3
      abb90(12)=abb90(29)-abb90(12)
      abb90(13)=-spbl5k2*abb90(12)
      abb90(13)=abb90(13)+abb90(15)
      abb90(13)=spal5l6*abb90(13)
      abb90(15)=abb90(16)*abb90(37)
      abb90(15)=abb90(39)+abb90(15)
      abb90(15)=abb90(17)*abb90(15)
      abb90(16)=abb90(7)*abb90(34)*abb90(27)
      abb90(16)=abb90(16)+abb90(15)
      abb90(16)=spbe7k1*abb90(16)
      abb90(17)=abb90(19)*abb90(37)*abb90(5)
      abb90(27)=abb90(34)*abb90(5)
      abb90(29)=abb90(27)*abb90(7)
      abb90(19)=-abb90(19)*abb90(29)
      abb90(19)=abb90(19)-abb90(17)
      abb90(19)=abb90(19)*abb90(20)
      abb90(23)=abb90(23)*abb90(5)
      abb90(18)=abb90(18)*abb90(23)
      abb90(26)=abb90(7)*abb90(27)*abb90(26)
      abb90(26)=abb90(26)+abb90(18)
      abb90(26)=abb90(26)*abb90(28)
      abb90(23)=abb90(24)*abb90(23)
      abb90(24)=abb90(25)*abb90(29)
      abb90(24)=abb90(24)+abb90(23)
      abb90(24)=spbk3k1*abb90(24)
      abb90(13)=abb90(21)+abb90(32)+abb90(24)+abb90(26)+abb90(16)+abb90(19)+abb&
      &90(13)
      abb90(13)=4.0_ki*abb90(13)
      abb90(15)=spbe7k1*abb90(15)
      abb90(16)=-abb90(17)*abb90(20)
      abb90(17)=abb90(18)*abb90(28)
      abb90(18)=spbk3k1*abb90(23)
      abb90(15)=abb90(18)+abb90(17)+abb90(15)+abb90(16)
      abb90(15)=abb90(15)*abb90(33)
      abb90(14)=abb90(15)+abb90(14)
      abb90(14)=8.0_ki*abb90(14)
      abb90(12)=4.0_ki*abb90(12)
      abb90(15)=spbe7l5*abb90(22)
      abb90(11)=-spbl5k3*abb90(11)
      abb90(11)=abb90(15)+abb90(11)
      abb90(11)=4.0_ki*abb90(11)
      R2d90=0.0_ki
      rat2 = rat2 + R2d90
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='90' value='", &
          & R2d90, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd90h0
