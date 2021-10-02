Fri Oct  1 23:50:15 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	Two-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/7/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD4/A1/dat3.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK
ET1 = EXP(ETA(1)*THETA(6))
ET2 = EXP(ETA(2)*THETA(7))
ET3 = EXP(ETA(3)*THETA(8))
ET4 = EXP(ETA(4)*THETA(9))
ET5 = EXP(ETA(5)*THETA(10))

CL = 5.0 * THETA(1) * ET1
V2 = 35  * THETA(2) * ET2
Q  = 50  * THETA(3) * ET3
V3 = 50  * THETA(4) * ET4
KA = 0.7 * THETA(5) * ET5
SC = V2
$ERROR
CVERR = 0.05
W = THETA(11)*F*CVERR

Y 	= F + W*ERR(1)

$THETA
(0,1) ; CL
(0,1) ; V2
(0,1) ; Q
(0,1) ; V3
(0,1) ; KA
(0,1) ; IIVCL
(0,1) ; IIVV2
(0,1) ; IIVQ
(0,1) ; IIVV3
(0,1) ; IIVKA
(0,1) ; CVPropErr

$OMEGA  (0.09 FIX)x5
$SIGMA  1 FIX ;        [P]

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        1 OCT 2021
Days until program expires : 198
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.5.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 template control stream
0DATA CHECKOUT RUN:              NO
 DATA SET LOCATED ON UNIT NO.:    2
 THIS UNIT TO BE REWOUND:        NO
 NO. OF DATA RECS IN DATA SET:      500
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      400
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:  11
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   5
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 TWO COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN4)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   5
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   BASIC PK PARAMETER NO.  1: ELIMINATION RATE (K)
   BASIC PK PARAMETER NO.  2: CENTRAL-TO-PERIPH. RATE (K23)
   BASIC PK PARAMETER NO.  3: PERIPH.-TO-CENTRAL RATE (K32)
   BASIC PK PARAMETER NO.  5: ABSORPTION RATE (KA)
 TRANSLATOR WILL CONVERT PARAMETERS
 CL, V2, Q, V3 TO K, K23, K32 (TRANS4)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         PERIPH.      ON         NO         YES        NO         NO
    4         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            6           *           *           *           *
    3            *           *           *           *           *
    4            *           -           -           -           -
             - PARAMETER IS NOT ALLOWED FOR THIS MODEL
             * PARAMETER IS NOT SUPPLIED BY PK SUBROUTINE;
               WILL DEFAULT TO ONE IF APPLICABLE
0DATA ITEM INDICES USED BY PRED ARE:
   EVENT ID DATA ITEM IS DATA ITEM NO.:      6
   TIME DATA ITEM IS DATA ITEM NO.:          2
   DOSE AMOUNT DATA ITEM IS DATA ITEM NO.:   4

0PK SUBROUTINE CALLED WITH EVERY EVENT RECORD.
 PK SUBROUTINE NOT CALLED AT NONEVENT (ADDITIONAL OR LAGGED) DOSE TIMES.
0ERROR SUBROUTINE CALLED WITH EVERY EVENT RECORD.
1


 #TBLN:      1
 #METH: First Order Conditional Estimation with Interaction

 ESTIMATION STEP OMITTED:                 NO
 ANALYSIS TYPE:                           POPULATION
 NUMBER OF SADDLE POINT RESET ITERATIONS:      0
 GRADIENT METHOD USED:               NOSLOW
 CONDITIONAL ESTIMATES USED:              YES
 CENTERED ETA:                            NO
 EPS-ETA INTERACTION:                     YES
 LAPLACIAN OBJ. FUNC.:                    NO
 NO. OF FUNCT. EVALS. ALLOWED:            10000
 NO. OF SIG. FIGURES REQUIRED:            2
 INTERMEDIATE PRINTOUT:                   YES
 ESTIMATE OUTPUT TO MSF:                  NO
 ABORT WITH PRED EXIT CODE 1:             NO
 IND. OBJ. FUNC. VALUES SORTED:           NO
 NUMERICAL DERIVATIVE
       FILE REQUEST (NUMDER):               NONE
 MAP (ETAHAT) ESTIMATION METHOD (OPTMAP):   0
 ETA HESSIAN EVALUATION METHOD (ETADER):    0
 INITIAL ETA FOR MAP ESTIMATION (MCETA):    0
 SIGDIGITS FOR MAP ESTIMATION (SIGLO):      100
 GRADIENT SIGDIGITS OF
       FIXED EFFECTS PARAMETERS (SIGL):     100
 NOPRIOR SETTING (NOPRIOR):                 0
 NOCOV SETTING (NOCOV):                     OFF
 DERCONT SETTING (DERCONT):                 OFF
 FINAL ETA RE-EVALUATION (FNLETA):          1
 EXCLUDE NON-INFLUENTIAL (NON-INFL.) ETAS
       IN SHRINKAGE (ETASTYPE):             NO
 NON-INFL. ETA CORRECTION (NONINFETA):      0
 RAW OUTPUT FILE (FILE): m3.ext
 EXCLUDE TITLE (NOTITLE):                   NO
 EXCLUDE COLUMN LABELS (NOLABEL):           NO
 FORMAT FOR ADDITIONAL FILES (FORMAT):      S1PE12.5
 PARAMETER ORDER FOR OUTPUTS (ORDER):       TSOL
 KNUTHSUMOFF:                               0
 INCLUDE LNTWOPI:                           NO
 INCLUDE CONSTANT TERM TO PRIOR (PRIORC):   NO
 INCLUDE CONSTANT TERM TO OMEGA (ETA) (OLNTWOPI):NO
 ADDITIONAL CONVERGENCE TEST (CTYPE=4)?:    NO
 EM OR BAYESIAN METHOD USED:                 NONE


 THE FOLLOWING LABELS ARE EQUIVALENT
 PRED=PREDI
 RES=RESI
 WRES=WRESI
 IWRS=IWRESI
 IPRD=IPREDI
 IRS=IRESI

 MONITORING OF SEARCH:


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1579.24614244097        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9218E+02 -2.4888E+01 -5.0500E+00 -2.4372E+01  2.0841E+01  4.2841E+01  4.4833E+00 -5.8397E+00 -1.4582E+01  3.6531E+01
            -1.9759E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1618.48184884871        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0217E+00  1.0471E+00  1.0627E+00  9.8424E-01  1.0048E+00  1.0543E+00  8.8187E-01  1.0818E+00  1.0814E+00  5.5146E-01
             1.4820E+00
 PARAMETER:  1.2147E-01  1.4600E-01  1.6085E-01  8.4111E-02  1.0478E-01  1.5285E-01 -2.5715E-02  1.7866E-01  1.7830E-01 -4.9519E-01
             4.9337E-01
 GRADIENT:   2.4205E+02 -1.7911E+01  2.1029E+01 -4.5260E+01  5.5862E+00  4.8368E+01 -6.1461E-01 -1.2358E+01  1.5502E+00  2.3490E-01
             2.3110E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1619.85761999126        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0173E+00  1.1433E+00  9.1877E-01  9.4275E-01  9.3032E-01  9.6775E-01  9.8602E-01  1.2403E+00  1.0471E+00  4.0044E-01
             1.4172E+00
 PARAMETER:  1.1719E-01  2.3394E-01  1.5275E-02  4.1042E-02  2.7774E-02  6.7216E-02  8.5926E-02  3.1534E-01  1.4601E-01 -8.1519E-01
             4.4870E-01
 GRADIENT:   2.4205E+02  7.0147E+01  4.9111E+01 -2.0818E+01 -8.3533E+01  4.2316E+00  7.4816E+00 -3.8786E+00 -4.0883E+00  8.4926E-01
             5.8583E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1624.79182265580        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      339
 NPARAMETR:  1.0230E+00  1.3328E+00  6.5604E-01  8.4264E-01  9.3029E-01  1.0247E+00  8.5470E-01  1.0371E+00  1.2094E+00  4.3423E-01
             1.3945E+00
 PARAMETER:  1.2278E-01  3.8730E-01 -3.2153E-01 -7.1216E-02  2.7737E-02  1.2439E-01 -5.7004E-02  1.3641E-01  2.9012E-01 -7.3418E-01
             4.3255E-01
 GRADIENT:  -2.3433E+00  2.2928E+00 -1.3776E+00  1.3211E+01 -2.7233E+00  1.0527E+00  1.0113E+00 -5.6922E-01  2.3731E+00  1.6732E+00
            -1.5018E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1631.73696241649        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      527             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0320E+00  1.6224E+00  5.2829E-01  6.6030E-01  1.0136E+00  1.0170E+00  7.4968E-01  1.3956E+00  1.3704E+00  4.8999E-01
             1.3821E+00
 PARAMETER:  1.3152E-01  5.8391E-01 -5.3810E-01 -3.1506E-01  1.1347E-01  1.1681E-01 -1.8811E-01  4.3332E-01  4.1512E-01 -6.1337E-01
             4.2357E-01
 GRADIENT:   3.1740E+02  2.9408E+02  1.3761E+01  6.7761E+01 -4.8594E+00  3.1662E+01  7.4486E+00 -1.9573E+01  1.4578E+01  3.3590E+00
             2.9598E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1633.01272003436        NO. OF FUNC. EVALS.: 145
 CUMULATIVE NO. OF FUNC. EVALS.:      672             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0049E+00  1.6208E+00  5.0464E-01  6.3473E-01  1.0139E+00  1.0027E+00  7.5443E-01  1.3944E+00  1.3412E+00  4.9292E-01
             1.3209E+00
 PARAMETER:  1.0493E-01  5.8295E-01 -5.8391E-01 -3.5456E-01  1.1377E-01  1.0270E-01 -1.8179E-01  4.3249E-01  3.9359E-01 -6.0741E-01
             3.7832E-01
 GRADIENT:   2.2346E+02  2.8370E+02  1.1732E+01  5.6675E+01  1.4879E+01  2.6686E+01  7.7775E+00 -2.0321E+01  8.7549E+00  2.5243E+00
             1.2862E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1633.22971414254        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:      865             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0105E+00  1.6208E+00  5.0482E-01  6.3466E-01  1.0121E+00  1.0067E+00  7.5186E-01  1.3941E+00  1.3411E+00  4.8881E-01
             1.3212E+00
 PARAMETER:  1.1049E-01  5.8295E-01 -5.8356E-01 -3.5466E-01  1.1206E-01  1.0663E-01 -1.8521E-01  4.3223E-01  3.9347E-01 -6.1579E-01
             3.7855E-01
 GRADIENT:   2.4967E+02  2.8525E+02  1.2868E+01  5.5787E+01  1.1858E+01  2.9269E+01  7.2620E+00 -2.0363E+01  8.6358E+00  2.3822E+00
             1.2682E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1633.25663497059        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:     1025
 NPARAMETR:  1.0111E+00  1.6209E+00  5.0481E-01  6.3362E-01  1.0127E+00  1.0130E+00  7.4616E-01  1.3941E+00  1.3437E+00  4.8726E-01
             1.3212E+00
 PARAMETER:  1.1104E-01  5.8295E-01 -5.8357E-01 -3.5630E-01  1.1262E-01  1.1295E-01 -1.9281E-01  4.3225E-01  3.9544E-01 -6.1896E-01
             3.7855E-01
 GRADIENT:  -2.3941E+01 -2.7233E+01  8.8337E+00 -2.2076E+00  7.6709E+00  3.4897E-01 -5.3643E-01 -2.1679E+01 -3.3472E+00  1.5822E+00
             9.4820E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1633.31596530845        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1193
 NPARAMETR:  1.0126E+00  1.6209E+00  5.0481E-01  6.3383E-01  1.0122E+00  1.0123E+00  7.4795E-01  1.3941E+00  1.3471E+00  4.8366E-01
             1.3212E+00
 PARAMETER:  1.1251E-01  5.8296E-01 -5.8357E-01 -3.5597E-01  1.1212E-01  1.1226E-01 -1.9042E-01  4.3226E-01  3.9793E-01 -6.2637E-01
             3.7855E-01
 GRADIENT:  -2.1849E+04 -3.2125E+01  5.3936E+01  1.3782E+04 -4.3792E+04  3.0575E-02 -1.1368E-01 -1.9868E+02  1.2323E+04 -7.8403E+03
             2.2299E+01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1193
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1033E-02 -1.1824E-02 -2.5178E-02  1.9489E-02 -3.0813E-02
 SE:             2.9759E-02  2.3620E-02  1.6857E-02  2.3538E-02  1.3309E-02
 N:                     100         100         100         100         100

 P VAL.:         7.1082E-01  6.1666E-01  1.3527E-01  4.0769E-01  2.0598E-02

 ETASHRINKSD(%)  3.0229E-01  2.0869E+01  4.3527E+01  2.1144E+01  5.5414E+01
 ETASHRINKVR(%)  6.0366E-01  3.7382E+01  6.8108E+01  3.7817E+01  8.0121E+01
 EBVSHRINKSD(%)  7.0087E-01  2.1248E+01  5.4295E+01  2.1885E+01  5.5111E+01
 EBVSHRINKVR(%)  1.3968E+00  3.7981E+01  7.9110E+01  3.8980E+01  7.9849E+01
 RELATIVEINF(%)  9.8520E+01  4.5490E+00  1.9153E+00  5.2518E+00  3.2091E+00
 EPSSHRINKSD(%)  4.2172E+01
 EPSSHRINKVR(%)  6.6559E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1633.3159653084492     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -898.16513874471104     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.36
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1633.316       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.62E+00  5.05E-01  6.34E-01  1.01E+00  1.01E+00  7.48E-01  1.39E+00  1.35E+00  4.84E-01  1.32E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  9.00E-02
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.00E-01
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       15.394
Stop Time:
Fri Oct  1 23:50:32 CDT 2021
