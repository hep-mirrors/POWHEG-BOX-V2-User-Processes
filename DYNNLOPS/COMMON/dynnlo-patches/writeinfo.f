      subroutine writeinfo(unitno,xsec,xsec_err)
************************************************************************
*   Routine to write out run information to a desired unit             *
************************************************************************
      implicit none
      include 'maxwt.f'
      include 'masses.f'
      include 'facscale.f'
      include 'scale.f'
      include 'zerowidth.f'
      include 'flags.f'
      include 'clustering.f'
      include 'gridinfo.f'
      include 'limits.f'
      include 'pdfiset.f'
      include 'dynamicscale.f'
      integer unitno
      include 'lhapdf.f'
      double precision xsec,xsec_err
      
      character*4 part
      character*30 runstring
      character *50 prefix
      logical creatent,dswhisto,makecuts
      integer nproc,ih1,ih2,itmx1,itmx2,ncall1,ncall2,rseed
      integer order
      double precision sqrts,Mwmin,Mwmax
      double precision Rcut
      double precision leptpt,leptrap,misspt,Rjlmin,Rllmin,delyjjmin,
     . leptpt2,leptrap2,gammpt,gammrap,gammcone,gammcut
      integer lbjscheme
      logical jetsopphem
 
      common/outputflags/creatent,dswhisto      

      common/nnlo/order
      common/part/part
      common/runstring/runstring
      common/energy/sqrts
      common/density/ih1,ih2
      common/iterat/itmx1,ncall1,itmx2,ncall2
      integer nset
      common/prefix/nset,prefix
      common/mwminmax/Mwmin,Mwmax
         
    
      
      common/Rcut/Rcut
      common/makecuts/makecuts
      common/leptcuts/leptpt,leptrap,misspt,Rjlmin,Rllmin,delyjjmin,
     . leptpt2,leptrap2,gammpt,gammrap,gammcone,gammcut,
     . lbjscheme,jetsopphem

      common/rseed/rseed

c      write(unitno,*) '( Cross-section is: ',xsec,'+/-',xsec_err,')'
c      write(unitno,*)
c      write(unitno,*) '( Run corresponds to this input file)'
c      write(unitno,*)
c      write(unitno,*) '(sqrts= ',sqrts
c      write(unitno,*) '(ih1= ',ih1,'  ih2= ',ih2
c      write(unitno,*) '(nproc: ',nproc
c      write(unitno,*) '(dynamicscale=',dynamicscale
c      if(dynamicscale.eqv..false.) then
c      write(unitno,*) '(muf= ',facscale
c       write(unitno,*) '(mur= ',scale
c      endif
c      write(unitno,*) '(order= ',order
c      write(unitno,*) '(part= ',part
c      write(unitno,*) '(zerowidth= ',zerowidth
c      write(unitno,*) '(Mwmin= ',Mwmin,'  Mwmax= ',Mwmax
c      write(unitno,*) '(itmx1= ',itmx1
c      write(unitno,*) '(ncall1= ',ncall1
c      write(unitno,*) '(itmx2= ',itmx2
c      write(unitno,*) '(ncall2= ',ncall2
c      write(unitno,*) '(rnd seed= ',rseed
c      write(unitno,*) '(iset=',iset,' nset=',nset
c      write(unitno,*) '(PDFname=',PDFname,' PDFmember=',PDFmember
c      write(unitno,*) '(runstring=',runstring
c      write(unitno,*)
c      write(unitno,*) '( td -b filename.top '
c      write(unitno,*) 'SET DEVICE POSTSCRIPT SIDEWAYS'
c      write(unitno,*) 'SET SIZE SIDEWAYS'

      return
      
      end
      
      
