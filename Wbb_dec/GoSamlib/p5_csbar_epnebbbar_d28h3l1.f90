module     p5_csbar_epnebbbar_d28h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity3d28h3l1.f90
   ! generator: buildfortran.py
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd28h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc28(13)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      acc28(1)=abb28(6)
      acc28(2)=abb28(7)
      acc28(3)=abb28(8)
      acc28(4)=abb28(9)
      acc28(5)=abb28(10)
      acc28(6)=abb28(11)
      acc28(7)=abb28(12)
      acc28(8)=abb28(13)
      acc28(9)=Qspvak4k1*acc28(1)
      acc28(10)=Qspvak4k3*acc28(4)
      acc28(11)=-Qspk1+Qspk4+Qspk3
      acc28(12)=-acc28(3)*acc28(11)
      acc28(9)=acc28(12)+acc28(10)+acc28(5)+acc28(9)
      acc28(9)=Qspvak2l5*acc28(9)
      acc28(10)=acc28(7)*Qspvak2l6
      acc28(12)=Qspvak4k1*acc28(2)
      acc28(13)=Qspvak4k3*acc28(6)
      acc28(11)=-acc28(8)*acc28(11)
      brack=acc28(9)+acc28(10)+acc28(11)+acc28(12)+acc28(13)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_csbar_epnebbbar_groups, only: &
!           & sign => diagram28_sign, shift => diagram28_shift
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd28h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d28
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d28 = 0.0_ki
      d28 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d28, ki), aimag(d28), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd28h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d28
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d28 = 0.0_ki
      d28 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d28, ki), aimag(d28), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_csbar_epnebbbar_d28h3l1
