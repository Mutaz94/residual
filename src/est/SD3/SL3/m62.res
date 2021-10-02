Fri Oct  1 20:05:53 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat62.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      697
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

 TOT. NO. OF OBS RECS:      597
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
 RAW OUTPUT FILE (FILE): m62.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1529.90456558286        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1759E+02 -2.9952E+01 -1.4682E+01  2.2146E+02  1.7513E+02  8.6783E+01 -4.3189E+01 -8.2822E+01 -7.2227E+01  1.2141E-01
            -1.7324E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2055.45400186776        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0241E+00  1.1873E+00  9.1085E-01  8.5010E-01  9.4898E-01  7.9311E-01  1.0780E+00  1.0620E+00  1.1480E+00  8.3965E-01
             1.9139E+00
 PARAMETER:  1.2385E-01  2.7164E-01  6.6280E-03 -6.2401E-02  4.7632E-02 -1.3180E-01  1.7514E-01  1.6015E-01  2.3799E-01 -7.4770E-02
             7.4914E-01
 GRADIENT:   1.2807E+02  5.5405E+01  2.1862E+01  5.0502E-01 -3.0051E+01 -3.0982E+01  6.2632E+00 -5.5346E+00 -3.6152E+00 -3.9172E+00
            -9.0750E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2058.49001297399        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      240
 NPARAMETR:  1.0260E+00  1.4751E+00  8.0740E-01  7.1689E-01  1.0879E+00  8.2416E-01  7.3516E-01  8.7845E-01  1.3415E+00  1.1631E+00
             1.9264E+00
 PARAMETER:  1.2571E-01  4.8874E-01 -1.1394E-01 -2.3283E-01  1.8423E-01 -9.3391E-02 -2.0767E-01 -2.9597E-02  3.9378E-01  2.5109E-01
             7.5568E-01
 GRADIENT:  -3.1473E+01  4.5040E+01  1.1307E+01  3.1152E+01 -2.0803E+01 -3.1512E+01 -1.6562E+01 -4.9134E+00 -1.5411E+01  1.2568E+01
            -9.1347E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2065.96923303765        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      421
 NPARAMETR:  1.0407E+00  1.5473E+00  6.6427E-01  6.4439E-01  1.0992E+00  8.8043E-01  8.3326E-01  4.0161E-01  1.4384E+00  1.0269E+00
             2.0832E+00
 PARAMETER:  1.3989E-01  5.3650E-01 -3.0906E-01 -3.3945E-01  1.9462E-01 -2.7350E-02 -8.2407E-02 -8.1229E-01  4.6353E-01  1.2655E-01
             8.3389E-01
 GRADIENT:   8.4494E+00  7.7274E+00  4.2384E+00  4.5683E+00 -3.7101E+00 -3.1056E+00 -3.7625E+00 -8.4761E-01 -3.3218E+00 -3.2071E+00
             3.9242E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2068.41665166127        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      598
 NPARAMETR:  1.0367E+00  1.9145E+00  5.9221E-01  4.1130E-01  1.3544E+00  8.8861E-01  7.7175E-01  1.4864E+00  1.9982E+00  1.2252E+00
             2.0068E+00
 PARAMETER:  1.3607E-01  7.4947E-01 -4.2390E-01 -7.8843E-01  4.0335E-01 -1.8094E-02 -1.5910E-01  4.9634E-01  7.9225E-01  3.0313E-01
             7.9654E-01
 GRADIENT:  -1.8436E-01  2.0184E+00 -3.0947E+00  7.1823E+00  7.8023E+00  3.2728E-02  1.6725E+00 -2.7612E-01  3.2961E+00 -5.5406E-01
            -1.7933E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2068.70862068242        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      775
 NPARAMETR:  1.0360E+00  1.9532E+00  6.2984E-01  3.8330E-01  1.3867E+00  8.8816E-01  7.6079E-01  1.7627E+00  2.0396E+00  1.2516E+00
             2.0381E+00
 PARAMETER:  1.3537E-01  7.6945E-01 -3.6229E-01 -8.5895E-01  4.2696E-01 -1.8604E-02 -1.7340E-01  6.6684E-01  8.1275E-01  3.2443E-01
             8.1200E-01
 GRADIENT:  -2.6002E+00  2.4500E+00 -7.4014E-01  1.4673E+00  1.0549E+00  1.7979E-01 -8.5730E-02 -2.7832E-01  6.9101E-01  4.1568E-01
             1.8998E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2069.68984163841        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      953
 NPARAMETR:  1.0455E+00  1.7679E+00  1.2040E+00  5.3116E-01  1.3726E+00  8.8321E-01  7.7145E-01  2.8378E+00  1.6103E+00  1.2164E+00
             2.0174E+00
 PARAMETER:  1.4450E-01  6.6981E-01  2.8567E-01 -5.3269E-01  4.1673E-01 -2.4192E-02 -1.5949E-01  1.1430E+00  5.7640E-01  2.9589E-01
             8.0183E-01
 GRADIENT:   2.3720E+01  3.3418E+01  4.2229E-01  7.2138E+00 -7.0581E+00 -2.2325E+00 -1.3315E+00 -8.3772E-01 -4.2763E+00 -5.9557E-01
            -6.3845E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2071.03170520296        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1129
 NPARAMETR:  1.0324E+00  1.5667E+00  1.8116E+00  6.6231E-01  1.3653E+00  8.8900E-01  7.4830E-01  3.3208E+00  1.4662E+00  1.1816E+00
             2.0281E+00
 PARAMETER:  1.3193E-01  5.4899E-01  6.9419E-01 -3.1202E-01  4.1134E-01 -1.7655E-02 -1.8995E-01  1.3002E+00  4.8265E-01  2.6685E-01
             8.0711E-01
 GRADIENT:  -1.0100E+01  1.3550E+01 -5.7749E-01  6.6269E+00  1.1384E+00  3.6585E-01 -3.3534E-02  1.6071E+00  2.1065E-01  3.6432E-01
             4.7966E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2071.51648100001        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1304
 NPARAMETR:  1.0358E+00  1.3770E+00  2.1459E+00  7.8101E-01  1.3114E+00  8.8763E-01  7.3055E-01  3.2315E+00  1.3356E+00  1.1146E+00
             2.0177E+00
 PARAMETER:  1.3516E-01  4.1993E-01  8.6354E-01 -1.4716E-01  3.7111E-01 -1.9201E-02 -2.1396E-01  1.2730E+00  3.8936E-01  2.0852E-01
             8.0194E-01
 GRADIENT:   6.6750E-01  8.9867E-01  3.6811E-01  3.9512E-01 -1.0217E+00 -2.0068E-01 -3.9721E-01  1.9155E-01  2.8552E-01 -2.7038E-02
            -4.2229E-01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -2071.52528659547        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     1433
 NPARAMETR:  1.0355E+00  1.3768E+00  2.0975E+00  7.8105E-01  1.3079E+00  8.8810E-01  7.4732E-01  3.1809E+00  1.3241E+00  1.1121E+00
             2.0188E+00
 PARAMETER:  1.3488E-01  4.1978E-01  8.4075E-01 -1.4712E-01  3.6840E-01 -1.8670E-02 -1.9126E-01  1.2572E+00  3.8077E-01  2.0628E-01
             8.0248E-01
 GRADIENT:  -1.0526E+00  4.9591E-01 -3.6223E-02  1.6110E-01  3.4418E-01 -2.0132E-02 -4.4007E-02 -1.3814E-01 -6.8156E-02  3.0741E-02
             1.2898E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1433
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.2504E-03 -3.9463E-02 -3.9047E-02  2.0942E-02 -4.2214E-02
 SE:             2.9566E-02  1.6780E-02  1.7338E-02  2.4567E-02  2.1362E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3933E-01  1.8686E-02  2.4317E-02  3.9395E-01  4.8146E-02

 ETASHRINKSD(%)  9.5133E-01  4.3784E+01  4.1915E+01  1.7699E+01  2.8433E+01
 ETASHRINKVR(%)  1.8936E+00  6.8397E+01  6.6262E+01  3.2265E+01  4.8782E+01
 EBVSHRINKSD(%)  1.4353E+00  4.4055E+01  4.5188E+01  1.9113E+01  2.4864E+01
 EBVSHRINKVR(%)  2.8500E+00  6.8702E+01  6.9956E+01  3.4572E+01  4.3546E+01
 RELATIVEINF(%)  9.6986E+01  3.3501E+00  1.2419E+01  7.8408E+00  2.4901E+01
 EPSSHRINKSD(%)  2.6975E+01
 EPSSHRINKVR(%)  4.6673E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          597
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1097.2126086463791     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2071.5252865954744     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -974.31267794909536     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.18
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2071.525       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.38E+00  2.10E+00  7.81E-01  1.31E+00  8.88E-01  7.47E-01  3.18E+00  1.32E+00  1.11E+00  2.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.236
Stop Time:
Fri Oct  1 20:06:20 CDT 2021
