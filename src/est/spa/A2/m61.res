Sat Sep 18 09:57:45 CDT 2021
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
$DATA ../../../../data/spa/A2/dat61.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m61.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -784.746706374678        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.5565E+01  5.0800E+01  4.3990E+01  4.8530E+00  1.7443E+02  1.9169E+01 -5.0915E+01 -1.8181E+01 -1.1226E+02 -1.2494E+02
            -1.4892E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1352.38670953330        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0262E+00  8.3345E-01  8.8869E-01  1.1361E+00  8.0106E-01  8.7235E-01  1.0440E+00  9.3811E-01  1.2813E+00  1.0680E+00
             2.9283E+00
 PARAMETER:  1.2583E-01 -8.2176E-02 -1.8003E-02  2.2759E-01 -1.2182E-01 -3.6564E-02  1.4301E-01  3.6108E-02  3.4791E-01  1.6575E-01
             1.1744E+00
 GRADIENT:  -1.3317E+01  1.3117E+01 -8.7567E-01  2.0340E+01  7.7151E+00 -2.2196E+01  3.1205E+00  9.2112E+00  1.6785E+01  9.4932E+00
             3.7395E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1368.09021114419        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0115E+00  4.0368E-01  3.6272E-01  1.3562E+00  3.3540E-01  9.2177E-01  9.6233E-01  3.7019E-01  1.4055E+00  6.2484E-01
             2.5828E+00
 PARAMETER:  1.1145E-01 -8.0712E-01 -9.1413E-01  4.0472E-01 -9.9244E-01  1.8540E-02  6.1601E-02 -8.9373E-01  4.4040E-01 -3.7027E-01
             1.0489E+00
 GRADIENT:  -6.6228E+01  6.2041E+01  1.0780E+02  1.3160E+02 -1.7731E+02 -1.3643E+01 -5.1310E-01  7.9475E-01  4.4311E+01  4.8652E+00
             4.0425E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1393.04153789711        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.0363E+00  4.2883E-01  2.3790E-01  1.1018E+00  2.8452E-01  9.7394E-01  1.0325E+00  3.8421E-02  1.1438E+00  5.2702E-01
             2.4039E+00
 PARAMETER:  1.3565E-01 -7.4670E-01 -1.3359E+00  1.9692E-01 -1.1569E+00  7.3595E-02  1.3194E-01 -3.1592E+00  2.3438E-01 -5.4052E-01
             9.7708E-01
 GRADIENT:   6.9072E+00  1.6533E+01  2.0154E+01  2.9705E+01 -3.8052E+01  3.3722E+00 -9.6282E-01 -1.5767E-02 -1.0742E+01  1.8320E+00
            -1.8386E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1394.15506876703        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  1.0274E+00  4.7494E-01  1.9085E-01  1.0022E+00  2.6971E-01  9.6935E-01  9.2231E-01  1.1165E-02  1.2573E+00  4.6815E-01
             2.4514E+00
 PARAMETER:  1.2704E-01 -6.4456E-01 -1.5563E+00  1.0223E-01 -1.2104E+00  6.8873E-02  1.9122E-02 -4.3950E+00  3.2895E-01 -6.5896E-01
             9.9666E-01
 GRADIENT:   4.5153E-01  2.7782E-01  5.0166E+00 -5.4698E+00 -8.1396E+00 -5.2653E-01  3.8704E-01 -1.5178E-03  1.6350E+00 -1.2505E-01
             3.4185E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1394.48800607564        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      376
 NPARAMETR:  1.0254E+00  4.8999E-01  1.9098E-01  1.0016E+00  2.7529E-01  9.7072E-01  9.1555E-01  1.0293E-02  1.2507E+00  4.6162E-01
             2.4377E+00
 PARAMETER:  1.2511E-01 -6.1336E-01 -1.5556E+00  1.0163E-01 -1.1899E+00  7.0279E-02  1.1768E-02 -4.4763E+00  3.2371E-01 -6.7302E-01
             9.9107E-01
 GRADIENT:  -1.0508E+00 -6.8103E+00 -5.3988E+00 -8.8826E-01  1.4542E+01 -7.5934E-02  1.9589E-02 -1.2582E-03  1.3538E-02  8.7710E-01
             6.0160E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1394.49781951072        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      447
 NPARAMETR:  1.0256E+00  4.9562E-01  1.8933E-01  9.9858E-01  2.7480E-01  9.7151E-01  9.1483E-01  1.0517E-02  1.2541E+00  4.5339E-01
             2.4368E+00
 PARAMETER:  1.2526E-01 -6.0194E-01 -1.5642E+00  9.8579E-02 -1.1917E+00  7.1097E-02  1.0981E-02 -4.4548E+00  3.2640E-01 -6.9099E-01
             9.9067E-01
 GRADIENT:  -1.1805E-01 -6.5456E-01 -5.5134E-01 -1.3126E-01  1.3876E+00  3.1949E-02 -2.6955E-02 -1.4324E-03  2.6681E-02  2.0203E-01
             1.0430E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1395.17255945355        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      607
 NPARAMETR:  1.0297E+00  5.2740E-01  2.0770E-01  1.0165E+00  2.9556E-01  9.7299E-01  9.8387E-01  1.5527E-02  1.2282E+00  4.0740E-01
             2.4650E+00
 PARAMETER:  1.2928E-01 -5.3980E-01 -1.4717E+00  1.1636E-01 -1.1189E+00  7.2620E-02  8.3737E-02 -4.0652E+00  3.0554E-01 -7.9796E-01
             1.0022E+00
 GRADIENT:   1.0116E-01 -9.5104E-01 -1.2107E+00  2.5031E+00  2.3205E+00  1.2693E+00 -4.8908E-02 -3.1610E-03  1.1179E+00  1.9716E-01
             1.4245E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1395.18351618924        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      782
 NPARAMETR:  1.0294E+00  5.3152E-01  2.0670E-01  1.0119E+00  2.9596E-01  9.6969E-01  9.8723E-01  1.5288E-02  1.2242E+00  3.9964E-01
             2.4652E+00
 PARAMETER:  1.2895E-01 -5.3202E-01 -1.4765E+00  1.1181E-01 -1.1175E+00  6.9224E-02  8.7152E-02 -4.0807E+00  3.0229E-01 -8.1719E-01
             1.0023E+00
 GRADIENT:  -1.6650E-03  1.0983E-02  2.1930E-02  3.5029E-02 -3.5399E-02  1.0569E-02 -5.9249E-03 -3.2153E-03  7.0570E-03 -6.7737E-03
             1.7455E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1398.12414703683        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:      880
 NPARAMETR:  1.0232E+00  5.2806E-01  2.0152E-01  1.0038E+00  2.9039E-01  9.6327E-01  9.7799E-01  1.0068E+00  1.2084E+00  2.3480E-01
             2.3502E+00
 PARAMETER:  1.2298E-01 -5.3855E-01 -1.5019E+00  1.0382E-01 -1.1365E+00  6.2573E-02  7.7742E-02  1.0679E-01  2.8932E-01 -1.3490E+00
             9.5451E-01
 GRADIENT:  -1.8854E+00 -4.2357E+00  4.8693E+00  3.8876E+00  1.7013E+01 -3.8331E-01 -6.6061E-01  3.0913E+00 -7.9382E-01  1.5999E+00
             1.3949E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1398.48601458870        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      950
 NPARAMETR:  1.0226E+00  5.2759E-01  1.9122E-01  9.8879E-01  2.8431E-01  9.6698E-01  1.0374E+00  9.7667E-01  1.2194E+00  1.5542E-01
             2.3411E+00
 PARAMETER:  1.2235E-01 -5.3943E-01 -1.5543E+00  8.8723E-02 -1.1577E+00  6.6426E-02  1.3669E-01  7.6388E-02  2.9840E-01 -1.7616E+00
             9.5063E-01
 GRADIENT:  -4.5423E-01 -1.0592E+00  2.9330E+00  1.1896E+00 -8.8909E-01 -2.9758E-02  1.2791E+00  2.2021E-01 -3.9382E-02  2.2081E-01
            -3.2500E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1398.49496608459        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:     1020
 NPARAMETR:  1.0219E+00  5.3401E-01  1.8689E-01  9.8082E-01  2.8356E-01  9.6752E-01  1.0127E+00  9.9186E-01  1.2285E+00  1.3838E-01
             2.3399E+00
 PARAMETER:  1.2166E-01 -5.2734E-01 -1.5772E+00  8.0636E-02 -1.1603E+00  6.6977E-02  1.1257E-01  9.1829E-02  3.0577E-01 -1.8778E+00
             9.5010E-01
 GRADIENT:   2.0777E-01 -1.5742E+00  9.9136E-01  7.3808E-01 -2.4230E+00  2.6466E-02  2.6009E-01  1.7800E-02 -1.0818E-01  5.4520E-02
             4.8526E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1398.65570274366        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:     1095
 NPARAMETR:  1.0209E+00  5.4617E-01  1.8634E-01  9.7644E-01  2.8624E-01  9.6677E-01  1.0054E+00  1.0051E+00  1.2284E+00  1.3104E-01
             2.3369E+00
 PARAMETER:  1.2072E-01 -5.0482E-01 -1.5802E+00  7.6153E-02 -1.1509E+00  6.6203E-02  1.0537E-01  1.0504E-01  3.0568E-01 -1.9323E+00
             9.4881E-01
 GRADIENT:  -2.5867E-01  1.4196E+00  1.4785E+00  6.2331E-01 -1.0719E+00 -2.7323E-02  8.4768E-01  3.2807E-01 -2.1080E-01  1.6944E-01
            -2.3292E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1398.89601604307        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1275
 NPARAMETR:  1.0228E+00  5.7238E-01  1.8938E-01  9.7157E-01  2.9550E-01  9.6590E-01  9.7479E-01  1.0080E+00  1.2290E+00  9.2364E-02
             2.3605E+00
 PARAMETER:  1.2254E-01 -4.5796E-01 -1.5640E+00  7.1157E-02 -1.1191E+00  6.5307E-02  7.4469E-02  1.0796E-01  3.0623E-01 -2.2820E+00
             9.5885E-01
 GRADIENT:  -1.6765E+00 -4.9651E-01 -1.0846E+00 -1.8246E+00  4.4349E+00 -8.5283E-02 -2.5309E-02  1.7585E-01  3.9439E-01  1.3470E-01
             9.2542E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1398.96626324106        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1450
 NPARAMETR:  1.0242E+00  5.6551E-01  1.9097E-01  9.7674E-01  2.9448E-01  9.6664E-01  9.9463E-01  1.0109E+00  1.2231E+00  1.5220E-02
             2.3569E+00
 PARAMETER:  1.2393E-01 -4.7003E-01 -1.5557E+00  7.6465E-02 -1.1225E+00  6.6073E-02  9.4620E-02  1.1088E-01  3.0142E-01 -4.0851E+00
             9.5736E-01
 GRADIENT:   8.6199E-02 -1.1515E-01  3.3852E-02 -2.1737E-01 -1.8679E-01  5.2165E-02 -4.7137E-02 -6.3534E-02  1.5721E-02  2.2461E-03
            -1.8926E-01

0ITERATION NO.:   74    OBJECTIVE VALUE:  -1398.96709031974        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:     1577
 NPARAMETR:  1.0242E+00  5.6595E-01  1.9102E-01  9.7685E-01  2.9463E-01  9.6646E-01  9.9454E-01  1.0123E+00  1.2229E+00  1.0000E-02
             2.3578E+00
 PARAMETER:  1.2389E-01 -4.6925E-01 -1.5554E+00  7.6579E-02 -1.1221E+00  6.5884E-02  9.4529E-02  1.1225E-01  3.0122E-01 -4.8799E+00
             9.5773E-01
 GRADIENT:   7.0705E-03 -8.9035E-04 -2.4740E-04  4.2747E-03  2.0008E-03  7.5115E-04  7.9881E-04  1.8557E-03 -6.0967E-04  0.0000E+00
             8.7173E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1577
 NO. OF SIG. DIGITS IN FINAL EST.:  3.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.3586E-04  2.9464E-03 -7.3737E-03 -8.0668E-03  2.9355E-04
 SE:             2.9266E-02  2.0454E-02  1.6088E-02  2.6715E-02  3.7584E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9357E-01  8.8546E-01  6.4671E-01  7.6269E-01  4.3477E-01

 ETASHRINKSD(%)  1.9566E+00  3.1477E+01  4.6103E+01  1.0501E+01  9.8741E+01
 ETASHRINKVR(%)  3.8750E+00  5.3046E+01  7.0951E+01  1.9899E+01  9.9984E+01
 EBVSHRINKSD(%)  2.1642E+00  3.1720E+01  4.5682E+01  9.6670E+00  9.8769E+01
 EBVSHRINKVR(%)  4.2817E+00  5.3379E+01  7.0496E+01  1.8399E+01  9.9985E+01
 RELATIVEINF(%)  9.1970E+01  2.9661E+00  4.5395E+00  4.0230E+01  6.6269E-04
 EPSSHRINKSD(%)  3.7319E+01
 EPSSHRINKVR(%)  6.0711E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1398.9670903197409     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -663.81626375600274     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.71
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.33
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1398.967       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  5.66E-01  1.91E-01  9.77E-01  2.95E-01  9.66E-01  9.95E-01  1.01E+00  1.22E+00  1.00E-02  2.36E+00
 


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
+        5.77E+00
 
 TH 2
+       -9.15E+01  1.54E+03
 
 TH 3
+       -2.15E+02  3.07E+03  9.27E+03
 
 TH 4
+        4.21E+00  8.00E+01 -7.28E+02  2.54E+02
 
 TH 5
+        3.83E+02 -6.39E+03 -1.31E+04 -2.45E+02  2.66E+04
 
 TH 6
+        8.08E-01 -1.99E+01 -2.42E+00 -1.16E+01  7.91E+01  7.01E-01
 
 TH 7
+        9.66E-01 -1.01E+01 -5.63E+01  9.67E+00  4.54E+01 -2.98E-01  4.81E-01
 
 TH 8
+        1.47E+00 -2.45E+01 -5.05E+01 -8.13E-01  1.02E+02  2.98E-01  1.79E-01  3.90E-01
 
 TH 9
+        1.30E+00 -3.86E+01  2.20E+01 -2.99E+01  1.50E+02  1.67E+00 -8.84E-01  5.63E-01  4.08E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        3.18E-01 -4.05E-01 -2.99E+01  8.18E+00  4.55E+00 -3.40E-01  3.37E-01  2.15E-02 -9.04E-01  0.00E+00  2.69E-01
 
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
+        1.09E+03
 
 TH 2
+       -2.11E+01  1.66E+03
 
 TH 3
+       -2.45E+02  2.74E+03  8.91E+03
 
 TH 4
+       -3.37E+01  2.04E+02 -7.31E+02  6.39E+02
 
 TH 5
+        2.50E+02 -5.38E+03 -1.13E+04 -6.51E+01  2.31E+04
 
 TH 6
+        4.40E-01 -8.00E+00  1.20E+01 -8.77E+00  6.78E+01  1.94E+02
 
 TH 7
+       -2.99E-01  3.42E+01 -5.99E+01 -5.44E+00  4.90E+01  4.87E-01  4.63E+01
 
 TH 8
+        1.62E+00 -1.90E+01 -4.41E+01  7.11E-01  8.83E+01  2.49E+00  9.18E+00  2.09E+01
 
 TH 9
+        6.74E+00 -2.22E+01  4.72E+01 -1.36E+00  1.34E+02  2.94E+00  1.30E+01  5.16E-01  8.36E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.51E+01 -5.88E+00 -4.49E+01 -6.96E+00 -3.50E+00  6.48E-01  8.65E+00  1.01E+01  4.62E+00  0.00E+00  4.53E+01
 
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
+        1.09E+03
 
 TH 2
+       -3.19E+02  1.64E+03
 
 TH 3
+       -5.98E+02  2.27E+03  8.79E+03
 
 TH 4
+       -2.50E+02  5.82E+02 -3.29E+02  6.36E+02
 
 TH 5
+        1.03E+03 -4.87E+03 -1.02E+04 -1.07E+03  1.90E+04
 
 TH 6
+        6.75E+01 -5.24E+01 -2.76E+02 -3.63E+01  4.84E+02  2.46E+02
 
 TH 7
+       -3.34E+00  1.98E+01 -1.97E+01 -2.02E+01  8.79E+01  1.45E+01  3.94E+01
 
 TH 8
+        5.79E+01 -2.79E+01 -1.31E+02 -2.01E+01  1.70E+02  3.71E+01  8.21E+00  2.07E+01
 
 TH 9
+        1.02E+02 -7.95E+01  4.00E+02 -1.46E+02 -4.99E+01  1.11E+01  1.11E+01  1.87E+01  1.59E+02
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        1.30E+02 -9.71E+01  2.69E+02 -1.80E+02 -2.04E+01  3.16E+01  1.31E+01  2.55E+01  1.20E+02  0.00E+00  1.35E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       23.105
Stop Time:
Sat Sep 18 09:58:10 CDT 2021