c veto photons harder than scalup in decaying resonance.
c Works for both W+- and Z.
      subroutine examine_res_photons(ptrel)
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
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

      il(1) = 0
      il(2) = 0
c cycle over daughters of resonance to assign leptons
      do ihep=jdahep(1,iv),jdahep(2,iv)
c check if the running particle is a charged lepton or neutrino
         if(abs(idhep(ihep)).ge.11.and.abs(idhep(ihep)).le.16) then
            if(il(1).eq.0) then
               il(1)= ihep
            elseif(il(2).eq.0) then
               il(2)=ihep
            else
               write(*,*) ' examine_res_photons:'
               write(*,*) ' more than 2 leptons in direct'
               write(*,*) 'product of V decay, exiting ...'
               call exit(-1)
            endif
         elseif(idhep(ihep).ne.22) then
            write(*,*) ' examine_photons: error?'
            write(*,*) 'third son is not a photon!'
         elseif(.not.lh_gamma) then
            write(*,*) 'third son is a gamma, bu no lh gammas!'
         endif
      enddo
c Now il(1) and il(2) are the lepton as they come from the resonance

c Check that these two are opposite leptons
      if(idup(3).eq.23) then
         if(idhep(il(1)).ne.-idhep(il(2))) then
c     this happens rarely when using the old virtuality ordered shower.
c     Should not happen with pt ordered one.
            write(*,*)
     1           ' examine_pqhotons: error: first and second son of Z'
            write(*,*) 'are not opposite leptons !'
            ptrel= 1.d6
            return
         endif
      elseif(abs(idup(3)).eq.24) then
         if( (idhep(il(1))+idhep(il(2)))*idup(3).ne.24) then
c     this happens rarely when using the old virtuality ordered shower.
c     Should not happen with pt ordered one.
            write(*,*)
     1           ' examine_pqhotons: error: first and second son of W'
            write(*,*) 'do not match ! ',idup(3)
            write(*,*) ' -> ',idhep(il(1)),idhep(il(2))
c            call pylist(5)
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

      end
         

      subroutine scaleupveto(nvec,idvector,ptrel)
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      integer nvec,idvector(nvec)
      real * 8 ptrel
      integer j,jgam
      real *8 p_gamma(0:3),p_lepton(0:3)
      real * 8 beta,vec(3),p_lph(0:3,1:2)
      data vec/0d0,0d0,1d0/
      real * 8 get_ptrelFSR
c if ptrel = -1 is returned, it means that no photons were there
      ptrel = -1
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
         ptrel = max(ptrel,get_ptrelFSR(p_gamma,p_lepton))
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
*
**
*
c old routine for veto (photons from the resonance violating scalup)
c called only if virtuality shower routines (PYEVNT) are used
      subroutine scaleupveto_old(ptrel)
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      logical ini
      data ini/.true./
      save ini
      integer vdecaytemp
      save vdecaytemp
      integer maxnumgamma
      parameter (maxnumgamma=300)
      integer gammavec(maxnumgamma)
      integer igam,gam,ngamma,jgam,jlep
      integer ihep,k,mu
      real *8 pt_gamma,pt_gamma_max,p_gamma(0:3),p_lepton(0:3)
      real *8 ptrel
      real *8 vec(3)
      data vec/0d0,0d0,1d0/
      save vec
      real*8 p_lph(0:3,1:2),beta,get_ptrelFSR
c     veto QED shower from leptons above the SCALUP value

      ptrel = -1

      if (ini) then
c     id of the charged decay product of the W
         vdecaytemp=lprup(1)-10000
         ini=.false.
      endif

c     initialization

      jlep=-1
      ngamma=0
      do k=1,maxnumgamma
         gammavec(k) = 0
      enddo

c     find photons
      do ihep=1,nhep
         if(idhep(ihep).eq.22) then 
            ngamma=ngamma+1
            gammavec(ngamma)=ihep
         endif
      enddo

c     apply veto for QED shower from leptons above SCALUP
      do gam=1,ngamma
         igam=gammavec(gam)
         if(abs(idhep(jmohep(1,igam))).eq.abs(vdecaytemp)) then
            p_gamma(0)=phep(4,igam)
            do mu=1,3
               p_gamma(mu)=phep(mu,igam)
            enddo
c     find mother lepton
            do ihep=1,nhep
               if(isthep(ihep).eq.1.and.idhep(ihep).eq.vdecaytemp) then
                  if(jmohep(1,ihep).eq.jmohep(1,igam)) then
                     jlep=ihep
                  endif
               endif
            enddo
            if(jlep.lt.0) then
               write(*,*) ' Scaleupveto_old error:'
               write(*,*) ' No mother lepton found! '
               return
            endif
            p_lepton(0)=phep(4,jlep)
            do mu=1,3
               p_lepton(mu)=phep(mu,jlep)
            enddo
c     the veto is applied with respect to the final lepton (after the shower)
c     uncomment the following to apply the veto to the recombined lepton
c            if(ngamma.gt.1) then
c               do k=gam+1,ngamma
c                  if(idhep(jmohep(1,gammavec(k))).eq.vdecaytemp) then
c                     p_lepton(0)=p_lepton(0)+phep(4,gammavec(k))
c                     do mu=1,3
c                        p_lepton(mu)=p_lepton(mu)
c     +                       +phep(mu,gammavec(k))
c                     enddo
c                  endif
c               enddo
c            endif
c     veto in the CoM frame
            beta=(pup(4,1)-pup(4,2))/(pup(4,1)+pup(4,2))
            p_lph(:,1)=p_lepton(:)
            p_lph(:,2)=p_gamma(:)
            call mboost(2,vec,-beta,p_lph(0,1),p_lph(0,1))
            p_lepton(:)=p_lph(:,1)
            p_gamma(:)=p_lph(:,2)
c     FSR ptrel
            ptrel = get_ptrelFSR(p_gamma,p_lepton)
            if((ptrel-scalup)/scalup.gt.0d0) then
c     write(*,*) 'vetoed event'
               return 
            endif
         endif
      enddo

      end
*
**
*
c     relative pt of 1 with respect to 2 for FSR
      double precision function get_ptrelFSR(p1,p2)
      implicit none
      real*8 p1(0:3),p2(0:3),ptrel,costh

      costh = (p1(1)*p2(1) + p1(2)*p2(2) + p1(3)*p2(3))
     +        /sqrt(p1(1)**2+p1(2)**2+p1(3)**2)
     +        /sqrt(p2(1)**2+p2(2)**2+p2(3)**2)

      ptrel = 2d0 * (p1(1)**2+p1(2)**2+p1(3)**2) * ( 1d0 - costh )
      ptrel=sqrt(ptrel)

      get_ptrelFSR = ptrel

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
