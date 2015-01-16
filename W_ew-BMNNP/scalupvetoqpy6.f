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
      logical ok
      integer nphq
      integer idphfromq(maxpart)

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
         if(jmohep(2,tmp).ne.0) then
            write(*,*) ' *************** Warning: photon with two mothers! *************** '
            write(*,*) ' id of 2nd mothers: ',idhep(jmohep(2,tmp))
         endif
         write(*,*) ' id of mothers: ',idhep(jmohep(1,tmp))
         tmp= jmohep(1,tmp)
         
         if(abs(idhep(tmp)).gt.22) then !it is a photon from a heavy hadronic resonance decay (no veto)
            write(*,*) ' Mother is a photon from res. decay: ',idhep(tmp)
            lepveto= .false.
            cycle
c            write(*,*) ' '
c            write(*,*) 'found a photon from a resonance (no veto)'
c            write(*,*) 'number of extra photons: ',nphq
c            if(nphq.gt.0) then
c               write(*,*) 'extra photons',(idphfromq(k),k=1,nphq)
c               call printhepblock
c            endif

         elseif(isthep(tmp).eq.3) then
c  3 are Les Houches particles in PYTHIA6 (check the status code for pythia8)
c  if the id is 22 it is a LH photon;
c  if it occurs before the resonance (position 7) it is an ISR quark
c  if it occurs at 8, it is a FSR quark
            write(*,*) ' Mother is a LH parton: ',tmp,' id= ', idhep(tmp)
            if(idhep(tmp).eq.22) then    !the photon comes from a LH photon (no veto)
               lepveto= .false.
               cycle
               write(*,*) ' Mother is a LH photon'
c               write(*,*) ' '
c               write(*,*) 'found a LH photon'
c               write(*,*) 'number of extra photons: ',nphq
c               if(nphq.gt.0) then
c                  write(*,*) 'extra photons',(idphfromq(k),k=1,nphq)
c                  call printhepblock
c               endif

            elseif(abs(idhep(tmp)).lt.7) then  !found a LH quark parent (to be checked for pythia8)
               if(tmp.lt.7) then    !it is a ISR photon  (to be checked for pythia8)
                  write(*,*) ' mother is an is quark ',tmp,' id=',idhep(tmp)
                  ptrelq= sqrt(phep(1,tmpph)**2+phep(2,tmpph)**2)
                  if((ptrelq-scalup)/scalup.gt.0) then
                     lepveto=.true.
c                write(*,*) 'vetoed event',(ptrel-scalup)/scalup

c                     write(*,*) ' '
c                     write(*,*) 'found an ISR photon to be vetoed'
c                     write(*,*) 'number of extra photons: ',nphq
c                     if(nphq.gt.0) then
c                        write(*,*) 'extra photons',(idphfromq(k),k=1,nphq)
c                        write(*,*) 'ptrelq= ',ptrelq,'  scalup= ',scalup
c                        call printhepblock
c                     endif
                     goto 999
                     return

                  else
                     lepveto = .false.
                     cycle
c                     write(*,*) ' '
c                     write(*,*) 'found an ISR photon not to be vetoed'
c                     write(*,*) 'number of extra photons: ',nphq
c                     if(nphq.gt.0) then
c                        write(*,*) 'extra photons',(idphfromq(k),k=1,nphq)
c                        write(*,*) 'ptrelq= ',ptrelq,'  scalup= ',scalup
c                        call printhepblock
c                     endif

                  endif
               elseif(tmp.eq.8) then    !it is a FSR photon from a parton (to be checked for pythia8)
                  write(*,*) ' mother is a FRS quark ',tmp, 'id=',idhep(tmp)
                  qidvector(1)= tmp            !position of the parent parton
                  qidvector(2)= tmpph          !position of the photon
                  call scaleupveto(2,qidvector,ptrelq)
                  if((ptrelq-scalup)/scalup.gt.0) then
                     lepveto=.true.
c                write(*,*) 'vetoed event',(ptrel-scalup)/scalup

c                     write(*,*) ' '
c                     write(*,*) 'found an FSR photon to be vetoed'
c                     write(*,*) 'number of extra photons: ',nphq
c                     if(nphq.gt.0) then
c                        write(*,*) 'extra photons',(idphfromq(k),k=1,nphq)
c                        write(*,*) 'ptrelq= ',ptrelq,'  scalup= ',scalup
c                        call printhepblock
c                     endif
                     goto 999

                     return
                  else
                     lepveto = .false.
                     cycle
c                     write(*,*) ' '
c                     write(*,*) 'found an FSR photon not to be vetoed'
c                     write(*,*) 'number of extra photons: ',nphq
c                     if(nphq.gt.0) then
c                        write(*,*) 'extra photons',(idphfromq(k),k=1,nphq)
c                        write(*,*) 'ptrelq= ',ptrelq,'  scalup= ',scalup
c                        call printhepblock
c                     endif
                     
                  endif
               else
                  write(*,*) 'some problem with LH quark mother of the photon: ',tmp
               endif
            elseif(idhep(tmp).eq.21) then
c this occurs in PYTHIA6, not clear why; we veto it as an isr photon
               ptrelq= sqrt(phep(1,tmpph)**2+phep(2,tmpph)**2)
               if((ptrelq-scalup)/scalup.gt.0) then
                  lepveto=.true.
                  goto 999

                  return
               else
                  cycle
               endif
            else
c     idhep of mother neither equal to 22, nor 21 nor less than 7
               write(*,*) 'isthep=3, but id=',idhep(tmp)
               write(*,*) '****** should not be here! ******'
               call printhepblock
            endif
         else
c isthep not equal to 3
            write(*,*) ' ***** go to granmother ... *******'
            goto 22
         endif
      enddo
      return
 999  write(*,*) ' **** Vetoing event ****'
      write(*,*) ' scalup, ptrel, ptrelq ',scalup, ptrelq
      return
      end
