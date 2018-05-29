module     p8_cbarc_epnemumnmubarg_d603h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity5d603h5l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d603
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd603
      complex(ki) :: brack
      acd603(1)=abb603(9)
      brack=acd603(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(9) :: acd603
      complex(ki) :: brack
      acd603(1)=k2(iv1)
      acd603(2)=abb603(16)
      acd603(3)=k7(iv1)
      acd603(4)=abb603(8)
      acd603(5)=spvak7k2(iv1)
      acd603(6)=abb603(7)
      acd603(7)=acd603(2)*acd603(1)
      acd603(8)=acd603(4)*acd603(3)
      acd603(9)=acd603(6)*acd603(5)
      brack=acd603(7)+acd603(8)+acd603(9)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd603
      complex(ki) :: brack
      acd603(1)=d(iv1,iv2)
      acd603(2)=abb603(13)
      acd603(3)=k2(iv1)
      acd603(4)=spvak4k2(iv2)
      acd603(5)=abb603(23)
      acd603(6)=spvak7k2(iv2)
      acd603(7)=abb603(19)
      acd603(8)=k2(iv2)
      acd603(9)=spvak4k2(iv1)
      acd603(10)=spvak7k2(iv1)
      acd603(11)=abb603(10)
      acd603(12)=spvak1k2(iv2)
      acd603(13)=abb603(14)
      acd603(14)=spvak1k3(iv2)
      acd603(15)=abb603(17)
      acd603(16)=spvak4k3(iv2)
      acd603(17)=abb603(11)
      acd603(18)=spvak5k2(iv2)
      acd603(19)=abb603(20)
      acd603(20)=spvak5k3(iv2)
      acd603(21)=abb603(21)
      acd603(22)=spvak1k2(iv1)
      acd603(23)=spvak1k3(iv1)
      acd603(24)=spvak4k3(iv1)
      acd603(25)=spvak5k2(iv1)
      acd603(26)=spvak5k3(iv1)
      acd603(27)=acd603(21)*acd603(20)
      acd603(28)=acd603(19)*acd603(18)
      acd603(29)=acd603(17)*acd603(16)
      acd603(30)=acd603(15)*acd603(14)
      acd603(31)=acd603(13)*acd603(12)
      acd603(32)=acd603(7)*acd603(8)
      acd603(33)=acd603(4)*acd603(11)
      acd603(27)=acd603(33)+acd603(32)+acd603(31)+acd603(30)+acd603(29)+acd603(&
      &27)+acd603(28)
      acd603(27)=acd603(10)*acd603(27)
      acd603(28)=acd603(21)*acd603(26)
      acd603(29)=acd603(19)*acd603(25)
      acd603(30)=acd603(17)*acd603(24)
      acd603(31)=acd603(15)*acd603(23)
      acd603(32)=acd603(13)*acd603(22)
      acd603(33)=acd603(9)*acd603(11)
      acd603(34)=acd603(3)*acd603(7)
      acd603(28)=acd603(34)+acd603(33)+acd603(32)+acd603(31)+acd603(30)+acd603(&
      &28)+acd603(29)
      acd603(28)=acd603(6)*acd603(28)
      acd603(29)=acd603(8)*acd603(9)
      acd603(30)=acd603(3)*acd603(4)
      acd603(29)=acd603(30)+acd603(29)
      acd603(29)=acd603(5)*acd603(29)
      acd603(30)=acd603(1)*acd603(2)
      brack=acd603(27)+acd603(28)+acd603(29)+2.0_ki*acd603(30)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd603
      complex(ki) :: brack
      acd603(1)=d(iv1,iv2)
      acd603(2)=spvak4k2(iv3)
      acd603(3)=abb603(6)
      acd603(4)=spvak7k2(iv3)
      acd603(5)=abb603(15)
      acd603(6)=d(iv1,iv3)
      acd603(7)=spvak4k2(iv2)
      acd603(8)=spvak7k2(iv2)
      acd603(9)=d(iv2,iv3)
      acd603(10)=spvak4k2(iv1)
      acd603(11)=spvak7k2(iv1)
      acd603(12)=spvak1k2(iv2)
      acd603(13)=spvak4k3(iv3)
      acd603(14)=abb603(12)
      acd603(15)=spvak1k2(iv3)
      acd603(16)=spvak4k3(iv2)
      acd603(17)=spvak5k2(iv3)
      acd603(18)=abb603(22)
      acd603(19)=spvak5k2(iv2)
      acd603(20)=spvak1k2(iv1)
      acd603(21)=spvak4k3(iv1)
      acd603(22)=spvak5k2(iv1)
      acd603(23)=acd603(13)*acd603(11)
      acd603(24)=acd603(21)*acd603(4)
      acd603(23)=acd603(23)+acd603(24)
      acd603(24)=acd603(12)*acd603(23)
      acd603(25)=acd603(16)*acd603(11)
      acd603(26)=acd603(21)*acd603(8)
      acd603(25)=acd603(25)+acd603(26)
      acd603(26)=acd603(15)*acd603(25)
      acd603(27)=acd603(13)*acd603(8)
      acd603(28)=acd603(16)*acd603(4)
      acd603(27)=acd603(27)+acd603(28)
      acd603(28)=acd603(20)*acd603(27)
      acd603(24)=acd603(28)+acd603(26)+acd603(24)
      acd603(24)=acd603(14)*acd603(24)
      acd603(25)=acd603(17)*acd603(25)
      acd603(23)=acd603(19)*acd603(23)
      acd603(26)=acd603(22)*acd603(27)
      acd603(23)=acd603(26)+acd603(23)+acd603(25)
      acd603(23)=acd603(18)*acd603(23)
      acd603(25)=acd603(2)*acd603(1)
      acd603(26)=acd603(7)*acd603(6)
      acd603(27)=acd603(10)*acd603(9)
      acd603(25)=acd603(27)+acd603(26)+acd603(25)
      acd603(26)=2.0_ki*acd603(3)
      acd603(25)=acd603(26)*acd603(25)
      acd603(26)=acd603(1)*acd603(4)
      acd603(27)=acd603(6)*acd603(8)
      acd603(28)=acd603(9)*acd603(11)
      acd603(26)=acd603(28)+acd603(26)+acd603(27)
      acd603(26)=acd603(5)*acd603(26)
      brack=acd603(23)+acd603(24)+acd603(25)+2.0_ki*acd603(26)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd603h5
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
!---#[ subroutine reconstruct_d603:
   subroutine     reconstruct_d603(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_603:
      coeffs%coeffs_603%c0 = derivative(czip)
      coeffs%coeffs_603%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_603%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_603%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_603%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_603%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_603%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_603%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_603%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_603%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_603%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_603%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_603%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_603%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_603%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_603%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_603%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_603%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_603%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_603%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_603%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_603%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_603%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_603%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_603%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_603%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_603%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_603%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_603%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_603%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_603%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_603%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_603%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_603%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_603%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_603:
   end subroutine reconstruct_d603
!---#] subroutine reconstruct_d603:
end module     p8_cbarc_epnemumnmubarg_d603h5l1d
