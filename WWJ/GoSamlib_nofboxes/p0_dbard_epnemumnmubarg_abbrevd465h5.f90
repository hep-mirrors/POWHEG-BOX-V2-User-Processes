module     p0_dbard_epnemumnmubarg_abbrevd465h5
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(28), public :: abb465
   complex(ki), public :: R2d465
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbard_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_color, only: TR
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb465(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb465(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb465(3)=1.0_ki/(es34+es567-es12-es234)
      abb465(4)=1.0_ki/(es71+es34+es56-es712-es234)
      abb465(5)=NC**(-1)
      abb465(6)=sqrt2**(-1)
      abb465(7)=spbk7k2**(-1)
      abb465(8)=abb465(5)-NC
      abb465(8)=abb465(8)*abb465(7)*c1*gW**4*abb465(3)**2*i_*TR*abb465(6)*abb46&
      &5(4)*abb465(2)*abb465(1)
      abb465(9)=abb465(8)*spak1k4
      abb465(10)=-spbk6k2**2*abb465(9)
      abb465(11)=spbk4k3*spak5k6
      abb465(12)=abb465(10)*abb465(11)
      abb465(13)=abb465(12)*spak4k7
      abb465(14)=spbk3k1*spak5k6
      abb465(10)=abb465(10)*abb465(14)
      abb465(15)=abb465(10)*spak1k7
      abb465(16)=abb465(13)+abb465(15)
      abb465(17)=es12-es34
      abb465(18)=-abb465(17)-es234+es567
      abb465(18)=8.0_ki*abb465(16)*abb465(18)
      abb465(17)=abb465(17)+es23-es123
      abb465(19)=-abb465(17)*spbk6k2*abb465(9)
      abb465(20)=spak5k7*spbk3k2
      abb465(21)=abb465(20)*abb465(19)
      abb465(22)=spbk4k2*spbk3k1
      abb465(23)=abb465(22)*spak5k7
      abb465(8)=abb465(8)*spak1k4**2
      abb465(24)=-spbk6k2*abb465(8)
      abb465(25)=abb465(23)*abb465(24)
      abb465(26)=spbk2k1*spbk4k3
      abb465(27)=abb465(24)*abb465(26)
      abb465(28)=abb465(27)*spak5k7
      abb465(21)=abb465(21)+abb465(25)-abb465(28)
      abb465(21)=32.0_ki*abb465(21)
      abb465(25)=abb465(13)+2.0_ki*abb465(15)
      abb465(25)=16.0_ki*abb465(25)
      abb465(16)=32.0_ki*abb465(16)
      abb465(13)=-2.0_ki*abb465(13)-abb465(15)
      abb465(13)=16.0_ki*abb465(13)
      abb465(15)=spbk3k2*abb465(19)
      abb465(22)=abb465(24)*abb465(22)
      abb465(15)=abb465(15)+abb465(22)-abb465(27)
      abb465(22)=spak2k5*abb465(15)
      abb465(14)=-spbk6k4*abb465(14)
      abb465(11)=-spbk6k1*abb465(11)
      abb465(11)=abb465(11)+abb465(14)
      abb465(11)=abb465(24)*abb465(11)
      abb465(14)=-spbk6k3*spak5k6*abb465(19)
      abb465(11)=abb465(22)+abb465(14)+abb465(11)
      abb465(11)=16.0_ki*abb465(11)
      abb465(14)=spak6k7*abb465(15)
      abb465(9)=-abb465(9)*abb465(17)*abb465(20)
      abb465(17)=abb465(26)*spak5k7
      abb465(17)=abb465(23)-abb465(17)
      abb465(8)=-abb465(17)*abb465(8)
      abb465(8)=abb465(8)+abb465(9)
      abb465(9)=spbk5k2*abb465(8)
      abb465(9)=abb465(14)+abb465(9)
      abb465(9)=16.0_ki*abb465(9)
      abb465(14)=-spak2k7*abb465(15)
      abb465(8)=spbk6k5*abb465(8)
      abb465(8)=abb465(8)+abb465(14)
      abb465(8)=16.0_ki*abb465(8)
      abb465(12)=8.0_ki*abb465(12)
      abb465(14)=-spak3k7*abb465(12)
      abb465(12)=spak1k7*abb465(12)
      abb465(10)=8.0_ki*abb465(10)
      abb465(15)=-spak4k7*abb465(10)
      abb465(10)=-spak3k7*abb465(10)
      R2d465=0.0_ki
      rat2 = rat2 + R2d465
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='465' value='", &
          & R2d465, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd465h5
