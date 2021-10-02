Fri Oct  1 06:36:08 CDT 2021
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
$DATA ../../../../data/SD1/D/dat41.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m41.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   28840.9400846983        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.6440E+02  3.9174E+02  1.9425E+01  3.0906E+02  1.2279E+02 -1.6032E+03 -1.0768E+03 -7.6257E+01 -1.6075E+03 -3.8999E+02
            -5.9980E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -881.240281543453        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1642E+00  1.9214E+00  8.8895E-01  1.9721E+00  9.3962E-01  2.8313E+00  4.2179E+00  9.9267E-01  2.4223E+00  1.4253E+00
             1.3438E+01
 PARAMETER:  2.5202E-01  7.5305E-01 -1.7713E-02  7.7907E-01  3.7719E-02  1.1407E+00  1.5393E+00  9.2640E-02  9.8473E-01  4.5437E-01
             2.6981E+00
 GRADIENT:  -4.7194E+01  3.5399E+01 -3.7595E+01  1.1772E+02 -4.2314E+00  9.1722E+01  6.5172E+01  4.0861E+00  3.4917E+01  3.1220E+01
             5.3079E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -956.734147952466        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.1454E+00  2.1123E+00  2.2653E+01  2.2150E+00  2.6114E+00  2.0928E+00  7.9755E+00  6.1704E-01  2.3942E+00  1.6341E+00
             1.3173E+01
 PARAMETER:  2.3572E-01  8.4776E-01  3.2203E+00  8.9526E-01  1.0599E+00  8.3850E-01  2.1764E+00 -3.8283E-01  9.7303E-01  5.9108E-01
             2.6782E+00
 GRADIENT:  -4.6060E+01  3.7581E+01 -7.5502E+00  4.5744E+01  2.9160E+01  6.2770E+01  8.0727E+01  3.0838E-02  3.7238E+01  3.5390E+01
             5.3176E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1128.06724818093        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.1008E+00  1.2164E+00  2.5077E+01  9.3362E-01  2.3924E+00  1.7624E+00  3.2415E+00  7.3807E+00  1.6762E+00  3.1737E-01
             9.4670E+00
 PARAMETER:  1.9605E-01  2.9593E-01  3.3220E+00  3.1316E-02  9.7231E-01  6.6666E-01  1.2761E+00  2.0989E+00  6.1650E-01 -1.0477E+00
             2.3478E+00
 GRADIENT:  -5.2702E+01 -6.1719E+01 -4.3039E-02 -4.2617E+01  6.1240E+01 -4.2184E+01 -2.0153E+01  1.0422E+00  1.0398E+01  1.9971E+00
             3.0589E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1163.26761914352        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  1.1277E+00  1.9041E+00  1.1360E+01  6.2294E-01  2.1648E+00  1.9522E+00  2.8143E+00  3.5298E+00  1.6104E+00  3.3465E-01
             8.1429E+00
 PARAMETER:  2.2014E-01  7.4403E-01  2.5301E+00 -3.7331E-01  8.7233E-01  7.6894E-01  1.1347E+00  1.3612E+00  5.7645E-01 -9.9466E-01
             2.1971E+00
 GRADIENT:   1.3041E+00  6.3351E-01  1.9649E+00 -5.4382E+00 -2.6026E+00 -3.2515E+00  1.8584E+00 -4.7420E-01  3.9419E+00  1.3048E+00
             1.3067E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1166.75862727755        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  1.1383E+00  2.0475E+00  9.5622E+00  6.2457E-01  2.1403E+00  2.0112E+00  2.9488E+00  5.1878E+00  1.5196E+00  3.1773E-01
             8.3337E+00
 PARAMETER:  2.2955E-01  8.1660E-01  2.3578E+00 -3.7069E-01  8.6095E-01  7.9873E-01  1.1814E+00  1.7463E+00  5.1844E-01 -1.0465E+00
             2.2203E+00
 GRADIENT:  -1.5233E+01 -5.2006E+00  2.1391E+00 -5.5350E+00 -5.5605E+00 -1.0006E+01 -6.7056E+00 -8.6831E-02  3.4428E+00  1.6866E+00
             1.8137E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1169.55715878965        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      616
 NPARAMETR:  1.1676E+00  1.9295E+00  7.0552E+00  7.0130E-01  2.1139E+00  2.0425E+00  3.3185E+00  4.0836E+00  7.9519E-01  1.0517E-01
             8.3273E+00
 PARAMETER:  2.5493E-01  7.5724E-01  2.0538E+00 -2.5482E-01  8.4853E-01  8.1417E-01  1.2995E+00  1.5070E+00 -1.2918E-01 -2.1522E+00
             2.2195E+00
 GRADIENT:  -2.6941E+00  2.3155E+00  1.4348E+00  1.1895E-02  2.0256E+00 -3.6265E+00  3.1177E+00  1.0633E+00 -1.4293E+00  1.8371E-01
             2.7549E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1172.02536979901        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      794
 NPARAMETR:  1.1777E+00  1.9602E+00  2.1882E+00  6.6617E-01  1.8295E+00  2.0715E+00  3.1925E+00  1.0920E+00  7.7565E-01  2.4567E-02
             8.2458E+00
 PARAMETER:  2.6358E-01  7.7305E-01  8.8310E-01 -3.0621E-01  7.0402E-01  8.2828E-01  1.2608E+00  1.8798E-01 -1.5406E-01 -3.6064E+00
             2.2097E+00
 GRADIENT:   3.5961E+00  3.0249E+00  1.9260E-01  2.0688E+00 -4.4948E-01  2.7125E+00 -7.3955E-02  2.5089E-01 -1.3949E-01  1.1227E-02
            -1.7046E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1172.16203489657        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      973
 NPARAMETR:  1.1726E+00  2.0010E+00  1.8951E+00  6.2762E-01  1.8245E+00  2.0553E+00  3.1231E+00  8.5892E-01  6.8227E-01  1.6641E-02
             8.3174E+00
 PARAMETER:  2.5924E-01  7.9365E-01  7.3926E-01 -3.6581E-01  7.0129E-01  8.2043E-01  1.2388E+00 -5.2078E-02 -2.8233E-01 -3.9959E+00
             2.2184E+00
 GRADIENT:   1.0710E-01 -3.5543E-01 -6.6067E-01 -1.8175E-01  1.9753E+00 -5.0696E-02  8.7754E-01  1.9878E-01  3.1854E-01  5.1502E-03
             2.5001E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1172.43608037331        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1149
 NPARAMETR:  1.1675E+00  2.1069E+00  1.7002E+00  5.5837E-01  1.8635E+00  2.0571E+00  3.0406E+00  4.3829E-01  1.5583E-01  1.0000E-02
             8.3018E+00
 PARAMETER:  2.5489E-01  8.4521E-01  6.3075E-01 -4.8273E-01  7.2246E-01  8.2132E-01  1.2121E+00 -7.2486E-01 -1.7590E+00 -6.2045E+00
             2.2165E+00
 GRADIENT:  -1.3392E+00 -6.0117E-01  7.0253E-02 -2.0366E+00  2.3255E-01 -1.3347E-01  1.3776E+00  7.3232E-02  7.3497E-02  0.0000E+00
            -1.8118E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1172.52537665706        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1324
 NPARAMETR:  1.1721E+00  2.0931E+00  1.7102E+00  5.6935E-01  1.8544E+00  2.0563E+00  3.0552E+00  1.0419E-01  1.0000E-02  1.0000E-02
             8.3209E+00
 PARAMETER:  2.5878E-01  8.3866E-01  6.3660E-01 -4.6326E-01  7.1758E-01  8.2089E-01  1.2168E+00 -2.1615E+00 -5.5287E+00 -1.1421E+01
             2.2188E+00
 GRADIENT:   1.6458E-01  9.4171E-02 -4.0236E-02  1.7808E-01  7.8365E-02  2.2155E-02  5.1345E-02  4.3402E-03  0.0000E+00  0.0000E+00
             3.9158E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1172.52747783642        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1499
 NPARAMETR:  1.1716E+00  2.0938E+00  1.7101E+00  5.6833E-01  1.8552E+00  2.0563E+00  3.0528E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.3186E+00
 PARAMETER:  2.5834E-01  8.3900E-01  6.3653E-01 -4.6506E-01  7.1801E-01  8.2089E-01  1.2160E+00 -4.5144E+00 -1.1653E+01 -1.9936E+01
             2.2185E+00
 GRADIENT:   2.3365E-03 -4.4594E-03  1.4803E-03 -2.2443E-03 -8.0483E-04 -1.0860E-03 -3.5085E-03  1.8553E-05  0.0000E+00  0.0000E+00
             1.0250E-02

0ITERATION NO.:   57    OBJECTIVE VALUE:  -1172.52747893265        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1556
 NPARAMETR:  1.1716E+00  2.0939E+00  1.7096E+00  5.6830E-01  1.8552E+00  2.0563E+00  3.0527E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.3185E+00
 PARAMETER:  2.5833E-01  8.3905E-01  6.3626E-01 -4.6511E-01  7.1799E-01  8.2090E-01  1.2160E+00 -4.7206E+00 -1.2189E+01 -2.0681E+01
             2.2185E+00
 GRADIENT:  -1.5842E-03  3.5260E-03 -6.9765E-04  8.4340E-04 -7.0168E-04  9.6951E-04  1.1246E-03  0.0000E+00  0.0000E+00  0.0000E+00
            -1.1928E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1556
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0351E-02 -1.3475E-03 -1.3862E-05 -4.0846E-04 -4.8525E-05
 SE:             2.9119E-02  2.8521E-02  3.1521E-05  1.1706E-04  1.4778E-04
 N:                     100         100         100         100         100

 P VAL.:         7.2224E-01  9.6232E-01  6.6009E-01  4.8412E-04  7.4264E-01

 ETASHRINKSD(%)  2.4481E+00  4.4525E+00  9.9894E+01  9.9608E+01  9.9505E+01
 ETASHRINKVR(%)  4.8363E+00  8.7067E+00  1.0000E+02  9.9998E+01  9.9998E+01
 EBVSHRINKSD(%)  2.8450E+00  3.1702E+00  9.9888E+01  9.9706E+01  9.9438E+01
 EBVSHRINKVR(%)  5.6090E+00  6.2399E+00  1.0000E+02  9.9999E+01  9.9997E+01
 RELATIVEINF(%)  9.4116E+01  4.4174E+01  2.7866E-05  2.7092E-04  8.3375E-04
 EPSSHRINKSD(%)  7.1109E+00
 EPSSHRINKVR(%)  1.3716E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1172.5274789326550     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       481.56188083575580     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    42.79
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1172.527       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.17E+00  2.09E+00  1.71E+00  5.68E-01  1.86E+00  2.06E+00  3.05E+00  1.00E-02  1.00E-02  1.00E-02  8.32E+00
 


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
 #CPUT: Total CPU Time in Seconds,       42.856
Stop Time:
Fri Oct  1 06:36:53 CDT 2021
