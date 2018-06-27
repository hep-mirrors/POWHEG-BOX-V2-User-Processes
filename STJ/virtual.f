      subroutine setvirtual(p,vflav,virtual)
c Virtual needs to be provided by the user and put here
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'coupl.inc'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual
      LOGICAL INIT
      DATA INIT/.TRUE./
      INTEGER MATELEM_ARRAY_DIM
      REAL*8 , ALLOCATABLE :: MATELEM(:,:)
      INTEGER NSQUAREDSO_LOOP
      REAL*8 , ALLOCATABLE :: PREC_FOUND(:)
      INTEGER RETURNCODE
      REAL*8 PREC_REQ
      PARAMETER (PREC_REQ=1d-4)
      character*512 procdir
      character*512 path
      integer i,j,k
      integer lstr
      character*140 str
c following are from coupl.inc used in MadLoop
      DOUBLE PRECISION MU_R
      COMMON/RSCALE/ MU_R
      DOUBLE PRECISION G_ML
      COMMON/STRONG/ G_ML
      integer ncall_jacborn_zero
      save    ncall_jacborn_zero	
      IF (INIT) THEN
         INIT=.FALSE.
	 ncall_jacborn_zero=0
         procdir="/Users/rikkert/Documents/Physics/POWHEG/POWHEG-BOX-V2/PWHG_STJ"
         path=trim(procdir)//"/virtual/SubProcesses/MadLoop5_resources"
         CALL SETMADLOOPPATH(path)
         CALL ML5_0_GET_ANSWER_DIMENSION(MATELEM_ARRAY_DIM)
         ALLOCATE(MATELEM(0:3,0:MATELEM_ARRAY_DIM))
         CALL ML5_0_GET_NSQSO_LOOP(NSQUAREDSO_LOOP)
         ALLOCATE(PREC_FOUND(0:NSQUAREDSO_LOOP))
         path=trim(procdir)//"/virtual/Cards/param_card.dat"
         CALL setparaml(path)
      ENDIF
      virtual =0d0

c If kn_jacborn=0 we are probably in some cut out region of phase space
c and in any case the total contribution from this phase space point 
c should be zero, so we don't bother computing the virtuals. A better
c solution would be to not generate these phase space regions in the 
c first place. 
      if(kn_jacborn.eq.0d0) then
	ncall_jacborn_zero=ncall_jacborn_zero+1
        virtual=ncall_jacborn_zero*1d-50
        return
      endif

c$$$  DO NOT INCLUDE THE VIRTUAL CORRECTIONS:
c$$$      return
      
c Update the scale and strong coupling      
      call set_ebe_couplings
      mu_R=sqrt(st_muren2)
      G_ML=G
      call update_as_param()

      call convert_to_string(nlegborn,vflav,str,lstr)
      
c compute the correct one-loop matrix element
      if (str.eq."-156-20") then
         CALL ML5_0_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."25610") then
         CALL ML5_1_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."-356-40") then
         CALL ML5_2_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."45630") then
         CALL ML5_3_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."5-16-20") then
         CALL ML5_4_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."52610") then
         CALL ML5_5_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."5-36-40") then
         CALL ML5_6_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."54630") then
         CALL ML5_7_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."-106-2-5") then
         CALL ML5_8_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."2061-5") then
         CALL ML5_9_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."-306-4-5") then
         CALL ML5_10_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."4063-5") then
         CALL ML5_11_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."5061-2") then
         CALL ML5_12_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."5063-4") then
         CALL ML5_13_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."0-16-2-5") then
         CALL ML5_14_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."0261-5") then
         CALL ML5_15_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."0-36-4-5") then
         CALL ML5_16_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."0463-5") then
         CALL ML5_17_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."0561-2") then
         CALL ML5_18_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      elseif (str.eq."0563-4") then
         CALL ML5_19_SLOOPMATRIX_THRES(P,MATELEM,PREC_REQ,PREC_FOUND
     $        ,RETURNCODE)
      else
         write (*,*) 'error, vflav not correct',vflav
         stop
      endif
      
      virtual=MATELEM(1,0)/(st_alpha/(2d0*pi))

c For unstable points, set the virtual to zero
      if (RETURNCODE/100.eq.4 .and. PREC_FOUND(0).gt.0.01d0) then
         write (*,*) "UNSTABLE PS POINT IN VIRTUALS WITH INACCURACY "/
     $        /"ESTIMATE LARGER THAN 0.01. SETTING "/
     $        /"THIS PS POINT TO ZERO FOR THE VIRTUALS."
         virtual=0d0
      endif
      
      end
