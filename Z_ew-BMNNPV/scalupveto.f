c veto photons harder than scalup in decaying resonance.
c Works for both W+- and Z.
      subroutine examine_res_photons(lepveto,ptrel)
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      logical lepveto
c ptrel is for leptons, ptrelq for quarks
      real * 8 ptrel,ptrelq
      real * 8 ptrel1,ptrel2
      integer iup,ihep,iv,il(2),j,k
      integer maxpart
      parameter (maxpart=100)
      integer idvector(maxpart,2),nvec(2)
      integer qidvector(2)
      logical lh_gamma,ok
      integer nphq
      integer idphfromq(maxpart)

c First find out if there is a photon in the LH interfacs
      lh_gamma = .false.
      do iup=1,nup
         if(idup(iup).eq.22) then
            lh_gamma = .true.
            exit
         endif
      enddo
      do ihep=1,nhep
         if(idhep(ihep).eq.idup(3)) then
            iv=ihep
         endif
      enddo
c    look for the sons of the z
      if(jdahep(2,iv)-jdahep(1,iv).ne.1) then
c         write(*,*) " more than 2 Zed's sons"
         if(idhep(jdahep(2,iv)).ne.22) then
            write(*,*) ' examine_photons: error? third son is not a photon!'
         endif
         if(.not.lh_gamma) then
            write(*,*) ' examine_photons: error? third son, but no lh photon!'
         endif
      endif
c      il(1) = jdahep(1,iv)
c      il(2) = il(1)+1
      il(1) = 0
      il(2) = 0
c cycle over daughters of resonance to assign lepton 1
      do ihep=jdahep(1,iv),jdahep(2,iv)
c check if the running particle is a charged lepton or neutrino
         if(abs(idhep(ihep)).ge.11.and.abs(idhep(ihep)).le.16) then
            if(il(1).eq.0) then
               il(1)= ihep
            elseif(il(2).eq.0) then
               il(2)=ihep
            else
               write(*,*) ' examine_res_photons:'
               write(*,*) ' more than 2 leptons in direct product of V decay, exiting ...'
               call exit(-1)
            endif
         endif
      enddo

c Check that these two are opposite leptons
      if(idup(3).eq.23) then
         if(idhep(il(1)).ne.-idhep(il(2))) then
c     this happens rarely when using the old virtuality ordered shower.
c     Should not happen with pt ordered one.
            write(*,*)
     1           ' examine_pqhotons: error: first and second son of Z'
            write(*,*) 'are not opposite leptons !'
            lepveto= .true.     !avoid this event
            ptrel= 1.d6
            return
         endif
      elseif(abs(idup(3)).eq.24) then
         if( (idhep(il(1))+idhep(il(2)))*idup(3).ne.24) then
c     this happens rarely when using the old virtuality ordered shower.
c     Should not happen with pt ordered one.
            write(*,*)
     1           ' examine_pqhotons: error: first and second son of W'
            write(*,*) 'do not match ! ',idup(3),' -> ',idhep(il(1)),idhep(il(2))
            lepveto= .true.     !avoid this event
            ptrel= 1.d6
            return
         endif
      else
c     this happens rarely when using the old virtuality ordered shower.
c     Should not happen with pt ordered one.
         write(*,*)
     1        ' examine_photons: neither W nor Z! exiting ...'
         call exit(-1)
      endif
      nvec = 0
      do k=1,2
         call sons_of_resonance(il(k),maxpart,idvector(:,k),nvec(k))
      enddo
c check for consistency
      do k=1,2
         ok=.true.
         if(idhep(idvector(1,k)).ne.idhep(il(k))) then
            write(*,*) ' examine_photons: error? first in list'
            write(*,*) ' is not the lepton   !'
            ok = .false.
         endif
         do j=2,nvec(k)
            if(idhep(idvector(j,k)).ne.22) then
               write(*,*) ' examine_photons: error?  not a photon ...!'
               ok = .false.
            endif
         enddo
         if(.not.ok) then
            write(*,*) ' examine_photons: some error ...!'
            write(*,*) (idhep(idvector(j,k)),j=1,nvec(k))
         endif
      enddo

      call scaleupveto(nvec(1),idvector(:,1),ptrel1)
      call scaleupveto(nvec(2),idvector(:,2),ptrel2)

      ptrel = max(ptrel1,ptrel2)

      if((ptrel-scalup)/scalup.gt.0) then
         lepveto=.true.
c         write(*,*) 'vetoed event',(ptrel-scalup)/scalup
         return
      else
         lepveto = .false.
      endif
c The call below can be activated to check that both
c PYTHIA6 and PYTHIA8 do honor the scalup requirements
c on shower originated photons. In order to activate the
c check, uncomment the call below.
c      call examine_other_photons(nvec,idvector,lepveto,ptrelq)

      end
         

      subroutine scaleupveto(nvec,idvector,ptrel)
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      integer maxpart
      integer nvec,idvector(nvec)
      real * 8 ptrel,tmpptrel
      integer k,j,jgam
      real *8 p_gamma(0:3),p_lepton(0:3)
      real * 8 beta,vec(3),p_lph(0:3,1:2)
      data vec/0d0,0d0,1d0/
      ptrel = 0
c     apply veto for QED shower from lepton above SCALUP
      do j=2,nvec
         jgam=idvector(j)
         p_gamma(0)=phep(4,jgam)
         p_gamma(1:3)=phep(1:3,jgam)
         p_lepton(0)=phep(4,idvector(1))
         p_lepton(1:3)=phep(1:3,idvector(1))
c     veto in the CM frame
         beta=(pup(4,1)-pup(4,2))/(pup(4,1)+pup(4,2))
         p_lph(:,1)=p_lepton(:)
         p_lph(:,2)=p_gamma(:)
         call mboost(2,vec,-beta,p_lph(0,1),p_lph(0,1))
         p_lepton(:)=p_lph(:,1)
         p_gamma(:)=p_lph(:,2)
c     FSR ptrel
         call get_ptrelFSR(p_gamma,p_lepton,tmpptrel)
         ptrel = max(tmpptrel,ptrel)
      enddo
      end

      recursive subroutine sons_of_resonance(idpart,maxpart,idvector,n)
c This subroutine is invoked with idpart set to a charged lepton
c index in the hepevt common block, and n set to 0. It returns in
c n the number, and in idvector the list of particles that are descendent of
c idpart, i.e. one final state lepton (with status=1)
c plus a number of photons. Photons are either status=1 photons,
c or intermediate photons that undergo subsequent decay into other
c charged particles.
      implicit none
      logical result
      include 'hepevt.h'
      integer maxpart
      integer idpart,n,idvector(maxpart)
      integer j
      if(idhep(idpart).eq.22) then
c If a photon splits into charged particles, we stop at the photon
         if(isthep(idpart).ne.1) then
            if(jdahep(1,idpart).ne.jdahep(2,idpart)) then
               n = n+1
               idvector(n)=idpart
               return
            endif
         endif
      endif
      if(isthep(idpart).ne.1) then
         do j=jdahep(1,idpart),jdahep(2,idpart)
            call sons_of_resonance(j,maxpart,idvector,n)
         enddo
      else
         if(n.eq.maxpart) then
            write(*,*) ' cannot add more particles! increase maxpart'
         else
            n=n+1
            idvector(n)=idpart
         endif
      endif
      end


c     relative pt of 1 with respect to 2 for FSR
      subroutine get_ptrelFSR(p1,p2,ptrel)
      implicit none
      real*8 p1(0:3),p2(0:3),ptrel,costh

      costh = (p1(1)*p2(1) + p1(2)*p2(2) + p1(3)*p2(3))
     +        /sqrt(p1(1)**2+p1(2)**2+p1(3)**2)
     +        /sqrt(p2(1)**2+p2(2)**2+p2(3)**2)

      ptrel = 2d0 * (p1(1)**2+p1(2)**2+p1(3)**2) * ( 1d0 - costh )
      ptrel=sqrt(ptrel)

      end

      subroutine printhepblock
      implicit none
      include 'hepevt.h'
      integer j
      write(*,'(a)') '    j   id      ist   mo1  mo2    da1  da2   p'
      do j=1,nhep
         write(*,100) j,idhep(j),isthep(j),jmohep(1,j),jmohep(2,j),
     1             jdahep(1,j),jdahep(2,j), phep(:,j)
      enddo
 100  format(i4,3x,i6,2x,i3,2x,i4,1x,i4,3x,i4,1x,i4,3x(5(d10.4,2x)))
      end
