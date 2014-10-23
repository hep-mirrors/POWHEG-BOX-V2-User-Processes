module     p0_dbaru_epnebbbarg_abbrevd108h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(48), public :: abb108
   complex(ki), public :: R2d108
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb108(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb108(2)=sqrt(mB**2)
      abb108(3)=NC**(-1)
      abb108(4)=sqrt2**(-1)
      abb108(5)=es234**(-1)
      abb108(6)=es71**(-1)
      abb108(7)=spak2k7**(-1)
      abb108(8)=spbl5k2**(-1)
      abb108(9)=spak2l6**(-1)
      abb108(10)=spbl6k2**(-1)
      abb108(11)=2.0_ki*abb108(3)
      abb108(12)=TR*gW
      abb108(12)=abb108(7)*i_*CVDU*abb108(5)*abb108(4)*abb108(1)*abb108(12)**2
      abb108(13)=abb108(12)*spbk7k1*abb108(6)
      abb108(14)=abb108(13)*c3
      abb108(15)=abb108(11)*abb108(14)
      abb108(16)=abb108(14)*NC
      abb108(17)=abb108(15)-abb108(16)
      abb108(18)=c4*abb108(3)**2
      abb108(13)=abb108(18)*abb108(13)
      abb108(19)=abb108(13)-abb108(17)
      abb108(20)=es12*spak1l5
      abb108(19)=abb108(20)*spbk3k2*abb108(19)
      abb108(21)=abb108(16)+abb108(13)
      abb108(22)=spbk3k2*spak1k2
      abb108(21)=abb108(22)*abb108(21)
      abb108(23)=abb108(15)*abb108(22)
      abb108(23)=abb108(23)-abb108(21)
      abb108(24)=spbl6k2*spal5l6*abb108(23)
      abb108(19)=abb108(24)+abb108(19)
      abb108(19)=spak2k4*abb108(19)
      abb108(24)=spbk7k3*spal5k7
      abb108(25)=spbl6k3*spal5l6
      abb108(26)=spbk3k1*spak1l5
      abb108(24)=abb108(24)+abb108(25)-abb108(26)
      abb108(21)=-spak3k4*abb108(21)
      abb108(15)=spak3k4*abb108(15)
      abb108(25)=abb108(15)*abb108(22)
      abb108(21)=abb108(25)+abb108(21)
      abb108(25)=-abb108(21)*abb108(24)
      abb108(26)=spbk3k2**2
      abb108(27)=abb108(26)*spak1k2
      abb108(28)=abb108(27)*spak3k4
      abb108(29)=abb108(16)*abb108(28)
      abb108(30)=abb108(15)*abb108(27)
      abb108(29)=abb108(29)-abb108(30)
      abb108(31)=mB**2
      abb108(32)=abb108(31)*abb108(8)
      abb108(33)=-abb108(32)*abb108(29)
      abb108(34)=abb108(10)*spak3k4
      abb108(27)=abb108(27)*abb108(34)
      abb108(35)=abb108(27)*abb108(16)
      abb108(30)=abb108(30)*abb108(10)
      abb108(30)=abb108(35)-abb108(30)
      abb108(35)=abb108(10)*abb108(13)*abb108(28)
      abb108(35)=abb108(35)+abb108(30)
      abb108(35)=abb108(9)*spak2l5*abb108(31)*abb108(35)
      abb108(36)=abb108(8)*abb108(13)
      abb108(31)=abb108(36)*abb108(31)
      abb108(37)=-abb108(28)*abb108(31)
      abb108(19)=abb108(35)+abb108(25)+abb108(19)+abb108(37)+abb108(33)
      abb108(25)=spak1l6*abb108(2)
      abb108(19)=abb108(25)*abb108(19)
      abb108(33)=abb108(11)-NC
      abb108(33)=abb108(33)*c3
      abb108(18)=abb108(18)-abb108(33)
      abb108(18)=abb108(18)*abb108(26)
      abb108(12)=abb108(12)*spak1k2
      abb108(26)=abb108(2)*abb108(32)*abb108(12)*abb108(34)*abb108(18)
      abb108(33)=abb108(23)*abb108(25)
      abb108(35)=abb108(33)*spak2k4
      abb108(37)=spal5k7*abb108(35)
      abb108(26)=abb108(26)+abb108(37)
      abb108(26)=spbk7k2*abb108(26)
      abb108(19)=abb108(26)+abb108(19)
      abb108(19)=8.0_ki*abb108(19)
      abb108(26)=abb108(8)*mB
      abb108(29)=-abb108(26)*abb108(29)
      abb108(37)=mB*abb108(13)
      abb108(38)=abb108(37)*abb108(8)
      abb108(28)=abb108(28)*abb108(38)
      abb108(28)=abb108(29)-abb108(28)
      abb108(29)=abb108(28)*spak1l6
      abb108(39)=16.0_ki*abb108(29)
      abb108(40)=abb108(25)*spak4l5
      abb108(23)=abb108(40)*abb108(23)
      abb108(23)=32.0_ki*abb108(23)
      abb108(41)=mB*abb108(30)
      abb108(42)=abb108(27)*abb108(37)
      abb108(41)=abb108(42)+abb108(41)
      abb108(42)=spak1l5*abb108(41)
      abb108(29)=-abb108(29)+abb108(42)
      abb108(29)=16.0_ki*abb108(29)
      abb108(12)=8.0_ki*abb108(12)*spak3k4*abb108(26)*abb108(18)
      abb108(15)=abb108(10)*abb108(15)
      abb108(18)=-abb108(16)*abb108(34)
      abb108(15)=abb108(18)+abb108(15)
      abb108(18)=mB**3
      abb108(42)=abb108(18)*abb108(8)
      abb108(15)=abb108(42)*abb108(15)
      abb108(18)=abb108(36)*abb108(18)
      abb108(36)=-abb108(34)*abb108(18)
      abb108(15)=abb108(36)+abb108(15)
      abb108(15)=8.0_ki*abb108(9)*abb108(15)*abb108(22)**2
      abb108(36)=-abb108(17)*abb108(22)*mB
      abb108(22)=abb108(37)*abb108(22)
      abb108(22)=abb108(22)+abb108(36)
      abb108(36)=-abb108(8)*abb108(22)
      abb108(43)=abb108(36)*spak1k4
      abb108(43)=16.0_ki*abb108(43)
      abb108(21)=8.0_ki*abb108(21)*abb108(25)
      abb108(25)=-8.0_ki*abb108(35)
      abb108(35)=abb108(11)*spak1k2
      abb108(44)=abb108(35)*abb108(14)
      abb108(45)=abb108(16)*spak1k2
      abb108(44)=abb108(44)-abb108(45)
      abb108(13)=abb108(13)*spak1k2
      abb108(13)=abb108(13)-abb108(44)
      abb108(13)=abb108(13)*abb108(40)
      abb108(40)=spbk4k2*abb108(13)
      abb108(46)=-spak3l5*abb108(33)
      abb108(40)=abb108(40)+abb108(46)
      abb108(40)=16.0_ki*abb108(40)
      abb108(44)=-abb108(26)*abb108(44)
      abb108(46)=abb108(38)*spak1k2
      abb108(44)=abb108(46)+abb108(44)
      abb108(46)=abb108(44)*spak1k4
      abb108(47)=-spbk4k2*abb108(46)
      abb108(48)=spak1k3*abb108(36)
      abb108(47)=abb108(47)+abb108(48)
      abb108(47)=8.0_ki*abb108(47)
      abb108(13)=-spbk4k3*abb108(13)
      abb108(33)=spak2l5*abb108(33)
      abb108(13)=abb108(13)+abb108(33)
      abb108(13)=16.0_ki*abb108(13)
      abb108(17)=-abb108(26)*abb108(17)
      abb108(17)=abb108(38)+abb108(17)
      abb108(17)=spbk3k2*abb108(17)*spak1k2**2
      abb108(26)=spbk4k3*abb108(46)
      abb108(17)=abb108(26)+abb108(17)
      abb108(17)=8.0_ki*abb108(17)
      abb108(26)=spal5k7*abb108(41)
      abb108(28)=-spal6k7*abb108(28)
      abb108(26)=abb108(26)+abb108(28)
      abb108(26)=8.0_ki*abb108(26)
      abb108(28)=8.0_ki*spal5l6*abb108(41)
      abb108(33)=abb108(36)*spak3k4
      abb108(33)=8.0_ki*abb108(33)
      abb108(34)=-abb108(34)*abb108(22)
      abb108(38)=8.0_ki*abb108(34)
      abb108(41)=-spal5l6*abb108(22)
      abb108(22)=-abb108(10)*abb108(22)
      abb108(46)=spbk7k2*spal5k7*abb108(22)
      abb108(14)=abb108(14)*abb108(10)
      abb108(11)=-abb108(11)*abb108(14)
      abb108(16)=abb108(10)*abb108(16)
      abb108(11)=abb108(16)+abb108(11)
      abb108(11)=abb108(11)*mB
      abb108(16)=abb108(37)*abb108(10)
      abb108(11)=abb108(16)+abb108(11)
      abb108(11)=abb108(20)*spbk3k2*abb108(11)
      abb108(11)=abb108(11)+abb108(46)+abb108(41)
      abb108(11)=spak2k4*abb108(11)
      abb108(20)=-abb108(34)*abb108(24)
      abb108(24)=-abb108(32)*abb108(30)
      abb108(31)=-abb108(27)*abb108(31)
      abb108(24)=abb108(31)+abb108(24)
      abb108(24)=abb108(2)*abb108(24)
      abb108(30)=-abb108(42)*abb108(30)
      abb108(18)=-abb108(27)*abb108(18)
      abb108(11)=abb108(24)+abb108(18)+abb108(20)+abb108(11)+abb108(30)
      abb108(11)=8.0_ki*abb108(11)
      abb108(18)=abb108(36)*spak4l6
      abb108(20)=abb108(22)*spak4l5
      abb108(18)=abb108(18)-abb108(20)
      abb108(18)=16.0_ki*abb108(18)
      abb108(14)=abb108(35)*abb108(14)
      abb108(20)=abb108(45)*abb108(10)
      abb108(14)=abb108(20)-abb108(14)
      abb108(14)=abb108(14)*mB
      abb108(16)=abb108(16)*spak1k2
      abb108(14)=abb108(14)+abb108(16)
      abb108(14)=abb108(14)*spak4l5
      abb108(16)=abb108(44)*spak4l6
      abb108(14)=abb108(14)-abb108(16)
      abb108(16)=spbk4k2*abb108(14)
      abb108(20)=-spak3l5*abb108(22)
      abb108(24)=spak3l6*abb108(36)
      abb108(16)=abb108(24)+abb108(16)+abb108(20)
      abb108(16)=8.0_ki*abb108(16)
      abb108(14)=-spbk4k3*abb108(14)
      abb108(20)=spak2l5*abb108(22)
      abb108(22)=-spak2l6*abb108(36)
      abb108(14)=abb108(22)+abb108(14)+abb108(20)
      abb108(14)=8.0_ki*abb108(14)
      R2d108=0.0_ki
      rat2 = rat2 + R2d108
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='108' value='", &
          & R2d108, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd108h0
