Fri Oct  1 06:34:32 CDT 2021
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
$DATA ../../../../data/SD1/D/dat40.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m40.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   25129.9701908799        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.3643E+02  4.5936E+02 -8.0390E+01  3.7336E+02  2.3430E+02 -1.9333E+03 -9.1114E+02 -6.0214E+01 -1.4199E+03 -5.7649E+02
            -5.2537E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -931.553315060134        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.1352E+00  1.8476E+00  9.5964E-01  2.1622E+00  8.3592E-01  3.7133E+00  3.6057E+00  9.8743E-01  2.4239E+00  1.6213E+00
             1.2797E+01
 PARAMETER:  2.2682E-01  7.1387E-01  5.8803E-02  8.7113E-01 -7.9217E-02  1.4119E+00  1.3825E+00  8.7348E-02  9.8539E-01  5.8321E-01
             2.6492E+00
 GRADIENT:  -3.2650E+01  4.7805E+01 -2.5178E+01  1.5220E+02 -3.9349E+01  1.2852E+02 -3.5065E+01  4.5943E+00  1.1436E+01  4.0408E+01
             5.3374E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1038.68373751429        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  9.0283E-01  2.1034E+00  2.5367E+01  2.6328E+00  1.9778E+00  3.8933E+00  8.1837E+00  6.7951E-01  1.9656E+00  1.5356E+00
             1.2354E+01
 PARAMETER: -2.2239E-03  8.4356E-01  3.3334E+00  1.0681E+00  7.8198E-01  1.4593E+00  2.2021E+00 -2.8638E-01  7.7578E-01  5.2894E-01
             2.6140E+00
 GRADIENT:  -4.6225E+01  4.7004E+01  5.7607E-01  1.5990E+02 -3.7277E+01  1.6880E+02  4.9121E+01  6.4565E-02 -2.0792E+01  3.2896E+01
             5.3109E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1270.86396146286        NO. OF FUNC. EVALS.:  79
 CUMULATIVE NO. OF FUNC. EVALS.:      234
 NPARAMETR:  1.0265E+00  1.1176E+00  7.2789E+00  7.7375E-01  2.0793E+00  1.8521E+00  3.7847E+00  9.4231E-02  1.8846E+00  5.6457E-01
             8.3287E+00
 PARAMETER:  1.2615E-01  2.1122E-01  2.0850E+00 -1.5651E-01  8.3203E-01  7.1634E-01  1.4310E+00 -2.2620E+00  7.3370E-01 -4.7170E-01
             2.2197E+00
 GRADIENT:  -4.7992E+01 -6.2979E+01 -1.0039E+00 -4.9223E+01  2.9469E+01 -2.4386E+01  1.3161E+00  2.2506E-04  1.9165E+01  5.0380E+00
             2.1176E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1292.33598714232        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  1.1203E+00  1.7036E+00  2.3007E+00  6.3561E-01  1.7963E+00  2.1556E+00  3.4274E+00  5.9150E-01  1.2234E+00  3.6267E-01
             7.6205E+00
 PARAMETER:  2.1355E-01  6.3277E-01  9.3322E-01 -3.5317E-01  6.8571E-01  8.6805E-01  1.3318E+00 -4.2509E-01  3.0165E-01 -9.1426E-01
             2.1308E+00
 GRADIENT:   1.3717E+01 -5.1873E+00 -8.5586E-01 -1.4808E+01  1.7593E+00  1.2893E+01  3.0728E+00  1.2888E-01  6.4387E+00  2.3232E+00
             3.1429E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1299.86779102613        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      381
 NPARAMETR:  1.1166E+00  1.5054E+00  2.8398E+00  7.8809E-01  1.7483E+00  2.1518E+00  3.6830E+00  2.6882E-01  6.5228E-01  1.5866E-01
             7.6851E+00
 PARAMETER:  2.1026E-01  5.0906E-01  1.1437E+00 -1.3815E-01  6.5867E-01  8.6629E-01  1.4037E+00 -1.2137E+00 -3.2728E-01 -1.7410E+00
             2.1393E+00
 GRADIENT:   1.0181E+01 -1.3435E+00  6.5709E-01  7.5012E+00 -4.4297E+00  1.2753E+01 -5.9749E+00  4.8176E-02 -1.0039E+00  3.4782E-01
             1.9901E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1311.45195554088        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      561
 NPARAMETR:  1.1363E+00  1.3717E+00  5.1400E+00  9.4466E-01  1.8884E+00  2.2519E+00  4.8780E+00  3.1628E-01  8.0345E-01  1.9879E-01
             7.7705E+00
 PARAMETER:  2.2774E-01  4.1607E-01  1.7371E+00  4.3071E-02  7.3571E-01  9.1179E-01  1.6847E+00 -1.0511E+00 -1.1883E-01 -1.5155E+00
             2.1503E+00
 GRADIENT:  -3.1821E+00  2.1776E+00  1.8511E-01 -1.2090E+00 -2.7092E-01 -4.3496E+00 -5.0945E+00  2.5381E-02 -1.3550E-01  3.9216E-01
            -5.8905E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1312.38184269376        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      738
 NPARAMETR:  1.1448E+00  1.1344E+00  5.9834E+00  1.0404E+00  1.8887E+00  2.2760E+00  5.2982E+00  1.6912E-01  8.9833E-01  1.8514E-01
             7.7840E+00
 PARAMETER:  2.3519E-01  2.2609E-01  1.8890E+00  1.3959E-01  7.3591E-01  9.2240E-01  1.7674E+00 -1.6772E+00 -7.2214E-03 -1.5866E+00
             2.1521E+00
 GRADIENT:  -2.3074E-01 -1.4980E+00 -2.3393E-01  1.8718E-01  7.5300E-01 -3.6636E-01 -7.0026E-01  4.2470E-03 -5.9235E-01  2.9235E-01
             9.5525E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1312.38430918567        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      913
 NPARAMETR:  1.1447E+00  1.1642E+00  5.9728E+00  1.0335E+00  1.8914E+00  2.2779E+00  5.2710E+00  1.6907E-01  9.0045E-01  1.7922E-01
             7.7810E+00
 PARAMETER:  2.3510E-01  2.5199E-01  1.8872E+00  1.3299E-01  7.3730E-01  9.2325E-01  1.7622E+00 -1.6774E+00 -4.8636E-03 -1.6191E+00
             2.1517E+00
 GRADIENT:  -2.1752E-01 -4.7610E-01 -6.9903E-02  1.4224E-01  2.4569E-01 -1.4116E-01 -2.5402E-01  3.9865E-03 -3.1465E-01  2.7328E-01
             2.3137E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1312.39973837458        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1091
 NPARAMETR:  1.1448E+00  1.2027E+00  5.9585E+00  1.0250E+00  1.8952E+00  2.2805E+00  5.2381E+00  1.2239E-01  9.0654E-01  1.3667E-01
             7.7784E+00
 PARAMETER:  2.3520E-01  2.8458E-01  1.8848E+00  1.2473E-01  7.3932E-01  9.2441E-01  1.7560E+00 -2.0006E+00  1.8808E-03 -1.8902E+00
             2.1514E+00
 GRADIENT:  -1.1440E-01  8.5693E-01  1.4429E-01 -7.2306E-03 -3.9886E-01  1.6436E-01  3.6696E-01  1.7405E-03  1.3342E-01  1.5396E-01
            -6.2727E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1312.59162251902        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1278             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1459E+00  1.1770E+00  6.0664E+00  1.0354E+00  1.8981E+00  2.2874E+00  5.4508E+00  1.0000E-02  8.9663E-01  1.0000E-02
             7.7806E+00
 PARAMETER:  2.3620E-01  2.6295E-01  1.9028E+00  1.3476E-01  7.4087E-01  9.2742E-01  1.7958E+00 -5.4963E+00 -9.1099E-03 -5.5240E+00
             2.1516E+00
 GRADIENT:   2.2725E+01  6.2800E+00  2.8724E-01  1.3792E+00  5.2461E+00  3.4909E+01  1.0978E+02  0.0000E+00  3.0635E-01  0.0000E+00
             3.8402E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1312.63939010273        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1453
 NPARAMETR:  1.1486E+00  1.1299E+00  6.2109E+00  1.0565E+00  1.8940E+00  2.2873E+00  5.4116E+00  1.0000E-02  9.3315E-01  1.0000E-02
             7.7942E+00
 PARAMETER:  2.3851E-01  2.2212E-01  1.9263E+00  1.5493E-01  7.3872E-01  9.2739E-01  1.7886E+00 -5.4963E+00  3.0811E-02 -5.5259E+00
             2.1534E+00
 GRADIENT:   1.0455E+00  3.7103E-02 -4.6802E-02  7.5996E-02 -2.3216E-01  1.2969E+00  3.1841E+00  0.0000E+00  6.4362E-02  0.0000E+00
             2.2792E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1312.67062862116        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1633
 NPARAMETR:  1.1497E+00  1.1202E+00  6.2775E+00  1.0622E+00  1.8951E+00  2.2927E+00  5.4878E+00  1.0000E-02  9.2799E-01  1.0000E-02
             7.7941E+00
 PARAMETER:  2.3954E-01  2.1347E-01  1.9370E+00  1.6031E-01  7.3926E-01  9.2973E-01  1.8025E+00 -5.4963E+00  2.5267E-02 -5.5259E+00
             2.1534E+00
 GRADIENT:   1.4716E+00  3.9070E-01 -8.5907E-02 -7.7506E-02 -1.2849E-01  2.0909E+00  5.5721E+00  0.0000E+00 -1.7043E-01  0.0000E+00
             1.8535E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1312.68471065301        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1814
 NPARAMETR:  1.1478E+00  1.1101E+00  6.3537E+00  1.0663E+00  1.8967E+00  2.2889E+00  5.5140E+00  1.0000E-02  9.3519E-01  1.0000E-02
             7.7883E+00
 PARAMETER:  2.3780E-01  2.0442E-01  1.9490E+00  1.6420E-01  7.4014E-01  9.2809E-01  1.8073E+00 -5.4963E+00  3.2990E-02 -5.5259E+00
             2.1526E+00
 GRADIENT:   8.6424E-01  2.8787E-01 -6.8157E-02 -3.9377E-01 -1.1012E-01  1.4665E+00  6.0887E+00  0.0000E+00 -8.3709E-02  0.0000E+00
             5.1230E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1312.69296975355        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1980
 NPARAMETR:  1.1449E+00  1.0951E+00  6.4180E+00  1.0703E+00  1.8964E+00  2.2863E+00  5.5504E+00  1.0000E-02  9.4518E-01  1.0000E-02
             7.7840E+00
 PARAMETER:  2.3531E-01  1.9081E-01  1.9591E+00  1.6797E-01  7.3994E-01  9.2693E-01  1.8139E+00 -5.4963E+00  4.3619E-02 -5.5259E+00
             2.1521E+00
 GRADIENT:   2.2236E+01  3.3093E+00  3.9850E-01  3.9415E+00  4.0807E+00  3.4819E+01  1.1326E+02  0.0000E+00  3.9818E-01  0.0000E+00
             3.8842E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1316.82574329398        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2166
 NPARAMETR:  1.1310E+00  1.0746E+00  6.8776E+00  1.0876E+00  1.9149E+00  2.1154E+00  5.7880E+00  1.0000E-02  9.3667E-01  1.0000E-02
             7.9220E+00
 PARAMETER:  2.2308E-01  1.7199E-01  2.0283E+00  1.8397E-01  7.4968E-01  8.4923E-01  1.8558E+00 -5.4963E+00  3.4578E-02 -5.5259E+00
             2.1696E+00
 GRADIENT:   3.3502E+00  5.9244E-01 -1.5042E-01 -6.7078E+00 -5.0017E+00  4.4872E+00  1.5263E+01  0.0000E+00  8.0287E-01  0.0000E+00
             1.6099E+01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1317.13995654545        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2341
 NPARAMETR:  1.1250E+00  1.0165E+00  8.9771E+00  1.1380E+00  1.9957E+00  2.1083E+00  5.6905E+00  1.0000E-02  1.0263E+00  1.0000E-02
             7.8848E+00
 PARAMETER:  2.1781E-01  1.1640E-01  2.2947E+00  2.2927E-01  7.9101E-01  8.4590E-01  1.8388E+00 -5.4963E+00  1.2599E-01 -5.5259E+00
             2.1649E+00
 GRADIENT:   1.2725E+00 -3.6674E-01  7.3690E-02  1.1738E+00 -1.6032E+00  3.2541E+00  5.2581E+00  0.0000E+00  2.7113E-01  0.0000E+00
             3.5800E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1317.17855770149        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2522
 NPARAMETR:  1.1239E+00  1.0255E+00  9.1257E+00  1.1340E+00  2.0072E+00  2.0985E+00  5.7670E+00  1.0000E-02  1.0071E+00  1.0000E-02
             7.8758E+00
 PARAMETER:  2.1684E-01  1.2514E-01  2.3111E+00  2.2579E-01  7.9674E-01  8.4123E-01  1.8522E+00 -5.4963E+00  1.0707E-01 -5.5259E+00
             2.1638E+00
 GRADIENT:   9.5161E-01  3.4563E-01 -7.8362E-02  8.8280E-02  3.1294E-01  1.5691E+00  8.9267E+00  0.0000E+00  7.7027E-02  0.0000E+00
             9.3180E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1317.18129184750        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2710
 NPARAMETR:  1.1223E+00  1.0223E+00  9.1540E+00  1.1347E+00  2.0067E+00  2.0957E+00  5.7687E+00  1.0000E-02  1.0068E+00  1.0000E-02
             7.8720E+00
 PARAMETER:  2.1537E-01  1.2206E-01  2.3142E+00  2.2639E-01  7.9650E-01  8.3988E-01  1.8524E+00 -5.4963E+00  1.0675E-01 -5.5259E+00
             2.1633E+00
 GRADIENT:   3.3658E-01  2.7004E-01 -2.3734E-02  1.7220E-01 -1.0321E-02  1.0974E+00  8.7821E+00  0.0000E+00 -6.7709E-03  0.0000E+00
            -1.4225E-02

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1317.18218466437        NO. OF FUNC. EVALS.: 197
 CUMULATIVE NO. OF FUNC. EVALS.:     2907             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1218E+00  1.0170E+00  9.1682E+00  1.1349E+00  2.0066E+00  2.0946E+00  5.7682E+00  1.0000E-02  1.0073E+00  1.0000E-02
             7.8707E+00
 PARAMETER:  2.1493E-01  1.1689E-01  2.3157E+00  2.2651E-01  7.9646E-01  8.3935E-01  1.8524E+00 -5.4963E+00  1.0726E-01 -5.5259E+00
             2.1631E+00
 GRADIENT:   1.9947E+01  1.8477E+00  2.7835E-01  7.8899E+00  4.3552E+00  2.9435E+01  1.2681E+02  0.0000E+00  2.9427E-01  0.0000E+00
             3.8781E+01

0ITERATION NO.:   97    OBJECTIVE VALUE:  -1317.18218466437        NO. OF FUNC. EVALS.:  65
 CUMULATIVE NO. OF FUNC. EVALS.:     2972
 NPARAMETR:  1.1217E+00  1.0170E+00  9.1866E+00  1.1359E+00  2.0064E+00  2.0947E+00  5.7692E+00  1.0000E-02  1.0062E+00  1.0000E-02
             7.8699E+00
 PARAMETER:  2.1493E-01  1.1689E-01  2.3157E+00  2.2651E-01  7.9646E-01  8.3935E-01  1.8524E+00 -5.4963E+00  1.0726E-01 -5.5259E+00
             2.1631E+00
 GRADIENT:   6.8303E-03 -1.3630E-04 -1.3247E-02 -1.5420E-01  2.4428E-02 -6.5537E-03 -1.5611E-02  0.0000E+00  1.7574E-02  0.0000E+00
             7.8569E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2972
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.7428E-03  2.9108E-02 -1.9100E-05 -6.7408E-02  5.6427E-05
 SE:             2.8629E-02  2.5122E-02  2.0292E-05  1.3084E-02  1.7434E-04
 N:                     100         100         100         100         100

 P VAL.:         7.6007E-01  2.4659E-01  3.4659E-01  2.5822E-07  7.4619E-01

 ETASHRINKSD(%)  4.0902E+00  1.5839E+01  9.9932E+01  5.6167E+01  9.9416E+01
 ETASHRINKVR(%)  8.0131E+00  2.9169E+01  1.0000E+02  8.0787E+01  9.9997E+01
 EBVSHRINKSD(%)  4.0988E+00  1.0451E+01  9.9926E+01  6.0772E+01  9.9429E+01
 EBVSHRINKVR(%)  8.0297E+00  1.9811E+01  1.0000E+02  8.4612E+01  9.9997E+01
 RELATIVEINF(%)  9.1799E+01  4.0994E+01  1.0536E-05  7.8261E+00  6.4797E-04
 EPSSHRINKSD(%)  7.2450E+00
 EPSSHRINKVR(%)  1.3965E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1317.1821846643659     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       336.90717510404488     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    94.04
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1317.182       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.12E+00  1.02E+00  9.17E+00  1.13E+00  2.01E+00  2.09E+00  5.77E+00  1.00E-02  1.01E+00  1.00E-02  7.87E+00
 


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
 #CPUT: Total CPU Time in Seconds,       94.078
Stop Time:
Fri Oct  1 06:36:08 CDT 2021
