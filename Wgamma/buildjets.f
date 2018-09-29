      subroutine buildleptonjets(njets,pjet)
c     arrays to reconstruct jets
      implicit none
      integer   maxtrack,maxjets
      parameter (maxtrack=4000,maxjets=600)

      integer   njets
      real * 8  pjet(4,maxjets)

      integer idcorrette(300)
      common/id/idcorrette
      integer NMXHEP,NEVHEP,NHEP,ISTHEP,IDHEP,
     &     JMOHEP,JDAHEP
      double precision phep,vhep
      PARAMETER (NMXHEP=4000)
      COMMON/HEPEVT/NEVHEP,NHEP,ISTHEP(NMXHEP),IDHEP(NMXHEP),
     &   JMOHEP(2,NMXHEP),JDAHEP(2,NMXHEP),PHEP(5,NMXHEP),VHEP(4,NMXHEP)
      save /HEPEVT/

      real * 8  ptrack(4,maxtrack)
      integer   ntracks
      integer   j,k,mu
      real * 8  r,palg,pp,tmp

C - Initialize arrays and counters for output jets
      do j=1,maxtrack
         do mu=1,4
            ptrack(mu,j)=0d0
         enddo
      enddo      
      ntracks=0
      do j=1,maxjets
         do mu=1,4
            pjet(mu,j)=0d0
         enddo
      enddo
C - Extract final state particles to feed to jet finder
      do j=1,nhep
         if (isthep(j).eq.1.and.
     &        (abs(idhep(j)).eq.11.or.idhep(j).eq.22)) then
            if(ntracks.eq.maxtrack) then
               write(*,*) 'analyze: need to increase maxtrack!'
               write(*,*) 'ntracks: ',ntracks
               stop
            endif
            ntracks=ntracks+1
            do mu=1,4
               ptrack(mu,ntracks)=phep(mu,j)
            enddo
            idcorrette(ntracks)=j
         endif
      enddo
      if (ntracks.eq.0) then
         return
      endif

      palg=-1d0
      r=0.7d0
      call fastjetppgenkt(ptrack,ntracks,r,palg,pjet,njets)

      end



      subroutine buildjets(njets,pjet)
c     arrays to reconstruct jets
      implicit none
      integer   maxtrack,maxjets
      parameter (maxtrack=4000,maxjets=600)

      integer   njets
      real * 8  pjet(4,maxjets)

      integer NMXHEP,NEVHEP,NHEP,ISTHEP,IDHEP,
     &     JMOHEP,JDAHEP
      double precision phep,vhep
      PARAMETER (NMXHEP=4000)
      COMMON/HEPEVT/NEVHEP,NHEP,ISTHEP(NMXHEP),IDHEP(NMXHEP),
     &   JMOHEP(2,NMXHEP),JDAHEP(2,NMXHEP),PHEP(5,NMXHEP),VHEP(4,NMXHEP)
      save /HEPEVT/

      real * 8  ptrack(4,maxtrack)
      integer   ntracks
      integer   j,k,mu
      real * 8  r,palg,pp,tmp

      logical ishadron
      external ishadron


C - Initialize arrays and counters for output jets
      do j=1,maxtrack
         do mu=1,4
            ptrack(mu,j)=0d0
         enddo
      enddo      
      ntracks=0
      do j=1,maxjets
         do mu=1,4
            pjet(mu,j)=0d0
         enddo
      enddo
C - Extract final state particles to feed to jet finder
      do j=1,nhep
         if (isthep(j).eq.1.and.ishadron(idhep(j))) then
            if(ntracks.eq.maxtrack) then
               write(*,*) 'analyze: need to increase maxtrack!'
               write(*,*) 'ntracks: ',ntracks
               stop
            endif
            ntracks=ntracks+1
            do mu=1,4
               ptrack(mu,ntracks)=phep(mu,j)
            enddo
         endif
      enddo
      if (ntracks.eq.0) then
         return
      endif

      pjet=0d0
      njets=0

c.....start debug
c$$$      write(*,*)'candidate'
c$$$      do j=1,ntracks
c$$$         write(*,*)ptrack(:,j)
c$$$      enddo
      
      
      palg=-1d0
      r=0.4d0
      call fastjetppgenkt(ptrack,ntracks,r,palg,pjet,njets)


c$$$      write(*,*)'recombined'
c$$$      do j=1,njets
c$$$         write(*,*)pjet(:,j)
c$$$      enddo
      
      end

      function ishadron(fl)
      implicit none
      logical ishadron
      integer fl
      if(abs(fl).gt.24) then
         ishadron=.true.
      else
         ishadron=.false.
      endif
      end
