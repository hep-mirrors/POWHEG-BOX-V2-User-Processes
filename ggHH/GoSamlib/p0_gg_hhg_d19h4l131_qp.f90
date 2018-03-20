module     p0_gg_hhg_d19h4l131_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d19h4l131_qp.f90
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
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd19
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(60) :: acd19
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd19(1)=dotproduct(k2,ninjaE3)
      acd19(2)=abb19(24)
      acd19(3)=dotproduct(ninjaA,ninjaE3)
      acd19(4)=abb19(16)
      acd19(5)=dotproduct(ninjaE3,spvak2l3)
      acd19(6)=abb19(10)
      acd19(7)=dotproduct(ninjaE3,spval3k5)
      acd19(8)=abb19(11)
      acd19(9)=dotproduct(ninjaE3,spval4k5)
      acd19(10)=abb19(37)
      acd19(11)=dotproduct(ninjaE3,spvak2l4)
      acd19(12)=abb19(31)
      acd19(13)=abb19(28)
      acd19(14)=abb19(19)
      acd19(15)=abb19(20)
      acd19(16)=abb19(21)
      acd19(17)=abb19(14)
      acd19(18)=abb19(32)
      acd19(19)=dotproduct(ninjaE3,spvak2k5)
      acd19(20)=dotproduct(ninjaE3,spvak5k2)
      acd19(21)=abb19(13)
      acd19(22)=dotproduct(ninjaE3,spvak1k2)
      acd19(23)=abb19(23)
      acd19(24)=dotproduct(k2,ninjaA)
      acd19(25)=dotproduct(ninjaA,ninjaA)
      acd19(26)=dotproduct(ninjaA,spvak2l3)
      acd19(27)=dotproduct(ninjaA,spval3k5)
      acd19(28)=dotproduct(ninjaA,spval4k5)
      acd19(29)=abb19(25)
      acd19(30)=dotproduct(k5,ninjaE3)
      acd19(31)=abb19(27)
      acd19(32)=dotproduct(ninjaA,spvak2l4)
      acd19(33)=abb19(12)
      acd19(34)=dotproduct(ninjaA,spvak2k5)
      acd19(35)=dotproduct(ninjaA,spvak5k2)
      acd19(36)=dotproduct(ninjaA,spvak1k2)
      acd19(37)=abb19(18)
      acd19(38)=abb19(29)
      acd19(39)=abb19(35)
      acd19(40)=dotproduct(ninjaE3,spvak1k5)
      acd19(41)=abb19(15)
      acd19(42)=abb19(39)
      acd19(43)=acd19(2)*acd19(1)
      acd19(44)=acd19(6)*acd19(5)
      acd19(45)=acd19(8)*acd19(7)
      acd19(46)=acd19(10)*acd19(9)
      acd19(47)=acd19(12)*acd19(11)
      acd19(43)=acd19(47)+acd19(43)+acd19(44)+acd19(45)+acd19(46)
      acd19(44)=4.0_ki*acd19(4)
      acd19(44)=acd19(44)*acd19(3)
      acd19(44)=acd19(43)-acd19(44)
      acd19(43)=acd19(3)*acd19(43)
      acd19(45)=acd19(4)*acd19(3)**2
      acd19(43)=-2.0_ki*acd19(45)+acd19(43)
      acd19(45)=acd19(14)*acd19(5)
      acd19(46)=acd19(15)*acd19(7)
      acd19(47)=acd19(16)*acd19(9)
      acd19(45)=acd19(47)+acd19(45)+acd19(46)
      acd19(46)=acd19(1)*acd19(45)
      acd19(47)=acd19(20)*acd19(21)
      acd19(48)=acd19(22)*acd19(23)
      acd19(47)=acd19(47)+acd19(48)
      acd19(48)=acd19(19)*acd19(47)
      acd19(49)=acd19(17)*acd19(9)
      acd19(50)=acd19(5)*acd19(49)
      acd19(51)=acd19(18)*acd19(11)
      acd19(52)=acd19(7)*acd19(51)
      acd19(53)=acd19(13)*acd19(1)**2
      acd19(43)=acd19(53)+acd19(52)+acd19(50)+2.0_ki*acd19(43)+acd19(46)+acd19(&
      &48)
      acd19(46)=ninjaP+acd19(25)
      acd19(46)=acd19(46)*acd19(44)
      acd19(48)=2.0_ki*acd19(3)
      acd19(50)=acd19(2)*acd19(48)
      acd19(52)=acd19(13)*acd19(1)
      acd19(45)=2.0_ki*acd19(52)+acd19(50)+acd19(45)
      acd19(45)=acd19(24)*acd19(45)
      acd19(50)=acd19(6)*acd19(48)
      acd19(52)=acd19(14)*acd19(1)
      acd19(49)=acd19(49)+acd19(50)+acd19(52)
      acd19(49)=acd19(26)*acd19(49)
      acd19(50)=acd19(8)*acd19(48)
      acd19(52)=acd19(15)*acd19(1)
      acd19(50)=acd19(51)+acd19(50)+acd19(52)
      acd19(50)=acd19(27)*acd19(50)
      acd19(51)=acd19(17)*acd19(5)
      acd19(52)=acd19(10)*acd19(48)
      acd19(53)=acd19(16)*acd19(1)
      acd19(51)=acd19(51)+acd19(52)+acd19(53)
      acd19(51)=acd19(28)*acd19(51)
      acd19(52)=acd19(35)*acd19(21)
      acd19(53)=acd19(36)*acd19(23)
      acd19(52)=acd19(53)+acd19(52)
      acd19(52)=acd19(19)*acd19(52)
      acd19(53)=acd19(18)*acd19(7)
      acd19(54)=acd19(12)*acd19(48)
      acd19(53)=acd19(54)+acd19(53)
      acd19(53)=acd19(32)*acd19(53)
      acd19(47)=acd19(34)*acd19(47)
      acd19(54)=acd19(29)*acd19(1)
      acd19(55)=acd19(31)*acd19(30)
      acd19(48)=acd19(33)*acd19(48)
      acd19(56)=acd19(37)*acd19(5)
      acd19(57)=acd19(38)*acd19(7)
      acd19(58)=acd19(39)*acd19(9)
      acd19(59)=acd19(41)*acd19(40)
      acd19(60)=acd19(42)*acd19(11)
      acd19(45)=acd19(60)+acd19(59)+acd19(58)+acd19(57)+acd19(56)+acd19(48)+acd&
      &19(55)+acd19(54)+acd19(47)+acd19(53)+acd19(51)+acd19(50)+acd19(49)+acd19&
      &(45)+acd19(46)+acd19(52)
      brack(ninjaidxt1mu0)=acd19(43)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd19(45)
      brack(ninjaidxt0mu2)=acd19(44)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d19h4_qp_ninja_t3")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d19h4l131_qp
