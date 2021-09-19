Sat Sep 18 09:33:16 CDT 2021
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
$DATA ../../../../data/spa/A1/dat96.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m96.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1425.22189579382        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.1813E+02 -1.4151E+01 -2.9501E+01  1.1801E+01  3.7234E+01 -8.7290E+00  7.6350E+00  1.2018E+01  9.3721E+00  9.5215E+00
            -4.4151E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1520.27337980914        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  9.7625E-01  1.0318E+00  1.1411E+00  9.9115E-01  1.0355E+00  1.0070E+00  9.1841E-01  9.1322E-01  9.2878E-01  8.5983E-01
             1.4153E+00
 PARAMETER:  7.5964E-02  1.3132E-01  2.3201E-01  9.1109E-02  1.3488E-01  1.0701E-01  1.4893E-02  9.2267E-03  2.6113E-02 -5.1026E-02
             4.4734E-01
 GRADIENT:   3.9493E+01  7.9741E+00  3.0721E+00  1.5234E-02  4.4358E+00 -2.0020E+00  2.9821E+00  3.7290E+00 -7.0937E+00 -4.9994E+00
            -1.2293E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1525.40751586041        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  9.7370E-01  1.0003E+00  9.8630E-01  9.9653E-01  9.6358E-01  9.9496E-01  5.0896E-01  5.4739E-01  1.0038E+00  9.3686E-01
             1.4721E+00
 PARAMETER:  7.3352E-02  1.0028E-01  8.6204E-02  9.6521E-02  6.2899E-02  9.4946E-02 -5.7538E-01 -5.0259E-01  1.0381E-01  3.4776E-02
             4.8671E-01
 GRADIENT:   2.9419E+01 -1.9237E-01 -1.6860E+01 -1.0236E+00  5.6630E+00 -6.8765E+00 -2.6148E+00  2.5440E+00 -1.3599E+01  3.5198E+00
            -8.9584E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1534.81035792152        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  9.6417E-01  1.0047E+00  1.2267E+00  1.0047E+00  1.0567E+00  1.0043E+00  4.4896E-01  4.3052E-01  1.0541E+00  9.0837E-01
             1.7542E+00
 PARAMETER:  6.3507E-02  1.0467E-01  3.0429E-01  1.0470E-01  1.5513E-01  1.0430E-01 -7.0082E-01 -7.4277E-01  1.5271E-01  3.8931E-03
             6.6199E-01
 GRADIENT:   9.6756E-01 -5.8849E-01  4.8084E-01  1.5750E-01 -1.3435E+00 -8.9565E-01  4.6024E-01  1.8022E-01  2.4254E+00  6.5405E-01
             8.7136E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1534.83498799489        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      297
 NPARAMETR:  9.6353E-01  9.9523E-01  1.2337E+00  1.0085E+00  1.0572E+00  1.0071E+00  3.6432E-01  3.2035E-01  1.0548E+00  9.2139E-01
             1.7532E+00
 PARAMETER:  6.2848E-02  9.5217E-02  3.1005E-01  1.0848E-01  1.5563E-01  1.0711E-01 -9.0972E-01 -1.0383E+00  1.5337E-01  1.8124E-02
             6.6146E-01
 GRADIENT:  -1.9640E-01 -6.4161E-01  1.0753E-01 -1.1945E+00  7.2913E-02  2.9453E-01  6.9897E-02  2.2690E-02  1.8010E-01  1.4421E-01
            -4.3333E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1534.88470441317        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      414
 NPARAMETR:  9.6831E-01  9.9311E-01  1.2312E+00  1.0117E+00  1.0558E+00  1.0100E+00  3.7457E-01  3.1727E-01  1.0504E+00  9.1768E-01
             1.7564E+00
 PARAMETER:  6.7801E-02  9.3087E-02  3.0798E-01  1.1160E-01  1.5433E-01  1.0997E-01 -8.8197E-01 -1.0480E+00  1.4915E-01  1.4096E-02
             6.6326E-01
 GRADIENT:  -3.1801E+00 -6.4512E-01 -2.4623E-01 -1.2858E+00  2.1424E-01 -3.4199E-02 -9.1869E-02  2.1192E-02 -3.6331E-01 -3.1659E-02
            -5.2299E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1534.89686211579        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      589
 NPARAMETR:  9.6954E-01  9.4532E-01  1.2223E+00  1.0448E+00  1.0332E+00  1.0098E+00  4.4683E-01  2.4436E-01  1.0101E+00  9.0624E-01
             1.7566E+00
 PARAMETER:  6.9062E-02  4.3769E-02  3.0072E-01  1.4378E-01  1.3270E-01  1.0977E-01 -7.0559E-01 -1.3091E+00  1.1007E-01  1.5512E-03
             6.6336E-01
 GRADIENT:  -8.4663E-02  4.3546E-01 -5.6074E-02  6.3902E-01 -7.8341E-02  2.0234E-02 -3.3751E-02  1.1238E-02 -2.1284E-01  8.7050E-04
            -2.6020E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1534.90481466221        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      766
 NPARAMETR:  9.7011E-01  9.7708E-01  1.1625E+00  1.0236E+00  1.0230E+00  1.0100E+00  5.7797E-01  7.5050E-02  1.0080E+00  8.8913E-01
             1.7562E+00
 PARAMETER:  6.9654E-02  7.6813E-02  2.5061E-01  1.2332E-01  1.2269E-01  1.0996E-01 -4.4823E-01 -2.4896E+00  1.0802E-01 -1.7507E-02
             6.6317E-01
 GRADIENT:   3.8295E-01 -1.7385E+00  1.9746E-01 -1.8183E+00 -2.8377E-01 -7.2426E-02  2.3585E-01  4.2998E-03  1.0794E+00  4.6050E-01
             6.9682E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1534.93278742514        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      941
 NPARAMETR:  9.7038E-01  1.0665E+00  1.1152E+00  9.6782E-01  1.0424E+00  1.0112E+00  5.8756E-01  2.2405E-02  1.0452E+00  8.8220E-01
             1.7546E+00
 PARAMETER:  6.9928E-02  1.6440E-01  2.0902E-01  6.7288E-02  1.4148E-01  1.1115E-01 -4.3178E-01 -3.6985E+00  1.4422E-01 -2.5331E-02
             6.6223E-01
 GRADIENT:  -5.2383E-01  8.9021E-01 -3.1542E-01  1.4962E+00  3.0547E-01  4.3983E-02 -1.3190E-01  6.0876E-04 -5.9547E-01  4.8966E-02
            -2.4516E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1534.95362273040        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1117
 NPARAMETR:  9.7142E-01  1.1709E+00  1.0332E+00  9.0007E-01  1.0541E+00  1.0119E+00  6.3908E-01  1.0000E-02  1.0865E+00  8.5080E-01
             1.7560E+00
 PARAMETER:  7.1007E-02  2.5777E-01  1.3269E-01 -5.2882E-03  1.5269E-01  1.1180E-01 -3.4772E-01 -6.1114E+00  1.8293E-01 -6.1580E-02
             6.6303E-01
 GRADIENT:   2.1793E-01  1.6227E+00  3.1724E-01  1.3381E+00 -9.5118E-01 -8.8666E-02 -1.5435E-01  0.0000E+00 -4.8349E-01 -4.7694E-01
            -3.4481E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1534.99407748510        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1294
 NPARAMETR:  9.7177E-01  1.3340E+00  1.0086E+00  7.9401E-01  1.1244E+00  1.0133E+00  5.4096E-01  1.0000E-02  1.2357E+00  9.0120E-01
             1.7551E+00
 PARAMETER:  7.1366E-02  3.8822E-01  1.0852E-01 -1.3065E-01  2.1721E-01  1.1324E-01 -5.1440E-01 -8.9681E+00  3.1167E-01 -4.0301E-03
             6.6253E-01
 GRADIENT:  -2.9745E-01  4.7244E+00 -7.5736E-02  3.9436E+00 -1.7935E-01  1.3602E-01 -2.3068E-01  0.0000E+00 -6.7064E-01  3.0482E-01
            -3.6397E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1535.01082147872        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1469
 NPARAMETR:  9.7190E-01  1.3858E+00  9.7599E-01  7.5720E-01  1.1365E+00  1.0128E+00  5.4267E-01  1.0000E-02  1.2821E+00  8.9394E-01
             1.7574E+00
 PARAMETER:  7.1502E-02  4.2627E-01  7.5693E-02 -1.7813E-01  2.2792E-01  1.1270E-01 -5.1126E-01 -1.0783E+01  3.4853E-01 -1.2121E-02
             6.6381E-01
 GRADIENT:  -2.9222E-01  1.3887E+00  1.0790E-01  1.0492E+00 -3.9961E-01 -1.5789E-01 -5.8228E-02  0.0000E+00  2.4051E-03 -7.8856E-02
             1.0615E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1535.01285445398        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1644
 NPARAMETR:  9.7213E-01  1.4195E+00  9.5815E-01  7.3386E-01  1.1470E+00  1.0134E+00  5.4036E-01  1.0000E-02  1.3132E+00  8.9634E-01
             1.7571E+00
 PARAMETER:  7.1734E-02  4.5033E-01  5.7246E-02 -2.0943E-01  2.3712E-01  1.1329E-01 -5.1553E-01 -1.2012E+01  3.7243E-01 -9.4378E-03
             6.6368E-01
 GRADIENT:  -2.5015E-03  2.7679E-02  8.5554E-03  1.1339E-02 -2.0574E-02 -3.0729E-05  4.0452E-04  0.0000E+00 -7.4239E-04  1.2795E-03
            -3.8117E-04

0ITERATION NO.:   61    OBJECTIVE VALUE:  -1535.01285445398        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1672
 NPARAMETR:  9.7214E-01  1.4195E+00  9.5805E-01  7.3384E-01  1.1470E+00  1.0134E+00  5.4035E-01  1.0000E-02  1.3132E+00  8.9630E-01
             1.7571E+00
 PARAMETER:  7.1734E-02  4.5033E-01  5.7246E-02 -2.0943E-01  2.3712E-01  1.1329E-01 -5.1553E-01 -1.2012E+01  3.7243E-01 -9.4378E-03
             6.6368E-01
 GRADIENT:  -7.9830E-03  3.4500E-02  8.7115E-03  1.1934E-02 -2.0418E-02 -8.4375E-04  2.0884E-04  0.0000E+00 -7.5105E-04  1.5659E-03
            -2.1859E-04

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1672
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.9081E-04 -2.4690E-02 -5.0896E-05  5.7026E-03 -2.9564E-02
 SE:             2.9585E-02  1.4803E-02  8.1598E-05  2.4324E-02  2.0321E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9216E-01  9.5335E-02  5.3280E-01  8.1464E-01  1.4570E-01

 ETASHRINKSD(%)  8.8544E-01  5.0409E+01  9.9727E+01  1.8512E+01  3.1923E+01
 ETASHRINKVR(%)  1.7630E+00  7.5407E+01  9.9999E+01  3.3597E+01  5.3655E+01
 EBVSHRINKSD(%)  1.1518E+00  5.0493E+01  9.9710E+01  1.8357E+01  3.2667E+01
 EBVSHRINKVR(%)  2.2904E+00  7.5490E+01  9.9999E+01  3.3343E+01  5.4663E+01
 RELATIVEINF(%)  9.7393E+01  1.1660E+00  1.7177E-04  4.2029E+00  7.9782E+00
 EPSSHRINKSD(%)  3.4915E+01
 EPSSHRINKVR(%)  5.7639E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1535.0128544539807     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -799.86202789024253     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.25
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     5.66
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1535.013       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.72E-01  1.42E+00  9.58E-01  7.34E-01  1.15E+00  1.01E+00  5.40E-01  1.00E-02  1.31E+00  8.96E-01  1.76E+00
 


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
+        1.33E+03
 
 TH 2
+       -9.78E+01  4.71E+02
 
 TH 3
+        1.78E+01  8.91E+01  7.66E+01
 
 TH 4
+       -1.66E+02  5.24E+02 -2.05E+01  8.22E+02
 
 TH 5
+        2.03E+01 -2.45E+02 -1.86E+02  6.78E+00  4.65E+02
 
 TH 6
+        1.37E+02  5.24E+00  8.52E+00 -7.13E+00 -2.57E+00  1.86E+02
 
 TH 7
+       -5.20E+00 -1.66E+01  6.52E+00 -3.75E+01 -1.74E+01 -5.48E+00  3.41E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -1.39E+01 -1.25E+00 -6.55E+00  1.17E+01  1.19E+01 -6.52E+00  3.71E-01  0.00E+00  2.15E+00
 
 TH10
+       -3.03E+01  9.60E+00  1.54E+01 -1.60E+01 -4.34E+01 -1.06E+01  4.27E+00  0.00E+00  1.10E+00  7.99E+00
 
 TH11
+       -6.74E+01 -1.77E+01  1.50E-01 -2.52E+01 -1.40E+01 -2.34E+01  6.73E+00  0.00E+00  5.63E+00  1.12E+01  2.56E+01
 
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
+        1.12E+03
 
 TH 2
+       -2.28E+01  4.79E+02
 
 TH 3
+        8.80E+00  9.70E+01  1.02E+02
 
 TH 4
+       -3.62E+01  4.93E+02 -2.27E+01  8.06E+02
 
 TH 5
+       -5.42E+00 -2.41E+02 -1.78E+02 -2.57E+00  4.74E+02
 
 TH 6
+       -5.79E-01 -3.29E+00  2.47E+00 -8.24E+00 -2.85E+00  1.84E+02
 
 TH 7
+        2.30E+00 -2.77E+01  1.80E+01 -2.34E+01 -1.44E+01 -3.34E-01  4.25E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.17E+00 -2.81E+01 -3.36E+00  3.39E+01  2.71E+00 -1.53E+00  3.08E+01  0.00E+00  5.40E+01
 
 TH10
+       -4.69E+00  4.51E+00 -1.10E+00 -7.46E+00 -4.24E+01  6.99E-01  1.36E+01  0.00E+00 -5.21E-01  5.33E+01
 
 TH11
+       -9.24E+00 -2.09E+01 -1.17E+01 -1.22E+01 -6.26E+00  3.57E+00  9.00E+00  0.00E+00  7.78E+00  2.58E+01  8.55E+01
 
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
+        1.12E+03
 
 TH 2
+        4.77E+01  4.76E+02
 
 TH 3
+       -3.57E+00  9.05E+01  9.00E+01
 
 TH 4
+        1.19E+02  4.91E+02 -3.31E+01  7.98E+02
 
 TH 5
+       -1.61E+01 -2.45E+02 -1.75E+02 -3.86E+00  4.87E+02
 
 TH 6
+       -8.62E+01 -2.75E+01 -1.52E+01 -1.58E+00  1.55E+00  2.18E+02
 
 TH 7
+        2.22E+01 -1.76E+01  1.94E+01 -1.91E+01 -2.09E+01  3.53E+00  4.58E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        3.79E+01 -3.10E+01 -1.11E+01  2.08E+01  6.64E+00  1.82E+01  2.56E+01  0.00E+00  4.00E+01
 
 TH10
+       -1.34E+01  1.05E+01  6.66E+00 -9.17E+00 -5.02E+01  6.67E+00  1.18E+01  0.00E+00  1.53E+00  5.46E+01
 
 TH11
+        1.71E+02 -3.58E+01 -4.90E+01  7.70E+01  2.30E+01  9.38E+01  1.40E+01  0.00E+00  6.47E+01  2.20E+01  3.95E+02
 
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
 #CPUT: Total CPU Time in Seconds,       23.983
Stop Time:
Sat Sep 18 09:33:42 CDT 2021