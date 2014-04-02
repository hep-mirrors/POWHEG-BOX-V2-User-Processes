module     p5_csbar_epnebbbar_d8h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity0d8h0l1d.f90
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
   public :: derivative , reconstruct_d8
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd8
      complex(ki) :: brack
      acd8(1)=dotproduct(k1,qshift)
      acd8(2)=dotproduct(qshift,spvak4k3)
      acd8(3)=abb8(16)
      acd8(4)=dotproduct(k2,qshift)
      acd8(5)=abb8(18)
      acd8(6)=dotproduct(k3,qshift)
      acd8(7)=abb8(26)
      acd8(8)=dotproduct(k4,qshift)
      acd8(9)=dotproduct(l5,qshift)
      acd8(10)=dotproduct(l6,qshift)
      acd8(11)=dotproduct(qshift,qshift)
      acd8(12)=abb8(19)
      acd8(13)=dotproduct(qshift,spvak2k1)
      acd8(14)=abb8(11)
      acd8(15)=dotproduct(qshift,spvak2l5)
      acd8(16)=abb8(12)
      acd8(17)=dotproduct(qshift,spvak2l6)
      acd8(18)=abb8(22)
      acd8(19)=dotproduct(qshift,spval5k1)
      acd8(20)=abb8(9)
      acd8(21)=dotproduct(qshift,spval5k2)
      acd8(22)=abb8(17)
      acd8(23)=dotproduct(qshift,spval6k1)
      acd8(24)=abb8(20)
      acd8(25)=dotproduct(qshift,spval6k2)
      acd8(26)=abb8(24)
      acd8(27)=abb8(13)
      acd8(28)=dotproduct(qshift,spvak2k3)
      acd8(29)=abb8(10)
      acd8(30)=acd8(25)*acd8(26)
      acd8(31)=acd8(23)*acd8(24)
      acd8(32)=acd8(21)*acd8(22)
      acd8(33)=acd8(19)*acd8(20)
      acd8(34)=acd8(17)*acd8(18)
      acd8(35)=acd8(15)*acd8(16)
      acd8(36)=acd8(13)*acd8(14)
      acd8(37)=acd8(4)*acd8(5)
      acd8(38)=-acd8(1)+acd8(10)+acd8(9)
      acd8(38)=acd8(3)*acd8(38)
      acd8(30)=acd8(38)+acd8(37)+acd8(36)+acd8(35)+acd8(34)+acd8(33)+acd8(32)+a&
      &cd8(31)-acd8(27)+acd8(30)
      acd8(30)=acd8(2)*acd8(30)
      acd8(31)=-acd8(28)*acd8(29)
      acd8(32)=acd8(11)*acd8(12)
      acd8(33)=-acd8(8)-acd8(6)
      acd8(33)=acd8(7)*acd8(33)
      brack=acd8(30)+acd8(31)+acd8(32)+acd8(33)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd8
      complex(ki) :: brack
      acd8(1)=k1(iv1)
      acd8(2)=dotproduct(qshift,spvak4k3)
      acd8(3)=abb8(16)
      acd8(4)=k2(iv1)
      acd8(5)=abb8(18)
      acd8(6)=k3(iv1)
      acd8(7)=abb8(26)
      acd8(8)=k4(iv1)
      acd8(9)=l5(iv1)
      acd8(10)=l6(iv1)
      acd8(11)=qshift(iv1)
      acd8(12)=abb8(19)
      acd8(13)=spvak4k3(iv1)
      acd8(14)=dotproduct(k1,qshift)
      acd8(15)=dotproduct(k2,qshift)
      acd8(16)=dotproduct(l5,qshift)
      acd8(17)=dotproduct(l6,qshift)
      acd8(18)=dotproduct(qshift,spvak2k1)
      acd8(19)=abb8(11)
      acd8(20)=dotproduct(qshift,spvak2l5)
      acd8(21)=abb8(12)
      acd8(22)=dotproduct(qshift,spvak2l6)
      acd8(23)=abb8(22)
      acd8(24)=dotproduct(qshift,spval5k1)
      acd8(25)=abb8(9)
      acd8(26)=dotproduct(qshift,spval5k2)
      acd8(27)=abb8(17)
      acd8(28)=dotproduct(qshift,spval6k1)
      acd8(29)=abb8(20)
      acd8(30)=dotproduct(qshift,spval6k2)
      acd8(31)=abb8(24)
      acd8(32)=abb8(13)
      acd8(33)=spvak2k1(iv1)
      acd8(34)=spvak2k3(iv1)
      acd8(35)=abb8(10)
      acd8(36)=spvak2l5(iv1)
      acd8(37)=spvak2l6(iv1)
      acd8(38)=spval5k1(iv1)
      acd8(39)=spval5k2(iv1)
      acd8(40)=spval6k1(iv1)
      acd8(41)=spval6k2(iv1)
      acd8(42)=acd8(31)*acd8(41)
      acd8(43)=acd8(29)*acd8(40)
      acd8(44)=acd8(27)*acd8(39)
      acd8(45)=acd8(25)*acd8(38)
      acd8(46)=acd8(23)*acd8(37)
      acd8(47)=acd8(21)*acd8(36)
      acd8(48)=acd8(19)*acd8(33)
      acd8(49)=acd8(5)*acd8(4)
      acd8(50)=-acd8(1)+acd8(10)+acd8(9)
      acd8(50)=acd8(3)*acd8(50)
      acd8(42)=acd8(50)+acd8(49)+acd8(48)+acd8(47)+acd8(46)+acd8(45)+acd8(44)+a&
      &cd8(42)+acd8(43)
      acd8(42)=acd8(2)*acd8(42)
      acd8(43)=acd8(31)*acd8(30)
      acd8(44)=acd8(29)*acd8(28)
      acd8(45)=acd8(27)*acd8(26)
      acd8(46)=acd8(25)*acd8(24)
      acd8(47)=acd8(23)*acd8(22)
      acd8(48)=acd8(21)*acd8(20)
      acd8(49)=acd8(19)*acd8(18)
      acd8(50)=acd8(5)*acd8(15)
      acd8(51)=-acd8(14)+acd8(17)+acd8(16)
      acd8(51)=acd8(3)*acd8(51)
      acd8(43)=acd8(51)+acd8(50)+acd8(49)+acd8(48)+acd8(47)+acd8(46)+acd8(45)+a&
      &cd8(44)-acd8(32)+acd8(43)
      acd8(43)=acd8(13)*acd8(43)
      acd8(44)=-acd8(34)*acd8(35)
      acd8(45)=acd8(11)*acd8(12)
      acd8(46)=-acd8(8)-acd8(6)
      acd8(46)=acd8(7)*acd8(46)
      brack=acd8(42)+acd8(43)+acd8(44)+2.0_ki*acd8(45)+acd8(46)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=abb8(19)
      acd8(3)=k1(iv1)
      acd8(4)=spvak4k3(iv2)
      acd8(5)=abb8(16)
      acd8(6)=k1(iv2)
      acd8(7)=spvak4k3(iv1)
      acd8(8)=k2(iv1)
      acd8(9)=abb8(18)
      acd8(10)=k2(iv2)
      acd8(11)=l5(iv1)
      acd8(12)=l5(iv2)
      acd8(13)=l6(iv1)
      acd8(14)=l6(iv2)
      acd8(15)=spvak2k1(iv2)
      acd8(16)=abb8(11)
      acd8(17)=spvak2l5(iv2)
      acd8(18)=abb8(12)
      acd8(19)=spvak2l6(iv2)
      acd8(20)=abb8(22)
      acd8(21)=spval5k1(iv2)
      acd8(22)=abb8(9)
      acd8(23)=spval5k2(iv2)
      acd8(24)=abb8(17)
      acd8(25)=spval6k1(iv2)
      acd8(26)=abb8(20)
      acd8(27)=spval6k2(iv2)
      acd8(28)=abb8(24)
      acd8(29)=spvak2k1(iv1)
      acd8(30)=spvak2l5(iv1)
      acd8(31)=spvak2l6(iv1)
      acd8(32)=spval5k1(iv1)
      acd8(33)=spval5k2(iv1)
      acd8(34)=spval6k1(iv1)
      acd8(35)=spval6k2(iv1)
      acd8(36)=acd8(28)*acd8(27)
      acd8(37)=acd8(26)*acd8(25)
      acd8(38)=acd8(24)*acd8(23)
      acd8(39)=acd8(22)*acd8(21)
      acd8(40)=acd8(20)*acd8(19)
      acd8(41)=acd8(18)*acd8(17)
      acd8(42)=acd8(16)*acd8(15)
      acd8(43)=acd8(9)*acd8(10)
      acd8(44)=-acd8(6)+acd8(14)+acd8(12)
      acd8(44)=acd8(5)*acd8(44)
      acd8(36)=acd8(44)+acd8(43)+acd8(42)+acd8(41)+acd8(40)+acd8(39)+acd8(38)+a&
      &cd8(36)+acd8(37)
      acd8(36)=acd8(7)*acd8(36)
      acd8(37)=acd8(28)*acd8(35)
      acd8(38)=acd8(26)*acd8(34)
      acd8(39)=acd8(24)*acd8(33)
      acd8(40)=acd8(22)*acd8(32)
      acd8(41)=acd8(20)*acd8(31)
      acd8(42)=acd8(18)*acd8(30)
      acd8(43)=acd8(16)*acd8(29)
      acd8(44)=acd8(9)*acd8(8)
      acd8(45)=-acd8(3)+acd8(13)+acd8(11)
      acd8(45)=acd8(5)*acd8(45)
      acd8(37)=acd8(45)+acd8(44)+acd8(43)+acd8(42)+acd8(41)+acd8(40)+acd8(39)+a&
      &cd8(37)+acd8(38)
      acd8(37)=acd8(4)*acd8(37)
      acd8(38)=acd8(1)*acd8(2)
      brack=acd8(36)+acd8(37)+2.0_ki*acd8(38)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd8h0
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d8:
   subroutine     reconstruct_d8(coeffs)
      use p5_csbar_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_8:
      coeffs%coeffs_8%c0 = derivative(czip)
      coeffs%coeffs_8%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_8%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_8%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_8%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_8%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_8%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_8%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_8%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_8%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_8%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_8%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_8%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_8%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_8%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_8:
   end subroutine reconstruct_d8
!---#] subroutine reconstruct_d8:
end module     p5_csbar_epnebbbar_d8h0l1d
