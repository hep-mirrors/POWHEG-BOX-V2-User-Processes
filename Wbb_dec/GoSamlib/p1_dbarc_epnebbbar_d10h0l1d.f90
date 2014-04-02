module     p1_dbarc_epnebbbar_d10h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity0d10h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d10
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd10
      complex(ki) :: brack
      acd10(1)=abb10(10)
      brack=acd10(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd10
      complex(ki) :: brack
      acd10(1)=k2(iv1)
      acd10(2)=abb10(17)
      acd10(3)=l5(iv1)
      acd10(4)=abb10(27)
      acd10(5)=l6(iv1)
      acd10(6)=spvak1k2(iv1)
      acd10(7)=abb10(14)
      acd10(8)=spvak1l5(iv1)
      acd10(9)=abb10(25)
      acd10(10)=spvak1l6(iv1)
      acd10(11)=abb10(26)
      acd10(12)=spval5k2(iv1)
      acd10(13)=abb10(12)
      acd10(14)=spval5k3(iv1)
      acd10(15)=abb10(21)
      acd10(16)=spval6k2(iv1)
      acd10(17)=abb10(18)
      acd10(18)=spval6k3(iv1)
      acd10(19)=abb10(23)
      acd10(20)=-acd10(18)*acd10(19)
      acd10(21)=-acd10(16)*acd10(17)
      acd10(22)=-acd10(14)*acd10(15)
      acd10(23)=-acd10(12)*acd10(13)
      acd10(24)=-acd10(10)*acd10(11)
      acd10(25)=-acd10(8)*acd10(9)
      acd10(26)=-acd10(6)*acd10(7)
      acd10(27)=-acd10(1)*acd10(2)
      acd10(28)=-acd10(5)-acd10(3)
      acd10(28)=acd10(4)*acd10(28)
      brack=acd10(20)+acd10(21)+acd10(22)+acd10(23)+acd10(24)+acd10(25)+acd10(2&
      &6)+acd10(27)+acd10(28)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd10
      complex(ki) :: brack
      acd10(1)=d(iv1,iv2)
      acd10(2)=abb10(20)
      acd10(3)=k2(iv1)
      acd10(4)=spval5k2(iv2)
      acd10(5)=abb10(13)
      acd10(6)=spval6k2(iv2)
      acd10(7)=abb10(30)
      acd10(8)=k2(iv2)
      acd10(9)=spval5k2(iv1)
      acd10(10)=spval6k2(iv1)
      acd10(11)=k3(iv1)
      acd10(12)=k3(iv2)
      acd10(13)=k4(iv1)
      acd10(14)=k4(iv2)
      acd10(15)=spvak1k2(iv2)
      acd10(16)=abb10(22)
      acd10(17)=spvak1k3(iv2)
      acd10(18)=abb10(34)
      acd10(19)=spvak4k2(iv2)
      acd10(20)=abb10(11)
      acd10(21)=spvak4k3(iv2)
      acd10(22)=abb10(19)
      acd10(23)=spvak1k2(iv1)
      acd10(24)=spvak1k3(iv1)
      acd10(25)=spvak4k2(iv1)
      acd10(26)=spvak4k3(iv1)
      acd10(27)=abb10(15)
      acd10(28)=abb10(33)
      acd10(29)=abb10(24)
      acd10(30)=abb10(29)
      acd10(31)=acd10(21)*acd10(30)
      acd10(32)=acd10(19)*acd10(29)
      acd10(33)=acd10(17)*acd10(28)
      acd10(34)=acd10(15)*acd10(27)
      acd10(35)=-acd10(14)+acd10(8)-acd10(12)
      acd10(36)=acd10(7)*acd10(35)
      acd10(31)=acd10(36)+acd10(34)+acd10(33)+acd10(31)+acd10(32)
      acd10(31)=acd10(10)*acd10(31)
      acd10(32)=acd10(21)*acd10(22)
      acd10(33)=acd10(19)*acd10(20)
      acd10(34)=acd10(17)*acd10(18)
      acd10(36)=acd10(15)*acd10(16)
      acd10(35)=acd10(5)*acd10(35)
      acd10(32)=acd10(35)+acd10(36)+acd10(34)+acd10(32)+acd10(33)
      acd10(32)=acd10(9)*acd10(32)
      acd10(33)=acd10(26)*acd10(30)
      acd10(34)=acd10(25)*acd10(29)
      acd10(35)=acd10(24)*acd10(28)
      acd10(36)=acd10(23)*acd10(27)
      acd10(37)=-acd10(13)+acd10(3)-acd10(11)
      acd10(38)=acd10(7)*acd10(37)
      acd10(33)=acd10(38)+acd10(36)+acd10(35)+acd10(33)+acd10(34)
      acd10(33)=acd10(6)*acd10(33)
      acd10(34)=acd10(22)*acd10(26)
      acd10(35)=acd10(20)*acd10(25)
      acd10(36)=acd10(18)*acd10(24)
      acd10(38)=acd10(16)*acd10(23)
      acd10(37)=acd10(5)*acd10(37)
      acd10(34)=acd10(37)+acd10(38)+acd10(36)+acd10(34)+acd10(35)
      acd10(34)=acd10(4)*acd10(34)
      acd10(35)=acd10(1)*acd10(2)
      brack=acd10(31)+acd10(32)+acd10(33)+acd10(34)+2.0_ki*acd10(35)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd10h0
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
!---#[ subroutine reconstruct_d10:
   subroutine     reconstruct_d10(coeffs)
      use p1_dbarc_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_10:
      coeffs%coeffs_10%c0 = derivative(czip)
      coeffs%coeffs_10%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_10%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_10%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_10%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_10%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_10%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_10%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_10%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_10%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_10%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_10%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_10%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_10%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_10%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_10:
   end subroutine reconstruct_d10
!---#] subroutine reconstruct_d10:
end module     p1_dbarc_epnebbbar_d10h0l1d
