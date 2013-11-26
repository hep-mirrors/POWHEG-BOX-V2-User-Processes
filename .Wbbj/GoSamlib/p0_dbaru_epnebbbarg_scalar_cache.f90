module     p0_dbaru_epnebbbarg_scalar_cache
   use precision, only: ki_sam => ki
   use madds
   implicit none
   save

   private
!---#[ scalar integral cache for samurai:
    logical, public  :: samurai_cache_flag_g0
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g0
    logical, public :: samurai_cache_flag_d322
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d322
    logical, public  :: samurai_cache_flag_g1
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g1
    logical, public :: samurai_cache_flag_d176
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d176
    logical, public :: samurai_cache_flag_d318
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d318
    logical, public  :: samurai_cache_flag_g2
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_g2
    logical, public :: samurai_cache_flag_d28
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d28
    logical, public :: samurai_cache_flag_d87
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d87
    logical, public :: samurai_cache_flag_d153
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d153
    logical, public :: samurai_cache_flag_d180
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d180
    logical, public :: samurai_cache_flag_d244
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d244
    logical, public :: samurai_cache_flag_d320
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d320
    logical, public  :: samurai_cache_flag_g3
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g3
    logical, public :: samurai_cache_flag_d13
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d13
    logical, public :: samurai_cache_flag_d84
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d84
    logical, public  :: samurai_cache_flag_g4
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g4
    logical, public :: samurai_cache_flag_d12
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d12
    logical, public :: samurai_cache_flag_d85
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d85
    logical, public  :: samurai_cache_flag_g5
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g5
    logical, public :: samurai_cache_flag_d15
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d15
    logical, public :: samurai_cache_flag_d83
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d83
    logical, public  :: samurai_cache_flag_g6
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g6
    logical, public :: samurai_cache_flag_d14
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d14
    logical, public :: samurai_cache_flag_d82
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d82
    logical, public  :: samurai_cache_flag_g7
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g7
    logical, public :: samurai_cache_flag_d68
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d68
    logical, public  :: samurai_cache_flag_g8
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g8
    logical, public :: samurai_cache_flag_d80
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d80
    logical, public :: samurai_cache_flag_d128
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d128
    logical, public  :: samurai_cache_flag_g9
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g9
    logical, public :: samurai_cache_flag_d66
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d66
    logical, public :: samurai_cache_flag_d127
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d127
    logical, public  :: samurai_cache_flag_g10
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_g10
    logical, public :: samurai_cache_flag_d81
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d81
    logical, public  :: samurai_cache_flag_g11
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g11
    logical, public :: samurai_cache_flag_d79
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d79
    logical, public :: samurai_cache_flag_d109
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d109
    logical, public :: samurai_cache_flag_d292
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d292
    logical, public :: samurai_cache_flag_d301
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d301
    logical, public  :: samurai_cache_flag_g12
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g12
    logical, public :: samurai_cache_flag_d298
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d298
    logical, public :: samurai_cache_flag_d303
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d303
    logical, public :: samurai_cache_flag_d316
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d316
    logical, public  :: samurai_cache_flag_g13
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g13
    logical, public :: samurai_cache_flag_d16
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d16
    logical, public :: samurai_cache_flag_d38
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d38
    logical, public :: samurai_cache_flag_d42
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d42
    logical, public :: samurai_cache_flag_d58
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d58
    logical, public :: samurai_cache_flag_d70
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d70
    logical, public :: samurai_cache_flag_d76
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d76
    logical, public :: samurai_cache_flag_d90
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d90
    logical, public :: samurai_cache_flag_d93
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d93
    logical, public :: samurai_cache_flag_d102
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d102
    logical, public :: samurai_cache_flag_d108
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d108
    logical, public :: samurai_cache_flag_d115
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d115
    logical, public :: samurai_cache_flag_d126
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d126
    logical, public :: samurai_cache_flag_d139
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d139
    logical, public :: samurai_cache_flag_d227
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d227
    logical, public :: samurai_cache_flag_d295
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d295
    logical, public :: samurai_cache_flag_d310
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d310
    logical, public  :: samurai_cache_flag_g14
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g14
    logical, public :: samurai_cache_flag_d72
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d72
    logical, public :: samurai_cache_flag_d75
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d75
    logical, public :: samurai_cache_flag_d98
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d98
    logical, public :: samurai_cache_flag_d101
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d101
    logical, public :: samurai_cache_flag_d120
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d120
    logical, public :: samurai_cache_flag_d121
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d121
    logical, public :: samurai_cache_flag_d300
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d300
    logical, public :: samurai_cache_flag_d305
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d305
    logical, public :: samurai_cache_flag_d315
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d315
    logical, public  :: samurai_cache_flag_g15
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g15
    logical, public :: samurai_cache_flag_d6
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d6
    logical, public :: samurai_cache_flag_d8
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d8
    logical, public :: samurai_cache_flag_d10
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d10
    logical, public :: samurai_cache_flag_d17
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d17
    logical, public :: samurai_cache_flag_d18
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d18
    logical, public :: samurai_cache_flag_d21
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d21
    logical, public :: samurai_cache_flag_d24
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d24
    logical, public :: samurai_cache_flag_d40
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d40
    logical, public :: samurai_cache_flag_d43
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d43
    logical, public :: samurai_cache_flag_d59
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d59
    logical, public :: samurai_cache_flag_d64
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d64
    logical, public :: samurai_cache_flag_d65
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d65
    logical, public :: samurai_cache_flag_d71
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d71
    logical, public :: samurai_cache_flag_d78
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d78
    logical, public :: samurai_cache_flag_d86
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d86
    logical, public :: samurai_cache_flag_d91
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d91
    logical, public :: samurai_cache_flag_d92
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d92
    logical, public :: samurai_cache_flag_d103
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d103
    logical, public :: samurai_cache_flag_d110
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d110
    logical, public :: samurai_cache_flag_d111
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d111
    logical, public :: samurai_cache_flag_d124
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d124
    logical, public :: samurai_cache_flag_d137
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d137
    logical, public :: samurai_cache_flag_d223
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d223
    logical, public :: samurai_cache_flag_d296
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d296
    logical, public :: samurai_cache_flag_d302
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d302
    logical, public  :: samurai_cache_flag_g16
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g16
    logical, public :: samurai_cache_flag_d67
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d67
    logical, public :: samurai_cache_flag_d77
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d77
    logical, public :: samurai_cache_flag_d94
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d94
    logical, public :: samurai_cache_flag_d107
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d107
    logical, public :: samurai_cache_flag_d117
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d117
    logical, public :: samurai_cache_flag_d125
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d125
    logical, public :: samurai_cache_flag_d145
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d145
    logical, public :: samurai_cache_flag_d294
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d294
    logical, public :: samurai_cache_flag_d304
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d304
    logical, public :: samurai_cache_flag_d314
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d314
    logical, public :: samurai_cache_flag_d317
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d317
    logical, public :: samurai_cache_flag_d336
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d336
    logical, public  :: samurai_cache_flag_g17
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g17
    logical, public :: samurai_cache_flag_d291
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d291
    logical, public :: samurai_cache_flag_d309
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d309
    logical, public  :: samurai_cache_flag_g18
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g18
    logical, public :: samurai_cache_flag_d1
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d1
    logical, public :: samurai_cache_flag_d2
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d2
    logical, public :: samurai_cache_flag_d3
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d3
    logical, public :: samurai_cache_flag_d4
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d4
    logical, public :: samurai_cache_flag_d20
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d20
    logical, public :: samurai_cache_flag_d23
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d23
    logical, public :: samurai_cache_flag_d62
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d62
    logical, public :: samurai_cache_flag_d63
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d63
    logical, public :: samurai_cache_flag_d73
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d73
    logical, public :: samurai_cache_flag_d74
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d74
    logical, public :: samurai_cache_flag_d99
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d99
    logical, public :: samurai_cache_flag_d100
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d100
    logical, public :: samurai_cache_flag_d104
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d104
    logical, public :: samurai_cache_flag_d119
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d119
    logical, public :: samurai_cache_flag_d122
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d122
    logical, public :: samurai_cache_flag_d175
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d175
    logical, public :: samurai_cache_flag_d179
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d179
    logical, public :: samurai_cache_flag_d219
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d219
    logical, public :: samurai_cache_flag_d221
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d221
    logical, public :: samurai_cache_flag_d225
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d225
    logical, public :: samurai_cache_flag_d229
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d229
    logical, public :: samurai_cache_flag_d240
    complex(ki_sam), dimension(-2:0,cachedim2(1)), public :: samurai_cache_d240
    logical, public :: samurai_cache_flag_d299
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d299
    logical, public :: samurai_cache_flag_d307
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d307
    logical, public :: samurai_cache_flag_d313
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d313
    logical, public :: samurai_cache_flag_d321
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d321
    logical, public :: samurai_cache_flag_d333
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d333
    logical, public :: samurai_cache_flag_d335
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d335
    logical, public  :: samurai_cache_flag_g19
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g19
    logical, public :: samurai_cache_flag_d293
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d293
    logical, public :: samurai_cache_flag_d306
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d306
    logical, public :: samurai_cache_flag_d312
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d312
    logical, public  :: samurai_cache_flag_g20
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_g20
    logical, public :: samurai_cache_flag_d69
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d69
    logical, public :: samurai_cache_flag_d96
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d96
    logical, public :: samurai_cache_flag_d113
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d113
    logical, public :: samurai_cache_flag_d123
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d123
    logical, public :: samurai_cache_flag_d297
    complex(ki_sam), dimension(-2:0,cachedim6(1)), public :: samurai_cache_d297
    logical, public :: samurai_cache_flag_d308
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d308
    logical, public :: samurai_cache_flag_d311
    complex(ki_sam), dimension(-2:0,cachedim5(1)), public :: samurai_cache_d311
    logical, public :: samurai_cache_flag_d319
    complex(ki_sam), dimension(-2:0,cachedim4(1)), public :: samurai_cache_d319
    logical, public :: samurai_cache_flag_d334
    complex(ki_sam), dimension(-2:0,cachedim3(1)), public :: samurai_cache_d334
!---#] scalar integral cache for samurai:

   public :: invalidate_cache
contains
   subroutine invalidate_cache()
      implicit none
      samurai_cache_flag_g0 = .false.
      samurai_cache_flag_d322 = .false.
      samurai_cache_flag_g1 = .false.
      samurai_cache_flag_d176 = .false.
      samurai_cache_flag_d318 = .false.
      samurai_cache_flag_g2 = .false.
      samurai_cache_flag_d28 = .false.
      samurai_cache_flag_d87 = .false.
      samurai_cache_flag_d153 = .false.
      samurai_cache_flag_d180 = .false.
      samurai_cache_flag_d244 = .false.
      samurai_cache_flag_d320 = .false.
      samurai_cache_flag_g3 = .false.
      samurai_cache_flag_d13 = .false.
      samurai_cache_flag_d84 = .false.
      samurai_cache_flag_g4 = .false.
      samurai_cache_flag_d12 = .false.
      samurai_cache_flag_d85 = .false.
      samurai_cache_flag_g5 = .false.
      samurai_cache_flag_d15 = .false.
      samurai_cache_flag_d83 = .false.
      samurai_cache_flag_g6 = .false.
      samurai_cache_flag_d14 = .false.
      samurai_cache_flag_d82 = .false.
      samurai_cache_flag_g7 = .false.
      samurai_cache_flag_d68 = .false.
      samurai_cache_flag_g8 = .false.
      samurai_cache_flag_d80 = .false.
      samurai_cache_flag_d128 = .false.
      samurai_cache_flag_g9 = .false.
      samurai_cache_flag_d66 = .false.
      samurai_cache_flag_d127 = .false.
      samurai_cache_flag_g10 = .false.
      samurai_cache_flag_d81 = .false.
      samurai_cache_flag_g11 = .false.
      samurai_cache_flag_d79 = .false.
      samurai_cache_flag_d109 = .false.
      samurai_cache_flag_d292 = .false.
      samurai_cache_flag_d301 = .false.
      samurai_cache_flag_g12 = .false.
      samurai_cache_flag_d298 = .false.
      samurai_cache_flag_d303 = .false.
      samurai_cache_flag_d316 = .false.
      samurai_cache_flag_g13 = .false.
      samurai_cache_flag_d16 = .false.
      samurai_cache_flag_d38 = .false.
      samurai_cache_flag_d42 = .false.
      samurai_cache_flag_d58 = .false.
      samurai_cache_flag_d70 = .false.
      samurai_cache_flag_d76 = .false.
      samurai_cache_flag_d90 = .false.
      samurai_cache_flag_d93 = .false.
      samurai_cache_flag_d102 = .false.
      samurai_cache_flag_d108 = .false.
      samurai_cache_flag_d115 = .false.
      samurai_cache_flag_d126 = .false.
      samurai_cache_flag_d139 = .false.
      samurai_cache_flag_d227 = .false.
      samurai_cache_flag_d295 = .false.
      samurai_cache_flag_d310 = .false.
      samurai_cache_flag_g14 = .false.
      samurai_cache_flag_d72 = .false.
      samurai_cache_flag_d75 = .false.
      samurai_cache_flag_d98 = .false.
      samurai_cache_flag_d101 = .false.
      samurai_cache_flag_d120 = .false.
      samurai_cache_flag_d121 = .false.
      samurai_cache_flag_d300 = .false.
      samurai_cache_flag_d305 = .false.
      samurai_cache_flag_d315 = .false.
      samurai_cache_flag_g15 = .false.
      samurai_cache_flag_d6 = .false.
      samurai_cache_flag_d8 = .false.
      samurai_cache_flag_d10 = .false.
      samurai_cache_flag_d17 = .false.
      samurai_cache_flag_d18 = .false.
      samurai_cache_flag_d21 = .false.
      samurai_cache_flag_d24 = .false.
      samurai_cache_flag_d40 = .false.
      samurai_cache_flag_d43 = .false.
      samurai_cache_flag_d59 = .false.
      samurai_cache_flag_d64 = .false.
      samurai_cache_flag_d65 = .false.
      samurai_cache_flag_d71 = .false.
      samurai_cache_flag_d78 = .false.
      samurai_cache_flag_d86 = .false.
      samurai_cache_flag_d91 = .false.
      samurai_cache_flag_d92 = .false.
      samurai_cache_flag_d103 = .false.
      samurai_cache_flag_d110 = .false.
      samurai_cache_flag_d111 = .false.
      samurai_cache_flag_d124 = .false.
      samurai_cache_flag_d137 = .false.
      samurai_cache_flag_d223 = .false.
      samurai_cache_flag_d296 = .false.
      samurai_cache_flag_d302 = .false.
      samurai_cache_flag_g16 = .false.
      samurai_cache_flag_d67 = .false.
      samurai_cache_flag_d77 = .false.
      samurai_cache_flag_d94 = .false.
      samurai_cache_flag_d107 = .false.
      samurai_cache_flag_d117 = .false.
      samurai_cache_flag_d125 = .false.
      samurai_cache_flag_d145 = .false.
      samurai_cache_flag_d294 = .false.
      samurai_cache_flag_d304 = .false.
      samurai_cache_flag_d314 = .false.
      samurai_cache_flag_d317 = .false.
      samurai_cache_flag_d336 = .false.
      samurai_cache_flag_g17 = .false.
      samurai_cache_flag_d291 = .false.
      samurai_cache_flag_d309 = .false.
      samurai_cache_flag_g18 = .false.
      samurai_cache_flag_d1 = .false.
      samurai_cache_flag_d2 = .false.
      samurai_cache_flag_d3 = .false.
      samurai_cache_flag_d4 = .false.
      samurai_cache_flag_d20 = .false.
      samurai_cache_flag_d23 = .false.
      samurai_cache_flag_d62 = .false.
      samurai_cache_flag_d63 = .false.
      samurai_cache_flag_d73 = .false.
      samurai_cache_flag_d74 = .false.
      samurai_cache_flag_d99 = .false.
      samurai_cache_flag_d100 = .false.
      samurai_cache_flag_d104 = .false.
      samurai_cache_flag_d119 = .false.
      samurai_cache_flag_d122 = .false.
      samurai_cache_flag_d175 = .false.
      samurai_cache_flag_d179 = .false.
      samurai_cache_flag_d219 = .false.
      samurai_cache_flag_d221 = .false.
      samurai_cache_flag_d225 = .false.
      samurai_cache_flag_d229 = .false.
      samurai_cache_flag_d240 = .false.
      samurai_cache_flag_d299 = .false.
      samurai_cache_flag_d307 = .false.
      samurai_cache_flag_d313 = .false.
      samurai_cache_flag_d321 = .false.
      samurai_cache_flag_d333 = .false.
      samurai_cache_flag_d335 = .false.
      samurai_cache_flag_g19 = .false.
      samurai_cache_flag_d293 = .false.
      samurai_cache_flag_d306 = .false.
      samurai_cache_flag_d312 = .false.
      samurai_cache_flag_g20 = .false.
      samurai_cache_flag_d69 = .false.
      samurai_cache_flag_d96 = .false.
      samurai_cache_flag_d113 = .false.
      samurai_cache_flag_d123 = .false.
      samurai_cache_flag_d297 = .false.
      samurai_cache_flag_d308 = .false.
      samurai_cache_flag_d311 = .false.
      samurai_cache_flag_d319 = .false.
      samurai_cache_flag_d334 = .false.
   end subroutine invalidate_cache
end module p0_dbaru_epnebbbarg_scalar_cache