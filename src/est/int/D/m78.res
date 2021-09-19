Sat Sep 18 07:31:09 CDT 2021
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
$DATA ../../../../data/int/D/dat78.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m78.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   41582.3576816419        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8244E+02  5.1989E+02 -7.8243E+01  2.5187E+02  1.0009E+02 -2.7416E+03 -1.4954E+03 -6.2170E+01 -2.4773E+03 -6.4150E+02
            -8.2884E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -739.515160002401        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1899E+00  1.9939E+00  9.3486E-01  2.0773E+00  9.3241E-01  4.6547E+00  4.2136E+00  9.7528E-01  2.5921E+00  1.3083E+00
             1.2759E+01
 PARAMETER:  2.7388E-01  7.9012E-01  3.2644E-02  8.3107E-01  3.0014E-02  1.6379E+00  1.5383E+00  7.4969E-02  1.0525E+00  3.6872E-01
             2.6463E+00
 GRADIENT:  -1.3041E+01  3.0910E+01 -3.6302E+01  1.0738E+02 -3.2213E+01  1.2823E+02  1.8164E+01  4.4068E+00  2.4497E+01  2.7515E+01
             2.1849E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -808.345100789210        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  8.8754E-01  2.5526E+00  4.0473E+01  3.5503E+00  2.2816E+00  3.4103E+00  9.0938E+00  7.0897E-01  3.7700E+00  1.1300E+00
             1.2452E+01
 PARAMETER: -1.9306E-02  1.0371E+00  3.8006E+00  1.3670E+00  9.2489E-01  1.3268E+00  2.3076E+00 -2.4394E-01  1.4271E+00  2.2222E-01
             2.6219E+00
 GRADIENT:  -5.8930E+01  3.4699E+01 -2.0200E+00  6.9215E+01 -1.5623E+01  7.0021E+01  2.0870E+01  3.6310E-02  2.2376E+01  2.3838E+01
             2.5190E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -921.835642630193        NO. OF FUNC. EVALS.:  78
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  1.3078E+00  1.0293E+00  1.7128E+01  1.5740E+00  2.3833E+00  2.6426E+00  4.7311E+00  7.3354E-01  1.8384E+00  4.4877E-01
             1.1791E+01
 PARAMETER:  3.6836E-01  1.2883E-01  2.9407E+00  5.5359E-01  9.6849E-01  1.0718E+00  1.6541E+00 -2.0987E-01  7.0890E-01 -7.0125E-01
             2.5673E+00
 GRADIENT:   7.9410E+00 -1.6053E+01 -4.2846E+00  3.2054E+00  3.3169E+01  1.2483E+01 -3.0250E+01  8.5481E-02  7.5362E+00  4.1455E+00
             2.2283E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -946.520630458910        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  1.2058E+00  1.0073E+00  1.6168E+01  1.3559E+00  2.1892E+00  2.5682E+00  5.3497E+00  5.0426E-01  1.5668E+00  1.5065E-01
             1.0233E+01
 PARAMETER:  2.8712E-01  1.0725E-01  2.8831E+00  4.0446E-01  8.8354E-01  1.0432E+00  1.7770E+00 -5.8466E-01  5.4903E-01 -1.7928E+00
             2.4257E+00
 GRADIENT:   2.1421E+00 -7.9392E+00 -9.3987E-01 -7.7874E+00  6.6673E+00 -1.2134E+00  3.1823E+00  3.0685E-02  4.3362E+00  5.5728E-01
             2.9789E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -948.283624570626        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.1728E+00  1.8344E+00  7.2155E+00  8.8729E-01  2.1528E+00  2.5831E+00  4.2129E+00  5.5258E-01  9.3679E-01  2.9336E-02
             1.0031E+01
 PARAMETER:  2.5942E-01  7.0673E-01  2.0762E+00 -1.9586E-02  8.6675E-01  1.0490E+00  1.5382E+00 -4.9315E-01  3.4706E-02 -3.4289E+00
             2.4057E+00
 GRADIENT:  -4.7274E+00  7.0084E-01 -6.3111E-01 -1.1630E+00 -4.1602E-01  7.3349E-02  2.1161E+00  7.7157E-02  2.3598E+00  2.1218E-02
            -9.5138E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -949.099056324541        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      443
 NPARAMETR:  1.2003E+00  1.9375E+00  9.2055E+00  8.1372E-01  2.2378E+00  2.5787E+00  4.1077E+00  1.1386E-01  5.4240E-01  1.4276E-02
             1.0129E+01
 PARAMETER:  2.8261E-01  7.6138E-01  2.3198E+00 -1.0614E-01  9.0548E-01  1.0473E+00  1.5129E+00 -2.0728E+00 -5.1175E-01 -4.1491E+00
             2.4154E+00
 GRADIENT:   1.2766E+00 -4.7546E-01  3.3924E-01 -2.0669E+00  4.6596E-01 -3.7258E-01  7.5358E-01  1.7233E-03  7.6104E-01  4.7954E-03
             2.0248E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -949.244873972134        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      514
 NPARAMETR:  1.1983E+00  2.0201E+00  9.8714E+00  7.6779E-01  2.2542E+00  2.5819E+00  4.0175E+00  1.2046E-02  2.1919E-01  1.0000E-02
             1.0128E+01
 PARAMETER:  2.8092E-01  8.0317E-01  2.3896E+00 -1.6424E-01  9.1279E-01  1.0485E+00  1.4907E+00 -4.3191E+00 -1.4178E+00 -5.6906E+00
             2.4153E+00
 GRADIENT:   8.1020E-01  1.3185E-01  7.3791E-01 -7.8463E-01 -1.9180E+00 -3.5777E-02 -6.7225E-01  1.4914E-05  1.0156E-01  0.0000E+00
            -1.8719E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -949.558224010302        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      585
 NPARAMETR:  1.1956E+00  2.0116E+00  5.2004E+00  7.6377E-01  2.1378E+00  2.5811E+00  4.0109E+00  1.0000E-02  9.9999E-02  1.0000E-02
             1.0126E+01
 PARAMETER:  2.7866E-01  7.9891E-01  1.7487E+00 -1.6949E-01  8.5978E-01  1.0482E+00  1.4890E+00 -5.4625E+00 -2.2026E+00 -7.3272E+00
             2.4151E+00
 GRADIENT:  -5.2601E-02 -1.9477E-01  7.4148E-02 -4.6846E-01 -2.8977E-01 -5.8092E-02  3.2672E-01  0.0000E+00  4.0351E-02  0.0000E+00
             4.5853E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -949.571859401733        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      658
 NPARAMETR:  1.1959E+00  2.0192E+00  5.0563E+00  7.6149E-01  2.1336E+00  2.5818E+00  4.0004E+00  1.0000E-02  2.5996E-02  1.0000E-02
             1.0125E+01
 PARAMETER:  2.7891E-01  8.0269E-01  1.7206E+00 -1.7248E-01  8.5783E-01  1.0485E+00  1.4864E+00 -8.6468E+00 -3.5498E+00 -9.6991E+00
             2.4150E+00
 GRADIENT:   6.7613E-03  1.3462E-02 -8.3916E-03 -1.2148E-02 -1.4755E-02  1.1246E-02 -2.0193E-02  0.0000E+00  2.8612E-03  0.0000E+00
            -8.6416E-03

0ITERATION NO.:   50    OBJECTIVE VALUE:  -949.656972344586        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      819
 NPARAMETR:  1.2036E+00  2.0209E+00  5.3521E+00  7.7420E-01  2.1460E+00  2.6116E+00  4.0919E+00  1.0000E-02  1.0000E-02  1.0000E-02
             1.0159E+01
 PARAMETER:  2.8532E-01  8.0353E-01  1.7775E+00 -1.5592E-01  8.6361E-01  1.0600E+00  1.5090E+00 -1.5860E+01 -6.5659E+00 -1.4916E+01
             2.4183E+00
 GRADIENT:   3.1737E-02  1.3741E-02 -7.6511E-03  8.3090E-03 -1.0378E-03  1.9664E-02  9.9154E-03  0.0000E+00  0.0000E+00  0.0000E+00
             1.0121E-02

0ITERATION NO.:   52    OBJECTIVE VALUE:  -949.656985020625        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      876
 NPARAMETR:  1.2035E+00  2.0206E+00  5.3654E+00  7.7423E-01  2.1466E+00  2.6115E+00  4.0922E+00  1.0000E-02  1.0000E-02  1.0000E-02
             1.0159E+01
 PARAMETER:  2.8523E-01  8.0338E-01  1.7800E+00 -1.5588E-01  8.6391E-01  1.0599E+00  1.5091E+00 -1.5987E+01 -6.6179E+00 -1.5006E+01
             2.4183E+00
 GRADIENT:   9.0273E-03 -1.7687E-03 -1.9557E-03 -5.6252E-03  8.5461E-03  3.0618E-03  9.7085E-03  0.0000E+00  0.0000E+00  0.0000E+00
            -1.8023E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      876
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4022E-02  2.7516E-03 -5.8406E-06 -6.0771E-04 -2.2519E-05
 SE:             2.9064E-02  2.7857E-02  1.2209E-05  1.4199E-04  9.5472E-05
 N:                     100         100         100         100         100

 P VAL.:         6.2949E-01  9.2132E-01  6.3239E-01  1.8699E-05  8.1353E-01

 ETASHRINKSD(%)  2.6328E+00  6.6744E+00  9.9959E+01  9.9524E+01  9.9680E+01
 ETASHRINKVR(%)  5.1963E+00  1.2903E+01  1.0000E+02  9.9998E+01  9.9999E+01
 EBVSHRINKSD(%)  3.1811E+00  4.0261E+00  9.9940E+01  9.9694E+01  9.9538E+01
 EBVSHRINKVR(%)  6.2609E+00  7.8901E+00  1.0000E+02  9.9999E+01  9.9998E+01
 RELATIVEINF(%)  9.3617E+01  5.1151E+01  9.7142E-06  5.2019E-04  5.7168E-04
 EPSSHRINKSD(%)  5.2843E+00
 EPSSHRINKVR(%)  1.0289E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -949.65698502062480     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       704.43237474778596     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.07
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    15.51
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -949.657       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.20E+00  2.02E+00  5.37E+00  7.74E-01  2.15E+00  2.61E+00  4.09E+00  1.00E-02  1.00E-02  1.00E-02  1.02E+01
 


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
+        8.64E+01
 
 TH 2
+       -4.51E+00  4.34E+00
 
 TH 3
+       -1.60E+00  3.63E-01  1.83E-01
 
 TH 4
+       -2.56E+01  2.93E+01 -5.66E-01  2.62E+02
 
 TH 5
+        3.46E+01 -8.32E+00 -3.82E+00  5.51E+00  8.02E+01
 
 TH 6
+       -5.52E+00  2.38E+00  1.12E+00 -3.27E+00 -2.34E+01  7.13E+00
 
 TH 7
+        5.61E+00 -3.49E+00 -7.27E-02 -2.89E+01  2.23E+00 -3.70E-01  3.31E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.66E+00 -1.25E+00  8.35E-02 -1.18E+01 -1.50E+00  4.37E-01  1.19E+00  0.00E+00  0.00E+00  0.00E+00  8.92E-01
 
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
+        9.94E+01
 
 TH 2
+       -3.87E-01  1.49E+01
 
 TH 3
+        4.88E-02  1.67E-01  1.60E-01
 
 TH 4
+       -1.56E+00  2.78E+01 -5.38E-01  2.44E+02
 
 TH 5
+       -1.81E-01 -4.69E+00 -2.32E+00  5.39E+00  4.84E+01
 
 TH 6
+       -1.76E+00 -9.45E-02  2.73E-02  1.04E+00 -6.25E-01  2.40E+01
 
 TH 7
+        5.50E-01  1.10E+00 -1.38E-01 -2.58E+01  1.31E+00 -2.55E-01  8.87E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -4.19E+00 -2.26E+00 -3.97E-02 -1.45E+01  5.91E-01  9.38E-01  1.05E+00  0.00E+00  0.00E+00  0.00E+00  9.32E+00
 
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
+        1.06E+02
 
 TH 2
+        3.15E+01  1.50E+01
 
 TH 3
+        1.70E-01  1.37E-01  6.08E-02
 
 TH 4
+        4.94E+01  3.17E+01  1.19E+00  2.60E+02
 
 TH 5
+       -4.68E+00 -3.04E+00 -1.08E+00 -1.58E+01  2.31E+01
 
 TH 6
+        2.46E+01  6.10E+00 -8.34E-02 -1.01E+01 -1.38E-01  3.09E+01
 
 TH 7
+        2.97E+00  1.20E+00 -2.10E-01 -3.11E+01  2.52E+00  7.31E+00  9.95E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -3.85E+01 -1.56E+01 -8.98E-01 -1.04E+02  1.58E+01  2.16E-01  1.66E+01  0.00E+00  0.00E+00  0.00E+00  2.68E+02
 
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
 #CPUT: Total CPU Time in Seconds,       34.728
Stop Time:
Sat Sep 18 07:31:45 CDT 2021