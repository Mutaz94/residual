Wed Sep 29 03:15:44 CDT 2021
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
$DATA ../../../../data/int/SL2/dat53.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m53.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2038.43166606026        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6964E+02  5.8807E+01  1.1606E+02  7.6537E+01  1.5994E+02  3.1204E+01 -7.1074E+01 -1.8568E+02 -3.4079E+01 -1.4096E+01
            -3.3115E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2994.06317770052        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0407E+00  1.2219E+00  9.1981E-01  9.8958E-01  9.9863E-01  1.1422E+00  1.0542E+00  9.7768E-01  8.0714E-01  9.4933E-01
             2.4966E+00
 PARAMETER:  1.3987E-01  3.0037E-01  1.6407E-02  8.9521E-02  9.8634E-02  2.3291E-01  1.5280E-01  7.7429E-02 -1.1426E-01  4.7996E-02
             1.0149E+00
 GRADIENT:   1.7583E+02  1.3481E+02 -1.2086E+01  7.6504E+01 -4.8149E+01  4.2039E+01  1.6424E+01  9.3492E+00 -9.3987E+00 -1.3994E+01
             3.2209E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3016.34817320729        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  9.9290E-01  1.1165E+00  9.0485E-01  1.0167E+00  9.6348E-01  1.1075E+00  9.8884E-01  1.6768E-01  1.0133E+00  8.7574E-01
             2.3492E+00
 PARAMETER:  9.2871E-02  2.1023E-01  1.9401E-05  1.1652E-01  6.2799E-02  2.0211E-01  8.8779E-02 -1.6857E+00  1.1317E-01 -3.2682E-02
             9.5409E-01
 GRADIENT:   8.3029E+01  6.4480E+01 -2.7152E+00  6.0067E+01 -1.3317E+01  3.6236E+01 -1.1321E+00  1.4148E-01  2.6087E+01 -2.0736E+01
             2.1655E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3036.84006466641        NO. OF FUNC. EVALS.: 124
 CUMULATIVE NO. OF FUNC. EVALS.:      280
 NPARAMETR:  1.0001E+00  1.3757E+00  1.1187E+00  8.6714E-01  1.2495E+00  1.1026E+00  8.2678E-01  4.2306E-01  9.4089E-01  1.2138E+00
             2.1315E+00
 PARAMETER:  1.0014E-01  4.1898E-01  2.1221E-01 -4.2552E-02  3.2273E-01  1.9765E-01 -9.0217E-02 -7.6024E-01  3.9073E-02  2.9379E-01
             8.5685E-01
 GRADIENT:   2.3646E+01  2.2309E+01  3.9767E+00  5.1386E+01  2.1118E+00  8.0283E+00  5.8473E-01 -3.8944E-01 -3.2538E+00 -1.6741E+00
             9.2939E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3044.17040194955        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      455
 NPARAMETR:  9.8876E-01  1.9125E+00  9.8778E-01  5.0918E-01  1.6628E+00  1.0892E+00  6.5012E-01  1.4383E+00  1.3059E+00  1.4902E+00
             2.1126E+00
 PARAMETER:  8.8701E-02  7.4839E-01  8.7703E-02 -5.7496E-01  6.0852E-01  1.8547E-01 -3.3059E-01  4.6343E-01  3.6687E-01  4.9888E-01
             8.4792E-01
 GRADIENT:   3.9418E+00  1.7184E+01 -5.7764E-02  1.2780E+01 -2.5520E+00  3.4818E+00 -3.3249E+00  1.4573E+00 -4.9722E-01  4.3580E+00
             2.5986E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3046.40709988669        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      632
 NPARAMETR:  9.8795E-01  2.2840E+00  6.2250E-01  2.5987E-01  1.9129E+00  1.0873E+00  6.0462E-01  2.7678E-01  2.1228E+00  1.6004E+00
             2.1055E+00
 PARAMETER:  8.7877E-02  9.2592E-01 -3.7400E-01 -1.2476E+00  7.4862E-01  1.8374E-01 -4.0316E-01 -1.1845E+00  8.5274E-01  5.7026E-01
             8.4456E-01
 GRADIENT:   2.8482E+00  2.8767E+01  1.5332E+00  6.8541E+00 -3.4189E+00  2.6573E+00  6.8114E-01  5.6803E-02  9.7691E-01  3.8230E-01
            -4.2021E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3046.91088373968        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      807
 NPARAMETR:  9.8635E-01  2.3890E+00  4.4755E-01  1.7671E-01  1.9994E+00  1.0806E+00  5.9089E-01  7.4319E-02  2.5463E+00  1.6421E+00
             2.1086E+00
 PARAMETER:  8.6256E-02  9.7088E-01 -7.0397E-01 -1.6332E+00  7.9284E-01  1.7753E-01 -4.2612E-01 -2.4994E+00  1.0346E+00  5.9601E-01
             8.4602E-01
 GRADIENT:   5.4578E-02 -8.7275E+00 -2.1144E+00  8.8550E-01  6.3659E-01  4.0545E-01  2.7990E-01  8.3443E-03 -6.5587E-01 -3.2237E-01
             5.0704E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3046.91787952654        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      982
 NPARAMETR:  9.8623E-01  2.4131E+00  4.3806E-01  1.6528E-01  2.0233E+00  1.0793E+00  5.8817E-01  6.0584E-02  2.6582E+00  1.6552E+00
             2.1078E+00
 PARAMETER:  8.6134E-02  9.8090E-01 -7.2540E-01 -1.7001E+00  8.0471E-01  1.7632E-01 -4.3074E-01 -2.7037E+00  1.0777E+00  6.0392E-01
             8.4563E-01
 GRADIENT:  -2.6052E-01  3.9365E+00 -2.4044E+00  2.7601E+00  2.9433E+00 -1.0353E-01  2.5659E-02  5.6626E-03 -1.3869E-01  1.9112E-01
            -1.0179E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3046.93045774462        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1157
 NPARAMETR:  9.8607E-01  2.4477E+00  4.3511E-01  1.4772E-01  2.0583E+00  1.0776E+00  5.8483E-01  4.2011E-02  2.8681E+00  1.6737E+00
             2.1062E+00
 PARAMETER:  8.5975E-02  9.9514E-01 -7.3215E-01 -1.8125E+00  8.2188E-01  1.7478E-01 -4.3643E-01 -3.0698E+00  1.1537E+00  6.1504E-01
             8.4487E-01
 GRADIENT:  -6.8813E-01  2.1069E+01 -2.1699E+00  4.6796E+00  5.6904E+00 -7.7075E-01 -4.9450E-01  2.5355E-03  2.8194E-01  9.6217E-01
            -2.6799E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3046.97488798887        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1334
 NPARAMETR:  9.8603E-01  2.4769E+00  4.3996E-01  1.2961E-01  2.0814E+00  1.0766E+00  5.8456E-01  2.5837E-02  3.1613E+00  1.6827E+00
             2.1037E+00
 PARAMETER:  8.5936E-02  1.0070E+00 -7.2107E-01 -1.9433E+00  8.3303E-01  1.7379E-01 -4.3690E-01 -3.5560E+00  1.2510E+00  6.2042E-01
             8.4368E-01
 GRADIENT:  -8.3464E-01  3.0511E+01 -2.1030E-01  4.1835E+00  5.5590E+00 -1.2349E+00 -6.8370E-01  8.1733E-04  1.0907E+00  1.3691E+00
            -3.5435E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -3047.13402148710        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1512            RESET HESSIAN, TYPE II
 NPARAMETR:  9.8652E-01  2.4874E+00  4.0773E-01  1.0828E-01  2.0801E+00  1.0804E+00  5.8384E-01  1.0000E-02  3.4350E+00  1.6816E+00
             2.1054E+00
 PARAMETER:  8.6427E-02  1.0112E+00 -7.9716E-01 -2.1231E+00  8.3243E-01  1.7729E-01 -4.3813E-01 -4.7421E+00  1.3340E+00  6.1973E-01
             8.4448E-01
 GRADIENT:   9.8706E+01  6.9399E+02 -8.0760E-02  1.1606E+01  5.3721E+01  3.0755E+01  1.0305E+01  0.0000E+00  1.2531E+01  1.2106E+01
             1.5242E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -3047.13623478213        NO. OF FUNC. EVALS.: 169
 CUMULATIVE NO. OF FUNC. EVALS.:     1681
 NPARAMETR:  9.8639E-01  2.4887E+00  4.1078E-01  1.0879E-01  2.0801E+00  1.0800E+00  5.8387E-01  1.0000E-02  3.4214E+00  1.6812E+00
             2.1052E+00
 PARAMETER:  8.6298E-02  1.0118E+00 -7.8969E-01 -2.1184E+00  8.3241E-01  1.7695E-01 -4.3808E-01 -4.7421E+00  1.3301E+00  6.1953E-01
             8.4440E-01
 GRADIENT:   1.8825E-01 -4.1556E+00 -7.1431E-03 -3.8108E-02 -2.4417E-01  1.2097E-01  2.4794E-02  0.0000E+00  3.5139E-01  9.7369E-02
            -1.2815E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1681
 NO. OF SIG. DIGITS IN FINAL EST.:  2.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1321E-03 -3.1182E-02 -1.6347E-05  4.1507E-02 -1.9319E-02
 SE:             2.9657E-02  2.5558E-02  1.6484E-05  1.6342E-02  2.7046E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6955E-01  2.2244E-01  3.2135E-01  1.1087E-02  4.7504E-01

 ETASHRINKSD(%)  6.4521E-01  1.4378E+01  9.9945E+01  4.5253E+01  9.3933E+00
 ETASHRINKVR(%)  1.2863E+00  2.6689E+01  1.0000E+02  7.0028E+01  1.7904E+01
 EBVSHRINKSD(%)  9.1013E-01  1.1861E+01  9.9912E+01  5.5109E+01  6.1548E+00
 EBVSHRINKVR(%)  1.8120E+00  2.2316E+01  1.0000E+02  7.9848E+01  1.1931E+01
 RELATIVEINF(%)  9.8164E+01  2.2512E+01  5.6679E-05  5.6093E+00  6.8654E+01
 EPSSHRINKSD(%)  1.6831E+01
 EPSSHRINKVR(%)  3.0829E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3047.1362347821346     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1393.0468750137238     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    44.58
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.85
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3047.136       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.86E-01  2.49E+00  4.11E-01  1.09E-01  2.08E+00  1.08E+00  5.84E-01  1.00E-02  3.42E+00  1.68E+00  2.11E+00
 


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
+        9.62E+02
 
 TH 2
+       -1.04E+01  4.57E+02
 
 TH 3
+       -2.28E+00  5.53E+01  1.04E+02
 
 TH 4
+       -2.53E+00  3.29E+02 -3.15E+02  3.15E+03
 
 TH 5
+       -1.80E+00 -1.30E+01 -1.51E+00  3.07E+01  8.14E+01
 
 TH 6
+        3.04E+00 -3.54E+00 -6.95E-01 -1.94E+00 -7.17E-01  1.65E+02
 
 TH 7
+        2.02E+00 -2.51E-01 -2.58E+00 -8.63E+01 -7.22E-01 -1.04E+00  4.24E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        6.09E-01 -1.35E+01 -1.33E+01  1.19E+02 -1.83E+00  1.12E-01 -4.29E+00  0.00E+00  7.24E+00
 
 TH10
+       -4.84E-01  3.10E-01  8.39E+00 -1.02E+01 -4.48E+00 -1.09E-01 -3.66E+00  0.00E+00 -9.39E-01  5.40E+01
 
 TH11
+       -1.10E+01 -1.10E+01  1.00E+01 -5.36E+01  1.65E+00  1.69E+00  1.24E+01  0.00E+00 -8.84E-01  5.37E+00  2.69E+02
 
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
 #CPUT: Total CPU Time in Seconds,       58.548
Stop Time:
Wed Sep 29 03:16:44 CDT 2021
