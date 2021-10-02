Fri Oct  1 20:16:17 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat90.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      698
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

 TOT. NO. OF OBS RECS:      598
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
 RAW OUTPUT FILE (FILE): m90.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1159.39341232810        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6941E+02 -7.1530E+01  4.1034E+01  1.6694E+02  1.6999E+02  3.1272E+01 -4.5403E+01 -8.7161E+01 -3.6927E+01 -3.9749E+01
            -2.3712E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1944.51059507298        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.8843E-01  1.2560E+00  8.3406E-01  8.3283E-01  1.0420E+00  9.3638E-01  1.0507E+00  1.0054E+00  9.1054E-01  9.9139E-01
             2.2046E+00
 PARAMETER:  8.8366E-02  3.2796E-01 -8.1446E-02 -8.2927E-02  1.4117E-01  3.4263E-02  1.4950E-01  1.0535E-01  6.2880E-03  9.1351E-02
             8.9056E-01
 GRADIENT:   7.8175E+01 -1.2269E+01 -1.1500E+01 -3.3543E+00  6.5700E+01 -1.6398E+01  7.9609E+00  1.8605E+00 -1.5584E+01 -1.2524E+01
            -6.0634E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1948.67394752065        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  9.8152E-01  1.3347E+00  5.4958E-01  7.8579E-01  9.2704E-01  1.0097E+00  9.7886E-01  5.8822E-01  9.8940E-01  1.0043E+00
             2.1926E+00
 PARAMETER:  8.1347E-02  3.8872E-01 -4.9860E-01 -1.4107E-01  2.4241E-02  1.0964E-01  7.8629E-02 -4.3066E-01  8.9340E-02  1.0430E-01
             8.8508E-01
 GRADIENT:   6.3531E+01  3.7150E+01 -2.4050E+01  1.2624E+01  2.6000E+01  1.2888E+01  1.0126E+01  3.0188E+00 -1.0358E+01 -1.6459E+00
            -6.1116E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1956.11285665877        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:      289
 NPARAMETR:  9.9792E-01  1.5406E+00  6.4295E-01  6.9685E-01  1.0825E+00  1.0017E+00  8.1618E-01  3.8041E-01  1.2072E+00  1.1669E+00
             2.3130E+00
 PARAMETER:  9.7923E-02  5.3214E-01 -3.4169E-01 -2.6119E-01  1.7924E-01  1.0167E-01 -1.0313E-01 -8.6651E-01  2.8833E-01  2.5432E-01
             9.3854E-01
 GRADIENT:   6.8768E+00  1.3300E+01  1.2578E+00  1.7150E+01 -2.7901E+00  1.9515E+00 -1.5173E+00  3.8398E-01 -7.5693E-01  9.8555E-01
             3.2354E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1957.92472384891        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      465
 NPARAMETR:  9.9388E-01  1.8619E+00  5.0423E-01  4.7883E-01  1.2701E+00  9.9884E-01  7.2687E-01  1.7205E-01  1.5450E+00  1.3055E+00
             2.2884E+00
 PARAMETER:  9.3858E-02  7.2157E-01 -5.8472E-01 -6.3641E-01  3.3909E-01  9.8834E-02 -2.1900E-01 -1.6599E+00  5.3504E-01  3.6661E-01
             9.2787E-01
 GRADIENT:  -3.1703E-01  3.6759E+00  2.6348E-01  2.3793E+00 -1.0702E+00  1.0891E+00 -1.4604E+00  4.6716E-02 -5.6679E-01 -2.0129E-01
            -2.9620E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1957.99413989259        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      645
 NPARAMETR:  9.9419E-01  1.9214E+00  4.7249E-01  4.3566E-01  1.3089E+00  9.9578E-01  7.2102E-01  4.9679E-02  1.6376E+00  1.3340E+00
             2.2922E+00
 PARAMETER:  9.4175E-02  7.5308E-01 -6.4975E-01 -7.3089E-01  3.6920E-01  9.5767E-02 -2.2709E-01 -2.9022E+00  5.9320E-01  3.8819E-01
             9.2951E-01
 GRADIENT:   5.7194E-01 -3.7577E+00  1.3528E-01 -9.7229E-01 -1.2666E-01  7.0929E-02  1.4406E-01  3.6622E-03 -1.9735E-01  6.8469E-02
             2.4768E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1957.99676692676        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      827             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9412E-01  1.9228E+00  4.7103E-01  4.3544E-01  1.3094E+00  9.9573E-01  7.2026E-01  1.3615E-02  1.6415E+00  1.3341E+00
             2.2918E+00
 PARAMETER:  9.4105E-02  7.5377E-01 -6.5284E-01 -7.3140E-01  3.6959E-01  9.5720E-02 -2.2814E-01 -4.1966E+00  5.9562E-01  3.8822E-01
             9.2936E-01
 GRADIENT:   8.3948E+01  2.2913E+02  9.9065E-01  2.1727E+01  1.3538E+01  7.8162E+00  4.2615E+00  4.4834E-04  4.4755E+00  2.3302E+00
             1.1184E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1957.99695553484        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:      994
 NPARAMETR:  9.9411E-01  1.9231E+00  4.7108E-01  4.3551E-01  1.3093E+00  9.9572E-01  7.2014E-01  1.0000E-02  1.6417E+00  1.3340E+00
             2.2917E+00
 PARAMETER:  9.4092E-02  7.5392E-01 -6.5272E-01 -7.3125E-01  3.6948E-01  9.5708E-02 -2.2831E-01 -5.2685E+00  5.9574E-01  3.8819E-01
             9.2931E-01
 GRADIENT:   7.7435E-01 -2.5786E+00 -4.0559E-02 -2.5109E-01  1.0312E-01  4.9670E-03  2.9623E-02  0.0000E+00 -8.8787E-03  7.6717E-02
            -1.4769E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      994
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.5239E-04 -2.9462E-02 -9.3437E-05  2.3795E-02 -2.6638E-02
 SE:             2.9444E-02  2.2968E-02  5.3394E-05  2.0351E-02  2.4061E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7690E-01  1.9957E-01  8.0127E-02  2.4230E-01  2.6825E-01

 ETASHRINKSD(%)  1.3594E+00  2.3056E+01  9.9821E+01  3.1823E+01  1.9393E+01
 ETASHRINKVR(%)  2.7003E+00  4.0796E+01  1.0000E+02  5.3518E+01  3.5026E+01
 EBVSHRINKSD(%)  1.5322E+00  2.2755E+01  9.9823E+01  3.4702E+01  1.7447E+01
 EBVSHRINKVR(%)  3.0409E+00  4.0332E+01  1.0000E+02  5.7362E+01  3.1850E+01
 RELATIVEINF(%)  9.6823E+01  5.3722E+00  1.0093E-04  3.8731E+00  1.8171E+01
 EPSSHRINKSD(%)  2.4804E+01
 EPSSHRINKVR(%)  4.3455E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          598
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1099.0504857127885     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1957.9969555348398     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -858.94646982205131     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.91
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1957.997       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.94E-01  1.92E+00  4.71E-01  4.36E-01  1.31E+00  9.96E-01  7.20E-01  1.00E-02  1.64E+00  1.33E+00  2.29E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.967
Stop Time:
Fri Oct  1 20:16:36 CDT 2021
