Sat Sep 18 06:57:18 CDT 2021
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
$DATA ../../../../data/int/D/dat41.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m41.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   28929.2881317164        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.9911E+02  4.1186E+02 -5.7750E+01  1.8769E+02  9.7875E+01 -1.7378E+03 -1.0535E+03 -1.0776E+02 -1.6443E+03 -4.7626E+02
            -6.0161E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -851.765222477858        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.3518E+00  1.8910E+00  9.1734E-01  1.9672E+00  9.6330E-01  3.5614E+00  5.1774E+00  1.0015E+00  2.7563E+00  1.5858E+00
             1.3099E+01
 PARAMETER:  4.0142E-01  7.3711E-01  1.3721E-02  7.7659E-01  6.2605E-02  1.3702E+00  1.7443E+00  1.0150E-01  1.1139E+00  5.6108E-01
             2.6725E+00
 GRADIENT:  -6.8147E+00  2.0811E+01 -4.6844E+01  8.9674E+01  4.0654E-01  1.2358E+02  8.2546E+01  3.9785E+00  5.4866E+01  3.3874E+01
             4.7559E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -926.010886944176        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.1757E+00  2.1831E+00  5.3887E+01  2.9833E+00  2.5864E+00  1.8173E+00  1.9626E+01  7.7818E-01  2.2333E+00  1.6163E+00
             1.3101E+01
 PARAMETER:  2.6184E-01  8.8076E-01  4.0869E+00  1.1930E+00  1.0503E+00  6.9736E-01  3.0769E+00 -1.5080E-01  9.0350E-01  5.8016E-01
             2.6727E+00
 GRADIENT:  -4.0473E+01  1.8786E+01 -4.3885E+00  1.4578E+01  1.8240E+01  3.6678E+01  4.7804E+01  1.1391E-02  2.2984E+01  3.1584E+01
             4.9036E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1066.19307293764        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.2742E+00  1.2166E+00  5.3580E+00  1.6535E+00  1.5176E+00  2.1292E+00  4.5006E+00  2.2410E+00  2.0522E+00  6.3962E-01
             1.1279E+01
 PARAMETER:  3.4229E-01  2.9609E-01  1.7786E+00  6.0287E-01  5.1710E-01  8.5576E-01  1.6042E+00  9.0694E-01  8.1892E-01 -3.4688E-01
             2.5230E+00
 GRADIENT:  -8.4410E+00  1.3247E+01 -4.0459E+00  4.3094E+01 -5.0401E+01  2.0444E+01  5.8060E+00  4.9301E+00  2.4982E+01  5.3234E+00
             4.0491E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1156.47456641874        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  1.1274E+00  1.2091E+00  1.0223E+01  1.0890E+00  2.0694E+00  2.0731E+00  3.8231E+00  1.4324E+00  1.3983E+00  3.0447E-01
             8.4342E+00
 PARAMETER:  2.1988E-01  2.8988E-01  2.4246E+00  1.8525E-01  8.2727E-01  8.2905E-01  1.4410E+00  4.5935E-01  4.3528E-01 -1.0892E+00
             2.2323E+00
 GRADIENT:  -1.6807E+01 -1.2084E+01  3.0420E+00 -1.1137E+00 -4.8372E+00  2.2962E+00 -1.5657E+01 -3.3817E-01 -7.1779E-02  7.0779E-01
             3.2108E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1160.81257030355        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      372
 NPARAMETR:  1.1728E+00  1.7459E+00  4.7393E+00  8.2408E-01  1.9423E+00  2.0178E+00  3.3926E+00  2.6743E+00  1.1713E+00  2.2500E-01
             8.2998E+00
 PARAMETER:  2.5939E-01  6.5726E-01  1.6559E+00 -9.3488E-02  7.6388E-01  8.0203E-01  1.3216E+00  1.0837E+00  2.5813E-01 -1.3917E+00
             2.2162E+00
 GRADIENT:   3.6095E+00  5.2328E+00  3.9263E+00  2.5703E+00 -9.6349E+00 -6.6971E+00 -5.3713E+00  1.7752E-01 -5.6952E-01  7.8749E-01
            -6.1932E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1162.72233706566        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      443
 NPARAMETR:  1.1636E+00  1.8558E+00  1.9309E+00  7.1433E-01  1.7517E+00  2.0385E+00  3.2306E+00  1.1763E+00  1.0232E+00  1.0472E-01
             8.3133E+00
 PARAMETER:  2.5155E-01  7.1829E-01  7.5798E-01 -2.3641E-01  6.6059E-01  8.1220E-01  1.2727E+00  2.6239E-01  1.2296E-01 -2.1565E+00
             2.2179E+00
 GRADIENT:  -5.6227E-01  4.0637E-01 -1.1051E+00  3.9391E-01  2.3705E+00 -1.9357E+00  6.9151E-01  3.4362E-01  8.5066E-01  2.0303E-01
             2.5057E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1162.90046929683        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      514
 NPARAMETR:  1.1660E+00  1.8042E+00  1.9851E+00  7.3339E-01  1.7449E+00  2.0408E+00  3.2979E+00  5.8035E-01  9.1262E-01  7.9505E-02
             8.3195E+00
 PARAMETER:  2.5362E-01  6.9014E-01  7.8569E-01 -2.1007E-01  6.5667E-01  8.1335E-01  1.2933E+00 -4.4412E-01  8.5687E-03 -2.4319E+00
             2.2186E+00
 GRADIENT:   6.9044E-01 -1.9091E-01 -2.2378E-01  4.1731E-01  8.6343E-01 -1.3467E+00  1.9887E-01 -9.2565E-03 -8.2212E-02  1.0599E-01
            -4.1935E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1162.90906284710        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      588
 NPARAMETR:  1.1628E+00  1.8275E+00  1.9287E+00  7.1859E-01  1.7479E+00  2.0499E+00  3.2711E+00  4.6839E-01  8.7257E-01  6.4682E-02
             8.3228E+00
 PARAMETER:  2.5081E-01  7.0293E-01  7.5682E-01 -2.3046E-01  6.5843E-01  8.1779E-01  1.2851E+00 -6.5846E-01 -3.6310E-02 -2.6383E+00
             2.2190E+00
 GRADIENT:  -5.5533E-01 -1.4172E-01  1.2998E-02 -2.9471E-01 -3.8736E-02  3.4694E-01 -4.9123E-02 -9.6046E-03 -1.8089E-01  6.8701E-02
             3.0167E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1162.94143557787        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      660
 NPARAMETR:  1.1642E+00  1.8143E+00  1.9431E+00  7.2820E-01  1.7412E+00  2.0479E+00  3.2835E+00  2.4194E-01  9.2451E-01  1.8207E-02
             8.3201E+00
 PARAMETER:  2.5200E-01  6.9569E-01  7.6429E-01 -2.1718E-01  6.5457E-01  8.1683E-01  1.2889E+00 -1.3191E+00  2.1510E-02 -3.9060E+00
             2.2187E+00
 GRADIENT:   3.9401E-02 -6.2711E-03 -1.1957E-02 -7.8726E-03  5.3099E-02 -4.8246E-02  7.4050E-03 -6.3980E-03  3.4452E-02  5.4962E-03
             2.6887E-04

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1162.98794443635        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      823
 NPARAMETR:  1.1695E+00  1.8153E+00  2.0279E+00  7.3795E-01  1.7522E+00  2.0591E+00  3.3423E+00  1.5887E-01  9.0772E-01  1.0656E-02
             8.3442E+00
 PARAMETER:  2.5658E-01  6.9627E-01  8.0701E-01 -2.0388E-01  6.6090E-01  8.2225E-01  1.3067E+00 -1.7397E+00  3.1853E-03 -4.4416E+00
             2.2216E+00
 GRADIENT:  -2.7296E-02  5.6273E-03 -4.3583E-03 -2.0255E-02  2.4240E-02  1.0090E-02  3.0626E-02 -3.0569E-03  1.5519E-02  1.8214E-03
             7.0219E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1162.98874525419        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1004
 NPARAMETR:  1.1696E+00  1.8104E+00  2.0407E+00  7.4100E-01  1.7508E+00  2.0572E+00  3.3478E+00  3.9567E-01  9.0863E-01  2.8844E-02
             8.3443E+00
 PARAMETER:  2.5664E-01  6.9356E-01  8.1330E-01 -1.9976E-01  6.6010E-01  8.2136E-01  1.3083E+00 -8.2718E-01  4.1820E-03 -3.4459E+00
             2.2216E+00
 GRADIENT:  -5.8086E-02  2.3320E-02 -6.0448E-02  2.0161E-01  6.4149E-02 -3.0380E-01 -2.4916E-03 -1.3596E-02 -2.8188E-02  1.3504E-02
             1.8744E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1163.00127314259        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1182
 NPARAMETR:  1.1694E+00  1.8130E+00  2.0745E+00  7.3996E-01  1.7567E+00  2.0615E+00  3.3455E+00  7.1178E-01  9.2260E-01  1.8346E-02
             8.3399E+00
 PARAMETER:  2.5650E-01  6.9499E-01  8.2973E-01 -2.0115E-01  6.6344E-01  8.2343E-01  1.3076E+00 -2.3999E-01  1.9443E-02 -3.8983E+00
             2.2210E+00
 GRADIENT:  -3.5382E-02 -5.4312E-02 -2.9863E-02 -2.4679E-01  2.2557E-01  4.3736E-01  2.0800E-01 -4.7505E-03  4.3224E-02  5.6031E-03
             1.8126E-01

0ITERATION NO.:   64    OBJECTIVE VALUE:  -1163.00420242677        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:     1316
 NPARAMETR:  1.1696E+00  1.8068E+00  2.0885E+00  7.4378E-01  1.7545E+00  2.0591E+00  3.3512E+00  7.5035E-01  9.2498E-01  1.0000E-02
             8.3395E+00
 PARAMETER:  2.5666E-01  6.9152E-01  8.3646E-01 -1.9600E-01  6.6221E-01  8.2221E-01  1.3093E+00 -1.8740E-01  2.2018E-02 -4.5670E+00
             2.2210E+00
 GRADIENT:  -4.1367E-03 -7.4195E-04  3.3318E-04  7.0519E-04  6.0569E-04 -7.6069E-03 -4.4398E-03 -3.7285E-04  4.4950E-05  0.0000E+00
             4.7439E-03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1316
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.9973E-03  5.0599E-03 -4.2007E-03 -3.2385E-02 -1.3610E-05
 SE:             2.9205E-02  2.7526E-02  3.0160E-03  1.0020E-02  1.4726E-04
 N:                     100         100         100         100         100

 P VAL.:         7.3211E-01  8.5415E-01  1.6368E-01  1.2295E-03  9.2636E-01

 ETASHRINKSD(%)  2.1604E+00  7.7857E+00  8.9896E+01  6.6431E+01  9.9507E+01
 ETASHRINKVR(%)  4.2741E+00  1.4965E+01  9.8979E+01  8.8731E+01  9.9998E+01
 EBVSHRINKSD(%)  2.8576E+00  5.1497E+00  9.0177E+01  7.0216E+01  9.9445E+01
 EBVSHRINKVR(%)  5.6335E+00  1.0034E+01  9.9035E+01  9.1129E+01  9.9997E+01
 RELATIVEINF(%)  9.4113E+01  3.6027E+01  1.7480E-01  2.4686E+00  6.6659E-04
 EPSSHRINKSD(%)  7.5440E+00
 EPSSHRINKVR(%)  1.4519E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1163.0042024267652     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       491.08515734164553     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    32.70
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    15.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1163.004       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.17E+00  1.81E+00  2.09E+00  7.44E-01  1.75E+00  2.06E+00  3.35E+00  7.50E-01  9.25E-01  1.00E-02  8.34E+00
 


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
+        1.36E+02
 
 TH 2
+        8.70E-01  7.30E+00
 
 TH 3
+        5.14E+00  1.00E+00  5.79E+00
 
 TH 4
+       -4.19E+01  2.31E+01 -3.02E+01  2.72E+02
 
 TH 5
+       -2.34E+01 -7.19E+00 -2.60E+01  1.25E+02  1.18E+02
 
 TH 6
+        2.24E+01 -5.35E+00 -2.48E+00 -9.37E+00  1.29E+01  9.07E+00
 
 TH 7
+        4.73E+00 -4.30E+00  2.33E-02 -1.77E+01  1.51E+00  3.84E+00  2.76E+00
 
 TH 8
+       -4.67E-01  2.09E-01 -3.92E-01  3.16E+00  1.65E+00 -4.45E-02 -1.73E-01  3.74E-02
 
 TH 9
+        9.02E-01 -2.63E+00 -3.87E-01 -8.31E+00  2.70E+00  2.17E+00  1.59E+00 -7.40E-02  9.64E-01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -3.81E+00 -1.22E+00  3.99E-01 -6.72E+00 -1.34E+00 -3.74E-02  6.23E-01 -6.58E-02  4.24E-01  0.00E+00  7.67E-01
 
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
+        1.82E+02
 
 TH 2
+       -1.27E+00  2.72E+01
 
 TH 3
+        1.23E+00  2.22E+00  5.82E+00
 
 TH 4
+       -8.81E+00  3.27E+01 -2.08E+01  2.49E+02
 
 TH 5
+       -5.29E+00 -1.24E+01 -2.08E+01  7.75E+01  1.01E+02
 
 TH 6
+        6.44E+00 -2.53E-01  6.31E-03  1.61E+00 -2.61E+00  4.60E+01
 
 TH 7
+       -7.57E-02  2.03E+00 -1.56E+00 -2.01E+01  3.46E+00 -1.17E+00  1.29E+01
 
 TH 8
+        2.77E-02 -3.67E-02 -5.43E-01  2.64E+00  1.28E+00 -6.60E-02  1.99E-01  1.31E+00
 
 TH 9
+       -1.01E+00 -1.56E+00 -8.04E-01 -1.11E+01  3.40E+00 -4.70E-01  2.56E+00 -3.07E+00  1.47E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -8.10E+00 -3.07E+00 -8.86E-02 -1.00E+01 -1.04E-01  5.56E-01  1.10E+00  1.75E-01  1.97E+00  0.00E+00  1.50E+01
 
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
+        1.82E+02
 
 TH 2
+        5.66E+01  2.73E+01
 
 TH 3
+        2.67E+00  2.11E+00  4.50E+00
 
 TH 4
+        7.79E+01  3.76E+01 -1.38E+01  2.41E+02
 
 TH 5
+       -2.31E+01 -1.22E+01 -1.75E+01  5.05E+01  8.16E+01
 
 TH 6
+        3.08E+01  9.07E+00 -2.55E-01 -2.12E+01 -3.19E+00  5.29E+01
 
 TH 7
+        5.72E+00  2.09E+00 -1.62E+00 -2.53E+01  5.31E+00  1.69E+01  1.54E+01
 
 TH 8
+       -4.25E-02 -8.24E-02 -2.53E-01  1.11E+00  5.97E-01 -1.13E-01  2.51E-02  5.53E-02
 
 TH 9
+       -2.26E+00 -2.00E+00 -1.51E+00 -6.79E+00  5.72E+00  6.76E-01  2.52E+00  1.86E-01  2.79E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -7.89E+01 -2.52E+01 -5.33E+00 -9.00E+01  2.81E+01  2.05E+01  1.51E+01 -6.47E-01  4.83E+00  0.00E+00  5.37E+02
 
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
 #CPUT: Total CPU Time in Seconds,       48.287
Stop Time:
Sat Sep 18 06:58:08 CDT 2021