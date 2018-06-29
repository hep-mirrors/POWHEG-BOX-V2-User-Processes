module     p4_ubaru_epnemumnmubarg_abbrevd465h5
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(36), public :: abb465
   complex(ki), public :: R2d465
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p4_ubaru_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_color, only: TR
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb465(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb465(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb465(3)=NC**(-1)
      abb465(4)=sqrt2**(-1)
      abb465(5)=es234**(-1)
      abb465(6)=es71**(-1)
      abb465(7)=spbk7k2**(-1)
      abb465(8)=1.0_ki/(-es71+es56-es567+es234)
      abb465(9)=spak1k5*abb465(7)
      abb465(10)=NC-abb465(3)
      abb465(11)=-abb465(9)*abb465(10)
      abb465(12)=abb465(6)*abb465(5)
      abb465(13)=gW**4*i_*TR*c1*abb465(4)*abb465(2)*abb465(1)
      abb465(14)=abb465(13)*spak1k7
      abb465(15)=abb465(14)*spbk3k2
      abb465(16)=abb465(12)*abb465(15)
      abb465(17)=abb465(11)*abb465(16)
      abb465(18)=spbk2k1*spak3k4
      abb465(19)=-abb465(17)*abb465(18)
      abb465(20)=abb465(10)*spak5k7
      abb465(16)=-abb465(20)*abb465(16)
      abb465(21)=spak3k4*abb465(16)
      abb465(19)=abb465(21)+abb465(19)
      abb465(19)=spbk6k3*abb465(19)
      abb465(17)=spbk2k1*abb465(17)
      abb465(16)=abb465(17)-abb465(16)
      abb465(17)=spak2k4*spbk6k2
      abb465(16)=abb465(16)*abb465(17)
      abb465(21)=abb465(20)*abb465(5)*abb465(13)*abb465(9)
      abb465(22)=abb465(8)*spak3k4
      abb465(23)=abb465(22)*spbk6k5
      abb465(24)=spbk3k2**2
      abb465(25)=abb465(23)*abb465(24)*abb465(21)
      abb465(26)=abb465(9)*abb465(14)
      abb465(27)=abb465(10)*abb465(24)*abb465(26)
      abb465(22)=abb465(22)*spbk6k1
      abb465(28)=-abb465(22)*abb465(5)*abb465(27)
      abb465(16)=abb465(28)+abb465(25)+abb465(19)+abb465(16)
      abb465(16)=8.0_ki*abb465(16)
      abb465(19)=abb465(5)**2
      abb465(25)=-abb465(19)*abb465(27)
      abb465(27)=abb465(25)*abb465(22)
      abb465(13)=abb465(19)*abb465(13)
      abb465(24)=-abb465(11)*abb465(24)*abb465(13)*spak5k7
      abb465(28)=abb465(24)*abb465(23)
      abb465(27)=abb465(27)+abb465(28)
      abb465(28)=abb465(14)*abb465(19)*abb465(6)
      abb465(9)=abb465(9)*spbk3k2
      abb465(29)=abb465(9)*abb465(28)*abb465(10)
      abb465(30)=abb465(18)*abb465(29)
      abb465(31)=abb465(10)*abb465(28)*spak5k7
      abb465(32)=-spbk3k2*abb465(31)
      abb465(33)=abb465(32)*spak3k4
      abb465(30)=abb465(33)+abb465(30)
      abb465(33)=abb465(30)*spbk6k3
      abb465(33)=abb465(33)+abb465(27)
      abb465(29)=abb465(29)*spbk2k1
      abb465(29)=abb465(29)+abb465(32)
      abb465(32)=abb465(29)*abb465(17)
      abb465(34)=-abb465(32)+abb465(33)
      abb465(34)=32.0_ki*abb465(34)
      abb465(33)=-2.0_ki*abb465(32)+abb465(33)
      abb465(33)=16.0_ki*abb465(33)
      abb465(35)=2.0_ki*spbk6k3
      abb465(36)=-abb465(30)*abb465(35)
      abb465(27)=abb465(36)+abb465(32)-2.0_ki*abb465(27)
      abb465(27)=16.0_ki*abb465(27)
      abb465(26)=-spbk2k1*abb465(26)
      abb465(14)=spak5k7*abb465(14)
      abb465(14)=abb465(26)+abb465(14)
      abb465(10)=abb465(14)*abb465(10)*abb465(12)
      abb465(12)=-abb465(28)*abb465(11)
      abb465(14)=abb465(12)*spbk2k1
      abb465(14)=abb465(14)-abb465(31)
      abb465(26)=es34*abb465(14)
      abb465(10)=abb465(26)+abb465(10)
      abb465(10)=spbk6k2*abb465(10)
      abb465(12)=-abb465(12)*abb465(18)
      abb465(18)=spak3k4*abb465(31)
      abb465(12)=abb465(18)+abb465(12)
      abb465(12)=abb465(12)*abb465(35)
      abb465(9)=abb465(20)*abb465(9)*abb465(13)
      abb465(13)=-abb465(9)*abb465(23)
      abb465(11)=abb465(11)*abb465(15)
      abb465(15)=-abb465(19)*abb465(11)
      abb465(18)=abb465(15)*abb465(22)
      abb465(12)=abb465(18)+abb465(12)+abb465(13)
      abb465(12)=spbk4k2*abb465(12)
      abb465(13)=spbk6k4*abb465(30)
      abb465(10)=abb465(12)+2.0_ki*abb465(10)+abb465(13)
      abb465(10)=8.0_ki*abb465(10)
      abb465(12)=spbk6k5*abb465(8)
      abb465(9)=abb465(9)*abb465(12)
      abb465(13)=abb465(14)*abb465(35)
      abb465(18)=spbk6k1*abb465(8)
      abb465(15)=abb465(15)*abb465(18)
      abb465(9)=abb465(9)+abb465(13)-abb465(15)
      abb465(13)=es23+es34
      abb465(9)=abb465(9)*abb465(13)
      abb465(13)=abb465(12)*spbk3k2*abb465(21)
      abb465(15)=-spbk6k4*spak2k4*abb465(29)
      abb465(14)=spbk4k3*abb465(14)*abb465(17)
      abb465(11)=abb465(18)*abb465(5)*abb465(11)
      abb465(9)=-2.0_ki*abb465(14)+abb465(15)+abb465(13)+abb465(11)+abb465(9)
      abb465(9)=8.0_ki*abb465(9)
      abb465(11)=spbk6k3*abb465(29)
      abb465(12)=abb465(24)*abb465(12)
      abb465(13)=abb465(25)*abb465(18)
      abb465(11)=abb465(13)+abb465(11)+abb465(12)
      abb465(11)=8.0_ki*spak2k4*abb465(11)
      abb465(12)=8.0_ki*spbk6k2*abb465(30)
      R2d465=0.0_ki
      rat2 = rat2 + R2d465
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='465' value='", &
          & R2d465, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd465h5
