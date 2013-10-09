module     p1_dbarc_epnebbbarg_d18h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d18h3l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d18
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd18h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd18
      complex(ki) :: brack
      acd18(1)=abb18(69)
      brack=acd18(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd18h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd18
      complex(ki) :: brack
      acd18(1)=k2(iv1)
      acd18(2)=abb18(72)
      acd18(3)=l5(iv1)
      acd18(4)=abb18(21)
      acd18(5)=l6(iv1)
      acd18(6)=abb18(53)
      acd18(7)=spvak2l5(iv1)
      acd18(8)=abb18(11)
      acd18(9)=spvak2l6(iv1)
      acd18(10)=abb18(19)
      acd18(11)=spval5k2(iv1)
      acd18(12)=abb18(14)
      acd18(13)=spval5l6(iv1)
      acd18(14)=abb18(75)
      acd18(15)=spval6k2(iv1)
      acd18(16)=abb18(25)
      acd18(17)=spval6l5(iv1)
      acd18(18)=abb18(77)
      acd18(19)=acd18(2)*acd18(1)
      acd18(20)=acd18(4)*acd18(3)
      acd18(21)=acd18(6)*acd18(5)
      acd18(22)=acd18(8)*acd18(7)
      acd18(23)=acd18(10)*acd18(9)
      acd18(24)=acd18(12)*acd18(11)
      acd18(25)=acd18(14)*acd18(13)
      acd18(26)=acd18(16)*acd18(15)
      acd18(27)=acd18(18)*acd18(17)
      brack=acd18(19)+acd18(20)+acd18(21)+acd18(22)+acd18(23)+acd18(24)+acd18(2&
      &5)+acd18(26)+acd18(27)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd18h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd18
      complex(ki) :: brack
      acd18(1)=d(iv1,iv2)
      acd18(2)=abb18(60)
      acd18(3)=k2(iv1)
      acd18(4)=spvak2l5(iv2)
      acd18(5)=abb18(12)
      acd18(6)=spvak2l6(iv2)
      acd18(7)=abb18(32)
      acd18(8)=k2(iv2)
      acd18(9)=spvak2l5(iv1)
      acd18(10)=spvak2l6(iv1)
      acd18(11)=spval5k2(iv2)
      acd18(12)=abb18(15)
      acd18(13)=spval6k2(iv2)
      acd18(14)=abb18(13)
      acd18(15)=spval5k2(iv1)
      acd18(16)=spval6k2(iv1)
      acd18(17)=abb18(50)
      acd18(18)=abb18(44)
      acd18(19)=acd18(13)*acd18(18)
      acd18(20)=acd18(11)*acd18(17)
      acd18(21)=acd18(7)*acd18(8)
      acd18(19)=acd18(21)+acd18(19)+acd18(20)
      acd18(19)=acd18(10)*acd18(19)
      acd18(20)=acd18(13)*acd18(14)
      acd18(21)=acd18(11)*acd18(12)
      acd18(22)=acd18(5)*acd18(8)
      acd18(20)=acd18(22)+acd18(20)+acd18(21)
      acd18(20)=acd18(9)*acd18(20)
      acd18(21)=acd18(16)*acd18(18)
      acd18(22)=acd18(15)*acd18(17)
      acd18(23)=acd18(3)*acd18(7)
      acd18(21)=acd18(23)+acd18(21)+acd18(22)
      acd18(21)=acd18(6)*acd18(21)
      acd18(22)=acd18(14)*acd18(16)
      acd18(23)=acd18(12)*acd18(15)
      acd18(24)=acd18(3)*acd18(5)
      acd18(22)=acd18(24)+acd18(22)+acd18(23)
      acd18(22)=acd18(4)*acd18(22)
      acd18(23)=acd18(1)*acd18(2)
      brack=acd18(19)+acd18(20)+acd18(21)+acd18(22)+2.0_ki*acd18(23)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd18h3
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
!---#[ subroutine reconstruct_d18:
   subroutine     reconstruct_d18(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_18:
      coeffs%coeffs_18%c0 = derivative(czip)
      coeffs%coeffs_18%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_18%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_18%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_18%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_18%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_18%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_18%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_18%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_18%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_18%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_18%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_18%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_18%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_18%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_18:
   end subroutine reconstruct_d18
!---#] subroutine reconstruct_d18:
end module     p1_dbarc_epnebbbarg_d18h3l1d
