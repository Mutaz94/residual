Wed Sep 29 02:35:51 CDT 2021
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
$DATA ../../../../data/int/SL1/dat98.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m98.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3306.22545666357        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8670E+02  6.9966E+01 -1.3363E+01  1.4246E+02  1.3423E+02  5.8571E+01 -2.8315E+01 -7.1269E+01 -4.0797E+01 -1.6533E+01
            -9.3676E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3453.31370410550        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      128
 NPARAMETR:  1.0488E+00  1.0525E+00  1.1019E+00  9.5285E-01  1.0092E+00  9.4209E-01  1.1359E+00  1.1117E+00  1.1468E+00  9.9615E-01
             1.3564E+00
 PARAMETER:  1.4767E-01  1.5115E-01  1.9706E-01  5.1707E-02  1.0911E-01  4.0342E-02  2.2742E-01  2.0591E-01  2.3697E-01  9.6141E-02
             4.0484E-01
 GRADIENT:   1.8182E+02 -5.8339E+00 -1.0534E+01 -5.2147E+00 -1.9299E+01 -1.7090E+01  2.4946E+00 -7.5335E+00  4.7857E+00 -3.5666E+00
            -6.0201E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3457.18898304526        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  1.0427E+00  1.2457E+00  1.5310E+00  9.1048E-01  1.3154E+00  1.0100E+00  9.7349E-01  1.6136E+00  1.1288E+00  1.3057E+00
             1.3809E+00
 PARAMETER:  1.4180E-01  3.1970E-01  5.2593E-01  6.2163E-03  3.7417E-01  1.0995E-01  7.3134E-02  5.7849E-01  2.2118E-01  3.6671E-01
             4.2277E-01
 GRADIENT:   1.4459E+02  2.3739E+01 -1.5490E+01  6.8117E+01  5.3737E+01  1.2167E+01 -2.2267E-01 -9.3822E+00 -2.0474E+00  1.3803E+01
            -2.1875E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3463.13023157508        NO. OF FUNC. EVALS.: 171
 CUMULATIVE NO. OF FUNC. EVALS.:      476
 NPARAMETR:  9.7267E-01  1.2274E+00  1.6005E+00  9.1954E-01  1.3254E+00  9.7293E-01  9.7012E-01  2.3976E+00  1.0836E+00  1.2752E+00
             1.3613E+00
 PARAMETER:  7.2286E-02  3.0487E-01  5.7029E-01  1.6114E-02  3.8171E-01  7.2552E-02  6.9663E-02  9.7446E-01  1.8030E-01  3.4309E-01
             4.0841E-01
 GRADIENT:   2.2569E+02  1.7720E+02 -1.0304E+01  9.7263E+01  1.4459E+02  3.2836E+01  3.2257E+00  1.2850E+01  8.6357E+00  1.9354E+01
            -8.6339E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3463.63328421259        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      635
 NPARAMETR:  9.8166E-01  1.2141E+00  1.6055E+00  9.1690E-01  1.3208E+00  9.2312E-01  9.8331E-01  2.3942E+00  1.0560E+00  1.2641E+00
             1.3641E+00
 PARAMETER:  8.1485E-02  2.9404E-01  5.7345E-01  1.3244E-02  3.7826E-01  2.0006E-02  8.3172E-02  9.7304E-01  1.5445E-01  3.3438E-01
             4.1047E-01
 GRADIENT:   1.5859E+01  1.2195E+01 -2.1600E+01  4.2108E+01  5.9151E+01 -1.3171E+01 -3.1459E-01  3.2850E+00 -3.0576E+00  5.6515E+00
            -1.0724E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3465.56979492014        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      816
 NPARAMETR:  9.7379E-01  1.1681E+00  1.6405E+00  9.0244E-01  1.2882E+00  9.6831E-01  9.8147E-01  2.3695E+00  1.0752E+00  1.1974E+00
             1.3774E+00
 PARAMETER:  7.3437E-02  2.5541E-01  5.9498E-01 -2.6500E-03  3.5325E-01  6.7793E-02  8.1296E-02  9.6270E-01  1.7247E-01  2.8016E-01
             4.2020E-01
 GRADIENT:  -3.9388E+00 -3.4512E+01 -1.4934E+01 -1.4457E+01  4.9442E+01  6.0905E+00 -2.6859E+00  4.3462E+00  9.3627E-01  3.8577E-01
             1.2782E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3467.18027810421        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      992
 NPARAMETR:  9.7538E-01  1.1979E+00  1.6730E+00  8.9547E-01  1.2564E+00  9.5303E-01  9.9308E-01  2.3439E+00  1.0800E+00  1.1522E+00
             1.3786E+00
 PARAMETER:  7.5076E-02  2.8057E-01  6.1461E-01 -1.0412E-02  3.2826E-01  5.1890E-02  9.3053E-02  9.5180E-01  1.7697E-01  2.4169E-01
             4.2107E-01
 GRADIENT:  -1.9583E-01  3.9166E+00 -7.2659E+00 -1.4133E+01  8.2673E+00 -7.6598E-02 -8.3298E-02  1.8864E+00 -1.8525E-02 -3.7428E+00
             1.1504E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3467.27184628407        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1172
 NPARAMETR:  9.7578E-01  1.1976E+00  1.6824E+00  8.9604E-01  1.2556E+00  9.5556E-01  9.8538E-01  2.3294E+00  1.0800E+00  1.1590E+00
             1.3757E+00
 PARAMETER:  7.5485E-02  2.8031E-01  6.2019E-01 -9.7686E-03  3.2761E-01  5.4544E-02  8.5270E-02  9.4563E-01  1.7692E-01  2.4756E-01
             4.1896E-01
 GRADIENT:   8.5868E-01  4.3878E+00 -5.5003E+00 -1.3770E+01  6.7079E+00  9.5958E-01 -1.0524E+00  7.8952E-01 -1.9388E-01 -2.7844E+00
             6.7147E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3467.37032825777        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1348
 NPARAMETR:  9.7556E-01  1.1963E+00  1.7246E+00  8.9635E-01  1.2533E+00  9.5349E-01  9.9847E-01  2.3063E+00  1.0795E+00  1.1596E+00
             1.3716E+00
 PARAMETER:  7.5253E-02  2.7926E-01  6.4500E-01 -9.4253E-03  3.2580E-01  5.2372E-02  9.8466E-02  9.3563E-01  1.7654E-01  2.4804E-01
             4.1597E-01
 GRADIENT:   4.3543E-01  7.1076E+00  1.9795E-01 -1.6814E+01  1.0766E+00  1.0724E-01  3.9004E-02 -1.3475E+00  5.0297E-02 -2.4135E+00
             3.7776E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3467.80037655514        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1532
 NPARAMETR:  9.7785E-01  1.1765E+00  1.7504E+00  9.2167E-01  1.2487E+00  9.5469E-01  9.9912E-01  2.4295E+00  1.0700E+00  1.1811E+00
             1.3688E+00
 PARAMETER:  7.7605E-02  2.6253E-01  6.5984E-01  1.8433E-02  3.2209E-01  5.3635E-02  9.9124E-02  9.8768E-01  1.6770E-01  2.6647E-01
             4.1393E-01
 GRADIENT:   6.0274E+00  1.1351E+01 -3.2719E+00  2.8727E+00  4.9994E+00  5.6305E-01 -1.9959E-01  1.2044E-01  2.6278E+00  2.9990E+00
             4.5034E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -3467.95710684819        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1712
 NPARAMETR:  9.7584E-01  1.1540E+00  1.7540E+00  9.3109E-01  1.2495E+00  9.5359E-01  1.0152E+00  2.4236E+00  1.0465E+00  1.1539E+00
             1.3700E+00
 PARAMETER:  7.5548E-02  2.4326E-01  6.6190E-01  2.8596E-02  3.2276E-01  5.2480E-02  1.1507E-01  9.8527E-01  1.4542E-01  2.4316E-01
             4.1483E-01
 GRADIENT:   1.0484E+00 -5.1783E-02 -5.7758E+00  1.0203E-01  1.7543E+01  1.3823E-01 -2.4704E-01 -1.0434E+00 -2.3680E-01 -8.2240E-02
             7.8892E+00

0ITERATION NO.:   53    OBJECTIVE VALUE:  -3467.96194665082        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:     1806
 NPARAMETR:  9.7543E-01  1.1522E+00  1.7547E+00  9.3171E-01  1.2494E+00  9.5327E-01  1.0183E+00  2.4238E+00  1.0462E+00  1.1533E+00
             1.3699E+00
 PARAMETER:  7.5123E-02  2.4170E-01  6.6228E-01  2.9261E-02  3.2263E-01  5.2141E-02  1.1814E-01  9.8533E-01  1.4515E-01  2.4263E-01
             4.1473E-01
 GRADIENT:  -8.1984E-01 -6.7454E+02 -1.2839E+02 -2.1214E-01 -4.8793E+02 -6.8473E-02 -9.6886E-03  1.6828E+02 -1.2047E-01  6.6952E+02
            -3.9295E+02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1806
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0857E-03 -3.1608E-02 -2.4970E-02  1.9159E-02 -4.9923E-02
 SE:             2.9830E-02  2.1412E-02  2.1711E-02  2.5427E-02  2.3508E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7097E-01  1.3990E-01  2.5010E-01  4.5116E-01  3.3699E-02

 ETASHRINKSD(%)  6.5991E-02  2.8267E+01  2.7266E+01  1.4816E+01  2.1245E+01
 ETASHRINKVR(%)  1.3194E-01  4.8543E+01  4.7098E+01  2.7438E+01  3.7976E+01
 EBVSHRINKSD(%)  5.0457E-01  2.9043E+01  3.1544E+01  1.6425E+01  1.8755E+01
 EBVSHRINKVR(%)  1.0066E+00  4.9651E+01  5.3137E+01  3.0152E+01  3.3992E+01
 RELATIVEINF(%)  9.8988E+01  2.2082E+01  3.4757E+01  3.3870E+01  3.9496E+01
 EPSSHRINKSD(%)  2.1137E+01
 EPSSHRINKVR(%)  3.7806E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3467.9619466508211     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1813.8725868824104     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    58.56
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    15.94
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3467.962       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.75E-01  1.15E+00  1.75E+00  9.32E-01  1.25E+00  9.53E-01  1.02E+00  2.42E+00  1.05E+00  1.15E+00  1.37E+00
 


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
+        1.27E+03
 
 TH 2
+       -6.53E+01  5.31E+04
 
 TH 3
+       -2.03E+00  8.30E+01  3.03E+03
 
 TH 4
+       -5.63E+00 -9.13E+01 -9.74E+01  4.67E+05
 
 TH 5
+       -1.31E+01  7.29E+01 -1.65E+00 -1.13E+02  2.56E+04
 
 TH 6
+        2.34E+00 -2.55E+01 -9.53E-01 -1.59E+00 -5.28E+00  2.15E+02
 
 TH 7
+        5.25E-01 -2.64E+02 -3.20E+01  3.61E+05 -1.04E+02 -5.03E-02  2.80E+05
 
 TH 8
+       -4.25E-01 -1.75E+01  1.83E+01  1.83E+01  1.16E+01 -1.39E-01  1.35E+01  7.46E+02
 
 TH 9
+       -2.73E+05  3.69E+02  5.97E+01 -2.86E+05  1.79E+02 -2.82E-01 -2.22E+05 -1.95E+01  1.76E+05
 
 TH10
+        8.32E+01 -6.33E+02 -4.07E+01  5.14E+02 -1.78E+02  3.29E+01  3.64E+02  1.27E+01 -4.53E+02  5.21E+04
 
 TH11
+       -1.17E+01  7.22E+01 -5.89E+01 -1.24E+02 -4.17E+00  5.42E-01 -4.10E+01 -5.91E+01  1.18E+02 -5.82E+01  1.36E+04
 
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
 #CPUT: Total CPU Time in Seconds,       74.643
Stop Time:
Wed Sep 29 02:37:07 CDT 2021
