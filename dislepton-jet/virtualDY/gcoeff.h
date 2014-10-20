      integer aa0, aa11,aa12,aa22,aa21,aa15,aa25,bb0,dd0
      integer ee11,ee22,ee15,ee25,ff0,gg1,hh1,hh2,hh5
      integer bb1,bb2,cc1,cc2,cc5,ee0,gg2,ee12,ee21
      integer hPl1,hPr1,hPl2,hPr2,hRe,hIm,hepm2,hepm1,hep0
      integer hZfl, hZfr, hZsl, hZsr
      integer hllV, hllA
      parameter (aa0=1,aa11=2,aa12=3,aa22=4,aa21=5,aa15=6,aa25=7)
      parameter (bb1=8,bb2=9,cc1=10,cc2=11,cc5=12,dd0=13)
      parameter (ee0=14,ee11=15,ee12=16,ee22=17,ee21=18,ee15=19,ee25=20)
      parameter (ff0=21,gg1=22,gg2=23,hh1=24,hh2=25,hh5=26)
      parameter (bb0=27)
      parameter (hPl1=1,hPr1=2,hPl2=1,hPr2=2,hepm2=-2,hepm1=-1,hep0=0)
      parameter (hZfl=1,hZfr=2,hZsl=3,hZsr=4)
      parameter (hRe=1,hIm=2,hllV=1,hllA=2)
      complex*16 gcoeff(27,2,2,-2:0)
      complex*16 gcoeffarr(27,2,2,-2:0,4)

