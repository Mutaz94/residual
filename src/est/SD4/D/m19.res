Sat Oct  2 05:32:19 CDT 2021
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
$DATA ../../../../data/SD4/D/dat19.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m19.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   1001.74741375274        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.1727E+02 -9.4649E+01 -6.2629E+01 -2.4837E+02  2.0416E+02 -5.7269E+02 -3.6166E+02 -2.7911E+01 -7.4861E+02 -2.3245E+02
            -3.3596E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1054.33008502640        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1910E+00  9.4656E-01  3.1233E+00  1.6272E+00  1.6953E+00  2.1346E+00  2.4253E+00  1.0142E+00  4.3058E+00  1.4937E+00
             4.6177E+00
 PARAMETER:  2.7477E-01  4.5082E-02  1.2389E+00  5.8684E-01  6.2787E-01  8.5827E-01  9.8595E-01  1.1414E-01  1.5600E+00  5.0125E-01
             1.6299E+00
 GRADIENT:   5.3169E+01 -2.2070E+01 -1.1259E+01  5.0511E+01 -1.7170E+01  8.8723E+01  2.2213E+01  1.0697E+00  1.4929E+02  1.2820E+01
             1.5555E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1071.95288698665        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      241
 NPARAMETR:  1.1046E+00  1.0732E+00  4.8193E+00  1.4109E+00  3.9149E+00  2.5061E+00  2.4744E+00  1.4345E+00  3.2772E+00  4.1964E+00
             4.5571E+00
 PARAMETER:  1.9952E-01  1.7066E-01  1.6726E+00  4.4421E-01  1.4648E+00  1.0187E+00  1.0060E+00  4.6082E-01  1.2870E+00  1.5342E+00
             1.6167E+00
 GRADIENT:  -3.1221E+01 -1.2110E+01  2.3625E+00  7.6454E+00 -8.6542E+00  6.7089E+01  1.8523E+01 -2.0969E-02  5.8312E+01  1.7511E+01
             1.3466E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1111.79277477174        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      417
 NPARAMETR:  1.2427E+00  1.3491E+00  6.6263E+00  1.0435E+00  4.2085E+00  2.1605E+00  1.1407E+00  2.6853E+00  3.3828E+00  3.5295E+00
             3.6897E+00
 PARAMETER:  3.1725E-01  3.9945E-01  1.9910E+00  1.4259E-01  1.5371E+00  8.7035E-01  2.3167E-01  1.0878E+00  1.3187E+00  1.3612E+00
             1.4056E+00
 GRADIENT:   2.0771E+01 -1.3417E+01  3.3278E+00 -3.4346E+00 -5.4675E+00  2.1686E+01  8.6005E+00 -1.8089E-01  1.3209E+01  1.0350E+01
             1.9959E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1126.46729372412        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      594
 NPARAMETR:  1.1753E+00  1.1410E+00  4.6849E+00  1.1760E+00  1.6536E+00  2.1116E+00  4.2278E-01  1.1212E+00  3.2630E+00  5.5343E-01
             3.5308E+00
 PARAMETER:  2.6150E-01  2.3195E-01  1.6443E+00  2.6212E-01  6.0295E-01  8.4746E-01 -7.6091E-01  2.1439E-01  1.2827E+00 -4.9162E-01
             1.3615E+00
 GRADIENT:  -7.9464E+00  3.7348E+00 -9.5615E+00  7.1712E+00 -3.0095E+00  1.0997E+01  4.2888E-01  8.2434E-01  4.0155E+00  2.1128E+00
            -9.6800E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1130.47228021093        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      769
 NPARAMETR:  1.1952E+00  1.0991E+00  1.0068E+01  1.1692E+00  1.6746E+00  2.0510E+00  2.2635E-01  6.0766E-01  3.1838E+00  2.6421E-01
             3.5296E+00
 PARAMETER:  2.7830E-01  1.9450E-01  2.4094E+00  2.5634E-01  6.1555E-01  8.1834E-01 -1.3857E+00 -3.9813E-01  1.2581E+00 -1.2310E+00
             1.3612E+00
 GRADIENT:  -6.7598E-01  6.9095E-01 -1.0235E-01 -4.4301E-01 -1.8421E-01 -1.7498E+00 -1.0218E-01  7.9455E-02 -1.5114E+00  5.5641E-01
            -6.7705E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1130.68245487510        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      946
 NPARAMETR:  1.1954E+00  1.0763E+00  1.1906E+01  1.1946E+00  1.6752E+00  2.0607E+00  1.6707E-01  3.6980E-01  3.1659E+00  1.3252E-01
             3.5296E+00
 PARAMETER:  2.7850E-01  1.7352E-01  2.5770E+00  2.7778E-01  6.1595E-01  8.2306E-01 -1.6893E+00 -8.9478E-01  1.2524E+00 -1.9210E+00
             1.3612E+00
 GRADIENT:  -7.1218E-01 -6.7795E-01  3.6478E-01  4.2929E-01 -1.3214E-01 -1.3547E-01 -5.3317E-02  2.0990E-02  4.5802E-01  1.4393E-01
             4.4898E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1130.77386645285        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1121
 NPARAMETR:  1.1967E+00  1.0751E+00  1.0115E+01  1.1911E+00  1.6665E+00  2.0611E+00  1.3098E-01  1.8489E-01  3.1620E+00  4.8122E-02
             3.5310E+00
 PARAMETER:  2.7959E-01  1.7246E-01  2.4141E+00  2.7492E-01  6.1074E-01  8.2325E-01 -1.9327E+00 -1.5880E+00  1.2512E+00 -2.9340E+00
             1.3616E+00
 GRADIENT:   8.3474E-02  2.4581E-01 -3.4021E-02  1.2931E-01 -3.0955E-02  1.4164E-01 -5.6808E-02  7.5367E-03 -9.9484E-02  1.8655E-02
            -2.4719E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1130.77499029115        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1296
 NPARAMETR:  1.1966E+00  1.0719E+00  1.0141E+01  1.1934E+00  1.6665E+00  2.0604E+00  1.1743E-01  1.3739E-01  3.1571E+00  3.1950E-02
             3.5321E+00
 PARAMETER:  2.7951E-01  1.6940E-01  2.4166E+00  2.7679E-01  6.1074E-01  8.2291E-01 -2.0419E+00 -1.8849E+00  1.2496E+00 -3.3436E+00
             1.3619E+00
 GRADIENT:   3.8014E-02  7.7484E-03 -1.7321E-02  4.3410E-03  2.6293E-02  1.0561E-03 -4.5906E-02  4.1443E-03 -1.4913E-02  8.2291E-03
             3.8490E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1130.82856001328        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1478
 NPARAMETR:  1.1965E+00  1.1126E+00  1.0323E+01  1.1599E+00  1.6697E+00  2.0600E+00  2.9347E-01  4.2757E-02  3.2214E+00  1.1936E-02
             3.5312E+00
 PARAMETER:  2.7939E-01  2.0669E-01  2.4344E+00  2.4834E-01  6.1262E-01  8.2269E-01 -1.1260E+00 -3.0522E+00  1.2698E+00 -4.3282E+00
             1.3616E+00
 GRADIENT:  -4.4656E-02 -1.0031E+00 -4.8353E-04 -5.1424E-02  1.5238E-01 -1.0414E-01  1.2932E-02  3.8375E-04  4.3735E-01  1.1637E-03
             3.9662E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1130.85347753372        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:     1636
 NPARAMETR:  1.1975E+00  1.1213E+00  1.0342E+01  1.1539E+00  1.6690E+00  2.0917E+00  3.0087E-01  1.0000E-02  3.2122E+00  1.0000E-02
             3.5290E+00
 PARAMETER:  2.8025E-01  2.1453E-01  2.4362E+00  2.4316E-01  6.1222E-01  8.3799E-01 -1.1011E+00 -5.2766E+00  1.2669E+00 -5.0226E+00
             1.3610E+00
 GRADIENT:   3.9401E-01  1.7320E+00 -1.9054E-02  1.5267E-01 -3.4447E-01  6.0448E+00 -8.1408E-02  0.0000E+00 -2.3380E+00  0.0000E+00
            -3.7016E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1130.86103769612        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1824
 NPARAMETR:  1.1995E+00  1.1188E+00  1.0402E+01  1.1555E+00  1.6700E+00  2.0847E+00  3.0903E-01  1.0000E-02  3.2163E+00  1.0000E-02
             3.5291E+00
 PARAMETER:  2.8194E-01  2.1229E-01  2.4420E+00  2.4451E-01  6.1282E-01  8.3462E-01 -1.0743E+00 -5.2711E+00  1.2682E+00 -5.0211E+00
             1.3611E+00
 GRADIENT:   1.2671E+00  2.8732E-01 -1.4224E-03 -3.2420E-02 -7.2866E-02  4.6501E+00 -5.6152E-03  0.0000E+00 -1.1775E+00  0.0000E+00
            -1.2509E-01

0ITERATION NO.:   56    OBJECTIVE VALUE:  -1130.86103769612        NO. OF FUNC. EVALS.:  30
 CUMULATIVE NO. OF FUNC. EVALS.:     1854
 NPARAMETR:  1.1996E+00  1.1179E+00  1.0405E+01  1.1552E+00  1.6706E+00  2.0846E+00  3.1237E-01  1.0000E-02  3.2173E+00  1.0000E-02
             3.5295E+00
 PARAMETER:  2.8194E-01  2.1229E-01  2.4420E+00  2.4451E-01  6.1282E-01  8.3462E-01 -1.0743E+00 -5.2711E+00  1.2682E+00 -5.0211E+00
             1.3611E+00
 GRADIENT:  -6.9679E-03  3.2159E-01 -7.3120E-04  4.2031E-02 -6.6906E-02  1.9863E-02 -6.7826E-03  0.0000E+00 -9.0197E-02  0.0000E+00
            -7.2105E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1854
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.9052E-03 -1.9395E-02  7.2179E-06  4.6996E-03  2.5590E-05
 SE:             2.9560E-02  4.6303E-03  6.7278E-06  2.7975E-02  7.2525E-05
 N:                     100         100         100         100         100

 P VAL.:         9.2171E-01  2.8065E-05  2.8334E-01  8.6659E-01  7.2420E-01

 ETASHRINKSD(%)  9.7162E-01  8.4488E+01  9.9977E+01  6.2790E+00  9.9757E+01
 ETASHRINKVR(%)  1.9338E+00  9.7594E+01  1.0000E+02  1.2164E+01  9.9999E+01
 EBVSHRINKSD(%)  1.0341E+00  8.9291E+01  9.9962E+01  4.2792E+00  9.9689E+01
 EBVSHRINKVR(%)  2.0575E+00  9.8853E+01  1.0000E+02  8.3752E+00  9.9999E+01
 RELATIVEINF(%)  9.7554E+01  4.8323E-01  1.1317E-05  3.9272E+01  7.1561E-04
 EPSSHRINKSD(%)  2.4418E+01
 EPSSHRINKVR(%)  4.2874E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1130.8610376961219     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -395.71021113238373     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.51
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1130.861       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.20E+00  1.12E+00  1.04E+01  1.16E+00  1.67E+00  2.08E+00  3.09E-01  1.00E-02  3.22E+00  1.00E-02  3.53E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.544
Stop Time:
Sat Oct  2 05:32:46 CDT 2021
