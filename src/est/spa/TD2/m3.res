Wed Sep 29 18:43:21 CDT 2021
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
$DATA ../../../../data/spa/TD2/dat3.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m3.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1717.17916830747        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0408E+02 -4.4266E+01 -4.9929E+01  2.0300E+01  5.4280E+01  7.0482E+01  6.8763E+00  1.0670E+01  1.8981E+01  3.1343E+01
             2.6118E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1727.14931386544        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0223E+00  1.0963E+00  1.1195E+00  1.0012E+00  1.0284E+00  1.0020E+00  9.5594E-01  9.6945E-01  9.6453E-01  8.1916E-01
             1.0347E+00
 PARAMETER:  1.2203E-01  1.9193E-01  2.1289E-01  1.0118E-01  1.2803E-01  1.0196E-01  5.4935E-02  6.8970E-02  6.3884E-02 -9.9479E-02
             1.3410E-01
 GRADIENT:  -3.5265E-01  6.3168E+00  5.8277E+00  7.4459E+00 -1.6593E+00 -5.8536E-01  1.6347E+00 -3.0887E+00 -1.6603E+00  2.1167E+00
             6.0773E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1727.68599536918        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      374
 NPARAMETR:  1.0270E+00  1.1847E+00  1.0210E+00  9.4676E-01  1.0138E+00  1.0079E+00  9.3179E-01  1.0519E+00  9.9465E-01  7.4713E-01
             1.0171E+00
 PARAMETER:  1.2669E-01  2.6947E-01  1.2074E-01  4.5289E-02  1.1372E-01  1.0786E-01  2.9349E-02  1.5063E-01  9.4638E-02 -1.9151E-01
             1.1692E-01
 GRADIENT:   8.3397E+00  1.7082E+01  7.3123E+00  1.3984E+01 -1.3439E+01  1.1337E+00  1.7725E+00 -4.7395E-01 -1.8559E+00 -7.5869E-01
            -9.2408E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1730.03364079970        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      553
 NPARAMETR:  1.0227E+00  1.6271E+00  5.6059E-01  6.3606E-01  1.0388E+00  1.0084E+00  7.5352E-01  5.9950E-01  1.3065E+00  7.4647E-01
             1.0161E+00
 PARAMETER:  1.2248E-01  5.8678E-01 -4.7877E-01 -3.5246E-01  1.3807E-01  1.0839E-01 -1.8300E-01 -4.1166E-01  3.6739E-01 -1.9240E-01
             1.1596E-01
 GRADIENT:  -6.4908E+00 -5.0188E+00 -5.2310E+00  9.2349E+00 -6.2941E+00 -2.1255E-01  5.0438E-01  1.2667E+00  2.7279E+00  4.5560E+00
             2.0788E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1730.77955653254        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      730
 NPARAMETR:  1.0270E+00  1.9032E+00  4.4116E-01  4.6749E-01  1.1495E+00  1.0094E+00  6.7533E-01  4.3963E-01  1.5899E+00  7.6848E-01
             1.0209E+00
 PARAMETER:  1.2660E-01  7.4352E-01 -7.1835E-01 -6.6037E-01  2.3932E-01  1.0938E-01 -2.9255E-01 -7.2183E-01  5.6367E-01 -1.6334E-01
             1.2064E-01
 GRADIENT:   2.1146E+00  2.5796E+01  5.5442E-01  1.2949E+01  2.5038E+00  1.1115E-01 -3.8523E+00  3.3084E-01 -3.0373E+00 -3.2326E+00
            -1.8011E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1731.30530962349        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      912
 NPARAMETR:  1.0258E+00  1.9244E+00  4.2348E-01  4.3953E-01  1.1615E+00  1.0087E+00  6.7820E-01  1.5702E-01  1.6677E+00  7.9379E-01
             1.0217E+00
 PARAMETER:  1.2545E-01  7.5463E-01 -7.5925E-01 -7.2204E-01  2.4968E-01  1.0867E-01 -2.8832E-01 -1.7514E+00  6.1145E-01 -1.3093E-01
             1.2149E-01
 GRADIENT:   6.7498E-02 -1.9884E+00  9.0867E-01  2.1808E+00 -2.2425E+00 -8.6023E-02  8.3019E-02  5.7060E-02 -3.4836E-01 -1.4837E-01
            -1.3527E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1731.36192355656        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1097             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0271E+00  1.9236E+00  4.1970E-01  4.3465E-01  1.1639E+00  1.0098E+00  6.7673E-01  1.7663E-02  1.6812E+00  7.9362E-01
             1.0213E+00
 PARAMETER:  1.2670E-01  7.5420E-01 -7.6822E-01 -7.3321E-01  2.5176E-01  1.0978E-01 -2.9048E-01 -3.9363E+00  6.1950E-01 -1.3115E-01
             1.2103E-01
 GRADIENT:   5.6819E+02  9.7429E+02  4.5808E+00  1.2002E+02  1.6441E+01  7.7577E+01  2.0206E+01  1.4372E-03  2.4436E+01  2.9285E-01
             8.0267E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1731.36443402950        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:     1171
 NPARAMETR:  1.0260E+00  1.9176E+00  4.1861E-01  4.3736E-01  1.1582E+00  1.0089E+00  6.7566E-01  1.0000E-02  1.6764E+00  7.8532E-01
             1.0209E+00
 PARAMETER:  1.2563E-01  7.5109E-01 -7.7081E-01 -7.2699E-01  2.4689E-01  1.0890E-01 -2.9207E-01 -1.0942E+01  6.1663E-01 -1.4166E-01
             1.2067E-01
 GRADIENT:   5.6133E+02  9.6463E+02  4.6614E+00  1.2014E+02  1.5629E+01  7.6788E+01  1.9478E+01  0.0000E+00  2.4782E+01 -6.1353E-02
             6.9599E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1731.36842646541        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1354
 NPARAMETR:  1.0269E+00  1.9192E+00  4.1870E-01  4.3740E-01  1.1585E+00  1.0098E+00  6.7924E-01  1.0000E-02  1.6718E+00  7.9147E-01
             1.0214E+00
 PARAMETER:  1.2651E-01  7.5188E-01 -7.7059E-01 -7.2691E-01  2.4713E-01  1.0971E-01 -2.8679E-01 -1.0142E+01  6.1392E-01 -1.3386E-01
             1.2114E-01
 GRADIENT:   2.5448E+00 -1.4514E+01  4.7572E-02 -7.4580E-01 -9.6090E-01  3.4469E-01  4.4943E-01  0.0000E+00  3.2817E-01  3.1699E-01
             1.9909E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1731.37062940980        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     1544             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0271E+00  1.9176E+00  4.1900E-01  4.3797E-01  1.1584E+00  1.0099E+00  6.7842E-01  1.0000E-02  1.6697E+00  7.8935E-01
             1.0211E+00
 PARAMETER:  1.2670E-01  7.5108E-01 -7.6989E-01 -7.2560E-01  2.4708E-01  1.0981E-01 -2.8799E-01 -1.0142E+01  6.1262E-01 -1.3655E-01
             1.2086E-01
 GRADIENT:   5.6816E+02  9.6412E+02  4.5480E+00  1.2026E+02  1.5317E+01  7.7562E+01  2.0061E+01  0.0000E+00  2.4163E+01  4.8903E-01
             9.5420E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1731.37310051202        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     1735
 NPARAMETR:  1.0271E+00  1.9151E+00  4.2009E-01  4.3952E-01  1.1574E+00  1.0099E+00  6.7902E-01  1.0000E-02  1.6658E+00  7.8880E-01
             1.0210E+00
 PARAMETER:  1.2670E-01  7.4977E-01 -7.6729E-01 -7.2206E-01  2.4614E-01  1.0982E-01 -2.8710E-01 -1.0142E+01  6.1031E-01 -1.3724E-01
             1.2082E-01
 GRADIENT:   2.9764E+00 -1.6085E+01 -1.5180E-01 -8.4648E-01  4.1177E-01  3.8662E-01  8.0672E-02  0.0000E+00  2.0596E-01 -2.1781E-03
             2.1626E-02

0ITERATION NO.:   51    OBJECTIVE VALUE:  -1731.37310051202        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1763
 NPARAMETR:  1.0271E+00  1.9131E+00  4.2332E-01  4.4160E-01  1.1546E+00  1.0099E+00  6.7970E-01  1.0000E-02  1.6587E+00  7.8900E-01
             1.0206E+00
 PARAMETER:  1.2670E-01  7.4977E-01 -7.6729E-01 -7.2206E-01  2.4614E-01  1.0982E-01 -2.8710E-01 -1.0142E+01  6.1031E-01 -1.3724E-01
             1.2082E-01
 GRADIENT:   1.9505E-06  3.8712E-01 -1.3918E-01 -2.4179E-01  4.6297E-01  1.2252E-04 -2.1682E-02  0.0000E+00  8.0697E-02 -3.0117E-03
             2.2204E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1763
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.5668E-04 -3.2828E-02 -2.1913E-04  3.1845E-02 -3.9371E-02
 SE:             2.9872E-02  2.4485E-02  8.5497E-05  2.2806E-02  2.0770E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9047E-01  1.8001E-01  1.0379E-02  1.6261E-01  5.8013E-02

 ETASHRINKSD(%)  1.0000E-10  1.7972E+01  9.9714E+01  2.3599E+01  3.0419E+01
 ETASHRINKVR(%)  1.0000E-10  3.2715E+01  9.9999E+01  4.1628E+01  5.1584E+01
 EBVSHRINKSD(%)  4.2837E-01  1.7901E+01  9.9737E+01  2.4900E+01  2.9681E+01
 EBVSHRINKVR(%)  8.5491E-01  3.2598E+01  9.9999E+01  4.3600E+01  5.0552E+01
 RELATIVEINF(%)  9.9119E+01  5.8319E+00  7.7889E-05  4.8331E+00  1.1526E+01
 EPSSHRINKSD(%)  4.3839E+01
 EPSSHRINKVR(%)  6.8459E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1731.3731005120162     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -996.22227394827803     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.61
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.34
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1731.373       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.92E+00  4.20E-01  4.40E-01  1.16E+00  1.01E+00  6.79E-01  1.00E-02  1.67E+00  7.89E-01  1.02E+00
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.15E+03
 
 TH 2
+        1.75E+01  4.91E+02
 
 TH 3
+        2.99E+01  2.05E+02  4.28E+02
 
 TH 4
+        1.75E+00  4.06E+02 -3.89E+02  1.27E+03
 
 TH 5
+        2.20E+01 -2.34E+02 -4.15E+02  3.71E+02  6.53E+02
 
 TH 6
+       -1.43E+02  9.11E+00  1.26E+01 -1.95E+01 -5.21E+01  1.65E+02
 
 TH 7
+       -5.42E+01  6.16E+01 -4.96E+00  5.71E+01 -3.08E+01  1.39E+01  2.16E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -9.76E+00  2.18E+00 -3.71E+01  5.64E+01  4.73E+00  3.80E+00  1.81E+01  0.00E+00  8.36E+00
 
 TH10
+       -2.87E+01 -2.82E+01 -2.68E+01 -2.33E+01 -8.57E+01  1.74E+01  2.76E+01  0.00E+00  1.59E+01  5.53E+01
 
 TH11
+        1.01E+01 -7.54E+01 -8.00E+01 -1.23E+01 -6.85E+01 -2.24E+01  2.26E+01  0.00E+00  2.36E+01  7.58E+01  1.22E+02
 
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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.02E+03
 
 TH 2
+       -6.92E+00  4.63E+02
 
 TH 3
+        5.12E+00  2.00E+02  4.69E+02
 
 TH 4
+       -1.61E+01  3.33E+02 -4.03E+02  1.21E+03
 
 TH 5
+       -5.54E+00 -2.37E+02 -4.04E+02  3.42E+02  6.67E+02
 
 TH 6
+       -3.60E-01 -1.07E+00  1.76E+00 -3.50E+00 -6.17E-01  1.92E+02
 
 TH 7
+        4.09E-01  8.56E+00 -1.07E+01 -2.06E+01 -1.11E+01  3.24E-02  2.14E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.13E+00 -1.78E+01 -3.22E+01  6.64E+01 -3.88E+00 -8.65E-02  1.24E+01  0.00E+00  3.10E+01
 
 TH10
+        3.21E-01 -1.81E+01 -3.94E+01 -6.33E+00 -7.94E+01  8.71E-02  2.52E+01  0.00E+00  7.31E+00  9.11E+01
 
 TH11
+       -6.50E+00 -2.20E+01 -2.69E+01  3.24E+00 -1.56E+01  2.15E+00  1.33E+01  0.00E+00  4.94E+00  2.41E+01  2.04E+02
 
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
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.02E+03
 
 TH 2
+       -2.49E+01  4.52E+02
 
 TH 3
+       -1.32E+01  1.89E+02  4.00E+02
 
 TH 4
+       -4.50E+01  3.01E+02 -4.05E+02  1.19E+03
 
 TH 5
+        4.03E+01 -2.78E+02 -4.12E+02  3.46E+02  6.84E+02
 
 TH 6
+        1.80E+02 -2.83E+01 -5.28E+01  2.51E+01  4.75E+01  2.39E+02
 
 TH 7
+        4.36E+01 -5.27E+01  1.43E+01 -9.39E+01  9.36E+00  6.02E-01  2.17E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -6.49E+00 -2.75E+01 -4.09E+01  6.89E+01  8.16E+00 -3.74E+00  2.28E+01  0.00E+00  3.60E+01
 
 TH10
+       -1.75E+00  3.17E+00 -2.80E+01  9.34E+00 -6.57E+01  9.65E-02  1.06E+01  0.00E+00  1.04E-01  8.20E+01
 
 TH11
+        4.20E+01 -1.86E+01 -5.41E+01  5.17E+01 -2.36E+00 -1.04E+01  1.66E+01  0.00E+00  1.23E+01  3.04E+01  1.63E+02
 
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
 #CPUT: Total CPU Time in Seconds,       31.004
Stop Time:
Wed Sep 29 18:43:54 CDT 2021
