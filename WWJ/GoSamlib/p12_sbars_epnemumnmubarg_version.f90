module     p12_sbars_epnemumnmubarg_version
   implicit none
   ! The version of Form used for code generation
   integer, parameter, dimension(2) :: formversion = (/4, 1/)
   ! The version of haggies used for code generation
   integer, parameter, dimension(2) :: haggiesversion = (/1, 1/)
   ! The version of GoSam used for code generation
   integer, parameter, dimension(2) :: gosamversion = (/2, 0/)
   ! The SVN revision of GoSam used for code generation
   integer, parameter :: gosamrevision = 735
end module p12_sbars_epnemumnmubarg_version
