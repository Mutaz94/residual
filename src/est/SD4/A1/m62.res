Sat Oct  2 00:08:16 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat62.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m62.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1315.04758923380        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9612E+02  3.1964E+01 -3.0175E+01  9.4319E+01  1.0234E+02  6.5851E+01 -8.5371E+00 -2.2702E-01 -3.5414E+01 -1.8140E+01
            -6.5771E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1497.32023373763        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0594E+00  9.8599E-01  1.0695E+00  1.0207E+00  9.5679E-01  9.9654E-01  9.9760E-01  9.4680E-01  1.1236E+00  9.5353E-01
             2.0088E+00
 PARAMETER:  1.5770E-01  8.5886E-02  1.6718E-01  1.2048E-01  5.5831E-02  9.6533E-02  9.7601E-02  4.5330E-02  2.1656E-01  5.2418E-02
             7.9756E-01
 GRADIENT:   2.3846E+02  1.3747E+01 -4.4981E-01  2.6892E+01  3.8192E-01  3.4997E+01  4.6680E+00  2.7251E+00  1.1557E+01 -2.8307E+00
             1.5686E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1499.47109485298        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0428E+00  9.1127E-01  9.3495E-01  1.0572E+00  8.7284E-01  9.2691E-01  8.4641E-01  5.5959E-01  1.1104E+00  9.8767E-01
             1.9701E+00
 PARAMETER:  1.4187E-01  7.0894E-03  3.2741E-02  1.5558E-01 -3.6006E-02  2.4097E-02 -6.6747E-02 -4.8054E-01  2.0469E-01  8.7594E-02
             7.7810E-01
 GRADIENT:   1.9339E+02  1.1650E+01 -6.3663E+00  3.9492E+01  2.6050E+00  1.1222E+01 -1.1536E+00  6.7656E-01  9.0199E+00  5.9403E+00
             4.7097E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1500.44492700600        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      294
 NPARAMETR:  1.0315E+00  8.2339E-01  1.1430E+00  1.1196E+00  9.2278E-01  9.2306E-01  9.2602E-01  8.4842E-01  1.0360E+00  9.6490E-01
             1.9949E+00
 PARAMETER:  1.3098E-01 -9.4328E-02  2.3368E-01  2.1300E-01  1.9640E-02  1.9939E-02  2.3142E-02 -6.4385E-02  1.3535E-01  6.4264E-02
             7.9059E-01
 GRADIENT:   8.6252E+00  5.8430E+00  1.4503E+00  2.6937E+00 -3.6058E+00  1.2389E+00 -2.6232E-01  6.2449E-01 -7.1992E-01 -2.6681E+00
             2.5373E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1501.68918573034        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      472
 NPARAMETR:  1.0245E+00  4.9787E-01  1.0759E+00  1.3141E+00  7.8879E-01  9.2321E-01  1.0783E+00  5.9782E-01  9.2022E-01  9.3637E-01
             1.9820E+00
 PARAMETER:  1.2424E-01 -5.9742E-01  1.7314E-01  3.7316E-01 -1.3725E-01  2.0100E-02  1.7541E-01 -4.1446E-01  1.6856E-02  3.4258E-02
             7.8411E-01
 GRADIENT:  -1.3317E+00  5.1944E+00  2.1156E+00  9.7878E+00 -6.4429E+00  2.0832E+00 -1.9336E-01 -5.1393E-02  4.2743E-01  1.2048E+00
            -2.7005E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1502.36777815753        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      647
 NPARAMETR:  1.0222E+00  2.7143E-01  1.1019E+00  1.4487E+00  7.3776E-01  9.1193E-01  1.2291E+00  6.2022E-01  8.4327E-01  8.9567E-01
             2.0170E+00
 PARAMETER:  1.2191E-01 -1.2040E+00  1.9705E-01  4.7065E-01 -2.0414E-01  7.8064E-03  3.0630E-01 -3.7767E-01 -7.0466E-02 -1.0186E-02
             8.0162E-01
 GRADIENT:   1.6568E+00  3.2280E+00  3.9010E+00  1.3636E+01 -7.6300E+00 -9.6059E-01 -1.4663E-01  7.9285E-02 -8.3044E-01 -8.2714E-01
             2.3879E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1502.73669147431        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      824
 NPARAMETR:  1.0186E+00  1.2388E-01  1.0816E+00  1.5268E+00  6.9681E-01  9.1132E-01  1.5069E+00  5.1636E-01  8.0160E-01  8.9769E-01
             2.0147E+00
 PARAMETER:  1.1844E-01 -1.9884E+00  1.7845E-01  5.2319E-01 -2.6124E-01  7.1367E-03  5.1003E-01 -5.6095E-01 -1.2114E-01 -7.9261E-03
             8.0047E-01
 GRADIENT:   5.8959E-01  1.0243E+00  2.9799E+00  8.1249E+00 -5.6566E+00 -3.1678E-01 -1.2235E-02 -8.4283E-02 -5.2142E-01  3.6260E-01
            -1.3859E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1502.84310057005        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      999
 NPARAMETR:  1.0169E+00  5.1959E-02  1.0789E+00  1.5636E+00  6.8169E-01  9.1025E-01  1.8610E+00  4.6734E-01  7.8115E-01  8.8978E-01
             2.0336E+00
 PARAMETER:  1.1677E-01 -2.8573E+00  1.7590E-01  5.4702E-01 -2.8318E-01  5.9694E-03  7.2113E-01 -6.6071E-01 -1.4699E-01 -1.6777E-02
             8.0979E-01
 GRADIENT:   3.5991E-01  2.0415E-01  1.1228E+00  1.2526E+00 -1.6469E+00 -9.3897E-02  3.9063E-03 -9.6910E-02 -3.6207E-02 -1.9900E-01
             1.0718E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1502.85076069708        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1174
 NPARAMETR:  1.0160E+00  3.1883E-02  1.0820E+00  1.5764E+00  6.7871E-01  9.1020E-01  2.0781E+00  4.6576E-01  7.7489E-01  8.9131E-01
             2.0321E+00
 PARAMETER:  1.1586E-01 -3.3457E+00  1.7881E-01  5.5511E-01 -2.8756E-01  5.9105E-03  8.3146E-01 -6.6408E-01 -1.5503E-01 -1.5058E-02
             8.0909E-01
 GRADIENT:  -8.1872E-01  1.4881E-01  9.9071E-01  3.5564E+00 -1.8788E+00  8.2554E-03  1.8762E-03 -1.1711E-01 -2.4925E-01  7.7753E-03
             3.8631E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1502.87160663609        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1353
 NPARAMETR:  1.0153E+00  1.0867E-02  1.1074E+00  1.5911E+00  6.8433E-01  9.1005E-01  2.5793E+00  5.6580E-01  7.6896E-01  8.9012E-01
             2.0224E+00
 PARAMETER:  1.1520E-01 -4.4220E+00  2.0201E-01  5.6441E-01 -2.7931E-01  5.7490E-03  1.0475E+00 -4.6952E-01 -1.6272E-01 -1.6398E-02
             8.0427E-01
 GRADIENT:  -9.3415E-01  4.2656E-02  3.6040E-01  2.7110E+00 -9.4383E-01  8.1549E-02  1.3588E-05 -7.2759E-02 -2.2475E-01  2.0473E-01
            -1.6034E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1502.88313907612        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1539             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0157E+00  1.0000E-02  1.1099E+00  1.5882E+00  6.8505E-01  9.0981E-01  2.5857E+00  5.9573E-01  7.6934E-01  8.8649E-01
             2.0202E+00
 PARAMETER:  1.1561E-01 -4.5631E+00  2.0423E-01  5.6260E-01 -2.7826E-01  5.4843E-03  1.0500E+00 -4.1797E-01 -1.6222E-01 -2.0490E-02
             8.0321E-01
 GRADIENT:   1.2091E+02  0.0000E+00  1.9305E+00  2.6128E+02  8.5591E+00  8.9486E+00  6.9039E-03  1.0864E-01  5.0745E+00  8.8233E-01
             6.5747E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1502.88330686283        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     1730
 NPARAMETR:  1.0157E+00  1.0000E-02  1.1092E+00  1.5881E+00  6.8468E-01  9.0982E-01  2.5728E+00  5.9771E-01  7.6948E-01  8.8627E-01
             2.0198E+00
 PARAMETER:  1.1557E-01 -4.5631E+00  2.0365E-01  5.6253E-01 -2.7880E-01  5.4923E-03  1.0450E+00 -4.1465E-01 -1.6205E-01 -2.0739E-02
             8.0299E-01
 GRADIENT:   4.6355E-01  0.0000E+00  4.3736E-01 -4.9677E+00 -3.1089E-01  3.2851E-02  5.4222E-05  1.3792E-02  3.9657E-02  1.1772E-01
             1.2560E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1502.88364855460        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:     1923             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0157E+00  1.0000E-02  1.1082E+00  1.5880E+00  6.8453E-01  9.0981E-01  2.6042E+00  5.9481E-01  7.6947E-01  8.8548E-01
             2.0193E+00
 PARAMETER:  1.1557E-01 -4.5631E+00  2.0272E-01  5.6248E-01 -2.7902E-01  5.4830E-03  1.0571E+00 -4.1951E-01 -1.6205E-01 -2.1630E-02
             8.0275E-01
 GRADIENT:   1.2091E+02  0.0000E+00  1.7487E+00  2.6141E+02  8.9022E+00  8.9459E+00  7.0693E-03  9.8927E-02  5.0799E+00  7.6834E-01
             6.3046E+00

0ITERATION NO.:   62    OBJECTIVE VALUE:  -1502.88364855460        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1981
 NPARAMETR:  1.0157E+00  1.0000E-02  1.1082E+00  1.5880E+00  6.8453E-01  9.0981E-01  2.6042E+00  5.9481E-01  7.6947E-01  8.8548E-01
             2.0193E+00
 PARAMETER:  1.1557E-01 -4.5631E+00  2.0272E-01  5.6248E-01 -2.7902E-01  5.4830E-03  1.0571E+00 -4.1951E-01 -1.6205E-01 -2.1630E-02
             8.0275E-01
 GRADIENT:   4.9867E-01  0.0000E+00  1.6198E-01 -4.9455E+00  2.2976E-01  2.2815E-02  7.7678E-05 -6.9074E-03  1.5798E-02 -3.3439E-02
            -1.1821E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1981
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.3235E-04 -7.1576E-04 -1.9566E-03 -9.0822E-03 -2.2795E-02
 SE:             2.9372E-02  4.3067E-04  8.8056E-03  2.7756E-02  2.0558E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8826E-01  9.6519E-02  8.2416E-01  7.4351E-01  2.6751E-01

 ETASHRINKSD(%)  1.5985E+00  9.8557E+01  7.0500E+01  7.0137E+00  3.1127E+01
 ETASHRINKVR(%)  3.1715E+00  9.9979E+01  9.1298E+01  1.3536E+01  5.2565E+01
 EBVSHRINKSD(%)  1.7861E+00  9.8626E+01  7.0402E+01  6.8070E+00  3.0571E+01
 EBVSHRINKVR(%)  3.5403E+00  9.9981E+01  9.1240E+01  1.3151E+01  5.1796E+01
 RELATIVEINF(%)  9.0337E+01  7.0330E-04  6.1599E-01  4.8639E+00  2.0539E+00
 EPSSHRINKSD(%)  3.5308E+01
 EPSSHRINKVR(%)  5.8150E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1502.8836485546037     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -767.73282199086555     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.78
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1502.884       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.00E-02  1.11E+00  1.59E+00  6.85E-01  9.10E-01  2.60E+00  5.95E-01  7.69E-01  8.85E-01  2.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.813
Stop Time:
Sat Oct  2 00:08:42 CDT 2021