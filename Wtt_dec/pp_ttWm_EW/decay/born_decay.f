      SUBROUTINE born_decay(p,flav,wgt)
      implicit none
      integer, parameter :: nexternal = 15
      real(kind(1d0)), intent(in) :: p(1:5,nexternal)
      integer, intent(in) :: flav(2) 
      real(kind(1d0)), intent(out) :: wgt
      real(kind(1d0)) :: pp(0:3,nexternal), q(0:3,10), qtot(0:3)
      integer :: ii, fl1, fl2, FlavourMap

      call momstdform(p,nexternal,pp)

      wgt = 0d0

      ! The MG5 matrix elements are for the Process: 
      !   u~ d > t t~ e- ve~, (t > ta+ vt b), (t~ > mu- vm~ b~)
      !   d u~ > t t~ e- ve~, (t > ta+ vt b), (t~ > mu- vm~ b~)
      ! with 
      ! p3 = ta+, p4 = vt, p5 = b, p6 = mu-, p7 = vm~, p8 = b~
      ! p9 = e-, p10 = ve~
      
      ! Initial state momenta
      q(0:3, 1) = pp(0:3,1)
      q(0:3, 2) = pp(0:3,2)

      ! Final state momenta
      q(0:3, 3) = pp(0:3,10) ! ta+
      q(0:3, 4) = pp(0:3,11) ! vt
      q(0:3, 5) = pp(0:3, 8) ! b
      q(0:3, 6) = pp(0:3,14) ! mu-
      q(0:3, 7) = pp(0:3,15) ! vm~
      q(0:3, 8) = pp(0:3,12) ! b~
      q(0:3, 9) = pp(0:3, 6) ! e-
      q(0:3,10) = pp(0:3, 7) ! ve~

      ! Map initial states flavours to down or up type 
      fl1 = FlavourMap(flav(1))
      fl2 = FlavourMap(flav(2))

      ! Initial states
      if( fl1 == -2 .AND. fl2 == 1) then 
        call smatrix1(q,wgt)
        return
      elseif( fl1 == 1 .AND. fl2 == -2 ) then 
        call smatrix2(q,wgt)
        return
      else
        print*, "Unknown born flavour structure!"
        print*, fl1, fl2
        stop
      endif

      END SUBROUTINE
