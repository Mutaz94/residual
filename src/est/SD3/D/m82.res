Fri Oct  1 22:33:31 CDT 2021
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
$DATA ../../../../data/SD3/D/dat82.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m82.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   33908.6639039779        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   9.9767E+02  6.0459E+02 -5.5880E+01  6.2878E+02  7.1833E+01 -2.1299E+03 -1.3791E+03 -4.1084E+01 -1.7867E+03 -4.6865E+02
            -6.6104E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -494.544981971206        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.2335E+00  1.2687E+00  1.0154E+00  1.2800E+00  1.0067E+00  1.4375E+00  1.3266E+00  9.8240E-01  1.0787E+00  9.5899E-01
             1.4937E+01
 PARAMETER:  3.0985E-01  3.3803E-01  1.1526E-01  3.4682E-01  1.0673E-01  4.6293E-01  3.8262E-01  8.2243E-02  1.7579E-01  5.8123E-02
             2.8038E+00
 GRADIENT:  -4.6597E+01 -9.4115E+00 -1.1148E+01  2.2396E+01  1.4246E+01  9.7321E+00 -1.4053E+01  2.2086E+00  2.7832E+00  9.3265E+00
             1.1566E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -538.667240270711        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.2426E+00  1.1156E+00  5.5027E+00  1.5649E+00  1.8955E+00  1.6728E+00  4.2344E+00  4.7560E-01  1.1756E+00  8.5071E-01
             1.4023E+01
 PARAMETER:  3.1723E-01  2.0940E-01  1.8052E+00  5.4781E-01  7.3950E-01  6.1451E-01  1.5432E+00 -6.4318E-01  2.6179E-01 -6.1689E-02
             2.7407E+00
 GRADIENT:  -2.2297E+01  5.8247E-01 -2.1862E+00  7.7449E+00  6.7346E+00  1.0760E+01  4.3309E+00  7.2904E-02  8.7140E+00  4.8989E+00
             1.3603E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -545.899317796258        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.2587E+00  1.8972E+00  1.0622E+00  8.5544E-01  1.1707E+00  1.7552E+00  2.8202E+00  3.5665E-01  7.1570E-01  1.9640E-01
             1.2828E+01
 PARAMETER:  3.3005E-01  7.4036E-01  1.6032E-01 -5.6140E-02  2.5760E-01  6.6260E-01  1.1368E+00 -9.3101E-01 -2.3450E-01 -1.5276E+00
             2.6517E+00
 GRADIENT:   1.0392E+01  8.1089E+00  7.8992E+00 -1.5345E+01 -1.9167E+01  1.3399E+01 -7.4663E+00  9.9933E-02  5.2806E+00  5.1892E-01
             6.4707E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -549.311126075131        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  1.1825E+00  1.5365E+00  8.8403E-01  9.3891E-01  1.0941E+00  1.6928E+00  3.1491E+00  1.4122E-01  3.9508E-01  6.6100E-02
             1.1874E+01
 PARAMETER:  2.6763E-01  5.2953E-01 -2.3260E-02  3.6968E-02  1.8990E-01  6.2636E-01  1.2471E+00 -1.8575E+00 -8.2867E-01 -2.6166E+00
             2.5743E+00
 GRADIENT:  -9.4739E+00 -4.7630E+00 -4.1730E+00 -2.5970E+00  8.9140E+00 -7.9049E-01 -9.3030E-01  3.8097E-02  2.2616E+00  7.2202E-02
            -2.3236E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -551.322440508413        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.2059E+00  1.4824E+00  8.6265E-01  9.8616E-01  1.0162E+00  1.6842E+00  3.2660E+00  9.0061E-02  1.5702E-01  3.5317E-02
             1.2022E+01
 PARAMETER:  2.8724E-01  4.9364E-01 -4.7752E-02  8.6062E-02  1.1603E-01  6.2131E-01  1.2836E+00 -2.3073E+00 -1.7514E+00 -3.2434E+00
             2.5868E+00
 GRADIENT:   8.1941E-01  5.2001E-01 -7.4593E-01  3.6083E+00  5.9933E-01 -2.8222E-01 -1.7788E-01  1.5290E-02  3.1807E-01  2.0738E-02
            -1.7293E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -552.654386394321        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      507
 NPARAMETR:  1.2433E+00  1.5456E+00  1.0195E+00  1.0104E+00  1.0991E+00  1.7340E+00  3.4368E+00  5.6192E-02  6.2567E-02  2.1296E-02
             1.2448E+01
 PARAMETER:  3.1779E-01  5.3539E-01  1.1934E-01  1.1039E-01  1.9449E-01  6.5042E-01  1.3345E+00 -2.7790E+00 -2.6715E+00 -3.7492E+00
             2.6215E+00
 GRADIENT:  -2.8030E+00  7.9290E-02 -2.7142E-01  6.1088E-02  5.6514E-01 -2.5541E-01  5.2403E-02  4.8972E-03  4.0934E-02  6.3355E-03
             1.0192E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -552.687035759319        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      682
 NPARAMETR:  1.2493E+00  1.5393E+00  1.0168E+00  1.0129E+00  1.0934E+00  1.7354E+00  3.4439E+00  1.6180E-02  1.0569E-02  1.0000E-02
             1.2453E+01
 PARAMETER:  3.2258E-01  5.3132E-01  1.1670E-01  1.1282E-01  1.8927E-01  6.5124E-01  1.3366E+00 -4.0240E+00 -4.4498E+00 -5.0469E+00
             2.6219E+00
 GRADIENT:   1.3523E-01  6.3152E-03  2.2397E-02 -1.4894E-02 -6.1490E-02  5.6244E-02 -3.8432E-03  4.0342E-04  1.1539E-03  0.0000E+00
            -3.9025E-02

0ITERATION NO.:   39    OBJECTIVE VALUE:  -552.687402482397        NO. OF FUNC. EVALS.: 126
 CUMULATIVE NO. OF FUNC. EVALS.:      808
 NPARAMETR:  1.2493E+00  1.5395E+00  1.0164E+00  1.0128E+00  1.0937E+00  1.7359E+00  3.4465E+00  1.0000E-02  1.0000E-02  1.0000E-02
             1.2450E+01
 PARAMETER:  3.2262E-01  5.3144E-01  1.1631E-01  1.1274E-01  1.8954E-01  6.5155E-01  1.3374E+00 -4.6799E+00 -4.6169E+00 -5.1667E+00
             2.6217E+00
 GRADIENT:   1.9222E-01  2.5706E-02 -4.7351E-02 -4.4823E-02  3.8981E-02  9.8416E-02  1.7707E-01  0.0000E+00  0.0000E+00  0.0000E+00
            -1.6880E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      808
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7595E-02  8.4851E-03 -3.9751E-05 -6.4276E-04  8.6311E-06
 SE:             2.7919E-02  2.5170E-02  3.8407E-05  1.3183E-04  7.2192E-05
 N:                     100         100         100         100         100

 P VAL.:         5.2857E-01  7.3603E-01  3.0067E-01  1.0860E-06  9.0483E-01

 ETASHRINKSD(%)  6.4670E+00  1.5677E+01  9.9871E+01  9.9558E+01  9.9758E+01
 ETASHRINKVR(%)  1.2516E+01  2.8896E+01  1.0000E+02  9.9998E+01  9.9999E+01
 EBVSHRINKSD(%)  6.9256E+00  1.1594E+01  9.9847E+01  9.9623E+01  9.9653E+01
 EBVSHRINKVR(%)  1.3372E+01  2.1844E+01  1.0000E+02  9.9999E+01  9.9999E+01
 RELATIVEINF(%)  8.4377E+01  2.8905E+01  4.4902E-05  5.5936E-04  1.9393E-04
 EPSSHRINKSD(%)  5.1546E+00
 EPSSHRINKVR(%)  1.0044E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -552.68740248239749     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       550.03883736320961     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.77
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -552.687       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.25E+00  1.54E+00  1.02E+00  1.01E+00  1.09E+00  1.74E+00  3.45E+00  1.00E-02  1.00E-02  1.00E-02  1.25E+01
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       14.821
Stop Time:
Fri Oct  1 22:33:50 CDT 2021