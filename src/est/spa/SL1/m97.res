Wed Sep 29 15:30:18 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat97.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m97.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1640.56252582434        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.4951E+02 -4.5484E+01 -3.9279E+01  2.8307E+00  5.0163E+01  3.0421E+01 -2.1352E+00  1.1460E+01  1.7427E+01  1.4003E+01
             2.9562E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1648.62521255797        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  8.7214E-01  1.0841E+00  1.0690E+00  1.0100E+00  1.0235E+00  1.1101E+00  1.0181E+00  9.6090E-01  9.5745E-01  9.4924E-01
             9.2640E-01
 PARAMETER: -3.6807E-02  1.8071E-01  1.6676E-01  1.0995E-01  1.2321E-01  2.0444E-01  1.1792E-01  6.0115E-02  5.6516E-02  4.7904E-02
             2.3555E-02
 GRADIENT:  -1.1546E+02  6.8025E+00 -4.1084E+00  1.8060E+01  4.1517E+00  1.4209E+01 -4.3758E+00  3.4887E+00  1.3562E+00 -5.7296E-01
            -4.9780E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1651.36576086970        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  8.8753E-01  1.0439E+00  7.7909E-01  1.0174E+00  8.7680E-01  1.0813E+00  1.2342E+00  4.2704E-01  8.5813E-01  8.5858E-01
             9.3252E-01
 PARAMETER: -1.9314E-02  1.4296E-01 -1.4963E-01  1.1724E-01 -3.1476E-02  1.7820E-01  3.1046E-01 -7.5087E-01 -5.3005E-02 -5.2479E-02
             3.0137E-02
 GRADIENT:  -9.3038E+01  3.0731E+00 -3.2837E+01  3.1741E+01  3.1354E+01  5.6801E+00  6.4960E+00  2.4014E+00 -1.4463E+00  9.9700E+00
             1.9384E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1655.25122328650        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.3305E-01  8.7554E-01  8.5326E-01  1.1168E+00  8.2823E-01  1.0510E+00  1.3599E+00  3.6296E-01  8.2016E-01  8.0494E-01
             9.3535E-01
 PARAMETER:  3.0709E-02 -3.2919E-02 -5.8686E-02  2.1049E-01 -8.8460E-02  1.4974E-01  4.0741E-01 -9.1346E-01 -9.8251E-02 -1.1699E-01
             3.3166E-02
 GRADIENT:   4.0947E+00  7.1899E+00  3.8052E+00  1.0700E+01 -4.5952E+00 -9.0081E-01 -8.6182E-01  2.8150E-01 -1.0546E+00 -8.7625E-01
            -2.0183E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1655.45318640228        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  9.3141E-01  8.3032E-01  8.0728E-01  1.1286E+00  7.9006E-01  1.0542E+00  1.4278E+00  1.9771E-01  8.0849E-01  7.8404E-01
             9.3398E-01
 PARAMETER:  2.8944E-02 -8.5940E-02 -1.1409E-01  2.2096E-01 -1.3564E-01  1.5276E-01  4.5616E-01 -1.5209E+00 -1.1258E-01 -1.4330E-01
             3.1705E-02
 GRADIENT:   1.3952E-01 -2.5592E+00 -4.9841E-02 -3.7815E+00 -7.8340E-02  7.7707E-02 -3.6112E-02  1.2205E-01  3.4734E-01  3.1499E-01
             1.7643E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1655.58148783627        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      884
 NPARAMETR:  9.3207E-01  9.2428E-01  7.7812E-01  1.0737E+00  8.1158E-01  1.0545E+00  1.3127E+00  7.3972E-02  8.3894E-01  7.8248E-01
             9.3386E-01
 PARAMETER:  2.9657E-02  2.1256E-02 -1.5088E-01  1.7111E-01 -1.0877E-01  1.5307E-01  3.7206E-01 -2.5041E+00 -7.5611E-02 -1.4529E-01
             3.1575E-02
 GRADIENT:   2.1194E-01  2.8585E-01 -5.6699E-01  1.5487E+00  1.0222E+00  5.4383E-02 -1.2649E-01  2.1160E-02  7.5800E-02 -2.1838E-01
            -1.7400E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1655.59145137094        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1059
 NPARAMETR:  9.3195E-01  9.1907E-01  7.7666E-01  1.0757E+00  8.0845E-01  1.0544E+00  1.3190E+00  1.0000E-02  8.3712E-01  7.8230E-01
             9.3377E-01
 PARAMETER:  2.9522E-02  1.5604E-02 -1.5276E-01  1.7302E-01 -1.1264E-01  1.5301E-01  3.7690E-01 -4.5129E+00 -7.7789E-02 -1.4552E-01
             3.1470E-02
 GRADIENT:  -4.4446E-02 -1.4458E-01  1.7488E-02 -1.9289E-01 -1.0294E-01  1.9884E-02 -5.8304E-02  6.1661E-04  1.0136E-01  1.8768E-02
             9.4727E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1655.59339879838        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1225             RESET HESSIAN, TYPE I
 NPARAMETR:  9.3304E-01  9.2084E-01  7.7666E-01  1.0749E+00  8.0931E-01  1.0567E+00  1.3187E+00  1.0000E-02  8.3725E-01  7.8257E-01
             9.3375E-01
 PARAMETER:  3.0696E-02  1.7530E-02 -1.5276E-01  1.7221E-01 -1.1157E-01  1.5520E-01  3.7668E-01 -5.1865E+00 -7.7634E-02 -1.4517E-01
             3.1449E-02
 GRADIENT:   4.3639E+02  3.1771E+01  5.0608E+00  1.4584E+02  1.3392E+01  1.2408E+02  1.7001E+01  0.0000E+00  6.0806E+00  1.0196E+00
             7.8853E-01

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1655.59339879838        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:     1280
 NPARAMETR:  9.3304E-01  9.2084E-01  7.7666E-01  1.0749E+00  8.0931E-01  1.0567E+00  1.3187E+00  1.0000E-02  8.3725E-01  7.8257E-01
             9.3375E-01
 PARAMETER:  3.0696E-02  1.7530E-02 -1.5276E-01  1.7221E-01 -1.1157E-01  1.5520E-01  3.7668E-01 -5.1865E+00 -7.7634E-02 -1.4517E-01
             3.1449E-02
 GRADIENT:   2.2743E+00  6.2547E-03 -1.6319E-01  1.2101E-01  3.0594E-01  9.0321E-01  1.0854E-01  0.0000E+00  2.8968E-02  1.3478E-03
            -1.1480E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1280
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.1342E-04  3.4633E-03 -4.7216E-04 -6.9296E-03 -8.8723E-03
 SE:             2.9860E-02  2.2093E-02  2.0239E-04  2.4223E-02  2.2621E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9430E-01  8.7544E-01  1.9653E-02  7.7482E-01  6.9491E-01

 ETASHRINKSD(%)  1.0000E-10  2.5985E+01  9.9322E+01  1.8849E+01  2.4215E+01
 ETASHRINKVR(%)  1.0000E-10  4.5217E+01  9.9995E+01  3.4145E+01  4.2567E+01
 EBVSHRINKSD(%)  3.4566E-01  2.5737E+01  9.9379E+01  1.8939E+01  2.3325E+01
 EBVSHRINKVR(%)  6.9013E-01  4.4850E+01  9.9996E+01  3.4291E+01  4.1209E+01
 RELATIVEINF(%)  9.9056E+01  4.1243E+00  4.2308E-04  5.7898E+00  4.9588E+00
 EPSSHRINKSD(%)  4.3896E+01
 EPSSHRINKVR(%)  6.8524E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1655.5933987983824     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -920.44257223464422     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.99
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.74
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1655.593       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.33E-01  9.21E-01  7.77E-01  1.07E+00  8.09E-01  1.06E+00  1.32E+00  1.00E-02  8.37E-01  7.83E-01  9.34E-01
 


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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.14E+03
 
 TH 2
+       -5.60E+00  4.33E+02
 
 TH 3
+        1.57E+01  2.49E+02  7.79E+02
 
 TH 4
+       -7.90E+00  3.30E+02 -3.41E+02  9.12E+02
 
 TH 5
+       -3.44E+00 -4.34E+02 -9.85E+02  4.18E+02  1.62E+03
 
 TH 6
+       -3.83E-01 -1.00E+00  3.36E+00 -3.01E+00 -1.59E+00  1.76E+02
 
 TH 7
+        1.03E+00  3.33E+01 -9.40E+00 -1.15E+01 -2.54E-01 -1.00E-01  4.10E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.30E+00 -2.52E+01 -3.53E+01  2.71E+01  5.73E+00  1.03E-01  1.50E+01  0.00E+00  1.37E+02
 
 TH10
+       -1.52E+00 -9.15E+00 -7.78E+01 -3.03E+01 -5.61E+01  3.36E-02  1.44E+01  0.00E+00  1.40E+01  1.16E+02
 
 TH11
+       -7.23E+00 -1.32E+01 -4.02E+01 -2.39E+00  1.40E+01  1.55E+00  4.72E+00  0.00E+00  1.07E+01  2.57E+01  2.49E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       21.796
Stop Time:
Wed Sep 29 15:30:42 CDT 2021
