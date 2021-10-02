Sat Oct  2 01:13:55 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat67.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m67.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   767.968500034067        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2972E+02 -2.8375E+01  1.1268E+02 -2.2191E+02  1.4333E+02  5.0053E+01 -7.4660E+01 -5.6323E+01 -2.1473E+02 -1.2024E+02
            -4.3265E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1170.09275837374        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0180E+00  1.0675E+00  9.3756E-01  1.2985E+00  1.0471E+00  6.9877E-01  9.6457E-01  9.9102E-01  1.0789E+00  9.0728E-01
             5.3376E+00
 PARAMETER:  1.1781E-01  1.6530E-01  3.5526E-02  3.6123E-01  1.4603E-01 -2.5843E-01  6.3924E-02  9.0983E-02  1.7596E-01  2.6977E-03
             1.7748E+00
 GRADIENT:  -9.3399E+00  6.8329E+00 -2.6637E+01  4.7503E+01  8.4075E+00 -4.5656E+01  7.5794E+00  7.0426E+00  1.5942E+01  1.3350E+01
             1.3915E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1185.60754493488        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0107E+00  1.2057E+00  6.2472E-01  1.1481E+00  7.8103E-01  7.9428E-01  4.4712E-01  3.6505E-01  1.4365E+00  4.6963E-01
             5.0022E+00
 PARAMETER:  1.1062E-01  2.8708E-01 -3.7045E-01  2.3809E-01 -1.4714E-01 -1.3031E-01 -7.0493E-01 -9.0771E-01  4.6220E-01 -6.5581E-01
             1.7099E+00
 GRADIENT:  -1.2525E+01  4.3106E+01  1.1191E+01  3.8357E+01 -3.9264E+01 -1.4968E+01  7.0171E-01  1.0653E+00  2.4792E+01  4.8683E+00
             1.0953E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1200.63063555367        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  9.9247E-01  7.1025E-01  6.1920E-01  1.3755E+00  5.9644E-01  8.4187E-01  7.9097E-01  1.0650E-01  1.0107E+00  2.4151E-01
             4.2180E+00
 PARAMETER:  9.2442E-02 -2.4214E-01 -3.7933E-01  4.1882E-01 -4.1678E-01 -7.2124E-02 -1.3449E-01 -2.1396E+00  1.1064E-01 -1.3209E+00
             1.5394E+00
 GRADIENT:  -7.2514E+00  2.7096E+01  2.2143E+01  3.4201E+01 -3.3094E+01 -3.5075E+00 -1.2422E+00  8.5384E-02 -3.4417E+00  5.7039E-01
            -1.6459E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1202.49593882765        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      345
 NPARAMETR:  9.9518E-01  5.6321E-01  3.8072E-01  1.3633E+00  4.0632E-01  8.3250E-01  8.8413E-01  4.9900E-02  1.0432E+00  9.3182E-02
             4.1881E+00
 PARAMETER:  9.5173E-02 -4.7410E-01 -8.6569E-01  4.0991E-01 -8.0062E-01 -8.3326E-02 -2.3155E-02 -2.8977E+00  1.4231E-01 -2.2732E+00
             1.5323E+00
 GRADIENT:  -1.9745E+01  1.0560E+01  3.2942E-01  1.8501E+01 -2.2483E+00 -1.3463E+01 -3.8133E-01 -1.3745E-02 -2.8880E+00 -7.3746E-02
            -1.7149E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1204.62985918097        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      520
 NPARAMETR:  1.0005E+00  4.3409E-01  2.7698E-01  1.3227E+00  3.0770E-01  8.8159E-01  8.9334E-01  2.2736E-02  1.1210E+00  3.8754E-02
             4.2041E+00
 PARAMETER:  1.0055E-01 -7.3449E-01 -1.1838E+00  3.7964E-01 -1.0786E+00 -2.6029E-02 -1.2783E-02 -3.6838E+00  2.1424E-01 -3.1505E+00
             1.5361E+00
 GRADIENT:  -3.1702E+00  1.1225E+00  3.4468E+00 -1.4142E+00 -4.6118E+00 -3.6731E-01 -3.6414E-01 -7.8032E-03  1.1620E+00 -5.3132E-02
            -4.0512E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1205.15949229194        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      659
 NPARAMETR:  9.9719E-01  4.3036E-01  2.7545E-01  1.3175E+00  3.0472E-01  8.7999E-01  8.8115E-01  2.9649E-02  1.1126E+00  2.5479E-01
             4.1250E+00
 PARAMETER:  9.7188E-02 -7.4313E-01 -1.1893E+00  3.7572E-01 -1.0884E+00 -2.7842E-02 -2.6528E-02 -3.4183E+00  2.0670E-01 -1.2673E+00
             1.5171E+00
 GRADIENT:   5.1249E+00  2.0551E+00  7.6688E+00  7.1388E+00  2.9012E+01 -1.8916E-01  4.9252E-01 -3.5692E-03  2.6366E-01 -7.4028E-02
             8.6113E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1205.29258814118        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      836
 NPARAMETR:  1.0021E+00  4.1961E-01  2.7428E-01  1.3282E+00  3.0090E-01  8.8545E-01  7.7536E-01  3.0974E-02  1.1272E+00  2.8863E-01
             4.1388E+00
 PARAMETER:  1.0208E-01 -7.6844E-01 -1.1936E+00  3.8382E-01 -1.1010E+00 -2.1662E-02 -1.5443E-01 -3.3746E+00  2.1974E-01 -1.1426E+00
             1.5204E+00
 GRADIENT:  -1.4896E+00  7.8718E-01  1.4168E+00 -2.0229E-01  8.9200E-01  4.7270E-02 -4.2994E-01 -3.4813E-03  3.0731E-01 -1.2030E-01
            -4.6539E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1205.41629855725        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1012
 NPARAMETR:  1.0031E+00  3.7204E-01  2.6538E-01  1.3352E+00  2.8487E-01  8.8716E-01  8.5565E-01  3.7172E-02  1.1357E+00  3.1296E-01
             4.1218E+00
 PARAMETER:  1.0306E-01 -8.8876E-01 -1.2266E+00  3.8905E-01 -1.1557E+00 -1.9732E-02 -5.5890E-02 -3.1922E+00  2.2722E-01 -1.0617E+00
             1.5163E+00
 GRADIENT:  -1.8829E-01  2.3296E-01 -1.9718E-01  1.2367E-01 -4.3238E-01 -4.9961E-03 -1.5833E-02 -4.2453E-03  5.5368E-02  4.4515E-03
             8.3804E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1205.67881941187        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1193
 NPARAMETR:  9.9966E-01  2.6300E-01  3.0756E-01  1.4162E+00  2.8976E-01  8.7486E-01  1.3282E+00  3.4683E-01  1.1107E+00  2.7611E-01
             4.1107E+00
 PARAMETER:  9.9661E-02 -1.2356E+00 -1.0791E+00  4.4801E-01 -1.1387E+00 -3.3688E-02  3.8380E-01 -9.5891E-01  2.0498E-01 -1.1870E+00
             1.5136E+00
 GRADIENT:  -6.4326E+00  5.0700E+00  2.0974E+01  4.0717E+00 -3.3015E+01 -1.1342E+00 -4.4861E-01  1.6518E-01  3.6231E+00  1.7202E-01
            -9.4809E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1207.28243928103        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1371
 NPARAMETR:  9.8909E-01  1.8126E-01  4.2222E-01  1.5327E+00  3.6251E-01  8.5211E-01  2.6211E+00  6.4466E-02  9.6686E-01  1.0769E-01
             4.3008E+00
 PARAMETER:  8.9034E-02 -1.6078E+00 -7.6222E-01  5.2703E-01 -9.1471E-01 -6.0035E-02  1.0636E+00 -2.6416E+00  6.6299E-02 -2.1285E+00
             1.5588E+00
 GRADIENT:  -9.9593E+00  1.8479E+00  7.0813E+00 -2.6277E+00 -6.2853E+00 -1.2813E+00 -1.0420E-02  3.8257E-02  2.3768E+00  9.6331E-03
             1.0181E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1208.23197215083        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1546
 NPARAMETR:  9.8465E-01  7.0195E-02  3.7436E-01  1.5422E+00  3.2255E-01  8.5722E-01  5.2230E+00  1.0000E-02  9.6715E-01  8.8144E-02
             4.2404E+00
 PARAMETER:  8.4534E-02 -2.5565E+00 -8.8254E-01  5.3319E-01 -1.0315E+00 -5.4064E-02  1.7531E+00 -7.1366E+00  6.6596E-02 -2.3288E+00
             1.5447E+00
 GRADIENT:  -4.6546E+00  4.1575E-01  3.4683E+00  2.0362E+00 -6.5437E+00 -1.0174E+00 -5.7396E-02  0.0000E+00 -1.3955E-01 -6.2036E-02
             8.7037E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1208.39681753724        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1721
 NPARAMETR:  9.8219E-01  1.5307E-02  3.8793E-01  1.5731E+00  3.2765E-01  8.5811E-01  1.1440E+01  1.0000E-02  9.5080E-01  4.5678E-02
             4.2399E+00
 PARAMETER:  8.2026E-02 -4.0795E+00 -8.4692E-01  5.5307E-01 -1.0158E+00 -5.3017E-02  2.5371E+00 -1.5803E+01  4.9550E-02 -2.9861E+00
             1.5445E+00
 GRADIENT:  -1.1685E-01  4.6911E-02  8.3563E-01  1.3209E+00 -1.4645E+00  3.4885E-02 -1.1140E-02  0.0000E+00 -1.8562E-01 -1.7243E-02
            -5.0194E-01

0ITERATION NO.:   63    OBJECTIVE VALUE:  -1208.40824029308        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1814
 NPARAMETR:  9.8154E-01  1.0000E-02  3.8615E-01  1.5722E+00  3.2622E-01  8.5711E-01  1.4193E+01  1.0000E-02  9.5167E-01  3.8525E-02
             4.2432E+00
 PARAMETER:  8.1368E-02 -4.5482E+00 -8.5154E-01  5.5246E-01 -1.0202E+00 -5.4194E-02  2.7527E+00 -1.8605E+01  5.0462E-02 -3.1564E+00
             1.5453E+00
 GRADIENT:  -7.9836E-01  7.0978E-04  4.5630E-01 -1.3248E-01 -8.0974E-01 -2.9285E-01 -7.2352E-03  0.0000E+00 -6.2015E-02 -1.2070E-02
             4.1204E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1814
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.4175E-04 -4.5599E-04  1.4454E-04 -1.9751E-02  2.0439E-04
 SE:             2.7694E-02  1.5893E-03  2.1336E-04  2.4700E-02  1.1364E-03
 N:                     100         100         100         100         100

 P VAL.:         9.8727E-01  7.7419E-01  4.9813E-01  4.2392E-01  8.5727E-01

 ETASHRINKSD(%)  7.2215E+00  9.4675E+01  9.9285E+01  1.7253E+01  9.6193E+01
 ETASHRINKVR(%)  1.3921E+01  9.9716E+01  9.9995E+01  3.1529E+01  9.9855E+01
 EBVSHRINKSD(%)  6.8070E+00  9.4820E+01  9.9262E+01  1.6957E+01  9.6240E+01
 EBVSHRINKVR(%)  1.3151E+01  9.9732E+01  9.9995E+01  3.1038E+01  9.9859E+01
 RELATIVEINF(%)  5.7550E+01  1.9805E-02  1.6265E-04  9.0041E+00  3.6312E-03
 EPSSHRINKSD(%)  1.9471E+01
 EPSSHRINKVR(%)  3.5150E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1208.4082402930828     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -473.25741372934465     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1208.408       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.82E-01  1.00E-02  3.86E-01  1.57E+00  3.26E-01  8.57E-01  1.42E+01  1.00E-02  9.52E-01  3.85E-02  4.24E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.034
Stop Time:
Sat Oct  2 01:14:21 CDT 2021
