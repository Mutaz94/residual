Wed Sep 29 04:06:00 CDT 2021
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
$DATA ../../../../data/int/SL3/dat25.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      983
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

 TOT. NO. OF OBS RECS:      883
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
 RAW OUTPUT FILE (FILE): m25.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   253.248284231493        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4381E+02  6.0454E+01  7.8334E+01  5.4488E+01  1.1991E+02  6.2552E+01 -7.0065E+01 -1.7060E+02 -9.1198E+01 -1.9237E+01
            -7.7607E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2345.13528256345        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0219E+00  1.1562E+00  1.0431E+00  1.0710E+00  1.0367E+00  8.0961E-01  9.9505E-01  9.8201E-01  9.6929E-01  8.6662E-01
             5.2689E+00
 PARAMETER:  1.2166E-01  2.4511E-01  1.4215E-01  1.6857E-01  1.3605E-01 -1.1120E-01  9.5041E-02  8.1851E-02  6.8811E-02 -4.3152E-02
             1.7618E+00
 GRADIENT:  -8.7327E+01  1.1950E+00 -1.6945E+01  2.4840E+01  2.1031E+00 -2.2124E+01  1.0918E+01  8.0503E+00  1.9293E+01  2.0901E+01
             8.3057E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2453.63945796048        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  9.7840E-01  6.4338E-01  1.4090E+00  1.4417E+00  7.9502E-01  9.7524E-01  2.2033E+00  1.3135E+00  5.3944E-01  2.1491E-01
             4.2652E+00
 PARAMETER:  7.8165E-02 -3.4102E-01  4.4287E-01  4.6582E-01 -1.2939E-01  7.4928E-02  8.8995E-01  3.7271E-01 -5.1723E-01 -1.4376E+00
             1.5505E+00
 GRADIENT:  -1.0264E+02  7.5464E+01  4.5721E+01  2.8372E+02 -1.5042E+02  2.8175E+01  2.6355E+01  8.5416E+00 -3.5338E+01  5.4880E-01
             5.4835E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2624.63971170828        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  9.9957E-01  1.0393E+00  9.8333E-01  1.0313E+00  9.4989E-01  8.6789E-01  1.0949E+00  6.2560E-01  1.0545E+00  8.0061E-01
             2.9247E+00
 PARAMETER:  9.9565E-02  1.3858E-01  8.3191E-02  1.3078E-01  4.8594E-02 -4.1688E-02  1.9064E-01 -3.6904E-01  1.5304E-01 -1.2239E-01
             1.1732E+00
 GRADIENT:   1.8970E+01  6.0545E+00  1.1642E+01 -1.5085E+01 -3.7404E+01 -8.4682E+00  4.2054E+00  4.4380E+00  1.4737E+01  1.6137E+00
             1.7262E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2627.47408309426        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  9.9154E-01  1.0918E+00  9.9556E-01  1.0101E+00  1.0126E+00  8.9104E-01  1.0235E+00  4.1755E-01  1.0040E+00  8.3911E-01
             2.9051E+00
 PARAMETER:  9.1506E-02  1.8782E-01  9.5548E-02  1.1008E-01  1.1253E-01 -1.5369E-02  1.2320E-01 -7.7336E-01  1.0402E-01 -7.5409E-02
             1.1665E+00
 GRADIENT:  -9.0666E-01 -1.6023E+00 -2.9091E+00 -3.5313E+00  3.4261E+00  4.4991E-01 -3.2403E-01  1.7029E+00  8.4325E-01 -2.1840E+00
            -4.1472E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2629.70555414111        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      419
 NPARAMETR:  1.0084E+00  1.1554E+00  1.0406E+00  9.9360E-01  1.0671E+00  8.9388E-01  9.8027E-01  1.3653E-01  1.0138E+00  9.1261E-01
             2.9322E+00
 PARAMETER:  1.0839E-01  2.4441E-01  1.3982E-01  9.3582E-02  1.6491E-01 -1.2187E-02  8.0069E-02 -1.8912E+00  1.1371E-01  8.5491E-03
             1.1757E+00
 GRADIENT:  -8.3632E+00 -3.7266E+00 -2.9282E-01  6.7965E+00 -4.8671E+00 -1.5448E+00  3.0836E-02  1.3217E-01 -9.3263E-01 -3.9501E-01
            -1.8988E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2633.68578360584        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      598
 NPARAMETR:  1.0088E+00  1.7564E+00  1.1229E+00  6.2787E-01  1.5489E+00  8.9130E-01  7.4172E-01  1.4046E-01  1.3733E+00  1.2749E+00
             2.9105E+00
 PARAMETER:  1.0874E-01  6.6327E-01  2.1591E-01 -3.6542E-01  5.3756E-01 -1.5079E-02 -1.9878E-01 -1.8629E+00  4.1720E-01  3.4286E-01
             1.1683E+00
 GRADIENT:  -8.3246E+00  1.5567E+01  3.5474E+00  7.2762E+00 -7.8829E+00 -2.9240E+00 -1.4763E+00  1.8856E-02 -8.7475E-01  1.2759E+00
            -9.1676E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2634.47837705888        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      774
 NPARAMETR:  1.0112E+00  2.0255E+00  8.8509E-01  4.4478E-01  1.7476E+00  9.0041E-01  6.9599E-01  2.3941E-02  1.6731E+00  1.3911E+00
             2.8985E+00
 PARAMETER:  1.1118E-01  8.0583E-01 -2.2068E-02 -7.1019E-01  6.5826E-01 -4.9024E-03 -2.6242E-01 -3.6322E+00  6.1468E-01  4.3011E-01
             1.1642E+00
 GRADIENT:  -1.8010E+00  1.5983E+00 -4.5317E-01  4.1179E+00  5.9604E+00  5.4750E-01 -3.7257E+00  5.3023E-04 -1.1162E+00  9.7912E-01
            -2.3073E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2634.93227968516        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      956             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0125E+00  2.2256E+00  6.6408E-01  3.0225E-01  1.8557E+00  8.9948E-01  6.9501E-01  1.0000E-02  2.0085E+00  1.4657E+00
             2.8942E+00
 PARAMETER:  1.1239E-01  9.0001E-01 -3.0936E-01 -1.0965E+00  7.1826E-01 -5.9395E-03 -2.6382E-01 -6.1171E+00  7.9740E-01  4.8234E-01
             1.1627E+00
 GRADIENT:   5.9910E+01  2.4605E+02  8.5805E-01  9.0591E+00  1.5865E+01  4.4730E+00  3.6174E+00  0.0000E+00  2.1683E+00  2.1615E+00
             2.0837E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2635.05194498002        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1134
 NPARAMETR:  1.0119E+00  2.2702E+00  6.5900E-01  2.7995E-01  1.9115E+00  8.9912E-01  6.9913E-01  1.0000E-02  2.1173E+00  1.5025E+00
             2.8931E+00
 PARAMETER:  1.1179E-01  9.1987E-01 -3.1704E-01 -1.1731E+00  7.4789E-01 -6.3335E-03 -2.5791E-01 -6.1171E+00  8.5013E-01  5.0711E-01
             1.1623E+00
 GRADIENT:  -5.2482E-02 -2.7892E-01  7.0575E-01  1.1124E+00  8.1057E-01 -2.7912E-02  1.3890E+00  0.0000E+00 -1.1957E-01  9.8190E-01
             3.9129E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2636.08396239027        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1314
 NPARAMETR:  1.0108E+00  2.5814E+00  3.2571E-01  8.7919E-02  2.1333E+00  8.9799E-01  6.6534E-01  1.0000E-02  3.5535E+00  1.6577E+00
             2.8903E+00
 PARAMETER:  1.1070E-01  1.0483E+00 -1.0217E+00 -2.3313E+00  8.5766E-01 -7.5967E-03 -3.0746E-01 -6.1171E+00  1.3679E+00  6.0541E-01
             1.1614E+00
 GRADIENT:  -4.3695E+00  4.0798E+01 -1.4375E+00  1.7771E+00  5.0659E+00 -7.9655E-01 -2.7225E+00  0.0000E+00 -5.6182E+00  1.8226E+00
             3.1718E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2637.96956890640        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1491
 NPARAMETR:  1.0132E+00  2.6205E+00  3.3877E-01  3.9324E-02  2.1695E+00  8.9918E-01  6.7643E-01  1.0000E-02  5.3506E+00  1.7060E+00
             2.8799E+00
 PARAMETER:  1.1310E-01  1.0634E+00 -9.8244E-01 -3.1359E+00  8.7449E-01 -6.2674E-03 -2.9092E-01 -6.1171E+00  1.7772E+00  6.3415E-01
             1.1578E+00
 GRADIENT:   3.0959E+00 -1.0162E+00  4.5920E-02 -1.8889E+00  4.7085E+00 -4.2060E-01  5.1130E+00  0.0000E+00 -7.2019E+00  6.1183E+00
             3.9224E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2639.24295615424        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1667
 NPARAMETR:  1.0100E+00  2.6577E+00  3.2538E-01  1.8057E-02  2.1369E+00  9.0125E-01  6.5723E-01  1.0000E-02  8.0184E+00  1.6290E+00
             2.8760E+00
 PARAMETER:  1.0998E-01  1.0775E+00 -1.0228E+00 -3.9142E+00  8.5934E-01 -3.9731E-03 -3.1973E-01 -6.1171E+00  2.1817E+00  5.8797E-01
             1.1564E+00
 GRADIENT:  -5.2445E+00  1.9159E+01 -4.0698E-01 -1.7640E+00 -4.8589E+00  3.4503E-01 -8.4269E-01  0.0000E+00 -5.5589E+00 -3.6528E+00
            -2.5343E+00

0ITERATION NO.:   64    OBJECTIVE VALUE:  -2639.50506091798        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:     1802
 NPARAMETR:  1.0111E+00  2.6594E+00  3.3385E-01  1.5011E-02  2.1453E+00  9.0083E-01  6.6099E-01  1.0000E-02  8.9073E+00  1.6424E+00
             2.8761E+00
 PARAMETER:  1.1065E-01  1.0787E+00 -1.0071E+00 -4.1013E+00  8.6268E-01 -4.3609E-03 -3.1426E-01 -6.1171E+00  2.2856E+00  5.9348E-01
             1.1563E+00
 GRADIENT:  -2.9574E+00  2.9096E+02 -3.1715E-01 -7.4499E+01 -2.6696E+00  9.2237E-02 -1.7774E+02  0.0000E+00 -1.3400E+02 -2.1186E+00
            -1.9295E+00

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1802
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.6129E-03 -1.7396E-02  4.9106E-06  1.1293E-02 -1.5580E-02
 SE:             2.9128E-02  2.7709E-02  4.9338E-06  7.4356E-03  2.6423E-02
 N:                     100         100         100         100         100

 P VAL.:         9.2852E-01  5.3013E-01  3.1959E-01  1.2880E-01  5.5544E-01

 ETASHRINKSD(%)  2.4161E+00  7.1726E+00  9.9983E+01  7.5090E+01  1.1481E+01
 ETASHRINKVR(%)  4.7739E+00  1.3831E+01  1.0000E+02  9.3795E+01  2.1644E+01
 EBVSHRINKSD(%)  2.2740E+00  6.7542E+00  9.9940E+01  8.2401E+01  1.0765E+01
 EBVSHRINKVR(%)  4.4963E+00  1.3052E+01  1.0000E+02  9.6903E+01  2.0372E+01
 RELATIVEINF(%)  9.5409E+01  5.4930E+01  3.5065E-05  1.9830E+00  7.8584E+01
 EPSSHRINKSD(%)  1.5268E+01
 EPSSHRINKVR(%)  2.8204E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          883
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1622.8454496394520     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2639.5050609179839     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1016.6596112785319     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    45.61
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.84
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2639.505       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  2.66E+00  3.31E-01  1.50E-02  2.14E+00  9.01E-01  6.61E-01  1.00E-02  8.90E+00  1.64E+00  2.88E+00
 


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
+        1.28E+03
 
 TH 2
+       -3.11E-01  1.53E+03
 
 TH 3
+       -6.69E-01  5.77E+00  4.37E+01
 
 TH 4
+       -8.09E+02  1.46E+03  1.18E+02  3.18E+06
 
 TH 5
+       -3.52E+00 -2.00E+01  2.48E+00  2.57E+02  7.17E+01
 
 TH 6
+        1.22E+01  4.27E+00 -5.21E-01 -4.51E+02 -1.39E+00  2.23E+02
 
 TH 7
+        2.25E+01  2.69E+01 -3.29E+02 -2.27E+03  3.70E+03 -7.70E+00  3.32E+04
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -2.37E+00 -1.51E+02 -1.22E-02  9.67E+03  8.94E-01 -1.35E+00 -5.84E+00  0.00E+00  2.94E+01
 
 TH10
+       -3.90E-01 -3.79E+01  2.52E+00  1.74E+03 -5.51E+00 -6.15E-02 -2.93E+01  0.00E+00  5.26E+00  4.46E+01
 
 TH11
+       -2.01E+01 -7.13E+01  1.24E+03  2.70E+03  2.29E+02  3.08E+00  2.03E+03  0.00E+00  8.22E+00  7.24E+00  2.65E+02
 
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
 #CPUT: Total CPU Time in Seconds,       59.582
Stop Time:
Wed Sep 29 04:07:01 CDT 2021
