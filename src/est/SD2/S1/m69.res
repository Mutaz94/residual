Fri Oct  1 11:14:06 CDT 2021
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
$DATA ../../../../data/SD2/S1/dat69.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m69.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2091.68104406668        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3266E+02  6.3786E+01 -5.1534E+01  1.8138E+02  1.3537E+02  4.3776E+01 -4.1109E-02  7.5702E+00 -2.0658E+00 -1.4435E+01
            -4.5638E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2101.81155719915        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0315E+00  9.7246E-01  1.0148E+00  9.6955E-01  9.2072E-01  1.0228E+00  1.0051E+00  9.8040E-01  1.0263E+00  1.0035E+00
             1.0637E+00
 PARAMETER:  1.3099E-01  7.2079E-02  1.1471E-01  6.9081E-02  1.7398E-02  1.2258E-01  1.0507E-01  8.0209E-02  1.2593E-01  1.0351E-01
             1.6171E-01
 GRADIENT:   4.4654E+00  5.0296E+00  9.5513E-01 -2.8524E+00  7.9378E+00 -7.4326E-01 -7.4348E-02  6.9339E+00 -2.2875E+00  3.4113E+00
             9.2138E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2105.43271832526        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      355
 NPARAMETR:  1.0102E+00  6.6031E-01  8.7674E-01  1.1513E+00  7.4482E-01  1.0480E+00  1.2328E+00  5.1698E-01  8.8645E-01  9.5006E-01
             1.0295E+00
 PARAMETER:  1.1010E-01 -3.1505E-01 -3.1550E-02  2.4092E-01 -1.9461E-01  1.4692E-01  3.0928E-01 -5.5974E-01 -2.0534E-02  4.8775E-02
             1.2903E-01
 GRADIENT:  -3.2898E+01  3.8493E+00 -1.1093E+01  2.5368E+01  2.6428E+00  9.2427E+00 -5.7286E+00  1.7891E+00 -8.9002E+00  6.9552E+00
            -9.6682E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2107.51718051202        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      532
 NPARAMETR:  1.0295E+00  7.2517E-01  7.9079E-01  1.0866E+00  7.2707E-01  1.0237E+00  1.4113E+00  3.2561E-01  9.1411E-01  8.5460E-01
             1.0435E+00
 PARAMETER:  1.2907E-01 -2.2134E-01 -1.3472E-01  1.8304E-01 -2.1874E-01  1.2339E-01  4.4450E-01 -1.0220E+00  1.0192E-02 -5.7116E-02
             1.4260E-01
 GRADIENT:   3.2824E+00 -2.1716E+00  8.3740E-01 -5.3652E+00 -4.3150E-01  9.6521E-02  1.0060E+00  4.0929E-01  1.0232E+00  1.0639E+00
             6.9226E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2107.74908258688        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  1.0294E+00  7.7894E-01  7.4631E-01  1.0528E+00  7.2361E-01  1.0246E+00  1.3194E+00  1.5344E-01  9.3277E-01  8.3911E-01
             1.0424E+00
 PARAMETER:  1.2897E-01 -1.4982E-01 -1.9261E-01  1.5143E-01 -2.2350E-01  1.2426E-01  3.7719E-01 -1.7745E+00  3.0402E-02 -7.5418E-02
             1.4156E-01
 GRADIENT:   9.9431E-01 -9.0145E-01  1.1583E+00 -1.5989E+00 -6.9964E-01  4.9926E-02 -6.5659E-01  7.9625E-02 -1.9216E-01 -7.1982E-01
            -1.2669E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2107.80024288750        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  1.0291E+00  7.9371E-01  7.3540E-01  1.0438E+00  7.2389E-01  1.0246E+00  1.3111E+00  2.7774E-02  9.3869E-01  8.4028E-01
             1.0424E+00
 PARAMETER:  1.2867E-01 -1.3103E-01 -2.0735E-01  1.4286E-01 -2.2312E-01  1.2432E-01  3.7084E-01 -3.4837E+00  3.6733E-02 -7.4022E-02
             1.4148E-01
 GRADIENT:  -1.3224E-01 -9.1235E-02 -1.1413E-01 -3.4654E-01  2.6875E-01 -2.9283E-02  1.6639E-01  3.1652E-03  8.4610E-02  9.0956E-02
             3.8228E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2107.80364270381        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     1056
 NPARAMETR:  1.0305E+00  7.9258E-01  7.3509E-01  1.0443E+00  7.2319E-01  1.0252E+00  1.3112E+00  1.0000E-02  9.3820E-01  8.3982E-01
             1.0423E+00
 PARAMETER:  1.3007E-01 -1.3246E-01 -2.0776E-01  1.4334E-01 -2.2409E-01  1.2487E-01  3.7092E-01 -4.5675E+00  3.6206E-02 -7.4570E-02
             1.4146E-01
 GRADIENT:   2.8911E+00 -1.6363E-01  1.3348E-01 -5.2978E-01 -1.2412E-01  1.9836E-01  5.9577E-02  0.0000E+00  2.1754E-02  3.0732E-02
            -1.4706E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2107.80364270381        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1078
 NPARAMETR:  1.0305E+00  7.9258E-01  7.3509E-01  1.0443E+00  7.2319E-01  1.0252E+00  1.3112E+00  1.0000E-02  9.3820E-01  8.3982E-01
             1.0423E+00
 PARAMETER:  1.3007E-01 -1.3246E-01 -2.0776E-01  1.4334E-01 -2.2409E-01  1.2487E-01  3.7092E-01 -4.5675E+00  3.6206E-02 -7.4570E-02
             1.4146E-01
 GRADIENT:   2.8911E+00 -1.6363E-01  1.3348E-01 -5.2978E-01 -1.2412E-01  1.9836E-01  5.9577E-02  0.0000E+00  2.1754E-02  3.0732E-02
            -1.4706E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1078
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.7819E-04  1.3966E-03 -4.0682E-04 -2.6179E-03 -7.8478E-03
 SE:             2.9868E-02  1.9640E-02  1.9951E-04  2.6147E-02  2.4018E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9257E-01  9.4331E-01  4.1435E-02  9.2025E-01  7.4386E-01

 ETASHRINKSD(%)  1.0000E-10  3.4203E+01  9.9332E+01  1.2404E+01  1.9537E+01
 ETASHRINKVR(%)  1.0000E-10  5.6708E+01  9.9996E+01  2.3270E+01  3.5257E+01
 EBVSHRINKSD(%)  3.4614E-01  3.4436E+01  9.9384E+01  1.2366E+01  1.9082E+01
 EBVSHRINKVR(%)  6.9108E-01  5.7014E+01  9.9996E+01  2.3203E+01  3.4523E+01
 RELATIVEINF(%)  9.8887E+01  4.8779E+00  5.5111E-04  1.1368E+01  9.8296E+00
 EPSSHRINKSD(%)  3.3723E+01
 EPSSHRINKVR(%)  5.6073E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2107.8036427038051     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1188.8651094991324     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.96
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2107.804       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  7.93E-01  7.35E-01  1.04E+00  7.23E-01  1.03E+00  1.31E+00  1.00E-02  9.38E-01  8.40E-01  1.04E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.004
Stop Time:
Fri Oct  1 11:14:24 CDT 2021
