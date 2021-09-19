Sat Sep 18 06:53:31 CDT 2021
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
$DATA ../../../../data/int/D/dat37.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m37.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   28528.4432361642        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.8601E+02  3.5888E+02  6.8749E+01  1.8227E+02  1.0220E+02 -1.7363E+03 -8.8808E+02 -1.1164E+02 -1.3602E+03 -6.2081E+02
            -5.9837E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -904.809844406219        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.5022E+00  1.8610E+00  8.1164E-01  1.7756E+00  9.4378E-01  5.0194E+00  6.2537E+00  1.0129E+00  2.6242E+00  1.8435E+00
             1.2756E+01
 PARAMETER:  5.0693E-01  7.2109E-01 -1.0870E-01  6.7414E-01  4.2137E-02  1.7133E+00  1.9332E+00  1.1282E-01  1.0648E+00  7.1165E-01
             2.6460E+00
 GRADIENT:   3.5213E+00  1.3268E+01 -5.0668E+01  6.9714E+01 -1.4542E+00  1.5020E+02  1.0103E+02  4.4113E+00  7.1325E+01  3.7888E+01
             4.7778E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -990.391292628797        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.2093E+00  2.4912E+00  9.8712E+01  3.5834E+00  2.6835E+00  2.0917E+00  2.6393E+01  8.3574E-01  2.6982E+00  2.4158E+00
             1.2908E+01
 PARAMETER:  2.9001E-01  1.0128E+00  4.6922E+00  1.3763E+00  1.0871E+00  8.3796E-01  3.3731E+00 -7.9432E-02  1.0926E+00  9.8203E-01
             2.6578E+00
 GRADIENT:  -4.1280E+01  1.6357E+01 -2.5068E+00  1.9436E+01  4.0117E+00  3.2002E+01  3.3121E+01  6.1298E-03  4.7728E+01  5.7607E+01
             5.0565E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1201.89016091499        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.3867E+00  7.8192E-01  2.5156E+01  2.1075E+00  2.3546E+00  2.1552E+00  8.4680E+00  4.5047E+00  1.6915E+00  7.2531E-01
             1.0128E+01
 PARAMETER:  4.2694E-01 -1.4600E-01  3.3251E+00  8.4550E-01  9.5636E-01  8.6786E-01  2.2363E+00  1.6051E+00  6.2561E-01 -2.2116E-01
             2.4153E+00
 GRADIENT:   3.8634E+01  1.8287E+01 -6.5922E+00  4.6782E+01  3.0466E+00  8.0700E-01  4.2523E+01  3.2574E+00  3.5129E+00  4.3377E+00
             2.8119E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1255.99033357893        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      299
 NPARAMETR:  1.1858E+00  4.7775E-01  3.9216E+01  1.6701E+00  2.3437E+00  2.2910E+00  6.2281E+00  3.3309E-01  1.5643E+00  5.1843E-01
             8.2640E+00
 PARAMETER:  2.7038E-01 -6.3867E-01  3.7691E+00  6.1291E-01  9.5174E-01  9.2901E-01  1.9291E+00 -9.9934E-01  5.4744E-01 -5.5695E-01
             2.2119E+00
 GRADIENT:  -6.3933E+00 -5.3932E+00 -1.1463E+00 -4.0365E+00  1.0010E+00 -1.1146E+00  6.3957E+00 -1.0571E-04  3.3278E+00  2.7841E-01
             2.4493E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1258.13261021872        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  1.1940E+00  1.2915E+00  1.8198E+01  1.1864E+00  2.3963E+00  2.3487E+00  4.2875E+00  3.5338E-01  1.0615E+00  4.9687E-01
             7.9875E+00
 PARAMETER:  2.7733E-01  3.5578E-01  3.0013E+00  2.7096E-01  9.7393E-01  9.5385E-01  1.5557E+00 -9.4020E-01  1.5973E-01 -5.9944E-01
             2.1779E+00
 GRADIENT:  -9.2304E-01  5.9386E+00  4.9154E-01  3.4467E+01  1.0447E+01  6.9297E+00 -1.8612E+01 -3.9514E-03 -2.0979E+00  2.5361E-01
            -5.7071E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1267.66199731789        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      445
 NPARAMETR:  1.1969E+00  1.8603E+00  1.8727E+00  7.2614E-01  1.8765E+00  2.2770E+00  3.4200E+00  1.8172E-01  4.7107E-01  3.3010E-01
             8.2504E+00
 PARAMETER:  2.7972E-01  7.2072E-01  7.2738E-01 -2.2002E-01  7.2939E-01  9.2284E-01  1.3296E+00 -1.6053E+00 -6.5275E-01 -1.0084E+00
             2.2103E+00
 GRADIENT:  -3.5613E+00 -5.6930E+00 -3.0557E+00 -9.2471E+00  2.3931E+01 -1.8726E+00 -5.7865E+00 -7.8772E-03  2.0502E+00  1.8100E+00
             4.5004E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1270.85422478704        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      515
 NPARAMETR:  1.2017E+00  1.6582E+00  1.7875E+00  8.2706E-01  1.6687E+00  2.2871E+00  3.8222E+00  2.5057E-01  4.4927E-01  2.6519E-01
             8.0700E+00
 PARAMETER:  2.8370E-01  6.0575E-01  6.8080E-01 -8.9877E-02  6.1206E-01  9.2730E-01  1.4408E+00 -1.2840E+00 -7.0014E-01 -1.2273E+00
             2.1882E+00
 GRADIENT:   1.2215E+00  7.1234E-01 -1.5205E+00 -4.8812E-01  1.1764E+00  8.0995E-01  2.9029E+00 -4.2521E-02  1.6543E+00  1.1422E+00
            -4.3160E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1271.67727102476        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      588
 NPARAMETR:  1.1910E+00  1.6538E+00  1.9350E+00  8.2626E-01  1.6950E+00  2.2726E+00  3.8181E+00  9.1317E-01  2.8228E-01  1.2418E-01
             8.1033E+00
 PARAMETER:  2.7482E-01  6.0309E-01  7.6012E-01 -9.0850E-02  6.2770E-01  9.2094E-01  1.4397E+00  9.1688E-03 -1.1649E+00 -1.9860E+00
             2.1923E+00
 GRADIENT:  -2.8451E+00  6.7951E-01  4.6922E-01  2.4629E-01 -1.6974E+00 -1.5457E+00 -6.4547E-02 -1.2252E-01 -2.7948E-01  2.6942E-01
             3.9550E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1271.77164011915        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      664
 NPARAMETR:  1.2031E+00  1.6372E+00  1.9279E+00  8.2383E-01  1.7096E+00  2.2859E+00  3.8144E+00  9.4753E-01  2.8329E-01  8.2348E-02
             8.0785E+00
 PARAMETER:  2.8492E-01  5.9300E-01  7.5641E-01 -9.3795E-02  6.3625E-01  9.2677E-01  1.4388E+00  4.6099E-02 -1.1613E+00 -2.3968E+00
             2.1892E+00
 GRADIENT:   1.6105E+00 -1.4510E+00 -1.3506E+00  5.9106E-01  4.4054E+00  4.9546E-01  2.5407E-01 -2.4963E-02 -2.4592E-01  1.2095E-01
            -2.1289E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1271.88904975770        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      735
 NPARAMETR:  1.1986E+00  1.6463E+00  1.9560E+00  8.2888E-01  1.6992E+00  2.2814E+00  3.8244E+00  1.0285E+00  3.1636E-01  2.1179E-02
             8.0878E+00
 PARAMETER:  2.8111E-01  5.9853E-01  7.7091E-01 -8.7678E-02  6.3016E-01  9.2480E-01  1.4414E+00  1.2809E-01 -1.0509E+00 -3.7547E+00
             2.1904E+00
 GRADIENT:  -7.3881E-02  2.8532E-01  1.4893E-02  1.3291E-01 -8.2580E-02 -7.1655E-02  3.4463E-01 -4.3224E-02 -1.2336E-01  8.0501E-03
             2.8826E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1271.89042980187        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      806
 NPARAMETR:  1.1986E+00  1.6425E+00  1.9643E+00  8.3013E-01  1.6990E+00  2.2815E+00  3.8223E+00  1.0613E+00  3.3031E-01  1.3349E-02
             8.0858E+00
 PARAMETER:  2.8119E-01  5.9620E-01  7.7514E-01 -8.6179E-02  6.3006E-01  9.2481E-01  1.4408E+00  1.5952E-01 -1.0077E+00 -4.2163E+00
             2.1901E+00
 GRADIENT:  -3.1358E-02  7.1829E-02  1.2922E-02  4.1433E-02 -3.9375E-02 -3.5887E-02  7.7868E-02 -1.2984E-02 -3.9612E-02  3.2236E-03
             9.0453E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1272.00423344089        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      964
 NPARAMETR:  1.2070E+00  1.6238E+00  2.0770E+00  8.4690E-01  1.7102E+00  2.3083E+00  3.9459E+00  1.1059E+00  3.4455E-01  1.1187E-02
             8.1037E+00
 PARAMETER:  2.8810E-01  5.8479E-01  8.3091E-01 -6.6171E-02  6.3659E-01  9.3649E-01  1.4727E+00  2.0069E-01 -9.6552E-01 -4.3930E+00
             2.1923E+00
 GRADIENT:   1.6160E-02 -3.1248E-02  1.9153E-02  3.3482E-03 -3.9136E-02  3.3246E-02 -2.3271E-02  2.2903E-02  8.5514E-03  2.2089E-03
            -2.5865E-03

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1272.00469519108        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1142
 NPARAMETR:  1.2069E+00  1.6253E+00  2.0697E+00  8.4624E-01  1.7097E+00  2.3081E+00  3.9444E+00  1.0891E+00  3.4231E-01  1.0000E-02
             8.1040E+00
 PARAMETER:  2.8806E-01  5.8571E-01  8.2739E-01 -6.6950E-02  6.3630E-01  9.3642E-01  1.4723E+00  1.8538E-01 -9.7203E-01 -4.6156E+00
             2.1924E+00
 GRADIENT:   1.6676E-03  8.3074E-04  3.2862E-04  1.3204E-03 -1.4614E-03  1.4795E-03 -9.5382E-04  5.5638E-05 -5.6135E-05  0.0000E+00
             5.3242E-04

0ITERATION NO.:   66    OBJECTIVE VALUE:  -1272.00469519108        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1164
 NPARAMETR:  1.2069E+00  1.6253E+00  2.0697E+00  8.4624E-01  1.7097E+00  2.3081E+00  3.9444E+00  1.0891E+00  3.4231E-01  1.0000E-02
             8.1040E+00
 PARAMETER:  2.8806E-01  5.8571E-01  8.2739E-01 -6.6950E-02  6.3630E-01  9.3642E-01  1.4723E+00  1.8538E-01 -9.7203E-01 -4.6156E+00
             2.1924E+00
 GRADIENT:   1.6676E-03  8.3074E-04  3.2862E-04  1.3204E-03 -1.4614E-03  1.4795E-03 -9.5382E-04  5.5638E-05 -5.6135E-05  0.0000E+00
             5.3242E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1164
 NO. OF SIG. DIGITS IN FINAL EST.:  3.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.9594E-03  7.2534E-03 -6.4910E-03 -2.1281E-02  6.9300E-06
 SE:             2.8945E-02  2.7692E-02  6.0979E-03  5.7701E-03  1.4909E-04
 N:                     100         100         100         100         100

 P VAL.:         7.5692E-01  7.9337E-01  2.8712E-01  2.2594E-04  9.6293E-01

 ETASHRINKSD(%)  3.0303E+00  7.2290E+00  7.9571E+01  8.0669E+01  9.9501E+01
 ETASHRINKVR(%)  5.9687E+00  1.3935E+01  9.5827E+01  9.6263E+01  9.9998E+01
 EBVSHRINKSD(%)  2.7737E+00  4.3329E+00  8.1020E+01  8.4731E+01  9.9437E+01
 EBVSHRINKVR(%)  5.4705E+00  8.4781E+00  9.6397E+01  9.7669E+01  9.9997E+01
 RELATIVEINF(%)  9.4335E+01  4.7142E+01  8.5110E-01  8.7150E-01  8.5171E-04
 EPSSHRINKSD(%)  6.8591E+00
 EPSSHRINKVR(%)  1.3248E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1272.0046951910763     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       382.08466457733448     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.67
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    15.95
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1272.005       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.21E+00  1.63E+00  2.07E+00  8.46E-01  1.71E+00  2.31E+00  3.94E+00  1.09E+00  3.42E-01  1.00E-02  8.10E+00
 


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
+        8.69E+01
 
 TH 2
+        2.29E+00  6.58E+00
 
 TH 3
+        3.97E+00  2.40E+00  8.33E+00
 
 TH 4
+       -3.55E+01  3.29E+01 -3.11E+01  4.23E+02
 
 TH 5
+       -1.53E+01 -1.21E+01 -3.25E+01  1.02E+02  1.28E+02
 
 TH 6
+        9.82E+00 -8.52E-01 -1.16E+00 -2.88E+00  4.87E+00  1.51E+00
 
 TH 7
+        3.16E+00 -3.87E+00 -4.61E-01 -2.62E+01  3.55E+00  8.99E-01  2.59E+00
 
 TH 8
+       -1.44E-01 -2.14E-01 -1.10E+00  4.70E+00  4.24E+00  1.90E-01  1.35E-02  1.48E-01
 
 TH 9
+        2.11E+00 -4.14E+00 -2.98E-01 -2.87E+01  3.05E+00  7.72E-01  2.73E+00 -1.81E-02  2.91E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.14E+00 -1.99E+00  2.12E-01 -1.47E+01  5.46E-02 -1.76E-02  1.19E+00 -5.99E-02  1.33E+00  0.00E+00  1.17E+00
 
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
+        1.34E+02
 
 TH 2
+       -8.89E-01  2.47E+01
 
 TH 3
+        9.15E-01  2.23E+00  9.18E+00
 
 TH 4
+       -1.01E+01  3.72E+01 -2.58E+01  4.16E+02
 
 TH 5
+       -3.79E+00 -1.03E+01 -2.69E+01  7.94E+01  1.11E+02
 
 TH 6
+        1.10E+00 -1.48E-01  6.29E-02  1.63E+00 -2.33E+00  3.36E+01
 
 TH 7
+        3.45E-01  1.72E+00 -1.62E+00 -2.71E+01  2.83E+00 -5.63E-01  9.58E+00
 
 TH 8
+        4.72E-01 -4.66E-01 -1.46E+00  4.19E+00  3.28E+00  2.09E-01  5.68E-01  2.55E+00
 
 TH 9
+       -6.39E-01 -1.47E+00 -8.45E-02 -2.79E+01  2.41E+00 -1.82E-02  2.17E+00 -2.33E-01  1.53E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -5.63E+00 -3.12E+00 -1.96E-02 -1.57E+01 -5.05E-02  6.62E-01  1.15E+00  3.48E-01  1.49E+00  0.00E+00  1.62E+01
 
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
+        1.36E+02
 
 TH 2
+        4.35E+01  2.48E+01
 
 TH 3
+        2.84E+00  2.75E+00  8.07E+00
 
 TH 4
+        3.72E+01  3.59E+01 -2.46E+01  4.02E+02
 
 TH 5
+       -7.21E+00 -6.80E+00 -2.34E+01  6.82E+01  8.76E+01
 
 TH 6
+        3.80E+01  1.18E+01 -1.34E-01 -1.45E+00  5.77E+00  4.93E+01
 
 TH 7
+        7.46E+00  3.31E+00 -1.84E+00 -2.66E+01  8.90E+00  1.12E+01  1.27E+01
 
 TH 8
+       -6.24E-01 -3.72E-01 -9.98E-01  1.70E+00  1.70E+00  1.13E-01  2.97E-01  4.59E-01
 
 TH 9
+        5.47E-01 -3.14E+00  2.62E+00 -7.13E+01 -3.44E+00 -1.06E+00  4.66E+00 -8.77E-02  2.31E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -4.82E+01 -9.75E+00  1.14E-01 -1.06E+01  6.20E+00  5.34E-01  8.94E+00 -2.44E+00 -2.82E+00  0.00E+00  5.65E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       42.758
Stop Time:
Sat Sep 18 06:54:16 CDT 2021