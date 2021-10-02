Fri Oct  1 07:04:36 CDT 2021
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
$DATA ../../../../data/SD1/D/dat65.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m65.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   26857.2343685100        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.1873E+02  4.6548E+02  3.8648E+01  1.8476E+02  5.7834E+02 -3.1893E+03 -1.1962E+03 -9.6776E+01 -2.1458E+03 -1.1218E+03
            -5.3330E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1086.31427486389        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.8583E+00  1.6156E+00  8.2414E-01  2.5944E+00  5.4079E-01  4.9581E+00  4.3739E+00  1.0775E+00  4.9966E+00  3.2345E+00
             1.0194E+01
 PARAMETER:  7.1967E-01  5.7971E-01 -9.3412E-02  1.0534E+00 -5.1473E-01  1.7010E+00  1.5756E+00  1.7460E-01  1.7088E+00  1.2739E+00
             2.4218E+00
 GRADIENT:   6.0593E+01  4.9472E+01 -1.6160E+01  6.6487E+01 -3.2922E+01  1.9404E+02  7.6588E+01  6.2583E+00  1.1417E+02  5.0945E+01
             3.4844E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1193.64843402728        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      267
 NPARAMETR:  1.2499E+00  1.1384E+00  1.2185E+01  2.6486E+00  1.0964E+00  4.2376E+00  2.9173E+00  5.1145E-01  4.3615E+00  2.9687E+00
             1.0274E+01
 PARAMETER:  3.2306E-01  2.2959E-01  2.6002E+00  1.0740E+00  1.9200E-01  1.5440E+00  1.1707E+00 -5.7050E-01  1.5728E+00  1.1881E+00
             2.4296E+00
 GRADIENT:  -2.3983E+01  2.3370E+01 -8.4719E+00  4.8825E+01 -7.3948E+01  6.0603E+01  9.9191E+00  2.5283E-01 -1.0936E+00  5.2420E+01
             3.7402E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1331.00759886175        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      444
 NPARAMETR:  1.1502E+00  1.3982E+00  5.4400E+01  1.2506E+00  2.4613E+00  2.6112E+00  6.2831E-01  4.7694E+00  7.3870E+00  1.7911E+00
             9.3594E+00
 PARAMETER:  2.3995E-01  4.3518E-01  4.0964E+00  3.2361E-01  1.0007E+00  1.0598E+00 -3.6472E-01  1.6622E+00  2.0997E+00  6.8286E-01
             2.3364E+00
 GRADIENT:  -3.9714E+01 -4.4893E+01 -1.1510E+01  7.0671E+00  4.2803E+01 -3.5349E+01  5.3631E+00 -5.3199E-02  4.9591E+01  4.4688E+01
             2.7498E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1385.68335125362        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      621
 NPARAMETR:  1.1375E+00  1.4366E+00  9.0776E+01  7.7152E-01  2.1170E+00  2.9172E+00  9.6854E-01  4.5435E+00  6.6492E+00  7.7606E-01
             7.8774E+00
 PARAMETER:  2.2882E-01  4.6227E-01  4.6084E+00 -1.5940E-01  8.5001E-01  1.1706E+00  6.8035E-02  1.6137E+00  1.9945E+00 -1.5352E-01
             2.1640E+00
 GRADIENT:  -2.4153E+01 -1.8175E+01 -6.7830E+00 -6.2626E+00  7.9176E+00  9.4077E-01  3.8367E+00  2.8570E+00  5.1238E+00  7.2822E+00
            -1.0059E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1395.19997588858        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      796
 NPARAMETR:  1.2532E+00  1.4904E+00  4.5533E+02  8.4257E-01  2.2417E+00  2.8718E+00  9.4549E-01  2.0931E+00  6.6369E+00  3.3914E-01
             8.0501E+00
 PARAMETER:  3.2572E-01  4.9901E-01  6.2210E+00 -7.1298E-02  9.0721E-01  1.1550E+00  4.3953E-02  8.3864E-01  1.9926E+00 -9.8134E-01
             2.1857E+00
 GRADIENT:  -1.9467E+00 -3.0592E+00 -1.7549E-01 -1.5035E+00  8.2316E+00 -1.2001E+00  9.7792E-01  2.2252E-02  4.6976E+00  9.0121E-01
             6.2986E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1395.47568560569        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      976             RESET HESSIAN, TYPE I
 NPARAMETR:  1.2641E+00  1.4859E+00  4.4438E+02  9.1905E-01  2.2200E+00  2.9279E+00  8.9721E-01  1.2396E+00  6.8649E+00  1.3920E-01
             8.0310E+00
 PARAMETER:  3.3433E-01  4.9601E-01  6.1967E+00  1.5580E-02  8.9749E-01  1.1743E+00 -8.4652E-03  3.1476E-01  2.0264E+00 -1.8718E+00
             2.1833E+00
 GRADIENT:   2.8485E+01  1.7309E+01 -1.9157E-01  5.3769E+00  2.5916E+00  7.2983E+01 -5.0237E-01 -3.7111E-02  2.2205E+02  1.0302E-01
             3.4301E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1395.61608933020        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:     1111
 NPARAMETR:  1.2620E+00  1.4745E+00  4.9892E+02  8.9310E-01  2.2239E+00  2.9001E+00  9.0661E-01  1.1829E+00  6.6469E+00  1.2870E-01
             8.0362E+00
 PARAMETER:  3.3267E-01  4.8829E-01  6.3125E+00 -1.3051E-02  8.9928E-01  1.1648E+00  1.9596E-03  2.6795E-01  1.9942E+00 -1.9503E+00
             2.1840E+00
 GRADIENT:   6.1550E-02  6.8234E-01 -1.5824E-01  9.2937E-01 -1.6553E+00  2.3345E+00 -3.1928E-01  3.8622E-02  6.8409E+00  7.3493E-02
            -3.1362E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1395.70114428780        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1293
 NPARAMETR:  1.2632E+00  1.4680E+00  5.7982E+02  8.8536E-01  2.2312E+00  2.9096E+00  9.1456E-01  7.7347E-01  6.6886E+00  7.5768E-02
             8.0457E+00
 PARAMETER:  3.3364E-01  4.8388E-01  6.4627E+00 -2.1761E-02  9.0253E-01  1.1680E+00  1.0693E-02 -1.5687E-01  2.0004E+00 -2.4801E+00
             2.1851E+00
 GRADIENT:   2.4093E-01 -3.8610E+00 -7.5278E-03  3.5457E-01 -6.9336E-01  3.5081E+00  5.6461E-01  9.0235E-02  9.5972E+00  2.4285E-02
             8.5197E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1395.73313656204        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1469
 NPARAMETR:  1.2677E+00  1.4945E+00  6.0357E+02  8.6235E-01  2.2397E+00  2.8962E+00  9.3925E-01  6.7556E-01  6.6653E+00  3.1255E-02
             8.0585E+00
 PARAMETER:  3.3724E-01  5.0180E-01  6.5029E+00 -4.8089E-02  9.0635E-01  1.1634E+00  3.7328E-02 -2.9221E-01  1.9969E+00 -3.3656E+00
             2.1867E+00
 GRADIENT:   9.5456E-01 -3.3156E-02  1.1901E-02 -6.6699E-02  5.3820E-01  1.9697E+00  1.3840E-01  8.1904E-02  5.9924E+00  4.2799E-03
             2.3401E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1395.80142287970        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1647
 NPARAMETR:  1.2703E+00  1.5138E+00  5.9994E+02  8.3847E-01  2.2384E+00  2.8984E+00  9.3932E-01  4.6607E-01  6.7818E+00  1.5039E-02
             8.0594E+00
 PARAMETER:  3.3922E-01  5.1461E-01  6.4968E+00 -7.6181E-02  9.0575E-01  1.1642E+00  3.7396E-02 -6.6342E-01  2.0142E+00 -4.0971E+00
             2.1868E+00
 GRADIENT:   1.4343E+00  1.0674E+00 -9.3084E-03 -3.7673E-02 -2.7415E-02  2.2774E+00 -4.0329E-01  4.6948E-02  7.7892E+00  9.5596E-04
             1.8166E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1395.80326791870        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1823
 NPARAMETR:  1.2673E+00  1.5199E+00  6.0583E+02  8.3650E-01  2.2390E+00  2.8953E+00  9.5827E-01  3.4655E-01  6.7590E+00  1.0140E-02
             8.0580E+00
 PARAMETER:  3.3688E-01  5.1861E-01  6.5066E+00 -7.8534E-02  9.0604E-01  1.1631E+00  5.7373E-02 -9.5974E-01  2.0109E+00 -4.4912E+00
             2.1867E+00
 GRADIENT:   8.6819E-01  1.4769E+00 -3.9047E-03 -9.0892E-02  1.0578E-01  1.9256E+00 -1.5058E-01  2.8284E-02  6.7248E+00  3.8928E-04
             1.8890E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1395.83798223571        NO. OF FUNC. EVALS.: 170
 CUMULATIVE NO. OF FUNC. EVALS.:     1993
 NPARAMETR:  1.2622E+00  1.5132E+00  6.0653E+02  8.4328E-01  2.2379E+00  2.9070E+00  9.4929E-01  1.1505E-01  6.7861E+00  1.0000E-02
             8.0470E+00
 PARAMETER:  3.3288E-01  5.1426E-01  6.5078E+00 -7.0457E-02  9.0556E-01  1.1671E+00  4.7958E-02 -2.0624E+00  2.0149E+00 -4.6467E+00
             2.1853E+00
 GRADIENT:  -2.0782E-02  5.7273E-01  2.2044E-03  2.0894E-01 -7.1135E-02  3.3258E+00 -1.3174E-01  3.4126E-03  8.3388E+00  0.0000E+00
            -2.6778E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1395.84988465704        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2177             RESET HESSIAN, TYPE I
 NPARAMETR:  1.2641E+00  1.5159E+00  6.0421E+02  8.2799E-01  2.2379E+00  2.9138E+00  9.5352E-01  4.4119E-02  6.8482E+00  1.0000E-02
             8.0473E+00
 PARAMETER:  3.3434E-01  5.1598E-01  6.5039E+00 -8.8752E-02  9.0552E-01  1.1695E+00  5.2410E-02 -3.0209E+00  2.0240E+00 -4.6467E+00
             2.1853E+00
 GRADIENT:   2.8232E+01  1.5386E+01  1.0454E-01  1.7631E+00  4.9557E+00  7.0927E+01  3.9853E-01  5.3507E-04  2.3208E+02  0.0000E+00
             4.0146E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1395.85302244403        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     2354
 NPARAMETR:  1.2649E+00  1.5203E+00  6.0398E+02  8.3013E-01  2.2373E+00  2.9122E+00  9.5317E-01  1.0000E-02  6.8576E+00  1.0000E-02
             8.0470E+00
 PARAMETER:  3.3499E-01  5.1891E-01  6.5035E+00 -8.6169E-02  9.0529E-01  1.1689E+00  5.2037E-02 -5.2369E+00  2.0254E+00 -4.6467E+00
             2.1853E+00
 GRADIENT:   5.2087E-01 -3.3068E-01  2.2539E-03  9.4439E-02 -3.2146E-02  3.9330E+00 -6.9115E-02  0.0000E+00  1.0023E+01  0.0000E+00
             8.5362E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1395.85428154430        NO. OF FUNC. EVALS.: 170
 CUMULATIVE NO. OF FUNC. EVALS.:     2524
 NPARAMETR:  1.2638E+00  1.5240E+00  6.0291E+02  8.2684E-01  2.2368E+00  2.9140E+00  9.5448E-01  1.0000E-02  6.8710E+00  1.0000E-02
             8.0439E+00
 PARAMETER:  3.3415E-01  5.2135E-01  6.5018E+00 -9.0146E-02  9.0503E-01  1.1695E+00  5.3414E-02 -5.2369E+00  2.0273E+00 -4.6467E+00
             2.1849E+00
 GRADIENT:   3.4250E-01  1.8187E-01  2.2180E-03  1.3520E-01 -2.5380E-01  4.1549E+00 -2.0088E-01  0.0000E+00  1.0045E+01  0.0000E+00
            -7.9020E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1395.85562632484        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2711             RESET HESSIAN, TYPE I
 NPARAMETR:  1.2639E+00  1.5265E+00  6.0289E+02  8.2286E-01  2.2371E+00  2.9138E+00  9.6019E-01  1.0000E-02  6.8811E+00  1.0000E-02
             8.0450E+00
 PARAMETER:  3.3423E-01  5.2296E-01  6.5017E+00 -9.4971E-02  9.0519E-01  1.1695E+00  5.9372E-02 -5.2369E+00  2.0288E+00 -4.6467E+00
             2.1851E+00
 GRADIENT:   2.8210E+01  1.7144E+01  1.0591E-01  2.0028E+00  4.5133E+00  7.0963E+01  1.5865E-01  0.0000E+00  2.3334E+02  0.0000E+00
             3.9113E+01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1395.85585646092        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2894
 NPARAMETR:  1.2638E+00  1.5283E+00  6.0242E+02  8.2176E-01  2.2369E+00  2.9139E+00  9.6136E-01  1.0000E-02  6.8856E+00  1.0000E-02
             8.0440E+00
 PARAMETER:  3.3414E-01  5.2418E-01  6.5009E+00 -9.6303E-02  9.0508E-01  1.1695E+00  6.0596E-02 -5.2369E+00  2.0294E+00 -4.6467E+00
             2.1849E+00
 GRADIENT:   3.4433E-01  8.8648E-02  8.7621E-04  6.8708E-02 -1.6464E-01  4.1501E+00 -1.1611E-01  0.0000E+00  1.0172E+01  0.0000E+00
            -5.5395E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1395.85611321740        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:     3090             RESET HESSIAN, TYPE I
 NPARAMETR:  1.2638E+00  1.5286E+00  6.0216E+02  8.1888E-01  2.2371E+00  2.9139E+00  9.6482E-01  1.0000E-02  6.8907E+00  1.0000E-02
             8.0445E+00
 PARAMETER:  3.3414E-01  5.2438E-01  6.5005E+00 -9.9813E-02  9.0517E-01  1.1695E+00  6.4182E-02 -5.2369E+00  2.0302E+00 -4.6467E+00
             2.1850E+00
 GRADIENT:   2.8217E+01  1.6937E+01  1.0411E-01  1.9020E+00  4.6010E+00  7.0976E+01  2.5925E-01  0.0000E+00  2.3427E+02  0.0000E+00
             3.9239E+01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1395.85627930789        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     3254
 NPARAMETR:  1.2637E+00  1.5296E+00  6.0217E+02  8.1884E-01  2.2371E+00  2.9141E+00  9.6465E-01  1.0000E-02  6.8918E+00  1.0000E-02
             8.0444E+00
 PARAMETER:  3.3401E-01  5.2500E-01  6.5005E+00 -9.9866E-02  9.0518E-01  1.1696E+00  6.4009E-02 -5.2369E+00  2.0303E+00 -4.6467E+00
             2.1850E+00
 GRADIENT:   3.0887E-01 -2.1542E-01 -6.7980E-04 -2.0490E-02 -1.4540E-02  4.1709E+00 -2.3731E-02  0.0000E+00  1.0278E+01  0.0000E+00
            -2.2617E-01

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1395.85642785890        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:     3450             RESET HESSIAN, TYPE I
 NPARAMETR:  1.2638E+00  1.5309E+00  6.0192E+02  8.1833E-01  2.2371E+00  2.9139E+00  9.6671E-01  1.0000E-02  6.8984E+00  1.0000E-02
             8.0444E+00
 PARAMETER:  3.3413E-01  5.2586E-01  6.5001E+00 -1.0049E-01  9.0516E-01  1.1695E+00  6.6147E-02 -5.2369E+00  2.0313E+00 -4.6467E+00
             2.1850E+00
 GRADIENT:   2.8188E+01  1.7279E+01  1.0408E-01  1.9887E+00  4.5477E+00  7.0982E+01  2.2903E-01  0.0000E+00  2.3450E+02  0.0000E+00
             3.9137E+01

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1395.85647171682        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3637
 NPARAMETR:  1.2638E+00  1.5315E+00  6.0197E+02  8.1749E-01  2.2371E+00  2.9139E+00  9.6751E-01  1.0000E-02  6.9001E+00  1.0000E-02
             8.0443E+00
 PARAMETER:  3.3413E-01  5.2622E-01  6.5002E+00 -1.0151E-01  9.0516E-01  1.1695E+00  6.6975E-02 -5.2369E+00  2.0315E+00 -4.6467E+00
             2.1850E+00
 GRADIENT:   3.4572E-01 -2.3210E-01 -5.2222E-04 -1.5806E-04 -1.2870E-02  4.1430E+00  1.1035E-02  0.0000E+00  1.0429E+01  0.0000E+00
            -1.9174E-01

0ITERATION NO.:  106    OBJECTIVE VALUE:  -1395.85647171682        NO. OF FUNC. EVALS.:  30
 CUMULATIVE NO. OF FUNC. EVALS.:     3667
 NPARAMETR:  1.2638E+00  1.5319E+00  6.0194E+02  8.1757E-01  2.2370E+00  2.9139E+00  9.6655E-01  1.0000E-02  6.9005E+00  1.0000E-02
             8.0442E+00
 PARAMETER:  3.3413E-01  5.2622E-01  6.5002E+00 -1.0151E-01  9.0516E-01  1.1695E+00  6.6975E-02 -5.2369E+00  2.0315E+00 -4.6467E+00
             2.1850E+00
 GRADIENT:   1.9304E-03 -1.0964E-01  8.1968E-05 -2.9301E-03  1.5642E-02 -1.4863E-03  8.5125E-03  0.0000E+00 -1.2525E-02  0.0000E+00
             3.9567E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     3667
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.7702E-03 -6.7684E-02  2.1673E-06  2.9435E-02  8.8891E-06
 SE:             2.9062E-02  1.2644E-02  1.3039E-05  2.5182E-02  1.6298E-04
 N:                     100         100         100         100         100

 P VAL.:         7.8919E-01  8.6743E-08  8.6799E-01  2.4246E-01  9.5650E-01

 ETASHRINKSD(%)  2.6370E+00  5.7640E+01  9.9956E+01  1.5636E+01  9.9454E+01
 ETASHRINKVR(%)  5.2045E+00  8.2056E+01  1.0000E+02  2.8827E+01  9.9997E+01
 EBVSHRINKSD(%)  2.7021E+00  6.5010E+01  9.9944E+01  9.0276E+00  9.9444E+01
 EBVSHRINKVR(%)  5.3312E+00  8.7757E+01  1.0000E+02  1.7240E+01  9.9997E+01
 RELATIVEINF(%)  9.4564E+01  7.1192E+00  3.0720E-05  4.8568E+01  2.9431E-03
 EPSSHRINKSD(%)  6.9354E+00
 EPSSHRINKVR(%)  1.3390E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1395.8564717168224     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       258.23288805158836     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:   139.38
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1395.856       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.26E+00  1.53E+00  6.02E+02  8.17E-01  2.24E+00  2.91E+00  9.68E-01  1.00E-02  6.90E+00  1.00E-02  8.04E+00
 


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
 #CPUT: Total CPU Time in Seconds,      139.401
Stop Time:
Fri Oct  1 07:06:57 CDT 2021
