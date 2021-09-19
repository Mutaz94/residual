Sat Sep 18 06:34:53 CDT 2021
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
$DATA ../../../../data/int/D/dat13.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m13.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3477.91449844432        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -1.4475E+02 -1.2115E+02 -7.9935E+01 -2.6809E+02  1.2351E+02 -3.2191E+02 -1.9612E+02 -4.2585E+01 -4.4046E+02 -8.8771E+01
             1.8972E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3670.77707045588        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0841E+00  1.2214E+00  1.0397E+00  8.9458E-01  1.1436E+00  1.0743E+00  1.6442E+00  1.3087E+00  1.2438E+00  1.3400E+00
             9.8127E-01
 PARAMETER:  1.8076E-01  2.9996E-01  1.3889E-01 -1.1406E-02  2.3418E-01  1.7168E-01  5.9724E-01  3.6902E-01  3.1818E-01  3.9268E-01
             8.1094E-02
 GRADIENT:   7.4515E+01 -5.2827E+01 -7.6089E+01 -6.9819E+01 -5.0137E+01 -2.2918E+02 -1.1357E+02 -2.1713E+01 -5.2551E+01  4.5024E+01
            -4.2510E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3689.29845454640        NO. OF FUNC. EVALS.:  84
 CUMULATIVE NO. OF FUNC. EVALS.:      170
 NPARAMETR:  1.1053E+00  1.2630E+00  1.0617E+00  8.6815E-01  1.1726E+00  1.1136E+00  1.6918E+00  1.3685E+00  1.2042E+00  1.3827E+00
             9.7178E-01
 PARAMETER:  2.0011E-01  3.3347E-01  1.5986E-01 -4.1396E-02  2.5924E-01  2.0762E-01  6.2579E-01  4.1370E-01  2.8584E-01  4.2404E-01
             7.1378E-02
 GRADIENT:   1.2022E+02 -4.6849E+01 -5.2427E+01 -5.1860E+01 -6.5751E+01 -1.9392E+02 -1.1101E+02 -1.1405E+01 -3.2542E+01  3.5097E+01
            -6.6754E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3695.74938151743        NO. OF FUNC. EVALS.:  89
 CUMULATIVE NO. OF FUNC. EVALS.:      259
 NPARAMETR:  1.1042E+00  1.3072E+00  1.0998E+00  8.4731E-01  1.2116E+00  1.1150E+00  1.6709E+00  1.4247E+00  1.2464E+00  1.3462E+00
             9.7531E-01
 PARAMETER:  1.9911E-01  3.6787E-01  1.9516E-01 -6.5684E-02  2.9198E-01  2.0889E-01  6.1336E-01  4.5400E-01  3.2029E-01  3.9731E-01
             7.4999E-02
 GRADIENT:   1.1728E+02 -3.3513E+01 -4.1457E+01 -5.9100E+01 -5.7654E+01 -1.9274E+02 -1.1138E+02 -1.0595E+01 -2.5889E+01  3.0753E+01
            -5.9407E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3699.45326182665        NO. OF FUNC. EVALS.: 154
 CUMULATIVE NO. OF FUNC. EVALS.:      413
 NPARAMETR:  1.1038E+00  1.3088E+00  1.1066E+00  8.4867E-01  1.2163E+00  1.1232E+00  1.6825E+00  1.4345E+00  1.2487E+00  1.3367E+00
             9.7612E-01
 PARAMETER:  1.9872E-01  3.6909E-01  2.0133E-01 -6.4087E-02  2.9579E-01  2.1618E-01  6.2031E-01  4.6085E-01  3.2207E-01  3.9020E-01
             7.5825E-02
 GRADIENT:   2.5098E+01 -7.4933E+01 -4.1065E+01 -6.4370E+01 -6.8704E+01 -2.1387E+02 -1.4453E+02 -1.0769E+01 -2.8428E+01  2.7343E+01
            -5.7453E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3738.09412384823        NO. OF FUNC. EVALS.: 169
 CUMULATIVE NO. OF FUNC. EVALS.:      582
 NPARAMETR:  1.1036E+00  1.3088E+00  1.1068E+00  8.4862E-01  1.2161E+00  1.6294E+00  1.6825E+00  1.6439E+00  1.6682E+00  1.3370E+00
             9.8996E-01
 PARAMETER:  1.9862E-01  3.6909E-01  2.0144E-01 -6.4139E-02  2.9563E-01  5.8819E-01  6.2031E-01  5.9708E-01  6.1174E-01  3.9041E-01
             8.9911E-02
 GRADIENT:   1.1932E+01 -4.7053E+01 -6.2102E+01 -7.0832E+01 -2.9459E+01  2.5652E+00 -8.5104E+01  6.5017E-01 -1.5424E+00  4.4455E+01
             2.2794E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3756.65358506220        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      763             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0805E+00  1.3090E+00  1.4371E+00  1.0287E+00  1.2162E+00  1.6190E+00  1.6830E+00  1.6359E+00  1.6767E+00  9.1741E-01
             9.8868E-01
 PARAMETER:  1.7747E-01  3.6923E-01  4.6261E-01  1.2828E-01  2.9574E-01  5.8183E-01  6.2055E-01  5.9222E-01  6.1684E-01  1.3797E-02
             8.8619E-02
 GRADIENT:   7.2978E+01  4.6773E+01  9.6048E+00  3.1928E+01  4.3883E+00  7.5244E+01 -5.6799E+01 -1.9207E+01  1.5762E+01 -3.1320E+00
            -6.7644E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3756.80893907423        NO. OF FUNC. EVALS.: 105
 CUMULATIVE NO. OF FUNC. EVALS.:      868
 NPARAMETR:  1.0771E+00  1.3090E+00  1.4384E+00  1.0266E+00  1.2162E+00  1.6039E+00  1.6830E+00  1.6498E+00  1.6767E+00  9.1582E-01
             9.8883E-01
 PARAMETER:  1.7429E-01  3.6923E-01  4.6351E-01  1.2621E-01  2.9574E-01  5.7244E-01  6.2056E-01  6.0065E-01  6.1684E-01  1.2063E-02
             8.8768E-02
 GRADIENT:  -8.7488E+00  1.0932E+01  6.7250E+00  1.9631E+01 -1.0013E+01 -3.6462E+00 -7.7443E+01 -1.8973E+01  4.3489E+00 -3.5904E+00
            -6.4298E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3758.04344565993        NO. OF FUNC. EVALS.: 155
 CUMULATIVE NO. OF FUNC. EVALS.:     1023
 NPARAMETR:  1.0733E+00  1.3091E+00  1.4382E+00  1.0237E+00  1.2164E+00  1.6054E+00  1.7067E+00  1.6602E+00  1.6704E+00  9.1986E-01
             9.8903E-01
 PARAMETER:  1.7078E-01  3.6933E-01  4.6339E-01  1.2343E-01  2.9588E-01  5.7336E-01  6.3459E-01  6.0693E-01  6.1309E-01  1.6469E-02
             8.8973E-02
 GRADIENT:   6.4107E+01  4.5566E+01  8.8557E+00  2.9217E+01 -5.2156E-01  7.1199E+01 -5.2856E+01 -1.6304E+01  1.6888E+01 -1.5956E+00
            -6.1211E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3758.54295310555        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     1214
 NPARAMETR:  1.0736E+00  1.3091E+00  1.4382E+00  1.0237E+00  1.2170E+00  1.6052E+00  1.7171E+00  1.6631E+00  1.6670E+00  9.1961E-01
             9.8912E-01
 PARAMETER:  1.7099E-01  3.6933E-01  4.6339E-01  1.2343E-01  2.9635E-01  5.7322E-01  6.4064E-01  6.0871E-01  6.1105E-01  1.6192E-02
             8.9061E-02
 GRADIENT:  -1.1562E+01  9.4256E+00  6.0444E+00  1.9375E+01 -1.4379E+01 -3.3951E+00 -7.3497E+01 -1.6915E+01  6.4127E+00 -1.7084E+00
            -6.4435E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -3758.56341465916        NO. OF FUNC. EVALS.: 217
 CUMULATIVE NO. OF FUNC. EVALS.:     1431             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0737E+00  1.3091E+00  1.4382E+00  1.0237E+00  1.2170E+00  1.6191E+00  1.7171E+00  1.6631E+00  1.6664E+00  9.1963E-01
             9.8929E-01
 PARAMETER:  1.7115E-01  3.6933E-01  4.6339E-01  1.2343E-01  2.9635E-01  5.8189E-01  6.4063E-01  6.0871E-01  6.1065E-01  1.6216E-02
             8.9231E-02
 GRADIENT:   6.4755E+01  4.5119E+01  8.6127E+00  2.9847E+01 -1.2520E+00  7.5701E+01 -5.1438E+01 -1.5788E+01  1.7368E+01 -1.3100E+00
            -5.9177E+00

0ITERATION NO.:   54    OBJECTIVE VALUE:  -3758.56715776191        NO. OF FUNC. EVALS.: 144
 CUMULATIVE NO. OF FUNC. EVALS.:     1575
 NPARAMETR:  1.0742E+00  1.3091E+00  1.4382E+00  1.0237E+00  1.2170E+00  1.6191E+00  1.7171E+00  1.6631E+00  1.6664E+00  9.1963E-01
             9.8929E-01
 PARAMETER:  1.7156E-01  3.6933E-01  4.6339E-01  1.2343E-01  2.9635E-01  5.8190E-01  6.4062E-01  6.0871E-01  6.1066E-01  1.6217E-02
             8.9229E-02
 GRADIENT:   4.0899E+05  3.9004E+00  4.6027E+01  2.1447E-01 -2.3770E+01 -8.0098E-02 -5.4842E+04  1.1517E+05 -1.1492E+05 -3.5085E+05
             7.0167E+05

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1575
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.2226E-03 -3.7140E-02 -3.5774E-02  9.0426E-03 -5.5631E-02
 SE:             2.9966E-02  3.0947E-02  2.2124E-02  2.7928E-02  2.1981E-02
 N:                     100         100         100         100         100

 P VAL.:         7.8378E-01  2.3009E-01  1.0588E-01  7.4610E-01  1.1377E-02

 ETASHRINKSD(%)  1.0000E-10  1.0000E-10  2.5882E+01  6.4392E+00  2.6362E+01
 ETASHRINKVR(%)  1.0000E-10  1.0000E-10  4.5066E+01  1.2464E+01  4.5775E+01
 EBVSHRINKSD(%)  9.7456E-02  1.1862E+01  3.3536E+01  8.3791E+00  2.8830E+01
 EBVSHRINKVR(%)  1.9482E-01  2.2317E+01  5.5825E+01  1.6056E+01  4.9349E+01
 RELATIVEINF(%)  9.9805E+01  5.7320E+01  3.5086E+01  6.8695E+01  3.0108E+01
 EPSSHRINKSD(%)  2.2507E+01
 EPSSHRINKVR(%)  3.9949E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3758.5671577619091     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2104.4777979934984     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    51.77
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    15.49
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3758.567       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.07E+00  1.31E+00  1.44E+00  1.02E+00  1.22E+00  1.62E+00  1.72E+00  1.66E+00  1.67E+00  9.20E-01  9.89E-01
 


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
+        5.17E+08
 
 TH 2
+       -1.32E+00  1.50E+08
 
 TH 3
+       -6.03E-01 -5.44E+07  7.90E+07
 
 TH 4
+       -8.56E-01  5.56E+01 -2.87E+01  2.20E+09
 
 TH 5
+        2.64E+08 -1.24E+02 -6.72E+01  3.85E+08  2.70E+08
 
 TH 6
+        6.56E+02  1.35E-01 -5.74E-02 -3.28E-01  7.43E-02  7.60E+01
 
 TH 7
+       -7.93E+01 -5.86E+00  1.70E+00  1.82E+01 -2.48E+07 -1.09E+02  1.45E+07
 
 TH 8
+        8.69E+01  1.31E+00 -3.22E+01  4.65E+00  4.80E+07  1.18E+02 -1.58E+07  3.42E+07
 
 TH 9
+        1.87E+08  4.87E+00 -3.66E+00 -1.36E+01  4.78E+07  2.36E+07  6.44E+03  9.55E+06  1.69E+07
 
 TH10
+       -9.57E+02 -1.08E+01  2.76E-01 -3.97E+00 -5.29E+08 -1.30E+03  6.98E+03  6.31E+02  7.67E+04  2.07E+09
 
 TH11
+        8.91E+02 -2.40E+01 -1.83E+00  1.50E+01  4.92E+08  1.21E+03 -6.49E+03 -1.19E+04 -7.13E+04  1.31E+05  1.79E+09
 
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
 #CPUT: Total CPU Time in Seconds,       67.378
Stop Time:
Sat Sep 18 06:36:03 CDT 2021