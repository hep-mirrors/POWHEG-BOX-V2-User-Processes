module     p1_dbarc_epnebbbarg_abbrevd73h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(42), public :: abb73
   complex(ki), public :: R2d73
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
      abb73(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb73(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb73(3)=NC**(-1)
      abb73(4)=spak2l5**(-1)
      abb73(5)=spbl5k2**(-1)
      abb73(6)=sqrt(mB**2)
      abb73(7)=abb73(3)**2
      abb73(7)=abb73(7)+1.0_ki
      abb73(8)=TR*gW
      abb73(8)=abb73(8)**2*i_*CVDC*abb73(2)*abb73(1)
      abb73(9)=abb73(8)*spbe7l5
      abb73(10)=abb73(9)*abb73(7)
      abb73(11)=abb73(10)*c2
      abb73(12)=c1*abb73(3)
      abb73(13)=2.0_ki*abb73(12)
      abb73(9)=abb73(13)*abb73(9)
      abb73(11)=abb73(11)-abb73(9)
      abb73(13)=abb73(6)**2
      abb73(14)=spak1e7*abb73(11)*abb73(13)
      abb73(15)=abb73(4)*spak2e7
      abb73(16)=abb73(15)*abb73(6)
      abb73(17)=abb73(16)*mB
      abb73(18)=spak1l5*abb73(11)*abb73(17)
      abb73(7)=abb73(8)*abb73(7)
      abb73(19)=abb73(7)*abb73(17)
      abb73(20)=abb73(19)*c2
      abb73(8)=abb73(12)*abb73(8)
      abb73(8)=2.0_ki*abb73(8)
      abb73(12)=abb73(8)*abb73(17)
      abb73(17)=abb73(20)-abb73(12)
      abb73(20)=spak1k7*spbk7e7
      abb73(21)=abb73(17)*abb73(20)
      abb73(14)=abb73(21)+abb73(14)-abb73(18)
      abb73(18)=spak3k4*abb73(14)*spbk3k2**2
      abb73(21)=mB*spbk3k2
      abb73(16)=abb73(21)*abb73(16)
      abb73(7)=abb73(7)*abb73(16)
      abb73(22)=spak1l6*c2
      abb73(23)=abb73(22)*abb73(7)
      abb73(8)=abb73(8)*abb73(16)
      abb73(24)=abb73(8)*spak1l6
      abb73(23)=abb73(23)-abb73(24)
      abb73(24)=spbe7k3*spak3k4
      abb73(23)=abb73(23)*abb73(24)
      abb73(25)=abb73(10)*abb73(22)
      abb73(26)=abb73(9)*spak1l6
      abb73(25)=abb73(25)-abb73(26)
      abb73(26)=abb73(21)**2
      abb73(27)=abb73(26)*abb73(15)
      abb73(28)=abb73(5)*spak3k4
      abb73(29)=-abb73(28)*abb73(27)*abb73(25)
      abb73(30)=spbk3k2*abb73(25)
      abb73(31)=spbk7k2*spae7k7
      abb73(32)=spbl5k2*spal5e7
      abb73(31)=abb73(31)-abb73(32)
      abb73(32)=-spak2k4*abb73(31)
      abb73(33)=-abb73(30)*abb73(32)
      abb73(23)=abb73(33)+abb73(23)+abb73(29)
      abb73(29)=abb73(30)*spak3k4
      abb73(30)=spbk7k3*spae7k7
      abb73(33)=spbl5k3*spal5e7
      abb73(30)=abb73(30)-abb73(33)
      abb73(33)=-abb73(29)*abb73(30)
      abb73(33)=abb73(23)+abb73(33)
      abb73(34)=-spbl6k2*abb73(33)
      abb73(18)=abb73(34)+abb73(18)
      abb73(34)=4.0_ki*spak2l6
      abb73(18)=abb73(18)*abb73(34)
      abb73(33)=8.0_ki*abb73(33)
      abb73(35)=mB**2
      abb73(36)=abb73(35)*abb73(15)
      abb73(37)=spbk3k2*abb73(36)
      abb73(38)=-abb73(37)*abb73(25)
      abb73(39)=abb73(38)*abb73(5)
      abb73(19)=abb73(19)*abb73(22)
      abb73(12)=abb73(12)*spak1l6
      abb73(12)=abb73(19)-abb73(12)
      abb73(19)=abb73(12)*spbe7k3
      abb73(19)=abb73(39)+abb73(19)
      abb73(22)=spbl6k2*abb73(19)
      abb73(39)=-spbk3k2*abb73(11)
      abb73(13)=-spak1e7*abb73(13)*abb73(39)
      abb73(22)=abb73(22)-abb73(13)
      abb73(7)=c2*abb73(7)
      abb73(7)=abb73(7)-abb73(8)
      abb73(8)=abb73(20)*abb73(7)
      abb73(16)=-abb73(16)*abb73(11)
      abb73(20)=abb73(16)*spak1l5
      abb73(8)=abb73(20)+abb73(8)
      abb73(20)=abb73(22)-abb73(8)
      abb73(20)=spak4l6*abb73(20)
      abb73(40)=abb73(25)*spbl6k2
      abb73(41)=abb73(40)*spak4l6
      abb73(29)=abb73(41)+abb73(29)
      abb73(29)=-abb73(29)*abb73(30)
      abb73(20)=abb73(20)+abb73(23)+abb73(29)
      abb73(20)=8.0_ki*abb73(20)
      abb73(23)=abb73(30)*abb73(40)
      abb73(22)=abb73(23)-abb73(22)
      abb73(23)=abb73(8)+abb73(22)
      abb73(23)=4.0_ki*spak4l6*abb73(23)
      abb73(13)=abb73(8)+abb73(13)
      abb73(13)=-4.0_ki*spak3k4*abb73(13)
      abb73(29)=abb73(30)*spak3k4
      abb73(29)=abb73(29)+abb73(32)
      abb73(39)=-abb73(39)*abb73(29)
      abb73(41)=-abb73(7)*abb73(24)
      abb73(7)=abb73(7)*spbk7e7
      abb73(7)=2.0_ki*abb73(7)
      abb73(42)=spak4k7*abb73(7)
      abb73(27)=-abb73(9)*abb73(27)
      abb73(10)=abb73(10)*abb73(15)*c2
      abb73(15)=abb73(26)*abb73(10)
      abb73(15)=abb73(15)+abb73(27)
      abb73(15)=abb73(15)*abb73(28)
      abb73(16)=spak4l5*abb73(16)
      abb73(15)=2.0_ki*abb73(16)+abb73(42)+abb73(15)+abb73(41)+abb73(39)
      abb73(15)=spak1k2*abb73(15)
      abb73(8)=abb73(8)-abb73(22)
      abb73(8)=spak2k4*abb73(8)
      abb73(16)=-abb73(25)*abb73(29)
      abb73(22)=abb73(38)*abb73(28)
      abb73(26)=abb73(12)*abb73(24)
      abb73(16)=abb73(22)+abb73(26)+abb73(16)
      abb73(16)=spbl6k3*abb73(16)
      abb73(7)=-spak2k7*abb73(7)
      abb73(21)=abb73(21)*abb73(11)*abb73(6)*spak2e7
      abb73(7)=abb73(7)+2.0_ki*abb73(21)
      abb73(7)=spak1k4*abb73(7)
      abb73(7)=abb73(16)+abb73(8)+abb73(15)+abb73(7)
      abb73(7)=4.0_ki*abb73(7)
      abb73(8)=-abb73(11)*abb73(30)
      abb73(15)=-abb73(37)*abb73(11)
      abb73(16)=abb73(15)*abb73(5)
      abb73(21)=abb73(17)*spbe7k3
      abb73(16)=abb73(16)+abb73(21)+abb73(8)
      abb73(21)=abb73(16)*spak1k4
      abb73(22)=8.0_ki*abb73(21)
      abb73(21)=-4.0_ki*abb73(21)
      abb73(26)=abb73(40)*abb73(31)*abb73(34)
      abb73(27)=abb73(31)*abb73(25)
      abb73(27)=8.0_ki*abb73(27)
      abb73(29)=spbk7l6*spae7k7
      abb73(34)=spbl6l5*spal5e7
      abb73(29)=abb73(34)+abb73(29)
      abb73(29)=abb73(25)*abb73(29)
      abb73(34)=abb73(5)*abb73(36)*abb73(40)
      abb73(31)=spak1k2*abb73(11)*abb73(31)
      abb73(12)=-spbe7l6*abb73(12)
      abb73(12)=abb73(12)+abb73(34)+abb73(31)+abb73(29)+abb73(14)
      abb73(12)=4.0_ki*abb73(12)
      abb73(14)=abb73(25)*abb73(30)
      abb73(14)=abb73(14)-abb73(19)
      abb73(19)=8.0_ki*abb73(14)
      abb73(14)=-4.0_ki*abb73(14)
      abb73(8)=-spak3k4*abb73(8)
      abb73(25)=abb73(11)*abb73(32)
      abb73(15)=-abb73(15)*abb73(28)
      abb73(24)=-abb73(17)*abb73(24)
      abb73(8)=abb73(15)+abb73(24)+abb73(25)+abb73(8)
      abb73(8)=4.0_ki*abb73(8)
      abb73(15)=-4.0_ki*spak2k4*abb73(16)
      abb73(16)=-4.0_ki*abb73(17)
      abb73(11)=4.0_ki*abb73(11)
      abb73(17)=spae7k7*abb73(11)
      abb73(11)=-spal5e7*abb73(11)
      abb73(9)=abb73(9)*abb73(36)
      abb73(10)=-abb73(35)*abb73(10)
      abb73(9)=abb73(10)+abb73(9)
      abb73(9)=4.0_ki*abb73(5)*abb73(9)
      R2d73=0.0_ki
      rat2 = rat2 + R2d73
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='73' value='", &
          & R2d73, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd73h1
