Fri Oct  1 06:18:28 CDT 2021
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
$DATA ../../../../data/SD1/D/dat26.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m26.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   16752.3098831405        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.3765E+02  2.7713E+02 -4.0773E+01 -1.3851E+01  2.2377E+02 -1.0014E+03 -5.1664E+02 -2.9526E+02 -1.0024E+03 -3.7368E+02
            -3.7803E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1107.66530684166        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.5592E+00  1.4692E+00  1.0455E+00  2.0386E+00  8.4667E-01  3.2669E+00  2.6441E+00  9.8834E-01  2.7532E+00  1.5712E+00
             1.3259E+01
 PARAMETER:  5.4417E-01  4.8471E-01  1.4451E-01  8.1224E-01 -6.6450E-02  1.2838E+00  1.0723E+00  8.8267E-02  1.1128E+00  5.5184E-01
             2.6847E+00
 GRADIENT:   2.7131E+01  4.7828E+00 -2.2172E+01  7.2506E+01 -2.2700E+01  1.3064E+02 -1.4840E+01  4.8539E+00  5.9187E+01  3.4009E+01
             7.4557E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1217.84667499484        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.6462E+00  9.3237E-01  5.8280E+01  3.4409E+00  3.1090E+00  2.8703E+00  9.9522E+00  5.7598E-01  2.9625E+00  1.9429E+00
             1.2147E+01
 PARAMETER:  5.9846E-01  2.9978E-02  4.1653E+00  1.3357E+00  1.2343E+00  1.1544E+00  2.3978E+00 -4.5169E-01  1.1860E+00  7.6421E-01
             2.5971E+00
 GRADIENT:   5.9041E+01  2.1201E+01 -4.4674E+00  1.0854E+02  3.5951E+01  9.6363E+01  6.5684E+01  1.1874E-02  6.6178E+01  4.5968E+01
             7.0112E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1594.47510216263        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.0025E+00  5.1149E-01  1.6564E+01  1.4578E+00  2.1221E+00  2.0826E+00  4.1640E+00  5.8865E-01  1.6268E+00  3.4979E-01
             6.8630E+00
 PARAMETER:  1.0247E-01 -5.7042E-01  2.9072E+00  4.7695E-01  8.5241E-01  8.3362E-01  1.5265E+00 -4.2993E-01  5.8659E-01 -9.5043E-01
             2.0261E+00
 GRADIENT:  -6.9857E+01 -3.4732E+01 -1.6483E+00 -4.2194E+01  1.4743E+01  5.0126E+01  2.1588E+01 -3.9858E-02  3.2452E+00 -7.0333E-01
             2.4619E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1604.57545805796        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:      327
 NPARAMETR:  1.0672E+00  6.6451E-01  1.1739E+01  1.3969E+00  2.0960E+00  1.7885E+00  3.5951E+00  7.6592E-01  1.7940E+00  4.0037E-01
             6.2335E+00
 PARAMETER:  1.6499E-01 -3.0870E-01  2.5629E+00  4.3426E-01  8.4002E-01  6.8136E-01  1.3796E+00 -1.6667E-01  6.8443E-01 -8.1537E-01
             1.9299E+00
 GRADIENT:  -5.7852E+01 -4.3460E+01 -9.0737E+00 -3.5952E+01  3.0945E+01 -4.4568E+01 -7.0227E+01 -3.7633E-02  5.3305E+00 -2.4674E+00
            -7.1346E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1604.58138969531        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      464
 NPARAMETR:  1.0671E+00  6.6451E-01  1.1738E+01  1.3969E+00  2.0960E+00  1.7885E+00  3.5951E+00  9.3364E-01  1.7940E+00  4.0040E-01
             6.2337E+00
 PARAMETER:  1.6499E-01 -3.0871E-01  2.5629E+00  4.3427E-01  8.4004E-01  6.8135E-01  1.3796E+00  3.1333E-02  6.8442E-01 -8.1529E-01
             1.9300E+00
 GRADIENT:  -5.7892E+01 -4.3591E+01 -9.1688E+00 -3.5815E+01  3.1251E+01 -4.4583E+01 -7.0463E+01 -4.4036E-02  5.5196E+00 -2.4102E+00
            -2.2569E-01

0ITERATION NO.:   26    OBJECTIVE VALUE:  -1604.58138969531        NO. OF FUNC. EVALS.:  30
 CUMULATIVE NO. OF FUNC. EVALS.:      494
 NPARAMETR:  1.0671E+00  6.6451E-01  1.1738E+01  1.3969E+00  2.0960E+00  1.7885E+00  3.5951E+00  9.3364E-01  1.7940E+00  4.0040E-01
             6.2337E+00
 PARAMETER:  1.6499E-01 -3.0871E-01  2.5629E+00  4.3427E-01  8.4004E-01  6.8135E-01  1.3796E+00  3.1333E-02  6.8442E-01 -8.1529E-01
             1.9300E+00
 GRADIENT:   2.2181E+03  1.1781E+03  1.3793E+02 -4.6940E+02 -4.1305E+02  4.8085E+02  2.0232E+02  3.7705E+03  2.8061E+02 -2.3341E+02
            -1.7994E+02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      494
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.2577E-02  9.8274E-02 -6.2033E-04 -1.2091E-02 -7.7012E-03
 SE:             3.2179E-02  2.7201E-02  2.8076E-03  1.9406E-02  8.3171E-03
 N:                     100         100         100         100         100

 P VAL.:         1.0228E-01  3.0281E-04  8.2513E-01  5.3325E-01  3.5447E-01

 ETASHRINKSD(%)  1.0000E-10  8.8749E+00  9.0594E+01  3.4988E+01  7.2137E+01
 ETASHRINKVR(%)  1.0000E-10  1.6962E+01  9.9115E+01  5.7735E+01  9.2236E+01
 EBVSHRINKSD(%)  2.7113E+00  3.2232E+01  8.9977E+01  2.7045E+01  7.4294E+01
 EBVSHRINKVR(%)  5.3490E+00  5.4074E+01  9.8995E+01  4.6775E+01  9.3392E+01
 RELATIVEINF(%)  9.4496E+01  1.2402E+01  2.1839E-01  1.5640E+01  1.5393E+00
 EPSSHRINKSD(%)  9.7099E+00
 EPSSHRINKVR(%)  1.8477E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1604.5813896953132     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       49.507970073097567     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.82
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1604.581       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.07E+00  6.65E-01  1.17E+01  1.40E+00  2.10E+00  1.79E+00  3.60E+00  9.34E-01  1.79E+00  4.00E-01  6.23E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.886
Stop Time:
Fri Oct  1 06:18:43 CDT 2021