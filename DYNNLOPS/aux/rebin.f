      implicit none
      integer maxfiles,maxlines
      parameter (maxfiles=1000,maxlines=15000)
      character *(200) file
      character *(100) line(maxlines)
      character *(3) lin_log,tmp
      integer nlines,index, indexx, first, last,i, lower_bin, upper_bin
      integer ifile,nfiles,ios,k,N_NaN,tmp_index
      character cmethod
      real * 8 v1,v2,v3,v4
      real * 8 u1,u2,u3,u4,base
      character *(100), c1, c2, c3
      integer i4
      integer ilength
      external ilength

      call getarg(1,file)
      if(file.eq.' ') goto 999
      call getarg(2,tmp)
      if(tmp.eq.' ') goto 999
      read(tmp,*) indexx      
      call getarg(3,tmp)
      if(tmp.eq.' ') goto 999
      read(tmp,*) lower_bin
      call getarg(4,tmp)
      if(tmp.eq.' ') goto 999
      read(tmp,*) upper_bin
      call getarg(5,lin_log)
      if(lin_log.ne.'lin'.and.lin_log.ne.'log') lin_log='lin'
      if(lin_log.eq.'log') then
         call getarg(6,tmp)
         if(tmp.eq.' ') then
            base=10d0
         else
            read(tmp,*) base
         endif
      endif
      if(lin_log.eq.'lin') then
         write(*,'(a,/,a,a,/,a,i4,/,a,i4,/,a,i4,/,a)') 
     $        'Found the following on the command line:',
     $        'File: ', trim(file),
     $        'index', indexx,
     $        'lower bin', lower_bin,
     $        'upper bin', upper_bin,
     $        'Assuming linear scale'
      elseif(lin_log.eq.'log') then
         write(*,'(a,/,a,a,/,a,i4,/,a,i4,/,a,i4,/,a,a,/,a,f16.8)') 
     $        'Found the following on the command line:',
     $        'File:', trim(file),
     $        'index: ', indexx,
     $        'lower bin: ', lower_bin,
     $        'upper bin: ', upper_bin,
     $        'lin_log: ', lin_log,
     $        'base: ', base
      endif
      if(lower_bin.ge.upper_bin) then
         write(*,*) 'lower_bin > upper_bin. Exiting.'
         stop
      endif
      goto 1
 999  write(*,'(a,a,/,/,a,/,a,/,a,/,a,/,a,/,a,/,a,/,a,/,a,/)') 
     $     './rebin <file> <index > <lower bin> <upper bin> ',
     $     '[<lin/log>] [<log base>]',
     $     'Ex.: ./rebin file.txt 1 5 6 log 10',
     $     '',
     $     'The script will add together all bins in the range',
     $     'lower bin to upper bin. The default behaviour is to',
     $     'expect a linear histogram. If the histogram has been',
     $     'binned with a logarithmic scale the flag "log" has to',
     $     'be set together with a base for the log. Default is',
     $     'base 10. The index of the histogram is defined as a',
     $     'line beginning with # (zero indexed)'
      return
 1    continue
      open(unit=11,file=file,status='old')
      open(unit=12,file='rebinned.top')
      do k=1,maxlines+1
         read(unit=11,fmt='(a)',end=111) line(k)
         if(k.eq.maxlines+1) then
            write(*,*) ' too many lines in file, increase maxlines'
            call exit(-1)
         endif
         goto 12
 111     nlines=k-1
         goto 11
 12      continue
      enddo
 11   continue
      index=0
      
      last = nlines
      tmp_index=0
      do k=1,nlines
         tmp = line(k) 
         if (tmp(1:1) .eq. '#') then 
            read(unit=line(k),fmt=*,iostat=ios) c1,c2,c3,i4
            index=tmp_index
            if(index.eq.indexx) then
               first=k+1
               write(*,*) trim(line(k))
            elseif(index.eq.(indexx+1)) then
               last=k-3
               goto 100
            endif
            tmp_index=tmp_index+1
         endif
      enddo
 100  continue
      if(lower_bin.lt.1.or.upper_bin.gt.(last-first+1)) then
         write(*,*) 'Out of range. Exiting.'
         write(*,*) 'Histogram has ',(last-first+1), ' bins' 
         stop
      endif
      do k=1,nlines
         u1=0d0
         u2=0d0
         u3=0d0
         u4=0d0
         read(unit=line(k),fmt=*,iostat=ios) v1,v2,v3,v4
         if(k.lt.(first+lower_bin-1).or.k.gt.(first+upper_bin-1)) then
            if(ios.ne.0) then
               write(12,'(a)') line(k)(1:ilength(line(k)))
            else
               write(12,'(4(1x,d16.8))') v1,v2,v3,v4
            endif
         elseif(k.eq.(first+lower_bin-1)) then
            u1=v1
            write(*,'(i4,a,4(1x,d16.8))') ,k,': ',v1,v2,v3,v4
            do i=k,first+upper_bin-1
               read(unit=line(i),fmt=*,iostat=ios) v1,v2,v3,v4
               u2=v2
               if(lin_log.eq.'lin') then
                  u3=u3+v3*(v2-v1)
                  u4=u4+(v4*(v2-v1))**2
               elseif(lin_log.eq.'log') then
                  u3=u3+v3*(base**v2-base**v1)
                  u4=u4+(v4*(base**v2-base**v1))**2
               else
                  write(*,*) 'lin_log not recognized correctly'
                  stop
               endif
            enddo
            if(lin_log.eq.'lin') then
               u3=u3/(u2-u1)
               u4=sqrt(u4)/(u2-u1)
            elseif(lin_log.eq.'log') then
               u3=u3/(base**u2-base**u1)
               u4=sqrt(u4)/(base**u2-base**u1)
            else
               write(*,*) 'lin_log not recognized correctly'
               stop
            endif
            write(12,'(4(1x,d16.8))') ,u1,u2,u3,u4
         else
            write(*,'(i4,a,4(1x,d16.8))') ,k,': ',v1,v2,v3,v4
         endif
         
      enddo
      write(*,*) 'Has been combined'
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
