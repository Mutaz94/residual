Fri Oct  1 01:30:06 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat80.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m80.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1011.11646356152        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1279E+02  3.3264E+02  3.1278E+02  4.2263E+01  2.4651E+02  7.9682E+01 -2.5497E+02 -2.1812E+02 -4.3615E+01 -2.0158E+02
            -4.9214E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2813.36556928606        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0232E+00  9.0716E-01  8.8408E-01  1.0962E+00  9.0624E-01  8.0804E-01  9.4757E-01  9.4752E-01  8.7755E-01  9.6569E-01
             2.4250E+00
 PARAMETER:  1.2298E-01  2.5682E-03 -2.3206E-02  1.9182E-01  1.5458E-03 -1.1314E-01  4.6145E-02  4.6093E-02 -3.0626E-02  6.5092E-02
             9.8585E-01
 GRADIENT:   1.0004E+02  4.3166E+01  6.8562E+00  6.4848E+01  2.2183E+01 -2.2375E+01  1.2358E+00  1.2447E+01 -2.7716E+00  3.9179E-01
            -1.0973E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2822.38288526207        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      203
 NPARAMETR:  1.0240E+00  6.6134E-01  7.0761E-01  1.2382E+00  6.8284E-01  8.6524E-01  7.8737E-01  4.9731E-01  8.6450E-01  8.1715E-01
             2.3935E+00
 PARAMETER:  1.2369E-01 -3.1349E-01 -2.4586E-01  3.1369E-01 -2.8150E-01 -4.4744E-02 -1.3906E-01 -5.9854E-01 -4.5607E-02 -1.0193E-01
             9.7278E-01
 GRADIENT:   1.5078E+01  2.1300E+00  3.6780E+01  1.1842E+02  3.6903E+01 -2.0007E+00 -2.1575E+01  3.4434E+00 -1.1345E+01 -3.2212E+01
            -1.3670E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2858.45903014809        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      383
 NPARAMETR:  1.0092E+00  4.3922E-01  4.3763E-01  1.2889E+00  4.4078E-01  1.0014E+00  1.2452E+00  8.7302E-02  9.4409E-01  6.2613E-01
             2.4916E+00
 PARAMETER:  1.0918E-01 -7.2275E-01 -7.2638E-01  3.5380E-01 -7.1920E-01  1.0139E-01  3.1930E-01 -2.3384E+00  4.2464E-02 -3.6819E-01
             1.0129E+00
 GRADIENT:  -2.0447E+01 -5.1250E+00  4.8451E+01  1.4173E+02  3.2115E+01  4.6427E+01 -1.2450E+01  8.8819E-02 -6.3301E+00 -2.4256E+01
             7.8400E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2910.82554384439        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      560
 NPARAMETR:  1.0139E+00  2.5993E-01  2.0530E-01  1.0819E+00  2.4842E-01  8.5672E-01  1.2823E+00  1.0164E-01  1.1642E+00  6.4406E-01
             2.2371E+00
 PARAMETER:  1.1377E-01 -1.2473E+00 -1.4833E+00  1.7870E-01 -1.2926E+00 -5.4649E-02  3.4865E-01 -2.1863E+00  2.5201E-01 -3.3996E-01
             9.0519E-01
 GRADIENT:  -5.2876E+00  6.7810E+00 -2.5085E+01  1.3159E+01  4.4958E+01 -8.3287E+00 -1.1316E+01 -8.6149E-02 -1.2422E+00 -6.7640E+00
            -5.8145E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2912.70940384007        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      735
 NPARAMETR:  1.0152E+00  2.3753E-01  1.8391E-01  1.0375E+00  2.2734E-01  8.7539E-01  1.3620E+00  1.1663E-01  1.2269E+00  6.6514E-01
             2.2246E+00
 PARAMETER:  1.1510E-01 -1.3374E+00 -1.5933E+00  1.3681E-01 -1.3813E+00 -3.3087E-02  4.0897E-01 -2.0487E+00  3.0448E-01 -3.0776E-01
             8.9957E-01
 GRADIENT:  -3.6044E-01 -1.1677E-01  3.2706E-01 -6.1264E-01 -9.2165E-01  3.0520E-04  1.2311E-01 -3.1544E-02  1.4892E-01  1.2736E-01
             6.9479E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2912.71932935634        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      917
 NPARAMETR:  1.0153E+00  2.3752E-01  1.8392E-01  1.0382E+00  2.2734E-01  8.7539E-01  1.3617E+00  1.6850E-01  1.2276E+00  6.6203E-01
             2.2223E+00
 PARAMETER:  1.1515E-01 -1.3375E+00 -1.5932E+00  1.3748E-01 -1.3813E+00 -3.3086E-02  4.0871E-01 -1.6808E+00  3.0504E-01 -3.1244E-01
             8.9856E-01
 GRADIENT:  -1.2788E-01 -1.2633E-01 -3.1871E-02 -7.9493E-02 -1.2285E+00 -7.6045E-03 -1.5249E-02  5.6774E-03 -1.3857E-02  2.2730E-02
            -4.0097E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2912.71932935634        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:      941
 NPARAMETR:  1.0153E+00  2.3752E-01  1.8392E-01  1.0382E+00  2.2734E-01  8.7539E-01  1.3617E+00  1.6850E-01  1.2276E+00  6.6203E-01
             2.2223E+00
 PARAMETER:  1.1515E-01 -1.3375E+00 -1.5932E+00  1.3748E-01 -1.3813E+00 -3.3086E-02  4.0871E-01 -1.6808E+00  3.0504E-01 -3.1244E-01
             8.9856E-01
 GRADIENT:  -3.2659E-01 -1.2584E+00 -4.8396E-01 -9.2108E-03  1.6608E+00 -1.5189E-02 -3.3960E-02  1.8958E-03 -9.3244E-02  8.5985E-03
             5.2031E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      941
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2315E-03  9.3515E-03  1.2071E-03 -4.3009E-03  5.8701E-03
 SE:             2.9470E-02  2.4613E-02  4.6536E-03  2.8025E-02  2.5645E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6667E-01  7.0399E-01  7.9533E-01  8.7803E-01  8.1895E-01

 ETASHRINKSD(%)  1.2713E+00  1.7543E+01  8.4410E+01  6.1144E+00  1.4085E+01
 ETASHRINKVR(%)  2.5265E+00  3.2008E+01  9.7569E+01  1.1855E+01  2.6186E+01
 EBVSHRINKSD(%)  1.5147E+00  1.6214E+01  8.4465E+01  4.6284E+00  1.4708E+01
 EBVSHRINKVR(%)  3.0065E+00  2.9800E+01  9.7586E+01  9.0426E+00  2.7252E+01
 RELATIVEINF(%)  9.6969E+01  1.9863E+01  2.0939E-01  4.8596E+01  6.0995E+00
 EPSSHRINKSD(%)  1.9666E+01
 EPSSHRINKVR(%)  3.5464E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2912.7193293563423     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1258.6299695879316     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.83
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2912.719       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  2.38E-01  1.84E-01  1.04E+00  2.27E-01  8.75E-01  1.36E+00  1.69E-01  1.23E+00  6.62E-01  2.22E+00
 


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
 #CPUT: Total CPU Time in Seconds,       23.897
Stop Time:
Fri Oct  1 01:30:32 CDT 2021