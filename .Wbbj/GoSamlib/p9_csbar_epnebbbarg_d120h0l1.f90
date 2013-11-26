module     p9_csbar_epnebbbarg_d120h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d120h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd120h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc120(25)
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      acc120(1)=abb120(10)
      acc120(2)=abb120(11)
      acc120(3)=abb120(12)
      acc120(4)=abb120(13)
      acc120(5)=abb120(14)
      acc120(6)=abb120(15)
      acc120(7)=abb120(16)
      acc120(8)=abb120(17)
      acc120(9)=abb120(18)
      acc120(10)=abb120(19)
      acc120(11)=abb120(20)
      acc120(12)=abb120(21)
      acc120(13)=abb120(22)
      acc120(14)=abb120(23)
      acc120(15)=abb120(24)
      acc120(16)=abb120(27)
      acc120(17)=acc120(12)*Qspval6e7
      acc120(18)=acc120(13)*Qspval6k7
      acc120(19)=acc120(14)*Qspval6l5
      acc120(17)=acc120(19)+acc120(18)+acc120(17)+acc120(11)
      acc120(17)=Qspvak4k1*acc120(17)
      acc120(18)=acc120(8)*Qspval6e7
      acc120(19)=acc120(9)*Qspval6k7
      acc120(20)=acc120(15)*Qspval6l5
      acc120(18)=acc120(20)+acc120(19)+acc120(18)+acc120(5)
      acc120(18)=Qspvak2k1*acc120(18)
      acc120(19)=Qspval6k2*acc120(10)
      acc120(20)=Qspval6k1*acc120(2)
      acc120(21)=Qspvak4k2*acc120(3)
      acc120(22)=Qspl6*acc120(16)
      acc120(23)=Qspk2*acc120(4)
      acc120(24)=Qspk1*acc120(6)
      acc120(25)=QspQ*acc120(7)
      brack=acc120(1)+acc120(17)+acc120(18)+acc120(19)+acc120(20)+acc120(21)+ac&
      &c120(22)+acc120(23)+acc120(24)+acc120(25)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram120_sign, shift => diagram120_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd120h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd120h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d120h0l1
