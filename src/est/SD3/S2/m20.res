Fri Oct  1 20:25:21 CDT 2021
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
$DATA ../../../../data/SD3/S2/dat20.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m20.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1919.03922054497        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0181E+02  4.0477E+01  4.5137E+01  5.6219E+01  1.0936E+02  3.0456E+01  1.8034E+01 -2.1985E+02 -5.1110E+01 -6.8271E+00
            -7.7794E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2307.99153711678        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:      147             RESET HESSIAN, TYPE I
 NPARAMETR:  7.5098E-01  1.0200E+00  9.6978E-01  9.6621E-01  9.1807E-01  1.3949E+00  7.6198E-01  1.1774E+00  1.0416E+00  8.0120E-01
             1.6195E+00
 PARAMETER: -1.8637E-01  1.1976E-01  6.9309E-02  6.5624E-02  1.4518E-02  4.3284E-01 -1.7184E-01  2.6330E-01  1.4072E-01 -1.2164E-01
             5.8209E-01
 GRADIENT:   4.2197E+01  5.6369E+01  8.7899E+00  1.6566E+00 -3.9248E+01  3.1117E+02 -8.0899E+00  9.9217E+00 -7.1355E+00 -1.9736E+01
             3.7216E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2310.30013764050        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:      281
 NPARAMETR:  7.5095E-01  1.0071E+00  9.6980E-01  9.6618E-01  9.1809E-01  1.2980E+00  8.7893E-01  1.1773E+00  1.0415E+00  9.0038E-01
             1.6196E+00
 PARAMETER: -1.8641E-01  1.0710E-01  6.9335E-02  6.5599E-02  1.4544E-02  3.6085E-01 -2.9050E-02  2.6323E-01  1.4068E-01 -4.9404E-03
             5.8215E-01
 GRADIENT:  -3.3124E+02  4.7542E+00 -9.2606E-01 -3.9279E+01 -4.2612E+01 -3.1169E+00  5.7353E-01  1.4839E+01 -6.0643E+00  9.6885E-01
             3.7240E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2313.36186870853        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      462
 NPARAMETR:  7.5172E-01  9.5785E-01  9.6983E-01  9.6620E-01  9.1818E-01  1.3225E+00  1.0022E+00  1.1770E+00  1.0415E+00  9.2517E-01
             1.6007E+00
 PARAMETER: -1.8539E-01  5.6932E-02  6.9364E-02  6.5614E-02  1.4643E-02  3.7951E-01  1.0216E-01  2.6297E-01  1.4066E-01  2.2225E-02
             5.7047E-01
 GRADIENT:  -3.1701E+02 -4.1879E+01 -1.4490E+01 -7.4336E+01 -1.0561E+01  6.4391E+00  7.7275E+00  1.7375E+01  5.7330E-01  1.0309E+01
             3.6867E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2362.40268810181        NO. OF FUNC. EVALS.: 124
 CUMULATIVE NO. OF FUNC. EVALS.:      586
 NPARAMETR:  9.0389E-01  9.7574E-01  1.0258E+00  1.0012E+00  9.2785E-01  1.1202E+00  8.7412E-01  1.1760E+00  1.0410E+00  8.8786E-01
             1.6017E+00
 PARAMETER: -1.0441E-03  7.5444E-02  1.2552E-01  1.0119E-01  2.5115E-02  2.1352E-01 -3.4539E-02  2.6215E-01  1.4023E-01 -1.8939E-02
             5.7108E-01
 GRADIENT:   5.9179E+01  2.8740E+01  3.2374E+00  1.8585E+01 -1.7347E+01  1.1251E+02  1.3717E+00  1.2549E+01  5.1976E+00 -1.6006E+00
             3.6999E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2368.69646256436        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:      721
 NPARAMETR:  9.8060E-01  9.6393E-01  1.0886E+00  1.0177E+00  9.5739E-01  1.0123E+00  8.2102E-01  1.1760E+00  1.0411E+00  8.7273E-01
             1.6015E+00
 PARAMETER:  8.0412E-02  6.3264E-02  1.8494E-01  1.1754E-01  5.6460E-02  1.1222E-01 -9.7203E-02  2.6216E-01  1.4023E-01 -3.6127E-02
             5.7095E-01
 GRADIENT:   2.4435E+01 -8.6778E-01 -1.4298E+00 -4.5347E+00 -7.2430E-02 -2.4431E+00 -3.2087E+00  7.3369E+00 -3.0761E+00 -1.0157E+01
             3.6210E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2369.43371608259        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      896
 NPARAMETR:  9.6984E-01  9.7019E-01  1.1508E+00  1.0198E+00  9.8651E-01  1.0204E+00  8.3917E-01  1.1760E+00  1.0410E+00  9.5458E-01
             1.6011E+00
 PARAMETER:  6.9375E-02  6.9734E-02  2.4043E-01  1.1963E-01  8.6413E-02  1.2016E-01 -7.5346E-02  2.6212E-01  1.4021E-01  5.3513E-02
             5.7066E-01
 GRADIENT:   1.1922E+00 -2.7073E-01  1.0078E+00  4.9145E-01  4.9741E-01  9.6785E-01 -3.5358E-02  7.0500E+00 -2.0568E+00  3.7798E-01
             3.6366E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2376.46921018136        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     1070
 NPARAMETR:  9.6848E-01  9.7010E-01  1.1460E+00  1.0187E+00  9.8669E-01  1.0178E+00  8.3935E-01  1.0149E+00  1.0506E+00  9.5578E-01
             1.5727E+00
 PARAMETER:  6.7967E-02  6.9648E-02  2.3628E-01  1.1852E-01  8.6598E-02  1.1765E-01 -7.5127E-02  1.1483E-01  1.4937E-01  5.4771E-02
             5.5280E-01
 GRADIENT:   1.8800E+02  2.3799E+01  1.3318E+01  4.3659E+01  1.2177E+01  4.1279E+01  7.7681E-01  1.3517E+00  7.8864E+00 -3.1712E+00
             3.5964E+02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2376.48423939551        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:     1166
 NPARAMETR:  9.6014E-01  9.6936E-01  1.1307E+00  1.0167E+00  9.8263E-01  1.0106E+00  8.4351E-01  9.9735E-01  1.0496E+00  9.5854E-01
             1.5728E+00
 PARAMETER:  5.9320E-02  6.8885E-02  2.2283E-01  1.1661E-01  8.2473E-02  1.1057E-01 -7.0187E-02  9.7351E-02  1.4841E-01  5.7655E-02
             5.5288E-01
 GRADIENT:  -1.9765E+01 -2.3323E+00  7.0506E+00 -1.4797E+00  4.1382E+00 -3.0582E+00 -5.3155E-01  1.4442E+00 -4.8975E-01 -3.2712E+00
             3.5564E+02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2378.30244025294        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1343
 NPARAMETR:  9.7097E-01  1.0156E+00  9.0830E-01  9.7568E-01  9.2581E-01  1.0200E+00  7.8986E-01  4.9297E-01  1.0896E+00  9.9728E-01
             1.5725E+00
 PARAMETER:  7.0545E-02  1.1545E-01  3.8219E-03  7.5383E-02  2.2919E-02  1.1981E-01 -1.3590E-01 -6.0730E-01  1.8582E-01  9.7275E-02
             5.5265E-01
 GRADIENT:   2.8638E+00  2.7389E+00  9.7808E-01 -3.4704E+00  1.3478E+00  6.0935E-01 -1.5666E+00  1.8195E-01 -1.1621E+00 -1.6717E+00
             3.5762E+02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2378.67951960725        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1520
 NPARAMETR:  9.7197E-01  9.6374E-01  8.6030E-01  1.0049E+00  8.7528E-01  1.0199E+00  8.6450E-01  2.7919E-01  1.0578E+00  9.6507E-01
             1.5717E+00
 PARAMETER:  7.1570E-02  6.3069E-02 -5.0478E-02  1.0490E-01 -3.3213E-02  1.1973E-01 -4.5609E-02 -1.1758E+00  1.5617E-01  6.4450E-02
             5.5213E-01
 GRADIENT:   4.9513E+00 -1.3799E-01  1.8142E-01  1.3287E-01 -1.2159E+00  5.7900E-01 -4.0185E-01  1.2996E-03 -6.4591E-01 -1.6721E+00
             3.5581E+02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2382.87431539640        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1700
 NPARAMETR:  9.6774E-01  1.1090E+00  8.5291E-01  9.2624E-01  9.7238E-01  9.7926E-01  6.0491E-01  1.0000E-02  1.1583E+00  1.1831E+00
             1.5381E+00
 PARAMETER:  6.7204E-02  2.0344E-01 -5.9098E-02  2.3376E-02  7.1990E-02  7.9041E-02 -4.0267E-01 -1.0411E+01  2.4697E-01  2.6816E-01
             5.3055E-01
 GRADIENT:  -5.0059E+00  2.2211E+01 -1.4009E+01  1.6325E+01  1.6121E+01 -1.6164E+01 -2.7691E+00  0.0000E+00 -9.1978E+00  1.7638E+01
             3.4535E+02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2460.46599312976        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1877
 NPARAMETR:  9.7052E-01  1.1659E+00  8.1199E-01  8.4894E-01  9.4640E-01  1.0579E+00  8.0626E-01  1.0000E-02  1.1698E+00  1.0986E+00
             1.0520E+00
 PARAMETER:  7.0079E-02  2.5350E-01 -1.0826E-01 -6.3766E-02  4.4913E-02  1.5625E-01 -1.1535E-01 -1.7910E+02  2.5681E-01  1.9404E-01
             1.5068E-01
 GRADIENT:   1.1766E+01  4.8872E+01 -3.3426E+00 -6.2786E+01 -5.1839E+01  1.4121E+01  7.4936E+00  0.0000E+00 -8.6376E+00  4.6081E+00
             4.5697E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2472.15505594456        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     2053
 NPARAMETR:  9.6424E-01  9.5354E-01  8.2426E-01  9.9964E-01  8.6064E-01  1.0169E+00  6.2756E-01  1.0000E-02  1.1325E+00  1.0770E+00
             9.9423E-01
 PARAMETER:  6.3581E-02  5.2430E-02 -9.3274E-02  9.9636E-02 -5.0076E-02  1.1671E-01 -3.6591E-01 -2.0450E+02  2.2443E-01  1.7418E-01
             9.4214E-02
 GRADIENT:  -8.1401E-01  2.1828E+00  8.1069E-01  4.4601E+00  4.0652E+00 -1.4306E+00 -1.2716E+00  0.0000E+00 -6.4579E-01 -8.9584E-01
             7.7654E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2472.22528410266        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     2229
 NPARAMETR:  9.6549E-01  9.4437E-01  8.1959E-01  1.0021E+00  8.5135E-01  1.0227E+00  6.6736E-01  1.0000E-02  1.1253E+00  1.0667E+00
             9.9297E-01
 PARAMETER:  6.4877E-02  4.2767E-02 -9.8952E-02  1.0215E-01 -6.0933E-02  1.2241E-01 -3.0442E-01 -2.0513E+02  2.1809E-01  1.6455E-01
             9.2949E-02
 GRADIENT:   2.0346E+00 -3.0001E-01 -2.7704E-01 -1.8827E-01  3.7251E-02  9.1001E-01  6.3328E-02  0.0000E+00  2.7018E-01  1.1536E-01
             3.0972E-02

0ITERATION NO.:   71    OBJECTIVE VALUE:  -2472.22528410266        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     2251
 NPARAMETR:  9.6549E-01  9.4437E-01  8.1959E-01  1.0021E+00  8.5135E-01  1.0227E+00  6.6736E-01  1.0000E-02  1.1253E+00  1.0667E+00
             9.9297E-01
 PARAMETER:  6.4877E-02  4.2767E-02 -9.8952E-02  1.0215E-01 -6.0933E-02  1.2241E-01 -3.0442E-01 -2.0513E+02  2.1809E-01  1.6455E-01
             9.2949E-02
 GRADIENT:   2.0346E+00 -3.0001E-01 -2.7704E-01 -1.8827E-01  3.7251E-02  9.1001E-01  6.3328E-02  0.0000E+00  2.7018E-01  1.1536E-01
             3.0972E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     2251
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.2463E-04 -2.5053E-02 -2.3626E-04  6.9013E-03 -1.1888E-02
 SE:             2.9880E-02  1.5549E-02  2.5054E-04  2.8153E-02  2.7497E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9400E-01  1.0713E-01  3.4568E-01  8.0635E-01  6.6548E-01

 ETASHRINKSD(%)  1.0000E-10  4.7908E+01  9.9161E+01  5.6826E+00  7.8830E+00
 ETASHRINKVR(%)  1.0000E-10  7.2864E+01  9.9993E+01  1.1042E+01  1.5145E+01
 EBVSHRINKSD(%)  3.0500E-01  4.8717E+01  9.9325E+01  5.4640E+00  7.8143E+00
 EBVSHRINKVR(%)  6.0908E-01  7.3700E+01  9.9995E+01  1.0629E+01  1.5018E+01
 RELATIVEINF(%)  9.9385E+01  8.9502E+00  2.6388E-03  4.9087E+01  2.5745E+01
 EPSSHRINKSD(%)  2.8986E+01
 EPSSHRINKVR(%)  4.9570E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2472.2252841026584     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1369.4990442570513     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    37.61
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2472.225       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.65E-01  9.44E-01  8.20E-01  1.00E+00  8.51E-01  1.02E+00  6.67E-01  1.00E-02  1.13E+00  1.07E+00  9.93E-01
 


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
 #CPUT: Total CPU Time in Seconds,       37.653
Stop Time:
Fri Oct  1 20:26:00 CDT 2021
