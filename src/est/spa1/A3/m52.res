Thu Sep 30 00:20:36 CDT 2021
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
$DATA ../../../../data/spa1/A3/dat52.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m52.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -78.8841534880726        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4801E+02  1.9498E+01  2.4745E+02 -1.3792E+02  1.2281E+02  3.8088E+01 -5.8007E+01 -1.7179E+02 -1.0092E+02 -1.3657E+02
            -3.5380E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1446.09356027535        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0059E+00  1.0433E+00  9.1856E-01  1.2426E+00  1.0010E+00  7.9743E-01  9.9993E-01  9.4449E-01  1.0478E+00  1.0207E+00
             5.2589E+00
 PARAMETER:  1.0588E-01  1.4243E-01  1.5054E-02  3.1719E-01  1.0096E-01 -1.2636E-01  9.9929E-02  4.2895E-02  1.4673E-01  1.2051E-01
             1.7599E+00
 GRADIENT:  -8.0478E+01  2.4763E+01 -2.2271E+01  7.0330E+01 -9.7455E+00 -3.0696E+01  9.4055E+00  8.4812E+00  2.0612E+01  2.0950E+01
             3.5566E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1524.67420924633        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  9.7514E-01  8.7014E-01  2.9315E-01  1.2043E+00  4.3712E-01  9.7657E-01  1.1085E+00  1.8745E-02  1.3575E+00  3.1559E-01
             3.8609E+00
 PARAMETER:  7.4822E-02 -3.9105E-02 -1.1271E+00  2.8591E-01 -7.2754E-01  7.6294E-02  2.0303E-01 -3.8769E+00  4.0566E-01 -1.0533E+00
             1.4509E+00
 GRADIENT:  -6.2371E+01  6.2341E+01 -1.3317E+01  7.7565E+01 -1.3462E+01  1.1514E+01  1.9401E+01  5.6497E-03  3.6411E+01  4.0873E+00
             2.0588E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1558.95437797011        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      250
 NPARAMETR:  9.6298E-01  5.7576E-01  2.7553E-01  1.3011E+00  3.4120E-01  9.9675E-01  1.1499E+00  1.0000E-02  1.1186E+00  2.5959E-01
             3.0441E+00
 PARAMETER:  6.2272E-02 -4.5206E-01 -1.1891E+00  3.6320E-01 -9.7529E-01  9.6746E-02  2.3968E-01 -4.8843E+00  2.1204E-01 -1.2487E+00
             1.2132E+00
 GRADIENT:  -7.8460E+01  5.8597E+01  1.4234E+01  1.1257E+02 -7.3578E+01  1.1374E+01 -9.1997E+00  0.0000E+00 -1.5156E+01 -6.0705E+00
            -4.0535E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1574.79644234027        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      427
 NPARAMETR:  9.9956E-01  3.5162E-01  2.2959E-01  1.2624E+00  2.5699E-01  1.0017E+00  1.2363E+00  1.0000E-02  1.2785E+00  6.0949E-01
             2.8030E+00
 PARAMETER:  9.9561E-02 -9.4520E-01 -1.3715E+00  3.3299E-01 -1.2587E+00  1.0173E-01  3.1211E-01 -6.5889E+00  3.4569E-01 -3.9513E-01
             1.1307E+00
 GRADIENT:   1.2821E+01  2.9224E+01  4.8563E+01  4.3763E+01 -8.1956E+01  1.5975E+01  6.1885E+00  0.0000E+00  1.4093E+01 -4.9108E+00
            -1.0573E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1582.45320728421        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      602
 NPARAMETR:  9.9202E-01  2.6693E-01  1.6125E-01  1.1175E+00  2.0340E-01  9.5222E-01  7.0832E-01  1.0000E-02  1.3830E+00  7.0225E-01
             2.7324E+00
 PARAMETER:  9.1988E-02 -1.2208E+00 -1.7248E+00  2.1108E-01 -1.4926E+00  5.1039E-02 -2.4486E-01 -7.3288E+00  4.2427E-01 -2.5347E-01
             1.1052E+00
 GRADIENT:   4.1838E-01 -3.2380E+00  1.1561E+00  3.3373E+00 -1.2248E+00 -1.6763E+00  2.7751E+00  0.0000E+00  3.0408E+00 -1.5179E+00
             2.8372E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1584.08053701950        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      777
 NPARAMETR:  9.9235E-01  2.9125E-01  1.5815E-01  1.1066E+00  2.0544E-01  9.6795E-01  2.3817E-01  1.0000E-02  1.3886E+00  7.2660E-01
             2.6921E+00
 PARAMETER:  9.2316E-02 -1.1336E+00 -1.7442E+00  2.0129E-01 -1.4826E+00  6.7429E-02 -1.3348E+00 -6.8753E+00  4.2827E-01 -2.1937E-01
             1.0903E+00
 GRADIENT:   2.0813E+00 -1.3485E+00 -1.3712E+00 -4.7517E-01  5.2240E+00  2.7095E+00  4.3854E-01  0.0000E+00  5.1414E-01  2.0880E+00
            -6.5479E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1584.35526819132        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      952
 NPARAMETR:  9.9180E-01  2.9167E-01  1.5692E-01  1.1041E+00  2.0433E-01  9.6006E-01  2.5464E-02  1.0000E-02  1.3896E+00  7.2047E-01
             2.7140E+00
 PARAMETER:  9.1761E-02 -1.1321E+00 -1.7520E+00  1.9899E-01 -1.4880E+00  5.9244E-02 -3.5705E+00 -5.7883E+00  4.2899E-01 -2.2785E-01
             1.0984E+00
 GRADIENT:  -2.4674E-01 -1.5883E-01 -2.7516E-01 -2.1878E-01  3.8986E-01 -1.3238E-01  5.1210E-03  0.0000E+00 -6.6289E-03  3.2657E-01
             4.8502E-01

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1584.35738941593        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:     1079
 NPARAMETR:  9.9190E-01  2.9236E-01  1.5735E-01  1.1052E+00  2.0471E-01  9.6053E-01  1.0000E-02  1.0000E-02  1.3883E+00  7.1901E-01
             2.7134E+00
 PARAMETER:  9.1863E-02 -1.1298E+00 -1.7493E+00  2.0003E-01 -1.4861E+00  5.9725E-02 -4.6686E+00 -5.2660E+00  4.2805E-01 -2.2987E-01
             1.0982E+00
 GRADIENT:  -9.3784E-03  9.0031E-03  7.8709E-03 -6.4975E-03 -8.9747E-03  1.5717E-02  0.0000E+00  0.0000E+00 -3.7212E-04 -2.0861E-02
            -2.3858E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1079
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.9196E-03 -5.4037E-05  2.5122E-04 -1.1854E-02  2.5487E-03
 SE:             2.8909E-02  8.6815E-05  2.1262E-04  2.6477E-02  2.5319E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4706E-01  5.3365E-01  2.3738E-01  6.5436E-01  9.1982E-01

 ETASHRINKSD(%)  3.1517E+00  9.9709E+01  9.9288E+01  1.1297E+01  1.5177E+01
 ETASHRINKVR(%)  6.2040E+00  9.9999E+01  9.9995E+01  2.1319E+01  2.8050E+01
 EBVSHRINKSD(%)  2.7314E+00  9.9650E+01  9.9311E+01  8.3377E+00  1.5716E+01
 EBVSHRINKVR(%)  5.3882E+00  9.9999E+01  9.9995E+01  1.5980E+01  2.8963E+01
 RELATIVEINF(%)  9.4415E+01  2.8930E-04  3.6891E-04  3.9520E+01  3.4170E+00
 EPSSHRINKSD(%)  2.7089E+01
 EPSSHRINKVR(%)  4.6840E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1584.3573894159285     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -665.41885621125584     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.69
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.52
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1584.357       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  2.92E-01  1.57E-01  1.11E+00  2.05E-01  9.61E-01  1.00E-02  1.00E-02  1.39E+00  7.19E-01  2.71E+00
 


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
+        1.16E+03
 
 TH 2
+       -3.73E+01  1.54E+03
 
 TH 3
+       -1.02E+02  3.15E+03  2.10E+04
 
 TH 4
+       -1.95E+00  4.01E+01 -6.30E+02  4.00E+02
 
 TH 5
+        1.78E+02 -5.77E+03 -2.42E+04 -3.13E+02  3.66E+04
 
 TH 6
+        6.99E+00 -2.20E+01  5.12E+01 -1.04E+01 -5.93E+00  1.91E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.24E+01 -2.42E+01  2.50E+02 -1.33E+01  6.34E+01 -2.24E+00  0.00E+00  0.00E+00  6.72E+01
 
 TH10
+       -4.11E+00 -5.84E+00  9.85E+01  8.29E+00  2.91E+01  3.31E+00  0.00E+00  0.00E+00  4.70E+00  1.95E+02
 
 TH11
+       -2.04E+01 -6.19E+00 -8.20E+01 -2.76E+00  4.99E+01  3.75E+00  0.00E+00  0.00E+00  5.76E+00  1.62E+01  6.22E+01
 
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
 #CPUT: Total CPU Time in Seconds,       23.290
Stop Time:
Thu Sep 30 00:21:06 CDT 2021
