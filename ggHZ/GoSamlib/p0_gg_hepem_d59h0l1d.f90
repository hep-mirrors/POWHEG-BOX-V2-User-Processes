module     p0_gg_hepem_d59h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d59h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d59
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd59h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd59
      complex(ki) :: brack
      acd59(1)=dotproduct(qshift,spvak1e2)
      acd59(2)=abb59(19)
      acd59(3)=dotproduct(qshift,spvae2k1)
      acd59(4)=abb59(24)
      acd59(5)=dotproduct(qshift,spvak2e1)
      acd59(6)=abb59(22)
      acd59(7)=dotproduct(qshift,spvae1k2)
      acd59(8)=abb59(14)
      acd59(9)=dotproduct(qshift,spvae1k4)
      acd59(10)=dotproduct(qshift,spvak5e2)
      acd59(11)=dotproduct(qshift,spvae2e1)
      acd59(12)=abb59(13)
      acd59(13)=abb59(16)
      acd59(14)=abb59(18)
      acd59(15)=abb59(28)
      acd59(16)=abb59(17)
      acd59(17)=abb59(23)
      acd59(18)=dotproduct(qshift,spvae2k4)
      acd59(19)=dotproduct(qshift,spvak5e1)
      acd59(20)=dotproduct(qshift,spvae1e2)
      acd59(21)=abb59(26)
      acd59(22)=abb59(30)
      acd59(23)=abb59(21)
      acd59(24)=abb59(20)
      acd59(25)=abb59(15)
      acd59(26)=abb59(25)
      acd59(27)=-acd59(19)*acd59(23)
      acd59(28)=-acd59(19)*acd59(12)
      acd59(28)=acd59(21)+acd59(28)
      acd59(28)=acd59(18)*acd59(28)
      acd59(27)=acd59(28)-acd59(25)+acd59(27)
      acd59(27)=acd59(20)*acd59(27)
      acd59(28)=acd59(10)*acd59(15)
      acd59(29)=acd59(10)*acd59(12)
      acd59(29)=acd59(13)+acd59(29)
      acd59(29)=acd59(9)*acd59(29)
      acd59(28)=acd59(29)-acd59(17)+acd59(28)
      acd59(28)=acd59(11)*acd59(28)
      acd59(29)=-acd59(7)*acd59(8)
      acd59(30)=-acd59(5)*acd59(6)
      acd59(31)=-acd59(3)*acd59(4)
      acd59(32)=-acd59(1)*acd59(2)
      acd59(33)=-acd59(19)*acd59(24)
      acd59(34)=-acd59(18)*acd59(22)
      acd59(35)=-acd59(10)*acd59(16)
      acd59(36)=-acd59(9)*acd59(14)
      brack=acd59(26)+acd59(27)+acd59(28)+acd59(29)+acd59(30)+acd59(31)+acd59(3&
      &2)+acd59(33)+acd59(34)+acd59(35)+acd59(36)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd59h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(46) :: acd59
      complex(ki) :: brack
      acd59(1)=spvak1e2(iv1)
      acd59(2)=abb59(19)
      acd59(3)=spvae2k1(iv1)
      acd59(4)=abb59(24)
      acd59(5)=spvak2e1(iv1)
      acd59(6)=abb59(22)
      acd59(7)=spvae1k2(iv1)
      acd59(8)=abb59(14)
      acd59(9)=spvae1k4(iv1)
      acd59(10)=dotproduct(qshift,spvak5e2)
      acd59(11)=dotproduct(qshift,spvae2e1)
      acd59(12)=abb59(13)
      acd59(13)=abb59(16)
      acd59(14)=abb59(18)
      acd59(15)=spvak5e2(iv1)
      acd59(16)=dotproduct(qshift,spvae1k4)
      acd59(17)=abb59(28)
      acd59(18)=abb59(17)
      acd59(19)=spvae2e1(iv1)
      acd59(20)=abb59(23)
      acd59(21)=spvae2k4(iv1)
      acd59(22)=dotproduct(qshift,spvak5e1)
      acd59(23)=dotproduct(qshift,spvae1e2)
      acd59(24)=abb59(26)
      acd59(25)=abb59(30)
      acd59(26)=spvak5e1(iv1)
      acd59(27)=dotproduct(qshift,spvae2k4)
      acd59(28)=abb59(21)
      acd59(29)=abb59(20)
      acd59(30)=spvae1e2(iv1)
      acd59(31)=abb59(15)
      acd59(32)=acd59(10)*acd59(19)
      acd59(33)=acd59(15)*acd59(11)
      acd59(32)=acd59(32)+acd59(33)
      acd59(33)=-acd59(16)*acd59(32)
      acd59(34)=acd59(22)*acd59(30)
      acd59(35)=acd59(26)*acd59(23)
      acd59(34)=acd59(34)+acd59(35)
      acd59(35)=acd59(27)*acd59(34)
      acd59(36)=acd59(9)*acd59(11)
      acd59(37)=-acd59(36)*acd59(10)
      acd59(38)=acd59(21)*acd59(23)
      acd59(39)=acd59(38)*acd59(22)
      acd59(33)=acd59(35)+acd59(39)+acd59(37)+acd59(33)
      acd59(33)=acd59(12)*acd59(33)
      acd59(35)=-acd59(16)*acd59(19)
      acd59(35)=-acd59(36)+acd59(35)
      acd59(35)=acd59(13)*acd59(35)
      acd59(32)=-acd59(17)*acd59(32)
      acd59(36)=-acd59(27)*acd59(30)
      acd59(36)=-acd59(38)+acd59(36)
      acd59(36)=acd59(24)*acd59(36)
      acd59(34)=acd59(28)*acd59(34)
      acd59(37)=acd59(2)*acd59(1)
      acd59(38)=acd59(4)*acd59(3)
      acd59(39)=acd59(6)*acd59(5)
      acd59(40)=acd59(8)*acd59(7)
      acd59(41)=acd59(14)*acd59(9)
      acd59(42)=acd59(18)*acd59(15)
      acd59(43)=acd59(20)*acd59(19)
      acd59(44)=acd59(25)*acd59(21)
      acd59(45)=acd59(29)*acd59(26)
      acd59(46)=acd59(31)*acd59(30)
      brack=acd59(32)+acd59(33)+acd59(34)+acd59(35)+acd59(36)+acd59(37)+acd59(3&
      &8)+acd59(39)+acd59(40)+acd59(41)+acd59(42)+acd59(43)+acd59(44)+acd59(45)&
      &+acd59(46)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd59h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd59
      complex(ki) :: brack
      acd59(1)=spvae1k4(iv1)
      acd59(2)=spvak5e2(iv2)
      acd59(3)=dotproduct(qshift,spvae2e1)
      acd59(4)=abb59(13)
      acd59(5)=spvae2e1(iv2)
      acd59(6)=dotproduct(qshift,spvak5e2)
      acd59(7)=abb59(16)
      acd59(8)=spvae1k4(iv2)
      acd59(9)=spvak5e2(iv1)
      acd59(10)=spvae2e1(iv1)
      acd59(11)=dotproduct(qshift,spvae1k4)
      acd59(12)=abb59(28)
      acd59(13)=spvae2k4(iv1)
      acd59(14)=spvak5e1(iv2)
      acd59(15)=dotproduct(qshift,spvae1e2)
      acd59(16)=spvae1e2(iv2)
      acd59(17)=dotproduct(qshift,spvak5e1)
      acd59(18)=abb59(26)
      acd59(19)=spvae2k4(iv2)
      acd59(20)=spvak5e1(iv1)
      acd59(21)=spvae1e2(iv1)
      acd59(22)=dotproduct(qshift,spvae2k4)
      acd59(23)=abb59(21)
      acd59(24)=acd59(1)*acd59(5)
      acd59(25)=acd59(8)*acd59(10)
      acd59(24)=acd59(24)+acd59(25)
      acd59(25)=acd59(6)*acd59(24)
      acd59(26)=acd59(2)*acd59(10)
      acd59(27)=acd59(9)*acd59(5)
      acd59(26)=acd59(26)+acd59(27)
      acd59(27)=acd59(11)*acd59(26)
      acd59(28)=acd59(13)*acd59(16)
      acd59(29)=acd59(19)*acd59(21)
      acd59(28)=acd59(28)+acd59(29)
      acd59(29)=-acd59(17)*acd59(28)
      acd59(30)=acd59(14)*acd59(21)
      acd59(31)=acd59(20)*acd59(16)
      acd59(30)=acd59(30)+acd59(31)
      acd59(31)=-acd59(22)*acd59(30)
      acd59(25)=acd59(31)+acd59(29)+acd59(27)+acd59(25)
      acd59(25)=acd59(4)*acd59(25)
      acd59(27)=acd59(1)*acd59(2)
      acd59(29)=acd59(8)*acd59(9)
      acd59(27)=acd59(27)+acd59(29)
      acd59(27)=acd59(3)*acd59(4)*acd59(27)
      acd59(24)=acd59(7)*acd59(24)
      acd59(26)=acd59(12)*acd59(26)
      acd59(29)=-acd59(13)*acd59(14)
      acd59(31)=-acd59(19)*acd59(20)
      acd59(29)=acd59(29)+acd59(31)
      acd59(29)=acd59(15)*acd59(4)*acd59(29)
      acd59(28)=acd59(18)*acd59(28)
      acd59(30)=-acd59(23)*acd59(30)
      brack=acd59(24)+acd59(25)+acd59(26)+acd59(27)+acd59(28)+acd59(29)+acd59(3&
      &0)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd59h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd59
      complex(ki) :: brack
      acd59(1)=spvae1k4(iv1)
      acd59(2)=spvak5e2(iv2)
      acd59(3)=spvae2e1(iv3)
      acd59(4)=abb59(13)
      acd59(5)=spvak5e2(iv3)
      acd59(6)=spvae2e1(iv2)
      acd59(7)=spvae1k4(iv2)
      acd59(8)=spvak5e2(iv1)
      acd59(9)=spvae2e1(iv1)
      acd59(10)=spvae1k4(iv3)
      acd59(11)=spvae2k4(iv1)
      acd59(12)=spvak5e1(iv2)
      acd59(13)=spvae1e2(iv3)
      acd59(14)=spvak5e1(iv3)
      acd59(15)=spvae1e2(iv2)
      acd59(16)=spvae2k4(iv2)
      acd59(17)=spvak5e1(iv1)
      acd59(18)=spvae1e2(iv1)
      acd59(19)=spvae2k4(iv3)
      acd59(20)=acd59(15)*acd59(17)
      acd59(21)=acd59(12)*acd59(18)
      acd59(20)=acd59(21)+acd59(20)
      acd59(20)=acd59(19)*acd59(20)
      acd59(21)=acd59(14)*acd59(18)
      acd59(22)=acd59(13)*acd59(17)
      acd59(21)=acd59(22)+acd59(21)
      acd59(21)=acd59(16)*acd59(21)
      acd59(22)=-acd59(6)*acd59(8)
      acd59(23)=-acd59(2)*acd59(9)
      acd59(22)=acd59(23)+acd59(22)
      acd59(22)=acd59(10)*acd59(22)
      acd59(23)=-acd59(5)*acd59(9)
      acd59(24)=-acd59(3)*acd59(8)
      acd59(23)=acd59(24)+acd59(23)
      acd59(23)=acd59(7)*acd59(23)
      acd59(24)=acd59(14)*acd59(15)
      acd59(25)=acd59(12)*acd59(13)
      acd59(24)=acd59(24)+acd59(25)
      acd59(24)=acd59(11)*acd59(24)
      acd59(25)=-acd59(5)*acd59(6)
      acd59(26)=-acd59(2)*acd59(3)
      acd59(25)=acd59(25)+acd59(26)
      acd59(25)=acd59(1)*acd59(25)
      acd59(20)=acd59(25)+acd59(24)+acd59(23)+acd59(22)+acd59(21)+acd59(20)
      brack=acd59(20)*acd59(4)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd59h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k2
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
      end if
      if(present(i2)) then
          iv2=i2
          deg=2
      else
          iv2=1
      end if
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
      end if
      t1 = 0
      if(deg.eq.0) then
         numerator = cond(epspow.eq.t1,brack_1,Q,mu2)
         return
      end if
      if(deg.eq.1) then
         numerator = cond(epspow.eq.t1,brack_2,Q,mu2)
         return
      end if
      if(deg.eq.2) then
         numerator = cond(epspow.eq.t1,brack_3,Q,mu2)
         return
      end if
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d59:
   subroutine     reconstruct_d59(coeffs)
      use p0_gg_hepem_groups, only: tensrec_info_group5
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group5), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_59:
      coeffs%coeffs_59%c0 = derivative(czip)
      coeffs%coeffs_59%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_59%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_59%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_59%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_59%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_59%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_59%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_59%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_59%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_59%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_59%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_59%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_59%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_59%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_59%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_59%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_59%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_59%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_59%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_59%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_59%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_59%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_59%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_59%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_59%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_59%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_59%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_59%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_59%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_59%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_59%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_59%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_59%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_59%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_59:
   end subroutine reconstruct_d59
!---#] subroutine reconstruct_d59:
end module     p0_gg_hepem_d59h0l1d
