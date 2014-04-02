module     p5_csbar_epnebbbar_d33h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity2d33h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d33
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd33h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd33
      complex(ki) :: brack
      acd33(1)=abb33(11)
      brack=acd33(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd33h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd33
      complex(ki) :: brack
      acd33(1)=k2(iv1)
      acd33(2)=abb33(17)
      acd33(3)=l5(iv1)
      acd33(4)=abb33(14)
      acd33(5)=l6(iv1)
      acd33(6)=abb33(13)
      acd33(7)=spvak2k1(iv1)
      acd33(8)=abb33(15)
      acd33(9)=spvak2k3(iv1)
      acd33(10)=abb33(26)
      acd33(11)=spvak2l5(iv1)
      acd33(12)=abb33(12)
      acd33(13)=spvak2l6(iv1)
      acd33(14)=abb33(19)
      acd33(15)=spvak4k1(iv1)
      acd33(16)=abb33(34)
      acd33(17)=spvak4k2(iv1)
      acd33(18)=abb33(37)
      acd33(19)=spvak4l6(iv1)
      acd33(20)=abb33(22)
      acd33(21)=spval5k1(iv1)
      acd33(22)=abb33(32)
      acd33(23)=spval5k2(iv1)
      acd33(24)=abb33(28)
      acd33(25)=spval5l6(iv1)
      acd33(26)=abb33(23)
      acd33(27)=-acd33(2)*acd33(1)
      acd33(28)=-acd33(4)*acd33(3)
      acd33(29)=-acd33(6)*acd33(5)
      acd33(30)=-acd33(8)*acd33(7)
      acd33(31)=-acd33(10)*acd33(9)
      acd33(32)=-acd33(12)*acd33(11)
      acd33(33)=-acd33(14)*acd33(13)
      acd33(34)=-acd33(16)*acd33(15)
      acd33(35)=-acd33(18)*acd33(17)
      acd33(36)=-acd33(20)*acd33(19)
      acd33(37)=-acd33(22)*acd33(21)
      acd33(38)=-acd33(24)*acd33(23)
      acd33(39)=-acd33(26)*acd33(25)
      brack=acd33(27)+acd33(28)+acd33(29)+acd33(30)+acd33(31)+acd33(32)+acd33(3&
      &3)+acd33(34)+acd33(35)+acd33(36)+acd33(37)+acd33(38)+acd33(39)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd33h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd33
      complex(ki) :: brack
      acd33(1)=d(iv1,iv2)
      acd33(2)=abb33(29)
      acd33(3)=k2(iv1)
      acd33(4)=spvak2k1(iv2)
      acd33(5)=abb33(16)
      acd33(6)=spvak2k3(iv2)
      acd33(7)=abb33(27)
      acd33(8)=spvak4k1(iv2)
      acd33(9)=abb33(39)
      acd33(10)=k2(iv2)
      acd33(11)=spvak2k1(iv1)
      acd33(12)=spvak2k3(iv1)
      acd33(13)=spvak4k1(iv1)
      acd33(14)=spval5l6(iv2)
      acd33(15)=abb33(18)
      acd33(16)=spval5l6(iv1)
      acd33(17)=abb33(25)
      acd33(18)=abb33(40)
      acd33(19)=acd33(8)*acd33(18)
      acd33(20)=acd33(6)*acd33(17)
      acd33(21)=acd33(4)*acd33(15)
      acd33(19)=acd33(21)+acd33(19)+acd33(20)
      acd33(19)=acd33(16)*acd33(19)
      acd33(20)=acd33(13)*acd33(18)
      acd33(21)=acd33(12)*acd33(17)
      acd33(22)=acd33(11)*acd33(15)
      acd33(20)=acd33(22)+acd33(20)+acd33(21)
      acd33(20)=acd33(14)*acd33(20)
      acd33(21)=acd33(9)*acd33(13)
      acd33(22)=acd33(7)*acd33(12)
      acd33(23)=acd33(5)*acd33(11)
      acd33(21)=acd33(23)+acd33(21)+acd33(22)
      acd33(21)=acd33(10)*acd33(21)
      acd33(22)=acd33(8)*acd33(9)
      acd33(23)=acd33(6)*acd33(7)
      acd33(24)=acd33(4)*acd33(5)
      acd33(22)=acd33(24)+acd33(22)+acd33(23)
      acd33(22)=acd33(3)*acd33(22)
      acd33(23)=acd33(1)*acd33(2)
      brack=acd33(19)+acd33(20)+acd33(21)+acd33(22)+2.0_ki*acd33(23)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd33h2
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
      qshift = 0
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
!---#[ subroutine reconstruct_d33:
   subroutine     reconstruct_d33(coeffs)
      use p5_csbar_epnebbbar_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_33:
      coeffs%coeffs_33%c0 = derivative(czip)
      coeffs%coeffs_33%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_33%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_33%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_33%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_33%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_33%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_33%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_33%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_33%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_33%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_33%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_33%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_33%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_33%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_33:
   end subroutine reconstruct_d33
!---#] subroutine reconstruct_d33:
end module     p5_csbar_epnebbbar_d33h2l1d
