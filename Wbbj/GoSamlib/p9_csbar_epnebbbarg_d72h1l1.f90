module     p9_csbar_epnebbbarg_d72h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d72h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd72h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc72(40)
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1k2
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc72(1)=abb72(9)
      acc72(2)=abb72(10)
      acc72(3)=abb72(11)
      acc72(4)=abb72(12)
      acc72(5)=abb72(13)
      acc72(6)=abb72(14)
      acc72(7)=abb72(15)
      acc72(8)=abb72(16)
      acc72(9)=abb72(17)
      acc72(10)=abb72(18)
      acc72(11)=abb72(19)
      acc72(12)=abb72(20)
      acc72(13)=abb72(21)
      acc72(14)=abb72(22)
      acc72(15)=abb72(23)
      acc72(16)=abb72(24)
      acc72(17)=abb72(25)
      acc72(18)=abb72(26)
      acc72(19)=abb72(27)
      acc72(20)=abb72(28)
      acc72(21)=abb72(29)
      acc72(22)=abb72(30)
      acc72(23)=abb72(33)
      acc72(24)=abb72(36)
      acc72(25)=abb72(37)
      acc72(26)=abb72(43)
      acc72(27)=abb72(44)
      acc72(28)=abb72(50)
      acc72(29)=abb72(51)
      acc72(30)=abb72(62)
      acc72(31)=acc72(22)*Qspval6k2
      acc72(32)=Qspval6e7*acc72(20)
      acc72(33)=Qspval6k7*acc72(1)
      acc72(34)=Qspval6l5*acc72(21)
      acc72(31)=acc72(34)+acc72(33)+acc72(32)+acc72(31)+acc72(5)
      acc72(31)=acc72(31)*Qspvak2k1
      acc72(32)=acc72(2)*Qspval6k1
      acc72(33)=acc72(23)*Qspk2
      acc72(34)=acc72(26)*QspQ
      acc72(35)=acc72(27)*Qspk1
      acc72(36)=acc72(28)*Qspl6
      acc72(37)=acc72(29)*Qspval6k2
      acc72(31)=acc72(37)+acc72(31)+acc72(36)+acc72(35)+acc72(34)+acc72(33)+acc&
      &72(15)+acc72(32)
      acc72(31)=Qspvak4k3*acc72(31)
      acc72(32)=acc72(10)*Qspvak4k2
      acc72(33)=acc72(14)*Qspvak4k1
      acc72(34)=acc72(24)*Qspval6k1
      acc72(32)=acc72(34)+acc72(33)+acc72(32)+acc72(4)
      acc72(32)=Qspk1*acc72(32)
      acc72(33)=acc72(3)*Qspvak4k2
      acc72(34)=acc72(7)*Qspval6k1
      acc72(35)=acc72(11)*Qspvak4k1
      acc72(33)=acc72(35)+acc72(9)+acc72(34)+acc72(33)
      acc72(33)=QspQ*acc72(33)
      acc72(34)=acc72(13)*Qspval6k3
      acc72(35)=acc72(18)*Qspval6k1
      acc72(34)=acc72(35)+acc72(34)+acc72(12)
      acc72(34)=Qspvak2k1*acc72(34)
      acc72(35)=acc72(6)*Qspval6k1
      acc72(36)=acc72(17)*Qspval6k3
      acc72(37)=acc72(19)*Qspk2
      acc72(38)=acc72(25)*Qspval6k2
      acc72(39)=acc72(30)*Qspl6
      acc72(40)=Qspvak1k2*acc72(8)
      brack=acc72(16)+acc72(31)+acc72(32)+acc72(33)+acc72(34)+acc72(35)+acc72(3&
      &6)+acc72(37)+acc72(38)+acc72(39)+acc72(40)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram72_sign, shift => diagram72_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd72h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd72h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d72h1l1
