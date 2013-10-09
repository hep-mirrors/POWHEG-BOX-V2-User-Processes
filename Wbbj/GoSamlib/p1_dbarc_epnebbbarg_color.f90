module     p1_dbarc_epnebbbarg_color
   ! file:      /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_e
   ! pnebbbarg/common/color.f90
   ! generator: haggies (1.1)
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_model, only: NC, Nf
   implicit none
   save

   private :: ki, NC, Nf

   real(ki), parameter :: TR = 0.5_ki

   complex(ki), parameter, private :: i_ = (0.0_ki, 1.0_ki)
   real(ki), parameter, private :: pi = &
   & 3.1415926535897932384626433832795028841971693993751058209749445920_ki
   real(ki), parameter, private :: pi6 = pi*pi/6.0_ki

   integer, parameter :: numcs = 4
   complex(ki), dimension(numcs, numcs) :: CC
   complex(ki), dimension(numcs, numcs) :: T1T1
   complex(ki), dimension(numcs, numcs) :: T1T2
   complex(ki), dimension(numcs, numcs) :: T1T5
   complex(ki), dimension(numcs, numcs) :: T1T6
   complex(ki), dimension(numcs, numcs) :: T1T7
   complex(ki), dimension(numcs, numcs) :: T2T2
   complex(ki), dimension(numcs, numcs) :: T2T5
   complex(ki), dimension(numcs, numcs) :: T2T6
   complex(ki), dimension(numcs, numcs) :: T2T7
   complex(ki), dimension(numcs, numcs) :: T5T5
   complex(ki), dimension(numcs, numcs) :: T5T6
   complex(ki), dimension(numcs, numcs) :: T5T7
   complex(ki), dimension(numcs, numcs) :: T6T6
   complex(ki), dimension(numcs, numcs) :: T6T7
   complex(ki), dimension(numcs, numcs) :: T7T7
   real(ki) :: incolors

   real(ki) :: CA, CF, KA, KF, gammaA, gammaF

   ! Basis vectors
   integer, private :: i
   real(ki), dimension(numcs), parameter :: c1 = &
      & (/1.0_ki, (0.0_ki, i=2,4)/)
   real(ki), dimension(numcs), parameter :: c2 = &
      & (/0.0_ki, 1.0_ki, 0.0_ki, 0.0_ki/)
   real(ki), dimension(numcs), parameter :: c3 = &
      & (/0.0_ki, 0.0_ki, 1.0_ki, 0.0_ki/)
   real(ki), dimension(numcs), parameter :: c4 = &
      & (/(0.0_ki, i=1,3), 1.0_ki/)
contains
   subroutine     init_color()
      implicit none
      real(ki) :: NA
      real(ki) :: t1
      real(ki) :: t2
      real(ki) :: t3
      real(ki) :: t4
      real(ki) :: t5
      real(ki) :: t6
      real(ki) :: t7
      real(ki) :: t8
      real(ki) :: t9
      real(ki) :: t10
      real(ki) :: t11
      real(ki) :: t12
      real(ki) :: t13
      real(ki) :: t14
      real(ki) :: t15
      
      t1 = NC*NC
      t2 = t1-1.0_ki
      NA = t2
      incolors = t1
      t3 = t2*NC
      t4 = t3*TR
      CC(1, 1) = t4
      CC(1, 1) = t4
      t5 = t2*TR
      CC(1, 2) = t5
      CC(2, 1) = t5
      CC(1, 3) = 0.0_ki
      CC(3, 1) = 0.0_ki
      CC(1, 4) = t5
      CC(4, 1) = t5
      CC(2, 1) = t5
      CC(1, 2) = t5
      CC(2, 2) = t4
      CC(2, 2) = t4
      CC(2, 3) = t5
      CC(3, 2) = t5
      CC(2, 4) = 0.0_ki
      CC(4, 2) = 0.0_ki
      CC(3, 1) = 0.0_ki
      CC(1, 3) = 0.0_ki
      CC(3, 2) = t5
      CC(2, 3) = t5
      CC(3, 3) = t4
      CC(3, 3) = t4
      CC(3, 4) = t5
      CC(4, 3) = t5
      CC(4, 1) = t5
      CC(1, 4) = t5
      CC(4, 2) = 0.0_ki
      CC(2, 4) = 0.0_ki
      CC(4, 3) = t5
      CC(3, 4) = t5
      CC(4, 4) = t4
      CC(4, 4) = t4
      t6 = t1-2.0_ki
      t7 = TR*TR
      t8 = (1.0_ki+t1*t6)*t7
      T1T1(1, 1) = t8
      T1T1(1, 1) = t8
      t6 = (1.0_ki/NC+t6*NC)*t7
      T1T1(1, 2) = t6
      T1T1(2, 1) = t6
      T1T1(1, 3) = 0.0_ki
      T1T1(3, 1) = 0.0_ki
      T1T1(1, 4) = t6
      T1T1(4, 1) = t6
      T1T1(2, 2) = t8
      T1T1(2, 2) = t8
      T1T1(2, 3) = t6
      T1T1(3, 2) = t6
      T1T1(2, 4) = 0.0_ki
      T1T1(4, 2) = 0.0_ki
      T1T1(3, 3) = t8
      T1T1(3, 3) = t8
      T1T1(3, 4) = t6
      T1T1(4, 3) = t6
      T1T1(4, 4) = t8
      T1T1(4, 4) = t8
      T1T2(1, 1) = 0.0_ki
      T1T2(1, 1) = 0.0_ki
      t9 = 2.0_ki-t1
      t10 = (1.0_ki/NC-t9*NC)*t7
      T1T2(1, 2) = -(t10)
      T1T2(2, 1) = -(t10)
      t11 = 1.0_ki-t1
      t12 = t11*t7
      T1T2(1, 3) = t12
      T1T2(3, 1) = t12
      t13 = (NC-1.0_ki/NC)*t7
      T1T2(1, 4) = t13
      T1T2(4, 1) = t13
      t9 = (1.0_ki-t1*t9)*t7
      T1T2(2, 2) = -(t9)
      T1T2(2, 2) = -(t9)
      T1T2(2, 3) = -(t10)
      T1T2(3, 2) = -(t10)
      T1T2(2, 4) = 0.0_ki
      T1T2(4, 2) = 0.0_ki
      T1T2(3, 3) = 0.0_ki
      T1T2(3, 3) = 0.0_ki
      T1T2(3, 4) = t13
      T1T2(4, 3) = t13
      t2 = t2*t7
      T1T2(4, 4) = t2
      T1T2(4, 4) = t2
      T1T5(1, 1) = 0.0_ki
      T1T5(1, 1) = 0.0_ki
      t14 = (1.0_ki/NC-NC)*t7
      T1T5(1, 2) = t14
      T1T5(2, 1) = t14
      T1T5(1, 3) = t2
      T1T5(3, 1) = t2
      T1T5(1, 4) = t6
      T1T5(4, 1) = t6
      T1T5(2, 2) = 0.0_ki
      T1T5(2, 2) = 0.0_ki
      T1T5(2, 3) = t6
      T1T5(3, 2) = t6
      T1T5(2, 4) = t2
      T1T5(4, 2) = t2
      T1T5(3, 3) = 0.0_ki
      T1T5(3, 3) = 0.0_ki
      T1T5(3, 4) = t14
      T1T5(4, 3) = t14
      T1T5(4, 4) = 0.0_ki
      T1T5(4, 4) = 0.0_ki
      T1T6(1, 1) = -(t9)
      T1T6(1, 1) = -(t9)
      T1T6(1, 2) = -(t10)
      T1T6(2, 1) = -(t10)
      T1T6(1, 3) = 0.0_ki
      T1T6(3, 1) = 0.0_ki
      T1T6(1, 4) = -(t10)
      T1T6(4, 1) = -(t10)
      T1T6(2, 2) = 0.0_ki
      T1T6(2, 2) = 0.0_ki
      T1T6(2, 3) = t13
      T1T6(3, 2) = t13
      T1T6(2, 4) = t12
      T1T6(4, 2) = t12
      T1T6(3, 3) = t2
      T1T6(3, 3) = t2
      T1T6(3, 4) = t13
      T1T6(4, 3) = t13
      T1T6(4, 4) = 0.0_ki
      T1T6(4, 4) = 0.0_ki
      T1T7(1, 1) = 0.0_ki
      T1T7(1, 1) = 0.0_ki
      t3 = t3*t7
      T1T7(1, 2) = t3
      T1T7(2, 1) = t3
      T1T7(1, 3) = 0.0_ki
      T1T7(3, 1) = 0.0_ki
      t7 = t11*t7*NC
      T1T7(1, 4) = t7
      T1T7(4, 1) = t7
      T1T7(2, 2) = 0.0_ki
      T1T7(2, 2) = 0.0_ki
      T1T7(2, 3) = t7
      T1T7(3, 2) = t7
      T1T7(2, 4) = 0.0_ki
      T1T7(4, 2) = 0.0_ki
      t15 = NC*TR
      t11 = t11*t15*t15
      T1T7(3, 3) = t11
      T1T7(3, 3) = t11
      T1T7(3, 4) = t7
      T1T7(4, 3) = t7
      T1T7(4, 4) = t11
      T1T7(4, 4) = t11
      T2T2(1, 1) = t8
      T2T2(1, 1) = t8
      T2T2(1, 2) = t6
      T2T2(2, 1) = t6
      T2T2(1, 3) = 0.0_ki
      T2T2(3, 1) = 0.0_ki
      T2T2(1, 4) = t6
      T2T2(4, 1) = t6
      T2T2(2, 2) = t8
      T2T2(2, 2) = t8
      T2T2(2, 3) = t6
      T2T2(3, 2) = t6
      T2T2(2, 4) = 0.0_ki
      T2T2(4, 2) = 0.0_ki
      T2T2(3, 3) = t8
      T2T2(3, 3) = t8
      T2T2(3, 4) = t6
      T2T2(4, 3) = t6
      T2T2(4, 4) = t8
      T2T2(4, 4) = t8
      T2T5(1, 1) = t2
      T2T5(1, 1) = t2
      T2T5(1, 2) = t13
      T2T5(2, 1) = t13
      T2T5(1, 3) = 0.0_ki
      T2T5(3, 1) = 0.0_ki
      T2T5(1, 4) = t13
      T2T5(4, 1) = t13
      T2T5(2, 2) = 0.0_ki
      T2T5(2, 2) = 0.0_ki
      T2T5(2, 3) = -(t10)
      T2T5(3, 2) = -(t10)
      T2T5(2, 4) = t12
      T2T5(4, 2) = t12
      T2T5(3, 3) = -(t9)
      T2T5(3, 3) = -(t9)
      T2T5(3, 4) = -(t10)
      T2T5(4, 3) = -(t10)
      T2T5(4, 4) = 0.0_ki
      T2T5(4, 4) = 0.0_ki
      T2T6(1, 1) = 0.0_ki
      T2T6(1, 1) = 0.0_ki
      T2T6(1, 2) = t6
      T2T6(2, 1) = t6
      T2T6(1, 3) = t2
      T2T6(3, 1) = t2
      T2T6(1, 4) = t14
      T2T6(4, 1) = t14
      T2T6(2, 2) = 0.0_ki
      T2T6(2, 2) = 0.0_ki
      T2T6(2, 3) = t14
      T2T6(3, 2) = t14
      T2T6(2, 4) = t2
      T2T6(4, 2) = t2
      T2T6(3, 3) = 0.0_ki
      T2T6(3, 3) = 0.0_ki
      T2T6(3, 4) = t6
      T2T6(4, 3) = t6
      T2T6(4, 4) = 0.0_ki
      T2T6(4, 4) = 0.0_ki
      T2T7(1, 1) = t11
      T2T7(1, 1) = t11
      T2T7(1, 2) = t7
      T2T7(2, 1) = t7
      T2T7(1, 3) = 0.0_ki
      T2T7(3, 1) = 0.0_ki
      T2T7(1, 4) = t7
      T2T7(4, 1) = t7
      T2T7(2, 2) = 0.0_ki
      T2T7(2, 2) = 0.0_ki
      T2T7(2, 3) = t3
      T2T7(3, 2) = t3
      T2T7(2, 4) = 0.0_ki
      T2T7(4, 2) = 0.0_ki
      T2T7(3, 3) = 0.0_ki
      T2T7(3, 3) = 0.0_ki
      T2T7(3, 4) = t7
      T2T7(4, 3) = t7
      T2T7(4, 4) = t11
      T2T7(4, 4) = t11
      T5T5(1, 1) = t8
      T5T5(1, 1) = t8
      T5T5(1, 2) = t6
      T5T5(2, 1) = t6
      T5T5(1, 3) = 0.0_ki
      T5T5(3, 1) = 0.0_ki
      T5T5(1, 4) = t6
      T5T5(4, 1) = t6
      T5T5(2, 2) = t8
      T5T5(2, 2) = t8
      T5T5(2, 3) = t6
      T5T5(3, 2) = t6
      T5T5(2, 4) = 0.0_ki
      T5T5(4, 2) = 0.0_ki
      T5T5(3, 3) = t8
      T5T5(3, 3) = t8
      T5T5(3, 4) = t6
      T5T5(4, 3) = t6
      T5T5(4, 4) = t8
      T5T5(4, 4) = t8
      T5T6(1, 1) = 0.0_ki
      T5T6(1, 1) = 0.0_ki
      T5T6(1, 2) = t13
      T5T6(2, 1) = t13
      T5T6(1, 3) = t12
      T5T6(3, 1) = t12
      T5T6(1, 4) = -(t10)
      T5T6(4, 1) = -(t10)
      T5T6(2, 2) = t2
      T5T6(2, 2) = t2
      T5T6(2, 3) = t13
      T5T6(3, 2) = t13
      T5T6(2, 4) = 0.0_ki
      T5T6(4, 2) = 0.0_ki
      T5T6(3, 3) = 0.0_ki
      T5T6(3, 3) = 0.0_ki
      T5T6(3, 4) = -(t10)
      T5T6(4, 3) = -(t10)
      T5T6(4, 4) = -(t9)
      T5T6(4, 4) = -(t9)
      T5T7(1, 1) = t11
      T5T7(1, 1) = t11
      T5T7(1, 2) = t7
      T5T7(2, 1) = t7
      T5T7(1, 3) = 0.0_ki
      T5T7(3, 1) = 0.0_ki
      T5T7(1, 4) = t7
      T5T7(4, 1) = t7
      T5T7(2, 2) = t11
      T5T7(2, 2) = t11
      T5T7(2, 3) = t7
      T5T7(3, 2) = t7
      T5T7(2, 4) = 0.0_ki
      T5T7(4, 2) = 0.0_ki
      T5T7(3, 3) = 0.0_ki
      T5T7(3, 3) = 0.0_ki
      T5T7(3, 4) = t3
      T5T7(4, 3) = t3
      T5T7(4, 4) = 0.0_ki
      T5T7(4, 4) = 0.0_ki
      T6T6(1, 1) = t8
      T6T6(1, 1) = t8
      T6T6(1, 2) = t6
      T6T6(2, 1) = t6
      T6T6(1, 3) = 0.0_ki
      T6T6(3, 1) = 0.0_ki
      T6T6(1, 4) = t6
      T6T6(4, 1) = t6
      T6T6(2, 2) = t8
      T6T6(2, 2) = t8
      T6T6(2, 3) = t6
      T6T6(3, 2) = t6
      T6T6(2, 4) = 0.0_ki
      T6T6(4, 2) = 0.0_ki
      T6T6(3, 3) = t8
      T6T6(3, 3) = t8
      T6T6(3, 4) = t6
      T6T6(4, 3) = t6
      T6T6(4, 4) = t8
      T6T6(4, 4) = t8
      T6T7(1, 1) = 0.0_ki
      T6T7(1, 1) = 0.0_ki
      T6T7(1, 2) = t7
      T6T7(2, 1) = t7
      T6T7(1, 3) = 0.0_ki
      T6T7(3, 1) = 0.0_ki
      T6T7(1, 4) = t3
      T6T7(4, 1) = t3
      T6T7(2, 2) = t11
      T6T7(2, 2) = t11
      T6T7(2, 3) = t7
      T6T7(3, 2) = t7
      T6T7(2, 4) = 0.0_ki
      T6T7(4, 2) = 0.0_ki
      T6T7(3, 3) = t11
      T6T7(3, 3) = t11
      T6T7(3, 4) = t7
      T6T7(4, 3) = t7
      T6T7(4, 4) = 0.0_ki
      T6T7(4, 4) = 0.0_ki
      t1 = t1*t5
      T7T7(1, 1) = t1
      T7T7(1, 1) = t1
      T7T7(1, 2) = t4
      T7T7(2, 1) = t4
      T7T7(1, 3) = 0.0_ki
      T7T7(3, 1) = 0.0_ki
      T7T7(1, 4) = t4
      T7T7(4, 1) = t4
      T7T7(2, 2) = t1
      T7T7(2, 2) = t1
      T7T7(2, 3) = t4
      T7T7(3, 2) = t4
      T7T7(2, 4) = 0.0_ki
      T7T7(4, 2) = 0.0_ki
      T7T7(3, 3) = t1
      T7T7(3, 3) = t1
      T7T7(3, 4) = t4
      T7T7(4, 3) = t4
      T7T7(4, 4) = t1
      T7T7(4, 4) = t1

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
end module p1_dbarc_epnebbbarg_color
