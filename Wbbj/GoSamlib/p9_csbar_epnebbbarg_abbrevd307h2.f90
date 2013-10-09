module     p9_csbar_epnebbbarg_abbrevd307h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(47), public :: abb307
   complex(ki), public :: R2d307
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
      abb307(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb307(2)=1.0_ki/(es34+es567-es12-es234)
      abb307(3)=sqrt(mB**2)
      abb307(4)=NC**(-1)
      abb307(5)=spbl5k2**(-1)
      abb307(6)=spak2l6**(-1)
      abb307(7)=spbl6k2**(-1)
      abb307(8)=c1+c3
      abb307(9)=TR*gW
      abb307(9)=abb307(9)**2*i_*CVSC*abb307(2)*abb307(1)
      abb307(10)=abb307(8)*abb307(9)*spbk3k1*abb307(4)
      abb307(11)=spak2e7*abb307(10)
      abb307(12)=c2*abb307(4)**2
      abb307(13)=abb307(9)*spak2e7
      abb307(14)=abb307(13)*abb307(12)
      abb307(15)=abb307(14)*spbk3k1
      abb307(11)=abb307(11)-abb307(15)
      abb307(15)=abb307(3)**2
      abb307(16)=-abb307(15)*abb307(11)
      abb307(17)=spbl6k2*spak2l5
      abb307(18)=abb307(17)*abb307(16)
      abb307(19)=abb307(6)*spak2l5
      abb307(20)=abb307(11)*abb307(19)
      abb307(21)=mB*abb307(3)
      abb307(22)=abb307(21)**2*abb307(20)
      abb307(18)=abb307(18)+abb307(22)
      abb307(22)=spbe7k3*spak3k4
      abb307(23)=spbe7k1*spak1k4
      abb307(22)=abb307(22)-abb307(23)
      abb307(18)=abb307(18)*abb307(22)
      abb307(23)=abb307(5)*spbk7e7
      abb307(24)=abb307(6)*abb307(23)*abb307(11)*abb307(3)*mB**3
      abb307(25)=-abb307(21)*abb307(11)
      abb307(26)=spbl6k2*abb307(5)
      abb307(27)=abb307(26)*spbk7e7
      abb307(28)=abb307(25)*abb307(27)
      abb307(24)=abb307(24)+abb307(28)
      abb307(29)=-spbk3k2*spak3k4
      abb307(30)=-spbk2k1*spak1k4
      abb307(29)=abb307(30)+abb307(29)
      abb307(24)=spak2k7*abb307(24)*abb307(29)
      abb307(18)=abb307(24)+abb307(18)
      abb307(18)=4.0_ki*abb307(18)
      abb307(24)=spbe7l6*spak4l5
      abb307(29)=abb307(16)*abb307(24)
      abb307(30)=abb307(28)*spak4k7
      abb307(29)=abb307(29)-abb307(30)
      abb307(29)=8.0_ki*abb307(29)
      abb307(12)=abb307(9)*abb307(12)
      abb307(30)=abb307(12)*spbk3k1
      abb307(10)=-abb307(30)+abb307(10)
      abb307(30)=abb307(21)*abb307(10)
      abb307(31)=abb307(30)*abb307(26)
      abb307(32)=abb307(31)*spak2k4
      abb307(32)=16.0_ki*abb307(32)
      abb307(33)=abb307(10)*spak2l5
      abb307(34)=abb307(33)*spak3k4
      abb307(35)=mB**2
      abb307(19)=abb307(19)*abb307(7)*abb307(35)*abb307(10)
      abb307(36)=spak3k4*abb307(19)
      abb307(34)=abb307(34)-abb307(36)
      abb307(37)=abb307(34)*spbk7k3
      abb307(38)=abb307(33)*spak1k4
      abb307(19)=spak1k4*abb307(19)
      abb307(38)=abb307(38)-abb307(19)
      abb307(39)=abb307(38)*spbk7k1
      abb307(37)=abb307(37)-abb307(39)
      abb307(39)=spae7k7*spbe7l6
      abb307(40)=-8.0_ki*abb307(39)*abb307(37)
      abb307(30)=abb307(30)*abb307(5)
      abb307(30)=abb307(30)-abb307(33)
      abb307(33)=spak3k4*abb307(30)
      abb307(33)=abb307(33)+abb307(36)
      abb307(33)=spbl6k3*abb307(33)
      abb307(30)=-spak1k4*abb307(30)
      abb307(19)=abb307(30)-abb307(19)
      abb307(19)=spbl6k1*abb307(19)
      abb307(19)=abb307(33)+abb307(19)
      abb307(19)=16.0_ki*abb307(19)
      abb307(20)=abb307(35)*abb307(20)
      abb307(17)=abb307(11)*abb307(17)
      abb307(17)=abb307(20)-abb307(17)
      abb307(17)=-4.0_ki*abb307(17)*abb307(22)
      abb307(20)=8.0_ki*abb307(11)
      abb307(30)=abb307(20)*abb307(24)
      abb307(33)=8.0_ki*abb307(10)
      abb307(35)=spbk7e7*spak4l5
      abb307(36)=abb307(35)*spak2k7
      abb307(41)=abb307(36)*abb307(33)
      abb307(42)=spbl6k3*spak3k4
      abb307(43)=spbl6k1*spak1k4
      abb307(42)=abb307(42)-abb307(43)
      abb307(42)=4.0_ki*abb307(42)
      abb307(43)=-abb307(16)*abb307(42)
      abb307(44)=-abb307(11)*abb307(42)
      abb307(20)=abb307(20)*abb307(35)
      abb307(23)=-abb307(25)*abb307(23)*abb307(42)
      abb307(8)=abb307(8)*abb307(4)
      abb307(13)=abb307(13)*abb307(8)
      abb307(13)=abb307(13)-abb307(14)
      abb307(14)=spak4k7*abb307(27)*abb307(13)*abb307(21)
      abb307(25)=abb307(13)*abb307(24)
      abb307(15)=abb307(15)*abb307(25)
      abb307(14)=abb307(14)-abb307(15)
      abb307(15)=-spbk4k1*abb307(14)
      abb307(16)=abb307(16)*spbe7l6
      abb307(27)=-spak3l5*abb307(16)
      abb307(42)=spak3k7*abb307(28)
      abb307(15)=abb307(42)+abb307(27)+abb307(15)
      abb307(15)=4.0_ki*abb307(15)
      abb307(8)=abb307(9)*abb307(8)
      abb307(8)=abb307(8)-abb307(12)
      abb307(9)=abb307(26)*spak2k4*abb307(8)*abb307(21)
      abb307(12)=spbk4k1*abb307(9)
      abb307(21)=spak2k3*abb307(31)
      abb307(12)=abb307(12)+abb307(21)
      abb307(12)=8.0_ki*abb307(12)
      abb307(21)=-spbk4k1*abb307(25)
      abb307(26)=abb307(11)*spak3l5
      abb307(27)=-spbe7l6*abb307(26)
      abb307(21)=abb307(21)+abb307(27)
      abb307(21)=4.0_ki*abb307(21)
      abb307(27)=abb307(8)*spbk4k1
      abb307(42)=-abb307(36)*abb307(27)
      abb307(45)=abb307(10)*spak3l5
      abb307(46)=spak2k7*spbk7e7
      abb307(47)=-abb307(45)*abb307(46)
      abb307(42)=abb307(42)+abb307(47)
      abb307(42)=4.0_ki*abb307(42)
      abb307(13)=abb307(13)*abb307(35)
      abb307(35)=spbk4k1*abb307(13)
      abb307(26)=spbk7e7*abb307(26)
      abb307(26)=abb307(35)+abb307(26)
      abb307(26)=4.0_ki*abb307(26)
      abb307(14)=spbk4k3*abb307(14)
      abb307(16)=spak1l5*abb307(16)
      abb307(28)=-spak1k7*abb307(28)
      abb307(14)=abb307(28)+abb307(16)+abb307(14)
      abb307(14)=4.0_ki*abb307(14)
      abb307(9)=-spbk4k3*abb307(9)
      abb307(16)=spak1k2*abb307(31)
      abb307(9)=abb307(9)+abb307(16)
      abb307(9)=8.0_ki*abb307(9)
      abb307(16)=spbk4k3*abb307(25)
      abb307(11)=abb307(11)*spak1l5
      abb307(25)=spbe7l6*abb307(11)
      abb307(16)=abb307(16)+abb307(25)
      abb307(16)=4.0_ki*abb307(16)
      abb307(8)=abb307(8)*spbk4k3
      abb307(25)=abb307(36)*abb307(8)
      abb307(28)=abb307(10)*spak1l5
      abb307(31)=abb307(28)*abb307(46)
      abb307(25)=abb307(25)+abb307(31)
      abb307(25)=4.0_ki*abb307(25)
      abb307(13)=-spbk4k3*abb307(13)
      abb307(11)=-spbk7e7*abb307(11)
      abb307(11)=abb307(13)+abb307(11)
      abb307(11)=4.0_ki*abb307(11)
      abb307(13)=abb307(24)*spae7k7
      abb307(24)=abb307(13)*abb307(33)
      abb307(31)=-abb307(13)*abb307(27)
      abb307(35)=abb307(39)*abb307(10)
      abb307(36)=-spak3l5*abb307(35)
      abb307(31)=abb307(31)+abb307(36)
      abb307(31)=4.0_ki*abb307(31)
      abb307(13)=abb307(13)*abb307(8)
      abb307(36)=spak1l5*abb307(35)
      abb307(13)=abb307(13)+abb307(36)
      abb307(13)=4.0_ki*abb307(13)
      abb307(36)=4.0_ki*spbe7k2*spae7k7*abb307(37)
      abb307(34)=-spbk3k2*abb307(34)
      abb307(37)=-spbk2k1*abb307(38)
      abb307(34)=abb307(34)+abb307(37)
      abb307(34)=8.0_ki*abb307(34)
      abb307(37)=abb307(10)*spak4l5
      abb307(37)=16.0_ki*abb307(37)
      abb307(10)=-4.0_ki*abb307(10)*spae7k7*abb307(22)
      abb307(22)=abb307(33)*spak3k4
      abb307(33)=abb307(33)*spak1k4
      abb307(27)=spak4l5*abb307(27)
      abb307(27)=abb307(27)+abb307(45)
      abb307(27)=8.0_ki*abb307(27)
      abb307(8)=-spak4l5*abb307(8)
      abb307(8)=abb307(8)-abb307(28)
      abb307(8)=8.0_ki*abb307(8)
      abb307(28)=4.0_ki*abb307(35)
      abb307(35)=spak3k4*abb307(28)
      abb307(28)=-spak1k4*abb307(28)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd307h2
