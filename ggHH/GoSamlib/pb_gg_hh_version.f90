module     pb_gg_hh_version
   implicit none
   ! The version of Form used for code generation
   integer, parameter, dimension(2) :: formversion = (/4, 1/)
   ! The version of haggies used for code generation
   integer, parameter, dimension(2) :: haggiesversion = (/1, 1/)
   ! The version of GoSam used for code generation
   integer, parameter, dimension(2) :: gosamversion = (/2, 0/)
   ! The SVN revision of GoSam used for code generation
   integer, parameter :: gosamrevision = 865
end module pb_gg_hh_version
