Wed Sep 29 18:16:27 CDT 2021
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
$DATA ../../../../data/spa/TD1/dat55.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m55.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1648.23991178941        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1540E+02 -6.1768E+01 -3.5481E+01 -1.3787E+01  1.0835E+02  7.5884E+01 -1.1441E+01 -4.6565E+00 -2.8693E+00 -5.8487E+00
            -1.8467E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1657.35732267857        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.9558E-01  1.0484E+00  9.8831E-01  1.0149E+00  9.2678E-01  7.7064E-01  1.0574E+00  1.0464E+00  1.0400E+00  9.7856E-01
             1.0926E+00
 PARAMETER:  9.5570E-02  1.4728E-01  8.8245E-02  1.1475E-01  2.3958E-02 -1.6053E-01  1.5585E-01  1.4536E-01  1.3923E-01  7.8332E-02
             1.8857E-01
 GRADIENT:   9.3368E+00 -1.3167E+01  5.3043E+00 -1.9815E+01 -1.1918E+01 -4.4910E+01 -2.8453E+00 -2.2145E+00  4.8703E+00  8.3308E+00
             1.8567E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1658.47361712052        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  9.9465E-01  1.0679E+00  8.8488E-01  1.0036E+00  8.7628E-01  7.8746E-01  1.1325E+00  1.1623E+00  1.0458E+00  8.2394E-01
             1.0727E+00
 PARAMETER:  9.4640E-02  1.6569E-01 -2.2305E-02  1.0355E-01 -3.2074E-02 -1.3894E-01  2.2440E-01  2.5039E-01  1.4473E-01 -9.3659E-02
             1.7016E-01
 GRADIENT:   4.0325E+00 -4.8342E+00  4.1930E-01 -6.6271E+00 -1.8220E+01 -3.5432E+01  6.7768E-01  6.8277E+00  1.0660E+01  3.7457E-01
             1.0604E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1661.43643061161        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  9.9543E-01  9.1991E-01  7.4166E-01  1.0911E+00  7.5971E-01  8.5908E-01  1.3488E+00  6.9932E-01  9.1674E-01  7.3563E-01
             1.0432E+00
 PARAMETER:  9.5417E-02  1.6518E-02 -1.9887E-01  1.8715E-01 -1.7482E-01 -5.1893E-02  3.9925E-01 -2.5765E-01  1.3071E-02 -2.0703E-01
             1.4234E-01
 GRADIENT:   3.1977E+00  2.9955E+00 -1.1527E+01  1.8144E+01  1.6645E+01  4.4136E-01  5.3071E-01  1.4722E+00 -3.8262E-02 -2.5668E-01
            -6.0996E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1662.07818933150        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.9478E-01  7.5743E-01  6.3905E-01  1.1557E+00  6.3901E-01  8.5731E-01  1.5740E+00  4.5645E-01  8.5584E-01  6.3726E-01
             1.0456E+00
 PARAMETER:  9.4763E-02 -1.7782E-01 -3.4777E-01  2.4468E-01 -3.4783E-01 -5.3961E-02  5.5359E-01 -6.8428E-01 -5.5668E-02 -3.5057E-01
             1.4460E-01
 GRADIENT:  -2.7819E-01  1.0500E+00  2.8660E-02  1.7643E+00 -3.1664E-01 -4.5713E-01 -7.4048E-01 -1.4050E-01 -4.7475E-02 -1.8155E-01
             1.9472E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1662.10727925247        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  9.9378E-01  6.6112E-01  6.9218E-01  1.2181E+00  6.3643E-01  8.5957E-01  1.7645E+00  5.2630E-01  8.2636E-01  6.6418E-01
             1.0432E+00
 PARAMETER:  9.3763E-02 -3.1381E-01 -2.6791E-01  2.9733E-01 -3.5188E-01 -5.1321E-02  6.6788E-01 -5.4188E-01 -9.0727E-02 -3.0919E-01
             1.4233E-01
 GRADIENT:   7.1451E-01  2.3639E+00  4.3916E+00 -7.5097E-01 -5.6378E+00  1.1146E+00  6.3074E-01 -8.9163E-01 -4.6014E-01  3.7819E-01
            -4.9899E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1662.11477157258        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1057
 NPARAMETR:  9.9288E-01  6.1393E-01  7.3785E-01  1.2534E+00  6.4556E-01  8.5856E-01  1.8687E+00  6.1453E-01  8.1379E-01  6.8355E-01
             1.0429E+00
 PARAMETER:  9.2854E-02 -3.8787E-01 -2.0402E-01  3.2589E-01 -3.3764E-01 -5.2497E-02  7.2524E-01 -3.8690E-01 -1.0605E-01 -2.8046E-01
             1.4196E-01
 GRADIENT:   1.2119E+00  3.3245E+00  3.9036E+00  3.5575E-01 -8.1075E+00  1.0740E+00  9.6620E-01 -1.0325E-01 -3.2502E-01  1.3643E+00
            -2.5431E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1662.12145538084        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1232
 NPARAMETR:  9.9203E-01  5.8257E-01  7.6447E-01  1.2748E+00  6.5119E-01  8.5625E-01  1.9362E+00  6.6536E-01  8.0712E-01  6.8791E-01
             1.0436E+00
 PARAMETER:  9.1996E-02 -4.4031E-01 -1.6857E-01  3.4276E-01 -3.2896E-01 -5.5198E-02  7.6073E-01 -3.0743E-01 -1.1428E-01 -2.7410E-01
             1.4267E-01
 GRADIENT:   7.6774E-01  2.0185E+00  1.0373E+00  9.4340E-01 -4.7030E+00  2.8975E-01  5.6509E-01  5.1241E-01 -8.4248E-03  1.1478E+00
             9.9285E-02

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1662.13685563409        NO. OF FUNC. EVALS.: 132
 CUMULATIVE NO. OF FUNC. EVALS.:     1364
 NPARAMETR:  9.9191E-01  5.8054E-01  7.6440E-01  1.2742E+00  6.5168E-01  8.5560E-01  1.9362E+00  6.6011E-01  8.0726E-01  6.8198E-01
             1.0438E+00
 PARAMETER:  9.1881E-02 -4.4379E-01 -1.6866E-01  3.4233E-01 -3.2820E-01 -5.5956E-02  7.6075E-01 -3.1534E-01 -1.1411E-01 -2.8276E-01
             1.4291E-01
 GRADIENT:   5.1473E-01  5.3506E-01  4.9727E-01 -5.9773E-01 -1.4776E+00  1.6995E-05  1.0055E-01  2.0964E-02 -3.2914E-03  1.3415E-01
            -5.3905E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1364
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0353E-03  2.2673E-02 -2.8098E-02 -2.0534E-02 -5.1729E-03
 SE:             2.9790E-02  2.0424E-02  1.3748E-02  2.4954E-02  1.9618E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7228E-01  2.6696E-01  4.0968E-02  4.1059E-01  7.9202E-01

 ETASHRINKSD(%)  1.9902E-01  3.1577E+01  5.3944E+01  1.6401E+01  3.4278E+01
 ETASHRINKVR(%)  3.9764E-01  5.3183E+01  7.8788E+01  3.0112E+01  5.6807E+01
 EBVSHRINKSD(%)  6.3883E-01  3.3319E+01  5.5063E+01  1.5705E+01  3.2339E+01
 EBVSHRINKVR(%)  1.2736E+00  5.5537E+01  7.9806E+01  2.8943E+01  5.4220E+01
 RELATIVEINF(%)  9.7969E+01  6.0766E+00  2.0016E+00  1.2787E+01  3.8242E+00
 EPSSHRINKSD(%)  4.4761E+01
 EPSSHRINKVR(%)  6.9487E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1662.1368556340944     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -926.98602907035627     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.16
 Elapsed covariance  time in seconds:     6.07
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1662.137       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  5.81E-01  7.64E-01  1.27E+00  6.52E-01  8.56E-01  1.94E+00  6.60E-01  8.07E-01  6.82E-01  1.04E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         2.63E-02  2.48E-01  4.51E-01  1.93E-01  2.05E-01  5.35E-02  5.49E-01  6.13E-01  1.01E-01  2.29E-01  6.60E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        6.92E-04
 
 TH 2
+        8.37E-04  6.17E-02
 
 TH 3
+       -2.82E-03 -6.11E-02  2.03E-01
 
 TH 4
+       -9.63E-04 -4.45E-02  6.66E-02  3.71E-02
 
 TH 5
+       -1.21E-03 -1.39E-02  8.80E-02  2.15E-02  4.22E-02
 
 TH 6
+       -4.32E-04  3.15E-03 -2.66E-03 -2.06E-03 -5.77E-04  2.86E-03
 
 TH 7
+       -1.50E-03 -1.28E-01  1.31E-01  9.31E-02  3.04E-02 -7.59E-03  3.02E-01
 
 TH 8
+       -3.60E-03 -9.18E-02  2.67E-01  9.53E-02  1.12E-01 -4.40E-03  1.97E-01  3.75E-01
 
 TH 9
+        4.18E-04  1.69E-02 -1.69E-02 -1.27E-02 -3.61E-03  4.81E-04 -3.46E-02 -2.11E-02  1.01E-02
 
 TH10
+       -1.35E-03 -1.61E-02  8.44E-02  2.31E-02  3.90E-02 -5.06E-04  3.18E-02  1.01E-01 -6.12E-03  5.24E-02
 
 TH11
+        4.70E-04  2.81E-03 -3.19E-03 -2.04E-03 -8.02E-04  5.01E-05 -6.98E-03 -3.71E-03  1.21E-03 -2.54E-03  4.35E-03
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        2.63E-02
 
 TH 2
+        1.28E-01  2.48E-01
 
 TH 3
+       -2.38E-01 -5.46E-01  4.51E-01
 
 TH 4
+       -1.90E-01 -9.31E-01  7.68E-01  1.93E-01
 
 TH 5
+       -2.25E-01 -2.72E-01  9.51E-01  5.45E-01  2.05E-01
 
 TH 6
+       -3.07E-01  2.37E-01 -1.10E-01 -2.00E-01 -5.25E-02  5.35E-02
 
 TH 7
+       -1.04E-01 -9.41E-01  5.29E-01  8.81E-01  2.70E-01 -2.58E-01  5.49E-01
 
 TH 8
+       -2.23E-01 -6.04E-01  9.67E-01  8.08E-01  8.91E-01 -1.34E-01  5.86E-01  6.13E-01
 
 TH 9
+        1.58E-01  6.75E-01 -3.73E-01 -6.53E-01 -1.75E-01  8.94E-02 -6.25E-01 -3.43E-01  1.01E-01
 
 TH10
+       -2.24E-01 -2.84E-01  8.18E-01  5.23E-01  8.29E-01 -4.13E-02  2.53E-01  7.22E-01 -2.65E-01  2.29E-01
 
 TH11
+        2.71E-01  1.72E-01 -1.07E-01 -1.60E-01 -5.92E-02  1.42E-02 -1.93E-01 -9.16E-02  1.81E-01 -1.68E-01  6.60E-02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.90E+03
 
 TH 2
+       -2.73E+01  5.02E+02
 
 TH 3
+       -3.70E+01  2.95E+02  1.17E+03
 
 TH 4
+        2.96E+01  3.98E+02 -1.61E+02  9.16E+02
 
 TH 5
+        8.68E+01 -5.47E+02 -1.75E+03  2.96E+02  3.01E+03
 
 TH 6
+        3.16E+02 -4.66E+01 -7.10E+01 -2.18E+01  1.19E+02  4.36E+02
 
 TH 7
+       -1.14E+01  4.85E+01 -3.73E+01  5.75E-01  5.38E+01  1.21E+01  3.17E+01
 
 TH 8
+        1.05E+01 -3.79E+01 -1.39E+02 -8.65E+01  8.01E+01  8.47E+00  2.65E+00  7.63E+01
 
 TH 9
+       -3.70E+01  2.17E+01  1.59E+02  1.05E+02 -1.82E+02  7.66E+00 -4.98E+00 -6.03E+01  2.46E+02
 
 TH10
+       -1.42E+00 -4.38E+01 -1.14E+02 -6.40E+01  7.13E+01  9.35E+00  1.03E+01  3.51E+01 -1.29E+01  8.96E+01
 
 TH11
+       -1.88E+02 -5.87E+00 -1.60E+01 -3.33E+01  3.31E+00 -1.91E+01  1.31E+01  2.15E+00 -1.33E+01  3.07E+01  2.72E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       23.314
Stop Time:
Wed Sep 29 18:16:52 CDT 2021
