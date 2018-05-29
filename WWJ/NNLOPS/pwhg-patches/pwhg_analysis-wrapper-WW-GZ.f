c======================================================================
c=======================================================================
c===--- Book histograms:
c=======================================================================
c=======================================================================
      subroutine init_hist
      implicit none
      include 'LesHouches.h'
      include 'pwhg_math.h'
      real*8 empty(1:4), wt 
      integer process,nn

      empty=0d0
      wt = 0d0 
      nn = 0                    ! nn = 0 should not be used yet 
      process = 100 
      call makeplots(.true.,process,nn,
     $     empty,empty,empty,empty,empty,empty,empty,empty,
     $     wt)

      end
c-----------------------------------------------------------------------



c=======================================================================
c=======================================================================
c===--- Analysis:
c=======================================================================
c=======================================================================
      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      include 'pwhg_weights.h'
      include 'PhysPars.h'
      include 'wwproj_parameters.h'
      include 'pwhg_rwl.h' 
      logical ini
      data ini/.true./
      save ini
C     allow multiweights 
      real * 8 dsig0,dsig(1:weights_max)
c     tell to the analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'LHE   '/
      real *8 jetcut(2)
      character * 6 suffix(2) 
      common/jcut/jetcut,suffix
C---- Particle variables:
      real*8 pWm, pWp(4)
      real*8 p_ele(4),p_pos(4),p_nu(4),p_nub(4)
      real*8 p_part1(4), p_part2(4), p_jet1(4), p_jet2(4)
      real*8 psum(4)
c---- Functions:
      real*8 getcosth,norm3,dot3_product
c---- tracks for jets (PYTHIA):
      logical islepton,isnu
c---- Other variables:
      real*8 ddummy(4),tiny
      parameter (tiny=1d-2)
      integer j1,j2,j3,foundLEP,foundH,mjets,ihep,icut,i
      integer id_l1, id_l2
      integer numevent, nn
      data numevent/0/
      save numevent
      integer process

c=====--- Initialise analysis:
      if (ini) then
         write(*,*) '*****************************'
         if(whcprg.eq.'NLO') then
            write(*,*) '       NLO ANALYSIS'
            weights_num=0
         elseif(WHCPRG.eq.'LHE   ') then
            write(*,*) '       LHE ANALYSIS'
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS            '
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS            '
         endif
         write(*,*) '*****************************'

         ini=.false.
      endif

c=====--- Initialise weights:
       dsig=0
       if(weights_num.eq.0.and.rwl_num_weights.eq.0) then
          dsig(1)=dsig0
       else if(weights_num.ne.0.and.rwl_num_weights.eq.0) then
          dsig(1:weights_num)=weights_val(1:weights_num)
       else if(weights_num.eq.0.and.rwl_num_weights.ne.0) then
          dsig(1:rwl_num_weights)=rwl_weights(1:rwl_num_weights)
       else
          dsig(1:rwl_num_weights)=rwl_weights(1:rwl_num_weights)
       endif
       if(sum(abs(dsig)).eq.0) return


c=====--- Find initial state partons:
      !-- first parton:
      ihep=1
      p_part1(1:4) = phep(1:4,ihep)
      !-- second parton:
      ihep=2
      p_part2(1:4) = phep(1:4,ihep)

c=====--- Loop over final state particles to find leptons (pos+electron):
      foundLEP=0
c----------> the part for NLO(stage 2)
      if(whcprg.eq.'NLO' .or. whcprg.eq.'LHE   ') then
         do ihep=1,nhep
            !-- find: e- OR mu-
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.((idhep(ihep).eq.13 .or. idhep(ihep).eq.11))) 
     $           then
               j1=ihep
               id_l1=idhep(ihep)
               foundLEP=foundLEP+1
               p_ele(1:4) = phep(1:4,j1)
            endif
            !-- find: nu (ele OR mu flavoured)
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.((idhep(ihep).eq.12 .or. idhep(ihep).eq.14))) 
     $           then
               j1=ihep
               id_l1=idhep(ihep)
               foundLEP=foundLEP+1
               p_nu(1:4) = phep(1:4,j1)
            endif
            !-- find: e+ OR mu+
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.((idhep(ihep).eq.-11 .or. idhep(ihep).eq.-13))) 
     $           then
               j2=ihep
               id_l2=idhep(ihep)
               foundLEP=foundLEP+1
               p_pos(1:4) = phep(1:4,j2)
            endif
            !-- find: nubar (ele OR mu flavoured)
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.((idhep(ihep).eq.-14 .or. idhep(ihep).eq.-12))) 
     $           then
               j2=ihep
               id_l2=idhep(ihep)
               foundLEP=foundLEP+1
               p_nub(1:4) = phep(1:4,j2)
            endif
         enddo

      else
c------> check momentum conservation:
         if(whcprg.eq.'PYTHIA')then
            psum=0d0
            do ihep=1,nhep
!               if(isthep(ihep).gt.0) psum = psum + phep(1:4,ihep)
               if(isthep(ihep).eq.1) psum = psum + phep(1:4,ihep)
            enddo
            if( psum(1)**2+psum(2)**2+psum(3)**2 .gt. tiny )then
               write(*,*) 'Momentum conservation violated:'
               write(*,*) '---> psum=',psum(1:4)
            else
               write(*,*) 'MOMENTUM CONSERVATION OK ---> psum=',psum(1:4)
            endif
         endif

         do ihep=1,nhep
C            if (ihep == 22 .or. ihep .eq. 24) then 
C               write(*,*) 'mothers',  
C     $           idhep(jmohep(1,ihep))
C     $           idhep(jmohep(1,jmohep(1,ihep)))
C     $           idhep(jmohep(1,jmohep(1,jmohep(1,ihep))))
C            endif

            if (isthep(ihep).eq.1 .and. 
     $                              (abs(idhep(jmohep(1,ihep))).eq.24
     $                          .or.abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.24
     $           .or.abs(idhep(jmohep(1,jmohep(1,jmohep(1,ihep))))).eq.24
     $           .or.abs(idhep(jmohep(1,jmohep(1,jmohep(1,jmohep(1,ihep)))))).eq.24)
     $           ) then

!--   find: e- OR mu-
               if(idhep(ihep).eq.11 .or. idhep(ihep).eq.13) then 
                  j1=ihep
                  id_l1=idhep(ihep)
                  foundLEP=foundLEP+1
                  p_ele(1:4) = phep(1:4,j1)
                  write(*,*) 'found pele', ihep, isthep(ihep),p_ele
!--   find: nu (ele OR mu flavoured)
               elseif (idhep(ihep).eq.12 .or. idhep(ihep).eq.14) then 
                  j1=ihep
                  id_l1=idhep(ihep)
                  foundLEP=foundLEP+1
                  p_nu(1:4) = phep(1:4,j1)
                  write(*,*) 'found pnu', ihep, isthep(ihep),p_nu
!-- find: e+ OR mu+
               elseif(idhep(ihep).eq.-11 .or. idhep(ihep).eq.-13) then
                  j2=ihep
                  id_l2=idhep(ihep)
                  foundLEP=foundLEP+1
                  p_pos(1:4) = phep(1:4,j2)
                  write(*,*) 'found ppos', ihep, isthep(ihep),p_pos
!-- find: nubar (ele OR mu flavoured)
               elseif (idhep(ihep).eq.-12 .or. idhep(ihep).eq.-14) then
                  j2=ihep
                  id_l2=idhep(ihep)
                  foundLEP=foundLEP+1
                  p_nub(1:4) = phep(1:4,j2)
                  write(*,*) 'found pnub', ihep, isthep(ihep),p_nub
               endif
            endif
         enddo
      endif

c=====--- Find jets (outgoing partons):
c------> first case: NLO or LHE:
      if(whcprg.eq.'NLO   ' .or. whcprg.eq.'LHE   ') then
         if(nhep.eq.9) then
            ihep=9
            p_jet1(1:4) = phep(1:4,ihep)
            p_jet2(1:4) = 0d0
         elseif(nhep.eq.10) then
            ihep=9
            p_jet1(1:4) = phep(1:4,ihep)
            ihep=10
            p_jet2(1:4) = phep(1:4,ihep)
         else
               stop 'pwhg_analysis_wrapper: nhep /=9 or 10' 
         endif
         nn=nhep-2   !-- pwhg event contains entry with 2 vector bosons as well as both leptons (so remove two resonances) 


c------> second case: PYTHIA shower:
      else
         p_jet1(1:4) = 0d0 !-- just pass dummy argument for 'makeplots'
         p_jet2(1:4) = 0d0 !-- just pass dummy argument for 'makeplots'
c------> scan for tracks of coloured particles:
         ptrack=0d0
         ntracks=0
         do ihep=1,nhep
c            print*, 'ihep=',ihep,isthep(ihep),idhep(ihep),phep(:,ihep)
            if ( isthep(ihep).gt.0                                   !--  means final state
     $           .and. .not.islepton(idhep(ihep))                     !--  not a lepton
     $           .and. .not.isnu(idhep(ihep))                         !--  not a neutrino
     $           .and. idhep(ihep).ne.25
     $           .and. abs(idhep(ihep)).ne.24
     $           .and. abs(idhep(ihep)).ne.23  ) then !--  not Higgs (we don't decay Higgs)
               if(ntracks.eq.maxtrack) then
                  write(*,*)'ERROR: too many tracks!'
                  write(*,*)'-> ntracks: ',ntracks
                  write(*,*)'-> Increase "maxtrack" in analysis-wrapper'
                  stop
               endif
c               print*,' --> ok, idhep=',idhep(ihep)
               ntracks=ntracks+1
               ptrack(1:4,ntracks)=phep(1:4,ihep)
            endif
         enddo
         nn=1234567890          !--- WB: number to identify POWHEG analysis (so that we do not clean 'ptrack')

      endif
c=====--- Check whether n.lepton = 2:
      if(foundLEP.lt.4) then
         write(*,*) 'ERROR: Fewer than four leptons found'
         write(*,*) 'p_ele', p_ele
         write(*,*) 'p_pos', p_pos
         write(*,*) 'p_nu', p_nu
         write(*,*) 'p_nub', p_nub
         print*, foundLEP
         call exit(1)
      elseif(foundLEP.gt.4) then
         write(*,*) 'ERROR: too many leptons found'
         call exit(1)
      endif

c=====--- Analysis:

c-----> call "analysis_nnlops-final"
C     arbitrary and useless (but just to keep the structure) 
      process = 100 
      call makeplots(.false.,process,nn,
     $     p_part1,p_part2,p_ele,p_pos,p_nu,p_nub,p_jet1,p_jet2,
     $     dsig)

      end
c-----------------------------------------------------------------------


c=======================================================================
c=======================================================================
c===--- Additional functions:
c=======================================================================
c=======================================================================
c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      function getcosth(pp)
      real*8 pp(4), getcosth

      getcosth=pp(3)
     $     /sqrt(pp(1)**2 + pp(2)**2 + pp(3)**2)

      return
      end function

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      function dot3_product(aa,bb)
      real*8 aa(3), bb(3)
      real*8 dot3_product

      dot3_product = aa(1)*bb(1) + aa(2)*bb(2) + aa(3)*bb(3)

      end function

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      function norm3(aa)
      real*8 aa(3)
      real*8 norm3

      norm3 = aa(1)**2 + aa(2)**2 + aa(3)**2

      end function

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      subroutine lab_to_CM(CM,p1,p_out) !CM is the CM frame                                                                                                                                                                     
      real * 8 CM(4),p1(4),beta(3),beta2, gamma, dummy(4),p_out(4)
      integer i,j
      
      beta2=0.0 
      do i=1, 3
         beta(i)=CM(i)/CM(4)  !Relatvistisc beta
         beta2=beta2+beta(i)**2 !Beta squared 

      end do
      gamma=1/sqrt(1-beta2)     !Gamma factor
!     !Here we boost to the CM frame
      dummy(4)=gamma*p1(4)
      do i=1,3
         dummy(4)=dummy(4)-gamma*beta(i)*p1(i)
         dummy(i)=p1(i)-gamma*beta(i)*p1(4)
      end do
      do i=1,3
         do j=1,3
            dummy(i)=dummy(i)+(gamma-1)*beta(i)*beta(j)*p1(j)/beta2
         end do
      end do
      do i=1, 4
         p_out(i)=dummy(i)
      end do
      end

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      real * 8 p(4),y,eta,pt,mass,pv
      real *8 tiny
      parameter (tiny=1.d-5)
      !y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      call pwhg_getrapidity(p,y)
      pt=sqrt(p(1)**2+p(2)**2)
      pv=sqrt(pt**2+p(3)**2)
      if(pt.lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      else
         eta=0.5d0*log((pv+p(3))/(pv-p(3)))
      endif
      mass=sqrt(abs(p(4)**2-pv**2))
      end

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      function absvec(vv)

      real*8 absvec,vv(3)

      absvec=sqrt(vv(1)*vv(1) + vv(2)*vv(2) + vv(3)*vv(3))

      end function
