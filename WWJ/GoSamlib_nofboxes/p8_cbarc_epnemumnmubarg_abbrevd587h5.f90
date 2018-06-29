module     p8_cbarc_epnemumnmubarg_abbrevd587h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(45), public :: abb587
   complex(ki), public :: R2d587
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb587(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb587(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb587(3)=NC**(-1)
      abb587(4)=sqrt2**(-1)
      abb587(5)=es234**(-1)
      abb587(6)=spbk7k2**(-1)
      abb587(7)=spbk6k2**2
      abb587(8)=i_*TR*c1*abb587(4)*abb587(3)*gW**4*abb587(2)*abb587(1)
      abb587(9)=abb587(5)*abb587(8)
      abb587(10)=abb587(9)*abb587(6)
      abb587(11)=spbk3k2*abb587(10)
      abb587(12)=abb587(11)*spak1k7
      abb587(13)=spak2k4*abb587(7)*abb587(12)
      abb587(14)=spbk6k3*spak3k4
      abb587(15)=abb587(11)*spbk6k2
      abb587(16)=abb587(15)*spak1k7
      abb587(17)=abb587(14)*abb587(16)
      abb587(13)=abb587(13)-abb587(17)
      abb587(13)=abb587(13)*spak5k6
      abb587(17)=-16.0_ki*abb587(13)
      abb587(18)=abb587(11)*spak2k4
      abb587(7)=abb587(7)*abb587(18)
      abb587(19)=abb587(7)*spak5k7
      abb587(20)=spak5k7*spak3k4
      abb587(21)=abb587(20)*abb587(15)
      abb587(22)=abb587(21)*spbk6k3
      abb587(19)=abb587(19)-abb587(22)
      abb587(19)=abb587(19)*spak1k6
      abb587(22)=abb587(9)*spak1k7
      abb587(23)=abb587(22)*spbk6k2*spbk3k2
      abb587(24)=abb587(15)*spak1k5
      abb587(25)=abb587(24)*spbk5k2
      abb587(23)=abb587(23)+abb587(25)
      abb587(25)=spak2k4*spak5k7
      abb587(26)=abb587(25)*abb587(23)
      abb587(27)=abb587(22)*spbk3k2
      abb587(28)=abb587(11)*spak1k5
      abb587(29)=abb587(28)*spbk5k2
      abb587(27)=abb587(27)+abb587(29)
      abb587(20)=abb587(20)*abb587(27)
      abb587(30)=abb587(20)*spbk6k3
      abb587(13)=abb587(19)-abb587(13)-abb587(30)+abb587(26)
      abb587(19)=16.0_ki*abb587(13)
      abb587(26)=abb587(16)*spak4k5
      abb587(30)=abb587(24)*spak4k7
      abb587(26)=abb587(26)-abb587(30)
      abb587(30)=16.0_ki*abb587(26)
      abb587(31)=abb587(30)*es56
      abb587(26)=32.0_ki*abb587(26)
      abb587(13)=-8.0_ki*abb587(13)
      abb587(32)=-abb587(28)*abb587(14)
      abb587(33)=spak2k4*abb587(24)
      abb587(32)=abb587(33)+abb587(32)
      abb587(32)=es56*abb587(32)
      abb587(33)=abb587(12)*abb587(14)
      abb587(34)=-spak2k4*abb587(16)
      abb587(33)=abb587(34)+abb587(33)
      abb587(33)=spbk7k6*spak5k6*abb587(33)
      abb587(32)=abb587(32)+abb587(33)
      abb587(32)=8.0_ki*abb587(32)
      abb587(33)=abb587(15)*abb587(14)
      abb587(7)=abb587(33)-abb587(7)
      abb587(33)=spak1k6*abb587(7)
      abb587(23)=-spak2k4*abb587(23)
      abb587(14)=abb587(27)*abb587(14)
      abb587(14)=abb587(33)+abb587(14)+abb587(23)
      abb587(14)=spak6k7*abb587(14)
      abb587(23)=spak1k6*abb587(21)
      abb587(20)=abb587(23)+abb587(20)
      abb587(20)=spbk5k3*abb587(20)
      abb587(23)=-spbk5k2*abb587(25)*abb587(27)
      abb587(25)=spbk5k2*spak5k7
      abb587(33)=abb587(15)*spak2k4
      abb587(34)=abb587(25)*abb587(33)
      abb587(35)=-spak1k6*abb587(34)
      abb587(14)=abb587(20)+abb587(14)+abb587(23)+abb587(35)
      abb587(14)=8.0_ki*abb587(14)
      abb587(20)=abb587(6)*spbk3k2**2
      abb587(23)=16.0_ki*abb587(20)
      abb587(23)=abb587(23)*abb587(22)*spak3k4
      abb587(15)=abb587(15)*spak1k6
      abb587(15)=abb587(15)+abb587(29)
      abb587(29)=-spak4k7*abb587(15)
      abb587(35)=abb587(16)*spak4k6
      abb587(36)=abb587(12)*spbk5k2
      abb587(37)=abb587(36)*spak4k5
      abb587(29)=abb587(37)+abb587(35)+abb587(29)
      abb587(29)=32.0_ki*abb587(29)
      abb587(20)=abb587(20)*spak3k4
      abb587(35)=-8.0_ki*abb587(22)*abb587(20)
      abb587(28)=spbk5k3*abb587(28)
      abb587(37)=spbk7k3*abb587(12)
      abb587(28)=abb587(37)+abb587(28)
      abb587(28)=spak3k4*abb587(28)
      abb587(27)=-spak2k4*abb587(27)
      abb587(37)=abb587(11)*spak3k4
      abb587(38)=abb587(37)*spbk6k3
      abb587(33)=abb587(38)-abb587(33)
      abb587(38)=spak1k6*abb587(33)
      abb587(27)=abb587(38)+abb587(27)+abb587(28)
      abb587(27)=8.0_ki*abb587(27)
      abb587(28)=abb587(11)*spak1k4
      abb587(28)=32.0_ki*abb587(28)
      abb587(38)=abb587(9)*spak4k7
      abb587(39)=spak1k5*abb587(38)
      abb587(40)=spbk6k2*abb587(6)
      abb587(41)=abb587(39)*abb587(40)
      abb587(42)=abb587(22)*abb587(40)
      abb587(43)=abb587(42)*spak4k5
      abb587(41)=abb587(41)-abb587(43)
      abb587(43)=abb587(41)*spbk4k2
      abb587(44)=abb587(16)*spak3k5
      abb587(45)=abb587(24)*spak3k7
      abb587(43)=-abb587(43)+abb587(44)-abb587(45)
      abb587(44)=8.0_ki*abb587(43)
      abb587(45)=-es56*abb587(44)
      abb587(43)=16.0_ki*abb587(43)
      abb587(22)=abb587(22)*spak4k5
      abb587(22)=-abb587(22)+abb587(39)
      abb587(22)=abb587(22)*spbk5k2*abb587(6)
      abb587(38)=spak1k6*abb587(40)*abb587(38)
      abb587(39)=abb587(42)*spak4k6
      abb587(22)=-abb587(39)+abb587(38)+abb587(22)
      abb587(38)=spbk4k2*abb587(22)
      abb587(39)=spak3k7*abb587(15)
      abb587(36)=-spak3k5*abb587(36)
      abb587(40)=-spak3k6*abb587(16)
      abb587(36)=abb587(40)+abb587(36)+abb587(39)+abb587(38)
      abb587(36)=16.0_ki*abb587(36)
      abb587(10)=spak1k4*abb587(10)
      abb587(38)=spbk4k2*abb587(10)
      abb587(39)=spak1k3*abb587(11)
      abb587(38)=abb587(38)+abb587(39)
      abb587(38)=16.0_ki*abb587(38)
      abb587(39)=abb587(41)*spbk4k3
      abb587(16)=abb587(16)*spak2k5
      abb587(24)=abb587(24)*spak2k7
      abb587(16)=-abb587(39)+abb587(16)-abb587(24)
      abb587(24)=8.0_ki*abb587(16)
      abb587(39)=es56*abb587(24)
      abb587(16)=16.0_ki*abb587(16)
      abb587(22)=-spbk4k3*abb587(22)
      abb587(40)=es712-es34-es71
      abb587(12)=abb587(12)*abb587(40)
      abb587(15)=-spak2k7*abb587(15)
      abb587(8)=spak1k7*abb587(8)*spbk3k2*abb587(6)
      abb587(8)=abb587(15)+abb587(8)+abb587(12)+abb587(22)
      abb587(8)=16.0_ki*abb587(8)
      abb587(10)=-spbk4k3*abb587(10)
      abb587(11)=-spak1k2*abb587(11)
      abb587(10)=abb587(10)+abb587(11)
      abb587(10)=16.0_ki*abb587(10)
      abb587(7)=-spak6k7*abb587(7)
      abb587(11)=-spbk5k3*abb587(21)
      abb587(7)=abb587(11)+abb587(34)+abb587(7)
      abb587(11)=8.0_ki*spak5k6
      abb587(7)=abb587(7)*abb587(11)
      abb587(9)=abb587(9)*abb587(20)
      abb587(12)=abb587(9)*spak5k7
      abb587(15)=16.0_ki*abb587(12)
      abb587(12)=8.0_ki*abb587(12)
      abb587(11)=-abb587(33)*abb587(11)
      abb587(9)=8.0_ki*spak6k7*abb587(9)
      abb587(20)=8.0_ki*abb587(37)
      abb587(21)=-abb587(18)*abb587(25)
      abb587(22)=spak6k7*abb587(33)
      abb587(25)=spbk5k3*spak5k7*abb587(37)
      abb587(21)=abb587(25)+abb587(21)+abb587(22)
      abb587(21)=8.0_ki*abb587(21)
      abb587(18)=-8.0_ki*abb587(18)
      R2d587=0.0_ki
      rat2 = rat2 + R2d587
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='587' value='", &
          & R2d587, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd587h5
