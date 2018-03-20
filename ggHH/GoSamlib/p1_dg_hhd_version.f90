module     p1_dg_hhd_version
   implicit none
   ! The version of Form used for code generation
   integer, parameter, dimension(2) :: formversion = (/4, 1/)
   ! The version of GoSam used for code generation
   integer, parameter, dimension(2) :: gosamversion = (/2, 0/)
   ! The SVN revision of GoSam used for code generation
   integer, parameter :: gosamrevision = z'81d1f9f'
end module p1_dg_hhd_version
