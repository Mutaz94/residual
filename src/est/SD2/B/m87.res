Fri Oct  1 08:40:23 CDT 2021
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
$DATA ../../../../data/SD2/B/dat87.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m87.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1679.63545037487        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9518E+02 -7.0348E+01 -4.2774E+00 -9.6161E+00  8.8137E+01  4.5412E+01 -2.7312E+00 -1.6914E+02 -7.9680E+00  1.5145E+01
            -7.3250E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2079.00707508959        NO. OF FUNC. EVALS.:  85
 CUMULATIVE NO. OF FUNC. EVALS.:       98
 NPARAMETR:  8.7675E-01  1.0529E+00  1.0155E+00  1.0013E+00  9.4874E-01  1.0617E+00  9.9961E-01  1.1372E+00  1.0017E+00  9.7246E-01
             1.5728E+00
 PARAMETER: -3.1531E-02  1.5156E-01  1.1533E-01  1.0133E-01  4.7374E-02  1.5988E-01  9.9606E-02  2.2861E-01  1.0169E-01  7.2077E-02
             5.5283E-01
 GRADIENT:  -1.1699E+02 -7.0273E+00 -2.4439E+01 -3.2659E+00 -2.7454E+01  4.0205E+01  5.1828E+00  1.8993E+01  9.7367E+00  2.9845E+01
             2.7819E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2123.65422702353        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      169
 NPARAMETR:  8.9114E-01  1.0950E+00  1.1826E+00  9.6982E-01  9.6302E-01  9.8811E-01  7.9530E-01  7.8079E-02  1.0051E+00  1.2774E+00
             1.2777E+00
 PARAMETER: -1.5250E-02  1.9078E-01  2.6771E-01  6.9357E-02  6.2318E-02  8.8035E-02 -1.2904E-01 -2.4500E+00  1.0511E-01  3.4486E-01
             3.4504E-01
 GRADIENT:  -2.2396E+01  6.0671E+01  4.1836E+01 -2.3188E+01 -1.1116E+02  1.1576E+01 -3.0533E+00 -3.2559E-03 -1.2717E+01  4.2424E+01
             1.7986E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2175.00374061780        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      285
 NPARAMETR:  9.8976E-01  1.0309E+00  1.0412E+00  1.0171E+00  9.4865E-01  9.2592E-01  1.0694E+00  1.4606E-01  9.8836E-01  9.8593E-01
             1.1040E+00
 PARAMETER:  8.9707E-02  1.3044E-01  1.4038E-01  1.1700E-01  4.7281E-02  2.3032E-02  1.6708E-01 -1.8238E+00  8.8296E-02  8.5833E-02
             1.9895E-01
 GRADIENT:  -7.7809E+01 -5.7548E+00  2.1526E+01 -3.8678E+01 -4.7513E+01 -3.7841E+01  4.6639E+00 -1.9227E-01 -6.5925E-01  1.3215E+01
             9.2296E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2186.36622901593        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      465
 NPARAMETR:  1.0222E+00  1.1799E+00  9.1925E-01  9.4501E-01  9.7632E-01  1.0160E+00  9.7138E-01  1.8807E-01  1.0593E+00  8.9370E-01
             9.6715E-01
 PARAMETER:  1.2195E-01  2.6543E-01  1.5799E-02  4.3440E-02  7.6035E-02  1.1587E-01  7.0963E-02 -1.5709E+00  1.5756E-01 -1.2388E-02
             6.6602E-02
 GRADIENT:   4.5486E+00  5.8763E+00  5.6907E+00  1.1082E+01 -5.5535E+00  2.7284E+00  8.4055E-01 -4.2990E-01  1.6404E-01 -3.7657E+00
            -2.1482E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2187.60999776161        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      641
 NPARAMETR:  1.0209E+00  1.5400E+00  7.6006E-01  7.1544E-01  1.0900E+00  1.0080E+00  8.1933E-01  2.1694E-01  1.2717E+00  9.5376E-01
             9.6075E-01
 PARAMETER:  1.2071E-01  5.3180E-01 -1.7436E-01 -2.3486E-01  1.8619E-01  1.0795E-01 -9.9267E-02 -1.4281E+00  3.4038E-01  5.2661E-02
             5.9956E-02
 GRADIENT:  -2.2203E+00  9.5757E+00  9.1991E-01  7.5734E+00 -2.9968E+00 -1.5143E+00 -3.6678E-01 -5.7544E-02 -5.9684E-01 -1.0516E-01
            -7.7662E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2187.67345758832        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      825
 NPARAMETR:  1.0219E+00  1.5529E+00  7.5560E-01  6.9976E-01  1.0984E+00  1.0125E+00  8.1517E-01  2.8329E-01  1.2882E+00  9.5573E-01
             9.6104E-01
 PARAMETER:  1.2167E-01  5.4010E-01 -1.8024E-01 -2.5702E-01  1.9382E-01  1.1246E-01 -1.0436E-01 -1.1613E+00  3.5322E-01  5.4718E-02
             6.0256E-02
 GRADIENT:  -8.6432E-02 -1.8848E+00  2.6342E-01 -2.5293E-01 -2.0725E+00  3.1105E-01  1.2027E-01 -3.7792E-03 -2.6547E-01 -2.4104E-01
             3.4436E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2187.67951319836        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1006
 NPARAMETR:  1.0234E+00  1.5513E+00  7.5802E-01  6.9975E-01  1.0997E+00  1.0129E+00  8.1431E-01  2.8148E-01  1.2904E+00  9.5762E-01
             9.6093E-01
 PARAMETER:  1.2314E-01  5.3911E-01 -1.7705E-01 -2.5703E-01  1.9499E-01  1.1277E-01 -1.0542E-01 -1.1677E+00  3.5499E-01  5.6698E-02
             6.0147E-02
 GRADIENT:   3.2030E+00 -3.8282E+00  2.6122E-01 -1.1017E+00 -1.4034E+00  4.5105E-01  6.2757E-03 -1.7618E-02  1.4176E-04 -1.2822E-01
            -7.2334E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2187.68100535585        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1187
 NPARAMETR:  1.0232E+00  1.5512E+00  7.5970E-01  7.0041E-01  1.1003E+00  1.0127E+00  8.1409E-01  2.8994E-01  1.2902E+00  9.5810E-01
             9.6090E-01
 PARAMETER:  1.2296E-01  5.3903E-01 -1.7484E-01 -2.5609E-01  1.9561E-01  1.1263E-01 -1.0568E-01 -1.1381E+00  3.5482E-01  5.7196E-02
             6.0115E-02
 GRADIENT:   2.8193E+00 -3.1638E+00  2.1426E-01 -5.6020E-01 -1.2206E+00  3.9582E-01 -3.8038E-02 -1.7893E-02 -2.0714E-03 -1.7409E-01
            -1.0739E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2187.68240167146        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1368
 NPARAMETR:  1.0232E+00  1.5507E+00  7.6131E-01  7.0077E-01  1.1009E+00  1.0127E+00  8.1412E-01  2.9746E-01  1.2901E+00  9.5877E-01
             9.6090E-01
 PARAMETER:  1.2294E-01  5.3871E-01 -1.7271E-01 -2.5557E-01  1.9615E-01  1.1261E-01 -1.0565E-01 -1.1125E+00  3.5470E-01  5.7892E-02
             6.0113E-02
 GRADIENT:   2.7967E+00 -3.2444E+00  1.9613E-01 -5.8436E-01 -1.1252E+00  3.9275E-01 -3.5578E-02 -1.7186E-02  7.2160E-03 -1.5833E-01
            -9.7997E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2187.68366685751        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1549
 NPARAMETR:  1.0232E+00  1.5502E+00  7.6271E-01  7.0116E-01  1.1015E+00  1.0127E+00  8.1417E-01  3.0477E-01  1.2899E+00  9.5938E-01
             9.6090E-01
 PARAMETER:  1.2291E-01  5.3841E-01 -1.7087E-01 -2.5502E-01  1.9663E-01  1.1258E-01 -1.0559E-01 -1.0882E+00  3.5457E-01  5.8536E-02
             6.0115E-02
 GRADIENT:   2.7516E+00 -3.2903E+00  1.1882E-01 -5.1543E-01 -9.6747E-01  3.8621E-01 -2.7448E-02 -1.4430E-02  2.7563E-02 -1.3257E-01
            -7.8304E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2187.68542249749        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1737             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0234E+00  1.5490E+00  7.6399E-01  7.0171E-01  1.1022E+00  1.0128E+00  8.1435E-01  3.1856E-01  1.2900E+00  9.6033E-01
             9.6094E-01
 PARAMETER:  1.2310E-01  5.3762E-01 -1.6920E-01 -2.5424E-01  1.9728E-01  1.1271E-01 -1.0537E-01 -1.0440E+00  3.5464E-01  5.9526E-02
             6.0158E-02
 GRADIENT:   6.2630E+02  5.6689E+02  1.2118E+00  1.1176E+02  1.4695E+01  8.2269E+01  7.2369E+00  1.0228E-01  2.4588E+01  9.2125E-01
             1.0565E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2187.68640084843        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1924
 NPARAMETR:  1.0234E+00  1.5484E+00  7.6532E-01  7.0218E-01  1.1025E+00  1.0128E+00  8.1443E-01  3.2464E-01  1.2897E+00  9.6082E-01
             9.6094E-01
 PARAMETER:  1.2309E-01  5.3721E-01 -1.6746E-01 -2.5357E-01  1.9761E-01  1.1270E-01 -1.0527E-01 -1.0250E+00  3.5441E-01  6.0034E-02
             6.0160E-02
 GRADIENT:   3.1776E+00 -4.4946E+00 -5.6682E-01 -4.5419E-01  8.0465E-02  4.4434E-01  3.3323E-02  1.1967E-02  2.1271E-01  4.2841E-02
             7.1220E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2187.68772111549        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2112             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0233E+00  1.5477E+00  7.6766E-01  7.0271E-01  1.1027E+00  1.0128E+00  8.1448E-01  3.2388E-01  1.2890E+00  9.6102E-01
             9.6090E-01
 PARAMETER:  1.2308E-01  5.3678E-01 -1.6440E-01 -2.5281E-01  1.9779E-01  1.1269E-01 -1.0521E-01 -1.0274E+00  3.5384E-01  6.0244E-02
             6.0117E-02
 GRADIENT:   6.2633E+02  5.6568E+02  1.7400E+00  1.1121E+02  1.4065E+01  8.2266E+01  7.1676E+00  8.2787E-02  2.4472E+01  8.1288E-01
             9.4821E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2187.68857329093        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2295             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0233E+00  1.5469E+00  7.6928E-01  7.0306E-01  1.1031E+00  1.0128E+00  8.1457E-01  3.2824E-01  1.2884E+00  9.6147E-01
             9.6089E-01
 PARAMETER:  1.2307E-01  5.3628E-01 -1.6230E-01 -2.5231E-01  1.9810E-01  1.1268E-01 -1.0509E-01 -1.0140E+00  3.5339E-01  6.0703E-02
             6.0102E-02
 GRADIENT:   6.2635E+02  5.6453E+02  1.8524E+00  1.1085E+02  1.3965E+01  8.2267E+01  7.1420E+00  7.9903E-02  2.4406E+01  8.0064E-01
             9.2831E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2187.68946486382        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2482
 NPARAMETR:  1.0233E+00  1.5465E+00  7.7034E-01  7.0366E-01  1.1033E+00  1.0127E+00  8.1464E-01  3.3222E-01  1.2881E+00  9.6174E-01
             9.6088E-01
 PARAMETER:  1.2306E-01  5.3599E-01 -1.6092E-01 -2.5146E-01  1.9828E-01  1.1267E-01 -1.0501E-01 -1.0020E+00  3.5318E-01  6.0984E-02
             6.0093E-02
 GRADIENT:   3.1850E+00 -3.5992E+00  1.6930E-01 -7.2533E-01 -7.1229E-01  4.4584E-01 -3.5182E-02 -1.6124E-02  5.6616E-02 -1.0289E-01
            -8.1693E-02

0ITERATION NO.:   78    OBJECTIVE VALUE:  -2187.68992022353        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:     2581
 NPARAMETR:  1.0233E+00  1.5461E+00  7.7014E-01  7.0386E-01  1.1035E+00  1.0127E+00  8.1478E-01  3.3903E-01  1.2883E+00  9.6204E-01
             9.6093E-01
 PARAMETER:  1.2306E-01  5.3573E-01 -1.6119E-01 -2.5117E-01  1.9851E-01  1.1266E-01 -1.0484E-01 -9.8166E-01  3.5331E-01  6.1304E-02
             6.0143E-02
 GRADIENT:   5.8804E-03  3.0155E-01 -2.5917E-01 -2.7508E-01  9.6964E-02  1.5992E-03  4.3604E-03  3.6911E-03  7.9293E-02  5.9885E-03
             3.8208E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2581
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.1301E-04 -2.7596E-02 -9.9532E-03  2.0411E-02 -3.0817E-02
 SE:             2.9885E-02  2.1585E-02  4.2898E-03  2.4286E-02  2.3203E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9164E-01  2.0108E-01  2.0330E-02  4.0068E-01  1.8413E-01

 ETASHRINKSD(%)  1.0000E-10  2.7686E+01  8.5629E+01  1.8637E+01  2.2269E+01
 ETASHRINKVR(%)  1.0000E-10  4.7707E+01  9.7935E+01  3.3801E+01  3.9578E+01
 EBVSHRINKSD(%)  3.0414E-01  2.6838E+01  8.7598E+01  1.9917E+01  2.0600E+01
 EBVSHRINKVR(%)  6.0736E-01  4.6473E+01  9.8462E+01  3.5868E+01  3.6956E+01
 RELATIVEINF(%)  9.9239E+01  3.2809E+00  2.1633E-01  4.3868E+00  1.2790E+01
 EPSSHRINKSD(%)  3.3580E+01
 EPSSHRINKVR(%)  5.5884E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2187.6899202235268     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1268.7513870188541     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    41.50
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2187.690       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.55E+00  7.70E-01  7.04E-01  1.10E+00  1.01E+00  8.15E-01  3.39E-01  1.29E+00  9.62E-01  9.61E-01
 


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
 #CPUT: Total CPU Time in Seconds,       41.537
Stop Time:
Fri Oct  1 08:41:06 CDT 2021