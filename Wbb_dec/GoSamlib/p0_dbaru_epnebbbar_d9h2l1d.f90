module     p0_dbaru_epnebbbar_d9h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity2d9h2l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d9
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd9h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd9
      complex(ki) :: brack
      acd9(1)=dotproduct(k2,qshift)
      acd9(2)=dotproduct(qshift,spvak4k3)
      acd9(3)=abb9(13)
      acd9(4)=dotproduct(k3,qshift)
      acd9(5)=abb9(19)
      acd9(6)=dotproduct(k4,qshift)
      acd9(7)=dotproduct(l5,qshift)
      acd9(8)=abb9(15)
      acd9(9)=dotproduct(l6,qshift)
      acd9(10)=dotproduct(qshift,qshift)
      acd9(11)=abb9(14)
      acd9(12)=dotproduct(qshift,spvak1k2)
      acd9(13)=abb9(10)
      acd9(14)=dotproduct(qshift,spvak1l6)
      acd9(15)=abb9(9)
      acd9(16)=dotproduct(qshift,spval5k2)
      acd9(17)=abb9(8)
      acd9(18)=dotproduct(qshift,spval5l6)
      acd9(19)=abb9(21)
      acd9(20)=abb9(12)
      acd9(21)=dotproduct(qshift,spvak1k3)
      acd9(22)=abb9(11)
      acd9(23)=acd9(18)*acd9(19)
      acd9(24)=acd9(16)*acd9(17)
      acd9(25)=acd9(14)*acd9(15)
      acd9(26)=acd9(12)*acd9(13)
      acd9(27)=acd9(1)*acd9(3)
      acd9(28)=-acd9(9)-acd9(7)
      acd9(28)=acd9(8)*acd9(28)
      acd9(23)=acd9(28)+acd9(27)+acd9(26)+acd9(25)+acd9(24)-acd9(20)+acd9(23)
      acd9(23)=acd9(2)*acd9(23)
      acd9(24)=-acd9(21)*acd9(22)
      acd9(25)=acd9(10)*acd9(11)
      acd9(26)=-acd9(6)-acd9(4)
      acd9(26)=acd9(5)*acd9(26)
      brack=acd9(23)+acd9(24)+acd9(25)+acd9(26)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd9h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd9
      complex(ki) :: brack
      acd9(1)=k2(iv1)
      acd9(2)=dotproduct(qshift,spvak4k3)
      acd9(3)=abb9(13)
      acd9(4)=k3(iv1)
      acd9(5)=abb9(19)
      acd9(6)=k4(iv1)
      acd9(7)=l5(iv1)
      acd9(8)=abb9(15)
      acd9(9)=l6(iv1)
      acd9(10)=qshift(iv1)
      acd9(11)=abb9(14)
      acd9(12)=spvak4k3(iv1)
      acd9(13)=dotproduct(k2,qshift)
      acd9(14)=dotproduct(l5,qshift)
      acd9(15)=dotproduct(l6,qshift)
      acd9(16)=dotproduct(qshift,spvak1k2)
      acd9(17)=abb9(10)
      acd9(18)=dotproduct(qshift,spvak1l6)
      acd9(19)=abb9(9)
      acd9(20)=dotproduct(qshift,spval5k2)
      acd9(21)=abb9(8)
      acd9(22)=dotproduct(qshift,spval5l6)
      acd9(23)=abb9(21)
      acd9(24)=abb9(12)
      acd9(25)=spvak1k2(iv1)
      acd9(26)=spvak1k3(iv1)
      acd9(27)=abb9(11)
      acd9(28)=spvak1l6(iv1)
      acd9(29)=spval5k2(iv1)
      acd9(30)=spval5l6(iv1)
      acd9(31)=-acd9(23)*acd9(30)
      acd9(32)=-acd9(21)*acd9(29)
      acd9(33)=-acd9(19)*acd9(28)
      acd9(34)=-acd9(17)*acd9(25)
      acd9(35)=-acd9(3)*acd9(1)
      acd9(36)=acd9(9)+acd9(7)
      acd9(36)=acd9(8)*acd9(36)
      acd9(31)=acd9(36)+acd9(35)+acd9(34)+acd9(33)+acd9(31)+acd9(32)
      acd9(31)=acd9(2)*acd9(31)
      acd9(32)=-acd9(23)*acd9(22)
      acd9(33)=-acd9(21)*acd9(20)
      acd9(34)=-acd9(19)*acd9(18)
      acd9(35)=-acd9(17)*acd9(16)
      acd9(36)=-acd9(3)*acd9(13)
      acd9(37)=acd9(15)+acd9(14)
      acd9(37)=acd9(8)*acd9(37)
      acd9(32)=acd9(37)+acd9(36)+acd9(35)+acd9(34)+acd9(33)+acd9(24)+acd9(32)
      acd9(32)=acd9(12)*acd9(32)
      acd9(33)=acd9(26)*acd9(27)
      acd9(34)=acd9(10)*acd9(11)
      acd9(35)=acd9(6)+acd9(4)
      acd9(35)=acd9(5)*acd9(35)
      brack=acd9(31)+acd9(32)+acd9(33)-2.0_ki*acd9(34)+acd9(35)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd9h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd9
      complex(ki) :: brack
      acd9(1)=d(iv1,iv2)
      acd9(2)=abb9(14)
      acd9(3)=k2(iv1)
      acd9(4)=spvak4k3(iv2)
      acd9(5)=abb9(13)
      acd9(6)=k2(iv2)
      acd9(7)=spvak4k3(iv1)
      acd9(8)=l5(iv1)
      acd9(9)=abb9(15)
      acd9(10)=l5(iv2)
      acd9(11)=l6(iv1)
      acd9(12)=l6(iv2)
      acd9(13)=spvak1k2(iv2)
      acd9(14)=abb9(10)
      acd9(15)=spvak1l6(iv2)
      acd9(16)=abb9(9)
      acd9(17)=spval5k2(iv2)
      acd9(18)=abb9(8)
      acd9(19)=spval5l6(iv2)
      acd9(20)=abb9(21)
      acd9(21)=spvak1k2(iv1)
      acd9(22)=spvak1l6(iv1)
      acd9(23)=spval5k2(iv1)
      acd9(24)=spval5l6(iv1)
      acd9(25)=acd9(20)*acd9(19)
      acd9(26)=acd9(18)*acd9(17)
      acd9(27)=acd9(16)*acd9(15)
      acd9(28)=acd9(14)*acd9(13)
      acd9(29)=acd9(5)*acd9(6)
      acd9(30)=-acd9(12)-acd9(10)
      acd9(30)=acd9(9)*acd9(30)
      acd9(25)=acd9(30)+acd9(29)+acd9(28)+acd9(27)+acd9(25)+acd9(26)
      acd9(25)=acd9(7)*acd9(25)
      acd9(26)=acd9(20)*acd9(24)
      acd9(27)=acd9(18)*acd9(23)
      acd9(28)=acd9(16)*acd9(22)
      acd9(29)=acd9(14)*acd9(21)
      acd9(30)=acd9(5)*acd9(3)
      acd9(31)=-acd9(11)-acd9(8)
      acd9(31)=acd9(9)*acd9(31)
      acd9(26)=acd9(31)+acd9(30)+acd9(29)+acd9(28)+acd9(26)+acd9(27)
      acd9(26)=acd9(4)*acd9(26)
      acd9(27)=acd9(1)*acd9(2)
      brack=acd9(25)+acd9(26)+2.0_ki*acd9(27)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd9h2
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k3+k2-k4
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d9:
   subroutine     reconstruct_d9(coeffs)
      use p0_dbaru_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_9:
      coeffs%coeffs_9%c0 = derivative(czip)
      coeffs%coeffs_9%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_9%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_9%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_9%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_9%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_9%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_9%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_9%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_9%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_9%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_9%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_9%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_9%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_9%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_9:
   end subroutine reconstruct_d9
!---#] subroutine reconstruct_d9:
end module     p0_dbaru_epnebbbar_d9h2l1d
