      subroutine init_processes
      implicit none
      include 'nlegborn.h'
      include 'constants.f' 
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_par.h'
      include 'LesHouches.h'
      integer i1,i2,i3,i4,i5,i6,i7,i9,id1,id2,ida1,ida2,idw1,idw2,k
      logical debug
      parameter (debug=.true.)
      integer j
      integer charge3(-6:6)
      data charge3 /-2,1,-2,1,-2,1,0,-1,2,-1,2,-1,2/
      real * 8 powheginput
      external powheginput
c     vector boson id and decay
c     lepton masses
      include 'cvecbos.h'
      include 'vvsettings.f'
      real *8 lepmass(3),decmass,decmass1,decmass2
      common/clepmass/lepmass,decmass,decmass1,decmass2
      logical condition

c      par_isrtinycsi = 0
c      par_isrtinyy = 0
c      par_fsrtinycsi = 0
c      par_fsrtinyy = 0

      if (powheginput("#zerowidth").eq.1) then 
         zerowidth = .true. 
         write(*,*) 'Zerowidth approximation' 
      else
         zerowidth = .false. 
         write(*,*) 'Generating off-shell W-bosons'
      endif         
      
      if (powheginput("#dronly").eq.1) then 
         dronly = .true. 
         write(*,*)  'Double resonant diagrams only'
c  cant have srdiags if zerowidth is true
      elseif (zerowidth) then
         write(*,*) 'Single resonant diagrams require off-shell W'
         write(*,*) 'Double resonant diagrams only'
         dronly = .true.
      else
         dronly = .false. 
         write(*,*)  'Including single resonant diagrams'
      endif

      if(powheginput("#withdamp").ne.0) then
         flg_withdamp = .true.
         flg_bornzerodamp = .true.
      else
         flg_withdamp = .false.
         flg_bornzerodamp = .false.
      endif

      lprup(1)=10000

c     index of the first coloured particle in the final state
c     (all subsequent particles are coloured)
      flst_lightpart=9

*********************************************************************
***********            BORN SUBPROCESSES              ***************
****  At the moment, CKM matrix is implicitly the unit matrix
****  This should be changed. 
*********************************************************************
      flst_nborn=0

      do i1=-nf,nf
         do i2=-nf,nf
            do id1=1,16
               do id2=1,16
                  call alloweddec(i1,i2,0,id1,id2,ida1,ida2,idw1,idw2)
                  if(idw1.eq.0) cycle
                  flst_nborn=flst_nborn+1
                  if(flst_nborn.gt.maxprocborn) goto 999
                  flst_born(1,flst_nborn)=i1
                  flst_born(2,flst_nborn)=i2
                  flst_born(3,flst_nborn)=idw1
                  flst_born(4,flst_nborn)=idw2
                  flst_born(5,flst_nborn)=id1
                  flst_born(6,flst_nborn)=ida1
                  flst_bornres(5,flst_nborn)=3
                  flst_bornres(6,flst_nborn)=3
                  flst_born(7,flst_nborn)=id2
                  flst_born(8,flst_nborn)=ida2
                  flst_bornres(7,flst_nborn)=4
                  flst_bornres(8,flst_nborn)=4
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

      do i1=-nf,nf
         do i2=-nf,nf
            do id1=1,16
               do id2=1,16
                  do i9=-nf,nf
                     call alloweddec(i1,i2,i9,id1,id2,ida1,ida2,
     1                    idw1,idw2)
                     if(idw1.eq.0) cycle
                     flst_nreal=flst_nreal+1
                     if(flst_nreal.gt.maxprocreal) goto 999
                     flst_real(1,flst_nreal)=i1
                     flst_real(2,flst_nreal)=i2
                     flst_real(3,flst_nreal)=idw1
                     flst_real(4,flst_nreal)=idw2
                     flst_real(5,flst_nreal)=id1
                     flst_real(6,flst_nreal)=ida1
                     flst_realres(5,flst_nreal)=3
                     flst_realres(6,flst_nreal)=3
                     flst_real(7,flst_nreal)=id2
                     flst_real(8,flst_nreal)=ida2
                     flst_realres(7,flst_nreal)=4
                     flst_realres(8,flst_nreal)=4
                     flst_real(9,flst_nreal)=i9
                  enddo
               enddo
            enddo
         enddo
      enddo

c      write(*,*) flst_nborn,flst_nreal
c      stop

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
 

      block data lepmass_data
      real *8 lepmass(3),decmass
      common/clepmass/lepmass,decmass
      data lepmass /0.51099891d-3,0.1056583668d0,1.77684d0/
      end


      subroutine alloweddec(i1,i2,i9,id1,id2,ida1,ida2,idw1,idw2)
      implicit none
c i1,i2: incoming partons; i9:outgoing parton;
c idfw: id of outgoing fermion in W decay
c idfz: id of outgoing fermion in Z decay
c Return values:
c idaw: id of outgoing antifermion in W decay
c idw: W id, returns 0 if not allowed
      integer i1,i2,i9,id1,id2,ida1,ida2,idw1,idw2
      integer charge3(-6:6)
      integer wch3
      data charge3 /-2,1,-2,1,-2,1,0,-1,2,-1,2,-1,2/
      logical isquark,islepton,isnu,isewup,isewdo
      real * 8 powheginput
c idw1=0: not allowed
      idw1 = 0
      if(.not.(isquark(id1).or.islepton(id1).or.isnu(id1))) return
      if(.not.(isquark(id2).or.islepton(id2).or.isnu(id2))) return
c No flavour changing production
      if(i1+i2-i9.ne.0) return
c one of i1,i2,i9 must be a gluon;
      if(i9.eq.0) then
         if(i1.eq.0) return
      elseif(i1.eq.0) then
         if(i2.eq.0) return
      elseif(i2.eq.0) then
         if(i9.eq.0) return
      else
         return
      endif
      if(isewup(id1)) then
         ida1=-(id1-1)
      else
         return
      endif
      if(isewdo(id2)) then
         ida2=-(id2+1)
      else
         return
      endif
      if(id1.eq.6.or.id2.eq.6.or.ida1.eq.-6.or.ida2.eq.-6) return

c User's restrictions to processes;
c do only mu+ e
      if(powheginput("#e+mu-").eq.1) then
         if(ida1.ne.-11.or.id2.ne.13) return
      endif
c End User's restrictions to processes
      idw1=24
      idw2=-24
      end


      
