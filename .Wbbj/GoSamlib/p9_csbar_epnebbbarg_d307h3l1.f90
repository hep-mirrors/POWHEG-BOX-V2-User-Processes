module     p9_csbar_epnebbbarg_d307h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d307h3l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd307h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc307(36)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7l5
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspe7 = dotproduct(Q,e7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      QspQ = dotproduct(Q,Q)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      acc307(1)=abb307(7)
      acc307(2)=abb307(8)
      acc307(3)=abb307(9)
      acc307(4)=abb307(10)
      acc307(5)=abb307(11)
      acc307(6)=abb307(12)
      acc307(7)=abb307(13)
      acc307(8)=abb307(14)
      acc307(9)=abb307(15)
      acc307(10)=abb307(16)
      acc307(11)=abb307(17)
      acc307(12)=abb307(18)
      acc307(13)=abb307(19)
      acc307(14)=abb307(20)
      acc307(15)=abb307(21)
      acc307(16)=abb307(22)
      acc307(17)=abb307(23)
      acc307(18)=abb307(24)
      acc307(19)=abb307(25)
      acc307(20)=abb307(26)
      acc307(21)=abb307(27)
      acc307(22)=abb307(28)
      acc307(23)=abb307(29)
      acc307(24)=abb307(30)
      acc307(25)=abb307(31)
      acc307(26)=abb307(32)
      acc307(27)=abb307(33)
      acc307(28)=abb307(34)
      acc307(29)=abb307(35)
      acc307(30)=-Qspk1+Qspk4+Qspk3
      acc307(31)=acc307(14)*acc307(30)
      acc307(32)=acc307(22)*Qspvak2k3
      acc307(33)=acc307(13)*Qspvak2k1
      acc307(34)=Qspvak2l6*acc307(11)
      acc307(35)=Qspvak4k1*acc307(16)
      acc307(36)=Qspvak4k3*acc307(25)
      acc307(31)=acc307(36)+acc307(35)+acc307(34)+acc307(32)+acc307(33)+acc307(&
      &31)
      acc307(31)=Qspvak2k7*acc307(31)
      acc307(32)=Qspvak2l6*acc307(12)
      acc307(32)=acc307(32)+acc307(18)
      acc307(32)=-acc307(32)*acc307(30)
      acc307(33)=acc307(3)*Qspvak2l5
      acc307(34)=Qspvak2l6*acc307(4)
      acc307(34)=acc307(8)+acc307(34)
      acc307(34)=Qspvak4k1*acc307(34)
      acc307(35)=Qspvak2l6*acc307(27)
      acc307(35)=acc307(9)+acc307(35)
      acc307(35)=Qspvak4k3*acc307(35)
      acc307(32)=acc307(35)+acc307(34)+acc307(33)+acc307(32)
      acc307(32)=Qspe7*acc307(32)
      acc307(33)=Qspvak7l6*acc307(28)
      acc307(34)=Qspvae7l6*acc307(21)
      acc307(35)=QspQ*acc307(20)
      acc307(33)=-acc307(33)+acc307(34)+acc307(35)-acc307(15)
      acc307(30)=acc307(33)*acc307(30)
      acc307(33)=Qspvak7l6*acc307(2)
      acc307(34)=Qspvae7l6*acc307(10)
      acc307(35)=QspQ*acc307(6)
      acc307(33)=acc307(35)+acc307(34)+acc307(5)+acc307(33)
      acc307(33)=Qspvak4k1*acc307(33)
      acc307(34)=Qspvak7l6*acc307(29)
      acc307(35)=Qspvae7l6*acc307(19)
      acc307(36)=QspQ*acc307(17)
      acc307(34)=acc307(36)+acc307(35)+acc307(7)+acc307(34)
      acc307(34)=Qspvak4k3*acc307(34)
      acc307(35)=QspQ*acc307(26)
      acc307(35)=acc307(35)+acc307(24)
      acc307(35)=Qspvak2e7*acc307(35)
      acc307(36)=acc307(23)*Qspvak7l5
      brack=acc307(1)+acc307(30)+acc307(31)+acc307(32)+acc307(33)+acc307(34)+ac&
      &c307(35)+acc307(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram307_sign, shift => diagram307_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd307h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d307
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d307 = 0.0_ki
      d307 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d307, ki), aimag(d307), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd307h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d307
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d307 = 0.0_ki
      d307 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d307, ki), aimag(d307), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d307h3l1
