module     p0_dbaru_epnebbbarg_d128h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d128h3l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc128(53)
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k3
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      QspQ = dotproduct(Q,Q)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc128(1)=abb128(12)
      acc128(2)=abb128(13)
      acc128(3)=abb128(14)
      acc128(4)=abb128(15)
      acc128(5)=abb128(16)
      acc128(6)=abb128(17)
      acc128(7)=abb128(18)
      acc128(8)=abb128(19)
      acc128(9)=abb128(20)
      acc128(10)=abb128(21)
      acc128(11)=abb128(22)
      acc128(12)=abb128(23)
      acc128(13)=abb128(24)
      acc128(14)=abb128(25)
      acc128(15)=abb128(26)
      acc128(16)=abb128(27)
      acc128(17)=abb128(28)
      acc128(18)=abb128(29)
      acc128(19)=abb128(30)
      acc128(20)=abb128(31)
      acc128(21)=abb128(32)
      acc128(22)=abb128(34)
      acc128(23)=abb128(35)
      acc128(24)=abb128(36)
      acc128(25)=abb128(37)
      acc128(26)=abb128(38)
      acc128(27)=abb128(39)
      acc128(28)=abb128(40)
      acc128(29)=abb128(42)
      acc128(30)=abb128(43)
      acc128(31)=abb128(45)
      acc128(32)=abb128(46)
      acc128(33)=abb128(47)
      acc128(34)=abb128(48)
      acc128(35)=abb128(49)
      acc128(36)=abb128(50)
      acc128(37)=abb128(55)
      acc128(38)=abb128(56)
      acc128(39)=abb128(57)
      acc128(40)=abb128(59)
      acc128(41)=abb128(60)
      acc128(42)=abb128(64)
      acc128(43)=abb128(76)
      acc128(44)=Qspvak1l5*acc128(10)
      acc128(45)=Qspvak1l6*acc128(34)
      acc128(46)=Qspvak1k7*acc128(30)
      acc128(44)=-acc128(46)+acc128(44)-acc128(45)
      acc128(45)=Qspk4+Qspk3
      acc128(46)=-Qspk2+acc128(45)
      acc128(46)=acc128(43)*acc128(46)
      acc128(47)=Qspvak2l5*acc128(20)
      acc128(48)=Qspvak2l6*acc128(39)
      acc128(49)=Qspvak2k7*acc128(36)
      acc128(50)=QspQ*acc128(19)
      acc128(51)=Qspvak4k2*acc128(5)
      acc128(52)=Qspvak4k3*acc128(35)
      acc128(46)=acc128(52)+acc128(51)+acc128(50)+acc128(49)+acc128(48)+acc128(&
      &47)+acc128(40)+acc128(46)-acc128(44)
      acc128(46)=Qspk2*acc128(46)
      acc128(47)=Qspvak2l5*acc128(21)
      acc128(48)=Qspvak2l6*acc128(14)
      acc128(49)=Qspvak2k7*acc128(8)
      acc128(47)=acc128(49)+acc128(48)+acc128(47)+acc128(9)
      acc128(47)=Qspvak1k2*acc128(47)
      acc128(48)=Qspk1*acc128(27)
      acc128(49)=acc128(7)*Qspvak3k2
      acc128(50)=Qspvak1l5*acc128(33)
      acc128(51)=Qspvak1l6*acc128(42)
      acc128(52)=Qspvak1k7*acc128(41)
      acc128(53)=Qspvak4k2*acc128(11)
      acc128(47)=acc128(53)+acc128(52)+acc128(51)+acc128(50)+acc128(49)+acc128(&
      &37)+acc128(48)+acc128(47)
      acc128(47)=Qspvak4k3*acc128(47)
      acc128(48)=Qspvak1l5*acc128(1)
      acc128(49)=-Qspvak1l6*acc128(15)
      acc128(50)=-Qspvak1k7*acc128(3)
      acc128(51)=Qspvak2l5*acc128(18)
      acc128(52)=Qspvak2l6*acc128(38)
      acc128(53)=Qspvak2k7*acc128(29)
      acc128(48)=acc128(53)+acc128(52)+acc128(51)+acc128(50)+acc128(49)+acc128(&
      &17)+acc128(48)
      acc128(48)=QspQ*acc128(48)
      acc128(49)=-acc128(5)*acc128(45)
      acc128(50)=Qspvak2l5*acc128(22)
      acc128(51)=Qspvak2l6*acc128(32)
      acc128(52)=Qspvak2k7*acc128(12)
      acc128(53)=-QspQ*acc128(7)
      acc128(49)=acc128(53)+acc128(52)+acc128(51)+acc128(50)+acc128(4)+acc128(4&
      &9)
      acc128(49)=Qspvak4k2*acc128(49)
      acc128(44)=-acc128(23)-acc128(44)
      acc128(44)=-acc128(44)*acc128(45)
      acc128(45)=Qspvak1k3*acc128(13)
      acc128(50)=Qspvak1k2*acc128(1)
      acc128(45)=acc128(50)+acc128(6)+acc128(45)
      acc128(45)=Qspvak2l5*acc128(45)
      acc128(50)=Qspvak1k3*acc128(31)
      acc128(51)=-Qspvak1k2*acc128(15)
      acc128(50)=acc128(51)+acc128(26)+acc128(50)
      acc128(50)=Qspvak2l6*acc128(50)
      acc128(51)=Qspvak1k3*acc128(28)
      acc128(52)=-Qspvak1k2*acc128(3)
      acc128(51)=acc128(52)+acc128(25)+acc128(51)
      acc128(51)=Qspvak2k7*acc128(51)
      acc128(52)=Qspk1*acc128(16)
      acc128(53)=Qspvak3k2*acc128(2)
      brack=acc128(24)+acc128(44)+acc128(45)+acc128(46)+acc128(47)+acc128(48)+a&
      &cc128(49)+acc128(50)+acc128(51)+acc128(52)+acc128(53)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d128
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d128 = 0.0_ki
      d128 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d128, ki), aimag(d128), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d128h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d128
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d128 = 0.0_ki
      d128 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d128, ki), aimag(d128), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d128h3l1
