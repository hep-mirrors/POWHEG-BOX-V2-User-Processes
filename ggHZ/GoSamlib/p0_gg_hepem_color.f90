module     p0_gg_hepem_color
   ! file:      /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/
   ! GoSam_POWHEG/Virtual/p0_gg_hepem/common/color.f90
   ! generator: haggies (1.1)
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_model, only: NC, Nf
   implicit none
   save

   private :: ki, NC, Nf

   real(ki), parameter :: TR = 0.5_ki

   complex(ki), parameter, private :: i_ = (0.0_ki, 1.0_ki)
   real(ki), parameter, private :: pi = &
   & 3.1415926535897932384626433832795028841971693993751058209749445920_ki
   real(ki), parameter, private :: pi6 = pi*pi/6.0_ki

   integer, parameter :: numcs = 1
   complex(ki), dimension(numcs, numcs) :: CC
   complex(ki), dimension(numcs, numcs) :: T1T1
   complex(ki), dimension(numcs, numcs) :: T1T2
   complex(ki), dimension(numcs, numcs) :: T2T2
   real(ki) :: incolors

   real(ki) :: CA, CF, KA, KF, gammaA, gammaF

   ! Basis vectors
   real(ki), dimension(numcs), parameter :: c1 = &
      & (/1.0_ki/)
contains
   subroutine     init_color()
      implicit none
      real(ki) :: NA
      real(ki) :: t1
      real(ki) :: t2
      real(ki) :: t3
      
      t1 = NC*NC
      t2 = t1-1.0_ki
      NA = t2
      incolors = (NA*NA)
      t3 = TR*TR
      CC(1, 1) = (t2*t3)
      CC(1, 1) = (t2*t3)
      t2 = t2*t3*NC
      T1T1(1, 1) = t2
      T1T1(1, 1) = t2
      T1T2(1, 1) = ((2.0_ki-2.0_ki*t1)*t3*NC*TR)
      T1T2(1, 1) = ((2.0_ki-2.0_ki*t1)*t3*NC*TR)
      T2T2(1, 1) = t2
      T2T2(1, 1) = t2

      CA = NC
      CF = TR * NA / NC
      ! KA = Kg in (C.11) [Catani,Seymour]
      KA = (67.0_ki/18.0_ki - pi6) * CA &
         & - 10.0_ki/9.0_ki * TR * Nf
      ! KF = Kq in (C.11) [Catani,Seymour]
      KF = (3.5_ki - pi6) * CF
      ! gammaA = \gamma_g in (C.11) [Catani,Seymour]
      gammaA = 11.0_ki/6.0_ki * CA - 2.0_ki/3.0_ki * TR * Nf
      ! gammaF = \gamma_q in (C.11) [Catani,Seymour]
      gammaF = 1.5_ki * CF
   end subroutine init_color
   subroutine     inspect_color(unit)
      implicit none
      integer, intent(in) :: unit
      integer :: i, j
      character :: ch1, ch2, ch3

      ch3 = ","
      write (unit,'(A13)') "golem_color=["
      do i=1,numcs
         do j=1,numcs
            if (j==1) then
               ch1 = "["
            else
               ch1 = " "
            endif

            if (j == numcs) then
               ch2 = "]"
               if (i == numcs) then
                  ch3 = "]"
               end if
            else
               ch2 = ","
            end if

            if (j == numcs) then
               write (unit,'(3x,A1,A8,G23.16,A1,G23.16,A1,A1,A1)') &
               & ch1, "complex(", real(CC(i,j)), ",", aimag(CC(i,j)), ")", &
               & ch2, ch3
            else
               write (unit,'(3x,A1,A8,G23.16,A1,G23.16,A1,A1)') &
               & ch1, "complex(", real(CC(i,j)), ",", aimag(CC(i,j)), ")", &
               & ch2
            end if
         enddo
      enddo
   end subroutine inspect_color
end module p0_gg_hepem_color