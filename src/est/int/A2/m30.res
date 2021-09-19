Sat Sep 18 00:38:24 CDT 2021
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
$DATA ../../../../data/int/A2/dat30.csv ignore=@
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
 (2E4.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m30.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2048.01584398735        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0311E+01  1.9131E+02  1.8980E+02  2.1801E+01  2.0225E+02  1.5239E+01 -2.2717E+02 -1.1140E+02 -1.2656E+01 -1.3582E+02
            -3.1808E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3015.23443838923        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0681E+00  8.4679E-01  7.9537E-01  1.0781E+00  7.6536E-01  9.4398E-01  1.2210E+00  9.3925E-01  9.5343E-01  1.0578E+00
             1.9212E+00
 PARAMETER:  1.6588E-01 -6.6307E-02 -1.2895E-01  1.7516E-01 -1.6741E-01  4.2345E-02  2.9970E-01  3.7324E-02  5.2314E-02  1.5616E-01
             7.5293E-01
 GRADIENT:   1.5657E+02  7.2764E+01  4.5816E+01  2.9803E+00 -1.4010E+01 -1.5845E+01 -2.6829E+01  1.0618E+01 -7.0878E+00  5.6813E+00
            -1.4819E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3049.73344625707        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0589E+00  4.9861E-01  3.8553E-01  1.3035E+00  3.9434E-01  9.2554E-01  1.5094E+00  7.1730E-01  1.1247E+00  7.9847E-01
             1.8074E+00
 PARAMETER:  1.5723E-01 -5.9594E-01 -8.5314E-01  3.6505E-01 -8.3054E-01  2.2620E-02  5.1168E-01 -2.3226E-01  2.1751E-01 -1.2505E-01
             6.9191E-01
 GRADIENT:   1.4067E+02  1.2863E+02  1.0747E+01  2.2318E+02 -4.6100E+01 -2.6344E+01  2.1244E+01  8.1329E+00 -1.7846E+01  2.1687E+01
            -1.2609E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3081.10119375830        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  1.0111E+00  3.2706E-01  2.5593E-01  1.2281E+00  2.8849E-01  9.7823E-01  1.1220E+00  2.2032E-01  1.2051E+00  6.8235E-01
             1.8992E+00
 PARAMETER:  1.1104E-01 -1.0176E+00 -1.2629E+00  3.0545E-01 -1.1431E+00  7.7987E-02  2.1513E-01 -1.4127E+00  2.8658E-01 -2.8222E-01
             7.4145E-01
 GRADIENT:   1.3280E+01  2.9895E+01 -2.9010E+01  1.7268E+02  1.6756E+01  2.3594E-01 -1.1318E+01 -1.6766E+00 -1.8293E+01 -3.2047E+01
             2.2288E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3093.00072704174        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      369
 NPARAMETR:  1.0096E+00  3.3713E-01  2.7572E-01  1.1121E+00  3.0457E-01  9.7849E-01  1.1536E+00  8.8125E-02  1.1818E+00  7.8988E-01
             1.9099E+00
 PARAMETER:  1.0951E-01 -9.8729E-01 -1.1884E+00  2.0621E-01 -1.0889E+00  7.8257E-02  2.4290E-01 -2.3290E+00  2.6705E-01 -1.3587E-01
             7.4703E-01
 GRADIENT:  -4.2422E-01 -7.4867E-01  1.7672E+00  5.3401E-01 -3.7558E+00  9.9544E-01 -6.3159E-01 -4.0858E-02 -2.7798E+00  5.4271E-01
             9.6195E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3093.17552955091        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      551
 NPARAMETR:  1.0056E+00  3.3912E-01  2.7671E-01  1.1124E+00  3.0587E-01  9.8033E-01  1.1484E+00  3.1973E-01  1.1933E+00  7.7841E-01
             1.8918E+00
 PARAMETER:  1.0561E-01 -9.8140E-01 -1.1848E+00  2.0653E-01 -1.0846E+00  8.0136E-02  2.3839E-01 -1.0403E+00  2.7669E-01 -1.5050E-01
             7.3754E-01
 GRADIENT:  -9.1803E+00  2.0698E+00  2.6221E+00  3.6162E-01 -1.4609E+00  1.4052E+00 -3.1133E+00 -4.7829E-02  1.2818E+00  3.8904E+00
            -1.8633E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3094.46885973218        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      737
 NPARAMETR:  1.0147E+00  3.1319E-01  2.4940E-01  1.0907E+00  2.8316E-01  9.7574E-01  1.2421E+00  7.3251E-01  1.2074E+00  6.9407E-01
             1.8654E+00
 PARAMETER:  1.1456E-01 -1.0609E+00 -1.2887E+00  1.8684E-01 -1.1617E+00  7.5441E-02  3.1683E-01 -2.1128E-01  2.8846E-01 -2.6518E-01
             7.2348E-01
 GRADIENT:   9.2556E+00 -2.0512E+00  6.4043E+00  4.7309E-01 -8.7105E-01 -2.0110E+00  1.6176E+00 -7.8503E-01 -3.7399E-01  8.4938E+00
             2.1157E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3095.76188068102        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:      933
 NPARAMETR:  1.0168E+00  3.0064E-01  2.3595E-01  1.0784E+00  2.7185E-01  9.7600E-01  1.2798E+00  9.8619E-01  1.2184E+00  6.6006E-01
             1.8484E+00
 PARAMETER:  1.1669E-01 -1.1018E+00 -1.3441E+00  1.7548E-01 -1.2025E+00  7.5705E-02  3.4670E-01  8.6098E-02  2.9755E-01 -3.1543E-01
             7.1430E-01
 GRADIENT:   1.3107E+01 -8.0363E-01  1.1014E+01  1.4579E+00  8.5348E-01 -2.8719E+00  1.4386E+00  1.4827E+00 -1.3332E+00  1.5186E+01
             4.4279E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3096.59235699018        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1101
 NPARAMETR:  1.0169E+00  3.0044E-01  2.3607E-01  1.0783E+00  2.7143E-01  9.8758E-01  1.2719E+00  9.8652E-01  1.2283E+00  5.0506E-01
             1.8490E+00
 PARAMETER:  1.1675E-01 -1.1025E+00 -1.3436E+00  1.7536E-01 -1.2040E+00  8.7501E-02  3.4051E-01  8.6427E-02  3.0560E-01 -5.8307E-01
             7.1463E-01
 GRADIENT:   2.5465E+01  7.3750E+00  2.4674E+01  6.9701E+00  3.2774E+01  2.3571E+00 -1.1115E+01 -1.1724E+01 -1.4408E-02 -6.2916E+00
             5.1735E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3097.03287259512        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1267
 NPARAMETR:  1.0169E+00  3.0044E-01  2.3607E-01  1.0783E+00  2.7238E-01  9.8566E-01  1.2975E+00  9.8652E-01  1.2332E+00  5.3038E-01
             1.8490E+00
 PARAMETER:  1.1675E-01 -1.1025E+00 -1.3436E+00  1.7536E-01 -1.2006E+00  8.5552E-02  3.6042E-01  8.6426E-02  3.0965E-01 -5.3417E-01
             7.1463E-01
 GRADIENT:   1.3038E+01 -4.8212E+00  9.8152E+00  2.7750E-01 -4.4216E+00  6.6132E-01 -5.1362E+00 -8.9731E+00  1.7446E-01 -2.5034E+00
             5.0671E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -3097.08246699105        NO. OF FUNC. EVALS.: 170
 CUMULATIVE NO. OF FUNC. EVALS.:     1437            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0169E+00  3.0037E-01  2.3614E-01  1.0782E+00  2.7246E-01  9.8388E-01  1.2975E+00  9.8724E-01  1.2333E+00  5.4942E-01
             1.8489E+00
 PARAMETER:  1.1673E-01 -1.1027E+00 -1.3433E+00  1.7532E-01 -1.2003E+00  8.3747E-02  3.6046E-01  8.7162E-02  3.0971E-01 -4.9890E-01
             7.1460E-01
 GRADIENT:   2.5620E+01  5.3362E+00  1.9439E+01  6.0298E+00  4.9704E+01  1.0233E+00 -3.0662E+00 -6.9282E+00  2.4058E+00  5.8970E-01
             5.1265E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -3097.08690057201        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     1628
 NPARAMETR:  1.0169E+00  3.0037E-01  2.3613E-01  1.0782E+00  2.7246E-01  9.8387E-01  1.2976E+00  9.8749E-01  1.2333E+00  5.4941E-01
             1.8488E+00
 PARAMETER:  1.1672E-01 -1.1027E+00 -1.3434E+00  1.7531E-01 -1.2003E+00  8.3743E-02  3.6050E-01  8.7412E-02  3.0970E-01 -4.9891E-01
             7.1456E-01
 GRADIENT:  -4.5915E+05  4.8592E+04 -3.9863E+04  1.5284E+05 -4.4648E+04  1.2674E-02  1.4865E+05  5.3589E+05 -1.7304E+05 -1.0742E+05
            -7.5043E+04

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1628
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.8481E-03  8.8780E-03 -5.9858E-03 -2.0208E-03  5.8113E-03
 SE:             2.9667E-02  2.5616E-02  2.2513E-02  2.8757E-02  1.9136E-02
 N:                     100         100         100         100         100

 P VAL.:         8.7019E-01  7.2891E-01  7.9033E-01  9.4398E-01  7.6137E-01

 ETASHRINKSD(%)  6.1047E-01  1.4182E+01  2.4579E+01  3.6611E+00  3.5893E+01
 ETASHRINKVR(%)  1.2172E+00  2.6353E+01  4.3117E+01  7.1882E+00  5.8903E+01
 EBVSHRINKSD(%)  8.9477E-01  1.3894E+01  2.6583E+01  3.2984E+00  3.6706E+01
 EBVSHRINKVR(%)  1.7815E+00  2.5857E+01  4.6099E+01  6.4879E+00  5.9939E+01
 RELATIVEINF(%)  9.8213E+01  1.9872E+01  7.9539E+00  6.6304E+01  4.4562E+00
 EPSSHRINKSD(%)  2.3546E+01
 EPSSHRINKVR(%)  4.1548E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3097.0869005720069     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1442.9975408035962     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    45.98
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    14.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3097.087       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  3.00E-01  2.36E-01  1.08E+00  2.72E-01  9.84E-01  1.30E+00  9.87E-01  1.23E+00  5.49E-01  1.85E+00
 


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
 #CPUT: Total CPU Time in Seconds,       60.362
Stop Time:
Sat Sep 18 00:39:26 CDT 2021