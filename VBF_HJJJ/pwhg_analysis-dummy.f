c  The next subroutines, open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones
c  init   :  opens the histograms
c  topout :  closes them
c  pwhgfill  :  fills the histograms with data

      subroutine init_hist
      implicit none
      include '../pwhg_book.h'
      include 'PhysPars.h'
      real * 8 pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      real * 8 ptvbcut
      common/cptvbcut/ptvbcut
      character * 10 cut
      integer nsigma,diag
      real * 8 step,invmasslow,invmasshigh,ymax
      real * 8 binsize(100)
      common/pwhghistcommon/binsize
      logical ini
      data ini/.true./
      save ini

      if (ini) then
         write(*,*) '********************************************'
         write(*,*) '********************************************'
         write(*,*) 'inv Higgs boson mass plot done assuming the '
         write(*,*) 'following values'
         write(*,*) 'ph_Hmass = ',ph_Hmass
         write(*,*) 'ph_Hwidth = ',ph_Hwidth
         write(*,*) '********************************************'
         write(*,*) '********************************************'
         ini=.false.
      endif


      end

      
     
      subroutine analysis(dsig)
      implicit none
      real * 8 dsig
      include 'hepevt.h'
      include 'pwhg_math.h'      
c arrays to reconstruct jets
 
      end


      subroutine particle_identif(HWW,HZZ)
      implicit none
      integer pdg_Higgs,pdg_Z,pdg_W,HZZ,HWW
      pdg_Higgs = 25
      pdg_Z = 23
      pdg_W = 24      
c     build an identifier for Higgs production in WW and ZZ fusion 
      HWW = 10000*pdg_W + pdg_Higgs
      HZZ = 10000*pdg_Z + pdg_Higgs
      end

