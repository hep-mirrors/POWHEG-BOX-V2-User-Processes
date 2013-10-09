module     p1_dbarc_epnebbbarg_abbrevd73h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(45), public :: abb73
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
      abb73(4)=spbl5k2**(-1)
      abb73(5)=sqrt(mB**2)
      abb73(6)=spak2l5**(-1)
      abb73(7)=abb73(3)**2
      abb73(7)=abb73(7)+1.0_ki
      abb73(8)=TR*gW
      abb73(8)=abb73(8)**2*i_*CVDC*abb73(2)*abb73(1)
      abb73(9)=abb73(8)*abb73(7)
      abb73(10)=spal5e7*abb73(9)
      abb73(11)=abb73(5)*c2
      abb73(12)=abb73(11)*spbk3k2
      abb73(13)=abb73(10)*abb73(12)
      abb73(14)=2.0_ki*c1
      abb73(15)=abb73(14)*abb73(8)*abb73(3)
      abb73(16)=abb73(15)*spal5e7
      abb73(17)=spbk3k2*abb73(5)
      abb73(18)=abb73(16)*abb73(17)
      abb73(13)=abb73(13)-abb73(18)
      abb73(18)=spbe7k3*spak3k4
      abb73(19)=-abb73(18)*spak1l6*abb73(13)
      abb73(8)=abb73(8)*spbe7k2*spal5e7
      abb73(7)=abb73(8)*abb73(7)
      abb73(20)=c2*abb73(7)*mB
      abb73(21)=abb73(7)*abb73(11)
      abb73(20)=abb73(20)-abb73(21)
      abb73(22)=mB-abb73(5)
      abb73(8)=abb73(8)*abb73(3)
      abb73(22)=abb73(8)*abb73(22)
      abb73(23)=abb73(22)*abb73(14)
      abb73(23)=abb73(23)-abb73(20)
      abb73(24)=spak1l6*abb73(23)
      abb73(25)=abb73(24)*spak2k4
      abb73(26)=-spbk3k2*abb73(25)
      abb73(9)=spbe7k2*abb73(9)
      abb73(27)=abb73(4)*mB
      abb73(28)=abb73(27)*spak1l6
      abb73(29)=abb73(28)*c2
      abb73(30)=abb73(9)*abb73(29)
      abb73(15)=abb73(15)*spbe7k2
      abb73(31)=abb73(15)*abb73(28)
      abb73(30)=abb73(30)-abb73(31)
      abb73(31)=-spbk3k2*abb73(30)
      abb73(32)=spbk7k2*spae7k7
      abb73(33)=abb73(32)*spak2k4
      abb73(34)=abb73(31)*abb73(33)
      abb73(19)=-abb73(34)+abb73(19)-abb73(26)
      abb73(26)=abb73(14)*spbk3k2
      abb73(34)=abb73(28)*abb73(26)*abb73(8)
      abb73(29)=abb73(29)*abb73(7)
      abb73(35)=abb73(29)*spbk3k2
      abb73(34)=abb73(34)-abb73(35)
      abb73(34)=abb73(34)*spak3k4
      abb73(35)=abb73(34)*spbl5k3
      abb73(31)=abb73(31)*spak3k4
      abb73(36)=spbk7k3*spae7k7
      abb73(37)=abb73(31)*abb73(36)
      abb73(35)=-abb73(35)+abb73(37)+abb73(19)
      abb73(37)=spbl6k2*abb73(35)
      abb73(10)=abb73(10)*abb73(11)
      abb73(11)=abb73(16)*abb73(5)
      abb73(10)=abb73(10)-abb73(11)
      abb73(11)=spak1k7*spbk7e7
      abb73(16)=spak1l5*spbe7l5
      abb73(11)=abb73(11)-abb73(16)
      abb73(11)=abb73(11)*abb73(10)
      abb73(16)=abb73(4)*mB**2
      abb73(21)=abb73(16)*abb73(21)
      abb73(8)=abb73(8)*abb73(14)
      abb73(14)=abb73(16)*abb73(8)
      abb73(38)=abb73(14)*abb73(5)
      abb73(21)=abb73(21)-abb73(38)
      abb73(38)=abb73(6)*spak1k2
      abb73(21)=abb73(21)*abb73(38)
      abb73(11)=abb73(11)-abb73(21)
      abb73(21)=abb73(11)*spbk3k2**2
      abb73(39)=abb73(27)*c2
      abb73(9)=abb73(9)*abb73(39)
      abb73(15)=abb73(15)*abb73(27)
      abb73(9)=abb73(9)-abb73(15)
      abb73(15)=abb73(9)*spak1e7
      abb73(40)=-abb73(17)**2*abb73(15)
      abb73(21)=abb73(40)+abb73(21)
      abb73(21)=spak3k4*abb73(21)
      abb73(21)=abb73(21)+abb73(37)
      abb73(37)=4.0_ki*spak2l6
      abb73(21)=abb73(21)*abb73(37)
      abb73(35)=-8.0_ki*abb73(35)
      abb73(12)=abb73(7)*abb73(16)*abb73(12)
      abb73(14)=abb73(14)*abb73(17)
      abb73(12)=abb73(12)-abb73(14)
      abb73(12)=abb73(12)*abb73(38)
      abb73(14)=abb73(15)*abb73(5)**2
      abb73(15)=-spbk3k2*abb73(14)
      abb73(12)=abb73(12)-abb73(15)
      abb73(15)=abb73(13)*spbe7l5
      abb73(16)=abb73(15)*spak1l5
      abb73(17)=abb73(13)*spbk7e7
      abb73(38)=abb73(17)*spak1k7
      abb73(16)=abb73(16)-abb73(38)
      abb73(38)=-abb73(16)-abb73(12)
      abb73(40)=-spak1l6*abb73(10)
      abb73(41)=abb73(40)*spbe7k3
      abb73(42)=-spbl6k2*abb73(41)
      abb73(42)=abb73(42)-abb73(38)
      abb73(42)=spak4l6*abb73(42)
      abb73(43)=abb73(30)*spbl6k2
      abb73(44)=spak4l6*abb73(43)
      abb73(31)=-abb73(31)+abb73(44)
      abb73(31)=abb73(31)*abb73(36)
      abb73(28)=abb73(8)*abb73(28)
      abb73(28)=abb73(28)-abb73(29)
      abb73(29)=abb73(28)*spbl6k2
      abb73(44)=spak4l6*abb73(29)
      abb73(34)=abb73(34)+abb73(44)
      abb73(34)=spbl5k3*abb73(34)
      abb73(19)=abb73(34)+abb73(31)+abb73(42)-abb73(19)
      abb73(19)=8.0_ki*abb73(19)
      abb73(31)=abb73(36)*abb73(30)
      abb73(34)=abb73(28)*spbl5k3
      abb73(31)=-abb73(41)+abb73(31)+abb73(34)
      abb73(34)=-spbl6k2*abb73(31)
      abb73(34)=abb73(34)+abb73(38)
      abb73(34)=4.0_ki*spak4l6*abb73(34)
      abb73(38)=-4.0_ki*spak3k4*abb73(38)
      abb73(41)=abb73(9)*spbk3k2
      abb73(42)=abb73(41)*abb73(33)
      abb73(17)=2.0_ki*abb73(17)
      abb73(44)=spak4k7*abb73(17)
      abb73(15)=2.0_ki*abb73(15)
      abb73(45)=-spak4l5*abb73(15)
      abb73(42)=abb73(45)+abb73(44)+abb73(42)
      abb73(42)=spak1k2*abb73(42)
      abb73(20)=-spbk3k2*abb73(20)
      abb73(22)=abb73(22)*abb73(26)
      abb73(20)=abb73(20)+abb73(22)
      abb73(20)=spak1k2*abb73(20)
      abb73(12)=abb73(20)-abb73(16)+abb73(12)
      abb73(12)=spak2k4*abb73(12)
      abb73(16)=spak3k4*abb73(31)
      abb73(20)=-abb73(30)*abb73(33)
      abb73(16)=abb73(20)-abb73(25)+abb73(16)
      abb73(16)=spbl6k3*abb73(16)
      abb73(17)=-spak2k7*abb73(17)
      abb73(15)=spak2l5*abb73(15)
      abb73(15)=abb73(15)+abb73(17)
      abb73(15)=spak1k4*abb73(15)
      abb73(17)=-spbl6k2*spak2k4*abb73(40)
      abb73(20)=spak1k2*spak3k4
      abb73(13)=-abb73(13)*abb73(20)
      abb73(13)=abb73(17)+abb73(13)
      abb73(13)=spbe7k3*abb73(13)
      abb73(17)=abb73(43)*spak2k4
      abb73(22)=-abb73(41)*abb73(20)
      abb73(17)=abb73(17)+abb73(22)
      abb73(17)=spbk7k3*spae7k7*abb73(17)
      abb73(22)=spak2k4*abb73(29)
      abb73(8)=abb73(27)*abb73(8)
      abb73(7)=abb73(7)*abb73(39)
      abb73(7)=abb73(8)-abb73(7)
      abb73(8)=-abb73(20)*spbk3k2*abb73(7)
      abb73(8)=abb73(22)+abb73(8)
      abb73(8)=spbl5k3*abb73(8)
      abb73(8)=abb73(16)+abb73(8)+abb73(17)+abb73(13)+abb73(12)+abb73(42)+abb73&
      &(15)
      abb73(8)=4.0_ki*abb73(8)
      abb73(12)=abb73(7)*spbl5k3
      abb73(13)=abb73(9)*abb73(36)
      abb73(12)=abb73(12)+abb73(13)
      abb73(13)=abb73(10)*spbe7k3
      abb73(13)=abb73(12)+abb73(13)
      abb73(15)=abb73(13)*spak1k4
      abb73(16)=8.0_ki*abb73(15)
      abb73(15)=-4.0_ki*abb73(15)
      abb73(17)=-spbl6k2*abb73(24)
      abb73(20)=-abb73(32)*abb73(43)
      abb73(17)=abb73(17)+abb73(20)
      abb73(17)=abb73(17)*abb73(37)
      abb73(20)=abb73(32)*abb73(30)
      abb73(20)=abb73(20)+abb73(24)
      abb73(20)=8.0_ki*abb73(20)
      abb73(22)=-abb73(9)*abb73(32)
      abb73(22)=-abb73(23)+abb73(22)
      abb73(22)=spak1k2*abb73(22)
      abb73(24)=spbe7l6*abb73(40)
      abb73(25)=-spbk7l6*spae7k7*abb73(30)
      abb73(26)=spbl6l5*abb73(28)
      abb73(11)=abb73(26)+abb73(25)+abb73(24)-abb73(14)+abb73(22)+abb73(11)
      abb73(11)=4.0_ki*abb73(11)
      abb73(14)=-8.0_ki*abb73(31)
      abb73(22)=4.0_ki*abb73(31)
      abb73(12)=-spak3k4*abb73(12)
      abb73(23)=spak2k4*abb73(23)
      abb73(18)=-abb73(10)*abb73(18)
      abb73(24)=abb73(9)*abb73(33)
      abb73(12)=abb73(24)+abb73(23)+abb73(18)+abb73(12)
      abb73(12)=4.0_ki*abb73(12)
      abb73(13)=-4.0_ki*spak2k4*abb73(13)
      abb73(10)=-4.0_ki*abb73(10)
      abb73(9)=-4.0_ki*spae7k7*abb73(9)
      abb73(7)=-4.0_ki*abb73(7)
      R2d73=0.0_ki
      rat2 = rat2 + R2d73
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='73' value='", &
          & R2d73, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd73h0
