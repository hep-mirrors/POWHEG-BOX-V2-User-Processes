module     p12_sbars_epnemumnmubarg_abbrevd591h5
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(43), public :: abb591
   complex(ki), public :: R2d591
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
      abb591(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb591(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb591(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb591(4)=NC**(-1)
      abb591(5)=sqrt2**(-1)
      abb591(6)=spbk7k2**(-1)
      abb591(7)=spbk6k3*spak5k6
      abb591(8)=i_*TR*c1*abb591(5)*abb591(4)*gW**4*abb591(3)*abb591(2)
      abb591(9)=abb591(8)*abb591(6)*abb591(1)
      abb591(10)=abb591(9)*spbk3k2
      abb591(11)=spbk6k2*abb591(10)
      abb591(12)=abb591(11)*spak1k7
      abb591(13)=abb591(7)*abb591(12)
      abb591(14)=spbk3k2**2
      abb591(15)=abb591(14)*spak2k5
      abb591(16)=abb591(9)*spak1k7
      abb591(17)=abb591(16)*spbk6k2
      abb591(18)=abb591(15)*abb591(17)
      abb591(13)=abb591(13)-abb591(18)
      abb591(13)=abb591(13)*spak3k4
      abb591(18)=-16.0_ki*abb591(13)
      abb591(19)=abb591(12)*spak4k5
      abb591(20)=abb591(11)*spak1k4
      abb591(21)=abb591(20)*spak5k7
      abb591(19)=abb591(19)+abb591(21)
      abb591(21)=16.0_ki*abb591(19)
      abb591(22)=abb591(21)*es34
      abb591(23)=abb591(9)*spbk6k2
      abb591(24)=spak2k5*spak4k7
      abb591(14)=abb591(24)*abb591(14)*abb591(23)
      abb591(25)=abb591(7)*abb591(11)
      abb591(26)=abb591(25)*spak4k7
      abb591(14)=abb591(14)-abb591(26)
      abb591(14)=abb591(14)*spak1k3
      abb591(8)=spak1k7*abb591(8)*spbk6k2*abb591(1)
      abb591(26)=spbk3k2*abb591(8)
      abb591(27)=abb591(26)*abb591(24)
      abb591(28)=spbk4k2*spbk6k2
      abb591(29)=abb591(9)*spak1k4
      abb591(30)=abb591(28)*abb591(29)
      abb591(8)=abb591(8)+abb591(30)
      abb591(31)=spak4k7*spak5k6
      abb591(32)=abb591(31)*abb591(8)
      abb591(33)=abb591(32)*spbk6k3
      abb591(24)=abb591(24)*spbk4k2
      abb591(34)=abb591(24)*abb591(20)
      abb591(13)=abb591(14)-abb591(13)+abb591(34)+abb591(27)-abb591(33)
      abb591(14)=16.0_ki*abb591(13)
      abb591(19)=32.0_ki*abb591(19)
      abb591(13)=-8.0_ki*abb591(13)
      abb591(27)=abb591(29)*spbk6k2
      abb591(33)=-abb591(27)*abb591(7)
      abb591(34)=spak2k5*abb591(20)
      abb591(33)=abb591(34)+abb591(33)
      abb591(33)=es34*abb591(33)
      abb591(34)=-abb591(7)*abb591(17)
      abb591(35)=spak2k5*abb591(12)
      abb591(34)=abb591(35)+abb591(34)
      abb591(34)=spbk7k3*spak3k4*abb591(34)
      abb591(33)=abb591(33)+abb591(34)
      abb591(33)=8.0_ki*abb591(33)
      abb591(29)=abb591(29)*spak5k7
      abb591(34)=abb591(16)*spak4k5
      abb591(29)=abb591(29)+abb591(34)
      abb591(34)=spbk3k2*abb591(29)
      abb591(35)=abb591(34)*spbk5k2
      abb591(36)=abb591(12)*spak4k6
      abb591(37)=abb591(20)*spak6k7
      abb591(35)=abb591(37)+abb591(36)+abb591(35)
      abb591(36)=8.0_ki*abb591(35)
      abb591(37)=es34*abb591(36)
      abb591(35)=16.0_ki*abb591(35)
      abb591(34)=abb591(34)*spbk6k5
      abb591(38)=abb591(12)*spak2k4
      abb591(39)=abb591(20)*spak2k7
      abb591(34)=-abb591(39)+abb591(38)+abb591(34)
      abb591(38)=8.0_ki*abb591(34)
      abb591(39)=es34*abb591(38)
      abb591(34)=16.0_ki*abb591(34)
      abb591(15)=abb591(15)*abb591(23)
      abb591(15)=abb591(15)-abb591(25)
      abb591(25)=-spak1k3*abb591(15)
      abb591(20)=-spbk4k2*abb591(20)
      abb591(20)=-abb591(26)+abb591(20)
      abb591(20)=spak2k5*abb591(20)
      abb591(26)=abb591(8)*abb591(7)
      abb591(20)=abb591(25)+abb591(26)+abb591(20)
      abb591(20)=spak3k7*abb591(20)
      abb591(25)=abb591(11)*spak1k3
      abb591(26)=abb591(31)*abb591(25)
      abb591(26)=abb591(26)+abb591(32)
      abb591(26)=spbk6k4*abb591(26)
      abb591(32)=-abb591(8)-abb591(25)
      abb591(32)=abb591(24)*abb591(32)
      abb591(20)=abb591(26)+abb591(20)+abb591(32)
      abb591(20)=8.0_ki*abb591(20)
      abb591(26)=abb591(16)*spak5k6
      abb591(32)=spbk6k2**2
      abb591(40)=16.0_ki*abb591(32)
      abb591(40)=abb591(26)*abb591(40)
      abb591(41)=abb591(28)*abb591(29)
      abb591(42)=abb591(12)*spak3k5
      abb591(43)=spak5k7*abb591(25)
      abb591(41)=abb591(43)+abb591(41)+abb591(42)
      abb591(41)=32.0_ki*abb591(41)
      abb591(26)=8.0_ki*abb591(32)*abb591(26)
      abb591(27)=spbk6k4*abb591(27)
      abb591(42)=-spbk7k6*abb591(17)
      abb591(27)=abb591(42)+abb591(27)
      abb591(27)=spak5k6*abb591(27)
      abb591(8)=-spak2k5*abb591(8)
      abb591(7)=abb591(7)*abb591(23)
      abb591(42)=abb591(11)*spak2k5
      abb591(7)=abb591(42)-abb591(7)
      abb591(42)=-spak1k3*abb591(7)
      abb591(8)=abb591(42)+abb591(8)+abb591(27)
      abb591(8)=8.0_ki*abb591(8)
      abb591(27)=abb591(23)*spak1k5
      abb591(27)=32.0_ki*abb591(27)
      abb591(29)=spbk4k2*abb591(29)
      abb591(10)=abb591(10)*spak1k3*spak5k7
      abb591(42)=spak3k5*abb591(16)*spbk3k2
      abb591(10)=abb591(42)+abb591(10)+abb591(29)
      abb591(29)=spbk5k2*abb591(10)
      abb591(25)=abb591(25)+abb591(30)
      abb591(30)=spak6k7*abb591(25)
      abb591(16)=spak4k6*abb591(16)*abb591(28)
      abb591(12)=spak3k6*abb591(12)
      abb591(12)=abb591(12)+abb591(16)+abb591(30)+abb591(29)
      abb591(12)=16.0_ki*abb591(12)
      abb591(16)=abb591(9)*spak1k5
      abb591(28)=spbk5k2*abb591(16)
      abb591(29)=spak1k6*abb591(23)
      abb591(28)=abb591(28)+abb591(29)
      abb591(28)=16.0_ki*abb591(28)
      abb591(10)=spbk6k5*abb591(10)
      abb591(29)=-es234+es34
      abb591(17)=abb591(17)*abb591(29)
      abb591(25)=-spak2k7*abb591(25)
      abb591(10)=abb591(25)+abb591(17)+abb591(10)
      abb591(10)=16.0_ki*abb591(10)
      abb591(16)=spbk6k5*abb591(16)
      abb591(17)=-spak1k2*abb591(23)
      abb591(16)=abb591(16)+abb591(17)
      abb591(16)=16.0_ki*abb591(16)
      abb591(17)=8.0_ki*abb591(23)
      abb591(25)=-spak5k6*abb591(17)
      abb591(9)=abb591(32)*abb591(9)*spak5k6
      abb591(29)=abb591(9)*spak4k7
      abb591(30)=8.0_ki*abb591(29)
      abb591(15)=-spak3k7*abb591(15)
      abb591(31)=abb591(31)*spbk6k4
      abb591(24)=abb591(31)-abb591(24)
      abb591(11)=abb591(11)*abb591(24)
      abb591(11)=abb591(15)+abb591(11)
      abb591(15)=8.0_ki*spak3k4
      abb591(11)=abb591(11)*abb591(15)
      abb591(29)=16.0_ki*abb591(29)
      abb591(15)=-abb591(7)*abb591(15)
      abb591(9)=-8.0_ki*spak3k7*abb591(9)
      abb591(23)=abb591(23)*abb591(24)
      abb591(7)=-spak3k7*abb591(7)
      abb591(7)=abb591(7)+abb591(23)
      abb591(7)=8.0_ki*abb591(7)
      abb591(17)=-spak2k5*abb591(17)
      R2d591=0.0_ki
      rat2 = rat2 + R2d591
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='591' value='", &
          & R2d591, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd591h5
