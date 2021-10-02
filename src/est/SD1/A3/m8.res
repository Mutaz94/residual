Fri Oct  1 01:00:17 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat8.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m8.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -767.264674126998        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9233E+02  2.1498E+02  4.2885E+02  1.4297E+02  3.6881E+02  3.7260E+01 -2.3959E+02 -3.1599E+02 -3.2676E+01 -2.2346E+02
            -5.2561E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2582.18955428492        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.3539E-01  8.8409E-01  5.5300E-01  1.0641E+00  6.8576E-01  8.3571E-01  1.2073E+00  1.0279E+00  9.6551E-01  1.0473E+00
             3.7284E+00
 PARAMETER:  3.3204E-02 -2.3194E-02 -4.9240E-01  1.6216E-01 -2.7723E-01 -7.9478E-02  2.8841E-01  1.2748E-01  6.4897E-02  1.4617E-01
             1.4160E+00
 GRADIENT:  -1.5660E+02  3.2993E+01 -5.7856E+01 -3.8708E+00  1.4477E+01 -5.5902E+01  1.7165E+01  2.1870E+01 -5.1265E+00  3.4116E+01
             6.1392E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2614.28252228074        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      198
 NPARAMETR:  9.9130E-01  3.8201E-01  2.7716E-01  1.4398E+00  3.0329E-01  6.9389E-01  1.6502E+00  8.8689E-01  1.3325E+00  8.9302E-01
             3.3140E+00
 PARAMETER:  9.1258E-02 -8.6232E-01 -1.1832E+00  4.6448E-01 -1.0931E+00 -2.6544E-01  6.0087E-01 -2.0034E-02  3.8707E-01 -1.3148E-02
             1.2982E+00
 GRADIENT:  -9.2742E+00  3.9314E+01 -3.8709E+01  2.6508E+02 -2.9316E+01 -1.4922E+02  4.6270E+01  2.7138E+01 -2.4786E+01  5.2916E+01
             5.2121E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2761.98898357915        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      374
 NPARAMETR:  9.5660E-01  4.6774E-01  4.0451E-01  1.2589E+00  3.9257E-01  9.9514E-01  1.2388E+00  3.0365E-01  1.1655E+00  8.0596E-01
             2.6944E+00
 PARAMETER:  5.5632E-02 -6.5984E-01 -8.0507E-01  3.3021E-01 -8.3504E-01  9.5130E-02  3.1413E-01 -1.0919E+00  2.5316E-01 -1.1572E-01
             1.0912E+00
 GRADIENT:  -4.8229E+01  2.7719E+01  8.7954E+01  1.0630E+02 -7.9809E+01  1.1976E+01  1.5609E+00  2.6870E+00  3.9729E+00  1.4608E+01
             1.9502E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2801.16864717862        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  9.7805E-01  3.1259E-01  2.2648E-01  1.0920E+00  2.6427E-01  9.6397E-01  1.3027E+00  1.7792E-01  1.2946E+00  6.7263E-01
             2.3663E+00
 PARAMETER:  7.7808E-02 -1.0629E+00 -1.3851E+00  1.8797E-01 -1.2308E+00  6.3307E-02  3.6444E-01 -1.6264E+00  3.5823E-01 -2.9656E-01
             9.6134E-01
 GRADIENT:   9.3978E+00  5.3888E+00 -2.2043E+01  7.4094E+00  2.5978E+01 -4.0362E-01 -3.7525E+00 -5.2207E-01 -3.7740E+00  4.2510E-01
             7.0620E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2804.37905942304        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      727
 NPARAMETR:  9.7328E-01  2.7552E-01  1.9137E-01  1.0398E+00  2.3275E-01  9.7106E-01  1.3699E+00  8.3628E-01  1.3807E+00  5.8026E-01
             2.2983E+00
 PARAMETER:  7.2921E-02 -1.1891E+00 -1.5536E+00  1.3904E-01 -1.3578E+00  7.0633E-02  4.1473E-01 -7.8795E-02  4.2262E-01 -4.4428E-01
             9.3216E-01
 GRADIENT:  -2.4548E+00  1.1781E+00  6.8079E+00 -5.7770E+00 -7.0162E+00  1.5376E+00 -1.2116E+00  3.6266E+00 -3.8826E-01  7.1754E+00
             9.3903E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2804.78404324661        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      902
 NPARAMETR:  9.7421E-01  2.7657E-01  1.9184E-01  1.0472E+00  2.3421E-01  9.6812E-01  1.4012E+00  8.3263E-01  1.3848E+00  5.2551E-01
             2.2884E+00
 PARAMETER:  7.3871E-02 -1.1853E+00 -1.5511E+00  1.4611E-01 -1.3515E+00  6.7598E-02  4.3734E-01 -8.3169E-02  4.2554E-01 -5.4339E-01
             9.2783E-01
 GRADIENT:   2.8621E-01 -1.8362E-01  3.8499E-01  3.8990E-03 -6.7985E-01  9.5708E-02  2.9286E-02  2.7220E-02 -2.7776E-02 -9.4243E-02
             6.7558E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2804.78404324661        NO. OF FUNC. EVALS.:  25
 CUMULATIVE NO. OF FUNC. EVALS.:      927
 NPARAMETR:  9.7421E-01  2.7657E-01  1.9184E-01  1.0472E+00  2.3421E-01  9.6812E-01  1.4012E+00  8.3263E-01  1.3848E+00  5.2551E-01
             2.2884E+00
 PARAMETER:  7.3871E-02 -1.1853E+00 -1.5511E+00  1.4611E-01 -1.3515E+00  6.7598E-02  4.3734E-01 -8.3169E-02  4.2554E-01 -5.4339E-01
             9.2783E-01
 GRADIENT:   1.4791E-01 -1.1598E+00  5.1844E-02  6.4771E-02  1.9911E+00  8.8445E-02  5.5992E-04  1.4525E-02 -1.5626E-01 -1.1808E-01
             1.1757E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      927
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3871E-03  8.6944E-03  3.2500E-03 -3.4149E-03  1.0715E-02
 SE:             2.9438E-02  2.5376E-02  1.9056E-02  2.8266E-02  1.9287E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6242E-01  7.3188E-01  8.6457E-01  9.0384E-01  5.7852E-01

 ETASHRINKSD(%)  1.3792E+00  1.4988E+01  3.6161E+01  5.3061E+00  3.5387E+01
 ETASHRINKVR(%)  2.7393E+00  2.7730E+01  5.9246E+01  1.0331E+01  5.8252E+01
 EBVSHRINKSD(%)  1.4880E+00  1.3746E+01  3.5677E+01  4.3473E+00  3.6471E+01
 EBVSHRINKVR(%)  2.9538E+00  2.5603E+01  5.8625E+01  8.5056E+00  5.9641E+01
 RELATIVEINF(%)  9.7031E+01  1.7537E+01  4.1229E+00  5.5481E+01  3.1026E+00
 EPSSHRINKSD(%)  2.0435E+01
 EPSSHRINKVR(%)  3.6694E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2804.7840432466141     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1150.6946834782034     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.41
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2804.784       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.74E-01  2.77E-01  1.92E-01  1.05E+00  2.34E-01  9.68E-01  1.40E+00  8.33E-01  1.38E+00  5.26E-01  2.29E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.466
Stop Time:
Fri Oct  1 01:00:44 CDT 2021