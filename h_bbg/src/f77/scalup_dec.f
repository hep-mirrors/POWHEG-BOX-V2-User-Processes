!-----------------------------------------------------------------------
!     This subroutine recalculates scalup_dec of the hbbg_MiNLO event
!     according to POWHEG definigion, i.e. Eq.(A.1) of 1412.1828
!-----------------------------------------------------------------------
      subroutine scalup_hbbg_minlo(out)
      implicit none

      include 'LesHouches.h'
      real*8 out
      integer ihep,idec,ndec,dectab(4)
      integer ihiggs,itrack1,itrack2,irad
      real*8 phiggs(1:4),p1(1:4),p2(1:4),hardness
      real*8 phepDot
      external phepDot
      real*8 pmom(1:4,1:4),pmomOut(1:4,1:4),Ecm,masses(4)
      integer icounter,imom1,imom2

      logical reshuffle_to_massless
      parameter ( reshuffle_to_massless = .false. )


!     !>> scan event to find higgs
      ihiggs= -1
      do ihep=1,nup
        if( idup(ihep).eq.25 )then
          ihiggs= ihep
          phiggs(:)= pup(1:4,ihiggs)
          exit
        endif
      enddo
      if( ihiggs.lt.0 )then
        write(*,*)'ERROR: [scalup_hbbg_minlo]'
        write(*,*)'>> Higgs not found!'
        write(*,*)''
        call printleshouches
        stop
      endif

!     !>> scan for Higgs decay products
      ndec=0
      dectab=-1
      do ihep=1,nup
        if( mothup(1,ihep).eq.ihiggs )then
          ndec= ndec + 1
          if( ndec.gt.4 )then
            write(*,*)'ERROR: [scalup_hbbg_minlo]'
            write(*,*)'>> Too many decay products!'
            write(*,*)''
            call printleshouches
            stop
          endif
          dectab(ndec)= ihep
        endif
      enddo
      if( .not.(ndec.eq.3 .or. ndec.eq.4) )then
        write(*,*)'ERROR: [scalup_hbbg_minlo]'
        write(*,*)'>> Number of Higgs decay products incorrect!'
        write(*,*)' ndec = ',ndec
        write(*,*)''
        call printleshouches
        stop
      endif
      if( dectab(ndec)-dectab(1).ne.(ndec-1) )then
        write(*,*)'ERROR: [scalup_hbbg_minlo]'
        write(*,*)'>> Higgs decay products not listed together!'
        write(*,*)'   This should not happen...'
        write(*,*)'   dectab=',dectab(1:ndec)
        write(*,*)''
        call printleshouches
        stop
      endif         
      
!     !>> calculate hardness
      itrack1= -1               !reset
      itrack2= -1               !reset
      if( ndec.eq.3 )then
        out= -1d0               !QCDLAMBDA, no further radiation allowed
        out= sqrt(0.800d0)      !debugging
        return
      elseif( ndec.eq.4 )then
!       ! read all momenta for reshuffling
        call boost2reson4(phiggs,1,pup(1:4,dectab(1)),pmom(1:4,1))
        call boost2reson4(phiggs,1,pup(1:4,dectab(2)),pmom(1:4,2))
        call boost2reson4(phiggs,1,pup(1:4,dectab(3)),pmom(1:4,3))
        call boost2reson4(phiggs,1,pup(1:4,dectab(4)),pmom(1:4,4))

        ! reshuffle momenta to massless kinem
        if( reshuffle_to_massless )then
          Ecm= pmom(4,1)+pmom(4,2)+pmom(4,3)+pmom(4,4)
          masses=0d0
          call reshuffle_momenta(Ecm,ndec,masses,pmom,pmomOut)
        else
          do idec=1,ndec
            pmomOut(1:4,idec)= pmom(1:4,idec)
          enddo
        endif
        
        !>>   the last parton from Hbbg@MiNLO event is the MiNLO radtiation
        iRAD= dectab(4)

        !>>   find partons to calculate scalup_dec
        if( idup(iRAD).ne.21 )then
          !     dealing with (g)-->(qq~) splitting
          itrack1= 3              !in pmom numbering
          itrack2= 4              !in pmom numbering
        else
          !     dealing with: (g)-->(gg) or (q)-->(qg) or (q~)-->(q~g) splitting
          !>>>  find colour connection with the last parton
          icounter=0
          do ihep= dectab(1),dectab(4)
            icounter= icounter+1
            if( icounter.gt.4 )then
              print*,'ERROR: this should not happen'
              print*,'check numbering of pmomOut'
              stop
            endif
            if(icolup(1,ihep).eq.711 .or. icolup(2,ihep).eq.711)then
              itrack1= icounter
              itrack2= 4
              exit
            endif
c$$$!-----------------------------------------------------------------------
c$$$  ! THIS IS FOR CHECKING h_bbg decay events [ colour is set to 511 ]
c$$$            if(icolup(1,ihep).eq.511 .or. icolup(2,ihep).eq.511)then
c$$$              itrack1= icounter
c$$$              itrack2= 4
c$$$              exit
c$$$            endif
c$$$!-----------------------------------------------------------------------
          enddo
        endif
        if( itrack1.lt.0 )then
          write(*,*)'ERROR: problem with colour connections in decay'
          call printleshouches
          stop
        endif
        
        !>>   hardness = 2*p.q * Eq / Ep in the Higgs rest frame   ~~~ compare with Eq.(A.1) of [1412.1828]
        p1(1:4)= pmomOut(1:4,itrack1)
        p2(1:4)= pmomOut(1:4,itrack2)
        hardness= 2d0*phepDot( p1,p2 ) * p2(4)/p1(4)
      endif

      out= sqrt( hardness )

      return
      end
