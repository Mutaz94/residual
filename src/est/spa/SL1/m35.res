Wed Sep 29 15:01:07 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat35.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m35.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1687.64029345745        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4536E+02 -1.5265E+00 -5.2667E+01  7.8756E+01  1.0026E+02  6.8750E+01  1.7579E+00  1.1148E+01  2.1455E+00 -1.4693E+01
            -1.5738E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1696.28272710497        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0500E+00  1.0243E+00  1.1286E+00  1.0296E+00  9.9062E-01  9.3233E-01  9.7906E-01  8.8293E-01  1.0378E+00  1.0697E+00
             1.0561E+00
 PARAMETER:  1.4880E-01  1.2399E-01  2.2100E-01  1.2921E-01  9.0575E-02  2.9930E-02  7.8833E-02 -2.4506E-02  1.3712E-01  1.6735E-01
             1.5460E-01
 GRADIENT:  -1.2061E+01  3.0929E+01  3.1653E-01  4.0909E+01 -7.3720E+00 -9.5259E+00  2.3596E+00  4.0586E+00  1.4008E+00 -5.8811E+00
             5.7470E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1697.72845395290        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0514E+00  9.4811E-01  1.1947E+00  1.0560E+00  9.9642E-01  9.3986E-01  8.3639E-01  6.4780E-01  1.0463E+00  1.1828E+00
             1.0293E+00
 PARAMETER:  1.5010E-01  4.6719E-02  2.7786E-01  1.5448E-01  9.6416E-02  3.7973E-02 -7.8656E-02 -3.3418E-01  1.4528E-01  2.6786E-01
             1.2887E-01
 GRADIENT:  -5.3396E+00  1.1969E+01  9.1969E+00  1.1773E+01 -1.1556E+01 -5.7005E+00 -7.5802E-01 -1.9577E+00  1.8481E+00  4.5406E-01
            -4.2474E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1698.11144036423        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      547
 NPARAMETR:  1.0529E+00  8.7716E-01  1.1388E+00  1.0953E+00  9.5006E-01  9.5238E-01  1.0027E+00  6.2225E-01  9.8114E-01  1.1113E+00
             1.0404E+00
 PARAMETER:  1.5153E-01 -3.1061E-02  2.2995E-01  1.9103E-01  4.8771E-02  5.1208E-02  1.0265E-01 -3.7442E-01  8.0956E-02  2.0555E-01
             1.3963E-01
 GRADIENT:  -1.7409E+00  5.2147E+00  3.2098E+00  5.5252E+00 -3.6768E+00 -5.1182E-01  9.2868E-02 -5.4123E-01  5.1323E-01 -1.3035E+00
             9.0878E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1698.20533236046        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      723
 NPARAMETR:  1.0520E+00  7.1835E-01  1.2762E+00  1.1997E+00  9.4795E-01  9.5318E-01  1.0223E+00  7.7356E-01  9.2398E-01  1.1410E+00
             1.0370E+00
 PARAMETER:  1.5067E-01 -2.3080E-01  3.4390E-01  2.8208E-01  4.6546E-02  5.2048E-02  1.2204E-01 -1.5676E-01  2.0934E-02  2.3193E-01
             1.3637E-01
 GRADIENT:   1.0053E+00  4.1985E+00  8.1757E-01  6.4758E+00 -1.5149E+00  7.0182E-01 -3.2351E-01  3.1468E-01 -9.7438E-01 -7.7155E-01
            -1.7084E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1698.23154808751        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      898
 NPARAMETR:  1.0512E+00  6.0781E-01  1.3193E+00  1.2711E+00  9.2758E-01  9.5241E-01  1.0546E+00  7.8626E-01  8.8442E-01  1.1517E+00
             1.0338E+00
 PARAMETER:  1.4990E-01 -3.9789E-01  3.7714E-01  3.3985E-01  2.4819E-02  5.1245E-02  1.5317E-01 -1.4046E-01 -2.2825E-02  2.4127E-01
             1.3325E-01
 GRADIENT:   2.2458E+00  4.8651E+00  7.2773E-01  9.5933E+00 -2.7269E+00  8.9687E-01 -6.3500E-01 -4.6969E-02 -2.3365E+00  4.9983E-01
            -1.5227E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1698.30575482906        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1080
 NPARAMETR:  1.0497E+00  5.7448E-01  1.3257E+00  1.2867E+00  9.2191E-01  9.4962E-01  1.1519E+00  7.9406E-01  8.7509E-01  1.1436E+00
             1.0373E+00
 PARAMETER:  1.4855E-01 -4.5429E-01  3.8196E-01  3.5208E-01  1.8697E-02  4.8302E-02  2.4143E-01 -1.3059E-01 -3.3423E-02  2.3419E-01
             1.3662E-01
 GRADIENT:  -8.1013E-02  8.5013E-01 -5.4703E-01 -7.5641E-01  1.1290E+00 -1.2079E-01 -2.5288E-02  1.0256E-01  2.6247E-01  1.5338E-01
             2.3966E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1698.30804882737        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1256
 NPARAMETR:  1.0483E+00  5.5026E-01  1.3275E+00  1.3027E+00  9.1312E-01  9.4959E-01  1.2106E+00  7.9496E-01  8.6029E-01  1.1336E+00
             1.0369E+00
 PARAMETER:  1.4717E-01 -4.9737E-01  3.8327E-01  3.6442E-01  9.1163E-03  4.8272E-02  2.9113E-01 -1.2947E-01 -5.0482E-02  2.2543E-01
             1.3623E-01
 GRADIENT:  -2.8430E+00  1.9224E+00  6.2005E-01  8.0677E-01 -4.7913E-01 -5.7106E-02 -1.1748E-01 -3.4948E-02 -1.1055E+00 -4.6758E-01
            -2.0730E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1698.32759658686        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1440             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0505E+00  5.3112E-01  1.3271E+00  1.3099E+00  9.0904E-01  9.4970E-01  1.2591E+00  7.9721E-01  8.5789E-01  1.1330E+00
             1.0372E+00
 PARAMETER:  1.4926E-01 -5.3276E-01  3.8298E-01  3.6994E-01  4.6302E-03  4.8387E-02  3.3039E-01 -1.2664E-01 -5.3280E-02  2.2489E-01
             1.3655E-01
 GRADIENT:   6.4251E+02  5.8140E+01  5.6350E+00  4.5357E+02  9.1079E+00  4.5284E+01  4.3770E+00  3.0750E-01  7.8863E+00  2.1923E+00
             1.3554E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1698.33317843347        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1605
 NPARAMETR:  1.0513E+00  5.3100E-01  1.3274E+00  1.3111E+00  9.0809E-01  9.4983E-01  1.2358E+00  7.9294E-01  8.5686E-01  1.1337E+00
             1.0370E+00
 PARAMETER:  1.5000E-01 -5.3298E-01  3.8320E-01  3.7086E-01  3.5873E-03  4.8529E-02  3.1174E-01 -1.3201E-01 -5.4486E-02  2.2547E-01
             1.3629E-01
 GRADIENT:   1.1459E+00 -1.1000E-01  1.8196E-01 -1.2469E+00  3.8219E-01  1.3755E-02 -8.3017E-03 -8.0201E-03 -8.9428E-02 -9.4819E-02
            -3.6147E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1605
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -6.7370E-04 -1.1141E-02 -2.1666E-02 -1.3290E-03 -2.9300E-02
 SE:             2.9843E-02  1.0768E-02  1.1569E-02  2.7529E-02  2.3781E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8199E-01  3.0082E-01  6.1092E-02  9.6150E-01  2.1792E-01

 ETASHRINKSD(%)  2.1435E-02  6.3926E+01  6.1243E+01  7.7750E+00  2.0331E+01
 ETASHRINKVR(%)  4.2866E-02  8.6987E+01  8.4979E+01  1.4945E+01  3.6528E+01
 EBVSHRINKSD(%)  4.8586E-01  6.4138E+01  6.4657E+01  7.9821E+00  1.6934E+01
 EBVSHRINKVR(%)  9.6936E-01  8.7139E+01  8.7509E+01  1.5327E+01  3.1000E+01
 RELATIVEINF(%)  9.6649E+01  3.3393E-01  2.7107E+00  2.6409E+00  7.5237E+00
 EPSSHRINKSD(%)  4.3769E+01
 EPSSHRINKVR(%)  6.8381E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1698.3331784334684     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -963.18235186973027     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.81
 Elapsed covariance  time in seconds:     5.99
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1698.333       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  5.31E-01  1.33E+00  1.31E+00  9.08E-01  9.50E-01  1.24E+00  7.93E-01  8.57E-01  1.13E+00  1.04E+00
 


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
 
         5.70E-02  2.97E+00  1.15E+00  1.84E+00  5.40E-01  7.04E-02  4.18E+00  1.13E+00  1.04E+00  2.53E-01  7.65E-02
 


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
+        3.25E-03
 
 TH 2
+        1.44E-01  8.80E+00
 
 TH 3
+       -5.43E-02 -3.21E+00  1.31E+00
 
 TH 4
+       -8.93E-02 -5.46E+00  2.00E+00  3.38E+00
 
 TH 5
+        2.44E-02  1.53E+00 -5.02E-01 -9.47E-01  2.92E-01
 
 TH 6
+        1.76E-03  9.51E-02 -3.44E-02 -5.91E-02  1.70E-02  4.96E-03
 
 TH 7
+       -1.98E-01 -1.21E+01  4.19E+00  7.47E+00 -2.20E+00 -1.32E-01  1.75E+01
 
 TH 8
+       -5.30E-02 -3.15E+00  1.27E+00  1.96E+00 -5.05E-01 -3.52E-02  4.16E+00  1.27E+00
 
 TH 9
+        4.97E-02  3.06E+00 -1.10E+00 -1.89E+00  5.42E-01  3.32E-02 -4.29E+00 -1.08E+00  1.08E+00
 
 TH10
+        4.80E-03  3.44E-01 -5.28E-02 -2.09E-01  9.12E-02  4.68E-03 -6.03E-01 -7.29E-02  1.32E-01  6.42E-02
 
 TH11
+        1.99E-04  1.34E-02 -1.98E-03 -8.22E-03  3.26E-03 -5.75E-04 -2.72E-02 -2.69E-03  6.09E-03 -2.37E-04  5.86E-03
 
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
+        5.70E-02
 
 TH 2
+        8.52E-01  2.97E+00
 
 TH 3
+       -8.32E-01 -9.45E-01  1.15E+00
 
 TH 4
+       -8.52E-01 -1.00E+00  9.48E-01  1.84E+00
 
 TH 5
+        7.92E-01  9.57E-01 -8.12E-01 -9.53E-01  5.40E-01
 
 TH 6
+        4.39E-01  4.55E-01 -4.27E-01 -4.56E-01  4.47E-01  7.04E-02
 
 TH 7
+       -8.34E-01 -9.75E-01  8.74E-01  9.73E-01 -9.76E-01 -4.49E-01  4.18E+00
 
 TH 8
+       -8.24E-01 -9.42E-01  9.79E-01  9.45E-01 -8.28E-01 -4.43E-01  8.82E-01  1.13E+00
 
 TH 9
+        8.39E-01  9.92E-01 -9.20E-01 -9.91E-01  9.66E-01  4.53E-01 -9.89E-01 -9.22E-01  1.04E+00
 
 TH10
+        3.32E-01  4.58E-01 -1.82E-01 -4.49E-01  6.66E-01  2.62E-01 -5.70E-01 -2.55E-01  5.03E-01  2.53E-01
 
 TH11
+        4.56E-02  5.91E-02 -2.26E-02 -5.84E-02  7.88E-02 -1.07E-01 -8.51E-02 -3.12E-02  7.66E-02 -1.22E-02  7.65E-02
 
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
+        1.27E+03
 
 TH 2
+       -8.21E+01  4.35E+02
 
 TH 3
+        1.63E+01  9.72E+01  1.67E+02
 
 TH 4
+       -8.33E+01  5.68E+02 -2.73E+00  9.17E+02
 
 TH 5
+        6.29E+01 -2.79E+02 -2.95E+02 -5.98E+01  8.67E+02
 
 TH 6
+       -7.61E+01  4.88E+01  1.32E+01  5.56E+01 -5.35E+01  2.73E+02
 
 TH 7
+        1.91E+01  2.10E+00  9.57E-01  6.12E+00  7.06E+00 -6.59E-01  4.42E+00
 
 TH 8
+       -2.14E+00 -1.60E+01 -3.15E+01 -1.76E+01  1.13E+01  4.59E+00 -1.96E-01  2.38E+01
 
 TH 9
+        8.99E+01 -2.29E+00  1.26E+01  3.80E+01  1.32E+00 -3.25E+00  1.86E+01 -2.26E+00  1.55E+02
 
 TH10
+       -4.46E+00  4.19E+00 -2.81E+01 -1.40E+01 -9.64E+01 -2.01E+00  9.87E-01  1.62E+01 -9.86E+00  1.10E+02
 
 TH11
+       -1.45E+01  8.38E-01 -2.97E+01  5.95E+00  9.83E-02  3.22E+01  5.84E-01  8.59E+00 -1.77E+01  4.16E+01  1.97E+02
 
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
 #CPUT: Total CPU Time in Seconds,       26.860
Stop Time:
Wed Sep 29 15:01:35 CDT 2021
