Wed Sep 29 04:26:05 CDT 2021
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
$DATA ../../../../data/int/SL3/dat53.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      986
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

 TOT. NO. OF OBS RECS:      886
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
 RAW OUTPUT FILE (FILE): m53.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -69.3423364097031        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4961E+02  5.8302E+01  2.0321E+02  2.8270E+01  2.0650E+02  2.0104E+01 -1.1874E+02 -6.5804E+02 -1.5422E+02 -5.5086E+01
            -6.4207E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2694.10024462830        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0596E+00  1.2189E+00  1.0580E+00  1.0025E+00  1.0171E+00  1.1070E+00  1.0284E+00  9.8667E-01  7.8856E-01  9.7436E-01
             2.7885E+00
 PARAMETER:  1.5786E-01  2.9792E-01  1.5639E-01  1.0253E-01  1.1698E-01  2.0166E-01  1.2798E-01  8.6581E-02 -1.3754E-01  7.4030E-02
             1.1255E+00
 GRADIENT:   1.9727E+02  1.1824E+02  8.5979E+00  7.4849E+01 -6.3647E+01  2.1644E+01  8.1660E+00  5.1367E+00 -1.7605E+00 -1.1642E+01
             6.4177E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2697.69615163351        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      244
 NPARAMETR:  1.0594E+00  1.3946E+00  1.5046E+00  9.3612E-01  1.2532E+00  1.0997E+00  8.6610E-01  8.2105E-01  8.9116E-01  1.3193E+00
             2.8067E+00
 PARAMETER:  1.5771E-01  4.3263E-01  5.0854E-01  3.3987E-02  3.2566E-01  1.9507E-01 -4.3760E-02 -9.7170E-02 -1.5231E-02  3.7709E-01
             1.1320E+00
 GRADIENT:   1.0962E+02  1.0964E+02  1.3755E+01  1.1562E+02 -5.4725E+01  2.5882E+00  4.0665E+00 -9.0086E-02  4.6862E+00  7.4420E+00
             6.7352E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2714.58332107306        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      421
 NPARAMETR:  9.8046E-01  1.6098E+00  2.5654E+00  7.2999E-01  1.7813E+00  1.0953E+00  7.6187E-01  3.0479E+00  8.8642E-01  1.5294E+00
             2.6439E+00
 PARAMETER:  8.0271E-02  5.7608E-01  1.0421E+00 -2.1472E-01  6.7732E-01  1.9103E-01 -1.7198E-01  1.2145E+00 -2.0565E-02  5.2486E-01
             1.0723E+00
 GRADIENT:  -2.3214E+01 -2.2639E+01 -1.1935E+01  1.6628E+01  4.4824E+01  6.3927E+00  1.0842E+00  2.1711E+00  2.1084E+00  3.7798E+00
            -1.6693E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2718.49847992377        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      597
 NPARAMETR:  9.9461E-01  1.7914E+00  3.0682E+00  6.0841E-01  1.8394E+00  1.0751E+00  6.9910E-01  3.1189E+00  9.7784E-01  1.6313E+00
             2.6672E+00
 PARAMETER:  9.4600E-02  6.8299E-01  1.2211E+00 -3.9691E-01  7.0945E-01  1.7243E-01 -2.5796E-01  1.2375E+00  7.7590E-02  5.8939E-01
             1.0810E+00
 GRADIENT:   2.6713E+00 -6.7980E+00  1.8635E-01 -1.2438E-01  2.5629E+00  1.6390E-01  3.1941E-02  2.4876E-01 -1.5594E+00  9.2729E-01
             8.8566E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2719.02065908842        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      775
 NPARAMETR:  9.9197E-01  1.9452E+00  2.8586E+00  5.1094E-01  1.8654E+00  1.0733E+00  6.2986E-01  3.4275E+00  1.2377E+00  1.6522E+00
             2.6575E+00
 PARAMETER:  9.1938E-02  7.6535E-01  1.1503E+00 -5.7150E-01  7.2345E-01  1.7074E-01 -3.6226E-01  1.3318E+00  3.1325E-01  6.0208E-01
             1.0774E+00
 GRADIENT:  -2.6059E+00  1.5285E+01  2.2920E+00  5.3538E+00 -8.3535E+00 -7.2072E-01 -1.0585E+00 -6.7297E-01  3.0011E-01 -1.3858E+00
            -4.4307E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2719.56305318844        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      951
 NPARAMETR:  9.9492E-01  2.1419E+00  1.8008E+00  3.7439E-01  1.9367E+00  1.0737E+00  6.0861E-01  3.5501E+00  1.4617E+00  1.7091E+00
             2.6660E+00
 PARAMETER:  9.4908E-02  8.6168E-01  6.8826E-01 -8.8245E-01  7.6096E-01  1.7111E-01 -3.9657E-01  1.3670E+00  4.7961E-01  6.3596E-01
             1.0806E+00
 GRADIENT:   2.4509E+00  7.2612E+00 -1.2549E+00  5.1455E+00  2.8987E+00 -6.4682E-01 -4.0829E-01  1.8373E+00 -4.9259E-01  1.0221E+00
             2.0454E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2720.03283881268        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1129
 NPARAMETR:  9.8938E-01  2.3238E+00  6.1600E-01  2.4330E-01  1.8750E+00  1.0722E+00  5.9284E-01  2.2312E+00  1.8318E+00  1.6883E+00
             2.6587E+00
 PARAMETER:  8.9322E-02  9.4320E-01 -3.8451E-01 -1.3135E+00  7.2860E-01  1.6969E-01 -4.2283E-01  9.0253E-01  7.0528E-01  6.2370E-01
             1.0779E+00
 GRADIENT:  -7.9980E+00  7.0238E+00 -6.4651E-01  2.5353E-01 -1.1480E+01 -1.2450E+00  1.0160E+00  1.8362E+00 -3.0147E+00 -2.3114E+00
            -6.4382E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2720.71400727471        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1305
 NPARAMETR:  9.9669E-01  2.3992E+00  4.5393E-01  1.9478E-01  1.9673E+00  1.0762E+00  5.7057E-01  1.7376E+00  2.3465E+00  1.7340E+00
             2.6636E+00
 PARAMETER:  9.6681E-02  9.7513E-01 -6.8982E-01 -1.5359E+00  7.7664E-01  1.7347E-01 -4.6112E-01  6.5252E-01  9.5290E-01  6.5046E-01
             1.0797E+00
 GRADIENT:   5.1582E+00  3.9217E+00 -3.3521E+00  7.2573E+00  8.6473E+00  4.2404E-02 -1.8441E+00  1.8357E+00  1.8036E+00  1.3835E+00
             1.3133E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2722.25663756167        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1482
 NPARAMETR:  9.9078E-01  2.5103E+00  3.6859E-01  1.1647E-01  2.0183E+00  1.0746E+00  5.6637E-01  4.1139E-01  3.2744E+00  1.7610E+00
             2.6484E+00
 PARAMETER:  9.0734E-02  1.0204E+00 -8.9808E-01 -2.0502E+00  8.0227E-01  1.7196E-01 -4.6851E-01 -7.8822E-01  1.2861E+00  6.6586E-01
             1.0739E+00
 GRADIENT:  -5.5776E+00  1.2030E+01 -4.9367E-01  2.6450E+00 -5.8919E-01 -7.1109E-01  5.3350E-02  1.1256E-01  1.4095E+00  3.3876E-01
            -6.3516E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2722.41707107249        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1657
 NPARAMETR:  9.9364E-01  2.5528E+00  3.2016E-01  8.2542E-02  2.0539E+00  1.0764E+00  5.6362E-01  1.3424E-01  3.9200E+00  1.7738E+00
             2.6501E+00
 PARAMETER:  9.3624E-02  1.0372E+00 -1.0389E+00 -2.3944E+00  8.1973E-01  1.7365E-01 -4.7338E-01 -1.9081E+00  1.4661E+00  6.7313E-01
             1.0746E+00
 GRADIENT:  -1.4300E-01  2.1087E+00  4.8467E-02  1.5124E-01  1.4248E+00 -3.0453E-02 -7.8718E-02  1.2304E-02 -2.8539E-01  1.1086E-01
            -1.6599E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2722.41788621152        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:     1817
 NPARAMETR:  9.9354E-01  2.5542E+00  3.1812E-01  8.1376E-02  2.0521E+00  1.0763E+00  5.6361E-01  1.0342E-01  3.9402E+00  1.7736E+00
             2.6506E+00
 PARAMETER:  9.3515E-02  1.0377E+00 -1.0453E+00 -2.4087E+00  8.1888E-01  1.7349E-01 -4.7339E-01 -2.1690E+00  1.4712E+00  6.7301E-01
             1.0748E+00
 GRADIENT:  -3.4869E-01  3.0894E+00  2.6073E-01 -3.6092E-01  8.0571E-01 -7.9918E-02  1.9695E-01  7.2333E-03 -9.7465E-01  1.1528E-01
            -1.0171E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2722.42480409382        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1994
 NPARAMETR:  9.9385E-01  2.5544E+00  3.1736E-01  8.1224E-02  2.0501E+00  1.0766E+00  5.6377E-01  1.0000E-02  3.9553E+00  1.7727E+00
             2.6521E+00
 PARAMETER:  9.3828E-02  1.0378E+00 -1.0477E+00 -2.4105E+00  8.1787E-01  1.7385E-01 -4.7311E-01 -5.3825E+00  1.4751E+00  6.7252E-01
             1.0753E+00
 GRADIENT:   2.1494E-01  1.4372E+00  2.3980E-02  1.1594E-01  6.3778E-02  6.3677E-02  1.5431E-03  0.0000E+00 -1.4243E-01  1.0191E-02
             1.1685E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2722.42544818248        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2169
 NPARAMETR:  9.9362E-01  2.5547E+00  3.1667E-01  8.0088E-02  2.0500E+00  1.0763E+00  5.6389E-01  1.0000E-02  3.9913E+00  1.7724E+00
             2.6518E+00
 PARAMETER:  9.3596E-02  1.0379E+00 -1.0499E+00 -2.4246E+00  8.1782E-01  1.7351E-01 -4.7290E-01 -1.3470E+01  1.4841E+00  6.7234E-01
             1.0752E+00
 GRADIENT:  -1.7901E-01 -1.2312E+00  3.7308E-02  6.2981E-02 -1.8061E-01 -5.6252E-02  8.1569E-04  0.0000E+00  8.6053E-02 -4.7927E-02
             6.7748E-02

0ITERATION NO.:   68    OBJECTIVE VALUE:  -2722.42545241199        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     2267
 NPARAMETR:  9.9413E-01  2.5648E+00  3.1657E-01  7.8163E-02  2.0491E+00  1.0776E+00  5.6410E-01  1.0000E-02  3.9332E+00  1.7742E+00
             2.6720E+00
 PARAMETER:  9.3583E-02  1.0379E+00 -1.0507E+00 -2.4253E+00  8.1784E-01  1.7349E-01 -4.7293E-01 -1.3753E+01  1.4843E+00  6.7237E-01
             1.0752E+00
 GRADIENT:  -4.4524E-01 -1.9494E+01 -1.0960E-02  9.2357E+00  1.1593E-01 -2.0826E-01 -5.7462E-02  0.0000E+00  1.7655E+01 -1.1736E-01
            -2.3021E+01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2267
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6836E-03 -2.8454E-02 -6.2178E-07  3.4922E-02 -2.0611E-02
 SE:             2.9474E-02  2.5202E-02  1.0872E-05  1.4496E-02  2.6551E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5445E-01  2.5887E-01  9.5439E-01  1.5993E-02  4.3758E-01

 ETASHRINKSD(%)  1.2596E+00  1.5571E+01  9.9964E+01  5.1436E+01  1.1052E+01
 ETASHRINKVR(%)  2.5033E+00  2.8717E+01  1.0000E+02  7.6416E+01  2.0883E+01
 EBVSHRINKSD(%)  1.4010E+00  1.2757E+01  9.9936E+01  6.0900E+01  8.3527E+00
 EBVSHRINKVR(%)  2.7823E+00  2.3886E+01  1.0000E+02  8.4712E+01  1.6008E+01
 RELATIVEINF(%)  9.7161E+01  2.4478E+01  3.2623E-05  4.8197E+00  6.9892E+01
 EPSSHRINKSD(%)  1.5989E+01
 EPSSHRINKVR(%)  2.9421E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          886
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1628.3590808386800     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2722.4254524119860     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1094.0663715733060     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    61.01
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.91
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2722.425       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.94E-01  2.55E+00  3.16E-01  8.00E-02  2.05E+00  1.08E+00  5.64E-01  1.00E-02  3.99E+00  1.77E+00  2.65E+00
 


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
+        9.45E+02
 
 TH 2
+       -1.29E+01  5.41E+02
 
 TH 3
+       -1.61E+04  3.64E+01  5.37E+03
 
 TH 4
+       -2.42E+01  3.90E+02 -9.34E+02  2.02E+04
 
 TH 5
+       -1.74E+00 -1.33E+01  1.04E+03 -1.18E+02  2.78E+02
 
 TH 6
+        4.49E+00 -5.06E+00  5.71E-01 -3.95E+00 -7.08E-01  1.62E+02
 
 TH 7
+        1.74E+00  3.48E+00  6.21E+03 -3.28E+02  1.05E+01 -1.23E+00  4.94E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -1.94E-01 -1.64E+01 -1.78E+01  7.00E+02 -3.91E+00  8.69E-02 -7.53E+00  0.00E+00  2.55E+01
 
 TH10
+       -3.28E-01 -2.94E+00  1.39E+03 -3.25E+01 -4.72E+00  8.57E-02  4.62E+00  0.00E+00 -4.41E-01  4.20E+01
 
 TH11
+       -1.17E+01 -6.29E+00  6.91E+02 -3.32E+02  1.37E+02  1.72E+00  2.83E+01  0.00E+00 -7.20E+00  1.01E+01  2.53E+02
 
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
 #CPUT: Total CPU Time in Seconds,       75.016
Stop Time:
Wed Sep 29 04:27:22 CDT 2021
