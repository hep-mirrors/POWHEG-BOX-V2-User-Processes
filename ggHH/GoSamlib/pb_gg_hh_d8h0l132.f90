module     pb_gg_hh_d8h0l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity0d8h0l132.f90
   ! generator: buildfortran_tn3.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd8(1)=dotproduct(k1,ninjaE3)
      acd8(2)=dotproduct(ninjaE3,spvak1k2)
      acd8(3)=dotproduct(ninjaE3,spvak2k1)
      acd8(4)=abb8(7)
      acd8(5)=dotproduct(k2,ninjaE3)
      acd8(6)=abb8(13)
      acd8(7)=dotproduct(l4,ninjaE3)
      acd8(8)=dotproduct(ninjaA0,ninjaE3)
      acd8(9)=abb8(5)
      acd8(10)=acd8(7)-acd8(1)
      acd8(10)=acd8(4)*acd8(10)
      acd8(11)=acd8(6)*acd8(5)
      acd8(12)=acd8(9)*acd8(8)
      acd8(10)=2.0_ki*acd8(12)+acd8(11)+acd8(10)
      acd8(10)=acd8(10)*acd8(3)*acd8(2)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd8(10)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(49) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd8(1)=dotproduct(ninjaE3,spvak1k2)
      acd8(2)=dotproduct(ninjaE3,spvak2k1)
      acd8(3)=abb8(5)
      acd8(4)=dotproduct(k1,ninjaA1)
      acd8(5)=abb8(7)
      acd8(6)=dotproduct(k1,ninjaE3)
      acd8(7)=dotproduct(ninjaA1,spvak1k2)
      acd8(8)=dotproduct(ninjaA1,spvak2k1)
      acd8(9)=dotproduct(k2,ninjaA1)
      acd8(10)=abb8(13)
      acd8(11)=dotproduct(k2,ninjaE3)
      acd8(12)=dotproduct(l4,ninjaA1)
      acd8(13)=dotproduct(l4,ninjaE3)
      acd8(14)=dotproduct(ninjaA0,ninjaA1)
      acd8(15)=dotproduct(ninjaA0,ninjaE3)
      acd8(16)=dotproduct(ninjaA1,ninjaA1)
      acd8(17)=dotproduct(k1,ninjaA0)
      acd8(18)=abb8(26)
      acd8(19)=abb8(25)
      acd8(20)=abb8(11)
      acd8(21)=dotproduct(ninjaA0,spvak1k2)
      acd8(22)=dotproduct(ninjaA0,spvak2k1)
      acd8(23)=abb8(18)
      acd8(24)=dotproduct(ninjaE3,spvak2l4)
      acd8(25)=abb8(17)
      acd8(26)=dotproduct(ninjaE3,spval4k1)
      acd8(27)=abb8(30)
      acd8(28)=dotproduct(k2,ninjaA0)
      acd8(29)=abb8(10)
      acd8(30)=dotproduct(l4,ninjaA0)
      acd8(31)=abb8(27)
      acd8(32)=dotproduct(ninjaA0,ninjaA0)
      acd8(33)=abb8(32)
      acd8(34)=abb8(28)
      acd8(35)=abb8(12)
      acd8(36)=abb8(6)
      acd8(37)=abb8(22)
      acd8(38)=acd8(3)*acd8(1)*acd8(2)
      acd8(39)=acd8(6)-acd8(13)
      acd8(39)=acd8(39)*acd8(5)
      acd8(40)=2.0_ki*acd8(15)
      acd8(41)=acd8(40)*acd8(3)
      acd8(42)=acd8(11)*acd8(10)
      acd8(41)=acd8(39)-acd8(41)-acd8(42)
      acd8(42)=-acd8(8)*acd8(41)
      acd8(43)=acd8(10)*acd8(9)
      acd8(44)=ninjaP1+2.0_ki*acd8(14)
      acd8(44)=acd8(3)*acd8(44)
      acd8(45)=acd8(12)-acd8(4)
      acd8(45)=acd8(5)*acd8(45)
      acd8(43)=acd8(45)+acd8(43)+acd8(44)
      acd8(43)=acd8(2)*acd8(43)
      acd8(42)=acd8(43)+acd8(42)
      acd8(42)=acd8(1)*acd8(42)
      acd8(43)=-acd8(2)*acd8(7)*acd8(41)
      acd8(42)=acd8(43)+acd8(42)
      acd8(43)=ninjaP2+acd8(16)
      acd8(43)=acd8(43)*acd8(38)
      acd8(44)=acd8(10)*acd8(28)
      acd8(45)=ninjaP0+acd8(32)
      acd8(45)=acd8(3)*acd8(45)
      acd8(46)=acd8(30)-acd8(17)
      acd8(46)=acd8(5)*acd8(46)
      acd8(44)=acd8(46)+acd8(45)+acd8(35)+acd8(44)
      acd8(44)=acd8(2)*acd8(44)
      acd8(45)=acd8(3)*acd8(22)
      acd8(45)=acd8(45)-acd8(23)
      acd8(45)=acd8(40)*acd8(45)
      acd8(46)=acd8(26)*acd8(37)
      acd8(47)=acd8(24)*acd8(36)
      acd8(48)=acd8(10)*acd8(22)
      acd8(48)=-acd8(23)+acd8(48)
      acd8(48)=acd8(11)*acd8(48)
      acd8(49)=-acd8(6)*acd8(23)
      acd8(39)=-acd8(22)*acd8(39)
      acd8(39)=acd8(44)+acd8(39)+acd8(49)+acd8(48)+acd8(46)+acd8(47)+acd8(45)
      acd8(39)=acd8(1)*acd8(39)
      acd8(44)=acd8(40)+acd8(13)
      acd8(44)=acd8(31)*acd8(44)
      acd8(45)=-acd8(26)*acd8(34)
      acd8(46)=acd8(24)*acd8(33)
      acd8(47)=acd8(11)*acd8(29)
      acd8(48)=acd8(6)*acd8(20)
      acd8(44)=acd8(48)+acd8(47)+acd8(45)+acd8(46)+acd8(44)
      acd8(40)=acd8(44)*acd8(40)
      acd8(44)=acd8(26)*acd8(27)
      acd8(45)=acd8(24)*acd8(25)
      acd8(46)=acd8(11)*acd8(19)
      acd8(47)=acd8(6)*acd8(18)
      acd8(44)=acd8(47)+acd8(46)+acd8(44)+acd8(45)
      acd8(44)=acd8(6)*acd8(44)
      acd8(41)=-acd8(2)*acd8(21)*acd8(41)
      acd8(39)=acd8(39)+acd8(41)+acd8(44)+acd8(40)
      brack(ninjaidxt0x0mu0)=acd8(39)
      brack(ninjaidxt0x0mu2)=acd8(38)
      brack(ninjaidxt0x1mu0)=acd8(42)
      brack(ninjaidxt0x2mu0)=acd8(43)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="pb_gg_hh_d8h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd8h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     pb_gg_hh_d8h0l132
