Sat Sep 18 07:01:11 CDT 2021
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
$DATA ../../../../data/int/D/dat45.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   25562.2061736755        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1256E+02  3.9809E+02 -7.9350E+01  3.3742E+02  1.1399E+02 -2.0916E+03 -1.1470E+03 -7.7878E+01 -1.7969E+03 -4.2147E+02
            -5.2858E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -831.146489467690        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1628E+00  1.7181E+00  1.0244E+00  1.4622E+00  9.8047E-01  4.3872E+00  4.7758E+00  9.8788E-01  2.9095E+00  1.4141E+00
             1.2241E+01
 PARAMETER:  2.5087E-01  6.4120E-01  1.2406E-01  4.7994E-01  8.0280E-02  1.5787E+00  1.6636E+00  8.7805E-02  1.1680E+00  4.4650E-01
             2.6048E+00
 GRADIENT:  -7.9796E+00  1.5938E+01 -3.3910E+01  5.0923E+01 -3.5500E+01  1.3422E+02  6.8222E+01  3.5683E+00  7.3294E+01  3.2168E+01
             5.2504E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -900.385541071137        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  1.0173E+00  1.0887E+00  2.8592E+01  2.3243E+00  1.8874E+00  4.1416E+00  1.0580E+01  8.7155E-01  2.4285E+00  1.4651E+00
             1.1718E+01
 PARAMETER:  1.1716E-01  1.8498E-01  3.4531E+00  9.4343E-01  7.3519E-01  1.5211E+00  2.4589E+00 -3.7483E-02  9.8728E-01  4.8192E-01
             2.5611E+00
 GRADIENT:  -2.4150E+01  2.4151E+01  4.4090E-01  3.3857E+01 -2.8059E+01  1.2045E+02  4.7059E+01  4.3935E-02  3.2158E+01  3.5915E+01
             5.1776E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1110.60209622135        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0550E+00  2.3842E-01  8.3297E+01  1.6683E+00  2.1533E+00  2.5785E+00  6.2205E+00  2.2472E+00  1.8642E+00  1.7429E-01
             8.0749E+00
 PARAMETER:  1.5356E-01 -1.3337E+00  4.5224E+00  6.1178E-01  8.6699E-01  1.0472E+00  1.9278E+00  9.0969E-01  7.2285E-01 -1.6470E+00
             2.1888E+00
 GRADIENT:  -7.9014E+00 -2.1774E+01 -3.7001E-02  1.7267E+01  5.8181E+00  3.7534E+00 -4.4852E+01  2.0863E-02  1.6897E+01  2.0278E-01
             9.3058E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1124.56675803554        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      303
 NPARAMETR:  1.1415E+00  7.2553E-01  1.5722E+01  1.3053E+00  1.9102E+00  2.7394E+00  5.4071E+00  4.6611E+00  1.8672E+00  1.8458E-01
             7.7464E+00
 PARAMETER:  2.3238E-01 -2.2086E-01  2.8551E+00  3.6641E-01  7.4723E-01  1.1077E+00  1.7877E+00  1.6392E+00  7.2442E-01 -1.5897E+00
             2.1472E+00
 GRADIENT:   1.9860E+01 -5.0352E+00 -4.9386E+00  4.1068E+00 -4.4741E+00  2.3439E+01  1.3999E+01  1.1020E+01  1.2677E+01  6.4163E-01
             2.7412E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1129.36211047565        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      376
 NPARAMETR:  1.0661E+00  1.3227E+00  5.5394E+00  9.0055E-01  1.8012E+00  2.5428E+00  3.7652E+00  2.3952E+00  1.5624E+00  1.1703E-01
             7.6219E+00
 PARAMETER:  1.6401E-01  3.7964E-01  1.8119E+00 -4.7444E-03  6.8843E-01  1.0333E+00  1.4258E+00  9.7345E-01  5.4625E-01 -2.0453E+00
             2.1310E+00
 GRADIENT:   4.7151E-01 -3.7900E+00  3.0366E+00  6.6343E+00 -1.0106E+01 -1.3728E+00 -1.6111E+01 -2.4794E+00  5.5146E+00  2.7555E-01
            -4.9420E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1131.50406260103        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      449
 NPARAMETR:  1.0538E+00  1.5622E+00  2.7248E+00  7.0561E-01  1.7473E+00  2.5318E+00  3.5939E+00  1.6465E+00  1.0508E+00  6.4825E-02
             7.6414E+00
 PARAMETER:  1.5238E-01  5.4609E-01  1.1024E+00 -2.4869E-01  6.5804E-01  1.0289E+00  1.3793E+00  5.9865E-01  1.4958E-01 -2.6361E+00
             2.1336E+00
 GRADIENT:  -3.5961E+00 -4.7013E+00 -1.4976E+00 -2.7874E+00  4.1558E+00 -2.3947E+00 -1.1938E+00  3.3784E-01  1.8799E+00  8.6985E-02
            -8.7591E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1132.32607517235        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      566
 NPARAMETR:  1.0724E+00  1.5058E+00  3.2666E+00  7.6929E-01  1.7601E+00  2.5952E+00  3.8758E+00  1.6563E+00  9.2152E-01  6.1185E-02
             7.6873E+00
 PARAMETER:  1.6990E-01  5.0933E-01  1.2838E+00 -1.6228E-01  6.6540E-01  1.0537E+00  1.4548E+00  6.0459E-01  1.8273E-02 -2.6939E+00
             2.1396E+00
 GRADIENT:   2.3088E-01  4.3531E-01 -1.9379E-01  1.4342E+00  4.6500E-01 -1.4829E+00 -1.8015E+00 -1.1465E-01 -1.4918E-01  7.1032E-02
            -9.4475E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1132.36010406686        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      742
 NPARAMETR:  1.0705E+00  1.4616E+00  3.6675E+00  7.9313E-01  1.7757E+00  2.6055E+00  3.9619E+00  1.9290E+00  9.7102E-01  5.9360E-02
             7.6812E+00
 PARAMETER:  1.6815E-01  4.7951E-01  1.3995E+00 -1.3176E-01  6.7420E-01  1.0576E+00  1.4767E+00  7.5700E-01  7.0596E-02 -2.7241E+00
             2.1388E+00
 GRADIENT:  -2.5718E-01  6.8902E-02 -2.4239E-01  7.1919E-01  2.3915E-01 -2.3768E-01 -3.3326E-01  5.4372E-02  3.0852E-02  6.9029E-02
            -7.5682E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1132.38020961865        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      921
 NPARAMETR:  1.0717E+00  1.4566E+00  3.8935E+00  7.9427E-01  1.7907E+00  2.6061E+00  3.9697E+00  2.0128E+00  9.7245E-01  3.5488E-02
             7.6833E+00
 PARAMETER:  1.6929E-01  4.7609E-01  1.4593E+00 -1.3034E-01  6.8260E-01  1.0578E+00  1.4787E+00  7.9952E-01  7.2062E-02 -3.2386E+00
             2.1390E+00
 GRADIENT:   1.1353E-01 -1.6611E-01  4.9196E-01 -6.4086E-01 -7.8281E-01 -2.2755E-01 -4.2737E-01 -1.9158E-01 -4.6248E-02  2.4395E-02
            -6.1260E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1132.39624043143        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1096
 NPARAMETR:  1.0714E+00  1.4600E+00  3.7684E+00  7.9345E-01  1.7832E+00  2.6075E+00  3.9699E+00  1.9788E+00  9.7092E-01  1.0000E-02
             7.6835E+00
 PARAMETER:  1.6896E-01  4.7846E-01  1.4267E+00 -1.3137E-01  6.7840E-01  1.0584E+00  1.4787E+00  7.8250E-01  7.0491E-02 -4.5641E+00
             2.1391E+00
 GRADIENT:  -7.7417E-03  4.4698E-03 -4.9393E-03  1.7271E-02  2.0473E-02  6.0577E-03 -6.6789E-03 -1.6276E-03  3.5445E-03  0.0000E+00
            -4.1842E-03

0ITERATION NO.:   51    OBJECTIVE VALUE:  -1132.39624043143        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1124
 NPARAMETR:  1.0714E+00  1.4599E+00  3.7695E+00  7.9334E-01  1.7831E+00  2.6089E+00  3.9691E+00  1.9796E+00  9.7085E-01  1.0000E-02
             7.6835E+00
 PARAMETER:  1.6896E-01  4.7846E-01  1.4267E+00 -1.3137E-01  6.7840E-01  1.0584E+00  1.4787E+00  7.8250E-01  7.0491E-02 -4.5641E+00
             2.1391E+00
 GRADIENT:  -6.7481E-03  5.2752E-03 -5.0544E-03  1.7071E-02  2.0761E-02 -8.1029E-02  2.2530E-02 -1.6331E-03  3.8424E-03  0.0000E+00
            -1.8204E-03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1124
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.5023E-03  1.1103E-02 -1.3296E-02 -4.0272E-02 -2.5514E-05
 SE:             2.9263E-02  2.6925E-02  7.1365E-03  1.0917E-02  1.5136E-04
 N:                     100         100         100         100         100

 P VAL.:         7.9766E-01  6.8007E-01  6.2438E-02  2.2539E-04  8.6614E-01

 ETASHRINKSD(%)  1.9647E+00  9.7977E+00  7.6092E+01  6.3425E+01  9.9493E+01
 ETASHRINKVR(%)  3.8908E+00  1.8635E+01  9.4284E+01  8.6623E+01  9.9997E+01
 EBVSHRINKSD(%)  1.6887E+00  6.2480E+00  7.8039E+01  6.8510E+01  9.9412E+01
 EBVSHRINKVR(%)  3.3488E+00  1.2106E+01  9.5177E+01  9.0084E+01  9.9997E+01
 RELATIVEINF(%)  9.6552E+01  3.7559E+01  1.1422E+00  3.6379E+00  9.4805E-04
 EPSSHRINKSD(%)  7.9974E+00
 EPSSHRINKVR(%)  1.5355E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1132.3962404314273     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       521.69311933698350     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    30.63
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    16.19
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1132.396       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.07E+00  1.46E+00  3.77E+00  7.93E-01  1.78E+00  2.61E+00  3.97E+00  1.98E+00  9.71E-01  1.00E-02  7.68E+00
 


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
+        7.85E+01
 
 TH 2
+        3.58E+00  5.82E+00
 
 TH 3
+        2.46E+00 -1.51E+00  5.47E-01
 
 TH 4
+       -2.77E+01  3.77E+01 -1.21E+01  2.79E+02
 
 TH 5
+       -2.43E+01  1.18E+01 -4.52E+00  9.82E+01  3.76E+01
 
 TH 6
+        8.28E+00  1.10E-01  3.29E-01 -4.71E+00 -3.11E+00  8.96E-01
 
 TH 7
+        2.91E+00 -2.67E+00  8.96E-01 -2.04E+01 -7.33E+00  4.39E-01  1.50E+00
 
 TH 8
+       -6.87E-01  4.52E-01 -1.62E-01  3.59E+00  1.34E+00 -9.27E-02 -2.66E-01  4.81E-02
 
 TH 9
+        1.58E+00 -1.82E+00  5.85E-01 -1.35E+01 -4.76E+00  2.63E-01  9.95E-01 -1.73E-01  6.66E-01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.10E+00 -1.59E+00  3.59E-01 -9.81E+00 -2.76E+00  1.55E-02  7.17E-01 -1.05E-01  5.31E-01  0.00E+00  8.03E-01
 
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
+        1.37E+02
 
 TH 2
+       -7.69E-01  2.95E+01
 
 TH 3
+        2.93E-01  9.32E-01  1.47E+00
 
 TH 4
+       -6.38E+00  3.93E+01 -7.36E+00  2.37E+02
 
 TH 5
+       -1.95E+00 -1.13E+01 -9.61E+00  4.83E+01  1.08E+02
 
 TH 6
+        8.34E-01 -5.97E-02  3.52E-02  3.37E-01 -1.53E+00  2.63E+01
 
 TH 7
+        2.59E-01  2.65E+00 -4.84E-01 -1.91E+01  2.44E+00 -2.87E-01  8.48E+00
 
 TH 8
+       -2.38E-01 -3.79E-01 -8.48E-01  2.55E+00  1.70E+00  1.09E-02  2.86E-01  1.18E+00
 
 TH 9
+        1.55E+00 -2.11E+00 -2.72E-01 -1.26E+01  4.78E+00 -4.42E-01  2.66E+00 -2.93E-01  2.14E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -5.08E+00 -2.84E+00 -6.58E-02 -1.22E+01 -3.57E-01  9.45E-01  1.10E+00  2.67E-01  2.59E+00  0.00E+00  1.78E+01
 
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
+        1.38E+02
 
 TH 2
+        5.17E+01  2.92E+01
 
 TH 3
+        4.04E-01  7.59E-01  1.02E+00
 
 TH 4
+        5.58E+01  4.20E+01 -5.05E+00  2.27E+02
 
 TH 5
+       -7.61E+00 -8.83E+00 -7.79E+00  3.01E+01  8.68E+01
 
 TH 6
+        4.63E+01  1.53E+01 -2.19E-01 -6.05E+00  1.23E+00  4.87E+01
 
 TH 7
+        1.13E+01  1.96E+00 -4.64E-01 -2.13E+01  5.00E+00  1.43E+01  8.35E+00
 
 TH 8
+        3.84E-01 -1.62E-01 -5.27E-01  3.60E+00  1.89E+00 -1.66E-01  7.55E-02  6.08E-01
 
 TH 9
+        8.33E-01 -2.48E+00 -4.99E-01 -1.95E+01  4.21E+00  1.16E-01  2.99E+00  3.54E-01  7.06E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -8.02E+01 -4.47E+01 -1.44E+00 -1.62E+02  3.19E+01  1.96E+01  2.11E+01 -1.83E+00  6.50E+00  0.00E+00  7.48E+02
 
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
 #CPUT: Total CPU Time in Seconds,       46.958
Stop Time:
Sat Sep 18 07:02:00 CDT 2021