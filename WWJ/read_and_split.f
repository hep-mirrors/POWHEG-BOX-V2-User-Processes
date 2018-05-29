c     trivial little program to read a bunch of 'randomly' sized event files
c     and writeout equally-sized files.
c     max_ev_ofile = number of events in resized files
c     list of input files and max_ev_ofile needs be hardcoded
c     This program has not been tested extensively!

      implicit none
      integer oun,iun,ios,maxev,nfilesin,ifile,nev,iev,oev(10)
     $     ,max_ev_ofile,ofile,iret,aun,ii
      character * 30 file,filein(100),fileout(100)
      character * 7 string
      character * 500 lstring
      character *14 fout_prefix,astring
      
      iun=100
      oun=101
      aun=105
      
      max_ev_ofile=50000

      filein(1)='pwgevents-rwgt-0101.lhe'
      filein(2)='pwgevents-rwgt-0102.lhe'
      filein(3)='pwgevents-rwgt-0103.lhe'
      nfilesin=3

      if(nfilesin.ge.100) then
         write(*,*) 'Too many input files. By default max is 100'
         stop
      endif

      fout_prefix='resized_events'
      
c     fileout(1)='resized_events_1.lhe'
c     fileout(2)='resized_events_2.lhe'
c     fileout(3)='resized_events_3.lhe'
c     fileout(4)='resized_events_4.lhe'
c     fileout(5)='resized_events_5.lhe'
c     fileout(6)='resized_events_6.lhe'
c     fileout(7)='resized_events_7.lhe'

c     open 1st output file and initialize counter
      ofile=1
      oev(:)=0
      
      do ifile=1,nfilesin
         file=trim(filein(ifile))

c     open input file
         open(unit=iun,status='old',iostat=ios,
     1     file=file)
         write(*,*) ' Opened event file ',file
c     count events
         write(*,*) ' Counting events in ', file
         write(*,*) ' This may take some time...'
         maxev=0
 1       continue
         read(unit=iun,fmt='(a)',end=2) string
         if(string.eq.'</event') then
            maxev=maxev+1
            goto 1
         endif
         goto 1
 2       continue
         nev=maxev
         write(*,*) ' Found ',nev,' events in file ',file
c     rewind file
         rewind(iun)

c     read and store header (do this just for the first input file)
         if(ifile.eq.1) then
            write (astring,'(I0)') ofile
            fileout(ofile)=fout_prefix//'_'//trim(astring)//'.lhe'
            open(unit=oun,status='replace',iostat=ios,
     1           file=fileout(ofile))
            call lhrwgt_copyheader(iun,oun)
         endif


 101     continue
         call  lhefreadevnew(iun,oun,iret,lstring)
         if(iret.eq.-1) then
            print*, 'at the end of input file ',ifile
            goto 102
         endif

         oev(ofile)=oev(ofile)+1
         write(oun,'(a)') '</event>'
         
         if(oev(ofile).eq.max_ev_ofile) then
            print*, 'output file ',trim(astring),' completed: ',fileout(ofile)
            close(oun)
            ofile=ofile+1
            if(ofile.ge.100) then
               write(*,*) 'Too many output files. By default max is 100'
               stop
            endif
            write (astring,'(I0)') ofile
            fileout(ofile)=fout_prefix//'_'//trim(astring)//'.lhe'
            open(unit=oun,status='replace',iostat=ios,
     1           file=fileout(ofile))
cccccccccccccccc
c     copy over the header
            open(unit=aun,status='old',iostat=ios,
     1           file=fileout(1))
            call lhrwgt_copyheader(aun,oun)
            close(aun)
cccccccccccccccc            
            goto 101
         else
            goto 101
         endif

 102     continue

         close(iun)
         
      enddo
      

      print*, '===================================================='
      print*, 'output files:'
      do ii=1,ofile
         print*, fileout(ii)
      enddo
      
      if(oev(ofile).ne.max_ev_ofile) then
      print*, '===================================================='         
         print*, fileout(ofile)
         print*, 'last output file DOES NOT have same number of events'
         print*, 'as the others:  ',max_ev_ofile,oev(ofile)
         print*, '*** BE CAREFUL ***'
      endif
      print*, '===================================================='
      
      
      end



cccccccccccccccccccccccccccccccc
c     The following lines have been copy-pasted from
c     pwhgreweight.f, and minor modifications were also made.
cccccccccccccccccccccccccccccccc
c$$$      subroutine pwhgnewweight(iunin,iunrwgt)
c$$$      implicit none
c$$$      integer iunin,iunrwgt
c$$$      character * 500 stringin
c$$$      integer iret
c$$$      include 'nlegborn.h'
c$$$      include 'pwhg_flst.h'
c$$$      include 'pwhg_rad.h'
c$$$      include 'pwhg_flg.h'
c$$$      include 'pwhg_st.h'
c$$$      include 'pwhg_pdf.h'
c$$$      include 'LesHouches.h'
c$$$      integer maxev
c$$$      integer k
c$$$      integer gen_seed,gen_n1,gen_n2
c$$$      common/cgenrand/gen_seed,gen_n1,gen_n2
c$$$      real * 8 newweight
c$$$      logical pwhg_isfinite
c$$$      external pwhg_isfinite
c$$$      character * 3 whichpdfpk
c$$$      character * 200 string
c$$$      real * 8 powheginput
c$$$      external powheginput
c$$$      call lhefreadevnew(iunin,iunrwgt,iret,stringin)
c$$$      if(iret.lt.0) then
c$$$         write(*,*) ' End of event file! Aborting ...'
c$$$         call exit(-1)
c$$$      endif
c$$$      call setrandom(gen_seed,gen_n1,gen_n2)
c$$$      if(rad_type.eq.1) then
c$$$         call gen_btilderw
c$$$         newweight=rad_btilde_arr(rad_ubornidx)*
c$$$     1        rad_btilde_sign(rad_ubornidx)
c$$$         if(flg_fullrwgt) then
c$$$            call fullrwgt(newweight)
c$$$         endif
c$$$      elseif(rad_type.eq.2) then
c$$$         call gen_sigremnantrw
c$$$         newweight=rad_damp_rem_arr(rad_realalr)
c$$$      elseif(rad_type.eq.3) then
c$$$         call gen_sigremnantrw
c$$$         newweight=rad_reg_arr(rad_realreg)
c$$$      else
c$$$         write(*,*) 'Error in pwhgnewweight, invalid rad_type: ',
c$$$     $        rad_type
c$$$         call exit(-1)
c$$$      endif
c$$$
c$$$      if(.not.pwhg_isfinite(newweight)) newweight=0d0
c$$$      write(string,*) '#new weight,renfact,facfact,pdf1,pdf2',
c$$$     1        xwgtup*newweight/rad_currentweight,st_renfact,
c$$$     2        st_facfact,pdf_ndns1,pdf_ndns2,' ',whichpdfpk()
c$$$      write(iunrwgt,'(a)') trim(adjustl(string))
c$$$
c$$$      if(adjustl(stringin).eq.'<rwgt>') then
c$$$         write(iunrwgt,'(a)') trim(stringin)
c$$$         do k=1,1000000
c$$$            read(unit=iunin,fmt='(a)',end=999,err=999) stringin
c$$$            if(stringin.ne.'</rwgt>') then
c$$$               write(iunrwgt,'(a)') trim(stringin)
c$$$            else
c$$$               call lhrwgt_writeweight
c$$$     1              (iunrwgt,xwgtup*newweight/rad_currentweight)
c$$$               write(iunrwgt,'(a)') trim(stringin)
c$$$               return
c$$$            endif
c$$$         enddo
c$$$      else
c$$$         write(iunrwgt,'(a)') trim(stringin)
c$$$      endif
c$$$      return
c$$$ 999  continue
c$$$      write(*,*) 'Did not find </rwgt> after <rwgt>'
c$$$      write(*,*) 'in Les Houches file. Exiting ...'
c$$$      call exit(-1)
c$$$      end
c$$$
c$$$
c$$$      subroutine gen_btilderw
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'pwhg_flst.h'
c$$$      integer mcalls,icalls
c$$$      include 'cgengrids.h'
c$$$      real * 8 xx(ndiminteg)      
c$$$      real * 8 btilde
c$$$      external btilde
c$$$      mcalls=0
c$$$      icalls=0
c$$$      call gen(btilde,ndiminteg,xgrid,ymax,ymaxrat,xmmm,ifold,2,
c$$$     #    mcalls,icalls,xx)
c$$$      end
c$$$
c$$$      subroutine gen_sigremnantrw
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'pwhg_flst.h'
c$$$      include 'cgengrids.h'
c$$$      real * 8 xx(ndiminteg)
c$$$      integer mcalls,icalls
c$$$      real * 8 sigremnant
c$$$      external sigremnant
c$$$      mcalls=0
c$$$      icalls=0
c$$$      call gen(sigremnant,ndiminteg,xgridrm,ymaxrm,ymaxratrm,
c$$$     1 xmmmrm,ifoldrm,2,mcalls,icalls,xx)
c$$$      end
c$$$
c$$$
c$$$
c$$$      subroutine openoutputrw(iunrwgt)
c$$$      implicit none
c$$$      integer iunrwgt
c$$$      character * 20 pwgprefix
c$$$      integer lprefix
c$$$      common/cpwgprefix/pwgprefix,lprefix
c$$$      include 'pwhg_rnd.h'
c$$$      call newunit(iunrwgt)
c$$$      if(rnd_cwhichseed.ne.'none') then
c$$$         open(unit=iunrwgt,file=pwgprefix(1:lprefix)//'events-rwgt-'
c$$$     1        //rnd_cwhichseed//'.lhe'
c$$$     2     ,status='unknown')
c$$$      else
c$$$         open(unit=iunrwgt,file=pwgprefix(1:lprefix)//'events-rwgt.lhe'
c$$$     1     ,status='unknown')
c$$$      endif
c$$$      end

c...reads event information from a les houches events file on unit nlf. 
      subroutine lhefreadevnew(nlf,nuo,iret,string)
      implicit none
      integer nlf,nuo,iret
      character * 500 string
      include 'LesHouches.h'
      integer i,j
      iret=0
 1    continue
      string=' '
      read(nlf,fmt='(a)',err=777,end=666) string
      write(nuo,'(a)') trim(string)
      if(string.eq.'</LesHouchesEvents>') then
         goto 998
      endif
      if(string(1:6).eq.'<event') then
c on error try next event. The error may be cause by merging
c truncated event files. On EOF return with no event found
         read(nlf,fmt='(a)',err=777,end=666) string
         write(nuo,'(a)') trim(string)
         read(string,fmt=*,end=998,err=1)
     1        nup,idprup,xwgtup,scalup,aqedup,aqcdup
         do i=1,nup
            read(nlf,'(a)',err=777,end=666) string
            write(nuo,'(a)') trim(string)
            read(string,fmt=*,end=998,err=1)
     1           idup(i),istup(i),mothup(1,i),
     &           mothup(2,i),icolup(1,i),icolup(2,i),(pup(j,i),j=1,5),
     &           vtimup(i),spinup(i)
         enddo
         call lhefreadextrarw(nlf,nuo,iret,string)
c Go on reading, find the end of the weights section
         goto 999
      else
         goto 1
      endif
c no event found:
 777  continue
      write(*,*) "Error in reading"
      write(*,*) string
      call exit(-1)
 666  continue
      iret=-1
      return
 998  continue
      print *,"read </LesHouchesEvents>"
      iret=-1
      nup=0      
 999  end


      subroutine lhefwritetrailernw(iunin,iunout)
      implicit none
      integer iunin,iunout
      character * 500 string
 1    continue
      string=' '
      read(iunin,fmt='(a)',err=998,end=998) string
      write(iunout,'(a)') trim(string)
      if(string.eq.'</LesHouchesEvents>') then
         goto 998
      endif
      goto 1
 998  continue
      end



      subroutine lhefreadextrarw(nlf,nou,iret,string)
      implicit none
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      include 'pwhg_st.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      character * 500 string
      integer nlf,nou,iret
      logical readrw
      integer gen_seed,gen_n1,gen_n2
      common/cgenrand/gen_seed,gen_n1,gen_n2
      readrw = .false.
 1    continue
      read(unit=nlf,fmt='(a)',end=998) string
      if(string.eq.'<rwgt>'.or.
     1     string.eq.'</event>') then
c Don't write the end event record; first we must output the new weight
         return
      endif
      if(string.eq.'<event>') then
         if(.not.readrw) then
            write(*,*) 
     $ 'Error in lhefreadextra, while reading rwg informations'
            write(*,*)'Abort run'
            call exit(-1)
         endif
         backspace nlf
         return
      endif
      if(string.eq.'# Start extra-info-previous-event') then
         write(nou,'(a)') trim(string)
         read(nlf,'(a)') string
         write(nou,'(a)') trim(string)
         read(string(3:),*) rad_kinreg
         read(nlf,'(a)') string
         read(string(3:),*) rad_type
      endif
      write(nou,'(a)') trim(string)
      if(flg_newweight) then
c read a string; if it starts with #rwgt, read first rad_type from the
c string, then all other information, depending upon rad_type.
c set readrw to true
         string=adjustl(string)
         if(string(1:5).eq.'#rwgt') then
            string(1:5)=' '
c     do things
c            print*, 'FOUND'
            read(string,*) rad_type
            if(rad_type.eq.1) then
c     btilde
               read(string,*)rad_type,
     $              rad_ubornidx,rad_currentweight,
     $              gen_seed,gen_n1,gen_n2
            elseif(rad_type.eq.2) then
c     remnant
               read(string,*)rad_type,
     $              rad_realalr,rad_currentweight,
     $              gen_seed,gen_n1,gen_n2
            elseif(rad_type.eq.3) then
c     regular
               read(string,*)rad_type,
     $              rad_realreg,rad_currentweight,
     $              gen_seed,gen_n1,gen_n2
            else
               write(*,*) 'Invalid rad_type in lhefwriteevrw: ',rad_type
               call exit(-1)
            endif
c     if all went ok, set readrw to true
            readrw=.true.
         endif
      endif
      goto 1
 998  continue
      iret=-1
      end


c The following are routines for the implementation of the
c Les Houches standard for reweighting


      subroutine lhrwgt_writeweight(iun,weight)
      implicit none
      integer iun
      include 'pwhg_lhrwgt.h'
      double precision weight
      write(iun,'(a,e16.9,a)')
     1     "<wgt id='"//trim(adjustl(lhrwgt_id))//"'> ",
     2     weight,' </wgt>'
      end

      subroutine lhrwgt_writeheader(iun)
      implicit none
      integer iun
      include 'pwhg_lhrwgt.h'
      character * 200 tmpstring
      integer j,iret
      logical written,in_group
c This flag is set to true when the current weight has
c been written out
      written = .false.
      write(iun,'(a)') '<initrwgt>'
      if(lhrwgt_group_name.eq.' ') then
c Write all lines firs
         do j=1,lhrwgt_nheader
            write(iun,'(a)') trim(lhrwgt_header(j))
         enddo
      else
c this flag is set to true when we are writing out weights in
c the current group
         in_group = .false.
         do j=1,lhrwgt_nheader
            if(.not.written.and.in_group
     1           .and.adjustl(lhrwgt_header(j)).eq.'</weightgroup>')
     2           then
               write(iun,'(a)') "<weight id='"//
     1              trim(adjustl(lhrwgt_id))//
     2              "'>"//' '//trim(adjustl(lhrwgt_descr))
     3              //' </weight>'
               in_group = .false.
               written = .true.
            endif
            write(iun,'(a)') trim(lhrwgt_header(j))
            tmpstring = adjustl(lhrwgt_header(j))
            if(tmpstring(1:18).eq.'<weightgroup name=') then
               tmpstring = tmpstring(19:)
               call getquotedstring(tmpstring,tmpstring,iret)
               if(tmpstring.eq.lhrwgt_group_name) in_group = .true.
            endif
         enddo
      endif
      if(.not.written) then
         if(lhrwgt_group_name.ne.' ') then
            if(lhrwgt_group_combine.ne.' ') then
               write(iun,'(a)') "<weightgroup name='"
     1              //trim(lhrwgt_group_name)//"' combine='"
     1              //trim(lhrwgt_group_combine)//"'>"
            else
               write(iun,'(a)') "<weightgroup name='"
     1              //trim(lhrwgt_group_name)//"'>"
            endif
         endif
         write(iun,'(a)') "<weight id='"//
     1        trim(adjustl(lhrwgt_id))//
     1        "'>"//' '//trim(adjustl(lhrwgt_descr))//' </weight>'
         if(lhrwgt_group_name.ne.' ') then
            write(iun,'(a)') '</weightgroup>'
         endif
      endif
      write(iun,'(a)') '</initrwgt>'
      end

      subroutine lhrwgt_checkheader
      implicit none
      include 'pwhg_lhrwgt.h'
      character * (lhrwgt_max_header_columns) string
      integer j,iret
      do j=1,lhrwgt_nheader
         string = adjustl(lhrwgt_header(j))
         if(string(1:11).eq.'<weight id=') then
            call getquotedstring(string(12:),string,iret)
            if(string.eq.lhrwgt_id) then
               write(*,*) ' lhrwgt_checkheader: ERROR'
               write(*,*) ' lhrwgt_id ',trim(string),' already in use'
               call exit(-1)
            endif
         endif
      enddo
      end

      subroutine lhrwgt_readheader(iun)
      implicit none
      include 'pwhg_lhrwgt.h'
      integer iun
      character * (lhrwgt_max_header_columns+200) string,string0
      integer j,k
      do j=1,1000000
         read(iun,'(a)') string0
         string=adjustl(string0)
         if(string.eq.'<initrwgt>') then
            lhrwgt_nheader = 0
            do k=1,1000000
               read(iun,'(a)') string0
               string=adjustl(string0)
               if(string.ne.'</initrwgt>') then
                  lhrwgt_nheader = lhrwgt_nheader + 1
                  if(lhrwgt_nheader.gt.lhrwgt_maxnheader) then
                     write(*,*) '******** ERROR ******'
                     write(*,*) ' lhrwgt_readheader: '
                     write(*,*) 
     1                    ' found too many strings in header'
                     write(*,*) ' increase lhrwgt_maxnheader'
     1                    //' in include/pwg_lhrwgt.h'
                     call exit(-1)
                  endif                    
c check that the string fits
                  if(len(trim(string0)).gt.
     1                 lhrwgt_max_header_columns) then
                     write(*,*) '******** ERROR ******'
                     write(*,*) ' lhrwgt_readheader: '
                     write(*,*) 
     1                    ' found too long a string in the header'
                     write(*,*) 
     1                    ' increase lhrwgt_max_header_columns'
     1                    //' in include/pwg_lhrwgt.h'
                     call exit(-1)
                  endif
                  lhrwgt_header(lhrwgt_nheader) = trim(string0)
               else
                  return
               endif
            enddo
            write(*,*) '******** ERROR ******'
            write(*,*) ' lhrwgt_readheader: '
            write(*,*) ' didn;t find the end of the header'
            call exit(-1)
         endif
      enddo
      write(*,*) '******** ERROR ******'
      write(*,*) ' lhrwgt_readheader: '
      write(*,*) ' didn;t find the header'
      call exit(-1)
      end


      subroutine lhrwgt_copyheader(iunin,iunout)
      implicit none
      include 'pwhg_lhrwgt.h'
      integer iunin,iunout
      character * (400) string,string0
      integer j,k
      logical written,in_group
      do j=1,1000000
         read(unit=iunin,fmt='(a)',end=999,err=999) string0
         string=adjustl(string0)
c         print*, string
         if(string.eq.'<event>') then
            backspace(iunin)
c            call lhrwgt_readheader(iunin)
c            call lhrwgt_checkheader
c            call lhrwgt_writeheader(iunout)
            return
         else
            write(iunout,'(a)') trim(string0)
         endif
      enddo
 999  continue
      write(*,*) ' ERROR: did not find <event> in lhe file'
      call exit(-1)
      end

c$$$
c$$$      subroutine getreweightinput
c$$$      implicit none
c$$$      include 'pwhg_lhrwgt.h'
c$$$      call powheginputstring("#lhrwgt_group_name",lhrwgt_group_name)
c$$$      call powheginputstring("#lhrwgt_group_combine",
c$$$     1     lhrwgt_group_combine)
c$$$      call powheginputstring("#lhrwgt_id",lhrwgt_id)
c$$$      call powheginputstring("#lhrwgt_descr",lhrwgt_descr)
c$$$      end
c$$$
c$$$      subroutine printrwghthdr(iun)
c$$$      implicit none
c$$$      include 'pwhg_lhrwgt.h'
c$$$      INTEGER IUN
c$$$      if(lhrwgt_id.ne.' ') then
c$$$         write(iun,'(a)') '<initrwgt>'
c$$$         if(lhrwgt_group_name.ne.' ') then
c$$$            if(lhrwgt_group_combine.ne.' ') then
c$$$               write(iun,'(a)') "<weightgroup name='"
c$$$     1              //trim(lhrwgt_group_name)//"' combine='"
c$$$     1              //trim(lhrwgt_group_combine)//"'>"
c$$$            else
c$$$               write(iun,'(a)') "<weightgroup name='"
c$$$     1              //trim(lhrwgt_group_name)//"'>"
c$$$            endif
c$$$         endif
c$$$         write(iun,'(a)') "<weight id='"//trim(lhrwgt_id)
c$$$     1       //"'> "//trim(lhrwgt_descr)//" </weight>"
c$$$         if(lhrwgt_group_name.ne.' ') then
c$$$             write(iun,'(a)') "</weightgroup>"
c$$$          endif
c$$$         write(iun,'(a)') "</initrwgt>"
c$$$      endif
c$$$      end
c$$$
c$$$      subroutine printrwgtev(nlf,weight)
c$$$      implicit none
c$$$      integer nlf
c$$$      double precision weight
c$$$      include 'pwhg_lhrwgt.h'
c$$$      write(nlf,'(a,e16.9,a)')"<wgt id='"//trim(lhrwgt_id)//"'> ",
c$$$     1     weight,' </wgt>' 
c$$$      end
c$$$c From here to the end of file are the subroutines needed for full reweighting,
c$$$c that also includes the effect of the change in pdf's in the hardest radiation
c$$$
c$$$      subroutine readpowheginputinfo(nlf)
c$$$c If any information from the current lhe file is desired, get it here.
c$$$c In this case, we set the pdf's used for generating the file, that may
c$$$c be needed for reweighting.
c$$$      implicit none
c$$$      integer nlf
c$$$      character * 100 string
c$$$      character * 3 whichpdf
c$$$      include 'pwhg_pdf.h'
c$$$      integer j,ndns1,ndns2,lhans1,lhans2
c$$$      rewind(nlf)
c$$$      do j=1,1000000
c$$$         read(unit=nlf,fmt='(a)',end=999,err=999) string
c$$$         if(string(1:5) .eq. 'ndns1') then
c$$$            read(string(6:),*) ndns1
c$$$         elseif(string(1:5) .eq. 'ndns2') then
c$$$            read(string(6:),*) ndns2
c$$$         elseif(string(1:6) .eq. 'lhans1') then
c$$$            read(string(7:),*) lhans1
c$$$         elseif(string(1:6) .eq. 'lhans2') then
c$$$            read(string(7:),*) lhans2
c$$$         elseif(string(1:12) .eq. 'PDF package:') then
c$$$            if(adjustl(string(13:)) .eq. 'lha') then
c$$$               pdf_ndns1lhe = lhans1
c$$$               pdf_ndns2lhe = lhans1
c$$$               whichpdf = 'lha'
c$$$            elseif(adjustl(string(13:)) .eq. 'mlm') then
c$$$               pdf_ndns1lhe = ndns1
c$$$               pdf_ndns2lhe = ndns2
c$$$               whichpdf = 'mlm'
c$$$            else
c$$$               write(*,*) ' readpowheginputinfo: cannot identify'
c$$$               write(*,*) ' psf package ',trim(adjustl(string))
c$$$               call exit(-1)
c$$$            endif
c$$$            rewind(nlf)
c$$$            if(pdf_ndns1lhe .ne. pdf_ndns2lhe) then
c$$$               write(*,*)
c$$$     1      ' readpowheginputinfo: got two different pdf sets',
c$$$     2     ' for the two imcoming hadrons: ',
c$$$     3              pdf_ndns1lhe, pdf_ndns2lhe
c$$$               write(*,*) ' cannot handle that! exiting ...'
c$$$               call exit(-1)
c$$$            endif
c$$$            write(*,*) 
c$$$     1         ' readpowheginputinfo: got ',whichpdf,' set ',
c$$$     1         pdf_ndns1lhe,' from input lhe file: '
c$$$            return
c$$$         endif
c$$$      enddo
c$$$ 999  continue
c$$$      write(*,*) ' readpowheginputinfo: something wrong reading'
c$$$      call exit(-1)
c$$$      end
c$$$
