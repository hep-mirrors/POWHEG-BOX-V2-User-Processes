c     module containing auxiliary funcitons used both in setlocalscles and in pwhg_analysis-phiB 
      module auxiliary 
      implicit none 
      private 
      
      public :: findNearestNeighbours,getyetaptmass,getdydetadphidr
      public :: ClusterEvent,AltClusterEvent 


      contains 



      subroutine ClusterEvent(p,lflav, q2merge,tMom,bMom,WMom,jmom)
      real * 8, intent(inout) ::  p(0:3,*)
      integer , intent(inout) ::  lflav(:)
      REAL * 8, intent(out)   :: bMom(0:3),tMom(0:3),WMom(0:3), jmom(0:3)
      real * 8                 :: q2merge
C     -------------------------------------------------------
      integer jmerge,kmerge, mergedfl,j,i 
      logical pwhg_isfinite
      integer  nUnClusteredPart,nClusteredPart
      integer onem
      parameter (onem=1000000)
      integer tmp
      
      nUnClusteredPart=size(lflav)

C - Count number of entries in lflav that are not equal to onem
      tmp=0
      do j=1,size(lflav)
         if(lflav(j).ne.onem) tmp=tmp+1
      enddo
C - For STJ NLO and event generation runs nUnClusteredPart as set above is
C - always equal to tmp since setlocalscales gives lflav dimension 5 ALWAYS,
C - and each of those five entries is in -6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6; no
C - entries of lflav in NLO running mode are equal to onem, i.e. in nlo mode
C - we already have nUnClusteredPart=tmp, making the next line 100% *redundant*
C - in NLO mode. In particular this means the 4 lines of code above and the
C - one line of code below make NO DIFFERENCE to any long STJ/STbarJ NLO or
C - event generation runs that we did so far -- all the expensive stuff is OK.
C -
C - If we want to run on STJ or STbarJ LHE event files pwhg_analysis-phiB.f
C - fixes the dimension of lflav to nlegreal=6 always. All STJ/STbarJ events,
C - except the rare non-radiative ones, have 6 particles, so in 99.9% of
C - STJ/STbarJ events we've lflav entries in -6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,
C - and so for those events we already have nUnClusteredPart=tmp making the
C - next line of code redundant for them too. On the other hand, if we want
C - to run on the non-radiative STJ/STbarJ events with 5 particles in them 
C - or the ST/STbar LHE events with 99.9% 5 particle and 0.1% 4 particle
C - events in them, then the next line will change nUnClusteredPart from 6
C - to 5 or 4 accordingly.      
      nUnClusteredPart=tmp

C - The following sanity check code *NEVER* triggered in running in NLO mode
C - or event generation mode for STJ/STbarJ since
C - nUnClusteredPart=tmp=size(lflav)=5 always in those modes of operation.
C - It also never triggered for running the LHE analysis over STJ/STbarJ LHE
C - events as the analysis code had been setting nUnClusteredPart=6 all the
C - time -- prior to our including the line nUnClusteredPart=tmp above -- 
C - even though for non-radiative events nUnClusteredPart should have really
C - been set to 5 (as it would be now since including nUnClusteredPart=tmp).
C - Hence we comment out this block now, since it never triggered, and it
C - would trigger erroneously now, since including the nUnClusteredPart=tmp
C - correction, if running on ST or STbar LHE files, if a non-radiative (i.e.
C - 4-particle event) was fed to it.    
c$$$      if (nUnClusteredPart .ne. 5 .and. nUnClusteredPart .ne. 6) then
c$$$         write(*,*) 'nUnclusteredPart = ', nUnclusteredPart
c$$$         stop 'ClusterEvent: nUnclusteredPart not equal 5 or 6' 
c$$$      endif

C     do one or two clusterings according to the number of particles present (5 or 6) 
      do i=1, nunclusteredPart-4
C     - Compute nearest neighbours and attempt to merge two particles.
C     - If merging isn't possible or NaN/Inf is returned q2merge is set to 1d10. 
         call findNearestNeighbours(p,lflav,jmerge,kmerge,mergedfl,
     $        q2merge)
         if(.not.pwhg_isfinite(q2merge))  q2merge=1d10
            if(q2merge.lt.1d10) then
            if(jmerge.gt.2) then
               p(:,jmerge)=p(:,jmerge)+p(:,kmerge)
            else
               p(3,jmerge)=p(3,jmerge)-p(3,kmerge)
               p(0,jmerge)=abs(p(3,jmerge))
            endif
            lflav(kmerge)=onem
            lflav(jmerge)=mergedfl
         endif
      enddo 
      
C - Compute number of particles found after clustering
      nClusteredPart=0
      do j=1,nUnClusteredPart
         if(lflav(j).ne.onem) nClusteredPart=nClusteredPart+1
      enddo

      jmom = 0d0 
C - There must always be a top no matter what: find it and get its mass
      do j=1,nUnClusteredPart
         if(abs(lflav(j)).eq.6) tMom = p(:,j)
         if(abs(lflav(j)).eq.5) bMom = p(:,j)
         if(j .gt. 3 .and. abs(lflav(j)).lt.5 .and. abs(lflav(j)) .gt. 0 .and.
     C        q2merge .lt. 1d10) then
            if (all(jmom == 0d0)) then 
               jMom = p(:,j)
            else
               stop 'Already found light Born jet'                
            endif
         endif
      enddo
      if (all(jmom == 0d0) .and. q2merge .lt. 1d10) then
         stop 'Did not find light Born jet' 
      endif
      
C - first compute -Q^2 (W-boson t-channel)
      if(nClusteredPart.eq.4) then
         WMom = bMom-tMom
      elseif (nClusteredPart.eq.5) then ! must have initial state gluon
         if (lflav(1).ne.0 .and. lflav(2).ne.0) then
            write (*,*) 'ERROR #2 in setlocalscales0:',nClusteredPart
            write (*,*) lflav
            stop
         endif
         if (abs(lflav(1)).ne.5 .and. abs(lflav(2)).ne.5) then
C     - If b is final state, gluon is attached to b-top line
C     find the initial state gluon 
            if (lflav(1).eq.0) then
               WMom=p(:,1)
            else
               WMom=p(:,2)
            endif
            WMom = WMom-tMom-bMom
         else
            WMom = bMom-tMom
         endif
      elseif (nClusteredPart.eq.6) then
         tMom = p(:,3)
         WMom = 0d0 ! W momentum not used and not well defined
         ! routine to be fixed
      else
         write (*,*) 'ERROR #1 in setting cluster scales',nClusteredPart
         write (*,*) lflav
         stop
      endif
      end 


      subroutine AltClusterEvent(p,lflav, q2merge,tMom,bMom,WMom,jmom)
      include 'nlegborn.h'
      real * 8, intent(inout) ::  p(0:3,*)
      integer , intent(inout) ::  lflav(:)
      REAL * 8, intent(out)   :: bMom(0:3),tMom(0:3),WMom(0:3), jmom(0:3)
      real * 8                 :: q2merge
C     -------------------------------------------------------
      integer jmerge,kmerge, mergedfl,j,i 
      logical pwhg_isfinite
      integer  nUnClusteredPart,nClusteredPart
      integer onem
      parameter (onem=1000000)
      integer tmp,ixx,jxx
      real * 8 pSave(0:3,nlegreal)
      integer lflavSave(nlegreal)
      
      integer  bInFS,tInFS,lqInFS1,lqInFS2,gInIS,lqInIS,bInIS
      integer  lqInIS1,lqInIS2,lqInFS
      real * 8 pt2_lqInFS1,pt2_lqInFS2,pt2_lqInFS3
      nUnClusteredPart=size(lflav)

C - Count number of entries in lflav that are not equal to onem
      tmp=0
      do j=1,size(lflav)
         if(lflav(j).ne.onem) tmp=tmp+1
      enddo
C - For STJ NLO and event generation runs nUnClusteredPart as set above is
C - always equal to tmp since setlocalscales gives lflav dimension 5 ALWAYS,
C - and each of those five entries is in -6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6; no
C - entries of lflav in NLO running mode are equal to onem, i.e. in nlo mode
C - we already have nUnClusteredPart=tmp, making the next line 100% *redundant*
C - in NLO mode. In particular this means the 4 lines of code above and the
C - one line of code below make NO DIFFERENCE to any long STJ/STbarJ NLO or
C - event generation runs that we did so far -- all the expensive stuff is OK.
C -
C - If we want to run on STJ or STbarJ LHE event files pwhg_analysis-phiB.f
C - fixes the dimension of lflav to nlegreal=6 always. All STJ/STbarJ events,
C - except the rare non-radiative ones, have 6 particles, so in 99.9% of
C - STJ/STbarJ events we've lflav entries in -6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,
C - and so for those events we already have nUnClusteredPart=tmp making the
C - next line of code redundant for them too. On the other hand, if we want
C - to run on the non-radiative STJ/STbarJ events with 5 particles in them 
C - or the ST/STbar LHE events with 99.9% 5 particle and 0.1% 4 particle
C - events in them, then the next line will change nUnClusteredPart from 6
C - to 5 or 4 accordingly.      
      nUnClusteredPart=tmp

C - The following sanity check code *NEVER* triggered in running in NLO mode
C - or event generation mode for STJ/STbarJ since
C - nUnClusteredPart=tmp=size(lflav)=5 always in those modes of operation.
C - It also never triggered for running the LHE analysis over STJ/STbarJ LHE
C - events as the analysis code had been setting nUnClusteredPart=6 all the
C - time -- prior to our including the line nUnClusteredPart=tmp above -- 
C - even though for non-radiative events nUnClusteredPart should have really
C - been set to 5 (as it would be now since including nUnClusteredPart=tmp).
C - Hence we comment out this block now, since it never triggered, and it
C - would trigger erroneously now, since including the nUnClusteredPart=tmp
C - correction, if running on ST or STbar LHE files, if a non-radiative (i.e.
C - 4-particle event) was fed to it.    
c$$$      if (nUnClusteredPart .ne. 5 .and. nUnClusteredPart .ne. 6) then
c$$$         write(*,*) 'nUnclusteredPart = ', nUnclusteredPart
c$$$         stop 'ClusterEvent: nUnclusteredPart not equal 5 or 6' 
c$$$      endif

C     do one or two clusterings according to the number of particles present (5 or 6) 
      q2Merge=1d10
      do i=1, nunclusteredPart-4
C     - Compute nearest neighbours and attempt to merge two particles.
C     - If merging isn't possible or NaN/Inf is returned q2merge is set to 1d10. 
         call findNearestNeighbours(p,lflav,jmerge,kmerge,mergedfl,
     $        q2merge)
         if(.not.pwhg_isfinite(q2merge))  q2merge=1d10
            if(q2merge.lt.1d10) then
            if(jmerge.gt.2) then
               p(:,jmerge)=p(:,jmerge)+p(:,kmerge)
            else
               p(3,jmerge)=p(3,jmerge)-p(3,kmerge)
               p(0,jmerge)=abs(p(3,jmerge))
            endif
            lflav(kmerge)=onem
            lflav(jmerge)=mergedfl
         endif
      enddo 
      
C - Compute number of particles found after clustering
      nClusteredPart=0
      do j=1,nUnClusteredPart
         if(lflav(j).ne.onem) nClusteredPart=nClusteredPart+1
      enddo

      jmom = 0d0 
C - There must always be a top no matter what: find it and get its mass
      do j=1,nUnClusteredPart
         if(abs(lflav(j)).eq.6) tMom = p(:,j)
         if(abs(lflav(j)).eq.5) bMom = p(:,j)
         if(j .gt. 3 .and. abs(lflav(j)).lt.5 .and. abs(lflav(j)) .gt. 0 .and.
     C        q2merge .lt. 1d10) then
            if (all(jmom == 0d0)) then 
               jMom = p(:,j)
            else
               stop 'Already found light Born jet'                
            endif
         endif
         if(j .gt. 3 .and. abs(lflav(j)).lt.5 .and. abs(lflav(j)) .gt. 0 .and.
     C        nUnClusteredPart.eq.4) then
            if (all(jmom == 0d0)) then 
               jMom = p(:,j)
            else
               stop 'Already found light Born jet'                
            endif
         endif
      enddo
      if (all(jmom == 0d0) .and. q2merge .lt. 1d10) then
         stop 'Did not find light Born jet' 
      endif
      
C - first compute -Q^2 (W-boson t-channel)
      if(nClusteredPart.eq.4) then
         WMom = bMom-tMom
      elseif (nClusteredPart.eq.5) then ! must have initial state gluon
         if (lflav(1).ne.0 .and. lflav(2).ne.0) then
            write (*,*) 'ERROR #2 in setlocalscales0:',nClusteredPart
            write (*,*) lflav
            stop
         endif
         if (abs(lflav(1)).ne.5 .and. abs(lflav(2)).ne.5) then
C     - If b is final state, gluon is attached to b-top line
C     find the initial state gluon 
            if (lflav(1).eq.0) then
               WMom=p(:,1)
            else
               WMom=p(:,2)
            endif
            WMom = WMom-tMom-bMom
         else
            WMom = bMom-tMom
         endif
      elseif (nClusteredPart.eq.6) then
         tMom = p(:,3)
         WMom = 0d0 ! W momentum not used and not well defined
         ! routine to be fixed
      else
         write (*,*) 'ERROR #1 in setting cluster scales',nClusteredPart
         write (*,*) lflav
         stop
      endif

C - Save p momentum array at this point, this is the state it would
C - have on exiting the original ClusterEvent routine ...
      do jxx=1,nlegreal
         lflavSave(jxx)=lflav(jxx)
         do ixx=0,3
            pSave(ixx,jxx)=p(ixx,jxx)
         enddo
      enddo
C - CLUSTER configurations of 6 UNCLUSTERED PARTICLES ...
C - consisting purely of quarks down to 5 particle ones, by clustering
C - a final state quark with a same flavour initial state one to make
C - an initial state gluon ...
      if(nClusteredPart.eq.6) then
C - Initialise array index vars and pT2's to impossible values ...
         lqInFS1=-1 ; lqInFS2=-1 ; pt2_lqInFS1=1d12 ; pt2_lqInFS2=1d12 ; 
         if(
C - 
C - Scenario 1: q1 q2 --> t b q3 q4
C - Check for only 6-quark states: two u/d/s/c (** NOT b **) IS quarks
C - and check for no.3 being a t/tbar and no.4/5/6 being a b/bbar, i.e.
C - where q1,q2,q3,q4 are light, non-b, quarks ...
     $      abs(lflav(1)).le.4.and.abs(lflav(2)).le.4.and.
     $      abs(lflav(3)).eq.6.and.abs(lflav(4)).le.5.and.
     $      abs(lflav(5)).le.5.and.abs(lflav(6)).le.5.and.
     $      abs(lflav(1)).ne.0.and.abs(lflav(2)).ne.0.and.
     $                             abs(lflav(4)).ne.0.and.
     $      abs(lflav(5)).ne.0.and.abs(lflav(6)).ne.0.and.
C - Also check that there is a FS b-quark ...
     $     (abs(lflav(4)).eq.5.or.abs(lflav(5)).eq.5.or.
     $      abs(lflav(6)).eq.5)
     $     ) then
C - 
C - We DO NOT worry about the possibility to cluster a final-state qqbar
C - pair knowing that there is a t and a b already in the FS & two ** NON-b **
C - light quarks in the IS since this leads to an impossible 5-particle state
C - of the form q1 q2 --> t b g
C - 
C - Check to find any IS-FS pairs of same-flavour quarks ...
C - 
            do j=3,nUnClusteredPart
               if(lflav(j).eq.lflav(1).and.lqInFS1.lt.0) lqInFS1 = j
               if(lflav(j).eq.lflav(2).and.lqInFS2.lt.0) lqInFS2 = j
            enddo
C - Compute the associated pT2s of the latter ...
            if(lqInFS1.gt.0) pt2_lqInFS1=p(1,lqInFS1)**2+p(2,lqInFS1)**2
            if(lqInFS2.gt.0) pt2_lqInFS2=p(1,lqInFS2)**2+p(2,lqInFS2)**2
C - If found at least one IS-FS same-flavour pair ...
            if(lqInFS1.gt.0.or.lqInFS2.gt.0) then
C - Cluster together the pair which has the FS quark with smallest pT2 ...
               if(pt2_lqInFS1.le.pt2_lqInFS2) then
                  p(3,1)=p(3,1)-p(3,lqInFS1)
                  p(0,1)=abs(p(3,1))
                  lflav(1)=0
                  lflav(lqInFS1)=onem
               elseif(pt2_lqInFS2.le.pt2_lqInFS1) then
                  p(3,2)=p(3,2)-p(3,lqInFS2)
                  p(0,2)=abs(p(3,2))
                  lflav(2)=0
                  lflav(lqInFS2)=onem
               endif
               nClusteredPart=5
            endif
C - 
C - Scenario 2: b q1 --> t q2 q3 q4
C - with q1,q2,q3,q4 all non-b quarks, and also with flavour q2 != flavour q3
C - and flavour q2 != flavour q4 and flavour q3 != flavour q4, i.e. no
C - possible FS clustering among q2, q3, q4. In particular here we are
C - excluding 6-particle states with q2 = -q3 or, q2 = -q4, or q3 = -q4
C - on the basis that these should have already been clustered back by
C - the standard clustering code in all cases ...            
         elseif(
C - Check for one u/d/s/c (** NOT b **) and one b IS quark
C - and check for no.3 being a t/tbar and no.4/5/6 being a b/bbar
     $      abs(lflav(1)).eq.5.and.abs(lflav(2)).le.4.and.
     $      abs(lflav(3)).eq.6.and.abs(lflav(4)).le.4.and.
     $      abs(lflav(5)).le.4.and.abs(lflav(6)).le.4.and.
     $      lflav(4).ne.-lflav(5).and.
     $      lflav(4).ne.-lflav(6).and.
     $      lflav(5).ne.-lflav(6).and.
     $      abs(lflav(2)).ne.0
     $         ) then
C - Try and match IS NON-b quark with one in the FS ...
            do j=3,nUnClusteredPart
               if(lflav(j).eq.lflav(2).and.lqInFS1.lt.0) lqInFS1 = j
               if(lflav(j).eq.lflav(2).and.lqInFS1.gt.0) lqInFS2 = j
            enddo
C - Compute the associated pT2s of the latter ...
            if(lqInFS1.gt.0) pt2_lqInFS1=p(1,lqInFS1)**2+p(2,lqInFS1)**2
            if(lqInFS2.gt.0) pt2_lqInFS2=p(1,lqInFS2)**2+p(2,lqInFS2)**2
C - If found at least one IS-FS same-flavour pair ...
            if(lqInFS1.gt.0.or.lqInFS2.gt.0) then
C - Cluster together the pair which has the FS quark with smallest pT2 ...
               if(pt2_lqInFS1.le.pt2_lqInFS2) then
                  p(3,2)=p(3,2)-p(3,lqInFS1)
                  p(0,2)=abs(p(3,2))
                  lflav(2)=0
                  lflav(lqInFS1)=onem
               elseif(pt2_lqInFS2.le.pt2_lqInFS1) then
                  p(3,2)=p(3,2)-p(3,lqInFS2)
                  p(0,2)=abs(p(3,2))
                  lflav(2)=0
                  lflav(lqInFS2)=onem
               endif
               nClusteredPart=5
            endif
         elseif(
C - 
C - Scenario 3: q1 b --> t q2 q3 q4
C - with q1,q2,q3,q4 all non-b quarks. This is identical to Scenario 2 above
C - but with the q1 and b interchanged in the IS, that's all ...
     $      abs(lflav(1)).le.4.and.abs(lflav(2)).eq.5.and.
     $      abs(lflav(3)).eq.6.and.abs(lflav(4)).le.4.and.
     $      abs(lflav(5)).le.4.and.abs(lflav(6)).le.4.and.
     $      lflav(4).ne.-lflav(5).and.
     $      lflav(4).ne.-lflav(6).and.
     $      lflav(5).ne.-lflav(6).and.
     $      abs(lflav(1)).ne.0
     $         ) then
C - Try and match IS NON-b quark with one in the FS ...
            do j=3,nUnClusteredPart
               if(lflav(j).eq.lflav(1).and.lqInFS1.lt.0) lqInFS1 = j
               if(lflav(j).eq.lflav(1).and.lqInFS1.gt.0) lqInFS2 = j
            enddo
C - Compute the associated pT2s of the latter ...
            if(lqInFS1.gt.0) pt2_lqInFS1=p(1,lqInFS1)**2+p(2,lqInFS1)**2
            if(lqInFS2.gt.0) pt2_lqInFS2=p(1,lqInFS2)**2+p(2,lqInFS2)**2
C - If found at least one IS-FS same-flavour pair ...
            if(lqInFS1.gt.0.or.lqInFS2.gt.0) then
C - Cluster together the pair which has the FS quark with smallest pT2 ...
               if(pt2_lqInFS1.le.pt2_lqInFS2) then
                  p(3,1)=p(3,1)-p(3,lqInFS1)
                  p(0,1)=abs(p(3,1))
                  lflav(1)=0
                  lflav(lqInFS1)=onem
               elseif(pt2_lqInFS2.le.pt2_lqInFS1) then
                  p(3,1)=p(3,1)-p(3,lqInFS2)
                  p(0,1)=abs(p(3,1))
                  lflav(1)=0
                  lflav(lqInFS2)=onem
               endif
               nClusteredPart=5
            endif
         else
C - 
C - Scenario 4: none of the above scenarios!!!
C - AD HOC!!! SHOULD BE VERY RARE e.g. bbar u --> t d bbar bbar
C - AD HOC clustering taking highest pT light parton as the light jet
C - and deleting the other two partons. Better would be to detect 
C - lowest pT FS b (bbar) and cluster it with the IS b (bbar) to
C - yield a 5-particle state that the 5-particle machinery below
C - can handle ... Finding that this is literally a 1-in-a-million
C - STJ situation though.            
C - 
            write(*,*) ''
            write(*,*) ''
            write(*,*) 'auxiliary.f, AltClusterEvent'
            write(*,*) '~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
            write(*,*) ''
            write(*,*) 'Warning, exceptional 6 particle configuration'
            write(*,*) 'Make sure you dont see too many of these !   '
            write(*,*) ''
            write(*,*) 'nClusteredPart.gt.4 = ',nClusteredPart
            write(*,*) 'q2Merge = ',q2Merge
            write(*,*) 'lflav = ',lflav
            write(*,*) 'p(:,1) = ',p(:,1)
            write(*,*) 'p(:,2) = ',p(:,2)
            write(*,*) 'p(:,3) = ',p(:,3)
            write(*,*) 'p(:,4) = ',p(:,4)
            write(*,*) 'p(:,5) = ',p(:,5)
            write(*,*) 'p(:,6) = ',p(:,6)
            write(*,*) ''
            pt2_lqInFS1=p(1,4)**2+p(2,4)**2
            pt2_lqInFS2=p(1,5)**2+p(2,5)**2
            pt2_lqInFS3=p(1,6)**2+p(2,6)**2
            if(pt2_lqInFS1.ge.pt2_lqInFS2.and.
     $         pt2_lqInFS1.ge.pt2_lqInFS3) then
                  lflav(5)=onem
                  lflav(6)=onem
                  jMom = p(:,4)
            elseif(pt2_lqInFS2.ge.pt2_lqInFS1.and.
     $             pt2_lqInFS2.ge.pt2_lqInFS3) then
                  lflav(4)=onem
                  lflav(6)=onem
                  jMom = p(:,5)
            elseif(pt2_lqInFS3.ge.pt2_lqInFS1.and.
     $             pt2_lqInFS3.ge.pt2_lqInFS2) then
                  lflav(4)=onem
                  lflav(5)=onem
                  jMom = p(:,6)
            endif
            nClusteredPart=4
         endif
      endif
C -
C - Now after addressing the case of 6 unclustered particles we seek to
C - address the case of 5 UNCLUSTERED PARTICLES.
C -
C - First we set a series of integer flags indicating what kind of 5-particle
C - state we are dealing with.
      if(nClusteredPart.eq.5) then
         bInFS=-1 ; tInFS=-1  ; lqInFS1=-1 ; lqInFS2=-1 ;
         gInIS=-1 ; lqInIS=-1 ; bInIS=-1   ;
         do j=1,2
            if(lflav(j).eq.0)      gInIS = j
         enddo
         do j=1,2
            if(gInIS.gt.0) then
               if(abs(lflav(j)).lt.5.and.lflav(j).ne.0) lqInIS = j
               if(abs(lflav(j)).eq.5) bInIS = j
            endif
         enddo
         do j=3,nUnClusteredPart
            if(abs(lflav(j)).eq.5) bInFS   = j
            if(abs(lflav(j)).eq.6) tInFS   = j
            if(abs(lflav(j)).le.4.and.lqInFS1.eq.-1) lqInFS1 = j
            if(abs(lflav(j)).le.4.and.j.ne.lqInFS1)  lqInFS2 = j
         enddo
C -
C - OK. Flags all set, time to do something with them ...
C -
C - Scenario 1: 5-particle states of the form g q --> t b q' with
C - q and q' different but of the same generation, and not b's ...
C - The only possible clustering for these, imposed purely by
C - flavour considerations is to cluster the b with the IS gluon,
C - which is what we are doing in the first bit of the 'if' below
C -
         if(gInIS.gt.0.and.lqInIS.gt.0.and.tInFS.gt.0.and.bInFS.gt.0
     $      .and.lqInFS1.gt.0.and.bInIS.lt.0.and.lqInFS2.lt.0.and.
     $      abs(lflav(lqInIS)-lflav(lqInFS1)).eq.1) then
            p(3,gInIS)=p(3,gInIS)-p(3,bInFS)
            p(0,gInIS)=abs(p(3,gInIS))
            lflav(gInIS)=-lflav(bInFS)
            lflav(bInFS)=onem
            nClusteredPart=4
            jMom = p(:,lqInFS1)
C -
C - Scenario 2: 5-particle states of the form g b --> t q q' with
C - q and q' different but of the same generation, and not b's ...
C - It is not possible to cluster q with q' as they are different
C - flavour. So no FS clusterings are therefore possible. Since the
C - FS is all quarks and we need a b in the IS after clustering we
C - can only hope to cluster either the FS q or q' with the IS gluon.
C - As to whether we cluster q or q' is simply based on which of the
C - two has smallest pT.            
C -
         elseif(gInIS.gt.0.and.bInIS.gt.0.and.tInFS.gt.0.and.
     $           lqInFS1.gt.0.and.lqInFS2.gt.0.and.
     $           bInFS.lt.0.and.
     $         abs(lflav(lqInFS2)+lflav(lqInFS1)).eq.1) then
            pt2_lqInFS1=p(1,lqInFS1)**2+p(2,lqInFS1)**2
            pt2_lqInFS2=p(1,lqInFS2)**2+p(2,lqInFS2)**2
            if(pt2_lqInFS1.le.pt2_lqInFS2) then
               p(3,gInIS)=p(3,gInIS)-p(3,lqInFS1)
               p(0,gInIS)=abs(p(3,gInIS))
               lflav(gInIS)=-lflav(lqInFS1)
               lflav(lqInFS1)=onem
               jMom = p(:,lqInFS2)
            else
               p(3,gInIS)=p(3,gInIS)-p(3,lqInFS2)
               p(0,gInIS)=abs(p(3,gInIS))
               lflav(gInIS)=-lflav(lqInFS2)
               lflav(lqInFS2)=onem
               jMom = p(:,lqInFS1)
            endif
            nClusteredPart=4
         endif
      endif
      if(nClusteredPart.ne.4) then
         write(*,*) ''
         write(*,*) ''
         write(*,*) 'auxiliary.f, AltClusterEvent:'
         write(*,*) '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
         write(*,*) 'nClusteredPart.gt.4 = ',nClusteredPart
         write(*,*) 'q2Merge = ',q2Merge
         write(*,*) 'lflav = ',lflav
         write(*,*) 'p(:,1) = ',p(:,1)
         write(*,*) 'p(:,2) = ',p(:,2)
         write(*,*) 'p(:,3) = ',p(:,3)
         write(*,*) 'p(:,4) = ',p(:,4)
         write(*,*) 'p(:,5) = ',p(:,5)
         write(*,*) 'p(:,6) = ',p(:,6)
         write(*,*) ''
      endif
      if (all(jmom == 0d0)) then
         write(*,*) ''
         write(*,*) ''
         write(*,*) 'auxiliary.f, AltClusterEvent:'
         write(*,*) '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
         write(*,*) 'WARNING ...'
         write(*,*) 'Did not find light Born jet' 
         write(*,*) 'jmom = ',jMom 
         write(*,*) 'nClusteredPart.gt.4 = ',nClusteredPart
         write(*,*) 'q2Merge = ',q2Merge
         write(*,*) 'lflav = ',lflav
         write(*,*) 'p(:,1) = ',p(:,1)
         write(*,*) 'p(:,2) = ',p(:,2)
         write(*,*) 'p(:,3) = ',p(:,3)
         write(*,*) 'p(:,4) = ',p(:,4)
         write(*,*) 'p(:,5) = ',p(:,5)
         write(*,*) 'p(:,6) = ',p(:,6)
         write(*,*) 'nUnClustered = ',nUnClusteredPart
         write(*,*) 'lflavSave = ',lflavSave
         write(*,*) 'pSave(:,1) = ',pSave(:,1)
         write(*,*) 'pSave(:,2) = ',pSave(:,2)
         write(*,*) 'pSave(:,3) = ',pSave(:,3)
         write(*,*) 'pSave(:,4) = ',pSave(:,4)
         write(*,*) 'pSave(:,5) = ',pSave(:,5)
         write(*,*) 'pSave(:,6) = ',pSave(:,6)
         write(*,*) ''
      endif
      
C - Restore p momentum array to the state it was in before the
C - nClusteredPart=5 or 6 handling happens. So that the p array
C - that goes back to the outside world (which is anyhow unused
C - by setlocalscales.f) is the same as it would be in the original      
C - ClusterEvent routine ...
C - N.B. This is ONLY being done so we can claim ClusterEvent and
C - AltClusterEvent give identical results with the exception of jMom,
C - In reality the p array is more correct as it is at this point 
C - than what we get when we reset it to pSave in a couple of lines
C - below...
      do jxx=1,nlegreal
         lflav(jxx)=lflavSave(jxx)
         do ixx=0,3
            p(ixx,jxx)=pSave(ixx,jxx)
         enddo
      enddo

      end 
      
C ------------------------------------------------ C
C - Inputs:                                      - C
C - *******                                      - C
C - p        - Underlying born momenta           - C
C - lflav    - Flavour list derived from         - C
C -            flst_born by subjecting it to     - C
C -            repeated QCD clusterings.         - C
C -                                              - C
C - Outputs:                                     - C
C - ********                                     - C
C - jmerge   - Index in lflav of one of the two  - C
C -            closest partons.                  - C
C - kmerge   - Index in lflav of the             - C
C -            corresponding parton.             - C
C - mergedfl - Flavour of parton resulting from  - C 
C -            combination.                      - C
C - q2merge  - pT^2 scale associated to the      - C
C -            merging of jmerge and kmerge.     - C
C -                                              - C
C ------------------------------------------------ C
      subroutine findNearestNeighbours(p,lflav,jmerge,kmerge,mergedfl,
     $                                 q2merge)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
C - Input / output:
C      real * 8 p(0:3,nlegreal)
C      integer  lflav(nlegreal)

      real * 8, intent(in) ::  p(0:3,*)
      integer , intent(in) ::  lflav(:)

      integer  jmerge,kmerge,mergedfl
      real * 8 q2merge
C - Local variables:
      real * 8 ycm
      integer  onem
      parameter (onem=1000000)
      integer  j,k
      integer  fl1,fl2,fl
      real * 8 yj,phij,q2j
      real * 8 yk,phik,q2k
      real * 8 dphi
      real * 8 q2,dymin
      logical dijetflag
      common/cdijetflag/dijetflag
      integer np 
      integer n_particlesToCluster
      integer ncluster_flav 
      common/ccluster_flav/ncluster_flav 
      logical cluster_top 
      real *8 mt2 

      n_particlesToCluster=size(lflav)

      cluster_top = .true. 
      if (cluster_top) then
         ncluster_flav = 6
      else
         ncluster_flav = 5 
      endif

C     find the top mass to compute the transverse Et of the top 
      mt2 = 0d0 
      do j=3,n_particlesToCluster
         if (abs(lflav(j)) == 6) then
            if (mt2 /=0d0) then
               write(*,*) 'Error in FindNearestNeighbours: 
     C found two tops' 
               stop 
            else
               mt2 = p(0,j)**2-p(1,j)**2-p(2,j)**2-p(3,j)**2
            endif
         endif
      enddo
      if (mt2 == 0d0) then
         write(*,*) 'Error in FindNearestNeighbours: 
     C did not find the top quark'
         stop 
      endif
            
      q2merge=1d10
      ycm=log(p(0,1)/p(0,2))/2
      mergedfl=onem
      do j=3,n_particlesToCluster
         if(abs(lflav(j)).gt.ncluster_flav) goto 11
C     do not include top in ISR clsutering 
         if(abs(lflav(j)).eq.6) goto 13
         if(p(0,j).gt.abs(p(3,j))) then
            yj=0.5d0*log((p(0,j)+p(3,j))/(p(0,j)-p(3,j)))
         else
            if(p(0,j).eq.p(3,j)) then
               if(p(3,j).ge.0) then
                  yj=9999d0
               else
                  yj=-9999d0
               endif
            else
               yj=0.5d0*log((p(0,j)+p(3,j))/(abs(p(0,j)-p(3,j))))
            endif
         endif
         if(yj.gt.ycm) then
            call aux_validmergeisr(lflav(1:n_particlesToCluster),1,j,fl1)
            if(fl1.ne.onem) then
               q2j = p(1,j)**2+p(2,j)**2
               if(q2j.lt.q2merge) then
                  q2merge=q2j
                  jmerge=1
                  kmerge=j
                  mergedfl=fl1
               endif
            endif
         else
            call aux_validmergeisr(lflav(1:n_particlesToCluster),2,j,fl2)
            if(fl2.ne.onem) then
               q2j = p(1,j)**2+p(2,j)**2
               if(q2j.lt.q2merge) then
                  q2merge=q2j
                  jmerge=2
                  kmerge=j
                  mergedfl=fl2
               endif
            endif
         endif
 13      continue
         do k=j+1,n_particlesToCluster
            if(abs(lflav(k)).gt.ncluster_flav) goto 12
            call aux_validmergefsr(lflav,j,k,fl)
            if(fl.ne.onem) then
               if(p(0,k).gt.abs(p(3,k))) then
                  yk=0.5d0*log((p(0,k)+p(3,k))/(p(0,k)-p(3,k)))
               else
                  if(p(0,k).eq.p(3,k)) then
                     if(p(3,k).ge.0) then
                        yk=9999d0
                     else
                        yk=-9999d0
                     endif
                  else
                     yk=0.5d0*log((p(0,k)+p(3,k))/(abs(p(0,k)-p(3,k))))
                  endif
               endif
               call aux_phipt2(p(:,k),phik,q2k)
               call aux_phipt2(p(:,j),phij,q2j)
               dphi=abs(phik-phij)
               if (abs(lflav(j)) .eq.6) q2j = q2j + mt2
               if (abs(lflav(k)) .eq.6) q2k = q2k + mt2
               if(dphi.gt.2*pi) dphi=dphi-2*pi
               if(dphi.gt.pi) dphi=2*pi-dphi
               q2=((yk-yj)**2+dphi**2)*min(q2k,q2j)
               if(q2.lt.q2merge) then
                  q2merge=q2
                  jmerge=j
                  kmerge=k
                  mergedfl=fl
               endif
            endif
 12         continue
         enddo
 11      continue
      enddo

      end




C ---------------------------------------------- C
C - Inputs:                                    - C
C - *******                                    - C
C - p    - p(0) = Energy, p(3) = p_Z           - C
C -                                            - C
C - Outputs:                                   - C
C - ********                                   - C
C - y    - Rapidity                            - C
C - phi  - phi                                 - C
C - q2   - pT^2 w.r.t the beam                 - C
C -                                            - C
C ---------------------------------------------- C
      subroutine aux_phipt2(p,phi,q2)
      implicit none
      real * 8 p(0:3),phi,q2
      q2=p(1)**2+p(2)**2
      phi=atan2(p(2),p(1))
      end

C ---------------------------------------------- C
C - Inputs:                                    - C
C - *******                                    - C
C - flav - flavour list derived from flst_born - C
C -        by subjecting it to repeated QCD    - C
C -        compatible clusterings.             - C
C -  i   - index of i-th initial-state partON  - C
C -        in flav: hence i = 1 or 2 only.     - C
C -  j   - index of j-th final-state partICLE  - C
C -        particle in flav.                   - C
C -                                            - C
C - Outputs:                                   - C
C - ********                                   - C
C - fl   - Would-be PDG code of spacelike      - C
C -        "mother" parton obtained by merging - C
C -        (~on-shell) incoming parton i with  - C
C -        outgoing particle j:                - C
C -          i -> fl + j                       - C
C -        Note gluons have id=0 in Powheg-Box - C
C -        instead of 21. If the splitting is  - C
C -        not possible in QCD, fl=1000000 ;   - C
C -        this setting signals to the rest of - C
C -        the algorithm that this is not a    - C
C -        candidate pair for combination.     - C
C -                                            - C
C ---------------------------------------------- C
      subroutine aux_validmergeisr(flav,i,j,fl)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer, intent(in) ::  flav(:),i,j
      integer, intent(out) :: fl 
      integer onem
      parameter (onem=1000000)
      integer lflav(size(flav))
      integer ncluster_flav 
      common/ccluster_flav/ncluster_flav 
C     logical validflav
C      external validflav
      interface 
         logical function validflav(lflav)
         integer lflav(:)
         end 
      end interface 

      if(i.gt.2.or.j.le.2) then  ! Remove when development is finished.
         write(*,*) 'validmergeisr: fatal error'
         write(*,*) 'Routine demands an i.s. and f.s. particle'
         write(*,*) 'index for the 2nd and 3rd input values   '
         write(*,*) 'respectively. Quitting.'
         call exit(-1)
      endif
      if(abs(flav(i)).ge.ncluster_flav.or.abs(flav(j)).ge.ncluster_flav) then
         fl=onem
         return
      endif
      if(flav(i).eq.flav(j)) then
c g -> g g or q -> g q
         fl=0
         goto 999
      endif
      if(flav(j).eq.0) then
c q -> q g
         fl=flav(i)
         goto 999
      endif
      if(flav(i).eq.0) then
c g -> qbar q
         fl=-flav(j)
         goto 999
      endif
      fl=onem
      return
 999  continue
C - Check that the flavour list that results from the merging
C - is acceptable e.g. check that for HJJ you don't get back to
C - qqbar->H; if you do then set fl to 1000000, as if the 
C - branching were not possible in QCD s.t. it will be neglected
C - as a candidate for clustering.
      lflav=flav
      lflav(j)=onem
      lflav(i)=fl
      if(.not.validflav(lflav(:size(flav)))) then
         fl=onem
      endif
      end


C ---------------------------------------------- C
C - Inputs:                                    - C
C - *******                                    - C
C - flav - flavour list derived from flst_born - C
C -        by subjecting it to repeated QCD    - C
C -        compatible clusterings.             - C
C -  i   - index of i-th final-state partICLE  - C
C -        in flav: hence i = 1 or 2 only.     - C
C -  j   - index of j-th final-state partICLE  - C
C -        particle in flav.                   - C
C -                                            - C
C - Outputs:                                   - C
C - ********                                   - C
C - fl   - Would-be PDG code of timelike       - C
C -        "mother" parton obtained by merging - C
C -        outgoing particles i and j:         - C
C -          fl -> i + j                       - C
C -        Note gluons have id=0 in Powheg-Box - C
C -        instead of 21. If the splitting is  - C
C -        not possible in QCD, fl=1000000 ;   - C
C -        this setting signals to the rest of - C
C -        the algorithm that this is not a    - C
C -        candidate pair for combination.     - C
C -                                            - C
C ---------------------------------------------- C
      subroutine aux_validmergefsr(flav,i,j,fl)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer onem
      parameter (onem=1000000)
      integer flav(:),i,j,fl
      integer lflav(size(flav))
C      logical validflav
C      external validflav
      integer ncluster_flav 
      common/ccluster_flav/ncluster_flav
      interface 
         logical function validflav(lflav)
         integer lflav(:)
         end
      end interface 

      if(i.le.2.or.j.le.2) then  ! Remove when development is finished.
         write(*,*) 'validmergefsr: fatal error'
         write(*,*) 'Routine demands an f.s. and f.s. particle'
         write(*,*) 'index for the 2nd and 3rd input values   '
         write(*,*) 'respectively. Quitting.'
         call exit(-1)
      endif
      if(abs(flav(i)).gt.ncluster_flav.or.abs(flav(j)).gt.ncluster_flav) then
         fl=onem
         return
      endif
      if(flav(i).eq.-flav(j)) then
c g -> g g or g -> q qbar
         fl=0
         goto 999
      endif
      if(flav(j).eq.0) then
c q -> q g
         fl=flav(i)
         goto 999
      endif
      if(flav(i).eq.0) then
c q -> g q
         fl=flav(j)
         goto 999
      endif
      fl=onem
      return
 999  continue
C - Check that the flavour list that results from the merging
C - is acceptable e.g. check that for HJJ you don't get back to
C - qqbar->H; if you do then set fl to 1000000, as if the 
C - branching were not possible in QCD s.t. it will be neglected
C - as a candidate for clustering.
      lflav=flav
      lflav(j)=onem
      lflav(i)=fl
      if(.not.validflav(lflav)) then
         fl=onem
      endif
      end

      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      real * 8, intent(in) ::  p(0:3)
      real *8, intent(out) :: y,eta,pt,mass
      real *8 tiny,pv
      parameter (tiny=1.d-5)
      y=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      pt=sqrt(p(1)**2+p(2)**2)
      pv=sqrt(pt**2+p(3)**2)
      if(pt.lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      else
         eta=0.5d0*log((pv+p(3))/(pv-p(3)))
      endif
      mass=sqrt(abs(p(0)**2-pv**2))
      end

      subroutine getdydetadphidr(p1,p2,dy,deta,dphi,dr)
      implicit none
      include 'pwhg_math.h' 
      real * 8, intent(in)  :: p1(0:3),p2(0:3)
      real * 8, intent(out) :: dy,deta,dphi,dr
      real * 8 y1,eta1,pt1,mass1,phi1
      real * 8 y2,eta2,pt2,mass2,phi2
      call getyetaptmass(p1,y1,eta1,pt1,mass1)
      call getyetaptmass(p2,y2,eta2,pt2,mass2)
      dy=y1-y2
      deta=eta1-eta2
      phi1=atan2(p1(1),p1(2))
      phi2=atan2(p2(1),p2(2))
      dphi=abs(phi1-phi2)
      dphi=min(dphi,2d0*pi-dphi)
      dr=sqrt(deta**2+dphi**2)
      end



      end module auxiliary  


