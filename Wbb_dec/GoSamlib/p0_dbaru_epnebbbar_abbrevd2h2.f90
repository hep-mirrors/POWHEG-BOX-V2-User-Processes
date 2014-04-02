module     p0_dbaru_epnebbbar_abbrevd2h2
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(43), public :: abb2
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
      abb2(4)=spbl5k2**(-1)
      abb2(5)=spak2l6**(-1)
      abb2(6)=c1*abb2(2)
      abb2(6)=c2-abb2(6)
      abb2(7)=gW*TR
      abb2(6)=i_*abb2(6)*abb2(3)*CVDU*abb2(7)**2
      abb2(7)=-spak1k4*abb2(6)
      abb2(8)=abb2(1)*abb2(2)
      abb2(9)=4.0_ki*abb2(8)
      abb2(10)=abb2(7)*abb2(9)
      abb2(11)=spak1l5*es12
      abb2(12)=abb2(11)*spbk3k1
      abb2(13)=spak4l5*spbk4k3
      abb2(14)=abb2(13)*es12
      abb2(12)=abb2(12)+abb2(14)
      abb2(12)=spbl6k2*abb2(12)*abb2(10)
      abb2(14)=spbl6k2*spak4l5
      abb2(15)=-abb2(14)*abb2(6)
      abb2(16)=8.0_ki*abb2(8)
      abb2(17)=abb2(15)*abb2(16)
      abb2(18)=spbk3k2*spak1k2
      abb2(19)=abb2(18)*abb2(17)
      abb2(20)=abb2(6)*abb2(16)
      abb2(21)=mB**2*abb2(4)*abb2(5)
      abb2(22)=abb2(20)*abb2(21)
      abb2(23)=spbk2k1*spbk4k3*spak1k4**2*abb2(22)
      abb2(24)=abb2(21)*spbk3k2
      abb2(25)=-abb2(24)*abb2(7)
      abb2(26)=16.0_ki*abb2(8)
      abb2(27)=abb2(26)*abb2(25)
      abb2(28)=spak1l5*spbk3k1
      abb2(13)=abb2(13)+abb2(28)
      abb2(13)=abb2(13)*spak1k4*spbl6k2
      abb2(28)=abb2(14)*abb2(18)
      abb2(13)=abb2(13)-abb2(28)
      abb2(13)=-abb2(13)*abb2(20)
      abb2(8)=-32.0_ki*abb2(25)*abb2(8)
      abb2(28)=abb2(24)*spak1k2
      abb2(29)=spak1l5*spbl6k3
      abb2(28)=abb2(28)+abb2(29)
      abb2(30)=abb2(28)*spak3k4
      abb2(14)=abb2(14)*spak1k2
      abb2(14)=abb2(14)+abb2(30)
      abb2(14)=abb2(14)*spbk3k2
      abb2(29)=abb2(29)*spbk2k1
      abb2(30)=spak1l5*spbl6k1
      abb2(31)=abb2(30)*spbk3k2
      abb2(29)=abb2(29)+abb2(31)
      abb2(29)=abb2(29)*spak1k4
      abb2(14)=abb2(14)-abb2(29)
      abb2(29)=abb2(6)*abb2(9)
      abb2(14)=-abb2(14)*abb2(29)
      abb2(25)=abb2(25)*abb2(16)
      abb2(31)=-spak1k2*spak3k4*spbk3k2**2*abb2(29)
      abb2(32)=abb2(7)*abb2(16)
      abb2(33)=-spbk3k2*abb2(32)
      abb2(34)=spak1k4*spbk4k3
      abb2(34)=abb2(34)-abb2(18)
      abb2(34)=abb2(34)*spbl6k1
      abb2(35)=spbl6k3*es12
      abb2(34)=abb2(34)-abb2(35)
      abb2(34)=abb2(34)*spak1k4
      abb2(35)=spak3k4*abb2(18)*spbl6k3
      abb2(34)=abb2(34)+abb2(35)
      abb2(34)=-abb2(34)*abb2(29)
      abb2(7)=-spbl6k3*abb2(7)
      abb2(35)=abb2(7)*abb2(16)
      abb2(7)=abb2(7)*abb2(9)
      abb2(36)=spak1k2*spbk4k2
      abb2(37)=spak4l5*abb2(36)
      abb2(11)=abb2(37)+abb2(11)
      abb2(11)=abb2(11)*spbl6k2
      abb2(37)=spbl6k2*spak3l5
      abb2(18)=abb2(37)*abb2(18)
      abb2(11)=abb2(11)+abb2(18)
      abb2(11)=abb2(11)*abb2(29)
      abb2(18)=abb2(24)*spak1k3
      abb2(38)=abb2(21)*spak1k4
      abb2(39)=abb2(38)*spbk4k2
      abb2(18)=abb2(18)+abb2(39)
      abb2(18)=-abb2(18)*abb2(20)
      abb2(39)=abb2(6)*spbl6k2*spak1l5
      abb2(40)=abb2(39)*abb2(16)
      abb2(39)=-abb2(39)*abb2(9)
      abb2(41)=spbl6k3*spak1k3
      abb2(42)=spbl6k2*spak1k2
      abb2(43)=spak1k4*spbl6k4
      abb2(41)=abb2(43)+abb2(41)+abb2(42)
      abb2(41)=-abb2(41)*abb2(29)
      abb2(42)=abb2(21)*es12
      abb2(30)=abb2(42)-abb2(30)
      abb2(10)=abb2(10)*abb2(30)
      abb2(42)=spbk4k3*abb2(10)
      abb2(28)=-abb2(28)*abb2(6)
      abb2(16)=abb2(28)*abb2(16)
      abb2(28)=abb2(28)*abb2(9)
      abb2(21)=abb2(21)*abb2(36)
      abb2(36)=spak1l5*spbl6k4
      abb2(21)=abb2(36)+abb2(21)
      abb2(21)=abb2(21)*abb2(29)
      abb2(9)=abb2(15)*abb2(9)
      abb2(15)=abb2(24)*spak3k4
      abb2(24)=abb2(38)*spbk2k1
      abb2(15)=abb2(15)+abb2(24)
      abb2(15)=-abb2(15)*abb2(20)
      abb2(20)=spbk3k2*spak3k4
      abb2(24)=spak1k4*spbk2k1
      abb2(20)=abb2(20)+abb2(24)
      abb2(20)=abb2(20)*abb2(29)
      abb2(24)=-abb2(37)*abb2(29)
      abb2(10)=spbk3k1*abb2(10)
      abb2(6)=abb2(26)*abb2(38)*spbk3k1*abb2(6)
      abb2(26)=spbk3k1*abb2(32)
      abb2(30)=abb2(30)*abb2(29)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd2h2
