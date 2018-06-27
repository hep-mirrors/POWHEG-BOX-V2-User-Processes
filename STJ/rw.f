      program leshouchesanal
      implicit none
      include 'LesHouches.h'
      integer j,nev
      character * 50 file
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      integer iun
      common/c_unit/iun
      logical istat
      data    istat/.false./
c     let the analysis subroutine know that it is run by this program
      WHCPRG='LHE   '
      call rw_opencountunit(nev,iun,file)
      call upinit
      call init_hist 
      do j=1,nev
         call upevnt
         if(nup.eq.0) then
            write(*,*) ' nup = 0 skipping event'
            goto 111
         endif
         call lhuptohepevt(j)
         if(abs(idwtup).eq.3) xwgtup=xwgtup*xsecup(1)
         call analysis(xwgtup,file)
         call pwhgaccumup
         if (mod(j,20000).eq.0) then
            write(*,*) "# of events processed =",j
            call lheanend
         endif
111     continue
      enddo
      call lheanend
      write(*,*) 'EVENTS FOUND : ',nev
      inquire(FILE='bornVarsEtc.txt',EXIST=istat)
      if(istat) then
         inquire(FILE='bornVarsEtc.txt',OPENED=istat)
         if(istat) then
            inquire(FILE='bornVarsEtc.txt',NUMBER=iun)
            write(iun,'(A)') '{EndOfData}'
            write(iun,'(A)') '}'
         else
            call newunit(iun)
            open(unit=iun,file='bornVarsEtc.txt',
     $           status='old',position='append')
            write(iun,'(A)') '{EndOfData}'
            write(iun,'(A)') '}'
            write(*,'(/,A)') '***************************************'
            write(*,'(/,A)') ' If loading bornVarsEtc.txt into       '
            write(*,'(A)'  ) ' Mathematica remember to take care of, '
            write(*,'(A)'  ) ' or delete, the dummy final entry in   '
            write(*,'(A)'  ) ' the data array ...                    '
            write(*,'(/,A)') '***************************************'
         endif
      endif
      end

      subroutine lheanend
      character * 20 pwgprefix
      character * 100 filename
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      include 'pwhg_rnd.h'
      if(rnd_cwhichseed.ne.'none') then
         filename=pwgprefix(1:lprefix)//'LHEF_analysis-'
     1        //rnd_cwhichseed
      else
         filename=pwgprefix(1:lprefix)//'LHEF_analysis'
      endif
      call pwhgsetout
      call pwhgtopout(filename)
      end
      
      subroutine UPINIT
      implicit none
      integer iun
      common/c_unit/iun
      call lhefreadhdr(iun)
      end

      subroutine UPEVNT
      integer iun
      common/c_unit/iun
      call lhefreadev(iun)
      end

      subroutine lhuptohepevt(n)
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      integer ihep,mu,n
      
      nhep=nup
      nevhep=n
      do ihep=1,nhep
         isthep(ihep)=istup(ihep)
         idhep(ihep)=idup(ihep)
         do mu=1,2
            jmohep(mu,ihep)=mothup(mu,ihep)
         enddo
         do mu=1,5
            phep(mu,ihep)=pup(mu,ihep)
         enddo
      enddo
      end
