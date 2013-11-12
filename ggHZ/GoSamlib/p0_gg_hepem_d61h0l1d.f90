module     p0_gg_hepem_d61h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d61h0l1d.f90
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
   public :: derivative , reconstruct_d61
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd61h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd61
      complex(ki) :: brack
      acd61(1)=dotproduct(qshift,spvak1e2)
      acd61(2)=abb61(19)
      acd61(3)=dotproduct(qshift,spvae2k1)
      acd61(4)=abb61(24)
      acd61(5)=dotproduct(qshift,spvak2e1)
      acd61(6)=abb61(22)
      acd61(7)=dotproduct(qshift,spvae1k2)
      acd61(8)=abb61(14)
      acd61(9)=dotproduct(qshift,spvae1k4)
      acd61(10)=dotproduct(qshift,spvak5e2)
      acd61(11)=dotproduct(qshift,spvae2e1)
      acd61(12)=abb61(13)
      acd61(13)=abb61(16)
      acd61(14)=abb61(18)
      acd61(15)=abb61(28)
      acd61(16)=abb61(17)
      acd61(17)=abb61(23)
      acd61(18)=dotproduct(qshift,spvae2k4)
      acd61(19)=dotproduct(qshift,spvak5e1)
      acd61(20)=dotproduct(qshift,spvae1e2)
      acd61(21)=abb61(26)
      acd61(22)=abb61(30)
      acd61(23)=abb61(21)
      acd61(24)=abb61(20)
      acd61(25)=abb61(15)
      acd61(26)=abb61(25)
      acd61(27)=-acd61(19)*acd61(23)
      acd61(28)=-acd61(19)*acd61(12)
      acd61(28)=acd61(21)+acd61(28)
      acd61(28)=acd61(18)*acd61(28)
      acd61(27)=acd61(28)-acd61(25)+acd61(27)
      acd61(27)=acd61(20)*acd61(27)
      acd61(28)=acd61(10)*acd61(15)
      acd61(29)=acd61(10)*acd61(12)
      acd61(29)=acd61(13)+acd61(29)
      acd61(29)=acd61(9)*acd61(29)
      acd61(28)=acd61(29)-acd61(17)+acd61(28)
      acd61(28)=acd61(11)*acd61(28)
      acd61(29)=-acd61(7)*acd61(8)
      acd61(30)=-acd61(5)*acd61(6)
      acd61(31)=-acd61(3)*acd61(4)
      acd61(32)=-acd61(1)*acd61(2)
      acd61(33)=-acd61(19)*acd61(24)
      acd61(34)=-acd61(18)*acd61(22)
      acd61(35)=-acd61(10)*acd61(16)
      acd61(36)=-acd61(9)*acd61(14)
      brack=acd61(26)+acd61(27)+acd61(28)+acd61(29)+acd61(30)+acd61(31)+acd61(3&
      &2)+acd61(33)+acd61(34)+acd61(35)+acd61(36)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd61h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(46) :: acd61
      complex(ki) :: brack
      acd61(1)=spvak1e2(iv1)
      acd61(2)=abb61(19)
      acd61(3)=spvae2k1(iv1)
      acd61(4)=abb61(24)
      acd61(5)=spvak2e1(iv1)
      acd61(6)=abb61(22)
      acd61(7)=spvae1k2(iv1)
      acd61(8)=abb61(14)
      acd61(9)=spvae1k4(iv1)
      acd61(10)=dotproduct(qshift,spvak5e2)
      acd61(11)=dotproduct(qshift,spvae2e1)
      acd61(12)=abb61(13)
      acd61(13)=abb61(16)
      acd61(14)=abb61(18)
      acd61(15)=spvak5e2(iv1)
      acd61(16)=dotproduct(qshift,spvae1k4)
      acd61(17)=abb61(28)
      acd61(18)=abb61(17)
      acd61(19)=spvae2e1(iv1)
      acd61(20)=abb61(23)
      acd61(21)=spvae2k4(iv1)
      acd61(22)=dotproduct(qshift,spvak5e1)
      acd61(23)=dotproduct(qshift,spvae1e2)
      acd61(24)=abb61(26)
      acd61(25)=abb61(30)
      acd61(26)=spvak5e1(iv1)
      acd61(27)=dotproduct(qshift,spvae2k4)
      acd61(28)=abb61(21)
      acd61(29)=abb61(20)
      acd61(30)=spvae1e2(iv1)
      acd61(31)=abb61(15)
      acd61(32)=acd61(10)*acd61(19)
      acd61(33)=acd61(15)*acd61(11)
      acd61(32)=acd61(32)+acd61(33)
      acd61(33)=-acd61(16)*acd61(32)
      acd61(34)=acd61(22)*acd61(30)
      acd61(35)=acd61(26)*acd61(23)
      acd61(34)=acd61(34)+acd61(35)
      acd61(35)=acd61(27)*acd61(34)
      acd61(36)=acd61(9)*acd61(11)
      acd61(37)=-acd61(36)*acd61(10)
      acd61(38)=acd61(21)*acd61(23)
      acd61(39)=acd61(38)*acd61(22)
      acd61(33)=acd61(35)+acd61(39)+acd61(37)+acd61(33)
      acd61(33)=acd61(12)*acd61(33)
      acd61(35)=-acd61(16)*acd61(19)
      acd61(35)=-acd61(36)+acd61(35)
      acd61(35)=acd61(13)*acd61(35)
      acd61(32)=-acd61(17)*acd61(32)
      acd61(36)=-acd61(27)*acd61(30)
      acd61(36)=-acd61(38)+acd61(36)
      acd61(36)=acd61(24)*acd61(36)
      acd61(34)=acd61(28)*acd61(34)
      acd61(37)=acd61(2)*acd61(1)
      acd61(38)=acd61(4)*acd61(3)
      acd61(39)=acd61(6)*acd61(5)
      acd61(40)=acd61(8)*acd61(7)
      acd61(41)=acd61(14)*acd61(9)
      acd61(42)=acd61(18)*acd61(15)
      acd61(43)=acd61(20)*acd61(19)
      acd61(44)=acd61(25)*acd61(21)
      acd61(45)=acd61(29)*acd61(26)
      acd61(46)=acd61(31)*acd61(30)
      brack=acd61(32)+acd61(33)+acd61(34)+acd61(35)+acd61(36)+acd61(37)+acd61(3&
      &8)+acd61(39)+acd61(40)+acd61(41)+acd61(42)+acd61(43)+acd61(44)+acd61(45)&
      &+acd61(46)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd61h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd61
      complex(ki) :: brack
      acd61(1)=spvae1k4(iv1)
      acd61(2)=spvak5e2(iv2)
      acd61(3)=dotproduct(qshift,spvae2e1)
      acd61(4)=abb61(13)
      acd61(5)=spvae2e1(iv2)
      acd61(6)=dotproduct(qshift,spvak5e2)
      acd61(7)=abb61(16)
      acd61(8)=spvae1k4(iv2)
      acd61(9)=spvak5e2(iv1)
      acd61(10)=spvae2e1(iv1)
      acd61(11)=dotproduct(qshift,spvae1k4)
      acd61(12)=abb61(28)
      acd61(13)=spvae2k4(iv1)
      acd61(14)=spvak5e1(iv2)
      acd61(15)=dotproduct(qshift,spvae1e2)
      acd61(16)=spvae1e2(iv2)
      acd61(17)=dotproduct(qshift,spvak5e1)
      acd61(18)=abb61(26)
      acd61(19)=spvae2k4(iv2)
      acd61(20)=spvak5e1(iv1)
      acd61(21)=spvae1e2(iv1)
      acd61(22)=dotproduct(qshift,spvae2k4)
      acd61(23)=abb61(21)
      acd61(24)=acd61(1)*acd61(5)
      acd61(25)=acd61(8)*acd61(10)
      acd61(24)=acd61(24)+acd61(25)
      acd61(25)=acd61(6)*acd61(24)
      acd61(26)=acd61(2)*acd61(10)
      acd61(27)=acd61(9)*acd61(5)
      acd61(26)=acd61(26)+acd61(27)
      acd61(27)=acd61(11)*acd61(26)
      acd61(28)=acd61(13)*acd61(16)
      acd61(29)=acd61(19)*acd61(21)
      acd61(28)=acd61(28)+acd61(29)
      acd61(29)=-acd61(17)*acd61(28)
      acd61(30)=acd61(14)*acd61(21)
      acd61(31)=acd61(20)*acd61(16)
      acd61(30)=acd61(30)+acd61(31)
      acd61(31)=-acd61(22)*acd61(30)
      acd61(25)=acd61(31)+acd61(29)+acd61(27)+acd61(25)
      acd61(25)=acd61(4)*acd61(25)
      acd61(27)=acd61(1)*acd61(2)
      acd61(29)=acd61(8)*acd61(9)
      acd61(27)=acd61(27)+acd61(29)
      acd61(27)=acd61(3)*acd61(4)*acd61(27)
      acd61(24)=acd61(7)*acd61(24)
      acd61(26)=acd61(12)*acd61(26)
      acd61(29)=-acd61(13)*acd61(14)
      acd61(31)=-acd61(19)*acd61(20)
      acd61(29)=acd61(29)+acd61(31)
      acd61(29)=acd61(15)*acd61(4)*acd61(29)
      acd61(28)=acd61(18)*acd61(28)
      acd61(30)=-acd61(23)*acd61(30)
      brack=acd61(24)+acd61(25)+acd61(26)+acd61(27)+acd61(28)+acd61(29)+acd61(3&
      &0)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd61h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd61
      complex(ki) :: brack
      acd61(1)=spvae1k4(iv1)
      acd61(2)=spvak5e2(iv2)
      acd61(3)=spvae2e1(iv3)
      acd61(4)=abb61(13)
      acd61(5)=spvak5e2(iv3)
      acd61(6)=spvae2e1(iv2)
      acd61(7)=spvae1k4(iv2)
      acd61(8)=spvak5e2(iv1)
      acd61(9)=spvae2e1(iv1)
      acd61(10)=spvae1k4(iv3)
      acd61(11)=spvae2k4(iv1)
      acd61(12)=spvak5e1(iv2)
      acd61(13)=spvae1e2(iv3)
      acd61(14)=spvak5e1(iv3)
      acd61(15)=spvae1e2(iv2)
      acd61(16)=spvae2k4(iv2)
      acd61(17)=spvak5e1(iv1)
      acd61(18)=spvae1e2(iv1)
      acd61(19)=spvae2k4(iv3)
      acd61(20)=acd61(15)*acd61(17)
      acd61(21)=acd61(12)*acd61(18)
      acd61(20)=acd61(21)+acd61(20)
      acd61(20)=acd61(19)*acd61(20)
      acd61(21)=acd61(14)*acd61(18)
      acd61(22)=acd61(13)*acd61(17)
      acd61(21)=acd61(22)+acd61(21)
      acd61(21)=acd61(16)*acd61(21)
      acd61(22)=-acd61(6)*acd61(8)
      acd61(23)=-acd61(2)*acd61(9)
      acd61(22)=acd61(23)+acd61(22)
      acd61(22)=acd61(10)*acd61(22)
      acd61(23)=-acd61(5)*acd61(9)
      acd61(24)=-acd61(3)*acd61(8)
      acd61(23)=acd61(24)+acd61(23)
      acd61(23)=acd61(7)*acd61(23)
      acd61(24)=acd61(14)*acd61(15)
      acd61(25)=acd61(12)*acd61(13)
      acd61(24)=acd61(24)+acd61(25)
      acd61(24)=acd61(11)*acd61(24)
      acd61(25)=-acd61(5)*acd61(6)
      acd61(26)=-acd61(2)*acd61(3)
      acd61(25)=acd61(25)+acd61(26)
      acd61(25)=acd61(1)*acd61(25)
      acd61(20)=acd61(25)+acd61(24)+acd61(23)+acd61(22)+acd61(21)+acd61(20)
      brack=acd61(20)*acd61(4)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd61h0
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
!---#[ subroutine reconstruct_d61:
   subroutine     reconstruct_d61(coeffs)
      use p0_gg_hepem_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_61:
      coeffs%coeffs_61%c0 = derivative(czip)
      coeffs%coeffs_61%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_61%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_61%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_61%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_61%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_61%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_61%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_61%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_61%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_61%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_61%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_61%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_61%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_61%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_61%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_61%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_61%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_61%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_61%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_61%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_61%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_61%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_61%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_61%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_61%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_61%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_61%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_61%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_61%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_61%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_61%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_61%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_61%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_61%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_61:
   end subroutine reconstruct_d61
!---#] subroutine reconstruct_d61:
end module     p0_gg_hepem_d61h0l1d
