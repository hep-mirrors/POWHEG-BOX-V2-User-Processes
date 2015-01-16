      subroutine examine_other_photons(nvec,idvector,lepveto,ptrelq)
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      logical lepveto
c ptrel is for leptons, ptrelq for quarks
      real * 8 ptrelq
      integer ihep,j,k,tmp,tmpph
      integer maxpart
      parameter (maxpart=100)
      integer idvector(maxpart,2),nvec(2)
      integer qidvector(2)
      logical lh_gamma,ok
      integer nphq
      integer idphfromq(maxpart)
      lh_gamma = .false.
      if(nup.eq.6) then
         if(idup(6).eq.22) then
            lh_gamma = .true.
         endif
      endif
c examine photons emitted by quarks
c
c first look for them and count them
c
      nphq = 0
      do ihep=1,nhep
         if(idhep(ihep).eq.22.and.isthep(ihep).eq.1) then
            ok = .true.
            do k=1,2
               do j=1,nvec(k)
                  if(ihep.eq.idvector(j,k)) then
                     ok = .false.
                     exit
                  endif
               enddo
               if(.not.ok) exit
            enddo
            if(.not.ok) cycle
            nphq = nphq + 1
            idphfromq(nphq)= ihep !array containing pointers to photons from quarks (or LH)
         endif
      enddo
cc  cycle to go upward till the parent LH particle or heavy unstable resonance
      if(nphq.gt.0) then
         write(*,*) ' **************** History of extra photons for this event *************'
      endif
      do j=1,nphq
         write(*,*) ' extra photon ',j
         tmp= idphfromq(j)
         write(*,*) ' photon ihep: ',tmp
         tmpph= tmp
c a photon can either arise from decay of hadronic resonances, from shower quarks,
c or from the LH hard process
 22      continue
         write(*,*) ' mothers: ',jmohep(:,tmp)
         if(jmohep(2,tmp).ne.jmohep(1,tmp).and.jmohep(2,tmp).ne.1.and.jmohep(2,tmp).ne.0) then
            if(jmohep(1,tmp).eq.4.and.jmohep(2,tmp).eq.5.and.lh_gamma) then
               write(*,*) ' LH gamma, do not veto'
               call printhepblock
               cycle
            else
               write(*,*) ' *************** Warning: photon with two mothers! *************** '
               write(*,*) ' id of 2nd mothers: ',idhep(jmohep(2,tmp))
               call printhepblock
            endif
         endif
         write(*,*) ' id of mothers: ',idhep(jmohep(1,tmp))
         tmp= jmohep(1,tmp)
         
         if(abs(idhep(tmp)).gt.22) then !it is a photon from a heavy hadronic resonance decay (no veto)
            write(*,*) ' Mother is a photon from res. decay: ',idhep(tmp)
            cycle
         elseif(abs(idhep(tmp)).le.5) then
c  These are quarks;
            write(*,*) ' mother is a quark ',tmp,' id=',idhep(tmp)
            if(jmohep(1,tmp).lt.tmp) then
               write(*,*) ' it is a FS quark '
               call printhepblock
               qidvector(1)= tmp !position of the parent parton
               qidvector(2)= tmpph !position of the photon
               call scaleupveto(2,qidvector,ptrelq)
               if((ptrelq-scalup)/scalup.gt.0) then
                  lepveto=.true.
                  goto 999
               else
                  cycle
               endif
            else
               write(*,*) ' it is a IS quark '
               call printhepblock
               ptrelq= sqrt(phep(1,tmpph)**2+phep(2,tmpph)**2)
               if((ptrelq-scalup)/scalup.gt.0) then
                  lepveto=.true.
                  goto 999
               else
                  cycle
               endif
            endif
         else
            write(*,*) ' ***** go to granmother ... *******'
            goto 22
         endif
c isthep not equal to 3
      enddo
      return
 999  write(*,*) ' **** Vetoing event ****'
      write(*,*) ' scalup, ptrel, ptrelq ',scalup, ptrelq
      end
