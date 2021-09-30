Wed Sep 29 13:33:39 CDT 2021
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
$DATA ../../../../data/spa/A3/dat45.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m45.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   1114.36063063237        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7796E+02  4.2955E+01  1.4734E+02 -1.5731E+02  7.4444E+01 -2.0544E+01 -5.5368E+01 -4.7672E+01 -1.8939E+02 -1.2517E+02
            -4.9755E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -846.694342036865        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.2273E+00  1.1243E+00  7.9887E-01  1.7288E+00  8.5516E-01  8.3676E-01  1.0718E+00  1.0073E+00  1.3905E+00  1.3064E+00
             1.2563E+01
 PARAMETER:  3.0482E-01  2.1715E-01 -1.2455E-01  6.4740E-01 -5.6463E-02 -7.8214E-02  1.6931E-01  1.0728E-01  4.2965E-01  3.6725E-01
             2.6308E+00
 GRADIENT:  -3.3716E+00  5.7470E-01 -2.7608E+01  5.3826E+01 -2.2065E+00 -2.3888E+01  7.9496E+00  6.5166E+00  3.7057E+01  1.7908E+01
             3.8569E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1069.00080798970        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  8.8523E-01  1.0809E+00  3.4563E-01  1.0447E+00  5.7685E-01  1.1564E+00  3.5557E-01  2.0649E-01  1.1318E+00  1.1050E+00
             6.2192E+00
 PARAMETER: -2.1904E-02  1.7777E-01 -9.6239E-01  1.4377E-01 -4.5017E-01  2.4529E-01 -9.3404E-01 -1.4775E+00  2.2385E-01  1.9981E-01
             1.9276E+00
 GRADIENT:  -1.9704E+02 -3.3590E+01 -7.8046E+00 -1.3748E+01 -1.9574E+00  6.6061E+00  2.9111E+00  3.8756E-01  2.5450E+01  4.7660E+01
             2.4317E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1141.53356130058        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  9.2100E-01  5.9949E-01  1.4360E-01  1.1495E+00  2.7482E-01  1.1357E+00  3.2627E-01  4.0240E-02  1.1959E+00  2.5470E-01
             4.2266E+00
 PARAMETER:  1.7703E-02 -4.1167E-01 -1.8407E+00  2.3933E-01 -1.1916E+00  2.2728E-01 -1.0200E+00 -3.1129E+00  2.7893E-01 -1.2677E+00
             1.5414E+00
 GRADIENT:  -6.6451E+01  3.4035E+01  5.9950E+00  7.4287E+01 -2.4576E+01 -1.0884E+01 -1.9297E+00 -1.4808E-02 -1.6160E+01 -3.0905E+00
            -4.6468E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1148.30655464167        NO. OF FUNC. EVALS.: 114
 CUMULATIVE NO. OF FUNC. EVALS.:      343
 NPARAMETR:  9.5447E-01  6.4351E-01  1.4192E-01  1.0520E+00  2.8934E-01  1.1920E+00  3.9561E-01  5.6034E-02  1.3109E+00  2.7376E-01
             4.2177E+00
 PARAMETER:  5.3401E-02 -3.4082E-01 -1.8525E+00  1.5066E-01 -1.1402E+00  2.7565E-01 -8.2733E-01 -2.7818E+00  3.7074E-01 -1.1955E+00
             1.5393E+00
 GRADIENT:  -1.1146E+01 -7.8454E+00 -7.9519E+00  3.0904E-01  5.4396E+00  9.2627E+00 -7.0674E-01 -2.6759E-02 -7.9897E+00 -5.3257E-01
             7.7832E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1149.09755001865        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      518
 NPARAMETR:  9.5991E-01  6.7838E-01  1.4466E-01  1.0454E+00  2.9948E-01  1.1550E+00  4.6437E-01  9.3272E-02  1.3851E+00  3.0191E-01
             4.1255E+00
 PARAMETER:  5.9086E-02 -2.8805E-01 -1.8334E+00  1.4436E-01 -1.1057E+00  2.4413E-01 -6.6708E-01 -2.2722E+00  4.2574E-01 -1.0976E+00
             1.5172E+00
 GRADIENT:  -5.3943E-01 -1.6051E+00 -1.8207E+00  1.0819E+00  2.0200E+00  1.4459E-01  3.1149E-01 -7.4895E-02 -1.7746E-01  5.7293E-01
            -4.6877E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1153.72720557503        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      697
 NPARAMETR:  9.5107E-01  6.7190E-01  1.3364E-01  1.0384E+00  2.8965E-01  1.1356E+00  4.5482E-01  1.2738E+00  1.5314E+00  2.4196E-01
             3.8470E+00
 PARAMETER:  4.9830E-02 -2.9765E-01 -1.9126E+00  1.3767E-01 -1.1391E+00  2.2712E-01 -6.8786E-01  3.4202E-01  5.2621E-01 -1.3190E+00
             1.4473E+00
 GRADIENT:  -4.0410E-01 -2.8511E+00 -3.2263E+00  6.0234E-01  4.9888E+00 -4.9721E-01 -2.3093E-01  3.5314E-02  1.0754E+00  9.2096E-01
             2.1521E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1153.92503942589        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      872
 NPARAMETR:  9.5162E-01  6.5685E-01  1.3588E-01  1.0478E+00  2.8610E-01  1.1373E+00  5.1136E-01  1.2829E+00  1.5057E+00  1.7477E-01
             3.8485E+00
 PARAMETER:  5.0415E-02 -3.2030E-01 -1.8960E+00  1.4665E-01 -1.1514E+00  2.2862E-01 -5.7068E-01  3.4909E-01  5.0929E-01 -1.6443E+00
             1.4477E+00
 GRADIENT:  -2.8041E+00 -2.1362E+00 -2.2538E-01  2.0313E+00  9.6208E-02 -3.8040E-01  5.9115E-02  1.7106E-02 -4.1412E-01  3.3547E-01
             1.5404E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1154.10966535516        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1047
 NPARAMETR:  9.5226E-01  6.9300E-01  1.3707E-01  1.0338E+00  2.9794E-01  1.1351E+00  5.4091E-01  1.3118E+00  1.4953E+00  5.9627E-02
             3.8545E+00
 PARAMETER:  5.1078E-02 -2.6673E-01 -1.8872E+00  1.3327E-01 -1.1109E+00  2.2671E-01 -5.1451E-01  3.7143E-01  5.0231E-01 -2.7196E+00
             1.4492E+00
 GRADIENT:  -4.1653E-02 -2.1393E-01 -2.6568E-01  8.5236E-02  7.1399E-01  7.5299E-02  1.5147E-01  3.2776E-02 -2.8951E-01  3.5623E-02
            -8.5700E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1154.12638767212        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1222
 NPARAMETR:  9.5242E-01  6.9164E-01  1.3713E-01  1.0345E+00  2.9754E-01  1.1350E+00  5.4122E-01  1.3107E+00  1.4966E+00  1.0000E-02
             3.8612E+00
 PARAMETER:  5.1255E-02 -2.6869E-01 -1.8868E+00  1.3389E-01 -1.1122E+00  2.2661E-01 -5.1392E-01  3.7058E-01  5.0322E-01 -4.6081E+00
             1.4510E+00
 GRADIENT:  -4.7174E-02  6.5991E-02  2.8081E-02  1.1114E-01 -1.3357E-01 -1.8614E-02  1.2651E-02 -1.6119E-02 -3.4383E-02  0.0000E+00
            -4.7347E-02

0ITERATION NO.:   46    OBJECTIVE VALUE:  -1154.12638767212        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1244
 NPARAMETR:  9.5242E-01  6.9164E-01  1.3713E-01  1.0345E+00  2.9754E-01  1.1350E+00  5.4122E-01  1.3107E+00  1.4966E+00  1.0000E-02
             3.8612E+00
 PARAMETER:  5.1255E-02 -2.6869E-01 -1.8868E+00  1.3389E-01 -1.1122E+00  2.2661E-01 -5.1392E-01  3.7058E-01  5.0322E-01 -4.6081E+00
             1.4510E+00
 GRADIENT:  -4.7174E-02  6.5991E-02  2.8081E-02  1.1114E-01 -1.3357E-01 -1.8614E-02  1.2651E-02 -1.6119E-02 -3.4383E-02  0.0000E+00
            -4.7347E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1244
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.4407E-03 -1.3320E-02  1.1028E-02 -1.4354E-02  3.2426E-04
 SE:             2.8555E-02  1.2854E-02  1.5572E-02  2.4563E-02  3.2981E-04
 N:                     100         100         100         100         100

 P VAL.:         8.7641E-01  3.0009E-01  4.7882E-01  5.5897E-01  3.2552E-01

 ETASHRINKSD(%)  4.3382E+00  5.6937E+01  4.7830E+01  1.7711E+01  9.8895E+01
 ETASHRINKVR(%)  8.4883E+00  8.1456E+01  7.2783E+01  3.2285E+01  9.9988E+01
 EBVSHRINKSD(%)  4.0496E+00  5.6832E+01  4.7134E+01  1.5975E+01  9.8910E+01
 EBVSHRINKVR(%)  7.9352E+00  8.1365E+01  7.2052E+01  2.9398E+01  9.9988E+01
 RELATIVEINF(%)  8.6623E+01  3.9304E-01  1.0433E+01  3.2578E+01  2.2351E-04
 EPSSHRINKSD(%)  2.7123E+01
 EPSSHRINKVR(%)  4.6890E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1154.1263876721193     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -418.97556110838116     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.90
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     7.64
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1154.126       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.52E-01  6.92E-01  1.37E-01  1.03E+00  2.98E-01  1.13E+00  5.41E-01  1.31E+00  1.50E+00  1.00E-02  3.86E+00
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        4.43E+01
 
 TH 2
+       -2.92E+01  1.56E+03
 
 TH 3
+       -5.80E+02  2.05E+03  9.41E+03
 
 TH 4
+        4.07E+01  6.11E+01 -4.37E+02  4.24E+01
 
 TH 5
+        1.70E+02 -5.04E+03 -7.58E+03 -1.26E+02  1.65E+04
 
 TH 6
+       -3.72E+00 -2.57E+01  1.81E+01 -5.02E+00  7.59E+01  8.26E-01
 
 TH 7
+        3.15E+00 -7.06E+01 -1.16E+02 -1.02E+00  2.32E+02  9.89E-01  3.28E+00
 
 TH 8
+        7.47E-01 -9.36E+00 -1.94E+01  1.79E-01  3.13E+01  9.97E-02  4.49E-01  6.38E-02
 
 TH 9
+       -1.08E+01 -4.69E+01  8.30E+01 -1.30E+01  1.32E+02  1.90E+00  1.64E+00  1.29E-01  4.55E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.68E-01 -1.42E+01 -1.21E+01 -1.07E+00  4.50E+01  2.85E-01  6.21E-01  7.83E-02  5.70E-01  0.00E+00  1.36E-01
 
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
+        8.80E+02
 
 TH 2
+       -5.28E+01  1.51E+03
 
 TH 3
+       -4.46E+02  2.22E+03  9.70E+03
 
 TH 4
+       -1.51E+01  1.03E+02 -4.00E+02  3.23E+02
 
 TH 5
+        2.69E+02 -4.66E+03 -8.07E+03  2.05E+01  1.55E+04
 
 TH 6
+        2.49E+00 -1.31E+01  1.90E+01 -1.10E+01  6.34E+01  1.31E+02
 
 TH 7
+       -1.86E+00 -5.97E+01 -1.25E+02 -2.54E+00  2.19E+02  1.05E+00  4.18E+01
 
 TH 8
+        1.19E-01 -1.16E+01 -2.08E+01 -3.24E-01  2.90E+01  4.28E+00  2.52E+00  1.13E+01
 
 TH 9
+        1.17E+01 -3.07E+01  8.26E+01 -8.85E+00  1.03E+02  2.31E+00  6.51E+00 -6.98E-01  3.68E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.56E+01 -1.73E+01 -1.77E+01 -3.49E+00  3.73E+01  1.55E-01  8.10E+00  4.93E+00  6.43E+00  0.00E+00  2.26E+01
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        8.76E+02
 
 TH 2
+       -2.54E+02  1.49E+03
 
 TH 3
+       -1.26E+03  2.17E+03  9.69E+03
 
 TH 4
+       -1.08E+02  3.79E+02 -1.82E+02  3.29E+02
 
 TH 5
+        8.99E+02 -4.33E+03 -8.63E+03 -6.20E+02  1.46E+04
 
 TH 6
+        8.09E+01 -7.38E+01 -2.64E+02 -2.57E+01  3.44E+02  1.04E+02
 
 TH 7
+       -4.73E+00 -1.39E+02 -1.20E+02 -3.48E+01  4.27E+02  8.81E+00  3.84E+01
 
 TH 8
+        2.02E+01 -2.45E+01 -8.55E+01 -3.51E+00  7.72E+01  5.43E+00  6.71E+00  8.47E+00
 
 TH 9
+        5.61E+01 -9.98E+01  1.32E+02 -6.00E+01  1.03E+02 -8.04E-01  1.48E+01  7.45E+00  6.72E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        8.73E+01 -9.98E+01 -9.78E+01 -5.02E+01  2.26E+02  2.43E+01  1.35E+01  7.08E+00  2.87E+01  0.00E+00  1.00E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       24.624
Stop Time:
Wed Sep 29 13:34:05 CDT 2021
