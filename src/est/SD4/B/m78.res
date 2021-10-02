Fri Oct  1 23:35:27 CDT 2021
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
$DATA ../../../../data/SD4/B/dat78.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m78.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1664.11147697521        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5393E+02 -6.6903E+01 -3.6571E+01 -4.7751E+01  1.2368E+01  3.2457E+01 -1.5892E+01  1.5554E+01 -7.4549E+00  1.2364E+01
             1.3613E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1676.34576509821        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.7559E-01  1.1531E+00  1.2479E+00  9.9185E-01  1.1552E+00  9.9436E-01  1.1267E+00  8.9381E-01  1.0525E+00  9.4383E-01
             9.4505E-01
 PARAMETER:  7.5289E-02  2.4247E-01  3.2144E-01  9.1816E-02  2.4425E-01  9.4342E-02  2.1930E-01 -1.2261E-02  1.5116E-01  4.2186E-02
             4.3486E-02
 GRADIENT:  -2.8442E-02  1.7874E+00  1.3700E+01 -5.3012E+00 -2.3897E-01 -9.2596E-01 -3.0522E+00 -1.9390E+00  7.4102E-01 -2.3632E+01
            -2.1458E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1677.55817356101        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.7210E-01  1.1901E+00  1.2966E+00  9.7928E-01  1.2388E+00  9.9052E-01  1.1499E+00  7.5713E-01  1.1043E+00  1.1303E+00
             9.8518E-01
 PARAMETER:  7.1699E-02  2.7402E-01  3.5976E-01  7.9063E-02  3.1413E-01  9.0472E-02  2.3968E-01 -1.7822E-01  1.9918E-01  2.2249E-01
             8.5065E-02
 GRADIENT:  -8.8006E+00 -1.8184E-01  2.2048E+00  9.5915E+00  2.2895E+01 -2.4827E+00  4.2504E+00 -2.5758E+00  8.3875E+00 -4.5630E+00
            -1.1926E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1678.75896385517        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.7798E-01  1.2700E+00  1.0493E+00  9.1961E-01  1.1472E+00  1.0010E+00  1.1078E+00  5.6458E-01  1.0693E+00  1.0667E+00
             9.8000E-01
 PARAMETER:  7.7731E-02  3.3899E-01  1.4815E-01  1.6197E-02  2.3729E-01  1.0103E-01  2.0234E-01 -4.7167E-01  1.6701E-01  1.6457E-01
             7.9799E-02
 GRADIENT:   1.7280E+00  4.3863E+00  3.8602E-01  6.0309E+00 -2.8521E+00  1.4504E+00 -8.8392E-03  5.8395E-02  2.3881E-01  4.6620E-01
             2.6535E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1678.94255788508        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.7811E-01  1.5558E+00  9.0352E-01  7.3110E-01  1.2423E+00  9.9634E-01  9.5990E-01  5.2172E-01  1.2438E+00  1.1075E+00
             9.8124E-01
 PARAMETER:  7.7868E-02  5.4197E-01 -1.4563E-03 -2.1321E-01  3.1697E-01  9.6338E-02  5.9073E-02 -5.5063E-01  3.1816E-01  2.0211E-01
             8.1059E-02
 GRADIENT:  -4.9862E-01  4.5233E+00  2.9581E+00  1.4024E+00 -3.9499E+00 -7.9726E-01 -3.0733E-01 -1.5795E-02 -7.7689E-01 -3.9348E-01
            -4.5803E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1678.99109654704        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      889
 NPARAMETR:  9.7828E-01  1.5601E+00  8.7443E-01  7.2336E-01  1.2412E+00  9.9881E-01  9.6255E-01  4.1914E-01  1.2497E+00  1.1098E+00
             9.8217E-01
 PARAMETER:  7.8044E-02  5.4472E-01 -3.4188E-02 -2.2384E-01  3.1609E-01  9.8810E-02  6.1834E-02 -7.6954E-01  3.2293E-01  2.0419E-01
             8.2008E-02
 GRADIENT:  -3.8328E-01 -4.0943E+00 -5.2599E-01  3.1761E-01  2.1299E+00  1.1516E-01  2.1001E-01  4.3436E-02  1.5100E-01  6.6825E-01
             5.4555E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1679.00290762993        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1064
 NPARAMETR:  9.7865E-01  1.5942E+00  8.1740E-01  7.0137E-01  1.2324E+00  9.9889E-01  9.5425E-01  2.8423E-01  1.2653E+00  1.0935E+00
             9.8155E-01
 PARAMETER:  7.8418E-02  5.6640E-01 -1.0163E-01 -2.5472E-01  3.0897E-01  9.8890E-02  5.3166E-02 -1.1580E+00  3.3530E-01  1.8937E-01
             8.1377E-02
 GRADIENT:  -2.5197E-01 -2.9353E+00 -2.3453E+00  2.6856E+00  2.0732E+00  1.9353E-02  3.8936E-01  7.0104E-02  3.9181E-01  4.0029E-01
             7.0562E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1679.01955698920        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1246
 NPARAMETR:  9.7891E-01  1.6001E+00  8.1524E-01  6.9664E-01  1.2336E+00  9.9893E-01  9.5054E-01  2.1433E-01  1.2711E+00  1.0923E+00
             9.8126E-01
 PARAMETER:  7.8688E-02  5.7006E-01 -1.0427E-01 -2.6149E-01  3.0993E-01  9.8926E-02  4.9272E-02 -1.4402E+00  3.3992E-01  1.8830E-01
             8.1085E-02
 GRADIENT:   3.8108E-01 -2.5146E+00 -5.4288E-01  1.0584E+00  3.9921E-01  3.3113E-02  9.9108E-02  1.3596E-02  6.9697E-02 -1.6376E-01
             2.8332E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1679.02232980259        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1427
 NPARAMETR:  9.7980E-01  1.6036E+00  8.1433E-01  6.9243E-01  1.2369E+00  9.9905E-01  9.4785E-01  1.7062E-01  1.2767E+00  1.0963E+00
             9.8168E-01
 PARAMETER:  7.9598E-02  5.7223E-01 -1.0540E-01 -2.6755E-01  3.1264E-01  9.9045E-02  4.6441E-02 -1.6683E+00  3.4430E-01  1.9193E-01
             8.1509E-02
 GRADIENT:   2.4201E+00 -4.9363E+00 -1.6586E-01 -6.3870E-01  5.2082E-01  8.9926E-02 -1.7846E-02  2.3055E-03  4.6027E-02  1.5241E-03
             3.0759E-02

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1679.02297114040        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1486
 NPARAMETR:  9.7929E-01  1.6048E+00  8.1458E-01  6.9258E-01  1.2368E+00  9.9899E-01  9.4790E-01  1.6502E-01  1.2766E+00  1.0963E+00
             9.8166E-01
 PARAMETER:  7.9070E-02  5.7298E-01 -1.0508E-01 -2.6734E-01  3.1253E-01  9.8989E-02  4.6493E-02 -1.7017E+00  3.4422E-01  1.9193E-01
             8.1493E-02
 GRADIENT:  -3.7087E-01  1.9274E-01  1.3417E-01  6.8037E-02  5.4618E-02 -1.6813E-02  4.6953E-03 -1.3923E-04 -8.3458E-02 -4.4236E-02
            -4.7467E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1486
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.2772E-05 -2.2758E-02 -5.0485E-03  1.7211E-02 -3.5952E-02
 SE:             2.9796E-02  2.3043E-02  1.8729E-03  2.2303E-02  2.2645E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9912E-01  3.2333E-01  7.0273E-03  4.4031E-01  1.1237E-01

 ETASHRINKSD(%)  1.8106E-01  2.2805E+01  9.3726E+01  2.5283E+01  2.4135E+01
 ETASHRINKVR(%)  3.6180E-01  4.0409E+01  9.9606E+01  4.4174E+01  4.2446E+01
 EBVSHRINKSD(%)  4.4319E-01  2.1441E+01  9.4710E+01  2.7662E+01  2.1848E+01
 EBVSHRINKVR(%)  8.8441E-01  3.8284E+01  9.9720E+01  4.7673E+01  3.8923E+01
 RELATIVEINF(%)  9.8922E+01  3.2488E+00  3.4668E-02  2.7750E+00  1.3088E+01
 EPSSHRINKSD(%)  4.3217E+01
 EPSSHRINKVR(%)  6.7757E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1679.0229711403956     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -943.87214457665743     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.73
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1679.023       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.79E-01  1.60E+00  8.15E-01  6.93E-01  1.24E+00  9.99E-01  9.48E-01  1.65E-01  1.28E+00  1.10E+00  9.82E-01
 


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
 #CPUT: Total CPU Time in Seconds,       19.702
Stop Time:
Fri Oct  1 23:35:50 CDT 2021
