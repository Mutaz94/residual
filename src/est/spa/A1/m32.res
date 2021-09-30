Wed Sep 29 12:03:48 CDT 2021
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
$DATA ../../../../data/spa/A1/dat32.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m32.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1519.41554505378        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5212E+02 -2.9336E+00  1.6093E+01  8.5877E+00  6.5810E+01  7.8661E+01  2.0250E+00 -1.4832E+01  1.8448E+00  1.7081E+00
            -3.2555E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1588.90158277395        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0270E+00  1.0019E+00  9.0454E-01  1.0285E+00  9.0304E-01  8.7180E-01  9.5699E-01  1.0423E+00  9.4328E-01  8.7205E-01
             1.8716E+00
 PARAMETER:  1.2667E-01  1.0192E-01 -3.2756E-04  1.2809E-01 -1.9871E-03 -3.7190E-02  5.6042E-02  1.4138E-01  4.1607E-02 -3.6903E-02
             7.2680E-01
 GRADIENT:   1.0752E+02 -9.0060E-01  3.8569E+00 -7.6861E-01 -6.9757E+00  5.2184E+00  4.2830E+00  2.5494E+00  5.6140E+00  1.9543E+01
             7.0768E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1594.34475479114        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.0158E+00  1.0263E+00  5.3164E-01  9.7623E-01  6.8230E-01  9.0263E-01  1.0748E+00  9.3300E-01  9.3159E-01  5.4023E-01
             1.7828E+00
 PARAMETER:  1.1565E-01  1.2597E-01 -5.3180E-01  7.5939E-02 -2.8229E-01 -2.4432E-03  1.7213E-01  3.0651E-02  2.9134E-02 -5.1576E-01
             6.7819E-01
 GRADIENT:   6.9662E+01  2.3122E+01  1.0382E+01  9.5431E+00 -1.9511E+01  1.5126E+01  1.4905E+01  1.0758E+01  1.4891E+01  1.4630E+01
             6.5201E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1602.08439743907        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      341
 NPARAMETR:  1.0459E+00  1.1085E+00  5.0827E-01  9.3963E-01  7.0582E-01  8.8230E-01  9.8758E-01  8.2136E-01  9.1171E-01  4.3975E-01
             1.5536E+00
 PARAMETER:  1.4491E-01  2.0299E-01 -5.7675E-01  3.7729E-02 -2.4839E-01 -2.5221E-02  8.7507E-02 -9.6797E-02  7.5720E-03 -7.2155E-01
             5.4059E-01
 GRADIENT:   1.5905E+00  2.8153E+01  7.9398E+00  1.5236E+01 -8.6816E+00 -5.7566E+00  1.8439E+00  1.7726E+00 -3.9853E+00  2.7008E+00
            -1.0351E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1605.84352344754        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      521
 NPARAMETR:  1.0461E+00  8.4157E-01  4.0633E-01  1.0395E+00  5.3460E-01  8.9664E-01  1.1852E+00  5.4697E-01  8.1305E-01  2.5872E-01
             1.5621E+00
 PARAMETER:  1.4511E-01 -7.2485E-02 -8.0058E-01  1.3876E-01 -5.2624E-01 -9.1045E-03  2.6988E-01 -5.0336E-01 -1.0696E-01 -1.2520E+00
             5.4603E-01
 GRADIENT:   1.7509E+00  5.7815E+00  1.3254E+00  6.8380E+00 -3.2644E+00 -5.1945E-02  1.2308E+00 -8.3448E-02 -1.9796E-02  1.8581E-01
            -3.7405E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1606.02022862989        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      698
 NPARAMETR:  1.0428E+00  9.7636E-01  3.3349E-01  9.4106E-01  5.3741E-01  8.9793E-01  1.0109E+00  5.2322E-01  8.6027E-01  2.1238E-01
             1.5579E+00
 PARAMETER:  1.4192E-01  7.6077E-02 -9.9816E-01  3.9255E-02 -5.2099E-01 -7.6645E-03  1.1081E-01 -5.4774E-01 -5.0512E-02 -1.4494E+00
             5.4334E-01
 GRADIENT:   7.5643E-01  8.2736E+00  1.7361E+00  8.0756E+00 -8.4625E+00  8.0201E-01 -1.1400E+00  2.4450E-01  5.0301E-01  5.9247E-01
             5.5974E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1606.31366206516        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      873
 NPARAMETR:  1.0390E+00  1.1143E+00  2.8661E-01  8.4271E-01  5.6603E-01  8.9518E-01  9.2133E-01  4.4829E-01  9.2370E-01  1.0782E-01
             1.5681E+00
 PARAMETER:  1.3823E-01  2.0819E-01 -1.1496E+00 -7.1138E-02 -4.6910E-01 -1.0731E-02  1.8060E-02 -7.0231E-01  2.0630E-02 -2.1273E+00
             5.4984E-01
 GRADIENT:   3.3495E-02  2.8661E+00  2.9629E+00 -2.2059E+00 -4.8597E+00  5.4968E-01  1.5435E-02 -4.7249E-01  2.0168E-01  9.7549E-02
             3.6353E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1606.62970577104        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1050
 NPARAMETR:  1.0298E+00  1.4069E+00  2.1470E-01  6.6838E-01  6.4624E-01  8.8326E-01  7.7234E-01  7.7366E-01  1.0493E+00  1.0000E-02
             1.5765E+00
 PARAMETER:  1.2938E-01  4.4138E-01 -1.4385E+00 -3.0289E-01 -3.3659E-01 -2.4137E-02 -1.5832E-01 -1.5663E-01  1.4816E-01 -4.6253E+00
             5.5523E-01
 GRADIENT:  -8.2977E+00  3.6702E+01  8.2956E+00  3.6524E+00 -2.9017E+01 -1.4032E+00 -3.5220E+00 -2.0001E+00 -9.9789E-01  0.0000E+00
             3.0896E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1607.12613287148        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1230
 NPARAMETR:  1.0265E+00  1.5147E+00  1.9737E-01  6.1517E-01  6.8036E-01  8.7808E-01  7.3317E-01  1.1670E+00  1.0911E+00  1.0000E-02
             1.5795E+00
 PARAMETER:  1.2617E-01  5.1519E-01 -1.5227E+00 -3.8585E-01 -2.8513E-01 -3.0016E-02 -2.1038E-01  2.5440E-01  1.8715E-01 -5.6955E+00
             5.5709E-01
 GRADIENT:  -2.1075E+01  1.0216E+02  2.0258E+01  4.7182E+00 -8.3568E+01 -1.5272E+00 -9.0040E+00 -3.9203E+00 -4.3069E-01  0.0000E+00
             1.0317E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1607.39245338354        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1393
 NPARAMETR:  1.0272E+00  1.5106E+00  1.9887E-01  6.1398E-01  6.8135E-01  8.8269E-01  7.5370E-01  1.1655E+00  1.0900E+00  1.0000E-02
             1.5839E+00
 PARAMETER:  1.2680E-01  5.1249E-01 -1.5151E+00 -3.8779E-01 -2.8367E-01 -2.4781E-02 -1.8276E-01  2.5313E-01  1.8621E-01 -5.6955E+00
             5.5987E-01
 GRADIENT:  -1.2018E+01  6.2752E+01  1.1489E+01  4.6995E+00 -5.1467E+01 -5.4339E-03 -9.6971E-02 -3.2589E+00  8.2848E-01  0.0000E+00
             1.5242E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1607.75030892611        NO. OF FUNC. EVALS.: 172
 CUMULATIVE NO. OF FUNC. EVALS.:     1565             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0272E+00  1.5031E+00  1.9970E-01  6.1229E-01  6.8224E-01  8.8436E-01  7.4675E-01  1.1915E+00  1.0883E+00  1.0000E-02
             1.5835E+00
 PARAMETER:  1.2685E-01  5.0753E-01 -1.5110E+00 -3.9055E-01 -2.8237E-01 -2.2886E-02 -1.9202E-01  2.7523E-01  1.8462E-01 -5.6955E+00
             5.5962E-01
 GRADIENT:   1.9532E+02  2.0478E+02  2.4933E+01  4.8700E+01 -2.5467E+01  1.4873E+01  1.1336E+00 -2.8033E+00  3.2429E+00  0.0000E+00
             2.0362E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1607.95192259341        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1728
 NPARAMETR:  1.0275E+00  1.5017E+00  1.9925E-01  6.1231E-01  6.8290E-01  8.8234E-01  7.5240E-01  1.2107E+00  1.0879E+00  1.0000E-02
             1.5795E+00
 PARAMETER:  1.2712E-01  5.0660E-01 -1.5132E+00 -3.9051E-01 -2.8141E-01 -2.5181E-02 -1.8449E-01  2.9123E-01  1.8428E-01 -5.6955E+00
             5.5712E-01
 GRADIENT:  -1.0356E+01  3.8878E+01  8.7584E+00  6.5923E-01 -3.7018E+01  4.4430E-02 -1.0762E-03 -2.9632E+00  9.8067E-01  0.0000E+00
             1.5871E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1607.97281889649        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     1923
 NPARAMETR:  1.0315E+00  1.5010E+00  1.9952E-01  6.1209E-01  6.8273E-01  8.8210E-01  7.5242E-01  1.2144E+00  1.0877E+00  1.0000E-02
             1.5803E+00
 PARAMETER:  1.3097E-01  5.0612E-01 -1.5118E+00 -3.9087E-01 -2.8166E-01 -2.5445E-02 -1.8446E-01  2.9428E-01  1.8404E-01 -5.6955E+00
             5.5763E-01
 GRADIENT:   4.2323E-01  3.7975E+01  9.0735E+00 -9.3481E-01 -3.8246E+01  9.2945E-03 -3.0031E-03 -2.8842E+00  1.0563E+00  0.0000E+00
             1.6084E+01

0ITERATION NO.:   61    OBJECTIVE VALUE:  -1607.97281889649        NO. OF FUNC. EVALS.:  31
 CUMULATIVE NO. OF FUNC. EVALS.:     1954
 NPARAMETR:  1.0315E+00  1.5004E+00  1.9976E-01  6.1191E-01  6.8258E-01  8.8212E-01  7.5243E-01  1.2142E+00  1.0857E+00  1.0000E-02
             1.5810E+00
 PARAMETER:  1.3097E-01  5.0612E-01 -1.5118E+00 -3.9087E-01 -2.8166E-01 -2.5445E-02 -1.8446E-01  2.9428E-01  1.8404E-01 -5.6955E+00
             5.5763E-01
 GRADIENT:  -5.4224E-01  4.4724E+03 -2.9401E+03  1.1485E+04  1.5922E+04 -3.0599E-02 -9.7519E-03  1.5189E+04  9.7458E-01  0.0000E+00
            -8.0412E+03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1954
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.0753E-04 -2.0973E-02 -1.3701E-02  6.7969E-03 -2.9637E-04
 SE:             2.9597E-02  2.6431E-02  1.3678E-02  2.3946E-02  3.2510E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8362E-01  4.2748E-01  3.1651E-01  7.7653E-01  3.6196E-01

 ETASHRINKSD(%)  8.4521E-01  1.1453E+01  5.4177E+01  1.9778E+01  9.8911E+01
 ETASHRINKVR(%)  1.6833E+00  2.1594E+01  7.9002E+01  3.5644E+01  9.9988E+01
 EBVSHRINKSD(%)  1.1921E+00  1.1328E+01  5.6473E+01  1.8896E+01  9.8894E+01
 EBVSHRINKVR(%)  2.3699E+00  2.1372E+01  8.1054E+01  3.4221E+01  9.9988E+01
 RELATIVEINF(%)  9.5631E+01  5.9950E+00  4.1246E+00  6.5086E+00  1.0046E-03
 EPSSHRINKSD(%)  4.1688E+01
 EPSSHRINKVR(%)  6.5997E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1607.9728188964912     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -872.82199233275298     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.36
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.61
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1607.973       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.50E+00  2.00E-01  6.12E-01  6.83E-01  8.82E-01  7.52E-01  1.21E+00  1.09E+00  1.00E-02  1.58E+00
 


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
+        1.31E+03
 
 TH 2
+        7.10E+01  1.95E+05
 
 TH 3
+       -3.30E+02 -4.85E+05  1.22E+06
 
 TH 4
+        2.46E+02 -7.16E+02  2.38E+04  1.96E+06
 
 TH 5
+        3.17E+02 -7.71E+05  1.95E+06  9.01E+02  3.04E+06
 
 TH 6
+        3.64E-01  1.45E+02 -3.79E+02  4.62E+02  5.81E+02  2.44E+02
 
 TH 7
+        1.00E+00  2.48E+02 -7.57E+02  8.04E+02  1.08E+03 -4.24E-01  2.20E+02
 
 TH 8
+       -2.32E+06 -4.55E+03  1.13E+04 -1.44E+04 -1.80E+04 -3.55E+06  5.51E+02  8.70E+05
 
 TH 9
+        1.88E+00 -8.98E+02  2.22E+03 -2.76E+03 -3.53E+03 -6.49E-01  1.41E+01  1.56E+06  2.80E+06
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -9.31E+01  2.40E+02 -6.92E+03 -5.32E+05 -1.76E+01 -1.26E+02 -2.08E+02  3.93E+03  7.78E+02  0.00E+00  1.45E+05
 
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
 #CPUT: Total CPU Time in Seconds,       29.025
Stop Time:
Wed Sep 29 12:04:19 CDT 2021
