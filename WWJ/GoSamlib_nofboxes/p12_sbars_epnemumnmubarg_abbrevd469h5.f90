module     p12_sbars_epnemumnmubarg_abbrevd469h5
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(36), public :: abb469
   complex(ki), public :: R2d469
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb469(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb469(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb469(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb469(4)=NC**(-1)
      abb469(5)=sqrt2**(-1)
      abb469(6)=spbk7k2**(-1)
      abb469(7)=es71**(-1)
      abb469(8)=1.0_ki/(es34+es567-es12-es234)
      abb469(9)=gW**4*abb469(3)**2*i_*TR*c1*abb469(5)*abb469(2)*abb469(1)
      abb469(10)=abb469(9)*spak1k7
      abb469(11)=spak1k4*abb469(6)
      abb469(12)=abb469(10)*abb469(11)
      abb469(13)=abb469(12)*NC
      abb469(14)=abb469(12)*abb469(4)
      abb469(13)=abb469(13)-abb469(14)
      abb469(15)=spbk6k2**2
      abb469(16)=-abb469(15)*abb469(13)
      abb469(17)=abb469(8)*spak5k6
      abb469(18)=abb469(17)*spbk3k1
      abb469(19)=abb469(16)*abb469(18)
      abb469(9)=abb469(11)*abb469(9)
      abb469(20)=NC-abb469(4)
      abb469(21)=abb469(20)*spak4k7
      abb469(15)=-abb469(15)*abb469(9)*abb469(21)
      abb469(17)=abb469(17)*spbk4k3
      abb469(22)=abb469(15)*abb469(17)
      abb469(19)=abb469(19)+abb469(22)
      abb469(22)=abb469(10)*abb469(7)
      abb469(23)=abb469(22)*abb469(4)
      abb469(24)=spak4k7*spbk6k2
      abb469(25)=abb469(23)*abb469(24)
      abb469(26)=NC*spbk6k2
      abb469(27)=abb469(26)*spak4k7
      abb469(28)=abb469(22)*abb469(27)
      abb469(25)=abb469(25)-abb469(28)
      abb469(28)=abb469(25)*spak5k6
      abb469(22)=abb469(22)*NC
      abb469(22)=abb469(22)-abb469(23)
      abb469(23)=-abb469(22)*abb469(11)*spbk6k2
      abb469(29)=spbk2k1*spak5k6
      abb469(30)=abb469(29)*abb469(23)
      abb469(28)=abb469(28)-abb469(30)
      abb469(30)=abb469(28)*spbk6k3
      abb469(30)=abb469(19)-abb469(30)
      abb469(23)=abb469(23)*spbk2k1
      abb469(23)=abb469(23)-abb469(25)
      abb469(25)=spak2k5*spbk3k2
      abb469(31)=abb469(23)*abb469(25)
      abb469(32)=abb469(31)-abb469(30)
      abb469(33)=es234-es34
      abb469(34)=abb469(33)+es712
      abb469(35)=es56-abb469(34)
      abb469(35)=abb469(32)*abb469(35)
      abb469(36)=-es71*abb469(19)
      abb469(12)=abb469(26)*abb469(12)
      abb469(14)=abb469(14)*spbk6k2
      abb469(12)=abb469(12)-abb469(14)
      abb469(14)=abb469(12)*abb469(29)
      abb469(20)=-abb469(20)*spak4k7*abb469(10)*spbk6k2
      abb469(26)=spak5k6*abb469(20)
      abb469(14)=abb469(26)+abb469(14)
      abb469(14)=spbk6k3*abb469(14)
      abb469(26)=-spbk2k1*abb469(12)
      abb469(20)=abb469(26)-abb469(20)
      abb469(20)=abb469(20)*abb469(25)
      abb469(14)=abb469(36)+abb469(14)+abb469(20)+abb469(35)
      abb469(14)=8.0_ki*abb469(14)
      abb469(20)=2.0_ki*abb469(31)-abb469(30)
      abb469(20)=16.0_ki*abb469(20)
      abb469(26)=32.0_ki*abb469(32)
      abb469(30)=2.0_ki*spbk6k3
      abb469(32)=-abb469(28)*abb469(30)
      abb469(19)=abb469(32)-abb469(31)+2.0_ki*abb469(19)
      abb469(19)=16.0_ki*abb469(19)
      abb469(31)=spbk4k3*abb469(8)
      abb469(15)=abb469(15)*abb469(31)
      abb469(32)=spbk3k1*abb469(8)
      abb469(16)=abb469(16)*abb469(32)
      abb469(15)=abb469(16)+abb469(15)
      abb469(15)=spak2k5*abb469(15)
      abb469(16)=abb469(23)*spak2k5
      abb469(23)=spbk6k3*abb469(16)
      abb469(15)=abb469(23)+abb469(15)
      abb469(15)=8.0_ki*abb469(15)
      abb469(23)=-spak4k7*abb469(22)
      abb469(35)=-spak5k6*abb469(23)
      abb469(11)=-abb469(11)*abb469(22)
      abb469(22)=abb469(11)*abb469(29)
      abb469(22)=abb469(35)+abb469(22)
      abb469(22)=abb469(22)*abb469(30)
      abb469(24)=abb469(24)*abb469(4)
      abb469(24)=abb469(24)-abb469(27)
      abb469(9)=abb469(9)*abb469(24)
      abb469(17)=abb469(9)*abb469(17)
      abb469(18)=-abb469(12)*abb469(18)
      abb469(17)=abb469(18)+abb469(22)+abb469(17)
      abb469(17)=spbk5k2*abb469(17)
      abb469(13)=abb469(13)*spbk2k1
      abb469(10)=abb469(10)*abb469(21)
      abb469(10)=abb469(13)-abb469(10)
      abb469(11)=abb469(11)*spbk2k1
      abb469(11)=abb469(11)-abb469(23)
      abb469(13)=-abb469(11)*abb469(34)
      abb469(13)=-abb469(10)+abb469(13)
      abb469(13)=spbk3k2*abb469(13)
      abb469(18)=spbk5k3*abb469(28)
      abb469(13)=abb469(17)+2.0_ki*abb469(13)+abb469(18)
      abb469(13)=8.0_ki*abb469(13)
      abb469(9)=abb469(9)*abb469(31)
      abb469(12)=abb469(12)*abb469(32)
      abb469(9)=abb469(9)-abb469(12)
      abb469(12)=abb469(11)*spbk6k3
      abb469(12)=abb469(12)+abb469(9)
      abb469(17)=-es712*abb469(12)
      abb469(12)=es56*abb469(12)
      abb469(10)=-spbk6k3*abb469(10)
      abb469(18)=spbk6k5*abb469(11)*abb469(25)
      abb469(10)=-abb469(18)+abb469(12)+abb469(10)+abb469(17)
      abb469(11)=abb469(11)*abb469(30)
      abb469(11)=abb469(11)+abb469(9)
      abb469(12)=es345-es671
      abb469(11)=abb469(11)*abb469(12)
      abb469(12)=2.0_ki*es71-abb469(33)
      abb469(9)=abb469(9)*abb469(12)
      abb469(12)=-spbk5k3*abb469(16)
      abb469(9)=abb469(12)+abb469(9)+abb469(11)+2.0_ki*abb469(10)
      abb469(9)=8.0_ki*abb469(9)
      abb469(10)=-8.0_ki*spbk3k2*abb469(28)
      R2d469=0.0_ki
      rat2 = rat2 + R2d469
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='469' value='", &
          & R2d469, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd469h5
