Fri Oct  1 17:47:39 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat43.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m43.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1272.83870619460        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4769E+02  1.3164E+02  1.2833E+02  8.1809E+01  1.7099E+02  4.0310E+01 -1.1062E+02 -5.1321E+01 -1.1432E+00 -1.0827E+02
            -2.0401E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1954.30807919941        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.8352E-01  9.3437E-01  8.9059E-01  1.0495E+00  8.7596E-01  9.2644E-01  9.2947E-01  9.0905E-01  7.5033E-01  8.8063E-01
             2.3764E+00
 PARAMETER:  8.3379E-02  3.2122E-02 -1.5876E-02  1.4831E-01 -3.2438E-02  2.3595E-02  2.6856E-02  4.6503E-03 -1.8724E-01 -2.7112E-02
             9.6557E-01
 GRADIENT:   5.2303E+01  6.3211E+00  1.6010E+01 -2.9109E+01 -3.2744E+00 -1.2419E+01 -4.7137E+00  7.7125E+00 -9.1129E+00  1.6959E+00
             6.5155E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1965.23369112630        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:      183
 NPARAMETR:  9.7590E-01  6.3245E-01  5.1545E-01  1.2493E+00  5.3551E-01  9.8553E-01  1.0024E+00  5.5311E-01  7.0951E-01  6.5280E-01
             2.2006E+00
 PARAMETER:  7.5600E-02 -3.5816E-01 -5.6271E-01  3.2254E-01 -5.2453E-01  8.5422E-02  1.0238E-01 -4.9220E-01 -2.4317E-01 -3.2649E-01
             8.8872E-01
 GRADIENT:  -3.7275E+01  7.2673E+01 -2.6730E+01  2.2014E+02  3.2559E+01 -2.5592E-02 -3.1552E+01  9.0822E+00 -4.8469E+01 -1.1916E+01
            -4.4346E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1993.57752954457        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      361
 NPARAMETR:  9.8372E-01  5.3203E-01  3.8647E-01  1.2259E+00  4.1511E-01  9.8976E-01  1.5883E+00  2.2085E-01  9.0366E-01  5.8479E-01
             2.0940E+00
 PARAMETER:  8.3590E-02 -5.3106E-01 -8.5070E-01  3.0365E-01 -7.7921E-01  8.9708E-02  5.6268E-01 -1.4103E+00 -1.3075E-03 -4.3651E-01
             8.3908E-01
 GRADIENT:  -1.2296E+01  7.9265E+01 -2.2786E+01  1.1732E+02  1.6605E+01  9.3610E-01  1.0889E+01  1.9200E+00  1.8836E+00 -1.8606E+00
            -1.1548E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2015.94198595199        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      539
 NPARAMETR:  9.8924E-01  3.3646E-01  2.6460E-01  1.1313E+00  2.9405E-01  9.9234E-01  1.5450E+00  1.1003E-01  9.4388E-01  4.8749E-01
             2.0679E+00
 PARAMETER:  8.9182E-02 -9.8928E-01 -1.2295E+00  2.2336E-01 -1.1240E+00  9.2309E-02  5.3501E-01 -2.1070E+00  4.2244E-02 -6.1848E-01
             8.2654E-01
 GRADIENT:   6.0281E-01 -5.9545E-01  6.5834E-01 -1.8417E-01  4.7864E-01  6.1355E-01 -9.7407E-01  1.7196E-01 -7.9473E-02  6.2594E-02
             1.5456E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2016.02224774754        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      716
 NPARAMETR:  9.8891E-01  3.3637E-01  2.6418E-01  1.1316E+00  2.9376E-01  9.9078E-01  1.5509E+00  3.1064E-02  9.4608E-01  4.9088E-01
             2.0659E+00
 PARAMETER:  8.8846E-02 -9.8955E-01 -1.2311E+00  2.2364E-01 -1.1250E+00  9.0737E-02  5.3881E-01 -3.3717E+00  4.4570E-02 -6.1155E-01
             8.2558E-01
 GRADIENT:  -8.4590E-02  2.2888E-02  1.1383E-01  1.2070E+00 -4.0211E-01 -1.8144E-02 -1.0665E-01  1.3145E-02  2.0925E-01  1.4916E-01
             3.8834E-01

0ITERATION NO.:   29    OBJECTIVE VALUE:  -2016.02881802885        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      843
 NPARAMETR:  9.8893E-01  3.3632E-01  2.6410E-01  1.1309E+00  2.9372E-01  9.9082E-01  1.5523E+00  1.0000E-02  9.4569E-01  4.9046E-01
             2.0656E+00
 PARAMETER:  8.8867E-02 -9.8971E-01 -1.2314E+00  2.2300E-01 -1.1251E+00  9.0777E-02  5.3977E-01 -4.7318E+00  4.4158E-02 -6.1241E-01
             8.2544E-01
 GRADIENT:  -1.6901E-03  2.0691E-02  2.4761E-01 -4.2404E-02 -3.7646E-01  6.1602E-04  5.1078E-03  0.0000E+00  5.5796E-02  5.3435E-02
             1.8883E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      843
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.2845E-04  2.0469E-02 -2.8557E-04 -8.3927E-03  1.5565E-02
 SE:             2.9539E-02  2.2571E-02  2.7186E-04  2.7818E-02  2.0103E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9113E-01  3.6448E-01  2.9353E-01  7.6288E-01  4.3876E-01

 ETASHRINKSD(%)  1.0417E+00  2.4384E+01  9.9089E+01  6.8066E+00  3.2654E+01
 ETASHRINKVR(%)  2.0726E+00  4.2823E+01  9.9992E+01  1.3150E+01  5.4645E+01
 EBVSHRINKSD(%)  1.2480E+00  2.2751E+01  9.9068E+01  6.4024E+00  3.2856E+01
 EBVSHRINKVR(%)  2.4804E+00  4.0327E+01  9.9991E+01  1.2395E+01  5.4917E+01
 RELATIVEINF(%)  9.7464E+01  1.5251E+01  5.5495E-04  5.5091E+01  2.0744E+00
 EPSSHRINKSD(%)  2.6850E+01
 EPSSHRINKVR(%)  4.6491E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2016.0288180288478     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -913.30257818324071     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.51
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2016.029       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.89E-01  3.36E-01  2.64E-01  1.13E+00  2.94E-01  9.91E-01  1.55E+00  1.00E-02  9.46E-01  4.90E-01  2.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.564
Stop Time:
Fri Oct  1 17:47:55 CDT 2021