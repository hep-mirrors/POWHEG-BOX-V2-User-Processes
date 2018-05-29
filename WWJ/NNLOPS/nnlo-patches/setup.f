      subroutine setup
      implicit none
      include 'constants.f'
      include 'virtonly.f'
      include 'realonly.f'
      include 'noglue.f'
      include 'lc.f'
      include 'cutoff.f'
      include 'maxwt.f'
      include 'masses.f'
      include 'process.f'
      include 'scale.f'
      include 'facscale.f'
      include 'zerowidth.f'
      include 'removebr.f'
      include 'clustering.f'
      include 'gridinfo.f'
      include 'limits.f'
      include 'alfacut.f'
      include 'pdfiset.f'
      include 'qcdcouple.f'
      include 'zcouple.f'
      include 'nlooprun.f'
      include 'rescoeff.f'
      include 'jetcuts.f'
      include 'flags.f'
CC
      include 'vegas_common.f'
      include 'nwz.f'
      include 'ewcharge.f'
      include 'dynamicscale.f'
      include 'runstring.f'
      include 'lhapdf.f'
      character *2 plabel(mxpart)
      logical ggzh
      common/ggzh/ggzh
      common/plabel/plabel
      integer order,notag,nqcdjets,nqcdstart,isub,nproc,ndec,ch
      common/nnlo/order
      common/notag/notag
      common/nqcdjets/nqcdjets,nqcdstart
      common/isub/isub
      double precision BrnRat,gamgambr,wwbr,zzbr,br0,mbrun,massfrun
      common/BrnRat/BrnRat
      common/nproc/nproc
      common/ndec/ndec

      double precision qtcut
      common/qtcut/qtcut      
      double precision qtcutdec
      common/qtcutdec/qtcutdec      
      logical flqtcut,fldec
      common/flqtcut/flqtcut
      common/fldec/fldec

      double precision beta1,H2qqdelta,H2qqD0
      common/Hstcoeff/beta1,H2qqdelta,H2qqD0

      logical isol
      common/isol/isol

C     Labels that identify the charged leptons

      integer i1,i2
      common/isolabel/i1,i2

      logical int
      common/int/int

      logical dorebin
      common/dorebin/dorebin

      character *12 format_string
      character *30  runstring2
      character *30  runstring3
      character *30  runstring4
      character *30  runstring5
      character *30  runstring6

      character *50 prefix
      character *36 pdfstring
      integer nset
      common/prefix/nset,prefix
      common/pdfstring/pdfstring

      character*4 part
      integer j
      logical makecuts
      integer nmin,nmax,n2,n3
      integer ih1,ih2,itmx1,itmx2,ncall1,ncall2,idum,rseed
      double precision rtsmin,sroot,LT
      double precision Mwmin,Mwmax,mbbmin,mbbmax
      double precision Rcut
      double precision ran2,randummy
      double precision cmass,bmass
      double precision mass2,width2,mass3,width3
      double precision amz,alphas
      double precision brwen,brzee,brtau,brtop,brznn,brcharm
      
      character *3 str1
      character *15 str2
      character *40 str3
      character *50 string
      character *30 mycard
      character *30 mytopfile

      integer pr,mysw
      common/pr/pr
      common/mysw/mysw


      common/couple/amz
      
      common/breit/n2,n3,mass2,width2,mass3,width3
      
      common/nmin/nmin
      common/nmax/nmax
      common/rtsmin/rtsmin
 

      common/part/part
      common/energy/sroot
      common/density/ih1,ih2
      common/iterat/itmx1,ncall1,itmx2,ncall2
      common/ranno/idum

CC
      double precision dipscale(0:40)
      common/dipolescale/dipscale

CC
      
      common/Rcut/Rcut
      common/makecuts/makecuts

      common/qmass/cmass,bmass

      common/rseed/rseed
      save /ranno/

      logical lhapdfs
      common/lhapdfs/lhapdfs

cccccccccccccccc
      double precision Vud,Vus,Vub,Vcd,Vcs,Vcb
      common/cabib/Vud,Vus,Vub,
     &             Vcd,Vcs,Vcb
ccccccccccccccccc

c-----> WB: type part (for grids/integration)
      integer type
      character*30 gridstring
      common/grid_file_string/gridstring


      lhapdfs=.false.

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c--- flags for specific processes
c Flag to include the aS^2 non DY contributions gg -> ZH (box+triangle heavy quark loops)
      ggzh=.false.
c Flag to include the NLO corrections in from H->b bbar final state (1 = include, 0 = not include)
!      fldec=.false. ! .true. !
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      isol=.false.
      clustering=.true.  ! DO NOT PUT FALSE, USE  algorithm='none' INSTEAD

CC Narrow width approximation for the final W/Z and H
      zerowidth=.false. !
!      zerowidth=.true. !
      
      Mwmin=10d0

      Mwmax=14d3

!      inclusive=.true.
!      algorithm='none'
!      algorithm='caal'
!      algorithm='ktal'
!      algorithm='ankt'

      algorithm='none'

      Rcut=0.4d0
!      Rcut=1.2d0

CC   Parameters used to define jets

      ptjetmin=20d0  ! ptmin !!!
      etajetmin=0d0
      etajetmax=40d0

      mbbmin=0d0
      mbbmax=14d3      

CC    Dynamic scale (if true muf=mur=q)
      dynamicscale=.false.
!      dynamicscale=.true.

      removebr=.false.

!      makecuts=.false.
      makecuts=.true.

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      virtonly=.false.
      realonly=.false.

      noglue=.false.
      ggonly=.false.
      gqonly=.false.

      nmin=1
      nmax=2

      colourchoice=0
      rtsmin=40d0     
      cutoff=0.0001d0

CC    

      Qflag=.true.
      Gflag=.true.


CC
!      aii=1d-2
!      aif=1d-2
!      afi=1d-2
!      aff=1d-2

      aii=1d0
      aif=1d0
      afi=1d0
      aff=1d0

 
CC    Adjust the grid at each iteration

      dorebin=.true.


CC    Read a previously saved grid

c      readin=.true.
      readin=.false.


      writeout=.true.
      ingridfile=''
      outgridfile=''

CC    Read inputfile


      read(*,*) sroot
      read(*,*) ih1,ih2
      read(*,*) nproc !decay mode
      read(*,*) hmass
      read(*,*) scale,facscale,scaledec  ! mur,muf
      read(*,*) order        
      read(*,*) part
      read(*,*) itmx1,ncall1
      read(*,*) itmx2,ncall2
      read(*,*) rseed          ! seed
      read(*,*) iset,nset     
      read(*,*) PDFname,PDFmember
      read(*,*) runstring
      read(*,*) pr
      read(*,*) fldec
c---> WB: read if you want do 1.grids or 2.integration and [gridstring for reading]:
      read(*,*) type,gridstring
      if(type.eq.1)then
         !--- STAGE1: Setting up grids:
         readin=.false.
         writeout=.true.
         outgridfile=''  !-- this will be overwritten in 'integration.f' with runstring
      elseif(type.eq.2)then
         !--- STAGE2: Integration
         readin=.true.
         writeout=.false.
         ingridfile=''
      else
         write(*,*) 'ERROR: which part do you want to do?'
         write(*,*) 'specify in input file'
         stop
      endif


         

!      scaledec=hmass 

      if(pr.ne.0) then! only if we want to write "ntuples"
      if(order.eq.0) runstring3=trim(runstring)//'_born.evt'
      if(order.ge.1) then
        runstring3=trim(runstring)//'_virt.evt'
        runstring4=trim(runstring)//'_real.evt'
      open (unit=121, file=runstring4, action='write', status='unknown')
      endif
      open (unit=120, file=runstring3, action='write', status='unknown')

      mycard=trim(runstring)//'_evt'
      mytopfile=trim(runstring)//'_top'
      open(unit=200,file=mycard,action='write',status='unknown')
      write(200,"(I1,6x,A24)") order,"[order]"
      write(200,"(I2,6x,A24)") pr,"[iterations recorded]"
cc       write(200,"(I2,6x,A24)") itmx2,"[iterations acc. run]"
      write(200,"(A4,6x,A24)") part,"[part]"
      write(200,*) mytopfile, "   [generated top file]"
      write(200,*) runstring3, "   [event file for born or virt]"
      if(order.ge.1) write(200,*) runstring4, "   [event file for real]"
      close(200)
      endif

      flqtcut=.true. ! do not change it


 
CC    Set the dipole scales to an initial common values (for safety)
  
      do j=0,40
       dipscale(j)=facscale
      enddo       

CC    Cut on qt

!      qtcut=.5d0
      qtcut=1d0
      qtcutdec=1d0

C     Limits on invariant mass of vector boson decay products


      wsqmin=Mwmin**2
      wsqmax=Mwmax**2

C     Check if the limits are compatible with sroot
C     The minum x cannot go below 10^(-5):
C     At the LHC the minimum invariant mass cannot go below 44.27 GeV

      if(wsqmin.lt.(sroot**2*1d-5)) wsqmin=(sroot**2*1d-5)
      if(wsqmax.gt.(sroot**2)) wsqmax=sroot**2


      do j=1,mxpart
      plabel(j)=''
      enddo


      plabel(1)='pp'
      plabel(2)='pp'

c--- the default behaviour is to remove no branching ratio

      BrnRat=1d0

      call coupling

      mbrun=massfrun(4.18d0,125d0,0.11800d0,3)
!      write(*,*) "mbrun=",mbrun

      call cstring(pdfstring)

      if(lhapdfs.eqv.(.false.)) then
      write(6,*)'CCCCCCCCCC      Parton Distributions    CCCCCCCCCCCC'
      write(6,*)'C                                                  C'
      write(6,*)'C       ', pdfstring,'       C'
      write(6,*)'C                                                  C'
      endif
      write(6,*)'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC'

      notag=0
      nqcdjets=0
      isub=0

     
       if((ih1.eq.1).and.(ih2.eq.-1)) then
       str1='ppb'
      elseif((ih1.eq.1).and.(ih2.eq.1)) then
       str1='pp'
      else
       write(*,*)'Initial state not allowed'
      endif

c--- selected processes have mb .ne. zero
      if (  nproc.ne.44
     . .and.nproc.ne.55
     . .and.nproc.ne.66
     . .and.nproc.ne.77) then
       mb=0d0
      endif

CC    Compute Higgs BR ratios
C     br0 is tree level H->bbar BR which is needed here
      call sethparams(br0,gamgambr,wwbr,zzbr)
CC    Here ndim is the number of dimensions for Born
c      write(*,*) "br0",br0

      if(nproc.eq.4.or.nproc.eq.44) then
C
C     W+(->l+nubar) H(->bb~)
C
       str2=' -> W+ + H -> ' 
       
       ndec=4
       ndim=10
       plabel(3)='nl'
       plabel(4)='ea'
       plabel(5)='bq'
       plabel(6)='ba'
       plabel(7)='pp'
       plabel(8)='pp'
       n2=1
       n3=1
       i1=4
       i2=4
       nwz=1
       mass2=hmass
       width2=hwidth
       mass3=wmass
       width3=wwidth


       
       if (removebr) then
        call branch(brwen,brzee,brznn,brtau,brtop,brcharm)
        BrnRat=brwen*br0
       endif

      str3=' nu(p3)+e+(p4)+b(p5)+b~(p6)'

      elseif(nproc.eq.5.or.nproc.eq.55) then
C
C     W-(->l+nubar) H(->bb~)
C
       str2=' -> W- + H -> ' 
       ndec=4
       ndim=10    
       plabel(3)='ea'
       plabel(4)='nl'
!       plabel(5)='el'    ! H-> e+e-
!       plabel(6)='ea'    ! H-> e+e-
       plabel(5)='bq'
       plabel(6)='ba'
       plabel(7)='pp'
       plabel(8)='pp'
       n2=1
       n3=1
       i1=3
       i2=3
       nwz=-1
       mass2=hmass
       width2=hwidth
       mass3=wmass
       width3=wwidth

       if (removebr) then
        call branch(brwen,brzee,brznn,brtau,brtop,brcharm)
        BrnRat=brwen*br0
!        write(*,*) "brwen",br0
       endif

      str3=' e-(p3)+nu(p4)+b(p5)+b~(p6)'


      elseif(nproc.eq.6.or.nproc.eq.66) then
C
C     Z(->e-e+) H(->bb~)
C
       str2=' -> Z + H -> ' 
       ndec=4
       ndim=10    
       plabel(3)='el'
       plabel(4)='ea'
       plabel(5)='bq'
       plabel(6)='ba'
       plabel(7)='pp'
       plabel(8)='pp'
       n2=1
       n3=1
       i1=3
       i2=4
       nwz=0
       l1=le
       r1=re          
       mass2=hmass
       width2=hwidth
       mass3=zmass
       width3=zwidth

       if (removebr) then
        call branch(brwen,brzee,brznn,brtau,brtop,brcharm)
        BrnRat=brzee*br0
       endif
!      write(*,*) "br0",br0

      str3=' e-(p3)+e+(p4)+b(p5)+b~(p6)'

      elseif(nproc.eq.7.or.nproc.eq.77) then
C
C     Z(->3*(nu nu~)) H(->bb~)
C
       str2=' -> Z + H -> ' 
       ndec=4
       ndim=10    
       plabel(3)='nu'
       plabel(4)='na'
       plabel(5)='bq'
       plabel(6)='ba'
       plabel(7)='pp'
       plabel(8)='pp'
       n2=1
       n3=1
       i1=3
       i2=4
       nwz=0
       l1=ln*dsqrt(3d0)
       r1=rn*dsqrt(3d0)          
       mass2=hmass
       width2=hwidth
       mass3=zmass
       width3=zwidth

       if (removebr) then
        call branch(brwen,brzee,brznn,brtau,brtop,brcharm)
        BrnRat=brznn*br0
       endif

      str3=' nu(p3)+nu~(p4)+b(p5)+b~(p6)'

      else
       write(*,*)'Wrong decay channel'
       stop
      endif



CCCCCCCCCCCCC

      call strcat(str1,str2,string)
      call strcat(string,str3,string)

     
      call cstring(string)      
     

      write(6,*)'C                                                  C'

      if(order.eq.0) then
      write(6,*)'C         Computing LO cross section for           C'
      elseif(order.eq.1) then
      write(6,*)'C        Computing NLO cross section for           C'
      elseif(order.eq.2) then
      write(6,*)'C        Computing NNLO cross section for          C'
      else
      write(*,*)'Order can be 0,1 or 2 !'
       stop
      endif
  
      write(6,*)'C                                                  C' 
      write(*,*)'C',string,'C'
!      if((nproc.eq.44).or.(nproc.eq.55).or.(nproc.eq.66)
!     &.or.(nproc.eq.77)) then
      write(6,"(A24,F5.3,A24)")' C                   mb=',mb,'        
     &             C' 
!      write(*,"(E6.4)") mb 
!      else
!      write(6,*)'C             (massless b quarks)                  C' 
!      endif
      write(6,*)'C                                                  C' 
      write(6,96)sroot
      write(6,*)'C                                                  C'
      write(6,*)'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC' 


 96   format(' C           at  Sqrt(s)=',f8.2,' GeV               C')

      nqcdjets=0
    

      call ckmfill(nwz)


      write(*,*) '=========================='
      write(*,*) 'mw,gammaw ',wmass,wwidth
      write(*,*) 'mz,gammaz ',zmass,zwidth
      write(*,*) 'mh,gammah ',hmass,hwidth
      write(*,*) 'CKM matrix'
      write(*,*) Vud,Vus,Vub
      write(*,*) Vcd,Vcs,Vcb
      write(*,*) '--------------------------'
      write(*,*) 'm_vh boundaries ',Mwmin,Mwmax
      write(*,*) 'mh and mv have no boundaries'
      write(*,*) '=========================='

c--   conservation of energy check [in plotter.f]:
      open(unit=676,file=trim(runstring)//'errors.txt',access='append',status='unknown')

CCCCCCCCCCCCCCCCCC


c--- set-up the random number generator with a negative seed
      idum=-abs(rseed)
      randummy=ran2()

c--- initialize masses for alpha_s routine
      cmass=dsqrt(mcsq)
      bmass=dsqrt(mbsq)


c--- check that we have a valid value of 'part'
      if ( (part .ne. 'lord') .and. (part .ne. 'real') .and.
     .     (part .ne. 'virt') .and. (part .ne. 'tota') ) then
          write(6,*) 'part=',part,' is not a valid option'
          stop     
      endif      



        as=alphas(scale,amz,nlooprun)
        ason2pi=as/twopi
        ason4pi=as/fourpi
        gsq=fourpi*as
        musq=scale**2
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

CC    Resummation coefficients

      beta0=(33-2*nf)/12d0

      beta1=(153d0-19*nf)/24d0

      Kappa=67/6d0-(pi**2)/2d0-5d0/9d0*nf

      A1q=4d0/3
      A2q=0.5d0*A1q*Kappa
      B1q=-2d0


      B2q=4d0/9*(pi**2-3d0/4-12*Z3)+(11d0/9*pi**2-193d0/12+6*Z3)
     & +nf/6d0*(17d0/3-4d0/9*pi**2)

      

C     Delta term in c1qq coefficient

      C1qqdelta=(pi**2-8)/3d0

C     Delta term in P2qq splitting function (as/pi normalization)

      Delta2qq=16d0/9*(3d0/8-pi**2/2+6*Z3)
     &   +4*(17d0/24+11d0*pi**2/18-3*Z3)-2d0/3*nf*(1d0/6+2*pi**2/9d0)

      Delta2qq=Delta2qq/4d0

CC    Coefficients of D0 and D1 in P*P (as/pi normalization)

      D0qqqq=8d0/3
      D1qqqq=32d0/9


CC    Coefficients of delta(1-z) in P*P

      Deltaqqqq=4d0/9*(9d0/4-2*pi**2/3d0)

C     H2qq contribution: coefficient of delta(1-z)

      H2qqdelta=-2561d0/144+127d0*nf/72+3*pi**2/2-19d0*nf*Pi**2/81+
     &          49d0*Pi**4/324 +58d0*Z3/9 + 8d0*nf*Z3/27

C     H2qq contribution: coefficient of D0(z)

      H2qqD0=-404d0/27+(56d0*nf)/81+14*Z3


      return

      end
      
