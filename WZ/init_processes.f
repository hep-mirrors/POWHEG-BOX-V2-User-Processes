      subroutine init_processes
      implicit none
      include 'nlegborn.h'
      include 'constants.f'
      include 'ckm.f'
      include 'cabibbo.f'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_par.h'
      include 'LesHouches.h'
      integer i1,i2,id1,id2,ida1,idw,i9
      logical debug
      parameter (debug=.true.)
      integer j,k
      real * 8 powheginput
      external powheginput
      integer ckmint, srint
      include 'cvecbos.h'
      include 'vvsettings.f'
      
c      par_isrtinycsi = 0
c      par_isrtinyy = 0
c      par_fsrtinycsi = 0
c      par_fsrtinyy = 0

      if (powheginput("#zerowidth").eq.1) then 
         zerowidth = .true. 
         write(*,*) 'Zerowidth approximation' 
      else
         zerowidth = .false. 
         write(*,*) 'Generating off-shell Z-bosons '
      endif         
      
      if (powheginput("#dronly").eq.1) then 
         dronly = .true. 
         write(*,*) 'Double resonant diagrams only'
c  cant have srdiags if zerowidth is true
      elseif (zerowidth) then
         write(*,*) 'Single resonant diagrams require off-shell bosons'
         write(*,*) 'Double resonant diagrams only'
         dronly = .true.
      else
         dronly = .false. 
         write(*,*)  'Including single resonant diagrams'
      endif

      interference = (powheginput('#withinterference').ne.0)
      
c no interference if zerowidth is true
      interference=(interference).and.(.not. zerowidth)

      if(powheginput("#withdamp").ne.0) then
         flg_withdamp = .true.
         flg_bornzerodamp = .true.
      else
         flg_withdamp = .false.
         flg_bornzerodamp = .false.
      endif



c--   see if there is a diagonal CKM matrix
      if (powheginput("#diagCKM").eq.1) then 
         diagonal_CKM = .true. 
         write(*,*)'Using diagonal CKM matrix'
      else
         diagonal_CKM = .false. 
         write(*,*)'Using non-diagonal CKM matrix'
      endif
      
c     change the LHUPI id of the process according to vector boson id
c     and decay
c     10000+idup of first decay product of W + decay product of Z
      lprup(1)=10000+100*vdecaymodeW+vdecaymodeZ


c     index of the first coloured particle in the final state
c     (all subsequent particles are coloured)
      flst_lightpart=9


c Must set CKM matrix now; only processes with valid CKM
c couplings are retained
      Vud = 0.974d0
      call setckmmatrix



*********************************************************************
***********            BORN SUBPROCESSES              ***************
*********************************************************************
      flst_nborn=0
      do i1=-4,4
         do i2=-4,4
            do id1=1,16
               do id2=1,16
                  call alloweddec(i1,i2,0,id1,id2,ida1,idw)
                  if(idw.eq.0) cycle
                  flst_nborn=flst_nborn+1
c                  goto 32
                  if(flst_nborn.gt.maxprocborn) goto 999
                  flst_born(1,flst_nborn)=i1
                  flst_born(2,flst_nborn)=i2
                  flst_born(3,flst_nborn)=idw
                  flst_born(4,flst_nborn)=23
                  flst_born(5,flst_nborn)=id1
                  flst_born(6,flst_nborn)=ida1
                  flst_bornres(5,flst_nborn)=3
                  flst_bornres(6,flst_nborn)=3
                  flst_born(7,flst_nborn)=id2
                  flst_born(8,flst_nborn)=-id2
                  flst_bornres(7,flst_nborn)=4
                  flst_bornres(8,flst_nborn)=4
c 32               continue
               enddo
            enddo
         enddo
      enddo
      if (debug) then
         write(*,*) ' born processes',flst_nborn
         do j=1,flst_nborn
            write(*,*) (flst_born(k,j),k=1,nlegborn)
         enddo
      endif
     

*********************************************************************
***********            REAL SUBPROCESSES              ***************
*********************************************************************
      flst_nreal=0
      do i1=-4,4
         do i2=-4,4
            do id1=1,16
               do id2=1,16
                  do i9=-4,4
                     call alloweddec(i1,i2,i9,id1,id2,ida1,idw)
                     if(idw.eq.0) cycle
                     flst_nreal=flst_nreal+1
c                     goto 33
                     if(flst_nreal.gt.maxprocreal) goto 998
                     flst_real(1,flst_nreal)=i1
                     flst_real(2,flst_nreal)=i2
                     flst_real(3,flst_nreal)=idw
                     flst_real(4,flst_nreal)=23
                     flst_real(5,flst_nreal)=id1
                     flst_real(6,flst_nreal)=ida1
                     flst_realres(5,flst_nreal)=3
                     flst_realres(6,flst_nreal)=3
                     flst_real(7,flst_nreal)=id2
                     flst_real(8,flst_nreal)=-id2
                     flst_realres(7,flst_nreal)=4
                     flst_realres(8,flst_nreal)=4
                     flst_real(9,flst_nreal)=i9
c 33                  continue
                  enddo
               enddo
            enddo
 11         continue
         enddo
      enddo
      if (debug) then
         write(*,*) ' real processes',flst_nreal
         do j=1,flst_nreal
            write(*,*) (flst_real(k,j),k=1,nlegreal)
         enddo
      endif
      return
 998  write(*,*) 'init_processes: increase maxprocreal'
      call exit(-1)
 999  write(*,*) 'init_processes: increase maxprocborn'
      call exit(-1)
      end

      subroutine alloweddec(i1,i2,i9,idfw,idfz,idaw,idw)
      implicit none
      include 'constants.f'
      include 'ckm.f'
c i1,i2: incoming partons; i9:outgoing parton;
c idfw: id of outgoing fermion in W decay
c idfz: id of outgoing fermion in Z decay
c Return values:
c idaw: id of outgoing antifermion in W decay
c idw: W id, returns 0 if not allowed
      integer i1,i2,i9,idfw,idfz,idaw,idw
      integer charge3(-6:6)
      integer wch3
      data charge3 /-2,1,-2,1,-2,1,0,-1,2,-1,2,-1,2/
      logical isquark,islepton,isnu,isewup
      real * 8 powheginput
c idw=0: not allowed
      idw = 0
      if(.not.(isquark(idfw).or.islepton(idfw).or.isnu(idfw))) return
      if(.not.(isquark(idfz).or.islepton(idfz).or.isnu(idfz))) return
c one of i1,i2,i9 must be a gluon;
      if(i1*i2*i9.ne.0) return
      wch3=charge3(i1)+charge3(i2)-charge3(i9)
      if(abs(wch3).ne.3) return
      if(i9.eq.0) then
         if(vsq(i1,i2).eq.0) return
      endif
c if there is a radiated quark, take it as if CKM is diagonal.
c Flavour changing interactions are introduced at the LH level.
      if(i1.eq.0) then
         if(abs(i2-i9).gt.1) return
      elseif(i2.eq.0) then
         if(abs(i1-i9).gt.1) return
      endif
      if(isewup(idfw)) then
         if(wch3.lt.0) return
         idaw=-(idfw-1)
         if(abs(idaw).eq.6) return
      else
         if(wch3.gt.0) return
         idaw=-(idfw+1)
      endif
c Never allow top in the final state
      if(abs(i9).eq.6.or.abs(idfw).eq.6.or.abs(idaw).eq.6
     1     .or.idfz.eq.6) return

c User's restrictions to processes; Below are some examples.
c User's can easily add their own case.
      if(powheginput("#only-e").eq.1) then
         if(idfz.ne.11) return
         if(idfw.ne.11.and.idaw.ne.-11) return
      endif
      if(powheginput("#only-mu").eq.1) then
         if(idfz.ne.13) return
         if(idfw.ne.13.and.idaw.ne.-13) return
      endif
      if(powheginput("#only-mu").eq.1) then
         if(idfz.ne.15) return
         if(idfw.ne.15.and.idaw.ne.-15) return
      endif
      if(powheginput("#emumu").eq.1) then
         if(idfz.ne.13) return
         if(idfw.ne.11.and.idaw.ne.-11) return
      endif
      if(powheginput("#muee").eq.1) then
         if(idfz.ne.11) return
         if(idfw.ne.13.and.idaw.ne.-13) return
      endif
      if(powheginput("#etautau").eq.1) then
         if(idfz.ne.15) return
         if(idfw.ne.11.and.idaw.ne.-11) return
      endif
      if(powheginput("#mutautau").eq.1) then
         if(idfz.ne.15) return
         if(idfw.ne.11.and.idaw.ne.-11) return
      endif
      if(powheginput("#tauee").eq.1) then
         if(idfz.ne.11) return
         if(idfw.ne.15.and.idaw.ne.-15) return
      endif
      if(powheginput("#tauee").eq.1) then
         if(idfz.ne.11) return
         if(idfw.ne.15.and.idaw.ne.-15) return
      endif
      if(powheginput("#lhh").eq.1) then
         if(.not.isquark(idfz)) return
         if(.not.(islepton(idfw).or.isnu(idfw))) return
      endif
      if(powheginput("#hll").eq.1) then
         if(.not.islepton(idfz)) return
         if(.not.isquark(idfw)) return
      endif
c End User's restrictions to processes

      if(wch3.gt.0) then
         idw=24
      else
         idw=-24
      endif
      end


      
