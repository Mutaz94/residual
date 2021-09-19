Sat Sep 18 15:41:27 CDT 2021
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
$DATA ../../../../data/spa/D/dat86.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m86.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   20739.4231530397        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8659E+02  4.7757E+02 -5.4144E+01  4.9088E+02  2.4416E+02 -2.8383E+03 -1.1037E+03 -6.4383E+00 -1.6254E+03 -7.1695E+02
            -3.8277E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -503.556130933481        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.2225E+00  1.0668E+00  9.5761E-01  1.3392E+00  1.1827E+00  1.7034E+00  1.0404E+00  9.7516E-01  9.5279E-01  9.6810E-01
             1.5141E+01
 PARAMETER:  3.0092E-01  1.6466E-01  5.6681E-02  3.9211E-01  2.6784E-01  6.3263E-01  1.3956E-01  7.4842E-02  5.1635E-02  6.7577E-02
             2.8174E+00
 GRADIENT:  -2.8900E+01  1.7584E+01 -7.3319E-01  2.2437E+01 -6.5284E+00  1.4814E+01  1.5901E+00  3.0572E+00  8.1584E+00  3.2181E+00
             2.5721E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -513.014429635215        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.2357E+00  4.0262E-01  3.3272E-01  1.6723E+00  2.8600E-01  1.7416E+00  1.4383E+00  4.2920E-02  2.6011E-01  3.6982E-01
             1.6561E+01
 PARAMETER:  3.1167E-01 -8.0975E-01 -1.0004E+00  6.1422E-01 -1.1517E+00  6.5483E-01  4.6345E-01 -3.0484E+00 -1.2467E+00 -8.9473E-01
             2.9070E+00
 GRADIENT:  -9.3640E+01  3.7168E+01  6.9084E+01  1.0946E+02 -1.0726E+02 -4.9027E+01 -2.1092E+00  1.6877E-02  1.2526E+00  7.6601E-01
             8.5653E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -610.932017121657        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      235
 NPARAMETR:  1.3034E+00  1.5942E-01  2.1162E-02  9.8186E-01  9.5641E-02  2.9320E+00  5.0196E-01  1.0000E-02  6.3263E-01  1.2159E-01
             1.3848E+01
 PARAMETER:  3.6500E-01 -1.7362E+00 -3.7556E+00  8.1697E-02 -2.2472E+00  1.1757E+00 -5.8924E-01 -2.5727E+01 -3.5788E-01 -2.0071E+00
             2.7282E+00
 GRADIENT:  -3.3627E+00  1.1459E+01  1.2430E+01 -7.4098E+00 -6.4633E+01  1.0172E+01  8.7378E-01  0.0000E+00  9.3553E-02  7.6146E-01
             4.5805E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -615.102072034256        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  1.2657E+00  1.4193E-01  1.9988E-02  9.5882E-01  9.8423E-02  2.8562E+00  2.8872E-01  1.0000E-02  1.7314E+00  7.3003E-02
             1.2797E+01
 PARAMETER:  3.3560E-01 -1.8525E+00 -3.8126E+00  5.7944E-02 -2.2185E+00  1.1495E+00 -1.1423E+00 -2.7527E+01  6.4895E-01 -2.5173E+00
             2.6492E+00
 GRADIENT:   1.5714E+00 -1.4590E+00 -3.7921E-01 -2.4345E+00  1.7890E+00  1.6026E+00  3.2426E-01  0.0000E+00  5.3481E-01  2.9781E-01
             7.1794E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -618.564756596053        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      379
 NPARAMETR:  1.1032E+00  1.5663E-01  3.3008E-02  4.9528E+00  9.7879E-02  3.1890E+00  1.2666E-01  1.0000E-02  1.4787E+00  1.0000E-02
             1.3370E+01
 PARAMETER:  1.9819E-01 -1.7539E+00 -3.3110E+00  1.6999E+00 -2.2240E+00  1.2597E+00 -1.9662E+00 -1.3964E+01  4.9116E-01 -1.0089E+01
             2.6930E+00
 GRADIENT:   8.4900E+00 -1.1656E-01 -1.2179E+01  6.2975E+00  3.2074E+01 -1.3319E+01  7.4059E-02  0.0000E+00  3.0317E-02  0.0000E+00
             3.0331E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -621.227803586326        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      449
 NPARAMETR:  9.2726E-01  1.4472E-01  4.0993E-02  7.3900E+00  9.6429E-02  3.5942E+00  1.2775E-01  1.0000E-02  1.4792E+00  1.0000E-02
             1.2757E+01
 PARAMETER:  2.4481E-02 -1.8330E+00 -3.0943E+00  2.1001E+00 -2.2390E+00  1.3793E+00 -1.9577E+00 -9.0494E+00  4.9150E-01 -1.1486E+01
             2.6461E+00
 GRADIENT:   1.6425E-01 -6.4452E-01  7.6765E-01  1.3758E+00  4.5959E+00 -3.9634E+00  6.7369E-02  0.0000E+00 -3.2404E-01  0.0000E+00
             2.6856E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -621.276000141985        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      521
 NPARAMETR:  9.3308E-01  1.4464E-01  3.9903E-02  7.1617E+00  9.5965E-02  3.6210E+00  9.0306E-02  1.0000E-02  1.5094E+00  1.0000E-02
             1.2709E+01
 PARAMETER:  3.0737E-02 -1.8335E+00 -3.1213E+00  2.0687E+00 -2.2438E+00  1.3868E+00 -2.3046E+00 -9.1810E+00  5.1173E-01 -1.1135E+01
             2.6423E+00
 GRADIENT:  -3.0989E-01  1.9545E-01 -7.3974E-01  2.3529E-01  4.9937E-01  8.3261E-01  3.4091E-02  0.0000E+00  4.3934E-02  0.0000E+00
             1.8890E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -621.285064324126        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      592
 NPARAMETR:  9.3990E-01  1.4441E-01  3.9724E-02  6.9138E+00  9.6131E-02  3.5999E+00  4.4384E-02  1.0000E-02  1.4575E+00  1.0000E-02
             1.2690E+01
 PARAMETER:  3.8023E-02 -1.8351E+00 -3.1258E+00  2.0335E+00 -2.2420E+00  1.3809E+00 -3.0149E+00 -8.7826E+00  4.7673E-01 -1.0484E+01
             2.6408E+00
 GRADIENT:   3.1195E-02  6.5476E-02  2.8921E-01 -1.3685E-01 -7.5632E-01  2.8753E-01  8.2125E-03  0.0000E+00  8.5499E-02  0.0000E+00
             4.5111E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -621.285080887903        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      686
 NPARAMETR:  9.4041E-01  1.4444E-01  3.9682E-02  6.8882E+00  9.6152E-02  3.5981E+00  4.1570E-02  1.0000E-02  1.4460E+00  1.0000E-02
             1.2689E+01
 PARAMETER:  3.8560E-02 -1.8349E+00 -3.1269E+00  2.0298E+00 -2.2418E+00  1.3804E+00 -3.0804E+00 -8.7419E+00  4.6879E-01 -1.0417E+01
             2.6407E+00
 GRADIENT:  -7.9619E-02 -2.2365E-02 -2.4357E-01 -2.5519E-01 -3.8722E+00 -1.3006E+00  7.1846E-03  0.0000E+00  7.2459E-02  0.0000E+00
            -1.7067E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -621.320735535837        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      864
 NPARAMETR:  9.2699E-01  1.4637E-01  4.0935E-02  7.2231E+00  9.6690E-02  3.6502E+00  1.0136E-02  1.0000E-02  1.4712E+00  1.0000E-02
             1.2729E+01
 PARAMETER:  2.4187E-02 -1.8216E+00 -3.0958E+00  2.0773E+00 -2.2362E+00  1.3948E+00 -4.4917E+00 -7.0558E+00  4.8605E-01 -9.8659E+00
             2.6439E+00
 GRADIENT:   5.7229E-03 -1.3591E-03  2.7250E-02 -5.5563E-03 -8.4585E-02 -3.9600E-02  4.3241E-04  0.0000E+00  3.2388E-03  0.0000E+00
            -1.9088E-02

0ITERATION NO.:   54    OBJECTIVE VALUE:  -621.320757762079        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      991
 NPARAMETR:  9.2714E-01  1.4642E-01  4.0921E-02  7.2106E+00  9.6710E-02  3.6502E+00  1.0000E-02  1.0000E-02  1.4646E+00  1.0000E-02
             1.2729E+01
 PARAMETER:  2.4351E-02 -1.8212E+00 -3.0961E+00  2.0755E+00 -2.2360E+00  1.3948E+00 -4.6321E+00 -6.9428E+00  4.8161E-01 -9.7704E+00
             2.6439E+00
 GRADIENT:  -1.0727E-03 -3.3357E-05 -1.1121E-03  1.3750E-04  1.9957E-03  8.5297E-04  0.0000E+00  0.0000E+00  1.7541E-05  0.0000E+00
             1.5466E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      991
 NO. OF SIG. DIGITS IN FINAL EST.:  3.9
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.6427E-03 -1.9143E-05 -1.6690E-04 -1.6113E-02  1.5781E-04
 SE:             2.7708E-02  3.2078E-05  8.2318E-05  7.0785E-03  2.8118E-04
 N:                     100         100         100         100         100

 P VAL.:         7.2783E-01  5.5066E-01  4.2608E-02  2.2828E-02  5.7463E-01

 ETASHRINKSD(%)  7.1736E+00  9.9893E+01  9.9724E+01  7.6286E+01  9.9058E+01
 ETASHRINKVR(%)  1.3833E+01  1.0000E+02  9.9999E+01  9.4377E+01  9.9991E+01
 EBVSHRINKSD(%)  5.2090E+00  9.9820E+01  9.9704E+01  7.9367E+01  9.8950E+01
 EBVSHRINKVR(%)  1.0147E+01  1.0000E+02  9.9999E+01  9.5743E+01  9.9989E+01
 RELATIVEINF(%)  4.5017E+01  2.3414E-04  2.1014E-04  9.7632E-01  3.5469E-03
 EPSSHRINKSD(%)  4.5368E+00
 EPSSHRINKVR(%)  8.8678E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -621.32075776207944     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       113.83006880165874     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:     9.98
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.39
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -621.321       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.27E-01  1.46E-01  4.09E-02  7.21E+00  9.67E-02  3.65E+00  1.00E-02  1.00E-02  1.46E+00  1.00E-02  1.27E+01
 


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
+        1.50E+01
 
 TH 2
+       -5.56E+01  6.77E+02
 
 TH 3
+        8.49E+02  1.04E+03  8.55E+04
 
 TH 4
+       -5.10E-01 -7.65E+00 -1.14E+02  2.11E-01
 
 TH 5
+        1.88E+02 -6.64E+03 -4.23E+04  1.14E+02  7.74E+04
 
 TH 6
+       -3.96E+00  7.16E+00 -2.92E+02  2.88E-01  4.59E+01  1.17E+00
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -3.33E-02  1.49E+00  1.03E+01 -2.67E-02 -1.77E+01 -1.32E-02  0.00E+00  0.00E+00  4.07E-03
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.70E+00  4.94E-02 -1.52E+02  1.85E-01  5.77E+01  5.49E-01  0.00E+00  0.00E+00 -1.44E-02  0.00E+00  2.75E-01
 
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
+        8.67E+01
 
 TH 2
+       -3.41E+00  2.05E+03
 
 TH 3
+        3.98E+02  2.31E+03  5.77E+04
 
 TH 4
+        1.97E+00 -6.42E+00 -9.34E+01  4.65E-01
 
 TH 5
+        2.63E+02 -7.62E+03 -4.44E+04  1.26E+02  8.74E+04
 
 TH 6
+        2.39E+00 -5.78E-01 -1.69E+02 -7.25E-01  3.74E+01  1.12E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -1.59E+00  1.49E+00  1.06E+01 -3.98E-01 -2.00E+01  1.04E+00  0.00E+00  0.00E+00  8.36E-01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -4.40E+00 -1.38E+01 -9.66E+01 -5.77E-02  5.86E+01  6.56E-01  0.00E+00  0.00E+00  1.90E-01  0.00E+00  2.50E+00
 
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
+        8.74E+01
 
 TH 2
+       -6.16E+00  5.87E+02
 
 TH 3
+        2.55E+02  3.96E+03  4.33E+04
 
 TH 4
+        2.52E+00 -9.35E+00 -6.63E+01  4.62E-01
 
 TH 5
+        1.56E+02 -4.94E+03 -4.86E+04  1.50E+02  9.89E+04
 
 TH 6
+        7.07E+00 -2.04E+00 -1.15E+02 -1.11E+00 -2.72E+02  1.46E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -1.21E+00  4.12E+00  1.18E+01 -2.43E-01 -2.16E+01  7.62E-01  0.00E+00  0.00E+00  3.97E-01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.01E+01 -1.13E+01 -1.57E+02 -2.66E-01  7.58E+01  9.27E-01  0.00E+00  0.00E+00 -9.36E-02  0.00E+00  1.72E+01
 
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
 #CPUT: Total CPU Time in Seconds,       16.456
Stop Time:
Sat Sep 18 15:41:45 CDT 2021