Fri Oct  1 00:16:10 CDT 2021
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
$DATA ../../../../data/SD1/A1/dat86.csv ignore=@
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
 (2E4.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m86.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3409.69431733076        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8417E+02  5.6721E+01  1.2638E+02  9.9024E+01  1.5679E+02  4.9834E+01 -1.0241E+02 -8.2306E+01  1.1885E+01 -4.1466E+01
            -7.5953E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3541.88144032448        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0013E+00  8.4736E-01  7.9885E-01  1.0605E+00  7.9002E-01  9.9855E-01  1.2491E+00  1.0402E+00  9.8073E-01  1.0128E+00
             1.3069E+00
 PARAMETER:  1.0125E-01 -6.5629E-02 -1.2458E-01  1.5871E-01 -1.3570E-01  9.8546E-02  3.2244E-01  1.3937E-01  8.0544E-02  1.1270E-01
             3.6764E-01
 GRADIENT:   1.9739E+02  1.5529E+01  4.3327E+01  7.5464E+01  3.5890E+01  3.0668E+01 -1.2472E+01  3.9192E+00  8.5770E+00  6.7644E+00
             1.2282E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3544.19298012916        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      269
 NPARAMETR:  1.0062E+00  8.6702E-01  8.0275E-01  1.0515E+00  8.1538E-01  9.6672E-01  1.3826E+00  9.3333E-01  9.7678E-01  9.4958E-01
             1.3223E+00
 PARAMETER:  1.0617E-01 -4.2697E-02 -1.1971E-01  1.5026E-01 -1.0410E-01  6.6153E-02  4.2396E-01  3.1008E-02  7.6507E-02  4.8264E-02
             3.7938E-01
 GRADIENT:  -5.9706E+01 -1.5186E+01  2.8068E+01 -2.6999E+01  1.0941E+01 -8.8041E+00 -1.0542E+01  8.8522E-01  1.1038E+00 -1.0279E+01
             4.2307E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3553.26868160021        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      448
 NPARAMETR:  1.0305E+00  6.7845E-01  6.0088E-01  1.1478E+00  6.1879E-01  9.8087E-01  1.5076E+00  3.1092E-01  9.6758E-01  7.8894E-01
             1.3605E+00
 PARAMETER:  1.3007E-01 -2.8795E-01 -4.0937E-01  2.3787E-01 -3.7999E-01  8.0686E-02  5.1051E-01 -1.0682E+00  6.7046E-02 -1.3707E-01
             4.0789E-01
 GRADIENT:  -2.4820E+00 -4.2687E+00 -3.8009E+00  1.1948E+01  3.4743E+00 -9.1280E-01  1.7918E+00  2.2273E+00  4.3558E-01  2.3315E+00
             1.6244E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3554.08532388765        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      623
 NPARAMETR:  1.0313E+00  6.7575E-01  5.9501E-01  1.1435E+00  6.1223E-01  9.8235E-01  1.4977E+00  1.0264E-01  9.6409E-01  7.8118E-01
             1.3594E+00
 PARAMETER:  1.3078E-01 -2.9194E-01 -4.1918E-01  2.3406E-01 -3.9064E-01  8.2196E-02  5.0391E-01 -2.1765E+00  6.3428E-02 -1.4695E-01
             4.0701E-01
 GRADIENT:  -5.7751E-01 -2.2652E-01  2.3962E+00 -1.2621E+00 -2.6007E+00 -2.6138E-01 -1.0040E-01  1.1843E-01 -6.8848E-02  1.9701E-01
             1.7398E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3554.14008227208        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      798
 NPARAMETR:  1.0315E+00  6.7388E-01  5.9265E-01  1.1446E+00  6.1067E-01  9.8292E-01  1.4990E+00  1.6416E-02  9.6411E-01  7.7965E-01
             1.3593E+00
 PARAMETER:  1.3099E-01 -2.9471E-01 -4.2316E-01  2.3503E-01 -3.9320E-01  8.2776E-02  5.0482E-01 -4.0095E+00  6.3449E-02 -1.4892E-01
             4.0697E-01
 GRADIENT:  -7.3162E-02 -1.0049E-01 -5.5258E-02 -1.8324E-01  2.2053E-02 -4.0862E-02 -2.7160E-03  2.7877E-03 -2.9278E-02  2.9584E-02
             1.9154E-01

0ITERATION NO.:   27    OBJECTIVE VALUE:  -3554.14085648594        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      855
 NPARAMETR:  1.0315E+00  6.7385E-01  5.9259E-01  1.1447E+00  6.1058E-01  9.8302E-01  1.4988E+00  1.0000E-02  9.6421E-01  7.7936E-01
             1.3592E+00
 PARAMETER:  1.3097E-01 -2.9475E-01 -4.2326E-01  2.3511E-01 -3.9334E-01  8.2874E-02  5.0469E-01 -4.6329E+00  6.3550E-02 -1.4929E-01
             4.0690E-01
 GRADIENT:  -1.1470E-01 -2.6340E-02  4.2267E-02 -5.6783E-02 -8.8415E-02 -3.8450E-03 -4.1058E-02  0.0000E+00  6.6761E-03 -4.1426E-02
            -1.1085E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      855
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1801E-03 -9.8935E-03 -2.1826E-04  3.4244E-03 -1.4463E-02
 SE:             2.9800E-02  2.5502E-02  3.0542E-04  2.8632E-02  2.4344E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6841E-01  6.9806E-01  4.7484E-01  9.0480E-01  5.5242E-01

 ETASHRINKSD(%)  1.6584E-01  1.4564E+01  9.8977E+01  4.0807E+00  1.8445E+01
 ETASHRINKVR(%)  3.3141E-01  2.7008E+01  9.9990E+01  7.9950E+00  3.3488E+01
 EBVSHRINKSD(%)  4.7849E-01  1.2961E+01  9.8974E+01  4.3119E+00  1.9901E+01
 EBVSHRINKVR(%)  9.5469E-01  2.4243E+01  9.9989E+01  8.4379E+00  3.5842E+01
 RELATIVEINF(%)  9.9038E+01  3.3581E+01  2.4858E-03  7.8920E+01  1.2548E+01
 EPSSHRINKSD(%)  2.0059E+01
 EPSSHRINKVR(%)  3.6094E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3554.1408564859353     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1900.0514967175245     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.74
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3554.141       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  6.74E-01  5.93E-01  1.14E+00  6.11E-01  9.83E-01  1.50E+00  1.00E-02  9.64E-01  7.79E-01  1.36E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.802
Stop Time:
Fri Oct  1 00:16:33 CDT 2021