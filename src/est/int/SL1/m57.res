Wed Sep 29 02:11:43 CDT 2021
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
$DATA ../../../../data/int/SL1/dat57.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m57.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2930.11643311464        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7387E+02  1.5875E+01  1.3309E+01  9.2414E+01  1.3010E+02  7.3521E+01 -6.8913E+01 -4.5081E+01 -3.8501E+01  4.4059E+00
            -1.8622E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3357.68346289464        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0538E+00  1.1013E+00  1.0798E+00  9.7317E-01  1.0208E+00  7.9473E-01  1.1267E+00  8.8654E-01  9.3022E-01  9.0654E-01
             1.7271E+00
 PARAMETER:  1.5236E-01  1.9647E-01  1.7674E-01  7.2807E-02  1.2058E-01 -1.2975E-01  2.1930E-01 -2.0430E-02  2.7669E-02  1.8761E-03
             6.4647E-01
 GRADIENT:   2.7216E+02  4.1256E+01  6.0427E+00  4.1745E+00 -2.0562E-01 -3.8426E+01  8.4982E+00  4.4458E+00 -8.5016E+00 -9.1263E+00
             4.0939E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3364.63260887014        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      245
 NPARAMETR:  1.0504E+00  1.3171E+00  1.2292E+00  8.6357E-01  1.2498E+00  8.5470E-01  1.0065E+00  7.8814E-01  1.0382E+00  1.1511E+00
             1.7500E+00
 PARAMETER:  1.4918E-01  3.7545E-01  3.0634E-01 -4.6684E-02  3.2297E-01 -5.7001E-02  1.0650E-01 -1.3808E-01  1.3752E-01  2.4072E-01
             6.5961E-01
 GRADIENT:   2.4552E+01 -2.4162E+01  3.4974E-01 -1.4689E-01  1.8612E+01 -2.0556E+01  1.4680E+01 -4.5355E+00  5.3607E+00  7.9545E-01
             5.2963E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3372.09184811976        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      421
 NPARAMETR:  1.0388E+00  1.5993E+00  1.6691E+00  7.4563E-01  1.5810E+00  9.2649E-01  8.4002E-01  2.0576E+00  1.1924E+00  1.3414E+00
             1.6832E+00
 PARAMETER:  1.3803E-01  5.6956E-01  6.1226E-01 -1.9353E-01  5.5807E-01  2.3651E-02 -7.4324E-02  8.2153E-01  2.7599E-01  3.9371E-01
             6.2068E-01
 GRADIENT:  -6.2345E+00  3.3353E+01 -1.8275E+01  5.2274E+01  3.6517E+01  1.0011E+01  1.2335E+01 -1.5041E+00  1.6249E+01 -2.6757E-01
            -8.8224E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3377.61185440423        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      598
 NPARAMETR:  1.0465E+00  1.6072E+00  2.1100E+00  7.1068E-01  1.6242E+00  8.9107E-01  8.4452E-01  2.6739E+00  9.6436E-01  1.3667E+00
             1.6915E+00
 PARAMETER:  1.4541E-01  5.7451E-01  8.4670E-01 -2.4153E-01  5.8500E-01 -1.5327E-02 -6.8991E-02  1.0835E+00  6.3708E-02  4.1242E-01
             6.2564E-01
 GRADIENT:   1.3997E+01  4.6956E+00 -7.1168E+00 -6.2020E+00  4.0125E+00 -4.2372E+00  2.8399E+00  2.4334E+00  2.0425E+00 -1.9987E+00
             3.6624E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3378.44862804225        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:      792             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0370E+00  1.5869E+00  2.2622E+00  7.3537E-01  1.6311E+00  9.1095E-01  8.3209E-01  2.6379E+00  9.1514E-01  1.3690E+00
             1.6975E+00
 PARAMETER:  1.3633E-01  5.6181E-01  9.1633E-01 -2.0739E-01  5.8926E-01  6.7332E-03 -8.3819E-02  1.0700E+00  1.1317E-02  4.1409E-01
             6.2916E-01
 GRADIENT:   2.0692E+02  2.8499E+02  1.6957E-01  4.3826E+01  7.8823E+01  1.7083E+01 -8.9305E-01  3.9058E-01 -6.7003E-01  7.4920E+00
             2.6874E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3378.79018011017        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      928
 NPARAMETR:  1.0410E+00  1.5506E+00  2.2585E+00  7.4893E-01  1.6290E+00  9.0061E-01  8.5756E-01  2.6327E+00  9.1299E-01  1.3679E+00
             1.6993E+00
 PARAMETER:  1.4020E-01  5.3862E-01  9.1469E-01 -1.8910E-01  5.8797E-01 -4.6840E-03 -5.3668E-02  1.0680E+00  8.9643E-03  4.1331E-01
             6.3021E-01
 GRADIENT:  -6.3029E-01  2.5443E-01 -8.5349E+00 -2.8839E+00  1.7114E+01 -8.7954E-02 -4.1033E-01 -3.2887E+00  7.4856E-01 -3.5105E-02
             2.0701E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3378.93098248256        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1104
 NPARAMETR:  1.0390E+00  1.5078E+00  2.2581E+00  7.7243E-01  1.6198E+00  9.0259E-01  8.9409E-01  2.6283E+00  8.5639E-01  1.3663E+00
             1.6982E+00
 PARAMETER:  1.3825E-01  5.1068E-01  9.1452E-01 -1.5821E-01  5.8228E-01 -2.4848E-03 -1.1953E-02  1.0664E+00 -5.5034E-02  4.1213E-01
             6.2960E-01
 GRADIENT:  -5.7827E+00 -1.0294E+01 -1.1809E+01 -4.6470E+00  2.5564E+01  7.8313E-01  1.6656E-01 -4.3360E+00  1.9608E-01  2.4465E+00
             2.2238E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3379.11278115768        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:     1244
 NPARAMETR:  1.0393E+00  1.5022E+00  2.2860E+00  7.7675E-01  1.6147E+00  8.9600E-01  8.9582E-01  2.6165E+00  8.4445E-01  1.3323E+00
             1.6978E+00
 PARAMETER:  1.3851E-01  5.0692E-01  9.2681E-01 -1.5263E-01  5.7916E-01 -9.8138E-03 -1.0014E-02  1.0618E+00 -6.9074E-02  3.8694E-01
             6.2933E-01
 GRADIENT:   2.1619E+02  2.0896E+02 -3.6049E+00  2.5387E+01  9.6792E+01  1.0839E+01  2.5037E+00 -8.5596E-01  5.6329E-01  5.4995E+00
             3.2494E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3379.48836438306        NO. OF FUNC. EVALS.: 170
 CUMULATIVE NO. OF FUNC. EVALS.:     1414
 NPARAMETR:  1.0396E+00  1.5055E+00  2.3161E+00  7.7684E-01  1.6054E+00  9.0327E-01  8.9637E-01  2.6255E+00  8.6061E-01  1.3603E+00
             1.6904E+00
 PARAMETER:  1.3883E-01  5.0899E-01  9.4017E-01 -1.5256E-01  5.7355E-01 -1.7627E-03 -8.9459E-03  1.0656E+00 -4.9120E-02  4.0781E-01
             6.2477E-01
 GRADIENT:   4.5926E+03 -1.2583E+03  6.6552E+02 -2.0938E+03  5.6928E+02 -6.3805E+03  6.3291E-01  5.9782E+02  5.7265E-01  7.8403E+02
            -1.0286E+03
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         2.3         1.1         2.3         0.8         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1414
 NO. OF SIG. DIGITS IN FINAL EST.:  0.8

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.9422E-03 -1.6637E-02 -2.5381E-02  1.8029E-02 -3.8656E-02
 SE:             2.9631E-02  2.3751E-02  1.8049E-02  2.0080E-02  2.4458E-02
 N:                     100         100         100         100         100

 P VAL.:         9.2090E-01  4.8362E-01  1.5965E-01  3.6926E-01  1.1400E-01

 ETASHRINKSD(%)  7.3374E-01  2.0432E+01  3.9534E+01  3.2728E+01  1.8062E+01
 ETASHRINKVR(%)  1.4621E+00  3.6689E+01  6.3439E+01  5.4745E+01  3.2861E+01
 EBVSHRINKSD(%)  8.1129E-01  2.0582E+01  4.8204E+01  3.6091E+01  1.2941E+01
 EBVSHRINKVR(%)  1.6160E+00  3.6928E+01  7.3172E+01  5.9156E+01  2.4207E+01
 RELATIVEINF(%)  9.8364E+01  9.8668E+00  1.2414E+01  5.9993E+00  4.1783E+01
 EPSSHRINKSD(%)  1.9168E+01
 EPSSHRINKVR(%)  3.4662E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3379.4883643830626     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1725.3990046146519     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    41.64
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    15.74
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3379.488       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.51E+00  2.32E+00  7.77E-01  1.61E+00  9.03E-01  8.97E-01  2.63E+00  8.61E-01  1.36E+00  1.69E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        7.67E+05
 
 TH 2
+       -4.67E+01  2.77E+04
 
 TH 3
+        1.41E+01 -2.63E+01  3.42E+03
 
 TH 4
+       -2.67E+02  1.12E+02  1.09E+02  1.13E+06
 
 TH 5
+        3.00E+01 -1.31E+02 -7.92E+01  4.16E+02  1.89E+04
 
 TH 6
+       -1.22E+06 -4.69E+01  1.54E+01 -2.93E+02  3.54E+01  1.96E+06
 
 TH 7
+       -4.67E+02  1.08E+02 -3.16E+01  5.57E+02 -7.32E+01  7.49E+02  1.98E+06
 
 TH 8
+        1.01E+01 -2.81E+01 -4.94E+01  1.08E+02 -4.10E+01  1.15E+01 -2.51E+01  2.14E+03
 
 TH 9
+        6.84E+02 -1.37E+02  4.47E+01 -8.20E+02  1.12E+02 -1.09E+03 -2.07E+06  4.07E+01  4.50E+01
 
 TH10
+        5.37E+01 -1.38E+02 -1.35E+01  5.67E+02 -4.95E+01  6.06E+01 -1.24E+02 -4.92E+00  1.81E+02  5.19E+04
 
 TH11
+       -3.99E+01  5.07E+01 -2.62E+02 -2.85E+02  1.06E+02 -2.85E+01  7.48E+01 -1.99E+02 -8.82E+01  2.25E+01  1.52E+04
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       57.523
Stop Time:
Wed Sep 29 02:12:43 CDT 2021
