module     p0_dbaru_epnebbbarg_abbrevd8h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(42), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=sqrt(mB**2)
      abb8(3)=sqrt2**(-1)
      abb8(4)=es234**(-1)
      abb8(5)=es567**(-1)
      abb8(6)=spak2k7**(-1)
      abb8(7)=spbl5k2**(-1)
      abb8(8)=spbl6k2**(-1)
      abb8(9)=1.0_ki/(es34+es567-es12-es234)
      abb8(10)=i_*CVDU*abb8(6)*abb8(5)*abb8(3)*abb8(1)
      abb8(11)=TR*gW
      abb8(11)=abb8(11)**2
      abb8(12)=abb8(10)*abb8(11)*spbk7k2
      abb8(13)=abb8(12)*abb8(2)
      abb8(14)=c2-c4
      abb8(15)=-spak2k4*abb8(14)
      abb8(16)=spbk3k2*abb8(4)
      abb8(17)=-abb8(15)*abb8(16)*abb8(13)
      abb8(18)=spak3k4*abb8(4)
      abb8(10)=abb8(11)*abb8(10)*abb8(18)
      abb8(11)=abb8(2)*spbk3k2*abb8(10)
      abb8(19)=abb8(11)*spbk7k3
      abb8(20)=c1*NC
      abb8(21)=2.0_ki*abb8(20)
      abb8(22)=c3*NC
      abb8(23)=abb8(21)-abb8(22)
      abb8(24)=abb8(23)-abb8(14)
      abb8(25)=abb8(24)*abb8(19)
      abb8(26)=spak1k4*abb8(9)
      abb8(27)=abb8(13)*abb8(26)
      abb8(23)=abb8(23)*abb8(27)
      abb8(28)=-abb8(27)*abb8(14)
      abb8(23)=abb8(23)+abb8(28)
      abb8(29)=spbk3k1*abb8(23)
      abb8(13)=NC*abb8(13)
      abb8(30)=abb8(13)*abb8(16)*spak2k4
      abb8(31)=abb8(30)*c3
      abb8(30)=abb8(30)*c1
      abb8(25)=abb8(29)+abb8(25)+abb8(31)-2.0_ki*abb8(30)+abb8(17)
      abb8(25)=spak1l5*abb8(25)
      abb8(29)=spak4l5*spbk4k3
      abb8(23)=abb8(23)*abb8(29)
      abb8(23)=abb8(23)+abb8(25)
      abb8(23)=spak2l6*abb8(23)
      abb8(25)=abb8(14)+abb8(20)
      abb8(32)=2.0_ki*abb8(22)
      abb8(33)=-abb8(32)+abb8(25)
      abb8(19)=abb8(33)*abb8(19)
      abb8(34)=abb8(32)-abb8(20)
      abb8(34)=abb8(34)*abb8(27)
      abb8(28)=abb8(34)+abb8(28)
      abb8(34)=-spbk3k1*abb8(28)
      abb8(19)=abb8(34)+abb8(19)+2.0_ki*abb8(31)-abb8(30)-abb8(17)
      abb8(19)=spak1l6*abb8(19)
      abb8(28)=-spak4l6*spbk4k3*abb8(28)
      abb8(19)=abb8(28)+abb8(19)
      abb8(19)=spak2l5*abb8(19)
      abb8(28)=abb8(20)*spak1k2
      abb8(34)=abb8(22)*spak1k2
      abb8(35)=abb8(28)+abb8(34)
      abb8(36)=2.0_ki*spak1k2
      abb8(37)=-abb8(36)*abb8(14)
      abb8(37)=abb8(37)+abb8(35)
      abb8(38)=abb8(37)*spbk3k1
      abb8(39)=abb8(22)*spak2k4
      abb8(40)=abb8(20)*spak2k4
      abb8(41)=abb8(39)+abb8(40)+2.0_ki*abb8(15)
      abb8(41)=abb8(41)*spbk4k3
      abb8(38)=abb8(38)-abb8(41)
      abb8(27)=-abb8(27)*abb8(38)
      abb8(37)=abb8(37)*spbk7k3
      abb8(11)=-abb8(11)*abb8(37)
      abb8(30)=abb8(31)+abb8(30)
      abb8(30)=spak1k2*abb8(30)
      abb8(17)=-abb8(36)*abb8(17)
      abb8(11)=abb8(11)+abb8(17)+abb8(30)+abb8(27)
      abb8(11)=spal5l6*abb8(11)
      abb8(17)=c3-c1
      abb8(27)=spbk3k2**2
      abb8(30)=abb8(27)*abb8(7)
      abb8(13)=abb8(30)*spak1k2*abb8(8)*abb8(13)*abb8(17)*mB**2*abb8(18)
      abb8(11)=2.0_ki*abb8(11)+3.0_ki*abb8(13)+abb8(19)+abb8(23)
      abb8(11)=4.0_ki*abb8(11)
      abb8(13)=-spbk3k1*spak1l5
      abb8(13)=-abb8(29)+abb8(13)
      abb8(12)=abb8(12)*mB
      abb8(17)=abb8(12)*abb8(26)
      abb8(18)=abb8(17)*abb8(8)
      abb8(13)=abb8(13)*abb8(24)*abb8(18)
      abb8(19)=abb8(15)-abb8(39)
      abb8(12)=abb8(12)*abb8(16)
      abb8(16)=abb8(12)*abb8(8)
      abb8(23)=abb8(16)*abb8(19)
      abb8(10)=mB*abb8(10)
      abb8(26)=abb8(10)*abb8(8)
      abb8(29)=abb8(26)*spbk3k2
      abb8(31)=abb8(29)*spbk7k3
      abb8(39)=-abb8(24)*abb8(31)
      abb8(41)=2.0_ki*abb8(8)
      abb8(41)=abb8(41)*abb8(12)
      abb8(42)=abb8(40)*abb8(41)
      abb8(23)=abb8(39)+abb8(42)+abb8(23)
      abb8(23)=spak1l5*abb8(23)
      abb8(13)=abb8(23)+abb8(13)
      abb8(13)=8.0_ki*abb8(13)
      abb8(20)=abb8(36)*abb8(20)
      abb8(14)=-spak1k2*abb8(14)
      abb8(20)=-abb8(34)+abb8(20)+abb8(14)
      abb8(23)=abb8(30)*abb8(10)
      abb8(30)=4.0_ki*abb8(23)*abb8(20)
      abb8(39)=-abb8(22)*abb8(36)
      abb8(14)=abb8(39)+abb8(28)-abb8(14)
      abb8(12)=abb8(7)*abb8(12)
      abb8(28)=abb8(12)*spak3k4
      abb8(14)=4.0_ki*abb8(28)*abb8(14)
      abb8(10)=abb8(7)*abb8(10)*spbk3k2*abb8(37)
      abb8(20)=spbk3k1*abb8(20)
      abb8(21)=-spak2k4*abb8(21)
      abb8(19)=abb8(21)-abb8(19)
      abb8(19)=spbk4k3*abb8(19)
      abb8(19)=abb8(20)+abb8(19)
      abb8(17)=abb8(17)*abb8(7)
      abb8(19)=abb8(17)*abb8(19)
      abb8(20)=-abb8(36)*abb8(40)
      abb8(21)=-spak1k2*abb8(15)
      abb8(34)=spak2k4*abb8(34)
      abb8(20)=abb8(34)+abb8(20)+abb8(21)
      abb8(20)=abb8(12)*abb8(20)
      abb8(10)=abb8(10)+abb8(20)+abb8(19)
      abb8(10)=4.0_ki*abb8(10)
      abb8(18)=abb8(18)*abb8(38)
      abb8(19)=abb8(29)*abb8(37)
      abb8(20)=-spak2k4*abb8(35)
      abb8(21)=-abb8(36)*abb8(15)
      abb8(20)=abb8(21)+abb8(20)
      abb8(20)=abb8(16)*abb8(20)
      abb8(18)=abb8(19)+abb8(20)+abb8(18)
      abb8(18)=4.0_ki*abb8(18)
      abb8(17)=abb8(33)*abb8(17)
      abb8(19)=4.0_ki*abb8(17)*spbk4k3*spak2l6
      abb8(20)=-spak1l5*abb8(27)*abb8(26)
      abb8(21)=-spak1l6*abb8(23)
      abb8(20)=abb8(20)+abb8(21)
      abb8(20)=4.0_ki*abb8(24)*abb8(20)
      abb8(21)=spak2l6*abb8(28)*abb8(33)
      abb8(16)=abb8(16)*abb8(25)
      abb8(22)=-abb8(22)*abb8(41)
      abb8(16)=abb8(22)+abb8(16)
      abb8(16)=spak2l5*spak3k4*abb8(16)
      abb8(16)=abb8(21)+abb8(16)
      abb8(16)=4.0_ki*abb8(16)
      abb8(21)=spak2k4*abb8(32)
      abb8(15)=abb8(21)-abb8(40)+abb8(15)
      abb8(12)=abb8(12)*abb8(15)
      abb8(15)=spbk3k1*abb8(17)
      abb8(12)=abb8(12)+abb8(15)
      abb8(12)=spak2l6*abb8(12)
      abb8(15)=-spak2l5*abb8(33)*abb8(31)
      abb8(12)=abb8(15)+abb8(12)
      abb8(12)=4.0_ki*abb8(12)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd8h0
