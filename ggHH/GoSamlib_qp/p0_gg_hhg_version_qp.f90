module p0_gg_hhg_version_qp
   implicit none
   ! The version of Form used for code generation
   integer, parameter, dimension(2) :: formversion = (/4, 1/)
   ! The version of haggies used for code generation
   integer, parameter, dimension(2) :: haggiesversion = (/1, 1/)
   ! The version of GoSam used for code generation
   integer, parameter, dimension(2) :: gosamversion = (/2, 0/)
   ! The SVN revision of GoSam used for code generation
   integer, parameter :: gosamrevision = 865
end module p0_gg_hhg_version_qp
