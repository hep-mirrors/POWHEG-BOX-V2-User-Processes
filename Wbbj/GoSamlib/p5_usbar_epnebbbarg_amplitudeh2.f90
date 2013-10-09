module    p5_usbar_epnebbbarg_amplitudeh2
   use p5_usbar_epnebbbarg_config, only: ki, &
       & reduction_interoperation
   use p5_usbar_epnebbbarg_color, only: numcs
   use p5_usbar_epnebbbarg_groups
   use precision, only: ki_sam => ki
   use p5_usbar_epnebbbarg_samuraih2
   use precision_golem, only: ki_gol => ki
   use p5_usbar_epnebbbarg_golem95h2
   
   implicit none
   private

   public :: finite_renormalisation, samplitude
contains
!---#[ function finite_renormalisation:
   function     finite_renormalisation(scale2) result(amp)
      use p5_usbar_epnebbbarg_util, only: square
      use p5_usbar_epnebbbarg_color, only: CF, CA
      use p5_usbar_epnebbbarg_kinematics, only: &
      & num_light_quarks, num_gluons
      use p5_usbar_epnebbbarg_diagramsh2l0, only: amplitudel0 => amplitude
      implicit none
      real(ki), intent(in) :: scale2
      real(ki) :: amp
      amp = 0.0_ki
   end function finite_renormalisation
   !---#] function finite_renormalisation:

   !---#[ function samplitude:
   function     samplitude(scale2,ok,rational2,opt_amp0,opt_perm)
      use p5_usbar_epnebbbarg_config, only: include_eps_terms, include_eps2_terms, &
      & logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_globalsl1, only: amp0,perm, use_perm, epspow
      use p5_usbar_epnebbbarg_globalsh2, &
     & only: init_lo, rat2
      use p5_usbar_epnebbbarg_abbrevd322h2, only: init_abbrevd322 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd176h2, only: init_abbrevd176 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd318h2, only: init_abbrevd318 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd28h2, only: init_abbrevd28 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd87h2, only: init_abbrevd87 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd153h2, only: init_abbrevd153 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd180h2, only: init_abbrevd180 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd244h2, only: init_abbrevd244 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd320h2, only: init_abbrevd320 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd13h2, only: init_abbrevd13 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd84h2, only: init_abbrevd84 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd12h2, only: init_abbrevd12 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd85h2, only: init_abbrevd85 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd15h2, only: init_abbrevd15 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd83h2, only: init_abbrevd83 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd14h2, only: init_abbrevd14 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd82h2, only: init_abbrevd82 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd68h2, only: init_abbrevd68 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd80h2, only: init_abbrevd80 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd128h2, only: init_abbrevd128 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd66h2, only: init_abbrevd66 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd127h2, only: init_abbrevd127 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd81h2, only: init_abbrevd81 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd79h2, only: init_abbrevd79 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd109h2, only: init_abbrevd109 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd292h2, only: init_abbrevd292 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd301h2, only: init_abbrevd301 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd298h2, only: init_abbrevd298 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd303h2, only: init_abbrevd303 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd316h2, only: init_abbrevd316 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd16h2, only: init_abbrevd16 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd38h2, only: init_abbrevd38 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd42h2, only: init_abbrevd42 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd58h2, only: init_abbrevd58 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd70h2, only: init_abbrevd70 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd76h2, only: init_abbrevd76 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd90h2, only: init_abbrevd90 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd93h2, only: init_abbrevd93 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd102h2, only: init_abbrevd102 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd108h2, only: init_abbrevd108 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd115h2, only: init_abbrevd115 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd126h2, only: init_abbrevd126 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd139h2, only: init_abbrevd139 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd227h2, only: init_abbrevd227 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd295h2, only: init_abbrevd295 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd310h2, only: init_abbrevd310 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd72h2, only: init_abbrevd72 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd75h2, only: init_abbrevd75 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd98h2, only: init_abbrevd98 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd101h2, only: init_abbrevd101 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd120h2, only: init_abbrevd120 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd121h2, only: init_abbrevd121 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd300h2, only: init_abbrevd300 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd305h2, only: init_abbrevd305 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd315h2, only: init_abbrevd315 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd6h2, only: init_abbrevd6 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd8h2, only: init_abbrevd8 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd10h2, only: init_abbrevd10 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd17h2, only: init_abbrevd17 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd18h2, only: init_abbrevd18 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd21h2, only: init_abbrevd21 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd24h2, only: init_abbrevd24 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd40h2, only: init_abbrevd40 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd43h2, only: init_abbrevd43 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd59h2, only: init_abbrevd59 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd64h2, only: init_abbrevd64 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd65h2, only: init_abbrevd65 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd71h2, only: init_abbrevd71 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd78h2, only: init_abbrevd78 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd86h2, only: init_abbrevd86 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd91h2, only: init_abbrevd91 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd92h2, only: init_abbrevd92 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd103h2, only: init_abbrevd103 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd110h2, only: init_abbrevd110 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd111h2, only: init_abbrevd111 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd124h2, only: init_abbrevd124 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd137h2, only: init_abbrevd137 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd223h2, only: init_abbrevd223 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd296h2, only: init_abbrevd296 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd302h2, only: init_abbrevd302 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd67h2, only: init_abbrevd67 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd77h2, only: init_abbrevd77 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd94h2, only: init_abbrevd94 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd107h2, only: init_abbrevd107 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd117h2, only: init_abbrevd117 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd125h2, only: init_abbrevd125 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd145h2, only: init_abbrevd145 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd294h2, only: init_abbrevd294 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd304h2, only: init_abbrevd304 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd314h2, only: init_abbrevd314 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd317h2, only: init_abbrevd317 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd336h2, only: init_abbrevd336 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd291h2, only: init_abbrevd291 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd309h2, only: init_abbrevd309 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd1h2, only: init_abbrevd1 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd2h2, only: init_abbrevd2 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd3h2, only: init_abbrevd3 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd4h2, only: init_abbrevd4 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd20h2, only: init_abbrevd20 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd23h2, only: init_abbrevd23 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd62h2, only: init_abbrevd62 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd63h2, only: init_abbrevd63 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd73h2, only: init_abbrevd73 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd74h2, only: init_abbrevd74 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd99h2, only: init_abbrevd99 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd100h2, only: init_abbrevd100 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd104h2, only: init_abbrevd104 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd119h2, only: init_abbrevd119 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd122h2, only: init_abbrevd122 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd175h2, only: init_abbrevd175 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd179h2, only: init_abbrevd179 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd219h2, only: init_abbrevd219 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd221h2, only: init_abbrevd221 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd225h2, only: init_abbrevd225 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd229h2, only: init_abbrevd229 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd240h2, only: init_abbrevd240 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd299h2, only: init_abbrevd299 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd307h2, only: init_abbrevd307 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd313h2, only: init_abbrevd313 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd321h2, only: init_abbrevd321 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd333h2, only: init_abbrevd333 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd335h2, only: init_abbrevd335 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd293h2, only: init_abbrevd293 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd306h2, only: init_abbrevd306 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd312h2, only: init_abbrevd312 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd69h2, only: init_abbrevd69 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd96h2, only: init_abbrevd96 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd113h2, only: init_abbrevd113 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd123h2, only: init_abbrevd123 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd297h2, only: init_abbrevd297 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd308h2, only: init_abbrevd308 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd311h2, only: init_abbrevd311 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd319h2, only: init_abbrevd319 => init_abbrev
      use p5_usbar_epnebbbarg_abbrevd334h2, only: init_abbrevd334 => init_abbrev
      use p5_usbar_epnebbbarg_diagramsh2l0, only: amplitudel0 => amplitude
      use p5_usbar_epnebbbarg_groups
      implicit none
      real(ki), intent(in) :: scale2
      logical, intent(out) :: ok
      real(ki), intent(out) :: rational2
      complex(ki), dimension(numcs), intent(in), optional :: opt_amp0
      integer, dimension(numcs), intent(in), optional :: opt_perm
      real(ki), dimension(-2:0) :: samplitude

      real(ki), dimension(-2:0) :: acc
      real(ki), dimension(0:2,-2:0) :: samp_part

      logical :: acc_ok

      ok = .true.
      rational2 = 0.0_ki

      samplitude(:) = 0.0_ki
      if (present(opt_amp0)) then
         amp0 = opt_amp0
      else
         amp0 = amplitudel0()
      end if
      if (present(opt_perm)) then
         use_perm = .true.
         perm = opt_perm
      else
         use_perm = .false.
      end if

      rat2 = (0.0_ki, 0.0_ki)
      call init_lo()
      call init_abbrevd322()
      call init_abbrevd176()
      call init_abbrevd318()
      call init_abbrevd28()
      call init_abbrevd87()
      call init_abbrevd153()
      call init_abbrevd180()
      call init_abbrevd244()
      call init_abbrevd320()
      call init_abbrevd13()
      call init_abbrevd84()
      call init_abbrevd12()
      call init_abbrevd85()
      call init_abbrevd15()
      call init_abbrevd83()
      call init_abbrevd14()
      call init_abbrevd82()
      call init_abbrevd68()
      call init_abbrevd80()
      call init_abbrevd128()
      call init_abbrevd66()
      call init_abbrevd127()
      call init_abbrevd81()
      call init_abbrevd79()
      call init_abbrevd109()
      call init_abbrevd292()
      call init_abbrevd301()
      call init_abbrevd298()
      call init_abbrevd303()
      call init_abbrevd316()
      call init_abbrevd16()
      call init_abbrevd38()
      call init_abbrevd42()
      call init_abbrevd58()
      call init_abbrevd70()
      call init_abbrevd76()
      call init_abbrevd90()
      call init_abbrevd93()
      call init_abbrevd102()
      call init_abbrevd108()
      call init_abbrevd115()
      call init_abbrevd126()
      call init_abbrevd139()
      call init_abbrevd227()
      call init_abbrevd295()
      call init_abbrevd310()
      call init_abbrevd72()
      call init_abbrevd75()
      call init_abbrevd98()
      call init_abbrevd101()
      call init_abbrevd120()
      call init_abbrevd121()
      call init_abbrevd300()
      call init_abbrevd305()
      call init_abbrevd315()
      call init_abbrevd6()
      call init_abbrevd8()
      call init_abbrevd10()
      call init_abbrevd17()
      call init_abbrevd18()
      call init_abbrevd21()
      call init_abbrevd24()
      call init_abbrevd40()
      call init_abbrevd43()
      call init_abbrevd59()
      call init_abbrevd64()
      call init_abbrevd65()
      call init_abbrevd71()
      call init_abbrevd78()
      call init_abbrevd86()
      call init_abbrevd91()
      call init_abbrevd92()
      call init_abbrevd103()
      call init_abbrevd110()
      call init_abbrevd111()
      call init_abbrevd124()
      call init_abbrevd137()
      call init_abbrevd223()
      call init_abbrevd296()
      call init_abbrevd302()
      call init_abbrevd67()
      call init_abbrevd77()
      call init_abbrevd94()
      call init_abbrevd107()
      call init_abbrevd117()
      call init_abbrevd125()
      call init_abbrevd145()
      call init_abbrevd294()
      call init_abbrevd304()
      call init_abbrevd314()
      call init_abbrevd317()
      call init_abbrevd336()
      call init_abbrevd291()
      call init_abbrevd309()
      call init_abbrevd1()
      call init_abbrevd2()
      call init_abbrevd3()
      call init_abbrevd4()
      call init_abbrevd20()
      call init_abbrevd23()
      call init_abbrevd62()
      call init_abbrevd63()
      call init_abbrevd73()
      call init_abbrevd74()
      call init_abbrevd99()
      call init_abbrevd100()
      call init_abbrevd104()
      call init_abbrevd119()
      call init_abbrevd122()
      call init_abbrevd175()
      call init_abbrevd179()
      call init_abbrevd219()
      call init_abbrevd221()
      call init_abbrevd225()
      call init_abbrevd229()
      call init_abbrevd240()
      call init_abbrevd299()
      call init_abbrevd307()
      call init_abbrevd313()
      call init_abbrevd321()
      call init_abbrevd333()
      call init_abbrevd335()
      call init_abbrevd293()
      call init_abbrevd306()
      call init_abbrevd312()
      call init_abbrevd69()
      call init_abbrevd96()
      call init_abbrevd113()
      call init_abbrevd123()
      call init_abbrevd297()
      call init_abbrevd308()
      call init_abbrevd311()
      call init_abbrevd319()
      call init_abbrevd334()
      epspow=0
      samplitude(-2) = 0.0_ki
      samplitude(-1) = 0.0_ki
      if(debug_nlo_diagrams) then
         write(logfile,'(A22,G24.16,A6,G24.16,A4)') &
         & "<result name='r2' re='", real(rat2, ki), &
         &                 "' im='", aimag(rat2), "' />"
      end if
      rational2 = 2.0_ki * real(rat2, ki)
      samplitude(0) = 2.0_ki * real(rat2, ki)
         call evaluate_group0(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group1(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group2(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group3(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group4(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group5(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group6(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group7(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group8(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group9(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group10(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group11(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group12(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group13(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group14(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group15(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group16(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group17(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group18(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group19(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
         call evaluate_group20(scale2, acc, acc_ok)
         ok = ok .and. acc_ok
         samplitude(:) = samplitude(:) + acc
   end function samplitude
   !---#] function samplitude:
!---#[ subroutine evaluate_group0:
subroutine     evaluate_group0(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group0, &
      & reduce_numetens => reduce_numetens_group0
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group0
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group0), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='0'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group0
!---#] subroutine evaluate_group0:
!---#[ subroutine evaluate_group1:
subroutine     evaluate_group1(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group1, &
      & reduce_numetens => reduce_numetens_group1
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group1
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group1), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='1'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group1
!---#] subroutine evaluate_group1:
!---#[ subroutine evaluate_group2:
subroutine     evaluate_group2(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group2, &
      & reduce_numetens => reduce_numetens_group2
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group2
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group2), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='2'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group2
!---#] subroutine evaluate_group2:
!---#[ subroutine evaluate_group3:
subroutine     evaluate_group3(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group3, &
      & reduce_numetens => reduce_numetens_group3
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group3
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group3), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='3'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group3
!---#] subroutine evaluate_group3:
!---#[ subroutine evaluate_group4:
subroutine     evaluate_group4(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group4, &
      & reduce_numetens => reduce_numetens_group4
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group4
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group4), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='4'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group4
!---#] subroutine evaluate_group4:
!---#[ subroutine evaluate_group5:
subroutine     evaluate_group5(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group5, &
      & reduce_numetens => reduce_numetens_group5
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group5
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group5), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='5'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group5
!---#] subroutine evaluate_group5:
!---#[ subroutine evaluate_group6:
subroutine     evaluate_group6(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group6, &
      & reduce_numetens => reduce_numetens_group6
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group6
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group6), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='6'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group6
!---#] subroutine evaluate_group6:
!---#[ subroutine evaluate_group7:
subroutine     evaluate_group7(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group7, &
      & reduce_numetens => reduce_numetens_group7
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group7
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group7), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='7'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group7
!---#] subroutine evaluate_group7:
!---#[ subroutine evaluate_group8:
subroutine     evaluate_group8(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group8, &
      & reduce_numetens => reduce_numetens_group8
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group8
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group8), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='8'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group8
!---#] subroutine evaluate_group8:
!---#[ subroutine evaluate_group9:
subroutine     evaluate_group9(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group9, &
      & reduce_numetens => reduce_numetens_group9
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group9
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group9), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='9'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group9
!---#] subroutine evaluate_group9:
!---#[ subroutine evaluate_group10:
subroutine     evaluate_group10(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group10, &
      & reduce_numetens => reduce_numetens_group10
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group10
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group10), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='10'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group10
!---#] subroutine evaluate_group10:
!---#[ subroutine evaluate_group11:
subroutine     evaluate_group11(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group11, &
      & reduce_numetens => reduce_numetens_group11
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group11
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group11), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='11'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group11
!---#] subroutine evaluate_group11:
!---#[ subroutine evaluate_group12:
subroutine     evaluate_group12(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group12, &
      & reduce_numetens => reduce_numetens_group12
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group12
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group12), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='12'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group12
!---#] subroutine evaluate_group12:
!---#[ subroutine evaluate_group13:
subroutine     evaluate_group13(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group13, &
      & reduce_numetens => reduce_numetens_group13
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group13
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group13), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='13'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group13
!---#] subroutine evaluate_group13:
!---#[ subroutine evaluate_group14:
subroutine     evaluate_group14(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group14, &
      & reduce_numetens => reduce_numetens_group14
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group14
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group14), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='14'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group14
!---#] subroutine evaluate_group14:
!---#[ subroutine evaluate_group15:
subroutine     evaluate_group15(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group15, &
      & reduce_numetens => reduce_numetens_group15
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group15
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group15), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='15'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group15
!---#] subroutine evaluate_group15:
!---#[ subroutine evaluate_group16:
subroutine     evaluate_group16(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group16, &
      & reduce_numetens => reduce_numetens_group16
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group16
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group16), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='16'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group16
!---#] subroutine evaluate_group16:
!---#[ subroutine evaluate_group17:
subroutine     evaluate_group17(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group17, &
      & reduce_numetens => reduce_numetens_group17
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group17
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group17), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='17'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group17
!---#] subroutine evaluate_group17:
!---#[ subroutine evaluate_group18:
subroutine     evaluate_group18(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group18, &
      & reduce_numetens => reduce_numetens_group18
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group18
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group18), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='18'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group18
!---#] subroutine evaluate_group18:
!---#[ subroutine evaluate_group19:
subroutine     evaluate_group19(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group19, &
      & reduce_numetens => reduce_numetens_group19
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group19
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group19), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='19'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group19
!---#] subroutine evaluate_group19:
!---#[ subroutine evaluate_group20:
subroutine     evaluate_group20(scale2,samplitude,ok)
   use p5_usbar_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p5_usbar_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p5_usbar_epnebbbarg_golem95h2, only: reconstruct_golem95 => reconstruct_group
   use p5_usbar_epnebbbarg_groups, only: contract_golem95, &
      & global_coeffs => coeffs_group20, &
      & reduce_numetens => reduce_numetens_group20
   use p5_usbar_epnebbbarg_samuraih2, only: samurai_reduce => reduce_group20
   use options, only: samurai_out => iout
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group20), target :: coeffs
   type(form_factor) :: gres
   complex(ki_sam), dimension(-2:0) :: tot
   complex(ki_sam) :: totr
   logical :: samurai_ok

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='20'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(0) ! use Samurai only
      call samurai_reduce(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   ! Modes which require Golem95 and Samurai
   case(2) ! Try Samurai first, use Golem95 is samurai fails
      call samurai_reduce(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         call reconstruct_golem95(coeffs)
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case(3) ! Tensorial Reconstruction + Samurai on numetens
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
      nullify(global_coeffs)
   case(4) ! Tensorial Reconstruction + Samurai on numetens
           ! + Golem95 on failure
      call reconstruct_golem95(coeffs)
      global_coeffs => coeffs
      call reduce_numetens(real(scale2, ki_sam), tot, totr, samurai_ok)
      if(samurai_ok) then
         samplitude(:) = 2.0_ki * real(tot(:), ki)
         ok = .true.
      else
         mu2_scale_par = real(scale2, ki_gol)
         gres = contract_golem95(coeffs)
         samplitude(-2) = 2.0_ki * real(gres%A, ki)
         samplitude(-1) = 2.0_ki * real(gres%B, ki)
         samplitude( 0) = 2.0_ki * real(gres%C, ki)
         ok = .true.
      end if
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated with support for Samurai."
      print*, "* This code was generated with support for Golem95."
      print*, "* This code was generated without support for PJFry."
   end select

   if(debug_nlo_diagrams) then
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-finite' value='", samplitude(0), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-single' value='", samplitude(-1), "'/>"
      write(logfile,'(A33,E24.16,A3)') &
         & "<result kind='nlo-double' value='", samplitude(-2), "'/>"
      if(ok) then
         write(logfile,'(A30)') "<flag name='ok' status='yes'/>"
      else
         write(logfile,'(A29)') "<flag name='ok' status='no'/>"
      end if
      write(logfile,*) "</diagram-group>"
   end if
end subroutine evaluate_group20
!---#] subroutine evaluate_group20:
end module p5_usbar_epnebbbarg_amplitudeh2
