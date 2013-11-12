module     p0_gg_hepem_scalar_cache
   use precision, only: ki_sam => ki
   use madds
   implicit none
   save

   private
!---#[ scalar integral cache for samurai:
    logical, public  :: samurai_cache_flag_g0
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g0
    logical, public :: samurai_cache_flag_d49
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d49
    logical, public  :: samurai_cache_flag_g1
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g1
    logical, public :: samurai_cache_flag_d37
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d37
    logical, public :: samurai_cache_flag_d61
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d61
    logical, public  :: samurai_cache_flag_g2
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g2
    logical, public :: samurai_cache_flag_d25
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d25
    logical, public  :: samurai_cache_flag_g3
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g3
    logical, public :: samurai_cache_flag_d47
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d47
    logical, public  :: samurai_cache_flag_g4
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g4
    logical, public :: samurai_cache_flag_d35
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d35
    logical, public  :: samurai_cache_flag_g5
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g5
    logical, public :: samurai_cache_flag_d23
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d23
    logical, public :: samurai_cache_flag_d59
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d59
!---#] scalar integral cache for samurai:

   public :: invalidate_cache
contains
   subroutine invalidate_cache()
      implicit none
      samurai_cache_flag_g0 = .false.
      samurai_cache_flag_d49 = .false.
      samurai_cache_flag_g1 = .false.
      samurai_cache_flag_d37 = .false.
      samurai_cache_flag_d61 = .false.
      samurai_cache_flag_g2 = .false.
      samurai_cache_flag_d25 = .false.
      samurai_cache_flag_g3 = .false.
      samurai_cache_flag_d47 = .false.
      samurai_cache_flag_g4 = .false.
      samurai_cache_flag_d35 = .false.
      samurai_cache_flag_g5 = .false.
      samurai_cache_flag_d23 = .false.
      samurai_cache_flag_d59 = .false.
   end subroutine invalidate_cache
end module p0_gg_hepem_scalar_cache