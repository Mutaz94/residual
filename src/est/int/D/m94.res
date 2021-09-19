Sat Sep 18 07:46:43 CDT 2021
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
$DATA ../../../../data/int/D/dat94.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m94.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   55136.5739887931        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   7.1285E+02  8.4530E+02  5.9000E+01  7.4538E+02 -1.2838E+02 -4.5191E+03 -2.3934E+03 -1.0294E+02 -2.8297E+03 -9.8834E+02
            -1.0627E+05

0ITERATION NO.:    5    OBJECTIVE VALUE:  -487.512736783056        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0565E+00  1.6827E+00  8.2421E-01  1.7974E+00  1.1298E+00  5.4065E+00  3.5984E+00  9.8717E-01  2.1777E+00  1.0549E+00
             1.2928E+01
 PARAMETER:  1.5500E-01  6.2043E-01 -9.3332E-02  6.8634E-01  2.2200E-01  1.7876E+00  1.3805E+00  8.7087E-02  8.7827E-01  1.5342E-01
             2.6594E+00
 GRADIENT:  -1.8177E+01 -9.7133E-01 -4.7870E+01  1.5078E+02  3.4548E+01  1.0191E+02 -1.1686E+02  3.5787E+00 -4.4383E+00  1.9968E+01
             5.2470E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -561.098638323511        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.1371E+00  3.4938E+00  5.6639E+00  2.7909E+00  2.3697E+00  3.3194E+00  6.4542E+00  1.2582E+00  7.5997E+00  4.4992E-01
             1.2868E+01
 PARAMETER:  2.2849E-01  1.3510E+00  1.8341E+00  1.1264E+00  9.6274E-01  1.2998E+00  1.9647E+00  3.2970E-01  2.1281E+00 -6.9868E-01
             2.6547E+00
 GRADIENT:  -7.3237E+00  1.8841E+01 -3.3844E+01  5.1056E+01  8.0684E+00  6.8488E+01  5.5541E+01  1.2008E+00  3.9422E+01  3.0515E+00
             5.1097E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -681.161120998147        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.1934E+00  1.1524E+00  6.0206E+00  1.4517E+00  1.7164E+00  2.4325E+00  7.1436E+00  9.1564E-01  8.5369E-01  5.9380E-01
             1.3669E+01
 PARAMETER:  2.7678E-01  2.4184E-01  1.8952E+00  4.7274E-01  6.4021E-01  9.8890E-01  2.0662E+00  1.1869E-02 -5.8186E-02 -4.2121E-01
             2.7151E+00
 GRADIENT:   1.7770E+00  9.7583E+00  2.6679E+00  2.4519E+01 -3.6061E+01  4.6947E+00  5.8698E+00  1.0475E+00 -1.6450E+01  6.3944E+00
             9.1412E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -707.515622708796        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      297
 NPARAMETR:  1.0930E+00  5.6674E-01  1.9476E+01  1.8354E+00  2.2048E+00  2.2833E+00  7.8457E+00  9.3665E-01  1.5540E+00  8.0364E-02
             1.3068E+01
 PARAMETER:  1.8894E-01 -4.6785E-01  3.0692E+00  7.0727E-01  8.9063E-01  9.2560E-01  2.1600E+00  3.4549E-02  5.4083E-01 -2.4212E+00
             2.6702E+00
 GRADIENT:  -3.0502E+00  3.0419E+00 -4.3976E-01  1.8608E+01 -5.6235E+00  8.5887E+00 -3.1156E+00  1.5197E-01 -2.3580E+00  1.1538E-01
             4.8088E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -711.081370303205        NO. OF FUNC. EVALS.: 120
 CUMULATIVE NO. OF FUNC. EVALS.:      417
 NPARAMETR:  1.0747E+00  3.8606E-01  3.0902E+01  1.8794E+00  2.3510E+00  2.2613E+00  9.0007E+00  9.0522E-01  1.5867E+00  6.2672E-02
             1.2532E+01
 PARAMETER:  1.7201E-01 -8.5177E-01  3.5308E+00  7.3094E-01  9.5483E-01  9.1596E-01  2.2973E+00  4.2638E-04  5.6167E-01 -2.6698E+00
             2.6283E+00
 GRADIENT:  -2.2258E+00  1.3932E+00 -4.2800E-01  6.5266E+00  4.2589E+00  1.6691E+00 -7.6690E+00  5.8389E-02 -3.5204E+00  7.0856E-02
            -1.0791E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -712.025278026868        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      598
 NPARAMETR:  1.0817E+00  2.5261E-01  4.3121E+01  1.9694E+00  2.3486E+00  2.2450E+00  1.0299E+01  8.4352E-01  1.6878E+00  2.4129E-02
             1.2565E+01
 PARAMETER:  1.7852E-01 -1.2759E+00  3.8640E+00  7.7775E-01  9.5384E-01  9.0869E-01  2.4320E+00 -7.0172E-02  6.2340E-01 -3.6244E+00
             2.6309E+00
 GRADIENT:  -5.0459E-01  1.0195E+00  2.6387E-02 -1.7185E+00 -1.4313E+00 -1.0064E+00  2.7760E+00  2.6989E-02  9.4292E-02  1.0227E-02
            -2.6948E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -712.032077334351        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      761
 NPARAMETR:  1.0816E+00  2.5277E-01  4.3365E+01  1.9795E+00  2.3498E+00  2.2439E+00  1.0310E+01  8.4206E-01  1.6872E+00  1.3246E-02
             1.2582E+01
 PARAMETER:  1.7843E-01 -1.2753E+00  3.8697E+00  7.8283E-01  9.5433E-01  9.0823E-01  2.4332E+00 -7.1909E-02  6.2309E-01 -4.2240E+00
             2.6323E+00
 GRADIENT:  -9.0187E-01  1.1564E+00  1.3587E-02  4.0011E-01 -1.8081E+00 -1.1890E+00  2.6014E+00  2.6919E-02 -3.4078E-01  3.0681E-03
            -1.6528E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -712.038094529278        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      939
 NPARAMETR:  1.0816E+00  2.5272E-01  4.3241E+01  1.9797E+00  2.3507E+00  2.2442E+00  1.0291E+01  7.9578E-01  1.6872E+00  1.0000E-02
             1.2613E+01
 PARAMETER:  1.7843E-01 -1.2755E+00  3.8668E+00  7.8292E-01  9.5471E-01  9.0833E-01  2.4312E+00 -1.2843E-01  6.2310E-01 -1.4289E+01
             2.6347E+00
 GRADIENT:  -1.3830E+00  1.0594E+00 -2.7129E-04 -6.8371E-02 -1.5340E+00 -1.1403E+00  2.2999E+00  2.4330E-02 -1.1092E-01  0.0000E+00
             2.3887E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -712.047317429248        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1123
 NPARAMETR:  1.0816E+00  2.5263E-01  4.2656E+01  1.9738E+00  2.3526E+00  2.2448E+00  1.0248E+01  6.9600E-01  1.6871E+00  1.0000E-02
             1.2619E+01
 PARAMETER:  1.7843E-01 -1.2760E+00  3.8537E+00  7.8005E-01  9.5564E-01  9.0859E-01  2.4268E+00 -2.6214E-01  6.2311E-01 -2.9889E+01
             2.6349E+00
 GRADIENT:  -2.5653E+03 -7.1565E+02  2.3719E+02  1.1708E+03  9.5756E+02 -1.5564E+01 -3.7508E+02  3.0492E-02  7.3385E+02  0.0000E+00
            -3.3985E+02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1123
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.9786E-02  6.8458E-02 -1.0797E-04 -9.6436E-02  8.5048E-06
 SE:             2.8386E-02  2.0192E-02  2.9933E-04  1.7576E-02  7.8748E-05
 N:                     100         100         100         100         100

 P VAL.:         4.8579E-01  6.9820E-04  7.1832E-01  4.1028E-08  9.1399E-01

 ETASHRINKSD(%)  4.9027E+00  3.2354E+01  9.8997E+01  4.1118E+01  9.9736E+01
 ETASHRINKVR(%)  9.5651E+00  5.4240E+01  9.9990E+01  6.5330E+01  9.9999E+01
 EBVSHRINKSD(%)  6.9220E+00  3.5546E+01  9.8368E+01  2.9606E+01  9.9603E+01
 EBVSHRINKVR(%)  1.3365E+01  5.8457E+01  9.9973E+01  5.0447E+01  9.9998E+01
 RELATIVEINF(%)  8.6469E+01  2.7211E+01  5.6107E-03  3.2011E+01  3.2625E-04
 EPSSHRINKSD(%)  4.6801E+00
 EPSSHRINKVR(%)  9.1412E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -712.04731742924844     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       942.04204233916232     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    35.61
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    17.84
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -712.047       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.08E+00  2.53E-01  4.27E+01  1.97E+00  2.35E+00  2.24E+00  1.02E+01  6.96E-01  1.69E+00  1.00E-02  1.26E+01
 


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
+        6.15E+06
 
 TH 2
+        5.29E+03  2.20E+06
 
 TH 3
+       -1.04E+01  7.80E-01  8.45E+00
 
 TH 4
+       -1.11E+03  6.61E+01 -1.73E-01  9.65E+04
 
 TH 5
+       -7.60E+02 -1.03E+03  1.89E+00  2.03E+02  4.54E+04
 
 TH 6
+        5.77E+05  5.01E+03 -6.86E+02 -7.33E+04 -5.01E+04  1.10E+05
 
 TH 7
+        6.86E+01  1.74E+00  1.04E-02 -1.63E+00 -1.28E+01  6.49E+01  3.70E+02
 
 TH 8
+        7.60E+00  6.90E+00 -1.46E-02 -2.65E-01 -1.49E+00 -4.45E-01  3.80E-02 -9.18E+00
 
 TH 9
+       -1.62E+03  7.45E-01 -2.46E-01 -2.80E+01  3.15E+02 -1.54E+03  2.20E-01  1.24E+00  2.07E+05
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        4.42E+01 -2.16E+04  7.26E-03 -4.87E+00 -9.02E+00  4.87E+01 -6.00E+00  7.72E-02  6.61E+03  0.00E+00  2.08E+02
 
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
 #CPUT: Total CPU Time in Seconds,       53.592
Stop Time:
Sat Sep 18 07:47:38 CDT 2021