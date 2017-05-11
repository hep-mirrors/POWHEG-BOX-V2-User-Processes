module p0_gg_hhg_color_qp
   ! file:      /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/G
   ! oSam_POWHEG/Virtual/p0_gg_hhg/common/color.f90
   ! generator: haggies (1.1)
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_model_qp, only: NC, Nf
   implicit none
   save

   private :: ki, NC, Nf

   real(ki), parameter :: TR = 0.5_ki

   complex(ki), parameter, private :: i_ = (0.0_ki, 1.0_ki)
   real(ki), parameter, private :: pi = &
   & 3.1415926535897932384626433832795028841971693993751058209749445920_ki
   real(ki), parameter, private :: pi6 = pi*pi/6.0_ki

   integer, parameter :: numcs = 2
   complex(ki), dimension(numcs, numcs) :: CC
   complex(ki), dimension(numcs, numcs) :: T1T1
   complex(ki), dimension(numcs, numcs) :: T1T2
   complex(ki), dimension(numcs, numcs) :: T1T5
   complex(ki), dimension(numcs, numcs) :: T2T2
   complex(ki), dimension(numcs, numcs) :: T2T5
   complex(ki), dimension(numcs, numcs) :: T5T5
   real(ki) :: incolors

   real(ki) :: CA, CF, KA, KF, gammaA, gammaF

   ! Basis vectors
   real(ki), dimension(numcs), parameter :: c1 = &
      & (/1.0_ki, 0.0_ki/)
   real(ki), dimension(numcs), parameter :: c2 = &
      & (/0.0_ki, 1.0_ki/)
contains
   subroutine     init_color()
      implicit none
      real(ki) :: NA
      real(ki) :: t1
      real(ki) :: t2
      real(ki) :: t3
      real(ki) :: t4
      real(ki) :: t5
      
      t1 = NC*NC
      NA = (t1-1.0_ki)
      incolors = (NA*NA)
      t2 = t1-3.0_ki
      t3 = TR*TR
      t4 = (2.0_ki/NC+t2*NC)*t3*TR
      CC(1, 1) = t4
      CC(1, 1) = t4
      CC(1, 2) = (2.0_ki*(1.0_ki/NC-NC)*t3*TR)
      CC(2, 1) = (2.0_ki*(1.0_ki/NC-NC)*t3*TR)
      CC(2, 2) = t4
      CC(2, 2) = t4
      t2 = (2.0_ki+t1*t2)*t3*TR
      T1T1(1, 1) = t2
      T1T1(1, 1) = t2
      t4 = 2.0_ki*t1
      t5 = (2.0_ki-t4)*t3*TR
      T1T1(1, 2) = t5
      T1T1(2, 1) = t5
      T1T1(2, 2) = t2
      T1T1(2, 2) = t2
      t3 = t3*t3
      t1 = ((3.0_ki-t1)*t1-2.0_ki)*t3
      T1T2(1, 1) = t1
      T1T2(1, 1) = t1
      t3 = (t4-2.0_ki)*t3
      T1T2(1, 2) = t3
      T1T2(2, 1) = t3
      T1T2(2, 2) = t1
      T1T2(2, 2) = t1
      T1T5(1, 1) = t1
      T1T5(1, 1) = t1
      T1T5(1, 2) = t3
      T1T5(2, 1) = t3
      T1T5(2, 2) = t1
      T1T5(2, 2) = t1
      T2T2(1, 1) = t2
      T2T2(1, 1) = t2
      T2T2(1, 2) = t5
      T2T2(2, 1) = t5
      T2T2(2, 2) = t2
      T2T2(2, 2) = t2
      T2T5(1, 1) = t1
      T2T5(1, 1) = t1
      T2T5(1, 2) = t3
      T2T5(2, 1) = t3
      T2T5(2, 2) = t1
      T2T5(2, 2) = t1
      T5T5(1, 1) = t2
      T5T5(1, 1) = t2
      T5T5(1, 2) = t5
      T5T5(2, 1) = t5
      T5T5(2, 2) = t2
      T5T5(2, 2) = t2

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
      write (unit,'(A13)') "gosam_color=["
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
end module p0_gg_hhg_color_qp
