c  The next subroutines, open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones
c  init   :  opens the histograms
c  topout :  closes them
c  pwhgfill  :  fills the histograms with data

      subroutine init_hist
      implicit none
      include  'LesHouches.h'
      include 'pwhg_math.h'
      integer i,j,k
      real * 8 powheginput
      external powheginput
c
      integer ndphibins1
      parameter (ndphibins1 = 15)
      integer ndphibins2
      parameter (ndphibins2 = 10)
      integer ndphibins3
      parameter (ndphibins3 = 9)
      integer ndphibins4
      parameter (ndphibins4 = 4)
      integer nptmaxbins
      parameter (nptmaxbins = 9)
      real*8 dphibins1(ndphibins1 + 1)
      real*8 dphibins2(ndphibins2 + 1)
      real*8 dphibins3(ndphibins3 + 1)
      real*8 dphibins4(ndphibins4 + 1)
      real*8 dptmaxbins(nptmaxbins + 1)
      data dphibins1/0.50d0,0.59d0,0.66d0,0.71d0,0.75d0,0.78d0,0.81d0,
     1               0.84d0,0.86d0,0.88d0,0.90d0,0.92d0,0.94d0,0.96d0,
     2               0.98d0,1.00d0/
      data dphibins2/0.50d0,0.66d0,0.75d0,0.81d0,0.86d0,0.90d0,0.92d0,
     1               0.94d0,0.96d0,0.98d0,1.00d0/
      data dphibins3/0.50d0,0.66d0,0.75d0,0.81d0,0.86d0,0.90d0,0.94d0,
     1               0.96d0,0.98d0,1.00d0/
      data dphibins4/0.75d0,0.86d0,0.94d0,0.98d0,1.00d0/
      data dptmaxbins/110d0,160d0,210d0,260d0,310d0,400d0,500d0,600d0,
     1                800d0,10000d0/
      character*3 cptmax(9)
      data cptmax/'110','160','210','260','310','400','500',
     1            '600','800'/
c
      integer nptrangebins
      parameter (nptrangebins = 11)
      real*8 ptrangebins(nptrangebins + 1)
      data ptrangebins/30d0,40d0,60d0,80d0,110d0,160d0,210d0,260d0,
     1                 310d0,400d0,500d0,600d0/
      character*3 cptrange(nptrangebins + 1)
      data cptrange/' 30',' 40',' 60',' 80','110','160','210','260',
     1              '310','400','500','600'/
      integer nyrangebins
      parameter (nyrangebins = 5)
      real*8 yrangebins(nyrangebins + 1)
      data yrangebins/0.0d0,0.3d0,0.8d0,1.2d0,2.1d0,2.8d0/
      character*3 cyrange(nyrangebins + 1)
      data cyrange/'0.0','0.3','0.8','1.2','2.1','2.8'/
      real*8 deltar
      parameter (deltar = 0.1d0)
      real*8 Rparshapes
      parameter (Rparshapes = 0.6d0)
      real*8 MaxJetRapshapes
      parameter (MaxJetRapshapes = 2.8d0)
c
      integer nptbins
      parameter (nptbins = 4)
      real*8 ptbins(nptbins + 1)
      data ptbins/200d0,300d0,400d0,500d0,600d0/
      character*3 cptrangesub(nptbins + 1)
      data cptrangesub/'200','300','400','500','600'/
c plot limits used with CA without filtering:
      real*8 jetmassCAminsub(nptbins)
      data jetmassCAminsub/10d0,10d0,20d0,20d0/
      real*8 jetmassCAmaxsub(nptbins)
      data jetmassCAmaxsub/190d0,190d0,290d0,290d0/
c plot limits used with CA with filtering:
      real*8 jetmassCASFminsub(nptbins)
      data jetmassCASFminsub/20d0,30d0,40d0,50d0/
      real*8 jetmassCASFmaxsub(nptbins)
      data jetmassCASFmaxsub/160d0,190d0,290d0,290d0/
c plot limits used with antikt:
      real*8 jetmassantiktminsub(nptbins)
      data jetmassantiktminsub/10d0,10d0,20d0,20d0/
      real*8 jetmassantiktmaxsub(nptbins)
      data jetmassantiktmaxsub/140d0,190d0,230d0,290d0/
c
      integer nptrangeR32
      parameter (nptrangeR32 = 27)
      real*8 ptrangeR32(nptrangeR32 + 1)
      data ptrangeR32/250d0,275d0,300d0,330d0,360d0,390d0,420d0,450d0,
     >               480d0,510d0,540d0,570d0,600d0,640d0,680d0,720d0,
     >               760d0,800d0,850d0,900d0,950d0,1000d0,1060d0,
     >               1120d0,1180d0,1250d0,1320d0,1390d0/
c
      integer nptrangesveto
      parameter (nptrangesveto = 7)
      real*8 ptrangesveto(nptrangesveto + 1)
      data ptrangesveto/70d0,90d0,120d0,150d0,180d0,210d0,240d0,270d0/
      character*3 cptrangesveto(nptrangesveto + 1)
      data cptrangesveto/' 70',' 90','120','150',
     >                   '180','210','240','270'/
      integer nyrangesveto
      parameter (nyrangesveto = 5)
      real*8 yrangesveto(nyrangesveto + 1)
      data yrangesveto/1d0,2d0,3d0,4d0,5d0,6d0/
      character*1 cyrangesveto(nyrangesveto + 1)
      data cyrangesveto/'1','2','3','4','5','6'/
      integer nptbinsveto
      parameter (nptbinsveto = 18)
      real*8 ptbinsveto(nptbinsveto + 1)
      data ptbinsveto/50d0,60d0,70d0,80d0,90d0,105d0,120d0,135d0,150d0,
     >                180d0,210d0,240d0,270d0,300d0,340d0,380d0,420d0,
     >                460d0,500d0/
c
      integer nyrangesdiffxs
      parameter (nyrangesdiffxs = 5)
      real*8 yrangesdiffxs(nyrangesdiffxs + 1)
      data yrangesdiffxs/0d0,0.5d0,1d0,1.5d0,2d0,2.5d0/
      character*3 cyrangesdiffxs(nyrangesdiffxs + 1)
      data cyrangesdiffxs/'0.0','0.5','1.0','1.5','2.0','2.5'/
c Inclusive jet 0.0 < |y| < 0.5:
      integer nptbinsdiffxs1
      parameter (nptbinsdiffxs1 = 33)
      real*8 ptbinsdiffxs1(nptbinsdiffxs1 + 1)
      data ptbinsdiffxs1/114d0,133d0,153d0,174d0,196d0,220d0,245d0,
     >                   272d0,300d0,330d0,362d0,395d0,430d0,468d0,
     >                   507d0,548d0,592d0,638d0,686d0,737d0,790d0,
     >                   846d0,905d0,967d0,1032d0,1101d0,1172d0,
     >                   1248d0,1327d0,1410d0,1497d0,1588d0,1784d0,
     >                   2116d0/
c Inclusive jet, 0.5 < |y| < 1.0:
      integer nptbinsdiffxs2
      parameter (nptbinsdiffxs2 = 30)
      real*8 ptbinsdiffxs2(nptbinsdiffxs2 + 1)
      data ptbinsdiffxs2/114d0,133d0,153d0,174d0,196d0,220d0,245d0,
     >                   272d0,300d0,330d0,362d0,395d0,430d0,468d0,
     >                   507d0,548d0,592d0,638d0,686d0,737d0,790d0,
     >                   846d0,905d0,967d0,1032d0,1101d0,1172d0,
     >                   1248d0,1327d0,1410d0,1784d0/
c Inclusive jet, 1.0 < |y| < 1.5:
      integer nptbinsdiffxs3
      parameter (nptbinsdiffxs3 = 27)
      real*8 ptbinsdiffxs3(nptbinsdiffxs3 + 1)
      data ptbinsdiffxs3/114d0,133d0,153d0,174d0,196d0,220d0,245d0,
     >                   272d0,300d0,330d0,362d0,395d0,430d0,468d0,
     >                   507d0,548d0,592d0,638d0,686d0,737d0,790d0,
     >                   846d0,905d0,967d0,1032d0,1101d0,1172d0,
     >                   1684d0/
c Inclusive jet, 1.5 < |y| < 2.0:
      integer nptbinsdiffxs4
      parameter (nptbinsdiffxs4 = 24)
      real*8 ptbinsdiffxs4(nptbinsdiffxs4 + 1)
      data ptbinsdiffxs4/114d0,133d0,153d0,174d0,196d0,220d0,245d0,
     >                   272d0,300d0,330d0,362d0,395d0,430d0,468d0,
     >                   507d0,548d0,592d0,638d0,686d0,737d0,790d0,
     >                   846d0,905d0,967d0,1248d0/
c Inclusive jet, 2.0 < |y| < 2.5:
      integer nptbinsdiffxs5
      parameter (nptbinsdiffxs5 = 19)
      real*8 ptbinsdiffxs5(nptbinsdiffxs5 + 1)
      data ptbinsdiffxs5/114d0,133d0,153d0,174d0,196d0,220d0,245d0,
     >                   272d0,300d0,330d0,362d0,395d0,430d0,468d0,
     >                   507d0,548d0,592d0,638d0,686d0,905d0/
c Dijet mass, 0.0 < |y| < 0.5:
      integer nmbinsdiffxs6
      parameter (nmbinsdiffxs6 = 13)
      real*8 mbinsdiffxs6(nmbinsdiffxs6 + 1)
      data mbinsdiffxs6/197d0,296d0,419d0,565d0,740d0,944d0,1181d0,
     >                   1455d0,1770d0,2132d0,2546d0,3019d0,3416d0,
     >                   4010d0/
c Dijet mass, 0.5 < |y| < 1.0:
      integer nmbinsdiffxs7
      parameter (nmbinsdiffxs7 = 12)
      real*8 mbinsdiffxs7(nmbinsdiffxs7 + 1)
      data mbinsdiffxs7/270d0,386d0,526d0,693d0,890d0,1118d0,1383d0,
     >                   1687d0,2037d0,2438d0,2895d0,3416d0,4010d0/
c Dijet mass, 1.0 < |y| < 1.5:
      integer nmbinsdiffxs8
      parameter (nmbinsdiffxs8 = 11)
      real*8 mbinsdiffxs8(nmbinsdiffxs8 + 1)
      data mbinsdiffxs8/419d0,565d0,740d0,944d0,1181d0,1455d0,1770d0,
     >                   2132d0,2546d0,3147d0,3854d0,4509d0/
c Dijet mass, 1.5 < |y| < 2.0:
      integer nmbinsdiffxs9
      parameter (nmbinsdiffxs9 = 10)
      real*8 mbinsdiffxs9(nmbinsdiffxs9 + 1)
      data mbinsdiffxs9/565d0,740d0,944d0,1181d0,1455d0,1770d0,2132d0,
     >                   2546d0,3019d0,3558d0,5058d0/
c Dijet mass, 2.0 < |y| < 2.5:
      integer nmbinsdiffxs10
      parameter (nmbinsdiffxs10 = 8)
      real*8 mbinsdiffxs10(nmbinsdiffxs10 + 1)
      data mbinsdiffxs10/1000d0,1246d0,1530d0,1856d0,2231d0,2659d0,
     >                    3147d0,3704d0,5058d0/
c
c Differential cross section, Atlas:
      integer nystarrangesdiffxsAtlas
      parameter (nystarrangesdiffxsAtlas = 6)
      real*8 ystarrangesdiffxsAtlas(nystarrangesdiffxsAtlas + 1)
      data ystarrangesdiffxsAtlas/0d0,0.5d0,1d0,1.5d0,2d0,2.5d0,3.0d0/
      character*3 cystarrangesdiffxsAtlas(nystarrangesdiffxsAtlas + 1)
      data cystarrangesdiffxsAtlas/'0.0','0.5','1.0','1.5','2.0','2.5',
     >                             '3.0'/
      integer nRpardiffxsAtlas
      parameter (nRpardiffxsAtlas = 2)
      real*8 RpardiffxsAtlas(nRpardiffxsAtlas)
      data RpardiffxsAtlas/0.4d0,0.6d0/
      character*3 cRpardiffxsAtlas(nRpardiffxsAtlas)
      data cRpardiffxsAtlas/'0.4','0.6'/
c Dijet mass, ystar < 0.5:
      integer nmbinsdiffxsAtlas1
      parameter (nmbinsdiffxsAtlas1 = 21)
      real*8 mbinsdiffxsAtlas1(nmbinsdiffxsAtlas1 + 1)
      data mbinsdiffxsAtlas1/260d0,310d0,370d0,440d0,510d0,590d0,
     >                        670d0,760d0,850d0,950d0,1060d0,1180d0,
     >                        1310d0,1450d0,1600d0,1760d0,1940d0,2120d0,
     >                        2330d0,2550d0,2780d0,4270d0/
c Dijet mass, 0.5 < ystar < 1.0:
      integer nmbinsdiffxsAtlas2
      parameter (nmbinsdiffxsAtlas2 = 21)
      real*8 mbinsdiffxsAtlas2(nmbinsdiffxsAtlas2 + 1)
      data mbinsdiffxsAtlas2/310d0,370d0,440d0,510d0,590d0,670d0,760d0,
     >                        850d0,950d0,1060d0,1180d0,1310d0,1450d0,
     >                        1600d0,1760d0,1940d0,2120d0,2330d0,2550d0,
     >                        2780d0,3040d0,4270d0/
c Dijet mass, 1.0 < ystar < 1.5:
      integer nmbinsdiffxsAtlas3
      parameter (nmbinsdiffxsAtlas3 = 19)
      real*8 mbinsdiffxsAtlas3(nmbinsdiffxsAtlas3 + 1)
      data mbinsdiffxsAtlas3/510d0,590d0,670d0,760d0,850d0,950d0,
     >                        1060d0,1180d0,1310d0,1450d0,1600d0,1760d0,
     >                        1940d0,2120d0,2330d0,2550d0,2780d0,3040d0,
     >                        3310d0,4640d0/
c Dijet mass, 1.5 < ystar < 2.0:
      integer nmbinsdiffxsAtlas4
      parameter (nmbinsdiffxsAtlas4 = 17)
      real*8 mbinsdiffxsAtlas4(nmbinsdiffxsAtlas4 + 1)
      data mbinsdiffxsAtlas4/760d0,850d0,950d0,1060d0,1180d0,1310d0,
     >                        1450d0,1600d0,1760d0,1940d0,2120d0,2330d0,
     >                        2550d0,2780d0,3040d0,3310d0,3610d0,4640d0/
c Dijet mass, 2.0 < ystar < 2.5:
      integer nmbinsdiffxsAtlas5
      parameter (nmbinsdiffxsAtlas5 = 8)
      real*8 mbinsdiffxsAtlas5(nmbinsdiffxsAtlas5 + 1)
      data mbinsdiffxsAtlas5/1310d0,1450d0,1600d0,1760d0,2120d0,
     >                        2550d0,3040d0,3610d0,5040d0/
c Dijet mass, 2.5 < ystar < 3.0:
      integer nmbinsdiffxsAtlas6
      parameter (nmbinsdiffxsAtlas6 = 4)
      real*8 mbinsdiffxsAtlas6(nmbinsdiffxsAtlas6 + 1)
      data mbinsdiffxsAtlas6/2120d0,2550d0,3040d0,3930d0,5040d0/
c
c Trijet mass following CMS PAS
      integer nymaxrangesdiffxsCMSPAS
      parameter (nymaxrangesdiffxsCMSPAS = 2)
      real*8 ymaxrangesdiffxsCMSPAS(nymaxrangesdiffxsCMSPAS + 1)
      data ymaxrangesdiffxsCMSPAS/0d0,1d0,2d0/
      character*3 cymaxrangesdiffxsCMSPAS(nymaxrangesdiffxsCMSPAS + 1)
      data cymaxrangesdiffxsCMSPAS/'0.0','1.0','2.0'/
c
      integer nRpardiffxsCMSPAS
      parameter (nRpardiffxsCMSPAS = 2)
      real*8 RpardiffxsCMSPAS(nRpardiffxsCMSPAS)
      data RpardiffxsCMSPAS/0.5d0,0.7d0/
      character*3 cRpardiffxsCMSPAS(nRpardiffxsCMSPAS)
      data cRpardiffxsCMSPAS/'0.5','0.7'/
c
      integer nm123binsdiffxsCMSPAS
      parameter (nm123binsdiffxsCMSPAS = 42)
      real*8 m123binsdiffxsCMSPAS(nm123binsdiffxsCMSPAS + 1)
      data m123binsdiffxsCMSPAS/
     >     150d0,177d0,207d0,240d0,275d0,313d0,354d0,398d0,445d0,
     >     495d0,548d0,604d0,664d0,727d0,794d0,864d0,938d0,1016d0,
     >     1098d0,1184d0,1274d0,1369d0,1469d0,1573d0,1682d0,1796d0,
     >     1916d0,2041d0,2172d0,2309d0,2452d0,2602d0,2758d0,2921d0,
     >     3092d0,3270d0,3456d0,3650d0,3852d0,4063d0,4283d0,4513d0,
     >     4753d0/
c
      call inihists
c

c vvvvvvvvvvvv This part concerns the azimuthal decorrelation vvvvvvvv
c **** arXiv:1102.2696 ****
c for normalization purposes we store the cross sections:
      do j=1,nptmaxbins
        if (j.le.5) then
          call bookupeqbins('sigma '//cptmax(j)//' < ptmax < '//
     >                         cptmax(j+1),1d0,0.5d0,1.5d0)
        else if ((j.gt.5).and.(j.le.7)) then
          call bookupeqbins('sigma '//cptmax(j)//' < ptmax < '//
     >                         cptmax(j+1),1d0,0.5d0,1.5d0)
        else if (j.eq.8) then
          call bookupeqbins('sigma '//cptmax(j)//' < ptmax < '//
     >                         cptmax(j+1),1d0,0.5d0,1.5d0)
        else if (j.eq.9) then
          call bookupeqbins('sigma '//cptmax(j)//' < ptmax',
     >                1d0,0.5d0,1.5d0)
        end if
      end do
      do j=1,nptmaxbins
        if (j.le.5) then
          call bookup('dphi '//cptmax(j)//' < ptmax < '//
     >                         cptmax(j+1),ndphibins1,dphibins1)
        else if ((j.gt.5).and.(j.le.7)) then
          call bookup('dphi '//cptmax(j)//' < ptmax < '//
     >                         cptmax(j+1),ndphibins2,dphibins2)
        else if (j.eq.8) then
          call bookup('dphi '//cptmax(j)//' < ptmax < '//
     >                         cptmax(j+1),ndphibins3,dphibins3)
        else if (j.eq.9) then
          call bookup('dphi '//cptmax(j)//' < ptmax',
     >                ndphibins4,dphibins4)
        end if
      end do
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvvvvvvvvvv This part concerns the jet shapes vvvvvvvvvvvvvvvvvvvvv
c **** arXiv:1101.0070 ****
c Differential jet shapes:
      do j=1,nptrangebins
        call bookupeqbins('sigma rho(r) '//cptrange(j)//' < pt < '//
     >                    cptrange(j+1),1d0,0.5d0,1.5d0)
        call bookupeqbins('rho(r) '//cptrange(j)//' < pt < '//
     >                    cptrange(j+1),deltar,0d0,Rparshapes)
      end do
      do j=1,nptrangebins
        do k=1,nyrangebins
          call bookupeqbins('sigma rho(r) '//cptrange(j)//' < pt < '//
     >                      cptrange(j+1)//' '//cyrange(k)
     >                      //' < |y| < '//cyrange(k+1),1d0,0.5d0,1.5d0)
          call bookupeqbins('rho(r) '//cptrange(j)//' < pt < '//
     >                      cptrange(j+1)//' '//cyrange(k)
     >                      //' < |y| < '//cyrange(k+1),
     >                      deltar,0d0,Rparshapes)
        end do
      end do
c Integrated jet shapes:
      call bookup('sigma 1 - psi(r=0.3)',nptrangebins,ptrangebins)
      call bookup('1 - psi(r=0.3)',nptrangebins,ptrangebins)
      do k=1,nyrangebins
        call bookup('sigma 1 - psi(r=0.3) '//cyrange(k)//' < |y| < '//
     >              cyrange(k+1),nptrangebins,ptrangebins)
        call bookup('1 - psi(r=0.3) '//cyrange(k)//' < |y| < '//
     >              cyrange(k+1),nptrangebins,ptrangebins)
      end do
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvvvvvvvvvv This part concerns the jet substructures vvvvvvvvvvvvvv
c **** arXiv:1203.4606 ****
c Jet masses with CA and without filtering:
      do j=1,nptbins
        call bookupeqbins('sigma mass, CA, R=1.2, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//
     >                    cptrangesub(j+1),1d0,0.5d0,1.5d0)
        call bookupeqbins('mass, CA, R=1.2, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                    10d0,jetmassCAminsub(j),jetmassCAmaxsub(j))
      end do
c Jet masses with CA and with filtering:
      do j=1,nptbins
        call bookupeqbins('sigma mass, CA SF, R=1.2, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//
     >                    cptrangesub(j+1),1d0,0.5d0,1.5d0)
        call bookupeqbins('mass, CA SF, R=1.2, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                    10d0,jetmassCASFminsub(j),
     >                    jetmassCASFmaxsub(j))
      end do
c Jet masses with antikt:
      do j=1,nptbins
        call bookupeqbins('sigma mass, antikt, R=1.0, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//
     >                    cptrangesub(j+1),1d0,0.5d0,1.5d0)
        call bookupeqbins('mass, antikt, R=1.0, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                    10d0,jetmassantiktminsub(j),
     >                    jetmassantiktmaxsub(j))
      end do
c kt splitting scales with antikt:
      do j=1,nptbins
        call bookupeqbins('sd12, antikt, R=1.0, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                    5d0,0d0,100d0)
      end do
      do j=1,nptbins
        call bookupeqbins('sd23, antikt, R=1.0, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                    2d0,0d0,36d0)
      end do
c subjettiness with CA without filtering:
      do j=1,nptbins
        call bookupeqbins('tau21, CA, R=1.2, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                    0.08d0,0.08d0,1.2d0)
      end do
      do j=1,nptbins
        call bookupeqbins('tau32, CA, R=1.2, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                    0.08d0,0.32d0,1.12d0)
      end do
c subjettiness with antikt:
      do j=1,nptbins
        call bookupeqbins('tau21, antikt, R=1.0, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                    0.08d0,0.08d0,1.2d0)
      end do
      do j=1,nptbins
        call bookupeqbins('tau32, antikt, R=1.0, |y| < 2, '//
     >                    cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                    0.08d0,0.32d0,1.12d0)
      end do
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvvvvv This part concerns the incl. 3-jet and 2-jet ratio vvvvvvvvv
c**** arXiv:1307.7498 ****
      call bookup('R32, incl. 2jet',nptrangeR32,ptrangeR32)
      call bookup('R32, incl. 3jet',nptrangeR32,ptrangeR32)
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvvvvv This part concerns the dijet production with a veto vvvvvvvv
c**** arXiv:1107.1641 ****
c The gap fraction as a function of rapidity difference when the two
c hardest jets are selected:
      do j=1,nptrangesveto
        call bookupeqbins('gap tot leadpt, '//cptrangesveto(j)//
     >                    ' < avg. pt < '//cptrangesveto(j+1),
     >                    0.5d0,0d0,6d0)
        call bookupeqbins('gap nojet leadpt, '//cptrangesveto(j)//
     >                    ' < avg. pt < '//cptrangesveto(j+1),
     >                    0.5d0,0d0,6d0)
      end do
c The gap fraction as a function of rapidity difference when the most
c forward/backward jets are selected:
      do j=1,nptrangesveto
        call bookupeqbins('gap tot maxdy, '//cptrangesveto(j)//
     >                    ' < avg. pt < '//cptrangesveto(j+1),
     >                    0.5d0,0d0,6d0)
        call bookupeqbins('gap nojet maxdy, '//cptrangesveto(j)//
     >                    ' < avg. pt < '//cptrangesveto(j+1),
     >                    0.5d0,0d0,6d0)
      end do
c The gap function as the average leading pt for various rapidity
c difference bins:
      do j=1,nyrangesveto
        call bookup('gap tot leadpt, '//cyrangesveto(j)//
     >              ' < dy < '//cyrangesveto(j+1),
     >                    nptbinsveto,ptbinsveto)
        call bookup('gap nojet leadpt, '//cyrangesveto(j)//
     >              ' < dy < '//cyrangesveto(j+1),
     >                    nptbinsveto,ptbinsveto)
      end do
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvvvv This part concerns the differential jet cross sections vvvvvv
c**** arXiv:1212.6660 ****
c
c Inclusive jet, 0.0 < |y| < 0.5:
      call bookup('inclusive jet, '//cyrangesdiffxs(1)//' < |y| < '//
     >            cyrangesdiffxs(2),nptbinsdiffxs1,ptbinsdiffxs1)
c Inclusive jet, 0.5 < |y| < 1.0:
      call bookup('inclusive jet, '//cyrangesdiffxs(2)//' < |y| < '//
     >            cyrangesdiffxs(3),nptbinsdiffxs2,ptbinsdiffxs2)
c Inclusive jet, 1.0 < |y| < 1.5:
      call bookup('inclusive jet, '//cyrangesdiffxs(3)//' < |y| < '//
     >            cyrangesdiffxs(4),nptbinsdiffxs3,ptbinsdiffxs3)
c Inclusive jet, 1.5 < |y| < 2.0:
      call bookup('inclusive jet, '//cyrangesdiffxs(4)//' < |y| < '//
     >            cyrangesdiffxs(5),nptbinsdiffxs4,ptbinsdiffxs4)
c Inclusive jet, 2.0 < |y| < 2.5:
      call bookup('inclusive jet, '//cyrangesdiffxs(5)//' < |y| < '//
     >            cyrangesdiffxs(6),nptbinsdiffxs5,ptbinsdiffxs5)
c
c Dijet mass, 0.0 < |y|_max < 0.5:
      call bookup('dijet mass, '//cyrangesdiffxs(1)//' < |y| < '//
     >            cyrangesdiffxs(2),nmbinsdiffxs6,mbinsdiffxs6)
c Dijet mass, 0.5 < |y|_max < 1.0:
      call bookup('dijet mass, '//cyrangesdiffxs(2)//' < |y| < '//
     >            cyrangesdiffxs(3),nmbinsdiffxs7,mbinsdiffxs7)
c Dijet mass, 1.0 < |y|_max < 1.5:
      call bookup('dijet mass, '//cyrangesdiffxs(3)//' < |y| < '//
     >            cyrangesdiffxs(4),nmbinsdiffxs8,mbinsdiffxs8)
c Dijet mass, 1.5 < |y|_max < 2.0:
      call bookup('dijet mass, '//cyrangesdiffxs(4)//' < |y| < '//
     >            cyrangesdiffxs(5),nmbinsdiffxs9,mbinsdiffxs9)
c Dijet mass, 2.0 < |y|_max < 2.5:
      call bookup('dijet mass, '//cyrangesdiffxs(5)//' < |y| < '//
     >            cyrangesdiffxs(6),nmbinsdiffxs10,mbinsdiffxs10)
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvvvv This part concerns the differential dijet cross sections vvvvvv
c**** arXiv:1312.3524 ****
c 
      do i=1,nRpardiffxsAtlas
c Dijet mass, y* < 0.5:
        call bookup('dijet mass, R='//cRpardiffxsAtlas(i)//', '//
     >              cystarrangesdiffxsAtlas(1)//' < y* < '//
     >              cystarrangesdiffxsAtlas(2),
     >              nmbinsdiffxsAtlas1,mbinsdiffxsAtlas1)
c Dijet mass, 0.5 < y* < 1.0:
        call bookup('dijet mass, R='//cRpardiffxsAtlas(i)//', '//
     >              cystarrangesdiffxsAtlas(2)//' < y* < '//
     >              cystarrangesdiffxsAtlas(3),
     >              nmbinsdiffxsAtlas2,mbinsdiffxsAtlas2)
c Dijet mass, 1.0 < y* < 1.5:
        call bookup('dijet mass, R='//cRpardiffxsAtlas(i)//', '//
     >              cystarrangesdiffxsAtlas(3)//' < y* < '//
     >              cystarrangesdiffxsAtlas(4),
     >              nmbinsdiffxsAtlas3,mbinsdiffxsAtlas3)
c Dijet mass, 1.5 < y* < 2.0:
        call bookup('dijet mass, R='//cRpardiffxsAtlas(i)//', '//
     >              cystarrangesdiffxsAtlas(4)//' < y* < '//
     >              cystarrangesdiffxsAtlas(5),
     >              nmbinsdiffxsAtlas4,mbinsdiffxsAtlas4)
c Dijet mass, 2.0 < y* < 2.5:
        call bookup('dijet mass, R='//cRpardiffxsAtlas(i)//', '//
     >              cystarrangesdiffxsAtlas(5)//' < y* < '//
     >              cystarrangesdiffxsAtlas(6),
     >              nmbinsdiffxsAtlas5,mbinsdiffxsAtlas5)
c Dijet mass, 2.5 < y* < 3.0:
        call bookup('dijet mass, R='//cRpardiffxsAtlas(i)//', '//
     >              cystarrangesdiffxsAtlas(6)//' < y* < '//
     >              cystarrangesdiffxsAtlas(7),
     >              nmbinsdiffxsAtlas6,mbinsdiffxsAtlas6)
      end do
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvvvv This part concerns the trijet invariant mass distro. vvvvvv
c**** CMS PAS SMP-12-027 ****
      do i=1,nRpardiffxsCMSPAS
        do j=1,nymaxrangesdiffxsCMSPAS
          call bookup('m123, R='//cRpardiffxsCMSPAS(i)//', '//
     >                cymaxrangesdiffxsCMSPAS(j)//' < |ymax| < '//
     >                cymaxrangesdiffxsCMSPAS(j+1),
     >                nm123binsdiffxsCMSPAS,m123binsdiffxsCMSPAS)
        end do
      end do

      end
     

      subroutine analysis(dsig0)
      implicit none
      real * 8 dsig0
      include 'hepevt.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h' 
      include 'pwhg_rad.h' 
      include 'pwhg_weights.h'
c      include 'pwhg_kn.h' 
c      include 'pwhg_flg.h'
c      include 'LesHouches.h'
      integer   maxjet,mjets,njets,numjets,ntracks
      parameter (maxjet=2048)
      real * 8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1    phij(maxjet),pj(4,maxjet),rr,ptrel(4),ptot(4)
      integer maxtrack
      parameter (maxtrack=2048)
      real * 8  ptrack(4,maxtrack)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer j,k,i,jj,ii
c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      integer ih,il,inu
      real * 8 psum(4)
      real * 8 httot,y,eta,pt,m
      real * 8 dy,deta,delphi,dr
      integer ihep
      real * 8 powheginput,dotp
      external powheginput,dotp
      real * 8 ptmin,mininvmass
      integer maxnumlep
      parameter (maxnumlep=10)
      real * 8 pvl(4,maxnumlep),plep(4,maxnumlep)
      integer mu,ilep,ivl,nlep,nvl
      logical is_W
      real * 8 mV2,ptvb,mvb,ptlep,ptminfastjet,ptvl,R,ylep,yvb,yvl
      real * 8 Wmass,Wwidth,Wmasslow,Wmasshigh
      integer jpart, jjet
      real * 8 palg
c      real * 8 rescfac1,rescfac2
c      common /crescfac/rescfac1,rescfac2
      real * 8 dsig(7)
      integer nweights
      logical ini
      data ini/.true./
      logical inimulti
      data inimulti/.true./
      integer  minlo
      data minlo/0/
      save inimulti,minlo,ini
      integer minnumjets,maxnumjets
      logical pwhg_isfinite
      external pwhg_isfinite
      character * 4 prefix
c
      real*8 dy12,deta12,dr12,dphi12
c
      real*8 pj1(4),pj2(4),pj3(4)
      real*8 ptj1,ptj2,ptj3
      real*8 etaj1,etaj2,etaj3
      real*8 yj1,yj2,yj3
      real*8 mj1,mj2,mj3
c
      integer l
      real*8 rho,psi
c
      real*8 calcrho,calcpsi
      external calcrho,calcpsi
c
      integer ijet
      real*8 p_j(4)
      real*8 pt_j,eta_j,y_j,m_j
c
      integer ijetymax,ijetymin
      real*8 ptavg12
c
      real*8 ystar
      real*8 dystar
c
      real*8 ymax
      real*8 dymax
c
c These declarations are needed for azimuthal decorrelations:
      real*8 MinJetPtdphi
      parameter (MinJetPtdphi = 100d0)
      real*8 MaxJetRapdphi
      parameter (MaxJetRapdphi = 2.8d0)
      real*8 MaxRapJ1J2dphi
      parameter (MaxRapJ1J2dphi = 0.8d0)
      real*8 Rpardphi
      parameter (Rpardphi = 0.6d0)
c
      integer nptmaxbins
      parameter (nptmaxbins = 9)
      real*8 dptmaxbins(nptmaxbins + 1)
      data dptmaxbins/110d0,160d0,210d0,260d0,310d0,400d0,500d0,600d0,
     1                800d0,10000d0/
      character*3 cptmax(9)
      data cptmax/'110','160','210','260','310','400','500',
     1            '600','800'/
c
c These declarations for the jet shapes:
      integer nptrangebins
      parameter (nptrangebins = 11)
      real*8 ptrangebins(nptrangebins + 1)
      data ptrangebins/30d0,40d0,60d0,80d0,110d0,160d0,210d0,260d0,
     1                 310d0,400d0,500d0,600d0/
      character*3 cptrange(nptrangebins + 1)
      data cptrange/' 30',' 40',' 60',' 80','110','160','210','260',
     1              '310','400','500','600'/
      integer nyrangebins
      parameter (nyrangebins = 5)
      real*8 yrangebins(nyrangebins + 1)
      data yrangebins/0.0d0,0.3d0,0.8d0,1.2d0,2.1d0,2.8d0/
      character*3 cyrange(nyrangebins + 1)
      data cyrange/'0.0','0.3','0.8','1.2','2.1','2.8'/
      real*8 deltar
      parameter (deltar = 0.1d0)
      real*8 Rparshapes
      parameter (Rparshapes = 0.6d0)
      real*8 MaxJetRapshapes
      parameter (MaxJetRapshapes = 2.8d0)
      real*8 MinJetPtshapes
      parameter (MinJetPtshapes = 30d0)
c
c These declarations for the jet subtructure and jet mass:
      integer nptbins
      parameter (nptbins = 4)
      real*8 ptbins(nptbins + 1)
      data ptbins/200d0,300d0,400d0,500d0,600d0/
      character*3 cptrangesub(nptbins + 1)
      data cptrangesub/'200','300','400','500','600'/
      real*8 jetmassmaxsub(nptbins)
      data jetmassmaxsub/220d0,220d0,310d0,310d0/
c
      real*8 RparCAsub
      parameter (RparCAsub = 1.2d0)
      real*8 RparAntiKTsub
      parameter (RparAntiKTsub = 1.0d0)
      real*8 MaxJetRapsub
      parameter (MaxJetRapsub = 2.0d0)
      real*8 MinJetPtsub
      parameter (MinJetPtsub = 200d0)
      real*8 sd12(maxjet),sd23(maxjet)
      real*8 tau21(maxjet),tau32(maxjet)
c
c These declarations for the R32 ratio:
      real*8 MinJetPtR32
      parameter (MinJetPtR32 = 150d0)
      real*8 MaxJetRapR32
      parameter (MaxJetRapR32 = 2.5d0)
      real*8 RparR32
      parameter (RparR32 = 0.7d0)
c
c These declarations for the dijet veto:
      integer nptrangesveto
      parameter (nptrangesveto = 7)
      real*8 ptrangesveto(nptrangesveto + 1)
      data ptrangesveto/70d0,90d0,120d0,150d0,180d0,210d0,240d0,270d0/
      character*3 cptrangesveto(nptrangesveto + 1)
      data cptrangesveto/' 70',' 90','120','150',
     >                   '180','210','240','270'/
      integer nyrangesveto
      parameter (nyrangesveto = 5)
      real*8 yrangesveto(nyrangesveto + 1)
      data yrangesveto/1d0,2d0,3d0,4d0,5d0,6d0/
      character*1 cyrangesveto(nyrangesveto + 1)
      data cyrangesveto/'1','2','3','4','5','6'/
c
      real*8 MinJetPtVeto
      parameter (MinJetPtVeto = 20d0)
      real*8 MaxJetRapVeto
      parameter (MaxJetRapVeto = 4.4d0)
      real*8 MinAvgPt12Veto
      parameter (MinAvgPt12Veto = 50d0)
      real*8 RparVeto
      parameter (RparVeto = 0.6d0)
      real*8 Q0Veto
      parameter (Q0Veto = 20d0)
      real*8 MaxRapDiff12Veto
      parameter (MaxRapDiff12Veto = 6d0)
c
c These declarations for the differential cross sections:
      real*8 Min1stJetPtdiffxs
      parameter (Min1stJetPtdiffxs = 60d0)
      real*8 Min2ndJetPtdiffxs
      parameter (Min2ndJetPtdiffxs = 30d0)
      real*8 MaxJetRapdiffxs
      parameter (MaxJetRapdiffxs = 2.5d0)
      real*8 Rpardiffxs
      parameter (Rpardiffxs = 0.7d0)
c
      integer nyrangesdiffxs
      parameter (nyrangesdiffxs = 5)
      real*8 yrangesdiffxs(nyrangesdiffxs + 1)
      data yrangesdiffxs/0d0,0.5d0,1d0,1.5d0,2d0,2.5d0/
      character*3 cyrangesdiffxs(nyrangesdiffxs + 1)
      data cyrangesdiffxs/'0.0','0.5','1.0','1.5','2.0','2.5'/
c
c These declarations for the differential cross section of Atlas:
      real*8 Min1stJetPtdiffxsAtlas
      parameter (Min1stJetPtdiffxsAtlas = 100d0)
      real*8 Min2ndJetPtdiffxsAtlas
      parameter (Min2ndJetPtdiffxsAtlas = 50d0)
      real*8 MaxJetRapdiffxsAtlas
      parameter (MaxJetRapdiffxsAtlas = 3.0d0)
c
      integer nystarrangesdiffxsAtlas
      parameter (nystarrangesdiffxsAtlas = 6)
      real*8 ystarrangesdiffxsAtlas(nystarrangesdiffxsAtlas + 1)
      data ystarrangesdiffxsAtlas/0d0,0.5d0,1d0,1.5d0,2d0,2.5d0,3.0d0/
      character*3 cystarrangesdiffxsAtlas(nystarrangesdiffxsAtlas + 1)
      data cystarrangesdiffxsAtlas/'0.0','0.5','1.0','1.5','2.0','2.5',
     >                             '3.0'/
      integer nRpardiffxsAtlas
      parameter (nRpardiffxsAtlas = 2)
      real*8 RpardiffxsAtlas(nRpardiffxsAtlas)
      data RpardiffxsAtlas/0.4d0,0.6d0/
      character*3 cRpardiffxsAtlas(nRpardiffxsAtlas)
      data cRpardiffxsAtlas/'0.4','0.6'/
c
c These declarations are needed for the three-jet invariant mass, CMS PAS:
      real*8 MinJetPtdiffxsCMSPAS
      parameter (MinJetPtdiffxsCMSPAS = 100d0)
      real*8 MaxJetRapdiffxsCMSPAS
      parameter (MaxJetRapdiffxsCMSPAS = 3.0d0)
c
      integer nRpardiffxsCMSPAS
      parameter (nRpardiffxsCMSPAS = 2)
      real*8 RpardiffxsCMSPAS(nRpardiffxsCMSPAS)
      data RpardiffxsCMSPAS/0.5d0,0.7d0/
      character*3 cRpardiffxsCMSPAS(nRpardiffxsCMSPAS)
      data cRpardiffxsCMSPAS/'0.5','0.7'/
c
      integer nymaxrangesdiffxsCMSPAS
      parameter (nymaxrangesdiffxsCMSPAS = 2)
      real*8 ymaxrangesdiffxsCMSPAS(nymaxrangesdiffxsCMSPAS + 1)
      data ymaxrangesdiffxsCMSPAS/0d0,1d0,2d0/
      character*3 cymaxrangesdiffxsCMSPAS(nymaxrangesdiffxsCMSPAS + 1)
      data cymaxrangesdiffxsCMSPAS/'0.0','1.0','2.0'/
c


      if (.not.pwhg_isfinite(dsig0)) then
         write(*,*) '*** PROBLEMS in subroutine analysis ***'
         return
      endif

      if(inimulti) then
         if(weights_num.eq.0) then
            call setupmulti(1)
         else
            call setupmulti(weights_num)
         endif
         inimulti=.false.
      endif

      dsig=0
      if(weights_num.eq.0) then
         dsig(1)=dsig0
         nweights=1
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
          nweights=weights_num
      endif

      if(sum(abs(dsig)).eq.0) return

      if (ini) then
         minlo=powheginput('#minlo')
         if (minlo.eq.1) then
            minnumjets = 2
         else
            minnumjets = 3
         endif
         ini=.false.
      endif

      ntracks=0
      mjets=0
c     Loop over final state particles to find jets 
      do ihep=1,nhep
         if (isthep(ihep).eq.1) then
           if (ntracks.eq.maxtrack) then
              write(*,*) 'Too many particles. Increase maxtrack.'//
     #             ' PROGRAM ABORTS'
              call pwhg_exit(-1)
           endif
c     copy momenta to construct jets 
           ntracks=ntracks+1
           do mu=1,4
              ptrack(mu,ntracks)=phep(mu,ihep)
           enddo
        endif
      enddo

c vvvvvvvvvvvv This part concerns the azimuthal decorrelation vvvvvvvv
c We can only do this analysis if minlo is activated:
      if (minlo.eq.1) then !<minlo>
      R = Rpardphi
      palg = -1d0
      call fastjetppgenkt_pty(ptrack,ntracks,R,palg,
     $                        MinJetPtdphi,MaxJetRapdphi,
     $                        pj,njets,jetvec)
c
      if (njets.lt.2) goto 333
c
      pj1 = pj(:,1)
      pj2 = pj(:,2)
c
      call getyetaptmass(pj1,yj1,etaj1,ptj1,mj1)
      call getyetaptmass(pj2,yj2,etaj2,ptj2,mj2)
      call getdydetadphidr(pj1,pj2,dy12,deta12,dphi12,dr12)
c
      dphi12 = dphi12/pi
c
c The two leading jets should be very central:
      if ((abs(yj1).gt.MaxRapJ1J2dphi).or.
     >    (abs(yj2).gt.MaxRapJ1J2dphi)) goto 333
c
      do j=1,nptmaxbins
        if ((ptj1.gt.dptmaxbins(j)).and.(ptj1.lt.dptmaxbins(j+1))) then
          if (j.ne.nptmaxbins) then
            if ((j.lt.3).and.
     >          (dphi12.lt.23d0/24d0).and.
     >          (dphi12.gt.0.5d0)
     >         ) then
              call filld('sigma '//cptmax(j)//' < ptmax < '//
     >                 cptmax(j+1),1.0d0,dsig)
              call filld('dphi '//cptmax(j)//' < ptmax < '//
     >                   cptmax(j+1),dphi12,dsig)
            end if
            if ((j.gt.2).and.
     >          (dphi12.lt.47d0/48d0).and.
     >          (dphi12.gt.0.5d0)
     >         ) then
              call filld('sigma '//cptmax(j)//' < ptmax < '//
     >                 cptmax(j+1),1.0d0,dsig)
              call filld('dphi '//cptmax(j)//' < ptmax < '//
     >                   cptmax(j+1),dphi12,dsig)
            end if
          else if (j.eq.nptmaxbins) then
            if ((dphi12.lt.47d0/48d0).and.
     >          (dphi12.gt.0.75d0)
     >         ) then
              call filld('dphi '//cptmax(j)//' < ptmax',dphi12,dsig)
              call filld('sigma '//cptmax(j)//' < ptmax',1.0d0,dsig)
            end if
          end if
        end if
      end do
c
      end if !<minlo>
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvvvvvvvvvv This part concerns the jet shapes vvvvvvvvvvvvvvvvvvvvv
c We can only do this analysis if minlo is activated:
      if (minlo.eq.1) then !<minlo>
c
      R = Rparshapes
      palg = -1d0
      call fastjetppgenkt_pty(ptrack,ntracks,R,palg,
     $                        MinJetPtshapes,MaxJetRapshapes,
     $                        pj,njets,jetvec)
c
      if (njets.lt.1) goto 333
c
c      print *,"njets: ",njets
c      do j=1,njets
c        print *,"j: ",j
c        print *,sqrt(pj(1,j)**2 + pj(2,j)**2)
c      end do
c      read(*,*)
c
c Differential in pt:
      do j=1,nptrangebins
        do l=0,5
          rho = calcrho(ntracks,njets,ptrack,pj,jetvec,
     >                  ptrangebins(j),ptrangebins(j+1),
     >                  0d0,yrangebins(nyrangebins+1),
     >                  Rparshapes,deltar,deltar/2d0 + deltar*l)
          call filld('sigma rho(r) '//cptrange(j)//' < pt < '//
     >               cptrange(j+1),1d0,rho*dsig)
          call filld('rho(r) '//cptrange(j)//' < pt < '//
     >               cptrange(j+1),deltar/2d0 + deltar*l,rho*dsig)
        end do
      end do
c
c Differential in pt and y:
c Loop over the whole pt range:
      do j=1,nptrangebins
c Loop over the total rapidity range:
        do k=1,nyrangebins
          do l=0,5
            rho = calcrho(ntracks,njets,ptrack,pj,jetvec,
     >                    ptrangebins(j),ptrangebins(j+1),
     >                    yrangebins(k),yrangebins(k+1),
     >                    Rparshapes,deltar,deltar/2d0 + deltar*l)
            call filld('sigma rho(r) '//cptrange(j)//' < pt < '//
     >                 cptrange(j+1)//' '//cyrange(k)//' < |y| < '//
     >                 cyrange(k+1),1d0,rho*dsig)
            call filld('rho(r) '//cptrange(j)//' < pt < '//
     >                 cptrange(j+1)//' '//cyrange(k)//' < |y| < '//
     >                 cyrange(k+1),deltar/2d0 + deltar*l,rho*dsig)
          end do
        end do
      end do
c
c We calculate psi(r = 0.3) for different pt ranges:
c We plot 1 - psi(r = 0.3) as a function of jet pt:
      do j=1,nptrangebins
        psi = calcpsi(ntracks,njets,ptrack,pj,jetvec,
     >                ptrangebins(j),ptrangebins(j + 1),
     >                yrangebins(1),yrangebins(nyrangebins + 1),
     >                ptrangebins(j),ptrangebins(j + 1),
     >                yrangebins(1),yrangebins(nyrangebins + 1),
     >                Rparshapes,0.3d0)
        if (psi.ge.0d0) then
          call filld('sigma 1 - psi(r=0.3)',(ptrangebins(j+1) + 
     >               ptrangebins(j))/2d0,dsig)
          call filld('1 - psi(r=0.3)',(ptrangebins(j+1) + 
     >               ptrangebins(j))/2d0,(1d0 - psi)*dsig)
        end if
      end do
c we plot 1 - psi(r = 0.3) as a function of jet pt, in fixed y range:
      do j=1,nptrangebins
        do k=1,nyrangebins
          psi = calcpsi(ntracks,njets,ptrack,pj,jetvec,
     >                  ptrangebins(j),ptrangebins(j + 1),
     >                  yrangebins(k),yrangebins(k + 1),
     >                  ptrangebins(j),ptrangebins(j + 1),
     >                  yrangebins(k),yrangebins(k + 1),
     >                  Rparshapes,0.3d0)
          if (psi.ge.0d0) then
            call filld('sigma 1 - psi(r=0.3) '//
     >                 cyrange(k)//' < |y| < '//
     >                 cyrange(k+1),(ptrangebins(j+1) + 
     >                 ptrangebins(j))/2d0,dsig)
            call filld('1 - psi(r=0.3) '//cyrange(k)//' < |y| < '//
     >                 cyrange(k+1),(ptrangebins(j+1) + 
     >                 ptrangebins(j))/2d0,(1d0 - psi)*dsig)
          end if
        end do
      end do
c
      end if !<minlo>
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

333   continue

c vvvvvvvvv This part concerns the jet substructure and mass vvvvvvvvv
c
c We can only do this analysis if minlo is activated:
      if (minlo.eq.1) then !<minlo>
c First we do the analysis with CA, R=1.2:
      R = RparCAsub
      palg = 0d0
      call fastjetalg(ptrack,ntracks,R,palg,.false.,.false.,.true.,
     >                MinJetPtsub,MaxJetRapsub,
     >                pj,njets,sd12,sd23,tau21,tau32)
c The Jet mass should be plotted for various pt windows:
c We go through the jets, if it qualifies for actual ptrange
c we plot it:
      do ijet=1,njets
        p_j = pj(:,ijet)
        call getyetaptmass(p_j,y,eta,pt,m)
c loop over pt ranges:
        do j=1,nptbins
          if ((pt.gt.ptbins(j)).and.(pt.lt.ptbins(j+1))) then
            call filld('sigma mass, CA, R=1.2, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 1d0,dsig)
            call filld('mass, CA, R=1.2, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 m,dsig)
            call filld('tau21, CA, R=1.2, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 tau21(ijet),dsig)
            call filld('tau32, CA, R=1.2, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 tau32(ijet),dsig)
          end if
        end do
      end do
c We do the analysis with CA with Split and Filtering, R=1.2:
      R = RparCAsub
      palg = 0d0
      call fastjetalg(ptrack,ntracks,R,palg,.true.,.false.,.false.,
     >                MinJetPtsub,MaxJetRapsub,
     >                pj,njets,sd12,sd23,tau21,tau32)
c The Jet mass should be plotted for various pt windows:
c We go through the jets, if it qualifies for actual ptrange
c we plot it:
c      print *,"Number of jets is: ",njets
      do ijet=1,njets
        p_j = pj(:,ijet)
        call getyetaptmass(p_j,y,eta,pt,m)
c        print *,"ijet: ",ijet
c        print *,"m: ",m
c loop over pt ranges:
        do j=1,nptbins
          if ((pt.gt.ptbins(j)).and.(pt.lt.ptbins(j+1))) then
            call filld('sigma mass, CA SF, R=1.2, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 1d0,dsig)
            call filld('mass, CA SF, R=1.2, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 m,dsig)
          end if
        end do
      end do
c We do the analysis with antikt:
      R = RparAntiKTsub
      palg = -1d0
      call fastjetalg(ptrack,ntracks,R,palg,.false.,.true.,.false.,
     >                MinJetPtsub,MaxJetRapsub,
     >                pj,njets,sd12,sd23,tau21,tau32)
c The Jet mass should be plotted for various pt windows:
c We go through the jets, if it qualifies for actual ptrange
c we plot it:
c      print *,"Number of jets is: ",njets
      do ijet=1,njets
        p_j = pj(:,ijet)
        call getyetaptmass(p_j,y,eta,pt,m)
c        print *,"ijet: ",ijet
c        print *,"m: ",m
c        print *,"sd12: ",sd12(ijet)
c        print *,"sd23: ",sd23(ijet)
c loop over pt ranges:
        do j=1,nptbins
          if ((pt.gt.ptbins(j)).and.(pt.lt.ptbins(j+1))) then
            call filld('sigma mass, antikt, R=1.0, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 1d0,dsig)
            call filld('mass, antikt, R=1.0, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 m,dsig)
c we use the same loop to plot the kt splitting scales:
c for these we did not define a cross section histo, we use the one
c set up for the jet mass:
            call filld('sd12, antikt, R=1.0, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 sd12(ijet),dsig)
            call filld('sd23, antikt, R=1.0, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 sd23(ijet),dsig)
            call filld('tau21, antikt, R=1.0, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 tau21(ijet),dsig)
            call filld('tau32, antikt, R=1.0, |y| < 2, '//
     >                 cptrangesub(j)//' < pt < '//cptrangesub(j+1),
     >                 tau32(ijet),dsig)
          end if
        end do
      end do
      end if !<minlo>
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvvvvvvvvv This part concerns the R32 ratio calculation vvvvvvvvvvv
c We can only do this analysis if minlo is activated:
      if (minlo.eq.1) then !<minlo>
      R = RparR32
      palg = -1d0
      call fastjetppgenkt_pty(ptrack,ntracks,R,palg,
     $                        MinJetPtR32,MaxJetRapR32,
     $                        pj,njets,jetvec)
c
      if (njets.lt.2) goto 444
c
      pj1 = pj(:,1)
      pj2 = pj(:,2)
c
      call getyetaptmass(pj1,yj1,etaj1,ptj1,mj1)
      call getyetaptmass(pj2,yj2,etaj2,ptj2,mj2)
c
      ptavg12 = (ptj1 + ptj2)/2d0
c
      if (njets.ge.2) call filld('R32, incl. 2jet',ptavg12,dsig)
      if (njets.ge.3) call filld('R32, incl. 3jet',ptavg12,dsig)
c
      end if !<minlo>
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

444   continue

c vvvvvvvvvvvvvvvv This part concerns the dijet veto vvvvvvvvvvvvvvvvv
c We can only do this analysis if minlo is activated:
      if (minlo.eq.1) then !<minlo>
      R = RparVeto
      palg = -1d0
      call fastjetppgenkt_pty(ptrack,ntracks,R,palg,
     $                        MinJetPtVeto,MaxJetRapVeto,
     $                        pj,njets,jetvec)
c
      if (njets.lt.2) goto 555
c+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
c **** In this part we start with the two hardest jets: ****
c+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
c We select the dijet system by their pt which is required to be the
c two hardest:
      pj1 = pj(:,1)
      pj2 = pj(:,2)
c
      call getyetaptmass(pj1,yj1,etaj1,ptj1,mj1)
      call getyetaptmass(pj2,yj2,etaj2,ptj2,mj2)
c
      ptavg12 = (ptj1 + ptj2)/2d0
      dy12 = abs(yj1 - yj2)
c
c We have an additional cut on the average pt of the dijet system
      if (ptavg12.lt.MinAvgPt12Veto) goto 566
c We have a maximal difference in rapidity too:
      if (dy12.gt.MaxRapDiff12Veto) goto 566
c To calculate the gap fraction we need the cross section for all
c jets passing the cuts:
c For different pt ranges:
      do j=1,nptrangesveto
        if ((ptavg12.gt.ptrangesveto(j)).and.
     >      (ptavg12.lt.ptrangesveto(j+1))) then
          call filld('gap tot leadpt, '//cptrangesveto(j)//
     >               ' < avg. pt < '//cptrangesveto(j+1),dy12,dsig)
        end if
      end do
c For different \Delta y ranges:
      do j=1,nyrangesveto
        if ((dy12.gt.yrangesveto(j)).and.
     >      (dy12.lt.yrangesveto(j+1))) then
          call filld('gap tot leadpt, '//cyrangesveto(j)//
     >               ' < dy < '//cyrangesveto(j+1),ptavg12,dsig)
        end if
      end do
c We should have no jet between the two hardest:
      do j=3,njets
        p_j = pj(:,j)
        call getyetaptmass(p_j,y_j,eta_j,pt_j,m_j)
        if ((pt_j.gt.Q0Veto).and.
     >      (y_j.gt.min(yj1,yj2)).and.
     >      (y_j.lt.max(yj1,yj2))) goto 566
      end do
c We go through all pt ranges and we try to fill in the adequate one:
      do j=1,nptrangesveto
        if ((ptavg12.gt.ptrangesveto(j)).and.
     >      (ptavg12.lt.ptrangesveto(j+1))) then
          call filld('gap nojet leadpt, '//cptrangesveto(j)//
     >               ' < avg. pt < '//cptrangesveto(j+1),dy12,dsig)
        end if
      end do
c We do the same but with \Delta y ranges:
      do j=1,nyrangesveto
        if ((dy12.gt.yrangesveto(j)).and.
     >      (dy12.lt.yrangesveto(j+1))) then
c We have to divide by the width of the rapidity window to obtain the
c correct differential cross section:
          dy = yrangesveto(j+1) - yrangesveto(j)
          call filld('gap nojet leadpt, '//cyrangesveto(j)//
     >               ' < dy < '//cyrangesveto(j+1),ptavg12,dsig/dy)
        end if
      end do
c
566   continue
c
c+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
c **** In this part we start with the two furthest jets: ****
c+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
c We go through the jets and select the two most further ones:
c j1 should have the most positive rapidity while j2 the opposite:
      yj1 = -1d5
      yj2 = 1d5
      do j=1,njets
        p_j = pj(:,j)
        call getyetaptmass(p_j,y_j,eta_j,pt_j,m_j)
        if (y_j.gt.yj1) then
          yj1 = y_j
          ijetymax = j
        end if
        if (y_j.lt.yj2) then
          yj2 = y_j
          ijetymin = j
        end if
      end do

      pj1 = pj(:,ijetymax)
      pj2 = pj(:,ijetymin)
c
      call getyetaptmass(pj1,yj1,etaj1,ptj1,mj1)
      call getyetaptmass(pj2,yj2,etaj2,ptj2,mj2)
c
      ptavg12 = (ptj1 + ptj2)/2d0
      dy12 = abs(yj1 - yj2)
c
c We have an additional cut on the average pt of the dijet system
      if (ptavg12.lt.MinAvgPt12Veto) goto 577
c We have a maximal difference in rapidity too:
      if (dy12.gt.MaxRapDiff12Veto) goto 577
c To calculate the gap fraction we need the cross section for all
c jets passing the cuts:
      do j=1,nptrangesveto
        if ((ptavg12.gt.ptrangesveto(j)).and.
     >      (ptavg12.lt.ptrangesveto(j+1))) then
          call filld('gap tot maxdy, '//cptrangesveto(j)//
     >               ' < avg. pt < '//cptrangesveto(j+1),dy12,dsig)
        end if
      end do
c We should have no jet between the two hardest:
      do j=1,njets
c We go through all the jets and skip the furthest ones:
        if ((j.eq.ijetymax).or.(j.eq.ijetymin)) cycle
        p_j = pj(:,j)
        call getyetaptmass(p_j,y_j,eta_j,pt_j,m_j)
        if ((pt_j.gt.Q0Veto).and.
     >      (y_j.gt.min(yj1,yj2)).and.
     >      (y_j.lt.max(yj1,yj2))) goto 577
      end do
c We go through all pt ranges and we try to fill in the adequate one:
      do j=1,nptrangesveto
        if ((ptavg12.gt.ptrangesveto(j)).and.
     >      (ptavg12.lt.ptrangesveto(j+1))) then
          call filld('gap nojet maxdy, '//cptrangesveto(j)//
     >               ' < avg. pt < '//cptrangesveto(j+1),dy12,dsig)
        end if
      end do
c
577   continue
c
      end if !<minlo>
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

555   continue

c vvvvvvvv This part concerns the differential cross sections vvvvvvvv
c We can only do this analysis if minlo is activated:
      if (minlo.eq.1) then !<minlo>
      R = Rpardiffxs
      palg = -1d0
      call fastjetppgenkt_pty(ptrack,ntracks,R,palg,
     $                        Min2ndJetPtdiffxs,MaxJetRapdiffxs,
     $                        pj,njets,jetvec)
c
c For the inclusive jet study we need at least one reconstructed jet:
      if (njets.lt.1) goto 666
c
c We go through all the jets and plot their pt's:
      do j=1,njets
        pj1   = pj(:,j)
        call getyetaptmass(pj1,yj1,etaj1,ptj1,mj1)
        do k=1,nyrangesdiffxs
          if ((abs(yj1).gt.yrangesdiffxs(k)).and.
     >        (abs(yj1).lt.yrangesdiffxs(k+1))) then
            call filld('inclusive jet, '//cyrangesdiffxs(k)//
     >                 ' < |y| < '//cyrangesdiffxs(k+1),ptj1,dsig)
          end if
        end do
      end do
c For dijet mass we need at least two jets to be present:
      if (njets.lt.2) goto 666
c We only interested in the first two jets:
      pj1   = pj(:,1)
      pj2   = pj(:,2)
      call getyetaptmass(pj1,yj1,etaj1,ptj1,mj1)
      call getyetaptmass(pj2,yj2,etaj2,ptj2,mj2)
c The first jet has to have a larger transverse momentum:
      if (ptj1.lt.Min1stJetPtdiffxs) goto 666
c
      call pwhg_getinvmass(pj1 + pj2,m)
c We go through all the y ranges and plot the mass where it belongs:
        do k=1,nyrangesdiffxs
          if ((max(abs(yj1),abs(yj2)).gt.yrangesdiffxs(k)).and.
     >        (max(abs(yj1),abs(yj2)).lt.yrangesdiffxs(k+1))) then
            call filld('dijet mass, '//cyrangesdiffxs(k)//
     >                 ' < |y| < '//cyrangesdiffxs(k+1),m,dsig)
          end if
        end do
c 
c
      end if !<minlo>
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

666   continue

c vvvv This part concerns the differential cross sections at Atlas vvvv
c We can only do this analysis if minlo is activated:
      if (minlo.eq.1) then !<minlo>
      do i=1,nRpardiffxsAtlas !<sweep through R's>
        palg = -1d0
        R = RpardiffxsAtlas(i)
        call fastjetppgenkt_pty(ptrack,ntracks,R,palg,
     $                          Min2ndJetPtdiffxsAtlas,
     $                          MaxJetRapdiffxsAtlas,
     $                          pj,njets,jetvec)
c
c For dijet mass we need at least two jets to be present:
        if (njets.lt.2) cycle
c We only interested in the first two jets:
        pj1   = pj(:,1)
        pj2   = pj(:,2)
        call getyetaptmass(pj1,yj1,etaj1,ptj1,mj1)
        call getyetaptmass(pj2,yj2,etaj2,ptj2,mj2)
c The first jet has to have a larger transverse momentum:
        if (ptj1.lt.Min1stJetPtdiffxsAtlas) cycle
c
        call pwhg_getinvmass(pj1 + pj2,m)
c We go through all the ystar ranges and plot the mass where it belongs:
        ystar = abs(yj1 - yj2)/2d0
        do k=1,nystarrangesdiffxsAtlas
          if ((ystar.gt.ystarrangesdiffxsAtlas(k)).and.
     >        (ystar.lt.ystarrangesdiffxsAtlas(k+1))) then
c We calculate the width of the ystar bin:
            dystar = ystarrangesdiffxsAtlas(k+1)
     >             - ystarrangesdiffxsAtlas(k)
            call filld('dijet mass, R='//cRpardiffxsAtlas(i)//', '//
     >                 cystarrangesdiffxsAtlas(k)//' < y* < '//
     >                 cystarrangesdiffxsAtlas(k+1),m,dsig/dystar)
          end if
        end do
c 
      end do !<sweep through R's>
c
      end if !<minlo>
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

c vvvv This part concerns the trijet invariant mass, CMS PAS vvvv
      do i=1,nRpardiffxsCMSPAS !<sweep through R's>
        palg = -1d0
        R = RpardiffxsCMSPAS(i)
        call fastjetppgenkt_pty(ptrack,ntracks,R,palg,
     $                          MinJetPtdiffxsCMSPAS,
     $                          MaxJetRapdiffxsCMSPAS,
     $                          pj,njets,jetvec)
c
c For trijet mass we need at least three jets to be present:
        if (njets.lt.3) cycle
c We only interested in the first two jets:
        pj1   = pj(:,1)
        pj2   = pj(:,2)
        pj3   = pj(:,3)
c
        call getyetaptmass(pj1,yj1,etaj1,ptj1,mj1)
        call getyetaptmass(pj2,yj2,etaj2,ptj2,mj2)
        call getyetaptmass(pj3,yj3,etaj3,ptj3,mj3)
c
        call pwhg_getinvmass(pj1 + pj2 + pj3,m)
c We go through all the ymax ranges and plot the mass where it belongs:
        ymax = sign(max(abs(yj1),abs(yj2),abs(yj3)),
     >              abs(max(yj1,yj2,yj3)) - abs(min(yj1,yj2,yj3)))
        do k=1,nymaxrangesdiffxsCMSPAS
          if ((abs(ymax).gt.ymaxrangesdiffxsCMSPAS(k)).and.
     >        (abs(ymax).lt.ymaxrangesdiffxsCMSPAS(k+1))) then
c We calculate the width of the ystar bin:
            dymax = 2d0*(ymaxrangesdiffxsCMSPAS(k+1)
     >             - ymaxrangesdiffxsCMSPAS(k))
            call filld('m123, R='//cRpardiffxsCMSPAS(i)//', '//
     >                 cymaxrangesdiffxsCMSPAS(k)//' < |ymax| < '//
     >                 cymaxrangesdiffxsCMSPAS(k+1),m,dsig/dymax)
          end if
        end do
c 
      end do !<sweep through R's>
c ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
      end




c      subroutine yetaptmassplot(p,dsig,prefix)
c      implicit none
c      real * 8 p(4),dsig
c      character *(*) prefix
c      real * 8 y,eta,pt,m
c      call getyetaptmass(p,y,eta,pt,m)
c      call filld(prefix//'-y',y,dsig)
c      call filld(prefix//'-eta',eta,dsig)
c      call filld(prefix//'-pt',pt,dsig)
c      call filld(prefix//'-m',m,dsig)
c      end

      subroutine deltaplot(p1,p2,dsig,prefix,postfix)
      implicit none
      real * 8 p1(4),p2(4),dsig(7)
      character *(*) prefix,postfix
      real * 8 dy,deta,delphi,dr
      call getdydetadphidr(p1,p2,dy,deta,delphi,dr)
      call filld(prefix//'-dy'//postfix,dy,dsig)
      call filld(prefix//'-deta'//postfix,deta,dsig)
      call filld(prefix//'-delphi'//postfix,delphi,dsig)
      call filld(prefix//'-dr'//postfix,dr,dsig)
      end

      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      real * 8 p(4),y,eta,pt,mass
      call pwhg_getrapidity(p,y)      
      pt=sqrt(p(1)**2+p(2)**2)
      call pwhg_getpseudorapidity(p,eta)
      call pwhg_getinvmass(p,mass)
      end

      subroutine getdydetadphidr(p1,p2,dy,deta,dphi,dr)
      implicit none
      include 'pwhg_math.h' 
      real * 8 p1(*),p2(*),dy,deta,dphi,dr
      real * 8 y1,eta1,pt1,mass1,phi1
      real * 8 y2,eta2,pt2,mass2,phi2
      call getyetaptmass(p1,y1,eta1,pt1,mass1)
      call getyetaptmass(p2,y2,eta2,pt2,mass2)
      dy=y1-y2
      deta=eta1-eta2
      phi1=atan2(p1(1),p1(2))
      phi2=atan2(p2(1),p2(2))
      dphi=abs(phi1-phi2)
      dphi=min(dphi,2d0*pi-dphi)
      dr=sqrt(deta**2+dphi**2)
      end


      subroutine sortbypt(n,iarr)
      implicit none
      integer n,iarr(n)
      include 'hepevt.h'
      integer j,k
      real * 8 tmp,pt(nmxhep)
      logical touched
      do j=1,n
         pt(j)=sqrt(phep(1,iarr(j))**2+phep(2,iarr(j))**2)
      enddo
c bubble sort
      touched=.true.
      do while(touched)
         touched=.false.
         do j=1,n-1
            if(pt(j).lt.pt(j+1)) then
               k=iarr(j)
               iarr(j)=iarr(j+1)
               iarr(j+1)=k
               tmp=pt(j)
               pt(j)=pt(j+1)
               pt(j+1)=tmp
               touched=.true.
            endif
         enddo
      enddo
      end

      function islept(j)
      implicit none
      logical islept
      integer j
      if(abs(j).ge.11.and.abs(j).le.15) then
         islept = .true.
      else
         islept = .false.
      endif
      end

      function get_ptrel(pin,pjet)
      implicit none
      real * 8 get_ptrel,pin(0:3),pjet(0:3)
      real * 8 pin2,pjet2,cth2,scalprod
      pin2  = pin(1)**2 + pin(2)**2 + pin(3)**2
      pjet2 = pjet(1)**2 + pjet(2)**2 + pjet(3)**2
      scalprod = pin(1)*pjet(1) + pin(2)*pjet(2) + pin(3)*pjet(3)
      cth2 = scalprod**2/pin2/pjet2
      get_ptrel = sqrt(pin2*abs(1d0 - cth2))
      end

      subroutine pwhgfinalopshist
      end

      function calcrho(ntrack,njet,ptrack,pjet,jetvec,
     >                 ptmin,ptmax,ymin,ymax,Rpar,dr,r)
      implicit none
c
      real*8 calcrho
c
      integer maxtrack,maxjet
      parameter (maxtrack=2048)
      parameter (maxjet=2048)
c
      integer ntrack,njet
      real*8 ptrack(4,maxtrack),pjet(4,maxjet)
      integer jetvec(maxtrack)
      real*8 ptmin,ptmax
      real*8 ymin,ymax
      real*8 Rpar,dr,r
c
      integer ijet
      integer numjets
      real*8 p_j(4)
      real*8 pt_j,y_j
      real*8 pt_dr,pt_r
c
      real*8 calcptdr
      external calcptdr
c
      calcrho = 0d0
      numjets = 0
c
c we loop over all jets:
      do ijet=1,njet
        p_j = pjet(:,ijet)
        call pwhg_getpt(p_j,pt_j)
        call pwhg_getrapidity(p_j,y_j)
c We only consider those jets for which the pt is in a given range:
        if ((pt_j.lt.ptmin).or.(pt_j.gt.ptmax)) cycle
c We even include the possibility to make cuts on rapidity:
        if ((abs(y_j).lt.ymin).or.(abs(y_j).gt.ymax)) cycle
c We have an extra cut on the jet pt, hence njet is not the number of
c jets considered for rho:
        numjets = numjets + 1
c we calculate the pt contribution of an annulus between r - \Delta r/2
c and r + \Delta r/2
        pt_dr = calcptdr(ijet,p_j,ntrack,ptrack,jetvec,r,dr)
c We calculate the summed pt of all the clusters in the jet:
        pt_r = calcptdr(ijet,p_j,ntrack,ptrack,jetvec,
     >                  Rpar/2d0,Rpar)
C        calcrho = calcrho + pt_dr/pt_j
        calcrho = calcrho + pt_dr/pt_r
      end do
c normalization:
      if (numjets.gt.0) calcrho = calcrho/numjets/dr
c
      end function calcrho
c
c This function calculates the pt contribution coming from an annulus
c between r - dr/2 and r + dr/2. The jet orientation is
c given by the jet momentum (pj). 
      function calcptdr(ijet,pj,ntrack,ptrack,jetvec,r,dr)
      implicit none
c
      real*8 calcptdr
c
      integer maxtrack
      parameter (maxtrack = 2048)
c
      integer ijet
      real*8 pj(4)
      integer ntrack
      real*8 ptrack(4,maxtrack)
      integer jetvec(maxtrack)
      real*8 r,dr
c
      integer itrack
      real*8 dr2
      real*8 deltar,pt_tmp
c
c
      calcptdr = 0d0
c
      dr2 = dr/2d0
c
c We loop over all tracks and select only those which are part
c of the ijet-th jet:
      do itrack=1,ntrack
        if (jetvec(itrack).ne.ijet) cycle
c If we are here the itrack-th track is part of the ijet-th jet:
        call pwhg_getR_phiy(pj,ptrack(:,itrack),deltar)
c is it in the annulus?
        if ((deltar.lt.(r - dr2)).or.(deltar.gt.(r + dr2))) cycle
        call pwhg_getpt(ptrack(:,itrack),pt_tmp)
        calcptdr = calcptdr + pt_tmp
      end do
c
      end function calcptdr
c
c This routine calculates the integrated jet shape. 
c ptmin, ptmax are the cuts on the pt of the considered jets,
c ymin and ymax have the same role but with the rapidities,
c while ptw,yw variables are used to define the pt and y
c window.
      function calcpsi(ntrack,njet,ptrack,pjet,jetvec,
     >                 ptmin,ptmax,ymin,ymax,
     >                 ptwmin,ptwmax,ywmin,ywmax,
     >                 Rpar,r)
      implicit none
c
      real*8 calcpsi
c
      integer maxtrack,maxjet
      parameter (maxtrack=2048)
      parameter (maxjet=2048)
c
      integer ntrack,njet
      real*8 ptrack(4,maxtrack),pjet(4,maxjet)
      integer jetvec(maxtrack)
      real*8 ptmin,ptmax
      real*8 ymin,ymax
      real*8 ptwmin,ptwmax
      real*8 ywmin,ywmax
      real*8 Rpar,r
c
      integer ijet
      integer numjets
      real*8 p_j(4)
      real*8 pt_j,y_j
      real*8 pt_r
c
      real*8 calcptdr
      external calcptdr
c
c We set psi to an unphysical value:
      calcpsi = -1d5
      numjets = 0
c
c we loop over all jets:
      do ijet=1,njet
        p_j = pjet(:,ijet)
        call pwhg_getpt(p_j,pt_j)
        call pwhg_getrapidity(p_j,y_j)
c We only consider those jets for which the pt is in a given range:
        if ((pt_j.lt.ptmin).or.(pt_j.gt.ptmax)) cycle
c We even include the possibility to make cuts on rapidity:
        if ((abs(y_j).lt.ymin).or.(abs(y_j).gt.ymax)) cycle
        numjets = numjets + 1
c If we have at least one jet the psi is initialized to be physical:
        if (numjets.eq.1) calcpsi = 0d0
        if ((pt_j.lt.ptwmin).or.(pt_j.gt.ptwmax)) cycle
        if ((abs(y_j).lt.ywmin).or.(abs(y_j).gt.ywmax)) cycle
c The next few lines are needed for the window:
c we calculate the pt contribution of between 0 and r:
c we can use the previously implemented calcptdr function 
c with parameters: r = r/2 and dr = r, with this
c parameter choice the function calculates the pt 
c contribution from tracks situating in an annulus between 
c zero and r
        pt_r = calcptdr(ijet,p_j,ntrack,ptrack,jetvec,r/2d0,r)
        pt_j = calcptdr(ijet,p_j,ntrack,ptrack,jetvec,Rpar/2d0,Rpar)
        calcpsi = calcpsi + pt_r/pt_j
      end do
c normalization:
      if (numjets.gt.0) calcpsi = calcpsi/numjets
c
      end function calcpsi
