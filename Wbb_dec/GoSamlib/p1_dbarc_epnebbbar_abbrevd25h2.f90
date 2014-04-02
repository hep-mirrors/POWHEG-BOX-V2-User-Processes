module     p1_dbarc_epnebbbar_abbrevd25h2
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(47), public :: abb25
   complex(ki), public :: R2d25
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_color, only: TR
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      implicit none
      abb25(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb25(2)=NC**(-1)
      abb25(3)=es234**(-1)
      abb25(4)=es56**(-1)
      abb25(5)=spbl5k2**(-1)
      abb25(6)=spak2l6**(-1)
      abb25(7)=spak2l5**(-1)
      abb25(8)=spbk3k2**2
      abb25(9)=TR*gW
      abb25(10)=abb25(9)*mB*abb25(3)
      abb25(10)=abb25(10)**2
      abb25(11)=abb25(4)*i_*CVDC
      abb25(12)=abb25(11)*abb25(8)*abb25(10)*abb25(1)
      abb25(13)=NC-abb25(2)
      abb25(14)=abb25(13)*c2*abb25(12)
      abb25(15)=abb25(2)**2
      abb25(15)=abb25(15)-1.0_ki
      abb25(16)=abb25(15)*c1
      abb25(12)=abb25(16)*abb25(12)
      abb25(12)=abb25(12)+abb25(14)
      abb25(14)=spbl6k2*abb25(5)
      abb25(17)=abb25(14)*spak1k2
      abb25(12)=abb25(17)*abb25(12)
      abb25(11)=abb25(11)*abb25(1)
      abb25(18)=abb25(6)*abb25(11)
      abb25(19)=abb25(10)*c2
      abb25(20)=-abb25(13)*abb25(18)*abb25(19)
      abb25(21)=c1*abb25(15)*abb25(18)*abb25(10)
      abb25(20)=abb25(20)-abb25(21)
      abb25(21)=abb25(8)*abb25(20)
      abb25(22)=-spak1k2*abb25(21)
      abb25(23)=es12*abb25(5)
      abb25(24)=-abb25(22)*abb25(23)
      abb25(25)=NC*c2
      abb25(26)=abb25(16)+abb25(25)
      abb25(27)=c2*abb25(2)
      abb25(28)=abb25(26)-abb25(27)
      abb25(29)=spak1l5*abb25(11)
      abb25(9)=abb25(9)**2
      abb25(30)=abb25(29)*abb25(9)
      abb25(31)=abb25(3)**2
      abb25(32)=abb25(30)*abb25(31)
      abb25(8)=abb25(28)*abb25(32)*abb25(8)
      abb25(28)=abb25(8)*spbl6l5
      abb25(22)=abb25(22)+abb25(28)
      abb25(28)=spak2l5*abb25(22)
      abb25(33)=spbl6k1*spak1k2
      abb25(34)=abb25(8)*abb25(33)
      abb25(12)=abb25(28)+abb25(24)+abb25(34)+abb25(12)
      abb25(12)=spak3k4*abb25(12)
      abb25(24)=abb25(9)*spak1l5
      abb25(11)=spbk3k2*abb25(11)
      abb25(28)=abb25(24)*abb25(11)
      abb25(34)=abb25(16)*abb25(28)
      abb25(35)=abb25(31)*abb25(34)
      abb25(28)=c2*abb25(28)
      abb25(31)=abb25(28)*abb25(31)
      abb25(36)=abb25(31)*abb25(2)
      abb25(31)=abb25(31)*NC
      abb25(31)=abb25(31)+abb25(35)-abb25(36)
      abb25(35)=spbl6l5*spak4l5
      abb25(36)=spbl6k1*spak1k4
      abb25(35)=abb25(35)+abb25(36)
      abb25(36)=abb25(31)*abb25(35)
      abb25(37)=abb25(27)-abb25(25)
      abb25(38)=abb25(10)*abb25(11)
      abb25(39)=abb25(38)*abb25(6)
      abb25(40)=-abb25(39)*abb25(37)
      abb25(15)=c1*abb25(39)*abb25(15)
      abb25(15)=abb25(40)+abb25(15)
      abb25(39)=spak1k2*abb25(15)
      abb25(40)=abb25(39)*spak4l5
      abb25(41)=abb25(17)*abb25(15)
      abb25(42)=abb25(41)*spak4l6
      abb25(43)=abb25(5)*abb25(15)
      abb25(44)=es12*spak1k4
      abb25(45)=abb25(43)*abb25(44)
      abb25(36)=abb25(36)-abb25(45)+abb25(40)+abb25(42)
      abb25(40)=-es23*abb25(36)
      abb25(22)=-spak3l5*abb25(22)
      abb25(42)=spak3l6*abb25(17)*abb25(21)
      abb25(37)=abb25(16)-abb25(37)
      abb25(45)=abb25(3)*mB**2
      abb25(11)=abb25(45)*abb25(11)*abb25(6)
      abb25(46)=-abb25(37)*abb25(11)*abb25(24)
      abb25(22)=abb25(22)+abb25(42)+abb25(46)
      abb25(22)=spak2k4*abb25(22)
      abb25(42)=spak4l5*spak1k2
      abb25(46)=abb25(17)*spak4l6
      abb25(44)=abb25(44)*abb25(5)
      abb25(42)=-abb25(44)+abb25(42)+abb25(46)
      abb25(44)=abb25(16)-abb25(27)
      abb25(46)=abb25(25)+abb25(44)
      abb25(9)=abb25(42)*abb25(46)*abb25(11)*abb25(9)
      abb25(11)=-abb25(21)*abb25(23)
      abb25(8)=-spbl6k1*abb25(8)
      abb25(8)=abb25(8)+abb25(11)
      abb25(8)=spak1k3*spak2k4*abb25(8)
      abb25(11)=abb25(13)*abb25(28)
      abb25(11)=abb25(34)+abb25(11)
      abb25(11)=abb25(35)*abb25(3)*abb25(11)
      abb25(13)=abb25(45)*abb25(28)
      abb25(21)=abb25(2)*abb25(13)
      abb25(28)=-abb25(45)*abb25(34)
      abb25(21)=abb25(21)+abb25(28)
      abb25(21)=abb25(21)*abb25(14)
      abb25(28)=abb25(14)*NC
      abb25(13)=-abb25(28)*abb25(13)
      abb25(13)=abb25(21)+abb25(13)
      abb25(21)=abb25(7)*spak2k4
      abb25(13)=abb25(13)*abb25(21)
      abb25(8)=abb25(8)+abb25(40)+abb25(13)+abb25(12)+abb25(11)+abb25(9)+abb25(&
      &22)
      abb25(8)=4.0_ki*abb25(8)
      abb25(9)=abb25(38)*spak1l5
      abb25(11)=abb25(9)*abb25(16)
      abb25(12)=abb25(27)*abb25(38)
      abb25(13)=abb25(12)*spak1l5
      abb25(11)=abb25(11)-abb25(13)
      abb25(11)=abb25(11)*abb25(14)
      abb25(13)=abb25(14)*abb25(25)
      abb25(9)=abb25(13)*abb25(9)
      abb25(9)=abb25(11)+abb25(9)
      abb25(11)=abb25(9)*abb25(21)
      abb25(15)=-spak1l5*abb25(15)
      abb25(22)=abb25(15)*spak2k4
      abb25(11)=abb25(11)-abb25(22)
      abb25(22)=abb25(11)-abb25(36)
      abb25(22)=16.0_ki*abb25(22)
      abb25(11)=abb25(11)-2.0_ki*abb25(36)
      abb25(11)=8.0_ki*abb25(11)
      abb25(25)=4.0_ki*spak3k4
      abb25(27)=abb25(41)*abb25(25)
      abb25(34)=4.0_ki*spak2k4
      abb25(36)=-abb25(41)*abb25(34)
      abb25(40)=abb25(31)*spbl6l5
      abb25(40)=abb25(40)+abb25(39)
      abb25(46)=abb25(40)*abb25(25)
      abb25(47)=-abb25(40)*abb25(34)
      abb25(42)=-abb25(20)*abb25(42)
      abb25(32)=abb25(35)*abb25(32)*abb25(37)
      abb25(32)=abb25(32)+abb25(42)
      abb25(35)=-spbk4k2*abb25(32)
      abb25(18)=-abb25(37)*abb25(24)*abb25(45)*abb25(18)
      abb25(24)=abb25(45)*abb25(30)
      abb25(30)=-abb25(14)*abb25(24)*abb25(44)
      abb25(13)=-abb25(13)*abb25(24)
      abb25(13)=abb25(30)+abb25(13)
      abb25(13)=abb25(7)*abb25(13)
      abb25(24)=-spak3l5*abb25(40)
      abb25(30)=abb25(31)*spbl6k1
      abb25(37)=abb25(43)*es12
      abb25(30)=abb25(30)-abb25(37)
      abb25(37)=-spak1k3*abb25(30)
      abb25(20)=spak1l5*abb25(20)
      abb25(10)=abb25(29)*abb25(10)*abb25(16)
      abb25(16)=abb25(29)*abb25(19)
      abb25(19)=abb25(16)*abb25(2)
      abb25(10)=abb25(10)-abb25(19)
      abb25(10)=abb25(10)*abb25(14)
      abb25(14)=abb25(28)*abb25(16)
      abb25(10)=abb25(10)+abb25(14)
      abb25(14)=abb25(7)*abb25(10)
      abb25(14)=abb25(14)-abb25(20)
      abb25(14)=es34*abb25(14)
      abb25(16)=-spak3l6*abb25(41)
      abb25(13)=abb25(14)+abb25(16)+abb25(37)+abb25(24)+abb25(35)+abb25(13)+abb&
      &25(18)
      abb25(13)=8.0_ki*abb25(13)
      abb25(14)=spak2k4*abb25(20)
      abb25(10)=-abb25(10)*abb25(21)
      abb25(10)=abb25(10)+abb25(14)+abb25(32)
      abb25(10)=spbk4k3*abb25(10)
      abb25(14)=abb25(31)*abb25(33)
      abb25(16)=spak2l5*abb25(40)
      abb25(18)=abb25(38)*abb25(26)
      abb25(12)=-abb25(12)+abb25(18)
      abb25(12)=abb25(17)*abb25(12)
      abb25(17)=-abb25(39)*abb25(23)
      abb25(10)=abb25(16)+abb25(10)+abb25(17)+abb25(14)+abb25(12)
      abb25(10)=8.0_ki*abb25(10)
      abb25(9)=abb25(7)*abb25(9)
      abb25(9)=-abb25(15)+abb25(9)
      abb25(9)=abb25(9)*abb25(25)
      abb25(12)=-abb25(30)*abb25(25)
      abb25(14)=abb25(30)*abb25(34)
      R2d25=0.0_ki
      rat2 = rat2 + R2d25
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='25' value='", &
          & R2d25, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd25h2
