Fri Oct  1 08:32:47 CDT 2021
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
$DATA ../../../../data/SD2/B/dat70.csv ignore=@
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
Current Date:        1 OCT 2021
Days until program expires : 198
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m70.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2116.71355066043        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8901E+02  2.6500E+01 -8.2069E+00  5.5194E+01  1.2387E+01  4.8023E+01  2.8821E+00  4.7590E+00  5.1573E-02  2.5097E+01
            -5.1822E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2122.50861934239        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0354E+00  9.6663E-01  1.0625E+00  1.0365E+00  9.9467E-01  1.0051E+00  9.9700E-01  9.6698E-01  1.0502E+00  7.9282E-01
             1.0578E+00
 PARAMETER:  1.3482E-01  6.6060E-02  1.6061E-01  1.3585E-01  9.4655E-02  1.0512E-01  9.6994E-02  6.6425E-02  1.4895E-01 -1.3215E-01
             1.5615E-01
 GRADIENT:   6.2434E+00  2.7014E+00  1.2385E+01 -8.9579E+00  9.7934E+00  4.3521E-01  5.4315E-01 -5.3449E+00  4.8020E+00 -4.3462E+00
            -1.1978E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2123.53704605446        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0388E+00  7.4868E-01  9.7265E-01  1.1885E+00  8.3494E-01  1.0041E+00  1.2094E+00  8.9643E-01  9.2904E-01  6.6756E-01
             1.0552E+00
 PARAMETER:  1.3802E-01 -1.8944E-01  7.2272E-02  2.7271E-01 -8.0390E-02  1.0412E-01  2.9013E-01 -9.3396E-03  2.6393E-02 -3.0412E-01
             1.5372E-01
 GRADIENT:   1.6493E+01  2.7077E+01  2.3454E+01  3.3754E+01 -4.3941E+01  3.3540E-01 -2.8109E+00 -2.0430E+00  1.7486E+00 -4.0764E+00
            -1.2123E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2124.83272309839        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      547
 NPARAMETR:  1.0300E+00  7.2298E-01  9.8472E-01  1.1815E+00  8.5623E-01  1.0014E+00  1.3084E+00  8.7622E-01  8.9227E-01  7.2000E-01
             1.0698E+00
 PARAMETER:  1.2953E-01 -2.2437E-01  8.4604E-02  2.6678E-01 -5.5214E-02  1.0139E-01  3.6884E-01 -3.2142E-02 -1.3989E-02 -2.2851E-01
             1.6751E-01
 GRADIENT:  -1.4018E+00  2.7360E-01 -1.8525E+00 -1.7704E+00  2.9409E+00 -3.2752E-01 -1.3384E+00 -5.3168E-02 -2.4803E+00  4.9487E-01
             1.3407E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2125.39088639965        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      727
 NPARAMETR:  1.0258E+00  4.4185E-01  1.1861E+00  1.3694E+00  8.4800E-01  9.9828E-01  1.5481E+00  1.0567E+00  8.5165E-01  7.4060E-01
             1.0660E+00
 PARAMETER:  1.2547E-01 -7.1679E-01  2.7064E-01  4.1438E-01 -6.4879E-02  9.8277E-02  5.3701E-01  1.5514E-01 -6.0583E-02 -2.0030E-01
             1.6393E-01
 GRADIENT:   1.0657E+00  5.3748E+00  4.5098E+00  8.9658E+00 -8.9563E+00  4.3526E-01  1.3727E+00  3.8198E-01  2.9694E+00 -5.6692E-01
            -1.2821E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2125.62953198107        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      905
 NPARAMETR:  1.0224E+00  3.0074E-01  1.2667E+00  1.4574E+00  8.4360E-01  9.9395E-01  1.7386E+00  1.1053E+00  8.1143E-01  7.6426E-01
             1.0676E+00
 PARAMETER:  1.2211E-01 -1.1015E+00  3.3641E-01  4.7665E-01 -7.0071E-02  9.3930E-02  6.5305E-01  2.0008E-01 -1.0896E-01 -1.6885E-01
             1.6543E-01
 GRADIENT:  -1.6432E-01  3.2581E+00  3.7527E+00  7.9858E+00 -5.1668E+00 -1.7979E-01  6.2330E-01 -1.3417E+00  1.4698E-01 -3.0298E-03
            -1.5619E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2125.64927291772        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1080
 NPARAMETR:  1.0207E+00  2.2727E-01  1.3159E+00  1.5050E+00  8.4260E-01  9.9260E-01  1.8539E+00  1.1648E+00  7.9405E-01  7.6812E-01
             1.0677E+00
 PARAMETER:  1.2051E-01 -1.3816E+00  3.7452E-01  5.0879E-01 -7.1262E-02  9.2573E-02  7.1729E-01  2.5259E-01 -1.3060E-01 -1.6381E-01
             1.6553E-01
 GRADIENT:  -4.1647E-01  2.7095E+00  2.7659E+00  9.6832E+00 -5.0852E+00 -1.4758E-01  3.0394E-01 -5.1249E-01 -2.9084E-01  3.2267E-01
            -4.0252E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2125.65249391903        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1256
 NPARAMETR:  1.0201E+00  1.9725E-01  1.3353E+00  1.5237E+00  8.4212E-01  9.9207E-01  1.9106E+00  1.1873E+00  7.8725E-01  7.6888E-01
             1.0678E+00
 PARAMETER:  1.1990E-01 -1.5233E+00  3.8913E-01  5.2115E-01 -7.1827E-02  9.2038E-02  7.4743E-01  2.7170E-01 -1.3920E-01 -1.6282E-01
             1.6558E-01
 GRADIENT:  -4.1468E-01  2.3028E+00  2.2709E+00  8.8366E+00 -4.4712E+00 -1.2288E-01  2.1111E-01 -3.0747E-01 -3.3576E-01  3.3783E-01
            -1.5082E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2125.74914342934        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1441             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0208E+00  1.8002E-01  1.3393E+00  1.5236E+00  8.4105E-01  9.9220E-01  1.5186E+00  1.1962E+00  7.8718E-01  7.6976E-01
             1.0676E+00
 PARAMETER:  1.2062E-01 -1.6147E+00  3.9214E-01  5.2107E-01 -7.3103E-02  9.2172E-02  5.1779E-01  2.7914E-01 -1.3929E-01 -1.6167E-01
             1.6542E-01
 GRADIENT:   4.7885E+02  2.3577E+01  9.6505E+00  8.8992E+02  6.1482E+00  3.9545E+01  1.1586E+00  1.0331E+00  1.5479E+01  6.3476E-01
             1.7058E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2125.75066510548        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1625             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0208E+00  1.7994E-01  1.3380E+00  1.5239E+00  8.4086E-01  9.9217E-01  1.4952E+00  1.1956E+00  7.8883E-01  7.6984E-01
             1.0675E+00
 PARAMETER:  1.2060E-01 -1.6151E+00  3.9115E-01  5.2128E-01 -7.3328E-02  9.2139E-02  5.0224E-01  2.7868E-01 -1.3720E-01 -1.6157E-01
             1.6531E-01
 GRADIENT:   4.7879E+02  2.3517E+01  9.2304E+00  8.9110E+02  6.6042E+00  3.9537E+01  1.0996E+00  1.0781E+00  1.5897E+01  6.3475E-01
             1.6447E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2125.75084871323        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1805
 NPARAMETR:  1.0208E+00  1.8046E-01  1.3370E+00  1.5237E+00  8.4050E-01  9.9217E-01  1.4706E+00  1.1945E+00  7.8899E-01  7.6976E-01
             1.0675E+00
 PARAMETER:  1.2059E-01 -1.6122E+00  3.9044E-01  5.2115E-01 -7.3757E-02  9.2142E-02  4.8565E-01  2.7770E-01 -1.3700E-01 -1.6168E-01
             1.6529E-01
 GRADIENT:   2.0770E+00  3.2477E-01  4.8658E-01 -1.1981E+01 -2.8276E-01  8.9869E-02 -8.5048E-03  5.7819E-03 -2.7624E-01 -3.4093E-03
            -3.5541E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2125.75161081772        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     1995             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0208E+00  1.8050E-01  1.3358E+00  1.5233E+00  8.4036E-01  9.9218E-01  1.5107E+00  1.1937E+00  7.8942E-01  7.6966E-01
             1.0675E+00
 PARAMETER:  1.2061E-01 -1.6120E+00  3.8950E-01  5.2085E-01 -7.3926E-02  9.2153E-02  5.1255E-01  2.7710E-01 -1.3645E-01 -1.6180E-01
             1.6531E-01
 GRADIENT:   4.7883E+02  2.3590E+01  9.0237E+00  8.8955E+02  6.8568E+00  3.9533E+01  1.1574E+00  1.0833E+00  1.6056E+01  6.5322E-01
             1.6593E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2125.75206951918        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     2185
 NPARAMETR:  1.0208E+00  1.8098E-01  1.3346E+00  1.5229E+00  8.4006E-01  9.9219E-01  1.5157E+00  1.1927E+00  7.8953E-01  7.6945E-01
             1.0675E+00
 PARAMETER:  1.2062E-01 -1.6094E+00  3.8863E-01  5.2060E-01 -7.4278E-02  9.2162E-02  5.1590E-01  2.7620E-01 -1.3632E-01 -1.6208E-01
             1.6531E-01
 GRADIENT:   2.1329E+00  2.0882E-01  1.2898E-01 -1.2876E+01  3.1373E-01  9.4349E-02  8.9033E-03  4.6713E-02  9.5475E-02  1.4763E-02
             5.9329E-03

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2125.75247106945        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2373             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0208E+00  1.8183E-01  1.3336E+00  1.5226E+00  8.3966E-01  9.9220E-01  1.4983E+00  1.1914E+00  7.8956E-01  7.6926E-01
             1.0675E+00
 PARAMETER:  1.2062E-01 -1.6047E+00  3.8786E-01  5.2039E-01 -7.4761E-02  9.2169E-02  5.0430E-01  2.7514E-01 -1.3629E-01 -1.6232E-01
             1.6529E-01
 GRADIENT:   4.7882E+02  2.3850E+01  9.2097E+00  8.8821E+02  6.3238E+00  3.9530E+01  1.1294E+00  1.0382E+00  1.5874E+01  6.5907E-01
             1.6367E+00

0ITERATION NO.:   69    OBJECTIVE VALUE:  -2125.75264001074        NO. OF FUNC. EVALS.: 133
 CUMULATIVE NO. OF FUNC. EVALS.:     2506
 NPARAMETR:  1.0208E+00  1.8169E-01  1.3332E+00  1.5224E+00  8.3971E-01  9.9221E-01  1.5147E+00  1.1914E+00  7.8970E-01  7.6919E-01
             1.0675E+00
 PARAMETER:  1.2063E-01 -1.6054E+00  3.8756E-01  5.2027E-01 -7.4696E-02  9.2176E-02  5.1523E-01  2.7509E-01 -1.3610E-01 -1.6242E-01
             1.6530E-01
 GRADIENT:  -1.7098E-03 -4.0564E-02  1.3716E-01  2.2080E-01  2.7049E-01 -1.1088E-03  1.0864E-03  3.6506E-02  2.1526E-02  8.2455E-03
             2.7638E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2506
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.1939E-04 -4.7587E-03 -2.5755E-02 -3.5107E-03 -3.1298E-02
 SE:             2.9870E-02  4.6847E-03  1.9337E-02  2.9177E-02  1.9408E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9414E-01  3.0973E-01  1.8290E-01  9.0422E-01  1.0682E-01

 ETASHRINKSD(%)  1.0000E-10  8.4306E+01  3.5217E+01  2.2550E+00  3.4982E+01
 ETASHRINKVR(%)  1.0000E-10  9.7537E+01  5.8032E+01  4.4592E+00  5.7726E+01
 EBVSHRINKSD(%)  3.7207E-01  8.4723E+01  3.6935E+01  2.6395E+00  3.3875E+01
 EBVSHRINKVR(%)  7.4276E-01  9.7666E+01  6.0228E+01  5.2093E+00  5.6275E+01
 RELATIVEINF(%)  9.5805E+01  1.1927E-01  8.3792E+00  6.2915E+00  6.0636E+00
 EPSSHRINKSD(%)  3.3619E+01
 EPSSHRINKVR(%)  5.5935E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2125.7526400107422     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1206.8141068060695     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    37.84
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2125.753       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.82E-01  1.33E+00  1.52E+00  8.40E-01  9.92E-01  1.51E+00  1.19E+00  7.90E-01  7.69E-01  1.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       37.887
Stop Time:
Fri Oct  1 08:33:27 CDT 2021