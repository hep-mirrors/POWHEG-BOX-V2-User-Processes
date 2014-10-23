module     p0_dbaru_epnebbbarg_abbrevd73h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(36), public :: abb73
   complex(ki), public :: R2d73
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
      abb73(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb73(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb73(3)=NC**(-1)
      abb73(4)=sqrt2**(-1)
      abb73(5)=spak2k7**(-1)
      abb73(6)=sqrt(mB**2)
      abb73(7)=c1*abb73(3)
      abb73(8)=TR*gW
      abb73(8)=CVDU*i_*spbk7l5*abb73(4)*abb73(2)*abb73(1)*abb73(8)**2
      abb73(9)=abb73(7)*abb73(8)
      abb73(9)=2.0_ki*abb73(9)
      abb73(10)=spbk3k2*spak1l6
      abb73(11)=abb73(9)*abb73(10)
      abb73(12)=abb73(3)**2
      abb73(12)=abb73(12)+1.0_ki
      abb73(13)=abb73(8)*abb73(12)
      abb73(14)=spak1l6*c2
      abb73(15)=abb73(13)*abb73(14)
      abb73(16)=abb73(15)*spbk3k2
      abb73(11)=abb73(11)-abb73(16)
      abb73(16)=spbk7k3*spbl6k2
      abb73(17)=-abb73(11)*abb73(16)
      abb73(7)=2.0_ki*abb73(7)
      abb73(8)=abb73(8)*abb73(5)
      abb73(7)=abb73(7)*abb73(8)
      abb73(18)=abb73(7)*spak2l5
      abb73(19)=abb73(18)*abb73(10)
      abb73(8)=abb73(8)*abb73(12)
      abb73(12)=abb73(8)*abb73(14)
      abb73(14)=spak2l5*abb73(12)
      abb73(20)=abb73(14)*spbk3k2
      abb73(20)=abb73(19)-abb73(20)
      abb73(21)=spbl5k3*spbl6k2
      abb73(22)=-abb73(20)*abb73(21)
      abb73(23)=abb73(8)*c2
      abb73(24)=abb73(23)-abb73(7)
      abb73(25)=abb73(6)**2
      abb73(26)=abb73(24)*abb73(25)*spak1k2
      abb73(27)=spbk3k2**2*abb73(26)
      abb73(17)=abb73(27)+abb73(17)+abb73(22)
      abb73(17)=spak2l6*spak3k4*abb73(17)
      abb73(19)=spak2k4*abb73(19)
      abb73(22)=spbk3k2*spak2k4
      abb73(27)=abb73(14)*abb73(22)
      abb73(19)=abb73(19)-abb73(27)
      abb73(19)=abb73(19)*spbl5k2
      abb73(27)=abb73(7)*spak2k4
      abb73(10)=abb73(27)*abb73(10)
      abb73(28)=abb73(22)*abb73(12)
      abb73(10)=abb73(10)-abb73(28)
      abb73(28)=es71+es12-es712
      abb73(10)=abb73(28)*abb73(10)
      abb73(10)=abb73(19)+abb73(10)
      abb73(19)=spak2l6*spbl6k2
      abb73(29)=abb73(19)*abb73(10)
      abb73(17)=abb73(29)+abb73(17)
      abb73(17)=8.0_ki*abb73(17)
      abb73(20)=abb73(20)*spbl5k3
      abb73(11)=abb73(11)*spbk7k3
      abb73(11)=abb73(20)+abb73(11)
      abb73(11)=abb73(11)*spak3k4
      abb73(10)=abb73(11)-abb73(10)
      abb73(11)=16.0_ki*abb73(10)
      abb73(20)=spak1l6*abb73(18)
      abb73(20)=abb73(14)-abb73(20)
      abb73(29)=abb73(20)*spbl5k3
      abb73(30)=abb73(29)*spbl6k2
      abb73(31)=abb73(9)*spak1l6
      abb73(31)=abb73(31)-abb73(15)
      abb73(32)=abb73(16)*abb73(31)
      abb73(26)=-spbk3k2*abb73(26)
      abb73(30)=-abb73(26)+abb73(30)-abb73(32)
      abb73(30)=abb73(30)*spak4l6
      abb73(10)=-abb73(30)+abb73(10)
      abb73(10)=16.0_ki*abb73(10)
      abb73(30)=8.0_ki*abb73(30)
      abb73(26)=8.0_ki*spak3k4*abb73(26)
      abb73(23)=abb73(23)*spak2l5
      abb73(23)=abb73(23)-abb73(18)
      abb73(32)=abb73(23)*spbl5k2
      abb73(25)=abb73(28)+abb73(25)
      abb73(24)=abb73(24)*abb73(25)
      abb73(24)=abb73(32)+abb73(24)
      abb73(22)=-abb73(22)*abb73(24)
      abb73(25)=abb73(23)*spbl5k3
      abb73(32)=abb73(13)*c2
      abb73(32)=abb73(32)-abb73(9)
      abb73(33)=abb73(32)*spbk7k3
      abb73(25)=abb73(25)+abb73(33)
      abb73(33)=spak3k4*spbk3k2*abb73(25)
      abb73(22)=abb73(33)+abb73(22)
      abb73(22)=spak1k2*abb73(22)
      abb73(33)=abb73(31)*spbk7k3
      abb73(29)=abb73(33)-abb73(29)
      abb73(33)=spak3k4*abb73(29)
      abb73(34)=spak2k4*spak1l6
      abb73(35)=abb73(34)*abb73(7)
      abb73(36)=abb73(12)*spak2k4
      abb73(35)=abb73(35)-abb73(36)
      abb73(35)=-abb73(35)*abb73(28)
      abb73(36)=abb73(18)*abb73(34)
      abb73(14)=abb73(14)*spak2k4
      abb73(14)=abb73(36)-abb73(14)
      abb73(36)=-spbl5k2*abb73(14)
      abb73(33)=abb73(33)+abb73(36)+abb73(35)
      abb73(33)=spbl6k3*abb73(33)
      abb73(15)=-spak2k4*abb73(15)
      abb73(34)=abb73(34)*abb73(9)
      abb73(15)=abb73(15)+abb73(34)
      abb73(15)=abb73(15)*abb73(16)
      abb73(14)=abb73(14)*abb73(21)
      abb73(14)=abb73(33)+abb73(15)+abb73(14)+abb73(22)
      abb73(14)=8.0_ki*abb73(14)
      abb73(15)=abb73(25)*spak1k4
      abb73(16)=-16.0_ki*abb73(15)
      abb73(15)=8.0_ki*abb73(15)
      abb73(7)=abb73(7)*spak1l6
      abb73(7)=abb73(7)-abb73(12)
      abb73(7)=abb73(28)*abb73(7)
      abb73(12)=abb73(20)*spbl5k2
      abb73(7)=abb73(7)-abb73(12)
      abb73(12)=-8.0_ki*abb73(19)*abb73(7)
      abb73(7)=16.0_ki*abb73(7)
      abb73(19)=spak1k2*abb73(24)
      abb73(21)=-spbk7l6*abb73(31)
      abb73(20)=-spbl6l5*abb73(20)
      abb73(19)=abb73(20)+abb73(21)+abb73(19)
      abb73(19)=8.0_ki*abb73(19)
      abb73(20)=-16.0_ki*abb73(29)
      abb73(21)=8.0_ki*abb73(29)
      abb73(22)=spak3k4*abb73(25)
      abb73(24)=spak2k4*c2
      abb73(8)=abb73(8)*abb73(24)
      abb73(25)=abb73(8)-abb73(27)
      abb73(25)=-abb73(25)*abb73(28)
      abb73(18)=abb73(18)*spak2k4
      abb73(8)=spak2l5*abb73(8)
      abb73(8)=abb73(18)-abb73(8)
      abb73(18)=spbl5k2*abb73(8)
      abb73(18)=abb73(22)+abb73(18)+abb73(25)
      abb73(18)=8.0_ki*abb73(18)
      abb73(13)=abb73(13)*abb73(24)
      abb73(9)=-spak2k4*abb73(9)
      abb73(9)=abb73(13)+abb73(9)
      abb73(9)=spbk7k3*abb73(9)
      abb73(8)=-spbl5k3*abb73(8)
      abb73(8)=abb73(9)+abb73(8)
      abb73(8)=8.0_ki*abb73(8)
      abb73(9)=8.0_ki*abb73(32)
      abb73(13)=8.0_ki*abb73(23)
      R2d73=0.0_ki
      rat2 = rat2 + R2d73
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='73' value='", &
          & R2d73, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd73h1
