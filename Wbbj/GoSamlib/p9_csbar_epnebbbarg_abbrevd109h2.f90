module     p9_csbar_epnebbbarg_abbrevd109h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(47), public :: abb109
   complex(ki), public :: R2d109
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb109(1)=1.0_ki/(-es71+es712-es12)
      abb109(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb109(3)=1.0_ki/(es34+es567-es12-es234)
      abb109(4)=sqrt(mB**2)
      abb109(5)=NC**(-1)
      abb109(6)=spak2l6**(-1)
      abb109(7)=spbl5k2**(-1)
      abb109(8)=spak2l5**(-1)
      abb109(9)=-spbk7k3*spak3k4
      abb109(10)=spbk7k1*spak1k4
      abb109(9)=abb109(10)+abb109(9)
      abb109(9)=spak2k7*abb109(9)
      abb109(10)=-spbl5k3*spak3k4
      abb109(11)=spbl5k1*spak1k4
      abb109(10)=abb109(11)+abb109(10)
      abb109(10)=spak2l5*abb109(10)
      abb109(9)=abb109(10)+abb109(9)
      abb109(10)=abb109(5)**2
      abb109(10)=abb109(10)+1.0_ki
      abb109(11)=TR*gW
      abb109(11)=abb109(11)**2*spbk7e7*i_*spak2e7*CVSC*abb109(3)*abb109(2)*abb1&
      &09(1)
      abb109(12)=abb109(11)*spbk3k1
      abb109(13)=abb109(12)*abb109(10)
      abb109(14)=mB*abb109(13)
      abb109(15)=spal5k7*c4
      abb109(16)=abb109(15)*abb109(6)
      abb109(17)=abb109(16)*abb109(14)
      abb109(18)=2.0_ki*c3
      abb109(19)=abb109(18)*abb109(12)
      abb109(20)=abb109(19)*spal5k7
      abb109(21)=abb109(5)*mB
      abb109(22)=abb109(20)*abb109(21)
      abb109(23)=abb109(22)*abb109(6)
      abb109(17)=abb109(17)-abb109(23)
      abb109(9)=abb109(17)*abb109(9)
      abb109(23)=abb109(14)*abb109(15)
      abb109(22)=abb109(23)-abb109(22)
      abb109(23)=spbl6k3*spak3k4
      abb109(24)=-spbl6k1*spak1k4
      abb109(23)=abb109(24)+abb109(23)
      abb109(22)=abb109(22)*abb109(23)
      abb109(9)=abb109(9)+abb109(22)
      abb109(9)=4.0_ki*abb109(4)*abb109(9)
      abb109(22)=2.0_ki*abb109(4)
      abb109(23)=abb109(22)*spak2k4
      abb109(24)=abb109(23)*abb109(17)
      abb109(19)=abb109(19)*abb109(21)*abb109(7)
      abb109(25)=abb109(7)*c4
      abb109(14)=abb109(25)*abb109(14)
      abb109(14)=abb109(19)-abb109(14)
      abb109(19)=spbl6k2*abb109(4)
      abb109(26)=abb109(19)*spak4k7
      abb109(27)=abb109(26)*abb109(14)
      abb109(24)=abb109(24)+abb109(27)
      abb109(24)=8.0_ki*abb109(24)
      abb109(27)=mB**2
      abb109(12)=abb109(12)*abb109(27)
      abb109(28)=abb109(12)*abb109(10)
      abb109(29)=abb109(7)*abb109(6)
      abb109(30)=abb109(29)*c4
      abb109(31)=abb109(28)*abb109(30)
      abb109(18)=abb109(18)*abb109(5)
      abb109(12)=abb109(18)*abb109(12)
      abb109(32)=abb109(12)*abb109(29)
      abb109(31)=abb109(31)-abb109(32)
      abb109(32)=abb109(31)*spak4k7
      abb109(32)=16.0_ki*abb109(32)
      abb109(33)=abb109(31)*spak2k7
      abb109(34)=spbk3k2*spak3k4
      abb109(35)=spbk2k1*spak1k4
      abb109(34)=abb109(34)+abb109(35)
      abb109(35)=abb109(33)*abb109(34)
      abb109(20)=abb109(20)*abb109(5)
      abb109(13)=abb109(13)*abb109(15)
      abb109(13)=abb109(20)-abb109(13)
      abb109(20)=abb109(13)*spak3k4
      abb109(36)=-spbl6k3*abb109(20)
      abb109(37)=abb109(13)*spak1k4
      abb109(38)=spbl6k1*abb109(37)
      abb109(35)=abb109(38)+abb109(36)+abb109(35)
      abb109(35)=4.0_ki*abb109(35)
      abb109(34)=-abb109(14)*abb109(4)*abb109(34)
      abb109(36)=-spbk7k3*abb109(20)
      abb109(38)=spbk7k1*abb109(37)
      abb109(34)=abb109(38)+abb109(36)+abb109(34)
      abb109(34)=4.0_ki*abb109(34)
      abb109(36)=es71+es12-es712
      abb109(36)=abb109(36)*abb109(31)
      abb109(38)=spak3k4*abb109(36)
      abb109(39)=spbk7l6*abb109(20)
      abb109(38)=abb109(39)+abb109(38)
      abb109(38)=4.0_ki*abb109(38)
      abb109(36)=-spak1k4*abb109(36)
      abb109(39)=-spbk7l6*abb109(37)
      abb109(36)=abb109(39)+abb109(36)
      abb109(36)=4.0_ki*abb109(36)
      abb109(39)=-spbl5k3*abb109(20)
      abb109(40)=spbl5k1*abb109(37)
      abb109(39)=abb109(39)+abb109(40)
      abb109(39)=4.0_ki*abb109(39)
      abb109(40)=abb109(28)*c4
      abb109(40)=abb109(12)-abb109(40)
      abb109(40)=spak2k7*abb109(6)*abb109(40)
      abb109(41)=-spak3k4*abb109(40)
      abb109(42)=-spbl6l5*abb109(20)
      abb109(41)=abb109(41)+abb109(42)
      abb109(41)=4.0_ki*abb109(41)
      abb109(40)=spak1k4*abb109(40)
      abb109(42)=spbl6l5*abb109(37)
      abb109(40)=abb109(40)+abb109(42)
      abb109(40)=4.0_ki*abb109(40)
      abb109(42)=8.0_ki*abb109(13)
      abb109(43)=abb109(11)*c3
      abb109(43)=2.0_ki*abb109(43)
      abb109(21)=abb109(43)*abb109(21)
      abb109(44)=spal5k7*abb109(6)*abb109(21)
      abb109(45)=abb109(11)*abb109(10)
      abb109(46)=mB*abb109(45)
      abb109(47)=abb109(46)*abb109(16)
      abb109(44)=abb109(44)-abb109(47)
      abb109(23)=abb109(44)*abb109(23)
      abb109(21)=abb109(7)*abb109(21)
      abb109(25)=abb109(46)*abb109(25)
      abb109(21)=abb109(21)-abb109(25)
      abb109(21)=abb109(21)*abb109(26)
      abb109(21)=abb109(23)-abb109(21)
      abb109(23)=-spbk4k1*abb109(21)
      abb109(14)=abb109(14)*abb109(19)
      abb109(19)=spak3k7*abb109(14)
      abb109(22)=abb109(17)*abb109(22)
      abb109(25)=spak2k3*abb109(22)
      abb109(19)=abb109(25)+abb109(23)+abb109(19)
      abb109(19)=4.0_ki*abb109(19)
      abb109(10)=abb109(30)*abb109(10)
      abb109(18)=abb109(29)*abb109(18)
      abb109(10)=abb109(10)-abb109(18)
      abb109(10)=abb109(10)*abb109(27)*abb109(11)
      abb109(11)=abb109(10)*spak4k7
      abb109(18)=spbk4k1*abb109(11)
      abb109(23)=spak3k7*abb109(31)
      abb109(18)=abb109(18)+abb109(23)
      abb109(18)=8.0_ki*abb109(18)
      abb109(23)=abb109(45)*abb109(15)
      abb109(25)=abb109(5)*abb109(43)*spal5k7
      abb109(23)=abb109(25)-abb109(23)
      abb109(23)=4.0_ki*abb109(23)
      abb109(25)=spbk4k1*abb109(23)
      abb109(26)=8.0_ki*abb109(33)
      abb109(27)=4.0_ki*spak2k7
      abb109(10)=abb109(10)*abb109(27)
      abb109(27)=-spbk4k1*abb109(10)
      abb109(21)=spbk4k3*abb109(21)
      abb109(14)=-spak1k7*abb109(14)
      abb109(22)=spak1k2*abb109(22)
      abb109(14)=abb109(22)+abb109(14)+abb109(21)
      abb109(14)=4.0_ki*abb109(14)
      abb109(11)=-spbk4k3*abb109(11)
      abb109(21)=-spak1k7*abb109(31)
      abb109(11)=abb109(11)+abb109(21)
      abb109(11)=8.0_ki*abb109(11)
      abb109(21)=-spbk4k3*abb109(23)
      abb109(10)=spbk4k3*abb109(10)
      abb109(13)=4.0_ki*abb109(13)
      abb109(22)=4.0_ki*abb109(33)
      abb109(15)=abb109(28)*abb109(15)
      abb109(12)=abb109(12)*spal5k7
      abb109(15)=abb109(15)-abb109(12)
      abb109(15)=abb109(8)*abb109(7)*abb109(15)
      abb109(23)=abb109(15)*spak3k4
      abb109(20)=abb109(23)+abb109(20)
      abb109(23)=-spbk3k2*abb109(20)
      abb109(15)=abb109(15)*spak1k4
      abb109(15)=abb109(15)+abb109(37)
      abb109(29)=-spbk2k1*abb109(15)
      abb109(23)=abb109(23)+abb109(29)
      abb109(23)=4.0_ki*abb109(23)
      abb109(20)=spbl6k2*abb109(20)
      abb109(17)=abb109(17)*abb109(4)
      abb109(16)=abb109(16)*abb109(28)
      abb109(12)=abb109(12)*abb109(6)
      abb109(12)=-abb109(17)+abb109(16)-abb109(12)
      abb109(16)=-spak3k4*abb109(12)
      abb109(16)=abb109(16)+abb109(20)
      abb109(16)=4.0_ki*abb109(16)
      abb109(15)=-spbl6k2*abb109(15)
      abb109(12)=spak1k4*abb109(12)
      abb109(12)=abb109(12)+abb109(15)
      abb109(12)=4.0_ki*abb109(12)
      R2d109=0.0_ki
      rat2 = rat2 + R2d109
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='109' value='", &
          & R2d109, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd109h2
