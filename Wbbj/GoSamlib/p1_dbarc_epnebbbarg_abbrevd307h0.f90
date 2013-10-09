module     p1_dbarc_epnebbbarg_abbrevd307h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(22), public :: abb307
   complex(ki), public :: R2d307
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb307(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb307(2)=1.0_ki/(es34+es567-es12-es234)
      abb307(3)=sqrt(mB**2)
      abb307(4)=NC**(-1)
      abb307(5)=spbl6k2**(-1)
      abb307(6)=spbl5k2**(-1)
      abb307(7)=c2*abb307(4)**2
      abb307(8)=c3*abb307(4)
      abb307(9)=c1*abb307(4)
      abb307(7)=abb307(8)-abb307(7)+abb307(9)-c4
      abb307(8)=abb307(7)*spak1l5
      abb307(9)=abb307(8)*spbk3k1
      abb307(10)=abb307(7)*spak4l5
      abb307(11)=abb307(10)*spbk4k3
      abb307(9)=abb307(9)+abb307(11)
      abb307(11)=CVDC*i_*spak1k4*abb307(2)*abb307(1)
      abb307(12)=TR*gW
      abb307(12)=abb307(12)**2
      abb307(13)=abb307(11)*abb307(12)*abb307(3)
      abb307(14)=spae7k7*abb307(13)*spbk7k2
      abb307(15)=abb307(14)*spbe7k2
      abb307(16)=abb307(5)*abb307(9)*abb307(15)*mB**2
      abb307(15)=-spak2l6*abb307(15)*abb307(9)
      abb307(15)=abb307(16)+abb307(15)
      abb307(15)=4.0_ki*abb307(15)
      abb307(9)=4.0_ki*abb307(14)*abb307(9)
      abb307(11)=abb307(11)*mB*abb307(12)*abb307(6)
      abb307(12)=spbk4k3*abb307(11)
      abb307(14)=spak4e7*abb307(7)*abb307(12)*spbe7k2
      abb307(11)=spbk3k1*abb307(11)
      abb307(16)=spak1e7*abb307(7)*abb307(11)*spbe7k2
      abb307(14)=abb307(14)+abb307(16)
      abb307(16)=-abb307(14)*abb307(3)**2
      abb307(17)=abb307(7)*spbk7e7
      abb307(18)=abb307(13)*spbk4k3
      abb307(19)=abb307(18)*abb307(17)
      abb307(20)=spak4k7*abb307(19)
      abb307(13)=abb307(13)*spbk3k1
      abb307(21)=abb307(13)*abb307(17)
      abb307(22)=spak1k7*abb307(21)
      abb307(20)=abb307(22)+abb307(20)
      abb307(20)=spal5e7*abb307(20)
      abb307(19)=-spak4e7*abb307(19)
      abb307(21)=-spak1e7*abb307(21)
      abb307(19)=abb307(19)+abb307(21)
      abb307(19)=spal5k7*abb307(19)
      abb307(16)=abb307(19)+abb307(20)+abb307(16)
      abb307(16)=4.0_ki*abb307(16)
      abb307(10)=abb307(18)*abb307(10)
      abb307(8)=abb307(13)*abb307(8)
      abb307(8)=abb307(10)+abb307(8)
      abb307(8)=8.0_ki*abb307(8)
      abb307(10)=4.0_ki*abb307(14)
      abb307(13)=-spak4k7*abb307(12)
      abb307(14)=-spak1k7*abb307(11)
      abb307(13)=abb307(13)+abb307(14)
      abb307(13)=-4.0_ki*abb307(17)*abb307(13)
      abb307(7)=8.0_ki*abb307(7)
      abb307(12)=-abb307(12)*abb307(7)
      abb307(7)=-abb307(11)*abb307(7)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd307h0
