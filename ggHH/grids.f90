subroutine initgrids(cHHH)
  use, intrinsic :: iso_c_binding
  implicit none
  real(c_double) :: s, t, result, expected
  real * 8 cHHH
  character(len=50) :: gridname
  character(len=32,kind=C_CHAR) :: c_gridname
  type(c_ptr) :: grid
  common/cbgrid/grid
  
  interface
     subroutine python_initialize() bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
     end subroutine python_initialize

     subroutine python_decref(grid) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       type(c_ptr), intent(in) :: grid
     end subroutine python_decref

     subroutine python_finalize() bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
     end subroutine python_finalize

     subroutine python_printinfo() bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
     end subroutine python_printinfo

     subroutine combine_grids(grid_temp, cHHH) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       real(c_double), intent(in), value :: cHHH
       character(kind=c_char) :: grid_temp
     end subroutine combine_grids

     type(c_ptr) function grid_initialize(grid_name) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       character(kind=c_char) :: grid_name(*)
     end function grid_initialize

     real(c_double) function grid_virt(grid, s, t) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       type(c_ptr), intent(in), value :: grid
       real(c_double), intent(in), value :: s,t
     end function grid_virt
  end interface

  call python_initialize
  call python_printinfo

  write(gridname, "(A15,SP,ES11.4,A5)") "Virt_full_cHHH_", cHHH, ".grid"

  c_gridname = TRIM(gridname)//C_NULL_CHAR

  call combine_grids(c_gridname, cHHH)
  grid = grid_initialize(c_gridname)

  ! s = 2.56513D6
  ! t = -482321.D0
  ! result = grid_virt(grid,s,t)

  ! write(*,*) 'Sent: ', s,' ', t
  ! write(*,*) 'Received: ', result

end subroutine initgrids

function gridvirt(s,t)
  use, intrinsic :: iso_c_binding
  implicit none
  real(c_double) :: s, t, result, expected
  real(c_double) :: gridvirt
  type(c_ptr) :: grid
  common/cbgrid/grid

  interface
     subroutine python_initialize() bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
     end subroutine python_initialize

     subroutine python_decref(grid) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       type(c_ptr), intent(in) :: grid
     end subroutine python_decref

     subroutine python_finalize() bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
     end subroutine python_finalize

     subroutine python_printinfo() bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
     end subroutine python_printinfo

     type(c_ptr) function grid_initialize(grid_name) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       character(kind=c_char) :: grid_name(*)
     end function grid_initialize

     real(c_double) function grid_virt(grid, s, t) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       type(c_ptr), intent(in), value :: grid
       real(c_double), intent(in), value :: s,t
     end function grid_virt
  end interface
  
  gridvirt = grid_virt(grid, s, t)

end function gridvirt
  
subroutine teardowngrids()
    use, intrinsic :: iso_c_binding
  implicit none
  real(c_double) :: s, t, result, expected
  type(c_ptr) :: grid

  interface
     subroutine python_initialize() bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
     end subroutine python_initialize

     subroutine python_decref(grid) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       type(c_ptr), intent(in) :: grid
     end subroutine python_decref

     subroutine python_finalize() bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
     end subroutine python_finalize

     subroutine python_printinfo() bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
     end subroutine python_printinfo

     type(c_ptr) function grid_initialize(grid_name) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       character(kind=c_char) :: grid_name(*)
     end function grid_initialize

     real(c_double) function grid_virt(grid, s, t) bind(c)
       use, intrinsic :: iso_c_binding
       implicit none
       type(c_ptr), intent(in), value :: grid
       real(c_double), intent(in), value :: s,t
     end function grid_virt
  end interface

  call python_decref(grid)
  call python_finalize

end subroutine teardowngrids
