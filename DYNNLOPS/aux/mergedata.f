      program mergedata

c program to merge gnuplot data tables.
c a line starting with '#' followed by a line with 4 numbers
c is considered the beginning of a data set. All files to be
c merged must be identical in format.
c When the program starts, it expects as input a list of filenames,
c one per line, to be merged. An empty lines terminates the list.
      implicit none
      integer maxfiles,maxlines
      parameter (maxfiles=1000,maxlines=20000)
      character *(100) files(maxfiles)
      character *(100) line(maxlines,maxfiles)
      integer nlines(maxfiles)
      integer ifile,nfiles,ios,k,imethod,N_NaN
      character *(2) cmethod
      real * 8 v1,v2,v3,v4,y,err,integral,xsec,scale
      integer ilength,indexx
      external ilength, integral
      character *(100), c1, c2, c3
      integer i4

      
C     - kh modification started here >>>>>>>
      imethod=-1
      CALL getarg(1,cmethod)
      if(cmethod.eq.'1') then
         imethod=1
      elseif(cmethod.eq.'2') then
         imethod=2
      elseif(cmethod.eq.'3') then
         imethod=3
      elseif(cmethod.eq.'4') then
         imethod=4
      elseif(cmethod.eq.'5') then
         imethod=5
      elseif(cmethod.eq.'6') then
         imethod=6
      elseif(cmethod.eq.'7') then
         imethod=7
      elseif(cmethod.eq.'8') then
         imethod=8
      elseif(cmethod.eq.'9') then
         imethod=9
      elseif(cmethod.eq.'10') then
         imethod=10
      elseif(cmethod.eq.' ') then
         imethod=0 ! If nothing follows ./mergedata.exe on the command
                   ! line this setting is acquired which then steers the
                   ! code to read in the combination mode and input files
                   ! from the read command prompts as it had been doing.
      else
         write(6,*) 'Combination mode must be "1-10" or " " : ',
     $               cmethod
         write(6,*) 'Quitting ...'
         stop
      endif
      if(imethod.ne.0) then
         do ifile=1,maxfiles
            CALL getarg(ifile+1,files(ifile))         
            if(trim(files(ifile)).eq.'') then 
               nfiles=ifile-1
               write(6,*) 'mergedata.exe found',nfiles,
     $              'files on the command line ...'
               goto 9
            endif
         enddo
      endif
 9    continue

      if(imethod.eq.0) then
C - <<<<<<< kh modification ended here.
      write(*,*) ' enter 1 for combining sets with equal statistics'
      write(*,*) ' 2 to combine uneven sets'
      write(*,*) ' 3 to add sets (like born+virtual+real ... etc'
      write(*,*) ' 4 to get maximum'
      write(*,*) ' 5 to get minimum'
      write(*,*) ' 6 to normalise all distributions'
      write(*,*) ' 7 to accumulate all distributions'
      write(*,*) ' 8 to multiply with scalar 
     $     (syntax: mergedata 8 file scalar)'
      write(*,*) ' 9 to divide with scalar
     $     (syntax: mergedata 9 file scalar)'
      write(*,*) ' 10 to divide two sets'
      read(*,*) imethod
      write(*,*) ' enter files'
      do ifile=1,maxfiles
         read(*,'(a)') files(ifile)
         if(files(ifile).eq.' ') then
            nfiles=ifile-1
            if(imethod.eq.6.and.nfiles.ne.1) then
               print*, 'Called with',nfiles, 'files and method', imethod
               print*, 'Should be called with only 1 file'
               print*, 'Exiting...'
               stop
            endif
            if((imethod.eq.8).or.(imethod.eq.9).and.nfiles.ne.1) then
               print*, 'Called with',nfiles, 'files and method', imethod
               print*, 'Should be called with 1 file and 1 scalar'
               print*, 'Exiting...'
               stop
            endif
            goto 10
         endif
      enddo
      write(*,*) ' too many files, increase maxfiles'
      call exit(-1)
      endif
 10   continue
c load data
      do ifile=1,nfiles
         open(unit=11,file=files(ifile),status='old')
         do k=1,maxlines+1
            read(unit=11,fmt='(a)',end=111) line(k,ifile)
            if(k.eq.maxlines+1) then
               write(*,*) ' too many lines in file, increase maxlines'
               call exit(-1)
            endif
            goto 12
 111        nlines(ifile)=k-1
            goto 11
 12         continue
         enddo
 11      continue
      enddo
      do ifile=1,nfiles
         if(nlines(ifile).ne.nlines(1)) then
            write(*,*) ' error: file', files(ifile),
     1           ' does not match in length'
            call exit(-1)
         endif
      enddo
      if((imethod.eq.8).or.(imethod.eq.9)) then
         write(*,*) 'Input scale to multiply with:'
         read(*,*) scale
         write(*,*), 'Scale is:', scale
      endif
      do k=1,nlines(1)
         N_NaN=0
         read(unit=line(k,1),fmt=*,iostat=ios) v1,v2,v3,v4
         if(ios.ne.0) then
            y=0d0
            err=0d0
            write(12,'(a)') line(k,1)(1:ilength(line(k,1)))
            if(imethod.eq.6) then
               read(unit=line(k,1),fmt=*,iostat=ios) c1,c2,c3,i4
               indexx=i4
               xsec=integral(line(:,1),nlines(1),indexx) !Compute integral of distribution
            endif
         else
            if(imethod.eq.1) then
               if(v3.ne.v3.or.v4.ne.v4.or.abs(v3).ge.1d100) then !Tests for NaN and infinities
                  write(*,*) 'Found NaN in line', k, 'of first file'
                  N_NaN=N_NaN+1
               else
                  y=v3
                  err=v4**2
               endif
            elseif(imethod.eq.2) then
               if(v4.ne.0) then
                  y=v3/v4**2
                  err=1/v4**2
               else
                  y=0
                  err=0
               endif
            elseif(imethod.eq.3) then
               y=v3
               err=v4**2
            elseif(imethod.eq.4) then
               y=v3
               err=v4**2               
            elseif(imethod.eq.5) then
               y=v3
               err=v4**2
            elseif(imethod.eq.6) then
               y=v3/xsec
               err=(v4)**2/xsec
            elseif(imethod.eq.7) then
               y=v3+y
               err=err**2+(v4)**2
            elseif(imethod.eq.8) then
               y=v3*scale
               err=(scale*v4)**2
            elseif(imethod.eq.9) then
               y=v3/scale
               err=(v4/scale)**2
            elseif(imethod.eq.10) then
                  y=v3
                  err=(v4/v3)**2
            endif
            do ifile=2,nfiles
               read(unit=line(k,ifile),fmt=*,iostat=ios) v1,v2,v3,v4
               if(imethod.eq.1.or.imethod.eq.3) then
                  if(v3.ne.v3.or.v4.ne.v4.or.abs(v3).ge.1d100) then !Tests for NaN and infinities
                     write(*,*) 'Found NaN in line', k, 'of file', ifile
                     N_NaN=N_NaN+1
                  else
                     y=y+v3
                     err=err+v4**2
                  endif
               elseif(imethod.eq.2) then
                  if(v4.ne.0) then
                     y=y+v3/v4**2
                     err=err+1/v4**2
                  endif
               elseif(imethod.eq.3) then
                  y=y+v3
                  err=err+v4**2
               elseif(imethod.eq.4) then
                  if(v3.gt.y) then
                     y=v3
                     err=v4**2
                  endif
               elseif(imethod.eq.5) then
                  if(v3.lt.y) then
                     y=v3
                     err=v4**2
                  endif
               elseif(imethod.eq.10) then
                  if(v3.ne.0d0) then
                     y=y/v3
                     err=y**2*(err+(v4/v3)**2)
                  else
                     y=0d0
                     err=0d0
                  endif
               endif
            enddo
            if(imethod.eq.1.and.(nfiles.ne.N_NaN)) then
               y=y/(nfiles-N_NaN)
               err=sqrt(err/(nfiles-N_Nan)**2)
            elseif(imethod.eq.2) then
               if(err.ne.0) then
                  y=y/err
                  err=1/sqrt(err)
               else
                  y=0
                  err=0
               endif
            elseif(imethod.ge.3) then
               err=sqrt(err)
            endif
            write(12,'(4(1x,d16.8))') v1,v2,y,err
         endif
      enddo
      end


      function ilength(line)
      integer ilength
      character *(*) line
      ilength=len(line)
      do j=ilength,1,-1
         if(line(j:j).ne.' ') then
            ilength=j
            return
         endif
      enddo
      ilength=0
      end

      function integral(line, nlines,indexx)
      implicit none
      real * 8 integral
      integer maxfiles,maxlines
      parameter (maxfiles=1000,maxlines=15000)
      character *(100) file
      character *(100) line(maxlines)
      integer nlines,index, indexx
      integer ios,k
      real * 8 v1,v2,v3,v4
      character *(100), c1, c2, c3
      integer i4
      integer ilength
      external ilength
      index=0
      
      integral=0d0
      do k=1,nlines
         read(unit=line(k),fmt=*,iostat=ios) v1,v2,v3,v4
         if(ios.ne.0) then
            read(unit=line(k),fmt=*,iostat=ios) c1,c2,c3,i4
            if(ios.eq.0) then
               index=i4
            endif
         else
            if(index.eq.indexx) then
               integral=integral+v3*(v2-v1)
            endif
         endif
         if(index.gt.indexx) return
      enddo

      end


