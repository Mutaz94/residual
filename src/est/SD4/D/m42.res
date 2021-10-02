Sat Oct  2 05:41:26 CDT 2021
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
$DATA ../../../../data/SD4/D/dat42.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m42.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   13811.5606973096        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.8101E+02  3.1181E+02 -1.6399E+01  3.4097E+02  1.2583E+02 -1.2159E+03 -6.5402E+02 -5.6128E+01 -9.4814E+02 -3.6557E+02
            -2.7367E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -661.955853716623        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.3864E+00  1.0445E+00  9.7471E-01  1.2804E+00  1.1896E+00  1.5974E+00  1.1789E+00  9.8725E-01  1.0320E+00  1.0074E+00
             1.5049E+01
 PARAMETER:  4.2670E-01  1.4352E-01  7.4387E-02  3.4716E-01  2.7362E-01  5.6840E-01  2.6460E-01  8.7168E-02  1.3151E-01  1.0741E-01
             2.8113E+00
 GRADIENT:   3.3007E+01 -1.5413E+01 -2.0497E+00 -3.3187E+01 -1.0557E+00  5.6991E+01  5.3987E+00  2.9550E+00  1.5235E+01  3.6604E+00
             1.9600E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -681.972670595015        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.2897E+00  7.4279E-01  1.0586E+00  1.5669E+00  2.5000E+00  1.3829E+00  2.9326E+00  4.2740E-01  8.3236E-01  2.0913E+00
             1.3758E+01
 PARAMETER:  3.5443E-01 -1.9735E-01  1.5692E-01  5.4911E-01  1.0163E+00  4.2417E-01  1.1759E+00 -7.5004E-01 -8.3495E-02  8.3780E-01
             2.7216E+00
 GRADIENT:  -3.5006E+00  1.9768E+01 -2.5183E+00  2.6868E+01 -4.7527E+00  7.3292E+00  1.2786E+01  4.0903E-01  1.3954E+01  1.5130E+00
             1.3765E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -721.564665223478        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.0593E+00  4.0723E-01  6.4486E-01  1.2077E+00  8.5253E+00  1.2223E+00  1.4820E+00  7.7120E-02  3.0981E-01  5.0750E+00
             1.0806E+01
 PARAMETER:  1.5756E-01 -7.9838E-01 -3.3872E-01  2.8876E-01  2.2430E+00  3.0071E-01  4.9342E-01 -2.4624E+00 -1.0718E+00  1.7243E+00
             2.4801E+00
 GRADIENT:   1.9778E+01  3.0761E+00  2.3486E+01 -6.0829E+01  1.7840E+00  1.4870E-01  1.8162E+00  9.6365E-03  3.6413E+00 -7.7599E+00
             4.9978E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -744.381736525592        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      299
 NPARAMETR:  8.7184E-01  1.1760E-01  1.6288E-01  9.4898E-01  1.0532E+01  1.2220E+00  2.0747E-01  1.0000E-02  3.7068E-02  2.2786E+00
             1.0433E+01
 PARAMETER: -3.7151E-02 -2.0405E+00 -1.7148E+00  4.7632E-02  2.4544E+00  3.0045E-01 -1.4728E+00 -9.3278E+00 -3.1950E+00  9.2358E-01
             2.4449E+00
 GRADIENT:   2.6843E+01 -9.3455E+00 -3.1754E+01  1.3243E+02  8.7858E-01 -3.3846E+01  6.4491E-02  0.0000E+00  1.4187E-02  4.3381E+00
            -5.9758E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -755.553659569946        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      393
 NPARAMETR:  6.4865E-01  4.1213E-02  6.5452E-02  5.5901E-01  9.4509E+00  1.3014E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0335E+00
             1.0884E+01
 PARAMETER: -3.3286E-01 -3.0890E+00 -2.6264E+00 -4.8159E-01  2.3461E+00  3.6342E-01 -5.2058E+00 -1.6394E+01 -5.7246E+00  1.3296E-01
             2.4873E+00
 GRADIENT:  -8.7430E+00 -4.0513E+00 -5.2400E+01  9.1088E+01  1.7914E+00  4.0992E+00  0.0000E+00  0.0000E+00  0.0000E+00  4.8822E-02
            -1.0484E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -757.829294023156        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      568
 NPARAMETR:  6.5293E-01  3.8128E-02  6.7759E-02  5.4252E-01  9.2316E+00  1.2641E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0152E+00
             1.0863E+01
 PARAMETER: -3.2629E-01 -3.1668E+00 -2.5918E+00 -5.1154E-01  2.3226E+00  3.3435E-01 -5.4082E+00 -1.6410E+01 -5.8578E+00  1.1508E-01
             2.4854E+00
 GRADIENT:   2.8188E+00  8.8882E-01 -3.6458E-01 -2.5992E+00 -2.5019E-01 -1.8006E+00  0.0000E+00  0.0000E+00  0.0000E+00  3.8681E-02
            -1.7366E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -757.906522624042        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      743
 NPARAMETR:  6.4507E-01  2.9504E-02  6.6919E-02  5.3550E-01  9.1153E+00  1.2716E+00  1.0000E-02  1.0000E-02  1.0000E-02  9.2596E-01
             1.0882E+01
 PARAMETER: -3.3840E-01 -3.4232E+00 -2.6043E+00 -5.2456E-01  2.3100E+00  3.4029E-01 -5.6843E+00 -1.6842E+01 -6.2017E+00  2.3071E-02
             2.4871E+00
 GRADIENT:   9.1323E-03  5.4411E-02  7.6496E-01 -1.2410E+00  9.3601E-02 -1.9418E-01  0.0000E+00  0.0000E+00  0.0000E+00  7.2495E-03
            -5.0042E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -757.921414335141        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      923
 NPARAMETR:  6.4134E-01  2.2055E-02  6.6237E-02  5.3256E-01  8.5857E+00  1.2739E+00  1.0000E-02  1.0000E-02  1.0000E-02  8.1095E-01
             1.0888E+01
 PARAMETER: -3.4420E-01 -3.7142E+00 -2.6145E+00 -5.3006E-01  2.2501E+00  3.4205E-01 -5.9351E+00 -1.7269E+01 -6.5640E+00 -1.0955E-01
             2.4877E+00
 GRADIENT:   2.8447E-01 -2.2703E-02 -5.2098E-01  7.3521E-01  1.5503E-01  3.2766E-02  0.0000E+00  0.0000E+00  0.0000E+00  3.5740E-03
             3.0415E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -757.955812876628        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1106
 NPARAMETR:  6.3966E-01  1.2385E-02  6.5778E-02  5.3344E-01  6.6225E+00  1.2780E+00  1.0000E-02  1.0000E-02  1.0000E-02  5.7953E-01
             1.0878E+01
 PARAMETER: -3.4682E-01 -4.2913E+00 -2.6215E+00 -5.2841E-01  1.9905E+00  3.4531E-01 -6.3534E+00 -1.8047E+01 -7.2371E+00 -4.4554E-01
             2.4867E+00
 GRADIENT:   6.5041E-03 -2.7149E-02 -5.8660E-01  8.4670E-01  2.8072E-02  3.6816E-02  0.0000E+00  0.0000E+00  0.0000E+00  6.1492E-02
            -4.4881E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -758.016660034807        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:     1202
 NPARAMETR:  6.3888E-01  2.1427E-02  6.5440E-02  5.3256E-01  6.3496E+00  1.2773E+00  1.0000E-02  1.0000E-02  1.0000E-02  5.7325E-02
             1.0867E+01
 PARAMETER: -3.4803E-01 -3.7431E+00 -2.6266E+00 -5.3007E-01  1.9484E+00  3.4472E-01 -6.3534E+00 -1.8047E+01 -7.2371E+00 -2.7590E+00
             2.4857E+00
 GRADIENT:   1.5277E+01  1.6614E-01  2.5214E+01  1.1506E+01  2.2287E-02  2.9218E+00  0.0000E+00  0.0000E+00  0.0000E+00  2.4720E-03
             2.0778E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -758.020223021882        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:     1303
 NPARAMETR:  6.3705E-01  1.9477E-02  6.4767E-02  5.3071E-01  6.0787E+00  1.2787E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.0855E+01
 PARAMETER: -3.5091E-01 -3.8385E+00 -2.6370E+00 -5.3355E-01  1.9048E+00  3.4581E-01 -6.3534E+00 -1.8047E+01 -7.2371E+00 -5.3396E+00
             2.4846E+00
 GRADIENT:  -6.6232E+00  1.2676E-01  2.0178E+00 -2.7595E-01 -6.5314E-01 -5.1358E-02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -1.8680E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -758.043292943337        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1482
 NPARAMETR:  6.4089E-01  1.9009E-02  6.4857E-02  5.3115E-01  6.1732E+00  1.2788E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.4608E-02
             1.0888E+01
 PARAMETER: -3.4490E-01 -3.8628E+00 -2.6356E+00 -5.3270E-01  1.9202E+00  3.4590E-01 -6.3534E+00 -1.8047E+01 -7.2371E+00 -4.1262E+00
             2.4876E+00
 GRADIENT:   1.5358E-02  1.5423E-03 -1.0293E-01 -6.9602E-02 -4.3234E-02  1.0036E-01  0.0000E+00  0.0000E+00  0.0000E+00  1.8781E-04
             5.1471E-01

0ITERATION NO.:   63    OBJECTIVE VALUE:  -758.043642193876        NO. OF FUNC. EVALS.: 102
 CUMULATIVE NO. OF FUNC. EVALS.:     1584
 NPARAMETR:  6.4096E-01  1.8997E-02  6.4836E-02  5.3114E-01  6.1820E+00  1.2784E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.0880E+01
 PARAMETER: -3.4479E-01 -3.8635E+00 -2.6359E+00 -5.3274E-01  1.9216E+00  3.4562E-01 -6.3534E+00 -1.8047E+01 -7.2371E+00 -4.8983E+00
             2.4869E+00
 GRADIENT:   4.8460E-01 -1.0889E-02 -6.9056E-01  6.5551E-01  4.6095E-02 -1.6755E-02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -3.0475E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1584
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.1728E-03  2.2082E-06  1.6284E-04 -3.1698E-04  1.1498E-06
 SE:             2.8348E-02  3.1732E-06  2.5025E-04  3.8710E-04  2.8715E-05
 N:                     100         100         100         100         100

 P VAL.:         9.1088E-01  4.8649E-01  5.1524E-01  4.1287E-01  9.6806E-01

 ETASHRINKSD(%)  5.0290E+00  9.9989E+01  9.9162E+01  9.8703E+01  9.9904E+01
 ETASHRINKVR(%)  9.8050E+00  1.0000E+02  9.9993E+01  9.9983E+01  1.0000E+02
 EBVSHRINKSD(%)  5.1790E+00  9.9987E+01  9.9142E+01  9.8709E+01  9.9885E+01
 EBVSHRINKVR(%)  1.0090E+01  1.0000E+02  9.9993E+01  9.9983E+01  1.0000E+02
 RELATIVEINF(%)  5.9641E+00  1.0214E-07  8.4170E-05  1.9280E-04  7.7001E-06
 EPSSHRINKSD(%)  6.5245E+00
 EPSSHRINKVR(%)  1.2623E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -758.04364219387560     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -22.892815630137420     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.74
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -758.044       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         6.41E-01  1.90E-02  6.48E-02  5.31E-01  6.18E+00  1.28E+00  1.00E-02  1.00E-02  1.00E-02  1.00E-02  1.09E+01
 


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
 #CPUT: Total CPU Time in Seconds,       19.776
Stop Time:
Sat Oct  2 05:41:47 CDT 2021