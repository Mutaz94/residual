Fri Oct  1 14:34:20 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat96.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m96.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2125.63221576750        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0044E+02  1.6235E+01 -6.6293E+01  1.1473E+02  5.8080E+01  3.3336E+01  1.4980E+01  1.9453E+01  2.7603E+01  3.6372E+01
             6.8723E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2135.04273485642        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      171
 NPARAMETR:  1.0026E+00  1.0770E+00  1.2661E+00  9.5450E-01  1.0639E+00  1.0707E+00  9.2076E-01  8.7856E-01  8.9754E-01  7.9238E-01
             9.8850E-01
 PARAMETER:  1.0263E-01  1.7417E-01  3.3595E-01  5.3435E-02  1.6195E-01  1.6828E-01  1.7441E-02 -2.9473E-02 -8.0975E-03 -1.3272E-01
             8.8436E-02
 GRADIENT:   6.6795E+01  2.8174E+01  2.4325E+01 -7.3064E+00 -2.2775E+01  1.6312E+01  2.8370E+00  3.3113E+00 -1.7137E+01 -1.8180E+01
            -1.8864E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2138.78723968675        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      347
 NPARAMETR:  1.0021E+00  8.6775E-01  1.5388E+00  1.0806E+00  1.0622E+00  1.0586E+00  6.1278E-01  4.9680E-01  9.4888E-01  9.8096E-01
             1.0231E+00
 PARAMETER:  1.0211E-01 -4.1847E-02  5.3098E-01  1.7752E-01  1.6034E-01  1.5693E-01 -3.8976E-01 -5.9958E-01  4.7529E-02  8.0781E-02
             1.2284E-01
 GRADIENT:   7.0867E+01  1.6821E+01  3.6903E+01 -1.0754E+01 -5.6368E+01  1.2877E+01  4.6939E-01 -5.8915E-01 -4.6831E+00 -1.9866E+00
             1.1671E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2143.10645543203        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      523
 NPARAMETR:  9.6805E-01  8.9170E-01  1.2044E+00  1.0651E+00  1.0002E+00  1.0188E+00  7.7000E-01  2.8941E-01  9.3915E-01  9.0830E-01
             1.0003E+00
 PARAMETER:  6.7526E-02 -1.4629E-02  2.8602E-01  1.6310E-01  1.0021E-01  1.1862E-01 -1.6136E-01 -1.1399E+00  3.7222E-02  3.8156E-03
             1.0027E-01
 GRADIENT:   1.6771E+00  4.2215E+00 -4.3929E+00  1.0439E+01  6.0807E+00  2.9166E-01 -8.1568E-01  5.1917E-01 -1.8720E+00  7.4182E-01
            -5.8752E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2143.30396636052        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  9.6647E-01  7.8238E-01  1.1810E+00  1.1267E+00  9.4579E-01  1.0168E+00  9.6408E-01  1.8123E-01  8.7893E-01  8.6944E-01
             1.0010E+00
 PARAMETER:  6.5896E-02 -1.4541E-01  2.6638E-01  2.1927E-01  4.4262E-02  1.1667E-01  6.3417E-02 -1.6080E+00 -2.9052E-02 -3.9901E-02
             1.0104E-01
 GRADIENT:   2.6780E-01 -7.8708E-01 -5.1084E-01 -8.3685E-01 -1.6077E-01 -1.2288E-01  1.5770E-01  1.7457E-01  1.7093E-01  2.4835E-01
             6.2246E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2143.40032962590        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  9.6726E-01  8.5482E-01  1.1691E+00  1.0852E+00  9.6824E-01  1.0181E+00  8.6924E-01  6.4313E-02  9.1301E-01  8.8518E-01
             1.0007E+00
 PARAMETER:  6.6712E-02 -5.6860E-02  2.5625E-01  1.8181E-01  6.7726E-02  1.1790E-01 -4.0131E-02 -2.6440E+00  8.9952E-03 -2.1959E-02
             1.0072E-01
 GRADIENT:   4.4981E-01  3.9688E+00  2.1151E-01  6.7205E+00 -1.7865E+00  1.0224E-01 -3.3108E-01  2.2145E-02 -5.0743E-01  4.6200E-01
            -1.4475E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2143.42601806277        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1054
 NPARAMETR:  9.6700E-01  8.4080E-01  1.1619E+00  1.0902E+00  9.6093E-01  1.0177E+00  9.0657E-01  2.2387E-02  9.0440E-01  8.7591E-01
             1.0009E+00
 PARAMETER:  6.6447E-02 -7.3397E-02  2.5006E-01  1.8639E-01  6.0145E-02  1.1758E-01  1.9182E-03 -3.6993E+00 -4.8060E-04 -3.2486E-02
             1.0086E-01
 GRADIENT:   1.3884E-01  4.8487E-02 -1.3893E-01  1.3728E-01  1.2453E-01  1.5136E-02  3.0323E-03  2.7645E-03 -1.4833E-02  1.1156E-01
             3.5797E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2143.42610207481        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1229
 NPARAMETR:  9.6694E-01  8.3839E-01  1.1624E+00  1.0917E+00  9.6012E-01  1.0177E+00  9.0904E-01  1.4204E-02  9.0331E-01  8.7530E-01
             1.0009E+00
 PARAMETER:  6.6377E-02 -7.6277E-02  2.5046E-01  1.8774E-01  5.9304E-02  1.1753E-01  4.6361E-03 -4.1542E+00 -1.6886E-03 -3.3194E-02
             1.0087E-01
 GRADIENT:   4.0496E-02  1.8118E-02 -3.8376E-02  4.6278E-02  2.8252E-02  5.1797E-03  1.9954E-03  1.1111E-03 -2.9929E-03  3.4283E-02
             1.1413E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2143.42616417287        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1392
 NPARAMETR:  9.6692E-01  8.3776E-01  1.1625E+00  1.0921E+00  9.5991E-01  1.0177E+00  9.0965E-01  1.0000E-02  9.0303E-01  8.7513E-01
             1.0009E+00
 PARAMETER:  6.6359E-02 -7.7018E-02  2.5055E-01  1.8808E-01  5.9088E-02  1.1752E-01  5.3087E-03 -4.5194E+00 -1.9958E-03 -3.3382E-02
             1.0088E-01
 GRADIENT:   1.3646E-02  7.0664E-03 -1.2977E-02  1.8603E-02  6.5763E-03  1.7914E-03  9.0332E-04  3.2906E-04 -5.9836E-04  1.2193E-02
             4.2208E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1392
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.5718E-04 -1.2207E-02 -2.4321E-04  2.4291E-03 -1.9714E-02
 SE:             2.9884E-02  1.4735E-02  1.6105E-04  2.6780E-02  2.4618E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7445E-01  4.0742E-01  1.3100E-01  9.2773E-01  4.2324E-01

 ETASHRINKSD(%)  1.0000E-10  5.0636E+01  9.9460E+01  1.0284E+01  1.7527E+01
 ETASHRINKVR(%)  1.0000E-10  7.5632E+01  9.9997E+01  1.9510E+01  3.1981E+01
 EBVSHRINKSD(%)  3.1530E-01  5.0706E+01  9.9463E+01  1.0428E+01  1.6124E+01
 EBVSHRINKVR(%)  6.2960E-01  7.5701E+01  9.9997E+01  1.9769E+01  2.9648E+01
 RELATIVEINF(%)  9.8585E+01  8.2913E-01  3.5808E-04  3.4769E+00  8.4941E+00
 EPSSHRINKSD(%)  3.2082E+01
 EPSSHRINKVR(%)  5.3871E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2143.4261641728690     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1224.4876309681963     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.77
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2143.426       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.67E-01  8.38E-01  1.16E+00  1.09E+00  9.60E-01  1.02E+00  9.10E-01  1.00E-02  9.03E-01  8.75E-01  1.00E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.816
Stop Time:
Fri Oct  1 14:34:41 CDT 2021