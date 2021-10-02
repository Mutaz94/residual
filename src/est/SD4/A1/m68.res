Sat Oct  2 00:10:29 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat68.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m68.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1108.99144821535        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3898E+02  1.1639E+02 -2.5870E+01  2.2317E+02  1.2718E+02  5.4285E+01  4.9940E+00 -7.5958E-01 -9.5080E+00 -5.1297E+01
            -1.0544E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1453.88253362544        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0776E+00  9.8654E-01  1.0315E+00  9.5451E-01  9.5000E-01  1.0888E+00  9.2491E-01  9.7067E-01  8.9418E-01  1.0024E+00
             2.5707E+00
 PARAMETER:  1.7474E-01  8.6446E-02  1.3103E-01  5.3444E-02  4.8708E-02  1.8505E-01  2.1944E-02  7.0230E-02 -1.1853E-02  1.0242E-01
             1.0442E+00
 GRADIENT:   2.1014E+02  6.7040E-01 -4.5511E+00  2.8397E+00 -3.3614E+00  4.6697E+01  1.5835E+01  5.9336E+00  2.3733E+01  7.1275E+00
             3.8448E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1460.86646567791        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.0549E+00  7.6103E-01  1.0022E+00  1.1188E+00  8.4471E-01  1.0687E+00  9.4413E-01  3.7600E-01  7.7705E-01  1.0319E+00
             2.4823E+00
 PARAMETER:  1.5346E-01 -1.7308E-01  1.0224E-01  2.1230E-01 -6.8759E-02  1.6648E-01  4.2512E-02 -8.7815E-01 -1.5225E-01  1.3140E-01
             1.0092E+00
 GRADIENT:   1.6116E+02  3.3125E+01 -5.5226E-01  8.2615E+01 -1.4713E+01  4.2045E+01  6.2235E+00  1.2834E+00  1.4778E+01  1.7562E+01
             1.6010E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1465.29442569496        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      255
 NPARAMETR:  1.0072E+00  7.7504E-01  7.1055E-01  1.0588E+00  7.1173E-01  9.6937E-01  7.7782E-01  1.9641E-01  7.4328E-01  7.8289E-01
             2.4222E+00
 PARAMETER:  1.0715E-01 -1.5485E-01 -2.4171E-01  1.5712E-01 -2.4006E-01  6.8895E-02 -1.5126E-01 -1.5276E+00 -1.9668E-01 -1.4476E-01
             9.8466E-01
 GRADIENT:  -5.0176E+01  8.7849E+00 -1.3110E+01  1.8800E+01  1.1665E+01 -3.1422E+00  2.7690E-01  5.1517E-01  2.3364E+00  3.3294E+00
            -1.6704E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1469.36001191772        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      436
 NPARAMETR:  1.0305E+00  5.4245E-01  8.3646E-01  1.2062E+00  6.8079E-01  9.4710E-01  8.1347E-01  7.6857E-02  6.3240E-01  7.1312E-01
             2.5859E+00
 PARAMETER:  1.3005E-01 -5.1166E-01 -7.8577E-02  2.8748E-01 -2.8450E-01  4.5650E-02 -1.0644E-01 -2.4658E+00 -3.5823E-01 -2.3810E-01
             1.0501E+00
 GRADIENT:   5.3609E+00  1.0986E+01  2.1224E+01  1.5019E+00 -4.8881E+01 -1.0325E+01  6.6909E-01  7.7507E-02  1.2199E+01  1.3186E+01
            -2.3384E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1471.88833075077        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      614
 NPARAMETR:  1.0235E+00  2.5824E-01  7.0972E-01  1.3352E+00  5.4781E-01  9.6753E-01  1.2389E+00  1.0000E-02  5.5282E-01  6.0052E-01
             2.6640E+00
 PARAMETER:  1.2327E-01 -1.2539E+00 -2.4288E-01  3.8911E-01 -5.0183E-01  6.6995E-02  3.1426E-01 -9.4027E+00 -4.9272E-01 -4.0997E-01
             1.0798E+00
 GRADIENT:  -4.7713E+00  4.3769E+00  2.3578E+01 -1.3237E+00 -4.6509E+01 -3.2308E+00 -6.5993E-01  0.0000E+00  5.9169E+00  8.5882E+00
            -5.1159E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1473.28372966592        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      789
 NPARAMETR:  1.0195E+00  1.5532E-01  7.0084E-01  1.3866E+00  5.2811E-01  9.6682E-01  2.6107E+00  1.0000E-02  5.2724E-01  5.3322E-01
             2.6632E+00
 PARAMETER:  1.1934E-01 -1.7622E+00 -2.5548E-01  4.2684E-01 -5.3845E-01  6.6255E-02  1.0596E+00 -1.6600E+01 -5.4010E-01 -5.2882E-01
             1.0795E+00
 GRADIENT:  -6.3799E+00  3.6892E+00  1.4596E+01  2.1824E+00 -3.1951E+01 -3.2159E+00  3.2174E+00  0.0000E+00  5.1452E+00  4.7466E+00
            -1.0612E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1476.33004321124        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      967
 NPARAMETR:  1.0269E+00  4.4975E-02  1.0836E+00  1.5223E+00  6.8547E-01  9.7506E-01  4.6071E+00  1.0000E-02  4.7792E-01  5.0454E-01
             2.7959E+00
 PARAMETER:  1.2656E-01 -3.0016E+00  1.8026E-01  5.2023E-01 -2.7766E-01  7.4739E-02  1.6276E+00 -3.7953E+01 -6.3831E-01 -5.8411E-01
             1.1282E+00
 GRADIENT:   1.8035E+01  9.5898E-01  6.6669E-01  3.1179E+01 -1.1798E+01  3.1756E+00  4.9534E-01  0.0000E+00  1.4400E+00  3.7870E+00
             5.3947E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1478.25087830053        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1142
 NPARAMETR:  1.0173E+00  1.0000E-02  1.9029E+00  1.5913E+00  9.1160E-01  9.5588E-01  9.4408E+00  1.0000E-02  4.4134E-01  2.5001E-01
             2.8616E+00
 PARAMETER:  1.1715E-01 -4.8622E+00  7.4339E-01  5.6458E-01  7.4501E-03  5.4879E-02  2.3450E+00 -7.2277E+01 -7.1795E-01 -1.2863E+00
             1.1514E+00
 GRADIENT:   5.3726E-01  0.0000E+00  2.2502E+00 -1.0545E+01 -4.3514E+00 -3.3100E-01  1.1196E-01  0.0000E+00 -6.1910E-01  2.5445E-01
             1.9061E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1478.29302920442        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1318
 NPARAMETR:  1.0172E+00  1.0000E-02  2.0791E+00  1.6025E+00  9.4936E-01  9.5357E-01  9.7110E+00  1.0000E-02  4.4370E-01  1.9442E-01
             2.8562E+00
 PARAMETER:  1.1708E-01 -5.3191E+00  8.3194E-01  5.7157E-01  4.8033E-02  5.2454E-02  2.3733E+00 -8.0734E+01 -7.1261E-01 -1.5377E+00
             1.1495E+00
 GRADIENT:  -1.2884E+00  0.0000E+00  1.0131E+00  1.0334E-01 -2.0286E+00 -1.1689E+00  1.7679E-01  0.0000E+00  6.3322E-01  1.0838E-01
            -1.1759E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1478.34247114651        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1494
 NPARAMETR:  1.0176E+00  1.0000E-02  2.0356E+00  1.6012E+00  9.4431E-01  9.5605E-01  5.1932E+00  1.0000E-02  4.4311E-01  1.0167E-01
             2.8671E+00
 PARAMETER:  1.1744E-01 -6.2295E+00  8.1077E-01  5.7074E-01  4.2704E-02  5.5058E-02  1.7473E+00 -9.8917E+01 -7.1393E-01 -2.1861E+00
             1.1533E+00
 GRADIENT:  -2.3779E-01  0.0000E+00  1.7183E-01  9.5263E-01 -5.8937E-01 -1.7285E-01 -1.5164E-02  0.0000E+00 -8.6779E-02  1.4520E-02
            -2.0082E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1478.35062645362        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1681
 NPARAMETR:  1.0175E+00  1.0000E-02  2.0327E+00  1.6014E+00  9.4462E-01  9.5651E-01  6.2912E+00  1.0000E-02  4.4342E-01  3.1817E-02
             2.8708E+00
 PARAMETER:  1.1739E-01 -6.2295E+00  8.0935E-01  5.7086E-01  4.3030E-02  5.5541E-02  1.9392E+00 -9.8917E+01 -7.1325E-01 -3.3478E+00
             1.1546E+00
 GRADIENT:  -4.1057E-01  0.0000E+00 -2.8045E-02  1.7399E+00 -2.3549E-01  2.8762E-02 -1.4432E-02  0.0000E+00  4.7667E-02  1.0636E-03
             3.3671E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1478.35458247146        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1857            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0178E+00  1.0000E-02  2.0359E+00  1.6004E+00  9.4524E-01  9.5640E-01  7.7761E+00  1.0000E-02  4.4293E-01  1.0000E-02
             2.8696E+00
 PARAMETER:  1.1761E-01 -6.2295E+00  8.1092E-01  5.7026E-01  4.3683E-02  5.5423E-02  2.1511E+00 -9.8917E+01 -7.1435E-01 -4.7781E+00
             1.1542E+00
 GRADIENT:   6.5682E+01  0.0000E+00  7.5496E-01  1.3976E+02  1.1177E+00  5.0439E+00  5.5577E-02  0.0000E+00  3.2441E+00  0.0000E+00
             9.2251E+00

0ITERATION NO.:   62    OBJECTIVE VALUE:  -1478.35458247146        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1915
 NPARAMETR:  1.0178E+00  1.0000E-02  2.0359E+00  1.6004E+00  9.4524E-01  9.5640E-01  7.7761E+00  1.0000E-02  4.4293E-01  1.0000E-02
             2.8696E+00
 PARAMETER:  1.1761E-01 -6.2295E+00  8.1092E-01  5.7026E-01  4.3683E-02  5.5423E-02  2.1511E+00 -9.8917E+01 -7.1435E-01 -4.7781E+00
             1.1542E+00
 GRADIENT:   4.4205E-01  0.0000E+00 -2.4892E-02 -2.6465E+00  3.7653E-01  3.6084E-02  1.1482E-03  0.0000E+00  4.0070E-02  0.0000E+00
            -7.9700E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1915
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.8029E-05  7.9249E-05  5.9971E-05 -9.5889E-03 -1.6214E-05
 SE:             2.9147E-02  1.7302E-03  7.3741E-05  2.2744E-02  2.0480E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9869E-01  9.6347E-01  4.1607E-01  6.7332E-01  9.3690E-01

 ETASHRINKSD(%)  2.3542E+00  9.4204E+01  9.9753E+01  2.3804E+01  9.9314E+01
 ETASHRINKVR(%)  4.6530E+00  9.9664E+01  9.9999E+01  4.1941E+01  9.9995E+01
 EBVSHRINKSD(%)  2.4866E+00  9.4261E+01  9.9733E+01  2.3789E+01  9.9311E+01
 EBVSHRINKVR(%)  4.9114E+00  9.9671E+01  9.9999E+01  4.1919E+01  9.9995E+01
 RELATIVEINF(%)  8.4556E+01  4.7332E-04  6.9282E-06  8.1419E-02  1.0983E-04
 EPSSHRINKSD(%)  2.0252E+01
 EPSSHRINKVR(%)  3.6403E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1478.3545824714627     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -743.20375590772449     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.70
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1478.355       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.00E-02  2.04E+00  1.60E+00  9.45E-01  9.56E-01  7.78E+00  1.00E-02  4.43E-01  1.00E-02  2.87E+00
 


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
 #CPUT: Total CPU Time in Seconds,       23.736
Stop Time:
Sat Oct  2 00:10:54 CDT 2021