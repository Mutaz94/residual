Wed Sep 29 08:31:34 CDT 2021
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
$DATA ../../../../data/int/D/dat31.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m31.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   24997.2630726622        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1219E+02  3.4308E+02 -3.9186E+01  1.9134E+02  3.1217E+02 -1.6800E+03 -9.2234E+02 -4.6881E+01 -1.4684E+03 -6.2557E+02
            -5.2525E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -969.121434453734        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0807E+00  2.0005E+00  9.7648E-01  2.4903E+00  7.4782E-01  3.3374E+00  3.5014E+00  9.8249E-01  2.4775E+00  1.7600E+00
             1.3050E+01
 PARAMETER:  1.7759E-01  7.9338E-01  7.6196E-02  1.0124E+00 -1.9059E-01  1.3052E+00  1.3532E+00  8.2340E-02  1.0072E+00  6.6531E-01
             2.6688E+00
 GRADIENT:  -5.1179E+01  6.5299E+01 -2.0881E+01  1.4630E+02 -5.1979E+01  1.2210E+02 -6.3185E+00  5.0922E+00 -5.2251E-01  4.3534E+01
             5.4023E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1055.92147113546        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  9.8279E-01  1.5844E+00  6.5585E+01  3.8533E+00  2.3236E+00  2.7117E+00  6.6232E+00  6.4642E-01  3.4259E+00  2.0364E+00
             1.2452E+01
 PARAMETER:  8.2638E-02  5.6023E-01  4.2833E+00  1.4489E+00  9.4310E-01  1.0976E+00  1.9906E+00 -3.3631E-01  1.3314E+00  8.1121E-01
             2.6218E+00
 GRADIENT:  -7.5218E+01  3.0970E+01 -1.7146E-01  1.4041E+02 -1.3175E+01  9.4608E+01  2.9597E+01  2.0869E-02  3.9433E+01  5.9757E+01
             5.4779E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1294.47113464445        NO. OF FUNC. EVALS.:  80
 CUMULATIVE NO. OF FUNC. EVALS.:      234
 NPARAMETR:  1.0618E+00  1.1889E+00  1.3528E+01  1.0799E+00  2.1947E+00  2.0586E+00  3.6406E+00  3.6775E-01  1.7918E+00  4.9936E-01
             8.9422E+00
 PARAMETER:  1.5996E-01  2.7300E-01  2.7047E+00  1.7686E-01  8.8607E-01  8.2204E-01  1.3921E+00 -9.0036E-01  6.8325E-01 -5.9442E-01
             2.2908E+00
 GRADIENT:  -6.1659E+01 -4.1152E+01 -2.0687E+00 -3.1919E+01  4.7077E+01 -1.5919E+01  5.4745E-02  9.6495E-03  1.7582E+01  4.3245E+00
             3.3093E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1330.46627389364        NO. OF FUNC. EVALS.: 113
 CUMULATIVE NO. OF FUNC. EVALS.:      347
 NPARAMETR:  1.1581E+00  1.6825E+00  2.8230E+00  8.0910E-01  1.7439E+00  2.2227E+00  3.4171E+00  1.1397E-01  1.6482E+00  2.4823E-01
             7.5943E+00
 PARAMETER:  2.4677E-01  6.2031E-01  1.1378E+00 -1.1183E-01  6.5613E-01  8.9873E-01  1.3288E+00 -2.0719E+00  5.9970E-01 -1.2934E+00
             2.1274E+00
 GRADIENT:  -7.6156E+00 -1.6912E+01 -5.4376E+00 -8.9654E+00  7.4487E+00 -1.1793E+01 -1.4048E+01  2.9197E-03  9.3937E+00  9.0238E-01
            -1.2752E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1337.14302592090        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      524
 NPARAMETR:  1.2155E+00  1.2548E+00  1.0259E+01  1.1806E+00  1.9735E+00  2.3034E+00  4.4403E+00  1.0642E-01  1.2646E+00  2.4350E-01
             7.6454E+00
 PARAMETER:  2.9518E-01  3.2699E-01  2.4281E+00  2.6606E-01  7.7979E-01  9.3440E-01  1.5907E+00 -2.1404E+00  3.3475E-01 -1.3127E+00
             2.1341E+00
 GRADIENT:   1.1789E+01  3.2650E+00  2.1148E+00  4.2420E+00 -4.0131E+00  1.1659E+00 -8.0960E+00 -3.6414E-04  3.3869E-02  3.2589E-01
            -2.4697E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1338.18559773594        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      699
 NPARAMETR:  1.1812E+00  1.1522E+00  6.6588E+00  1.2009E+00  1.8370E+00  2.2898E+00  4.7031E+00  5.1315E-02  1.1865E+00  2.1749E-01
             7.6991E+00
 PARAMETER:  2.6652E-01  2.4171E-01  1.9959E+00  2.8304E-01  7.0815E-01  9.2847E-01  1.6482E+00 -2.8698E+00  2.7104E-01 -1.4256E+00
             2.1411E+00
 GRADIENT:  -1.6992E-01  1.1201E+00 -8.7111E-01  2.5355E+00  1.6085E+00  6.1685E-02 -4.8500E-01  2.2317E-04 -1.3810E+00  3.0886E-01
            -3.0048E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1338.43074912153        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      875
 NPARAMETR:  1.1815E+00  9.9107E-01  7.8698E+00  1.2964E+00  1.8456E+00  2.2926E+00  5.0185E+00  4.0786E-02  1.3039E+00  1.9036E-01
             7.7000E+00
 PARAMETER:  2.6680E-01  9.1028E-02  2.1630E+00  3.5956E-01  7.1283E-01  9.2968E-01  1.7131E+00 -3.0994E+00  3.6538E-01 -1.5589E+00
             2.1412E+00
 GRADIENT:   6.7796E-02 -4.7374E-02 -2.4788E-01 -2.4317E-01  5.5337E-01  2.2667E-01  8.0521E-01  1.4562E-05  2.5115E-01  2.1110E-01
            -1.0031E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1338.51567826497        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:     1016
 NPARAMETR:  1.1811E+00  9.9411E-01  7.9019E+00  1.2953E+00  1.8457E+00  2.2964E+00  5.0089E+00  3.9458E-02  1.2981E+00  6.4684E-02
             7.7033E+00
 PARAMETER:  2.6647E-01  9.4097E-02  2.1671E+00  3.5875E-01  7.1286E-01  9.3132E-01  1.7112E+00 -3.1325E+00  3.6091E-01 -2.6382E+00
             2.1416E+00
 GRADIENT:  -1.3989E-02  1.4343E-01  1.9497E-01  2.8749E-01 -1.4969E+00  8.7911E-01  3.1340E-01 -5.7157E-05 -2.4161E-01  1.9711E-02
            -1.4982E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1338.52757243080        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:     1175
 NPARAMETR:  1.1816E+00  9.9379E-01  7.8617E+00  1.2929E+00  1.8497E+00  2.3020E+00  5.0206E+00  1.4287E-01  1.3046E+00  2.2139E-02
             7.7075E+00
 PARAMETER:  2.6690E-01  9.3775E-02  2.1620E+00  3.5692E-01  7.1504E-01  9.3379E-01  1.7135E+00 -1.8458E+00  3.6589E-01 -3.7104E+00
             2.1422E+00
 GRADIENT:   2.3070E+01  1.3479E+00  2.8784E-01  1.1537E+01  5.1452E+00  4.2712E+01  8.6543E+01 -1.8976E-04  1.9513E+00  3.5079E-03
             3.8913E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1338.58136489496        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1357
 NPARAMETR:  1.1815E+00  1.0043E+00  7.9935E+00  1.2914E+00  1.8456E+00  2.2933E+00  4.9976E+00  1.7596E+00  1.3055E+00  1.8693E-02
             7.7030E+00
 PARAMETER:  2.6682E-01  1.0429E-01  2.1786E+00  3.5569E-01  7.1282E-01  9.2998E-01  1.7090E+00  6.6506E-01  3.6655E-01 -3.8796E+00
             2.1416E+00
 GRADIENT:  -1.0563E-01 -4.9837E-02 -1.0885E+00  1.0618E+00  1.6805E+00  4.4226E-01  6.3878E-01  7.0164E-02 -9.7803E-02  3.1592E-03
             2.3060E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1338.61831364380        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1533
 NPARAMETR:  1.1812E+00  1.0192E+00  9.0371E+00  1.2838E+00  1.8810E+00  2.2922E+00  4.9627E+00  2.1243E+00  1.3083E+00  1.0000E-02
             7.6930E+00
 PARAMETER:  2.6657E-01  1.1897E-01  2.3013E+00  3.4980E-01  7.3183E-01  9.2949E-01  1.7019E+00  8.5342E-01  3.6874E-01 -5.4025E+00
             2.1403E+00
 GRADIENT:  -2.5687E-02  9.1255E-03 -7.4497E-03 -4.3334E-01  1.3667E-02  1.5936E-01 -1.0682E-02 -4.3630E-03 -3.6263E-03  0.0000E+00
            -1.5576E-01

0ITERATION NO.:   56    OBJECTIVE VALUE:  -1338.61831364380        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1555
 NPARAMETR:  1.1812E+00  1.0192E+00  9.0371E+00  1.2838E+00  1.8810E+00  2.2922E+00  4.9627E+00  2.1243E+00  1.3083E+00  1.0000E-02
             7.6930E+00
 PARAMETER:  2.6657E-01  1.1897E-01  2.3013E+00  3.4980E-01  7.3183E-01  9.2949E-01  1.7019E+00  8.5342E-01  3.6874E-01 -5.4025E+00
             2.1403E+00
 GRADIENT:  -2.5687E-02  9.1255E-03 -7.4497E-03 -4.3334E-01  1.3667E-02  1.5936E-01 -1.0682E-02 -4.3630E-03 -3.6263E-03  0.0000E+00
            -1.5576E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1555
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.6115E-03  3.1730E-02 -1.3259E-02 -6.3803E-02  2.1567E-05
 SE:             2.9243E-02  2.4569E-02  6.0868E-03  1.4953E-02  1.6366E-04
 N:                     100         100         100         100         100

 P VAL.:         7.6839E-01  1.9653E-01  2.9387E-02  1.9838E-05  8.9516E-01

 ETASHRINKSD(%)  2.0315E+00  1.7692E+01  7.9608E+01  4.9905E+01  9.9452E+01
 ETASHRINKVR(%)  4.0218E+00  3.2254E+01  9.5842E+01  7.4905E+01  9.9997E+01
 EBVSHRINKSD(%)  2.4802E+00  1.4238E+01  8.0516E+01  5.1188E+01  9.9418E+01
 EBVSHRINKVR(%)  4.8988E+00  2.6448E+01  9.6204E+01  7.6174E+01  9.9997E+01
 RELATIVEINF(%)  9.4967E+01  2.9641E+01  8.2373E-01  9.6158E+00  7.7952E-04
 EPSSHRINKSD(%)  7.8515E+00
 EPSSHRINKVR(%)  1.5087E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1338.6183136438024     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       315.47104612460839     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    46.67
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    16.77
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1338.618       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.18E+00  1.02E+00  9.04E+00  1.28E+00  1.88E+00  2.29E+00  4.96E+00  2.12E+00  1.31E+00  1.00E-02  7.69E+00
 


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
+        6.80E+01
 
 TH 2
+        2.87E+00  9.06E+00
 
 TH 3
+        1.85E-01  1.65E-01  1.45E-01
 
 TH 4
+       -6.62E+00  2.62E+01 -1.38E+00  1.02E+02
 
 TH 5
+       -3.81E+00 -7.90E+00 -3.67E+00  2.28E+01  9.46E+01
 
 TH 6
+        1.32E+01 -3.27E+00 -2.98E-03 -1.30E+01  1.85E+00  4.23E+00
 
 TH 7
+        1.96E+00 -2.28E+00 -4.82E-03 -7.58E+00  1.15E+00  1.40E+00  6.87E-01
 
 TH 8
+       -1.64E-01  3.90E-03 -7.82E-02  1.05E+00  1.94E+00 -5.12E-02 -2.48E-02  4.34E-02
 
 TH 9
+        1.92E+00 -6.45E+00 -1.05E-01 -1.96E+01  5.42E+00  3.17E+00  1.78E+00 -1.51E-02  4.83E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.10E+00 -1.94E+00  7.07E-02 -6.87E+00 -1.03E+00  6.94E-01  4.94E-01 -5.29E-02  1.37E+00  0.00E+00  9.30E-01
 
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
+        1.41E+02
 
 TH 2
+       -7.28E-01  3.27E+01
 
 TH 3
+        1.17E-01  4.24E-01  1.97E-01
 
 TH 4
+       -3.25E+00  3.21E+01 -9.79E-01  1.16E+02
 
 TH 5
+       -2.20E+00 -1.24E+01 -3.51E+00  8.94E+00  9.29E+01
 
 TH 6
+        8.22E-01 -8.07E-02  1.77E-02  4.05E-01 -1.03E+00  3.41E+01
 
 TH 7
+        2.31E-01  4.38E+00 -1.05E-01 -9.24E+00  2.01E+00 -1.80E-01  4.64E+00
 
 TH 8
+       -1.21E-01 -3.86E-01 -1.90E-01  9.57E-01  1.78E+00  2.07E-02  4.00E-02  4.55E-01
 
 TH 9
+        7.13E-02 -3.55E+00 -2.54E-01 -2.23E+01  6.97E+00 -6.93E-01  2.45E+00  1.35E-01  1.61E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -5.67E+00 -3.08E+00 -6.54E-02 -7.67E+00 -1.16E-01  1.43E+00  5.86E-01  2.40E-01  2.29E+00  0.00E+00  1.79E+01
 
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
+        1.46E+02
 
 TH 2
+        5.55E+01  3.30E+01
 
 TH 3
+        4.75E-01  2.92E-01  1.22E-01
 
 TH 4
+        6.06E+01  3.48E+01 -1.11E-01  1.16E+02
 
 TH 5
+       -2.15E+01 -9.71E+00 -2.95E+00 -1.88E+00  9.14E+01
 
 TH 6
+        5.16E+01  1.82E+01 -1.18E-01 -8.97E+00 -1.02E+00  5.89E+01
 
 TH 7
+        6.54E+00  4.31E+00 -1.23E-01 -9.46E+00  4.18E+00  9.70E+00  4.68E+00
 
 TH 8
+       -4.33E-01 -2.22E-01 -9.21E-02 -3.80E-01  1.64E+00  2.23E-01  1.33E-01  1.49E-01
 
 TH 9
+       -6.80E+00 -2.75E+00 -2.72E-01 -2.17E+01  1.00E+01  5.12E+00  2.65E+00  6.41E-02  1.46E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -8.16E+01 -2.77E+01  6.80E-02 -3.43E+01  1.49E+01 -4.51E+00 -1.38E+00 -1.06E+00  1.42E+00  0.00E+00  6.96E+02
 
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
 #CPUT: Total CPU Time in Seconds,       63.558
Stop Time:
Wed Sep 29 08:32:39 CDT 2021
