      SUBROUTINE SREALMTRX_103(P1,ANS)
C  
C Generated by MadGraph II                                              
C MadGraph StandAlone Version
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : c d -> e+ ve b b~ d s  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      Include "nexternal.inc"
      INTEGER                 NCOMB,     NCROSS         
      PARAMETER (             NCOMB= 256, NCROSS=  1)
      INTEGER    THEL
      PARAMETER (THEL=NCOMB*NCROSS)
      INTEGER NGRAPHS
      PARAMETER (NGRAPHS=  16)
C  
C ARGUMENTS 
C  
      REAL*8 P1(0:3,NEXTERNAL),ANS(NCROSS)
C  
C LOCAL VARIABLES 
C  
      REAL*8 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL,NCOMB),NTRY
      REAL*8 T
      REAL*8 REALMTRX_103
      REAL*8 ZERO
      PARAMETER(ZERO=0d0)
      INTEGER IHEL,IDEN(NCROSS),IC(NEXTERNAL,NCROSS)
      INTEGER IPROC,JC(NEXTERNAL), I,L,K
      LOGICAL GOODHEL(NCOMB,NCROSS)
      DATA NTRY/0/
      INTEGER NGOOD,igood(ncomb),jhel
      data ngood /0/
      save igood,jhel
      REAL*8 hwgt
      integer maxamps
      parameter (maxamps=6000)
      Double Precision amp2(maxamps), jamp2(0:maxamps)
      common/to_Ramps_103/  amp2,       jamp2

      integer j,jj
      integer max_bhel
      parameter ( max_bhel =         256 )

      INTEGER NCOLOR
      DATA NCOLOR   /   6/          
      DATA GOODHEL/THEL*.FALSE./
      DATA (NHEL(IHEL,   1),IHEL=1, 8) /-1,-1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,   2),IHEL=1, 8) /-1,-1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,   3),IHEL=1, 8) /-1,-1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,   4),IHEL=1, 8) /-1,-1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,   5),IHEL=1, 8) /-1,-1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,   6),IHEL=1, 8) /-1,-1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,   7),IHEL=1, 8) /-1,-1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,   8),IHEL=1, 8) /-1,-1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,   9),IHEL=1, 8) /-1,-1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  10),IHEL=1, 8) /-1,-1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  11),IHEL=1, 8) /-1,-1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  12),IHEL=1, 8) /-1,-1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  13),IHEL=1, 8) /-1,-1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  14),IHEL=1, 8) /-1,-1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  15),IHEL=1, 8) /-1,-1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  16),IHEL=1, 8) /-1,-1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  17),IHEL=1, 8) /-1,-1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  18),IHEL=1, 8) /-1,-1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  19),IHEL=1, 8) /-1,-1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  20),IHEL=1, 8) /-1,-1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  21),IHEL=1, 8) /-1,-1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  22),IHEL=1, 8) /-1,-1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  23),IHEL=1, 8) /-1,-1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  24),IHEL=1, 8) /-1,-1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  25),IHEL=1, 8) /-1,-1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  26),IHEL=1, 8) /-1,-1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  27),IHEL=1, 8) /-1,-1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  28),IHEL=1, 8) /-1,-1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  29),IHEL=1, 8) /-1,-1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  30),IHEL=1, 8) /-1,-1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  31),IHEL=1, 8) /-1,-1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  32),IHEL=1, 8) /-1,-1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  33),IHEL=1, 8) /-1,-1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  34),IHEL=1, 8) /-1,-1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  35),IHEL=1, 8) /-1,-1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  36),IHEL=1, 8) /-1,-1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  37),IHEL=1, 8) /-1,-1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  38),IHEL=1, 8) /-1,-1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  39),IHEL=1, 8) /-1,-1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  40),IHEL=1, 8) /-1,-1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  41),IHEL=1, 8) /-1,-1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  42),IHEL=1, 8) /-1,-1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  43),IHEL=1, 8) /-1,-1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  44),IHEL=1, 8) /-1,-1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  45),IHEL=1, 8) /-1,-1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  46),IHEL=1, 8) /-1,-1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  47),IHEL=1, 8) /-1,-1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  48),IHEL=1, 8) /-1,-1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  49),IHEL=1, 8) /-1,-1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  50),IHEL=1, 8) /-1,-1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  51),IHEL=1, 8) /-1,-1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  52),IHEL=1, 8) /-1,-1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  53),IHEL=1, 8) /-1,-1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  54),IHEL=1, 8) /-1,-1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  55),IHEL=1, 8) /-1,-1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  56),IHEL=1, 8) /-1,-1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  57),IHEL=1, 8) /-1,-1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  58),IHEL=1, 8) /-1,-1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  59),IHEL=1, 8) /-1,-1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  60),IHEL=1, 8) /-1,-1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  61),IHEL=1, 8) /-1,-1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  62),IHEL=1, 8) /-1,-1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  63),IHEL=1, 8) /-1,-1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  64),IHEL=1, 8) /-1,-1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  65),IHEL=1, 8) /-1, 1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  66),IHEL=1, 8) /-1, 1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  67),IHEL=1, 8) /-1, 1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  68),IHEL=1, 8) /-1, 1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  69),IHEL=1, 8) /-1, 1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  70),IHEL=1, 8) /-1, 1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  71),IHEL=1, 8) /-1, 1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  72),IHEL=1, 8) /-1, 1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  73),IHEL=1, 8) /-1, 1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  74),IHEL=1, 8) /-1, 1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  75),IHEL=1, 8) /-1, 1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  76),IHEL=1, 8) /-1, 1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  77),IHEL=1, 8) /-1, 1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  78),IHEL=1, 8) /-1, 1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  79),IHEL=1, 8) /-1, 1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  80),IHEL=1, 8) /-1, 1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  81),IHEL=1, 8) /-1, 1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  82),IHEL=1, 8) /-1, 1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  83),IHEL=1, 8) /-1, 1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  84),IHEL=1, 8) /-1, 1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  85),IHEL=1, 8) /-1, 1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  86),IHEL=1, 8) /-1, 1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  87),IHEL=1, 8) /-1, 1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  88),IHEL=1, 8) /-1, 1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  89),IHEL=1, 8) /-1, 1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  90),IHEL=1, 8) /-1, 1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  91),IHEL=1, 8) /-1, 1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  92),IHEL=1, 8) /-1, 1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  93),IHEL=1, 8) /-1, 1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  94),IHEL=1, 8) /-1, 1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  95),IHEL=1, 8) /-1, 1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  96),IHEL=1, 8) /-1, 1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  97),IHEL=1, 8) /-1, 1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  98),IHEL=1, 8) /-1, 1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  99),IHEL=1, 8) /-1, 1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 100),IHEL=1, 8) /-1, 1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 101),IHEL=1, 8) /-1, 1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 102),IHEL=1, 8) /-1, 1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 103),IHEL=1, 8) /-1, 1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 104),IHEL=1, 8) /-1, 1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 105),IHEL=1, 8) /-1, 1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 106),IHEL=1, 8) /-1, 1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 107),IHEL=1, 8) /-1, 1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 108),IHEL=1, 8) /-1, 1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 109),IHEL=1, 8) /-1, 1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 110),IHEL=1, 8) /-1, 1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 111),IHEL=1, 8) /-1, 1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 112),IHEL=1, 8) /-1, 1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 113),IHEL=1, 8) /-1, 1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 114),IHEL=1, 8) /-1, 1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 115),IHEL=1, 8) /-1, 1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 116),IHEL=1, 8) /-1, 1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 117),IHEL=1, 8) /-1, 1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 118),IHEL=1, 8) /-1, 1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 119),IHEL=1, 8) /-1, 1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 120),IHEL=1, 8) /-1, 1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 121),IHEL=1, 8) /-1, 1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 122),IHEL=1, 8) /-1, 1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 123),IHEL=1, 8) /-1, 1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 124),IHEL=1, 8) /-1, 1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 125),IHEL=1, 8) /-1, 1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 126),IHEL=1, 8) /-1, 1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 127),IHEL=1, 8) /-1, 1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 128),IHEL=1, 8) /-1, 1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 129),IHEL=1, 8) / 1,-1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 130),IHEL=1, 8) / 1,-1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 131),IHEL=1, 8) / 1,-1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 132),IHEL=1, 8) / 1,-1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 133),IHEL=1, 8) / 1,-1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 134),IHEL=1, 8) / 1,-1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 135),IHEL=1, 8) / 1,-1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 136),IHEL=1, 8) / 1,-1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 137),IHEL=1, 8) / 1,-1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 138),IHEL=1, 8) / 1,-1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 139),IHEL=1, 8) / 1,-1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 140),IHEL=1, 8) / 1,-1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 141),IHEL=1, 8) / 1,-1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 142),IHEL=1, 8) / 1,-1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 143),IHEL=1, 8) / 1,-1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 144),IHEL=1, 8) / 1,-1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 145),IHEL=1, 8) / 1,-1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 146),IHEL=1, 8) / 1,-1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 147),IHEL=1, 8) / 1,-1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 148),IHEL=1, 8) / 1,-1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 149),IHEL=1, 8) / 1,-1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 150),IHEL=1, 8) / 1,-1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 151),IHEL=1, 8) / 1,-1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 152),IHEL=1, 8) / 1,-1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 153),IHEL=1, 8) / 1,-1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 154),IHEL=1, 8) / 1,-1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 155),IHEL=1, 8) / 1,-1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 156),IHEL=1, 8) / 1,-1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 157),IHEL=1, 8) / 1,-1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 158),IHEL=1, 8) / 1,-1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 159),IHEL=1, 8) / 1,-1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 160),IHEL=1, 8) / 1,-1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 161),IHEL=1, 8) / 1,-1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 162),IHEL=1, 8) / 1,-1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 163),IHEL=1, 8) / 1,-1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 164),IHEL=1, 8) / 1,-1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 165),IHEL=1, 8) / 1,-1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 166),IHEL=1, 8) / 1,-1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 167),IHEL=1, 8) / 1,-1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 168),IHEL=1, 8) / 1,-1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 169),IHEL=1, 8) / 1,-1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 170),IHEL=1, 8) / 1,-1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 171),IHEL=1, 8) / 1,-1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 172),IHEL=1, 8) / 1,-1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 173),IHEL=1, 8) / 1,-1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 174),IHEL=1, 8) / 1,-1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 175),IHEL=1, 8) / 1,-1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 176),IHEL=1, 8) / 1,-1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 177),IHEL=1, 8) / 1,-1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 178),IHEL=1, 8) / 1,-1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 179),IHEL=1, 8) / 1,-1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 180),IHEL=1, 8) / 1,-1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 181),IHEL=1, 8) / 1,-1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 182),IHEL=1, 8) / 1,-1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 183),IHEL=1, 8) / 1,-1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 184),IHEL=1, 8) / 1,-1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 185),IHEL=1, 8) / 1,-1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 186),IHEL=1, 8) / 1,-1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 187),IHEL=1, 8) / 1,-1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 188),IHEL=1, 8) / 1,-1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 189),IHEL=1, 8) / 1,-1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 190),IHEL=1, 8) / 1,-1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 191),IHEL=1, 8) / 1,-1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 192),IHEL=1, 8) / 1,-1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 193),IHEL=1, 8) / 1, 1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 194),IHEL=1, 8) / 1, 1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 195),IHEL=1, 8) / 1, 1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 196),IHEL=1, 8) / 1, 1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 197),IHEL=1, 8) / 1, 1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 198),IHEL=1, 8) / 1, 1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 199),IHEL=1, 8) / 1, 1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 200),IHEL=1, 8) / 1, 1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 201),IHEL=1, 8) / 1, 1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 202),IHEL=1, 8) / 1, 1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 203),IHEL=1, 8) / 1, 1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 204),IHEL=1, 8) / 1, 1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 205),IHEL=1, 8) / 1, 1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 206),IHEL=1, 8) / 1, 1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 207),IHEL=1, 8) / 1, 1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 208),IHEL=1, 8) / 1, 1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 209),IHEL=1, 8) / 1, 1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 210),IHEL=1, 8) / 1, 1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 211),IHEL=1, 8) / 1, 1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 212),IHEL=1, 8) / 1, 1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 213),IHEL=1, 8) / 1, 1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 214),IHEL=1, 8) / 1, 1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 215),IHEL=1, 8) / 1, 1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 216),IHEL=1, 8) / 1, 1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 217),IHEL=1, 8) / 1, 1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 218),IHEL=1, 8) / 1, 1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 219),IHEL=1, 8) / 1, 1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 220),IHEL=1, 8) / 1, 1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 221),IHEL=1, 8) / 1, 1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 222),IHEL=1, 8) / 1, 1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 223),IHEL=1, 8) / 1, 1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 224),IHEL=1, 8) / 1, 1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 225),IHEL=1, 8) / 1, 1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 226),IHEL=1, 8) / 1, 1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 227),IHEL=1, 8) / 1, 1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 228),IHEL=1, 8) / 1, 1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 229),IHEL=1, 8) / 1, 1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 230),IHEL=1, 8) / 1, 1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 231),IHEL=1, 8) / 1, 1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 232),IHEL=1, 8) / 1, 1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 233),IHEL=1, 8) / 1, 1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 234),IHEL=1, 8) / 1, 1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 235),IHEL=1, 8) / 1, 1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 236),IHEL=1, 8) / 1, 1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 237),IHEL=1, 8) / 1, 1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 238),IHEL=1, 8) / 1, 1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 239),IHEL=1, 8) / 1, 1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 240),IHEL=1, 8) / 1, 1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL, 241),IHEL=1, 8) / 1, 1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL, 242),IHEL=1, 8) / 1, 1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL, 243),IHEL=1, 8) / 1, 1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL, 244),IHEL=1, 8) / 1, 1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL, 245),IHEL=1, 8) / 1, 1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL, 246),IHEL=1, 8) / 1, 1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL, 247),IHEL=1, 8) / 1, 1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL, 248),IHEL=1, 8) / 1, 1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL, 249),IHEL=1, 8) / 1, 1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL, 250),IHEL=1, 8) / 1, 1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL, 251),IHEL=1, 8) / 1, 1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL, 252),IHEL=1, 8) / 1, 1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL, 253),IHEL=1, 8) / 1, 1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL, 254),IHEL=1, 8) / 1, 1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL, 255),IHEL=1, 8) / 1, 1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL, 256),IHEL=1, 8) / 1, 1, 1, 1, 1, 1, 1, 1/
      DATA (  IC(IHEL,  1),IHEL=1, 8) / 1, 2, 3, 4, 5, 6, 7, 8/
      DATA (IDEN(IHEL),IHEL=  1,  1) /  36/
C ----------
C BEGIN CODE
C ----------
      NTRY=NTRY+1
      DO IPROC=1,NCROSS
      DO IHEL=1,NEXTERNAL
         JC(IHEL) = +1
      ENDDO
      DO IHEL=1,NGRAPHS
          amp2(ihel)=0d0
      ENDDO
      jamp2(0)=dble(NCOLOR)
      DO IHEL=1,int(jamp2(0))
          jamp2(ihel)=0d0
      ENDDO
      ANS(IPROC) = 0D0
          DO IHEL=1,NCOMB
             IF (GOODHEL(IHEL,IPROC) .OR. NTRY .LT. 2) THEN
                 T=REALMTRX_103(P1,NHEL(1,IHEL),IHEL,JC(1))              
               ANS(IPROC)=ANS(IPROC)+T
               IF (T .GT. 0D0 .AND. .NOT. GOODHEL(IHEL,IPROC)) THEN
                   GOODHEL(IHEL,IPROC)=.TRUE.
                   NGOOD = NGOOD +1
                   IGOOD(NGOOD) = IHEL
               ENDIF
             ENDIF
          ENDDO
      ANS(IPROC)=ANS(IPROC)/DBLE(IDEN(IPROC))
      ENDDO
      END
       
       
      REAL*8 FUNCTION REALMTRX_103(P,NHEL,HELL,IC)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : c d -> e+ ve b b~ d s  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER (NGRAPHS=  16,NEIGEN=  6) 
      include "nexternal.inc"
      INTEGER    NWAVEFUNCS     , NCOLOR
      PARAMETER (NWAVEFUNCS=  39, NCOLOR=   6) 
      REAL*8     ZERO
      PARAMETER (ZERO=0D0)
C  
C ARGUMENTS 
C  
      REAL*8 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL), IC(NEXTERNAL), HELL
C  
C LOCAL VARIABLES 
C  
      INTEGER I,J
      COMPLEX*16 ZTEMP
      REAL*8 DENOM(NCOLOR), CF(NCOLOR,NCOLOR)
      COMPLEX*16 AMP(NGRAPHS), JAMP(NCOLOR)
      COMPLEX*16 W(18,NWAVEFUNCS)
C  
C GLOBAL VARIABLES
C  
      integer maxamps
      parameter (maxamps=6000)
      Double Precision amp2(maxamps), jamp2(0:maxamps)
      common/to_Ramps_103/  amp2,       jamp2
      integer max_bhel
      parameter ( max_bhel =         256 )
      include "coupl.inc"
C  
C COLOR DATA
C  
      DATA Denom(1  )/            6/                                       
      DATA (CF(i,1  ),i=1  ,6  ) /     8,    7,   -1,   -2,   -2,    7/    
C               T[ 5, 1]T[ 8, 2]T[ 7, 6]                                   
      DATA Denom(2  )/            6/                                       
      DATA (CF(i,2  ),i=1  ,6  ) /     7,    8,   -2,   -1,   -2,    7/    
C               T[ 5, 1]T[ 8, 2]T[ 7, 6]                                   
      DATA Denom(3  )/            6/                                       
      DATA (CF(i,3  ),i=1  ,6  ) /    -1,   -2,    8,    7,    7,   -2/    
C               T[ 8, 6]T[ 5, 2]T[ 7, 1]                                   
      DATA Denom(4  )/            6/                                       
      DATA (CF(i,4  ),i=1  ,6  ) /    -2,   -1,    7,    8,    7,   -2/    
C               T[ 5, 2]T[ 7, 1]T[ 8, 6]                                   
      DATA Denom(5  )/            6/                                       
      DATA (CF(i,5  ),i=1  ,6  ) /    -2,   -2,    7,    7,    8,   -1/    
C               T[ 5, 2]T[ 7, 1]T[ 8, 6]                                   
      DATA Denom(6  )/            6/                                       
      DATA (CF(i,6  ),i=1  ,6  ) /     7,    7,   -2,   -2,   -1,    8/    
C               T[ 7, 6]T[ 5, 1]T[ 8, 2]                                   
C ----------
C BEGIN CODE
C ----------
      CALL IXXXXX(P(0,1   ),ZERO ,NHEL(1   ),+1*IC(1   ),W(1,1   ))        
      CALL IXXXXX(P(0,2   ),ZERO ,NHEL(2   ),+1*IC(2   ),W(1,2   ))        
      CALL IXXXXX(P(0,3   ),ZERO ,NHEL(3   ),-1*IC(3   ),W(1,3   ))        
      CALL OXXXXX(P(0,4   ),ZERO ,NHEL(4   ),+1*IC(4   ),W(1,4   ))        
      CALL OXXXXX(P(0,5   ),BMASS ,NHEL(5   ),+1*IC(5   ),W(1,5   ))       
      CALL IXXXXX(P(0,6   ),BMASS ,NHEL(6   ),-1*IC(6   ),W(1,6   ))       
      CALL OXXXXX(P(0,7   ),ZERO ,NHEL(7   ),+1*IC(7   ),W(1,7   ))        
      CALL OXXXXX(P(0,8   ),ZERO ,NHEL(8   ),+1*IC(8   ),W(1,8   ))        
      CALL JIOXXX(W(1,3   ),W(1,4   ),GWF ,WMASS   ,WWIDTH  ,W(1,9   ))    
      CALL JIOXXX(W(1,2   ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,10  ))     
      CALL FVOXXX(W(1,8   ),W(1,9   ),GWFCS ,ZERO    ,ZERO    ,W(1,        
     &     11  ))                                                          
      CALL FVOXXX(W(1,11  ),W(1,10  ),GG ,ZERO    ,ZERO    ,W(1,12  ))     
      CALL JIOXXX(W(1,1   ),W(1,12  ),GG ,ZERO    ,ZERO    ,W(1,13  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,13  ),GG ,AMP(1   ))             
      CALL FVOXXX(W(1,8   ),W(1,10  ),GG ,ZERO    ,ZERO    ,W(1,14  ))     
      CALL FVOXXX(W(1,14  ),W(1,9   ),GWFCS ,ZERO    ,ZERO    ,W(1,        
     &     15  ))                                                          
      CALL JIOXXX(W(1,1   ),W(1,15  ),GG ,ZERO    ,ZERO    ,W(1,16  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,16  ),GG ,AMP(2   ))             
      CALL JIOXXX(W(1,1   ),W(1,11  ),GG ,ZERO    ,ZERO    ,W(1,17  ))     
      CALL FVOXXX(W(1,5   ),W(1,17  ),GG ,BMASS   ,ZERO    ,W(1,18  ))     
      CALL IOVXXX(W(1,6   ),W(1,18  ),W(1,10  ),GG ,AMP(3   ))             
      CALL FVIXXX(W(1,1   ),W(1,9   ),GWFCS ,ZERO    ,ZERO    ,W(1,        
     &     19  ))                                                          
      CALL JIOXXX(W(1,19  ),W(1,8   ),GG ,ZERO    ,ZERO    ,W(1,20  ))     
      CALL FVOXXX(W(1,5   ),W(1,20  ),GG ,BMASS   ,ZERO    ,W(1,21  ))     
      CALL IOVXXX(W(1,6   ),W(1,21  ),W(1,10  ),GG ,AMP(4   ))             
      CALL JVVXXX(W(1,17  ),W(1,10  ),G ,ZERO    ,ZERO    ,W(1,22  ))      
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,22  ),GG ,AMP(5   ))             
      CALL JVVXXX(W(1,20  ),W(1,10  ),G ,ZERO    ,ZERO    ,W(1,23  ))      
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,23  ),GG ,AMP(6   ))             
      CALL FVIXXX(W(1,19  ),W(1,10  ),GG ,ZERO    ,ZERO    ,W(1,24  ))     
      CALL JIOXXX(W(1,24  ),W(1,8   ),GG ,ZERO    ,ZERO    ,W(1,25  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,25  ),GG ,AMP(7   ))             
      CALL JIOXXX(W(1,19  ),W(1,14  ),GG ,ZERO    ,ZERO    ,W(1,26  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,26  ),GG ,AMP(8   ))             
      CALL FVOXXX(W(1,7   ),W(1,17  ),GG ,ZERO    ,ZERO    ,W(1,27  ))     
      CALL JIOXXX(W(1,2   ),W(1,27  ),GG ,ZERO    ,ZERO    ,W(1,28  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,28  ),GG ,AMP(9   ))             
      CALL FVOXXX(W(1,7   ),W(1,20  ),GG ,ZERO    ,ZERO    ,W(1,29  ))     
      CALL JIOXXX(W(1,2   ),W(1,29  ),GG ,ZERO    ,ZERO    ,W(1,30  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,30  ),GG ,AMP(10  ))             
      CALL FVIXXX(W(1,2   ),W(1,17  ),GG ,ZERO    ,ZERO    ,W(1,31  ))     
      CALL JIOXXX(W(1,31  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,32  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,32  ),GG ,AMP(11  ))             
      CALL FVIXXX(W(1,2   ),W(1,20  ),GG ,ZERO    ,ZERO    ,W(1,33  ))     
      CALL JIOXXX(W(1,33  ),W(1,7   ),GG ,ZERO    ,ZERO    ,W(1,34  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,34  ),GG ,AMP(12  ))             
      CALL FVOXXX(W(1,5   ),W(1,10  ),GG ,BMASS   ,ZERO    ,W(1,35  ))     
      CALL IOVXXX(W(1,6   ),W(1,35  ),W(1,17  ),GG ,AMP(13  ))             
      CALL IOVXXX(W(1,6   ),W(1,35  ),W(1,20  ),GG ,AMP(14  ))             
      CALL FVIXXX(W(1,1   ),W(1,10  ),GG ,ZERO    ,ZERO    ,W(1,36  ))     
      CALL JIOXXX(W(1,36  ),W(1,11  ),GG ,ZERO    ,ZERO    ,W(1,37  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,37  ),GG ,AMP(15  ))             
      CALL FVIXXX(W(1,36  ),W(1,9   ),GWFCS ,ZERO    ,ZERO    ,W(1,        
     &     38  ))                                                          
      CALL JIOXXX(W(1,38  ),W(1,8   ),GG ,ZERO    ,ZERO    ,W(1,39  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,39  ),GG ,AMP(16  ))             
      JAMP(   1) = -AMP(   1)-AMP(   2)-AMP(   5)-AMP(   8)
      JAMP(   2) = -AMP(   3)-AMP(   4)-AMP(   6)
      JAMP(   3) = +AMP(   5)-AMP(   7)-AMP(  15)-AMP(  16)
      JAMP(   4) = +AMP(   6)-AMP(  13)-AMP(  14)
      JAMP(   5) = -AMP(   9)-AMP(  10)
      JAMP(   6) = -AMP(  11)-AMP(  12)
      REALMTRX_103 = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP = (0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          REALMTRX_103 =REALMTRX_103+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo
      END
       
       
