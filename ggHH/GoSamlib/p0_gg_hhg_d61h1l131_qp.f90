module     p0_gg_hhg_d61h1l131_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d61h1l131_qp.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd61h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd61(1)=dotproduct(k2,ninjaE3)
      acd61(2)=dotproduct(ninjaE3,spvak2k1)
      acd61(3)=dotproduct(ninjaE3,spvak2k5)
      acd61(4)=abb61(12)
      acd61(5)=dotproduct(ninjaA,ninjaE3)
      acd61(6)=abb61(35)
      acd61(7)=dotproduct(ninjaE3,spvak2l3)
      acd61(8)=dotproduct(ninjaE3,spval3k5)
      acd61(9)=abb61(34)
      acd61(10)=dotproduct(ninjaE3,spval3k1)
      acd61(11)=acd61(5)*acd61(6)
      acd61(12)=acd61(1)*acd61(4)
      acd61(11)=2.0_ki*acd61(11)+acd61(12)
      acd61(11)=acd61(2)*acd61(11)
      acd61(12)=acd61(7)*acd61(9)
      acd61(13)=acd61(10)*acd61(12)
      acd61(11)=acd61(13)+acd61(11)
      acd61(11)=acd61(3)*acd61(11)
      acd61(12)=acd61(2)*acd61(8)*acd61(12)
      acd61(11)=acd61(12)+acd61(11)
      acd61(11)=acd61(3)*acd61(11)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd61(11)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd61h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(66) :: acd61
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd61(1)=dotproduct(k2,ninjaE3)
      acd61(2)=dotproduct(ninjaE3,spvak2k1)
      acd61(3)=dotproduct(ninjaE3,spvak2k5)
      acd61(4)=dotproduct(ninjaE4,spvak2k5)
      acd61(5)=abb61(12)
      acd61(6)=dotproduct(ninjaE4,spvak2k1)
      acd61(7)=dotproduct(k2,ninjaE4)
      acd61(8)=dotproduct(ninjaA,ninjaE3)
      acd61(9)=abb61(35)
      acd61(10)=dotproduct(ninjaA,ninjaE4)
      acd61(11)=dotproduct(ninjaA,spvak2k1)
      acd61(12)=dotproduct(ninjaA,spvak2k5)
      acd61(13)=dotproduct(ninjaE3,spvak2l3)
      acd61(14)=dotproduct(ninjaE4,spval3k5)
      acd61(15)=abb61(34)
      acd61(16)=dotproduct(ninjaE3,spval3k5)
      acd61(17)=dotproduct(ninjaE4,spvak2l3)
      acd61(18)=abb61(13)
      acd61(19)=dotproduct(ninjaE4,spval3k1)
      acd61(20)=dotproduct(ninjaE3,spval3k1)
      acd61(21)=abb61(26)
      acd61(22)=dotproduct(k2,ninjaA)
      acd61(23)=abb61(39)
      acd61(24)=dotproduct(ninjaA,ninjaA)
      acd61(25)=dotproduct(ninjaA,spvak2l3)
      acd61(26)=dotproduct(ninjaA,spval3k1)
      acd61(27)=dotproduct(ninjaA,spval3k5)
      acd61(28)=abb61(11)
      acd61(29)=abb61(27)
      acd61(30)=abb61(19)
      acd61(31)=abb61(29)
      acd61(32)=abb61(31)
      acd61(33)=abb61(28)
      acd61(34)=abb61(24)
      acd61(35)=abb61(30)
      acd61(36)=abb61(15)
      acd61(37)=abb61(20)
      acd61(38)=abb61(21)
      acd61(39)=abb61(14)
      acd61(40)=abb61(23)
      acd61(41)=abb61(32)
      acd61(42)=dotproduct(ninjaE3,spvak2l4)
      acd61(43)=abb61(38)
      acd61(44)=2.0_ki*acd61(4)
      acd61(45)=acd61(5)*acd61(1)
      acd61(46)=acd61(44)*acd61(45)
      acd61(47)=acd61(13)*acd61(15)
      acd61(48)=acd61(47)*acd61(14)
      acd61(49)=acd61(4)*acd61(9)*acd61(8)
      acd61(46)=acd61(48)+4.0_ki*acd61(49)+acd61(46)+acd61(18)
      acd61(48)=2.0_ki*acd61(12)
      acd61(49)=acd61(9)*acd61(48)
      acd61(50)=acd61(15)*acd61(16)
      acd61(51)=acd61(17)*acd61(50)
      acd61(49)=acd61(51)+acd61(49)+acd61(46)
      acd61(49)=acd61(2)*acd61(49)
      acd61(51)=acd61(5)*acd61(7)
      acd61(52)=2.0_ki*acd61(9)
      acd61(52)=acd61(52)*acd61(10)
      acd61(51)=acd61(51)+acd61(52)
      acd61(51)=acd61(51)*acd61(2)
      acd61(52)=acd61(45)*acd61(6)
      acd61(53)=acd61(47)*acd61(19)
      acd61(51)=acd61(51)+acd61(53)+acd61(52)+acd61(21)
      acd61(52)=2.0_ki*acd61(8)
      acd61(53)=acd61(52)*acd61(6)
      acd61(53)=acd61(53)+acd61(11)
      acd61(54)=acd61(9)*acd61(53)
      acd61(55)=acd61(20)*acd61(17)
      acd61(56)=acd61(15)*acd61(55)
      acd61(54)=acd61(56)+acd61(54)+acd61(51)
      acd61(54)=acd61(3)*acd61(54)
      acd61(56)=acd61(16)*acd61(6)
      acd61(44)=acd61(44)*acd61(20)
      acd61(44)=acd61(56)+acd61(44)
      acd61(56)=acd61(44)*acd61(47)
      acd61(49)=acd61(54)+acd61(56)+acd61(49)
      acd61(49)=acd61(3)*acd61(49)
      acd61(54)=acd61(2)*acd61(47)*acd61(16)*acd61(4)
      acd61(49)=acd61(54)+acd61(49)
      acd61(54)=acd61(1)*acd61(23)
      acd61(56)=acd61(52)*acd61(18)
      acd61(54)=acd61(54)+acd61(56)
      acd61(56)=acd61(52)*acd61(9)
      acd61(45)=acd61(56)+acd61(45)
      acd61(56)=acd61(45)*acd61(48)
      acd61(57)=acd61(50)*acd61(25)
      acd61(58)=acd61(15)*acd61(27)
      acd61(58)=acd61(28)+acd61(58)
      acd61(58)=acd61(13)*acd61(58)
      acd61(56)=acd61(58)+acd61(57)+acd61(56)+acd61(54)
      acd61(56)=acd61(2)*acd61(56)
      acd61(57)=acd61(45)*acd61(11)
      acd61(58)=acd61(52)*acd61(21)
      acd61(57)=acd61(57)+acd61(58)
      acd61(58)=ninjaP+acd61(24)
      acd61(58)=acd61(58)*acd61(9)
      acd61(59)=acd61(5)*acd61(22)
      acd61(59)=acd61(59)+acd61(30)
      acd61(58)=acd61(58)+acd61(59)
      acd61(60)=acd61(2)*acd61(58)
      acd61(61)=acd61(15)*acd61(25)
      acd61(61)=acd61(61)+acd61(32)
      acd61(61)=acd61(20)*acd61(61)
      acd61(47)=acd61(26)*acd61(47)
      acd61(47)=acd61(60)+acd61(47)+acd61(61)+acd61(57)
      acd61(47)=acd61(3)*acd61(47)
      acd61(60)=acd61(48)*acd61(20)
      acd61(61)=acd61(11)*acd61(16)
      acd61(60)=acd61(60)+acd61(61)
      acd61(60)=acd61(60)*acd61(15)
      acd61(62)=acd61(20)*acd61(31)
      acd61(62)=acd61(62)+acd61(60)
      acd61(62)=acd61(13)*acd61(62)
      acd61(47)=acd61(47)+acd61(62)+acd61(56)
      acd61(47)=acd61(3)*acd61(47)
      acd61(56)=acd61(16)*acd61(29)
      acd61(50)=acd61(50)*acd61(12)
      acd61(50)=acd61(56)+acd61(50)
      acd61(56)=acd61(2)*acd61(13)*acd61(50)
      acd61(47)=acd61(56)+acd61(47)
      acd61(56)=acd61(2)*acd61(9)*acd61(3)**2
      acd61(46)=ninjaP*acd61(46)
      acd61(58)=acd61(58)*acd61(48)
      acd61(62)=acd61(25)*acd61(27)
      acd61(63)=ninjaP*acd61(16)
      acd61(64)=acd61(17)*acd61(63)
      acd61(62)=acd61(62)+acd61(64)
      acd61(62)=acd61(15)*acd61(62)
      acd61(64)=acd61(22)*acd61(23)
      acd61(65)=acd61(18)*acd61(24)
      acd61(66)=acd61(25)*acd61(28)
      acd61(46)=acd61(62)+acd61(58)+acd61(66)+acd61(65)+acd61(37)+acd61(64)+acd&
      &61(46)
      acd61(46)=acd61(2)*acd61(46)
      acd61(51)=ninjaP*acd61(51)
      acd61(58)=acd61(11)*acd61(24)
      acd61(53)=ninjaP*acd61(53)
      acd61(53)=acd61(58)+acd61(53)
      acd61(53)=acd61(9)*acd61(53)
      acd61(58)=acd61(25)*acd61(26)
      acd61(55)=ninjaP*acd61(55)
      acd61(55)=acd61(58)+acd61(55)
      acd61(55)=acd61(15)*acd61(55)
      acd61(58)=acd61(26)*acd61(32)
      acd61(62)=acd61(21)*acd61(24)
      acd61(59)=acd61(11)*acd61(59)
      acd61(51)=acd61(55)+acd61(53)+acd61(59)+acd61(62)+acd61(40)+acd61(58)+acd&
      &61(51)
      acd61(51)=acd61(3)*acd61(51)
      acd61(44)=ninjaP*acd61(44)
      acd61(53)=acd61(11)*acd61(27)
      acd61(55)=acd61(26)*acd61(48)
      acd61(44)=acd61(55)+acd61(53)+acd61(44)
      acd61(44)=acd61(15)*acd61(44)
      acd61(53)=acd61(26)*acd61(31)
      acd61(55)=acd61(11)*acd61(28)
      acd61(44)=acd61(44)+acd61(55)+acd61(38)+acd61(53)
      acd61(44)=acd61(13)*acd61(44)
      acd61(53)=acd61(11)*acd61(54)
      acd61(55)=acd61(20)*acd61(32)
      acd61(55)=acd61(55)+acd61(57)
      acd61(48)=acd61(55)*acd61(48)
      acd61(55)=acd61(25)*acd61(60)
      acd61(57)=acd61(42)*acd61(43)
      acd61(58)=acd61(25)*acd61(31)
      acd61(58)=acd61(41)+acd61(58)
      acd61(58)=acd61(20)*acd61(58)
      acd61(59)=acd61(35)*acd61(52)
      acd61(44)=acd61(51)+acd61(46)+acd61(44)+acd61(55)+acd61(48)+acd61(53)+acd&
      &61(59)+acd61(57)+acd61(58)
      acd61(44)=acd61(3)*acd61(44)
      acd61(45)=acd61(12)*acd61(45)
      acd61(45)=acd61(45)+acd61(54)
      acd61(45)=acd61(12)*acd61(45)
      acd61(46)=acd61(4)*acd61(63)
      acd61(48)=acd61(12)*acd61(27)
      acd61(46)=acd61(46)+acd61(48)
      acd61(46)=acd61(15)*acd61(46)
      acd61(48)=acd61(27)*acd61(29)
      acd61(51)=acd61(12)*acd61(28)
      acd61(46)=acd61(46)+acd61(51)+acd61(36)+acd61(48)
      acd61(46)=acd61(13)*acd61(46)
      acd61(48)=acd61(25)*acd61(50)
      acd61(50)=acd61(1)*acd61(33)
      acd61(51)=acd61(34)*acd61(52)
      acd61(45)=acd61(46)+acd61(45)+acd61(51)+acd61(50)+acd61(48)
      acd61(45)=acd61(2)*acd61(45)
      acd61(46)=acd61(12)*acd61(20)
      acd61(48)=acd61(61)+acd61(46)
      acd61(48)=acd61(15)*acd61(12)*acd61(48)
      acd61(50)=acd61(20)*acd61(39)
      acd61(51)=acd61(29)*acd61(61)
      acd61(46)=acd61(31)*acd61(46)
      acd61(46)=acd61(48)+acd61(46)+acd61(50)+acd61(51)
      acd61(46)=acd61(13)*acd61(46)
      acd61(44)=acd61(44)+acd61(46)+acd61(45)
      brack(ninjaidxt1mu0)=acd61(47)
      brack(ninjaidxt1mu2)=acd61(56)
      brack(ninjaidxt0mu0)=acd61(44)
      brack(ninjaidxt0mu2)=acd61(49)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d61h1_qp_ninja_t3")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd61h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k4
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d61h1l131_qp
