Wed Sep 29 14:59:27 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat31.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m31.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1648.64877345839        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7923E+02 -1.1223E+01 -4.6440E+01  5.7884E+01  9.3844E+01  3.6642E+01  9.2730E+00  9.0230E+00  9.9247E+00  3.5873E+00
            -1.2662E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1653.79926647145        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.7389E-01  1.0215E+00  1.0509E+00  1.0078E+00  9.6028E-01  1.0037E+00  9.5620E-01  9.6101E-01  9.8747E-01  9.4827E-01
             1.0517E+00
 PARAMETER:  7.3538E-02  1.2123E-01  1.4962E-01  1.0779E-01  5.9465E-02  1.0373E-01  5.5217E-02  6.0229E-02  8.7395E-02  4.6882E-02
             1.5045E-01
 GRADIENT:   3.0852E+00  7.1133E+00  1.6415E+00  4.5485E+00  9.1388E-01  1.0950E+00  5.1080E+00  3.9095E+00 -1.3592E+00  1.5036E+00
             5.3898E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1654.85371297775        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.7239E-01  9.9285E-01  1.0139E+00  1.0223E+00  9.3623E-01  9.8133E-01  7.8421E-01  6.8754E-01  1.0346E+00  1.0014E+00
             1.0220E+00
 PARAMETER:  7.2007E-02  9.2825E-02  1.1385E-01  1.2203E-01  3.4102E-02  8.1152E-02 -1.4307E-01 -2.7463E-01  1.3400E-01  1.0144E-01
             1.2178E-01
 GRADIENT:  -2.7752E-02  7.5643E+00  5.6361E+00  7.9414E+00 -5.2159E+00 -8.1423E+00  4.3684E-01  2.9235E-01  8.8531E-01  2.9746E+00
            -6.9510E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1655.83023382696        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  9.7470E-01  1.1101E+00  8.0096E-01  9.3387E-01  8.8878E-01  1.0055E+00  8.8833E-01  4.2445E-01  1.0434E+00  8.9445E-01
             1.0399E+00
 PARAMETER:  7.4375E-02  2.0443E-01 -1.2194E-01  3.1578E-02 -1.7905E-02  1.0547E-01 -1.8410E-02 -7.5697E-01  1.4249E-01 -1.1549E-02
             1.3908E-01
 GRADIENT:   9.2111E-01  6.3797E-01 -8.1116E-01  7.3806E-01 -9.9054E-01  9.9613E-01  1.1353E+00  8.8789E-01  2.2963E-01  7.2316E-01
             2.0927E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1656.19685141695        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.7482E-01  1.2586E+00  7.2545E-01  8.3598E-01  9.2497E-01  1.0037E+00  8.0571E-01  1.1589E-01  1.1391E+00  9.1256E-01
             1.0365E+00
 PARAMETER:  7.4499E-02  3.2999E-01 -2.2096E-01 -7.9146E-02  2.2001E-02  1.0369E-01 -1.1604E-01 -2.0551E+00  2.3028E-01  8.4957E-03
             1.3583E-01
 GRADIENT:   1.1570E-01  2.0392E-01 -3.0180E-01  3.2578E-01  9.1261E-02  1.0654E-01  2.0302E-01  6.1865E-02  3.3701E-01  3.2786E-01
             2.5443E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1656.21793002427        NO. OF FUNC. EVALS.: 142
 CUMULATIVE NO. OF FUNC. EVALS.:      848
 NPARAMETR:  9.7470E-01  1.2663E+00  7.2277E-01  8.3055E-01  9.2724E-01  1.0034E+00  7.9920E-01  3.4635E-02  1.1433E+00  9.1135E-01
             1.0359E+00
 PARAMETER:  7.4370E-02  3.3612E-01 -2.2466E-01 -8.5670E-02  2.4458E-02  1.0335E-01 -1.2415E-01 -3.2629E+00  2.3395E-01  7.1667E-03
             1.3530E-01
 GRADIENT:  -1.6840E-01  6.3473E-01  8.1453E-01 -4.8314E-01 -5.8629E-01 -2.4460E-02 -2.6964E-01  5.1535E-03 -2.0839E-01 -4.5088E-01
            -2.7750E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1656.22555693829        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1023
 NPARAMETR:  9.7483E-01  1.2611E+00  7.2128E-01  8.3370E-01  9.2406E-01  1.0036E+00  8.0491E-01  1.0000E-02  1.1382E+00  9.1018E-01
             1.0360E+00
 PARAMETER:  7.4507E-02  3.3197E-01 -2.2672E-01 -8.1885E-02  2.1023E-02  1.0358E-01 -1.1703E-01 -5.1298E+00  2.2947E-01  5.8830E-03
             1.3536E-01
 GRADIENT:   8.9697E-02  1.2083E-02  1.3869E-02 -3.9107E-01 -2.6793E-02  5.7130E-02 -2.2649E-02  0.0000E+00 -1.3570E-01  8.9515E-03
            -1.9087E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1656.23122167226        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1200
 NPARAMETR:  9.7486E-01  1.2500E+00  7.2136E-01  8.4079E-01  9.1818E-01  1.0033E+00  8.1090E-01  1.0000E-02  1.1303E+00  9.0546E-01
             1.0358E+00
 PARAMETER:  7.4535E-02  3.2310E-01 -2.2661E-01 -7.3411E-02  1.4638E-02  1.0334E-01 -1.0961E-01 -8.3091E+00  2.2249E-01  6.8587E-04
             1.3517E-01
 GRADIENT:   1.2675E-01 -7.7004E-02 -3.8245E-01  4.4561E-03  5.0018E-02 -4.8571E-02 -5.8444E-02  0.0000E+00  1.5162E-02 -2.7377E-02
             2.1921E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1656.24371304228        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1384             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7562E-01  1.2197E+00  7.3350E-01  8.5973E-01  9.0980E-01  1.0038E+00  8.2657E-01  1.0000E-02  1.1114E+00  9.0446E-01
             1.0356E+00
 PARAMETER:  7.5319E-02  2.9864E-01 -2.0993E-01 -5.1137E-02  5.4676E-03  1.0376E-01 -9.0476E-02 -1.5122E+01  2.0562E-01 -4.1388E-04
             1.3497E-01
 GRADIENT:   3.9031E+02  1.4951E+02  3.0706E+00  4.4417E+01  8.6271E+00  4.1092E+01  3.0856E+00  0.0000E+00  9.7759E+00  7.6473E-01
             1.1358E+00

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1656.24413079952        NO. OF FUNC. EVALS.:  90
 CUMULATIVE NO. OF FUNC. EVALS.:     1474
 NPARAMETR:  9.7544E-01  1.2202E+00  7.3363E-01  8.6017E-01  9.0973E-01  1.0038E+00  8.2574E-01  1.0000E-02  1.1108E+00  9.0415E-01
             1.0355E+00
 PARAMETER:  7.5130E-02  2.9904E-01 -2.0975E-01 -5.0630E-02  5.3947E-03  1.0377E-01 -9.1476E-02 -1.5122E+01  2.0509E-01 -7.6518E-04
             1.3493E-01
 GRADIENT:   1.5791E+00  3.7019E-02 -2.8209E-02  1.0538E-01  8.5838E-03  1.4166E-01  1.0767E-02  0.0000E+00  3.3729E-02 -3.4607E-02
            -2.8385E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1474
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.4369E-05 -2.1370E-02 -3.3154E-04  9.3834E-03 -2.3746E-02
 SE:             2.9815E-02  1.9353E-02  1.5015E-04  2.5212E-02  2.3730E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9962E-01  2.6950E-01  2.7239E-02  7.0976E-01  3.1698E-01

 ETASHRINKSD(%)  1.1488E-01  3.5164E+01  9.9497E+01  1.5537E+01  2.0503E+01
 ETASHRINKVR(%)  2.2963E-01  5.7963E+01  9.9997E+01  2.8660E+01  3.6803E+01
 EBVSHRINKSD(%)  4.6517E-01  3.4713E+01  9.9535E+01  1.5812E+01  1.9656E+01
 EBVSHRINKVR(%)  9.2817E-01  5.7376E+01  9.9998E+01  2.9124E+01  3.5448E+01
 RELATIVEINF(%)  9.8909E+01  1.6709E+00  2.3765E-04  3.7448E+00  6.9614E+00
 EPSSHRINKSD(%)  4.3663E+01
 EPSSHRINKVR(%)  6.8262E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1656.2441307995164     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -921.09330423577819     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.24
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.68
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1656.244       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.75E-01  1.22E+00  7.34E-01  8.60E-01  9.10E-01  1.00E+00  8.26E-01  1.00E-02  1.11E+00  9.04E-01  1.04E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.15E+03
 
 TH 2
+       -6.84E+00  4.91E+02
 
 TH 3
+        1.16E+01  2.43E+02  4.80E+02
 
 TH 4
+       -1.33E+01  3.90E+02 -2.00E+02  8.65E+02
 
 TH 5
+       -2.47E+00 -4.02E+02 -5.86E+02  2.17E+02  1.05E+03
 
 TH 6
+        2.20E-01 -1.05E+00  3.07E+00 -3.94E+00 -1.36E+00  1.94E+02
 
 TH 7
+        9.07E-01  1.02E+01  3.86E+00 -9.29E+00 -1.75E+01 -4.22E-02  5.47E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.20E+00 -2.82E+01 -2.38E+01  3.68E+01 -1.24E-01 -4.04E-01  2.47E+01  0.00E+00  8.47E+01
 
 TH10
+       -8.53E-01 -9.52E+00 -5.30E+01 -1.21E+01 -5.59E+01 -7.71E-02  2.30E+01  0.00E+00  5.24E+00  1.02E+02
 
 TH11
+       -8.28E+00 -1.96E+01 -3.35E+01 -2.25E+00  5.94E+00  2.51E+00  8.17E+00  0.00E+00  8.15E+00  2.22E+01  1.99E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       23.957
Stop Time:
Wed Sep 29 14:59:53 CDT 2021
