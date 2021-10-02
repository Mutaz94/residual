Sat Oct  2 04:16:44 CDT 2021
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
$DATA ../../../../data/SD4/TD1/dat9.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m9.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1617.58958742528        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0826E+02 -2.0412E+01  3.8522E+00 -2.8415E+01  1.4187E+01  1.5833E+01  4.9763E+00  3.2444E+00 -2.5093E-01 -2.8033E+00
             2.1599E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1625.44659719472        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.3428E-01  1.0088E+00  9.9645E-01  1.0480E+00  9.8943E-01  1.0033E+00  9.8495E-01  9.8765E-01  1.0046E+00  1.0174E+00
             9.3563E-01
 PARAMETER:  3.2024E-02  1.0874E-01  9.6448E-02  1.4688E-01  8.9373E-02  1.0331E-01  8.4839E-02  8.7577E-02  1.0461E-01  1.1726E-01
             3.3468E-02
 GRADIENT:  -1.9467E+00  3.5374E+00  1.0440E+00 -2.5639E+00 -9.8972E-01  1.2455E-01  2.6773E+00  2.4392E+00 -6.2649E-01 -2.4598E+00
            -3.7224E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1626.01548174731        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.3451E-01  8.9647E-01  1.0460E+00  1.1300E+00  9.6257E-01  1.0015E+00  8.6838E-01  9.0675E-01  1.0005E+00  1.0550E+00
             9.4463E-01
 PARAMETER:  3.2267E-02 -9.2956E-03  1.4496E-01  2.2224E-01  6.1849E-02  1.0155E-01 -4.1127E-02  2.1104E-03  1.0047E-01  1.5355E-01
             4.3036E-02
 GRADIENT:   3.1041E-01  1.3508E+01  3.0704E+00  1.6486E+01 -7.3867E+00 -1.9027E-01  4.5577E-01 -9.9310E-01  8.4064E-01 -3.9082E-01
            -1.3283E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1627.09066285670        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.3023E-01  8.1796E-01  1.3326E+00  1.1732E+00  1.0641E+00  9.9957E-01  4.5025E-01  1.2704E+00  1.0244E+00  1.1748E+00
             9.5293E-01
 PARAMETER:  2.7671E-02 -1.0094E-01  3.8712E-01  2.5976E-01  1.6217E-01  9.9567E-02 -6.9795E-01  3.3932E-01  1.2408E-01  2.6109E-01
             5.1784E-02
 GRADIENT:  -5.0829E+00  4.3380E+00  3.6598E+00  7.2445E-01 -7.9112E+00 -4.0696E-02  1.2396E+00  2.7140E+00  4.4819E-02  1.2964E+00
             3.7228E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1627.95502518746        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.3035E-01  5.9209E-01  1.3010E+00  1.3169E+00  9.7684E-01  9.9803E-01  1.4508E-01  1.0940E+00  9.2888E-01  1.1364E+00
             9.4323E-01
 PARAMETER:  2.7803E-02 -4.2409E-01  3.6314E-01  3.7532E-01  7.6564E-02  9.8030E-02 -1.8305E+00  1.8987E-01  2.6228E-02  2.2790E-01
             4.1558E-02
 GRADIENT:  -2.1630E-01  2.0065E+00  1.2176E-01  5.9130E+00 -6.9831E-01 -7.1619E-02  8.9233E-02  1.1738E-02  6.2642E-01  5.7960E-01
             1.2022E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1627.97757340650        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      886
 NPARAMETR:  9.3111E-01  5.6689E-01  1.3024E+00  1.3248E+00  9.7064E-01  9.9818E-01  4.3905E-02  1.0899E+00  9.1735E-01  1.1272E+00
             9.4270E-01
 PARAMETER:  2.8623E-02 -4.6759E-01  3.6422E-01  3.8126E-01  7.0205E-02  9.8182E-02 -3.0257E+00  1.8609E-01  1.3735E-02  2.1975E-01
             4.0995E-02
 GRADIENT:   2.3902E+00 -2.8631E+00 -7.3927E-01 -9.4118E+00  2.6658E+00  1.2002E-01  9.0292E-03  2.4694E-03  2.8819E-01 -4.5057E-01
            -8.1485E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1627.99475832863        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1064             RESET HESSIAN, TYPE I
 NPARAMETR:  9.3082E-01  5.6950E-01  1.3026E+00  1.3268E+00  9.6946E-01  9.9814E-01  1.3561E-02  1.0902E+00  9.1759E-01  1.1292E+00
             9.4294E-01
 PARAMETER:  2.8308E-02 -4.6300E-01  3.6438E-01  3.8280E-01  6.8982E-02  9.8135E-02 -4.2006E+00  1.8635E-01  1.3996E-02  2.2154E-01
             4.1250E-02
 GRADIENT:   4.0453E+02  5.1899E+01  8.0629E+00  3.7972E+02  6.8754E+00  3.3419E+01  8.8891E-03  4.9612E-01  7.6641E+00  2.2248E+00
             7.7298E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1627.99568289977        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1225
 NPARAMETR:  9.3096E-01  5.7035E-01  1.3004E+00  1.3259E+00  9.6982E-01  9.9817E-01  1.0000E-02  1.0906E+00  9.1826E-01  1.1285E+00
             9.4306E-01
 PARAMETER:  2.8457E-02 -4.6151E-01  3.6267E-01  3.8210E-01  6.9360E-02  9.8168E-02 -6.3304E+00  1.8675E-01  1.4727E-02  2.2091E-01
             4.1370E-02
 GRADIENT:   1.8436E+00 -7.2757E-01 -4.8550E-01 -2.8454E+00  9.5713E-01  8.8350E-02  0.0000E+00  1.4449E-01  5.1890E-03 -3.1941E-02
             7.1510E-02

0ITERATION NO.:   38    OBJECTIVE VALUE:  -1627.99643196739        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:     1326
 NPARAMETR:  9.3077E-01  5.7121E-01  1.2989E+00  1.3250E+00  9.7003E-01  9.9815E-01  1.0000E-02  1.0904E+00  9.1896E-01  1.1284E+00
             9.4309E-01
 PARAMETER:  2.8328E-02 -4.5953E-01  3.6323E-01  3.8212E-01  6.8567E-02  9.8148E-02 -6.3304E+00  1.8488E-01  1.4737E-02  2.2105E-01
             4.1259E-02
 GRADIENT:   1.2264E-01  1.0177E-01  7.0905E-01  1.4235E+00 -4.4498E-01 -2.5862E-04  0.0000E+00 -4.8626E-02 -1.1066E-01  2.8710E-02
            -5.0068E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1326
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.7856E-04 -2.9080E-04 -3.5955E-02 -5.0590E-03 -3.6223E-02
 SE:             2.9841E-02  1.0747E-04  1.6298E-02  2.9347E-02  2.2373E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8453E-01  6.8107E-03  2.7374E-02  8.6314E-01  1.0543E-01

 ETASHRINKSD(%)  2.9547E-02  9.9640E+01  4.5401E+01  1.6828E+00  2.5049E+01
 ETASHRINKVR(%)  5.9085E-02  9.9999E+01  7.0189E+01  3.3372E+00  4.3823E+01
 EBVSHRINKSD(%)  3.9191E-01  9.9660E+01  4.9500E+01  2.1890E+00  2.1472E+01
 EBVSHRINKVR(%)  7.8229E-01  9.9999E+01  7.4498E+01  4.3300E+00  3.8333E+01
 RELATIVEINF(%)  9.8430E+01  8.0303E-05  6.9110E+00  8.1986E+00  1.2043E+01
 EPSSHRINKSD(%)  4.5448E+01
 EPSSHRINKVR(%)  7.0241E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1627.9964319673900     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -892.84560540365180     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.49
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1627.996       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.31E-01  5.71E-01  1.30E+00  1.33E+00  9.69E-01  9.98E-01  1.00E-02  1.09E+00  9.18E-01  1.13E+00  9.43E-01
 


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
 #CPUT: Total CPU Time in Seconds,       16.538
Stop Time:
Sat Oct  2 04:17:02 CDT 2021