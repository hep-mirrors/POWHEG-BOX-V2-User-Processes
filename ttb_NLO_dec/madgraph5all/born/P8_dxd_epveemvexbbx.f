      SUBROUTINE SP8_dxd_epveemvexbbx1(P,ANS)
C     
C     Generated by MadGraph 5 v. 1.5.13, 2013-11-04
C     By the MadGraph Development Team
C     Please visit us at https://launchpad.net/madgraph5
C     
C     MadGraph for Madevent Version
C     
C     Returns amplitude squared summed/avg over colors
C     and helicities
C     for the point in phase space P(0:3,NEXTERNAL_BORN)
C     
C     Process: d~ d > t t~ > e+ ve e- ve~ b b~ QCD=2 QED=4 @8
C     
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INCLUDE 'genps.inc'
      INCLUDE 'maxconfigs.inc'
      INCLUDE 'nexternal_born.inc'
      INCLUDE 'maxamps_P8_dxd_epveemvexbbx.inc'
      INTEGER                 NCOMB
      PARAMETER (             NCOMB=256)
      INTEGER    NGRAPHS
      PARAMETER (NGRAPHS=1)
      INTEGER    NDIAGS
      PARAMETER (NDIAGS=1)
      INTEGER    THEL
      PARAMETER (THEL=2*NCOMB)
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL_BORN),ANS
C     
C     LOCAL VARIABLES 
C     
      INTEGER NHEL(NEXTERNAL_BORN,NCOMB),NTRY(2)
      INTEGER ISHEL(2)
      REAL*8 T,P8_dxd_epveemvexbbx1
      REAL*8 R,SUMHEL,TS(NCOMB)
      INTEGER I,IDEN
      INTEGER JC(NEXTERNAL_BORN),II
      LOGICAL GOODHEL(NCOMB,2)
      REAL*8 HWGT, XTOT, XTRY, XREJ, XR, YFRAC(0:NCOMB)
      INTEGER NGOOD(2), IGOOD(NCOMB,2)
      INTEGER JHEL(2), J, JJ
C     
C     GLOBAL VARIABLES
C     
      DOUBLE PRECISION AMP2(MAXAMPS), JAMP2(0:MAXFLOW)
      COMMON/TO_AMPS_P8_dxd_epveemvexbbx/  AMP2,       JAMP2

      CHARACTER*101         HEL_BUFF
      COMMON/TO_HELICITY/  HEL_BUFF

      INTEGER IMIRROR
      COMMON/TO_mirror_GL/ IMIRROR

      REAL*8 POL(2)
      COMMON/TO_polarization_GL/ POL

      INTEGER          ISUM_HEL
      LOGICAL                    MULTI_CHANNEL
      COMMON/TO_matrix_GL/ISUM_HEL, MULTI_CHANNEL
      INTEGER MAPCONFIG(0:LMAXCONFIGS), ICONFIG
      COMMON/TO_MCONFIGS/MAPCONFIG, ICONFIG
      INTEGER SUBDIAG(MAXSPROC),IB(2)
      COMMON/TO_SUB_DIAG/SUBDIAG,IB
      DATA XTRY, XREJ /0,0/
      DATA NTRY /0,0/
      DATA NGOOD /0,0/
      DATA ISHEL/0,0/
      SAVE YFRAC, IGOOD, JHEL
      DATA GOODHEL/THEL*.FALSE./
      DATA (NHEL(I,   1),I=1,8) /-1,-1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,   2),I=1,8) /-1,-1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,   3),I=1,8) /-1,-1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,   4),I=1,8) /-1,-1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,   5),I=1,8) /-1,-1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,   6),I=1,8) /-1,-1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,   7),I=1,8) /-1,-1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,   8),I=1,8) /-1,-1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,   9),I=1,8) /-1,-1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,  10),I=1,8) /-1,-1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,  11),I=1,8) /-1,-1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,  12),I=1,8) /-1,-1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,  13),I=1,8) /-1,-1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,  14),I=1,8) /-1,-1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,  15),I=1,8) /-1,-1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,  16),I=1,8) /-1,-1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,  17),I=1,8) /-1,-1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I,  18),I=1,8) /-1,-1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I,  19),I=1,8) /-1,-1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I,  20),I=1,8) /-1,-1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I,  21),I=1,8) /-1,-1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,  22),I=1,8) /-1,-1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I,  23),I=1,8) /-1,-1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I,  24),I=1,8) /-1,-1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I,  25),I=1,8) /-1,-1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I,  26),I=1,8) /-1,-1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I,  27),I=1,8) /-1,-1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I,  28),I=1,8) /-1,-1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I,  29),I=1,8) /-1,-1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I,  30),I=1,8) /-1,-1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I,  31),I=1,8) /-1,-1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I,  32),I=1,8) /-1,-1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I,  33),I=1,8) /-1,-1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  34),I=1,8) /-1,-1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  35),I=1,8) /-1,-1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,  36),I=1,8) /-1,-1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,  37),I=1,8) /-1,-1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,  38),I=1,8) /-1,-1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,  39),I=1,8) /-1,-1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,  40),I=1,8) /-1,-1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,  41),I=1,8) /-1,-1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,  42),I=1,8) /-1,-1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,  43),I=1,8) /-1,-1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,  44),I=1,8) /-1,-1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,  45),I=1,8) /-1,-1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,  46),I=1,8) /-1,-1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,  47),I=1,8) /-1,-1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,  48),I=1,8) /-1,-1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,  49),I=1,8) /-1,-1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I,  50),I=1,8) /-1,-1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I,  51),I=1,8) /-1,-1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I,  52),I=1,8) /-1,-1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I,  53),I=1,8) /-1,-1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,  54),I=1,8) /-1,-1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I,  55),I=1,8) /-1,-1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I,  56),I=1,8) /-1,-1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I,  57),I=1,8) /-1,-1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I,  58),I=1,8) /-1,-1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I,  59),I=1,8) /-1,-1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I,  60),I=1,8) /-1,-1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I,  61),I=1,8) /-1,-1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I,  62),I=1,8) /-1,-1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I,  63),I=1,8) /-1,-1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I,  64),I=1,8) /-1,-1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I,  65),I=1,8) /-1, 1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  66),I=1,8) /-1, 1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  67),I=1,8) /-1, 1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,  68),I=1,8) /-1, 1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,  69),I=1,8) /-1, 1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,  70),I=1,8) /-1, 1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,  71),I=1,8) /-1, 1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,  72),I=1,8) /-1, 1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,  73),I=1,8) /-1, 1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,  74),I=1,8) /-1, 1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,  75),I=1,8) /-1, 1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,  76),I=1,8) /-1, 1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,  77),I=1,8) /-1, 1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,  78),I=1,8) /-1, 1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,  79),I=1,8) /-1, 1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,  80),I=1,8) /-1, 1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,  81),I=1,8) /-1, 1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I,  82),I=1,8) /-1, 1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I,  83),I=1,8) /-1, 1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I,  84),I=1,8) /-1, 1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I,  85),I=1,8) /-1, 1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,  86),I=1,8) /-1, 1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I,  87),I=1,8) /-1, 1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I,  88),I=1,8) /-1, 1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I,  89),I=1,8) /-1, 1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I,  90),I=1,8) /-1, 1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I,  91),I=1,8) /-1, 1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I,  92),I=1,8) /-1, 1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I,  93),I=1,8) /-1, 1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I,  94),I=1,8) /-1, 1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I,  95),I=1,8) /-1, 1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I,  96),I=1,8) /-1, 1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I,  97),I=1,8) /-1, 1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  98),I=1,8) /-1, 1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  99),I=1,8) /-1, 1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 100),I=1,8) /-1, 1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 101),I=1,8) /-1, 1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 102),I=1,8) /-1, 1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 103),I=1,8) /-1, 1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 104),I=1,8) /-1, 1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 105),I=1,8) /-1, 1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 106),I=1,8) /-1, 1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 107),I=1,8) /-1, 1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 108),I=1,8) /-1, 1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 109),I=1,8) /-1, 1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 110),I=1,8) /-1, 1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 111),I=1,8) /-1, 1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 112),I=1,8) /-1, 1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 113),I=1,8) /-1, 1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 114),I=1,8) /-1, 1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 115),I=1,8) /-1, 1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 116),I=1,8) /-1, 1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 117),I=1,8) /-1, 1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 118),I=1,8) /-1, 1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 119),I=1,8) /-1, 1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 120),I=1,8) /-1, 1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 121),I=1,8) /-1, 1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 122),I=1,8) /-1, 1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 123),I=1,8) /-1, 1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 124),I=1,8) /-1, 1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 125),I=1,8) /-1, 1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 126),I=1,8) /-1, 1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 127),I=1,8) /-1, 1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 128),I=1,8) /-1, 1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 129),I=1,8) / 1,-1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 130),I=1,8) / 1,-1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 131),I=1,8) / 1,-1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 132),I=1,8) / 1,-1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 133),I=1,8) / 1,-1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 134),I=1,8) / 1,-1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 135),I=1,8) / 1,-1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 136),I=1,8) / 1,-1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 137),I=1,8) / 1,-1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 138),I=1,8) / 1,-1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 139),I=1,8) / 1,-1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 140),I=1,8) / 1,-1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 141),I=1,8) / 1,-1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 142),I=1,8) / 1,-1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 143),I=1,8) / 1,-1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 144),I=1,8) / 1,-1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 145),I=1,8) / 1,-1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 146),I=1,8) / 1,-1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 147),I=1,8) / 1,-1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 148),I=1,8) / 1,-1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 149),I=1,8) / 1,-1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 150),I=1,8) / 1,-1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 151),I=1,8) / 1,-1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 152),I=1,8) / 1,-1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 153),I=1,8) / 1,-1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 154),I=1,8) / 1,-1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 155),I=1,8) / 1,-1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 156),I=1,8) / 1,-1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 157),I=1,8) / 1,-1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 158),I=1,8) / 1,-1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 159),I=1,8) / 1,-1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 160),I=1,8) / 1,-1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 161),I=1,8) / 1,-1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 162),I=1,8) / 1,-1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 163),I=1,8) / 1,-1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 164),I=1,8) / 1,-1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 165),I=1,8) / 1,-1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 166),I=1,8) / 1,-1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 167),I=1,8) / 1,-1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 168),I=1,8) / 1,-1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 169),I=1,8) / 1,-1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 170),I=1,8) / 1,-1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 171),I=1,8) / 1,-1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 172),I=1,8) / 1,-1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 173),I=1,8) / 1,-1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 174),I=1,8) / 1,-1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 175),I=1,8) / 1,-1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 176),I=1,8) / 1,-1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 177),I=1,8) / 1,-1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 178),I=1,8) / 1,-1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 179),I=1,8) / 1,-1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 180),I=1,8) / 1,-1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 181),I=1,8) / 1,-1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 182),I=1,8) / 1,-1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 183),I=1,8) / 1,-1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 184),I=1,8) / 1,-1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 185),I=1,8) / 1,-1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 186),I=1,8) / 1,-1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 187),I=1,8) / 1,-1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 188),I=1,8) / 1,-1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 189),I=1,8) / 1,-1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 190),I=1,8) / 1,-1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 191),I=1,8) / 1,-1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 192),I=1,8) / 1,-1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 193),I=1,8) / 1, 1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 194),I=1,8) / 1, 1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 195),I=1,8) / 1, 1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 196),I=1,8) / 1, 1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 197),I=1,8) / 1, 1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 198),I=1,8) / 1, 1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 199),I=1,8) / 1, 1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 200),I=1,8) / 1, 1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 201),I=1,8) / 1, 1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 202),I=1,8) / 1, 1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 203),I=1,8) / 1, 1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 204),I=1,8) / 1, 1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 205),I=1,8) / 1, 1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 206),I=1,8) / 1, 1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 207),I=1,8) / 1, 1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 208),I=1,8) / 1, 1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 209),I=1,8) / 1, 1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 210),I=1,8) / 1, 1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 211),I=1,8) / 1, 1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 212),I=1,8) / 1, 1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 213),I=1,8) / 1, 1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 214),I=1,8) / 1, 1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 215),I=1,8) / 1, 1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 216),I=1,8) / 1, 1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 217),I=1,8) / 1, 1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 218),I=1,8) / 1, 1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 219),I=1,8) / 1, 1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 220),I=1,8) / 1, 1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 221),I=1,8) / 1, 1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 222),I=1,8) / 1, 1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 223),I=1,8) / 1, 1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 224),I=1,8) / 1, 1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 225),I=1,8) / 1, 1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 226),I=1,8) / 1, 1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 227),I=1,8) / 1, 1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 228),I=1,8) / 1, 1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 229),I=1,8) / 1, 1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 230),I=1,8) / 1, 1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 231),I=1,8) / 1, 1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 232),I=1,8) / 1, 1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 233),I=1,8) / 1, 1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 234),I=1,8) / 1, 1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 235),I=1,8) / 1, 1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 236),I=1,8) / 1, 1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 237),I=1,8) / 1, 1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 238),I=1,8) / 1, 1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 239),I=1,8) / 1, 1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 240),I=1,8) / 1, 1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 241),I=1,8) / 1, 1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 242),I=1,8) / 1, 1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 243),I=1,8) / 1, 1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 244),I=1,8) / 1, 1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 245),I=1,8) / 1, 1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 246),I=1,8) / 1, 1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 247),I=1,8) / 1, 1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 248),I=1,8) / 1, 1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 249),I=1,8) / 1, 1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 250),I=1,8) / 1, 1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 251),I=1,8) / 1, 1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 252),I=1,8) / 1, 1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 253),I=1,8) / 1, 1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 254),I=1,8) / 1, 1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 255),I=1,8) / 1, 1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 256),I=1,8) / 1, 1, 1, 1, 1, 1, 1, 1/
      DATA IDEN/36/
C     ----------
C     BEGIN CODE
C     ----------
      NTRY(IMIRROR)=NTRY(IMIRROR)+1
      DO I=1,NEXTERNAL_BORN
        JC(I) = +1
      ENDDO

      IF (MULTI_CHANNEL) THEN
        DO I=1,NDIAGS
          AMP2(I)=0D0
        ENDDO
        JAMP2(0)=2
        DO I=1,INT(JAMP2(0))
          JAMP2(I)=0D0
        ENDDO
      ENDIF
      ANS = 0D0
      WRITE(HEL_BUFF,'(20I5)') (0,I=1,NEXTERNAL_BORN)
      DO I=1,NCOMB
        TS(I)=0D0
      ENDDO
      IF (ISHEL(IMIRROR) .EQ. 0 .OR. NTRY(IMIRROR) .LE. MAXTRIES) THEN
        DO I=1,NCOMB
          IF (GOODHEL(I,IMIRROR) .OR. NTRY(IMIRROR).LE.MAXTRIES) THEN
            T=P8_dxd_epveemvexbbx1(P ,NHEL(1,I),JC(1))
            DO JJ=1,NINCOMING
              IF(POL(JJ).NE.1D0.AND.NHEL(JJ,I).EQ.INT(SIGN(1D0
     $         ,POL(JJ)))) THEN
                T=T*ABS(POL(JJ))
              ELSE IF(POL(JJ).NE.1D0)THEN
                T=T*(2D0-ABS(POL(JJ)))
              ENDIF
            ENDDO
            ANS=ANS+DABS(T)
            TS(I)=T
          ENDIF
        ENDDO
        JHEL(IMIRROR) = 1
        IF(NTRY(IMIRROR).LE.MAXTRIES)THEN
          DO I=1,NCOMB
            IF (.NOT.GOODHEL(I,IMIRROR) .AND. (DABS(TS(I)).GT.ANS
     $       *LIMHEL/NCOMB)) THEN
              GOODHEL(I,IMIRROR)=.TRUE.
              NGOOD(IMIRROR) = NGOOD(IMIRROR) +1
              IGOOD(NGOOD(IMIRROR),IMIRROR) = I
              PRINT *,'Added good helicity ',I,TS(I)*NCOMB/ANS
     $         ,' in event ',NTRY(IMIRROR)
            ENDIF
          ENDDO
        ENDIF
        IF(NTRY(IMIRROR).EQ.MAXTRIES)THEN
          ISHEL(IMIRROR)=MIN(ISUM_HEL,NGOOD(IMIRROR))
        ENDIF
      ELSE  !LOOP OVER GOOD HELICITIES
        DO J=1,ISHEL(IMIRROR)
          JHEL(IMIRROR)=JHEL(IMIRROR)+1
          IF (JHEL(IMIRROR) .GT. NGOOD(IMIRROR)) JHEL(IMIRROR)=1
          HWGT = REAL(NGOOD(IMIRROR))/REAL(ISHEL(IMIRROR))
          I = IGOOD(JHEL(IMIRROR),IMIRROR)
          T=P8_dxd_epveemvexbbx1(P ,NHEL(1,I),JC(1))
          DO JJ=1,NINCOMING
            IF(POL(JJ).NE.1D0.AND.NHEL(JJ,I).EQ.INT(SIGN(1D0,POL(JJ)))
     $       ) THEN
              T=T*ABS(POL(JJ))
            ELSE IF(POL(JJ).NE.1D0)THEN
              T=T*(2D0-ABS(POL(JJ)))
            ENDIF
          ENDDO
          ANS=ANS+DABS(T)*HWGT
          TS(I)=T*HWGT
        ENDDO
        IF (ISHEL(IMIRROR) .EQ. 1) THEN
          WRITE(HEL_BUFF,'(20i5)')(NHEL(II,I),II=1,NEXTERNAL_BORN)
C         Set right sign for ANS, based on sign of chosen helicity
          ANS=DSIGN(ANS,TS(I))
        ENDIF
      ENDIF
      IF (ISHEL(IMIRROR) .NE. 1) THEN
        SUMHEL=0D0
        DO I=1,NCOMB
          SUMHEL=SUMHEL+DABS(TS(I))/ANS
          IF(R.LT.SUMHEL)THEN
            WRITE(HEL_BUFF,'(20i5)')(NHEL(II,I),II=1,NEXTERNAL_BORN)
C           Set right sign for ANS, based on sign of chosen helicity
            ANS=DSIGN(ANS,TS(I))
            GOTO 10
          ENDIF
        ENDDO
 10     CONTINUE
      ENDIF
      IF (MULTI_CHANNEL) THEN
        XTOT=0D0
        DO I=1,NDIAGS
          XTOT=XTOT+AMP2(I)
        ENDDO
        IF (XTOT.NE.0D0) THEN
          ANS=ANS*AMP2(SUBDIAG(1))/XTOT
        ELSE
          ANS=0D0
        ENDIF
      ENDIF
      ANS=ANS/DBLE(IDEN)
      END


      REAL*8 FUNCTION P8_dxd_epveemvexbbx1(P,NHEL,IC)
C     
C     Generated by MadGraph 5 v. 1.5.13, 2013-11-04
C     By the MadGraph Development Team
C     Please visit us at https://launchpad.net/madgraph5
C     
C     Returns amplitude squared summed/avg over colors
C     for the point with external lines W(0:6,NEXTERNAL_BORN)
C     
C     Process: d~ d > t t~ > e+ ve e- ve~ b b~ QCD=2 QED=4 @8
C     
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NGRAPHS
      PARAMETER (NGRAPHS=1)
      INCLUDE 'genps.inc'
      INCLUDE 'nexternal_born.inc'
      INCLUDE 'maxamps_P8_dxd_epveemvexbbx.inc'
      INTEGER    NWAVEFUNCS,     NCOLOR
      PARAMETER (NWAVEFUNCS=9, NCOLOR=2)
      REAL*8     ZERO
      PARAMETER (ZERO=0D0)
      COMPLEX*16 IMAG1
      PARAMETER (IMAG1=(0D0,1D0))
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL_BORN)
      INTEGER NHEL(NEXTERNAL_BORN), IC(NEXTERNAL_BORN)
C     
C     LOCAL VARIABLES 
C     
      INTEGER I,J
      COMPLEX*16 ZTEMP
      REAL*8 DENOM(NCOLOR), CF(NCOLOR,NCOLOR)
      COMPLEX*16 AMP(NGRAPHS), JAMP(NCOLOR)
      COMPLEX*16 W(6,NWAVEFUNCS)
C     Needed for v4 models
      COMPLEX*16 DUM0,DUM1
      DATA DUM0, DUM1/(0D0, 0D0), (1D0, 0D0)/
C     
C     GLOBAL VARIABLES
C     
      DOUBLE PRECISION AMP2(MAXAMPS), JAMP2(0:MAXFLOW)
      COMMON/TO_AMPS_P8_dxd_epveemvexbbx/  AMP2,       JAMP2
      INCLUDE 'coupl.inc'
C     
C     COLOR DATA
C     
      DATA DENOM(1)/1/
      DATA (CF(I,  1),I=  1,  2) /    9,    3/
C     1 T(1,2) T(7,8)
      DATA DENOM(2)/1/
      DATA (CF(I,  2),I=  1,  2) /    3,    9/
C     1 T(1,8) T(7,2)
C     ----------
C     BEGIN CODE
C     ----------
      CALL OXXXXX(P(0,1),ZERO,NHEL(1),-1*IC(1),W(1,1))
      CALL IXXXXX(P(0,2),ZERO,NHEL(2),+1*IC(2),W(1,2))
      CALL IXXXXX(P(0,3),ZERO,NHEL(3),-1*IC(3),W(1,3))
      CALL OXXXXX(P(0,4),ZERO,NHEL(4),+1*IC(4),W(1,4))
      CALL OXXXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,5))
      CALL IXXXXX(P(0,6),ZERO,NHEL(6),-1*IC(6),W(1,6))
      CALL OXXXXX(P(0,7),MB,NHEL(7),+1*IC(7),W(1,7))
      CALL IXXXXX(P(0,8),MB,NHEL(8),-1*IC(8),W(1,8))
      CALL FFV1P0_3(W(1,2),W(1,1),GC_11,ZERO,ZERO,W(1,9))
      CALL FFV2_3(W(1,3),W(1,4),GC_100,MW,WW,W(1,2))
      CALL FFV2_3(W(1,6),W(1,5),GC_100,MW,WW,W(1,4))
      CALL FFV2_1(W(1,7),W(1,2),GC_100,MT,WT,W(1,6))
      CALL FFV2_2(W(1,8),W(1,4),GC_100,MT,WT,W(1,2))
C     Amplitude(s) for diagram number 1
      CALL FFV1_0(W(1,2),W(1,6),W(1,9),GC_11,AMP(1))
      JAMP(1)=+1./2.*(+1./3.*AMP(1))
      JAMP(2)=+1./2.*(-AMP(1))
      P8_dxd_epveemvexbbx1 = 0.D0
      DO I = 1, NCOLOR
        ZTEMP = (0.D0,0.D0)
        DO J = 1, NCOLOR
          ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
        ENDDO
        P8_dxd_epveemvexbbx1=P8_dxd_epveemvexbbx1+ZTEMP*DCONJG(JAMP(I))/DENOM(I)
      ENDDO
      AMP2(1)=AMP2(1)+AMP(1)*DCONJG(AMP(1))
      DO I = 1, NCOLOR
        JAMP2(I)=JAMP2(I)+JAMP(I)*DCONJG(JAMP(I))
      ENDDO

      END

