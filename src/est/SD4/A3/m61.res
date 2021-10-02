Sat Oct  2 01:11:50 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat61.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m61.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -243.225775183547        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9323E+02  2.9508E+01  9.6453E+01 -5.1360E+01  1.4666E+02  7.0072E+01 -2.5174E+01 -6.1778E+01 -7.9921E+01 -9.7958E+01
            -2.5692E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1140.40352453790        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.9712E-01  9.3569E-01  8.3415E-01  1.0867E+00  8.1202E-01  9.1098E-01  9.6914E-01  1.0944E+00  1.1349E+00  1.0822E+00
             1.8350E+00
 PARAMETER:  9.7116E-02  3.3529E-02 -8.1338E-02  1.8315E-01 -1.0823E-01  6.7700E-03  6.8651E-02  1.9024E-01  2.2653E-01  1.7903E-01
             7.0706E-01
 GRADIENT:   8.2209E+01  3.0559E+01  3.6044E+01  1.2582E+01  2.4768E+00  1.0783E+01 -1.8880E-02 -9.1143E+00 -9.8310E+00 -4.9530E+00
            -6.0527E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1184.47569161241        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.0164E+00  7.0759E-01  2.3763E-01  1.1532E+00  3.2286E-01  8.9095E-01  5.6987E-01  1.1516E+00  1.3251E+00  1.8894E-01
             1.8381E+00
 PARAMETER:  1.1627E-01 -2.4590E-01 -1.3370E+00  2.4257E-01 -1.0305E+00 -1.5465E-02 -4.6235E-01  2.4115E-01  3.8147E-01 -1.5663E+00
             7.0875E-01
 GRADIENT:   1.4206E+02  3.6829E+02  2.3498E+02  1.6698E+02 -3.1600E+02 -7.3720E+00 -5.0502E+01 -9.3847E+01  4.8131E+00 -1.4123E+01
            -4.1403E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1278.05971135643        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      319
 NPARAMETR:  1.0120E+00  8.4045E-01  3.0739E-01  1.0334E+00  4.1766E-01  9.0684E-01  3.6408E-01  2.1471E+00  1.2979E+00  2.9817E-01
             2.0061E+00
 PARAMETER:  1.1196E-01 -7.3817E-02 -1.0796E+00  1.3283E-01 -7.7308E-01  2.2146E-03 -9.1037E-01  8.6412E-01  3.6077E-01 -1.1101E+00
             7.9618E-01
 GRADIENT:   2.9994E+01  1.1500E+02  8.5100E+01  2.5094E+01 -1.1083E+02  5.1237E+00 -7.1287E+00 -2.3706E+01 -1.9192E+01 -1.1522E+01
            -2.1156E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1283.99370704490        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      504
 NPARAMETR:  9.9915E-01  8.3776E-01  2.9757E-01  1.0254E+00  4.1844E-01  8.8929E-01  3.2603E-01  2.1333E+00  1.3101E+00  3.1394E-01
             2.0313E+00
 PARAMETER:  9.9145E-02 -7.7023E-02 -1.1121E+00  1.2504E-01 -7.7122E-01 -1.7327E-02 -1.0208E+00  8.5765E-01  3.7013E-01 -1.0585E+00
             8.0866E-01
 GRADIENT:  -2.8618E+00  9.1118E+01  7.3285E+01  1.7873E+01 -8.1985E+01 -1.1548E+00 -5.6016E+00 -2.1835E+01 -1.8122E+01 -1.1413E+01
            -1.9831E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1294.86663779556        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      689
 NPARAMETR:  9.7771E-01  8.3791E-01  2.7832E-01  1.0247E+00  4.2206E-01  9.7263E-01  7.4853E-01  2.1612E+00  1.3135E+00  3.1786E-01
             2.1241E+00
 PARAMETER:  7.7460E-02 -7.6848E-02 -1.1790E+00  1.2436E-01 -7.6260E-01  7.2244E-02 -1.8964E-01  8.7066E-01  3.7270E-01 -1.0461E+00
             8.5336E-01
 GRADIENT:  -5.2549E+01 -7.7657E+00  4.0310E+01  1.1299E+01  3.1994E+01  2.7532E+01  8.2529E+00 -2.5745E+00  7.1967E+00 -4.9391E+00
            -1.4595E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1304.87267285298        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      875
 NPARAMETR:  1.0017E+00  8.3824E-01  2.6143E-01  1.0238E+00  4.2337E-01  9.0886E-01  6.2584E-01  2.1883E+00  1.3171E+00  3.2195E-01
             2.2103E+00
 PARAMETER:  1.0169E-01 -7.6446E-02 -1.2416E+00  1.2350E-01 -7.5950E-01  4.4377E-03 -3.6865E-01  8.8313E-01  3.7542E-01 -1.0334E+00
             8.9314E-01
 GRADIENT:   2.1406E+00 -2.9269E+01  1.7702E+01  1.6870E+01  6.0596E+01  6.5489E+00  4.3477E+00  2.5064E+00  2.8849E+00 -3.9661E+00
            -1.2190E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1309.98790370131        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1060             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0016E+00  8.3876E-01  2.5476E-01  1.0231E+00  4.1055E-01  8.9198E-01  5.3581E-01  2.1944E+00  1.3189E+00  5.7339E-01
             2.2890E+00
 PARAMETER:  1.0161E-01 -7.5827E-02 -1.2675E+00  1.2281E-01 -7.9026E-01 -1.4306E-02 -5.2398E-01  8.8592E-01  3.7677E-01 -4.5620E-01
             9.2812E-01
 GRADIENT:   6.6591E+01  8.1370E+00  4.6634E+01  3.5802E+01  5.0755E+01  5.0230E+00  4.1631E+00  2.6163E+01  7.3875E+00  1.1348E+01
            -7.4204E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1311.62703093122        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:     1216
 NPARAMETR:  1.0000E+00  8.3880E-01  2.5405E-01  1.0230E+00  4.1246E-01  8.9408E-01  4.0554E-01  2.1950E+00  1.3191E+00  4.6830E-01
             2.2927E+00
 PARAMETER:  1.0003E-01 -7.5785E-02 -1.2702E+00  1.2274E-01 -7.8561E-01 -1.1954E-02 -8.0253E-01  8.8620E-01  3.7695E-01 -6.5864E-01
             9.2972E-01
 GRADIENT:  -5.6058E+00  7.6279E+00  2.5590E+01  2.5516E+01  2.7677E+00  1.6648E-01 -2.9785E-01  4.7977E+00 -6.6464E+00  8.4780E-01
            -8.9448E+01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1311.72332511550        NO. OF FUNC. EVALS.:  64
 CUMULATIVE NO. OF FUNC. EVALS.:     1280
 NPARAMETR:  1.0003E+00  8.3883E-01  2.5365E-01  1.0229E+00  4.1255E-01  8.9291E-01  3.9618E-01  2.1956E+00  1.3193E+00  4.7447E-01
             2.2944E+00
 PARAMETER:  1.0010E-01 -7.5782E-02 -1.2714E+00  1.2273E-01 -7.8516E-01 -1.3335E-02 -8.3422E-01  8.8619E-01  3.7697E-01 -6.4576E-01
             9.3074E-01
 GRADIENT:  -5.0866E+00 -1.4236E+04  5.8204E+02  5.8323E+03  1.8211E+03 -2.1524E-01 -3.6946E-01 -1.5886E+03 -1.8949E+03 -2.2054E+03
             1.4020E+03
 NUMSIGDIG:         1.4         2.3         2.3         2.3         2.3         1.9         0.8         2.3         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1280
 NO. OF SIG. DIGITS IN FINAL EST.:  0.8

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.4690E-03 -2.5332E-02 -1.9090E-02 -1.1779E-02  1.7824E-03
 SE:             2.9183E-02  9.5483E-03  2.3275E-02  2.7158E-02  1.3175E-02
 N:                     100         100         100         100         100

 P VAL.:         8.5135E-01  7.9774E-03  4.1210E-01  6.6449E-01  8.9239E-01

 ETASHRINKSD(%)  2.2316E+00  6.8012E+01  2.2026E+01  9.0170E+00  5.5861E+01
 ETASHRINKVR(%)  4.4135E+00  8.9768E+01  3.9200E+01  1.7221E+01  8.0518E+01
 EBVSHRINKSD(%)  2.6289E+00  6.8724E+01  2.1604E+01  1.0428E+01  5.4313E+01
 EBVSHRINKVR(%)  5.1887E+00  9.0218E+01  3.8541E+01  1.9768E+01  7.9127E+01
 RELATIVEINF(%)  9.3504E+01  4.9475E-01  2.4382E+01  2.6061E+01  1.0839E+00
 EPSSHRINKSD(%)  3.1717E+01
 EPSSHRINKVR(%)  5.3375E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1311.7233251155026     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -576.57249855176440     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.75
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1311.723       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  8.39E-01  2.54E-01  1.02E+00  4.13E-01  8.93E-01  3.93E-01  2.20E+00  1.32E+00  4.74E-01  2.30E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.791
Stop Time:
Sat Oct  2 01:12:09 CDT 2021
