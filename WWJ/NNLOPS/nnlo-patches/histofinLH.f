      block data linlog_data
      implicit none
      include 'nplot.f'
      data linlog/150*'lin'/
      end

      subroutine histofin(xsec,xsec_err,itno,itmx)
c---  This outputs the final histograms for itno=0
c---  For itno>0, this is an intermediate result only
      implicit none
      include 'nplot.f'
      include 'histo.f'
      integer j,nlength,itno,itmx,nplotmax,L
      logical fin,snd
      common/fin/fin
      character*30 runstring
      character*72 runname,outfiledat,outfiletop,outfileerr,
     $     outfiletop3D,outfiletop1D
      character*3 oldbook
      double precision xsec,xsec_err
      double precision EHIST(4,40,100)   
      integer IHISTOMATCH(100),ICOUNTHISTO 
      common/runstring/runstring      
      common/runname/runname
      common/nlength/nlength
      common/nplotmax/nplotmax
      COMMON/EHISTO/EHIST,IHISTOMATCH,ICOUNTHISTO
      character*4 part,mypart
      common/mypart/mypart
      common/part/part
      integer order
      common/nnlo/order
      logical fldec
      common/fldec/fldec

C     Part is what it is computing
C     mypart is what is set at the beginning

C     Fin is true at the very last iteration
C     Snd is true when computing real after virt

      snd=.false.

      if((part.eq.'real').and.(mypart.eq.'tota')) snd=.true.


c     
c     Accumula i valori e i valori al quadrato per l'analisi statistica,
c     e svuota l'istogramma di accumulo.
c     

      do j=1,nplotmax
         call mopera(j,'A',j+20,j+40,1d0,1d0)
      enddo
      call pwhgaccumup   !-- [WB]
c      call pwhgaccumup3wb  !-- [WB], already included in pwhgaccumup
c$$$c--test step-by-step [WB]      
c$$$      print*,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
c$$$      print*,'nnlo--val,err: ',hist(1+20,2),hist(1+40,2)
c$$$      call stepprinter
c$$$      print*,'nnlo: ii=',ient(1+40)
c$$$      print*,'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'

      !--- [WB] modification: deleted above, added 'if' below
      if(itno.eq.itmx)then
         call strcat(runstring,'.top',outfiletop)
         
         open(unit=99,file=outfiletop,status='unknown')
         
c---  write out run info to top of files
         
         call writeinfo(99,xsec,xsec_err,itno)      
         
         
C     Complete statistical analysis
         
         
         do j=1,nplotmax
            
c     accumula j+1 riscalato in j e pone in j+2 la stima dell'errore
c     
            call mopera(j+20,'E',j+40,j,1d0,1d0)
            
            
c     
c     accumula l'errore in quadratura
c     
            call mopera(j+40,'Q',j+60,j+60,1d0,1d0)

         enddo

c$$$         j=1
c$$$         print*,'_nnlo--val,err: ',
c$$$     $        hist(j,2)*dble(itmx),hist(j+60,2)*dble(itmx)
c$$$         call histprinter
         


C     If this is the end rescale by itmx and put results,error in j,j+60

C     If not rescale by itmx and put results,error in j+80,j+100
C     Then clear j+20,j+40,j+60,j+80 and number of entries


            
         if(fin) then
            do j=1,nplotmax
               call mopera(j,'F',2,j,dfloat(itmx),1d0)
               call mopera(j+60,'F',2,j+60,dfloat(itmx),1d0)
            enddo
            call pwhgaddoutR    !-- [WB]
            call pwhgaddoutR3   !-- [WB]
            print*, '==============================================='
            print*, '====---------- called [R]-addout  ----------==='
            print*, '==============================================='
            call pwhgaddRV      !-- [WB]
            call pwhgaddRV3     !-- [WB]
            print*, '==============================================='
            print*, '====---------- called [RV]-addout  ---------==='
            print*, '==============================================='
c-- [WB]: printing of histograms:
c            call strcat(runstring,'3D.top',outfiletop3D)
c            open(unit=399,file=outfiletop3D,status='unknown')
c            call strcat(runstring,'1D.top',outfiletop1D)
c            open(unit=199,file=outfiletop1D,status='unknown')
            call pwhgtopout(runstring)     !-- [WB]
c            call pwhgtopout3    !-- [WB], already included in pwhgtopout
c            close(399) 
c            close(199) 
            print*, '==============================================='
            print*, '====---------- called pwhg_topout  ---------==='
            print*, '==============================================='
         else
            do j=1,nplotmax
               call mopera(j,'F',2,j+80,dfloat(itmx),1d0)
               call mopera(j+60,'F',2,j+100,dfloat(itmx),1d0)
               call mopera(j,'F',2,j,0d0,1d0) ! clear
               call mopera(j+20,'F',2,j+20,0d0,1d0) ! clear
               call mopera(j+40,'F',2,j+40,0d0,1d0) ! clear
               call mopera(j+60,'F',2,j+60,0d0,1d0) ! clear
               ihis(j,1)=0
               ihis(j+20,1)=0
               ihis(j+40,1)=0
               ihis(j+60,1)=0
            enddo
            call pwhgaddoutV    !-- [WB]
            call pwhgaddoutV3   !-- [WB]
            print*, '==============================================='
            print*, '====---------- called [V]-addout  ----------==='
            print*, '==============================================='
         endif     
            

C     If needed combine the histograms (used when computing real+virt)
         

         if(fin.and.(mypart.eq.'tota')) then
            if((order.ne.0).or.(fldec.eqv..true.)) then
c$$$               write(*,*) 'R-NNLO: y,err=',hist(1,2),hist(1+60,2)
c$$$               write(*,*) 'V-NNLO: y,err=',hist(1+80,2),hist(1+100,2)
               do j=1,nplotmax
                  call mopera(j,'+',j+80,j,1d0,1d0) ! sum real+virtual
C     Combine errors in quadrature
                  call mopera(j+60,'S',j,j+60,1d0,1d0) ! square it
                  call mopera(j+100,'S',j,j+100,1d0,1d0) ! square it
                  call mopera(j+60,'+',j+100,j+60,1d0,1d0) ! sum squares
                  call mopera(j+60,'R',j,j+60,1d0,1d0) ! takes square root 
               enddo
c---  WB: just check:
c               write(*,*) 'c-NNLO: y,err=',hist(1,2),hist(1+60,2)                  
            endif
         endif
         
C     Generate final topdrawer file
         do j=1,nplotmax
            call flush(6)  
            if(fin) then    
               call mfinal(j)
               call mtop(j,60+j,'x','y',linlog(j))
            else
               call mfinal(j+80)
               call mtop(j+80,100+j,'x','y',linlog(j))      
            endif
         enddo
      endif
      
      close (unit=99)
      
      return
      end
c-------------------------------------------------------------------------------



c$$$c-------------------------------------------------------------------------------
c$$$      subroutine histprinter
c$$$
c$$$      implicit none
c$$$      include 'pwhg_bookhist-new.h'
c$$$
c$$$      real*8 sum,sumsq,vall,errr,xxx
c$$$
c$$$      xxx=1d0/ient1(187)
c$$$
c$$$      sum=yhistarr1(2,187)
c$$$      sumsq=errhistarr1(2,187)
c$$$
c$$$      vall=sum
c$$$      errr=sqrt(sumsq-sum**2*xxx)
c$$$
c$$$      print*,'_pwhg--val,err: ',vall,errr
c$$$c      print*,'pwhg--val,err: ',yhistarr1(2,187),errhistarr1(2,187)
c$$$      print*,'---------------------------------------------------------
c$$$     $     ------------------------------------------------------------'
c$$$
c$$$      end
c$$$c-------------------------------------------------------------------------------
c$$$      subroutine stepprinter
c$$$
c$$$      implicit none
c$$$      include 'pwhg_bookhist-new.h'
c$$$
c$$$      print*,'pwhg--val,err: ',yhistarr1(2,187),errhistarr1(2,187)
c$$$      print*,'pwhg: ii=',ient1(187)
c$$$
c$$$      end
c$$$
c$$$
