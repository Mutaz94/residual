Sat Oct  2 01:10:00 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat56.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m56.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   38.6781957042418        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1250E+02  3.3150E+01  1.2774E+02 -1.1504E+02  7.7288E+01  2.6686E+01 -5.1069E+01 -5.6854E+01 -1.5040E+02 -8.0514E+01
            -2.9884E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1222.04704082379        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0719E+00  1.0114E+00  8.9941E-01  1.2031E+00  1.0017E+00  8.8283E-01  9.8967E-01  1.0289E+00  1.1048E+00  9.6171E-01
             4.8499E+00
 PARAMETER:  1.6941E-01  1.1135E-01 -6.0118E-03  2.8493E-01  1.0169E-01 -2.4620E-02  8.9615E-02  1.2852E-01  1.9970E-01  6.0961E-02
             1.6790E+00
 GRADIENT:   1.1256E+02 -7.5244E+00 -1.8036E+01  1.6245E+01 -2.2493E+00  3.3370E+00  1.2733E+01  8.0506E+00  2.8130E+01  1.8517E+01
             1.4690E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1238.94900868447        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0453E+00  8.4057E-01  5.1503E-01  1.2318E+00  5.8406E-01  9.0509E-01  4.1305E-01  5.3750E-01  1.0194E+00  5.4829E-01
             4.5539E+00
 PARAMETER:  1.4426E-01 -7.3670E-02 -5.6352E-01  3.0844E-01 -4.3775E-01  2.8452E-04 -7.8419E-01 -5.2083E-01  1.1919E-01 -5.0095E-01
             1.6160E+00
 GRADIENT:   4.3229E+01  3.9522E+01  2.4154E+01  4.4925E+01 -5.5453E+01  4.6926E+00  1.2173E+00  4.1072E+00  1.2674E+01  1.1951E+01
             1.1322E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1253.56117587880        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  9.8969E-01  7.1325E-01  3.6506E-01  1.1996E+00  4.6151E-01  9.0920E-01  3.6029E-01  3.2719E-01  9.3772E-01  2.9631E-01
             3.8156E+00
 PARAMETER:  8.9637E-02 -2.3793E-01 -9.0769E-01  2.8201E-01 -6.7325E-01  4.8137E-03 -9.2085E-01 -1.0172E+00  3.5693E-02 -1.1163E+00
             1.4391E+00
 GRADIENT:  -5.0746E+01  3.8506E+01  1.9559E+01  4.4745E+01 -2.6977E+01 -6.0917E+00 -1.2205E+00  6.2548E-01 -1.2982E+01  1.9691E+00
             3.7892E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1257.26792527297        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      410
 NPARAMETR:  1.0220E+00  6.0169E-01  3.8674E-01  1.2512E+00  4.4448E-01  9.2875E-01  6.0422E-01  1.4126E-01  9.7072E-01  1.9461E-01
             3.8426E+00
 PARAMETER:  1.2176E-01 -4.0802E-01 -8.4999E-01  3.2411E-01 -7.1085E-01  2.6086E-02 -4.0381E-01 -1.8572E+00  7.0280E-02 -1.5368E+00
             1.4461E+00
 GRADIENT:   8.7599E+00  9.6776E+00  7.7482E+00  5.2396E+00 -1.3038E+01  1.3802E+00 -4.0693E-01  3.1840E-02  1.4479E-01  4.9893E-01
            -1.2963E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1258.32314547247        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      585
 NPARAMETR:  1.0178E+00  4.7153E-01  2.6686E-01  1.2186E+00  3.2663E-01  9.4788E-01  7.9370E-01  2.7013E-02  1.0033E+00  7.9487E-02
             3.7521E+00
 PARAMETER:  1.1763E-01 -6.5177E-01 -1.2210E+00  2.9770E-01 -1.0189E+00  4.6469E-02 -1.3105E-01 -3.5115E+00  1.0331E-01 -2.4322E+00
             1.4223E+00
 GRADIENT:   4.0525E+00  1.2987E+00  3.8456E-01  1.0504E+01 -2.8154E+00  1.2723E+00 -6.5662E-01 -1.3473E-02  7.5464E-02 -2.0304E-01
            -4.3628E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1258.62247291298        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      760
 NPARAMETR:  1.0104E+00  5.4519E-01  2.3143E-01  1.1468E+00  3.1960E-01  9.4754E-01  8.6537E-01  3.2467E-02  1.0394E+00  8.7005E-02
             3.6782E+00
 PARAMETER:  1.1039E-01 -5.0662E-01 -1.3635E+00  2.3698E-01 -1.0407E+00  4.6111E-02 -4.4600E-02 -3.3275E+00  1.3866E-01 -2.3418E+00
             1.4024E+00
 GRADIENT:  -3.6402E+00  5.9785E+00  4.7914E+00  3.5463E+00 -1.0565E+01 -3.3877E-01 -7.2794E-02 -1.8843E-02 -5.1776E-01 -1.4094E-01
             1.8761E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1258.66200103504        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      938
 NPARAMETR:  1.0100E+00  5.4762E-01  2.2672E-01  1.1376E+00  3.1847E-01  9.4988E-01  8.5764E-01  2.7561E-02  1.0519E+00  8.9481E-02
             3.6541E+00
 PARAMETER:  1.0996E-01 -5.0218E-01 -1.3840E+00  2.2893E-01 -1.0442E+00  4.8585E-02 -5.3567E-02 -3.4914E+00  1.5062E-01 -2.3137E+00
             1.3959E+00
 GRADIENT:  -1.1882E+00 -3.9700E-01 -6.0123E-01  2.4636E-01  1.9081E+00  6.9912E-02 -2.9622E-03 -1.3709E-02  1.9179E-01 -1.4129E-01
            -3.1532E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1259.06338355601        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1122
 NPARAMETR:  1.0110E+00  5.1330E-01  2.1554E-01  1.1390E+00  3.0108E-01  9.5214E-01  7.4404E-01  1.0000E-02  1.0674E+00  2.9985E-01
             3.6592E+00
 PARAMETER:  1.1090E-01 -5.6690E-01 -1.4346E+00  2.3015E-01 -1.1004E+00  5.0962E-02 -1.9566E-01 -5.5354E+00  1.6521E-01 -1.1045E+00
             1.3972E+00
 GRADIENT:  -1.2583E+00 -2.7522E+00 -8.8808E+00  2.0932E+00  1.5649E+01 -4.0718E-01  7.7823E-01  0.0000E+00 -9.9959E-01  6.4799E-01
             1.1293E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1261.39590047985        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1301
 NPARAMETR:  1.0155E+00  2.7797E-01  1.6512E-01  1.1210E+00  2.0661E-01  9.7083E-01  7.6933E-01  1.0000E-02  1.2295E+00  6.5792E-01
             3.2836E+00
 PARAMETER:  1.1539E-01 -1.1802E+00 -1.7011E+00  2.1424E-01 -1.4769E+00  7.0394E-02 -1.6223E-01 -1.1568E+01  3.0661E-01 -3.1867E-01
             1.2889E+00
 GRADIENT:  -5.2597E+00  6.1619E+00  1.2095E+01  1.7102E+01 -2.2056E+01  3.1782E+00  1.5299E+00  0.0000E+00  4.7352E+00  3.2228E+00
             7.9278E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1263.22896224263        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1476
 NPARAMETR:  1.0155E+00  2.5898E-01  1.1835E-01  9.6951E-01  1.7428E-01  9.5865E-01  3.8010E-01  1.0000E-02  1.3523E+00  7.1545E-01
             3.1604E+00
 PARAMETER:  1.1541E-01 -1.2510E+00 -2.0341E+00  6.9041E-02 -1.6471E+00  5.7769E-02 -8.6733E-01 -1.4617E+01  4.0179E-01 -2.3484E-01
             1.2507E+00
 GRADIENT:   6.1152E+00 -2.7875E+00 -2.8872E+00 -8.0951E+00  5.2943E+00 -1.7541E+00  9.3252E-01  0.0000E+00 -2.3862E+00 -6.3955E-01
             2.8872E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1263.89814001539        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1651
 NPARAMETR:  1.0121E+00  2.8150E-01  1.2113E-01  9.8950E-01  1.7980E-01  9.6845E-01  1.0722E-01  1.0000E-02  1.3600E+00  7.1079E-01
             3.1519E+00
 PARAMETER:  1.1199E-01 -1.1676E+00 -2.0109E+00  8.9447E-02 -1.6159E+00  6.7946E-02 -2.1329E+00 -1.2661E+01  4.0749E-01 -2.4138E-01
             1.2480E+00
 GRADIENT:   2.3597E+00  5.3212E-01 -5.7114E-01 -2.9553E-01 -1.0366E+00  4.6950E-01  8.6784E-02  0.0000E+00 -5.9966E-01  3.4350E-02
             1.3643E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1263.94985807677        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1826
 NPARAMETR:  1.0110E+00  2.8228E-01  1.2279E-01  9.9497E-01  1.8109E-01  9.6751E-01  1.0413E-02  1.0000E-02  1.3580E+00  7.0923E-01
             3.1449E+00
 PARAMETER:  1.1092E-01 -1.1649E+00 -1.9973E+00  9.4958E-02 -1.6088E+00  6.6975E-02 -4.4647E+00 -1.1112E+01  4.0602E-01 -2.4357E-01
             1.2458E+00
 GRADIENT:   8.7369E-03  5.2030E-02  3.4506E-02  1.0557E-01 -1.7606E-01  1.1095E-01  7.7923E-04  0.0000E+00 -1.8199E-02 -5.3400E-02
            -2.2666E-02

0ITERATION NO.:   62    OBJECTIVE VALUE:  -1263.94994325271        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1883
 NPARAMETR:  1.0110E+00  2.8213E-01  1.2269E-01  9.9446E-01  1.8100E-01  9.6702E-01  1.0000E-02  1.0000E-02  1.3583E+00  7.0974E-01
             3.1450E+00
 PARAMETER:  1.1094E-01 -1.1654E+00 -1.9981E+00  9.4440E-02 -1.6092E+00  6.6469E-02 -4.9169E+00 -1.0862E+01  4.0625E-01 -2.4286E-01
             1.2458E+00
 GRADIENT:   5.8825E-02  6.5792E-03  1.2074E-03 -8.2230E-02  7.1360E-03 -4.7150E-02  0.0000E+00  0.0000E+00 -2.5568E-03  1.6438E-02
             5.3026E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1883
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.1917E-04 -2.5741E-05  2.6523E-04 -1.5909E-02  7.5879E-03
 SE:             2.8616E-02  8.6882E-05  1.6818E-04  2.4987E-02  2.4011E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8831E-01  7.6702E-01  1.1478E-01  5.2432E-01  7.5199E-01

 ETASHRINKSD(%)  4.1336E+00  9.9709E+01  9.9437E+01  1.6290E+01  1.9561E+01
 ETASHRINKVR(%)  8.0964E+00  9.9999E+01  9.9997E+01  2.9927E+01  3.5295E+01
 EBVSHRINKSD(%)  3.7314E+00  9.9651E+01  9.9451E+01  1.3228E+01  2.0419E+01
 EBVSHRINKVR(%)  7.3236E+00  9.9999E+01  9.9997E+01  2.4706E+01  3.6669E+01
 RELATIVEINF(%)  8.8574E+01  1.6818E-04  2.8690E-04  2.5083E+01  3.2097E+00
 EPSSHRINKSD(%)  3.1991E+01
 EPSSHRINKVR(%)  5.3748E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1263.9499432527148     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -528.79911668897660     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.09
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1263.950       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  2.82E-01  1.23E-01  9.94E-01  1.81E-01  9.67E-01  1.00E-02  1.00E-02  1.36E+00  7.10E-01  3.14E+00
 


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
 #CPUT: Total CPU Time in Seconds,       23.125
Stop Time:
Sat Oct  2 01:10:25 CDT 2021