module     p0_dbaru_epnebbbar_abbrevd25h0
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(38), public :: abb25
   complex(ki), public :: R2d25
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_color, only: TR
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      implicit none
      abb25(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb25(2)=NC**(-1)
      abb25(3)=es234**(-1)
      abb25(4)=es56**(-1)
      abb25(5)=spbl5k2**(-1)
      abb25(6)=spbl6k2**(-1)
      abb25(7)=CVDU*i_*mB*abb25(4)*abb25(1)
      abb25(8)=TR*gW
      abb25(9)=abb25(8)*abb25(3)
      abb25(9)=abb25(7)*abb25(9)**2
      abb25(10)=abb25(2)**2
      abb25(10)=abb25(10)-1.0_ki
      abb25(11)=abb25(10)*abb25(9)
      abb25(12)=spbk3k2*abb25(11)
      abb25(13)=c1*spak1l5
      abb25(14)=abb25(12)*abb25(13)
      abb25(15)=c2*spbk3k2
      abb25(16)=abb25(9)*abb25(15)
      abb25(17)=abb25(16)*spak1l5
      abb25(18)=abb25(17)*abb25(2)
      abb25(14)=abb25(14)-abb25(18)
      abb25(18)=abb25(14)*abb25(6)
      abb25(19)=c1*spak1l6
      abb25(12)=abb25(12)*abb25(19)
      abb25(16)=abb25(16)*spak1l6
      abb25(20)=abb25(16)*abb25(2)
      abb25(12)=abb25(12)-abb25(20)
      abb25(20)=abb25(12)*abb25(5)
      abb25(21)=abb25(18)+abb25(20)
      abb25(22)=abb25(21)*spbk2k1
      abb25(23)=abb25(17)*abb25(6)
      abb25(24)=abb25(16)*abb25(5)
      abb25(23)=abb25(23)+abb25(24)
      abb25(24)=NC*spbk2k1
      abb25(25)=abb25(23)*abb25(24)
      abb25(22)=abb25(22)+abb25(25)
      abb25(25)=abb25(22)*spak1k4
      abb25(16)=abb25(16)*NC
      abb25(12)=abb25(12)+abb25(16)
      abb25(26)=abb25(12)*spak4l5
      abb25(17)=abb25(17)*NC
      abb25(14)=abb25(14)+abb25(17)
      abb25(27)=abb25(14)*spak4l6
      abb25(17)=abb25(17)*abb25(6)
      abb25(17)=abb25(18)+abb25(17)
      abb25(18)=spbl5k2*spak4l5
      abb25(28)=abb25(17)*abb25(18)
      abb25(16)=abb25(16)*abb25(5)
      abb25(16)=abb25(20)+abb25(16)
      abb25(20)=spbl6k2*spak4l6
      abb25(29)=abb25(16)*abb25(20)
      abb25(25)=abb25(27)-abb25(25)+abb25(26)+abb25(28)+abb25(29)
      abb25(26)=-es23*abb25(25)
      abb25(27)=abb25(9)*spak1l6
      abb25(28)=spbk3k2**2
      abb25(29)=abb25(28)*c2
      abb25(30)=abb25(29)*abb25(27)
      abb25(31)=abb25(30)*abb25(2)
      abb25(28)=-abb25(28)*abb25(11)
      abb25(32)=abb25(28)*abb25(19)
      abb25(31)=abb25(31)+abb25(32)
      abb25(32)=abb25(31)*abb25(5)
      abb25(33)=NC*abb25(5)
      abb25(34)=abb25(30)*abb25(33)
      abb25(34)=abb25(34)-abb25(32)
      abb25(34)=abb25(34)*spbl6k2
      abb25(9)=abb25(9)*spak1l5
      abb25(29)=abb25(29)*abb25(9)
      abb25(35)=abb25(29)*abb25(2)
      abb25(28)=abb25(28)*abb25(13)
      abb25(28)=abb25(35)+abb25(28)
      abb25(35)=abb25(29)*NC
      abb25(34)=abb25(34)+abb25(35)-abb25(28)
      abb25(35)=spak2l6*abb25(34)
      abb25(28)=abb25(28)*abb25(6)
      abb25(36)=NC*abb25(6)
      abb25(37)=abb25(29)*abb25(36)
      abb25(37)=abb25(37)-abb25(28)
      abb25(37)=abb25(37)*spbl5k2
      abb25(38)=abb25(30)*NC
      abb25(31)=abb25(37)+abb25(38)-abb25(31)
      abb25(37)=spak2l5*abb25(31)
      abb25(28)=abb25(32)+abb25(28)
      abb25(30)=abb25(30)*abb25(5)
      abb25(29)=abb25(29)*abb25(6)
      abb25(29)=abb25(30)+abb25(29)
      abb25(30)=-NC*abb25(29)
      abb25(30)=abb25(30)+abb25(28)
      abb25(30)=es12*abb25(30)
      abb25(30)=abb25(30)+abb25(37)+abb25(35)
      abb25(30)=spak3k4*abb25(30)
      abb25(32)=-spak3l6*abb25(34)
      abb25(31)=-spak3l5*abb25(31)
      abb25(28)=-spbk2k1*abb25(28)
      abb25(29)=abb25(29)*abb25(24)
      abb25(28)=abb25(28)+abb25(29)
      abb25(28)=spak1k3*abb25(28)
      abb25(28)=abb25(28)+abb25(31)+abb25(32)
      abb25(28)=spak2k4*abb25(28)
      abb25(7)=abb25(7)*abb25(3)*abb25(8)**2
      abb25(8)=abb25(15)*abb25(7)
      abb25(15)=abb25(8)*spak1l5
      abb25(29)=abb25(2)*abb25(15)
      abb25(7)=abb25(7)*abb25(10)*spbk3k2
      abb25(10)=abb25(7)*abb25(13)
      abb25(10)=abb25(29)-abb25(10)
      abb25(29)=abb25(10)*abb25(6)
      abb25(8)=abb25(8)*spak1l6
      abb25(31)=abb25(2)*abb25(8)
      abb25(7)=abb25(7)*abb25(19)
      abb25(7)=abb25(31)-abb25(7)
      abb25(31)=abb25(7)*abb25(5)
      abb25(32)=abb25(31)+abb25(29)
      abb25(32)=spbk2k1*abb25(32)
      abb25(34)=-abb25(5)*abb25(8)
      abb25(35)=-abb25(6)*abb25(15)
      abb25(34)=abb25(34)+abb25(35)
      abb25(34)=abb25(34)*abb25(24)
      abb25(32)=abb25(32)+abb25(34)
      abb25(32)=spak1k4*abb25(32)
      abb25(34)=NC*abb25(15)
      abb25(10)=abb25(34)-abb25(10)
      abb25(10)=spak4l6*abb25(10)
      abb25(34)=NC*abb25(8)
      abb25(7)=abb25(34)-abb25(7)
      abb25(7)=spak4l5*abb25(7)
      abb25(8)=abb25(33)*abb25(8)
      abb25(8)=-abb25(31)+abb25(8)
      abb25(8)=abb25(8)*abb25(20)
      abb25(15)=abb25(36)*abb25(15)
      abb25(15)=-abb25(29)+abb25(15)
      abb25(15)=abb25(15)*abb25(18)
      abb25(7)=abb25(26)+abb25(15)+abb25(8)+abb25(32)+abb25(10)+abb25(7)+abb25(&
      &28)+abb25(30)
      abb25(7)=4.0_ki*abb25(7)
      abb25(8)=16.0_ki*abb25(25)
      abb25(10)=abb25(16)*spbl6k2
      abb25(10)=abb25(10)+abb25(14)
      abb25(14)=4.0_ki*spak3k4
      abb25(15)=abb25(10)*abb25(14)
      abb25(16)=4.0_ki*spak2k4
      abb25(25)=-abb25(10)*abb25(16)
      abb25(17)=abb25(17)*spbl5k2
      abb25(12)=abb25(17)+abb25(12)
      abb25(17)=abb25(12)*abb25(14)
      abb25(26)=-abb25(12)*abb25(16)
      abb25(27)=abb25(27)*c2
      abb25(28)=abb25(27)*abb25(2)
      abb25(19)=abb25(11)*abb25(19)
      abb25(19)=abb25(28)-abb25(19)
      abb25(28)=abb25(19)*abb25(5)
      abb25(9)=abb25(9)*c2
      abb25(29)=abb25(9)*abb25(2)
      abb25(11)=abb25(11)*abb25(13)
      abb25(11)=abb25(29)-abb25(11)
      abb25(13)=abb25(11)*abb25(6)
      abb25(29)=abb25(28)+abb25(13)
      abb25(29)=abb25(29)*spbk2k1
      abb25(30)=abb25(27)*abb25(5)
      abb25(31)=abb25(9)*abb25(6)
      abb25(30)=abb25(30)+abb25(31)
      abb25(24)=abb25(30)*abb25(24)
      abb25(24)=abb25(29)-abb25(24)
      abb25(24)=abb25(24)*spak1k4
      abb25(29)=abb25(9)*NC
      abb25(11)=abb25(29)-abb25(11)
      abb25(11)=abb25(11)*spak4l6
      abb25(9)=abb25(9)*abb25(36)
      abb25(9)=abb25(9)-abb25(13)
      abb25(9)=abb25(9)*abb25(18)
      abb25(13)=abb25(27)*NC
      abb25(13)=abb25(13)-abb25(19)
      abb25(13)=abb25(13)*spak4l5
      abb25(18)=abb25(27)*abb25(33)
      abb25(18)=abb25(18)-abb25(28)
      abb25(18)=abb25(18)*abb25(20)
      abb25(9)=abb25(24)+abb25(9)+abb25(11)+abb25(13)+abb25(18)
      abb25(11)=-spbk4k2*abb25(9)
      abb25(13)=-spak3l6*abb25(10)
      abb25(18)=-spak3l5*abb25(12)
      abb25(19)=spak1k3*abb25(22)
      abb25(11)=abb25(19)+abb25(18)+abb25(11)+abb25(13)
      abb25(11)=8.0_ki*abb25(11)
      abb25(9)=spbk4k3*abb25(9)
      abb25(10)=spak2l6*abb25(10)
      abb25(12)=spak2l5*abb25(12)
      abb25(13)=-NC*abb25(23)
      abb25(13)=abb25(13)-abb25(21)
      abb25(13)=es12*abb25(13)
      abb25(9)=abb25(13)+abb25(12)+abb25(9)+abb25(10)
      abb25(9)=8.0_ki*abb25(9)
      abb25(10)=abb25(22)*abb25(14)
      abb25(12)=-abb25(22)*abb25(16)
      R2d25=0.0_ki
      rat2 = rat2 + R2d25
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='25' value='", &
          & R2d25, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd25h0
