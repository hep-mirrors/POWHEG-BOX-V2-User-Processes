module     p1_dg_hhd_d6h0l131_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity0d6h0l131_qp.f90
   ! generator: buildfortran_tn3.py
   use p1_dg_hhd_config, only: ki => ki_qp
   use p1_dg_hhd_util_qp, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd6h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd6(1)=dotproduct(k2,ninjaE3)
      acd6(2)=dotproduct(ninjaE3,spvak2k1)
      acd6(3)=dotproduct(ninjaE3,spvak5k1)
      acd6(4)=abb6(27)
      acd6(5)=dotproduct(ninjaA,ninjaE3)
      acd6(6)=abb6(25)
      acd6(7)=dotproduct(ninjaE3,spvak5k2)
      acd6(8)=abb6(14)
      acd6(9)=dotproduct(ninjaE3,spval3k1)
      acd6(10)=dotproduct(ninjaE3,spvak5l3)
      acd6(11)=abb6(26)
      acd6(12)=dotproduct(ninjaE3,spvak2l3)
      acd6(13)=acd6(5)*acd6(6)
      acd6(14)=acd6(1)*acd6(4)
      acd6(13)=2.0_ki*acd6(13)+acd6(14)
      acd6(13)=acd6(3)*acd6(13)
      acd6(14)=acd6(9)*acd6(11)
      acd6(15)=acd6(10)*acd6(14)
      acd6(16)=acd6(2)*acd6(7)*acd6(8)
      acd6(13)=acd6(16)+acd6(15)+acd6(13)
      acd6(13)=acd6(2)*acd6(13)
      acd6(14)=acd6(3)*acd6(12)*acd6(14)
      acd6(13)=acd6(14)+acd6(13)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd6(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd6h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(65) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd6(1)=dotproduct(k2,ninjaE3)
      acd6(2)=dotproduct(ninjaE3,spvak5k1)
      acd6(3)=dotproduct(ninjaE4,spvak2k1)
      acd6(4)=abb6(27)
      acd6(5)=dotproduct(ninjaE3,spvak2k1)
      acd6(6)=dotproduct(ninjaE4,spvak5k1)
      acd6(7)=dotproduct(k2,ninjaE4)
      acd6(8)=dotproduct(ninjaA,ninjaE3)
      acd6(9)=abb6(25)
      acd6(10)=dotproduct(ninjaA,ninjaE4)
      acd6(11)=dotproduct(ninjaA,spvak5k1)
      acd6(12)=dotproduct(ninjaA,spvak2k1)
      acd6(13)=dotproduct(ninjaE3,spval3k1)
      acd6(14)=dotproduct(ninjaE4,spvak2l3)
      acd6(15)=abb6(26)
      acd6(16)=dotproduct(ninjaE3,spvak2l3)
      acd6(17)=dotproduct(ninjaE4,spval3k1)
      acd6(18)=abb6(9)
      acd6(19)=dotproduct(ninjaE4,spvak5k2)
      acd6(20)=abb6(14)
      acd6(21)=dotproduct(ninjaE4,spvak5l3)
      acd6(22)=dotproduct(ninjaE3,spvak5k2)
      acd6(23)=dotproduct(ninjaE3,spvak5l3)
      acd6(24)=abb6(20)
      acd6(25)=dotproduct(k2,ninjaA)
      acd6(26)=abb6(23)
      acd6(27)=abb6(22)
      acd6(28)=dotproduct(ninjaA,ninjaA)
      acd6(29)=dotproduct(ninjaA,spval3k1)
      acd6(30)=dotproduct(ninjaA,spvak5k2)
      acd6(31)=dotproduct(ninjaA,spvak2l3)
      acd6(32)=dotproduct(ninjaA,spvak5l3)
      acd6(33)=abb6(16)
      acd6(34)=abb6(17)
      acd6(35)=abb6(13)
      acd6(36)=abb6(10)
      acd6(37)=abb6(21)
      acd6(38)=abb6(24)
      acd6(39)=abb6(12)
      acd6(40)=abb6(15)
      acd6(41)=abb6(18)
      acd6(42)=abb6(28)
      acd6(43)=abb6(31)
      acd6(44)=dotproduct(ninjaE3,spval4k1)
      acd6(45)=abb6(29)
      acd6(46)=acd6(4)*acd6(7)
      acd6(47)=2.0_ki*acd6(9)
      acd6(47)=acd6(47)*acd6(10)
      acd6(46)=acd6(46)+acd6(47)
      acd6(46)=acd6(46)*acd6(2)
      acd6(47)=2.0_ki*acd6(3)
      acd6(48)=acd6(20)*acd6(22)
      acd6(47)=acd6(47)*acd6(48)
      acd6(49)=2.0_ki*acd6(8)
      acd6(50)=acd6(49)*acd6(6)
      acd6(50)=acd6(50)+acd6(11)
      acd6(50)=acd6(50)*acd6(9)
      acd6(51)=acd6(19)*acd6(5)*acd6(20)
      acd6(52)=acd6(1)*acd6(4)
      acd6(53)=acd6(52)*acd6(6)
      acd6(46)=acd6(46)+acd6(51)+acd6(50)+acd6(24)+acd6(53)+acd6(47)
      acd6(47)=acd6(23)*acd6(17)
      acd6(50)=acd6(13)*acd6(21)
      acd6(47)=acd6(47)+acd6(50)
      acd6(50)=acd6(15)*acd6(47)
      acd6(50)=acd6(50)+acd6(46)
      acd6(50)=acd6(5)*acd6(50)
      acd6(51)=acd6(49)*acd6(9)
      acd6(51)=acd6(51)+acd6(52)
      acd6(53)=acd6(3)*acd6(51)
      acd6(53)=acd6(18)+acd6(53)
      acd6(54)=acd6(16)*acd6(17)
      acd6(55)=acd6(13)*acd6(14)
      acd6(54)=acd6(54)+acd6(55)
      acd6(55)=acd6(15)*acd6(54)
      acd6(56)=acd6(12)*acd6(9)
      acd6(55)=acd6(55)+acd6(56)+acd6(53)
      acd6(55)=acd6(2)*acd6(55)
      acd6(56)=acd6(3)*acd6(23)
      acd6(57)=acd6(16)*acd6(6)
      acd6(56)=acd6(56)+acd6(57)
      acd6(57)=acd6(15)*acd6(13)
      acd6(58)=acd6(56)*acd6(57)
      acd6(50)=acd6(50)+acd6(58)+acd6(55)
      acd6(55)=acd6(9)*acd6(11)
      acd6(55)=acd6(55)+acd6(24)
      acd6(58)=acd6(49)*acd6(55)
      acd6(59)=acd6(1)*acd6(27)
      acd6(60)=acd6(13)*acd6(36)
      acd6(52)=acd6(52)*acd6(11)
      acd6(52)=acd6(59)+acd6(52)+acd6(60)+acd6(58)
      acd6(58)=acd6(29)*acd6(23)
      acd6(59)=acd6(13)*acd6(32)
      acd6(58)=acd6(58)+acd6(59)
      acd6(59)=acd6(15)*acd6(58)
      acd6(60)=ninjaP+acd6(28)
      acd6(60)=acd6(9)*acd6(60)
      acd6(61)=acd6(4)*acd6(25)
      acd6(61)=acd6(61)+acd6(33)
      acd6(60)=acd6(61)+acd6(60)
      acd6(62)=acd6(2)*acd6(60)
      acd6(48)=acd6(48)*acd6(12)
      acd6(63)=acd6(20)*acd6(30)
      acd6(63)=acd6(63)+acd6(35)
      acd6(64)=acd6(5)*acd6(63)
      acd6(59)=acd6(64)+acd6(62)+acd6(59)+2.0_ki*acd6(48)+acd6(52)
      acd6(59)=acd6(5)*acd6(59)
      acd6(62)=acd6(16)*acd6(34)
      acd6(64)=acd6(1)*acd6(26)
      acd6(65)=acd6(49)*acd6(18)
      acd6(62)=acd6(65)+acd6(62)+acd6(64)
      acd6(51)=acd6(12)*acd6(51)
      acd6(64)=acd6(16)*acd6(29)
      acd6(65)=acd6(13)*acd6(31)
      acd6(64)=acd6(64)+acd6(65)
      acd6(64)=acd6(15)*acd6(64)
      acd6(51)=acd6(64)+acd6(51)+acd6(62)
      acd6(51)=acd6(2)*acd6(51)
      acd6(64)=acd6(11)*acd6(16)
      acd6(65)=acd6(12)*acd6(23)
      acd6(65)=acd6(64)+acd6(65)
      acd6(57)=acd6(65)*acd6(57)
      acd6(65)=-acd6(13)*acd6(16)*acd6(37)
      acd6(51)=acd6(59)+acd6(51)+acd6(65)+acd6(57)
      acd6(57)=acd6(5)*acd6(2)*acd6(9)
      acd6(46)=ninjaP*acd6(46)
      acd6(47)=ninjaP*acd6(47)
      acd6(59)=acd6(29)*acd6(32)
      acd6(47)=acd6(59)+acd6(47)
      acd6(47)=acd6(15)*acd6(47)
      acd6(55)=acd6(28)*acd6(55)
      acd6(59)=acd6(25)*acd6(27)
      acd6(65)=acd6(29)*acd6(36)
      acd6(61)=acd6(11)*acd6(61)
      acd6(63)=acd6(12)*acd6(63)
      acd6(46)=acd6(47)+2.0_ki*acd6(63)+acd6(61)+acd6(65)+acd6(41)+acd6(59)+acd&
      &6(46)+acd6(55)
      acd6(46)=acd6(5)*acd6(46)
      acd6(47)=ninjaP*acd6(53)
      acd6(53)=acd6(12)*acd6(60)
      acd6(54)=ninjaP*acd6(54)
      acd6(55)=acd6(29)*acd6(31)
      acd6(54)=acd6(55)+acd6(54)
      acd6(54)=acd6(15)*acd6(54)
      acd6(55)=acd6(31)*acd6(34)
      acd6(59)=acd6(25)*acd6(26)
      acd6(60)=acd6(18)*acd6(28)
      acd6(47)=acd6(54)+acd6(53)+acd6(47)+acd6(60)+acd6(59)+acd6(40)+acd6(55)
      acd6(47)=acd6(2)*acd6(47)
      acd6(48)=acd6(48)+acd6(52)
      acd6(48)=acd6(12)*acd6(48)
      acd6(52)=acd6(11)*acd6(62)
      acd6(53)=ninjaP*acd6(56)
      acd6(54)=acd6(11)*acd6(31)
      acd6(53)=acd6(54)+acd6(53)
      acd6(53)=acd6(13)*acd6(53)
      acd6(54)=acd6(12)*acd6(58)
      acd6(55)=acd6(29)*acd6(64)
      acd6(53)=acd6(54)+acd6(55)+acd6(53)
      acd6(53)=acd6(15)*acd6(53)
      acd6(54)=acd6(44)*acd6(45)
      acd6(55)=-acd6(29)*acd6(37)
      acd6(55)=acd6(43)+acd6(55)
      acd6(55)=acd6(16)*acd6(55)
      acd6(49)=acd6(39)*acd6(49)
      acd6(56)=acd6(1)*acd6(38)
      acd6(58)=-acd6(31)*acd6(37)
      acd6(58)=acd6(42)+acd6(58)
      acd6(58)=acd6(13)*acd6(58)
      acd6(46)=acd6(46)+acd6(47)+acd6(53)+acd6(48)+acd6(58)+acd6(52)+acd6(56)+a&
      &cd6(49)+acd6(54)+acd6(55)
      brack(ninjaidxt1mu0)=acd6(51)
      brack(ninjaidxt1mu2)=acd6(57)
      brack(ninjaidxt0mu0)=acd6(46)
      brack(ninjaidxt0mu2)=acd6(50)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p1_dg_hhd_d6h0_qp_ninja_t3")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd6h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p1_dg_hhd_d6h0l131_qp
