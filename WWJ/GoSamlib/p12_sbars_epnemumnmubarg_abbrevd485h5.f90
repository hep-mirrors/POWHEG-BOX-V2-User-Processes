module     p12_sbars_epnemumnmubarg_abbrevd485h5
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(55), public :: abb485
   complex(ki), public :: R2d485
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
      abb485(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb485(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb485(3)=sqrt2**(-1)
      abb485(4)=spbk7k2**(-1)
      abb485(5)=abb485(4)*spbk6k2
      abb485(6)=abb485(3)*gW**4*abb485(1)*abb485(2)*c1*NC*TR*i_
      abb485(7)=abb485(5)*abb485(6)
      abb485(8)=abb485(7)*spak1k7
      abb485(9)=4.0_ki*abb485(8)
      abb485(10)=es12+es71
      abb485(11)=abb485(10)-es712
      abb485(12)=spak1k5*spbk2k1
      abb485(13)=abb485(11)*abb485(12)
      abb485(14)=-spbk3k1*abb485(13)
      abb485(15)=abb485(11)*spak4k5
      abb485(16)=-spbk2k1*spbk4k3*abb485(15)
      abb485(14)=abb485(14)+abb485(16)
      abb485(14)=spak1k4*abb485(14)*abb485(9)
      abb485(16)=abb485(12)*spbk3k1
      abb485(17)=spak4k5*spbk4k3
      abb485(18)=abb485(17)*spbk2k1
      abb485(16)=abb485(16)+abb485(18)
      abb485(16)=abb485(16)*spak1k4
      abb485(18)=8.0_ki*abb485(8)
      abb485(19)=abb485(18)*abb485(16)
      abb485(20)=spbk3k2*spak4k5
      abb485(8)=abb485(8)*abb485(20)
      abb485(21)=8.0_ki*abb485(8)
      abb485(22)=abb485(11)*abb485(21)
      abb485(23)=16.0_ki*abb485(8)
      abb485(24)=spbk6k3*spak3k4
      abb485(25)=spak1k4*spbk6k1
      abb485(26)=abb485(24)-abb485(25)
      abb485(27)=-spak5k7*abb485(26)
      abb485(28)=abb485(27)*spbk3k2
      abb485(29)=spak1k4*spbk6k3
      abb485(30)=abb485(29)*spbk2k1
      abb485(31)=abb485(30)*spak5k7
      abb485(28)=abb485(28)+abb485(31)
      abb485(28)=abb485(28)*spak1k7
      abb485(31)=abb485(5)*spak1k7
      abb485(32)=abb485(31)*abb485(16)
      abb485(32)=-abb485(28)+abb485(32)
      abb485(33)=8.0_ki*abb485(6)
      abb485(32)=abb485(32)*abb485(33)
      abb485(34)=-abb485(11)*abb485(20)
      abb485(16)=-abb485(16)+abb485(34)
      abb485(16)=abb485(16)*abb485(31)
      abb485(16)=2.0_ki*abb485(28)+abb485(16)
      abb485(28)=4.0_ki*abb485(6)
      abb485(16)=abb485(16)*abb485(28)
      abb485(8)=-4.0_ki*abb485(8)
      abb485(34)=abb485(26)*spbk3k2
      abb485(30)=abb485(34)-abb485(30)
      abb485(35)=spak1k7*spak2k5*abb485(30)
      abb485(36)=spak1k5*spbk3k1
      abb485(17)=abb485(17)+abb485(36)
      abb485(17)=abb485(17)*spak1k4
      abb485(37)=2.0_ki*abb485(5)
      abb485(38)=-abb485(37)*es12*abb485(17)
      abb485(35)=abb485(35)+abb485(38)
      abb485(35)=abb485(35)*abb485(28)
      abb485(38)=abb485(25)*spak1k5
      abb485(24)=abb485(24)*spak1k5
      abb485(38)=abb485(38)-abb485(24)
      abb485(38)=abb485(38)*spbk3k2
      abb485(39)=abb485(12)*abb485(29)
      abb485(38)=abb485(38)+abb485(39)
      abb485(39)=16.0_ki*abb485(6)
      abb485(40)=abb485(39)*abb485(4)
      abb485(41)=abb485(38)*abb485(40)
      abb485(20)=abb485(20)*spak1k2
      abb485(42)=abb485(7)*abb485(20)
      abb485(42)=16.0_ki*abb485(42)
      abb485(17)=abb485(17)-abb485(20)
      abb485(5)=abb485(17)*abb485(5)
      abb485(17)=-spak5k7*abb485(29)
      abb485(5)=abb485(17)+abb485(5)
      abb485(5)=abb485(5)*abb485(39)
      abb485(17)=-spbk6k2*abb485(20)
      abb485(17)=abb485(17)+abb485(38)
      abb485(20)=8.0_ki*abb485(4)
      abb485(6)=abb485(20)*abb485(6)
      abb485(17)=abb485(17)*abb485(6)
      abb485(20)=spbk6k1*spbk7k3
      abb485(38)=-spbk6k3*spbk7k1
      abb485(20)=abb485(20)+abb485(38)
      abb485(20)=spak1k4*spak1k5*abb485(20)
      abb485(24)=-spbk7k3*abb485(24)
      abb485(20)=abb485(24)+abb485(20)
      abb485(20)=abb485(20)*abb485(6)
      abb485(24)=abb485(28)*abb485(4)*spak1k7
      abb485(38)=spak3k4*spbk3k2**2
      abb485(39)=abb485(24)*abb485(38)
      abb485(43)=abb485(11)*abb485(39)
      abb485(44)=spak1k7*abb485(6)
      abb485(45)=abb485(38)*abb485(44)
      abb485(38)=spak1k2*abb485(6)*abb485(38)
      abb485(46)=abb485(40)*spak1k4
      abb485(47)=spbk3k2*abb485(46)
      abb485(44)=abb485(30)*abb485(44)
      abb485(24)=abb485(30)*abb485(24)
      abb485(30)=abb485(25)*spbk4k3
      abb485(10)=-spbk6k3*abb485(10)
      abb485(10)=abb485(10)+abb485(30)
      abb485(10)=spak1k4*abb485(10)
      abb485(34)=spak1k2*abb485(34)
      abb485(26)=spak1k7*spbk7k3*abb485(26)
      abb485(10)=abb485(26)+abb485(10)+abb485(34)
      abb485(10)=abb485(10)*abb485(6)
      abb485(26)=abb485(40)*abb485(29)
      abb485(29)=-abb485(6)*abb485(29)
      abb485(34)=spbk3k2*spak3k5
      abb485(11)=-abb485(11)*abb485(34)
      abb485(15)=-spbk4k2*abb485(15)
      abb485(11)=abb485(11)-abb485(13)+abb485(15)
      abb485(11)=abb485(11)*abb485(9)
      abb485(13)=spak4k5*spbk4k2
      abb485(13)=abb485(13)+abb485(34)
      abb485(12)=abb485(13)+abb485(12)
      abb485(15)=abb485(12)*abb485(18)
      abb485(12)=abb485(12)*abb485(31)
      abb485(31)=spak1k7*spbk6k2
      abb485(34)=abb485(31)*spak5k7
      abb485(48)=-abb485(34)+abb485(12)
      abb485(48)=abb485(48)*abb485(33)
      abb485(12)=2.0_ki*abb485(34)-abb485(12)
      abb485(12)=abb485(12)*abb485(28)
      abb485(13)=-spak1k2*abb485(13)
      abb485(34)=-spak1k5*es12
      abb485(13)=abb485(34)+abb485(13)
      abb485(13)=abb485(13)*abb485(37)
      abb485(31)=-spak2k5*abb485(31)
      abb485(13)=abb485(31)+abb485(13)
      abb485(13)=abb485(13)*abb485(28)
      abb485(28)=16.0_ki*abb485(7)
      abb485(31)=abb485(28)*spak1k5
      abb485(7)=8.0_ki*abb485(7)
      abb485(34)=spak1k5*abb485(7)
      abb485(37)=abb485(6)*spak1k5
      abb485(49)=spbk7k6*abb485(37)
      abb485(50)=spbk6k2*spak1k2
      abb485(51)=-spbk6k3*spak1k3
      abb485(52)=-spak1k4*spbk6k4
      abb485(53)=-spak1k7*spbk7k6
      abb485(50)=abb485(53)-abb485(50)+abb485(51)+abb485(52)
      abb485(50)=abb485(50)*abb485(6)
      abb485(30)=-abb485(37)*abb485(30)
      abb485(51)=spak1k5*spbk6k3
      abb485(40)=abb485(40)*abb485(51)
      abb485(51)=abb485(51)*abb485(6)
      abb485(52)=spbk6k4*abb485(37)
      abb485(53)=spak5k7*abb485(33)
      abb485(54)=abb485(7)*spak4k5
      abb485(27)=abb485(27)*abb485(33)
      abb485(28)=abb485(28)*spak4k5
      abb485(33)=spak1k4*spbk2k1
      abb485(55)=spbk3k2*spak3k4
      abb485(33)=abb485(33)+abb485(55)
      abb485(33)=abb485(33)*abb485(6)
      abb485(7)=-spak3k5*abb485(7)
      abb485(25)=-abb485(6)*abb485(25)*abb485(36)
      abb485(36)=-spbk3k1*abb485(46)
      abb485(37)=-spbk6k1*abb485(37)
      R2d485=0.0_ki
      rat2 = rat2 + R2d485
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='485' value='", &
          & R2d485, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd485h5
