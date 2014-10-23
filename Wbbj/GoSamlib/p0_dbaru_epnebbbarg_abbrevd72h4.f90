module     p0_dbaru_epnebbbarg_abbrevd72h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(42), public :: abb72
   complex(ki), public :: R2d72
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
      abb72(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb72(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb72(3)=NC**(-1)
      abb72(4)=sqrt2**(-1)
      abb72(5)=spbk7k2**(-1)
      abb72(6)=sqrt(mB**2)
      abb72(7)=spbl6k2**(-1)
      abb72(8)=TR*gW
      abb72(8)=CVDU*i_*spal5k7*abb72(4)*abb72(2)*abb72(1)*abb72(8)**2
      abb72(9)=abb72(8)*spak1l6
      abb72(10)=abb72(9)*abb72(6)
      abb72(11)=abb72(10)*c1
      abb72(12)=spbl5k2*abb72(5)
      abb72(13)=abb72(11)*abb72(12)
      abb72(14)=abb72(12)*abb72(9)
      abb72(15)=mB*c1
      abb72(16)=abb72(14)*abb72(15)
      abb72(17)=abb72(13)-abb72(16)
      abb72(17)=abb72(17)*NC
      abb72(18)=abb72(3)**2
      abb72(19)=abb72(18)*abb72(10)
      abb72(20)=abb72(19)*abb72(12)
      abb72(21)=abb72(18)*mB
      abb72(22)=abb72(21)*abb72(14)
      abb72(20)=abb72(20)-abb72(22)
      abb72(20)=abb72(20)*c2
      abb72(22)=abb72(11)*abb72(3)
      abb72(23)=abb72(22)*abb72(12)
      abb72(24)=abb72(16)*abb72(3)
      abb72(23)=abb72(23)-abb72(24)
      abb72(17)=abb72(17)+abb72(20)-2.0_ki*abb72(23)
      abb72(20)=abb72(17)*spak1l5
      abb72(23)=abb72(21)*abb72(9)
      abb72(23)=abb72(23)-abb72(19)
      abb72(23)=abb72(23)*c2
      abb72(24)=abb72(15)*abb72(9)
      abb72(25)=abb72(11)-abb72(24)
      abb72(25)=abb72(25)*NC
      abb72(26)=abb72(3)*abb72(24)
      abb72(27)=abb72(26)-abb72(22)
      abb72(23)=abb72(25)-abb72(23)+2.0_ki*abb72(27)
      abb72(25)=abb72(23)*spak1k7
      abb72(20)=abb72(20)+abb72(25)
      abb72(25)=spbk2k1*spak1k4
      abb72(27)=abb72(25)*spbk3k1
      abb72(28)=-abb72(27)*abb72(20)
      abb72(29)=abb72(17)*spak4l5
      abb72(30)=abb72(23)*spak4k7
      abb72(29)=abb72(29)+abb72(30)
      abb72(30)=-spbk4k3*abb72(25)*abb72(29)
      abb72(28)=abb72(30)+abb72(28)
      abb72(28)=8.0_ki*abb72(28)
      abb72(30)=abb72(12)*spbk3k2
      abb72(31)=abb72(19)*abb72(30)
      abb72(32)=abb72(14)*spbk3k2
      abb72(33)=abb72(21)*abb72(32)
      abb72(31)=abb72(31)-abb72(33)
      abb72(31)=abb72(31)*c2
      abb72(33)=abb72(11)*abb72(30)
      abb72(34)=abb72(16)*spbk3k2
      abb72(35)=abb72(33)-abb72(34)
      abb72(35)=abb72(35)*NC
      abb72(36)=abb72(22)*abb72(30)
      abb72(37)=abb72(34)*abb72(3)
      abb72(36)=abb72(36)-abb72(37)
      abb72(31)=-abb72(35)-abb72(31)+2.0_ki*abb72(36)
      abb72(35)=abb72(31)*spak4l5
      abb72(19)=abb72(19)*spbk3k2
      abb72(36)=abb72(9)*spbk3k2
      abb72(21)=abb72(21)*abb72(36)
      abb72(19)=abb72(19)-abb72(21)
      abb72(19)=abb72(19)*c2
      abb72(15)=abb72(36)*abb72(15)
      abb72(21)=abb72(11)*spbk3k2
      abb72(37)=abb72(21)-abb72(15)
      abb72(37)=abb72(37)*NC
      abb72(38)=abb72(15)*abb72(3)
      abb72(22)=abb72(22)*spbk3k2
      abb72(22)=abb72(22)-abb72(38)
      abb72(19)=-abb72(19)-abb72(37)+2.0_ki*abb72(22)
      abb72(22)=abb72(19)*spak4k7
      abb72(22)=abb72(35)+abb72(22)
      abb72(35)=16.0_ki*abb72(22)
      abb72(22)=8.0_ki*abb72(22)
      abb72(37)=abb72(7)*mB
      abb72(18)=abb72(18)*c2
      abb72(38)=abb72(37)*abb72(18)
      abb72(9)=abb72(38)*abb72(9)
      abb72(26)=abb72(26)*abb72(7)
      abb72(39)=NC*abb72(7)
      abb72(24)=abb72(39)*abb72(24)
      abb72(9)=-abb72(24)-abb72(9)+2.0_ki*abb72(26)
      abb72(24)=8.0_ki*spak3k4
      abb72(24)=abb72(24)*spbk3k2**2
      abb72(26)=-abb72(9)*abb72(24)
      abb72(40)=2.0_ki*abb72(3)
      abb72(41)=abb72(40)-NC
      abb72(11)=-abb72(11)*abb72(41)
      abb72(10)=abb72(18)*abb72(10)
      abb72(11)=abb72(11)+abb72(10)
      abb72(18)=-abb72(11)*abb72(25)
      abb72(42)=abb72(10)*spbk3k2
      abb72(21)=abb72(41)*abb72(21)
      abb72(21)=abb72(42)-abb72(21)
      abb72(42)=-spak3k4*abb72(21)
      abb72(18)=abb72(18)+abb72(42)
      abb72(18)=8.0_ki*abb72(18)
      abb72(9)=abb72(9)*abb72(25)
      abb72(42)=abb72(40)*abb72(7)
      abb72(39)=abb72(42)-abb72(39)
      abb72(15)=abb72(39)*abb72(15)
      abb72(36)=abb72(38)*abb72(36)
      abb72(15)=abb72(36)-abb72(15)
      abb72(36)=spak3k4*abb72(15)
      abb72(9)=abb72(9)+abb72(36)
      abb72(9)=spbl6k3*abb72(9)
      abb72(36)=spbl6k1*spak1k4
      abb72(15)=-abb72(15)*abb72(36)
      abb72(9)=abb72(9)+abb72(15)
      abb72(9)=8.0_ki*abb72(9)
      abb72(15)=8.0_ki*spak1k4
      abb72(21)=-abb72(21)*abb72(15)
      abb72(14)=abb72(38)*abb72(14)
      abb72(16)=abb72(41)*abb72(16)*abb72(7)
      abb72(14)=abb72(14)-abb72(16)
      abb72(16)=abb72(14)*abb72(24)
      abb72(13)=-abb72(13)*abb72(41)
      abb72(24)=abb72(10)*abb72(12)
      abb72(13)=abb72(13)+abb72(24)
      abb72(24)=-abb72(13)*abb72(25)
      abb72(10)=abb72(10)*abb72(30)
      abb72(33)=abb72(41)*abb72(33)
      abb72(10)=abb72(10)-abb72(33)
      abb72(33)=-spak3k4*abb72(10)
      abb72(24)=abb72(24)+abb72(33)
      abb72(24)=8.0_ki*abb72(24)
      abb72(32)=abb72(38)*abb72(32)
      abb72(33)=abb72(39)*abb72(34)
      abb72(32)=abb72(32)-abb72(33)
      abb72(33)=spak3k4*abb72(32)
      abb72(14)=-abb72(14)*abb72(25)
      abb72(14)=abb72(14)+abb72(33)
      abb72(14)=spbl6k3*abb72(14)
      abb72(32)=-abb72(32)*abb72(36)
      abb72(14)=abb72(14)+abb72(32)
      abb72(14)=8.0_ki*abb72(14)
      abb72(10)=-abb72(10)*abb72(15)
      abb72(20)=spbk2k1*abb72(20)
      abb72(29)=spbk4k2*abb72(29)
      abb72(31)=-spak3l5*abb72(31)
      abb72(19)=-spak3k7*abb72(19)
      abb72(19)=abb72(31)+abb72(19)+abb72(29)+abb72(20)
      abb72(19)=8.0_ki*abb72(19)
      abb72(20)=-8.0_ki*abb72(23)
      abb72(17)=-8.0_ki*abb72(17)
      abb72(23)=spak1k7*abb72(11)
      abb72(29)=spak1l5*abb72(13)
      abb72(23)=abb72(23)+abb72(29)
      abb72(23)=16.0_ki*spbk3k1*abb72(23)
      abb72(29)=abb72(8)*abb72(38)
      abb72(8)=c1*abb72(37)*abb72(8)
      abb72(31)=abb72(8)*NC
      abb72(8)=abb72(40)*abb72(8)
      abb72(8)=-abb72(8)+abb72(29)+abb72(31)
      abb72(12)=-abb72(12)*abb72(8)
      abb72(29)=abb72(12)*spak1l5
      abb72(31)=abb72(8)*spak1k7
      abb72(29)=abb72(29)-abb72(31)
      abb72(27)=abb72(27)*abb72(29)
      abb72(31)=abb72(8)*abb72(25)
      abb72(32)=-spak4k7*abb72(31)
      abb72(25)=abb72(12)*abb72(25)
      abb72(33)=spak4l5*abb72(25)
      abb72(32)=abb72(32)+abb72(33)
      abb72(32)=spbk4k3*abb72(32)
      abb72(11)=-spak4k7*abb72(11)
      abb72(13)=-spak4l5*abb72(13)
      abb72(11)=abb72(11)+abb72(13)
      abb72(11)=spbk3k1*abb72(11)
      abb72(11)=abb72(32)+2.0_ki*abb72(11)+abb72(27)
      abb72(11)=8.0_ki*abb72(11)
      abb72(13)=-abb72(30)*abb72(8)
      abb72(27)=abb72(13)*spak4l5
      abb72(30)=-spbk3k2*abb72(8)
      abb72(32)=abb72(30)*spak4k7
      abb72(27)=abb72(27)+abb72(32)
      abb72(32)=16.0_ki*abb72(27)
      abb72(27)=8.0_ki*abb72(27)
      abb72(33)=spak3k4*abb72(30)
      abb72(31)=-abb72(31)+abb72(33)
      abb72(31)=8.0_ki*abb72(31)
      abb72(33)=spbk3k1*spak1k4
      abb72(33)=16.0_ki*abb72(33)
      abb72(34)=abb72(8)*abb72(33)
      abb72(36)=abb72(30)*abb72(15)
      abb72(37)=spak3k4*abb72(13)
      abb72(25)=abb72(25)+abb72(37)
      abb72(25)=8.0_ki*abb72(25)
      abb72(33)=-abb72(12)*abb72(33)
      abb72(15)=abb72(13)*abb72(15)
      abb72(29)=-spbk2k1*abb72(29)
      abb72(37)=spak4k7*abb72(8)
      abb72(38)=-spak4l5*abb72(12)
      abb72(37)=abb72(37)+abb72(38)
      abb72(37)=spbk4k2*abb72(37)
      abb72(30)=-spak3k7*abb72(30)
      abb72(13)=-spak3l5*abb72(13)
      abb72(13)=abb72(13)+abb72(30)+abb72(37)+abb72(29)
      abb72(13)=8.0_ki*abb72(13)
      abb72(8)=-8.0_ki*abb72(8)
      abb72(12)=8.0_ki*abb72(12)
      R2d72=0.0_ki
      rat2 = rat2 + R2d72
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='72' value='", &
          & R2d72, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd72h4
