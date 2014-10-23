module     p0_dbaru_epnebbbarg_d103h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d103h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd103h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc103(48)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      acc103(1)=abb103(10)
      acc103(2)=abb103(11)
      acc103(3)=abb103(12)
      acc103(4)=abb103(13)
      acc103(5)=abb103(14)
      acc103(6)=abb103(15)
      acc103(7)=abb103(16)
      acc103(8)=abb103(17)
      acc103(9)=abb103(18)
      acc103(10)=abb103(19)
      acc103(11)=abb103(20)
      acc103(12)=abb103(21)
      acc103(13)=abb103(22)
      acc103(14)=abb103(23)
      acc103(15)=abb103(24)
      acc103(16)=abb103(25)
      acc103(17)=abb103(26)
      acc103(18)=abb103(27)
      acc103(19)=abb103(28)
      acc103(20)=abb103(29)
      acc103(21)=abb103(30)
      acc103(22)=abb103(31)
      acc103(23)=abb103(32)
      acc103(24)=abb103(33)
      acc103(25)=abb103(34)
      acc103(26)=abb103(36)
      acc103(27)=abb103(37)
      acc103(28)=abb103(38)
      acc103(29)=abb103(40)
      acc103(30)=abb103(41)
      acc103(31)=abb103(43)
      acc103(32)=abb103(44)
      acc103(33)=abb103(45)
      acc103(34)=abb103(48)
      acc103(35)=abb103(52)
      acc103(36)=abb103(57)
      acc103(37)=Qspl6+Qspl5
      acc103(38)=acc103(32)*acc103(37)
      acc103(39)=acc103(33)*Qspvak1l6
      acc103(40)=acc103(16)*Qspvak1k2
      acc103(41)=Qspk2*acc103(10)
      acc103(42)=Qspval5k2*acc103(2)
      acc103(43)=Qspval5l6*acc103(3)
      acc103(38)=acc103(43)+acc103(42)+acc103(41)+acc103(40)+acc103(39)+acc103(&
      &24)+acc103(38)
      acc103(38)=Qspvak2k7*acc103(38)
      acc103(39)=-acc103(30)*acc103(37)
      acc103(40)=Qspk4+Qspk3
      acc103(41)=-Qspk7-acc103(40)
      acc103(41)=acc103(36)*acc103(41)
      acc103(42)=acc103(29)*Qspvak1k7
      acc103(43)=acc103(34)*Qspvak1k4
      acc103(44)=Qspk2*acc103(22)
      acc103(45)=Qspvak1k3*acc103(27)
      acc103(46)=Qspval5k2*acc103(5)
      acc103(47)=Qspval5l6*acc103(4)
      acc103(48)=QspQ*acc103(31)
      acc103(38)=acc103(38)+acc103(48)+acc103(47)+acc103(46)+acc103(45)+acc103(&
      &44)+acc103(43)+acc103(42)+acc103(26)+acc103(41)+acc103(39)
      acc103(38)=Qspvak4k3*acc103(38)
      acc103(39)=acc103(28)*acc103(37)
      acc103(41)=Qspk2*acc103(21)
      acc103(42)=Qspvak1k3*acc103(7)
      acc103(43)=Qspval5k2*acc103(20)
      acc103(44)=Qspval5l6*acc103(35)
      acc103(39)=acc103(41)+acc103(42)-acc103(43)+acc103(44)+acc103(14)+acc103(&
      &39)
      acc103(39)=-acc103(39)*acc103(40)
      acc103(40)=acc103(18)*acc103(37)
      acc103(41)=Qspk2*acc103(17)
      acc103(42)=Qspvak1k3*acc103(34)
      acc103(43)=Qspval5k2*acc103(13)
      acc103(44)=Qspval5l6*acc103(25)
      acc103(40)=acc103(44)+acc103(43)+acc103(42)+acc103(6)+acc103(41)+acc103(4&
      &0)
      acc103(40)=QspQ*acc103(40)
      acc103(37)=acc103(19)*acc103(37)
      acc103(41)=Qspk7*acc103(15)
      acc103(42)=Qspk2*acc103(11)
      acc103(43)=Qspvak1k3*acc103(1)
      acc103(44)=Qspval5k2*acc103(9)
      acc103(45)=Qspval5l6*acc103(23)
      acc103(46)=Qspvak1k3*acc103(12)
      acc103(46)=acc103(8)+acc103(46)
      acc103(46)=Qspvak2k7*acc103(46)
      brack=acc103(37)+acc103(38)+acc103(39)+acc103(40)+acc103(41)+acc103(42)+a&
      &cc103(43)+acc103(44)+acc103(45)+acc103(46)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd103h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d103
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d103 = 0.0_ki
      d103 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d103, ki), aimag(d103), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d103h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd103h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d103
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k7-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d103 = 0.0_ki
      d103 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d103, ki), aimag(d103), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d103h2l1
