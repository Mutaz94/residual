Thu Sep 30 23:27:11 CDT 2021
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
$DATA ../../../../data/SD1/B/dat81.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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
 RAW OUTPUT FILE (FILE): m81.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3547.59100540972        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1750E+02  7.2888E+01  9.4475E+01  2.4807E+01  1.4709E+02  2.6005E+01 -5.6845E+01 -4.9534E+02 -8.2929E+01 -7.4700E+00
            -1.2410E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3635.98480458541        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      150
 NPARAMETR:  7.7238E-01  9.9815E-01  1.0166E+00  9.9970E-01  9.6872E-01  1.2023E+00  1.1223E+00  1.4439E+00  8.7660E-01  1.0124E+00
             1.0017E+00
 PARAMETER: -1.5828E-01  9.8146E-02  1.1648E-01  9.9702E-02  6.8222E-02  2.8424E-01  2.1541E-01  4.6738E-01 -3.1705E-02  1.1230E-01
             1.0170E-01
 GRADIENT:  -4.2209E+02  8.9330E+00  4.0179E+01 -8.0496E+01  4.5724E+00 -8.0971E+01 -3.8052E+01 -2.9231E+02 -2.5306E+01 -2.2704E+01
             2.7874E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3641.74192090837        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:      339
 NPARAMETR:  7.8729E-01  1.0283E+00  1.1383E+00  9.9292E-01  1.0217E+00  1.1361E+00  1.1381E+00  1.4948E+00  8.0919E-01  1.1324E+00
             1.0099E+00
 PARAMETER: -1.3915E-01  1.2792E-01  2.2955E-01  9.2891E-02  1.2151E-01  2.2760E-01  2.2935E-01  5.0199E-01 -1.1172E-01  2.2438E-01
             1.0989E-01
 GRADIENT:  -4.4154E+02  1.6844E+00  6.7294E+01 -6.3508E+01  3.8493E-01 -9.9674E+01 -3.8637E+01 -2.9943E+02 -3.1458E+01 -4.6099E+00
             3.7263E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3701.90034891122        NO. OF FUNC. EVALS.: 121
 CUMULATIVE NO. OF FUNC. EVALS.:      460
 NPARAMETR:  1.0014E+00  9.9285E-01  1.1377E+00  9.9098E-01  1.0262E+00  1.1411E+00  1.1486E+00  1.4966E+00  1.0151E+00  1.1505E+00
             9.8118E-01
 PARAMETER:  1.0142E-01  9.2828E-02  2.2900E-01  9.0942E-02  1.2590E-01  2.3197E-01  2.3852E-01  5.0317E-01  1.1498E-01  2.4020E-01
             8.1001E-02
 GRADIENT:   4.5809E+02  4.3364E+01  8.4656E+01  4.2901E+01  1.0948E+02  1.7853E+02 -1.0139E+01 -2.4468E+02  1.5572E+01  8.7268E+01
            -1.3624E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3703.44003470084        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      637
 NPARAMETR:  1.0173E+00  1.0263E+00  1.1377E+00  9.9098E-01  1.0262E+00  1.0953E+00  1.1486E+00  1.4970E+00  9.6958E-01  1.1505E+00
             9.9095E-01
 PARAMETER:  1.1715E-01  1.2599E-01  2.2899E-01  9.0943E-02  1.2589E-01  1.9104E-01  2.3854E-01  5.0346E-01  6.9112E-02  2.4020E-01
             9.0911E-02
 GRADIENT:  -3.0104E+00 -2.9993E+00  6.7056E+01 -5.1899E+01  8.9703E+00 -7.6771E-01 -3.1476E+01 -2.8114E+02 -4.5395E-03  2.1590E+00
             1.7729E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3707.13170345044        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      816
 NPARAMETR:  1.0663E+00  1.0490E+00  1.1369E+00  9.9129E-01  1.0261E+00  1.2363E+00  1.1496E+00  1.5406E+00  9.4312E-01  1.1507E+00
             9.7845E-01
 PARAMETER:  1.6421E-01  1.4780E-01  2.2831E-01  9.1254E-02  1.2574E-01  3.1215E-01  2.3944E-01  5.3216E-01  4.1437E-02  2.4036E-01
             7.8214E-02
 GRADIENT:   6.9043E+01  2.0974E+01  6.3182E+01 -4.1123E+01 -1.4089E+00  4.0333E+01 -3.2374E+01 -2.6828E+02 -1.5570E+00 -2.1263E-01
            -2.3969E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3788.85731298695        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      994
 NPARAMETR:  1.0192E+00  1.0217E+00  1.1193E+00  9.9875E-01  1.0231E+00  1.0987E+00  1.1723E+00  2.9478E+00  8.1764E-01  1.1536E+00
             9.7799E-01
 PARAMETER:  1.1901E-01  1.2152E-01  2.1273E-01  9.8746E-02  1.2285E-01  1.9415E-01  2.5897E-01  1.1811E+00 -1.0133E-01  2.4288E-01
             7.7740E-02
 GRADIENT:   6.5952E-01  2.0097E-01 -2.7444E+00 -5.5083E+01 -2.7664E+01  2.4105E-01 -3.3973E+01  1.2760E+00  2.4611E-01 -5.9281E+00
             1.0042E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3790.61266498371        NO. OF FUNC. EVALS.: 148
 CUMULATIVE NO. OF FUNC. EVALS.:     1142             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0191E+00  1.0203E+00  1.1387E+00  1.0223E+00  1.0490E+00  1.0999E+00  1.2025E+00  2.9326E+00  8.0975E-01  1.1790E+00
             9.7778E-01
 PARAMETER:  1.1892E-01  1.2014E-01  2.2992E-01  1.2204E-01  1.4780E-01  1.9525E-01  2.8439E-01  1.1759E+00 -1.1103E-01  2.6465E-01
             7.7525E-02
 GRADIENT:   5.7672E+02  9.9072E+01  1.2504E+01  1.4317E+02  1.0878E+02  1.3360E+02 -9.3421E-01  5.9027E+01  8.8934E+00  1.1807E+02
             1.5408E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3790.67058418417        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1318
 NPARAMETR:  1.0191E+00  1.0188E+00  1.1599E+00  1.0192E+00  1.0483E+00  1.0973E+00  1.2025E+00  2.9330E+00  7.9956E-01  1.1930E+00
             9.7805E-01
 PARAMETER:  1.1891E-01  1.1858E-01  2.4830E-01  1.1904E-01  1.4717E-01  1.9285E-01  2.8442E-01  1.1760E+00 -1.2370E-01  2.7646E-01
             7.7801E-02
 GRADIENT:   3.7464E-01  6.7198E-02 -3.6255E-02 -5.1053E-01 -1.2901E+00 -3.5533E-01 -2.8982E+01 -2.9557E+00  1.4182E-01 -5.2166E-01
             3.6597E-02

0ITERATION NO.:   44    OBJECTIVE VALUE:  -3790.93471213708        NO. OF FUNC. EVALS.: 125
 CUMULATIVE NO. OF FUNC. EVALS.:     1443
 NPARAMETR:  1.0181E+00  1.0186E+00  1.1603E+00  1.0190E+00  1.0481E+00  1.0981E+00  1.2138E+00  2.9279E+00  7.9952E-01  1.1898E+00
             9.7801E-01
 PARAMETER:  1.1778E-01  1.1855E-01  2.4836E-01  1.1901E-01  1.4714E-01  1.9178E-01  2.9410E-01  1.1758E+00 -1.2390E-01  2.7652E-01
             7.7799E-02
 GRADIENT:  -1.0545E+04  2.0938E+04 -9.9903E+03  2.0859E+04  1.6871E+04 -1.4326E+00  8.4100E+03  2.0773E+03 -2.0040E+04  1.0937E+00
             2.8870E-01
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.4         2.3         2.3         2.3         1.4
                    2.8

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1443
 NO. OF SIG. DIGITS IN FINAL EST.:  1.4
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.4154E-03 -3.4071E-02 -3.5615E-02  2.3749E-02 -5.4829E-02
 SE:             3.0036E-02  2.6207E-02  2.6112E-02  2.5581E-02  2.3662E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3591E-01  1.9357E-01  1.7260E-01  3.5321E-01  2.0496E-02

 ETASHRINKSD(%)  1.0000E-10  1.2204E+01  1.2521E+01  1.4300E+01  2.0728E+01
 ETASHRINKVR(%)  1.0000E-10  2.2919E+01  2.3474E+01  2.6554E+01  3.7160E+01
 EBVSHRINKSD(%)  2.0780E-01  1.9179E+01  1.3372E+01  1.6850E+01  1.9774E+01
 EBVSHRINKVR(%)  4.1517E-01  3.4679E+01  2.4956E+01  3.0860E+01  3.5637E+01
 RELATIVEINF(%)  9.9583E+01  3.9126E+01  6.8708E+01  4.5191E+01  4.2033E+01
 EPSSHRINKSD(%)  2.3869E+01
 EPSSHRINKVR(%)  4.2040E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3790.9347121370834     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2136.8453523686726     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    42.41
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3790.935       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.02E+00  1.16E+00  1.02E+00  1.05E+00  1.10E+00  1.21E+00  2.93E+00  7.99E-01  1.19E+00  9.78E-01
 


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
 #CPUT: Total CPU Time in Seconds,       42.460
Stop Time:
Thu Sep 30 23:27:55 CDT 2021