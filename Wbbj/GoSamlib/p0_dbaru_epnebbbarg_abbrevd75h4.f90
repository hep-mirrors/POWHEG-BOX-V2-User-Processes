module     p0_dbaru_epnebbbarg_abbrevd75h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(34), public :: abb75
   complex(ki), public :: R2d75
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
      abb75(1)=1.0_ki/(-mB**2+es67)
      abb75(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb75(3)=sqrt(mB**2)
      abb75(4)=NC**(-1)
      abb75(5)=sqrt2**(-1)
      abb75(6)=spbk7k2**(-1)
      abb75(7)=-NC+2.0_ki*abb75(4)
      abb75(8)=TR*gW
      abb75(8)=abb75(5)*i_*CVDU*abb75(3)*abb75(2)*abb75(1)*abb75(8)**2
      abb75(9)=abb75(8)*c3
      abb75(10)=-abb75(7)*abb75(9)*spal6k7
      abb75(11)=c2*abb75(4)**2
      abb75(12)=abb75(11)*abb75(8)
      abb75(13)=spal6k7*abb75(12)
      abb75(10)=abb75(13)+abb75(10)
      abb75(13)=abb75(10)*spak1k7
      abb75(14)=spbk3k2**2
      abb75(15)=abb75(14)*abb75(13)
      abb75(16)=abb75(10)*spbl6k2
      abb75(14)=abb75(14)*abb75(6)
      abb75(17)=abb75(14)*spak1l6
      abb75(18)=abb75(17)*abb75(16)
      abb75(19)=abb75(10)*abb75(14)
      abb75(20)=spbl5k2*spak1l5
      abb75(21)=abb75(19)*abb75(20)
      abb75(15)=abb75(21)+abb75(15)+abb75(18)
      abb75(18)=spak2l5*spak3k4
      abb75(18)=8.0_ki*abb75(18)
      abb75(15)=abb75(15)*abb75(18)
      abb75(21)=spak1l5*spak3k4
      abb75(19)=-16.0_ki*abb75(19)*abb75(21)
      abb75(22)=abb75(6)*spbk3k2
      abb75(23)=-abb75(22)*spak1l6*abb75(16)
      abb75(24)=-spbk3k2*abb75(13)
      abb75(23)=abb75(23)+abb75(24)
      abb75(24)=abb75(23)*spak4l5
      abb75(25)=abb75(10)*abb75(22)
      abb75(26)=abb75(25)*abb75(20)
      abb75(27)=-spak4l5*abb75(26)
      abb75(28)=abb75(27)-abb75(24)
      abb75(28)=16.0_ki*abb75(28)
      abb75(24)=-abb75(27)-abb75(24)
      abb75(24)=8.0_ki*abb75(24)
      abb75(27)=abb75(9)*abb75(7)
      abb75(17)=-abb75(17)*abb75(27)
      abb75(29)=spak1l6*abb75(12)
      abb75(30)=abb75(14)*abb75(29)
      abb75(17)=abb75(30)+abb75(17)
      abb75(17)=abb75(17)*abb75(18)
      abb75(8)=abb75(11)*abb75(22)*abb75(8)
      abb75(9)=abb75(9)*abb75(22)
      abb75(11)=-abb75(7)*abb75(9)
      abb75(11)=abb75(11)+abb75(8)
      abb75(11)=spak1l6*abb75(11)
      abb75(22)=16.0_ki*abb75(11)
      abb75(30)=spak4l5*abb75(22)
      abb75(11)=8.0_ki*abb75(11)
      abb75(31)=spak4l5*abb75(11)
      abb75(12)=abb75(12)-abb75(27)
      abb75(12)=spak1k7*abb75(12)
      abb75(14)=-abb75(18)*abb75(14)*abb75(12)
      abb75(8)=spak1k7*abb75(8)
      abb75(7)=abb75(7)*abb75(9)*spak1k7
      abb75(7)=-abb75(8)+abb75(7)
      abb75(8)=16.0_ki*abb75(7)
      abb75(9)=spak4l5*abb75(8)
      abb75(7)=8.0_ki*abb75(7)
      abb75(18)=spak4l5*abb75(7)
      abb75(32)=8.0_ki*spak3k4*abb75(23)
      abb75(33)=-spak3k4*abb75(11)
      abb75(34)=-spak3k4*abb75(7)
      abb75(26)=-abb75(26)-abb75(23)
      abb75(26)=spak2k4*abb75(26)
      abb75(21)=-spbl5k3*abb75(25)*abb75(21)
      abb75(21)=abb75(26)+abb75(21)
      abb75(21)=8.0_ki*abb75(21)
      abb75(11)=spak2k4*abb75(11)
      abb75(7)=spak2k4*abb75(7)
      abb75(25)=spak1l6*abb75(6)
      abb75(16)=abb75(25)*abb75(16)
      abb75(10)=abb75(20)*abb75(6)*abb75(10)
      abb75(10)=abb75(10)+abb75(16)+abb75(13)
      abb75(10)=8.0_ki*abb75(10)
      abb75(13)=-abb75(25)*abb75(27)
      abb75(16)=abb75(6)*abb75(29)
      abb75(13)=abb75(16)+abb75(13)
      abb75(13)=8.0_ki*abb75(13)
      abb75(12)=-8.0_ki*abb75(6)*abb75(12)
      abb75(16)=16.0_ki*spak2l5*abb75(23)
      abb75(20)=-spak2l5*abb75(22)
      abb75(8)=-spak2l5*abb75(8)
      R2d75=0.0_ki
      rat2 = rat2 + R2d75
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='75' value='", &
          & R2d75, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd75h4
