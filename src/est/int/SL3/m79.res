Wed Sep 29 04:45:07 CDT 2021
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
$DATA ../../../../data/int/SL3/dat79.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m79.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -264.090471676438        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1066E+02  2.1260E+02  2.1755E+00  6.0891E+01  1.1026E+02  5.6092E+01 -1.4365E+02 -2.1980E+02 -1.2836E+02 -5.3428E+01
            -6.5829E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2674.90257462885        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0611E+00  1.0328E+00  1.3078E+00  1.0691E+00  1.0964E+00  8.5520E-01  1.1158E+00  9.7840E-01  9.5364E-01  1.1057E+00
             2.9400E+00
 PARAMETER:  1.5933E-01  1.3228E-01  3.6834E-01  1.6678E-01  1.9202E-01 -5.6415E-02  2.0955E-01  7.8163E-02  5.2530E-02  2.0045E-01
             1.1784E+00
 GRADIENT:   1.3576E+02  1.7084E+01 -4.2173E+00  4.0534E+01 -7.9409E+00 -2.5693E+01  4.3395E+00 -5.0610E-01  7.7661E+00 -3.2049E+00
             1.3150E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2692.38281498384        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0442E+00  1.1856E+00  3.0179E+00  1.0154E+00  1.6088E+00  1.0166E+00  6.7218E-01  3.3481E+00  1.0341E+00  1.2995E+00
             2.8531E+00
 PARAMETER:  1.4325E-01  2.7022E-01  1.2046E+00  1.1525E-01  5.7546E-01  1.1643E-01 -2.9723E-01  1.3084E+00  1.3356E-01  3.6199E-01
             1.1484E+00
 GRADIENT:   8.7760E+01  3.5569E+01 -9.6724E+00  3.5590E+01  5.2409E+01  3.6780E+01  1.6978E+00  1.0564E+01  8.2620E+00 -3.2585E+00
             1.1789E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2697.45142749054        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.0119E+00  9.9188E-01  3.0499E+00  1.1057E+00  1.4246E+00  9.3794E-01  6.2944E-01  3.0326E+00  9.3818E-01  1.1618E+00
             2.7297E+00
 PARAMETER:  1.1184E-01  9.1843E-02  1.2151E+00  2.0046E-01  4.5392E-01  3.5931E-02 -3.6293E-01  1.2094E+00  3.6181E-02  2.4997E-01
             1.1042E+00
 GRADIENT:   5.7070E+00  7.6155E+00 -4.2343E+00  4.5149E+00  1.3478E+01  8.5794E+00 -2.3550E-01  3.2145E+00 -1.0178E+00 -4.2272E+00
             2.6388E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2702.10080352097        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      366
 NPARAMETR:  1.0370E+00  8.6718E-01  4.0566E+00  1.2123E+00  1.4396E+00  9.2656E-01  5.3609E-01  3.5731E+00  9.1549E-01  1.1733E+00
             2.6942E+00
 PARAMETER:  1.3629E-01 -4.2513E-02  1.5003E+00  2.9249E-01  4.6439E-01  2.3719E-02 -5.2345E-01  1.3734E+00  1.1706E-02  2.5984E-01
             1.0911E+00
 GRADIENT:  -4.7311E+00  9.4976E+00 -1.0962E+00  7.5793E+00 -1.6891E+00  3.4126E-02 -6.8703E-01  1.3674E+00  1.3066E+00  6.9644E-01
            -4.8596E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2703.14187429862        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      541
 NPARAMETR:  1.0384E+00  6.7033E-01  4.2219E+00  1.3390E+00  1.3405E+00  9.2307E-01  6.7633E-01  3.5014E+00  8.2258E-01  9.8846E-01
             2.7012E+00
 PARAMETER:  1.3765E-01 -2.9998E-01  1.5403E+00  3.9189E-01  3.9304E-01  1.9953E-02 -2.9108E-01  1.3532E+00 -9.5311E-02  8.8398E-02
             1.0937E+00
 GRADIENT:  -3.8692E-01 -5.7466E-01 -1.6812E-01 -1.0391E+00  1.0662E+00 -7.0344E-01 -7.5546E-01 -1.0508E+00 -1.4690E-02 -5.0493E-01
             5.6349E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2703.65771281910        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      722
 NPARAMETR:  1.0360E+00  6.5260E-01  4.1077E+00  1.3517E+00  1.3227E+00  9.2563E-01  1.3054E+00  3.4963E+00  7.5489E-01  9.6561E-01
             2.6975E+00
 PARAMETER:  1.3533E-01 -3.2679E-01  1.5129E+00  4.0137E-01  3.7970E-01  2.2725E-02  3.6652E-01  1.3517E+00 -1.8118E-01  6.5008E-02
             1.0923E+00
 GRADIENT:  -5.7581E+00 -4.5214E+00 -2.6508E+00  2.2801E-01  1.9991E+00  3.8905E-01  7.5341E-02  2.1602E+00  6.9802E+00  2.2379E+00
             2.4901E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2703.79077155571        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:      890
 NPARAMETR:  1.0381E+00  6.5468E-01  4.1363E+00  1.3525E+00  1.3215E+00  9.2470E-01  1.3022E+00  3.4722E+00  7.4422E-01  9.4163E-01
             2.7069E+00
 PARAMETER:  1.3744E-01 -3.2361E-01  1.5198E+00  4.0192E-01  3.7877E-01  2.1714E-02  3.6403E-01  1.3448E+00 -1.9542E-01  3.9859E-02
             1.0958E+00
 GRADIENT:  -1.0774E+00 -2.3502E+00 -1.1216E+00  3.2698E+00  1.2673E+00  1.2818E-01 -9.2938E-01  6.0351E-01  4.4924E+00  1.5173E-01
             7.6556E+00

0ITERATION NO.:   38    OBJECTIVE VALUE:  -2703.82823120030        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      986
 NPARAMETR:  1.0385E+00  6.5416E-01  4.1523E+00  1.3537E+00  1.3227E+00  9.2455E-01  1.3010E+00  3.4607E+00  7.2546E-01  9.4021E-01
             2.7119E+00
 PARAMETER:  1.3774E-01 -3.2440E-01  1.5237E+00  4.0286E-01  3.7969E-01  2.1553E-02  3.6312E-01  1.3415E+00 -2.2095E-01  3.8345E-02
             1.0976E+00
 GRADIENT:  -7.5158E-01 -1.8707E+00 -7.3209E-01  5.1752E+00  1.2610E+00  1.4564E-01 -2.7142E+00  9.8497E-02  1.3642E-01 -1.4077E-02
             1.0338E+01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      986
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.7796E-03 -8.8275E-03 -3.7701E-02 -1.6930E-03 -4.4286E-02
 SE:             2.9309E-02  1.5766E-02  2.2575E-02  2.4714E-02  1.8334E-02
 N:                     100         100         100         100         100

 P VAL.:         9.2444E-01  5.7553E-01  9.4910E-02  9.4539E-01  1.5714E-02

 ETASHRINKSD(%)  1.8126E+00  4.7183E+01  2.4372E+01  1.7205E+01  3.8579E+01
 ETASHRINKVR(%)  3.5923E+00  7.2104E+01  4.2803E+01  3.1451E+01  6.2274E+01
 EBVSHRINKSD(%)  1.9349E+00  4.8415E+01  2.3982E+01  1.8122E+01  3.7625E+01
 EBVSHRINKVR(%)  3.8323E+00  7.3390E+01  4.2212E+01  3.2960E+01  6.1093E+01
 RELATIVEINF(%)  9.6060E+01  4.3211E+00  3.0426E+01  1.1983E+01  2.0273E+01
 EPSSHRINKSD(%)  1.7441E+01
 EPSSHRINKVR(%)  3.1840E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          886
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1628.3590808386800     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2703.8282312003043     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1075.4691503616243     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.52
 Elapsed covariance  time in seconds:    14.82
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2703.828       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  6.54E-01  4.15E+00  1.35E+00  1.32E+00  9.25E-01  1.30E+00  3.46E+00  7.25E-01  9.40E-01  2.71E+00
 


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
 
         2.95E-02  1.23E-02  2.63E-01  3.03E-02  2.43E-02  5.79E-02  1.81E-02  1.60E-01  6.40E-03  4.65E-01  1.50E-01
 


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
+        8.69E-04
 
 TH 2
+       -6.25E-06  1.52E-04
 
 TH 3
+       -6.77E-04 -1.22E-03  6.91E-02
 
 TH 4
+       -9.18E-05  2.87E-04  2.24E-03  9.19E-04
 
 TH 5
+       -7.74E-05 -1.19E-04  6.10E-03  2.08E-04  5.93E-04
 
 TH 6
+       -2.34E-04  1.42E-04  2.55E-04  4.36E-04  8.36E-05  3.35E-03
 
 TH 7
+        6.38E-05  9.02E-05 -4.62E-03 -1.52E-04 -4.38E-04 -4.94E-05  3.28E-04
 
 TH 8
+        6.25E-04  7.68E-04 -3.90E-02 -1.35E-03 -3.81E-03 -4.81E-04  2.83E-03  2.55E-02
 
 TH 9
+       -2.37E-05 -3.11E-05  1.63E-03  5.56E-05  1.55E-04  2.29E-05 -1.16E-04 -1.00E-03  4.09E-05
 
 TH10
+       -1.48E-03 -2.48E-03  1.12E-01  2.75E-03  1.04E-02  2.96E-04 -7.83E-03 -6.69E-02  2.76E-03  2.16E-01
 
 TH11
+        3.73E-04 -4.42E-04  3.15E-02  1.09E-03  2.56E-03  2.26E-04 -1.92E-03 -1.49E-02  6.70E-04  4.68E-02  2.24E-02
 
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
+        2.95E-02
 
 TH 2
+       -1.72E-02  1.23E-02
 
 TH 3
+       -8.74E-02 -3.77E-01  2.63E-01
 
 TH 4
+       -1.03E-01  7.67E-01  2.81E-01  3.03E-02
 
 TH 5
+       -1.08E-01 -3.97E-01  9.52E-01  2.81E-01  2.43E-02
 
 TH 6
+       -1.37E-01  1.98E-01  1.68E-02  2.49E-01  5.93E-02  5.79E-02
 
 TH 7
+        1.19E-01  4.03E-01 -9.70E-01 -2.78E-01 -9.93E-01 -4.71E-02  1.81E-02
 
 TH 8
+        1.33E-01  3.90E-01 -9.29E-01 -2.79E-01 -9.80E-01 -5.21E-02  9.80E-01  1.60E-01
 
 TH 9
+       -1.26E-01 -3.94E-01  9.67E-01  2.86E-01  9.93E-01  6.18E-02 -9.97E-01 -9.79E-01  6.40E-03
 
 TH10
+       -1.08E-01 -4.33E-01  9.14E-01  1.95E-01  9.18E-01  1.10E-02 -9.30E-01 -9.02E-01  9.29E-01  4.65E-01
 
 TH11
+        8.45E-02 -2.39E-01  8.00E-01  2.40E-01  7.03E-01  2.61E-02 -7.09E-01 -6.23E-01  7.00E-01  6.74E-01  1.50E-01
 
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
+        1.29E+03
 
 TH 2
+        1.13E+04  4.13E+07
 
 TH 3
+       -2.35E+01 -7.76E+04  7.89E+02
 
 TH 4
+       -4.31E+03 -1.61E+07  3.02E+04  6.25E+06
 
 TH 5
+       -1.36E+03  1.26E+06  4.03E+03 -4.90E+05  2.62E+05
 
 TH 6
+        7.96E+01  1.89E+04  5.57E+01 -7.51E+03  1.17E+03  3.57E+02
 
 TH 7
+       -4.11E+03 -1.15E+07  2.78E+04  4.46E+06 -2.38E+05 -7.04E+03  4.02E+06
 
 TH 8
+        1.98E+01 -1.37E+04  8.44E+01  5.41E+03  5.22E+03 -9.44E+00 -5.21E+03  1.50E+03
 
 TH 9
+        1.16E+04  1.94E+07 -6.24E+04 -7.58E+06 -1.33E+04 -1.72E+03 -3.97E+06 -1.40E+04  1.63E+07
 
 TH10
+       -2.72E+00 -1.26E+04  1.92E+01  4.94E+03 -1.14E+02  5.15E-01  4.04E+03 -9.72E+00 -8.10E+03  4.11E+01
 
 TH11
+       -8.35E+01  1.30E+04 -3.01E+02 -5.12E+03 -3.21E+03 -3.72E+01 -3.27E+03 -2.61E+02  2.15E+04 -5.32E+00  2.58E+02
 
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
 #CPUT: Total CPU Time in Seconds,       42.488
Stop Time:
Wed Sep 29 04:45:52 CDT 2021
