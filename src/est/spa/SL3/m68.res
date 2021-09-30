Wed Sep 29 16:46:19 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat68.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m68.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1688.13827998007        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9825E+02  3.1272E+01 -3.6415E+01  1.2381E+02  8.3601E+01  4.5287E+01  2.0212E+01  7.0053E+00  4.7897E+01 -2.8649E+01
             8.5828E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1698.20016498498        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0037E+00  1.0221E+00  1.0290E+00  9.7804E-01  9.7084E-01  1.0097E+00  8.6346E-01  9.4563E-01  7.3179E-01  1.1887E+00
             9.6647E-01
 PARAMETER:  1.0365E-01  1.2187E-01  1.2862E-01  7.7797E-02  7.0402E-02  1.0962E-01 -4.6811E-02  4.4092E-02 -2.1227E-01  2.7288E-01
             6.5893E-02
 GRADIENT:  -3.6064E+01  2.8323E+01 -1.6449E+00  2.4585E+01 -1.6681E+01  1.4626E+00 -3.9239E+00  4.1158E+00 -1.7324E+01  4.8984E+00
            -8.5349E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1699.34482020360        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  9.9617E-01  8.9581E-01  1.1619E+00  1.0625E+00  9.6949E-01  1.0084E+00  7.6480E-01  8.3342E-01  7.6384E-01  1.2459E+00
             9.7484E-01
 PARAMETER:  9.6164E-02 -1.0022E-02  2.5007E-01  1.6061E-01  6.9018E-02  1.0840E-01 -1.6814E-01 -8.2220E-02 -1.6940E-01  3.1989E-01
             7.4516E-02
 GRADIENT:  -4.9239E+01  3.3306E+01  8.1977E+00  3.3854E+01 -2.4854E+01  1.2221E+00 -3.5856E+00 -1.0633E+00 -1.3379E+01  6.1745E+00
            -5.4858E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1701.37175345934        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      547
 NPARAMETR:  1.0223E+00  7.5239E-01  1.3015E+00  1.1515E+00  9.8476E-01  1.0006E+00  8.3785E-01  9.4931E-01  7.6358E-01  1.2176E+00
             9.8666E-01
 PARAMETER:  1.2203E-01 -1.8451E-01  3.6351E-01  2.4104E-01  8.4647E-02  1.0062E-01 -7.6916E-02  4.7977E-02 -1.6974E-01  2.9689E-01
             8.6569E-02
 GRADIENT:   1.1811E+01  1.3149E+01  1.9861E+00  2.2456E+01 -2.5938E+00 -4.3737E-02  6.4581E-01 -4.8571E-01  2.2499E+00 -2.3573E+00
             4.4517E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1702.75926079223        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      726
 NPARAMETR:  1.0126E+00  3.9546E-01  1.5390E+00  1.3816E+00  9.4631E-01  9.9318E-01  6.0629E-01  1.1132E+00  6.7795E-01  1.2370E+00
             9.8560E-01
 PARAMETER:  1.1247E-01 -8.2772E-01  5.3111E-01  4.2323E-01  4.4818E-02  9.3160E-02 -4.0039E-01  2.0720E-01 -2.8868E-01  3.1270E-01
             8.5497E-02
 GRADIENT:   5.6323E-01  1.0064E+01  1.1865E+00  3.7188E+01 -5.7492E+00 -9.8466E-01  1.9255E-02 -3.0191E-01 -6.1532E-01 -9.4629E-01
             1.1090E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1703.51031316009        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      901
 NPARAMETR:  1.0099E+00  1.9299E-01  1.8185E+00  1.5123E+00  9.6783E-01  9.9237E-01  2.4807E-01  1.3466E+00  6.2454E-01  1.2648E+00
             9.8462E-01
 PARAMETER:  1.0983E-01 -1.5451E+00  6.9802E-01  5.1364E-01  6.7302E-02  9.2336E-02 -1.2940E+00  3.9762E-01 -3.7075E-01  3.3492E-01
             8.4498E-02
 GRADIENT:   1.4319E+00  3.3393E+00  1.4852E+00  1.7150E+01 -1.7669E+00  2.8250E-02  1.0649E-02 -6.3572E-01  1.2169E+00 -7.2439E-01
            -3.3930E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1703.66799589933        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1077
 NPARAMETR:  1.0073E+00  1.1010E-01  1.9011E+00  1.5694E+00  9.6266E-01  9.9099E-01  1.0303E-01  1.4267E+00  5.9962E-01  1.2666E+00
             9.8396E-01
 PARAMETER:  1.0731E-01 -2.1063E+00  7.4243E-01  5.5072E-01  6.1947E-02  9.0952E-02 -2.1727E+00  4.5534E-01 -4.1146E-01  3.3634E-01
             8.3835E-02
 GRADIENT:  -1.7428E+00  2.5291E+00  1.2094E+00  2.4919E+01 -4.7494E+00 -5.6225E-02  6.7167E-04 -2.7630E-02  1.4487E-01  9.5184E-02
            -5.4504E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1703.94586171484        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1256
 NPARAMETR:  1.0064E+00  4.0007E-02  1.9641E+00  1.6119E+00  9.6164E-01  9.8992E-01  1.6428E-02  1.4797E+00  5.7979E-01  1.2689E+00
             9.8425E-01
 PARAMETER:  1.0641E-01 -3.1187E+00  7.7504E-01  5.7741E-01  6.0886E-02  8.9864E-02 -4.0088E+00  4.9185E-01 -4.4510E-01  3.3813E-01
             8.4124E-02
 GRADIENT:  -1.4228E+00  6.9575E-01  7.6524E-02  9.7366E+00 -2.0642E+00 -4.7243E-02  4.1683E-06  2.0215E-01 -4.4201E-01  3.3056E-01
            -1.9334E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1704.07818273357        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1441
 NPARAMETR:  1.0071E+00  1.9015E-02  1.9896E+00  1.6191E+00  9.6435E-01  9.8981E-01  1.0000E-02  1.4960E+00  5.7642E-01  1.2702E+00
             9.8431E-01
 PARAMETER:  1.0707E-01 -3.8625E+00  7.8794E-01  5.8190E-01  6.3697E-02  8.9758E-02 -4.8728E+00  5.0279E-01 -4.5091E-01  3.3919E-01
             8.4185E-02
 GRADIENT:   9.8495E-01  1.0798E-01  2.2348E-01 -1.7342E+01  1.0250E+00  8.1884E-02  0.0000E+00  8.8774E-02  9.3377E-01  1.0591E-01
             1.4117E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1704.10371356116        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1622             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0077E+00  1.0000E-02  1.9883E+00  1.6212E+00  9.6236E-01  9.8988E-01  1.0000E-02  1.4956E+00  5.7388E-01  1.2686E+00
             9.8424E-01
 PARAMETER:  1.0762E-01 -4.9346E+00  7.8727E-01  5.8316E-01  6.1637E-02  8.9828E-02 -4.8728E+00  5.0255E-01 -4.5533E-01  3.3789E-01
             8.4115E-02
 GRADIENT:   4.9241E+02  0.0000E+00  8.9587E+00  1.1951E+03  9.3622E+00  4.5549E+01  0.0000E+00  1.5804E+00  2.9166E+01  6.4854E+00
             1.0654E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1704.11314978076        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     1817             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0068E+00  1.0000E-02  1.9702E+00  1.6229E+00  9.5971E-01  9.8973E-01  1.0000E-02  1.4889E+00  5.7302E-01  1.2643E+00
             9.8380E-01
 PARAMETER:  1.0682E-01 -4.9346E+00  7.7815E-01  5.8424E-01  5.8878E-02  8.9682E-02 -4.8728E+00  4.9804E-01 -4.5684E-01  3.3448E-01
             8.3672E-02
 GRADIENT:   4.8704E+02  0.0000E+00  7.6943E+00  1.2066E+03  1.0384E+01  4.5574E+01  0.0000E+00  1.8461E+00  2.8764E+01  6.1207E+00
             8.5732E-01

0ITERATION NO.:   54    OBJECTIVE VALUE:  -1704.11827130236        NO. OF FUNC. EVALS.: 144
 CUMULATIVE NO. OF FUNC. EVALS.:     1961
 NPARAMETR:  1.0076E+00  1.0000E-02  1.9589E+00  1.6223E+00  9.5771E-01  9.8984E-01  1.0000E-02  1.4823E+00  5.7321E-01  1.2630E+00
             9.8400E-01
 PARAMETER:  1.0705E-01 -4.9346E+00  7.7988E-01  5.8415E-01  5.5794E-02  8.9713E-02 -4.8728E+00  4.9396E-01 -4.5669E-01  3.3525E-01
             8.3604E-02
 GRADIENT:  -5.3034E-01  0.0000E+00  9.6373E-01  9.2020E-01 -4.3682E-01 -1.4493E-02  0.0000E+00  1.3085E-02 -3.0436E-02  1.5214E-01
            -5.5252E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1961
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.5611E-05 -4.1532E-06 -3.3910E-02 -1.0353E-02 -4.0773E-02
 SE:             2.9874E-02  2.1196E-06  1.6162E-02  2.8796E-02  2.2225E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9745E-01  5.0061E-02  3.5896E-02  7.1919E-01  6.6574E-02

 ETASHRINKSD(%)  1.0000E-10  9.9993E+01  4.5854E+01  3.5296E+00  2.5542E+01
 ETASHRINKVR(%)  1.0000E-10  1.0000E+02  7.0682E+01  6.9345E+00  4.4561E+01
 EBVSHRINKSD(%)  3.9321E-01  9.9993E+01  5.0994E+01  3.8022E+00  2.0499E+01
 EBVSHRINKVR(%)  7.8487E-01  1.0000E+02  7.5984E+01  7.4599E+00  3.6796E+01
 RELATIVEINF(%)  9.7621E+01  1.8382E-08  6.3126E+00  3.9190E+00  1.3660E+01
 EPSSHRINKSD(%)  4.4532E+01
 EPSSHRINKVR(%)  6.9233E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1704.1182713023609     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -968.96744473862270     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.63
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.07
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1704.118       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.00E-02  1.97E+00  1.62E+00  9.57E-01  9.90E-01  1.00E-02  1.48E+00  5.73E-01  1.27E+00  9.84E-01
 


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
+        1.11E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.44E+00  0.00E+00  3.43E+01
 
 TH 4
+       -1.72E+01  0.00E+00 -3.21E+01  1.19E+03
 
 TH 5
+       -2.39E-01  0.00E+00 -9.37E+01 -6.94E+01  4.94E+02
 
 TH 6
+        3.68E-01  0.00E+00  1.56E-01 -3.20E+00  7.27E-01  2.00E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        2.86E-01  0.00E+00 -1.36E+01 -3.80E+00 -3.29E+00  1.11E-01  0.00E+00  1.78E+01
 
 TH 9
+        2.49E+00  0.00E+00  4.92E+00 -2.82E+00  3.42E-02 -2.55E+00  0.00E+00 -1.07E-01  5.26E+02
 
 TH10
+        7.09E-01  0.00E+00 -1.99E+00 -2.75E+00 -5.43E+01  3.74E-01  0.00E+00  7.05E+00  1.58E+00  5.54E+01
 
 TH11
+       -8.16E+00  0.00E+00 -6.09E+00 -2.00E+01 -3.19E-01  2.63E+00  0.00E+00  5.77E+00  2.14E+01  8.00E+00  2.20E+02
 
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
 #CPUT: Total CPU Time in Seconds,       31.755
Stop Time:
Wed Sep 29 16:46:52 CDT 2021
