module     p1_dbarc_epnebbbar_scalar_cache
   use precision, only: ki_sam => ki
   use madds
   implicit none
   save

   private
!---#[ scalar integral cache for samurai:
    logical, public  :: samurai_cache_flag_g0
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_g0
    logical, public :: samurai_cache_flag_d14
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d14
    logical, public :: samurai_cache_flag_d33
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d33
    logical, public  :: samurai_cache_flag_g1
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g1
    logical, public :: samurai_cache_flag_d3
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d3
    logical, public  :: samurai_cache_flag_g2
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g2
    logical, public :: samurai_cache_flag_d2
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d2
    logical, public  :: samurai_cache_flag_g3
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g3
    logical, public :: samurai_cache_flag_d27
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d27
    logical, public :: samurai_cache_flag_d28
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d28
    logical, public :: samurai_cache_flag_d31
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d31
    logical, public  :: samurai_cache_flag_g4
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g4
    logical, public :: samurai_cache_flag_d1
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d1
    logical, public :: samurai_cache_flag_d4
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d4
    logical, public :: samurai_cache_flag_d6
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d6
    logical, public :: samurai_cache_flag_d8
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d8
    logical, public :: samurai_cache_flag_d9
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d9
    logical, public :: samurai_cache_flag_d10
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d10
    logical, public :: samurai_cache_flag_d24
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d24
    logical, public :: samurai_cache_flag_d25
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d25
    logical, public :: samurai_cache_flag_d26
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d26
    logical, public :: samurai_cache_flag_d29
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d29
    logical, public :: samurai_cache_flag_d30
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d30
    logical, public :: samurai_cache_flag_d32
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d32
!---#] scalar integral cache for samurai:

   public :: invalidate_cache
contains
   subroutine invalidate_cache()
      implicit none
      samurai_cache_flag_g0 = .false.
      samurai_cache_flag_d14 = .false.
      samurai_cache_flag_d33 = .false.
      samurai_cache_flag_g1 = .false.
      samurai_cache_flag_d3 = .false.
      samurai_cache_flag_g2 = .false.
      samurai_cache_flag_d2 = .false.
      samurai_cache_flag_g3 = .false.
      samurai_cache_flag_d27 = .false.
      samurai_cache_flag_d28 = .false.
      samurai_cache_flag_d31 = .false.
      samurai_cache_flag_g4 = .false.
      samurai_cache_flag_d1 = .false.
      samurai_cache_flag_d4 = .false.
      samurai_cache_flag_d6 = .false.
      samurai_cache_flag_d8 = .false.
      samurai_cache_flag_d9 = .false.
      samurai_cache_flag_d10 = .false.
      samurai_cache_flag_d24 = .false.
      samurai_cache_flag_d25 = .false.
      samurai_cache_flag_d26 = .false.
      samurai_cache_flag_d29 = .false.
      samurai_cache_flag_d30 = .false.
      samurai_cache_flag_d32 = .false.
   end subroutine invalidate_cache
end module p1_dbarc_epnebbbar_scalar_cache