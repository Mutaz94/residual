Sat Oct  2 03:54:53 CDT 2021
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
$DATA ../../../../data/SD4/S2/dat47.csv ignore=@
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
Current Date:        2 OCT 2021
Days until program expires : 197
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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1632.82183949730        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2948E+02 -2.7062E+01  9.1266E+00 -5.7077E+01  3.6163E+01  6.0677E+01 -3.1678E+00 -5.8976E+00 -3.7113E+01 -8.9596E+00
             1.3207E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1639.19461651425        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8375E-01  9.3967E-01  9.3894E-01  1.0925E+00  9.2334E-01  8.8973E-01  1.0261E+00  1.0456E+00  1.2435E+00  1.0515E+00
             9.3109E-01
 PARAMETER:  8.3617E-02  3.7771E-02  3.7000E-02  1.8848E-01  2.0237E-02 -1.6836E-02  1.2577E-01  1.4460E-01  3.1792E-01  1.5021E-01
             2.8602E-02
 GRADIENT:  -6.4494E+00 -1.8615E+01 -1.4012E+01 -1.1903E+01  4.7732E+00 -2.4249E+01  6.8610E+00  3.1139E+00  2.7603E+01  1.0598E+01
            -8.6110E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1640.02398227954        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  9.8626E-01  7.6364E-01  9.9042E-01  1.2464E+00  8.6107E-01  9.1911E-01  9.8336E-01  1.0891E+00  1.1776E+00  9.9693E-01
             9.4298E-01
 PARAMETER:  8.6162E-02 -1.6966E-01  9.0372E-02  3.2024E-01 -4.9578E-02  1.5650E-02  8.3219E-02  1.8532E-01  2.6346E-01  9.6924E-02
             4.1287E-02
 GRADIENT:   3.8721E+00  7.2007E+00 -8.3847E+00  3.3595E+01 -1.2498E+01 -9.7875E+00  3.0015E+00  5.1263E+00  3.2174E+01  7.0400E+00
            -2.6278E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1642.97858668798        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.8502E-01  7.6677E-01  1.1287E+00  1.2341E+00  9.3029E-01  9.4058E-01  8.6551E-01  1.1885E+00  1.0568E+00  1.0309E+00
             9.5271E-01
 PARAMETER:  8.4911E-02 -1.6556E-01  2.2105E-01  3.1032E-01  2.7738E-02  3.8746E-02 -4.4437E-02  2.7265E-01  1.5520E-01  1.3045E-01
             5.1559E-02
 GRADIENT:   2.7427E+00  1.0939E+01  3.2187E+00  1.2759E+01 -8.5403E+00 -2.9240E-02 -2.4052E-01  5.2259E-01 -2.3016E+00  1.0115E+00
            -9.9352E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1643.47038908877        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.8088E-01  5.2388E-01  1.2136E+00  1.3861E+00  8.9008E-01  9.3956E-01  6.8039E-01  1.1862E+00  9.7785E-01  1.0256E+00
             9.5304E-01
 PARAMETER:  8.0693E-02 -5.4650E-01  2.9361E-01  4.2652E-01 -1.6449E-02  3.7657E-02 -2.8508E-01  2.7075E-01  7.7604E-02  1.2526E-01
             5.1900E-02
 GRADIENT:   1.1176E-01  6.5408E+00  3.9596E+00  1.3935E+01 -5.1255E+00  2.8080E-01 -8.3175E-01 -1.2096E+00 -3.8756E-01 -5.6663E-01
            -6.7501E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1643.67423791540        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      884
 NPARAMETR:  9.7864E-01  3.7227E-01  1.1991E+00  1.4756E+00  8.3983E-01  9.3666E-01  6.8991E-01  1.1677E+00  9.1294E-01  1.0005E+00
             9.5126E-01
 PARAMETER:  7.8404E-02 -8.8813E-01  2.8160E-01  4.8908E-01 -7.4552E-02  3.4560E-02 -2.7120E-01  2.5503E-01  8.9142E-03  1.0045E-01
             5.0034E-02
 GRADIENT:   1.9133E-03  4.1381E+00  1.5653E+00  1.0835E+01 -3.8952E+00 -6.2678E-01 -4.8574E-01 -7.4779E-01 -3.2540E+00  1.7934E-01
            -8.5625E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1643.82215132228        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1070
 NPARAMETR:  9.7774E-01  3.1305E-01  1.2043E+00  1.5080E+00  8.2725E-01  9.3697E-01  1.3113E+00  1.1818E+00  8.9342E-01  9.9110E-01
             9.5158E-01
 PARAMETER:  7.7488E-02 -1.0614E+00  2.8592E-01  5.1078E-01 -8.9653E-02  3.4896E-02  3.7099E-01  2.6705E-01 -1.2697E-02  9.1058E-02
             5.0373E-02
 GRADIENT:   6.4928E-01  1.4595E+00 -4.3636E-01  2.2823E-01 -2.0296E-01 -4.6824E-01  3.8235E-01  4.3624E-01  1.8763E+00  9.3282E-01
            -3.4486E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1643.86989896395        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1249             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7811E-01  2.9060E-01  1.2083E+00  1.5134E+00  8.2271E-01  9.3815E-01  1.1415E+00  1.1881E+00  8.8507E-01  9.8655E-01
             9.5267E-01
 PARAMETER:  7.7865E-02 -1.1358E+00  2.8924E-01  5.1437E-01 -9.5153E-02  3.6156E-02  2.3230E-01  2.7238E-01 -2.2089E-02  8.6461E-02
             5.1512E-02
 GRADIENT:   4.3055E+02  4.1444E+01  9.3143E+00  7.5430E+02  8.8595E+00  4.2318E+01  8.6334E-01  1.4427E+00  1.7302E+01  1.3971E+00
             9.0076E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1643.87104672163        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1433
 NPARAMETR:  9.7762E-01  2.9040E-01  1.2074E+00  1.5149E+00  8.2262E-01  9.3808E-01  1.1508E+00  1.1872E+00  8.8498E-01  9.8381E-01
             9.5251E-01
 PARAMETER:  7.7369E-02 -1.1365E+00  2.8847E-01  5.1535E-01 -9.5266E-02  3.6084E-02  2.4048E-01  2.7160E-01 -2.2191E-02  8.3679E-02
             5.1350E-02
 GRADIENT:   1.4407E+00  5.0421E-02 -3.0664E-02 -1.0774E+01  9.3741E-01  1.0316E-01  8.4666E-03 -6.6379E-03  1.8839E-01 -1.0395E-01
            -9.0053E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1643.87200597298        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1609
 NPARAMETR:  9.7769E-01  2.9095E-01  1.2065E+00  1.5143E+00  8.2208E-01  9.3811E-01  1.1476E+00  1.1871E+00  8.8484E-01  9.8369E-01
             9.5251E-01
 PARAMETER:  7.7434E-02 -1.1346E+00  2.8776E-01  5.1493E-01 -9.5912E-02  3.6110E-02  2.3765E-01  2.7149E-01 -2.2345E-02  8.3553E-02
             5.1345E-02
 GRADIENT:  -9.5693E-03 -1.2008E-01  1.6806E-01  2.4543E-01  4.7462E-01  6.4573E-04  6.6352E-04  5.8993E-02 -2.6908E-02 -1.8763E-02
             8.1992E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1609
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.7039E-04 -6.9495E-03 -3.3367E-02 -3.7337E-03 -3.7496E-02
 SE:             2.9849E-02  5.1850E-03  1.8813E-02  2.9025E-02  2.0891E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9010E-01  1.8014E-01  7.6125E-02  8.9764E-01  7.2680E-02

 ETASHRINKSD(%)  3.1836E-03  8.2630E+01  3.6974E+01  2.7638E+00  3.0012E+01
 ETASHRINKVR(%)  6.3671E-03  9.6983E+01  6.0278E+01  5.4511E+00  5.1017E+01
 EBVSHRINKSD(%)  4.2023E-01  8.3261E+01  3.9751E+01  2.9904E+00  2.7417E+01
 EBVSHRINKVR(%)  8.3869E-01  9.7198E+01  6.3701E+01  5.8915E+00  4.7317E+01
 RELATIVEINF(%)  9.5952E+01  1.4888E-01  8.1207E+00  6.6725E+00  6.0776E+00
 EPSSHRINKSD(%)  4.6334E+01
 EPSSHRINKVR(%)  7.1199E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1643.8720059729822     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -908.72117940924397     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.17
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1643.872       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.78E-01  2.91E-01  1.21E+00  1.51E+00  8.22E-01  9.38E-01  1.15E+00  1.19E+00  8.85E-01  9.84E-01  9.53E-01
 


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
 #CPUT: Total CPU Time in Seconds,       20.216
Stop Time:
Sat Oct  2 03:55:15 CDT 2021