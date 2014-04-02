module     p0_dbaru_epnebbbar_abbrevd8h0
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(21), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=NC**(-1)
      abb8(3)=es234**(-1)
      abb8(4)=es56**(-1)
      abb8(5)=spbl5k2**(-1)
      abb8(6)=spbl6k2**(-1)
      abb8(7)=abb8(2)**2
      abb8(7)=abb8(7)-1.0_ki
      abb8(8)=TR*gW
      abb8(8)=CVDU*i_*mB*abb8(4)*abb8(3)*abb8(1)*abb8(8)**2
      abb8(7)=abb8(7)*abb8(8)
      abb8(9)=spbk3k2*abb8(7)
      abb8(10)=c1*spak1l5
      abb8(11)=abb8(9)*abb8(10)
      abb8(8)=abb8(8)*c2
      abb8(12)=spbk3k2*abb8(8)
      abb8(13)=abb8(12)*spak1l5
      abb8(14)=abb8(13)*abb8(2)
      abb8(11)=abb8(11)-abb8(14)
      abb8(14)=abb8(11)*abb8(6)
      abb8(15)=abb8(13)*NC
      abb8(16)=abb8(15)*abb8(6)
      abb8(16)=abb8(14)+abb8(16)
      abb8(16)=abb8(16)*spbl5k2
      abb8(17)=c1*spak1l6
      abb8(9)=abb8(9)*abb8(17)
      abb8(12)=abb8(12)*spak1l6
      abb8(18)=abb8(12)*abb8(2)
      abb8(9)=abb8(9)-abb8(18)
      abb8(18)=abb8(12)*NC
      abb8(16)=abb8(16)+abb8(9)+abb8(18)
      abb8(19)=-spak4l5*abb8(16)
      abb8(9)=abb8(9)*abb8(5)
      abb8(14)=abb8(14)+abb8(9)
      abb8(20)=abb8(14)*spbk2k1
      abb8(13)=abb8(13)*abb8(6)
      abb8(12)=abb8(12)*abb8(5)
      abb8(12)=abb8(13)+abb8(12)
      abb8(13)=NC*spbk2k1
      abb8(21)=abb8(12)*abb8(13)
      abb8(20)=abb8(20)+abb8(21)
      abb8(20)=abb8(20)*spak1k4
      abb8(18)=abb8(18)*abb8(5)
      abb8(9)=abb8(9)+abb8(18)
      abb8(9)=abb8(9)*spbl6k2
      abb8(9)=abb8(9)+abb8(11)+abb8(15)
      abb8(11)=abb8(9)*spak4l6
      abb8(11)=abb8(20)-abb8(11)+abb8(19)
      abb8(15)=-2.0_ki*abb8(11)
      abb8(11)=4.0_ki*abb8(11)
      abb8(9)=-4.0_ki*spak3k4*abb8(9)
      abb8(16)=-4.0_ki*spak3k4*abb8(16)
      abb8(10)=abb8(7)*abb8(10)
      abb8(18)=spak1l5*abb8(8)
      abb8(19)=abb8(18)*abb8(2)
      abb8(10)=abb8(19)-abb8(10)
      abb8(19)=abb8(18)*NC
      abb8(19)=abb8(19)-abb8(10)
      abb8(7)=abb8(7)*abb8(17)
      abb8(8)=spak1l6*abb8(8)
      abb8(17)=abb8(8)*abb8(2)
      abb8(7)=abb8(17)-abb8(7)
      abb8(17)=abb8(8)*NC
      abb8(17)=abb8(17)-abb8(7)
      abb8(20)=-spbl6k2*abb8(5)*abb8(17)
      abb8(20)=abb8(20)-abb8(19)
      abb8(20)=4.0_ki*abb8(20)
      abb8(19)=-spbl5k2*abb8(6)*abb8(19)
      abb8(17)=abb8(19)-abb8(17)
      abb8(17)=4.0_ki*abb8(17)
      abb8(12)=-abb8(12)*NC
      abb8(12)=-abb8(14)+abb8(12)
      abb8(12)=4.0_ki*spbk2k1*spak3k4*abb8(12)
      abb8(7)=abb8(5)*abb8(7)
      abb8(10)=abb8(6)*abb8(10)
      abb8(7)=abb8(7)+abb8(10)
      abb8(7)=spbk2k1*abb8(7)
      abb8(8)=abb8(8)*abb8(5)
      abb8(10)=abb8(18)*abb8(6)
      abb8(8)=-abb8(8)-abb8(10)
      abb8(8)=abb8(8)*abb8(13)
      abb8(7)=abb8(7)+abb8(8)
      abb8(7)=4.0_ki*abb8(7)
      R2d8=abb8(15)
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd8h0
