      program normalize
      implicit none
      integer i,ii,j,k
      character * 1 cnum(9)
      data cnum/'1','2','3','4','5','6','7','8','9'/
      integer maxjet
      parameter (maxjet=3)
      
      integer nptmin
      parameter (nptmin=1)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin)
      
      integer nmjjmax
      parameter (nmjjmax=3)
      character * 4 cmjj(nmjjmax)
      real * 8 mjj(nmjjmax)
      character * 40 nomefile
      integer lun
      
      data cptmin/  '-030'/     !,  '-050',  '-100'/
      data ptminarr/   30d0/    !,    50d0,   100d0/
      
      data cmjj/  '-010' , '-250' , '-500'/
      data  mjj/   10d0  ,  250d0 ,  500d0/
      
      common/infohist/ptminarr,mjj,cnum,cptmin,cmjj
      save /infohist/
      
      call inihists

      write(*,*) "Input file..."
      read (*,*) nomefile
c      nomefile = 'pwgLHEF_analysis.top'
      call pwhgloadhistos(trim(nomefile))      

      call pwhghistnorm('sigmatot')
      
      do i=1,nptmin
         call pwhghistnorm('Njet'//cptmin(i))
         call pwhghistnorm('mjj'//cptmin(i))
         
         do ii=1,nmjjmax
            call pwhghistnorm('H-eta'//cptmin(i)//cmjj(ii))
            call pwhghistnorm('H-pt'//cptmin(i)//cmjj(ii))

            do j=1,maxjet
               call pwhghistnorm('j'//cnum(j)//'-eta'//cptmin(i)//cmjj(ii))
               call pwhghistnorm('j'//cnum(j)//'-pt'//cptmin(i)//cmjj(ii))
               call pwhghistnorm('j'//cnum(j)//'-ptzoom'//cptmin(i)//cmjj(ii)) 
            enddo
            
            do j=1,maxjet-1
               do k=j+1,maxjet
                  call pwhghistnorm('j'//cnum(j)//'j'//cnum(k)//'-deta'//cptmin(i)//cmjj(ii))
                  call pwhghistnorm('j'//cnum(j)//'j'//cnum(k)//'-delphi'//cptmin(i)//cmjj(ii))
                  call pwhghistnorm('j'//cnum(j)//'j'//cnum(k)//'-dphior'//cptmin(i)//cmjj(ii)) 
               enddo
            enddo
            
         enddo
      enddo

      lun = len(trim(nomefile))
      nomefile = nomefile(1:lun-4)      
      nomefile = trim(nomefile)//"_norm"
      call pwhgtopout(nomefile)

      write(*,*) "DONE"
      end


      subroutine pwhghistnorm(str)
c     extracts sum&errsum for histo str and normalize
      implicit none
      include 'pwhg_bookhist-multi-new.h'
      character * (*) str
      integer j,k,ind1
      real * 8 sum,errsum,errsum2

      sum = 0d0
      errsum2 = 0d0
      errsum = 0d0

c      write(*,*) "histo :: ",str
      
      do j=1,jhist
         if(hist_ptr(j)%id.eq.str) then
            ind1=j
         endif
      enddo
      
      if(ind1.eq.0) then
         write(*,*) ' pwhgoperatehisto: histogram ',trim(str),
     1        ' not found, exiting ...'
         call exit(-1)
      endif

      do k=1,hist_ptr(ind1)%nbins
         sum     = sum + hist_ptr(ind1)%yhistarr2(1,k) 
         errsum2 = errsum2 + hist_ptr(ind1)%errhistarr2(1,k)**2 
      enddo
      errsum = sqrt(errsum2)
      
c      write(*,*) "sum : ", sum
c      write(*,*) "errsum : ", errsum

c     divide by total cross section
      sum = sum *(hist_ptr(ind1)%xhistarr(2) - hist_ptr(ind1)%xhistarr(1))

      
c      write(*,*) ind1, hist_ptr(ind1)%xhistarr(1)

      write(*,*) str, sum
      
      call pwhgoperatehisto1('/',sum,str)
      end



      
c$$$      subroutine init_hist_N
c$$$      implicit none
c$$$      include  'LesHouches.h'
c$$$      include 'pwhg_math.h'
c$$$      integer j,k,i,ii
c$$$      real * 8 dy,dpt,dr
c$$$      character * 1 cnum(9)
c$$$      data cnum/'1','2','3','4','5','6','7','8','9'/
c$$$      integer maxjet
c$$$      parameter (maxjet=3)
c$$$      
c$$$      integer nptmin
c$$$      parameter (nptmin=1)
c$$$      character * 4 cptmin(nptmin)
c$$$      real * 8 ptminarr(nptmin)
c$$$      
c$$$      integer nmjjmax
c$$$      parameter (nmjjmax=3)
c$$$      character * 4 cmjj(nmjjmax)
c$$$      real * 8 mjj(nmjjmax)
c$$$      
c$$$      data cptmin/  '-030'/     !,  '-050',  '-100'/
c$$$      data ptminarr/   30d0/    !,    50d0,   100d0/
c$$$      
c$$$      data cmjj/  '-010' , '-250' , '-500'/
c$$$      data  mjj/   10d0  ,  250d0 ,  500d0/
c$$$      
c$$$      common/infohist/ptminarr,mjj,cnum,cptmin,cmjj
c$$$      save /infohist/
c$$$
c$$$      call inihists
c$$$
c$$$      dy=0.5d0
c$$$      dpt=20d0
c$$$      dr=1d0
c$$$
c$$$      call bookupeqbins('sigmatot-R', 1d0,0d0,1d0)
c$$$      
c$$$      do i=1,nptmin
c$$$c     total cross section sanity check
c$$$         call bookupeqbins('Njet'//cptmin(i)//'-R',1d0,-0.5d0,5.5d0)
c$$$
c$$$         call bookupeqbins('mjj'//cptmin(i)//'-R',50d0,0d0,1500d0)
c$$$
c$$$         
c$$$         do ii=1,nmjjmax
c$$$            call bookupeqbins('H-eta'//cptmin(i)//cmjj(ii)//'-R',
c$$$     $           dy,-5d0,5d0)
c$$$            call bookupeqbins('H-pt'//cptmin(i)//cmjj(ii)//'-R',
c$$$     $           dpt,0d0,800d0)
c$$$         
c$$$            do j=1,maxjet
c$$$               call bookupeqbins('j'//cnum(j)//'-eta'//cptmin(i)
c$$$     $              //cmjj(ii)//'-R', dy, -5d0, 5d0)
c$$$               call bookupeqbins('j'//cnum(j)//'-pt'//cptmin(i)
c$$$     $              //cmjj(ii)//'-R', dpt, 0d0, 800d0)
c$$$               call bookupeqbins('j'//cnum(j)//'-ptzoom'//cptmin(i)
c$$$     $              //cmjj(ii)//'-R', 2d0, 1d0, 151d0)
c$$$            enddo
c$$$                        
c$$$            do j=1,maxjet-1
c$$$               do k=j+1,maxjet
c$$$                  call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
c$$$     1                 '-deta'//cptmin(i)//cmjj(ii)//'-R',dy,0d0,7d0)
c$$$                  call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
c$$$     1                 '-delphi'//cptmin(i)//cmjj(ii)//'-R'
c$$$     $                 ,pi/10,0d0,2*pi)
c$$$               enddo
c$$$            enddo
c$$$         enddo
c$$$         
c$$$      enddo
c$$$      end
