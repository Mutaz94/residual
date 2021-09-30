Wed Sep 29 15:51:59 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat47.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1624.99010443421        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2978E+02 -2.5955E+01  1.1791E+01 -5.4603E+01  4.5241E+01  6.2572E+01 -3.0973E+00 -7.6154E+00 -3.4710E+01 -1.4696E+01
             1.4154E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1634.37756123962        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.8839E-01  9.7812E-01  9.5289E-01  1.0792E+00  9.3337E-01  9.2790E-01  1.0115E+00  1.0300E+00  1.1214E+00  1.0433E+00
             9.9125E-01
 PARAMETER:  8.8326E-02  7.7877E-02  5.1742E-02  1.7623E-01  3.1045E-02  2.5165E-02  1.1141E-01  1.2960E-01  2.1458E-01  1.4239E-01
             9.1209E-02
 GRADIENT:   5.8733E+00  1.3444E+00  2.6360E+00 -8.8362E+00 -9.8340E-01 -2.5711E+00  3.3168E+00 -7.1452E-01  3.9693E-01  3.0149E+00
             3.1711E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1635.01056065453        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.8770E-01  8.4345E-01  9.8364E-01  1.1849E+00  8.8227E-01  9.3614E-01  9.2412E-01  1.0301E+00  1.0901E+00  1.0075E+00
             9.8025E-01
 PARAMETER:  8.7620E-02 -7.0250E-02  8.3507E-02  2.6969E-01 -2.5262E-02  3.4015E-02  2.1091E-02  1.2970E-01  1.8625E-01  1.0747E-01
             8.0053E-02
 GRADIENT:   6.1702E+00  1.6542E+01  5.3146E+00  2.1347E+01 -1.1033E+01  1.1594E+00  2.0665E-01 -1.1727E+00  3.1405E+00  1.6107E-01
            -8.8508E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1635.77666781972        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  9.8173E-01  6.6043E-01  1.1187E+00  1.3000E+00  8.8127E-01  9.2761E-01  8.3332E-01  1.1166E+00  1.0029E+00  1.0248E+00
             9.8366E-01
 PARAMETER:  8.1558E-02 -3.1487E-01  2.1218E-01  3.6238E-01 -2.6388E-02  2.4858E-02 -8.2343E-02  2.1028E-01  1.0286E-01  1.2451E-01
             8.3527E-02
 GRADIENT:  -2.7413E+00  1.3745E+01  9.4112E+00  1.8713E+01 -1.1523E+01 -1.6508E+00 -6.7165E-01 -1.6631E+00 -4.5741E+00 -1.3291E+00
             4.1031E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1636.75199058870        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  9.7966E-01  3.6509E-01  1.0887E+00  1.4692E+00  7.8661E-01  9.2720E-01  7.1119E-01  1.0628E+00  9.1463E-01  9.9750E-01
             9.7462E-01
 PARAMETER:  7.9451E-02 -9.0761E-01  1.8496E-01  4.8474E-01 -1.4003E-01  2.4413E-02 -2.4081E-01  1.6088E-01  1.0766E-02  9.7501E-02
             7.4295E-02
 GRADIENT:   2.4120E+00  3.5145E+00 -1.0947E+00  1.0749E+01 -1.8297E+00 -1.1824E+00 -3.7942E-01  1.8632E-01  5.1650E-01  1.1352E+00
            -5.8262E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1636.78847404035        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  9.7743E-01  2.9071E-01  1.1045E+00  1.5164E+00  7.7119E-01  9.2718E-01  7.0699E-01  1.0809E+00  8.8237E-01  9.8435E-01
             9.7555E-01
 PARAMETER:  7.7170E-02 -1.1354E+00  1.9942E-01  5.1635E-01 -1.5982E-01  2.4393E-02 -2.4673E-01  1.7782E-01 -2.5143E-02  8.4230E-02
             7.5250E-02
 GRADIENT:   2.9541E-01  3.9074E+00  2.9305E+00  1.4434E+01 -5.8314E+00 -1.0152E+00 -2.8032E-01 -6.9320E-01 -1.9590E+00  3.7030E-01
            -2.8969E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1636.82000960165        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1057
 NPARAMETR:  9.7570E-01  2.2996E-01  1.1227E+00  1.5527E+00  7.6326E-01  9.2790E-01  7.1729E-01  1.1112E+00  8.5985E-01  9.7526E-01
             9.7610E-01
 PARAMETER:  7.5397E-02 -1.3698E+00  2.1576E-01  5.4001E-01 -1.7015E-01  2.5174E-02 -2.3227E-01  2.0543E-01 -5.1002E-02  7.4947E-02
             7.5807E-02
 GRADIENT:  -8.4910E-01  3.0746E+00  3.8617E+00  1.2179E+01 -5.8732E+00 -5.7510E-01 -1.7577E-01 -8.5088E-01 -2.5974E+00 -1.4865E-01
            -7.0900E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1636.84993343581        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1232
 NPARAMETR:  9.7407E-01  1.6399E-01  1.1406E+00  1.5914E+00  7.5502E-01  9.2843E-01  7.4664E-01  1.1447E+00  8.3814E-01  9.6746E-01
             9.7628E-01
 PARAMETER:  7.3731E-02 -1.7079E+00  2.3153E-01  5.6463E-01 -1.8101E-01  2.5736E-02 -1.9218E-01  2.3515E-01 -7.6571E-02  6.6919E-02
             7.5991E-02
 GRADIENT:  -1.2595E+00  2.0460E+00  3.6734E+00  8.2174E+00 -4.7600E+00 -2.3554E-01 -8.6892E-02 -8.0115E-01 -2.4152E+00 -3.6732E-01
             5.9959E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1636.98985636659        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1400
 NPARAMETR:  9.7456E-01  1.5234E-01  1.1382E+00  1.5870E+00  7.5486E-01  9.2894E-01  1.3725E+00  1.1507E+00  8.4133E-01  9.7108E-01
             9.7581E-01
 PARAMETER:  7.4229E-02 -1.7817E+00  2.2945E-01  5.6187E-01 -1.8123E-01  2.6288E-02  4.1662E-01  2.4035E-01 -7.2767E-02  7.0654E-02
             7.5513E-02
 GRADIENT:   4.0285E+02  1.8257E+01  7.6396E+00  8.7645E+02  1.8409E+01  3.8369E+01  5.7989E-01  1.3917E+00  1.9136E+01  1.5161E+00
             1.1390E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1637.00121822732        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:     1538
 NPARAMETR:  9.7453E-01  1.5190E-01  1.1318E+00  1.5868E+00  7.5269E-01  9.2916E-01  1.4483E+00  1.1481E+00  8.3653E-01  9.6428E-01
             9.7546E-01
 PARAMETER:  7.4204E-02 -1.7845E+00  2.2378E-01  5.6171E-01 -1.8410E-01  2.6524E-02  4.7037E-01  2.3810E-01 -7.8496E-02  6.3631E-02
             7.5154E-02
 GRADIENT:   9.1180E-01  1.3713E-01 -1.2884E+00 -1.4537E+01  3.7274E+00  9.6081E-02  8.4643E-03  3.7960E-01  5.5932E-02 -1.8672E-01
             1.4119E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1637.00686560362        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1703
 NPARAMETR:  9.7453E-01  1.5004E-01  1.1324E+00  1.5878E+00  7.5036E-01  9.2910E-01  1.4064E+00  1.1436E+00  8.3637E-01  9.6505E-01
             9.7516E-01
 PARAMETER:  7.4196E-02 -1.7968E+00  2.2431E-01  5.6235E-01 -1.8720E-01  2.6465E-02  4.4106E-01  2.3422E-01 -7.8681E-02  6.4424E-02
             7.4848E-02
 GRADIENT:   9.8171E-01  3.0579E-01  1.4330E+00 -1.4239E+01  9.3167E-03  7.6091E-02 -8.1957E-03 -3.5914E-02  1.2353E-01  6.3007E-02
            -1.6852E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1637.01139811117        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1869
 NPARAMETR:  9.7442E-01  1.4905E-01  1.1294E+00  1.5869E+00  7.4896E-01  9.2900E-01  1.4386E+00  1.1410E+00  8.3583E-01  9.6435E-01
             9.7510E-01
 PARAMETER:  7.4082E-02 -1.8034E+00  2.2165E-01  5.6178E-01 -1.8907E-01  2.6357E-02  4.6368E-01  2.3187E-01 -7.9335E-02  6.3702E-02
             7.4785E-02
 GRADIENT:   4.0278E+02  1.7873E+01  8.7225E+00  8.7743E+02  1.7784E+01  3.8413E+01  6.5784E-01  1.0925E+00  1.7194E+01  1.1823E+00
             8.0096E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1637.01333668094        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2055
 NPARAMETR:  9.7464E-01  1.4832E-01  1.1269E+00  1.5881E+00  7.4854E-01  9.2914E-01  1.4809E+00  1.1407E+00  8.3584E-01  9.6366E-01
             9.7511E-01
 PARAMETER:  7.4312E-02 -1.8084E+00  2.1951E-01  5.6252E-01 -1.8963E-01  2.6503E-02  4.9266E-01  2.3163E-01 -7.9321E-02  6.2983E-02
             7.4792E-02
 GRADIENT:   1.3590E+00  2.0651E-01  1.0867E-01 -1.4899E+01  1.5721E+00  8.9791E-02  1.0578E-02  1.9063E-01  1.9277E-01  9.1862E-02
             3.5594E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1637.01623379329        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2242
 NPARAMETR:  9.7463E-01  1.4785E-01  1.1229E+00  1.5881E+00  7.4728E-01  9.2913E-01  1.4871E+00  1.1382E+00  8.3577E-01  9.6256E-01
             9.7510E-01
 PARAMETER:  7.4298E-02 -1.8116E+00  2.1595E-01  5.6255E-01 -1.9132E-01  2.6495E-02  4.9680E-01  2.2942E-01 -7.9401E-02  6.1839E-02
             7.4785E-02
 GRADIENT:   1.3252E+00  1.7805E-01 -7.6535E-01 -1.4644E+01  2.5289E+00  8.5418E-02  9.8567E-03  3.1542E-01  1.8008E-01  6.9431E-02
             7.5948E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1637.02056515313        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:     2409             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7466E-01  1.4716E-01  1.1217E+00  1.5876E+00  7.4572E-01  9.2916E-01  1.5074E+00  1.1350E+00  8.3559E-01  9.6185E-01
             9.7501E-01
 PARAMETER:  7.4338E-02 -1.8162E+00  2.1488E-01  5.6223E-01 -1.9341E-01  2.6521E-02  5.1041E-01  2.2666E-01 -7.9614E-02  6.1107E-02
             7.4694E-02
 GRADIENT:   4.0327E+02  1.7642E+01  7.6640E+00  8.7991E+02  1.9155E+01  3.8408E+01  7.7887E-01  1.2026E+00  1.7404E+01  1.1864E+00
             8.3703E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1637.02249550123        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2594
 NPARAMETR:  9.7468E-01  1.4714E-01  1.1187E+00  1.5871E+00  7.4485E-01  9.2916E-01  1.5361E+00  1.1333E+00  8.3583E-01  9.6097E-01
             9.7504E-01
 PARAMETER:  7.4356E-02 -1.8164E+00  2.1218E-01  5.6192E-01 -1.9458E-01  2.6522E-02  5.2926E-01  2.2513E-01 -7.9327E-02  6.0192E-02
             7.4721E-02
 GRADIENT:   1.4958E+00  1.0567E-01 -3.1693E-01 -1.6444E+01  1.9539E+00  9.7118E-02  2.3203E-02  2.7976E-01  3.4041E-01  1.0832E-01
             9.1608E-02

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1637.02566594080        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2778             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7464E-01  1.4620E-01  1.1172E+00  1.5879E+00  7.4361E-01  9.2915E-01  1.5006E+00  1.1303E+00  8.3541E-01  9.6015E-01
             9.7495E-01
 PARAMETER:  7.4310E-02 -1.8228E+00  2.1082E-01  5.6239E-01 -1.9624E-01  2.6514E-02  5.0585E-01  2.2250E-01 -7.9830E-02  5.9335E-02
             7.4629E-02
 GRADIENT:   4.0309E+02  1.7481E+01  7.3536E+00  8.8074E+02  1.9680E+01  3.8387E+01  7.4910E-01  1.1400E+00  1.7383E+01  1.1157E+00
             8.3220E-01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1637.02717839448        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     2968
 NPARAMETR:  9.7467E-01  1.4605E-01  1.1142E+00  1.5873E+00  7.4281E-01  9.2916E-01  1.5115E+00  1.1288E+00  8.3539E-01  9.5891E-01
             9.7491E-01
 PARAMETER:  7.4342E-02 -1.8238E+00  2.0818E-01  5.6203E-01 -1.9732E-01  2.6524E-02  5.1309E-01  2.2114E-01 -7.9852E-02  5.8044E-02
             7.4589E-02
 GRADIENT:   1.4909E+00  9.2636E-02 -6.0991E-01 -1.6407E+01  2.3286E+00  1.0089E-01  8.1857E-03  2.2277E-01  1.6265E-01 -3.5170E-02
             4.9322E-02

0ITERATION NO.:   87    OBJECTIVE VALUE:  -1637.02738591957        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     3027
 NPARAMETR:  9.7459E-01  1.4589E-01  1.1145E+00  1.5885E+00  7.4262E-01  9.2912E-01  1.5037E+00  1.1284E+00  8.3534E-01  9.5898E-01
             9.7489E-01
 PARAMETER:  7.4259E-02 -1.8249E+00  2.0844E-01  5.6279E-01 -1.9757E-01  2.6487E-02  5.0796E-01  2.2081E-01 -7.9916E-02  5.8117E-02
             7.4572E-02
 GRADIENT:  -1.7596E-01  1.2698E-02 -3.1130E-01  1.6877E+00  1.1484E+00 -1.6742E-02  1.3271E-04  9.6672E-02  7.6730E-02 -2.0519E-02
             2.1978E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     3027
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.5110E-04 -4.0523E-03 -2.9463E-02 -5.4199E-03 -3.4433E-02
 SE:             2.9842E-02  3.4243E-03  1.8807E-02  2.9190E-02  2.0989E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9061E-01  2.3666E-01  1.1722E-01  8.5270E-01  1.0089E-01

 ETASHRINKSD(%)  2.5610E-02  8.8528E+01  3.6994E+01  2.2103E+00  2.9685E+01
 ETASHRINKVR(%)  5.1213E-02  9.8684E+01  6.0302E+01  4.3717E+00  5.0557E+01
 EBVSHRINKSD(%)  4.4299E-01  8.9017E+01  3.9296E+01  2.5057E+00  2.7319E+01
 EBVSHRINKVR(%)  8.8402E-01  9.8794E+01  6.3150E+01  4.9485E+00  4.7175E+01
 RELATIVEINF(%)  9.4618E+01  6.5813E-02  6.7444E+00  7.2036E+00  5.0811E+00
 EPSSHRINKSD(%)  4.6167E+01
 EPSSHRINKVR(%)  7.1020E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1637.0273859195690     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -901.87655935583086     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    37.61
 Elapsed covariance  time in seconds:     5.36
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1637.027       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.75E-01  1.46E-01  1.11E+00  1.59E+00  7.43E-01  9.29E-01  1.50E+00  1.13E+00  8.35E-01  9.59E-01  9.75E-01
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.40E-02  6.98E-01  2.67E-01  4.00E-01  1.82E-01  6.78E-02  3.88E+00  3.66E-01  2.17E-01  1.87E-01  6.70E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.16E-03
 
 TH 2
+        1.45E-02  4.87E-01
 
 TH 3
+       -1.59E-03 -3.96E-02  7.10E-02
 
 TH 4
+       -8.26E-03 -2.78E-01  2.82E-02  1.60E-01
 
 TH 5
+        2.49E-03  9.51E-02  2.27E-02 -5.16E-02  3.31E-02
 
 TH 6
+       -3.60E-04 -1.40E-02  1.59E-03  7.81E-03 -2.44E-03  4.59E-03
 
 TH 7
+       -7.56E-02 -2.59E+00  2.69E-01  1.47E+00 -4.79E-01  7.26E-02  1.50E+01
 
 TH 8
+       -6.33E-03 -1.66E-01  7.18E-02  9.90E-02 -6.17E-03  5.57E-03  9.61E-01  1.34E-01
 
 TH 9
+        4.48E-03  1.43E-01 -1.16E-02 -8.07E-02  2.81E-02 -4.09E-03 -7.29E-01 -4.90E-02  4.69E-02
 
 TH10
+        1.53E-03  5.83E-02  1.74E-02 -3.16E-02  2.21E-02 -8.09E-05 -3.06E-01 -8.42E-03  1.72E-02  3.50E-02
 
 TH11
+        2.10E-04 -5.15E-04  2.75E-03  5.32E-04  1.31E-03  7.20E-04  2.39E-03  3.21E-04 -8.65E-05 -1.09E-04  4.48E-03
 
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
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.40E-02
 
 TH 2
+        6.09E-01  6.98E-01
 
 TH 3
+       -1.76E-01 -2.13E-01  2.67E-01
 
 TH 4
+       -6.07E-01 -9.94E-01  2.64E-01  4.00E-01
 
 TH 5
+        4.03E-01  7.49E-01  4.69E-01 -7.08E-01  1.82E-01
 
 TH 6
+       -1.56E-01 -2.96E-01  8.79E-02  2.88E-01 -1.98E-01  6.78E-02
 
 TH 7
+       -5.73E-01 -9.58E-01  2.60E-01  9.48E-01 -6.79E-01  2.76E-01  3.88E+00
 
 TH 8
+       -5.09E-01 -6.49E-01  7.37E-01  6.76E-01 -9.28E-02  2.25E-01  6.77E-01  3.66E-01
 
 TH 9
+        6.09E-01  9.44E-01 -2.00E-01 -9.31E-01  7.14E-01 -2.78E-01 -8.68E-01 -6.19E-01  2.17E-01
 
 TH10
+        2.40E-01  4.46E-01  3.50E-01 -4.21E-01  6.50E-01 -6.38E-03 -4.22E-01 -1.23E-01  4.25E-01  1.87E-01
 
 TH11
+        9.20E-02 -1.10E-02  1.54E-01  1.98E-02  1.07E-01  1.59E-01  9.21E-03  1.31E-02 -5.96E-03 -8.66E-03  6.70E-02
 
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
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.58E+03
 
 TH 2
+       -1.02E+02  5.14E+02
 
 TH 3
+       -1.77E+02  9.29E+01  3.12E+02
 
 TH 4
+       -1.40E+01  5.38E+02 -3.84E+01  7.54E+02
 
 TH 5
+        2.98E+02 -3.56E+02 -5.65E+02 -8.80E+01  1.36E+03
 
 TH 6
+       -3.14E+01  3.72E+01  1.98E+01  3.78E+01  2.45E-01  2.61E+02
 
 TH 7
+       -2.40E+00  1.39E+01 -4.92E-01  9.92E+00 -1.13E+00  1.07E+00  1.15E+00
 
 TH 8
+        6.23E+01  3.08E+00 -4.25E+01  1.32E+00 -1.30E+01 -1.77E+01 -1.17E+00  4.88E+01
 
 TH 9
+       -6.89E+01 -1.78E+02  3.87E+01 -1.39E+02 -6.08E+01 -9.98E+00 -7.75E+00  8.16E+00  2.63E+02
 
 TH10
+        1.49E+01  2.17E+01 -1.32E+01  1.60E+01 -6.04E+01 -2.61E+01  5.18E-01  2.03E+01 -2.64E+00  6.16E+01
 
 TH11
+       -6.14E+01  3.03E+01 -2.90E+00  8.58E+00 -9.41E+01 -5.31E+01  3.24E-01  2.78E+01  3.41E+00  2.95E+01  2.65E+02
 
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
 #CPUT: Total CPU Time in Seconds,       43.030
Stop Time:
Wed Sep 29 15:52:44 CDT 2021
