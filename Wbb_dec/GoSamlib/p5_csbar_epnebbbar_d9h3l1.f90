module     p5_csbar_epnebbbar_d9h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity3d9h3l1.f90
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
      use p5_csbar_epnebbbar_abbrevd9h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc9(1)
      brack=0.0_ki
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_csbar_epnebbbar_groups, only: &
!           & sign => diagram9_sign, shift => diagram9_shift
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd9h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d9
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d9 = 0.0_ki
      d9 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d9, ki), aimag(d9), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd9h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d9
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d9 = 0.0_ki
      d9 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d9, ki), aimag(d9), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_csbar_epnebbbar_d9h3l1
