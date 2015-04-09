      subroutine examine_other_photons(ptrelq)
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
c ptrel is for leptons, ptrelq for quarks
      real * 8 ptrelq
      integer ihep,j,k,tmp,tmpph
      integer maxpart
      parameter (maxpart=100)
      integer qidvector(2)
      integer nphq
      integer idph(maxpart)

c examine photons emitted by quarks
c
c first look for them and count them
c

c This will stay -1 if no vetoable photons are found
      ptrelq = -1

      nphq = 0
      do ihep=1,nhep
         if(idhep(ihep).eq.22.and.isthep(ihep).eq.1) then
            nphq = nphq + 1
            idph(nphq)= ihep !array containing pointers to all photons
         endif
      enddo
cc  cycle to go upward till the parent is an LH particle or heavy unstable resonance
      do j=1,nphq
         tmp= idph(j)
         tmpph= tmp
c a photon can either arise from decay of hadronic resonances, from shower quarks,
c or from the LH hard process
 22      continue
         if(jmohep(2,tmp).ne.0) then
            write(*,*) ' *************** Warning: photon with two mothers! *************** '
            write(*,*) ' id of 2nd mothers: ',idhep(jmohep(2,tmp))
         endif
         tmp= jmohep(1,tmp)
         
         if(abs(idhep(tmp)).gt.22.or.(abs(idhep(tmp)).ge.11.and.abs(idhep(tmp)).le.16)) then
c It is a photon from leptons or from a heavy hadronic resonance decay.
c Not considered here.
            cycle
         elseif(isthep(tmp).eq.3) then
c  3 are Les Houches particles in PYTHIA6 (check the status code for pythia8)
c  if the id is 22 it is a LH photon;
c  if it occurs before the resonance (position 7) it is an ISR quark
c  if it occurs at 8, it is a FSR quark
            if(idhep(tmp).eq.22) then    !the photon comes from a LH photon (no veto)
               cycle
            elseif(abs(idhep(tmp)).lt.7) then  !found a LH quark parent (to be checked for pythia8)
               if(tmp.le.4) then               !it is an ISR photon  (to be checked for pythia8)
                  ptrelq= sqrt(phep(1,tmpph)**2+phep(2,tmpph)**2)
                  if((ptrelq-scalup)/scalup.gt.0) then
                     return
                  else
                     cycle
                  endif
               elseif(tmp.gt.4) then    !it is a FSR photon from a parton (to be checked for pythia8)
                  qidvector(1)= tmp            !position of the parent parton
                  qidvector(2)= tmpph          !position of the photon
                  call scaleupveto(2,qidvector,ptrelq)
                  if((ptrelq-scalup)/scalup.gt.0) then
                     return
                  else
                     cycle
                  endif
               else
                  write(*,*) 'some problem with LH quark mother of the photon: ',tmp
               endif
            elseif(idhep(tmp).eq.21) then
c this occurs in PYTHIA6, not clear why; we veto it as an isr photon
               ptrelq= sqrt(phep(1,tmpph)**2+phep(2,tmpph)**2)
               if((ptrelq-scalup)/scalup.gt.0) then
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
            goto 22
         endif
      enddo
      end
