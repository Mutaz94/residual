Wed Sep 29 16:35:24 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat43.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m43.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1611.26316388170        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1902E+02 -2.0890E+01 -1.7853E+01  2.7635E+01  8.4975E+01  4.4276E+01  8.0691E+00 -2.1317E+00  3.3504E+01 -3.4664E+01
            -6.6349E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1622.22930412158        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.9531E-01  1.0212E+00  9.7207E-01  1.0288E+00  9.5973E-01  9.9319E-01  9.6945E-01  1.0097E+00  8.9581E-01  1.0978E+00
             1.1769E+00
 PARAMETER:  9.5301E-02  1.2097E-01  7.1676E-02  1.2838E-01  5.8899E-02  9.3167E-02  6.8969E-02  1.0966E-01 -1.0024E-02  1.9334E-01
             2.6292E-01
 GRADIENT:   3.6312E+00  6.4891E-01 -1.3258E+01  1.7060E+01  1.9531E+01  4.4462E-01  4.3940E+00  2.2991E+00  1.2340E+01 -5.1983E+00
             1.0867E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1623.12675168488        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.9056E-01  8.6907E-01  1.1467E+00  1.1433E+00  9.6646E-01  1.0100E+00  9.2652E-01  9.4361E-01  8.2626E-01  1.2154E+00
             1.1571E+00
 PARAMETER:  9.0519E-02 -4.0329E-02  2.3685E-01  2.3394E-01  6.5881E-02  1.0995E-01  2.3680E-02  4.1962E-02 -9.0851E-02  2.9508E-01
             2.4592E-01
 GRADIENT:  -2.5285E+00  2.4001E+01  2.2674E+00  4.0220E+01  1.6329E-01  7.5672E+00  8.2611E-01 -4.7931E+00 -2.2873E-01  1.3528E+00
             1.8348E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1624.77483593702        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  9.9056E-01  8.1478E-01  1.4341E+00  1.1641E+00  1.0408E+00  9.8155E-01  6.4949E-01  1.3637E+00  8.8343E-01  1.2901E+00
             1.1506E+00
 PARAMETER:  9.0519E-02 -1.0484E-01  4.6052E-01  2.5194E-01  1.3999E-01  8.1376E-02 -3.3156E-01  4.1019E-01 -2.3942E-02  3.5473E-01
             2.4030E-01
 GRADIENT:   1.9793E+00  4.9417E+00  4.1394E+00  1.5008E+00 -1.0870E+01 -2.5993E+00  1.9336E+00  3.3756E-01  6.7842E+00  2.2088E+00
             9.9995E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1626.43103352255        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.8712E-01  5.1131E-01  1.5264E+00  1.3615E+00  9.7813E-01  9.8452E-01  2.4268E-01  1.3205E+00  7.6697E-01  1.2428E+00
             1.1512E+00
 PARAMETER:  8.7036E-02 -5.7078E-01  5.2289E-01  4.0862E-01  7.7891E-02  8.4398E-02 -1.3160E+00  3.7798E-01 -1.6531E-01  3.1737E-01
             2.4084E-01
 GRADIENT:   9.9836E-01  8.0118E+00  2.2416E+00  1.8784E+01 -2.8668E+00 -1.0557E-01  7.8748E-02 -1.5651E+00 -2.2102E+00 -2.0505E+00
             7.0106E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1626.93850368229        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      880
 NPARAMETR:  9.8368E-01  3.2546E-01  1.6124E+00  1.4791E+00  9.5211E-01  9.8199E-01  4.6856E-02  1.4107E+00  7.0654E-01  1.2516E+00
             1.1437E+00
 PARAMETER:  8.3549E-02 -1.0225E+00  5.7770E-01  4.9146E-01  5.0922E-02  8.1822E-02 -2.9607E+00  4.4407E-01 -2.4738E-01  3.2443E-01
             2.3425E-01
 GRADIENT:  -7.9669E-01  3.4835E+00 -5.4750E-01  1.4180E+01 -1.9117E+00 -2.6708E-01  2.3826E-03  1.8134E-01 -2.9934E-01  9.4762E-01
            -5.5085E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1626.99235636289        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1055
 NPARAMETR:  9.8252E-01  2.4015E-01  1.7137E+00  1.5362E+00  9.5583E-01  9.8150E-01  1.2755E-02  1.5051E+00  6.7697E-01  1.2510E+00
             1.1446E+00
 PARAMETER:  8.2369E-02 -1.3265E+00  6.3868E-01  5.2934E-01  5.4825E-02  8.1326E-02 -4.2618E+00  5.0886E-01 -2.9013E-01  3.2397E-01
             2.3510E-01
 GRADIENT:  -5.4326E-01  2.6249E+00  2.4645E-01  1.3371E+01 -2.1148E+00 -1.4445E-02  1.1885E-04 -1.0888E-02 -1.1453E+00  2.7330E-01
            -3.9924E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1627.00468949618        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1230
 NPARAMETR:  9.8187E-01  1.9137E-01  1.7779E+00  1.5683E+00  9.5979E-01  9.8098E-01  1.0000E-02  1.5645E+00  6.6221E-01  1.2531E+00
             1.1451E+00
 PARAMETER:  8.1702E-02 -1.5535E+00  6.7542E-01  5.5001E-01  5.8959E-02  8.0800E-02 -5.3310E+00  5.4759E-01 -3.1217E-01  3.2565E-01
             2.3547E-01
 GRADIENT:  -3.6315E-01  1.8961E+00  3.6019E-01  1.0309E+01 -1.6802E+00  2.3506E-02  0.0000E+00 -4.8241E-02 -9.9250E-01  7.2843E-02
            -2.8513E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1627.04932082767        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1413
 NPARAMETR:  9.8170E-01  1.7129E-01  1.7911E+00  1.5759E+00  9.6043E-01  9.8075E-01  1.0000E-02  1.5777E+00  6.5907E-01  1.2539E+00
             1.1451E+00
 PARAMETER:  8.1532E-02 -1.6644E+00  6.8282E-01  5.5481E-01  5.9622E-02  8.0562E-02 -5.6005E+00  5.5594E-01 -3.1692E-01  3.2622E-01
             2.3552E-01
 GRADIENT:   1.7114E-01  3.4697E-01 -1.8721E-01 -6.7090E+00  1.0692E+00  5.2383E-02  0.0000E+00  1.9835E-02  4.8693E-01 -1.5013E-02
             9.5443E-02

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1627.05125829153        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1511
 NPARAMETR:  9.8210E-01  1.6996E-01  1.7921E+00  1.5747E+00  9.5844E-01  9.8084E-01  1.0000E-02  1.5776E+00  6.5828E-01  1.2541E+00
             1.1449E+00
 PARAMETER:  8.1933E-02 -1.6722E+00  6.8337E-01  5.5408E-01  5.7557E-02  8.0653E-02 -5.6005E+00  5.5588E-01 -3.1813E-01  3.2644E-01
             2.3529E-01
 GRADIENT:   1.2021E+00  4.8037E-02  6.9209E-01 -1.2298E+01 -3.5390E-01  1.0611E-01  0.0000E+00  2.4849E-02  2.7706E-01  2.6301E-01
             5.6473E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1511
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4018E-04 -6.3919E-05 -3.7338E-02 -9.0190E-03 -4.5149E-02
 SE:             2.9818E-02  3.1914E-05  1.7172E-02  2.8683E-02  2.1266E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9625E-01  4.5189E-02  2.9680E-02  7.5319E-01  3.3751E-02

 ETASHRINKSD(%)  1.0758E-01  9.9893E+01  4.2470E+01  3.9090E+00  2.8755E+01
 ETASHRINKVR(%)  2.1504E-01  1.0000E+02  6.6904E+01  7.6653E+00  4.9242E+01
 EBVSHRINKSD(%)  5.2579E-01  9.9895E+01  4.7169E+01  4.1758E+00  2.4299E+01
 EBVSHRINKVR(%)  1.0488E+00  1.0000E+02  7.2089E+01  8.1772E+00  4.2694E+01
 RELATIVEINF(%)  9.7331E+01  5.2426E-06  8.0638E+00  4.8387E+00  1.2218E+01
 EPSSHRINKSD(%)  4.4156E+01
 EPSSHRINKVR(%)  6.8814E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1627.0512582915264     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -891.90043172778826     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.91
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.77
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1627.051       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.82E-01  1.70E-01  1.79E+00  1.57E+00  9.58E-01  9.81E-01  1.00E-02  1.58E+00  6.58E-01  1.25E+00  1.14E+00
 


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
+        1.18E+03
 
 TH 2
+       -3.08E+01  4.41E+02
 
 TH 3
+       -3.35E-01  1.29E+01  4.27E+01
 
 TH 4
+       -1.81E+01  6.01E+02 -2.14E+01  9.51E+02
 
 TH 5
+        1.07E+00 -1.52E+02 -9.95E+01 -6.28E+01  4.56E+02
 
 TH 6
+       -2.60E-01 -3.90E+00  2.13E-01 -3.59E+00  9.54E-02  2.03E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        8.69E-02 -5.45E-01 -1.65E+01 -4.65E+00 -6.37E+00  3.04E-02  0.00E+00  2.01E+01
 
 TH 9
+        2.93E+00 -1.10E+02  4.31E+00  2.94E-01  1.56E-01 -2.09E+00  0.00E+00 -4.28E-01  3.89E+02
 
 TH10
+        8.75E-01  4.73E+00 -8.46E-01 -8.13E-01 -5.38E+01  2.62E-01  0.00E+00  6.21E+00  2.00E+00  5.07E+01
 
 TH11
+       -8.58E+00 -1.68E+01 -4.77E+00 -1.54E+01 -3.52E+00  2.86E+00  0.00E+00  3.90E+00  1.93E+01  7.60E+00  1.63E+02
 
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
 #CPUT: Total CPU Time in Seconds,       24.737
Stop Time:
Wed Sep 29 16:35:50 CDT 2021
