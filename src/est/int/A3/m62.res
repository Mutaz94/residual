Sat Sep 18 01:51:24 CDT 2021
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
$DATA ../../../../data/int/A3/dat62.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 (2E4.0,E20.0,E4.0,2E2.0)

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
 NO. OF SIG. FIGURES REQUIRED:            3
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -283.163917372744        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4797E+01  1.8822E+02  2.7795E+02  1.3794E+01  3.0369E+02  4.7584E+01 -1.4833E+02 -1.9559E+02 -5.5902E+01 -2.0664E+02
            -6.5541E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2708.11127066049        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  1.0573E+00  9.7546E-01  8.8810E-01  1.0801E+00  8.4879E-01  8.2545E-01  9.2377E-01  9.8881E-01  1.0126E+00  1.0228E+00
             2.9310E+00
 PARAMETER:  1.5574E-01  7.5152E-02 -1.8674E-02  1.7707E-01 -6.3945E-02 -9.1830E-02  2.0705E-02  8.8750E-02  1.1250E-01  1.2255E-01
             1.1753E+00
 GRADIENT:   1.0242E+02  6.7912E+01  2.3975E+01  4.6445E+01 -3.2944E+01 -9.5953E+00  1.6103E+01  9.1056E+00  1.1651E+00  5.3907E+00
             1.1594E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2729.43782240082        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0540E+00  5.7779E-01  4.3728E-01  1.2869E+00  4.6257E-01  8.3961E-01  3.1958E-01  8.7881E-02  1.1295E+00  8.4611E-01
             2.8548E+00
 PARAMETER:  1.5260E-01 -4.4854E-01 -7.2719E-01  3.5226E-01 -6.7096E-01 -7.4814E-02 -1.0407E+00 -2.3318E+00  2.2177E-01 -6.7104E-02
             1.1490E+00
 GRADIENT:   9.1805E+01  1.5795E+02 -2.4920E+01  1.6919E+02 -6.4969E+01 -7.5236E+00 -4.9388E+00  1.5927E-01  1.1355E+01 -5.4170E+01
             1.0645E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2757.64100413451        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  1.0064E+00  4.2838E-01  3.4235E-01  1.1453E+00  3.5457E-01  8.5821E-01  3.1906E-01  8.3681E-02  1.0513E+00  9.7682E-01
             2.6215E+00
 PARAMETER:  1.0635E-01 -7.4773E-01 -9.7192E-01  2.3569E-01 -9.3686E-01 -5.2903E-02 -1.0424E+00 -2.3807E+00  1.5005E-01  7.6552E-02
             1.0637E+00
 GRADIENT:  -3.0570E+01  5.3571E+01  7.0160E+00 -4.8409E+00 -4.1732E+01  8.0252E-01 -4.3818E+00  8.2414E-02 -5.5441E+00  1.0524E+01
            -3.8168E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2775.67273580541        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  1.0161E+00  2.7413E-01  1.7998E-01  1.0530E+00  2.2127E-01  8.8068E-01  1.2189E+00  5.5119E-02  1.2653E+00  7.5936E-01
             2.5081E+00
 PARAMETER:  1.1600E-01 -1.1942E+00 -1.6149E+00  1.5161E-01 -1.4084E+00 -2.7059E-02  2.9791E-01 -2.7983E+00  3.3534E-01 -1.7528E-01
             1.0195E+00
 GRADIENT:  -9.5833E+00  3.2544E+01  2.6406E+01  4.9327E+01 -4.3589E+01  3.6813E+00  6.5912E+00 -1.7831E-01 -4.0200E+00  8.8902E-01
             3.8772E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2777.77596515273        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      463
 NPARAMETR:  1.0218E+00  2.7440E-01  1.8421E-01  1.0229E+00  2.3010E-01  8.7153E-01  1.1762E+00  5.4963E-02  1.2671E+00  7.5058E-01
             2.4988E+00
 PARAMETER:  1.2155E-01 -1.1932E+00 -1.5917E+00  1.2267E-01 -1.3692E+00 -3.7504E-02  2.6233E-01 -2.8011E+00  3.3677E-01 -1.8691E-01
             1.0158E+00
 GRADIENT:   1.1708E+00  2.0799E+00 -3.1992E+00  5.3437E-01  5.1192E+00  1.7434E-01  1.4291E+00 -1.8249E-01  6.3080E-02 -1.5921E+00
            -7.2385E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2791.89579578292        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      643
 NPARAMETR:  1.0225E+00  2.5902E-01  1.6934E-01  9.6221E-01  2.1517E-01  8.8764E-01  1.1155E+00  2.1846E+00  1.2765E+00  8.3965E-01
             2.5234E+00
 PARAMETER:  1.2220E-01 -1.2509E+00 -1.6759E+00  6.1480E-02 -1.4363E+00 -1.9185E-02  2.0928E-01  8.8142E-01  3.4412E-01 -7.4774E-02
             1.0256E+00
 GRADIENT:  -4.9496E+00  2.7429E+01  2.0679E+01 -7.2281E+01  6.5851E+00  4.0644E+00  3.1652E+00  5.9979E+01 -2.1178E+01  4.0746E+01
             2.2612E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2835.10288745661        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      821
 NPARAMETR:  1.0178E+00  2.3736E-01  1.3794E-01  9.9874E-01  1.9807E-01  8.7879E-01  1.2559E+00  1.6002E+00  1.5868E+00  5.4850E-01
             2.2126E+00
 PARAMETER:  1.1765E-01 -1.3382E+00 -1.8810E+00  9.8737E-02 -1.5191E+00 -2.9210E-02  3.2787E-01  5.7011E-01  5.6170E-01 -5.0058E-01
             8.9415E-01
 GRADIENT:  -4.4736E-01  8.6305E+00 -8.0577E+00  6.6930E+00  7.6354E+00 -2.4006E+00 -2.6000E+00  5.2527E+00  1.0139E+01  8.3428E+00
             6.7629E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2836.46718504538        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      996
 NPARAMETR:  1.0183E+00  2.4452E-01  1.5011E-01  1.0141E+00  2.0655E-01  8.8397E-01  1.3073E+00  1.5957E+00  1.4913E+00  4.2078E-01
             2.2128E+00
 PARAMETER:  1.1815E-01 -1.3085E+00 -1.7964E+00  1.1403E-01 -1.4772E+00 -2.3337E-02  3.6798E-01  5.6733E-01  4.9964E-01 -7.6564E-01
             8.9428E-01
 GRADIENT:   8.6486E-02 -1.0915E+00  1.2378E+00  6.2055E-01 -8.8423E-01 -4.7855E-02  1.3858E-01  1.0163E-01  2.0971E-01  3.4533E-01
            -8.1599E-01

0ITERATION NO.:   43    OBJECTIVE VALUE:  -2836.47223816785        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1088
 NPARAMETR:  1.0183E+00  2.4539E-01  1.5048E-01  1.0146E+00  2.0708E-01  8.8403E-01  1.3084E+00  1.5975E+00  1.4889E+00  4.1285E-01
             2.2141E+00
 PARAMETER:  1.1815E-01 -1.3049E+00 -1.7940E+00  1.1454E-01 -1.4746E+00 -2.3267E-02  3.6877E-01  5.6843E-01  4.9801E-01 -7.8467E-01
             8.9486E-01
 GRADIENT:   3.2478E-02  1.5854E-02  2.2116E-01 -7.6554E-02 -2.3064E-01 -7.3473E-03 -1.2448E-02 -2.4821E-02  6.3120E-02  7.9141E-03
             3.6016E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1088
 NO. OF SIG. DIGITS IN FINAL EST.:  3.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.1461E-04  9.6218E-03  6.6931E-03 -6.6237E-04  2.1526E-02
 SE:             2.9408E-02  2.5769E-02  2.5431E-02  2.7893E-02  1.4924E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7519E-01  7.0886E-01  7.9241E-01  9.8105E-01  1.4921E-01

 ETASHRINKSD(%)  1.4783E+00  1.3670E+01  1.4802E+01  6.5564E+00  5.0002E+01
 ETASHRINKVR(%)  2.9348E+00  2.5471E+01  2.7413E+01  1.2683E+01  7.5002E+01
 EBVSHRINKSD(%)  1.6462E+00  1.2760E+01  1.3337E+01  5.8912E+00  5.2197E+01
 EBVSHRINKVR(%)  3.2652E+00  2.3892E+01  2.4895E+01  1.1435E+01  7.7149E+01
 RELATIVEINF(%)  9.6682E+01  3.0290E+01  2.4657E+01  6.6419E+01  4.7884E+00
 EPSSHRINKSD(%)  2.1512E+01
 EPSSHRINKVR(%)  3.8396E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2836.4722381678539     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1182.3828783994431     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.12
 Elapsed covariance  time in seconds:    14.37
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2836.472       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  2.45E-01  1.50E-01  1.01E+00  2.07E-01  8.84E-01  1.31E+00  1.60E+00  1.49E+00  4.13E-01  2.21E+00
 


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
 
         2.87E-02  2.78E-02  3.03E-02  7.65E-02  2.38E-02  8.40E-02  1.12E-01  2.53E-01  1.45E-01  2.12E-01  2.12E-01
 


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
+        8.24E-04
 
 TH 2
+        6.31E-05  7.74E-04
 
 TH 3
+       -4.27E-05  7.55E-04  9.16E-04
 
 TH 4
+       -1.39E-04  1.42E-03  1.76E-03  5.85E-03
 
 TH 5
+        7.93E-06  6.09E-04  6.91E-04  1.42E-03  5.66E-04
 
 TH 6
+       -4.76E-04  9.48E-05  8.80E-05  7.13E-04  7.74E-05  7.05E-03
 
 TH 7
+       -6.98E-04  9.44E-04  1.34E-03  3.72E-03  1.11E-03  8.92E-04  1.26E-02
 
 TH 8
+        1.42E-03  1.95E-03  9.46E-04  4.01E-03  1.72E-03 -1.42E-03  3.04E-03  6.38E-02
 
 TH 9
+        3.30E-04 -1.57E-03 -1.99E-03 -3.29E-03 -1.45E-03 -4.64E-04 -1.62E-03  4.18E-03  2.09E-02
 
 TH10
+        2.24E-04 -4.81E-03 -5.58E-03 -1.11E-02 -4.62E-03  8.14E-04 -1.01E-02 -1.64E-02  1.27E-02  4.51E-02
 
 TH11
+        2.73E-03  2.01E-03  2.13E-03  4.28E-03  1.82E-03  3.73E-03 -3.49E-03  4.34E-03 -1.26E-03 -9.33E-03  4.47E-02
 
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
+        2.87E-02
 
 TH 2
+        7.90E-02  2.78E-02
 
 TH 3
+       -4.91E-02  8.96E-01  3.03E-02
 
 TH 4
+       -6.32E-02  6.67E-01  7.59E-01  7.65E-02
 
 TH 5
+        1.16E-02  9.20E-01  9.59E-01  7.78E-01  2.38E-02
 
 TH 6
+       -1.97E-01  4.06E-02  3.46E-02  1.11E-01  3.87E-02  8.40E-02
 
 TH 7
+       -2.17E-01  3.02E-01  3.95E-01  4.33E-01  4.16E-01  9.46E-02  1.12E-01
 
 TH 8
+        1.96E-01  2.78E-01  1.24E-01  2.08E-01  2.86E-01 -6.71E-02  1.07E-01  2.53E-01
 
 TH 9
+        7.94E-02 -3.90E-01 -4.55E-01 -2.98E-01 -4.23E-01 -3.82E-02 -9.96E-02  1.14E-01  1.45E-01
 
 TH10
+        3.68E-02 -8.14E-01 -8.68E-01 -6.81E-01 -9.15E-01  4.56E-02 -4.25E-01 -3.05E-01  4.13E-01  2.12E-01
 
 TH11
+        4.50E-01  3.41E-01  3.33E-01  2.65E-01  3.62E-01  2.10E-01 -1.47E-01  8.12E-02 -4.12E-02 -2.08E-01  2.12E-01
 
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
+        2.02E+03
 
 TH 2
+       -9.69E+02  1.03E+04
 
 TH 3
+        1.09E+03 -3.16E+03  2.17E+04
 
 TH 4
+        1.38E+01  4.51E+02 -3.72E+02  4.88E+02
 
 TH 5
+        2.66E+02 -1.12E+04 -2.36E+04 -1.56E+03  6.61E+04
 
 TH 6
+        2.15E+02 -1.77E+02  2.45E+02 -2.81E+01 -5.05E+01  1.83E+02
 
 TH 7
+       -1.19E+01  2.24E+02  2.54E+01 -3.13E+01 -5.44E+02 -2.55E+01  1.25E+02
 
 TH 8
+       -2.53E+01 -6.19E+01  3.99E+02 -7.57E+00 -4.76E+02  1.91E+00  3.09E+00  2.73E+01
 
 TH 9
+        2.10E+01 -3.17E+01  7.02E+01 -7.97E+00  1.71E+02  1.06E+01 -1.51E+01 -9.22E+00  6.71E+01
 
 TH10
+       -2.47E+00 -2.49E+02 -4.52E+01 -4.40E+01  1.83E+03 -2.00E+01  3.13E+00  6.20E+00 -7.11E+00  1.68E+02
 
 TH11
+       -1.61E+02  1.42E+02 -3.05E+01  4.51E+00 -5.33E+02 -3.34E+01  2.64E+01  3.84E+00 -1.02E+01 -2.06E+01  4.84E+01
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       41.629
Stop Time:
Sat Sep 18 01:52:07 CDT 2021