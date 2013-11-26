module     p1_dbarc_epnebbbarg_d42h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d42h2l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd42h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc42(21)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      acc42(1)=abb42(9)
      acc42(2)=abb42(10)
      acc42(3)=abb42(11)
      acc42(4)=abb42(12)
      acc42(5)=abb42(13)
      acc42(6)=abb42(15)
      acc42(7)=abb42(16)
      acc42(8)=abb42(17)
      acc42(9)=abb42(18)
      acc42(10)=abb42(21)
      acc42(11)=abb42(23)
      acc42(12)=abb42(24)
      acc42(13)=abb42(27)
      acc42(14)=Qspl5+Qspl6
      acc42(14)=acc42(14)*acc42(9)
      acc42(15)=Qspvak7l6*acc42(13)
      acc42(16)=Qspvak7k2*acc42(12)
      acc42(17)=Qspval5l6*acc42(4)
      acc42(18)=Qspval5k2*acc42(1)
      acc42(19)=Qspvak1l6*acc42(3)
      acc42(20)=Qspvak1k2*acc42(5)
      acc42(21)=Qspk2*acc42(8)
      acc42(14)=acc42(14)+acc42(21)+acc42(20)+acc42(19)+acc42(18)+acc42(17)+acc&
      &42(16)+acc42(7)+acc42(15)
      acc42(14)=Qspvak4k3*acc42(14)
      acc42(15)=-Qspk3-Qspk4
      acc42(15)=acc42(10)*acc42(15)
      acc42(16)=Qspvak7k3*acc42(11)
      acc42(17)=Qspvak1k3*acc42(2)
      acc42(18)=QspQ*acc42(6)
      brack=acc42(14)+acc42(15)+acc42(16)+acc42(17)+acc42(18)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram42_sign, shift => diagram42_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd42h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d42
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d42 = 0.0_ki
      d42 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d42, ki), aimag(d42), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd42h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d42
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d42 = 0.0_ki
      d42 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d42, ki), aimag(d42), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d42h2l1
