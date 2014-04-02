module     p0_dbaru_epnebbbar_abbrevd2h3
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(37), public :: abb2
   complex(ki), public :: R2d2
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
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=NC**(-1)
      abb2(3)=es56**(-1)
      abb2(4)=spak2l5**(-1)
      abb2(5)=spak2l6**(-1)
      abb2(6)=c2*abb2(2)
      abb2(7)=c1*abb2(2)**2
      abb2(6)=abb2(6)-abb2(7)
      abb2(7)=TR*gW
      abb2(6)=abb2(6)*abb2(7)**2*CVDU*i_*mB*abb2(3)*abb2(1)
      abb2(7)=-abb2(4)*abb2(6)
      abb2(8)=abb2(7)*spak1k4
      abb2(9)=spbl6k2*spak2k4
      abb2(10)=abb2(8)*abb2(9)
      abb2(11)=-abb2(5)*abb2(6)
      abb2(12)=spbl5k2*spak2k4
      abb2(13)=abb2(11)*abb2(12)
      abb2(14)=abb2(13)*spak1k4
      abb2(10)=abb2(10)+abb2(14)
      abb2(10)=abb2(10)*spbk4k3
      abb2(6)=-spak1k2*abb2(6)
      abb2(14)=-abb2(4)*abb2(6)
      abb2(15)=abb2(14)*spbl6k2
      abb2(6)=-abb2(5)*abb2(6)
      abb2(16)=abb2(6)*spbl5k2
      abb2(15)=abb2(15)+abb2(16)
      abb2(16)=spbk3k1*abb2(15)*spak1k4
      abb2(10)=abb2(10)+abb2(16)
      abb2(16)=-4.0_ki*es12*abb2(10)
      abb2(17)=abb2(6)*spbk3k2
      abb2(12)=abb2(17)*abb2(12)
      abb2(18)=abb2(14)*spbk3k2
      abb2(19)=abb2(18)*abb2(9)
      abb2(12)=abb2(12)+abb2(19)
      abb2(19)=8.0_ki*abb2(12)
      abb2(20)=abb2(17)*spbl5k3
      abb2(21)=abb2(18)*spbl6k3
      abb2(20)=abb2(20)+abb2(21)
      abb2(20)=abb2(20)*spak3k4
      abb2(21)=abb2(8)*spbl6k3
      abb2(22)=abb2(11)*spbl5k3
      abb2(23)=spak1k4*abb2(22)
      abb2(21)=abb2(21)+abb2(23)
      abb2(23)=abb2(21)*es12
      abb2(20)=abb2(20)+abb2(23)
      abb2(23)=spak1k4*abb2(18)
      abb2(24)=spbk4k3*spak1k4**2
      abb2(25)=abb2(7)*abb2(24)
      abb2(23)=abb2(23)+abb2(25)
      abb2(23)=spbl6k1*abb2(23)
      abb2(25)=spak1k4*abb2(17)
      abb2(24)=abb2(11)*abb2(24)
      abb2(24)=abb2(25)+abb2(24)
      abb2(24)=spbl5k1*abb2(24)
      abb2(23)=abb2(24)+abb2(23)-abb2(20)
      abb2(23)=8.0_ki*abb2(23)
      abb2(24)=16.0_ki*abb2(21)
      abb2(10)=-abb2(12)-abb2(10)
      abb2(10)=8.0_ki*abb2(10)
      abb2(18)=spbl6k1*abb2(18)
      abb2(17)=spbl5k1*abb2(17)
      abb2(17)=abb2(17)+abb2(18)
      abb2(17)=spak1k4*abb2(17)
      abb2(12)=abb2(17)+abb2(12)-abb2(20)
      abb2(12)=4.0_ki*abb2(12)
      abb2(17)=-8.0_ki*abb2(21)
      abb2(18)=4.0_ki*abb2(15)
      abb2(20)=es234+es12-es34
      abb2(20)=abb2(20)*abb2(18)
      abb2(21)=abb2(7)*spbl6k3
      abb2(21)=abb2(21)+abb2(22)
      abb2(21)=spak1k3*abb2(21)
      abb2(22)=spbl6k4*abb2(8)
      abb2(25)=abb2(11)*spak1k4
      abb2(26)=spbl5k4*abb2(25)
      abb2(21)=abb2(21)+abb2(26)+abb2(22)-abb2(15)
      abb2(21)=8.0_ki*abb2(21)
      abb2(15)=8.0_ki*abb2(15)
      abb2(22)=abb2(14)*spbl6k1
      abb2(26)=abb2(6)*spbl5k1
      abb2(22)=abb2(22)+abb2(26)
      abb2(26)=spak1k4*abb2(22)
      abb2(26)=4.0_ki*abb2(26)
      abb2(27)=spbk4k3*abb2(26)
      abb2(28)=abb2(14)*spbl6k3
      abb2(29)=abb2(6)*spbl5k3
      abb2(28)=abb2(28)+abb2(29)
      abb2(29)=8.0_ki*abb2(28)
      abb2(28)=4.0_ki*abb2(28)
      abb2(30)=spbl6k4*abb2(14)
      abb2(31)=spbl5k4*abb2(6)
      abb2(30)=abb2(30)+abb2(31)
      abb2(30)=4.0_ki*abb2(30)
      abb2(31)=spak3k4*spbk3k2**2
      abb2(31)=4.0_ki*abb2(31)
      abb2(14)=-abb2(14)*abb2(31)
      abb2(32)=8.0_ki*abb2(8)
      abb2(33)=-spbk3k2*abb2(32)
      abb2(6)=-abb2(6)*abb2(31)
      abb2(31)=8.0_ki*abb2(25)
      abb2(34)=-spbk3k2*abb2(31)
      abb2(9)=abb2(7)*abb2(9)
      abb2(9)=abb2(9)+abb2(13)
      abb2(13)=4.0_ki*abb2(9)
      abb2(9)=8.0_ki*abb2(9)
      abb2(35)=-spbl6k2*abb2(7)
      abb2(36)=-spbl5k2*abb2(11)
      abb2(35)=abb2(35)+abb2(36)
      abb2(35)=4.0_ki*spak2k3*abb2(35)
      abb2(36)=spak3k4*spbk3k2
      abb2(37)=-abb2(7)*abb2(36)
      abb2(8)=-spbk2k1*abb2(8)
      abb2(8)=abb2(37)+abb2(8)
      abb2(8)=4.0_ki*abb2(8)
      abb2(36)=-abb2(11)*abb2(36)
      abb2(25)=-spbk2k1*abb2(25)
      abb2(25)=abb2(36)+abb2(25)
      abb2(25)=4.0_ki*abb2(25)
      abb2(26)=spbk3k1*abb2(26)
      abb2(22)=-4.0_ki*abb2(22)
      abb2(32)=spbk3k1*abb2(32)
      abb2(7)=-4.0_ki*abb2(7)
      abb2(31)=spbk3k1*abb2(31)
      abb2(11)=-4.0_ki*abb2(11)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd2h3
