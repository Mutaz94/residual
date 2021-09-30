Wed Sep 29 08:40:32 CDT 2021
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
$DATA ../../../../data/int/D/dat38.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m38.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   18620.1543603352        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.0463E+02  2.8753E+02  9.6208E+01  1.2647E+02  3.2543E+02 -2.4101E+03 -1.0794E+03 -2.8636E+02 -1.4704E+03 -7.3994E+02
            -3.8670E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1064.22582573154        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.2510E+00  1.3084E+00  7.4493E-01  2.4793E+00  1.0174E+00  5.3037E+00  4.3488E+00  1.0529E+00  4.0107E+00  2.3982E+00
             1.0772E+01
 PARAMETER:  3.2391E-01  3.6879E-01 -1.9446E-01  1.0080E+00  1.1722E-01  1.7684E+00  1.5699E+00  1.5156E-01  1.4890E+00  9.7470E-01
             2.4769E+00
 GRADIENT:   8.4075E+00 -2.2231E+01 -4.9612E+01  1.0280E+02  8.5401E-01  2.6512E+02  7.0006E+01  4.8588E+00  8.0610E+01  6.7011E+01
             6.2382E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1204.97204842163        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.4046E+00  8.7112E-01  1.7993E+00  1.1426E+00  8.6134E-01  4.8322E+00  4.5649E+00  3.0912E+00  1.4769E+00  3.0277E+00
             1.0055E+01
 PARAMETER:  4.3975E-01 -3.7972E-02  6.8737E-01  2.3330E-01 -4.9268E-02  1.6753E+00  1.6184E+00  1.2286E+00  4.8994E-01  1.2078E+00
             2.4081E+00
 GRADIENT:   3.3171E+01 -3.1656E+01 -3.7792E+00 -4.9925E+01 -7.0634E+01  2.3601E+02  6.8472E+01  2.7255E+01  3.0457E+01  7.5251E+01
             6.2416E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1420.73179670923        NO. OF FUNC. EVALS.:  81
 CUMULATIVE NO. OF FUNC. EVALS.:      241
 NPARAMETR:  8.8915E-01  1.4187E+00  2.9791E+00  1.1560E+00  2.2249E+00  2.4748E+00  4.2332E+00  9.8901E-01  6.7673E-01  1.5521E+00
             8.1182E+00
 PARAMETER: -1.7491E-02  4.4975E-01  1.1916E+00  2.4500E-01  8.9972E-01  1.0062E+00  1.5430E+00  8.8949E-02 -2.9049E-01  5.3959E-01
             2.1941E+00
 GRADIENT:  -7.7649E+01  9.2681E+00 -4.9385E+01  1.3351E+02  8.5874E+01  6.1213E+01  2.3212E+01  1.7603E+00 -5.4385E+00  3.1169E+01
             3.1191E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1487.49274503384        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      314
 NPARAMETR:  1.0596E+00  1.8555E+00  4.0989E+00  5.9631E-01  2.1160E+00  2.1944E+00  3.2529E+00  1.1301E+00  8.1187E-01  8.7708E-01
             6.4778E+00
 PARAMETER:  1.5786E-01  7.1813E-01  1.5107E+00 -4.1700E-01  8.4954E-01  8.8589E-01  1.2795E+00  2.2231E-01 -1.0841E-01 -3.1156E-02
             1.9684E+00
 GRADIENT:  -1.0052E+01  6.1005E+00  6.9648E-01 -8.8659E+00 -4.4882E+00 -1.2005E+01  2.5884E-01  4.4199E-01  3.7472E+00  1.1732E+01
             8.4763E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1506.21441118236        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      388
 NPARAMETR:  1.0730E+00  1.8497E+00  5.0588E+00  6.8231E-01  2.2254E+00  2.2882E+00  3.5450E+00  5.7021E-01  4.2241E-01  3.7319E-01
             6.5956E+00
 PARAMETER:  1.7047E-01  7.1503E-01  1.7211E+00 -2.8227E-01  8.9992E-01  9.2777E-01  1.3655E+00 -4.6175E-01 -7.6177E-01 -8.8567E-01
             1.9864E+00
 GRADIENT:  -2.9428E+00  1.8991E+01 -1.0822E+00  2.4414E+00  1.7105E+01  9.9225E+00  2.8122E+01  1.1599E-01  1.3729E+00  1.2266E+00
             1.4433E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1525.97940046650        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      564
 NPARAMETR:  1.1289E+00  1.5197E+00  8.9163E+00  8.7881E-01  2.2871E+00  2.5850E+00  4.9306E+00  3.2824E-01  2.4909E-01  2.1045E-01
             6.7038E+00
 PARAMETER:  2.2122E-01  5.1848E-01  2.2879E+00 -2.9191E-02  9.2727E-01  1.0497E+00  1.6955E+00 -1.0140E+00 -1.2899E+00 -1.4585E+00
             2.0027E+00
 GRADIENT:  -2.5600E+00  1.8342E+00 -1.0396E+00  6.2363E+00  1.1050E+01  2.4666E+00 -4.0033E+00  2.4537E-02 -1.9594E+00  1.3321E-01
            -8.1304E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1529.22259224926        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      741
 NPARAMETR:  1.1247E+00  1.1797E+00  1.2310E+01  1.0479E+00  2.2295E+00  2.5698E+00  5.4922E+00  5.8328E-01  7.1132E-01  4.6386E-01
             6.6905E+00
 PARAMETER:  2.1756E-01  2.6528E-01  2.6104E+00  1.4677E-01  9.0179E-01  1.0438E+00  1.8033E+00 -4.3910E-01 -2.4064E-01 -6.6817E-01
             2.0007E+00
 GRADIENT:  -3.8305E+00  3.9342E-01 -3.3928E-02 -2.4272E+00  4.2241E-01  4.4464E-01  1.1382E+00  5.1458E-02 -1.4650E+00  1.7159E+00
            -1.5593E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1531.68787997315        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      918
 NPARAMETR:  1.1413E+00  9.2390E-01  1.7239E+01  1.3132E+00  2.2292E+00  2.5961E+00  5.9327E+00  4.3892E-01  1.3003E+00  3.2057E-01
             6.6393E+00
 PARAMETER:  2.3218E-01  2.0844E-02  2.9472E+00  3.7243E-01  9.0166E-01  1.0540E+00  1.8805E+00 -7.2343E-01  3.6263E-01 -1.0376E+00
             1.9930E+00
 GRADIENT:   1.4476E+00  5.4285E+00  4.0923E-01  8.1423E+00 -6.3675E-01  3.7153E+00 -2.5919E+00 -1.1991E-03 -4.3195E-01  6.8008E-01
            -1.0257E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1534.08979982298        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1083
 NPARAMETR:  1.1440E+00  6.9450E-01  1.7138E+01  1.4001E+00  2.2130E+00  2.5978E+00  6.8955E+00  3.3555E-01  1.3663E+00  5.3523E-02
             6.6677E+00
 PARAMETER:  2.3451E-01 -2.6456E-01  2.9413E+00  4.3653E-01  8.9435E-01  1.0547E+00  2.0309E+00 -9.9197E-01  4.1211E-01 -2.8276E+00
             1.9973E+00
 GRADIENT:   2.2083E+00  3.0805E+00 -4.8456E-01 -7.1372E+00  5.0773E+00  4.0787E+00  1.9536E+01 -5.7597E-03  1.7734E+00  1.4842E-02
             8.3509E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1534.55509680531        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1267
 NPARAMETR:  1.1448E+00  5.9655E-01  1.7932E+01  1.4441E+00  2.2003E+00  2.5878E+00  6.8956E+00  2.1285E+00  1.4200E+00  1.8281E-02
             6.6781E+00
 PARAMETER:  2.3524E-01 -4.1660E-01  2.9866E+00  4.6751E-01  8.8858E-01  1.0508E+00  2.0309E+00  8.5539E-01  4.5062E-01 -3.9019E+00
             1.9988E+00
 GRADIENT:   2.2614E+00 -8.7444E-02 -9.2964E-01 -4.5518E+00  4.2984E+00  2.7839E+00  1.1510E+01  1.1786E-02  1.9643E+00  1.9549E-03
             7.2286E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1534.74405225379        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1446             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1368E+00  5.8083E-01  1.9664E+01  1.4603E+00  2.2043E+00  2.5935E+00  7.4710E+00  2.3740E+00  1.4165E+00  1.0000E-02
             6.6605E+00
 PARAMETER:  2.2822E-01 -4.4330E-01  3.0788E+00  4.7863E-01  8.9042E-01  1.0530E+00  2.1110E+00  9.6459E-01  4.4822E-01 -4.6965E+00
             1.9962E+00
 GRADIENT:   2.7123E+01  9.4159E+00  4.6279E-02  2.2675E+01  7.3160E+00  6.8720E+01  3.3019E+02 -9.5273E-02  5.6617E+00  0.0000E+00
             3.9030E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1535.01819770933        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1607
 NPARAMETR:  1.1393E+00  5.3615E-01  2.0199E+01  1.4879E+00  2.2034E+00  2.5935E+00  7.2226E+00  2.3790E+00  1.4106E+00  1.0000E-02
             6.6580E+00
 PARAMETER:  2.3045E-01 -5.2334E-01  3.1056E+00  4.9736E-01  8.9000E-01  1.0530E+00  2.0772E+00  9.6670E-01  4.4403E-01 -4.6967E+00
             1.9958E+00
 GRADIENT:   9.7005E-01  4.4447E-01 -1.9531E-01 -6.7317E-01 -1.2108E+00  3.5769E+00  1.5362E+01 -6.1861E-02 -9.1737E-01  0.0000E+00
            -1.1537E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1535.17574635854        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1773             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1390E+00  4.9923E-01  2.1221E+01  1.5160E+00  2.2125E+00  2.5946E+00  7.4728E+00  2.9727E+00  1.4260E+00  1.0000E-02
             6.6547E+00
 PARAMETER:  2.3014E-01 -5.9468E-01  3.1550E+00  5.1604E-01  8.9413E-01  1.0534E+00  2.1113E+00  1.1895E+00  4.5486E-01 -4.6967E+00
             1.9953E+00
 GRADIENT:   2.7820E+01  8.9341E+00 -9.2062E-01  3.7565E+01  7.3071E+00  6.8899E+01  3.3881E+02  8.2261E-01  3.2007E+00  0.0000E+00
             3.4350E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1535.24444954530        NO. OF FUNC. EVALS.: 173
 CUMULATIVE NO. OF FUNC. EVALS.:     1946
 NPARAMETR:  1.1416E+00  4.8543E-01  2.2869E+01  1.5327E+00  2.2208E+00  2.5940E+00  7.4525E+00  2.7382E+00  1.4643E+00  1.0000E-02
             6.6669E+00
 PARAMETER:  2.3242E-01 -6.2271E-01  3.2298E+00  5.2706E-01  8.9787E-01  1.0532E+00  2.1085E+00  1.1073E+00  4.8140E-01 -4.6967E+00
             1.9972E+00
 GRADIENT:   1.4776E+00  3.1118E-01 -2.6502E-01  1.3434E+00 -1.0874E+00  3.5601E+00  1.7021E+01  1.1618E-02  5.3029E-01  0.0000E+00
             2.7486E+00

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1535.40563095125        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2131             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1306E+00  4.3220E-01  2.4444E+01  1.5453E+00  2.2301E+00  2.5946E+00  7.7953E+00  2.8252E+00  1.4700E+00  1.0000E-02
             6.6602E+00
 PARAMETER:  2.2273E-01 -7.3886E-01  3.2964E+00  5.3524E-01  9.0205E-01  1.0534E+00  2.1535E+00  1.1386E+00  4.8528E-01 -4.6967E+00
             1.9961E+00
 GRADIENT:   2.4697E+01  9.5001E+00  7.8735E-02  3.4006E+01  6.3170E+00  6.9065E+01  3.6856E+02 -2.1977E-02  5.9308E+00  0.0000E+00
             3.8864E+01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1535.45567181270        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2309
 NPARAMETR:  1.1404E+00  4.3133E-01  2.5357E+01  1.5615E+00  2.2340E+00  2.5960E+00  7.8930E+00  2.9977E+00  1.4652E+00  1.0000E-02
             6.6538E+00
 PARAMETER:  2.3136E-01 -7.4088E-01  3.3330E+00  5.4562E-01  9.0380E-01  1.0540E+00  2.1660E+00  1.1978E+00  4.8199E-01 -4.6967E+00
             1.9952E+00
 GRADIENT:   1.2983E+00  4.9461E-01 -2.1847E-01 -8.1169E-01 -6.7059E-01  3.7145E+00  2.4755E+01  3.1417E-02 -2.8844E-01  0.0000E+00
            -1.2495E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1535.48135878805        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2498             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1372E+00  4.1291E-01  2.6137E+01  1.5697E+00  2.2392E+00  2.5954E+00  7.9450E+00  3.0231E+00  1.4756E+00  1.0000E-02
             6.6561E+00
 PARAMETER:  2.2856E-01 -7.8451E-01  3.3633E+00  5.5092E-01  9.0610E-01  1.0537E+00  2.1725E+00  1.2063E+00  4.8910E-01 -4.6967E+00
             1.9955E+00
 GRADIENT:   2.7230E+01  1.0219E+01  1.0927E-01  3.9622E+01  5.5404E+00  6.8853E+01  3.7826E+02  4.9330E-02  5.2043E+00  0.0000E+00
             3.6044E+01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1535.49477903400        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2682             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1374E+00  4.0479E-01  2.6956E+01  1.5776E+00  2.2444E+00  2.5968E+00  7.9987E+00  3.0888E+00  1.4803E+00  1.0000E-02
             6.6580E+00
 PARAMETER:  2.2871E-01 -8.0438E-01  3.3942E+00  5.5589E-01  9.0844E-01  1.0543E+00  2.1793E+00  1.2278E+00  4.9223E-01 -4.6967E+00
             1.9958E+00
 GRADIENT:   2.7246E+01  1.0386E+01  1.2662E-01  4.0785E+01  5.6281E+00  6.9010E+01  3.8209E+02  5.4049E-02  5.2657E+00  0.0000E+00
             3.6547E+01

0ITERATION NO.:   92    OBJECTIVE VALUE:  -1535.49477903400        NO. OF FUNC. EVALS.:  64
 CUMULATIVE NO. OF FUNC. EVALS.:     2746
 NPARAMETR:  1.1358E+00  4.0675E-01  2.7886E+01  1.5813E+00  2.2446E+00  2.5938E+00  8.0633E+00  3.0669E+00  1.4782E+00  1.0000E-02
             6.6523E+00
 PARAMETER:  2.2871E-01 -8.0438E-01  3.3942E+00  5.5589E-01  9.0844E-01  1.0543E+00  2.1793E+00  1.2278E+00  4.9223E-01 -4.6967E+00
             1.9958E+00
 GRADIENT:   1.8749E-01 -4.6861E-02 -1.8086E-01 -5.7895E-01 -2.4465E-02  1.7794E-01 -7.1015E-01  1.2316E-02  6.6153E-02  0.0000E+00
             8.3066E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2746
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.5111E-03  6.0601E-02 -7.5303E-03 -8.8796E-02  4.6050E-05
 SE:             2.9138E-02  2.1779E-02  4.0645E-03  1.7206E-02  1.8304E-04
 N:                     100         100         100         100         100

 P VAL.:         8.4998E-01  5.3944E-03  6.3923E-02  2.4644E-07  8.0136E-01

 ETASHRINKSD(%)  2.3856E+00  2.7037E+01  8.6384E+01  4.2357E+01  9.9387E+01
 ETASHRINKVR(%)  4.7142E+00  4.6764E+01  9.8146E+01  6.6773E+01  9.9996E+01
 EBVSHRINKSD(%)  2.2707E+00  2.5860E+01  8.5497E+01  3.5705E+01  9.9380E+01
 EBVSHRINKVR(%)  4.4898E+00  4.5033E+01  9.7897E+01  5.8662E+01  9.9996E+01
 RELATIVEINF(%)  9.5437E+01  3.0227E+01  5.1522E-01  2.3014E+01  9.4425E-04
 EPSSHRINKSD(%)  8.6019E+00
 EPSSHRINKVR(%)  1.6464E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1535.4947790340002     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       118.59458073441056     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    93.36
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    17.67
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1535.495       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.14E+00  4.05E-01  2.70E+01  1.58E+00  2.24E+00  2.60E+00  8.00E+00  3.09E+00  1.48E+00  1.00E-02  6.66E+00
 


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
+        3.95E+01
 
 TH 2
+        2.01E+01  1.03E+01
 
 TH 3
+        1.34E-02  6.86E-03  4.75E-06
 
 TH 4
+        2.39E+01  1.22E+01  8.37E-03  1.48E+01
 
 TH 5
+       -4.22E+00 -2.15E+00 -1.47E-03 -2.60E+00  4.58E-01
 
 TH 6
+        4.13E+00  2.10E+00  1.36E-03  2.45E+00 -4.33E-01  4.40E-01
 
 TH 7
+        6.91E-01  3.50E-01  2.22E-04  4.02E-01 -7.11E-02  7.49E-02  1.29E-02
 
 TH 8
+       -4.46E-03 -2.33E-03 -1.90E-06 -3.18E-03  5.55E-04 -3.86E-04 -5.26E-05  1.28E-06
 
 TH 9
+       -3.80E+00 -1.95E+00 -1.40E-03 -2.43E+00  4.27E-01 -3.74E-01 -5.92E-02  6.46E-04  4.26E-01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.64E+00 -8.83E-01 -8.71E-04 -1.39E+00  2.40E-01 -1.05E-01 -7.66E-03  8.22E-04  3.37E-01  0.00E+00  5.94E-01
 
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
+        1.20E+02
 
 TH 2
+       -4.45E-01  6.78E+01
 
 TH 3
+        1.57E-02  9.36E-02  8.40E-03
 
 TH 4
+       -1.69E+00  3.08E+01 -8.61E-02  1.13E+02
 
 TH 5
+       -1.63E+00 -8.88E+00 -5.79E-01 -9.26E+00  7.61E+01
 
 TH 6
+        6.86E-01 -1.30E-01  4.04E-03  2.35E-01 -8.72E-01  2.67E+01
 
 TH 7
+        4.55E-02  5.90E+00 -3.12E-03 -4.40E+00  8.24E-01 -3.89E-02  1.58E+00
 
 TH 8
+       -4.22E-02 -3.60E-01 -2.57E-02  5.53E-01  5.26E-01 -3.13E-03 -3.53E-02  2.09E-01
 
 TH 9
+        4.51E-01 -2.31E+00 -4.42E-02 -2.34E+01  5.36E+00 -5.25E-01  7.36E-01  1.27E-02  2.45E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -4.39E+00 -2.33E+00 -8.30E-03 -8.16E+00  2.12E-01  1.36E+00  2.37E-01  8.53E-02  4.76E+00  0.00E+00  2.47E+01
 
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
+        1.22E+02
 
 TH 2
+        6.46E+01  6.62E+01
 
 TH 3
+        9.07E-03  5.45E-02  3.60E-03
 
 TH 4
+        5.41E+01  3.22E+01  4.99E-02  1.15E+02
 
 TH 5
+       -2.90E+00 -7.80E-01 -4.50E-01 -1.59E+01  8.07E+01
 
 TH 6
+        4.15E+01  2.67E+01 -2.17E-03 -8.83E+00  7.83E+00  4.55E+01
 
 TH 7
+        3.02E+00  6.67E+00 -7.39E-03 -4.51E+00  3.84E+00  4.06E+00  2.07E+00
 
 TH 8
+        1.58E-02 -1.39E-02 -1.92E-03  4.67E-02  1.23E-01 -2.63E-02  1.92E-03  6.85E-03
 
 TH 9
+       -6.39E+00 -1.16E+00 -2.16E-02 -2.22E+01  6.33E+00  3.82E+00  7.45E-01 -2.06E-02  1.80E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.13E+02 -4.83E+01 -5.40E-02 -1.80E+02  3.29E+01  2.01E+01  6.88E+00 -1.62E-01  8.60E+01  0.00E+00  1.21E+03
 
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
 #CPUT: Total CPU Time in Seconds,      111.111
Stop Time:
Wed Sep 29 08:42:25 CDT 2021
