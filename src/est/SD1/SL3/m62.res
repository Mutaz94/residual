Fri Oct  1 03:59:35 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat62.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      985
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

 TOT. NO. OF OBS RECS:      885
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   354.049017390558        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3078E+02  1.3345E+02  7.3323E+01  2.2118E+02  2.0237E+02  8.4059E+01 -1.1004E+02 -1.9557E+02 -1.6805E+02 -9.9576E+00
            -7.8804E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2342.29987092942        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0638E+00  1.0850E+00  1.0182E+00  1.0290E+00  9.3689E-01  8.1170E-01  9.7676E-01  1.0334E+00  1.1068E+00  9.1003E-01
             5.2701E+00
 PARAMETER:  1.6184E-01  1.8162E-01  1.1805E-01  1.2856E-01  3.4810E-02 -1.0862E-01  7.6488E-02  1.3288E-01  2.0144E-01  5.7251E-03
             1.7621E+00
 GRADIENT:  -5.1707E+01  1.0685E+01 -1.4086E+00  3.0551E+00 -2.7266E+01 -1.6753E+01  1.4699E+01  7.5130E+00  2.0776E+01  1.7988E+01
             8.0989E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2521.21662053306        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0176E+00  1.3040E+00  3.0897E+00  8.8646E-01  1.6885E+00  8.8690E-01  1.0405E+00  6.3379E+00  9.7831E-01  6.2540E-01
             3.4841E+00
 PARAMETER:  1.1740E-01  3.6546E-01  1.2281E+00 -2.0519E-02  6.2386E-01 -2.0025E-02  1.3975E-01  1.9465E+00  7.8068E-02 -3.6936E-01
             1.3482E+00
 GRADIENT:  -5.5601E+01 -3.1586E+01 -1.7458E+01 -1.2051E+01  2.2331E+02  3.5018E-01  1.8182E+01  3.2691E+01  6.5013E-01 -4.0866E+01
             2.6828E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2609.72400882604        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0219E+00  1.0182E+00  2.2147E+00  1.0440E+00  1.1903E+00  8.8186E-01  5.6281E-01  2.7008E+00  1.1280E+00  9.0322E-01
             2.9427E+00
 PARAMETER:  1.2164E-01  1.1804E-01  8.9511E-01  1.4309E-01  2.7417E-01 -2.5718E-02 -4.7482E-01  1.0936E+00  2.2042E-01 -1.7929E-03
             1.1793E+00
 GRADIENT:   5.0153E+00  1.0496E+01 -2.9945E+00  2.8999E+01 -4.0820E+00  3.5307E-01  1.6523E+00 -1.8716E-01  1.3168E+00 -6.7123E+00
             2.1247E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2617.09555166554        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      343
 NPARAMETR:  1.0463E+00  1.1050E+00  3.3652E+00  9.8698E-01  1.3869E+00  8.9574E-01  3.3086E-01  3.3001E+00  1.2315E+00  1.1463E+00
             2.9038E+00
 PARAMETER:  1.4530E-01  1.9985E-01  1.3135E+00  8.6899E-02  4.2708E-01 -1.0105E-02 -1.0061E+00  1.2939E+00  3.0821E-01  2.3657E-01
             1.1660E+00
 GRADIENT:   3.8071E-01 -3.5526E+00 -5.4959E+00  2.7765E+00 -5.7840E+00  8.1790E-01 -8.9106E-01  3.0275E+00 -2.1091E+00 -1.7046E+00
            -1.2908E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2621.85807711269        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      520
 NPARAMETR:  1.0399E+00  1.2912E+00  4.4443E+00  8.6541E-01  1.5977E+00  8.8449E-01  5.2352E-01  2.9115E+00  1.3182E+00  1.3976E+00
             2.9211E+00
 PARAMETER:  1.3915E-01  3.5556E-01  1.5916E+00 -4.4553E-02  5.6855E-01 -2.2745E-02 -5.4718E-01  1.1687E+00  3.7628E-01  4.3476E-01
             1.1720E+00
 GRADIENT:  -1.7090E+01 -1.0092E+01  1.0264E+00 -5.7481E+00  3.5163E-01 -2.8910E+00  5.8616E-01 -1.8961E+00 -8.4530E-01 -4.0148E+00
             1.6294E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2622.75958147676        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      695
 NPARAMETR:  1.0475E+00  1.5817E+00  3.5650E+00  6.7505E-01  1.6759E+00  8.9315E-01  5.4318E-01  3.0935E+00  1.6100E+00  1.5036E+00
             2.9216E+00
 PARAMETER:  1.4638E-01  5.5852E-01  1.3712E+00 -2.9297E-01  6.1638E-01 -1.3002E-02 -5.1031E-01  1.2293E+00  5.7623E-01  5.0784E-01
             1.1721E+00
 GRADIENT:   1.2317E+00  3.7102E+00 -9.6364E-01  6.1653E+00 -2.8651E+00  5.9344E-01  5.8942E-01  3.6819E+00  2.9217E+00 -4.2260E-01
             1.1665E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2623.03554440294        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      870
 NPARAMETR:  1.0469E+00  1.7709E+00  2.8058E+00  5.3968E-01  1.7083E+00  8.9209E-01  5.5909E-01  2.7480E+00  1.8167E+00  1.5546E+00
             2.9208E+00
 PARAMETER:  1.4580E-01  6.7147E-01  1.1317E+00 -5.1677E-01  6.3551E-01 -1.4190E-02 -4.8145E-01  1.1109E+00  6.9701E-01  5.4120E-01
             1.1718E+00
 GRADIENT:  -7.7018E-01  9.4434E+00  1.7049E+00  5.0968E-01 -7.8628E+00  2.5844E-01 -5.5500E-01  8.5916E-02 -2.7417E+00 -2.1040E-01
            -2.2692E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2623.20461098303        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1051
 NPARAMETR:  1.0471E+00  1.8826E+00  2.1355E+00  4.5726E-01  1.7355E+00  8.9172E-01  5.6887E-01  2.3046E+00  2.0454E+00  1.5743E+00
             2.9211E+00
 PARAMETER:  1.4600E-01  7.3263E-01  8.5871E-01 -6.8250E-01  6.5128E-01 -1.4602E-02 -4.6410E-01  9.3493E-01  8.1559E-01  5.5380E-01
             1.1720E+00
 GRADIENT:  -2.0129E-01 -1.0847E+00  1.8925E-01 -1.5293E-01 -9.8844E-01  1.5570E-01  1.2558E-01 -1.5475E-02 -1.6337E-01 -6.2631E-01
            -5.7202E-01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2623.20529711182        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1108
 NPARAMETR:  1.0471E+00  1.8831E+00  2.1173E+00  4.5758E-01  1.7372E+00  8.9117E-01  5.6822E-01  2.3079E+00  2.0468E+00  1.5774E+00
             2.9217E+00
 PARAMETER:  1.4606E-01  7.3294E-01  8.5012E-01 -6.8180E-01  6.5229E-01 -1.5224E-02 -4.6525E-01  9.3634E-01  8.1626E-01  5.5575E-01
             1.1721E+00
 GRADIENT:  -1.5423E-01 -8.3132E-01 -2.0537E-01  5.3227E-01  1.6779E-01 -8.0867E-02 -1.2483E-02  1.2638E-01 -1.9975E-02 -3.0485E-02
            -1.7034E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1108
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.7507E-03 -4.9799E-02 -1.4510E-02  3.0119E-02 -2.3082E-02
 SE:             2.9283E-02  1.7286E-02  8.9184E-03  2.3457E-02  2.5605E-02
 N:                     100         100         100         100         100

 P VAL.:         9.2516E-01  3.9652E-03  1.0373E-01  1.9914E-01  3.6735E-01

 ETASHRINKSD(%)  1.8994E+00  4.2091E+01  7.0122E+01  2.1415E+01  1.4219E+01
 ETASHRINKVR(%)  3.7627E+00  6.6465E+01  9.1073E+01  3.8244E+01  2.6416E+01
 EBVSHRINKSD(%)  2.2095E+00  4.1210E+01  7.4498E+01  2.3414E+01  1.1348E+01
 EBVSHRINKVR(%)  4.3701E+00  6.5437E+01  9.3497E+01  4.1346E+01  2.1409E+01
 RELATIVEINF(%)  9.5483E+01  5.4528E+00  3.5516E+00  9.8567E+00  4.4792E+01
 EPSSHRINKSD(%)  1.6032E+01
 EPSSHRINKVR(%)  2.9494E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          885
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1626.5212037722706     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2623.2052971118173     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -996.68409333954673     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.71
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2623.205       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  1.88E+00  2.12E+00  4.58E-01  1.74E+00  8.91E-01  5.68E-01  2.31E+00  2.05E+00  1.58E+00  2.92E+00
 


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
 #CPUT: Total CPU Time in Seconds,       26.774
Stop Time:
Fri Oct  1 04:00:03 CDT 2021
