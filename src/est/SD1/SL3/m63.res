Fri Oct  1 04:00:03 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat63.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      986
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      886
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
 RAW OUTPUT FILE (FILE): m63.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1053.54032969908        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4493E+02  1.0759E+02 -7.3855E+01  4.2955E+01  1.4778E+02  2.4465E+01 -1.5101E+02 -1.7313E+02 -1.6510E+02 -1.2762E+00
            -5.1278E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2825.13586733241        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1116E+00  1.2053E+00  1.7186E+00  9.9323E-01  1.2888E+00  1.1310E+00  1.3594E+00  8.6787E-01  1.0732E+00  1.0245E+00
             2.3343E+00
 PARAMETER:  2.0585E-01  2.8670E-01  6.4153E-01  9.3210E-02  3.5368E-01  2.2308E-01  4.0703E-01 -4.1708E-02  1.7065E-01  1.2423E-01
             9.4772E-01
 GRADIENT:   2.5836E+02  4.7076E+01 -1.4642E+00  2.5774E+01  4.1568E+01  4.3860E+01  3.5644E+01 -5.6200E+00 -2.0145E+00 -3.4082E+01
            -1.4563E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2835.56705889331        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.1256E+00  1.1901E+00  4.3992E+00  1.0231E+00  1.8385E+00  1.1196E+00  6.0179E-01  6.2953E-01  1.0044E+00  1.6537E+00
             2.4099E+00
 PARAMETER:  2.1836E-01  2.7406E-01  1.5814E+00  1.2284E-01  7.0896E-01  2.1301E-01 -4.0785E-01 -3.6278E-01  1.0439E-01  6.0301E-01
             9.7957E-01
 GRADIENT:   2.8084E+02 -1.0768E+01 -2.1155E+01  3.0489E+00  8.1045E+01  3.8373E+01 -1.2259E+01 -2.1742E+00 -2.6704E+01  1.2189E+00
            -8.7313E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2853.14194279181        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  1.0255E+00  1.2829E+00  2.9955E+00  9.5525E-01  1.5603E+00  9.9231E-01  1.0676E+00  2.8655E+00  9.9972E-01  1.5985E+00
             2.3682E+00
 PARAMETER:  1.2519E-01  3.4915E-01  1.1971E+00  5.4215E-02  5.4486E-01  9.2282E-02  1.6542E-01  1.1527E+00  9.9721E-02  5.6904E-01
             9.6213E-01
 GRADIENT:   2.9477E+01  2.4597E+01 -9.1458E+00  5.6235E+00  2.7238E+01 -8.8839E+00  9.1310E+00  2.5533E+00  1.0913E+01  3.8345E+01
            -4.6778E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2857.88897717850        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  1.0309E+00  1.1462E+00  4.3661E+00  1.0423E+00  1.6277E+00  1.0185E+00  1.0655E+00  3.2476E+00  9.2438E-01  1.4901E+00
             2.4360E+00
 PARAMETER:  1.3041E-01  2.3641E-01  1.5739E+00  1.4146E-01  5.8717E-01  1.1833E-01  1.6348E-01  1.2779E+00  2.1368E-02  4.9881E-01
             9.9035E-01
 GRADIENT:  -6.0869E+01 -4.3257E+01 -1.1781E+00 -3.7914E+01  1.2817E+01 -6.1237E+00 -6.3577E-01  6.3672E-01  4.5092E+00  9.3828E+00
             1.1105E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2860.64748998881        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      524
 NPARAMETR:  1.0654E+00  1.3384E+00  3.9082E+00  9.5654E-01  1.6636E+00  1.0356E+00  1.0248E+00  3.2131E+00  9.0532E-01  1.4782E+00
             2.4355E+00
 PARAMETER:  1.6331E-01  3.9144E-01  1.4631E+00  5.5568E-02  6.0901E-01  1.3496E-01  1.2445E-01  1.2672E+00  5.3327E-04  4.9081E-01
             9.9014E-01
 GRADIENT:   6.3312E+00  7.7288E+00 -7.6492E-01  1.3014E+01  2.3453E+00  1.6544E+00 -2.1206E+00 -1.4083E+00 -1.6778E+00  1.5667E+00
            -1.6741E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2860.88651548773        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      699
 NPARAMETR:  1.0624E+00  1.4956E+00  3.6647E+00  8.4417E-01  1.7260E+00  1.0315E+00  9.6340E-01  3.3392E+00  9.8797E-01  1.5297E+00
             2.4392E+00
 PARAMETER:  1.6057E-01  5.0252E-01  1.3988E+00 -6.9403E-02  6.4579E-01  1.3105E-01  6.2718E-02  1.3057E+00  8.7897E-02  5.2508E-01
             9.9169E-01
 GRADIENT:   5.5181E-01  2.3670E+00  5.2291E-01  1.6758E+00 -1.7819E+00  1.1512E-01  2.8023E-01 -5.1817E-02  7.1148E-01  5.4701E-02
            -1.0662E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2860.89795862134        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      877             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0626E+00  1.5367E+00  3.5628E+00  8.1466E-01  1.7483E+00  1.0313E+00  9.5524E-01  3.3679E+00  9.9033E-01  1.5471E+00
             2.4418E+00
 PARAMETER:  1.6076E-01  5.2962E-01  1.3705E+00 -1.0498E-01  6.5865E-01  1.3086E-01  5.4208E-02  1.3143E+00  9.0284E-02  5.3637E-01
             9.9275E-01
 GRADIENT:   1.2616E+02  1.0563E+02  4.1305E+00  1.1001E+01  3.2095E+01  9.8895E+00  1.8394E+00  3.7305E+00  1.0260E+00  7.4301E+00
             1.7606E+01

0ITERATION NO.:   38    OBJECTIVE VALUE:  -2860.89801610256        NO. OF FUNC. EVALS.:  90
 CUMULATIVE NO. OF FUNC. EVALS.:      967
 NPARAMETR:  1.0625E+00  1.5368E+00  3.5625E+00  8.1474E-01  1.7486E+00  1.0313E+00  9.5472E-01  3.3671E+00  9.8934E-01  1.5468E+00
             2.4418E+00
 PARAMETER:  1.6064E-01  5.2973E-01  1.3705E+00 -1.0489E-01  6.5883E-01  1.3084E-01  5.3666E-02  1.3140E+00  8.9284E-02  5.3622E-01
             9.9275E-01
 GRADIENT:   5.4217E-01  4.7478E-02  1.2002E-02  3.2687E-02 -1.1396E-01  2.6755E-02  3.9882E-02  2.3589E-02 -2.4497E-02  5.4759E-02
            -3.6876E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      967
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4072E-03 -2.0249E-02 -3.6729E-02  1.4035E-02 -3.3389E-02
 SE:             2.9508E-02  2.2224E-02  1.6016E-02  2.0246E-02  2.3766E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6196E-01  3.6222E-01  2.1834E-02  4.8819E-01  1.6004E-01

 ETASHRINKSD(%)  1.1434E+00  2.5548E+01  4.6344E+01  3.2172E+01  2.0382E+01
 ETASHRINKVR(%)  2.2737E+00  4.4569E+01  7.1210E+01  5.3993E+01  3.6610E+01
 EBVSHRINKSD(%)  1.2850E+00  2.5173E+01  5.2663E+01  3.6230E+01  1.5914E+01
 EBVSHRINKVR(%)  2.5536E+00  4.4009E+01  7.7592E+01  5.9333E+01  2.9295E+01
 RELATIVEINF(%)  9.7398E+01  3.9893E+00  7.3046E+00  2.8111E+00  3.5628E+01
 EPSSHRINKSD(%)  1.7489E+01
 EPSSHRINKVR(%)  3.1919E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          886
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1628.3590808386800     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2860.8980161025588     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1232.5389352638788     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.50
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2860.898       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  1.54E+00  3.56E+00  8.15E-01  1.75E+00  1.03E+00  9.55E-01  3.37E+00  9.89E-01  1.55E+00  2.44E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.570
Stop Time:
Fri Oct  1 04:00:30 CDT 2021