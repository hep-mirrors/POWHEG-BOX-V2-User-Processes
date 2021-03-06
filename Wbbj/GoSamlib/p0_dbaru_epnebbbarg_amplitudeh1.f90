module    p0_dbaru_epnebbbarg_amplitudeh1
   use p0_dbaru_epnebbbarg_config, only: ki, &
       & reduction_interoperation
   use p0_dbaru_epnebbbarg_color, only: numcs
   use p0_dbaru_epnebbbarg_groups
   use precision_golem, only: ki_gol => ki
   use p0_dbaru_epnebbbarg_golem95h1
   use ninjago_module, only: ki_nin
   use p0_dbaru_epnebbbarg_ninjah1
   
   implicit none
   private

   public :: finite_renormalisation, samplitude
contains
!---#[ function finite_renormalisation:
   function     finite_renormalisation(scale2) result(amp)
      use p0_dbaru_epnebbbarg_util, only: square
      use p0_dbaru_epnebbbarg_color, only: CF, CA
      use p0_dbaru_epnebbbarg_kinematics, only: &
      & num_light_quarks, num_gluons
      use p0_dbaru_epnebbbarg_diagramsh1l0, only: amplitudel0 => amplitude
      implicit none
      real(ki), intent(in) :: scale2
      real(ki) :: amp
      amp = 0.0_ki
   end function finite_renormalisation
   !---#] function finite_renormalisation:

   !---#[ function samplitude:
   function     samplitude(scale2,ok,rational2,opt_amp0,opt_perm)
      use p0_dbaru_epnebbbarg_config, only: include_eps_terms, include_eps2_terms, &
      & logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_globalsl1, only: amp0,perm, use_perm, epspow
      use p0_dbaru_epnebbbarg_globalsh1, &
     & only: init_lo, rat2
      use p0_dbaru_epnebbbarg_abbrevd322h1, only: init_abbrevd322 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd176h1, only: init_abbrevd176 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd318h1, only: init_abbrevd318 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd28h1, only: init_abbrevd28 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd87h1, only: init_abbrevd87 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd153h1, only: init_abbrevd153 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd180h1, only: init_abbrevd180 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd244h1, only: init_abbrevd244 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd320h1, only: init_abbrevd320 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd13h1, only: init_abbrevd13 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd84h1, only: init_abbrevd84 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd12h1, only: init_abbrevd12 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd85h1, only: init_abbrevd85 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd15h1, only: init_abbrevd15 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd83h1, only: init_abbrevd83 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd14h1, only: init_abbrevd14 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd82h1, only: init_abbrevd82 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd68h1, only: init_abbrevd68 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd80h1, only: init_abbrevd80 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd128h1, only: init_abbrevd128 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd66h1, only: init_abbrevd66 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd127h1, only: init_abbrevd127 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd81h1, only: init_abbrevd81 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd79h1, only: init_abbrevd79 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd109h1, only: init_abbrevd109 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd292h1, only: init_abbrevd292 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd301h1, only: init_abbrevd301 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd298h1, only: init_abbrevd298 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd303h1, only: init_abbrevd303 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd316h1, only: init_abbrevd316 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd16h1, only: init_abbrevd16 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd38h1, only: init_abbrevd38 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd42h1, only: init_abbrevd42 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd58h1, only: init_abbrevd58 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd70h1, only: init_abbrevd70 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd76h1, only: init_abbrevd76 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd90h1, only: init_abbrevd90 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd93h1, only: init_abbrevd93 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd102h1, only: init_abbrevd102 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd108h1, only: init_abbrevd108 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd115h1, only: init_abbrevd115 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd126h1, only: init_abbrevd126 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd139h1, only: init_abbrevd139 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd227h1, only: init_abbrevd227 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd295h1, only: init_abbrevd295 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd310h1, only: init_abbrevd310 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd72h1, only: init_abbrevd72 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd75h1, only: init_abbrevd75 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd98h1, only: init_abbrevd98 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd101h1, only: init_abbrevd101 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd120h1, only: init_abbrevd120 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd121h1, only: init_abbrevd121 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd300h1, only: init_abbrevd300 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd305h1, only: init_abbrevd305 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd315h1, only: init_abbrevd315 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd6h1, only: init_abbrevd6 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd8h1, only: init_abbrevd8 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd10h1, only: init_abbrevd10 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd17h1, only: init_abbrevd17 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd18h1, only: init_abbrevd18 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd21h1, only: init_abbrevd21 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd24h1, only: init_abbrevd24 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd40h1, only: init_abbrevd40 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd43h1, only: init_abbrevd43 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd59h1, only: init_abbrevd59 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd64h1, only: init_abbrevd64 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd65h1, only: init_abbrevd65 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd71h1, only: init_abbrevd71 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd78h1, only: init_abbrevd78 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd86h1, only: init_abbrevd86 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd91h1, only: init_abbrevd91 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd92h1, only: init_abbrevd92 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd103h1, only: init_abbrevd103 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd110h1, only: init_abbrevd110 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd111h1, only: init_abbrevd111 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd124h1, only: init_abbrevd124 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd137h1, only: init_abbrevd137 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd223h1, only: init_abbrevd223 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd296h1, only: init_abbrevd296 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd302h1, only: init_abbrevd302 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd67h1, only: init_abbrevd67 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd77h1, only: init_abbrevd77 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd94h1, only: init_abbrevd94 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd107h1, only: init_abbrevd107 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd117h1, only: init_abbrevd117 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd125h1, only: init_abbrevd125 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd145h1, only: init_abbrevd145 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd294h1, only: init_abbrevd294 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd304h1, only: init_abbrevd304 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd314h1, only: init_abbrevd314 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd317h1, only: init_abbrevd317 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd336h1, only: init_abbrevd336 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd291h1, only: init_abbrevd291 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd309h1, only: init_abbrevd309 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd1h1, only: init_abbrevd1 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd2h1, only: init_abbrevd2 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd3h1, only: init_abbrevd3 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd4h1, only: init_abbrevd4 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd20h1, only: init_abbrevd20 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd23h1, only: init_abbrevd23 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd62h1, only: init_abbrevd62 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd63h1, only: init_abbrevd63 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd73h1, only: init_abbrevd73 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd74h1, only: init_abbrevd74 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd99h1, only: init_abbrevd99 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd100h1, only: init_abbrevd100 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd104h1, only: init_abbrevd104 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd119h1, only: init_abbrevd119 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd122h1, only: init_abbrevd122 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd175h1, only: init_abbrevd175 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd179h1, only: init_abbrevd179 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd219h1, only: init_abbrevd219 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd221h1, only: init_abbrevd221 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd225h1, only: init_abbrevd225 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd229h1, only: init_abbrevd229 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd240h1, only: init_abbrevd240 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd299h1, only: init_abbrevd299 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd307h1, only: init_abbrevd307 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd313h1, only: init_abbrevd313 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd321h1, only: init_abbrevd321 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd333h1, only: init_abbrevd333 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd335h1, only: init_abbrevd335 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd293h1, only: init_abbrevd293 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd306h1, only: init_abbrevd306 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd312h1, only: init_abbrevd312 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd69h1, only: init_abbrevd69 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd96h1, only: init_abbrevd96 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd113h1, only: init_abbrevd113 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd123h1, only: init_abbrevd123 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd297h1, only: init_abbrevd297 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd308h1, only: init_abbrevd308 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd311h1, only: init_abbrevd311 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd319h1, only: init_abbrevd319 => init_abbrev
      use p0_dbaru_epnebbbarg_abbrevd334h1, only: init_abbrevd334 => init_abbrev
      use p0_dbaru_epnebbbarg_diagramsh1l0, only: amplitudel0 => amplitude
      use p0_dbaru_epnebbbarg_groups
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group0
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group0), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='0'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group1
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group1), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='1'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group2
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group2), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='2'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group3
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group3), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='3'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group4
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group4), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='4'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group5
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group5), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='5'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group6
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group6), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='6'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group7
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group7), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='7'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group8
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group8), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='8'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group9
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group9), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='9'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group10
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group10), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='10'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group11
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group11), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='11'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group12
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group12), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='12'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group13
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group13), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='13'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group14
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group14), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='14'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group15
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group15), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='15'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group16
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group16), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='16'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group17
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group17), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='17'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group18
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group18), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='18'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group19
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group19), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='19'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
   use p0_dbaru_epnebbbarg_config, only: &
      & logfile, debug_nlo_diagrams
   use p0_dbaru_epnebbbarg_globalsl1, only: epspow
   use parametre, only: mu2_scale_par
   use form_factor_type, only: form_factor
   use p0_dbaru_epnebbbarg_golem95h1, only: reconstruct_golem95 => reconstruct_group
   use p0_dbaru_epnebbbarg_groups, only: contract_golem95
   use p0_dbaru_epnebbbarg_ninjah1, only: ninja_reduce => ninja_reduce_group20
   implicit none
   real(ki), intent(in) :: scale2
   logical, intent(out) :: ok
   real(ki), dimension(-2:0), intent(out) :: samplitude
   type(tensrec_info_group20), target :: coeffs
   type(form_factor) :: gres
   complex(ki_nin), dimension(-2:0) :: tot
   complex(ki_nin) :: totr

   if(debug_nlo_diagrams) then
      write(logfile,*) "<diagram-group index='20'>"
      write(logfile,*) "<param name='epspow' value='", epspow, "'/>"
   end if
   select case(reduction_interoperation)
   case(1) ! use Golem95 only
      call reconstruct_golem95(coeffs)
      mu2_scale_par = real(scale2, ki_gol)
      gres = contract_golem95(coeffs)
      samplitude(-2) = 2.0_ki * real(gres%A, ki)
      samplitude(-1) = 2.0_ki * real(gres%B, ki)
      samplitude( 0) = 2.0_ki * real(gres%C, ki)
      ok = .true.
   case(2) ! use Ninja only
      call ninja_reduce(real(scale2, ki_nin), tot, totr, ok)
      samplitude(:) = 2.0_ki * real(tot(:), ki)
   case default
      print*, "Your current choice of reduction_interoperation is", &
            & reduction_interoperation
      print*, "This choice is not valid for your current setup."
      print*, "* This code was generated without support for Samurai."
      print*, "* This code was generated with support for Ninja."
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
end module p0_dbaru_epnebbbarg_amplitudeh1
